section	.text
   global _start        ;must be declared for using gcc
	
_start:	                ;tell linker entry point

next:
   mov     eax, 4
   mov     ebx, 1
   mov     ecx, achar
   mov     edx, 1
   int     80h
	
   inc     byte [achar]
   cmp byte [achar], '~'
   jle next

end:
   mov     eax, 4
   mov     ebx, 1
   mov     ecx, newline
   mov     edx, 1
   int     0x80

   mov	eax, 1	        ;system call number (sys_exit)
   int	0x80	        ;call kernel


	
section .data
achar db '0'  
newline db 0xA
