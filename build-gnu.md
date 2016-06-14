# Books
- https://www.sourceware.org/autobook/autobook/autobook_toc.html 'GNU Autoconf, Automake and Libtool', by G. V. Vaughan, B.  Elliston, T. Tromey, and I. L. Taylor.  SAMS (originally New Riders), 2000, ISBN 1578701902.

# M4
- http://www.gnu.org/software/m4/m4.html
- `git clone http://git.savannah.gnu.org/r/m4.git`

`m4` is actually a templating engine

What `m4` does:
- expands macros
- includes files
- runs shell commands
- does integer arithmetic
- manipulates text
- recursion
- conditionals

# [Autoconf](http://www.gnu.org/software/autoconf/manual/index.html)
- **Boomark**: `4.2 Dealing with Autoconf versions`
- `git clone http://git.sv.gnu.org/r/autoconf.git`
- GNU Coding Standards http://www.gnu.org/software/autoconf/manual/standards.html

Command-line utils
- `autoscan` - browse c sources for common cross-platform compatibility problems and generate `configure.scan`
- `ifnames` - browse c sources for names used in preprocessor conditionals
- `autoconf` - generates `config.status`, `configure` from `acsite.m4`, `aclocal.m4`, `configure.ac` using `m4`
- `autoreconf` 
- `autom4te`
- `autoheader`
- `aclocal`
- `libtoolize`
- `autopoint`

# Gnulib
- http://www.gnu.org/software/gnulib/

# Automake
- http://www.gnu.org/software/automake/automake.html
- http://www.gnu.org/software/autoconf/manual/automake.html

# Libtool
- http://www.gnu.org/software/libtool/libtool.html

# Make
- [GNU Manual for Unix](https://www.gnu.org/software/make/manual/make.html)
- [Windows port](http://gnuwin32.sourceforge.net/packages/make.htm)
- `git clone git://git.savannah.gnu.org/make.git`
