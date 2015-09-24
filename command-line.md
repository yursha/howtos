# Argument processing

```java
public static void main(String... args) {
    String filename = null;

    for (int i = 0; i < args.length; i++) {
        if (...) { 
            // ...
        } 
        else {
            filename = args[i];
            if (i != args.length - 1) {
                usage();
            }
        }
    }

    if (filename == null) {
        usage();
    }
}
```
