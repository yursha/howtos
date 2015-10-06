- **boolean, list of booleans** - not, and, or, xor, nand, nor
- **bits (list of booleans)** - shiftRight, shiftLeft, zeroShiftRight
- **number** - add, subtract, multiply, divide, remainder, abs, sqrt, floor, ceiling, round
- **list of numbers** - reduce: sum, mean, average
- **list** - count, foreach, map, reduce, nth (first, last), iterator
- **cursor** - next, hasNext, previous, hasPrevious
- **datetime** - isAfter, isBefore, (derivatives: isBetween)
- **list** - concat, contains(item), get(index), isEmpty()

# String (list of chars)
```java
abstract class String {

  // Conversions
  
  String join(String[] strings, String joiner);

  String concat(String[] strings) {
    return join(strings, "");
  }
  
  split(str: String, pattern: Regex) -> List<String>
  substring(startIndex: Int, endIndex: Int) -> String

  toLowerCase
  toUpperCase
  toSnakeCase
  toSentenceCase
  toDashCase

  // match
  startsWith(prefix: String) -> bool
  endsWith(suffix: String) -> bool
  contains(sub: String) -> bool
  
  // search
  String replaceFirst(String str, String pattern, String replacement);
  String replaceLast(String str, String pattern, String replacement);
  String replaceAll(String str, String pattern, String replacement);
  
  String trim(String str, String pattern) {
    return str.replace(str, "^\s+(.*)\s+$", "$1");
  }
  
  String trimLeft(String str, String pattern) {
    return str.replace(str, "^\s+", "");
  }
  
  String trimRight(String str, String pattern) {
    return str.replace(str, "\s+$", "");
  }

  indexOf(String)
  lastIndexOf(String)
  
  // list
  length
  isBlank
  isEmpty
  getBytes
  getChars
  charAt(int)
}
```

compareCaseSensitive
compareCaseInsensitive

formatString

equals
hashCode

regex matches


# Tree
(context = node in a collection)
- parent
- children
- nextSibling
- previousSibling

# String
- concat
- startsWith
- endsWith
- contains
- substring
- replace
- trim
- trimRight
- trimLeft
- replaceFirst
- replaceLast
- replaceAll
- findFirst
- findLast
- findAll
