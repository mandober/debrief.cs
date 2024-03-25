# File system



A **file system** (filesystem, fs) is comprised of methods and data structures for organizing and manipulating data on a medium. A file system is usually associated with non-volatile media and it controls the way data is organized, stored and accessed.

File system takes its name after the paper-based data management system. Without a file system, data placed on a storage medium would be opaque, with no way to tell where any file is located, or where one file ends and the next begins. File system manages where data is stored on a medium using a table (file allocation table) which records where each file or each piece of data that makes up a file (since a file may not be stored contiguously) is located on the medium.

(with the OS interfacing with the firmware with the intrinic addressing method of the media)

By separating the data into pieces and giving each piece a name, the data are isolated and identified. Each group of data is called a *file*. The structure and logic rules used to manage the groups of data and their names is called a *file system*.

There are many kinds of file systems, each with unique structure and organizational logic and the associated properties, like speed, flexibility, security, supported size, recoverability, error-evading technics, available features.

File systems can be used on many types of storage devices using various media. Some file systems were designed with a specific application in mind, like the `ISO 9660` and `UDF` filesystems that are intended for optical media. As of 2020, hard disk drives (HDD) are the most popular choice of long-term storage media, with SSDs seeing increased use as system disks. Other kinds of media include optical discs and flash storage devices; floppy disks and magnetic tapes are practically extinct. File systems cuch as `tmpfs` are used to format a portion of the computer's main memory then use it as very efficient, although volitile, storage.

Some file systems are used on local data storage devices, while others merely provide file access via a network protocol (e.g. NFS, SMB, 9P clients).

Some file systems are *virtual file systems* - they expose virtual files computed on request (`procfs`, `sysfs`), or present a view into another fs (remote fs, fs over a network, FTP server exposed as a local disk), to provide a simplification of a protocol (`sshfs`, `fishsh`), to provide a view into files organized around a particular purpose, 

The file system manages access to both the content of files and the metadata about those files. It is responsible for arranging storage space; reliability, efficiency, and tuning with regard to the physical storage medium are important design considerations.




## Refs

* https://en.wikipedia.org/wiki/File_system

* 5.10. Filesystems - The Linux Document Project (Dec 2021)
  https://tldp.org/LDP/sag/html/filesystems.html
  A filesystem is the methods and data structures that an operating system uses to keep track of files on a disk or partition; that is, the way the files are organized on the disk.
