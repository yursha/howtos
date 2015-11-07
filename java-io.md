# Libraries
- https://docs.oracle.com/javase/tutorial/essential/io/index.html
- https://commons.apache.org/proper/commons-io
- https://github.com/apache/commons-io

# Don't use
- `FileWriter` and `FileReader` - non-determenistic default character encoding.

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
