// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit Forms;

interface

uses
	Windows;

type
	// TObject is the base of all classes
	TObject = class
	public
		constructor Create;
		procedure TestA;
	end;
  
	// TForm a graphicaly window formular
	TForm = class
	public
		constructor Create;
	end;

implementation

constructor TObject.Create; [alias: 'TObject_Create']; external 'laz_vcl.dll' name 'TObject_Create';
constructor TForm  .Create; [alias: 'TForm_Create'  ]; external 'laz_vcl.dll' name 'TForm_Create';

procedure TObject.TestA; external 'laz_vcl.dll' name 'TestA';

end.
