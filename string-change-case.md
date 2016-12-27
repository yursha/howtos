# To upper case

Case of a character is a character property. There should be a lookup table somewhere to map lowercase chars to uppercase and vice versa.

Changing case of strings takes linear time since each character should be visited.

## C
The below stdlib functions perform upper-case conversion on individual characters. There is no a standard routing for transforming entire strings.

```c
int toupper(int c)
int toupper_l(int c, locale_t locale)
wint_t towupper(wint_t wc)
wint_t towupper_l(wint_t wc, locale_t locale)
```

# To lower case

## C
```c
int tolower(int c)
int tolower_l(int c, locale_t locale)
wint_t towlower(wint_t wc)
wint_t towlower_l(wint_t wc, locale_t locale)
```
