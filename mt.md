# Resources
- [JLS 8 Threads and Locks](http://docs.oracle.com/javase/specs/jls/se8/html/jls-17.html#jls-17.1)
- [java.lang.Thread](https://docs.oracle.com/javase/8/docs/api/java/lang/Thread.html) - threads in java can only be created by creating an object of `Thread` class.
- [java.util.concurrent](https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/package-summary.html)
- https://en.wikipedia.org/wiki/Context_switch
- https://en.wikipedia.org/wiki/Race_condition
- https://en.wikipedia.org/wiki/Mutual_exclusion
- https://en.wikipedia.org/wiki/Data_integrity
- https://en.wikipedia.org/wiki/Synchronization_(computer_science)

# Concepts
- a conflict occurs if multiple threads try to concurrently access the same memory location where at least one of the accesses is the 'write' access.
- volatile objects - not cached by threads, always read from memory
- thread interleaving
- thread-local variables
- Threads concurrently operate on objects in the shared memory.
- Each thread has its own cache where it stores memory snapshots (may be out-of-sync with the main memory).
- spurious wakeups - implementation concept in jvm
- [Liveness on wikipedia](https://en.wikipedia.org/wiki/Liveness)
- [Monotonic function on wikipedia](https://en.wikipedia.org/wiki/Monotonic_function)

# Linearizability
- [Linearizability on wikipedia](https://en.wikipedia.org/wiki/Linearizability)

# Threads
- Java thread state:
    + id: Long
    + name: String
    + code: Runnable
    + priority: Integer
    + state: one of (NEW, RUNNABLE, BLOCKED, WAITING, TIMED_WAITING, TERMINATED)
    + isDaemon: Boolean
    + isInterrupted: Boolean
    + group: ThreadGroup
    + contextClassLoader: ClassLoader
    + accessControlContext: AccessControlContext
    + threadLocals: ThreadLocal.ThreadLocalMap
    + uncaughtExceptionHandler: UncaughtExceptionHandler
- Java thread operations:
    + native static getThreads: Thread[] (all threads)
    + native static dumpThreads(Thread[]): StackTraceElement[][]
    + native holdsLock(Object): Boolean
    + native interrupt
    + native sleep
    + native yield
    + join (wait until the thread is alive)
    + native Object.notify
    + native Object.notifyAll
    + native Object.wait (and timed wait)

# Java interrupts
- Threads in Java have `interrupted` status flag. JVM examines that flag before some blocking calls and during the time the threads are parked.
- `InterruptedException` can be thrown on a thread only if `Thread.interrupt` is called on it while its blocked in one of `Object.wait`, `Thread.join`, `Thread.sleep`, I/O operation upon `InterruptibleChannel` or `Selector`.

# [Synchronization](https://en.wikipedia.org/wiki/Synchronization_(computer_science))
- Process Synchronization - a mechanism which ensures that multiple concurrent processes or threads do not simultaneously execute critical section of the program.
- [Data Synchronization](https://en.wikipedia.org/wiki/Data_synchronization)

# Locks
- lock
- lock free

## [Monitor](https://en.wikipedia.org/wiki/Monitor_(synchronization))
- A synchronization construct that allows threads to have both mutual exclusion and the ability to wait (block) for a certain condition to become true.
- [Monitor on wikipedia](https://en.wikipedia.org/wiki/Monitor_(synchronization))
- Operations that threads can perform on the monitor:
    + lock
    + unlock
    + wait (block)
    + notify
- Means to obtain monitor lock:
    + static synchronize method
    + synchronize method
    + synchronize statement
- Means to get into the monitor lock wait set
    + wait (and its derivative join)
- Means to get awaken from waiting in the monitor lock wait set
    + be notified by another thread
    + be interrupted by another thread
    + timeout
    + spurious wakeup
- Each object in java has an associated monitor.
- Only one thread at a time can hold a lock on the monitor.
- Monitor locks in java are reentrant.
- [`synchronized` statement in Java](http://docs.oracle.com/javase/specs/jls/se8/html/jls-14.html#jls-14.19) - the lock is released as soon as the thread exits the `synchronized` statement block (either normally or abruptly).
- [`synchronized` method in Java](http://docs.oracle.com/javase/specs/jls/se8/html/jls-8.html#jls-8.4.3.6) - the lock (on `this` or some `Class<?>` object) is released as soon as method is exited (either normally or abruptly).
- Monitor has a wait set of threads (may be empty). Manipulation of wait sets is performed solely thru `Object.wait`, `Object.notify` and `Object.notifyAll` methods. See [`java.lang.Object`](https://docs.oracle.com/javase/8/docs/api/java/lang/Object.html)
- Wait set manipulations can also be affected by the interruption status of a thread, and by the Thread class's methods dealing with interruption. Additionally, the Thread class's methods for sleeping and joining other threads have properties derived from those of wait and notification actions.
- If object started waiting on the condition (using monitor) is never notified by another thread or interrupted it will wait indefinitely.
- Section 14.2 "Java Concurrency in Practice" by Goetz
- Item 69 in Joshua Bloch's "Effective Java 2 ed"


```java
// java - idiom for wait and be protected from spurious wakeups
synchronized (obj) {
    while (<condition does not hold>)
        obj.wait(timeout);
    ... // Perform action appropriate to condition
}
```

## Volatile objects and atomic operations
- [JLS 8 - `volatile` Fields](http://docs.oracle.com/javase/specs/jls/se8/html/jls-8.html#jls-8.3.1.4). In Java a field may be declared `volatile` which guarantees that all threads see a consistent value for the variable.

- lock-free atomic objects
- what is atomic objects as opposed to atomic operations?
- `volatile sig_atomic_t`
- [Understanding `volatile` qualifier in c on geeksforgeeks](http://www.geeksforgeeks.org/understanding-volatile-qualifier-in-c/)
- `stdatomic.h` - c standard
- [`java.util.concurrent.atomic`](https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/atomic/package-summary.html) - A small toolkit of classes that support lock-free thread-safe programming on single variables.

Use `volatile` fields when said field is ONLY UPDATED by its owner thread and the value is only read by other threads. However if multiple threads must perform some logic based on the value of the field and then push back a new value then go with `atomic`, which have `compareAndSet` and `getAndSet` functionality.

# Problems
- deadlock. A deadlock may happen when threads (directly or indirectly) hold locks on multiple objects.
- livelock

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

# Async
- [java.util.concurrent.Future](https://docs.oracle.com/javase/8/docs/api/java/util/concurrent/Future.html)

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

# Errors in threads
- In Java exceptions are local to a thread, and your main thread doesn't actually see the run method. I suggest you read more about how threading works, but to quickly summarize: your call to start starts up a different thread, totally unrelated to your main thread. The call to join simply waits for it to be done. An exception that is thrown in a thread and never caught terminates it, which is why join returns on your main thread, but the exception itself is lost. `Thread.setUncaughtExceptionHandler` can be used to capture uncaught errors in a thread.
