# Concepts
Character is a logical concept in human languages. It is characterized by:
- shape (glyph) an variations of it. The technology behind storing and rendering glyphs can be either a raster or a vector font.
- binary encoding (char encoding) in a particular character set.

There are multiple charsets (ASCII, LATIN1, UCS, etc.).

UCS can represent characters of all human languages so its a superset of all other charsets. It has different encodings (UTF-8, UTF-16, UTF-32).

# ICU
- [International Components for Unicode (ICU)](http://site.icu-project.org/)
- [ICU - wikipedia](https://en.wikipedia.org/wiki/International_Components_for_Unicode)

# Fedora
- `libicu` package
- `libicu-devel` package

# Character case conversion

Case is a property of a character. There should be a lookup table somewhere to map lowercase chars to uppercase and vice versa.

```c
int toupper(int c)
int tolower(int c)
```

Changing case of strings takes linear time since each character should be visited.

# Character classification

Character classification is usually done by consulting statically allocated lookup tables (read from source code or data files).

```c
// specific classification
int islower(int c);
int isupper(int c);
int isalpha(int c);
int isdigit(int c);
int isalnum(int c);
int isxdigit(int c);
int isblank(int c);
int isprint(int c);
int iscntrl(int c);
int isgraph(int c);
int ispunct(int c);
int isspace(int c);
int isascii(int c);

// generic classification
int iswctype(wint_t wc, wctype_t desc)

// get wide character type descriptor
wctype_t wctype(cont char *name)
```
