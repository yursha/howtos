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

# Variables

```go
package main

import "fmt"

// variables without initializers
var c, python, java bool

// variables with initializers
var x, y int = 1, 2

func main() {
    var i int
    fmt.Println(i, c, python, java)
}
```
