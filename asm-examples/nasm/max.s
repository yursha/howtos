SYS_EXIT  equ 1
SYS_READ  equ 3
SYS_WRITE equ 4
STDIN     equ 0
STDOUT    equ 1

segment .data

   prompt db "Enter a double-digit number: ", 0xA
   prompt_length equ $- prompt

   result_message db "First number is "
   result_message_length equ $- result_message

   less_message db "less", 0xA
   less_message_length equ $- less_message

   greater_message db "greater", 0xA
   greater_message_length equ $- greater_message

   equal_message db "equal", 0xA
   equal_message_length equ $- equal_message

   newline db 0xA


segment .bss

   num1 resb 4
   num2 resb 4

section .text
   global _start    ;must be declared for using gcc

_start:             ;tell linker entry point

   ; ask the user to enter first number
   mov eax, SYS_WRITE
   mov ebx, STDOUT
   mov ecx, prompt
   mov edx, prompt_length
   int 0x80

   ; read first number
   mov eax, SYS_READ
   mov ebx, STDIN
   mov ecx, num1
   mov edx, 4
   int 0x80

   ; ask the user to enter second number
   mov eax, SYS_WRITE
   mov ebx, STDOUT
   mov ecx, prompt
   mov edx, prompt_length
   int 0x80

   ; read second number
   mov eax, SYS_READ
   mov ebx, STDIN
   mov ecx, num2
   mov edx, 4
   int 0x80

   ; output result prelude
   mov eax, SYS_WRITE
   mov ebx, STDOUT
   mov ecx, result_message
   mov edx, result_message_length
   int 0x80

   ; comparing two numbers
   mov eax, [num1]
   cmp eax, [num2]
   jg first_is_greater
   jz both_equal

; second is greater:

   mov eax, SYS_WRITE
   mov ebx, STDOUT
   mov ecx, less_message
   mov edx, less_message_length
   int 0x80
   jmp exit

first_is_greater:

   mov eax, SYS_WRITE
   mov ebx, STDOUT
   mov ecx, greater_message
   mov edx, greater_message_length
   int 0x80
   jmp exit

both_equal:

   mov eax, SYS_WRITE
   mov ebx, STDOUT
   mov ecx, equal_message
   mov edx, equal_message_length
   int 0x80

exit:

   mov eax, SYS_EXIT
   xor ebx, ebx
   int 0x80
