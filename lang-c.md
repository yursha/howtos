# Resources
- [C 2011 Spec Draft](http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1570.pdf) Bookmark 5.1.2.4 - Multi-threaded executions and data races
- [C/C++ Reference Interactive Website](http://en.cppreference.com/w/)
- [GNU lib C Manual](https://www.gnu.org/software/libc/manual)
- [C programming tutorial by crasseux](http://www.crasseux.com/books/ctutorial/)
- [glibc on Fossies](https://fossies.org/dox/glibc-2.23/index.html)
- [GNU lib C++ Manual](https://gcc.gnu.org/onlinedocs/libstdc++/manual/)
- [C++11 on wikipedia](https://en.wikipedia.org/wiki/C++11)
- [C11 on wikipedia](https://en.wikipedia.org/wiki/C11_(C_standard_revision))
- [C Standard Committee](http://www.open-std.org/jtc1/sc22/wg14/)
- [C++ Standard Committee](http://www.open-std.org/jtc1/sc22/wg21/)
- https://en.wikipedia.org/wiki/Errno.h
- [boost c++ libs](http://www.boost.org/)
- [Useful c resources](http://en.cppreference.com/w/c/links)
- [List of open source C libs](http://en.cppreference.com/w/c/links/libs)

# Programs
- gcc
- clang

# C preprocessor (cpp)
Preprocessor is an essential part of the language.
`cpp -v` - find out where preprocessor looks up headers for `#include <...>` directives.

On Fedora system:
```
#include "..." search starts here:
#include <...> search starts here:
    /usr/lib/gcc/x86_64-redhat-linux/5.3.1/include
    /usr/local/include
    /usr/include
```

# Hosted vs Free-standing
- hosted environment with stdlib (application programs)
- freestanding environment without stdlib (embedded systems, OS, process control, realtime, etc)

# Linkage
- external (to a file)
- no linkage (internal to a file)

# Source code
- `git clone git://sourceware.org/git/glibc.git`

# Exit Codes
- `glibc_src/misc/sysexits.h`
