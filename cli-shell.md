# Concepts
- `/etc/shells` - lists available shells on the system

# Resources
- [Terminal sessions recordings website](https://asciinema.org/)
- [LinuxCommand.org by William Shotts](http://linuxcommand.org/index.php)
- https://linuxconfig.org/bash-scripting-tutorial

Shell is a parent process for all child processes launched from it. The exit status of a child process is provided by the POSIX 1003.1 `waitpid` function, or `128+n` if the child process was terminated by signal `n`.

If a shell command is terminated by `&`, the shell executes the subprocess asynchronously, i.e. does not wait for it to finish, and the return status is `0`. `STDIN` for asynchronous child processes, in the absence of any explicit redirections, is redirected from `/dev/null`.

# Frameworks
- [Composure](https://github.com/erichs/composure) by Erich Smith. Here is his [blog](http://erichs.github.io/) and [github](https://github.com/erichs).
- Todo management: [github](https://github.com/ginatrapani/todo.txt-cli) and [website](http://todotxt.com/)

# Bash
- Bookmark: #7 Job Control
- [Official Bash Manual](http://www.gnu.org/software/bash/manual/bash.html)
- [Advanced Bash Scripting Guide (Linux Documentation Project)](tdlp.org/LDP/abs/html/)
- [Bash Git Repo](http://savannah.gnu.org/git/?group=bash)
- [Bash-it](https://github.com/Bash-it/bash-it)
- [Bash Guide for Beginners by Machtelt Garrels](http://www.tldp.org/LDP/Bash-Beginners-Guide/html/Bash-Beginners-Guide.html)
- http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html
- www.gnu.org/software/parallel
- https://github.com/jlevy/the-art-of-command-line

# Emails
*bash*
Bash will check for mail periodically, depending on the values of the MAIL, MAILPATH, and MAILCHECK shell variables. MAILCHECK specifies how often (in seconds) the shell should check for mail in the files specified in the MAILPATH or MAIL variables. The default is 60 seconds. When it is time to check for mail, the shell does so before displaying the primary prompt. If this variable is unset, or set to a value that is not a number greater than or equal to zero, the shell disables mail checking.

# Pipes examples
```
curl -s http://some/script | bash
curl -s google.com | vim -
git diff | hg import -

```

# Shell signals interpretation
- `C-D` - send EOF signal

# Shell builtins
- disown
- umask
- cd

# Deps
Bash depends on readline, history and termcap libs. Readline provides the other two.
