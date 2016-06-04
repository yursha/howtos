- http://www.javacodegeeks.com/2011/01/10-tips-proper-application-logging.html
- http://dev.splunk.com/view/logging-best-practices/SP-CAAADP6

# Goals
- Provide insights into application execution
- Help in debugging
- Help in profiling

# Art of logging
- **Highlight interpolated values** to distinguish what is interpolated and what is static.
- **Respect log levels** sot that you can easily adjust log verbosity in development and production environments and grep out only important messages easily.
- Log files are **append-only**. Be sure to log only what is really helpful during debugging as log files can grow and take a lot of disk space. There should be an **archiving policy** for log files. In production environment its  helpful to print 'INFO', 'WARN' and 'ERROR' level messages only to save **disk space**. Their should be a separate **build profile** for development and production environments.
- Don't log expected conditions inside big loops. It will inflate the log file size and hinder performance with excessive IO.

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

# Graylog
- http://docs.graylog.org/en/1.3/pages/queries.html#keyword-time-frame-selector

# syslog

# [Fluent](http://www.fluentd.org/)
Open source data collector for unified logging layer.
Fluentd is written in Ruby for flexibility, with performance sensitive parts written in C. It runs as a Ruby daemon.

`td-agent` - stable distribution of fluentd

## Resources
- [Fluent Docs](http://docs.fluentd.org/articles/quickstart)
- [fluentd plugins](http://www.fluentd.org/plugins)
- [fluentd GitHub](https://github.com/fluent/fluentd)
- [fluent - unified logging layer](http://www.fluentd.org/blog/unified-logging-layer)
- [fluent - architecture](http://www.fluentd.org/architecture)
- [fluent - guide](http://docs.fluentd.org/articles/quickstart)

## Performance
- a regular PC box can handle 18,000 messages/second with a single process


## fluentd operations
- collect data
- parse data
- transform data
- analyze data
- store (persist) data

