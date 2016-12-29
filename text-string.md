# Concepts
Strings are arrays of characters.

When a function has to process the entire sequence it should know when that sequence ends.
There are three options how sequence end can be made known:
- the last element in a sequence can be 'END-OF-SEQUENCE' indicator. Ex. C-style strings, EOF markers, linked lists.
- the sequence size can be passed as a function argument explicitly.
- the struct representing the sequence can have sequence length stored as its field.

In C strings are mutable '\0'-terminated arrays of characters.

There are also wide-character strings.

# Headers
```
<string.h>
<strings.h>
<wchar.h>
<ctype.h>
<wctype.h>
```

# Comparison of strings (cs)
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

# Comparison of strings (ci)

```c
// c

// byte-by-byte comparison
int strcasecmp(const char *s1, const char *s2)

int wcscasecmp(cons wchar_t *s1, const wchar_t *s2)

// comparison of first n bytes
int strncasecmp(const char *s1, const char *s2, size_t n)

int wcsncasecmp(cons wchar_t *s1, const wchar_t *s2, size_t n)
```

# Compare version strings

```c
// c
int strverscmp(cons char *s1, const char *s2)
```

# Concatenation

```c
// c
char *strcat(char *dest, const char *src);
char *strncat(char *dest, const char *src, size_t n);
wchar_t *wcscat(wchar_t *dest, const wchar_t *src);
wchar_t *wcsncat(wchar_t *dest, const wchar_t *src, size_t n);
```
# Copy a string
Useful in languages that have mutable strings.
- [SO examples](http://stackoverflow.com/questions/18938779/how-to-copy-a-string-using-a-pointer)


```c
// c
#include <string.h>

// clones a string, free memory with `free`
char *strdup(const char *s);
wchar_t *wcsdup(const wchar_t *s);

// same as above but uses `alloca` allocator
char *strdupa(const char *s);

// clones a substring (0, n - 1) of {s}. Free memory with `free`
char *strndup(const char *s, size_t n);

// same as above but uses `alloca` allocator
char *strndupa(const char *s, size_t n);

// copies {src} to {dest}
char *strcpy(char *dest, const char *src);
wchar_t *wcscpy(wchar_t *dest, const wchar_t *src);

// copy a string returning a pointer to its end
char *stpcpy(char *dest, const char *src);
wchar_t *wcpcpy(wchar_t *dest, const wchar_t *src);

// copies {n} bytes of {src} to {dest}
char *strncpy(char *dest, const char *src, size_t n);
wchar_t *wcsncpy(wchar_t *dest, const wchar_t *src, size_t n);

// copy memory area
void *memcpy(void *dest, const void *src, size_t n);
wchar_t *wmemcpy(wchar_t *dest, const wchar_t *src, size_t n);
// deprecated
void bcopy(const void *src, void *dest, size_t n);

// copy memory area but stop if {c} is found
void *memccpy(void *dest, const void *src, int c, size_t n);

// returns a pointer past the last written char
void *mempcpy(void *dest, const void *src, size_t n);
wchar_t *wmempcpy(wchar_t *dest, const wchar_t *src, size_t n);

// copy memory area (may overlap)
void *memmove(void *dest, const void *src, size_t n);
wchar_t *wmemmove(wchar_t *dest, const wchar_t *src, size_t n);

// string transformation (locale)
size_t strxfrm(char *dest, const char *src, size_t n);
```
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

```c
// c
// randomize string making an anagram
char *strfry(char *string);

// obfuscate a memory area (easily reversible)
void *memfrob(void *s, size_t n);
```
# Contains

# Search first occurence

```c
// c
char *strchr(const char *s, int c);
char *index(const char *s, int c); // deprecated analogue of `strchr`
wchar_t *wcschr(const wchar_t *wcs, wchar_t wc);

char *strstr(const char *haystack, const char *needle);
wchar_t *wcsstr(const wchar_t *haystack, const wchar_t *needle);

void *memmem(const void *haystack, size_t haystacklen,
             const void *needle, size_t needlelen);

// scans n bytes
void *memchr(const void *s, int c, size_t n);

// scans bytes until it finds c
void *rawmemchr(const void*s, int c);

// scans n wide chars
wchar_t  *wmemchr(const wchar_t *s, wchar_t c, size_t n);

// returns pointer to last null byte if search fails
char *strchrnul(const char *s, int c);

// search for a character set {accept} in {s}
char *strpbrk(const char *s, const char *accept);
wchar_t *wcspbrk(const wchar_t *wcs, const wchar_t *accept)

// returns length of the prefix in {s} which consists of {accept} chars
size_t strspn(const char *s, const char *accept);
size_t wcsspn(const wchar_t *wcs, const wchar_t *accept);

// returns length of the prefix in {s} which doesn't contain any of {reject} chars
size_t strcspn(const char *s, const char *reject);
size_t wcscspn(const wchar_t *wcs, const wchar_t *reject);
```

# Search last occurence
```c
// c
char *strrchr(const char *s, int c);
char *rindex(const char *s, int c); // deprecated analogue of `strrchr`
wchar_t *wcsrchr(const wchar_t *wcs, wchar_t wc);

// scans n bytes of memory
void *memchr(const void *s, int c, size_t n);
```
# Split string into tokens

```c
// c
char *strtok(char *str, const char *delim);
char *strtok_r(char *str, const char *delim, char **saveptr);
wchar_t *wcstok(wchar_t *wcs, const wchar_t *delim, wchar_t **ptr);

// Replacement for `strtok`. Can handle NULL strings.
char *strsep(char **stringp, const char *delim);
```
