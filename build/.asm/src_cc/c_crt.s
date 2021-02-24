	.file	"c_crt.c"
	.text
/APP
	.globl DllMainCRTStartup	
DllMainCRTStartup:		
movq $1, %rax			
ret				

	.section .rdata,"dr"
.LC0:
	.ascii "Information\0"
.LC1:
	.ascii "11 Hello World !!!\0"
.LC2:
	.ascii "12121wsss\0"
.LC3:
	.ascii "aaaaaaa\0"
.LC4:
	.ascii "22 Hallo Welt !!!\0"
.LC5:
	.ascii "33 Hallo Welt !!!\0"
.LC6:
	.ascii "44 Hallo Welt !!!\0"
.LC7:
	.ascii "410 Hallo Welt !!!\0"
/NO_APP
	.text
	.p2align 4,,15
	.globl	fpc_initializeunits
fpc_initializeunits:
	pushq	%rbx
	subq	$32, %rsp
	movq	__imp_MessageBoxA(%rip), %rbx
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC0(%rip), %r8
	leaq	.LC1(%rip), %rdx
	call	*%rbx
	leaq	.LC2(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC3(%rip), %rdx
	call	*%rbx
	leaq	.LC0(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC4(%rip), %rdx
	call	*%rbx
	leaq	.LC0(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC5(%rip), %rdx
	call	*%rbx
	leaq	.LC0(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC6(%rip), %rdx
	call	*%rbx
	leaq	.LC0(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC7(%rip), %rdx
	call	*%rbx
/APP
 # 35 "src_cc/c_crt.c" 1
	int $3
 # 0 "" 2
/NO_APP
	addq	$32, %rsp
	popq	%rbx
	ret
	.section .rdata,"dr"
.LC8:
	.ascii "1212\0"
	.text
	.p2align 4,,15
	.globl	P$CRT_$$_WRITELN$SHORTSTRING
P$CRT_$$_WRITELN$SHORTSTRING:
	pushq	%rbx
	subq	$64, %rsp
	leaq	.LC2(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC8(%rip), %rdx
	movl	$174614632, 59(%rsp)
	movb	$0, 63(%rsp)
	call	*__imp_MessageBoxA(%rip)
	movl	$-11, %ecx
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
	.p2align 4,,15
	.globl	_$dll$laz_crt$WriteLn
_$dll$laz_crt$WriteLn:
	pushq	%rbx
	subq	$64, %rsp
	leaq	.LC2(%rip), %r8
	xorl	%r9d, %r9d
	leaq	.LC8(%rip), %rdx
	movq	%rcx, %rbx
	xorl	%ecx, %ecx
	call	*__imp_MessageBoxA(%rip)
	movl	$-11, %ecx
	call	*__imp_GetStdHandle(%rip)
	leaq	60(%rsp), %r9
	movl	$5, %r8d
	movq	%rbx, %rdx
	movq	$0, 32(%rsp)
	movq	%rax, %rcx
	call	*__imp_WriteConsoleA(%rip)
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
	.section .rdata,"dr"
.LC9:
	.ascii "55 Hallo Welt !!!\0"
	.text
	.p2align 4,,15
	.globl	_$dll$laz_crt$UpperCase
_$dll$laz_crt$UpperCase:
	subq	$40, %rsp
	leaq	.LC0(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC9(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
/APP
 # 73 "src_cc/c_crt.c" 1
	nop
 # 0 "" 2
/NO_APP
	addq	$40, %rsp
	ret
	.section .rdata,"dr"
.LC10:
	.ascii "info 1\0"
.LC11:
	.ascii "1-32-00-01\0"
	.text
	.p2align 4,,15
	.globl	_$dll$laz_crt$LazExitProcess
_$dll$laz_crt$LazExitProcess:
	leaq	.LC10(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC11(%rip), %rdx
jmp *__imp_MessageBoxA(%rip)
ret
	.section .rdata,"dr"
.LC12:
	.ascii "2-672-00-02\0"
	.text
	.p2align 4,,15
	.globl	_$dll$kernel32$ExitProcess
_$dll$kernel32$ExitProcess:
	leaq	.LC10(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC12(%rip), %rdx
jmp *__imp_MessageBoxA(%rip)
ret
	.section .rdata,"dr"
.LC13:
	.ascii "2-02-00-02\0"
	.text
	.p2align 4,,15
	.globl	LAZEXITPROCEDURE
LAZEXITPROCEDURE:
	leaq	.LC10(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC13(%rip), %rdx
jmp *__imp_MessageBoxA(%rip)
ret
