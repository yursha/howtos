- http://stackoverflow.com/questions/22250303/java-application-profiling
- valgrind.org

# Measurements
- (high/low) memory usage
- (long/short) cpu time
- (long/short) response time
- load testing

# Snippets

#### Measure memory
```java
Runtime runtime = Runtime.getRuntime();
// Run the garbage collector
runtime.gc();
// Calculate the used memory
long memory = runtime.totalMemory() - runtime.freeMemory();
System.out.println("Used memory is megabytes: " + memory / 1024 / 1024);
```

#### Measure db/fs/network accesses

#### Measure power consumption

- http://docs.freebsd.org/44doc/psd/18.gprof/paper.pdf
- http://stackoverflow.com/questions/1777556/alternatives-to-gprof/1779343#1779343
- http://stackoverflow.com/questions/6846049/profiling-a-running-java-application-in-command-line
- http://stackoverflow.com/questions/7467245/cpu-execution-time-in-java

# Random-Pause Technique
- Take 10-20 execution stack snapshots
- Function overall time usage is the fraction of samples containing it.
- Function CPU usage is the fraction of those samples that don't terminate in I/O or a system call.
- Function "self time" is the fraction of samples in which it itself is the terminus.

# Measure elapsed time
- get current timestamp
- do some computation
- get current timestamp and compare
