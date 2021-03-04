	.file "sysinit.pas"
# Begin asmlist al_procedures

.section .text.n_sysinit_$$_entry,"x"
	.balign 16,0x90
.globl	SYSINIT_$$_ENTRY
SYSINIT_$$_ENTRY:
.globl	_mainCRTStartup
_mainCRTStartup:
.Lc1:
.seh_proc SYSINIT_$$_ENTRY
# [sysinit.pas]
# [19] begin
	leaq	-40(%rsp),%rsp
.Lc3:
.seh_stackalloc 40
.seh_endprologue
# [20] PascalMain;
	call	PASCALMAIN
# [21] LazExitProcess(0);
	xorl	%ecx,%ecx
	call	_$dll$laz_rtl$LazExitProcess
# [22] end;
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc2:
# End asmlist al_procedures
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc4:
	.long	.Lc6-.Lc5
.Lc5:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc6:
	.long	.Lc8-.Lc7
.Lc7:
	.secrel32	.Lc4
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc8:
# End asmlist al_dwarf_frame

