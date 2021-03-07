// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit TVision;

interface

type
	// TObject is the base of all classes of Qt5
	TObject = class
	public
		ClassName: String;
		constructor Create;
		destructor Destroy;
	end;

type
	TPalette = class(TObject)
	private
		Foreground: Array[0..15] of Byte;
		Background: Array[0..15] of Byte;
	public
		constructor Create;
		destructor Destroy;
	end;
	
type
	TMenuBar = class(TObject)
	public
		constructor Create;
		destructor Destroy;
	end;

type
	TStatusBar = class(TObject)
	public
		constructor Create;
		destructor Destroy;
	end;

type
	TBackground = class(TObject)
	private
		palette: TPalette;
	public
		constructor Create;
		destructor Destroy;
	end;

type
	TApplication = class(TObject)
	private
		FBackground: TBackground;
		FMenuBar:    TMenuBar;
		FStatusBar:  TStatusBar;
	private
		procedure setFBackground(v: TBackground);
		procedure setFMenuBar   (v: TMenuBar   );
		procedure setFStatusBar (v: TStatusBar );
	public
		constructor Create;
		destructor Destroy;
	published
		property Background: TBackground read FBackground write setFBackground;
		property MenuBar:    TMenuBar    read FMenuBar    write setFMenuBar;
		property StatusBar:  TStatusBar  read FStatusBar  write setFStatusBar;
	end;

implementation

constructor TObject     .Create;  [alias: 'TObject_Create'      ]; external 'laz_fpv.dll' name 'TObject_Create';
constructor TPalette    .Create;  [alias: 'TPalette_Create'     ]; external 'laz_fpv.dll' name 'TPalette_Create';
constructor TMenuBar    .Create;  [alias: 'TMenuBar_Create'     ]; external 'laz_fpv.dll' name 'TMenuBar_Create';
constructor TStatusBar  .Create;  [alias: 'TStatusBar_Create'   ]; external 'laz_fpv.dll' name 'TStatusBar_Create';
constructor TBackground .Create;  [alias: 'TBackground_Create'  ]; external 'laz_fpv.dll' name 'TBackground_Create';
constructor TApplication.Create;  [alias: 'TApplication_Create' ]; external 'laz_fpv.dll' name 'TApplication_Create';

destructor  TObject     .Destroy; [alias: 'TObject_Destroy'     ]; external 'laz_fpv.dll' name 'TObject_Destroy';
destructor  TPalette    .Destroy; [alias: 'TPalette_Destroy'    ]; external 'laz_fpv.dll' name 'TPalette_Destroy';
destructor  TMenuBar    .Destroy; [alias: 'TMenuBar_Destroy'    ]; external 'laz_fpv.dll' name 'TMenuBar_Destroy';
destructor  TStatusBar  .Destroy; [alias: 'TStatusBar_Destroy'  ]; external 'laz_fpv.dll' name 'TStatusBar_Destroy';
destructor  TBackground .Destroy; [alias: 'TBackground_Destroy' ]; external 'laz_fpv.dll' name 'TBackground_Destroy';
destructor  TApplication.Destroy; [alias: 'TApplication_Destroy']; external 'laz_fpv.dll' name 'TApplication_Destroy';

procedure TApplication.setFBackground(v: TBackground); cdecl; external 'laz_fpv.dll' name 'LazSetBackground';
procedure TApplication.setFMenuBar   (v:    TMenuBar); cdecl; external 'laz_fpv.dll' name 'LazSetMenuBar';
procedure TApplication.setFStatusBar (v:  TStatusBar); cdecl; external 'laz_fpv.dll' name 'LazSetStatusBar';

// -------------------------------------------------------
// this procedure does nothing.
// it's a dummy for fpc, to make .o file.
// fpc does not create .o bject file, if you have only
// interface "external"s.
// -------------------------------------------------------
procedure dummy; begin end;

end.
