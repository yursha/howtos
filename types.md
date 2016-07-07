# Concepts
- data types define how bit sequences are interpreted
- Weakly typed languages (javascript, perl, php)
- Strongly types languages (java, swift)

# covariant types
- [Covariant return types in Java](https://blogs.oracle.com/sundararajan/entry/covariant_return_types_in_java)
- [Covariant return types C2](http://c2.com/cgi/wiki?CovariantReturnTypes)

# Casting
*python*
```python
string_age = "18"
int_age = int(string_age)
```

# Type Checking
```perl
use Scalar::Util qw(looks_like_number);

if (looks_like_number($maybe_number)) {
    # some code
}
```
