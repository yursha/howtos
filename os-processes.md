# Fork a process
## Java
- `java.lang.Runtime.exec`
- `java.lang.Process`
- `java.lang.ProcessBuilder`

# Inter Process Communication

- How signals work?

Inter-process synchronization may be achieved buy using files with agreed upon names as locks.
Acquiring a lock means assuring that such file doens't exist and creating such a file in atomic operation (most OS expose corresponding system calls).
Releasing a lock means deleting such a file.
