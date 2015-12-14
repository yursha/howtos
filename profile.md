- http://stackoverflow.com/questions/22250303/java-application-profiling

# Measurements
- high memory usage
- long cpu time
- long response time
- load tests

# Tools
- https://visualvm.java.net/
- http://jmeter.apache.org/
- http://www.eclipse.org/tptp/
- http://grinder.sourceforge.net/

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
long startTime = System.currentTimeMillis();
long total = 0;
// lengthy operation
long stopTime = System.currentTimeMillis();
long elapsedTime = stopTime - startTime;
System.out.println(elapsedTime);
```
