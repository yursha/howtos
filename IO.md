# Java

#### Libraries
- https://commons.apache.org/proper/commons-io/

#### Snippets

##### Get an input stream for a class path resource

```java
String filePath = "path/to/my/resource.txt"; // relative to Java class path
InputStream input = MyClass.class.getClassLoader().getResourceAsStream(filePath);
```

##### Read a file into a string

```java
String content = new String(Files.readAllBytes(Paths.get("path/to/file"), StandardCharsets.UTF_8));
```

##### Convert byte stream into a string
``` java
import org.apache.commons.io.IOUtils;

InputStream stream = ...
IOUtils.toString(stream, StandardCharsets.UTF_8)
```
