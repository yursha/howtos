- http://docs.oracle.com/javase/8/docs/
- http://www.oracle.com/technetwork/java/javase/tech/index.html

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

# `jconsole`
Can be used as a universal JMX client.

# `jvisualvm`
- http://visualvm.java.net/

# Java Mission Control

- http://jmeter.apache.org/
- http://www.eclipse.org/tptp/
- http://grinder.sourceforge.net/

# `jcmd`
