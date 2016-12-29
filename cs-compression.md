# Compression algorithms

# LZW (Lempel-Ziv & Welch)
- lossless
- slinding window method

- Apple Macintosh PackBits (simple byte-oriented run length scheme)
- a 4-bit run-length encoding scheme from Thunderscan
- a 2-bit encoding scheme used by NeXT
- experimental schemes intended for images with high dynamic range

# Huffman
 + CCITT Group 3 1D Facsimile Compression Scheme (Modified Huffman run length encoding) (works only for bilevel images)
 + CCITT Group 3 2D
 + CCITT Group 4

- https://www.gnu.org/software/gzip/
- tar

# Libs
- `libbz2`
- `libz`

# Tools
- `gzip` 
- `tar`
- Info-Zip - http://www.info-zip.org/pub/infozip/ - (`unzip`)
- http://www.info-zip.org/pub/infozip/UnZip.html

# Deflate compression
- `zlib` (http://www.zlib.net/) - deflate compression
Also a different beast is Linux zlibc Compressing File-I/O Library)

# Brotli
- https://github.com/google/brotli
- https://blog.cloudflare.com/results-experimenting-brotli/

# Archivers

## [tar](http://www.gnu.org/software/tar/)

## [gzip](http://www.gzip.org/)

## [zip](http://www.info-zip.org/Zip.html)

## [bzip2](http://www.bzip.org/)

## [xz](http://tukaani.org/xz)
- LZMA algorithm

## JAR
- http://docs.oracle.com/javase/8/docs/technotes/guides/jar/index.html
- http://docs.oracle.com/javase/8/docs/technotes/tools/unix/pack200.html
- http://docs.oracle.com/javase/8/docs/technotes/tools/windows/pack200.html
- http://docs.oracle.com/javase/tutorial/deployment/jar/index.html

## Remove a file from a jar
- http://stackoverflow.com/questions/4520822/is-there-a-quick-way-to-delete-a-file-from-a-jar-war-without-having-to-extract

## Reading resources from a jar
- http://stackoverflow.com/questions/676097/java-resource-as-file?lq=1
- http://stackoverflow.com/questions/22605666/java-access-files-in-jar-causes-java-nio-file-filesystemnotfoundexception (On Windows)


## Decompress and extract
```
jar vxf /path/to/archive.jar # doesn't allow extracting to stdout
tar vxzf /path/to/archive.tar.gz
zcat <archive> | tar xv
tar vxjf /path/to/archive.tar.bz2
unzip -qc archive.jar META-INF/MANIFEST.MF  # extracts to stdout
```

## Archive and compress
```
tar vzcf <archive> <dir>
tar vcf <dir> | gzip > <archive>
```

## List contents
```
tar vztf <archive>
```
