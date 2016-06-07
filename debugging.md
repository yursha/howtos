# Concepts
Debugging is the art of establishing the cause of a software problem.
- reasoning about the cause
- inspecting logs
- inspecting source code
- runtime introspection (with special debug tools)

# Resources

## Scala
- [Scala Debugger API](http://scala-debugger.org/)

## Java

[jdb](http://docs.oracle.com/javase/8/docs/technotes/tools/unix/jdb.html) - command-line debugger for java classes (`man jdb`)
- use `help` while in debug mode for available commands/actions.

JDB provides introspection into remote and local JVMs.

Options to start debugging session:
- launch a JVM process via a JDB by providing main class path (all other params as for `java` command)
    + `jdb -classpath .:lib -sourcepath src mypackage.Main` - make sure to use `-classpath` option instead of `-cp` option, source directory structure should follow java package naming conventions.
- connect JDB to existing JVM process (if it was started in a debug-aware mode).

Only accepts dirs for `sourcepath` option (not jars)

# Perl

    + [Debugging Perl by Gabor Szabo](http://perlmaven.com/using-the-built-in-debugger-of-perl)
    + `perl -de1` - (perl) use debugger as repl
```
- p - print scalar
- x - print data structure
- b subname - set breakpoint at function entry
- l - list the next few lines of the source code
- l from-to - list source code between given lines
- q - quit the debugger
```

# Rules
- You may use logging to debug the app with available source code.
- You have to use debugging to debug the app for which you don't have source code access or 'edit/compile/run' lifecycle is prohibitively expensive.
- Look for recent source code changes which might have introduced a bug in a version control system.
- isolate (divide and conquer)

# Art of writing easy to debug software
- Crash if recovery is not meaningful.
- Assert user (or external API input) is valid
- Assert internal API input is valid (defensive programming)
- **Log all errors** with as much information (including stack trace) as possible.
- In a multithreaded application **make number of threads configurable from the command line**. So during debug time you will be able to set `-Dthreads=1` and enjoy serial logging.

## [Java Platform Debugger Architecture (JPDA)](http://docs.oracle.com/javase/8/docs/technotes/guides/jpda/index.html)

## Java Debug Interface (JDI)

## JDWP (Java Debug Wire Protocol)
- `java -agentlib:jdwp=transport=dt_socket,server=y,address=8000` - debug agent listens on port 8000, suspending JVM before the main class loads.

# Web browser apps
Web browser apps are being debugged in the browser (their execution environment).

## AngularJS
- Angular automatically places `ng-scope` class on elements where scopes are attached. (Can be colored)

```
> To examine the scope in the debugger:
> Right click on the element of interest in your browser and select 'inspect element'. You should see the browser debugger with the element you clicked on highlighted.
> The debugger allows you to access the currently selected element in the console as $0 variable.
> To retrieve the associated scope in console execute: angular.element($0).scope() or just type $scope
```
