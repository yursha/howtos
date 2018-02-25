System calls are APIs for the interface between the user space and the kernel space.

System calls differ from regular function calls because the code being called is in the kernel. Special instructions are needed to make the processor perform a transition to ring 0 (privileged mode). In addition, the kernel code being invoked is identified by a syscall number, rather than by a function address.

- https://filippo.io/linux-syscall-table/

# How to call the Linux kernel
- Put the system call number in the EAX register.
- Store the arguments to the system call in the registers EBX, ECX, EDX, ESI, EDI, EBP. If there are more than six arguments, then the memory location of the first argument is stored in the EBX register.
- Call the relevant interrupt (80h).
- The result is usually returned in the EAX register.

All the syscalls are listed in `/usr/include/asm/unistd.h`.
In GCE instance they are listed in `/usr/include/asm-generic/unistd.h`.
In Linux kernel source tree are they listed in `arch/<arch_name>/include/uapi/asm/unistd.h`?
In Linux they may be listed in `include/uapi/asm-generic/unistd.h` but I'm not sure.

CPU architectures supported by Linux:
- alpha
- arc
- arm
- arm64
- avr32
- blackfin
- c6x
- cris
- frv
- h8300
- hexagon
- ia64
- m32r
- m68k
- metag
- microblaze
- mips
- mn10300
- nios2
- openrisc
- parisc
- powerpc
- s390
- score
- sh
- sparc
- tile
- um
- unicore32
- x86 (Intel, AMD) (32, x32, 64)
- xtensa

mov eax, 1 ; sys_exit
int 0x80

mov eax, 4 ; sys_write
mov ebx, 1 ; file descriptor (stdout)
mov ecx, msg; message to write
mov edx, len; message length
int 0x80

# Linux system calls
