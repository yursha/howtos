# Java
- Never use `FileWriter` and `FileReader` classes as they assume default char encoding and don't allow to specify one. Instead use `FileOutputStream` wrapped into `InputStreamReader` and `FileOutputStream` wrapped into `OutputStreamWriter`.

#### Libraries
- https://commons.apache.org/proper/commons-io
- https://github.com/apache/commons-io

#### Snippets

##### Open a byte stream for a class path resource

```java
String filePath = "path/to/my/file.txt"; // relative to cwd
FileInputStream fileInputStream = new FileInputStream(filePath);
```

```java
String resourcePath = "path/to/my/resource.txt"; // relative to classpath
ClassLoader.getSystemResourceAsStream(resourcePath);
```

```java
InputStream stream = ...some binary stream
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


