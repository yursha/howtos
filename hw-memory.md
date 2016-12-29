# Concepts
- Memory access can be read or write access.
- alignment

## Data can live in memory in:
- runtime stack
- program image, aka static storage area
- thread-local area
- heap. Variably sized objects can only be allocated on the heap.

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
For server deployments, -Xms and -Xmx are often set to the same value.
- http://docs.oracle.com/javase/8/docs/technotes/guides/vm/gctuning/index.htm

- `java -Xms1g` - set initial heap size to 1GB
- `java -Xmx1g` - set max heap size to 1GB
- `java -Xloggc:gc.log` - log gc events into file
- `java -Xss1m` - set thread stack size
- `java -XX:+PerfDataSaveToFile`

- `java -agentlib:hprof=heap=dump,file=myprogram.hprof` - generate heap dump
- `java -agentlib:hprof=heap=sites,file=myprogram.hprof` - get heap usage info based on the allocation sites
- `jmap` - attaches to a running JVM and generates a heap dump
- `jhat` - analyze binary heap dumps

- `jcmd` - attaches to a running JVM
- `jinfo` - attaches to a running JVM
- `jdb`
- `javah`

## HPROF (Heap Profiler)
- https://docs.oracle.com/javase/8/docs/technotes/samples/hprof.html
- https://java.net/projects/hat/ - Web Heap Analysis Tool.
- `java -agentlib:hprof=help` - get help about possible usages of HPROF

