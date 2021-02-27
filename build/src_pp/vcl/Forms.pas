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
	// TForm a graphicaly window formular
	TForm = class
	public
		constructor Create;
	end;

implementation

constructor TForm.Create; [alias: 'TForm_Create'  ]; external 'laz_vcl.dll' name 'TForm_Create';

end.
