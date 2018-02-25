# Sample program to extract the processor Vendor ID
#
# To build:
# `as -o cpuid.o cpuid.s`
# `ld -o cpuid cpuid.o`
#
# Or with GCC:
# Change '_start' label to 'main'
# `gcc -o cpuid cpuid.s`
#
# Or with gdb info:
# `as -gstabs -o cpuid.o cpuid.s`
# `ld -o cpuid cpuid.o`
# `gdb cpuid`
# `break *_start`
# `run`

.section .data
output: .asciz "The processor Vendor ID is 'xxxxxxxxxxxx'\n"

.section .text
.global _start
_start:
    movq $0, %rax
    cpuid

    movq $output, %rdi
    movq %rbx, 28(%rdi)
    movq %rdx, 32(%rdi)
    movl %ecx, 36(%rdi)

    movl $4, %eax # Linux syscall 'Write'
    movl $1, %ebx # STDOUT
    movl $output, %ecx # String start
    movl $42, %edx # String length
    int $0x80

    movl $1, %eax # Linux syscall 'Exit'
    movl $0, %ebx # Exit code 0
    int $0x80
