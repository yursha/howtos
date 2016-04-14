Shell is a parent process for all child processes launched from it. The exit status of a child process is provided by the POSIX 1003.1 `waitpid` function, or `128+n` if the child process was terminated by signal `n`.

If a shell command is terminated by `&`, the shell executes the subprocess asynchronously, i.e. does not wait for it to finish, and the return status is `0`. `STDIN` for asynchronous child processes, in the absence of any explicit redirections, is redirected from `/dev/null`.

# Pipelines
- `[time [-p]] [!] command1 [ | or |& command2 ]... ` - The `TIMEFORMAT` variable may be set to a format string that specifies how the timing information should be displayed. The exit status of a pipeline is the exit status of the last command in the pipeline, unless the `pipefail` option is enabled. If `pipefail` is enabled, the pipelines return status is the value of the last command to exit with a non-zero status, or zero if all commands exit successfully.

## select
- `select name [in words #]; do commands; done`

Example:
```
select fname in *;
do
    echo you picked $fname \($REPLY\)
    break;
done
```

## arithmetic
- `((...))`

## conditional
- `[[...]]`
- Operators
    + `==`
    + `!=`
    + `=~`
    + `||`
    + `&&`
    + `!`

Examples
```
[[ $line =~ [[:space:]]*(a)?b ]]

pattern='[[:space:]]*(a)?b'
[[ $line =~ $pattern ]]

## grouping
- `( expr1;expr2 )` - creates new scope
- `{ expr1;expr2; }` - doesn't create new scope

## process substitution
- https://gnu.org/software/bash/manual/bash.html#Process-Substitution
- http://tldp.org/LDP/abs/html/process-sub.html
- http://wiki.bash-hackers.org/syntax/expansion/proc_subst

## functions


If the `;;` operator is used, no subsequent matches are attempted after the first pattern match. Using `;&` in place of `;;` causes execution to continue with the command-list associated with the next clause, if any. Using `;;&` in place of `;;` causes the shell to test the patterns in the next clause, if any, and execute any associated command-list on a successful match.

# Bash built-ins
- `help`
- `pwd`

- `CTRL+r` - navigate history

- `echo $?` - echo exit value of the last executed child process.
- `echo $'\n'` - echo extra newlines

# Shortcuts
- `!!` - execute the previous command
- `!<prefix> - last command from history that matches

- delete word ahead of cursor - http://askubuntu.com/questions/279254/bash-delete-word-ahead-of-cursor
