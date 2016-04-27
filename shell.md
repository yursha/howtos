# Resources
- [Terminal sessions recordings website](https://asciinema.org/)

Shell is a parent process for all child processes launched from it. The exit status of a child process is provided by the POSIX 1003.1 `waitpid` function, or `128+n` if the child process was terminated by signal `n`.

If a shell command is terminated by `&`, the shell executes the subprocess asynchronously, i.e. does not wait for it to finish, and the return status is `0`. `STDIN` for asynchronous child processes, in the absence of any explicit redirections, is redirected from `/dev/null`.

# Frameworks
- [Composure](https://github.com/erichs/composure) by Erich Smith. Here is his [blog](http://erichs.github.io/) and [github](https://github.com/erichs).
- Todo management: [github](https://github.com/ginatrapani/todo.txt-cli) and [website](http://todotxt.com/)

# Bash
- Bookmark: #7 Job Control
- [Bash-it](https://github.com/Bash-it/bash-it)
- [Official Bash Manual](http://www.gnu.org/software/bash/manual/bash.html)
- http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html
- http://www.infoworld.com/article/2893519/linux/perl-python-ruby-are-nice-bash-is-where-its-at.html
- Advanced Bash Scripting Guide (Linux Documentation Project) tdlp.org/LDP/abs/html/
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
