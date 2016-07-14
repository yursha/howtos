- http://repo.or.cz/sqlite.git
- Richard Hip - http://www.hwaci.com/drh/
- https://www.sqlite.org
- https://www.sqlite.org/limits.html
- https://www.sqlite.org/whentouse.html
- http://stackoverflow.com/questions/11938401/difference-between-text-and-string-datatype-in-sqlite-in-android
- http://stackoverflow.com/questions/543580/equals-vs-like
- http://stackoverflow.com/questions/515039/use-or-like-to-compare-strings-in-sql
- http://stackoverflow.com/questions/6134415/how-to-concatenate-strings-with-padding-in-sqlite
- SQLite Database System Design and Implementation (Second Edition) - By Sibsankar Halda
- The Definitive Guide to SQLite - By Grant Allen, Mike Owens
- http://charlesleifer.com/blog/five-reasons-you-should-use-sqlite-in-2016/

- `sqlite3` - command line client
- Javadoc - http://javadox.com/org.xerial/sqlite-jdbc/3.8.11.2/org/sqlite/package-summary.html

# Theory
Query plan is what affects performance.

# SQL
- https://www.sqlite.org/lang_expr.html √
- https://www.sqlite.org/lang_createtable.html
- https://github.com/apenwarr/csv2sqlite
- http://apenwarr.ca/log/

# Virtual Machine
- https://www.sqlite.org/opcode.html - New Virtual Machine
- https://www.sqlite.org/vdbe.html - Old Virtual Machine

# Optimizing
- http://www.codificar.com.br/blog/sqlite-optimization-faq/
- https://www.sqlite.org/inmemorydb.html
- https://www.sqlite.org/pragma.html
- https://www.sqlite.org/lang_expr.html
- https://www.sqlite.org/lang_explain.html
- https://www.sqlite.org/lang_createindex.html - CREATE INDEX
- optimize `page_size` and `cache_size` thru `PRAGMA` queries.
- consider switching off journaling with `PRAGMA journal_mode = OFF`
- consider reducing the number of system calls by using one lock for the entire session with `PRAGMA locking_mode = EXCLUSIVE`
- consider increasing size (in bytes) of memory-mapped IO with `PRAGMA mmap_size = N` directive
- consider disabling writes after all writes are done with `PRAGMA query_only = 1`
- consider `PRAGMA shrink_memory` to free memory when you need to switch to other non-SQLite intensive tasks (shrinking `cache_size` may also help).
- consider disabling frequent disk synchronizations with `PRAGMA synchronous = 0`
- consider storing temporary tables and indices in memory with `PRAGMA temp_store = MEMORY`
- consider adding multithreading to SQLite query execution with `PRAGMA threads = N`
- consider using `rowid` or other `integer primary key ASC` as its twice faster than regular primary keys on indexed columns.
- use `ANALYZE` to gain insights into your queries
- use `EXPLAIN` to analyze your queries - https://www.sqlite.org/lang_explain.html

> The data for rowid tables is stored as a B-Tree structure containing one entry for each table row, using the rowid value as the key. This means that retrieving or sorting records by rowid is fast. Searching for a record with a specific rowid, or for all records with rowids within a specified range is around twice as fast as a similar search made by specifying any other PRIMARY KEY or indexed value.
Source: https://www.sqlite.org/lang_createtable.html

- ? use sqlite as in-memory db
- ? use `begin transaction` and `end transaction`
- ? use indices
- ? compact the database
- ? replace the memory allocation lib

# Data Types
- https://www.sqlite.org/lang_createtable.html
- https://www.sqlite.org/datatype3.html

# Indices and Optimizations
- Covering Indices, Index Selectiveness
- https://www.sqlite.org/expridx.html - Indices On Expressions
- https://www.sqlite.org/optoverview.html √
- https://www.sqlite.org/partialindex.html
- https://www.sqlite.org/queryplanner.html √
- https://www.sqlite.org/queryplanner-ng.html
- https://www.sqlite.org/lang_analyze.html
- http://stackoverflow.com/questions/1711631/improve-insert-per-second-performance-of-sqlite
- http://codereview.stackexchange.com/questions/26822/myth-busting-sqlite3-performance-w-pysqlite
- http://blog.quibb.org/2010/08/fast-bulk-inserts-into-sqlite/

# Security
- consider using `PRAGMA secure_delete = 1`

# Usages
- https://www.sqlite.org/appfileformat.html

# Pivot table
- https://en.wikipedia.org/wiki/Pivot_table

# MySQL 5.7 docs
- http://dev.mysql.com/doc/refman/5.7/en/
- [Common MySQL Queries](http://www.artfulsoftware.com/infotree/queries.php)
