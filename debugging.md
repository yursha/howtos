- Do not use a "debugger." A debugger is like doing a full-body scan on a sick person. You do not get any specific useful information, and you find a whole lot of information that doesn't help and is just confusing. Just print interesting places to the console.
- Look for recent source code changes which might have introduced a bug in a version control system.
- isolate (divide and conquer)

# Art of writing easy to debug software
- Crash if recovery is not meaningful.
- Assert user (or external API input) is valid
- Assert internal API input is valid (defensive programming)
- **Log all errors** with as much information (including stack trace) as possible.
- In a multithreaded application **make number of threads configurable from the command line**. So during debug time you will be able to set `-Dthreads=1` and enjoy serial logging.

## Java Platform Debugger Architecture (JPDA)

## Java Debug Interface (JDI)

## JDWP (Java Debug Wire Protocol)
- `java -agentlib:jdwp=transport=dt_socket,server=y,address=8000` - debug agent listens on port 8000, suspending JVM before the main class loads.

# Perl Debugger
- [Debugging Perl by Gabor Szabo](http://perlmaven.com/using-the-built-in-debugger-of-perl)

## Commands
- p - print scalar
- x - print data structure
- b subname - set breakpoint at function entry
- l - list the next few lines of the source code
- l from-to - list source code between given lines
- q - quit the debugger
