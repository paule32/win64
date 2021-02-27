// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit TObject;

interface

uses
	Windows;

type
	// TObject is the base of all classes of VCL
	TObject = class
	public
		constructor Create;
		procedure TestA;
	end;

implementation

constructor TObject.Create; [alias: 'TObject_Create']; external 'laz_vcl.dll' name 'TObject_Create';
procedure   TObject.TestA;  [alias: 'TObject_TestA' ]; external 'laz_vcl.dll' name 'TestA';

end.