- http://www.gnu.org/software/bash/manual/bash.html

Shell is a parent process for all child processes launched from it. The exit status of a child process is provided by the POSIX 1003.1 `waitpid` function, or `128+n` if the child process was terminated by signal `n`. 

If a shell command is terminated by `&`, the shell executes the subprocess asynchronously, i.e. does not wait for it to finish, and the return status is `0`. `STDIN` for asynchronous child processes, in the absence of any explicit redirections, is redirected from `/dev/null`. 

# Pipelines
- `[time [-p]] [!] command1 [ | or |& command2 ] … ` - The `TIMEFORMAT` variable may be set to a format string that specifies how the timing information should be displayed. The exit status of a pipeline is the exit status of the last command in the pipeline, unless the `pipefail` option is enabled. If `pipefail` is enabled, the pipeline’s return status is the value of the last command to exit with a non-zero status, or zero if all commands exit successfully.

- delete word ahead of cursor - http://askubuntu.com/questions/279254/bash-delete-word-ahead-of-cursor

# Bash built-ins
- `help`
- `pwd`

- `CTRL+r` - navigate history

- `echo $?` - echo exit value of the last executed child process.
- `!!` - execute the previous command
- `!<prefix> - last command from history that matches
