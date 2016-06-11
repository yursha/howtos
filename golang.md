- [The Go Programming Language Specification](https://golang.org/ref/spec)
- https://tour.golang.org
- https://golang.org/doc/
- https://golang.org/src/
- https://golang.org/pkg/
- https://golang.org/cmd/go/
- https://godoc.org/
- https://github.com/golang/go/wiki/Projects
- [Go organization on GitHub](https://github.com/golang)
- [Go lang on GitHub](https://github.com/golang/go)
- https://golang.org/doc/effective_go.html
- https://gobyexample.com/

# Go Hosting
- https://www.digitalocean.com
- http://www.golang-cloud.com/en

```
// go example
package main

import (
        "flag"
        "fmt"
        "log"
        "net/http"
        "time"
       )

func main() {
    flag.Parse()
    for {
        start := time.Now()
        _, err := http.Get("https://" + flag.Arg(0))
        if err != nil {
            log.Fatal(err)
        }
        fmt.Println(time.Since(start))
    }
}
```
