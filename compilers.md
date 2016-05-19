- https://www.coursera.org/course/compilers
- http://harmful.cat-v.org/software/GCC

- cc
- clang
- gcc
- Microsoft Visual C++

# [javac](http://docs.oracle.com/javase/8/docs/technotes/tools/windows/javac.html)
- `javac -XD-printflat -d output_dir SomeFile.java` - look for javac does with `*.java` files

Javac compiles from Java source code into byte code. Each java class defined in `*.java` files gets compiled into its own `*.class` file.
Javac can also process annotations in Java source files and classes.
Javac accepts source files to compile either as a list of command-line parameters or in a file.

# java decompiler

- linking
- compiling
- dynamic loading
- share library

# Compiler optimizations

- tail call optimization

# Compiler phases
- preprocessor
- compiler
- linker

libraries can be shared (dynamic) and static

# Compiler Phases
- Syntactic Aspects (SMALL)
    + Lexical Analysis (understanding tokens)
    + Parsing (Parse Tree)
- Limited Semantic Analysis (MEDIUM) (types, scope rules) Try to understand the meaning and catch inconsistencies.
    + lexical scoping
    + variable bindings
    + type match
- Optimization (LARGE)
- Code Generation (SMALL)


# Literature
- "Compilers: Principles, Techniques, and Tools (Second Edition)" Alfred Aho, Monica Lam, Ravi Sethi, and Jeffrey Ullman.  Addison-Wesley
- "Modern Compiler Implementation in Java (Second Edition)" Andrew Appel and Jens Palsberg.  Cambridge University Press
- "Engineering a Compiler" Keith Cooper and Linda Torczon Morgan Kaufman
