# Fork a process
## Java
- `java.lang.Runtime.exec`
- `java.lang.Process`
- `java.lang.ProcessBuilder`

# Inter Process Communication

- How signals work?
- gnu c lib `signal.h`
- some signals generate `core` files (core dumps) in the process CWD
- http://www.gnu.org/software/libc/manual/html_mono/libc.html#Signal-Handling
- Bookmark: http://www.gnu.org/software/libc/manual/html_mono/libc.html#Signal-Actions

Inter-process synchronization may be achieved buy using files with agreed upon names as locks.
Acquiring a lock means assuring that such file doens't exist and creating such a file in atomic operation (most OS expose corresponding system calls).
Releasing a lock means deleting such a file.
