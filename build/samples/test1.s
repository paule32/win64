	.file "test1.pas"
	.balign 16,0x90
.globl	PASCALMAIN
PASCALMAIN:
	pushq	%rbp
	movq	%rsp,%rbp

	movl	$1,%ecx
	call	_$dll$laz_crt$LazExitProcess1

	movl	$2,%ecx
	call	_$dll$laz_crt$LazExitProcess2


	movl	$0, %ecx
	movq	__imp_ExitProcess(%rip), %rax
	call	*%rax

	leaq	(%rbp),%rsp
	popq	%rbp
	ret
