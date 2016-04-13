# Java
```
List<Object> list = new ArrayList<>();
list.add(object1);
list.add(object2);
list.set(0, object3);
```

# Create list and access its first element
*python (mutable list)*
```python
animals = ['bear', 'tiger', 'penguin', 'zebra']
bear = animals[0]
```

*java (mutable list)*
```java
import java.util.List;
import java.util.ArrayList;

List<String> animals = new ArrayList<>();
animals.add("bear");
animals.add("tiger");
animals.add("penguin");
animals.add("zebra");
String bear = animals.get(0);
```

*java (immutable list)*
```java
import java.util.List;
import java.util.Arrays;

List<String> animals = Arrays.asList("bear", "tiger", "penguin", "zebra");
String bear = animals.get(0);
```
