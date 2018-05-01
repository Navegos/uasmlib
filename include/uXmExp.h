
#pragma once

#ifndef uXm_EXPORTS_H
#define uXm_EXPORTS_H

#include "uXmPreprocessor.h"


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


#ifndef _WINDOWS_
# pragma warning( push )
#if __INTEL_COMPILER
# pragma warning( disable: 271 310 )
#elif _MSC_VER
#pragma warning(disable : 4005)
#endif
#pragma pack(push)
#pragma pack(8)
# include <windows.h>
#pragma pack (pop)
# pragma warning( pop )
#endif

// If app hasn't choosen, set to work with Windows 8 and beyond
#if !defined(WINAPI_FAMILY) || (WINAPI_FAMILY != WINAPI_FAMILY_PHONE_APP)
#if defined(_WIN32_WINNT) && (_WIN32_WINNT < _WIN32_WINNT_WIN8)
#undef _WIN32_WINNT
#endif
#ifndef _WIN32_WINNT
#define _WIN32_WINNT   _WIN32_WINNT_WIN8
#endif
#ifndef WINVER
#define WINVER         _WIN32_WINNT
#endif
#ifndef _WIN32_WINDOWS
#define _WIN32_WINDOWS _WIN32_WINNT
#endif
#endif

#endif /*defined(_WINDOWS)*/

#ifdef __cplusplus
# ifndef EXTERN_C_BEGIN
#	define EXTERN_C_BEGIN extern "C" {
# endif
# ifndef EXTERN_C_END
#	define EXTERN_C_END };
# endif
# ifndef EXTERN_CC_BEGIN
#	define EXTERN_CC_BEGIN extern "C++" {
# endif
# ifndef EXTERN_CC_END
#	define EXTERN_CC_END };
# endif
#else
# ifndef EXTERN_C_BEGIN
#	define EXTERN_C_BEGIN
# endif
# ifndef EXTERN_C_END
#	define EXTERN_C_END
# endif
# ifndef EXTERN_CC_BEGIN
#	define EXTERN_CC_BEGIN
# endif
# ifndef EXTERN_CC_END
#	define EXTERN_CC_END
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
#	define _EXTERNC extern "C"
# endif
# ifndef _EXTERNCC
#	define _EXTERNCC extern "C++"
# endif
# ifndef _EXTERN
#	define _EXTERN extern
# endif
#else
# ifndef _EXTERNC
#	define _EXTERNC
# endif
# ifndef _EXTERNCC
#	define _EXTERNCC
# endif
# ifndef _EXTERN
#	define _EXTERN extern
# endif
#endif

#define uXm_EXTERNC	_EXTERNC
#define uXm_EXTERNCC _EXTERNCC
#define uXm_EXTERN	_EXTERN

#define uXm_EXTERNC_BEGIN	EXTERN_C_BEGIN
#define uXm_EXTERNC_END		EXTERN_C_END
#define uXm_EXTERNCC_BEGIN	EXTERN_CC_BEGIN
#define uXm_EXTERNCC_END		EXTERN_CC_END

#if defined(EXPORTS) || defined(_EXPORTS) || defined(LIB_EXPORTS)
#ifndef uXm_LIB_IMPORTS
#ifndef uXm_LIB_EXPORTS
#define uXm_LIB_EXPORTS 1
#endif
#endif
#endif

#if !defined(uXm_LIB_EXPORTS)
#ifndef uXm_LIB_IMPORTS
#define uXm_LIB_IMPORTS 1
#endif
#endif

#if (defined(LIB_STATIC) || defined(uXm_LIB_STATIC)) && defined(_LIB) && !(defined(_DLL) && defined(_USRDLL) && defined(_WINDLL) && defined(LIB_DYNAMIC) && defined( uXm_LIB_DLL))
#ifndef uXm_LIB_DLL
#ifndef uXm_LIB_STATIC
#define uXm_LIB_STATIC 1
#endif
#endif
#endif

#ifdef uXm_LIB_STATIC
#define uXm_LINK_TYPE "s"
#define uXm_LINK_PREFIX "_"
#define uXm_LINK_TYPE_STR "static"
#define uXm_LIB_TYPE ".lib"
#else
#define uXm_LINK_TYPE ""
#define uXm_LINK_PREFIX ""
#define uXm_LINK_TYPE_STR "dynamic"
#define uXm_LIB_TYPE ".dll"
#endif

#if (defined(_DLL) || defined(_USRDLL) || defined(_WINDLL) || defined(LIB_DYNAMIC) || defined(uXm_LIB_DLL)) && !defined(_LIB) && !defined(uXm_LIB_STATIC)
#ifndef uXm_LIB_STATIC
#ifndef uXm_LIB_DLL
#define uXm_LIB_DLL 1
#endif
#endif
#endif

#if !defined( uXm_LIB_DLL) && !defined( uXm_LIB_STATIC)
# error ("!!!Your uXmOAPMath lib type static or dll aren't defined")
#endif

#if defined(uXm_LINUX_OS)
# if defined(uXm_LIB_STATIC)
#		define uXm_VISIBILITY_HIDDEN __attribute__((visibility ("hidden")))
#		define uXm_PRIVATE_SYMBOL __attribute__((visibility ("internal")))
#		define uXm_LOCAL_SYMBOL   __attribute__((visibility ("hidden")))
#		define uXm_EXPORT_SYMBOL  __attribute__((visibility ("hidden")))
#		define uXm_IMPORT_SYMBOL  __attribute__((visibility ("hidden")))
# else
#		define uXm_VISIBILITY_HIDDEN __attribute__((visibility ("hidden")))
#		define uXm_PRIVATE_SYMBOL __attribute__((visibility ("internal")))
#		define uXm_LOCAL_SYMBOL   __attribute__((visibility ("hidden")))
#		define uXm_EXPORT_SYMBOL  __attribute__((visibility ("default")))
#		define uXm_IMPORT_SYMBOL  __attribute__((visibility ("default")))
# endif
#elif defined(uXm_MACOSX_OS)
# if defined(uXm_LIB_STATIC)
#		define uXm_VISIBILITY_HIDDEN __attribute__((visibility ("hidden")))
#		define uXm_PRIVATE_SYMBOL __attribute__((visibility ("hidden")))
#		define uXm_LOCAL_SYMBOL   __attribute__((visibility ("hidden")))
#		define uXm_EXPORT_SYMBOL  __attribute__((visibility ("hidden")))
#		define uXm_IMPORT_SYMBOL  __attribute__((visibility ("hidden")))
# else
#		define uXm_VISIBILITY_HIDDEN __attribute__((visibility ("hidden")))
#		define uXm_PRIVATE_SYMBOL __attribute__((visibility ("hidden")))
#		define uXm_LOCAL_SYMBOL   __attribute__((visibility ("hidden")))
#		define uXm_EXPORT_SYMBOL  __attribute__((visibility ("default")))
#		define uXm_IMPORT_SYMBOL  __attribute__((visibility ("default")))
# endif
#elif defined(uXm_WINDOWS_OS)
# if defined(uXm_LIB_STATIC)
#		define uXm_VISIBILITY_HIDDEN /*empty*/
#		define uXm_PRIVATE_SYMBOL
#		define uXm_LOCAL_SYMBOL
#		define uXm_EXPORT_SYMBOL
#		define uXm_IMPORT_SYMBOL
#else
#		define uXm_VISIBILITY_HIDDEN /*empty*/
#		define uXm_PRIVATE_SYMBOL
#		define uXm_LOCAL_SYMBOL
#		define uXm_EXPORT_SYMBOL __declspec(dllexport)
#		define uXm_IMPORT_SYMBOL __declspec(dllimport)
#endif
#else
#error "Unsupported output format"
#endif

#if defined(uXm_LIB_EXPORTS)
#		define uXm_PUBLIC_SYMBOL uXm_EXPORT_SYMBOL
#elif defined (uXm_LIB_IMPORTS)
#		define uXm_PUBLIC_SYMBOL uXm_IMPORT_SYMBOL
#else
#error "Visibility symbols are not defined"
#endif

/* If building or using uXmOAMP lib as a DLL, define uXm_LIB_DLL.
* This is not mandatory, but it offers a little performance increase.
*/

/*#if defined(_WINDOWS) || defined(_WIN32) || defined(_WIN64) || defined(_M_ARM) || defined(_XBOX_ONE) || defined(_M_PPC)*/
#  if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#    if defined(uXm_LIB_DLL) && !defined(uXm_LIB_STATIC)
#      if defined(uXm_LIB_EXPORTS)
#        define uXm_EXAPI uXm_EXPORT_SYMBOL
#      elif defined (uXm_LIB_IMPORTS)
#        define uXm_EXAPI uXm_IMPORT_SYMBOL
#      else
#        define uXm_EXAPI
#      endif
#	 else  // uXm_LIB_LIB
#      define uXm_EXAPI
#    endif
#  else  // uXm_LIB_LIB
#      if defined(uXm_LIB_EXPORTS)
#			define uXm_EXAPI uXm_EXPORT_SYMBOL
#      elif defined (uXm_LIB_IMPORTS)
#        define uXm_EXAPI uXm_IMPORT_SYMBOL
#      else // uXm_LIB_STATIC  _LIB
#        define uXm_EXAPI
#      endif
#  endif  /* ! uXm_LIB_DLL */

/*
#else
#	define uXm_EXAPI
#endif // _WINDOWS*/



//#define DXSTDAPI                  EXTERN_C HRESULT STDAPICALLTYPE
//#define DXSTDAPI_(type)           EXTERN_C type STDAPICALLTYPE

#   define uXm_LIB_NAME /*uXm_COMPILER_STR*/ "uasmlib" /*uXm_LINK_TYPE_STR uXm_FAMILY_STR uXm_ARCH_STR*/ uXm_LINK_PREFIX uXm_LINK_TYPE uXm_BUILD_PREFIX uXm_BUILD_TYPE

#   define uXm_LIB_NAME_STR uXm_COMPILER_STR "uasmlib" uXm_LINK_TYPE_STR uXm_FAMILY_STR uXm_ARCH_STR uXm_BUILD_PREFIX uXm_BUILD_TYPE

#ifdef uXm_LIB_IMPORTS
#	pragma comment( lib, uXm_LIB_NAME ".lib")
#endif

#endif /*uXm_EXPORTS_H*/
