# Resources
- [Terminal sessions recordings website](https://asciinema.org/)
- [LinuxCommand.org by William Shotts](http://linuxcommand.org/index.php)

Shell is a parent process for all child processes launched from it. The exit status of a child process is provided by the POSIX 1003.1 `waitpid` function, or `128+n` if the child process was terminated by signal `n`.

If a shell command is terminated by `&`, the shell executes the subprocess asynchronously, i.e. does not wait for it to finish, and the return status is `0`. `STDIN` for asynchronous child processes, in the absence of any explicit redirections, is redirected from `/dev/null`.

# Frameworks
- [Composure](https://github.com/erichs/composure) by Erich Smith. Here is his [blog](http://erichs.github.io/) and [github](https://github.com/erichs).
- Todo management: [github](https://github.com/ginatrapani/todo.txt-cli) and [website](http://todotxt.com/)

# Bash
- Bookmark: #7 Job Control
- [Official Bash Manual](http://www.gnu.org/software/bash/manual/bash.html)
- [Bash Git Repo](http://savannah.gnu.org/git/?group=bash)
- [Bash-it](https://github.com/Bash-it/bash-it)
- [Bash Guide for Beginners by Machtelt Garrels](http://www.tldp.org/LDP/Bash-Beginners-Guide/html/Bash-Beginners-Guide.html)
- [Advanced Bash Scripting Guide (Linux Documentation Project)](tdlp.org/LDP/abs/html/)
- http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html
- http://www.infoworld.com/article/2893519/linux/perl-python-ruby-are-nice-bash-is-where-its-at.html
- www.gnu.org/software/parallel
- https://github.com/jlevy/the-art-of-command-line
- http://www.infoworld.com/article/2893519/linux/perl-python-ruby-are-nice-bash-is-where-its-at.html
- http://tldp.org/LDP/abs/html/process-sub.html
- http://wiki.bash-hackers.org/syntax/expansion/proc_subst
- delete word ahead of cursor - http://askubuntu.com/questions/279254/bash-delete-word-ahead-of-cursor

# zsh
- https://github.com/robbyrussell/oh-my-zsh

# korn shell (ksh)
- [ksh93](http://www.kornshell.com)

# csh

# Emails
*bash*
Bash will check for mail periodically, depending on the values of the MAIL, MAILPATH, and MAILCHECK shell variables. MAILCHECK specifies how often (in seconds) the shell should check for mail in the files specified in the MAILPATH or MAIL variables. The default is 60 seconds. When it is time to check for mail, the shell does so before displaying the primary prompt. If this variable is unset, or set to a value that is not a number greater than or equal to zero, the shell disables mail checking.

# Testing Environment
*gnu coreutils*
- `pwd`
- `stty`
- `printenv`
- `tty`

*bash builtins*
- `cd`

# Colors
- http://misc.flogisoft.com/bash/tip_colors_and_formatting
- http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html

# Pipes examples
```
curl -s http://some/script | bash
curl -s google.com | vim -
git diff | hg import -

```

# Primitives
- Files
- Binaries
- Numbers
- Strings
- Operators

# Means of combination
- Pipes
- Loops (Unlike loops in other languages these have stdin and stdout)
- Subshells (triggered by parentheses and create there own scope/environment)
- Compound commands

# Means of abstractions
- functions (unlike functions in other languages there have stdin and stdout)
- scripts


# Pipes examples
```bash
function args() { man ls | col -b | grep '^[[:space:]]*ls \[' | awk -F '[][]' '{print $2}' }
python -c "import string; print set(string.lowercase) - set('`args`')"
```

# Tips
- Avoid tar pit of immediacy
- Avoid proficiency fatalism
- Use more pipes and functions
- Pay attention to how much ass you need
- Strive to achieve the full range of quality

# Why `echo` is bad (non-portable)
- http://stackoverflow.com/questions/8467424/echo-newline-in-bash-prints-literal-n

# Multiline strings
- http://stackoverflow.com/questions/23929235/multi-line-string-with-extra-space

# Float division
- http://stackoverflow.com/questions/12722095/how-can-i-get-float-division

# EOF
- `C-D` - send EOF signal
