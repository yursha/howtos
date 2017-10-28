# Program organization

A program consists of packages. A package publishes names by starting them with a capital letter. You have to import a package to use its public symbols in another package.
A package name is the last element of the import path. E.g, the `"math/rand"` package comprises files that begin with the statement `package rand`. A program starts in package **main**.

```go
package main

import (
    "fmt"
    "math"
    "math/rand"
    "time"
)

func main() {
    fmt.Println("The time is", time.Now())                    // `time` exports `Now()` function
    fmt.Println("Pi is", math.Pi)                             // `math` exports `Pi` constant
    fmt.Println("My favorite number is", rand.Intn(10))       // `fmt.Println` automatically adds space between arguments
    fmt.Printf("Now you have %g problems.\n", math.Sqrt(7))
}
```

# Functions

```go
package main

import "fmt"

func add(x, y int) int {
    return x + y
}

// functions can return multiple values (tuples)
func swap(x, y string) (string, string) {
    return y, x
}

// functions can have named return values
func split(sum int) (x, y int) {
    x = sum * 4 / 9
    y = sum - x
    return
}

func main() {
    fmt.Println(add(42, 13))
    fmt.Println(swap("world", "hello"))
    fmt.Println(split(17))
}
```

# Variables and constants

```go
package main

import (
    "fmt"
    "math/cmplx"
)

// Numeric constants are high-precision values. Can store a number of arbitrary size.
const Pi = 3.14

// variables without initializers
var ok bool // same as `var ok = false` and `var ok bool = false`.
var sunny, foggy bool

// variables with initializers
var x int = 1
var y, z int = 2, 3

// variable and constant declarations may be "factored" into `var` and `const` blocks respectively.
var (
    ToBe   bool       = false
    MaxInt uint64     = 1<<64 - 1
    c      complex128 = cmplx.Sqrt(-5 + 12i)
)

func main() {
    var f, n = false, "no!" // if initializers are present type can be deduced
    var i int // implicitly initialized to type's default value
    j := 3; // short notation for `var j = 3`, only allowed in function scope. Doesn't work for constants.
    const k = 4
    fmt.Println(f, n, i, j, k)
    fmt.Printf("Type: %T Value: %v\n", ToBe, ToBe)

    var s string
    fmt.Printf("%q\n", s)
}
```

# Types
Go's basic types are

```
bool (true - false)

string

int  int8  int16  int32  int64
uint uint8 uint16 uint32 uint64 uintptr

byte // alias for uint8

rune // alias for int32
     // represents a Unicode code point

float32 float64

complex64 complex128
```

The `int`, `uint`, and `uintptr` types are usually 32 bits wide on 32-bit systems and 64 bits wide on 64-bit systems.
When you need an integer value you should use `int` unless you have a specific reason to use a sized or unsigned integer type.

## Types default values
- `0` for numeric types
- `false` for the boolean type
- `""` (the empty string) for strings

## Type conversions

All type conversions are explicit.

```
package main

import "fmt"

func main() {
    var i = 42 // type is deduced depending on the precision of the initializer constant
    var f = float64(i)
    var u = uint(f)
    fmt.Println(i, f, u)
}
```

# Loops

Regular `for` loop

```go
for i := 0; i < 10; i++ {
    // do something
}
```

Regular `while` loop

```go
i := 1
for i < 10 {
    // do something
    i += i
}
```

Infinite loop

```go
for {
}
```

# Branches (`if-else`, ,`switch`, `defer`)

Here is a typical branch (`else` clause is optional)

```
if x < 0 {
    // do something
} else {
    // do something else
}
```

`if` can initiaze variables before condition evaluation

```go
func pow(x, n, lim float64) float64 {
    if v := math.Pow(x, n); v < lim {
        return v
    } else {
        fmt.Printf("%g >= %g\n", v, lim)
    }
    // can't use v here, though
    return lim
}
```

A `switch` statement is a compact `if - else` alternative.
It runs the first case whose value is equal to the condition expression.
Works with different types and arbitrary expressions, does NOT fall through.
Can have short initializer before condition expression.
Evaluates `case` expressions lazily.

```go
package main

import (
    "fmt"
    "runtime"
)

func main() {
    fmt.Print("Go runs on ")
    switch os := runtime.GOOS; os {
    case "darwin":
        fmt.Println("OS X.")
    case "linux":
        fmt.Println("Linux.")
    default:
        // freebsd, openbsd,
        // plan9, windows...
        fmt.Printf("%s.", os)
    }
}
```

Switch without a condition is the same as `switch true`.
A clean way to write long if-then-else chains.

```go
package main

import (
    "fmt"
    "time"
)

func main() {
    t := time.Now()
    switch {
    case t.Hour() < 12:
        fmt.Println("Good morning!")
    case t.Hour() < 17:
        fmt.Println("Good afternoon.")
    default:
        fmt.Println("Good evening.")
    }
}
```

A `defer` statement defers the execution of a function until the surrounding function returns.
The deferred call's arguments are evaluated immediately, but the function call is not executed until the surrounding function returns.

Deferred function calls are pushed onto a stack. When a function returns, its deferred calls are executed in last-in-first-out order.

```go
package main

import "fmt"

func main() {
    fmt.Println("counting")

    for i := 0; i < 3; i++ {
        defer fmt.Println(i)
    }

    fmt.Println("done")
}

// outputs:
// counting
// done
// 2
// 1
// 0
```

# Pointers
A pointer holds the memory address of a value.
The type `*T` is a pointer to a `T` value. Its zero value is `nil`.

```go
var p *int
```

The `&` operator generates a pointer to its operand.

```go
i := 42
p = &i
```

The `*` operator denotes the pointer's underlying value.

```go
fmt.Println(*p) // read i through the pointer p
*p = 21         // set i through the pointer p
```

# Structs
A `struct` is a collection of fields.

```go
package main

import "fmt"

type Vertex struct {
    X int
    Y int
}

func main() {
    v := Vertex{1, 2}
    v.X = 3
    p := &v
    p.Y = 4 // fields can be accessed through a struct pointer without explicit dereferencing.
    fmt.Println(v) // {3 4}
    fmt.Println(p) // &{3 4}
}
```
Structs are allocated with literals

```go
var (
    v1 = Vertex{1, 2}       // has type Vertex
    v2 = Vertex{X: 1}       // Y:0 is implicit
    v3 = Vertex{}           // X:0 and Y:0
    v4 = Vertex{Y: 1, X: 2} // the order of the fields is irrelevant
    v5 = Vertex{Y: 1}       // X:0 is implicit
    p  = &Vertex{1, 2}      // has type *Vertex
)
```

# Arrays & Slices

An array has a fixed size.
An array's length is part of its type.
A slice is a dynamically-sized view into the elements of an array.
Changing the elements of a slice modifies the corresponding elements of its underlying array.
In practice, slices are much more common than arrays.
Slices are cheap.
They consist of a pointer to an array, length and capacity.

The type `[n]T` is an array of `n` values of type `T`.

The type `[]T` is a slice with elements of type `T`.

A slice is formed by specifying two indices, a low and high bound, separated by a colon:
This selects a half-open range which includes the first element, but excludes the last one.
```go
a[low : high]
```

Bounds can be omitted
```go
a := []int{1, 2, 3, 4, 5}
fmt.Println(a[1:4]) // [2 3 4]
fmt.Println(a[1:])  // [2 3 4 5]
fmt.Println(a[:4])  // [1 2 3 4]
fmt.Println(a[:])   // [1 2 3 4 5]
```

```go
var a [2]string
a[0] = "Hello"
fmt.Println(a[0])         // Hello
primes := [6]int{2, 3, 5, 7, 11, 13}
var s []int = primes[1:4] // [3 5 7]
fmt.Println(s)
```

A slice literal is like an array literal without the length.
```go
[3]bool{true, true, false} // array literal
[]bool{true, true, false}  // slice literal
```

You can declare slice element type inline.
```go
s := []struct {
        i int
        b bool
    }{
        {2, true},
        {3, false},
        {5, true},
    }
```

A slice has both a length and a capacity.
The length of a slice is the number of elements it contains.
The capacity of a slice is the number of elements in the underlying array, counting from the first element in the slice.
The length and capacity of a slice s can be obtained using the expressions `len(s)` and `cap(s)`.
You can extend a slice's length by re-slicing it, provided it has sufficient capacity.

The zero value of a slice is `nil`.
A nil slice has a length and capacity of 0 and has no underlying array.

```go
func main() {
    var s []int
    fmt.Println(s, len(s), cap(s))
    if s == nil {
        fmt.Println("nil!")
    }
}
```

The `make` function allocates a zeroed array and returns a slice that refers to that array:

```go
a := make([]int, 5)    // len(a)=5, cap(a)=5
b := make([]int, 0, 5) // len(b)=0, cap(b)=5
```

Slices can contain any type, including other slices.

```go
board := [][]string{
    []string{"_", "_", "_"},
    []string{"_", "_", "_"},
    []string{"_", "_", "_"},
}
```

You can append elements to a slice even though arrays are fixed size.

```go
// s - slice to append to
// vs - values to append
func append(s []T, vs ...T) []T
```

If the backing array of s is too small to fit all the given values a bigger array will be allocated.
The returned slice will point to the newly allocated array.

When ranging over a slice, the first value is the index, and the second is a copy of the element at that index.

```go
for i, v := range []string{"a","b","c"} {
    fmt.Printf("%d = %s\n", i, v)
}

for _, v := range []string{"a","b","c"} {
    fmt.Printf("%s", v) // abc
}

for i := range []string{"a","b","c"} {
    fmt.Printf("%d", i) // 012
}
```

# Maps
The zero value of a map is `nil`. A nil map has no keys, nor can keys be added.
The `make` function returns a map of the given type, initialized and ready for use.

```go
package main

import "fmt"

type Vertex struct {
    Lat, Long float64
}

var m map[string]Vertex

func main() {
    m = make(map[string]Vertex)
    m["Bell Labs"] = Vertex{
        40.68433, -74.39967,
    }
    fmt.Println(m["Bell Labs"])
}
```


# Printing
`Printf` takes `%T` for type names, `%g` for numbers, `%d` for integers, `%v` for values,`%q` and `%s` for strings.

# String operations
strings.Join([]string{"a", "b", "c"}, "^") // a^b^c

# Data and time

```go
package main

import (
    "fmt"
    "time"
)

func main() {
    fmt.Println("When's Saturday?")
    today := time.Now().Weekday()
    switch time.Saturday {
    case today + 0:
        fmt.Println("Today.")
    case today + 1:
        fmt.Println("Tomorrow.")
    case today + 2:
        fmt.Println("In two days.")
    default:
        fmt.Println("Too far away.")
    }
}
```

