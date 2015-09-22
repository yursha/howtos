# Java

##### Get an input stream for a class path resource

```java
String filePath = "path/to/my/resource.txt"; // relative to Java class path
InputStream input = MyClass.class.getClassLoader().getResourceAsStream(filePath);
```
