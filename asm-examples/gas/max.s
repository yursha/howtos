# Sample program to find max value

.section .data

numbers: .quad 105, 235, 61, 315, 134, 221, 53, 145, 117, 5
output: .asciz "The largest value is %ld\n"

.section .text

.globl _start
_start:
  movq numbers, %rbx # holds a maximum number
  movq $1, %r12      # counter to loop through numbers

loop:
  movq numbers(, %r12, 8), %r13 # holds a number to compare against max
  cmp %rbx, %r13
  cmova %r13, %rbx

  inc %r12
  cmp $10, %r12
  jne loop

show:
  movq $output, %rdi
  movq %rbx, %rsi
  call printf

end:
  movq $0, %rdi
  call exit
