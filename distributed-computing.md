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
- https://www.google.com/webhp?sourceid=chrome-instant&ion=1&espv=2&ie=UTF-8#q=distributed%20data%20structures

## Distributed Tree

## Distributed Administrative Log
