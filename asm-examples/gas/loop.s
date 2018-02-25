.section .data

str: .asciz "I'll be printed 10 times\n"

.section .text
.globl _start
_start:
  movq $10, %rbx

loop:
  movq $1, %rax   # sys_write
  movq $1, %rdi   # STDOUT
  movq $str, %rsi # str pointer
  movq $26, %rdx  # str length
  syscall

  dec %rbx
  jz out
  jmp loop

out:
  movq $60, %rax # sys_exit
  movq $0, %rdi  # exit status
  syscall
