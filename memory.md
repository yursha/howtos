# Data can live in memory in:
- Stack (How stack memory is allocated in Linux? Is the a maximum limit?)
- Program image
- thread-local area
- heap. Variably sized objects can only be allocated on the heap.

# Allocation
```c
// c - glibc

// allocate memory that is automatically freed
void *alloca(size_t size); // <alloca.h>

// <stdlib.h>
// allocate memory of {size} size
void *malloc(size_t size);

// free memory
void free(void *ptr);

// allocate memory of {nmemb}*{size} size (for arrays)
void *calloc(size_t nmemb, size_t size);

// reallocate memory
void *realloc(void *prt, size_t size);
```

```c
// c - kernel

// set the end of the process's data segment
int brk(void *addr);

// decrement/increment the end of the process's data segement
void *sbrk(intptr_t increment);

```

# Options
- [jemalloc](http://www.canonware.com/jemalloc/) - a general purpose malloc(3) implementation that emphasizes fragmentation avoidance and scalable concurrency support.
- Google for jemalloc for other very interesting resources

## Memory allocation
With JVM command-line options one can configure initial and max heap sizes and stack size for the environment.
- `javah`

## HPROF (Heap Profiler)
- https://docs.oracle.com/javase/8/docs/technotes/samples/hprof.html
- https://java.net/projects/hat/ - Web Heap Analysis Tool.
- `java -agentlib:hprof=help` - get help about possible usages of HPROF

# Writing to memory
- `#include <string.h>`
  - `memset`

