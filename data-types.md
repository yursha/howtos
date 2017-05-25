# Concepts
- data types define how bit sequences are interpreted. Programmers can also assign custom meanings to be sequences beyond language-provided types.
- each programming language provides types (ways) to represent:
  + **Integers.** May be signed or unsigned which affects the represented numeric range and what CPU instructions are generated. May be 1, 2, 4 or 8 bytes.
  + **Floating point numbers.** Usually 4 or 8 bytes which affects represented range and precision.
  + **true or false.** Often represented as a byte not bit because memory is byte-addressable.
  + **Characters.** Usually represented as integers. May be of different length depending on the represented character set size. Usually 1, 2 or 4 bytes.
  + **Strings.** Usually represented as arrays of characters, either with a known length or '\0'-terminated.
  + **Pointer to memory address.** 4 bytes on 32-bit architectures and 8 bytes on 64-bit architectures. Null pointer ('\0') is usually a special value.
- Some languages allow users to define composite types:
  + **Structs or classes.** User-defined memory layout consisting of interleaved sequence of primitive and composite types. Sometimes functions are declaraed to operate on this memory layout (called member functions or methods).
  + **Unions.** "Either or" type which takes the memory of the largest value. Used mostly to save memory. Often useless. 
  + **Enumerations.** Usually implemented as bit sets or integer constants.
  + **Arrays.** Continuous sequence of values of some other type. Mostly for primitive types.
- Most languages provide libraries with data structures such as:
  + **Lists.**
  + **Hash tables.**
  + **Binary search trees.**

# covariant types
- [Covariant return types in Java](https://blogs.oracle.com/sundararajan/entry/covariant_return_types_in_java)
- [Covariant return types C2](http://c2.com/cgi/wiki?CovariantReturnTypes)
