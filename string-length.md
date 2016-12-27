# Get string length

```c
// c

// returns character count (bytes)
size_t strlen(const char *s)

// returns wide character count (not bytes)
size_t wcslen(const wchar_t *s)

// get the greater of string length or maxlen
size_t strnlen(const char *s, size_t maxlen)
size_t wcsnlen(const wchar_t *s, size_t maxlen)

```

```bash
# bash

# works only on variables, not literal strings
var="my long string"
${#var}
```

```bash
# bash - awk
awk 'BEGIN {print length("my long string")}'
```

```bash
# bash - `expr` is part of coreutils
expr length "my long string"

# this one below is a hack.
# When we don't include capturing parentheses
# this regex match returns number of characters matched
# which happens to be a string's length.
expr "my long string" : ".*"
```

```bash
# bash - `wc` is part of coreutils
echo "my long string" | wc -c # bytes
echo "my long string" | wc -m # chars
```
