	.file	"screen.cc"
	.text
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LazClrScr
	.def	_$dll$laz_rtl$LazClrScr;	.scl	2;	.type	32;	.endef
	.seh_proc	_$dll$laz_rtl$LazClrScr
_$dll$laz_rtl$LazClrScr:
.LFB5974:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$96, %rsp
	.seh_stackalloc	96
	.seh_endprologue
	movq	.refptr.LazTerminal(%rip), %rax
	movq	__imp_GetConsoleScreenBufferInfo(%rip), %rsi
	movq	(%rax), %rbx
	leaq	64(%rsp), %rdi
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	*%rsi
	testl	%eax, %eax
	jne	.L17
.L1:
	addq	$96, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	ret
	.p2align 4,,10
.L17:
	movswl	64(%rsp), %ebp
	leaq	60(%rsp), %r12
	xorl	%r9d, %r9d
	movq	%rbx, %rcx
	movswl	66(%rsp), %eax
	movq	%r12, 32(%rsp)
	movl	$32, %edx
	imull	%eax, %ebp
	movl	%ebp, %r8d
	call	*__imp_FillConsoleOutputCharacterA(%rip)
	testl	%eax, %eax
	je	.L1
	movq	%rdi, %rdx
	movq	%rbx, %rcx
	call	*%rsi
	testl	%eax, %eax
	je	.L1
	xorl	%r9d, %r9d
	movzwl	72(%rsp), %edx
	movq	%r12, 32(%rsp)
	movl	%ebp, %r8d
	movq	%rbx, %rcx
	call	*__imp_FillConsoleOutputAttribute(%rip)
	testl	%eax, %eax
	je	.L1
	xorl	%edx, %edx
	movq	%rbx, %rcx
	call	*__imp_SetConsoleCursorPosition(%rip)
	jmp	.L1
	.seh_endproc
	.ident	"GCC: (x86_64-win32-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.section	.rdata$.refptr.LazTerminal, "dr"
	.globl	.refptr.LazTerminal
	.linkonce	discard
.refptr.LazTerminal:
	.quad	LazTerminal
