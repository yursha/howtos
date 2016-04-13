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

# Replace a substring by index
*java*
```java
String a = "The weather is good";
String b = a.substring(0, 4) + "day" + a.substring(11); // "The day is good"
```

# Replace a substring by value
- http://stackoverflow.com/questions/16702357/how-to-replace-a-substring-of-a-string

# Interpolate a string
*python*
```python
template = "My name is %s. I was born in %d."
my_name = "Alex"
year = 1986
result = template % (my_name, year)
```

# Concatenate string
*python*
```python
a = "Hello "
b = " world!"
c = a + b
```

# String repetition
*python*
```python
divider = "-" * 10
```

# Formatted string
*python*
```python
multiline_string = """
Hey
This is
a multiline
string!
"""
```

