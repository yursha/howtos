# Compression schemes

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
