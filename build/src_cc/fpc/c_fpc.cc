// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <windows.h>
#include "TTypes.h"

START_MANGLE
START_FPC_NS

void fpc_initializeunits (void)
FPC_BEGIN
FPC_END

void fpc_ansistr_decr_ref(void *p)
FPC_BEGIN
FPC_END

END_FPC_NS
END_MANGLE
