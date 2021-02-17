	.file "crt.pas"
# Begin asmlist al_procedures

.section .text.n_p$crt_$$_writeln$shortstring,"x"
	.balign 16,0x90
.globl	P$CRT_$$_WRITELN$SHORTSTRING
P$CRT_$$_WRITELN$SHORTSTRING:
.Lc1:
# Temps allocated between rbp-264 and rbp-8
.seh_proc P$CRT_$$_WRITELN$SHORTSTRING
# [crt.pas]
# [6] begin
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rsp,%rbp
.Lc5:
	leaq	-304(%rsp),%rsp
.seh_stackalloc 304
.seh_endprologue
# Var s located at rbp-8, size=OS_64
	movq	%rcx,-8(%rbp)
	movq	-8(%rbp),%rax
	movq	%rax,%r8
	movq	$255,%rdx
	leaq	-264(%rbp),%rcx
	call	fpc_shortstr_to_shortstr
# [7] AllocConsole;
	call	_$dll$kernel32$AllocConsole
# [8] end;
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc2:

.section .text.n_p$crt_$$_main,"x"
	.balign 16,0x90
.globl	PASCALMAIN
PASCALMAIN:
.globl	P$CRT_$$_main
P$CRT_$$_main:
.Lc6:
.seh_proc P$CRT_$$_main
# [10] end.
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	call	fpc_libinitializeunits
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc7:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .data.n_INITFINAL,"d"
	.balign 8
.globl	INITFINAL
INITFINAL:
	.quad	3,0
	.quad	INIT$_$SYSTEM
	.quad	0
	.quad	INIT$_$FPINTRES
	.quad	0,0
	.quad	FINALIZE$_$OBJPAS

.section .data.n_FPC_THREADVARTABLES,"d"
	.balign 8
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	1
	.quad	THREADVARLIST_$SYSTEM$indirect

.section .rodata.n_FPC_RESOURCESTRINGTABLES,"d"
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.quad	0

.section .data.n_FPC_WIDEINITTABLES,"d"
	.balign 8
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.quad	0

.section .data.n_FPC_RESSTRINITTABLES,"d"
	.balign 8
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.quad	0

.section .fpc.n_version
	.balign 16
__fpc_ident:
	.ascii	"FPC 3.2.0 [2020/07/07] for x86_64 - Win64"

.section .data.n___heapsize,"d"
	.balign 8
.globl	__heapsize
__heapsize:
	.quad	0

.section .data.n___fpc_valgrind,"d"
	.balign 8
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0
# End asmlist al_globals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc11:
	.long	.Lc13-.Lc12
.Lc12:
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
.Lc13:
	.long	.Lc15-.Lc14
.Lc14:
	.secrel32	.Lc11
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc4-.Lc3
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc5-.Lc4
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc15:
	.long	.Lc17-.Lc16
.Lc16:
	.secrel32	.Lc11
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc9-.Lc8
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc10-.Lc9
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc17:
# End asmlist al_dwarf_frame

