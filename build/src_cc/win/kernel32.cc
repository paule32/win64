// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "TTypes.h"
# include <windows.h>

START_MANGLE
START_WIN_NS

void FPC_DLLFUNC(ExitProcess,win)(LazINTEGER s)
FPC_BEGIN
	ExitProcess(s);
FPC_END

END_WIN_NS
END_MANGLE
