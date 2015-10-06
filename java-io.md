# Libraries
- https://commons.apache.org/proper/commons-io
- https://github.com/apache/commons-io

# Tips
- Never use `FileWriter` and `FileReader` classes as they assume default char encoding and don't allow to specify one. Instead use `FileOutputStream` wrapped into `InputStreamReader` and `FileOutputStream` wrapped into `OutputStreamWriter`.
- Buffer `InputStreamReader` with `BufferedReader`
- Buffer `InputStreamWriter` with `BufferedWriter`
- Buffer `FileInputStream` with `BufferedInputStream`
- Buffer `FileOutputStream` with `BufferedOutputStream`

#### Snippets

- Get input byte stream from file path string
```java
String filePath = "path/to/my/file.txt"; // relative to cwd
FileInputStream fileInputStream = new FileInputStream(filePath);
```

- Get buffered output character stream for a file path
```java
Files.newBufferedWriter(Path path, Charset cs, OpenOption... options)
```

- Get byte stream from resource path string
```java
String resourcePath = "path/to/my/resource.txt"; // relative to classpath
ClassLoader.getSystemResourceAsStream(resourcePath);
```

- Get char stream from byte stream
```java
InputStream stream = null; // ...some binary stream
InputStreamReader reader = new InputStreamReader(stream, StandardCharsets.UTF_8);
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

