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
