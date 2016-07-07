- https://github.com/apache/commons-lang (`hashCode` and `equals` builders)
- https://github.com/raywenderlich/swift-algorithm-club
- https://github.com/parkjs814/AlgorithmVisualizer

# Data structures
- [Bloom filter](https://en.wikipedia.org/wiki/Bloom_filter)

## Implementations
- Array
    + Dynamic array
        + Hash Table
- Linked data structure (aka Graph) (ex. OOP structures, C structs)
    + Undirected graph
    + Directed graph (DFS, BFS)
        + Cyclic graph
            + Doubly-linked list (FIFO Queue)
        + Acyclic graph (DAG) (aka Tree, aka Hierarchy) (ex. Filesystem, XML/HTML, AST, INI file)
            + unary tree (aka Singly-linked list) (LIFO Stack)
            + N-ary tree
            + Binary tree
                + Binary Search tree (aka BST) - sorted, search (1), insert (log)
                    + Unbalanced
                    + Balanced
                        + Red-Black Tree
                + Binary heap (aka priority queue)

## Concepts
- Sequence (tail, head)
- Stack (LIFO) (push, pop, peek)
- Queue (FIFO) (enqueue, dequeue, peek)
- Priority Queue (aka min/max queue)
- Set
- Map
- Tuple

Lists and array are sequential data structures (aka sequences)

# Tree
Tree order is one of its traversal orders

## Traversals
- depth-first

- bottom-up search

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

# Math
- median - R7 Algorithm (https://en.wikipedia.org/wiki/Quantile#Quantiles_of_a_population)

# Square toot
- Newton's method

# Fibonacci sequence

# Hash Table
- linear probing
- buckets

# Graphs
- http://www.geeksforgeeks.org/transitive-closure-of-a-graph/
