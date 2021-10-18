/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /																				/ /
; / /			Copyright 2021 (c) Navegos QA - optimized library					/ /
; / /																				/ /
; / /	Licensed under the Apache License, Version 2.0 (the "License");				/ /
; / /	you may not use this file except in compliance with the License.			/ /
; / /	You may obtain a copy of the License at										/ /
; / /																				/ /
; / /		http://www.apache.org/licenses/LICENSE-2.0								/ /
; / /																				/ /
; / /	Unless required by applicable law or agreed to in writing, software			/ /
; / /	distributed under the License is distributed on an "AS IS" BASIS,			/ /
; / /	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.	/ /
; / /	See the License for the specific language governing permissions and			/ /
; / /	limitations under the License.												/ /
; / /																				/ /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_VERSION_H
#define uX_VERSION_H 1

#ifndef uX_PREPROCESSOR_H
#include "preprocessor.h"
#endif  /* uX_PREPROCESSOR_H */

#define uX_VERSION_DATE "2021.07.23"

//#define uX_VERSION_BUILD 20210425

#define uX_BUILD_DATE  "2021.07.23 00:11:27 UTC"
#define uX_BUILD_YYYY 2021
#define uX_BUILD_MMDD 0723

#define uX_VERSION_MAJOR 2
#define uX_VERSION_MINOR 56
#define uX_VERSION_PATCH 0
#define uX_VERSION_BUILD 20210723
#define uX_VERSION_REVISION uX_BUILD_YYYY
#define uX_VERSION_SUBREVISION uX_BUILD_MMDD
#define uX_RELEASE_NAME "release candidate"
#define uX_VERSION_HEX  0x3B9BFE6423
#define uX_VERSION_INT  2560
#define uX_VERSION 256020210723

#define uX_VERSION_CST uX_VERSION_MAJOR , uX_VERSION_MINOR , uX_VERSION_REVISION, uX_VERSION_SUBREVISION

#define uX_VERSION_STR uX_Stringer(uX_VERSION_MAJOR) "." uX_Stringer(uX_VERSION_MINOR) "." uX_Stringer(uX_VERSION_REVISION) "." uX_Stringer(uX_VERSION_SUBREVISION)

#define uX_VERSION_MAJOR_STR		uX_Stringer(uX_VERSION_MAJOR)
#define uX_VERSION_MINOR_STR		uX_Stringer(uX_VERSION_MINOR)
#define uX_VERSION_PATCH_STR		uX_Stringer(uX_VERSION_REVISION)
#define uX_VERSION_BUILD_STR		uX_Stringer(uX_VERSION_SUBREVISION)

#define uX_FULL_VERSION_STR			uX_VERSION_MAJOR_STR "." uX_VERSION_MINOR_STR "." uX_VERSION_PATCH_STR "." uX_VERSION_BUILD_STR " (" uX_RELEASE_NAME ")"

// The constant uX_VERSION_ALT is used when creating certain uasmlib module objects
// This is to ensure that the application is using the same header version as the library was built with

#define uX_VERSION_ALT ((uX_VERSION_MAJOR<<24) + (uX_VERSION_MINOR<<16) + (uX_VERSION_REVISION<<8) + uX_VERSION_SUBREVISION<<4))

#include "exp.h"

#define uX_FILE uX_LIB_NAME uX_LIB_TYPE

// Finally, define strings.
#ifdef uX_DEBUG
#define uX_LIBRARY		uX_LINK_TYPE_STR " " uX_BUILD_PREFIX uX_BUILD_TYPE " console application "
#else
#define uX_LIBRARY		uX_LINK_TYPE_STR " console application "
#endif
#define uX_COPYRIGHT	"Copyright (C) Navegos (R) 2021. All rights reserved. Optimized Library."
#define uX_COMPANY		"(C) Navegos (R) 2021. Optimized Library."

#define uX_VERSION_MAGIC_STR	"\x00@(#) "
#define uX_VERSION_MAGIC_LEN	6				// Length of uX_VERSION_MAGIC_STR.
#define uX_VERSION_PREF_STR		"(C) Navegos (R) uasmlib"
#define uX_VERSION_PREFIX		uX_VERSION_MAGIC_STR uX_VERSION_PREF_STR

#define uX_FILE_DESCRIPTION uX_VERSION_PREF_STR " " uX_FULL_VERSION_STR " " uX_FAMILY_STR "" uX_ARCH_STR " " uX_COMPILER " " uX_LIBRARY "of " uX_BUILD_DATE "\0"
#define uX_PRODUCT_NAME uX_VERSION_PREF_STR " " uX_FAMILY_STR "" uX_ARCH_STR " " uX_LIBRARY "\0"
#define uX_COMMENTS uX_VERSION_PREF_STR " " uX_LIBRARY "version " uX_FULL_VERSION_STR " for " uX_FAMILY_STR "" uX_ARCH_STR " " uX_COMPILER " build on " uX_BUILD_DATE ". " "For more information visit https://github.com/Navegos/uasmlib" "\0"

#endif // uX_VERSION_H
