// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
#pragma once

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
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
# define FPC_DLLFUNC(x) _$dll$laz_crt$ ## x()

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

/** @brief simple place holder for "none"
 *
 *  @author  paule32
 *  @date    2021-02-25
 *  @version 1.0
 */
typedef void VOID;
