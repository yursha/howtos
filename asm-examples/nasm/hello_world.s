SYS_EXIT  equ 1
SYS_WRITE equ 4
STDIN     equ 0
STDOUT    equ 1

section .text
    global _start   ;must be declared for linker (ld)
_start:             ;tells linker entry point
    mov eax, SYS_WRITE
    mov ebx, STDOUT
    mov ecx, msg     ;message to write
    mov edx, len     ;message length
    int 0x80

    mov eax, SYS_EXIT
    int 0x80

section .data
msg db 'Hello, world!', 0xa  ;string to be printed
len equ $ - msg     ;length of the string
