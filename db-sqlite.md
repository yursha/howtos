# About SQLite

The data for rowid tables is stored as a B-Tree structure containing one entry for each table row, using the rowid value as the key. This means that retrieving or sorting records by rowid is fast. Searching for a record with a specific rowid, or for all records with rowids within a specified range is around twice as fast as a similar search made by specifying any other PRIMARY KEY or indexed value.
