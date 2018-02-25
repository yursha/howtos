	.text
	.file	"lib.c"
	.globl	test_me
	.align	16, 0x90
	.type	test_me,@function
test_me:                                # @test_me
	.cfi_startproc
# BB#0:
	testl	%edi, %edi
	movl	$65535, %ecx            # imm = 0xFFFF
	movl	$255, %eax
	cmovel	%ecx, %eax
	retq
.Lfunc_end0:
	.size	test_me, .Lfunc_end0-test_me
	.cfi_endproc


	.ident	"clang version 3.8.1-24 (tags/RELEASE_381/final)"
	.section	".note.GNU-stack","",@progbits
