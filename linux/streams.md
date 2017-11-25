# Concepts
- Underneath everything is a binary stream.
- Binary streams can be turned into other kinds of streams by the mechanism of translation (filtering).
    + character (text) stream - translates between bytes and characters by consulting charset mappings.
    + line stream - translates between text and lines by LF character.
    + token stream (lexer) - translates between text and tokens by consulting a lexical grammar.
    + object stream (parser) - translates between tokens and objects by consulting a syntax grammar.
- Input streams read (and translate) data from the source.
- Output streams (translate and) write data to the sink.
- Examples of IO streams are file streams, socket streams or byte array streams.
- Object streams (iterators)
- Event streams
- Json parser event streams
- `stdio.h` - standard buffered input/output

# Standard Streams
- Standard streams (STDIN, STDOUT, STDERR)
- [Standard Streams on wikipedia](https://en.wikipedia.org/wiki/Standard_streams)
- On linux:
    + `/dev/stdin` -> `/proc/self/fd/0` -> character device `/dev/pts/{number}`
    + `/dev/stdout` -> `/proc/self/fd/1` -> character device `/dev/pts/{number}`
    + `/dev/stderr` -> `/proc/self/fd/2` -> character device `/dev/pts/{number}`
- `man pts`

# Sream Buffering
- unbuffered
- line-buffered
- buffered

Unbuffered or line-buffered output should appear as soon as possible, to ensure that prompting messages actually appear prior to a program waiting for input.

# Redirect stdout
```bash
# bash
echo "Hello" > file.txt
```

# Redirect stderr
```bash
# bash
echo "Error" 2> file.txt
echo "Error" 2> /dev/null
```
