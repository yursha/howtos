# Classify characters

```c
// c
// case
int islower(int c);
int iswlower(wint_t wc)
int islower_l(int c, locale_t locale);
int iswlower_l(wint_t wc, locale_t locale)
int isupper(int c);
int iswupper(wint_t wc)
int isupper_l(int c, locale_t locale);
int iswupper_l(wint_t wc, locale_t locale)

// alpha-numeric
int isalpha(int c);
int iswalpha(wint_t wc)
int isalpha_l(int c, locale_t locale);
int iswalpha_l(wint_t wc, locale_t locale)
int isdigit(int c);
int iswdigit(wint_t wc)
int isdigit_l(int c, locale_t locale);
int iswdigit_l(wint_t wc, locale_t locale)
int isalnum(int c);
int iswalnum(wint_t wc)
int isalnum_l(int c, locale_t locale);
int iswalnum_l(wint_t wc, locale_t locale)
int isxdigit(int c);
int iswxdigit(wint_t wc)
int isxdigit_l(int c, locale_t locale);
int iswxdigit_l(wint_t wc, locale_t locale)

// punctuation and special chars
int isblank(int c);
int iswblank(wint_t wc)
int isblank_l(int c, locale_t locale);
int iswblank_l(wint_t wc, locale_t locale)
int isprint(int c);
int iswprint(wint_t wc)
int isprint_l(int c, locale_t locale);
int iswprint_l(wint_t wc, locale_t locale)
int iscntrl(int c);
int iswcntrl(wint_t wc)
int iscntrl_l(int c, locale_t locale);
int iswcntrl_l(wint_t wc, locale_t locale)
int isgraph(int c);
int iswgraph(wint_t wc)
int isgraph_l(int c, locale_t locale);
int iswgraph_l(wint_t wc, locale_t locale)
int ispunct(int c);
int iswpunct(wint_t wc)
int ispunct_l(int c, locale_t locale);
int iswpunct_l(wint_t wc, locale_t locale)
int isspace(int c);
int iswspace(wint_t wc)
int isspace_l(int c, locale_t locale);
int iswspace_l(wint_t wc, locale_t locale)

// belongs to a character set
int isascii(int c);
int isascii_l(int c, locale_t locale);

// generic classification
int iswctype(wint_t wc, wctype_t desc)

// get wc type descriptor
wctype_t wctype(cont char *name)
```

# Misc

```c
// c
// clears higher-order bits and only first 7 bits are left intact.
int toascii(int c)
```
