- `libfreetype`

## `image/jpeg`
Compression method for full-color and gray-scale images.
- https://en.wikipedia.org/wiki/JPEG
- http://www.ijg.org/
- http://gnuwin32.sourceforge.net/packages/jpeg.htm (Jpeg for Windows)

### JPEG (Joint Photographic Experts Group)
Lossy compression for digital images. Popular in digital photography.
- `libjpeg`

## PNG
- `libpng12`
- `libpng14`
- `libpng`

### JPEG/Exif
Popular image format in digital cameras.

### JPEG/JFIF (JPEG File Interchange Format)
Popular image format in www.

## TIFF (Tag Image File Format)
Raster graphics format. Popular in scanners, desktop publishing, faxing, 3D apps, medical imaging apps.

- http://www.remotesensing.org/libtiff/
- http://partners.adobe.com/public/developer/en/tiff/TIFF6.pdf (p. 64-115)
- http://www.remotesensing.org/libtiff/TIFFTechNote2.html
- http://www.ietf.org/rfc/rfc2301.txt (TIFF specification)
- http://partners.adobe.com/public/developer/en/tiff/TIFFphotoshop.pdf (Adobe TIFF technical notes)
- http://www.awaresystems.be/imaging/tiff/tifftags/search.html (search TIFF tags)
- http://www.awaresystems.be/imaging/tiff/tifftags/jpegqtables.html
- http://www.fileformat.info/format/tiff/egff.htm

- `libtiff`
- `libtiffxx`
- `tiff2pdf`- convert to PDF
- `tiffcp` - concatenate TIFF files
- http://www.irfanview.com/

# Java Libs
## ImageIO
- https://java.net/projects/imageio
- `javax.imageio`
- `javax.imageio.event`
- `javax.imageio.metadata`
- `javax.imageio.plugins.bmp`
- `javax.imageio.plugins.jpeg`
- `javax.imageio.spi`
- `javax.imageio.stream`
- http://docs.oracle.com/javase/8/docs/technotes/guides/imageio/spec/imageio_guideTOC.fm.html (Java Image I/O API Guide)

## JAI (Java Advanced Imaging API)
- https://java.net/projects/jai
- https://java.net/projects/jai-imageio
- https://docs.oracle.com/cd/E17802_01/products/products/java-media/jai/forDevelopers/jai-apidocs/overview-summary.html
- Bookmark: "5.2 Visualization of images with annotations" - JAI API: A Tutorial by Rafael Santos

## Twelve Monkeys
- https://github.com/haraldk/TwelveMonkeys (Additional plug-ins and extensions for Java's ImageIO)
- http://haraldk.github.io/TwelveMonkeys
- https://github.com/haraldk/java-image-processing-survival-guide

## Apache Commons Imaging
- http://commons.apache.org/proper/commons-imaging/

## Java Media API
- http://www.oracle.com/technetwork/java/javase/tech/media-141984.html

## Java Media Framework
- http://www.oracle.com/technetwork/articles/javase/index-jsp-140239.html

## Java 2D API

## Java 3D API
- http://www.oracle.com/technetwork/articles/javase/index-jsp-138252.html

# Readers
- http://imagej.net (open source)

## Java AWT Image
- `java.awt`
- `java.awt.image` 

# Image Processing
- https://en.wikipedia.org/wiki/Dither
- https://www.cs.princeton.edu/courses/archive/fall00/cs426/lectures/dither/dither.pdf

# Performance
- Process image in tiles reading into memory one tile at a time.

# Image processing algorithms
- horizontal Sobel operator
- classification algorithms
- Fuzzy C-Means (FCM) clustering algorithm - http://home.deib.polimi.it/matteucc/Clustering/tutorial_html/cmeans.html

## Concepts

- Raster - a rectangular pattern of parallel scanning lines followed by the electron beam on a television screen or computer monitor.
- Raster image - dot matrix representing a rectangular grid of pixels or points of color.
- Dot matrix - 2D patterned array
- Image tile - subset of an image which may be processed independently.
- smoothing kernel

- `PlanarImage` - r
- `BufferedImage`
- `TiledImage` - rw
- `RenderedOp` - a node in a rendered imaging chain.
- `ColorModel`
- `ColorSpace`
- `ParameterBlock`

## color space
color model
- RGB, HSL (rainbow color scale)
- polylinear scale

- palette-color
- CMYK
- YCbCr
- CIE L*a*b*
- Tiled 

# Image ADT
## Operations
- display (render)
- pack/unpack, compress/decompress
- revert
- invert
- scale
- interpolate
- rotate
- convolve

## Attributes
- width * height
- bitsPerSample
- sampleFormat (IEEE floating point, integer)
- samplesPerPixel, bands, dimensions { bilevel, grayscale, RGB full-color }
- rowsPerStrip
- planarConfiguration { single image plain }
- photometric interpretation { RGB, min-is-black }

