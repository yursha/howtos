On UNIX systems, moving a directory within the same partition generally consists of renaming the directory.

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

# Open and close a file for reading
*python*
```python
file = open(filename)
# read or write to the file
file.close()
```

# Open and close a file for writing
*python*
```python
file = open(filename, 'w')
# read or write to the file
file.close()
```

# Read a file at once
*python*
```python
contents = file.read()
```

# Read a file in a sreaming fashion
*python*
```python
line = file.readline()
```

# Rewind a file
*python*
```python
f.seek(0)
```

# Write to a file
*python*
```python
file.write('stuff')
```

# Truncate a file
*python*
```python
file.truncate()
```

# Check if a file exists
*bash*
```bash
if [ -e "path/to/file.txt" ]; then
    echo "File exists"
fi
```

*python*
```python
from os.path import exists
if (exists("path/to/file.txt")):
    print "File exists"
```

# File Path
*gnu coreutils*
- `basename`
- `dirname`
- `pathchk`
- `mktemp`
- `realpath`

# Print all bytes of a file with character mappings
- `hexdump -c file.txt`



