// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "TVision.h"

START_MANGLE
START_FPV_NS

// TObject constructor: FPC
TObject * FPC_DLLFUNC(TObject_Create,fpv)()
FPC_BEGIN
	auto * tmp = new TObject;
	return tmp;
FPC_END
TObject::TObject()
FPC_BEGIN
	ClassName = new char[20];
	strcpy(ClassName,"TObject");
FPC_END
VOID FPC_DLLFUNC(TObject_Destroy,fpv)()
FPC_BEGIN
	FPC_DESTROY(FPC_TVISION(TOBJECT));
FPC_END
TObject::~TObject()
FPC_BEGIN
	delete ClassName;
FPC_END

// TPalette constructor: FPC
TPalette * FPC_DLLFUNC(TPalette_Create,fpv)()
FPC_BEGIN
	auto * tmp = new TPalette;
	return tmp;
FPC_END
TPalette::TPalette()
FPC_BEGIN
	ClassName = new char[20];
	strcpy(ClassName,"TPalette");
FPC_END
VOID FPC_DLLFUNC(TPalette_Destroy,fpv)()
FPC_BEGIN
	FPC_DESTROY(FPC_TVISION(TPALETTE));
FPC_END
TPalette::~TPalette()
FPC_BEGIN
	delete ClassName;
FPC_END

// TMenuBar constructor: FPC
TMenuBar * FPC_DLLFUNC(TMenuBar_Create,fpv)()
FPC_BEGIN
	auto * tmp = new TMenuBar;
	return tmp;
FPC_END
TMenuBar::TMenuBar()
FPC_BEGIN
	ClassName = new char[20];
	strcpy(ClassName,"TMenuBar");
FPC_END
VOID FPC_DLLFUNC(TMenuBar_Destroy,fpv)()
FPC_BEGIN
	FPC_DESTROY(FPC_TVISION(TMENUBAR));
FPC_END
TMenuBar::~TMenuBar()
FPC_BEGIN
	delete ClassName;
FPC_END
VOID FPC_DLLFUNC(LazSetMenuBar,fpv)(TMenuBar *v)
FPC_BEGIN
	TMenuBar *tmp = nullptr;
	if (v == nullptr)
	tmp = new TMenuBar;
	v   = tmp;
FPC_END

// TStatusBar constructor: FPC
TStatusBar * FPC_DLLFUNC(TStatusBar_Create,fpv)()
FPC_BEGIN
	auto * tmp = new TStatusBar;
	return tmp;
FPC_END
TStatusBar::TStatusBar()
FPC_BEGIN
	ClassName = new char[20];
	strcpy(ClassName,"TStatusBar");
FPC_END
VOID FPC_DLLFUNC(TStatusBar_Destroy,fpv)()
FPC_BEGIN
	FPC_DESTROY(FPC_TVISION(TSTATUSBAR));
FPC_END
TStatusBar::~TStatusBar()
FPC_BEGIN
	delete ClassName;
FPC_END
VOID FPC_DLLFUNC(LazSetStatusBar,fpv)(TStatusBar *v)
FPC_BEGIN
	TStatusBar *tmp = nullptr;
	if (v == nullptr)
	tmp = new TStatusBar;
	v   = tmp;
FPC_END

// TBackground constructor: FPC
TBackground * FPC_DLLFUNC(TBackground_Create,fpv)()
FPC_BEGIN
	auto * tmp = new TBackground;
	return tmp;
FPC_END
TBackground::TBackground()
FPC_BEGIN
	ClassName = new char[20];
	strcpy(ClassName,"TBackground");
FPC_END
VOID FPC_DLLFUNC(TBackground_Destroy,fpv)()
FPC_BEGIN
	FPC_DESTROY(FPC_TVISION(TBACKGROUND));
FPC_END
TBackground::~TBackground()
FPC_BEGIN
	delete ClassName;
FPC_END
VOID FPC_DLLFUNC(LazSetBackground,fpv)(TBackground *v)
FPC_BEGIN
	TBackground *tmp = nullptr;
	if (v == nullptr)
	tmp = new TBackground;
	v   = tmp;
FPC_END

// TApplication constructor: FPC
TApplication * FPC_DLLFUNC(TApplication_Create,fpv)()
FPC_BEGIN
	auto * tmp = new TApplication;
	return tmp;
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
	FPC_DESTROY(FPC_TVISION(TAPPLICATION));
FPC_END
TApplication::~TApplication()
FPC_BEGIN
	delete StatusBar;
	delete MenuBar;
	delete Background;
	
	delete ClassName;
FPC_END
VOID FPC_DLLFUNC(LazSetApplication,fpv)(TApplication *v)
FPC_BEGIN
	TApplication *tmp = nullptr;
	if (v == nullptr)
	tmp = new TApplication;
	v   = tmp;
FPC_END

END_FPV_NS
END_MANGLE
