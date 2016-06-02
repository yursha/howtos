# Unix
- `/etc/passwd` - where the users' information is stored
- `cut -d: -f1 /etc/passwd | sort` - print sorted list of all users on a host
- `/etc/shadow` - where the users' passwords are stored

# [GNU `coreutils`](http://www.gnu.org/software/coreutils/)
- `users` - print the user names of users currently logged in to the current host.
- `id` - print real and effective user and group IDs
- `logname` - print user's login name
- `whoami` - print effective userid
- `groups` - print the groups the user is in
- `who` - print who is logged on

# [`shadow-utils`](http://pkg-shadow.alioth.debian.org/)
- `useradd` (symlinked from `adduser` on Fedora) - create a new user or update default new user information
- `userdel` - delete a user account and related files
- `usermod` - modify a user account
- `usermod -a -G <groupname> username` - add user to a group
- `groupadd` - create a new group

# [`passwd`](http://fedorahosted.org/passwd)
- `passwd` - update user's authentication tokens

# [`util-linux`](http://en.wikipedia.org/wiki/Util-linux)
- `chsh` - change your login shell
- `chfn` - change your finger information
- `su` - run a command with a substitute user and group ID
- https://wiki.archlinux.org/index.php/Su
- `su -c "Your command right here" -s /bin/sh username`

# [`sudo`](http://www.courtesan.com/sudo/)
- https://www.sudo.ws/sudo/
- https://wiki.archlinux.org/index.php/Sudo
- `sudo`, `sudoedit` - execute a command as another user (substitute user do) (alternative to `su`). Allows a system administrator to delegate authority to certain users (or groups of users) to run some (or all) commands as root or another user while providing an audit trail of the commands and their arguments.

Sudo is an alternative to su for running commands as root. Unlike su, which launches a root shell that allows all further commands root access, sudo instead grants temporary privilege escalation to a single command. By enabling root privileges only when needed, sudo usage reduces the likelihood that a typo or a bug in an invoked command will ruin the system.

Sudo can also be used to run commands as other users; additionally, sudo logs all commands and failed access attempts for security auditing. 
