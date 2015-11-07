# Libraries
- https://docs.oracle.com/javase/tutorial/essential/io/index.html
- https://commons.apache.org/proper/commons-io
- https://github.com/apache/commons-io
- http://openjdk.java.net/projects/nio/

# Don't use
## `java.io`
- `FileWriter` and `FileReader` - non-determenistic default character encoding.
- `File`, `RandomAccessFile` - many drawbacks (https://docs.oracle.com/javase/tutorial/essential/io/legacy.html)

## From unbuffered to buffered stream
- `Reader` => `BufferedReader`
- `Writer` => `BufferedWriter`
- `InputStream` => `BufferedInputStream`
- `OutputStream` => `BufferedOutputStream`

## From binary to decoded character stream (`StandardCharsets`)
- `InputStream` => `InputStreamReader`
- `OutputStream` => `OutputStreamWriter`

## From absolute file path to binary stream
- `String` => `FileInputStream`
- `String` => `FileOutputStream`

## From relative `classpath` path to binary stream
- `String` => `ClassLoader.getSystemResourceAsStream`

#### Snippets

- Get buffered output character stream for a file path
```java
Files.newBufferedWriter(Path path, Charset cs, OpenOption... options)
```

##### Read a file into a string

```java
String content = new String(Files.readAllBytes(Paths.get("path/to/file"), StandardCharsets.UTF_8));
```

##### Read a byte stream into a string
```java
import org.apache.commons.io.IOUtils;

InputStream stream = ...
IOUtils.toString(stream, StandardCharsets.UTF_8)
```

# Watch Service API
Most file system implementations have native support for file change notification. The Watch Service API takes advantage of this support where available. However, when a file system does not support this mechanism, the Watch Service will poll the file system, waiting for events.
