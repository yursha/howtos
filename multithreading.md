# Refs
- http://www.tutorialspoint.com/operating_system/os_multi_threading.htm

Erlang, Haskell, Go, Rust are designed for concurrency.

# How to measure multithreading efficiency?

- thread confinement
- shared state
- immutability
- thread local state
- synchronization
- lock
    - read lock
    - write lock
    - livelock
    - deadlock
    - promotable lock (from read to write)
    - shared lock vs mutex
- trap
- signal
- scheduling
- future, promise
- fairness policy for ordering threads
Executors maintain thread pools and allow tasks to be submitted into an internal queue (may be unbounded) and executed in worker threads. The can be shutdown after all tasks are finished or immediately (forcefully). Possibility of forceful shutdown means that tasks must handle interrupts gracefully.
Thread pools can have fixed number of threads or limited between min and max. Unlimited thread pools don't exist because the system can shutdown if the number of threads exceeds its capacity. Work stealing strategy can be used to achieve desired level of parallelism which is usually equal to the number of cpu cores available.
Task can be scheduled to run in the future at a specific data or delayed until a specific amount of time elapses. Or they can be scheduled to run periodically at fixed rate or with fixed delays.
Futures or promises contains information about a task, submitted for execution. When the task is complete executor resolves the future.
Tasks can be runnable (doesn't return a value) or callable (return a value).

- async

## Patterns

### Single Producer / Multiple Consumer
- Blocking queues and poison pills

- https://lmax-exchange.github.io/disruptor/

# Data Structures
- **Bounded Buffer** (`ArrayBlockingQueue`) - a thread safe bounded blocking FIFO queue backed by a fixed size array.

# Locking approaches
## Futex
Multiple processes communicate locking state through shared memory regions and atomic operations. Kernel involvement is only necessary when there is contention on a lock, in order to perform queueing and scheduling functions.
- **futex** - fast userspace mutex. A futex consists of a kernelspace wait queue that is attached to an aligned integer in userspace.
- https://en.wikipedia.org/wiki/Futex
- Fuss, Futexes and Furwocks https://www.kernel.org/doc/ols/2002/ols2002-pages-479-495.pdf
- Futexes Are Tricky http://www.akkadia.org/drepper/futex.pdf
- ftp://ftp.kernel.org/pub/linux/kernel/people/rusty/

## `fcntl` locking
- gnu c library `fcntl.h`
- http://man7.org/linux/man-pages/man2/fcntl.2.html
- http://www.gnu.org/software/libc/manual/html_mono/libc.html#File-Locks

## System V semaphores

# Intel
- https://www.threadingbuildingblocks.org/docs/help/index.htm

# Work Scheduling Strategy
- https://en.wikipedia.org/wiki/Work_stealing
- http://stackoverflow.com/questions/10153646/work-task-stealing-threadpoolexecutor

# Java Concurrency
- https://docs.oracle.com/javase/tutorial/essential/concurrency/index.html
- http://www.ibm.com/developerworks/java/library/j-jtp05236/index.html
- http://winterbe.com/posts/2015/04/07/java8-concurrency-tutorial-thread-executor-examples/
