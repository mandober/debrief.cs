# File Systems: Topics


- fs types
  - logical fs
  - virtual fs
  - vendor fs
  - for use with specific media
  - for specific purpose
  - as a view
    - mapping into a different fs (used as a backing store), over a network
    - exposing remote files locally
- media
  - block storage device (`blkid` vs character storage device)
  - hdd, sdd, flash
  - RAM
  - optic disks
  - magnetic tape
  - network
    - local
    - internet
      - cloud, web
        - webdriver
        - FTP
- fs for specific media
  - durable storage
  - long-term storage
    - magnetic tapes
    - optic disks
  - short-term storage
    - RAM
  - network storage
  - fast network storage
- medium
  - addressing
  - interfacing, os, medium firmware
- data
  - file
  - metadata
  - directory, folder
- node, inode
- MFT (master file table)
- link
  - hardlink
  - softlink
  - junction
  - reparse point
- journaling file system



- utils that create fs operate on the raw sectors of disk/partition
- before a partition/disk is used as a fs, it needs to be initialized (bookkeeping data structures written to disk), process called making a fs, such utils have names like `mkfs.ext4`)
