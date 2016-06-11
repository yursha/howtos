# [tar](http://www.gnu.org/software/tar/)

# [gzip](http://www.gzip.org/)

# [zip](http://www.info-zip.org/Zip.html)

# [bzip2](http://www.bzip.org/)

# [xz](http://tukaani.org/xz)
- LZMA algorithm

# JAR
- http://docs.oracle.com/javase/8/docs/technotes/guides/jar/index.html
- http://docs.oracle.com/javase/8/docs/technotes/tools/unix/pack200.html
- http://docs.oracle.com/javase/8/docs/technotes/tools/windows/pack200.html
- Bookmark: http://docs.oracle.com/javase/tutorial/deployment/jar/run.html

# Remove a file from a jar
- http://stackoverflow.com/questions/4520822/is-there-a-quick-way-to-delete-a-file-from-a-jar-war-without-having-to-extract

# Reading resources from a jar
- http://stackoverflow.com/questions/676097/java-resource-as-file?lq=1
- http://stackoverflow.com/questions/22605666/java-access-files-in-jar-causes-java-nio-file-filesystemnotfoundexception (On Windows)


# Decompress and extract
```
jar vxf <archive>
tar vzxf <archive>
zcat <archive> | tar xv
```

# Archive and compress
```
tar vzcf <archive> <dir>
tar vcf <dir> | gzip > <archive>
```

# List contents
```
tar vztf <archive>
```
