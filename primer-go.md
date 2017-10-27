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
    fmt.Println("The time is", time.Now())
    fmt.Println("My favorite number is", rand.Intn(10))
    fmt.Printf("Now you have %g problems.", math.Sqrt(7))
}
```
