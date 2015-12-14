# Concepts
- gc
- heap
- stack
- memory leak
- thread
- jit compiler


- `java [-options] -jar jarfile [args...]` - run jar
- `java [-options] -cp jarfile com.mypackage.MyClass` - run specific file in a jar
- `java -verbose:gc`
- `java -Xms1024m`
- `java -Xmx1800m`

The JVM uses internally escape analysis to check if an object is used only with a thread or method. If the JVM identify this it may decide to create the object on the stack, increasing performance of the Java program.

