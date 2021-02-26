// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once
# include <stdint.h>

/** @file    TTypes.h
 *  @brief   some macros, and typedef's for better source
 *           maintain / readable.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */

/** @brief   FPC produce prefix code for each DLL class export;
 *           This macro hold proper code for maintain / readable.
 *           It combine the compiler prefix with the class object
 *           name.
 *
 *  @param   x - function name
 *  @param   y = library  name
 *
 *  Possible values for y can be:
 *    - crt
 *    - rtl
 *    - vcl, and many more
 *
 *  <b>Example</b>:
 *  @code
 *   FPC_DLLFUNC(TForm_Create,vcl)
 *  @endcode
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define FPC_DLLFUNC(x,y) _$dll$laz_ ## y ## $ ## x

/** @brief   This macro simple define the begin of an C scope.
 *           It is developer desire beatifier the code.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define FPC_BEGIN {

/** @brief   This macro simple define the end of an C scope.
 *           It is developer desire beatifier the code.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define FPC_END }

/** @brief   This macro simple define the begin of an C++ de-mangle scope
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define START_MANGLE extern "C" {

/** @brief   This macro simple define the end of an C++ de-mangle scope
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define END_MANGLE   };

/** @brief   This macro helps, to indicate the different namespace used for
 *           C++ mangled scope, and the differnt packages (here the LazVCL)
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define START_VCL_NS namespace LazVCL {

/** @brief   This macro simple define the end of an C++ namespace scope
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define END_VCL_NS   }

/** @brief   simple place holder for "none"
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef void    VOID;

/** @brief   This macro define the data type BYTE.<br>
 *           One Byte are 8-Bit - the smallest character that can be display.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef uint8_t  BYTE;

/** @brief   This typedef represents the FPC data type CHAR.<br>
 *           CHAR is limited to be one character. Please don't confuse with BYTE.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef char     CHAR;

/** @brief   This typedef represents the data type WORD.<br>
 *           WORD is a 16-bit data type.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef uint16_t  WORD;

/** @brief   This typedef represents the data type DWORD.<br>
 *           DWORD (double word) is a 32-bit data type.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef uint32_t DWORD;

/** @brief   This typedef represents the data type QWORD.<br>
 *           QWORD (quad word) is a 64-bit data type.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef uint64_t QWORD;

/** @brief   This macro represents the FPC data type STRING.<br>
 *           STRING has limited length of 255 Bytes. Internal, it is
 *           declared in structure SHORTSTRING.<br>
 *           Internal handled as char pointer type: char*.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef CHAR*  STRING;

/** @brief   This typedef represents the FPC data type STRING structure.<br>
 *           STRING has limited length of 255 Bytes. Internal, it is
 *           declared as ShortString.<br>
 *           The structure of this data type is defined in the struct in data fields section.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef struct {
	/** This field variable store size of the string.<br>
	 *  The maximal length is 255 Byte
	 *  @author  paule32
	 */
	BYTE length;

	/** This field variable hold the string
     *  @author  paule32
	 */
	STRING str;
} TD_SHORTSTRING;

/** @brief   Wrapper function for the FPC data type ShortSTRING.<br>
 *           STRING has limited length of 255 Bytes. Internal, it is
 *           declared as char*<br>
 *           The structure of this data type is defined in the struct in data fields section.
 *
 *  @param   s : the raw string.
 *  @return  STRING : the string s as C char* type.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
extern "C" STRING SHORTSTRING(STRING s);
