// ----------------------------------------------------------
// This file is part of Lazarus RTL.
//
// (c) Copyright 2003 Florian Klaempfl
// (c) Copyright 2021 Jens Kallup - paule32
//
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit Forms;

interface

uses
  Windows;

type
  TObject = object
  public
	constructor Create;
	procedure TestA;
  end;
  
  TForm = object
  public
	constructor Create;
  end;

implementation

constructor TObject.Create; [alias: 'TObject_Create']; external 'laz_crt.dll' name 'TObject_Create';
constructor TForm  .Create; [alias: 'TForm_Create'  ]; external 'laz_crt.dll' name 'TForm_Create';

procedure TObject.TestA; external 'laz_crt.dll' name 'TestA';

end.
