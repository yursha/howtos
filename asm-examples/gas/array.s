# Sample program to demonstrate arrays and indexed memory access

#.section .rodata

#pi:
#  .float 3.14

.section .data

array:
  .quad 2, 0, 1, 6

#  .equ myconstant, 10

output:
  .asciz "The value is %ld\n"

#pi_msg:
#  .asciz "The PI is %d\n"

#constant_msg:
#  .asciz

.section .text

.globl _start
_start:

  movq $0, %r10

loop:
  movq array(, %r10, 8), %rsi
  movq $output, %rdi

  call printf

  inc %r10
  cmpq $4, %r10
  jne loop

#end:
  movq $1, %rax
  movq $0, %rbx
  int $0x80
