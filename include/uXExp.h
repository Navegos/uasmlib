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

#ifndef uX_EXPORTS_H
#define uX_EXPORTS_H 1

#ifndef uX_PREPROCESSOR_H
#include "uXpreprocessor.h"
#endif  /* uX_PREPROCESSOR_H */

#if defined(_WINDOWS) || defined(_WIN32) || defined(_WIN64) || defined(_M_ARM) || defined(_XBOX_ONE) || defined(_M_PPC)

// Exclude rarely-used stuff from Windows headers
#ifndef VC_EXTRALEAN
#define VC_EXTRALEAN
#endif
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#ifndef NOMINMAX
#define NOMINMAX
#endif
#ifndef STRICT
#define STRICT

#endif

// If app hasn't choosen, set to work with Windows 8 and beyond
#if !defined(WINAPI_FAMILY) || (WINAPI_FAMILY != WINAPI_FAMILY_PHONE_APP)
#if defined(_WIN32_WINNT) && (_WIN32_WINNT < _WIN32_WINNT_WIN8)
#undef _WIN32_WINNT
#endif
#ifndef _WIN32_WINNT
#define _WIN32_WINNT		_WIN32_WINNT_WIN8
#endif
#ifndef WINVER
#define WINVER						_WIN32_WINNT
#endif
#ifndef _WIN32_WINDOWS
#define _WIN32_WINDOWS _WIN32_WINNT
#endif
#endif

#endif /*defined(_WINDOWS)*/

#ifdef __cplusplus
# ifndef EXTERN_C_BEGIN
#		define EXTERN_C_BEGIN extern "C" {
# endif
# ifndef EXTERN_C_END
#		define EXTERN_C_END };
# endif
# ifndef EXTERN_CC_BEGIN
#		define EXTERN_CC_BEGIN extern "C++" {
# endif
# ifndef EXTERN_CC_END
#		define EXTERN_CC_END };
# endif
#else
# ifndef EXTERN_C_BEGIN
#		define EXTERN_C_BEGIN
# endif
# ifndef EXTERN_C_END
#		define EXTERN_C_END
# endif
# ifndef EXTERN_CC_BEGIN
#		define EXTERN_CC_BEGIN
# endif
# ifndef EXTERN_CC_END
#		define EXTERN_CC_END
# endif
#endif

/*

#ifdef __cplusplus
EXTERN_CC_BEGIN
#endif

#ifdef __cplusplus
EXTERN_CC_END
#endif

*/

#ifdef __cplusplus
# ifndef _EXTERNC
#		define _EXTERNC		extern "C"
# endif
# ifndef _EXTERNCC
#		define _EXTERNCC	extern "C++"
# endif
# ifndef _EXTERN
#		define _EXTERN		extern
# endif
#else
# ifndef _EXTERNC
#		define _EXTERNC
# endif
# ifndef _EXTERNCC
#		define _EXTERNCC
# endif
# ifndef _EXTERN
#		define _EXTERN		extern
# endif
#endif

#define uX_EXTERNC		_EXTERNC
#define uX_EXTERNCC		_EXTERNCC
#define uX_EXTERN		_EXTERN

#define uX_EXTERNC_BEGIN		EXTERN_C_BEGIN
#define uX_EXTERNC_END			EXTERN_C_END
#define uX_EXTERNCC_BEGIN		EXTERN_CC_BEGIN
#define uX_EXTERNCC_END			EXTERN_CC_END

#if defined(EXPORTS) || defined(_EXPORTS) || defined(LIB_EXPORTS)
#ifndef uX_LIB_IMPORTS
#ifndef uX_LIB_EXPORTS
#define uX_LIB_EXPORTS	1
#endif
#endif
#endif

#if !defined(uX_LIB_EXPORTS)
#ifndef uX_LIB_IMPORTS
#define uX_LIB_IMPORTS	1
#endif
#endif

#ifdef uX_GCC_COMPATIBLE_COMPILER
#define _LIB	1
#define LIB_STATIC	1
#elif defined(uX_MSVC_COMPATIBLE_COMPILER) && (!defined(_DLL) && !defined(_USRDLL) && !defined(_WINDLL) && !defined(LIB_DYNAMIC))
#define _LIB	1
#define LIB_STATIC	1
#endif

#if (defined(LIB_STATIC) || defined(_LIB))
#ifndef uX_LIB_DLL
#ifndef uX_LIB_STATIC
#define uX_LIB_STATIC	1
#endif
#endif
#endif

#if (defined(_DLL) || defined(_USRDLL) || defined(_WINDLL) || defined(LIB_DYNAMIC) || defined(uX_LIB_DLL)) && !defined(uX_LIB_STATIC)
#ifndef uX_LIB_STATIC
#ifndef uX_LIB_DLL
#define uX_LIB_DLL	1
#endif
#endif
#endif

#ifdef uX_LIB_STATIC
#define uX_LINK_TYPE		""
#define uX_LINK_PREFIX		""
#define uX_LINK_TYPE_STR	"static"
#define uX_LIB_TYPE			".exe"
#else
#define uX_LINK_TYPE		""
#define uX_LINK_PREFIX		""
#define uX_LINK_TYPE_STR	"dynamic"
#define uX_LIB_TYPE			".exe"
#endif

#if !defined( uX_LIB_DLL) && !defined( uX_LIB_STATIC)
# error ("!!!Your uamslib lib type static or dll aren't defined")
#endif

#if defined(uX_LINUX_OS)
# if defined(uX_LIB_STATIC)
#				define uX_VISIBILITY_HIDDEN __attribute__((visibility ("hidden")))
#				define uX_PRIVATE_SYMBOL	__attribute__((visibility ("internal")))
#				define uX_LOCAL_SYMBOL		__attribute__((visibility ("hidden")))
#				define uX_EXPORT_SYMBOL		__attribute__((visibility ("hidden")))
#				define uX_IMPORT_SYMBOL		__attribute__((visibility ("hidden")))
# else
#				define uX_VISIBILITY_HIDDEN __attribute__((visibility ("hidden")))
#				define uX_PRIVATE_SYMBOL	__attribute__((visibility ("internal")))
#				define uX_LOCAL_SYMBOL		__attribute__((visibility ("hidden")))
#				define uX_EXPORT_SYMBOL		__attribute__((visibility ("default")))
#				define uX_IMPORT_SYMBOL		__attribute__((visibility ("default")))
# endif
#elif defined(uX_MACOSX_OS)
# if defined(uX_LIB_STATIC)
#				define uX_VISIBILITY_HIDDEN __attribute__((visibility ("hidden")))
#				define uX_PRIVATE_SYMBOL	__attribute__((visibility ("hidden")))
#				define uX_LOCAL_SYMBOL		__attribute__((visibility ("hidden")))
#				define uX_EXPORT_SYMBOL		__attribute__((visibility ("hidden")))
#				define uX_IMPORT_SYMBOL		__attribute__((visibility ("hidden")))
# else
#				define uX_VISIBILITY_HIDDEN __attribute__((visibility ("hidden")))
#				define uX_PRIVATE_SYMBOL	__attribute__((visibility ("hidden")))
#				define uX_LOCAL_SYMBOL		__attribute__((visibility ("hidden")))
#				define uX_EXPORT_SYMBOL		__attribute__((visibility ("default")))
#				define uX_IMPORT_SYMBOL		__attribute__((visibility ("default")))
# endif
#elif defined(uX_WINDOWS_OS)
# if defined(uX_LIB_STATIC)
#				define uX_VISIBILITY_HIDDEN /*empty*/
#				define uX_PRIVATE_SYMBOL
#				define uX_LOCAL_SYMBOL
#				define uX_EXPORT_SYMBOL
#				define uX_IMPORT_SYMBOL
#else
#				define uX_VISIBILITY_HIDDEN /*empty*/
#				define uX_PRIVATE_SYMBOL
#				define uX_LOCAL_SYMBOL
#				define uX_EXPORT_SYMBOL		__declspec(dllexport)
#				define uX_IMPORT_SYMBOL		__declspec(dllimport)
#endif
#else
#error "Unsupported output format"
#endif

#if defined(uX_LIB_EXPORTS)
#				define uX_PUBLIC_SYMBOL uX_EXPORT_SYMBOL
#elif defined (uX_LIB_IMPORTS)
#				define uX_PUBLIC_SYMBOL uX_IMPORT_SYMBOL
#else
#error "Visibility symbols are not defined"
#endif

/* If building or using uasmlib as a DLL, define uX_LIB_DLL.
* This is not mandatory, but it offers a little performance increase.
*/

/*#if defined(_WINDOWS) || defined(_WIN32) || defined(_WIN64) || defined(_M_ARM) || defined(_XBOX_ONE) || defined(_M_PPC)*/
#  if defined(uX_MSVC_COMPATIBLE_COMPILER)
#		if defined(uX_LIB_DLL) && !defined(uX_LIB_STATIC)
#				if defined(uX_LIB_EXPORTS)
#				define uX_API uX_EXPORT_SYMBOL
#				elif defined (uX_LIB_IMPORTS)
#				define uX_API uX_IMPORT_SYMBOL
#				else
#				define uX_API
#				endif
#		else  // uX_LIB_LIB
#				define uX_API
#		endif
#  else  // uX_LIB_LIB
#				if defined(uX_LIB_EXPORTS)
#						define uX_API uX_EXPORT_SYMBOL
#				elif defined (uX_LIB_IMPORTS)
#				define uX_API uX_IMPORT_SYMBOL
#				else // uX_LIB_STATIC  _LIB
#				define uX_API
#				endif
#  endif  /* ! uX_LIB_DLL */

/*
#else
#		define uX_API
#endif // _WINDOWS*/

//#define DXSTDAPI												EXTERN_C HRESULT STDAPICALLTYPE
//#define DXSTDAPI_(type)						EXTERN_C type STDAPICALLTYPE

#		define uX_LIB_NAME /*uX_COMPILER_STR*/ "uasmlib" /*uX_LINK_TYPE_STR uX_FAMILY_STR uX_ARCH_STR*/ uX_LINK_PREFIX uX_LINK_TYPE uX_BUILD_PREFIX

#		define uX_LIB_NAME_STR uX_COMPILER_STR "uasmlib" uX_LINK_TYPE_STR uX_FAMILY_STR uX_ARCH_STR uX_BUILD_PREFIX

#ifdef uX_LIB_IMPORTS
#		//pragma comment( lib, uX_LIB_NAME ".lib")
#endif

#endif /*uX_EXPORTS_H*/
