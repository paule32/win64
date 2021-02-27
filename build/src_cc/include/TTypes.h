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
 *           C++ mangled scope, <br>and the differnt packages (here the LazCRT)<br>
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define START_CRT_NS namespace LazCRT {

/** @brief   This macro simple define the end of an C++ namespace scope.<br>
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define END_CRT_NS   }

/** @brief   This macro helps, to indicate the different namespace used for
 *           C++ mangled scope, <br>and the differnt packages (here the LazQT5)<br>
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define START_QT5_NS namespace LazQT5 {

/** @brief   This macro simple define the end of an C++ namespace scope.<br>
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define END_QT5_NS   }

/** @brief   This macro helps, to indicate the different namespace used for
 *           C++ mangled scope, <br>and the differnt packages (here the LazRTL)<br>
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define START_RTL_NS namespace LazVCL {

/** @brief   This macro simple define the end of an C++ namespace scope.<br>
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define END_RTL_NS   }

/** @brief   This macro helps, to indicate the different namespace used for
 *           C++ mangled scope, <br>and the differnt packages (here the LazVCL)<br>
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define START_VCL_NS namespace LazVCL {

/** @brief   This macro simple define the end of an C++ namespace scope.<br>
 *           It is developer desire beatifuier.
 *           Nothing else.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define END_VCL_NS   }

#ifndef VOID
/** @brief   simple place holder for "none"
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef void    VOID;
#endif

#ifndef LazBOOL
/** @brief   This macro define the data type Boolean.<br>
 *           One BOOLEAN have 8-Bit, not 1-bit !
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef uint8_t LazBOOL;
#endif

#ifndef LazBYTE
/** @brief   This macro define the data type BYTE.<br>
 *           One Byte are 8-Bit - the smallest character that can be display.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef uint8_t  LazBYTE;
#endif

#ifndef LazCHAR
/** @brief   This typedef represents the FPC data type CHAR.<br>
 *           CHAR is limited to be one character. <br>
 *           Please don't confuse with BYTE.
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef char     LazCHAR;
#endif

typedef unsigned char LazUCHAR;

#ifndef LazWORD
/** @brief   This typedef represents the data type WORD.<br>
 *           WORD is a 16-bit data type.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef uint16_t  LazWORD;
#endif

#ifndef LazDWORD
/** @brief   This typedef represents the data type DWORD.<br>
 *           DWORD (double word) is a 32-bit data type.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef uint32_t LazDWORD;
#endif

#ifndef LazINTEGER
/** @brief   This typedef represents the data type Integer.<br>
 *           Integer is a 64-bit data type.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef uint64_t LazINTEGER;
#endif

#ifndef LazQWORD
/** @brief   This typedef represents the data type QWORD.<br>
 *           QWORD (quad word) is a 64-bit data type.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef uint64_t LazQWORD;
#endif

/** @brief   This macro represents the FPC data type STRING.<br>
 *           STRING has limited length of 255 Bytes. Internal, it is
 *           declared in structure TD_SHORTSTRING.<br>
 *           Internal handled as char pointer type: char*.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef LazCHAR*  LazSTRING;

void *operator new  (size_t);
void *operator new[](size_t);

void  operator delete  (void *ptr);
void  operator delete[](void *ptr);

/** @brief   This typedef represents the FPC data type SHORTSTRING structure.
 *           STRING has limited length of 255 Bytes. Internal, it is
 *           declared as ShortString.<br>
 *           The first field (length) store the length of STRING <br>
 *           The second field hold the entire string.
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef struct {
	/** This field variable store size of the string.<br>
	 *  The maximal length is 255 Byte
	 *  @author  paule32
	 */
	LazBYTE length;

	/** This field variable hold the string
     *  @author  paule32
	 */
	LazSTRING str;
} LazSHORTSTRING;

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
extern "C" LazSTRING CopyPascalString2PChar(LazSTRING s);
