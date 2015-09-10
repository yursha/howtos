# Tips
- For simplicity don't handle any error until you find it stops a successful program execution.
- When an error happens always log its stack trace to be able to track error to its cause.
- In a multithreaded application make number of threads configurable from the command line. So during debug time you will be able to set `-Dthreads=1` and enjoyed logical sequential logging from a single thread of execution instead of intermingling of multiple threads.

# What one can expect from a logging library?
- pattern substitution, e.g. `log.debug("Found {} records matching filter: '{}'", records, filter);` - more readable and efficient as string concatenations (interpolations) are not done if log messages are filtered out based on the log level.
- ability to specify log level from the command-line. As of September 2015 java logging libraries (e.g. log4j, log4j2, etc.) have no such ability. The best approach then is to configure logging library programmatically and dynamically (instead of config xml files) based on some environment variable.

# How to log
- escape dynamic textual (non numeric) data with single quotes
- respect log levels

