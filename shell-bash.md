- http://www.gnu.org/software/bash/manual/bash.html

Shell is a parent process for all child processes launched from it.

- delete word ahead of cursor - http://askubuntu.com/questions/279254/bash-delete-word-ahead-of-cursor

# Bash built-ins
- `help`
- `pwd`

- `CTRL+r` - navigate history

- `echo $?` - echo exit value of the last executed child process.
- `!!` - execute the previous command
- `!<prefix> - last command from history that matches

The exit status of a shell command is its exit status as provided by the POSIX 1003.1 `waitpid` function, or `128+n` if the command was terminated by signal `n`. 
