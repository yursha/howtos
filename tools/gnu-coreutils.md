[Bookmark](https://www.gnu.org/software/coreutils/manual/coreutils.html#Target-directory)

# Output of entire files
- `cat` - concatenate and write files
- `tac` - concatenate and write files in reverse
- `nl` - number lines and write files
- `od` - write files in octal or other formats
- `base64` - transform data into printable data

# Formatting file contents
- `fmt` - reformat paragraph text
- `pr` - pagingate or columnate files for printing
- `fold` - wrap input lines to fit in specified width

# Output of parts of files
- `head`
- `tail`
- `split`
- `csplit`

```
head -1 file.txt | xargs echo
```

# Summarizing files
- `wc`
- `sum`
- `cksum`
- `md5sum`
- `sha1sum`

# Operating on sorted files
- `sort` - sort lines of text files
- `shuf` - generate random permutations
- `uniq`
- `comm` - compare two sorted files line by line
- `ptx`
- `tsort` - topological sort

# Operating on fields
- `cut`
- `paste`
- `join`

# Operating on characters
- `tr`
- `expand`
- `unexpand`

# Directory listing
- `ls` - list directory contents
- `ls -p` - list cwd with '/' indicators for directories
- `ls -i` - list with inode numbers
- `dir`
- `vdir`
- `dircolors`

# Basic operations
- `cp`
- `dd`
- `install`
- `mv`
- `rm`
- `shred` - overwrite a file to hide its contents, and optionally delete it

# Special file types
- `link`
- `ln`
- `mkdir`
- `mkfifo`
- `mknod`
- `readlink`
- `rmdir`
- `unlink`

# Changing file attributes
- `chown` - change file owner and group
- `chgrp` - change group ownership
- `chmod`
- `touch`

# Disk usage
- `df` - report file system disk space usage
- `du` - estimate file space usage
- `stat`
- `sync`
- `truncate`

# Printing text
- `echo`
- `printf`
- `yes`

# Conditions
- `false`
- `true`
- `test`
- `expr`

# Redirection
- `tee`

# User information
- `id` - print real and effective user and group IDs
- `logname`
- `whoami`
- `groups`
- `users`
- `who`

# System context
- `date`
- `arch`
- `nproc`
- `uname`
- `hostname`
- `hostid`
- `uptime`

# SELinux context
- `chcon`
- `runcon`

# Modified command invocation
- `chroot` - run command or interactive shell with special root directory
- `env`
- `nice`
- `nohup`
- `stdbuf`
- `timeout`

# Process control
- `kill`

# Delaying
- `sleep`

# Numeric operations
- `factor`
- `numfmt`
- `seq`
