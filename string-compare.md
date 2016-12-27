# Case sensitively

```c
// c

// byte-by-byte comparison
int strcmp(const char *s1, const char *s2)

// compare using current locale
int strcmp(const char *s1, const char *s2)

int wcscmp(cons wchar_t *s1, const wchar_t *s2)

// comparison of first n bytes
int strncmp(const char *s1, const char *s2, size_t n)

int wcsncmp(cons wchar_t *s1, const wchar_t *s2, size_t n)

// same as `wcsncmp` but doesn't stop after finding NULL byte
int wmemcmp(cons wchar_t *s1, const wchar_t *s2, size_t n)


```

```bash
# bash
if [ "$a" == "$b" ]
```

# Case insensitively

```c
// c

// byte-by-byte comparison
int strcasecmp(const char *s1, const char *s2)

int wcscasecmp(cons wchar_t *s1, const wchar_t *s2)

// comparison of first n bytes
int strncasecmp(const char *s1, const char *s2, size_t n)

int wcsncasecmp(cons wchar_t *s1, const wchar_t *s2, size_t n)
```

```bash
# bash
if [ "${var1,,}" = "${var2,,}" ]
```

# Compare version strings

```c
// c
int strverscmp(cons char *s1, const char *s2)
```

