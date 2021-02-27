// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "TTypes.h"
# include "TObject.h"

START_MANGLE
START_VCL_NS

// TObject constructor: FPC
VOID FPC_DLLFUNC(TObject_Create,vcl)()
FPC_BEGIN

FPC_END

// TObject constrcutor: C++
TObject::TObject() { FPC_DLLFUNC(TObject_Create,vcl)(); }

// TObject destructor: C++
TObject::~TObject() { }

END_VCL_NS
END_MANGLE
