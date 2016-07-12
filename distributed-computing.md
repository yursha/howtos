# Eventual Consitency
- [Eventual Consitency on wikipedia](https://en.wikipedia.org/wiki/Eventual_consistency)
- [Eventual Consistency by Werner Vogel](http://dl.acm.org/citation.cfm?doid=1435417.1435432)
- [Read-After-Write consistency in Amazon S3 by Shlomo Swidler](http://shlomoswidler.com/2009/12/read-after-write-consistency-in-amazon.html)

# Concepts
- [Vector Clock on wikipedia](https://en.wikipedia.org/wiki/Vector_clock)
- [Conflict-free replicated data type on wikipedia](https://en.wikipedia.org/wiki/Conflict-free_replicated_data_type)
- [CAP theorem](https://en.wikipedia.org/wiki/CAP_theorem)

# Distributed Data Structures (DSS)
A DDS presents a conventional interface as a non-DDS but partitions and replicates the data across a cluster.

DDS properties
- incremental scaling of throughput and data capacity (with increasing data population) - same as power and telephony physical services.
- fault tolerance and high availability - same as power physical services
- high concurrency
- consistency (eventual?)
- durability
- operational manageability

## Distrubuted Hash Table
- [Scalable Distributed Data Structures for Internet Service Construction - Berkeley University](https://www.usenix.org/legacy/event/osdi00/full_papers/gribble/gribble.pdf)
- uses two-phase commits to present a coherent view of its data across all cluster nodes, allowing any node to service any task.
- simplifies internet (web) service by decoupling service-specific logic from the complexities of persistent, consistent state management.

## Distributed Tree

## Distributed Administrative Log
