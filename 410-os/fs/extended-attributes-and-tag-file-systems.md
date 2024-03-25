# Extended attributes and tag file systems

https://www.lesbonscomptes.com/pages/tagfs.html
https://www.lesbonscomptes.com/pages/extattrs.html


A number of distinguishing features can characterize the current projects.

## Storage mode

There are 3 possible approaches:
1. Let the user organize their files inside a primary directory tree with a structure of their choice, and layer the tagging system over this.
2. Implement the primary file storage using an internal opaque directory structure over the standard filesystem. The storage can only be accessed through the tag interface (the names and paths are mangled).
3. Implement a full file system above a block storage device.


We let the last approach aside.

Among the first two, only the first is compatible with the demands made in the first part. It does have certain drawbacks compared to the second one though, we may just as well list them.

-   When layering a tag structure above a physical hierarchy, there is no obvious way to create a file inside the virtual structure. Where would the physical file go ? So the virtual tree can only be used for finding and editing, and it is a bit troubling to be working in a tree and have to perform "Save As" into another tree (the physical one). It might be possible to overload the "symbolic link" operation for creating files on the command line, but this would not help your word processor.
    
-   Because you create files out of the tag structure, forgetting to tag them is easy. Too many untagged files will render the system useless, as these can't be found in the virtual tree.  
    'Oyepa' solves this by monitoring the physical tree and popping up a dialog to ask for tags when a new file is created.
    

#### Facets

A 'faceted' system used qualified tags or name/value pairs, e.g. 'author: Dickens'.

When presenting the virtual tree, faceted systems alternate "name" and "value" directories in path such as in:

Author/
  Dickens/
  Poe/
    Type/
      Novel/
      Short Story/
        The pit and the pendulum.epub

Quite obviously, this approach allows useful distinctions (orange as colour or as fruit), it also complicates the system. It is invaluable for an online catalog, but may prove overkill for a personal organisation system, where a flat namespace, making everything simpler, may still be sufficient (and has been proven good enough in social media tagging applications).

Faceted systems are also sometimes defined in opposition to a strict hierarchy, with a reference to having more "dimensions" which does not make sense (both systems contain the same richness of information).

For exemple you could have a directory hierarchy of artist/album/title or a faceted system with the same qualifiers. What changes is the way you browse the system, not what information is stored or how many "dimensions" it has.

A faceted system is browseable, which supposes that each category has a reasonably limited number of possible values. Other than this, it's quite equivalent to an rdbms.

#### Tag hierarchies

Reasoning (hierarchy/equivalences). A tag set can be structured and enriched to understand that 'France' is in 'Europe' and that 'USA' and 'United States of America' are the same, so that files tagged 'France' can be found in the folder 'Europe'. I am not sure that this is really what the user wants in most cases, actually.

#### Open or closed vocabularies

There is a choice to be made when adding a tag to a given file: can you make it up on the fly, or do you chose it from a predefined list (separately updateable). The first approach is apparently easier but leads to errors.

### Tmsu (Paul Ruane)

Layered above the primary user storage hierarchy.

Commands can set non-faceted, open vocabulary tags on files and manage them

Metadata (tags and paths) is stored in a SQLite database.

A fuse file system gives a view of the file set organised by tag directories. Files in the virtual tree are symlinks to the actual ones. Directories countain both files and tags subdirectories, and tag paths are equivalent to AND queries.

File name collisions are handled by adding numbers to file names. All file names are modified (with a globally unique serial number?).

Tmsu knows which AND queries have no results and will not create subdirectories for tags that can not be associated to the current path (keeps track of all existing tag combinations).

Tagging a directory in the primary tree is recursive.

Renames inside the virtual tree are not implemented (should change the tags set I guess).

### Oyepa (Manuel Arriaga)

[oyepa][1] stores the tagging data in the file names.

Oyepa has a GUI which monitors specific filesystem directories and asks for tagging information when files are created. When tagging is performed, the file is renamed based on the tags. E.g.: 'business john smith dogfood.doc'

This has the same properties as using extended attributes except from the dancing through hoops forced by overloading file names with additional function. It has the advantage that most tools have more respect for file names, than for extended attributes, but shares some of the problems anyway (e.g.: file name length limitations or character set issues).

### Tagsistant

Tags are values associated with files, and have no type (they all share the same namespace).

Directories are boolean queries on tags, e.g.: 'london/AND/2010/AND/photo/'

It is possible to define a tag hierarchy with 'includes' and 'equivalent' relations.

File storage is opaque and managed by Tagsistant using the underlying file system, and tag data is held inside MySQL or SQLite. Of course there is no reasonable access to the data through the regular filesystem.

The tagging part seems well thought-out, but this fails all my criteria: if Tagsistant thrashes its data you're totally out of luck.

### Tagfs/Semfs

Tagfs was later renamed as [semfs][2]

Implements internal / opaque storage method.

Access through WebDAV.

Metadata stored in an RDF store.

The actual scope of SemFS is wider than just file tagging, which is just the basic/initial function.

### Tagfs (marook, Markus Pielmeier)

Layered above the primary user storage hierarchy.

Fuse-based tagging file system written in Python

Tags are set per primary directory and held in a hidden file.

Tags are name-value pairs, with possible filtering on values. Tag names and value alternate in the directory hierarchy, e.g.:

genre/
genre/comedy
genre/comedy/itemdir
genre/drama
genre/drama/otheritemdir

You need to umount/remount to see tags changes.

When using the virtual hierarchy, you can copy files into the virtual directories matching actual items, but not elsewhere (neither can you create new item directories).

### Recollfs (Piotr Długosz)

This is a bit outside the main subject, but I'll mention it because it is based on Recoll…

This is a fuse file system where directories contain Recoll search results.

Directory names are search queries: mkdir "Louise OR Jane"

The directory contents are the Recoll search query results.

The directories do not appear automagically, you have to create them, there is no browseable tree, and there are no facilities to actually set the tags. So this is definitely a far outlier, still worth mentionning.

### dhtfs

Analog to Tagsistant but less developped.

### TaggedFS (lordikc)

I could not make full sense with the explanations. As far as I could understand the system uses the regular file-system for storage, but with a custom directory structure (not user-chosen). Tags are stored in aux files, this is a non-faceted system, but with defined hierarchical relationships between tags (family = (mom, pop)).

### Dbfs (Onne Gorter)

This is a faceted system, an ambitious one, it stayed at the prototype stage as far as I understand (worked with KDE).

I only read the introduction.

Storage handled by the regular filesystem with an attempt at automatic location choice (e.g. word documents go to ~/Documents).

File attributes were automatically deduced (file type, dates) from files, with plans for extraction (author, etc.). I think that there was also a possibility for the user to add explicit tags.

### Elyse

Mac and Windows only. AFAIK files stay in their original location in the filesystem with original tags matching their parent directory names. Tags can then be added and organised freely.

[1]: http://pages.stern.nyu.edu/~marriaga/software/oyepa/
[2]: http://semanticweb.org/wiki/SemFS
