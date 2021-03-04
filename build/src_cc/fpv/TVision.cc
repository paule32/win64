// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "TVision.h"

START_MANGLE
START_FPV_NS

TObject      * LazApplicationObject     = nullptr;
TApplication * LazApplication           = nullptr;
TBackground  * LazApplicationBackground = nullptr;
TMenuBar     * LazApplicationMenuBar    = nullptr;
TStatusBar   * LazApplicationStatusBar  = nullptr;

// TObject constructor: FPC
VOID FPC_DLLFUNC(TObject_Create,fpv)()
FPC_BEGIN
	LazApplicationObject = new TObject;
FPC_END
TObject::TObject()
FPC_BEGIN
	ClassName = new char[20];
	strcpy(ClassName,"TObject");
FPC_END
VOID FPC_DLLFUNC(TObject_Destroy,fpv)()
FPC_BEGIN
	delete LazApplicationObject;
FPC_END
TObject::~TObject()
FPC_BEGIN
	delete ClassName;
FPC_END

// TMenuBar constructor: FPC
VOID FPC_DLLFUNC(TMenuBar_Create,fpv)()
FPC_BEGIN
	LazApplicationMenuBar = new TMenuBar;
FPC_END
VOID FPC_DLLFUNC(TMenuBar_Destroy,fpv)()
FPC_BEGIN
	delete LazApplicationMenuBar;
FPC_END
TMenuBar::TMenuBar()
FPC_BEGIN
	ClassName = new char[20];
	strcpy(ClassName,"TMenuBar");
FPC_END
TMenuBar::~TMenuBar()
FPC_BEGIN
	delete ClassName;
FPC_END

// TStatusBar constructor: FPC
VOID FPC_DLLFUNC(TStatusBar_Create,fpv)()
FPC_BEGIN
	LazApplicationStatusBar = new TStatusBar;
FPC_END
TStatusBar::TStatusBar()
FPC_BEGIN
	ClassName = new char[20];
	strcpy(ClassName,"TStatusBar");
FPC_END
VOID FPC_DLLFUNC(TStatusBar_Destroy,fpv)()
FPC_BEGIN
	delete LazApplicationStatusBar;
FPC_END
TStatusBar::~TStatusBar()
FPC_BEGIN
	delete ClassName;
FPC_END

// TBackground constructor: FPC
VOID FPC_DLLFUNC(TBackground_Create,fpv)()
FPC_BEGIN
	LazApplicationBackground = new TBackground;
FPC_END
TBackground::TBackground()
FPC_BEGIN
	ClassName = new char[20];
	strcpy(ClassName,"TBackground");
FPC_END
VOID FPC_DLLFUNC(TBackground_Destroy,fpv)()
FPC_BEGIN
	delete LazApplicationBackground;
FPC_END
TBackground::~TBackground()
FPC_BEGIN
	delete ClassName;
FPC_END

// TApplication constructor: FPC
VOID FPC_DLLFUNC(TApplication_Create,fpv)()
FPC_BEGIN
	LazApplication = new TApplication;
FPC_END
TApplication::TApplication()
FPC_BEGIN
	ClassName = new char[20];
	strcpy(ClassName,"TApplication");
	
	Background = new TBackground;
	MenuBar    = new TMenuBar;
	StatusBar  = new TStatusBar;
FPC_END
VOID FPC_DLLFUNC(TApplication_Destroy,fpv)()
FPC_BEGIN
	delete LazApplication;
FPC_END
TApplication::~TApplication()
FPC_BEGIN
	delete StatusBar;
	delete MenuBar;
	delete Background;
	
	delete ClassName;
FPC_END

END_FPV_NS
END_MANGLE
