# Concepts
- a conflict occurs if multiple threads try to concurrently access the same memory location where at least one of the accesses is the 'write' access.
- volatile objects - not cached by threads, always read from memory
- lock-free atomic objects
- `volatile sig_atomic_t`

# Refs
- http://www.tutorialspoint.com/operating_system/os_multi_threading.htm
- http://www.personal.kent.edu/~rmuhamma/OpSystems/Myos/threads.htm
- https://www.cs.uic.edu/~jbell/CourseNotes/OperatingSystems/4_Threads.html
- https://en.wikipedia.org/wiki/Multithreading_%28computer_architecture%29
- https://en.wikipedia.org/wiki/Thread_%28computing%29
- http://stackoverflow.com/questions/14795145/how-the-single-threaded-non-blocking-io-model-works-in-node-js
- http://www.cs.iit.edu/~cs561/cs450/ChilkuriDineshThreads/dinesh's%20files/User%20and%20Kernel%20Level%20Threads.html
- https://books.google.com/books?id=hM98BAAAQBAJ&pg=PA235&lpg=PA235&dq=how+thread+blocking+works+on+OS+level&source=bl&ots=wunSJxwlQ_&sig=2c_iM8-zeXGOiYtvcXK7nvSZ1KM&hl=en&sa=X&ved=0ahUKEwjb4v_PzNzKAhUD52MKHQwbCxQQ6AEISTAH#v=onepage&q=how%20thread%20blocking%20works%20on%20OS%20level&f=false
- https://www.cs.rutgers.edu/~pxk/416/notes/05-threads.html
- http://faculty.cs.tamu.edu/bettati/Courses/410/2014A/Slides/threads.pdf
- http://stackoverflow.com/questions/5803715/how-to-make-a-thread-sleep-block-for-nanoseconds-or-at-least-milliseconds
- http://stackoverflow.com/questions/1888160/distinguish-java-threads-and-os-threads

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
- Brian Goetz - article http://www.ibm.com/developerworks/library/j-jtp0730/

`Executors` is an abstraction which possibly shouldn't be used.
Reasearch the following:
- ArrayBlockingQueue
- LinkedBlockingQueue
- SynchronousQueue
- ForkJoinPool
- ScheduledThreadPoolExecutor
- ExecutorService
- AbstractExecutorService
- ThreadPoolExecutor
- ThreadFactory
- CompletionService
- ExecutorCompletionService
- Future
- FutureTask
- Google Guava Concurrency facilities

An executor service combines work queues and thread pools:
- rejected execution handler

A work queue is a queue of callable tasks.
- bounded or unbounded
- 'queue is full' handling policy

A thread pool is a pool of threads:
- thread creation policy
- idle threads eviction policy
- pool size policy
