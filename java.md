# Specs
- [JLS 8](http://docs.oracle.com/javase/specs/jls/se8/html/)
- [JVM 8 Spec](https://docs.oracle.com/javase/specs/jvms/se8/html/index.html)
- [Java 8 SE Tools Reference from Oracle](https://docs.oracle.com/javase/8/docs/technotes/tools/unix/toc.html)
- [JLS & JVM specs](https://docs.oracle.com/javase/specs/)
- http://docs.oracle.com/javase/8/docs/
- http://docs.oracle.com/javase/7/docs/api/
- https://docs.oracle.com/javaee/7/api/
- http://download.java.net/jdk9/docs/api/
- http://www.oracle.com/technetwork/java/javase/tech/index.html
- https://docs.oracle.com/javase/tutorial/index.html
- https://docs.oracle.com/javase/tutorial/java/javaOO/index.html
- http://www.javapractices.com/home/HomeAction.do
- http://www.javadoc.io/
- http://stackoverflow.com/tags/java/info

# Java EE
- https://docs.oracle.com/javaee/7/api/
- https://docs.oracle.com/javaee/7/tutorial/
- http://www.oracle.com/technetwork/java/javaee/downloads/java-ee-sdk-7-downloads-1956236.html
- http://www.oracle.com/technetwork/java/javaee/documentation/index.html
- http://www.oracle.com/technetwork/java/javaee/downloads/index.html

# Reflection
- https://docs.oracle.com/javase/tutorial/reflect/index.html

## Apache Commons BeanUtils
- http://commons.apache.org/proper/commons-beanutils/
- http://commons.apache.org/proper/commons-beanutils/javadocs/v1.9.2/apidocs/index.html

# Blogs
- http://shipilev.net/

## Core utils
- https://github.com/google/guava
- https://commons.apache.org/proper/commons-lang/

# People
- http://stackoverflow.com/users/22656/jon-skeet

# Tutorials
- https://docs.oracle.com/javase/tutorial/index.html
- http://stackoverflow.com/questions/924208/how-to-convert-nanoseconds-to-seconds-using-the-timeunit-enum
- https://blogs.oracle.com/java-platform-group/entry/java_8_s_new_type
- http://www.infoq.com/articles/Java9-New-HTTP-2-and-REPL
- http://blog.takipi.com/java-9-the-ultimate-feature-list/
- http://openjdk.java.net/jeps/244

# Type Checking
## Checker Framework
- http://types.cs.washington.edu/checker-framework/
- https://google.github.io/styleguide/javaguide.html

# Formatting
- https://github.com/google/google-java-format

# Generics
- http://docs.oracle.com/javase/tutorial/java/generics/index.html
- Gilad Bracha http://www8.cs.umu.se/kurser/tdbb24/HT05/jem/download/generics-tutorial.pdf
- https://en.wikipedia.org/wiki/Generics_in_Java
- http://docs.oracle.com/javase/tutorial/java/generics/erasure.html
- http://www.angelikalanger.com/GenericsFAQ/FAQSections/Index.html
- https://docs.oracle.com/javase/8/docs/technotes/guides/language/non-reifiable-varargs.html
- http://www.angelikalanger.com/GenericsFAQ/JavaGenericsFAQ.html

# Metaprogramming
- https://docs.oracle.com/javase/tutorial/java/annotations/index.html

# Compatibility
- http://docs.oracle.com/javame/test-tools/sigtest/2_2/html/a-compat.html#Z4000c521043377

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
- With `-jar` option, `-cp` has no effect
- `-verbose:class` - log all loaded classes
- `-verbose:jni` - log use of native methods
- `java [-options] -jar jarfile [args...]` - run jar
- `java [-options] -cp jarfile com.mypackage.MyClass` - run specific file in a jar

# Java Mission Control

- http://jmeter.apache.org/
- http://www.eclipse.org/tptp/
- http://grinder.sourceforge.net/

# JVM agent libs
- http://docs.oracle.com/javase/8/docs/api/java/lang/instrument/package-summary.html
- http://docs.oracle.com/javase/8/docs/platform/jvmti/jvmti.html
- http://docs.oracle.com/javase/8/docs/technotes/guides/vm/server-class.html

## CPU time optimization
- http://www.oracle.com/technetwork/java/tuning-139912.html#section4.2.5
- http://svn.apache.org/repos/asf/jackrabbit/sandbox/jackrabbit-j3/src/test/java/org/apache/jackrabbit/j3/Profiler.java

- `java -agentlib:hprof=cpu=samples,interval=20,depth=3,file=myprogram.hprof` - sample CPU thread stack traces every 20 ms with a stack depth of 3
- `java -agentlib:hprof=cpu=samples,thread=y,monitor=y` - show thread and monitor information
- `java -agentlib:hprof=cpu=times,thread=y,monitor=y,lineno=y` - use BCI to trace each method call and measure exact time.
- `java -Xprof` - log profile info to STDOUT (useful during development only)
- `jstack -l` - attaches to a running JVM and prints thread stack traces

# ProGuard
- http://proguard.sourceforge.net/

# Java RMI Compiler (rmic)

# Collections
- https://docs.oracle.com/javase/tutorial/collections/TOC.html

# Equality
- http://javarevisited.blogspot.com/2011/02/how-to-write-equals-method-in-java.html
- https://www.artima.com/lejava/articles/equality.html
- https://prezi.com/ajuirs-xt3-s/effective-java-item8-equals-and-item9-hashcode/

: https://docs.oracle.com/javase/tutorial/index.html
- http://docs.oracle.com/javase/7/docs/api/
- https://docs.oracle.com/javaee/7/api/
- http://www.javapractices.com/home/HomeAction.do

# Userland

# OpenJDK
- http://openjdk.java.net/guide/
- http://openjdk.java.net/
- https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/

- how to clone
```bash
% hg clone http://hg.openjdk.java.net/jdk9/dev 9dev
% cd 9dev
% sh ./get_source.sh
```

- http://docs.oracle.com/javase/8/docs/technotes/guides/vm/gctuning/toc.html

# Java Mission Control

- http://jmeter.apache.org/
- http://www.eclipse.org/tptp/
- http://grinder.sourceforge.net/

# Java Language
## Generics
- http://www.angelikalanger.com/GenericsFAQ/JavaGenericsFAQ.html

# JVM agent libs
- http://docs.oracle.com/javase/8/docs/api/java/lang/instrument/package-summary.html
- http://docs.oracle.com/javase/8/docs/platform/jvmti/jvmti.html
- http://docs.oracle.com/javase/8/docs/technotes/guides/vm/server-class.html

## HPROF (Heap Profiler)
- https://docs.oracle.com/javase/8/docs/technotes/samples/hprof.html
- https://java.net/projects/hat/ - Web Heap Analysis Tool.
- `java -agentlib:hprof=help` - get help about possible usages of HPROF

# Getters and setters
- http://programmers.stackexchange.com/questions/21802/when-are-getters-and-setters-justified

# Automation
- [Python script to remove unused imports in Java](https://gist.github.com/rodrigosetti/4734557#file-remove-unused-imports-py)
