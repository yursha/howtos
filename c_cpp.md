# Resources
- http://en.cppreference.com/w/
- http://en.cppreference.com/w/c/links
- https://en.wikipedia.org/wiki/Errno.h
- http://www.cplusplus.com/reference/
- [libstdc++ Source Documentation](https://gcc.gnu.org/onlinedocs/gcc-4.6.2/libstdc++/api/)

# Embedded programming
- http://embeddedgurus.com/stack-overflow/

# Programs
- clang
- [gnu cpp](https://gcc.gnu.org/onlinedocs/cpp/index.html)

# Standars
- [POSIX.1-2008](http://pubs.opengroup.org/onlinepubs/9699919799/)
- [POSIX 2013 - shell and utilities](http://pubs.opengroup.org/onlinepubs/9699919799/utilities/contents.html)

# C language
- [C Standard Committee](http://www.open-std.org/jtc1/sc22/wg14/)
- [C 2011 Spec Draft](http://www.open-std.org/jtc1/sc22/wg14/www/docs/n1570.pdf) Bookmark 5.1.2.4 - Multi-threaded executions and data races
- [The GNU C Reference Manual](https://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html)
- [C11 on wikipedia](https://en.wikipedia.org/wiki/C11_(C_standard_revision))
- [C programming tutorial by crasseux](http://www.crasseux.com/books/ctutorial/)
- [The C Book](http://publications.gbdirect.co.uk/c_book/)

# GNU C Library
- [Reference](https://www.gnu.org/software/libc/manual/html_node/index.html)
- [glibc on Fossies](https://fossies.org/dox/glibc-2.23/index.html)

# Other c libs
- [List of open source C libs](http://en.cppreference.com/w/c/links/libs)

# [GNU Compiler Collection (GCC)](https://gcc.gnu.org/)
- [GCC - online docs](https://gcc.gnu.org/onlinedocs/)
- [GCC source code SVN](https://gcc.gnu.org/svn.html)
- [Installing GCC - wiki](https://gcc.gnu.org/wiki/InstallingGCC)

# C preprocessor (cpp)
- [GNU GCC CPP manual](https://gcc.gnu.org/onlinedocs/gcc-6.1.0/cpp/)
`cpp -v` - find out where preprocessor looks up headers for `#include <...>` directives. Those are the libraries (headers) available on your system than you can make use of.

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
- external (external to a file)
- static (internal to a file)

# Source code
- `git clone git://sourceware.org/git/glibc.git`

# Exit Codes
- `glibc_src/misc/sysexits.h`

# C++ language
- [C++ Standard Committee](http://www.open-std.org/jtc1/sc22/wg21/)
- [C++11 on wikipedia](https://en.wikipedia.org/wiki/C++11)

# C++ stlib
- [GNU lib C++ Manual](https://gcc.gnu.org/onlinedocs/libstdc++/manual/)

# Other C++ libs
- [boost c++ libs](http://www.boost.org/)
