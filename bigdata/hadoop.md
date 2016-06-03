- [Apache Hadoop Website](http://hadoop.apache.org/)
- [Hadoop Javadoc](http://hadoop.apache.org/docs/current/api/)
- [Hue - wikipedia](https://en.wikipedia.org/wiki/Hue_(Hadoop))

# [Hadoop Wiki](https://wiki.apache.org/hadoop)
- [Sequence Files on Hadoop wiki](https://wiki.apache.org/hadoop/SequenceFile) ✓
- [MapReduce on Hadoop wiki](https://wiki.apache.org/hadoop/MapReduce)

# Jars
- `org.apache.hadoop:hadoop-common` (there are also Cloudera releases)

# Notable hosting providers
- https://cloudera.com/

# Sequence files
Sequence files are flat files consisting of binary key/value pairs (records). Its widely used as input/output format for Hadoop MapReduce jobs. Also internally in Hadoop the temporary outputs of maps are stored as sequence files.

Sequence files may use compression:
- uncompressed
- record compression (only values are compressed)
- block compression (records are collected into a configurable size blocks and those blocks are compressed)

Sequence file format:
- header
    + magic number
    + key class name
    + value class name
    + isCompressed
    + isBlockCompressionUsed
    + compression codec class name
    + metadata
    + sync marker
- body (list of records/blocks separated with sync markers). The sync marker permits seeking to a random point in a file and then re-synchronizing input with record boundaries. This is required to be able to efficiently split large files for MapReduce processing.

# Hadoop Data Types
- BytesWritable (byte[])
- Text (String)

Operations:
- write keys
- read keys
- sort keys

# Writer
- hflush (flushes to the client's user buffer
- hsync (flushes to a disk device, similar to posix `fsync`)

# Reader

# FileContext (org.apache.hadoop.fs.FileContext)
Provides interface to the writer for using the HDFS (create, open, list, etc.).

