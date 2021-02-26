// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include "TTypes.h"

// ----------------------------------------------------------
// If current character is lowercase alphabet then
// convert it to uppercase.
// ----------------------------------------------------------
STRING FPC_DLLFUNC(UpperCase,rtl)(STRING s)
FPC_BEGIN
	for (int i = 0; s[i] != '\0'; i++) {
        if (s[i] >= 'a' && s[i] <= 'z') {
            s[i] = s[i] - 32;
        }
    }
	return s;
FPC_END
