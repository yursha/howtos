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
