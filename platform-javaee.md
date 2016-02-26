- http://docs.oracle.com/javase/8/docs/
- http://www.oracle.com/technetwork/java/javase/tech/index.html
- https://google.github.io/styleguide/javaguide.html
- https://github.com/google/google-java-format
- http://stackoverflow.com/questions/924208/how-to-convert-nanoseconds-to-seconds-using-the-timeunit-enum
- http://www.javadoc.io/
- https://blogs.oracle.com/java-platform-group/entry/java_8_s_new_type
- http://www.infoq.com/articles/Java9-New-HTTP-2-and-REPL
- http://blog.takipi.com/java-9-the-ultimate-feature-list/
- http://openjdk.java.net/jeps/244

The JVM uses internally escape analysis to check if an object is used only with a thread or method. If the JVM identify this it may decide to create the object on the stack, increasing performance of the Java program.

- https://kenai.com/projects/btrace/pages/UserGuide

# Tools
- `jps -mlv` - list running Java processes
- `jstat` - monitors jvm stats
- `jstatd`
- `rmiregistry`
- `jsadebugd`
- `c++filt`
- `pstack`

# java
- `-verbose:class` - log all loaded classes
- `-verbose:jni` - log use of native methods
- `java [-options] -jar jarfile [args...]` - run jar
- `java [-options] -cp jarfile com.mypackage.MyClass` - run specific file in a jar

# Java Mission Control

- http://jmeter.apache.org/
- http://www.eclipse.org/tptp/
- http://grinder.sourceforge.net/

# Jar
- http://docs.oracle.com/javase/8/docs/technotes/guides/jar/index.html
- http://docs.oracle.com/javase/tutorial/deployment/jar/index.html

# Java Language
## Generics
- http://www.angelikalanger.com/GenericsFAQ/JavaGenericsFAQ.html

# JVM agent libs
- http://docs.oracle.com/javase/8/docs/api/java/lang/instrument/package-summary.html
- http://docs.oracle.com/javase/8/docs/platform/jvmti/jvmti.html
- http://docs.oracle.com/javase/8/docs/technotes/guides/vm/server-class.html

# Debugging
## JDWP (Java Debug Wire Protocol)
- `java -agentlib:jdwp=transport=dt_socket,server=y,address=8000` - debug agent listens on port 8000, suspending JVM before the main class loads.

## HPROF (Heap Profiler)
- https://docs.oracle.com/javase/8/docs/technotes/samples/hprof.html
- https://java.net/projects/hat/ - Web Heap Analysis Tool.
- `java -agentlib:hprof=help` - get help about possible usages of HPROF

## Memory allocation
For server deployments, -Xms and -Xmx are often set to the same value.
- http://docs.oracle.com/javase/8/docs/technotes/guides/vm/gctuning/index.htm

- `java -Xms1g` - set initial heap size to 1GB
- `java -Xmx1g` - set max heap size to 1GB
- `java -Xloggc:gc.log` - log gc events into file
- `java -Xss1m` - set thread stack size
- `java -XX:+PerfDataSaveToFile`

- `java -agentlib:hprof=heap=dump,file=myprogram.hprof` - generate heap dump
- `java -agentlib:hprof=heap=sites,file=myprogram.hprof` - get heap usage info based on the allocation sites
- `jmap` - attaches to a running JVM and generates a heap dump
- `jhat` - analyze binary heap dumps

- `jcmd` - attaches to a running JVM
- `jinfo` - attaches to a running JVM
- `jdb`
- `javah`

## CPU
- http://www.oracle.com/technetwork/java/tuning-139912.html#section4.2.5
- http://svn.apache.org/repos/asf/jackrabbit/sandbox/jackrabbit-j3/src/test/java/org/apache/jackrabbit/j3/Profiler.java

- `java -agentlib:hprof=cpu=samples,interval=20,depth=3,file=myprogram.hprof` - sample CPU thread stack traces every 20 ms with a stack depth of 3
- `java -agentlib:hprof=cpu=samples,thread=y,monitor=y` - show thread and monitor information
- `java -agentlib:hprof=cpu=times,thread=y,monitor=y,lineno=y` - use BCI to trace each method call and measure exact time.
- `java -Xprof` - log profile info to STDOUT (useful during development only)
- `jstack -l` - attaches to a running JVM and prints thread stack traces

# JAXB
- https://docs.oracle.com/javase/tutorial/jaxb/
- https://jaxb.java.net/
