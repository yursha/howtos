- [Download](https://golang.org/dl/) Golang binary distribution.

Extract archive into `/usr/local`:
```
sudo tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
```

Add `export PATH=$PATH:/usr/local/go/bin` to `~/.bashrc`.

```
. ~/.bashrc
mkdir -p ~/go/src/hello
```

Create the following file in `~/go/src/hello/hello.go`:
```go
package main

import "fmt"

func main() {
    fmt.Printf("hello, world\n")
}
```

```
cd ~/go/src/hello
go build
./hello # you should see the program printed "hello, world" at this point.
```
