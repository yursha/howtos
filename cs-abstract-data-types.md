- **boolean, list of booleans** - not, and, or, xor, nand, nor
- **bits (list of booleans)** - shiftRight, shiftLeft, zeroShiftRight
- **number** - add, subtract, multiply, divide, remainder, abs, sqrt, floor, ceiling, round
- **list of numbers** - reduce: sum, mean, average
- **list** - count, foreach, map, reduce, nth (first, last), iterator
- **cursor** - next, hasNext, previous, hasPrevious
- **datetime** - isAfter, isBefore, (derivatives: isBetween)
- **list** - concat, contains(item), get(index), isEmpty()

# String (list of chars)
- https://docs.oracle.com/javase/8/docs/api/java/lang/String.html
- https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html
- https://docs.oracle.com/javase/8/docs/api/java/util/regex/Matcher.html
- https://docs.oracle.com/javase/8/docs/api/java/util/regex/MatchResult.html
- https://commons.apache.org/proper/commons-lang/javadocs/api-release/org/apache/commons/lang3/StringUtils.html
- https://commons.apache.org/proper/commons-lang/javadocs/api-release/org/apache/commons/lang3/StringEscapeUtils.html
```java
abstract class String {

  // Conversions

  String join(String[] strings, String joiner);
  String[] split(String str, String pattern);

  String concat(String[] strings) {
    return join(strings, "");
  }

  // Regex

  String replace(String str, String pattern, String replacement);
  boolean matches(String pattern);

  String trim(String str, String pattern) {
    return str.replace(str, "\A\s+(.*)\s+\z", "\1");
  }

  String trimLeft(String str, String pattern) {
    return str.replace(str, "\A\s+", "");
  }

  String trimRight(String str, String pattern) {
    return str.replace(str, "\s+\z", "");
  }

  toLowerCase
  toUpperCase
  toSnakeCase
  toSentenceCase
  toDashCase

  boolean startsWith(String prefix) {
    return str.matches("\A" + prefix);
  }

  boolean endsWith(String suffix) {
    return str.matches(suffix + "\z");
  }

  boolean contains(String sub) {
    return str.matches(sub);
  }

  // Search

  int firstIndexOf(String str);
  int lastIndexOf(String str);

  // List

  int length();
  char[] getChars();
  byte[] getBytes();
  String substring(int start, int end);
  char charAt(int index);

  boolean isBlank() {
    return isEmpty() || !matches("\S");
  }

  boolean isEmpty() {
    return length() == 0;
  }
}
```

compareCaseSensitive
compareCaseInsensitive

formatString

equals
hashCode


# Tree
(context = node in a collection)
- parent
- children
- nextSibling
- previousSibling
