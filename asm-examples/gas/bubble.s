# Bubble sort algorithm

.section .data

values:
  .quad 105, 235, 61, 315, 134, 221, 53, 145, 117, 5

.section .text
.globl _start
_start:
  movq $values, %rbx
  movq $9, %r12
  movq $9, %r13

loop:
  movq (%rbx), %r14
  cmp %r14, 8(%rbx)
  jge skip
  xchg %r14, 8(%rbx)
  movq %r14, (%rbx)

skip:
  add $8, %rbx
  dec %r12
  jnz loop
  dec %r13
  jz end
  movq $values, %rbx
  movq %r13, %r12
  jmp loop

end:
  movq $60, %rax # sys_exit
  movq $0, %rdi  # exit status
  syscall
