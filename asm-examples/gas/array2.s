# Sample program to demonstrate arrays and indexed memory access

.section .data

array: .quad 2, 0, 1, 6
output: .asciz "The value is %ld\n"

.section .text

.globl _start
_start:

  movq $0, %r15

loop:

  movq array(, %r15, 8), %rsi
  movq $output, %rdi

  call printf

  inc %r15

  cmpq $4, %r15
  jne loop

end:

  movq $1, %rax
  movq $0, %rbx
  int $0x80
