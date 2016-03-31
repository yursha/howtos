- http://www.gnu.org/software/bash/manual/bash.html
- http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html
- http://www.infoworld.com/article/2893519/linux/perl-python-ruby-are-nice-bash-is-where-its-at.html
- Advanced Bash Scripting Guide (Linux Documentation Project) tdlp.org/LDP/abs/html/
- www.gnu.org/software/parallel
- https://github.com/jlevy/the-art-of-command-line
- http://www.infoworld.com/article/2893519/linux/perl-python-ruby-are-nice-bash-is-where-its-at.html
- Bookmark: #6.0_Bash_Features

Shell is a parent process for all child processes launched from it. The exit status of a child process is provided by the POSIX 1003.1 `waitpid` function, or `128+n` if the child process was terminated by signal `n`.

If a shell command is terminated by `&`, the shell executes the subprocess asynchronously, i.e. does not wait for it to finish, and the return status is `0`. `STDIN` for asynchronous child processes, in the absence of any explicit redirections, is redirected from `/dev/null`.

# Pipelines
- `[time [-p]] [!] command1 [ | or |& command2 ]... ` - The `TIMEFORMAT` variable may be set to a format string that specifies how the timing information should be displayed. The exit status of a pipeline is the exit status of the last command in the pipeline, unless the `pipefail` option is enabled. If `pipefail` is enabled, the pipelines return status is the value of the last command to exit with a non-zero status, or zero if all commands exit successfully.


# Loops
- `until test-commands; do consequent-commands; done`
- `while test-commands; do consequent-commands; done`
- `for name [ [in [words...] ; ] do commands; done`
- `for (( expr1 ; expr2 ; expr3 )) ; do commands ; done`

# Branches
## if-else
```
if test-commands; then
  consequent-commands;
[elif more-test-commands; then
  more-consequents;]
[else alternate-consequents;]
fi
```

## switch
- `case word in [ [(] pattern [| pattern]...) command-list ;;]... esac`

Example
```
echo -n "Enter the name of an animal: "
read ANIMAL
echo -n "The $ANIMAL has "
case $ANIMAL in
  horse | dog | cat) echo -n "four";;
  man | kangaroo ) echo -n "two";;
  *) echo -n "an unknown number of";;
esac
echo " legs."
```

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
- `!!` - execute the previous command
- `!<prefix> - last command from history that matches

- delete word ahead of cursor - http://askubuntu.com/questions/279254/bash-delete-word-ahead-of-cursor
