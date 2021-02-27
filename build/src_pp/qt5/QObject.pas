// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit QObject;

interface

type
	// QObject is the base of all classes of Qt5
	QObject = class
	public
		constructor Create;
	end;

implementation

constructor QObject.Create; [alias: 'QObject_Create']; external 'laz_qt5.dll' name 'QObject_Create';

// -------------------------------------------------------
// this procedure does nothing.
// it's a dummy for fpc, to make .o file.
// fpc does not create .o bject file, if you have only
// interface "external"s.
// -------------------------------------------------------
procedure dummy; begin end;

end.
