# Art of logging
- **Escape variable non numeric data with single quotes** so that variables containing spaces can be easily distinguishable from the (static) rest of the message.
- **Respect log levels** sot that you can easily adjust log verbosity in development and production environments and grep out only important messages easily.
- Log files are **append-only**. Be sure to log only what is really helpful during debugging as log files can grow and take a lot of disk space. There should be an **archiving policy** for log files. In production environment its  helpful to print 'INFO', 'WARN' and 'ERROR' level messages only to save **disk space**. Their should be a separate **build profile** for development and production environments.

# Art of writing easy to debug software
- Loudly **crash on error** if recovery is not meaningful.
- Assert valid input for program and API (defensive programming)
- **Log all errors** with as much information (including stack trace) as possible.
- In a multithreaded application **make number of threads configurable from the command line**. So during debug time you will be able to set `-Dthreads=1` and enjoy serial single-thread logging.

# Art of debugging
- Look for recent source code changes which might have introduced a bug in a version control system.
- isolate (divide and conquer)

## Java
- Effective Java Exceptions by Barry Ruzek 01/10/2007 http://www.oracle.com/technetwork/articles/entarch/effective-exceptions-092345.html
- Best Practice Exception Handling in Java https://code.google.com/p/solidbase/wiki/ExceptionHandlingGuideline
- https://docs.oracle.com/javase/tutorial/essential/exceptions/index.html
- All loggers should be declared `private static final`
- http://logback.qos.ch/
- http://www.slf4j.org/

Logical exceptions must be checked and handled. Software or execution environment faults must not.

### Log4j2
- How to configure log4j2 differently in development and production?

# What one can expect from a logging library?
- pattern substitution, e.g. `log.debug("Found {} records matching filter: '{}'", records, filter);` - more readable and efficient as string concatenations (interpolations) are not done if log messages are filtered out based on the log level.
- ability to specify log level from the command-line, e.g. `-Dlog=DEBUG`. As of September 2015 java logging libraries (e.g. log4j, log4j2, etc.) have no such ability. The best approach then is to configure logging library programmatically and dynamically (instead of config xml files) based on some environment variable. The downside of this approach is that you will need to write additional Java code once for initialization logic and for every entry point to a program to trigger that initialization. For now its better to stick to manually changing `log4j2.xml` before launch (even if it requires repackaging). Investigate how to change `log4j2.xml` file in jar without repackaging OR how to build a class path for maven `target` directory to launch app unpackaged.
- Asynchronous execution
- automatic reloading of configuration

# Test Driven Development
- http://junit.org/
- Unit Testing
- End-to-end Testing
- Mocks
- Test Harnesses

