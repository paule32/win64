	.file "Windows.pas"
# Begin asmlist al_procedures

.section .text.n_windows_$$_dummy,"x"
	.balign 16,0x90
WINDOWS_$$_DUMMY:
.Lc1:
# [Windows.pas]
# [16] procedure dummy; begin end;
	ret
.Lc2:
# End asmlist al_procedures
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc3:
	.long	.Lc5-.Lc4
.Lc4:
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
.Lc5:
	.long	.Lc7-.Lc6
.Lc6:
	.secrel32	.Lc3
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.balign 4,0
.Lc7:
# End asmlist al_dwarf_frame

