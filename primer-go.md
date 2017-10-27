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

# Printing
`Printf` takes `%T` for type names, `%g` for numbers, `%v` for values,`%q` and `%s` for strings.

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
