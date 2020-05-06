
#pragma once

#ifndef uX_VERSION_H
#define uX_VERSION_H

#include "uXPreprocessor.h"

#define uX_VERSION_DATE "2019.09.25"

#define uX_VERSION_BUILD 20190925

#define uX_BUILD_DATE  "2019-09-25 13:00:00 UTC"
#define uX_BUILD_YYYY 2019
#define uX_BUILD_MMDD 0925

//#define uX_VERSION_STR "0.2." uX_VERSION_DATE
#define uX_VERSION_HEX  0xD1FD8CD
#define uX_VERSION_MAJOR 0
#define uX_VERSION_MINOR 2
#define uX_VERSION_REVISION uX_BUILD_YYYY
#define uX_VERSION_SUBREVISION uX_BUILD_MMDD
#define uX_RELEASE_NAME "Alpha"

#define uX_VERSION uX_VERSION_MAJOR uX_VERSION_MINOR uX_VERSION_REVISION uX_VERSION_SUBREVISION

#define uX_VERSION_CST uX_VERSION_MAJOR , uX_VERSION_MINOR , uX_BUILD_YYYY, uX_BUILD_MMDD

#define uX_VERSION_STR uX_Stringer(uX_VERSION_MAJOR) "." uX_Stringer(uX_VERSION_MINOR) "." uX_Stringer(uX_VERSION_REVISION) "." uX_Stringer(uX_VERSION_SUBREVISION)

#define uX_VERSION_MAJOR_STR       uX_Stringer(uX_VERSION_MAJOR)
#define uX_VERSION_MINOR_STR       uX_Stringer(uX_VERSION_MINOR)
#define uX_VERSION_PATCH_STR       uX_Stringer(uX_VERSION_REVISION)
#define uX_VERSION_BUILD_STR       uX_Stringer(uX_VERSION_SUBREVISION)

#define uX_FULL_VERSION_STR     uX_VERSION_MAJOR_STR "." uX_VERSION_MINOR_STR "." uX_VERSION_PATCH_STR "." uX_VERSION_BUILD_STR " (" uX_RELEASE_NAME ")"


// The constant uX_VERSION_ALT is used when creating certain uXOAMP module objects
// This is to ensure that the application is using the same header version as the library was built with

#define uX_VERSION_ALT ((uX_VERSION_MAJOR<<24) + (uX_VERSION_MINOR<<16) + (uX_VERSION_REVISION<<8) + uX_VERSION_SUBREVISION<<4))

#include "uXExp.h"

#define uX_FILE uX_LIB_NAME uX_LIB_TYPE

// Finally, define strings.
#ifdef uX_DEBUG
#define uX_LIBRARY   uX_LINK_TYPE_STR " " uX_BUILD_TYPE " runtime library "
#else
#define uX_LIBRARY   uX_LINK_TYPE_STR " runtime library "
#endif
#define uX_COPYRIGHT "Copyright (C) eXOAMP (R) 2019. All rights reserved. The uasm Optimized assembly Library."
#define uX_COMPANY "(C) eXOAMP (R) 2019. The uasm Optimized assembly Library."

#define uX_VERSION_MAGIC_STR   "\x00@(#) "
#define uX_VERSION_MAGIC_LEN   6                // Length of uX_VERSION_MAGIC_STR.
#define uX_VERSION_PREF_STR    "(C) eXOAMP (R) uasmlib"
#define uX_VERSION_PREFIX      uX_VERSION_MAGIC_STR uX_VERSION_PREF_STR

#define uX_FILE_DESCRIPTION uX_VERSION_PREF_STR " " uX_FULL_VERSION_STR "" uX_FAMILY_STR " " uX_ARCH_STR " " uX_COMPILER " " uX_LIBRARY "of " uX_BUILD_DATE "\0"
#define uX_PRODUCT_NAME uX_VERSION_PREF_STR " " uX_FAMILY_STR " " uX_ARCH_STR " " uX_LIBRARY "\0"
#define uX_COMMENTS uX_VERSION_PREF_STR " " uX_LIBRARY "version " uX_FULL_VERSION_STR " for " uX_FAMILY_STR " " uX_ARCH_STR " " uX_COMPILER " build on " uX_BUILD_DATE ". " "For more information visit https://github.com/eXOAMP/uasmlib" "\0"

#endif // uX_VERSION_H
