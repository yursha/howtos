- Lutz Prechelt "An empirical comparison of C, C++, Java, Perl, Python, Rexx, and Tcl" - https://page.mi.fu-berlin.de/prechelt/Biblio/jccpprt_computer2000.pdf
- http://stackoverflow.com/questions/145110/c-performance-vs-java-c
- http://programmers.stackexchange.com/questions/159373/what-backs-up-the-claim-that-c-can-be-faster-than-a-jvm-or-clr-with-jit
- http://www.jelovic.com/articles/why_java_is_slow.htm
- http://unriskinsight.blogspot.com/2014/06/fast-functional-goats-lions-and-wolves.html
- https://en.wikipedia.org/wiki/Java_performance#Comparison_to_other_languages
- https://www.linkedin.com/pulse/20140722010907-14297945-jvm-java-vs-c

# Name Scoping
- lexical (static, block) scoping

# Concepts
- Application domains have conflicting needs.
- Programmer training is the dominant cost of a programming language (not R&D for it)

# Languages
## R
- https://www.r-project.org/
- http://ggplot2.org/

## Rust

## Erlang
- https://www.erlang.org/

## Fortran
- Fortran
- Fortran 77

## PPL (Practical Programming Language)
- http://www.practical-programming.org/language/docs/manuals/language_manual.html

## Racket
- http://docs.racket-lang.org/

# Null Pointers
- http://www.infoq.com/presentations/Null-References-The-Billion-Dollar-Mistake-Tony-Hoare
- http://www.cs.man.ac.uk/~johns/npe.html
- https://yinwang0.wordpress.com/2013/06/03/null/

# TCL
- http://www.tcl-lang.org/

# Nulls
There are multiple ways to indicate absense of value for collections. We can either return `null` or and empty collection. Returning empty collection is more natural because this contract is more intuitive. In both cases we return a collection which is either empty or not, preserving the type of a return value. Null doesn't belong to a collection type. Null is actuall a type in its own write though many languages incorrectly treat `null` as belonging to all types. When we return non-collection objects which may be null we should prefer to return `Optional` objects.

- https://docs.oracle.com/javase/8/docs/api/java/util/Optional.html
