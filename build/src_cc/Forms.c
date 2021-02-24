// ----------------------------------------------------------
// This file is part of Lazarus RTL.
//
// (c) Copyright 2003 Florian Klaempfl
// (c) Copyright 2021 Jens Kallup - paule32
//
// only for non-profit usage !!!
// ----------------------------------------------------------
# define FPC_DLLFUNC(x) \
	_$dll$laz_crt$ ## x()
# define VOID void
# define FPC_BEGIN {
# define FPC_END }

// TObject constructor
VOID FPC_DLLFUNC(TObject_Create)
FPC_BEGIN

FPC_END

// TForm constructor
VOID FPC_DLLFUNC(TForm_Create)
FPC_BEGIN

FPC_END


VOID FPC_DLLFUNC(TestA)
FPC_BEGIN

FPC_END
