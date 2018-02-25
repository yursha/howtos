	.text
	.file	"lib.c"
	.globl	test_me
	.align	16, 0x90
	.type	test_me,@function
test_me:                                # @test_me
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	movl	%edi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB0_2
# BB#1:
	movl	$255, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	cmpl	$-1, -8(%rbp)
	jne	.LBB0_4
# BB#3:
	movl	$4095, -4(%rbp)         # imm = 0xFFF
	jmp	.LBB0_5
.LBB0_4:
	movl	$65535, -4(%rbp)        # imm = 0xFFFF
.LBB0_5:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	test_me, .Lfunc_end0-test_me
	.cfi_endproc


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
