- **boolean, list of booleans** - not, and, or, xor, nand, nor
- **bits (list of booleans)** - shiftRight, shiftLeft, zeroShiftRight
- **number** - add, subtract, multiply, divide, remainder, abs, sqrt, floor, ceiling, round
- **list of numbers** - reduce: sum, mean, average
- **list** - count, foreach, map, reduce, nth (first, last), iterator
- **cursor** - next, hasNext, previous, hasPrevious
- **datetime** - isAfter, isBefore, (derivatives: isBetween)
- **list** - concat, contains(item), get(index), isEmpty()

# String (list of chars)
```
// conversions
concat(str1: String, str2: String) -> String
join(list: List<String>, with: char) -> String
split(str: String, pattern: Regex) -> List<String>
substring(startIndex: Int, endIndex: Int) -> String
trim(str: String, pattern: Regex) -> String
trimLeft(str: String, pattern: Regex) -> String
trimRight(str: String, pattern: Regex) -> String
toLowerCase
toUpperCase
toSnakeCase
toSentenceCase
toDashCase

// match
startsWith(prefix: String) -> bool
endsWith(suffix: String) -> bool
contains(sub: String) -> bool

// search
replace
replaceFirst
replaceLast
replaceAll
indexOf(String)
lastIndexOf(String)

// list
length
isBlank
isEmpty
getBytes
getChars
charAt(int)
```

compareCaseSensitive
compareCaseInsensitive

formatString

equals
hashCode

regex matches


# Tree
(context = node in a collection)
- parent
- children
- nextSibling
- previousSibling

# String
- concat
- startsWith
- endsWith
- contains
- substring
- replace
- trim
- trimRight
- trimLeft
- replaceFirst
- replaceLast
- replaceAll
- findFirst
- findLast
- findAll
