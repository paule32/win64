{$mode objfpc}
unit system;

interface

//type Smallint = -32768..32767;
//type LongWord =      0..4294967295;

type Integer  = SmallInt;
type SizeInt  = LongInt;

type Cardinal = LongWord;
type DWord    = LongWord;
type UInt32   = Cardinal;

type HRESULT  = LongInt;

type
	PJmp_buf = ^jmp_buf;
	jmp_buf  = packed record
		ebx:   LongInt;
		esi:   LongInt;
		edi:   LongInt;
		bp:    Pointer;
		sp:    Pointer;
		pc:    Pointer;
	end;

type
	PExceptAddr = ^TExceptAddr;
	TExceptAddr = record
		buf       : pjmp_buf;
		next      : PExceptAddr;
		frametype : Longint;
	end;

type
	PGuid = ^TGuid;
	TGuid = packed record
		case Integer of
			1 : (
				Data1 : DWord;
				Data2 : word;
				Data3 : word;
				Data4 : array[0..7] of byte;
			);
			2 : (
				D1 : DWord;
				D2 : word;
				D3 : word;
				D4 : array[0..7] of byte;
			);
			3 : ( { uuid fields according to RFC4122 }
				time_low : dword;
				time_mid : word;
				time_hi_and_version : word;
				clock_seq_hi_and_reserved : byte;
				clock_seq_low : byte;
				node : array[0..5] of byte;
			);
		end;

type
	TTypeKind = (
		tkUnknown,		// Unknown property type.
		tkInteger,		// Integer property.
		tkChar, 		// Char property.
		tkEnumeration,	// Enumeration type property.
		tkFloat,		// Float property.
		tkSet,			// Set property.
		tkMethod,		// Method property.
		tkSString,		// Shortstring property.
		tkLString,		// Longstring property.
		tkAString,		// Ansistring property.
		tkWString,		// Widestring property.
		tkVariant,		// Variant property.
		tkArray,		// Array property.
		tkRecord,		// Record property.
		tkInterface,	// Interface property.
		tkClass,		// Class property.
		tkObject,		// Object property.
		tkWChar,		// Widechar property.
		tkBool,			// Boolean property.
		tkInt64,		// Int64 property.
		tkQWord,		// QWord property.
		tkDynArray, 	// Dynamic array property.
		tkInterfaceRaw, // Raw interface property.
		tkProcVar,		// Procedural variable
		tkUString,		// Unicode string
		tkUChar,		// Unicode character
		tkHelper,		// Helper type
		tkFile, 		// File type
		tkClassRef, 	// Class reference type
		tkPointer		// Generic pointer type
	);

type
	PText = ^Text;
	
	TextRec = {$ifdef VER2_6} packed {$endif} Record
//		Handle    : THandle;
		Mode      : longint;
		bufsize   : SizeInt;
		_private  : SizeInt;
		bufpos,
		bufend    : SizeInt;
//		bufptr    : ^textbuf;
//		openfunc,
//		inoutfunc,
//		flushfunc,
//		closefunc : codepointer;
//		UserData  : array[1..32] of byte;
//		name      : array[0..textrecnamelength-1] of TFileTextRecChar;
//		LineEnd   : TLineEndStr;
//		buffer    : textbuf;
  End;


	
function  fpc_get_input: PText; 			compilerproc;
procedure fpc_iocheck;						compilerproc;
procedure fpc_readln_end(var f: Text);		compilerproc;

procedure fpc_initializeunits;				compilerproc;
procedure fpc_do_exit;						compilerproc;

implementation

function  fpc_get_input: PText; compilerproc;
begin
	result := nil;
end;

procedure fpc_readln_end(var f: Text); [public,alias:'FPC_READLN_END']; iocheck; compilerproc;
begin
end;

procedure fpc_initializeunits; alias: 'FPC_INITIALIZEUNITS'; compilerproc;
begin
end;

procedure fpc_do_exit; alias: 'FPC_DO_EXIT';
begin end;

procedure fpc_iocheck; compilerproc;
begin end;

end.
