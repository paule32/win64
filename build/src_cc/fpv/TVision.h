// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once
# include <windows.h>
# include "TTypes.h"

START_MANGLE
START_FPV_NS

class TObject
{
public:
	TObject();
	~TObject();
	
	char* ClassName;
};

class TPalette: public TObject
{
public:
	TPalette();
	~TPalette();
};

class TMenuBar: public TObject
{
public:
	TMenuBar();
	~TMenuBar();
};

class TStatusBar: public TObject
{
public:
	TStatusBar();
	~TStatusBar();
};

class TBackground: public TObject
{
public:
	TBackground();
	~TBackground();
};

class TApplication: public TObject
{
public:
	TApplication();
	~TApplication();
	
	TBackground * Background;
	TMenuBar	* MenuBar;
	TStatusBar	* StatusBar;
};

END_FPV_NS
END_MANGLE
