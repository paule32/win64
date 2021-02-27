	.file	"kernel32.cc"
	.text
	.p2align 4,,15
	.globl	_$dll$laz_win$ExitProcess
_$dll$laz_win$ExitProcess:
.LFB5974:
	subq	$40, %rsp
	call	*__imp_ExitProcess(%rip)
	nop
