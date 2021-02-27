// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "TTypes.h"
# include "TObject.h"
# include "TForm.h"

START_MANGLE
START_VCL_NS

// TForm constructor: FPC
VOID FPC_DLLFUNC(TForm_Create,vcl)()
FPC_BEGIN

FPC_END

// TForm constrcutor: C++
TForm::TForm(VOID) { FPC_DLLFUNC(TForm_Create,vcl); }

VOID FPC_DLLFUNC(TestA,vcl)()
FPC_BEGIN

FPC_END

END_VCL_NS
END_MANGLE
