# ----------------------------------------------------------
# This file is part of Lazarus RTL.
#
# (c) Copyright 2003 Florian Klaempfl
# (c) Copyright 2021 Jens Kallup - paule32
#
# only for non-profit usage !!!
# ----------------------------------------------------------

CC        = gcc
FPC       = fpc

RM        = rm -rf
MKDIR     = mkdir -p
COPY      = cp
ECHO      = echo
SED       = sed
STRIP     = strip

CFLAGS    = -m64 -I.
FPC_FLAGS =

ASM_DIR = ./.asm
OBJ_DIR = ./.obj
DLL_DIR = ./.out

ASM_FILES = c_crt
OBJ_FILES = test.o asm_strings.o
DLL_FILES = laz_crt.dll

DEPS_1 = $(patsubst %,$(ASM_DIR)/%,$(ASM_FILES).s)
DEPS_2 = $(patsubst %,$(OBJ_DIR)/%,$(ASM_FILES).o)
DEPS_3 = $(patsubst %,$(OBJ_DIR)/%,$(ASM_FILES).s)

DEPS_4 = $(patsubst %,$(OBJ_DIR)/%,$(OBJ_FILES))
DEPS_3 = $(patsubst %,$(DLL_DIR)/%,$(DLL_FILES))

pre_tasks: clean_build $(DEPS_1)
	@$(ECHO) done.

$(DEPS_1): $(ASM_FILES)$^.c
	@$(ECHO) create laz_crt.dll ...
	echo 1: $^.c
	$(CC) -fPIC -O2 -S -o $@ $<
	@$(SED) /\.ident.*/d $@ > tmp.txt
	@$(SED) /\.def.*/d   tmp.txt > $@
	@$(SED) /\.seh_.*/d  $@ > tmp.txt
	@$(COPY) tmp.txt $@
	@$(RM) tmp.txt
	$(CC) -nostdlib -fPIC -m64 -shared $@ -o $(DEPS_3) -lkernel32
	$(STRIP) ./.out/laz_crt.dll

$(DDIR)\test.dll: $(DEPS_1)
	$(CC) -nostdlib -m64 -shared -o $(DDIR)\test.dll $(DEPS_1)

$(ODIR)\asm_strings.o: .\x86_64\asm_strings.s
	$(CC) -fPIC -c -o $@ $< $(CFLAGS)

$(ODIR)\strings.o: $(DEPS_3) .\x86_64\strings.pas
	$(FPC) -FE$(DDIR) -FU$(ODIR) $^ $(FPC_FLAGS)
	
$(ODIR)\test.o: .\test.s
	$(CC) -fPIC -c -o $@ $< $(CFLAGS)

clean_build:
	$(ECHO) delete prev data ...
	@$(RM)    $(OBJ_DIR)
	@$(RM)    $(DLL_DIR)
	@$(RM)    $(ASM_DIR)
	@$(MKDIR) $(OBJ_DIR)
	@$(MKDIR) $(DLL_DIR)
	@$(MKDIR) $(ASM_DIR)

.PHONY: clean

clean:
	$(RM) $(ODIR)\*.o
