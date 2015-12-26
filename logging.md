# Goals
- Provide insights into application execution
- Help in debugging
- Help in profiling

# Art of logging
- **Highlight interpolated values** to distinguish what is interpolated and what is static.
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
- https://docs.oracle.com/javase/tutorial/essential/exceptions/index.html
- All loggers should be declared `private static final`
- http://logback.qos.ch/
- http://www.slf4j.org/

### Log4j2
- How to configure log4j2 differently in development and production?

# What one can expect from a logging library?
- pattern substitution, e.g. `log.debug("Found {} records matching filter: '{}'", records, filter);` - more readable and efficient as string concatenations (interpolations) are not done if log messages are filtered out based on the log level.
- ability to specify log level from the command-line, e.g. `-Dlog=DEBUG`. As of September 2015 java logging libraries (e.g. log4j, log4j2, etc.) have no such ability. The best approach then is to configure logging library programmatically and dynamically (instead of config xml files) based on some environment variable. The downside of this approach is that you will need to write additional Java code once for initialization logic and for every entry point to a program to trigger that initialization. For now its better to stick to manually changing `log4j2.xml` before launch (even if it requires repackaging). Investigate how to change `log4j2.xml` file in jar without repackaging OR how to build a class path for maven `target` directory to launch app unpackaged.
- Asynchronous execution
- automatic reloading of configuration
- filtering
- file, syslog and socket appenders, async appenders

# Test Driven Development
- http://junit.org/
- Unit Testing
- End-to-end Testing
- Mocks
- Test Harnesses
