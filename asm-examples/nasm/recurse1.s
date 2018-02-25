section	.text
   global _start         ;must be declared for using gcc
	
_start:                  ;tell linker entry point

   mov ax, 1             ;multiplication identity
   mov bx, 3             ;for calculating factorial 3
   call  factorial
   add   ax, 30h
   mov  [fact], ax
    
   mov	  edx,len        ;message length
   mov	  ecx,msg        ;message to write
   mov	  ebx,1          ;file descriptor (stdout)
   mov	  eax,4          ;system call number (sys_write)
   int	  0x80           ;call kernel

   mov   edx,1            ;message length
   mov	  ecx,fact       ;message to write
   mov	  ebx,1          ;file descriptor (stdout)
   mov	  eax,4          ;system call number (sys_write)
   int	  0x80           ;call kernel
    
   mov   edx,1            ;message length
   mov	  ecx,newline       ;message to write
   mov	  ebx,1          ;file descriptor (stdout)
   mov	  eax,4          ;system call number (sys_write)
   int	  0x80           ;call kernel

   mov	  eax,1          ;system call number (sys_exit)
   int	  0x80           ;call kernel

print_eax:
   mov [buf], eax
   mov   edx,1            ;message length
   mov	  ecx,buf      ;message to write
   mov	  ebx,1          ;file descriptor (stdout)
   mov	  eax,4          ;system call number (sys_write)
   int	  0x80           ;call kernel
   mov eax, buf
    
   mov   edx,1            ;message length
   mov	  ecx,newline       ;message to write
   mov	  ebx,1          ;file descriptor (stdout)
   mov	  eax,4          ;system call number (sys_write)
   int	  0x80           ;call kernel
   ret

	
factorial:
   cmp   bl, 1
   jg    greater
   ret
	
greater:
   dec   bl
   call  factorial
   inc   bl
   mul   bl        ;ax = al * bl
   ret


section	.data
msg db 'Factorial 3 is '
len equ $ - msg			
newline db 0xA

section .bss
buf resb 1
section .bss
fact resb 1
