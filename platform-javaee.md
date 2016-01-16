- http://docs.oracle.com/javase/8/docs/
- http://www.oracle.com/technetwork/java/javase/tech/index.html
- https://google.github.io/styleguide/javaguide.html
- https://github.com/google/google-java-format

# Concepts
- The JavaBeans model
- RMI
    + JRMP (Java Remote Method Invocation Protocol) transport.
    + Internet Inter-object Request Broker (ORB) Protocol (IIOP) transport.
- LDAP
- SLP (Service Location Protocol)
- Jini Network Technology
- JNDI
- JSSE (Java Secure Socket Extension)
- JAAS (Java Authentication and Authorization Service)
- SASL (Simple Authentication and Security Layer)
- SNMP (Simple Network Management Protocol)
- JMXMP (JMX Messaging Protocol)

# JVM Concepts
- gc
- heap
- stack
- memory leak
- thread
- jit compiler

# jvm
- `java [-options] -jar jarfile [args...]` - run jar
- `java [-options] -cp jarfile com.mypackage.MyClass` - run specific file in a jar
- `java -verbose:gc`
- `java -Xms1024m`
- `java -Xmx1800m`

The JVM uses internally escape analysis to check if an object is used only with a thread or method. If the JVM identify this it may decide to create the object on the stack, increasing performance of the Java program.

# Java Management Extensions
- http://docs.oracle.com/javase/8/docs/technotes/guides/management/
- http://docs.oracle.com/javase/8/docs/technotes/guides/jmx/index.html
- http://docs.oracle.com/javase/8/docs/technotes/guides/jmx/JMX_1_4_specification.pdf
- http://www.oracle.com/technetwork/java/javase/tech/javamanagement-140525.html

How to start jvm available for remote JMX
```java
java -Dcom.sun.management.jmxremote.port=9999 \
     -Dcom.sun.management.jmxremote.authenticate=false \
     -Dcom.sun.management.jmxremote.ssl=false \
     com.example.Main
```

- https://kenai.com/projects/btrace/pages/UserGuide

# manual
- http://stackoverflow.com/questions/924208/how-to-convert-nanoseconds-to-seconds-using-the-timeunit-enum

# `jconsole`
Can be used as a universal JMX client.

# `jvisualvm`
- http://visualvm.java.net/
- http://visualvm.java.net/docindex.html
- http://cs.smith.edu/dftwiki/index.php/Tutorial:_Profiling_Java_Programs
- https://docs.oracle.com/javase/8/docs/technotes/guides/visualvm/profiler.html
- http://blog.rejeev.com/2009/04/analyzing-memory-leak-in-java.html
- http://stackoverflow.com/questions/12017529/how-to-view-memory-allocation-stacktrace-in-java-visualvm
- http://stackoverflow.com/questions/21043681/how-to-determine-where-an-object-was-instantiated-in-visualvm-heap-dump
- http://stackoverflow.com/questions/9154785/how-to-find-memory-leaks-using-visualvm

- `jstack`

# Java Mission Control

- http://jmeter.apache.org/
- http://www.eclipse.org/tptp/
- http://grinder.sourceforge.net/

# `jcmd`

# Java Language
## Generics
- http://www.angelikalanger.com/GenericsFAQ/JavaGenericsFAQ.html

