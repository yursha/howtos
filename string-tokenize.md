# Split string into tokens

```c
// c
char *strtok(char *str, const char *delim);
char *strtok_r(char *str, const char *delim, char **saveptr);
wchar_t *wcstok(wchar_t *wcs, const wchar_t *delim, wchar_t **ptr);

// Replacement for `strtok`. Can handle NULL strings.
char *strsep(char **stringp, const char *delim);
```
