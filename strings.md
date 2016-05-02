# Reference
- Java
    + https://docs.oracle.com/javase/8/docs/api/java/lang/String.html
    + https://docs.oracle.com/javase/8/docs/api/java/util/StringJoiner.html
    + http://google.github.io/guava/releases/19.0/api/docs/com/google/common/base/Strings.html
    + https://commons.apache.org/proper/commons-lang/apidocs/org/apache/commons/lang3/StringUtils.html

# Implementation
*java*
Strings are immutable

# Escape sequences
*java*
`\t`, `\n`, `\\`, `\r`

*python*
- `\\` - Backslash
- `\'` - Single-quote (')
- `\"` - Double-quote (")
- `\a` - ASCII bell (BEL)
- `\b` - ASCII backspace (BS)
- `\f` - ASCII formfeed (FF)
- `\n` - ASCII linefeed (LF)
- `\N{name}` - Character named name in the Unicode database (Unicode only)
- `\r` - Carriage Return (CR)
- `\t` - Horizontal Tab (TAB)
- `\uxxxx` - Character with 16-bit hex value xxxx (Unicode only)
- `\Uxxxxxxxx` - Character with 32-bit hex value xxxxxxxx (Unicode only)
- `\v` - ASCII vertical tab (VT)
- `\ooo` - Character with octal value ooo
- `\xhh` - Character with hex value hh

# Length
*java*
```java
"my long string".length();
```

*perl*
```perl
length "my long string";
```

*python*
```python
len("my long string")
```

# Is empty
*java*
```java
str.isEmpty()
```

*perl*
```perl
$str eq ''
```

# To uppercase
*java*
```java
str.toUpperCase()
```

*perl*
```perl
uc $str
```

# To lowercase
*java*
```java
str.toLowerCase()
```

*perl*
```perl
lc $str
```

# Replace by index
*java*
```java
String a = "The weather is good";
String b = a.substring(0, 4) + "day" + a.substring(11); // "The day is good"
```

# Replace by value
- http://stackoverflow.com/questions/16702357/how-to-replace-a-substring-of-a-string

# Interpolation
*perl* (only strings in double quotes `"` are interpolated, or those with `qq` operator).
```perl
my $name = "Alex";
my $year = 1986;
result = "My name is $name. I was born in $year";
```

*python*
```python
template = "My name is %s. I was born in %d."
name = "Alex"
year = 1986
result = template % (name, year)
```

# Concatenation
*perl*
```perl
my $a = "Hello ";
my $b = " world!";
c = a . b;
```

*python*
```python
a = "Hello "
b = " world!"
c = a + b
```

# Repeat
*java*
```java
String divider = new String(new char[10]).replace('\0', '-');
```

*java - guava*
```java
String divider = Strings.repeat("-", 10);
```

*java - apache commons lang*
```java
String divider = StringUtils.repeat("-", 10);
```

*perl*
```perl
my $divider = "-" x 10
```

*python*
```python
divider = "-" * 10
```

# Here documents
*perl*
```perl
my $multiline_string = <<"END_MESSAGE";
Hey
This is
a multiline
string!
END_MESSAGE
```
You can use `qq` operator for here documents as well.

*python*
```python
multiline_string = """
Hey
This is
a multiline
string!
"""
```

# Split
*python*
```python
def break_words(stuff):
    """This function will break up words for us."""
    words = stuff.split(' ')
    return words
```

# Join
- http://www.leveluplunch.com/java/tutorials/031-join-strings-java8/
