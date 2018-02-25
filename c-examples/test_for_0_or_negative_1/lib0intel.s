	.text
	.intel_syntax noprefix
	.file	"lib.c"
	.globl	test_me
	.align	16, 0x90
	.type	test_me,@function
test_me:                                # @test_me
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp2:
	.cfi_def_cfa_register rbp
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	je	.LBB0_2
# BB#1:
	mov	dword ptr [rbp - 4], 255
	jmp	.LBB0_5
.LBB0_2:
	cmp	dword ptr [rbp - 8], -1
	jne	.LBB0_4
# BB#3:
	mov	dword ptr [rbp - 4], 4095
	jmp	.LBB0_5
.LBB0_4:
	mov	dword ptr [rbp - 4], 65535
.LBB0_5:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret
.Lfunc_end0:
	.size	test_me, .Lfunc_end0-test_me
	.cfi_endproc


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
