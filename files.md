On UNIX systems, moving a directory within the same partition generally consists of renaming the directory.

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
- ext3
- ext4 (inode)
- zfs
- dos

# file system operations
- syntactic file path operations (don't access file system)
- glob pattern
- file change notification (watching)

# unix system calls
- lstat
- fstat
- chmod
- chown
- umask
- mount

# performance
- use buffered IO
- use caches
- async IO
- minimize accesses (bulk reads/writes)

# POSIX
- `/etc/fstab`

# file system layout (Linux filesystem hierarchy standard)

# Storage Devices

# Security
- CWE-367: Time-of-check Time-of-use (TOCTOU) Race Condition https://cwe.mitre.org/data/definitions/367.html
