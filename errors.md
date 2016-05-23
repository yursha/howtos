# Art of logging
- **Wrap with single quotes dynamic variables in error messages**.
- **Respect log levels** to be able to adjust log verbosity in different environments and filter log messages by level.
- Log files are **append-only**. Be sure to log only what is really helpful during debugging as log files can grow and take a lot of disk space. There should be an **archiving policy** for log files. In production environment its  helpful to print 'INFO', 'WARN' and 'ERROR' level messages only to save **disk space**. Their should be a separate **build profile** for development and production environments.

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

# Art of exception handling
- Identify the boundaries (and so when to handle).
- Define a general handling approach for each boundary (how to handle).
- Application specific exception subclasses should be specialised.
- Exceptions are objects too; think OO.
- Never catch an exception and rethrow verbatim.
- However, if required, do translate an exception into another only at the boundaries.
- Don’t forget that boundaries can be internal, just be explicit about where they are.

# Presenting exceptions on the UI
- No stack trace

Java servlets allow for mapping exception types to redirect urls
```
<error-page>
    <exception-type>bad.robot.example.SessionExpiredException</exception-type>
    <location>/login</location>
</error-page>
<error-page>
    <exception-type>bad.robot.example.Defect</exception-type>
    <location>/internalServerError</location>
</error-page>
```

# Presenting exceptions from RESTful API
- No stack trace

Jersey allows translating java exceptions into HTTP status codes
```
@Provider
public class NotFoundExceptionMapper implements ExceptionMapper<NotFoundException> {
    public Response toResponse(CustomerNotFoundException notFound) {
        return Response.status(404).entity(notFound.getMessage()).build();
    }
}

// Handler for unexpected exceptions
@Provider
public class RuntimeExceptionMapper implements ExceptionMapper<Throwable> {
    public Response toResponse(Throwable exception) {
        return Response.status(500).entity(exception).build();
    }
}
```

# Scala
- http://danielwestheide.com/blog/2012/12/26/the-neophytes-guide-to-scala-part-6-error-handling-with-try.html

# Errors
- http://programmers.stackexchange.com/questions/113800/whats-the-difference-between-syntax-and-semantics
- https://www.quora.com/What-are-the-differences-between-syntax-errors-and-semantic-errors
- http://stackoverflow.com/questions/17930267/what-is-the-difference-between-syntax-and-semantics-of-programming-languages
- http://www.programcreek.com/2011/10/syntactic-vs-semantic-vs-runtime-error/
- https://en.wikipedia.org/wiki/Colorless_green_ideas_sleep_furiously
- http://www.mosaichub.com/answers/question/what-is-the-is-the-difference-between-symantic-err
- https://wci.llnl.gov/codes/basis/manual/node53.html

## Syntactical Errors
### Lexical Errors

## Semantical Errors

## Logical Errors


# Exceptions
- http://www.javaworld.com/article/2076721/core-java/designing-with-exceptions.html

# Types of errors
- [Off-by-one error on wikipedia](https://en.wikipedia.org/wiki/Off-by-one_error)

# Special error variables
- C has `errno` global variable
- Perl has `$!` global variable - hold the message of the last error
