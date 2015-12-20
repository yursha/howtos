Erlang, Haskell, Go, Rust are designed for concurrency.

# Multithreading

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
