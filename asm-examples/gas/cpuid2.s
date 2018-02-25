# View the CPUID Vendor ID string using C library calls
#
# Run instructions:
# ./gas_run gas/cpuid2.s -lc

.section .text
.globl _start
_start:
  movl $0, %eax
  cpuid

  movl $buffer, %edi
  movl %ebx, (%edi)
  movl %edx, 4(%edi)
  movl %ecx, 8(%edi)

  pushq $buffer
  pushq $output
  call printf

  addq $16, %rsp # clear stack

  push $0
  call exit

.section .data
output:
  .asciz "The processor Vendor ID is '%s'\n"

.section .bss
  .lcomm buffer, 12
