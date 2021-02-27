// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "TTypes.h"
# include "qt5/QObject.h"

START_MANGLE
START_QT5_NS

// TObject constructor: FPC
VOID FPC_DLLFUNC(QObject_Create,qt5)()
FPC_BEGIN

FPC_END

// TObject constrcutor: C++
QObject::QObject() { FPC_DLLFUNC(QObject_Create,qt5)(); }

// QObject destructor: C++
QObject::~QObject() { }

END_QT5_NS
END_MANGLE
