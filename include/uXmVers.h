
#pragma once

#ifndef uXm_VERSION_H
#define uXm_VERSION_H

#include "uXmPreprocessor.h"

#define uXm_VERSION_DATE "2018.1.25"

#define uXm_VERSION_BUILD 2018125

#define uXm_BUILD_DATE  "2018-1-25 13:00:00 UTC"
#define uXm_BUILD_YYYY 2018
#define uXm_BUILD_MMDD 125

//#define uXm_VERSION_STR "0.2." uXm_VERSION_DATE
#define uXm_VERSION_HEX	0x14FF84D
#define uXm_VERSION_MAJOR 0
#define uXm_VERSION_MINOR 2
#define uXm_VERSION_REVISION uXm_BUILD_YYYY
#define uXm_VERSION_SUBREVISION uXm_BUILD_MMDD
#define uXm_RELEASE_NAME "Alpha"

#define uXm_VERSION uXm_VERSION_MAJOR uXm_VERSION_MINOR uXm_VERSION_REVISION uXm_VERSION_SUBREVISION

#define uXm_VERSION_CST uXm_VERSION_MAJOR , uXm_VERSION_MINOR , uXm_BUILD_YYYY, uXm_BUILD_MMDD

#define uXm_VERSION_STR uXm_Stringer(uXm_VERSION_MAJOR) "." uXm_Stringer(uXm_VERSION_MINOR) "." uXm_Stringer(uXm_VERSION_REVISION) "." uXm_Stringer(uXm_VERSION_SUBREVISION)

#define uXm_VERSION_MAJOR_STR       uXm_Stringer(uXm_VERSION_MAJOR)
#define uXm_VERSION_MINOR_STR       uXm_Stringer(uXm_VERSION_MINOR)
#define uXm_VERSION_PATCH_STR       uXm_Stringer(uXm_VERSION_REVISION)
#define uXm_VERSION_BUILD_STR       uXm_Stringer(uXm_VERSION_SUBREVISION)

#define uXm_FULL_VERSION_STR		uXm_VERSION_MAJOR_STR "." uXm_VERSION_MINOR_STR "." uXm_VERSION_PATCH_STR "." uXm_VERSION_BUILD_STR " (" uXm_RELEASE_NAME ")"


// The constant uXm_VERSION_ALT is used when creating certain uXmOAMP module objects
// This is to ensure that the application is using the same header version as the library was built with

#define uXm_VERSION_ALT ((uXm_VERSION_MAJOR<<24) + (uXm_VERSION_MINOR<<16) + (uXm_VERSION_REVISION<<8) + uXm_VERSION_SUBREVISION<<4))

#include "uXmExp.h"

#define uXm_FILE uXm_LIB_NAME uXm_LIB_TYPE

// Finally, define strings.
#ifdef uXm_DEBUG
#define uXm_LIBRARY   uXm_LINK_TYPE_STR " " uXm_BUILD_TYPE " runtime library "
#else
#define uXm_LIBRARY   uXm_LINK_TYPE_STR " runtime library "
#endif
#define uXm_COPYRIGHT "Copyright (C) eXOAMP (R) 2018. All rights reserved. The uasm Optimized assembly Library."
#define uXm_COMPANY "(C) eXOAMP (R) 2017. The uasm Optimized assembly Library."

#define uXm_VERSION_MAGIC_STR   "\x00@(#) "
#define uXm_VERSION_MAGIC_LEN   6                // Length of uXm_VERSION_MAGIC_STR.
#define uXm_VERSION_PREF_STR    "(C) eXOAMP (R) uasmlib"
#define uXm_VERSION_PREFIX      uXm_VERSION_MAGIC_STR uXm_VERSION_PREF_STR

#define uXm_FILE_DESCRIPTION uXm_VERSION_PREF_STR " " uXm_FULL_VERSION_STR "" uXm_FAMILY_STR " " uXm_ARCH_STR " " uXm_COMPILER " " uXm_LIBRARY "of " uXm_BUILD_DATE "\0"
#define uXm_PRODUCT_NAME uXm_VERSION_PREF_STR " " uXm_FAMILY_STR " " uXm_ARCH_STR " " uXm_LIBRARY "\0"
#define uXm_COMMENTS uXm_VERSION_PREF_STR " " uXm_LIBRARY "version " uXm_FULL_VERSION_STR " for " uXm_FAMILY_STR " " uXm_ARCH_STR " " uXm_COMPILER " build on " uXm_BUILD_DATE ". " "For more information visit https://github.com/eXOAMP/uasmlib" "\0"

#endif // uXm_VERSION_H
