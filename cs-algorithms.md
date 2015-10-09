- https://github.com/apache/commons-lang (`hashCode` and `equals` builders)

# Data Structures
- array
- resizing array
- linked list
- binary heap (priority queue)
- hash table
- graph
  + directed / not
  + acyclic / not
- BST

# Tree
- bottom-up search

A tree is a DAG representing a hierarchy (nestedness).

- file systems
- XML/HTML
- AST
- INI file

A tree may have an associated **node selection scheme**:
- file path, shell wildcard expansion, POSIX `find`
- XPath - http://www.w3.org/TR/xpath/
- dot-notation (INI files, java bean property path, view states hierarchy in angular ui-router, java package name)
- URL/URI/URN (http, udp, git, ssh, ftp, etc.)

Most of the node selection schemes deal with the following **concepts**:
- Absolute path
- Canonical path
- Relative path (context-sensitive)
- Wildcard expansion
- Pattern matching
