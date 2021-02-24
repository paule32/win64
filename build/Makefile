# ----------------------------------------------------------------
# This file is part of Lazarus RTL.
#
# (c) Copyright 2003 Florian Klaempfl
# (c) Copyright 2021 Jens Kallup - paule32
#
# only for non-profit usage !!!
#
# This Makefile was hand-coded. So if you found bugs, please
# let it me know, and write a bug report to: <kallup.jens@web.de>
# This project and all it's content are tested under:
# - Microsoft Windows 10 Pro 64-Bit Edition.
# -
# I don't give any gurantees of correct, and stable using!
# YOU USE IT, AT YOUR OWN RISK !
# ----------------------------------------------------------------

all: pre_tasks $(SAMPLE_EXE)

# --------------------------------------------------
# this section is user/developer speciefic.
# you have to set on your own ...
# --------------------------------------------------
CC        = gcc    # i used MinGW-64 8.6.0
FPC       = fpc    # tests with 3.2.0
GDB       = gdb    # command line

# ---------------------------------------------------------
# the command's below should be come with the MinGW Utils.
# ---------------------------------------------------------
RM        = rm -rf
MKDIR     = mkdir -p
COPY      = cp
ECHO      = echo
SED       = sed
STRIP     = strip

# ----------------------------------------
# gnu c/c++ speciefied compiler flags.
# default: win64
# ----------------------------------------
CFLAGS    = -m64 -I. -O2
FPC_FLAGS = -n -s -Ur -Xe -WN -O2
GDB_FLAG  = -ggdb

# -----------------------
# temporary settings ...
# -----------------------
ASM_DIR = .asm
OBJ_DIR = .obj

# ---------------------------
# the source directories ...
# ---------------------------
SRC_DIR = src
PAS_SRC = $(SRC_DIR)_pp
CPP_SRC = $(SRC_DIR)_cc
# ---- #
PAS_ASM = $(ASM_DIR)/$(PAS_SRC)
PAS_OUT = $(OBJ_DIR)/$(PAS_SRC)
# ---- #
CPP_ASM = $(ASM_DIR)/$(CPP_SRC)
CPP_OUT = $(OBJ_DIR)/$(CPP_SRC)

# -------------------------------------
# the entiere source files ...
# -------------------------------------
CPP_SRC_FILES =           \
	$(CPP_SRC)/c_crt.c    \
	$(CPP_SRC)/Forms.c    \
	$(CPP_SRC)/SysUtils.c
#
CPP_ASM_FILES =           \
	$(CPP_ASM)/c_crt.s    \
	$(CPP_ASM)/Forms.s    \
	$(CPP_ASM)/SysUtils.s
#
PAS_SRC_FILES =           \
	$(PAS_SRC)/vcl/Forms.pas
#
PAS_ASM_FILES =           \
	$(PAS_ASM)/vcl/Forms.s

# -------------------------------------
# the corresponding .o bject files ...
# -------------------------------------
CPP_OBJ_FILES =           \
	$(CPP_OUT)/c_crt.o    \
	$(CPP_OUT)/Forms.o    \
	$(CPP_OUT)/SysUtils.o
#
PAS_OBJ_FILES =            \
	$(PAS_OUT)/vcl/Forms.o

SRC_FILES = $(CPP_SRC_FILES) $(PAS_SRC_FILES)
ASM_FILES = $(CPP_ASM_FILES) $(PAS_ASM_FILES)
OBJ_FILES = $(CPP_OBJ_FILES) $(PAS_OBJ_FILES)

# ------------------------------------------
# now, hand sorted .dll .o bject files ...
# ------------------------------------------
CRT_DLLOF = \
	$(CPP_OUT)/c_crt.o    \
	$(CPP_OUT)/SysUtils.o

VCL_DLLOF = \
	$(PAS_OUT)/vcl/Forms.o \
	$(CPP_OUT)/Forms.o

# -----------------------------------------------------------
# these definitions for windows .dll file are hard written,
# so it may be can differ ...
# for creating the .dll / .a rchive file, i used the mingw64
# GNU GCC compiler under windows 10 Professional.
# C is case-sensitive, and C++ is mangled !!!
# -----------------------------------------------------------
EXEC_FILEEXT  = .exe

# ---------------------------------------------------------
# this shell command store the "current working dir" into
# the variable CWD ...
# my default developer directory/hard disk is on E:
# Windows/DOS uses backslashes \ instead Unix slashes /
# so, i convert /e/ to e:\
# ---------------------------------------------------------
CWD         = $(shell pwd)
UNIT_PAT    = $(subst /,\,$(subst /e/,e:\,$(CWD)))
UNIT_DIR    = $(UNIT_PAT)
#
FPC_FLAGS  += -Fu$(UNIT_DIR)/$(PAS_SRC)
FPC_FLAGS  += -Fu$(UNIT_DIR)/$(PAS_ASM)/vcl
#
Forms_TForm   = FORMS'$$'_'$$'TOBJECT_'$$'__'$$''$$'
Forms_TObject = FORMS'$$'_'$$'TOBJECT_'$$'__'$$''$$'
Laz_CRT       = _'$$'dll'$$'laz_crt'$$'
# ------------------------------------------------------
# this is a place-holder macro, to hold text read-able.
# ------------------------------------------------------
define dll_export =
	$(ECHO) $(1)$(2)'$$''$$'$(3) >> $(4)
endef

# ---------------------------------------------------------------------
# i hard hand-code the .def file, because the automatic
# procedure get many extra informations, that are not needed;
# so the size of the .dll file is smaller.
# ----------------------------------------------------------------------
define crt_def
	$(ECHO) EXPORTS                        > $(1)
	$(ECHO) $(Laz_CRT)LazExitProcess      >> $(1)
	$(ECHO) $(Laz_CRT)UpperCase           >> $(1)
	$(ECHO) $(Laz_CRT)WriteLn             >> $(1)
	$(ECHO) fpc_ansistr_decr_ref          >> $(1)
	$(ECHO) fpc_do_exit                   >> $(1)
	$(ECHO) FPC_DO_EXIT                   >> $(1)
	$(ECHO) fpc_get_input                 >> $(1)
	$(ECHO) fpc_initializeunits           >> $(1)
	$(ECHO) FPC_INITIALIZEUNITS           >> $(1)
	$(ECHO) fpc_iocheck                   >> $(1)
	$(ECHO) fpc_readln_end                >> $(1)
	$(ECHO) FPC_READLN_END                >> $(1)
endef

# ------------------------------------------------------
# these are the hand coded VCL symbols, that i had
# outsource/re-write from source.
# so your .exe files no longer be so biiigg ...
# ------------------------------------------------------
define vcl_def
	$(ECHO) EXPORTS                        > $(1)
	$(call dll_export,$(Forms_TForm),_CREATE,QWORDBOOL,$(1))
	$(call dll_export,$(Forms_TObject),_CREATE,QWORDBOOL,$(1))
	$(ECHO) $(Forms_TObject)_TESTA        >> $(1)
endef

# --------------------------------------------------------
# that you can use the compiled fpc / c / c++ unit codes,
# we have to create an .a rchive file, which contains the
# "import" symbols to call the functions in the .dll file
# --------------------------------------------------------
define dll_a =
	dlltool                  \
		--def     $(2)       \
		--dllname $(subst lib,,$(subst .def,.dll,$(2))) \
		--output-lib $(1)
	$(STRIP) $(subst lib,,$(subst .def,.dll,$(2)))
endef

# --------------------------------------------
# this section, delete all the compiler crap.
# as result, we have smaller binary files.
# --------------------------------------------
sed_ws     =^\#[[:space:]]*
sed_wsalst =[[:space:]]*asmlist[[:space:]]*al
sed_asmbeg =$(sed_ws)Begin$(sed_wsalst)
sed_asmend =$(sed_ws)End$(sed_wsalst)
sed_seh    =^[[:space:]]*\.seh
sed_sec    =^\.section[[:space:]]*\.

define shlp =
	$(SED) -i $(1) $(2)
endef

# -------------------------------------------------------------
# as advice: i mess a short time, to come to the Makefile
# syntax, that "$(subst ,$(;),$(text))" hold the comma
# at the middle of the sed command /,/ # i don't know why $(;)
# is used there, but I get this trick by a google.com
# stackoverflow research.
# -------------------------------------------------------------
define strip_compiler =
	$(ECHO) remove compiler crap off: $(1)
	$(call shlp,$(subst ,$(;),'/$(sed_asmbeg)_dwarf_frame/,/$(sed_asmend)_dwarf_frame/d'),$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_asmbeg)_globals/,/$(sed_asmend)_globals/d'),$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_asmbeg)_indirectglobals/,/$(sed_asmend)_indirectglobals/d'),$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_asmbeg)_rtti/,/$(sed_asmend)_rtti/d'),$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_sec)data\.n_FPC_/,/[[:space:]]*\.quad[[:space:]]*0/d'),$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_sec)data\.n___fpc_valgrind/,/[[:space:]]\.byte[[:space:]]*0/d'),$(1))
	$(call shlp,'/^[[:space:]]*\.def[[:space:]].*/d',$(1))
	$(call shlp,'s/^[[:space:]]*rex\.W[[:space:]]*jmp[[:space:]]*\*\%rax/''call'' \*\%rbx\nret/',$(1))
	$(call shlp,'s/^[[:space:]]*rex\.W[[:space:]]*jmp[[:space:]]*\*\(.*\)/jmp \*\1\nret/',$(1))
	$(call shlp,'/[[:space:]]*\.ident.*/d',$(1))
	$(call shlp,'/$(sed_seh)_endproc/d',$(1))
	$(call shlp,'/$(sed_seh)_endprologue/d',$(1))
	$(call shlp,'/$(sed_seh)_handler/d',$(1))
	$(call shlp,'/$(sed_seh)_handlerdata/d',$(1))
	$(call shlp,'/$(sed_seh)_proc/d',$(1))
	$(call shlp,'/$(sed_seh)_pushreg/d',$(1))
	$(call shlp,'/$(sed_seh)_setframe/d',$(1))
	$(call shlp,'/$(sed_seh)_stackalloc/d',$(1))
	$(call shlp,'/^#[[:space:]]*.*/d',$(1))
	$(call shlp,'/^\.Lc[0-9]*:/d',$(1))
	$(call shlp,'/__fpc_ident\:/d',$(1))
	$(call shlp,'/[[:space:]]*.ascii[[:space:]]\"FPC 3\.2\.0.*/d',$(1))
	$(call shlp,'/$(sed_sec)text\.n_fpc.*/d',$(1))
	$(call shlp,'/[[:space:]]call[[:space:]]fpc_initializeunits/d',$(1))
	$(call shlp,'/$(sed_sec)data\.n___heapsize/d',$(1))
	$(call shlp,'/$(sed_sec)data\.n_INITFINAL/d',$(1))
	$(call shlp,'/$(sed_sec)fpc\.n_version/d',$(1))
	$(call shlp,'/^\__heapsize\:/d',$(1))
	$(call shlp,'/^\INITFINAL\:/d',$(1))
	$(call shlp,'/^\.globl[[:space:]]*__heapsize/d',$(1))
	$(call shlp,'/^\.globl[[:space:]]*INITFINAL/d',$(1))
	$(call shlp,$(subst ,$(;),'s/^[[:space:]]*call[[:space:]]*fpc_do_exit/movl $$0, \%ecx\nmovq __imp_ExitProcess(\%rip), \%rax\ncall \*\%rax/'),$(1))
	$(call shlp,$(subst ,$(;),'/^[[:space:]]*\.ident[[:space:]]*.*GCC\:/d'),$(1))
endef

# ------------------------------------------------------
# i had think, to reduce the size of this Makefile, and
# to have a better maintain, i create this macro that
# assemble the given .dll in parameter 1 with the given
# .o bject's in parameter 2.
# ------------------------------------------------------
define make_dll =
	@$(ECHO) create DLL $(1) ...
	$(CC) -nostdlib -m64 -shared -o \
	$(subst lib,,$(1)) $(2) -lkernel32 -luser32
	nm  $(subst lib,,$(1)) | grep " T " | sed 's/.* T //' \
	>   $(subst lib,,$(subst .dll,.def.tmp,$@))
endef

# ------------------------------------------------------
# this section is Windows 10 Pro 64-Bit specialized ...
# $(OBJ_FILES) $(DLL_FILE).def
# ------------------------------------------------------
REDI_NULL = > nul:
DLL_DIR   = dll_x64

DLL_FILES = $(DLL_DIR)/laz_crt.dll $(DLL_DIR)/laz_vcl.dll
DEF_FILES = $(DLL_DIR)/laz_crt.def $(DLL_DIR)/laz_vcl.def
#
ALD_FILES = $(DLL_DIR)/liblaz_crt.a $(DLL_DIR)/liblaz_vcl.a

# ---------------------------------------------
# Makefile: default entry point ...
# ---------------------------------------------
pre_tasks:									\
	state_begin 							\
	$(SRC_FILES) $(ASM_FILES) $(OBJ_FILES)  \
	$(DLL_FILES) $(DEF_FILES) $(ALD_FILES)	\
	state_end

# ---------------------------------------------
# template: create .dll from .o bject files.
# $(OBJ_FILES)
# ---------------------------------------------
$(DLL_FILES):
$(DLL_DIR)/laz_crt.dll: $(CRT_DLLOF) ; $(call make_dll,$@,$^)
$(DLL_DIR)/laz_vcl.dll: $(VCL_DLLOF) ; $(call make_dll,$@,$^)

# ---------------------------------------------
# template: create .def inition file for linker
# ---------------------------------------------
$(DEF_FILES):
$(DLL_DIR)/laz_crt.def: $(DLL_DIR)/laz_crt.dll ; $(call crt_def,$@)
$(DLL_DIR)/laz_vcl.def: $(DLL_DIR)/laz_vcl.dll ; $(call vcl_def,$@)

# ---------------------------------------------
# template: create .a rchive file for linker.
# ---------------------------------------------
$(ALD_FILES):
$(DLL_DIR)/liblaz_crt.a: $(DLL_DIR)/laz_crt.def ; $(call dll_a,$@,$<)
$(DLL_DIR)/liblaz_vcl.a: $(DLL_DIR)/laz_vcl.def ; $(call dll_a,$@,$<)

# ---------------------------------------------
# simple prints text for sign the start-uo.
# ---------------------------------------------
state_begin: clean premake
	@$(ECHO) compile files, this can take some time ...

# ---------------------------------------------
# template: compile .pas to .s assembler.
# ---------------------------------------------
$(PAS_ASM)/vcl/%.s: $(PAS_SRC)/vcl/%.pas
	$(FPC) $(FPC_FLAGS) -al -Aas -o$@ $<
	$(call strip_compiler,$@)
	$(CC) $(CFLAGS) \
		-o $(subst $(ASM_DIR),$(OBJ_DIR),$(subst .s,.o,$@)) \
		-c $@

# ---------------------------------------------
# template: compile PAS .s to .o bject file.
# ---------------------------------------------
$(PAS_OUT)/vcl/%.o: $(PAS_OUT)/vcl/%.s
	$(call strip_compiler,$<)
	$(CC) $(CFLAGS) -o $@ -c $<

# ---------------------------------------------
# template: compile C files to .s assembler.
# ---------------------------------------------
$(CPP_ASM)/%.s: $(CPP_SRC)/%.c
	$(CC) $(CFLAGS) -o $@ -S $<
	$(call strip_compiler,$@)

# ---------------------------------------------
# template: compile C .s files to .o bject's.
# ---------------------------------------------
$(CPP_OUT)/%.o: $(CPP_ASM)/%.s
	$(CC) $(CFLAGS) -o $@ -c $<

# ---------------------------------------------
# This section is optional, compile some test
# file's ...
# ---------------------------------------------
SAMPLE_DIR = samples
SAMPLE_EXE = $(SAMPLE_DIR)/test1$(EXEC_FILEEXT)

$(ASM_DIR)/test/%.s: $(SAMPLE_DIR)/%.pas
	$(FPC) $(FPC_FLAGS) -al -Aas -o$@ $<

$(OBJ_DIR)/test/%.o: $(ASM_DIR)/test/%.s
	$(call strip_compiler,$<)
	$(CC) $(CFLAGS) -o $@ -c $<
	
$(SAMPLE_DIR)/%$(EXEC_FILEEXT): $(OBJ_DIR)/test/%.o
	$(CC) -nostartfiles -nostdlib       \
		-Wl,--entry=PASCALMAIN -o $@ $^ \
		-L$(DLL_DIR) -llaz_crt -lkernel32 -luser32
	$(STRIP) $@

# -------------------------------------------
# just a note, that compile process is done.
# -------------------------------------------
state_end: $(SAMPLE_EXE)
	@$(ECHO) done.

# -------------------------------------------
# target's handled by env. parameter ...
# -------------------------------------------
.PHONY: clean premake

premake:
	$(MKDIR) $(OBJ_DIR)/$(CPP_SRC)
	$(MKDIR) $(OBJ_DIR)/$(PAS_SRC)
	$(MKDIR) $(OBJ_DIR)/$(PAS_SRC)/vcl
	$(MKDIR) $(OBJ_DIR)/test
	$(MKDIR) $(ASM_DIR)/$(CPP_SRC)
	$(MKDIR) $(ASM_DIR)/$(PAS_SRC)
	$(MKDIR) $(ASM_DIR)/$(PAS_SRC)/vcl
	$(MKDIR) $(ASM_DIR)/test
	$(MKDIR) $(DLL_DIR)

# -------------------------------------------
# this target, remove all temporary files ...
# -------------------------------------------
clean:
	@$(ECHO) delete source folder crap ...
	$(RM)    $(OBJ_DIR)/$(CPP_SRC)
	$(RM)    $(OBJ_DIR)/$(PAS_SRC)
	$(RM)    $(OBJ_DIR)/$(PAS_SRC)/vcl
	$(RM)    $(OBJ_DIR)/test
	$(RM)    $(OBJ_DIR)
	$(RM)    $(ASM_DIR)/$(CPP_SRC)
	$(RM)    $(ASM_DIR)/$(PAS_SRC)
	$(RM)    $(ASM_DIR)/$(PAS_SRC)/vcl
	$(RM)    $(ASM_DIR)/test
	$(RM)    $(ASM_DIR)
	$(RM)    $(DLL_DIR)
	$(RM)    sample/test1.exe
	$(RM)    sample/laz_crt.dll
