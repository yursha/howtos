# Tips
- For simplicity **don't handle any error** until you find it stops a *successful* program execution.
- When an error happens always **log its stack trace** to be able to track error to a particular source code line and method call chain/path.
- In a multithreaded application **make number of threads configurable from the command line**. So during debug time you will be able to set `-Dthreads=1` and enjoyed logical sequential logging from a single thread of execution instead of intermingling of multiple threads.
- **Escape dynamic textual (non numeric) data** with single quotes so that variables containing spaces can be easily distinguishable from the (static) rest of the message. Not necessary for strong numeric typed variables.
- **respect log levels** sot that you can easily adjust log verbosity during debug time and run-time and grep out errors ans warnings from the production logs.

## Java
- All loggers should be `private static final`

# What one can expect from a logging library?
- pattern substitution, e.g. `log.debug("Found {} records matching filter: '{}'", records, filter);` - more readable and efficient as string concatenations (interpolations) are not done if log messages are filtered out based on the log level.
- ability to specify log level from the command-line, e.g. `-Dlog=DEBUG`. As of September 2015 java logging libraries (e.g. log4j, log4j2, etc.) have no such ability. The best approach then is to configure logging library programmatically and dynamically (instead of config xml files) based on some environment variable. The downside of this approach is that you will need to write additional Java code once for initialization logic and for every entry point to a program to trigger that initialization. For now its better to stick to manually changing `log4j2.xml` before launch (even if it requires repackaging). Investigate how to change `log4j2.xml` file in jar without repackaging OR how to build a class path for maven `target` directory to launch app unpackaged.

