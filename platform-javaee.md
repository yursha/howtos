- http://docs.oracle.com/javase/8/docs/
- http://www.oracle.com/technetwork/java/javase/tech/index.html
- https://google.github.io/styleguide/javaguide.html
- https://github.com/google/google-java-format
- http://stackoverflow.com/questions/924208/how-to-convert-nanoseconds-to-seconds-using-the-timeunit-enum

# JVM Concepts
- gc
- heap
- stack
- memory leak
- thread
- jit compiler


The JVM uses internally escape analysis to check if an object is used only with a thread or method. If the JVM identify this it may decide to create the object on the stack, increasing performance of the Java program.


- https://kenai.com/projects/btrace/pages/UserGuide

# Tools
- `jstack -l` - print thread stack traces for a running Java process
- `jcmd`
- `jps -mlv` - list running Java processes
- `jstat`
- `jstatd`
- `rmiregistry`
- `jsadebugd`
- `c++filt`
- `pstack`

- `java [-options] -jar jarfile [args...]` - run jar
- `java [-options] -cp jarfile com.mypackage.MyClass` - run specific file in a jar
- `java -verbose:gc`
- `java -Xms1024m`
- `java -Xmx1800m`

# Java Mission Control

- http://jmeter.apache.org/
- http://www.eclipse.org/tptp/
- http://grinder.sourceforge.net/

# Java Language
## Generics
- http://www.angelikalanger.com/GenericsFAQ/JavaGenericsFAQ.html

# Profiling techniques

Collect 10 or 20 stack samples with jstack. Then if Foo is a method:
- Its overall time usage is the fraction of samples containing it.
- Its CPU usage is the fraction of those samples that don't terminate in I/O or a system call.
- Its "self time" is the fraction of samples in which it itself is the terminus.
