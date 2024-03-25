# Linux filesystems

Most UNIX filesystem types have a similar general structure, although the exact details vary quite a bit.

The central concepts
- superblock
- inode
- data block
- directory block
- indirection block

The **superblock** contains information about the filesystem as a whole, such as its size. An **inode** contains all information about a file, except its name; names of files are stored in the directory block, together with the number of their inodes. A **directory block** entry consists of a filename and the number of the inode which represents the file. The inode contains the numbers of **data blocks** which comprise a (single) file.

However, an inode only has space to record a few data block numbers - when more space is required, the pointers to the data blocks are stored in a dynamically allocated additional blocks. These dynamically allocated blocks are called **indirect blocks**. As the name suggests, to find a particular data block, its number must be obtained first by querying the indirect block.

UNIX filesystems usually allow creating files with "holes", using `lseek` system call. The fs records that a particular location in a file contains 0 bytes, but no physical disk sectors are reserved to back up that place in the file. This commonly occurs for small binaries, Linux shared libraries, some databases, and a few other special cases. *Holes* are implemented by storing a special value as the address of the data block in the indirect block or inode. This special address means that no data block is allocated for that part of the file, so there is a hole in the file. [but…why?]

## Linux filesystem types

- `minix`, the oldest, very reliable, but limited in features (incomplete set of time stamps, at most 30 chars per filename, at most 64 MB per fs).
- `xia`, modified version of minix that lifts the limits on the filenames and filesystem sizes; reliable but unpopular.
- `ext`, not upwards compatible, hardly used today
- `ext2`, the most featureful of the native Linux fs's; upwards compatible - new versions don't require re-making an existing (ext-based) fs.
- `ext3` all features of ext2 with journaling added; more popular than ext2.
- `reiserfs`, robust, journaling fs.
- `jfs`, journaled filesystem by IBM for high performance environments
- `xfs`, originally designed by Silicon Graphics to work as a 64-bit journaled filesystem, high performance with large files, support for foreign fs's makes file exchange easier; a foreign fs then work like a native one, except it may lack some standard Linux features.
- `umsdos`, extends the msdos fs driver under Linux to get long filenames, owners, permissions, links, and device files. Allows using an msdos partition to host Linux (thus removing the need for a separate partition for Linux).
- `msdos`, MS-DOS compatibile (and OS/2 and Windows NT) FAT filesystem
- `iso9660`, standard fs for optical media (particularly CDs)
- `smbfs`, networked fs for exposing a Windows filesystem
- `nfs`, allows sharing a filesystem over a network.
- `sysv`, SystemV/386, Coherent, and Xenix filesystems.
- `ntfs`, Microsoft's journaling filesystem use on most Windows
- `vfat`, extension of FAT (FAT32) with support for larger disk sizes.
- `hpfs`, The OS/2 filesystem.
