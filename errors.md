- For simplicity don't handle any error until you find it stops a successful program execution.
- When an error happens always log its stack trace to be able to track error to its cause.
-

# What one can expect from a logging library?
- pattern substitution, e.g. `log.debug("Found {} records matching filter: '{}'", records, filter);`
