- [GNU Binutils](https://www.gnu.org/software/binutils/)
- git://sourceware.org/git/binutils-gdb.git - Source code repository
- [Binutils Porting Guide](https://sourceware.org/binutils/binutils-porting-guide.txt)
- [Binutils Docs](http://sourceware.org/binutils/docs-2.26/)

# Tools
- `addr2line` - Converts addresses into filenames and line numbers.
- `ar` - A utility for creating, modifying and extracting from archives.
- `c++filt` - Filter to demangle encoded C++ symbols.
- `dlltool` - Creates files for building and using DLLs.
- `gold` - A new, faster, ELF only linker, still in beta test.
- `gprof` - Displays profiling information.
- `nlmconv` - Converts object code into an NLM.
- `nm` - Lists symbols from object files.
- `objcopy` - Copies and translates object files.
- `objdump` - Displays information from object files.
- `ranlib` - Generates an index to the contents of an archive.
- `readelf` - Displays information from any ELF format object file.
- `size` - Lists the section sizes of an object or archive file.
- `strings` - Lists printable strings from files.
- `strip` - Discards symbols.
- `windmc` - A Windows compatible message compiler.
- `windres` - A compiler for Windows resource files.


# How to recover `rm`ed files?
- unmout disk partition from which file was deleted (boot with recovery usb stick if this is a single bootable partition)
- run `sudo cat /dev/sda2 | pv -pterbs 347G | strings | grep -C100 'My File Contents' > recoverted.txt`

## `ld` - linker

## `as` - assembler
- Skipped - https://sourceware.org/binutils/docs-2.26/as/Overview.html#Overview
- Bookmark - https://sourceware.org/binutils/docs-2.26/as/Input-Files.html#Input-Files

## Binary File Descriptor Library (BFD)

## opcodes library (assembler and disassembler machine instructions)
