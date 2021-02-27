	.file	"c_crt.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "Information\0"
.LC1:
	.ascii "410 Hallo Welt !!!\0"
	.text
	.p2align 4,,15
	.globl	fpc_initializeunits
fpc_initializeunits:
	leaq	.LC0(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC1(%rip), %rdx
jmp *__imp_MessageBoxA(%rip)
ret
	.p2align 4,,15
	.globl	P$CRT_$$_WRITELN$SHORTSTRING
P$CRT_$$_WRITELN$SHORTSTRING:
	pushq	%rbx
	subq	$64, %rsp
	movl	$-11, %ecx
	movl	$174614632, 59(%rsp)
	movb	$0, 63(%rsp)
	call	*__imp_GetStdHandle(%rip)
	movl	$-1, %ecx
	movq	%rax, %rbx
	call	*__imp_AttachConsole(%rip)
	leaq	59(%rsp), %rdx
	movl	$4, %r8d
	movq	%rbx, %rcx
	movq	$0, 32(%rsp)
	leaq	52(%rsp), %r9
	call	*__imp_WriteConsoleA(%rip)
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
