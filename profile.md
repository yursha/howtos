- http://stackoverflow.com/questions/22250303/java-application-profiling

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

#### Measure time
```java
long startTime = System.nanoTime();
long total = 0;
// lengthy operation
long stopTime = System.nanoTime();
long elapsedTime = stopTime - startTime;
System.out.println(elapsedTime);
```

#### Measure db/fs/network accesses

#### Measure power consumption

- http://docs.freebsd.org/44doc/psd/18.gprof/paper.pdf
- http://stackoverflow.com/questions/1777556/alternatives-to-gprof/1779343#1779343
- http://stackoverflow.com/questions/6846049/profiling-a-running-java-application-in-command-line
- http://stackoverflow.com/questions/7467245/cpu-execution-time-in-java
