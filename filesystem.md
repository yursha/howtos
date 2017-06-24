# System calls
- open
- lstat
- fstat
- chmod
- chown
- umask
- mount
- fcntl

# Resources
- [Linux Storage Stack Diagram by by Fischer and Shonberger](https://www.thomas-krenn.com/en/wiki/Linux_Storage_Stack_Diagram)

# Concepts
- Linux Virtual Filesystem (VFS) - API
- Linux inode cache is implemented in a single file, fs/inode.c
- superblock - a record of the characteristics of a filesystem
    + size
    + block size
    + empty and filled blocks and their respective counts
    + size and location of inode tables
    + disk block map and usage information
    + size of block groups

On UNIX systems, moving a directory within the same partition generally consists of renaming the directory.

Filesystem access is not automatically synchronized. Each process/thread maintains its own access mode and cursor in the file and unaware of other processes/threads.

- [inode in wikipedia](https://en.wikipedia.org/wiki/Inode)

# Resources
- [Storage Administration Guide in Fedora Docs](https://docs.fedoraproject.org/en-US/Fedora/14/html/Storage_Administration_Guide/index.html)

# Programming files
- streaming vs bulk reads
- use buffered IO (deferred execution)
- use caches
- async IO
- minimize accesses (bulk reads/writes)
- random-access files, sequential access
- seekable file streams

# file attributes
- name
- size
- type (regular, directory, symlink)
- creation time (ctime)
- last modified time (mtime)
- last access time (atime)
- file owner
- group owner
- access permissions (bit mask) (POSIX)
- is hidden

# file types
- softlink
- hardlink
- directory
- socket
- regular file

# file systems
File system is a kernel driver
- ntfs
- hpfs+
- zfs
- dos

## ext4 (inode)
- [The Ext4 File System in Fedora Docs](https://docs.fedoraproject.org/en-US/Fedora/14/html/Storage_Administration_Guide/newfilesys-ext4.html)
- [Ext4 - kernel newbies](http://kernelnewbies.org/Ext4)
- [Ext4 - Red Hat](https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Storage_Administration_Guide/ch-ext4.html)
- [Ext4 - wikipedia](https://en.wikipedia.org/wiki/Ext4)
- [Ext4 - kernel archive wiki](https://ext4.wiki.kernel.org/index.php/Main_Page)
- `man ext4`

- [e2fsprogs](http://e2fsprogs.sourceforge.net) - utilities for maintaining ext2, ext3 and ext4 file systems
    + `mke2fs`
    + `resize2fs`
    + `e2fsck`
    + `debugfs`
    + `tune2fs`
    + `dumpe2fs` - prints the super block and blocks group information for the filesystem present on device.

# file system operations
- syntactic file path operations (don't access file system)
- glob pattern
- file change notification (watching)

# POSIX
- `/etc/fstab`

# file system layout (Linux filesystem hierarchy standard)

# Storage Devices

# Security
- CWE-367: Time-of-check Time-of-use (TOCTOU) Race Condition https://cwe.mitre.org/data/definitions/367.html

# Recovery
- http://unix.stackexchange.com/questions/48200/recovered-deleted-files-on-mac-by-command-line
- https://www.quora.com/Unix-Commands-What-are-some-easy-ways-to-recover-files-from-rm-rf
- http://unix.stackexchange.com/questions/48200/recovered-deleted-files-on-mac-by-command-line
- http://unix.stackexchange.com/questions/101237/how-to-recover-files-i-deleted-now-by-running-rm

# Commands
- fsck

# Library functions
- ftok

# File Path
*gnu coreutils*
- `basename`
- `dirname`
- `pathchk`
- `mktemp`
- `realpath`

# Print all bytes of a file with character mappings
- `hexdump -c file.txt`


# Distributed file systems
