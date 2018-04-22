
#pragma once

#ifndef uXm_BASEDEFS_H
#define uXm_BASEDEFS_H

#include "uXmPreprocessor.h"
#include "uXmExp.h"

/**
Calling convention  // currently defined for windows only for (MSVC / Intel ICW) & (GCC compatible compiler / Intel ICU), needs researching for other compilers implementation
*/
#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#ifndef uXm_CALLCONV
# if defined(uXm_VCVECTORCALL)
#	if defined(uXm_VC)
#		define uXm_CALLCONV __vectorcall
#	else
#	if defined(uXm_X86_OR_X64_CPU) && !defined(uXm_MIC)
#		define uXm_CALLCONV __fastcall
#	else
#		define uXm_CALLCONV
#	endif
#  endif
/*
# elif defined(uXm_ICREGCALL)
#		define uXm_CALLCONV(T) __regcall T*/
# else
#	if defined(uXm_X86_OR_X64_CPU) && !defined(uXm_MIC)
#		define uXm_CALLCONV __fastcall
#	else
#		define uXm_CALLCONV
#	endif
# endif
#endif
#	if defined(uXm_X86_OR_X64_CPU) && !defined(uXm_MIC)
#	define uXm_CDECL __cdecl
#	define uXm_STDCALL __stdcall
#	define uXm_FASTCALL __fastcall
#else
#	define uXm_CDECL
#	define uXm_STDCALL
#	define uXm_FASTCALL
#endif
# if defined(uXm_VCVECTORCALL)
#	if defined(uXm_VC)
#		define uXm_VECCALL __vectorcall
#	else
#	if defined(uXm_X86_OR_X64_CPU) && !defined(uXm_MIC)
#		define uXm_VECCALL __fastcall
#	else
#		define uXm_VECCALL
#	endif
#  endif
/*
# elif defined(uXm_ICREGCALL)
#		define uXm_VECCALL(T) __regcall T*/
# else
#	if defined(uXm_X86_OR_X64_CPU) && !defined(uXm_MIC)
#		define uXm_VECCALL __fastcall
#	else
#		define uXm_VECCALL
#	endif
# endif
#elif defined(uXm_GCC_COMPATIBLE_COMPILER)
/*
# if defined(uXm_ICREGCALL)
#	define uXm_CALLCONV(T) __attribute__((regcall)) T
#	define uXm_VECCALL(T) __attribute__((regcall)) T
#else*/
#  if defined(uXm_X86_OR_X64_CPU) && !defined(uXm_MIC)
#	define uXm_CALLCONV __attribute__((sysv_abi))
#	define uXm_VECCALL __attribute__((sysv_abi))
#  else
#	define uXm_CALLCONV
#	define uXm_VECCALL
#  endif
/*# endif*/
#	if defined(uXm_X86_OR_X64_CPU) && !defined(uXm_MIC)
#	define uXm_CDECL __attribute__((cdecl))
#	define uXm_FASTCALL __attribute__((fastcall))
#	define uXm_STDCALL  __attribute__((stdcall))
# else
#	define uXm_CDECL
#	define uXm_FASTCALL
#	define uXm_STDCALL
# endif
#else
#   define uXm_CALLCONV
#   define uXm_VECCALL
#   define uXm_CDECL
#   define uXm_STDCALL
#   define uXm_FASTCALL
#endif

#if defined(uXm_X86_ABI) && (defined(uXm_MSVC_COMPATIBLE_COMPILER))
#   define uXmABI uXm_CDECL
#elif defined(uXm_X86_ABI) && (defined(uXm_GCC_COMPATIBLE_COMPILER))
#   define uXmABI uXm_CDECL
#else
#   define uXmABI
#endif

#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#	define uXm_PACK_PUSH_DEF(X)			__pragma( pack(push, X) )
#	define uXm_PACK_PUSH1				__pragma( pack(push, 1) )
#	define uXm_PACK_PUSH2				__pragma( pack(push, 2) )
#	define uXm_PACK_PUSH4				__pragma( pack(push, 4) )
#	define uXm_PACK_PUSH8				__pragma( pack(push, 8) )
#	define uXm_PACK_PUSH16				__pragma( pack(push, 16) )
#	define uXm_PACK_DEF(X)			__pragma( pack(X) )
#	define uXm_PACK1				__pragma( pack(1) )
#	define uXm_PACK2				__pragma( pack(2) )
#	define uXm_PACK4				__pragma( pack(4) )
#	define uXm_PACK8				__pragma( pack(8) )
#	define uXm_PACK16				__pragma( pack(16) )
# if (defined(_MSC_VER) && (_MSC_VER >= 1600)) || (defined(_MSC_VER) && (__INTEL_COMPILER >= 1300))
#	define uXm_PACK_PUSH32				__pragma( pack(push, 32) )
#	define uXm_PACK_PUSH64				__pragma( pack(push, 64) )
#	define uXm_PACK_PUSH128				__pragma( pack(push, 128) )
#	define uXm_PACK_PUSH256				__pragma( pack(push, 256) )
#	define uXm_PACK_PUSH512				__pragma( pack(push, 512) )
#	define uXm_PACK32				__pragma( pack(32) )
#	define uXm_PACK64				__pragma( pack(64) )
#	define uXm_PACK128				__pragma( pack(128) )
#	define uXm_PACK256				__pragma( pack(256) )
#	define uXm_PACK512				__pragma( pack(512) )
#else
#	define uXm_PACK_PUSH32				__pragma( pack(push, 16) )
#	define uXm_PACK_PUSH64				__pragma( pack(push, 16) )
#	define uXm_PACK_PUSH128				__pragma( pack(push, 16) )
#	define uXm_PACK_PUSH256				__pragma( pack(push, 16) )
#	define uXm_PACK_PUSH512				__pragma( pack(push, 16) )
#	define uXm_PACK32				__pragma( pack(16) )
#	define uXm_PACK64				__pragma( pack(16) )
#	define uXm_PACK128				__pragma( pack(16) )
#	define uXm_PACK256				__pragma( pack(16) )
#	define uXm_PACK512				__pragma( pack(16) )
# endif
#	define uXm_PACK_PUSH_SIZET			__pragma( pack(push, uXm_SIZE_T_SIZE) )
#	define uXm_PACK_PUSH_POINTER		__pragma( pack(push, uXm_POINTER_SIZE) )
#	define uXm_PACK_SIZET				__pragma( pack(uXm_SIZE_T_SIZE) )
#	define uXm_PACK_POINTER				__pragma( pack(uXm_POINTER_SIZE) )
#	define uXm_PACK_POP					__pragma( pack(pop) )
#	define uXm_PRAGMA_ONCE				__pragma(once)
#	define uXm_PRAGMA(exprs)			__pragma(exprs)
#elif (uXm_GCC_COMPATIBLE_COMPILER) && !defined(__SPU__))
#	define uXm_PACK_PUSH_DEF(X)			_Pragma("pack(push, X)")
#	define uXm_PACK_PUSH1				_Pragma("pack(push, 1)")
#	define uXm_PACK_PUSH2				_Pragma("pack(push, 2)")
#	define uXm_PACK_PUSH4				_Pragma("pack(push, 4)")
#	define uXm_PACK_PUSH8				_Pragma("pack(push, 8)")
#	define uXm_PACK_PUSH16				_Pragma("pack(push, 16)")
#	define uXm_PACK_PUSH32				_Pragma("pack(push, 32)")
#	define uXm_PACK_PUSH64				_Pragma("pack(push, 64)")
#	define uXm_PACK_PUSH128				_Pragma("pack(push, 128)")
#	define uXm_PACK_PUSH256				_Pragma("pack(push, 256)")
#	define uXm_PACK_PUSH512				_Pragma("pack(push, 512)")
#	define uXm_PACK_PUSH_SIZET			_Pragma("pack(push, uXm_SIZE_T_SIZE)")
#	define uXm_PACK_PUSH_POINTER			_Pragma("pack(push, uXm_POINTER_SIZE)")
#	define uXm_PACK_DEF(X)			_Pragma("pack(X)")
#	define uXm_PACK1				_Pragma("pack(1)")
#	define uXm_PACK2				_Pragma("pack(2)")
#	define uXm_PACK4				_Pragma("pack(4)")
#	define uXm_PACK8				_Pragma("pack(8)")
#	define uXm_PACK16				_Pragma("pack(16)")
#	define uXm_PACK32				_Pragma("pack(32)")
#	define uXm_PACK64				_Pragma("pack(64)")
#	define uXm_PACK128				_Pragma("pack(128)")
#	define uXm_PACK256				_Pragma("pack(256)")
#	define uXm_PACK512				_Pragma("pack(512)")
#	define uXm_PACK_SIZET			_Pragma("pack(uXm_SIZE_T_SIZE)")
#	define uXm_PACK_POINTER			_Pragma("pack(uXm_POINTER_SIZE)")
#	define uXm_PACK_POP					_Pragma("pack(pop)")
#	define uXm_PRAGMA_ONCE				_Pragma("once")
#	define uXm_PRAGMA(exprs)				_Pragma(uXmStringer(exprs))
#elif defined(uXm_IBMC)
#	define uXm_PACK_PUSH_DEF(X)			_Pragma("pack(X)")
#	define uXm_PACK_PUSH1				_Pragma("pack(1)")
#	define uXm_PACK_PUSH2				_Pragma("pack(2)")
#	define uXm_PACK_PUSH4				_Pragma("pack(4)")
#	define uXm_PACK_PUSH8				_Pragma("pack(8)")
#	define uXm_PACK_PUSH16				_Pragma("pack(16)")
#	define uXm_PACK_PUSH32				_Pragma("pack(32)")
#	define uXm_PACK_PUSH64				_Pragma("pack(64)")
#	define uXm_PACK_PUSH128				_Pragma("pack(128)")
#	define uXm_PACK_PUSH256				_Pragma("pack(256)")
#	define uXm_PACK_PUSH512				_Pragma("pack(512)")
#	define uXm_PACK_PUSH_SIZET			_Pragma("pack(uXm_SIZE_T_SIZE)")
#	define uXm_PACK_PUSH_POINTER		_Pragma("pack(uXm_POINTER_SIZE)")
#	define uXm_PACK_DEF(X)			_Pragma("pack(X)")
#	define uXm_PACK1				_Pragma("pack(1)")
#	define uXm_PACK2				_Pragma("pack(2)")
#	define uXm_PACK4				_Pragma("pack(4)")
#	define uXm_PACK8				_Pragma("pack(8)")
#	define uXm_PACK16				_Pragma("pack(16)")
#	define uXm_PACK32				_Pragma("pack(32)")
#	define uXm_PACK64				_Pragma("pack(64)")
#	define uXm_PACK128				_Pragma("pack(128)")
#	define uXm_PACK256				_Pragma("pack(256)")
#	define uXm_PACK512				_Pragma("pack(512)")
#	define uXm_PACK_SIZET			_Pragma("pack(uXm_SIZE_T_SIZE)")
#	define uXm_PACK_POINTER		_Pragma("pack(uXm_POINTER_SIZE)")
#	define uXm_PACK_POP					_Pragma("pack(pop)")
#	define uXm_PRAGMA_ONCE				_Pragma("once")
#	define uXm_PRAGMA(exprs)				_Pragma(uXmStringer(exprs))
#else
#	define uXm_PACK_PUSH_DEF(X)
#	define uXm_PACK_PUSH1
#	define uXm_PACK_PUSH2
#	define uXm_PACK_PUSH4
#	define uXm_PACK_PUSH8
#	define uXm_PACK_PUSH16
#	define uXm_PACK_PUSH32
#	define uXm_PACK_PUSH64
#	define uXm_PACK_PUSH128
#	define uXm_PACK_PUSH256
#	define uXm_PACK_PUSH512
#	define uXm_PACK_PUSH_SIZET
#	define uXm_PACK_PUSH_POINTER
#	define uXm_PACK_DEF(X)
#	define uXm_PACK1
#	define uXm_PACK2
#	define uXm_PACK4
#	define uXm_PACK8
#	define uXm_PACK16
#	define uXm_PACK32
#	define uXm_PACK64
#	define uXm_PACK128
#	define uXm_PACK256
#	define uXm_PACK512
#	define uXm_PACK_SIZET
#	define uXm_PACK_POINTER
#	define uXm_PACK_POP
#	define uXm_PRAGMA_ONCE
#	define uXm_PRAGMAERROR(exprs)
#	define uXm_PRAGMA(exprs)
#endif

/**
Inline macro
*/
# if defined(uXm_MSVC_COMPATIBLE_COMPILER)
uXm_PRAGMA(inline_depth(255))
//#	pragma inline_depth( 255 )
#	ifndef uXm_INLINE
#	  ifndef uXm_DEBUG
// inline on in release build for static inline
#		define __uXm_S_INLINE(T) static __inline T
// inline on in release build for static inline
#		define _uXm_S_INLINE(T) static __inline T

// inline on in release build for static inline
#		define __uXm_S_INLINEART(T) static __inline T
// inline on in release build for static inline
#		define _uXm_S_INLINEART(T) static __inline T

// forceinline on in release build for static forceinline
#		define __uXm_S_FINLINE(T) static __forceinline T
// forceinline on in release build for static forceinline
#		define __uXm_S_FINLINEART(T) static __forceinline T

// inline on in release build for inline only
#		define __uXm_INLINE(T) __inline T
// inline on in release build for inline only
#		define _uXm_INLINE(T) __inline T

// inline on in release build for inline only
#		define __uXm_INLINEART(T) __inline T
// inline on in release build for inline only
#		define _uXm_INLINEART(T) __inline T

// forceinline on release build for forceinline only
#		define __uXm_FINLINE(T) __forceinline T
// forceinline on release build for forceinline only
#		define __uXm_FINLINEART(T) __forceinline T

// inline on in release build for static inline with veccall
#		define __uXm_S_INLINE_VECCALL(T) static __inline uXm_VECCALL(T)
// inline on in release build for static inline with veccall
#		define _uXm_S_INLINE_VECCALL(T) static __inline uXm_VECCALL(T)

// inline on in release build for static inline with veccall
#		define __uXm_S_INLINEART_VECCALL(T) static __inline uXm_VECCALL(T)
// inline on in release build for static inline with veccall
#		define _uXm_S_INLINEART_VECCALL(T) static __inline uXm_VECCALL(T)

// forceinline on in release build for static forceinline with veccall
#		define __uXm_S_FINLINE_VECCALL(T) static __forceinline uXm_VECCALL(T)
// forceinline on in release build for static forceinline with veccall
#		define __uXm_S_FINLINEART_VECCALL(T) static __forceinline uXm_VECCALL(T)

// inline on in release build for inline only with veccall
#		define __uXm_INLINE_VECCALL(T) __inline uXm_VECCALL(T)
// inline on in release build for inline only with veccall
#		define _uXm_INLINE_VECCALL(T) __inline uXm_VECCALL(T)

// inline on in release build for inline only with veccall
#		define __uXm_INLINEART_VECCALL(T) __inline uXm_VECCALL(T)
// inline on in release build for inline only with veccall
#		define _uXm_INLINEART_VECCALL(T) __inline uXm_VECCALL(T)

// forceinline on in release build for forceinline only with veccall
#		define __uXm_FINLINE_VECCALL(T) __forceinline uXm_VECCALL(T)
// forceinline on in release build for forceinline only with veccall
#		define __uXm_FINLINEART_VECCALL(T) __forceinline uXm_VECCALL(T)
#	  else
// inline of in debug build for static inline
#		define __uXm_S_INLINE(T) static T
// inline of in debug build for static inline
#		define _uXm_S_INLINE(T) static T

// inline of in debug build for static inline
#		define __uXm_S_INLINEART(T) static T
// inline of in debug build for static inline
#		define _uXm_S_INLINEART(T) static T

// forceinline of in debug build for static forceinline
#		define __uXm_S_FINLINE(T) static T
// forceinline of in debug build for static forceinline
#		define __uXm_S_FINLINEART(T) static T

// inline of in debug build for inline only
#		define __uXm_INLINE(T) T
// inline of in debug build for inline only
#		define _uXm_INLINE(T) T

// inline of in debug build for inline only
#		define __uXm_INLINEART(T) T
// inline of in debug build for inline only
#		define _uXm_INLINEART(T) T

// forceinline of in debug build for forceinline only
#		define __uXm_FINLINE(T) T
// forceinline of in debug build for forceinline only
#		define __uXm_FINLINEART(T) T

// inline of in debug build for static inline with veccall
#		define __uXm_S_INLINE_VECCALL(T) static uXm_VECCALL(T)
// inline of in debug build for static inline with veccall
#		define _uXm_S_INLINE_VECCALL(T) static uXm_VECCALL(T)

// inline of in debug build for static inline with veccall
#		define __uXm_S_INLINEART_VECCALL(T) static uXm_VECCALL(T)
// inline of in debug build for static inline with veccall
#		define _uXm_S_INLINEART_VECCALL(T) static uXm_VECCALL(T)

// forceinline of in debug build for static forceinline with veccall
#		define __uXm_S_FINLINE_VECCALL(T) static uXm_VECCALL(T)
// forceinline of in debug build for static forceinline with veccall
#		define __uXm_S_FINLINEART_VECCALL(T) static uXm_VECCALL(T)

// inline of in debug build for inline only with veccall
#		define __uXm_INLINE_VECCALL(T) uXm_VECCALL(T)
// inline of in debug build for inline only with veccall
#		define _uXm_INLINE_VECCALL(T) uXm_VECCALL(T)

// inline of in debug build for inline only with veccall
#		define __uXm_INLINEART_VECCALL(T) uXm_VECCALL(T)
// inline of in debug build for inline only with veccall
#		define _uXm_INLINEART_VECCALL(T) uXm_VECCALL(T)

// forceinline of in debug build for forceinline only with veccall
#		define __uXm_FINLINE_VECCALL(T) uXm_VECCALL(T)
// forceinline of in debug build for forceinline only with veccall
#		define __uXm_FINLINEART_VECCALL(T) uXm_VECCALL(T)
#	  endif // uXm_DEBUG

// inline hallways on for static inline
#		define uXm_S_INLINE(T) static __inline T
// inline hallways on for static inline
#		define uXm_S_INLINEART(T) static __inline T

// forceinline hallways on for static forceinline
#		define uXm_S_FINLINE(T) static __forceinline T
// forceinline hallways on for static forceinline
#		define uXm_S_FINLINEART(T) static __forceinline T

// inline hallways on for inline only
#		define uXm_INLINE(T) __inline T
// inline hallways on for inline only
#		define uXm_INLINEART(T) __inline T

// forceinline hallways on for forceinline only
#		define uXm_FINLINE(T) __forceinline T
// forceinline hallways on for forceinline only
#		define uXm_FINLINEART(T) __forceinline T

// inline hallways on for static inline with veccall
#		define uXm_S_INLINE_VECCALL(T) static __inline uXm_VECCALL(T)
// inline hallways on for static inline with veccall
#		define uXm_S_INLINEART_VECCALL(T) static __inline uXm_VECCALL(T)

// forceinline hallways on for static forceinline with veccall
#		define uXm_S_FINLINE_VECCALL(T) static __forceinline uXm_VECCALL(T)
// forceinline hallways on for static forceinline with veccall
#		define uXm_S_FINLINEART_VECCALL(T) static __forceinline uXm_VECCALL(T)

// inline hallways on for inline only with veccall
#		define uXm_INLINE_VECCALL(T) __inline uXm_VECCALL(T)
// inline hallways on for inline only with veccall
#		define uXm_INLINEART_VECCALL(T) __inline uXm_VECCALL(T)

// forceinline hallways on for forceinline only with veccall
#		define uXm_FINLINE_VECCALL(T) __forceinline uXm_VECCALL(T)
// forceinline hallways on for forceinline only with veccall
#		define uXm_FINLINEART_VECCALL(T) __forceinline uXm_VECCALL(T)
#	endif // uXm_INLINE
#elif defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(uXm_IBMC)
#  if defined(uXm_GNUC) && !defined(uXm_CLANG)
uXm_PRAGMA(inline_depth(255))
#	ifndef uXm_INLINE
#	  ifndef uXm_DEBUG
// inline on in release build for static inline
#		define __uXm_S_INLINE(T) static  inline T __attribute__((__gnu_inline__, __always_inline__))
// inline on in release build for static inline
#		define _uXm_S_INLINE(T) static  inline T __attribute__((__gnu_inline__, __always_inline__))

// inline on in release build for static inline artificial
#		define __uXm_S_INLINEART(T) static  inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))
// inline on in release build for static inline artificial
#		define _uXm_S_INLINEART(T) static  inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline on in release build for static forceinline
#		define __uXm_S_FINLINE(T) static inline T __attribute__((__gnu_inline__, __always_inline__))
// forceinline on in release build for static forceinline artificial
#		define __uXm_S_FINLINEART(T) static inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline on in release build for inline only
#		define __uXm_INLINE(T) inline T __attribute__((__gnu_inline__, __always_inline__))
// inline on in release build for inline only
#		define _uXm_INLINE(T) inline T __attribute__((__gnu_inline__, __always_inline__))

// inline on in release build for inline only artificial
#		define __uXm_INLINEART(T) inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))
// inline on in release build for inline only artificial
#		define _uXm_INLINEART(T) inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline on in release build for forceinline only
#		define __uXm_FINLINE(T) inline T __attribute__((__gnu_inline__, __always_inline__))
// forceinline on in release build for forceinline only artificial
#		define __uXm_FINLINEART(T) inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline on in release build for static inline with veccall
#		define __uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__))
// inline on in release build for static inline with veccall
#		define _uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__))

// inline on in release build for static inline artificial with veccall
#		define __uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))
// inline on in release build for static inline artificial with veccall
#		define _uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline on in release build for static forceinline with veccall
#		define __uXm_S_FINLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__))
// forceinline on in release build for static forceinline artificial with veccall
#		define __uXm_S_FINLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline on in release build for inline only with veccall
#		define __uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__))
// inline on in release build for inline only with veccall
#		define _uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__))

// inline on in release build for static inline artificial with veccall
#		define __uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))
// inline on in release build for static inline artificial with veccall
#		define _uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline on in release build for forceinline only with veccall
#		define __uXm_FINLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__))
// forceinline on in release build for forceinline artificial only with veccall
#		define __uXm_FINLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))
#	  else
// inline of in debug build for static inline
#		define __uXm_S_INLINE(T) static T
// inline of in debug build for static inline
#		define _uXm_S_INLINE(T) static T

// inline of in debug build for static inline artificial
#		define __uXm_S_INLINEART(T) static T
// inline of in debug build for static inline artificial
#		define _uXm_S_INLINEART(T) static T

// forceinline of in debug build for static forceinline
#		define __uXm_S_FINLINE(T) static T
// forceinline of in debug build for static forceinline artificial
#		define __uXm_S_FINLINEART(T) static T

// inline of in debug build for inline only
#		define __uXm_INLINE(T) T
// inline of in debug build for inline only
#		define _uXm_INLINE(T) T

// inline of in debug build for inline only artificial
#		define __uXm_INLINEART(T) T
// inline of in debug build for inline only artificial
#		define _uXm_INLINEART(T) T

// forceinline of in debug build for forceinline only
#		define __uXm_FINLINE(T) T
// forceinline of in debug build for forceinline only artificial
#		define __uXm_FINLINEART(T) T

// inline of in debug build for static inline with veccall
#		define __uXm_S_INLINE_VECCALL(T) static uXm_VECCALL(T)
// inline of in debug build for static inline with veccall
#		define _uXm_S_INLINE_VECCALL(T) static uXm_VECCALL(T)

// inline of in debug build for static inline artificial with veccall
#		define __uXm_S_INLINEART_VECCALL(T) static uXm_VECCALL(T)
// inline of in debug build for static inline artificial with veccall
#		define _uXm_S_INLINEART_VECCALL(T) static uXm_VECCALL(T)

// forceinline of in debug build for static forceinline with veccall
#		define __uXm_S_FINLINE_VECCALL(T) static uXm_VECCALL(T)
// forceinline of in debug build for static forceinline artificial with veccall
#		define __uXm_S_FINLINEART_VECCALL(T) static uXm_VECCALL(T)

// inline of in debug build for inline only with veccall
#		define __uXm_INLINE_VECCALL(T) uXm_VECCALL(T)
// inline of in debug build for inline only with veccall
#		define _uXm_INLINE_VECCALL(T) uXm_VECCALL(T)

// inline of in debug build for inline only artificial with veccall
#		define __uXm_INLINEART_VECCALL(T) uXm_VECCALL(T)
// inline of in debug build for inline only artificial with veccall
#		define _uXm_INLINEART_VECCALL(T) uXm_VECCALL(T)

// forceinline of in debug build for forceinline only with veccall
#		define __uXm_FINLINE_VECCALL(T) uXm_VECCALL(T)
// forceinline of in debug build for forceinline only artificial with veccall
#		define __uXm_FINLINEART_VECCALL(T) uXm_VECCALL(T)
#	  endif // uXm_DEBUG

// inline hallways on for static inline
#		define uXm_S_INLINE(T)  static inline T __attribute__((__gnu_inline__, __always_inline__))
// inline hallways on for static inline artificial
#		define uXm_S_INLINEART(T) static inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline hallways on for static forceinline
#		define uXm_S_FINLINE(T) static inline T __attribute__((__gnu_inline__, __always_inline__))
// forceinline hallways on for static forceinline artificial
#		define uXm_S_FINLINEART(T) static inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline hallways on for inline only
#		define uXm_INLINE(T)  inline T __attribute__((__gnu_inline__, __always_inline__))
// inline hallways on for inline only artificial
#		define uXm_INLINEART(T) inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline hallways on for forceinline only
#		define uXm_FINLINE(T) inline T __attribute__((__gnu_inline__, __always_inline__))
// forceinline hallways on for forceinline only artificial
#		define uXm_FINLINEART(T) inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline hallways on for static inline with veccall
#		define uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__))
// inline hallways on for static inline artificial with veccall
#		define uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline hallways on for static forceinline with veccall
#		define uXm_S_FINLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__))
// forceinline hallways on for static forceinline artificial with veccall
#		define uXm_S_FINLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline hallways on for inline only with veccall
#		define uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__))
// inline hallways on for inline only artificial with veccall
#		define uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline hallways on for forceinline only with veccall
#		define uXm_FINLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__))
// forceinline hallways on for forceinline only artificial with veccall
#		define uXm_FINLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))
#	endif // uXm_INLINE
#  elif defined(uXm_CLANG)
uXm_PRAGMA(inline_depth(255))
#	ifndef uXm_INLINE
#	  ifndef uXm_DEBUG
// inline on in release build for static inline
#		define __uXm_S_INLINE(T) static  inline T __attribute__((__always_inline__, __nodebug__))
// inline on in release build for static inline
#		define _uXm_S_INLINE(T) static  inline T __attribute__((__always_inline__, __nodebug__))

// inline on in release build for static inline artificial
#		define __uXm_S_INLINEART(T) static  inline T __attribute__((__always_inline__, __nodebug__))
// inline on in release build for static inline artificial
#		define _uXm_S_INLINEART(T) static  inline T __attribute__((__always_inline__, __nodebug__))

// forceinline on in release build for static forceinline
#		define __uXm_S_FINLINE(T) static inline T __attribute__((__always_inline__, __nodebug__))
// forceinline on in release build for static forceinline artificial
#		define __uXm_S_FINLINEART(T) static inline T __attribute__((__always_inline__, __nodebug__))

// inline on in release build for inline only
#		define __uXm_INLINE(T) inline T __attribute__((__always_inline__, __nodebug__))
// inline on in release build for inline only
#		define _uXm_INLINE(T) inline T __attribute__((__always_inline__, __nodebug__))

// inline on in release build for inline only artificial
#		define __uXm_INLINEART(T) inline T __attribute__((__always_inline__, __nodebug__))
// inline on in release build for inline only artificial
#		define _uXm_INLINEART(T) inline T __attribute__((__always_inline__, __nodebug__))

// forceinline on in release build for forceinline only
#		define __uXm_FINLINE(T) inline T __attribute__((__always_inline__, __nodebug__))
// forceinline on in release build for forceinline only artificial
#		define __uXm_FINLINEART(T) inline T __attribute__((__always_inline__, __nodebug__))

// inline on in release build for static inline with veccall
#		define __uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
// inline on in release build for static inline with veccall
#		define _uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))

// inline on in release build for static inline artificial with veccall
#		define __uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
// inline on in release build for static inline artificial with veccall
#		define _uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))

// forceinline on in release build for static forceinline with veccall
#		define __uXm_S_FINLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
// forceinline on in release build for static forceinline artificial with veccall
#		define __uXm_S_FINLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))

// inline on in release build for inline only with veccall
#		define __uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
// inline on in release build for inline only with veccall
#		define _uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))

// inline on in release build for static inline artificial with veccall
#		define __uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
// inline on in release build for static inline artificial with veccall
#		define _uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))

// forceinline on in release build for forceinline only with veccall
#		define __uXm_FINLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
// forceinline on in release build for forceinline artificial only with veccall
#		define __uXm_FINLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
#	  else
// inline of in debug build for static inline
#		define __uXm_S_INLINE(T) static T
// inline of in debug build for static inline
#		define _uXm_S_INLINE(T) static T

// inline of in debug build for static inline artificial
#		define __uXm_S_INLINEART(T) static T
// inline of in debug build for static inline artificial
#		define _uXm_S_INLINEART(T) static T

// forceinline of in debug build for static forceinline
#		define __uXm_S_FINLINE(T) static T
// forceinline of in debug build for static forceinline artificial
#		define __uXm_S_FINLINEART(T) static T

// inline of in debug build for inline only
#		define __uXm_INLINE(T) T
// inline of in debug build for inline only
#		define _uXm_INLINE(T) T

// inline of in debug build for inline only artificial
#		define __uXm_INLINEART(T) T
// inline of in debug build for inline only artificial
#		define _uXm_INLINEART(T) T

// forceinline of in debug build for forceinline only
#		define __uXm_FINLINE(T) T
// forceinline of in debug build for forceinline only artificial
#		define __uXm_FINLINEART(T) T

// inline of in debug build for static inline with veccall
#		define __uXm_S_INLINE_VECCALL(T) static uXm_VECCALL(T)
// inline of in debug build for static inline with veccall
#		define _uXm_S_INLINE_VECCALL(T) static uXm_VECCALL(T)

// inline of in debug build for static inline artificial with veccall
#		define __uXm_S_INLINEART_VECCALL(T) static uXm_VECCALL(T)
// inline of in debug build for static inline artificial with veccall
#		define _uXm_S_INLINEART_VECCALL(T) static uXm_VECCALL(T)

// forceinline of in debug build for static forceinline with veccall
#		define __uXm_S_FINLINE_VECCALL(T) static uXm_VECCALL(T)
// forceinline of in debug build for static forceinline artificial with veccall
#		define __uXm_S_FINLINEART_VECCALL(T) static uXm_VECCALL(T)

// inline of in debug build for inline only with veccall
#		define __uXm_INLINE_VECCALL(T) uXm_VECCALL(T)
// inline of in debug build for inline only with veccall
#		define _uXm_INLINE_VECCALL(T) uXm_VECCALL(T)

// inline of in debug build for inline only artificial with veccall
#		define __uXm_INLINEART_VECCALL(T) uXm_VECCALL(T)
// inline of in debug build for inline only artificial with veccall
#		define _uXm_INLINEART_VECCALL(T) uXm_VECCALL(T)

// forceinline of in debug build for forceinline only with veccall
#		define __uXm_FINLINE_VECCALL(T) uXm_VECCALL(T)
// forceinline of in debug build for forceinline only artificial with veccall
#		define __uXm_FINLINEART_VECCALL(T) uXm_VECCALL(T)
#	  endif // uXm_DEBUG

// inline hallways on for static inline
#		define uXm_S_INLINE(T)  static inline T __attribute__((__always_inline__, __nodebug__))
// inline hallways on for static inline artificial
#		define uXm_S_INLINEART(T) static inline T __attribute__((__always_inline__, __nodebug__))

// forceinline hallways on for static forceinline
#		define uXm_S_FINLINE(T) static inline T __attribute__((__always_inline__, __nodebug__))
// forceinline hallways on for static forceinline artificial
#		define uXm_S_FINLINEART(T) static inline T __attribute__((__always_inline__, __nodebug__))

// inline hallways on for inline only
#		define uXm_INLINE(T)  inline T __attribute__((__always_inline__, __nodebug__))
// inline hallways on for inline only artificial
#		define uXm_INLINEART(T) inline T __attribute__((__always_inline__, __nodebug__))

// forceinline hallways on for forceinline only
#		define uXm_FINLINE(T) inline T __attribute__((__always_inline__, __nodebug__))
// forceinline hallways on for forceinline only artificial
#		define uXm_FINLINEART(T) inline T __attribute__((__always_inline__, __nodebug__))

// inline hallways on for static inline with veccall
#		define uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
// inline hallways on for static inline artificial with veccall
#		define uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))

// forceinline hallways on for static forceinline with veccall
#		define uXm_S_FINLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
// forceinline hallways on for static forceinline artificial with veccall
#		define uXm_S_FINLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))

// inline hallways on for inline only with veccall
#		define uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
// inline hallways on for inline only artificial with veccall
#		define uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))

// forceinline hallways on for forceinline only with veccall
#		define uXm_FINLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
// forceinline hallways on for forceinline only artificial with veccall
#		define uXm_FINLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((__always_inline__, __nodebug__))
#	endif // uXm_INLINE
#  else
uXm_PRAGMA(inline_depth(255))
#	ifndef uXm_INLINE
#	  ifndef uXm_DEBUG
// inline on in release build for static inline
#		define __uXm_S_INLINE(T) static  inline T __attribute__((always_inline))
// inline on in release build for static inline
#		define _uXm_S_INLINE(T) static  inline T __attribute__((always_inline))

// inline on in release build for static inline artificial
#		define __uXm_S_INLINEART(T) static  inline T __attribute__((always_inline))
// inline on in release build for static inline artificial
#		define _uXm_S_INLINEART(T) static  inline T __attribute__((always_inline))

// forceinline on in release build for static forceinline
#		define __uXm_S_FINLINE(T) static inline T __attribute__((always_inline))
// forceinline on in release build for static forceinline artificial
#		define __uXm_S_FINLINEART(T) static inline T __attribute__((always_inline))

// inline on in release build for inline only
#		define __uXm_INLINE(T) inline T __attribute__((always_inline))
// inline on in release build for inline only
#		define _uXm_INLINE(T) inline T __attribute__((always_inline))

// inline on in release build for inline only artificial
#		define __uXm_INLINEART(T) inline T __attribute__((always_inline))
// inline on in release build for inline only artificial
#		define _uXm_INLINEART(T) inline T __attribute__((always_inline))

// forceinline on in release build for forceinline only
#		define __uXm_FINLINE(T) inline T __attribute__((always_inline))
// forceinline on in release build for forceinline only artificial
#		define __uXm_FINLINEART(T) inline T __attribute__((always_inline))

// inline on in release build for static inline with veccall
#		define __uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((always_inline))
// inline on in release build for static inline with veccall
#		define _uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((always_inline))

// inline on in release build for static inline artificial with veccall
#		define __uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((always_inline))
// inline on in release build for static inline artificial with veccall
#		define _uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((always_inline))

// forceinline on in release build for static forceinline with veccall
#		define __uXm_S_FINLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((always_inline))
// forceinline on in release build for static forceinline artificial with veccall
#		define __uXm_S_FINLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((always_inline))

// inline on in release build for inline only with veccall
#		define __uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((always_inline))
// inline on in release build for inline only with veccall
#		define _uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((always_inline))

// inline on in release build for static inline artificial with veccall
#		define __uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((always_inline))
// inline on in release build for static inline artificial with veccall
#		define _uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((always_inline))

// forceinline on in release build for forceinline only with veccall
#		define __uXm_FINLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((always_inline))
// forceinline on in release build for forceinline artificial only with veccall
#		define __uXm_FINLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((always_inline))
#	  else
// inline of in debug build for static inline
#		define __uXm_S_INLINE(T) static T
// inline of in debug build for static inline
#		define _uXm_S_INLINE(T) static T

// inline of in debug build for static inline artificial
#		define __uXm_S_INLINEART(T) static T
// inline of in debug build for static inline artificial
#		define _uXm_S_INLINEART(T) static T

// forceinline of in debug build for static forceinline
#		define __uXm_S_FINLINE(T) static T
// forceinline of in debug build for static forceinline artificial
#		define __uXm_S_FINLINEART(T) static T

// inline of in debug build for inline only
#		define __uXm_INLINE(T) T
// inline of in debug build for inline only
#		define _uXm_INLINE(T) T

// inline of in debug build for inline only artificial
#		define __uXm_INLINEART(T) T
// inline of in debug build for inline only artificial
#		define _uXm_INLINEART(T) T

// forceinline of in debug build for forceinline only
#		define __uXm_FINLINE(T) T
// forceinline of in debug build for forceinline only artificial
#		define __uXm_FINLINEART(T) T

// inline of in debug build for static inline with veccall
#		define __uXm_S_INLINE_VECCALL(T) static uXm_VECCALL(T)
// inline of in debug build for static inline with veccall
#		define _uXm_S_INLINE_VECCALL(T) static uXm_VECCALL(T)

// inline of in debug build for static inline artificial with veccall
#		define __uXm_S_INLINEART_VECCALL(T) static uXm_VECCALL(T)
// inline of in debug build for static inline artificial with veccall
#		define _uXm_S_INLINEART_VECCALL(T) static uXm_VECCALL(T)

// forceinline of in debug build for static forceinline with veccall
#		define __uXm_S_FINLINE_VECCALL(T) static uXm_VECCALL(T)
// forceinline of in debug build for static forceinline artificial with veccall
#		define __uXm_S_FINLINEART_VECCALL(T) static uXm_VECCALL(T)

// inline of in debug build for inline only with veccall
#		define __uXm_INLINE_VECCALL(T) uXm_VECCALL(T)
// inline of in debug build for inline only with veccall
#		define _uXm_INLINE_VECCALL(T) uXm_VECCALL(T)

// inline of in debug build for inline only artificial with veccall
#		define __uXm_INLINEART_VECCALL(T) uXm_VECCALL(T)
// inline of in debug build for inline only artificial with veccall
#		define _uXm_INLINEART_VECCALL(T) uXm_VECCALL(T)

// forceinline of in debug build for forceinline only with veccall
#		define __uXm_FINLINE_VECCALL(T) uXm_VECCALL(T)
// forceinline of in debug build for forceinline only artificial with veccall
#		define __uXm_FINLINEART_VECCALL(T) uXm_VECCALL(T)
#	  endif // uXm_DEBUG

// inline hallways on for static inline
#		define uXm_S_INLINE(T)  static inline T __attribute__((always_inline))
// inline hallways on for static inline artificial
#		define uXm_S_INLINEART(T) static inline T __attribute__((always_inline))

// forceinline hallways on for static forceinline
#		define uXm_S_FINLINE(T) static inline T __attribute__((always_inline))
// forceinline hallways on for static forceinline artificial
#		define uXm_S_FINLINEART(T) static inline T __attribute__((always_inline))

// inline hallways on for inline only
#		define uXm_INLINE(T)  inline T __attribute__((always_inline))
// inline hallways on for inline only artificial
#		define uXm_INLINEART(T) inline T __attribute__((always_inline))

// forceinline hallways on for forceinline only
#		define uXm_FINLINE(T) inline T __attribute__((always_inline))
// forceinline hallways on for forceinline only artificial
#		define uXm_FINLINEART(T) inline T __attribute__((always_inline))

// inline hallways on for static inline with veccall
#		define uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((always_inline))
// inline hallways on for static inline artificial with veccall
#		define uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((always_inline))

// forceinline hallways on for static forceinline with veccall
#		define uXm_S_FINLINE_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((always_inline))
// forceinline hallways on for static forceinline artificial with veccall
#		define uXm_S_FINLINEART_VECCALL(T) static inline uXm_VECCALL(T) __attribute__((always_inline))

// inline hallways on for inline only with veccall
#		define uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((always_inline))
// inline hallways on for inline only artificial with veccall
#		define uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((always_inline))

// forceinline hallways on for forceinline only with veccall
#		define uXm_FINLINE_VECCALL(T) inline uXm_VECCALL(T) __attribute__((always_inline))
// forceinline hallways on for forceinline only artificial with veccall
#		define uXm_FINLINEART_VECCALL(T) inline uXm_VECCALL(T) __attribute__((always_inline))
#	endif // uXm_INLINE
#  endif // uXm_GNUC
#else
//uXm_PRAGMA(inline_depth(255))
#	ifndef uXm_INLINE
#	  ifndef uXm_DEBUG
// inline on in release build for static inline
#		define __uXm_S_INLINE(T) static  inline T
// inline on in release build for static inline
#		define _uXm_S_INLINE(T) static  inline T

// inline on in release build for static inline artificial
#		define __uXm_S_INLINEART(T) static  inline T
// inline on in release build for static inline artificial
#		define _uXm_S_INLINEART(T) static  inline T

// forceinline on in release build for static forceinline
#		define __uXm_S_FINLINE(T) static inline T
// forceinline on in release build for static forceinline artificial
#		define __uXm_S_FINLINEART(T) static inline T

// inline on in release build for inline only
#		define __uXm_INLINE(T) inline T
// inline on in release build for inline only
#		define _uXm_INLINE(T) inline T

// inline on in release build for inline only artificial
#		define __uXm_INLINEART(T) inline T
// inline on in release build for inline only artificial
#		define _uXm_INLINEART(T) inline T

// forceinline on in release build for forceinline only
#		define __uXm_FINLINE(T) inline T
// forceinline on in release build for forceinline only artificial
#		define __uXm_FINLINEART(T) inline T

// inline on in release build for static inline with veccall
#		define __uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T)
// inline on in release build for static inline with veccall
#		define _uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T)

// inline on in release build for static inline artificial with veccall
#		define __uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T)
// inline on in release build for static inline artificial with veccall
#		define _uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T)

// forceinline on in release build for static forceinline with veccall
#		define __uXm_S_FINLINE_VECCALL(T) static inline uXm_VECCALL(T)
// forceinline on in release build for static forceinline artificial with veccall
#		define __uXm_S_FINLINEART_VECCALL(T) static inline uXm_VECCALL(T)

// inline on in release build for inline only with veccall
#		define __uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T)
// inline on in release build for inline only with veccall
#		define _uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T)

// inline on in release build for static inline artificial with veccall
#		define __uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T)
// inline on in release build for static inline artificial with veccall
#		define _uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T)

// forceinline on in release build for forceinline only with veccall
#		define __uXm_FINLINE_VECCALL(T) inline uXm_VECCALL(T)
// forceinline on in release build for forceinline artificial only with veccall
#		define __uXm_FINLINEART_VECCALL(T) inline uXm_VECCALL(T)
#	  else
// inline of in debug build for static inline
#		define __uXm_S_INLINE(T) static T
// inline of in debug build for static inline
#		define _uXm_S_INLINE(T) static T

// inline of in debug build for static inline artificial
#		define __uXm_S_INLINEART(T) static T
// inline of in debug build for static inline artificial
#		define _uXm_S_INLINEART(T) static T

// forceinline of in debug build for static forceinline
#		define __uXm_S_FINLINE(T) static T
// forceinline of in debug build for static forceinline artificial
#		define __uXm_S_FINLINEART(T) static T

// inline of in debug build for inline only
#		define __uXm_INLINE(T) T
// inline of in debug build for inline only
#		define _uXm_INLINE(T) T

// inline of in debug build for inline only artificial
#		define __uXm_INLINEART(T) T
// inline of in debug build for inline only artificial
#		define _uXm_INLINEART(T) T

// forceinline of in debug build for forceinline only
#		define __uXm_FINLINE(T) T
// forceinline of in debug build for forceinline only artificial
#		define __uXm_FINLINEART(T) T

// inline of in debug build for static inline with veccall
#		define __uXm_S_INLINE_VECCALL(T) static uXm_VECCALL(T)
// inline of in debug build for static inline with veccall
#		define _uXm_S_INLINE_VECCALL(T) static uXm_VECCALL(T)

// inline of in debug build for static inline artificial with veccall
#		define __uXm_S_INLINEART_VECCALL(T) static uXm_VECCALL(T)
// inline of in debug build for static inline artificial with veccall
#		define _uXm_S_INLINEART_VECCALL(T) static uXm_VECCALL(T)

// forceinline of in debug build for static forceinline with veccall
#		define __uXm_S_FINLINE_VECCALL(T) static uXm_VECCALL(T)
// forceinline of in debug build for static forceinline artificial with veccall
#		define __uXm_S_FINLINEART_VECCALL(T) static uXm_VECCALL(T)

// inline of in debug build for inline only with veccall
#		define __uXm_INLINE_VECCALL(T) uXm_VECCALL(T)
// inline of in debug build for inline only with veccall
#		define _uXm_INLINE_VECCALL(T) uXm_VECCALL(T)

// inline of in debug build for inline only artificial with veccall
#		define __uXm_INLINEART_VECCALL(T) uXm_VECCALL(T)
// inline of in debug build for inline only artificial with veccall
#		define _uXm_INLINEART_VECCALL(T) uXm_VECCALL(T)

// forceinline of in debug build for forceinline only with veccall
#		define __uXm_FINLINE_VECCALL(T) uXm_VECCALL(T)
// forceinline of in debug build for forceinline only artificial with veccall
#		define __uXm_FINLINEART_VECCALL(T) uXm_VECCALL(T)
#	  endif // uXm_DEBUG

// inline hallways on for static inline
#		define uXm_S_INLINE(T)  static inline T
// inline hallways on for static inline artificial
#		define uXm_S_INLINEART(T) static inline T

// forceinline hallways on for static forceinline
#		define uXm_S_FINLINE(T) static inline T
// forceinline hallways on for static forceinline artificial
#		define uXm_S_FINLINEART(T) static inline T

// inline hallways on for inline only
#		define uXm_INLINE(T)  inline T
// inline hallways on for inline only artificial
#		define uXm_INLINEART(T) inline T

// forceinline hallways on for forceinline only
#		define uXm_FINLINE(T) inline T
// forceinline hallways on for forceinline only artificial
#		define uXm_FINLINEART(T) inline T

// inline hallways on for static inline with veccall
#		define uXm_S_INLINE_VECCALL(T) static inline uXm_VECCALL(T)
// inline hallways on for static inline artificial with veccall
#		define uXm_S_INLINEART_VECCALL(T) static inline uXm_VECCALL(T)

// forceinline hallways on for static forceinline with veccall
#		define uXm_S_FINLINE_VECCALL(T) static inline uXm_VECCALL(T)
// forceinline hallways on for static forceinline artificial with veccall
#		define uXm_S_FINLINEART_VECCALL(T) static inline uXm_VECCALL(T)

// inline hallways on for inline only with veccall
#		define uXm_INLINE_VECCALL(T) inline uXm_VECCALL(T)
// inline hallways on for inline only artificial with veccall
#		define uXm_INLINEART_VECCALL(T) inline uXm_VECCALL(T)

// forceinline hallways on for forceinline only with veccall
#		define uXm_FINLINE_VECCALL(T) inline uXm_VECCALL(T)
// forceinline hallways on for forceinline only artificial with veccall
#		define uXm_FINLINEART_VECCALL(T) inline uXm_VECCALL(T)
#	endif // uXm_INLINE
# endif

/**
Nullptr macro
*/
# if (defined(__cplusplus) && (__cplusplus >= 201103L)) || defined(_MSC_VER)
#	if defined(_MSC_VER) && (_MSC_VER >= 1800)
#		define uXm_NULLPTR nullptr
#	else
#		define uXm_NULLPTR NULL
#	endif
#elif defined(uXm_GCC_COMPATIBLE_COMPILER)
#  if defined(uXm_GNUC) || defined(uXm_CLANGU)
#		define uXm_NULLPTR __null
#  elif defined(__cplusplus)
#		define uXm_NULLPTR 0
#  else
#		define uXm_NULLPTR ((void*)0)
#  endif
#else
#		define uXm_NULLPTR
#endif

#ifdef uXm_CUDACC
//#   define _INC_MATH 1  /*  Try some workaround to block math header from mix with CUDA math functions */
#include <host_config.h>
#include <host_defines.h>
#include <cuda.h>
/*
#include <math_functions.h>
#include <device_functions.h>
#include <device_functions_decls.h>*/
//#undef _INC_MATH	/*  Secure the math header to be included after we include the cuda math functions header, >TODO needs directory inclusion fixing with some .props methods */
#endif

/**
Noinline macro
*/
#if defined(uXm_CUDACC)
#	define uXm_NOINLINE __noinline__
#elif defined(uXm_MSVC_COMPATIBLE_COMPILER)
#	define uXm_NOINLINE __declspec(noinline)
#elif defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(uXm_IBMC)
#	define uXm_NOINLINE __attribute__((noinline))
#else
#	define uXm_NOINLINE
#endif

/**
Constexpr macro
*/
#if defined(uXm_CONSTEXPR_SUPPORT)
#	define uXm_CONSTEXPR constexpr
#else
#	define uXm_CONSTEXPR const
#endif

/**
Empty function class body macro
*/
#if defined(uXm_CTOR_DEFAULT_SUPPORT)
#	define uXm_CTOR_DEFAULT =default;
#else
#	define uXm_CTOR_DEFAULT {}
#endif

/*! restrict macro */
#if defined(uXm_CUDACC)
# if defined(uXm_MSVC_COMPATIBLE_COMPILER) && (_MSC_VER >= 1400))
#	define __uXm_RESTRICT __declspec(restrict)
# elif defined(uXm_GCC_COMPATIBLE_COMPILER)
#	define __uXm_RESTRICT __attribute__((restrict))
# else
#	define __uXm_RESTRICT
# endif
#	define uXm_RESTRICT __restrict__
#elif (defined(uXm_MSVC_COMPATIBLE_COMPILER) && (_MSC_VER >= 1400))
#	define __uXm_RESTRICT __declspec(restrict)
#	define uXm_RESTRICT __restrict
#elif (defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(uXm_IBMC)) && !defined(uXm_PS4) // ps4 doesn't like restricted functions
#	define __uXm_RESTRICT __attribute__((restrict))
#	define uXm_RESTRICT __restrict__
#elif defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 199901L)
#	define uXm_RESTRICT restrict
#else
#	define __uXm_RESTRICT
#	define uXm_RESTRICT
#endif

/* noalias macro */
#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#   define uXm_NOALIAS __declspec(noalias)
#elif defined(uXm_GCC_COMPATIBLE_COMPILER)
#   define uXm_NOALIAS __attribute__((noalias))
#else
#   define uXm_NOALIAS
#endif

/* property macro */
#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#   define __uXm_PROPERTY(exa,exb) __declspec(property(exa, exb))
#else
#   define __uXm_PROPERTY(exa,exb) __attribute__((property(exa, exb)))
#endif

/* notrow macro */
#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#ifdef  __cplusplus
#ifndef uXm_NOTHROW
# define uXm_NOTHROW __declspec(nothrow)
#endif
#else
#ifndef uXm_NOTHROW
# define uXm_NOTHROW
#endif
#endif
#else
#ifndef uXm_NOTHROW
# define uXm_NOTHROW
#endif
#endif

/* noreturn macro */
#if defined(uXm_CUDACC)
#   define uXm_NORETURN __attribute__((noreturn))
#elif defined(uXm_MSVC_COMPATIBLE_COMPILER)
#   define uXm_NORETURN __declspec(noreturn)
#elif defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(uXm_IBMC)
#   define uXm_NORETURN __attribute__((noreturn))
#else
#   define uXm_NORETURN
#endif

#   define uXm_COUNT_OF(x) (sizeof(x) / sizeof(x[0]))

/* alignof macro */
#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#   define uXm_ALIGN_OF(X) __alignof(X)
#elif defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(uXm_IBMC)
#	define uXm_ALIGN_OF(X) __alignof__(X)
#elif defined(uXm_MWERKS)
#	define uXm_ALIGN_OF(X) __builtin_align(X)
#elif defined(uXm_ARMCC)
#	define uXm_ALIGN_OF(X) __ALIGNOF__(X)
#else
#   define uXm_ALIGN_OF(x)
#endif

#if defined(uXm_GCC_COMPATIBLE_COMPILER)
#   define uXm_LIKELY(x) (__builtin_expect(!!(x), 1))
#   define uXm_UNLIKELY(x) (__builtin_expect(!!(x), 0))
#else
#   define uXm_LIKELY(x) (!!(x))
#   define uXm_UNLIKELY(x) (!!(x))
#endif

/* override and final macro */
#if defined (uXm_MSVC_COMPATIBLE_COMPILER)
#	if (_MSC_VER >= 1700)
#		define uXm_OVERRIDE override
#		define uXm_FINAL	final
#		define uXm_FINAL_OVERRIDE final override
#	elif (_MSC_VER >= 1600)
#		define uXm_OVERRIDE override
#		define uXm_FINAL	sealed
#		define uXm_FINAL_OVERRIDE sealed override
#endif
#endif

/* intrin_type macro and vector size*/
# if defined(uXm_MSVC_COMPATIBLE_COMPILER) && (_MSC_VER >= 1400)
#  if !defined(__INTEL_COMPILER) && (_MSC_FULL_VER < 160020506)
#		define uXmVC_VEC_INTRINTYPE(X) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE_ALIAS(X) __declspec(intrin_type)

#		define uXmVC_VEC_INTRINTYPE4 __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE8 __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE16 __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE32 __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE64 __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE128 __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE256 __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE512 __declspec(intrin_type)

#		define uXmVC_VEC_INTRINTYPE4_ALIAS __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE8_ALIAS __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE16_ALIAS __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE32_ALIAS __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE64_ALIAS __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE128_ALIAS __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE256_ALIAS __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE512_ALIAS __declspec(intrin_type)
#  else
#   if !defined(__INTEL_COMPILER)
#		define uXmVC_VEC_INTRINTYPE(X) __declspec(intrin_type) __declspec(align(X))
#		define uXmVC_VEC_INTRINTYPE_ALIAS(X) __declspec(intrin_type) __declspec(align(X))

#		define uXmVC_VEC_INTRINTYPE4 __declspec(intrin_type) __declspec(align(4))
#		define uXmVC_VEC_INTRINTYPE8 __declspec(intrin_type) __declspec(align(8))
#		define uXmVC_VEC_INTRINTYPE16 __declspec(intrin_type) __declspec(align(16))
#		define uXmVC_VEC_INTRINTYPE32 __declspec(intrin_type) __declspec(align(32))
#		define uXmVC_VEC_INTRINTYPE64 __declspec(intrin_type) __declspec(align(64))
#		define uXmVC_VEC_INTRINTYPE128 __declspec(intrin_type) __declspec(align(128))
#		define uXmVC_VEC_INTRINTYPE256 __declspec(intrin_type) __declspec(align(256))
#		define uXmVC_VEC_INTRINTYPE512 __declspec(intrin_type) __declspec(align(512))

#		define uXmVC_VEC_INTRINTYPE4_ALIAS __declspec(intrin_type) __declspec(align(4))
#		define uXmVC_VEC_INTRINTYPE8_ALIAS __declspec(intrin_type) __declspec(align(8))
#		define uXmVC_VEC_INTRINTYPE16_ALIAS __declspec(intrin_type) __declspec(align(16))
#		define uXmVC_VEC_INTRINTYPE32_ALIAS __declspec(intrin_type) __declspec(align(32))
#		define uXmVC_VEC_INTRINTYPE64_ALIAS __declspec(intrin_type) __declspec(align(64))
#		define uXmVC_VEC_INTRINTYPE128_ALIAS __declspec(intrin_type) __declspec(align(128))
#		define uXmVC_VEC_INTRINTYPE256_ALIAS __declspec(intrin_type) __declspec(align(256))
#		define uXmVC_VEC_INTRINTYPE512_ALIAS __declspec(intrin_type) __declspec(align(512))
#	else
#		define uXmVC_VEC_INTRINTYPE(X) __declspec(align(X)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE_ALIAS(X) __declspec(align(X)) __declspec(intrin_type)

#		define uXmVC_VEC_INTRINTYPE4 __declspec(align(4)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE8 __declspec(align(8)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE16 __declspec(align(16)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE32 __declspec(align(32)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE64 __declspec(align(64)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE128 __declspec(align(128)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE256 __declspec(align(256)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE512 __declspec(align(512)) __declspec(intrin_type)

#		define uXmVC_VEC_INTRINTYPE4_ALIAS __declspec(align(4)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE8_ALIAS __declspec(align(8)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE16_ALIAS __declspec(align(16)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE32_ALIAS __declspec(align(32)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE64_ALIAS __declspec(align(64)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE128_ALIAS __declspec(align(128)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE256_ALIAS __declspec(align(256)) __declspec(intrin_type)
#		define uXmVC_VEC_INTRINTYPE512_ALIAS __declspec(align(512)) __declspec(intrin_type)
#	endif
#  endif

#		define uXm_VEC_SIZE_INTRINTYPE(Type,Name,size) __declspec(align(size)) Type Name[size]
#		define uXm_VEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) __declspec(align(size)) Type Name[size]

#		define uXm_NEONVEC_SIZE_INTRINTYPE(Type,Name,size) __declspec(align(size)) Type Name[size]
#		define uXm_NEONVEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) __declspec(align(size)) Type Name[size]

#		define uXm_VEC_SIZE(Type,Name,size) __declspec(align(size)) Type Name[size]
#		define uXm_VEC_SIZE_ALIAS(Type,Name,size) __declspec(align(size)) Type Name[size]

#		define uXmGC_VEC_INTRINTYPE(X)
#		define uXmGC_VEC_INTRINTYPE_ALIAS(X)

#		define uXmGC_VEC_INTRINTYPE4
#		define uXmGC_VEC_INTRINTYPE8
#		define uXmGC_VEC_INTRINTYPE16
#		define uXmGC_VEC_INTRINTYPE32
#		define uXmGC_VEC_INTRINTYPE64
#		define uXmGC_VEC_INTRINTYPE128
#		define uXmGC_VEC_INTRINTYPE256
#		define uXmGC_VEC_INTRINTYPE512

#		define uXmGC_VEC_INTRINTYPE4_ALIAS
#		define uXmGC_VEC_INTRINTYPE8_ALIAS
#		define uXmGC_VEC_INTRINTYPE16_ALIAS
#		define uXmGC_VEC_INTRINTYPE32_ALIAS
#		define uXmGC_VEC_INTRINTYPE64_ALIAS
#		define uXmGC_VEC_INTRINTYPE128_ALIAS
#		define uXmGC_VEC_INTRINTYPE256_ALIAS
#		define uXmGC_VEC_INTRINTYPE512_ALIAS
# elif defined(uXm_GCC_COMPATIBLE_COMPILER)
#		define uXmGC_VEC_INTRINTYPE(X) __attribute__((__vector_size__(4), __aligned__(X)))
#		define uXmGC_VEC_INTRINTYPE_ALIAS(X) __attribute__((__vector_size__(4), __aligned__(X), __may_alias__))

#		define uXm_VEC_SIZE_INTRINTYPE(Type,Name,size) Type Name __attribute__((__vector_size__(size), __aligned__(X)))
#		define uXm_VEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) Type Name __attribute__((__vector_size__(size), __aligned__(X), __may_alias__))

#		define uXm_NEONVEC_SIZE_INTRINTYPE(Type,Name,size) Type Name __attribute__((neon_vector_type(size), __aligned__(X)))
#		define uXm_NEONVEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) Type Name __attribute__((neon_vector_type(size), __aligned__(X), __may_alias__))

#		define uXm_VEC_SIZE(Type,Name,size) Type Name[size] __attribute__((__aligned__(size)))
#		define uXm_VEC_SIZE_ALIAS(Type,Name,size) Type Name[size] __attribute__((__aligned__(size), __may_alias__))

#		define uXmGC_VEC_INTRINTYPE4 __attribute__((__vector_size__(4), __aligned__(4)))
#		define uXmGC_VEC_INTRINTYPE8 __attribute__((__vector_size__(8), __aligned__(8)))
#		define uXmGC_VEC_INTRINTYPE16 __attribute__((__vector_size__(16), __aligned__(16)))
#		define uXmGC_VEC_INTRINTYPE32 __attribute__((__vector_size__(32), __aligned__(32)))
#		define uXmGC_VEC_INTRINTYPE64 __attribute__((__vector_size__(64), __aligned__(64)))
#		define uXmGC_VEC_INTRINTYPE128 __attribute__((__vector_size__(64), __aligned__(128)))
#		define uXmGC_VEC_INTRINTYPE256 __attribute__((__vector_size__(64), __aligned__(256)))
#		define uXmGC_VEC_INTRINTYPE512 __attribute__((__vector_size__(64), __aligned__(512)))

#		define uXmGC_VEC_INTRINTYPE4_ALIAS __attribute__((__vector_size__(64), __aligned__(4), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE8_ALIAS __attribute__((__vector_size__(64), __aligned__(8), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE16_ALIAS __attribute__((__vector_size__(64), __aligned__(16), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE32_ALIAS __attribute__((__vector_size__(64), __aligned__(32), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE64_ALIAS __attribute__((__vector_size__(64), __aligned__(64), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE128_ALIAS __attribute__((__vector_size__(64), __aligned__(128), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE256_ALIAS __attribute__((__vector_size__(64), __aligned__(256), __may_alias__))
#		define uXmGC_VEC_INTRINTYPE512_ALIAS __attribute__((__vector_size__(64), __aligned__(512), __may_alias__))

#	define uXmVC_VEC_INTRINTYPE(X)
#	define uXmVC_VEC_INTRINTYPE_ALIAS(X)

#		define uXmVC_VEC_INTRINTYPE4
#		define uXmVC_VEC_INTRINTYPE8
#		define uXmVC_VEC_INTRINTYPE16
#		define uXmVC_VEC_INTRINTYPE32
#		define uXmVC_VEC_INTRINTYPE64
#		define uXmVC_VEC_INTRINTYPE128
#		define uXmVC_VEC_INTRINTYPE256
#		define uXmVC_VEC_INTRINTYPE512

#		define uXmVC_VEC_INTRINTYPE4_ALIAS
#		define uXmVC_VEC_INTRINTYPE8_ALIAS
#		define uXmVC_VEC_INTRINTYPE16_ALIAS
#		define uXmVC_VEC_INTRINTYPE32_ALIAS
#		define uXmVC_VEC_INTRINTYPE64_ALIAS
#		define uXmVC_VEC_INTRINTYPE128_ALIAS
#		define uXmVC_VEC_INTRINTYPE256_ALIAS
#		define uXmVC_VEC_INTRINTYPE512_ALIAS
# else
#		define uXmVC_VEC_INTRINTYPE(X)
#		define uXmGC_VEC_INTRINTYPE(X)
#		define uXmVC_VEC_INTRINTYPE_ALIAS(X)
#		define uXmGC_VEC_INTRINTYPE_ALIAS(X)

#		define uXm_VEC_SIZE_INTRINTYPE(Type,Name,size) Type Name[size]
#		define uXm_VEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) Type Name[size]

#		define uXm_NEONVEC_SIZE_INTRINTYPE(Type,Name,size) Type Name[size]
#		define uXm_NEONVEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) Type Name[size]

#		define uXm_VEC_SIZE(Type,Name,size) Type Name[size]
#		define uXm_VEC_SIZE_ALIAS(Type,Name,size) Type Name[size]

#		define uXmVC_VEC_INTRINTYPE4
#		define uXmVC_VEC_INTRINTYPE8
#		define uXmVC_VEC_INTRINTYPE16
#		define uXmVC_VEC_INTRINTYPE32
#		define uXmVC_VEC_INTRINTYPE64
#		define uXmVC_VEC_INTRINTYPE128
#		define uXmVC_VEC_INTRINTYPE256
#		define uXmVC_VEC_INTRINTYPE512

#		define uXmVC_VEC_INTRINTYPE4_ALIAS
#		define uXmVC_VEC_INTRINTYPE8_ALIAS
#		define uXmVC_VEC_INTRINTYPE16_ALIAS
#		define uXmVC_VEC_INTRINTYPE32_ALIAS
#		define uXmVC_VEC_INTRINTYPE64_ALIAS
#		define uXmVC_VEC_INTRINTYPE128_ALIAS
#		define uXmVC_VEC_INTRINTYPE256_ALIAS
#		define uXmVC_VEC_INTRINTYPE512_ALIAS

#		define uXmGC_VEC_INTRINTYPE4
#		define uXmGC_VEC_INTRINTYPE8
#		define uXmGC_VEC_INTRINTYPE16
#		define uXmGC_VEC_INTRINTYPE32
#		define uXmGC_VEC_INTRINTYPE64
#		define uXmGC_VEC_INTRINTYPE128
#		define uXmGC_VEC_INTRINTYPE256
#		define uXmGC_VEC_INTRINTYPE512

#		define uXmGC_VEC_INTRINTYPE4_ALIAS
#		define uXmGC_VEC_INTRINTYPE8_ALIAS
#		define uXmGC_VEC_INTRINTYPE16_ALIAS
#		define uXmGC_VEC_INTRINTYPE32_ALIAS
#		define uXmGC_VEC_INTRINTYPE64_ALIAS
#		define uXmGC_VEC_INTRINTYPE128_ALIAS
#		define uXmGC_VEC_INTRINTYPE256_ALIAS
#		define uXmGC_VEC_INTRINTYPE512_ALIAS
# endif

// example vec size
// typedef uXm_VEC_SIZE_INTRINTYPE(int, __v8si, 32); // = to VC: typedef __declspec(align(32)) int __v8si[32], or GNUC: typedef int __v8si __attribute__((__vector_size__(32)))

/* virtual macro */
#if !defined(uXm_NO_VIRTUAL)
#	define uXm_VIRTUAL virtual
#	define uXm_VIRINIT = 0
#else
#	define uXm_VIRTUAL
#	define uXm_VIRINIT
#endif

/* explicit macro */
#if !defined(uXm_NO_EXPLICIT)
#	define uXm_EXPLICIT explicit
#else
#	define uXm_EXPLICIT
#endif

#if defined(uXm_INTELCC_GFX)
# if defined(_MSC_VER)
#	define __Intel_host__
#	define __Intel_device__				__declspec(target(gfx))
#	define __Intel_device_builtin__
# else
#	define __Intel_host__
#	define __Intel_device__				__attribute__((target(gfx)))
#	define __Intel_device_builtin__
# endif
#else
#	define __Intel_host__
#	define __Intel_device__
#	define __Intel_device_builtin__
#endif

#if defined(uXm_CUDACC)
#	define __Cuda_host__				__host__
#	define __Cuda_device__				__device__
#	define __Cuda_device_builtin__		__device_builtin__
#else
#	define __Cuda_host__
#	define __Cuda_device__
#	define __Cuda_device_builtin__
#endif

#if defined(uXm_CUDACC)
#	define uXm_TARGET_CPU_GPU						__Cuda_host__ __Cuda_device__
#	define uXm_TARGET_CPU_ONLY						__Cuda_host__
#	define uXm_TARGET_GPU_ONLY						__Cuda_device__
#	define uXm_TARGET_DEVICE_BUILTIN				__Cuda_device_builtin__
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN 		__Cuda_device__ __Cuda_device_builtin__
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN 		__Cuda_host__ __Cuda_device__ __Cuda_device_builtin__
#elif defined(uXm_INTELCC_GFX)
#   define uXm_TARGET_CPU_GPU						__Intel_host__ __Intel_device__
#   define uXm_TARGET_CPU_ONLY						__Intel_host__
#   define uXm_TARGET_GPU_ONLY						__Intel_device__
#   define uXm_TARGET_DEVICE_BUILTIN				__Intel_device_builtin__
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN 		__Intel_device__ __Intel_device_builtin__
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN 		__Intel_host__ __Intel_device__ __Intel_device_builtin__
#else
#   define uXm_TARGET_CPU_GPU
#   define uXm_TARGET_CPU_ONLY
#   define uXm_TARGET_GPU_ONLY
#   define uXm_TARGET_DEVICE_BUILTIN
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN
#endif

#if defined(uXm_CC_PDEF_GPU_SUPPORT)
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_S_INLINE(T) uXm_S_INLINE(uXm_TARGET_GPU_ONLY uXm_TARGET_DEVICE_BUILTIN T)
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_S_FINLINE(T) uXm_S_FINLINE(uXm_TARGET_GPU_ONLY uXm_TARGET_DEVICE_BUILTIN T)
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_INLINE(T) uXm_INLINE(uXm_TARGET_GPU_ONLY uXm_TARGET_DEVICE_BUILTIN T)
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_FINLINE(T) uXm_FINLINE(uXm_TARGET_GPU_ONLY uXm_TARGET_DEVICE_BUILTIN T)

#	define uXm_TARGET_GPU_ONLY_S_INLINE(T) uXm_S_INLINE(uXm_TARGET_GPU_ONLY T)
#	define uXm_TARGET_GPU_ONLY_S_FINLINE(T) uXm_S_FINLINE(uXm_TARGET_GPU_ONLY T)
#	define uXm_TARGET_GPU_ONLY_INLINE(T) uXm_INLINE(uXm_TARGET_GPU_ONLY T)
#	define uXm_TARGET_GPU_ONLY_FINLINE(T) uXm_FINLINE(uXm_TARGET_GPU_ONLY T)

#	define uXm_TARGET_CPU_ONLY_S_INLINE(T) uXm_S_INLINE(uXm_TARGET_CPU_ONLY T)
#	define uXm_TARGET_CPU_ONLY_S_FINLINE(T) uXm_S_FINLINE(uXm_TARGET_CPU_ONLY T)
#	define uXm_TARGET_CPU_ONLY_INLINE(T) uXm_INLINE(uXm_TARGET_CPU_ONLY T)
#	define uXm_TARGET_CPU_ONLY_FINLINE(T) uXm_FINLINE(uXm_TARGET_CPU_ONLY T)

#	define uXm_TARGET_CPU_ONLY_S_INLINE_VECCALL(T) uXm_S_INLINE(uXm_TARGET_CPU_ONLY T)
#	define uXm_TARGET_CPU_ONLY_S_FINLINE_VECCALL(T) uXm_S_FINLINE(uXm_TARGET_CPU_ONLY T)
#	define uXm_TARGET_CPU_ONLY_INLINE_VECCALL(T) uXm_INLINE(uXm_TARGET_CPU_ONLY T)
#	define uXm_TARGET_CPU_ONLY_FINLINE_VECCALL(T) uXm_FINLINE(uXm_TARGET_CPU_ONLY T)

#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_S_INLINE(T) uXm_S_INLINE(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_S_FINLINE(T) uXm_S_FINLINE(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_INLINE(T) uXm_INLINE(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_FINLINE(T) uXm_FINLINE(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)

#	define uXm_TARGET_CPU_GPU_S_INLINE(T) uXm_S_INLINE(uXm_TARGET_CPU_GPU T)
#	define uXm_TARGET_CPU_GPU_S_FINLINE(T) uXm_S_FINLINE(uXm_TARGET_CPU_GPU T)
#	define uXm_TARGET_CPU_GPU_INLINE(T) uXm_INLINE(uXm_TARGET_CPU_GPU T)
#	define uXm_TARGET_CPU_GPU_FINLINE(T) uXm_FINLINE(uXm_TARGET_CPU_GPU T)

#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_S_INLINE_VECCALL(T) uXm_S_INLINE(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_S_FINLINE_VECCALL(T) uXm_S_FINLINE(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_INLINE_VECCALL(T) uXm_INLINE(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)
#	define uXm_TARGET_CPU_GP_DEVICE_BUILTINU_FINLINE_VECCALL(T) uXm_FINLINE(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)

#	define uXm_TARGET_CPU_GPU_S_INLINE_VECCALL(T) uXm_S_INLINE(uXm_TARGET_CPU_GPU T)
#	define uXm_TARGET_CPU_GPU_S_FINLINE_VECCALL(T) uXm_S_FINLINE(uXm_TARGET_CPU_GPU T)
#	define uXm_TARGET_CPU_GPU_INLINE_VECCALL(T) uXm_INLINE(uXm_TARGET_CPU_GPU T)
#	define uXm_TARGET_CPU_GPU_FINLINE_VECCALL(T) uXm_FINLINE(uXm_TARGET_CPU_GPU T)
#else
# if defined(uXm_INTRINSICS_SUPPORT)

#	define uXm_TARGET_CPU_ONLY_S_INLINE_VECCALL(T) uXm_S_INLINE_VECCALL(T)
#	define uXm_TARGET_CPU_ONLY_S_FINLINE_VECCALL(T) uXm_S_FINLINE_VECCALL(T)
#	define uXm_TARGET_CPU_ONLY_INLINE_VECCALL(T) uXm_INLINE_VECCALL(T)
#	define uXm_TARGET_CPU_ONLY_FINLINE_VECCALL(T) uXm_FINLINE_VECCALL(T)

#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_S_INLINE_VECCALL(T) uXm_S_INLINE_VECCALL(T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_S_FINLINE_VECCALL(T) uXm_S_FINLINE_VECCALL(T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_INLINE_VECCALL(T) uXm_INLINE_VECCALL(T)
#	define uXm_TARGET_CPU_GP_DEVICE_BUILTINU_FINLINE_VECCALL(T) uXm_FINLINE_VECCALL(T)

#	define uXm_TARGET_CPU_GPU_S_INLINE_VECCALL(T) uXm_S_INLINE_VECCALL(T)
#	define uXm_TARGET_CPU_GPU_S_FINLINE_VECCALL(T) uXm_S_FINLINE_VECCALL(T)
#	define uXm_TARGET_CPU_GPU_INLINE_VECCALL(T) uXm_INLINE_VECCALL(T)
#	define uXm_TARGET_CPU_GPU_FINLINE_VECCALL(T) uXm_FINLINE_VECCALL(T)
# else

#	define uXm_TARGET_CPU_ONLY_S_INLINE_VECCALL(T) uXm_S_INLINE(T)
#	define uXm_TARGET_CPU_ONLY_S_FINLINE_VECCALL(T) uXm_S_FINLINE(T)
#	define uXm_TARGET_CPU_ONLY_INLINE_VECCALL(T) uXm_INLINE(T)
#	define uXm_TARGET_CPU_ONLY_FINLINE_VECCALL(T) uXm_FINLINE(T)

#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_S_INLINE_VECCALL(T) uXm_S_INLINE(T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_S_FINLINE_VECCALL(T) uXm_S_FINLINE(T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_INLINE_VECCALL(T) uXm_INLINE(T)
#	define uXm_TARGET_CPU_GP_DEVICE_BUILTINU_FINLINE_VECCALL(T) uXm_FINLINE(T)

#	define uXm_TARGET_CPU_GPU_S_INLINE_VECCALL(T) uXm_S_INLINE(T)
#	define uXm_TARGET_CPU_GPU_S_FINLINE_VECCALL(T) uXm_S_FINLINE(T)
#	define uXm_TARGET_CPU_GPU_INLINE_VECCALL(T) uXm_INLINE(T)
#	define uXm_TARGET_CPU_GPU_FINLINE_VECCALL(T) uXm_FINLINE(T)
# endif

#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_S_INLINE(T) uXm_S_INLINE(T)
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_S_FINLINE(T) uXm_S_FINLINE( T)
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_INLINE(T) uXm_INLINE(T)
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_FINLINE(T) uXm_FINLINE(T)

#	define uXm_TARGET_GPU_ONLY_S_INLINE(T) uXm_S_INLINE(T)
#	define uXm_TARGET_GPU_ONLY_S_FINLINE(T) uXm_S_FINLINE(T)
#	define uXm_TARGET_GPU_ONLY_INLINE(T) uXm_INLINE(T)
#	define uXm_TARGET_GPU_ONLY_FINLINE(T) uXm_FINLINE(T)

#	define uXm_TARGET_CPU_ONLY_S_INLINE(T) uXm_S_INLINE(T)
#	define uXm_TARGET_CPU_ONLY_S_FINLINE(T) uXm_S_FINLINE(T)
#	define uXm_TARGET_CPU_ONLY_INLINE(T) uXm_INLINE(T)
#	define uXm_TARGET_CPU_ONLY_FINLINE(T) uXm_FINLINE(T)

#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_S_INLINE(T) uXm_S_INLINE(T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_S_FINLINE(T) uXm_S_FINLINE(T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_INLINE(T) uXm_INLINE(T)
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_FINLINE(T) uXm_FINLINE(T)

#	define uXm_TARGET_CPU_GPU_S_INLINE(T) uXm_S_INLINE(T)
#	define uXm_TARGET_CPU_GPU_S_FINLINE(T) uXm_S_FINLINE(T)
#	define uXm_TARGET_CPU_GPU_INLINE(T) uXm_INLINE(T)
#	define uXm_TARGET_CPU_GPU_FINLINE(T) uXm_FINLINE(T)
#endif

#if defined(uXm_AMP_SUPPORT)
//#include <amp.h>
#	define uXm_CPU_AMP		restrict(amp,cpu)
#	define uXm_AMP_ONLY		restrict(amp)
#	define uXm_AMP			restrict(amp)
#	define uXm_CPU_ONLY
#	define uXm_CPU
#else
#	define uXm_CPU_AMP
#	define uXm_AMP_ONLY
#	define uXm_AMP
#	define uXm_CPU_ONLY
#	define uXm_CPU
#endif // uXm_AMP_SUPPORT

#if defined(uXm_AMP_SUPPORT)
#   define uXm_EXTERN_BEGIN EXTERN_CC_BEGIN
#   define uXm_EXTERN_END EXTERN_CC_END
#else
#   define uXm_EXTERN_BEGIN EXTERN_C_BEGIN
#   define uXm_EXTERN_END EXTERN_C_END
#endif

#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#  if defined( uXm_LIB_DLL)
# ifndef uXm_GLOBAL_CONST
#	define uXm_GLOBAL_CONST _EXTERN const __declspec(selectany)
#	define uXm_CGLOBAL_CONST _EXTERNC const __declspec(selectany)
#	define uXm_CGLOBAL _EXTERNC __declspec(selectany)
#	define uXm_CCGLOBAL_CONST _EXTERNCC const __declspec(selectany)
#	define uXm_CCGLOBAL _EXTERNCC __declspec(selectany)
#	define uXm_AMP_GLOBAL_CONST _EXTERN const __declspec(selectany)
#	define uXm_AMP_CCGLOBAL_CONST _EXTERNCC const __declspec(selectany)
#	define uXm_AMP_CCGLOBAL _EXTERNCC __declspec(selectany)
#	define uXm_STATIC_CONST static const
#	define uXm_C_STATIC_CONST _EXTERNC static const
#	define uXm_CC_STATIC_CONST _EXTERNCC static const
// static inline
#	define uXm_CGLOBAL_API(T) _EXTERNC uXm_S_INLINE(T)
// inline only
#	define __uXm_CGLOBAL_API(T) _EXTERNC __uXm_INLINE(T)
// static inline
#	define uXm_CCGLOBAL_API(T) _EXTERNCC uXm_S_INLINE(T)
// inline only
#	define __uXm_CCGLOBAL_API(T) _EXTERNCC __uXm_INLINE(T)

// static inline
#	define uXm_CGLOBAL_CALLCONV_API(T) _EXTERNC uXm_S_INLINE(uXm_CALLCONV(T))
// inline only
#	define __uXm_CGLOBAL_CALLCONV_API(T) _EXTERNC __uXm_INLINE(uXm_CALLCONV(T))
// static inline
#	define uXm_CCGLOBAL_CALLCONV_API(T) _EXTERNCC uXm_S_INLINE(uXm_CALLCONV(T))
// inline only
#	define __uXm_CCGLOBAL_CALLCONV_API(T) _EXTERNCC __uXm_INLINE(uXm_CALLCONV(T))

// static inline
#	define uXm_CGLOBAL_VECCALL_API(T) _EXTERNC uXm_S_INLINE(uXm_VECCALL(T))
// inline only
#	define __uXm_CGLOBAL_VECCALL_API(T) _EXTERNC __uXm_INLINE(uXm_VECCALL(T))
// static inline
#	define uXm_CCGLOBAL_VECCALL_API(T) _EXTERNCC uXm_S_INLINE(uXm_VECCALL(T))
// inline only
#	define __uXm_CCGLOBAL_VECCALL_API(T) _EXTERNCC __uXm_INLINE(uXm_VECCALL(T))
# endif
# elif defined(uXm_LIB_STATIC)
# ifndef uXm_GLOBAL_CONST
#	define uXm_GLOBAL_CONST _EXTERN const
#	define uXm_CGLOBAL_CONST _EXTERNC const
#	define uXm_CGLOBAL _EXTERNC
#	define uXm_CCGLOBAL_CONST _EXTERNCC const
#	define uXm_CCGLOBAL _EXTERNCC
#	define uXm_AMP_GLOBAL_CONST _EXTERN const
#	define uXm_AMP_CCGLOBAL_CONST _EXTERNCC const
#	define uXm_AMP_CCGLOBAL _EXTERNCC
#	define uXm_STATIC_CONST static const
#	define uXm_C_STATIC_CONST _EXTERNC static const
#	define uXm_CC_STATIC_CONST _EXTERNCC static const
// static inline
#	define uXm_CGLOBAL_API(T) _EXTERNC uXm_S_INLINE(T)
// inline only
#	define __uXm_CGLOBAL_API(T) _EXTERNC __uXm_INLINE(T)
// static inline
#	define uXm_CCGLOBAL_API(T) _EXTERNCC uXm_S_INLINE(T)
// inline only
#	define __uXm_CCGLOBAL_API(T) _EXTERNCC __uXm_INLINE(T)

// static inline
#	define uXm_CGLOBAL_CALLCONV_API(T) _EXTERNC uXm_S_INLINE(uXm_CALLCONV(T))
// inline only
#	define __uXm_CGLOBAL_CALLCONV_API(T) _EXTERNC __uXm_INLINE(uXm_CALLCONV(T))
// static inline
#	define uXm_CCGLOBAL_CALLCONV_API(T) _EXTERNCC uXm_S_INLINE(uXm_CALLCONV(T))
// inline only
#	define __uXm_CCGLOBAL_CALLCONV_API(T) _EXTERNCC __uXm_INLINE(uXm_CALLCONV(T))

// static inline
#	define uXm_CGLOBAL_VECCALL_API(T) _EXTERNC uXm_S_INLINE(uXm_VECCALL(T))
// inline only
#	define __uXm_CGLOBAL_VECCALL_API(T) _EXTERNC __uXm_INLINE(uXm_VECCALL(T))
// static inline
#	define uXm_CCGLOBAL_VECCALL_API(T) _EXTERNCC uXm_S_INLINE(uXm_VECCALL(T))
// inline only
#	define __uXm_CCGLOBAL_VECCALL_API(T) _EXTERNCC __uXm_INLINE(uXm_VECCALL(T))
# endif
# endif
#else
# ifndef uXm_GLOBAL_CONST
#	define uXm_GLOBAL_CONST _EXTERN const
#	define uXm_CGLOBAL_CONST _EXTERNC const
#	define uXm_CGLOBAL _EXTERNC
#	define uXm_CCGLOBAL_CONST _EXTERNCC const
#	define uXm_CCGLOBAL _EXTERNCC
#	define uXm_AMP_GLOBAL_CONST _EXTERN const
#	define uXm_AMP_CCGLOBAL_CONST _EXTERNCC const
#	define uXm_AMP_CCGLOBAL _EXTERNCC
#	define uXm_STATIC_CONST static const
#	define uXm_C_STATIC_CONST _EXTERNC static const
#	define uXm_CC_STATIC_CONST _EXTERNCC static const
// static inline
#	define uXm_CGLOBAL_API(T) _EXTERNC uXm_S_INLINE(T)
// inline only
#	define __uXm_CGLOBAL_API(T) _EXTERNC __uXm_INLINE(T)
// static inline
#	define uXm_CCGLOBAL_API(T) _EXTERNCC uXm_S_INLINE(T)
// inline only
#	define __uXm_CCGLOBAL_API(T) _EXTERNCC __uXm_INLINE(T)

// static inline
#	define uXm_CGLOBAL_CALLCONV_API(T) _EXTERNC uXm_S_INLINE(uXm_CALLCONV(T))
// inline only
#	define __uXm_CGLOBAL_CALLCONV_API(T) _EXTERNC __uXm_INLINE(uXm_CALLCONV(T))
// static inline
#	define uXm_CCGLOBAL_CALLCONV_API(T) _EXTERNCC uXm_S_INLINE(uXm_CALLCONV(T))
// inline only
#	define __uXm_CCGLOBAL_CALLCONV_API(T) _EXTERNCC __uXm_INLINE(uXm_CALLCONV(T))

// static inline
#	define uXm_CGLOBAL_VECCALL_API(T) _EXTERNC uXm_S_INLINE(uXm_VECCALL(T))
// inline only
#	define __uXm_CGLOBAL_VECCALL_API(T) _EXTERNC __uXm_INLINE(uXm_VECCALL(T))
// static inline
#	define uXm_CCGLOBAL_VECCALL_API(T) _EXTERNCC uXm_S_INLINE(uXm_VECCALL(T))
// inline only
#	define __uXm_CCGLOBAL_VECCALL_API(T) _EXTERNCC __uXm_INLINE(uXm_VECCALL(T))
# endif
#endif

#if defined(uXm_AMP_SUPPORT)
#   define uXm_NMGLOBAL_CONST  uXm_AMP_GLOBAL_CONST
#else
#   define uXm_NMGLOBAL_CONST  uXm_GLOBAL_CONST
#endif

#  if defined(uXm_CC_PDEF_GPU_SUPPORT)
// static inline
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T) uXm_CGLOBAL_API(uXm_TARGET_GPU_ONLY uXm_TARGET_DEVICE_BUILTIN T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T) __uXm_CGLOBAL_API(uXm_TARGET_GPU_ONLY uXm_TARGET_DEVICE_BUILTIN T)
// static inline
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T) uXm_CCGLOBAL_API(uXm_TARGET_GPU_ONLY uXm_TARGET_DEVICE_BUILTIN T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T) __uXm_CCGLOBAL_API(uXm_TARGET_GPU_ONLY uXm_TARGET_DEVICE_BUILTIN T)

// static inline
#	define uXm_TARGET_GPU_ONLY_CGLOBALAPI(T) uXm_CGLOBAL_API(uXm_TARGET_GPU_ONLY T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_CGLOBALAPI(T) __uXm_CGLOBAL_API(uXm_TARGET_GPU_ONLY T)
// static inline
#	define uXm_TARGET_GPU_ONLY_CCGLOBALAPI(T) uXm_CCGLOBAL_API(uXm_TARGET_GPU_ONLY T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_CCGLOBALAPI(T) __uXm_CCGLOBAL_API(uXm_TARGET_GPU_ONLY T)

// static inline
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T) uXm_CGLOBAL_API(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)
// inline only
#	define __uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T) __uXm_CGLOBAL_API(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)
// static inline
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T) uXm_CCGLOBAL_API(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)
// inline only
#	define __uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T) __uXm_CCGLOBAL_API(uXm_TARGET_CPU_GPU uXm_TARGET_DEVICE_BUILTIN T)

// static inline
#	define uXm_TARGET_CPU_GPU_CGLOBALAPI(T) uXm_CGLOBAL_API(uXm_TARGET_CPU_GPU T)
// inline only
#	define __uXm_TARGET_CPU_GPU_CGLOBALAPI(T) __uXm_CGLOBAL_API(uXm_TARGET_CPU_GPU T)
// static inline
#	define uXm_TARGET_CPU_GPU_CCGLOBALAPI(T) uXm_CCGLOBAL_API(uXm_TARGET_CPU_GPU T)
// inline only
#	define __uXm_TARGET_CPU_GPU_CCGLOBALAPI(T) __uXm_CCGLOBAL_API(uXm_TARGET_CPU_GPU T)

// static inline
#	define uXm_TARGET_CPU_ONLY_CGLOBALAPI(T) uXm_CGLOBAL_API(uXm_TARGET_CPU_ONLY T)
// inline only
#	define __uXm_TARGET_CPU_ONLY_CGLOBALAPI(T) __uXm_CGLOBAL_API(uXm_TARGET_CPU_ONLY T)
// static inline
#	define uXm_TARGET_CPU_ONLY_CCGLOBALAPI(T) uXm_CCGLOBAL_API(uXm_TARGET_CPU_ONLY T)
// inline only
#	define __uXm_TARGET_CPU_ONLY_CCGLOBALAPI(T) __uXm_CCGLOBAL_API(uXm_TARGET_CPU_ONLY T)
#  else

// static inline
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T) uXm_CGLOBAL_API(T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T) __uXm_CGLOBAL_API(T)
// static inline
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T) uXm_CCGLOBAL_API(T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T) __uXm_CCGLOBAL_API(T)

// static inline
#	define uXm_TARGET_GPU_ONLY_CGLOBALAPI(T) uXm_CGLOBAL_API(T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_CGLOBALAPI(T) __uXm_CGLOBAL_API(T)
// static inline
#	define uXm_TARGET_GPU_ONLY_CCGLOBALAPI(T) uXm_CCGLOBAL_API(T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_CCGLOBALAPI(T) __uXm_CCGLOBAL_API(T)

// static inline
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T) uXm_CGLOBAL_API(T)
// inline only
#	define __uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T) __uXm_CGLOBAL_API(T)
// static inline
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T) uXm_CCGLOBAL_API(T)
// inline only
#	define __uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T) __uXm_CCGLOBAL_API(T)

// static inline
#	define uXm_TARGET_CPU_GPU_CGLOBALAPI(T) uXm_CGLOBAL_API(T)
// inline only
#	define __uXm_TARGET_CPU_GPU_CGLOBALAPI(T) __uXm_CGLOBAL_API(T)
// static inline
#	define uXm_TARGET_CPU_GPU_CCGLOBALAPI(T) uXm_CCGLOBAL_API(T)
// inline only
#	define __uXm_TARGET_CPU_GPU_CCGLOBALAPI(T) __uXm_CCGLOBAL_API(T)

// static inline
#	define uXm_TARGET_CPU_ONLY_CGLOBALAPI(T) uXm_CGLOBAL_API(T)
// inline only
#	define __uXm_TARGET_CPU_ONLY_CGLOBALAPI(T) __uXm_CGLOBAL_API(T)
// static inline
#	define uXm_TARGET_CPU_ONLY_CCGLOBALAPI(T) uXm_CCGLOBAL_API(T)
// inline only
#	define __uXm_TARGET_CPU_ONLY_CCGLOBALAPI(T) __uXm_CCGLOBAL_API(T)
#  endif

# if defined(uXm_AMP_SUPPORT)
// static inline
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_NMGLOBALAPI(T) uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_NMGLOBALAPI(T) __uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T)
// static inline
#	define uXm_TARGET_GPU_ONLY_NMGLOBALAPI(T) uXm_TARGET_GPU_ONLY_CCGLOBALAPI(T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_BUILTIN_NMGLOBALAPI(T) __uXm_TARGET_GPU_ONLY_CCGLOBALAPI(T)
// static inline
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_NMGLOBALAPI(T) uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T)
// inline only
#	define __uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_NMGLOBALAPI(T) __uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T)
// static inline
#	define uXm_TARGET_CPU_GPU_NMGLOBALAPI(T) uXm_TARGET_CPU_GPU_CCGLOBALAPI(T)
// inline only
#	define __uXm_TARGET_CPU_GPU_NMGLOBALAPI(T) __uXm_TARGET_CPU_GPU_CCGLOBALAPI(T)
// static inline
#	define uXm_TARGET_CPU_ONLY_NMGLOBALAPI(T) uXm_TARGET_CPU_ONLY_CCGLOBALAPI(T)
// inline only
#	define __uXm_TARGET_CPU_ONLY_BUILTIN_NMGLOBALAPI(T) __uXm_TARGET_CPU_ONLY_CCGLOBALAPI(T)
# else
// static inline
#	define uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_NMGLOBALAPI(T) uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_NMGLOBALAPI(T) __uXm_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T)
// static inline
#	define uXm_TARGET_GPU_ONLY_NMGLOBALAPI(T) uXm_TARGET_GPU_ONLY_CGLOBALAPI(T)
// inline only
#	define __uXm_TARGET_GPU_ONLY_BUILTIN_NMGLOBALAPI(T) __uXm_TARGET_GPU_ONLY_CGLOBALAPI(T)
// static inline
#	define uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_NMGLOBALAPI(T) uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T)
// inline only
#	define __uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_NMGLOBALAPI(T) __uXm_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T)
// static inline
#	define uXm_TARGET_CPU_GPU_NMGLOBALAPI(T) uXm_TARGET_CPU_GPU_CGLOBALAPI(T)
// inline only
#	define __uXm_TARGET_CPU_GPU_NMGLOBALAPI(T) __uXm_TARGET_CPU_GPU_CGLOBALAPI(T)
// static inline
#	define uXm_TARGET_CPU_ONLY_NMGLOBALAPI(T) uXm_TARGET_CPU_ONLY_CGLOBALAPI(T)
// inline only
#	define __uXm_TARGET_CPU_ONLY_NMGLOBALAPI(T) __uXm_TARGET_CPU_ONLY_CGLOBALAPI(T)
# endif

/**
Alignment macros

uXm_ALIGNPREFIX and uXm_ALIGNSUFFIX can be used for type alignment instead of aligning individual variables as follows:
uXm_ALIGNPREFIX(16)
struct A {
...
} uXm_ALIGNSUFFIX(16);
This declaration style is parsed correctly by Visual Assist.
*/

#if defined(uXm_MSVC_COMPATIBLE_COMPILER) && !defined(uXm_NO_ALIGN)

#		define uXm_DECLALIGN(alignment, decl) __declspec(align(alignment)) decl
#		define uXm_ALIGNPREFIX(alignment) __declspec(align(alignment))
#		define uXm_ALIGNSUFFIX(alignment)

#		define uXm_ALIGNDECL(decl, alignment) __declspec(align(alignment)) decl
#		define uXm_ALIGN1DECL(decl) __declspec(align(1)) decl
#		define uXm_ALIGN2DECL(decl) __declspec(align(2)) decl
#		define uXm_ALIGN3DECL(decl) __declspec(align(3)) decl
#		define uXm_ALIGN4DECL(decl) __declspec(align(4)) decl
#		define uXm_ALIGN6DECL(decl) __declspec(align(6)) decl
#		define uXm_ALIGN8DECL(decl) __declspec(align(8)) decl
#		define uXm_ALIGN9DECL(decl) __declspec(align(9)) decl
#		define uXm_ALIGN12DECL(decl) __declspec(align(12)) decl
#		define uXm_ALIGN16DECL(decl) __declspec(align(16)) decl
#		define uXm_ALIGN18DECL(decl) __declspec(align(18)) decl
#		define uXm_ALIGN24DECL(decl) __declspec(align(24)) decl
#		define uXm_ALIGN32DECL(decl) __declspec(align(32)) decl
#		define uXm_ALIGN36DECL(decl) __declspec(align(36)) decl
#		define uXm_ALIGN48DECL(decl) __declspec(align(48)) decl
#		define uXm_ALIGN64DECL(decl) __declspec(align(64)) decl
#		define uXm_ALIGN72DECL(decl) __declspec(align(72)) decl
#		define uXm_ALIGN96DECL(decl) __declspec(align(96)) decl
#		define uXm_ALIGN128DECL(decl) __declspec(align(128)) decl
#		define uXm_ALIGN256DECL(decl) __declspec(align(256)) decl
#		define uXm_ALIGN512DECL(decl) __declspec(align(512)) decl

#	define uXmVC_ALIGNMENT(X) __declspec(align(X))
#	define uXmVC_ALIGN1 __declspec(align(1))
#	define uXmVC_ALIGN2 __declspec(align(2))
#	define uXmVC_ALIGN3 __declspec(align(3))
#	define uXmVC_ALIGN4 __declspec(align(4))
#	define uXmVC_ALIGN6 __declspec(align(6))
#	define uXmVC_ALIGN8 __declspec(align(8))
#	define uXmVC_ALIGN9 __declspec(align(9))
#	define uXmVC_ALIGN12 __declspec(align(12))
#	define uXmVC_ALIGN16 __declspec(align(16))
#	define uXmVC_ALIGN18 __declspec(align(18))
#	define uXmVC_ALIGN24 __declspec(align(24))
#	define uXmVC_ALIGN32 __declspec(align(32))
#	define uXmVC_ALIGN36 __declspec(align(36))
#	define uXmVC_ALIGN48 __declspec(align(48))
#	define uXmVC_ALIGN64 __declspec(align(64))
#	define uXmVC_ALIGN72 __declspec(align(72))
#	define uXmVC_ALIGN96 __declspec(align(96))
#	define uXmVC_ALIGN128 __declspec(align(128))
#	define uXmVC_ALIGN256 __declspec(align(256))
#	define uXmVC_ALIGN512 __declspec(align(512))

#   define uXmVC_ALGN1 1
#   define uXmVC_ALGN2 2
#   define uXmVC_ALGN3 3
#   define uXmVC_ALGN4 4
#   define uXmVC_ALGN6 6
#   define uXmVC_ALGN8 8
#   define uXmVC_ALGN9 9
#   define uXmVC_ALGN12 12
#   define uXmVC_ALGN16 16
#   define uXmVC_ALGN18 18
#   define uXmVC_ALGN24 24
#   define uXmVC_ALGN32 32
#   define uXmVC_ALGN36 36
#   define uXmVC_ALGN48 48
#   define uXmVC_ALGN64 64
#   define uXmVC_ALGN72 72
#   define uXmVC_ALGN96 96
#   define uXmVC_ALGN128 128
#   define uXmVC_ALGN256 256
#   define uXmVC_ALGN512 512

#	define uXmGC_ALIGNMENT(X)
#	define uXmGC_ALIGN1
#	define uXmGC_ALIGN2
#	define uXmGC_ALIGN3
#	define uXmGC_ALIGN4
#	define uXmGC_ALIGN6
#	define uXmGC_ALIGN8
#	define uXmGC_ALIGN9
#	define uXmGC_ALIGN12
#	define uXmGC_ALIGN16
#	define uXmGC_ALIGN18
#	define uXmGC_ALIGN24
#	define uXmGC_ALIGN32
#	define uXmGC_ALIGN36
#	define uXmGC_ALIGN48
#	define uXmGC_ALIGN64
#	define uXmGC_ALIGN72
#	define uXmGC_ALIGN96
#	define uXmGC_ALIGN128
#	define uXmGC_ALIGN256
#	define uXmGC_ALIGN512

#   define uXmGC_ALGN1
#   define uXmGC_ALGN2
#   define uXmGC_ALGN3
#   define uXmGC_ALGN4
#   define uXmGC_ALGN6
#   define uXmGC_ALGN8
#   define uXmGC_ALGN9
#   define uXmGC_ALGN12
#   define uXmGC_ALGN16
#   define uXmGC_ALGN18
#   define uXmGC_ALGN24
#   define uXmGC_ALGN32
#   define uXmGC_ALGN36
#   define uXmGC_ALGN48
#   define uXmGC_ALGN64
#   define uXmGC_ALGN72
#   define uXmGC_ALGN96
#   define uXmGC_ALGN128
#   define uXmGC_ALGN256
#   define uXmGC_ALGN512

#		define uXm_PREFIXALIGN(alignment) uXm_ALIGNPREFIX(alignment)
#		define uXm_SUFFIXALIGN(alignment) uXm_ALIGNSUFFIX(alignment)

#		define uXm_DECL_ALIGN(alignment, decl) uXm_DECLALIGN(alignment, decl)
#		define uXm_ALIGN_DECL(decl, alignment) uXm_ALIGNDECL(decl, alignment)

#elif defined(uXm_GNUC_TYPE_ALIGNMENT) && !defined(uXm_NO_ALIGN)
#		define uXm_DECLALIGN(alignment, decl) decl __attribute__((aligned(alignment)))
#		define uXm_ALIGNPREFIX(alignment)
#		define uXm_ALIGNSUFFIX(alignment) __attribute__((aligned(alignment)))

#		define uXm_ALIGNDECL(decl, alignment) decl  __attribute__((aligned(alignment)))
#		define uXm_ALIGN1DECL(decl) decl __attribute__((aligned(1)))
#		define uXm_ALIGN2DECL(decl) decl __attribute__((aligned(2)))
#		define uXm_ALIGN3DECL(decl) decl __attribute__((aligned(3)))
#		define uXm_ALIGN4DECL(decl) decl __attribute__((aligned(4)))
#		define uXm_ALIGN6DECL(decl) decl __attribute__((aligned(6)))
#		define uXm_ALIGN8DECL(decl) decl __attribute__((aligned(8)))
#		define uXm_ALIGN9DECL(decl) decl __attribute__((aligned(9)))
#		define uXm_ALIGN12DECL(decl) decl __attribute__((aligned(12)))
#		define uXm_ALIGN16DECL(decl) decl __attribute__((aligned(16)))
#		define uXm_ALIGN18DECL(decl) decl __attribute__((aligned(18)))
#		define uXm_ALIGN24DECL(decl) decl __attribute__((aligned(24)))
#		define uXm_ALIGN32DECL(decl) decl __attribute__((aligned(32)))
#		define uXm_ALIGN36DECL(decl) decl __attribute__((aligned(36)))
#		define uXm_ALIGN48DECL(decl) decl __attribute__((aligned(48)))
#		define uXm_ALIGN64DECL(decl) decl __attribute__((aligned(64)))
#		define uXm_ALIGN72DECL(decl) decl __attribute__((aligned(72)))
#		define uXm_ALIGN96DECL(decl) decl __attribute__((aligned(96)))
#		define uXm_ALIGN128DECL(decl) decl __attribute__((aligned(128)))
#		define uXm_ALIGN256DECL(decl) decl __attribute__((aligned(256)))
#		define uXm_ALIGN512DECL(decl) decl __attribute__((aligned(512)))

#	define uXmGC_ALIGNMENT(X) __attribute__((aligned(X)))
#	define uXmGC_ALIGN1 __attribute__((aligned(1)))
#	define uXmGC_ALIGN2 __attribute__((aligned(2)))
#	define uXmGC_ALIGN3 __attribute__((aligned(3)))
#	define uXmGC_ALIGN4 __attribute__((aligned(4)))
#	define uXmGC_ALIGN6 __attribute__((aligned(6)))
#	define uXmGC_ALIGN8 __attribute__((aligned(8)))
#	define uXmGC_ALIGN9 __attribute__((aligned(9)))
#	define uXmGC_ALIGN12 __attribute__((aligned(12)))
#	define uXmGC_ALIGN16 __attribute__((aligned(16)))
#	define uXmGC_ALIGN18 __attribute__((aligned(18)))
#	define uXmGC_ALIGN24 __attribute__((aligned(24)))
#	define uXmGC_ALIGN32 __attribute__((aligned(32)))
#	define uXmGC_ALIGN36 __attribute__((aligned(36)))
#	define uXmGC_ALIGN48 __attribute__((aligned(48)))
#	define uXmGC_ALIGN64 __attribute__((aligned(64)))
#	define uXmGC_ALIGN72 __attribute__((aligned(72)))
#	define uXmGC_ALIGN96 __attribute__((aligned(96)))
#	define uXmGC_ALIGN128 __attribute__((aligned(128)))
#	define uXmGC_ALIGN256 __attribute__((aligned(256)))
#	define uXmGC_ALIGN512 __attribute__((aligned(512)))

#	define uXmGC_ALGN1 1
#	define uXmGC_ALGN2 2
#	define uXmGC_ALGN3 3
#	define uXmGC_ALGN4 4
#	define uXmGC_ALGN6 6
#	define uXmGC_ALGN8 8
#	define uXmGC_ALGN9 9
#	define uXmGC_ALGN12 12
#	define uXmGC_ALGN16 16
#	define uXmGC_ALGN18 18
#	define uXmGC_ALGN24 24
#	define uXmGC_ALGN32 32
#	define uXmGC_ALGN36 36
#	define uXmGC_ALGN48 48
#	define uXmGC_ALGN64 64
#	define uXmGC_ALGN72 72
#	define uXmGC_ALGN96 96
#	define uXmGC_ALGN128 128
#	define uXmGC_ALGN256 256
#	define uXmGC_ALGN512 512

#	define uXmVC_ALIGNMENT(X)
#	define uXmVC_ALIGN1
#	define uXmVC_ALIGN2
#	define uXmVC_ALIGN3
#	define uXmVC_ALIGN4
#	define uXmVC_ALIGN6
#	define uXmVC_ALIGN8
#	define uXmVC_ALIGN9
#	define uXmVC_ALIGN12
#	define uXmVC_ALIGN16
#	define uXmVC_ALIGN18
#	define uXmVC_ALIGN24
#	define uXmVC_ALIGN32
#	define uXmVC_ALIGN36
#	define uXmVC_ALIGN48
#	define uXmVC_ALIGN64
#	define uXmVC_ALIGN72
#	define uXmVC_ALIGN96
#	define uXmVC_ALIGN128
#	define uXmVC_ALIGN256
#	define uXmVC_ALIGN512

# define uXmVC_ALGN1
# define uXmVC_ALGN2
# define uXmVC_ALGN3
# define uXmVC_ALGN4
# define uXmVC_ALGN6
# define uXmVC_ALGN8
# define uXmVC_ALGN9
# define uXmVC_ALGN12
# define uXmVC_ALGN16
# define uXmVC_ALGN18
# define uXmVC_ALGN24
# define uXmVC_ALGN32
# define uXmVC_ALGN36
# define uXmVC_ALGN48
# define uXmVC_ALGN64
# define uXmVC_ALGN72
# define uXmVC_ALGN96
# define uXmVC_ALGN128
# define uXmVC_ALGN256
# define uXmVC_ALGN512

#		define uXm_PREFIXALIGN(alignment) uXm_ALIGNPREFIX(alignment)
#		define uXm_SUFFIXALIGN(alignment) uXm_ALIGNSUFFIX(alignment)

#		define uXm_DECL_ALIGN(alignment, decl) uXm_DECLALIGN(alignment, decl)
#		define uXm_ALIGN_DECL(decl, alignment) uXm_ALIGNDECL(decl, alignment)

#elif defined(uXm_NO_ALIGN)
#		define uXm_DECLALIGN(alignment, decl)
#		define uXm_ALIGNPREFIX(alignment)
#		define uXm_ALIGNSUFFIX(alignment)

#		define uXm_ALIGNDECL(decl, alignment)
#		define uXm_ALIGN1DECL(decl)
#		define uXm_ALIGN2DECL(decl)
#		define uXm_ALIGN3DECL(decl)
#		define uXm_ALIGN4DECL(decl)
#		define uXm_ALIGN6DECL(decl)
#		define uXm_ALIGN8DECL(decl)
#		define uXm_ALIGN9DECL(decl)
#		define uXm_ALIGN12DECL(decl)
#		define uXm_ALIGN16DECL(decl)
#		define uXm_ALIGN18DECL(decl)
#		define uXm_ALIGN24DECL(decl)
#		define uXm_ALIGN32DECL(decl)
#		define uXm_ALIGN36DECL(decl)
#		define uXm_ALIGN48DECL(decl)
#		define uXm_ALIGN64DECL(decl)
#		define uXm_ALIGN72DECL(decl)
#		define uXm_ALIGN96DECL(decl)
#		define uXm_ALIGN128DECL(decl)
#		define uXm_ALIGN256DECL(decl)
#		define uXm_ALIGN512DECL(decl)

#	define uXmVC_ALIGNMENT(X)
#	define uXmVC_ALIGN1
#	define uXmVC_ALIGN2
#	define uXmVC_ALIGN3
#	define uXmVC_ALIGN4
#	define uXmVC_ALIGN6
#	define uXmVC_ALIGN8
#	define uXmVC_ALIGN9
#	define uXmVC_ALIGN12
#	define uXmVC_ALIGN16
#	define uXmVC_ALIGN18
#	define uXmVC_ALIGN24
#	define uXmVC_ALIGN32
#	define uXmVC_ALIGN36
#	define uXmVC_ALIGN48
#	define uXmVC_ALIGN64
#	define uXmVC_ALIGN72
#	define uXmVC_ALIGN96
#	define uXmVC_ALIGN128
#	define uXmVC_ALIGN256
#	define uXmVC_ALIGN512

# define uXmVC_ALGN1
# define uXmVC_ALGN2
# define uXmVC_ALGN3
# define uXmVC_ALGN4
# define uXmVC_ALGN6
# define uXmVC_ALGN8
# define uXmVC_ALGN9
# define uXmVC_ALGN12
# define uXmVC_ALGN16
# define uXmVC_ALGN18
# define uXmVC_ALGN24
# define uXmVC_ALGN32
# define uXmVC_ALGN36
# define uXmVC_ALGN48
# define uXmVC_ALGN64
# define uXmVC_ALGN72
# define uXmVC_ALGN96
# define uXmVC_ALGN128
# define uXmVC_ALGN256
# define uXmVC_ALGN512

#	define uXmGC_ALIGNMENT(X)
#	define uXmGC_ALIGN1
#	define uXmGC_ALIGN2
#	define uXmGC_ALIGN3
#	define uXmGC_ALIGN4
#	define uXmGC_ALIGN6
#	define uXmGC_ALIGN8
#	define uXmGC_ALIGN9
#	define uXmGC_ALIGN12
#	define uXmGC_ALIGN16
#	define uXmGC_ALIGN18
#	define uXmGC_ALIGN24
#	define uXmGC_ALIGN32
#	define uXmGC_ALIGN36
#	define uXmGC_ALIGN48
#	define uXmGC_ALIGN64
#	define uXmGC_ALIGN72
#	define uXmGC_ALIGN96
#	define uXmGC_ALIGN128
#	define uXmGC_ALIGN256
#	define uXmGC_ALIGN512

# define uXmGC_ALGN1
# define uXmGC_ALGN2
# define uXmGC_ALGN3
# define uXmGC_ALGN4
# define uXmGC_ALGN6
# define uXmGC_ALGN8
# define uXmGC_ALGN9
# define uXmGC_ALGN12
# define uXmGC_ALGN16
# define uXmGC_ALGN18
# define uXmGC_ALGN24
# define uXmGC_ALGN32
# define uXmGC_ALGN36
# define uXmGC_ALGN48
# define uXmGC_ALGN64
# define uXmGC_ALGN72
# define uXmGC_ALGN96
# define uXmGC_ALGN128
# define uXmGC_ALGN256
# define uXmGC_ALGN512

#		define uXm_PREFIXALIGN(alignment) uXm_ALIGNPREFIX(alignment)
#		define uXm_SUFFIXALIGN(alignment) uXm_ALIGNSUFFIX(alignment)

#		define uXm_DECL_ALIGN(alignment, decl) uXm_DECLALIGN(alignment, decl)
#		define uXm_ALIGN_DECL(decl, alignment) uXm_ALIGNDECL(decl, alignment)

#else
#		define uXm_DECLALIGN(alignment, decl)
#		define uXm_ALIGNPREFIX(alignment)
#		define uXm_ALIGNSUFFIX(alignment)

#		define uXm_ALIGNDECL(decl, alignment)
#		define uXm_ALIGN1DECL(decl)
#		define uXm_ALIGN2DECL(decl)
#		define uXm_ALIGN3DECL(decl)
#		define uXm_ALIGN4DECL(decl)
#		define uXm_ALIGN6DECL(decl)
#		define uXm_ALIGN8DECL(decl)
#		define uXm_ALIGN9DECL(decl)
#		define uXm_ALIGN12DECL(decl)
#		define uXm_ALIGN16DECL(decl)
#		define uXm_ALIGN18DECL(decl)
#		define uXm_ALIGN24DECL(decl)
#		define uXm_ALIGN32DECL(decl)
#		define uXm_ALIGN36DECL(decl)
#		define uXm_ALIGN48DECL(decl)
#		define uXm_ALIGN64DECL(decl)
#		define uXm_ALIGN72DECL(decl)
#		define uXm_ALIGN96DECL(decl)
#		define uXm_ALIGN128DECL(decl)
#		define uXm_ALIGN256DECL(decl)
#		define uXm_ALIGN512DECL(decl)

#	define uXmVC_ALIGNMENT(X)
#	define uXmVC_ALIGN1
#	define uXmVC_ALIGN2
#	define uXmVC_ALIGN3
#	define uXmVC_ALIGN4
#	define uXmVC_ALIGN6
#	define uXmVC_ALIGN8
#	define uXmVC_ALIGN9
#	define uXmVC_ALIGN12
#	define uXmVC_ALIGN16
#	define uXmVC_ALIGN18
#	define uXmVC_ALIGN24
#	define uXmVC_ALIGN32
#	define uXmVC_ALIGN36
#	define uXmVC_ALIGN48
#	define uXmVC_ALIGN64
#	define uXmVC_ALIGN72
#	define uXmVC_ALIGN96
#	define uXmVC_ALIGN128
#	define uXmVC_ALIGN256
#	define uXmVC_ALIGN512

# define uXmVC_ALGN1
# define uXmVC_ALGN2
# define uXmVC_ALGN3
# define uXmVC_ALGN4
# define uXmVC_ALGN6
# define uXmVC_ALGN8
# define uXmVC_ALGN9
# define uXmVC_ALGN12
# define uXmVC_ALGN16
# define uXmVC_ALGN18
# define uXmVC_ALGN24
# define uXmVC_ALGN32
# define uXmVC_ALGN36
# define uXmVC_ALGN48
# define uXmVC_ALGN64
# define uXmVC_ALGN72
# define uXmVC_ALGN96
# define uXmVC_ALGN128
# define uXmVC_ALGN256
# define uXmVC_ALGN512

#	define uXmGC_ALIGNMENT(X)
#	define uXmGC_ALIGN1
#	define uXmGC_ALIGN2
#	define uXmGC_ALIGN3
#	define uXmGC_ALIGN4
#	define uXmGC_ALIGN6
#	define uXmGC_ALIGN8
#	define uXmGC_ALIGN9
#	define uXmGC_ALIGN12
#	define uXmGC_ALIGN16
#	define uXmGC_ALIGN18
#	define uXmGC_ALIGN24
#	define uXmGC_ALIGN32
#	define uXmGC_ALIGN36
#	define uXmGC_ALIGN48
#	define uXmGC_ALIGN64
#	define uXmGC_ALIGN72
#	define uXmGC_ALIGN96
#	define uXmGC_ALIGN128
#	define uXmGC_ALIGN256
#	define uXmGC_ALIGN512

# define uXmGC_ALGN1
# define uXmGC_ALGN2
# define uXmGC_ALGN3
# define uXmGC_ALGN4
# define uXmGC_ALGN6
# define uXmGC_ALGN8
# define uXmGC_ALGN9
# define uXmGC_ALGN12
# define uXmGC_ALGN16
# define uXmGC_ALGN18
# define uXmGC_ALGN24
# define uXmGC_ALGN32
# define uXmGC_ALGN36
# define uXmGC_ALGN48
# define uXmGC_ALGN64
# define uXmGC_ALGN72
# define uXmGC_ALGN96
# define uXmGC_ALGN128
# define uXmGC_ALGN256
# define uXmGC_ALGN512

#		define uXm_PREFIXALIGN(alignment) uXm_ALIGNPREFIX(alignment)
#		define uXm_SUFFIXALIGN(alignment) uXm_ALIGNSUFFIX(alignment)

#		define uXm_DECL_ALIGN(alignment, decl) uXm_DECLALIGN(alignment, decl)
#		define uXm_ALIGN_DECL(decl, alignment) uXm_ALIGNDECL(decl, alignment)

#endif

# define uXm_F64_ALGN 8
# define uXm_I64_ALGN 8
# define uXm_F32_ALGN 4
# define uXm_I32_ALGN 4
# define uXm_I16_ALGN 2
# define uXm_I8_ALGN 1

# define uXm_F64_SIZE 8
# define uXm_I64_SIZE 8
# define uXm_F32_SIZE 4
# define uXm_I32_SIZE 4
# define uXm_I16_SIZE 2
# define uXm_I8_SIZE 1

#if (defined(uXm_X86_OR_X64_CPU) || defined(uXm_XBOXONE))  && !defined(uXm_NO_ALIGN)
# if (defined(uXm_MMX_INTRINSICS) || defined(uXm_3DNOW_INTRINSICS)) && (defined(uXm_INTRINSET) && (uXm_INTRINSET >= 2) && (uXm_INTRINSET <= 9)) && \
												!defined(uXm_AVX256_INTRINSICS) && !defined(uXm_AVX512_INTRINSICS) && !defined(uXm_SSE_INTRINSICS)
#			define uXm_PACK_PUSH uXm_PACK_PUSH8
#			define uXmVC_ALGN uXmVC_ALGN8
#			define uXmVC_ALIGN_F32 uXmVC_ALIGN8
#			define uXmVC_ALIGN_F64 uXmVC_ALIGN8
#			define uXmVC_ALIGN_REAL uXmVC_ALIGN8
#			define uXmVC_ALIGN uXmVC_ALIGN8

#			define uXmGC_ALGN uXmGC_ALGN8
#			define uXmGC_ALIGN_F32 uXmGC_ALIGN8
#			define uXmGC_ALIGN_F64 uXmGC_ALIGN8
#			define uXmGC_ALIGN_REAL uXmGC_ALIGN8
#			define uXmGC_ALIGN uXmGC_ALIGN8

#			define uXm_ALIGN_F32DECL(decl) uXm_ALIGN8DECL(decl)
#			define uXm_ALIGN_F64DECL(decl) uXm_ALIGN8DECL(decl)
#			define uXm_ALIGN_REALDECL(decl) uXm_ALIGN8DECL(decl)
#			define uXm_ALIGNDECLN(decl) uXm_ALIGN8DECL(decl)
# elif defined(uXm_SSE_INTRINSICS) && (defined(uXm_INTRINSET) && (uXm_INTRINSET >= 10) && (uXm_INTRINSET <= 42)) && !defined(uXm_AVX256_INTRINSICS) && !defined(uXm_AVX512_INTRINSICS)
#           define uXm_PACK_PUSH uXm_PACK_PUSH16
#           define uXmVC_ALGN uXmVC_ALGN16
#           define uXmVC_ALIGN_F32 uXmVC_ALIGN16
#           define uXmVC_ALIGN_F64 uXmVC_ALIGN16
#           define uXmVC_ALIGN_REAL uXmVC_ALIGN16
#           define uXmVC_ALIGN uXmVC_ALIGN16

#           define uXmGC_ALGN uXmGC_ALGN16
#           define uXmGC_ALIGN_F32 uXmGC_ALIGN16
#           define uXmGC_ALIGN_F64 uXmGC_ALIGN16
#           define uXmGC_ALIGN_REAL uXmGC_ALIGN16
#           define uXmGC_ALIGN uXmGC_ALIGN16

#			define uXm_ALIGN_F32DECL(decl) uXm_ALIGN16DECL(decl)
#			define uXm_ALIGN_F64DECL(decl) uXm_ALIGN16DECL(decl)
#			define uXm_ALIGN_REALDECL(decl) uXm_ALIGN16DECL(decl)
#			define uXm_ALIGNDECLN(decl) uXm_ALIGN16DECL(decl)
# elif defined(uXm_AVX256_INTRINSICS) && (defined(uXm_INTRINSET) && (uXm_INTRINSET >= 50) && (uXm_INTRINSET <= 52)) && !defined(uXm_AVX512_INTRINSICS) && !defined(uXm_SSE_INTRINSICS)
#if defined(_MSC_VER) && !defined(__INTEL_COMPILER)
#           define uXm_PACK_PUSH uXm_PACK_PUSH16
#else
#           define uXm_PACK_PUSH uXm_PACK_PUSH32
#endif
#           define uXmVC_ALGN uXmVC_ALGN32
#           define uXmVC_ALIGN_F32 uXmVC_ALIGN32
#           define uXmVC_ALIGN_F64 uXmVC_ALIGN32
#           define uXmVC_ALIGN_REAL uXmVC_ALIGN32
#           define uXmVC_ALIGN uXmVC_ALIGN32

#           define uXmGC_ALGN uXmGC_ALGN32
#           define uXmGC_ALIGN_F32 uXmGC_ALIGN32
#           define uXmGC_ALIGN_F64 uXmGC_ALIGN32
#           define uXmGC_ALIGN_REAL uXmGC_ALIGN32
#           define uXmGC_ALIGN uXmGC_ALIGN32

#			define uXm_ALIGN_F32DECL(decl) uXm_ALIGN32DECL(decl)
#			define uXm_ALIGN_F64DECL(decl) uXm_ALIGN32DECL(decl)
#			define uXm_ALIGN_REALDECL(decl) uXm_ALIGN32DECL(decl)
#			define uXm_ALIGNDECLN(decl) uXm_ALIGN32DECL(decl)
# elif defined(uXm_AVX512_INTRINSICS) && (defined(uXm_INTRINSET) && (uXm_INTRINSET >= 60)) && !defined(uXm_AVX256_INTRINSICS) && !defined(uXm_SSE_INTRINSICS)
#if defined(_MSC_VER) && !defined(__INTEL_COMPILER)
#           define uXm_PACK_PUSH uXm_PACK_PUSH16
#else
#           define uXm_PACK_PUSH uXm_PACK_PUSH64
#endif
#           define uXmVC_ALGN uXmVC_ALGN64
#           define uXmVC_ALIGN_F32 uXmVC_ALIGN64
#           define uXmVC_ALIGN_F64 uXmVC_ALIGN64
#           define uXmVC_ALIGN_REAL uXmVC_ALIGN64
#           define uXmVC_ALIGN uXmVC_ALIGN64

#           define uXmGC_ALGN uXmGC_ALGN64
#           define uXmGC_ALIGN_F32 uXmGC_ALIGN64
#           define uXmGC_ALIGN_F64 uXmGC_ALIGN64
#           define uXmGC_ALIGN_REAL uXmGC_ALIGN64
#           define uXmGC_ALIGN uXmGC_ALIGN64

#			define uXm_ALIGN_F32DECL(decl) uXm_ALIGN64DECL(decl)
#			define uXm_ALIGN_F64DECL(decl) uXm_ALIGN64DECL(decl)
#			define uXm_ALIGN_REALDECL(decl) uXm_ALIGN64DECL(decl)
#			define uXm_ALIGNDECLN(decl) uXm_ALIGN64DECL(decl)
#else  /* building all x86/x64 intrinsics sizes, defaults to SSE compatibility size, defend your code against sizes accidentally mixing*/
#			define uXm_PACK_PUSH uXm_PACK_PUSH16
#			define uXmVC_ALGN uXmVC_ALGN16
#			define uXmVC_ALIGN_F32 uXmVC_ALIGN16
#			define uXmVC_ALIGN_F64 uXmVC_ALIGN16
#			define uXmVC_ALIGN_REAL uXmVC_ALIGN16
#			define uXmVC_ALIGN uXmVC_ALIGN16

#			define uXmGC_ALGN uXmGC_ALGN16
#			define uXmGC_ALIGN_F32 uXmGC_ALIGN16
#			define uXmGC_ALIGN_F64 uXmGC_ALIGN16
#			define uXmGC_ALIGN_REAL uXmGC_ALIGN16
#			define uXmGC_ALIGN uXmGC_ALIGN16

#			define uXm_ALIGN_F32DECL(decl) uXm_ALIGN16DECL(decl)
#			define uXm_ALIGN_F64DECL(decl) uXm_ALIGN16DECL(decl)
#			define uXm_ALIGN_REALDECL(decl) uXm_ALIGN16DECL(decl)
#			define uXm_ALIGNDECLN(decl) uXm_ALIGN16DECL(decl)
# endif
#elif defined(uXm_ARM) && !defined(uXm_NO_ALIGN)
#           define uXm_PACK_PUSH uXm_PACK_PUSH8
#           define uXmVC_ALGN uXmVC_ALGN8
#           define uXmVC_ALIGN_F32 uXmVC_ALIGN8
#           define uXmVC_ALIGN_F64 uXmVC_ALIGN8
#           define uXmVC_ALIGN_REAL uXmVC_ALIGN8
#           define uXmVC_ALIGN uXmVC_ALIGN8

#           define uXmGC_ALGN uXmGC_ALGN8
#           define uXmGC_ALIGN_F32 uXmGC_ALIGN8
#           define uXmGC_ALIGN_F64 uXmGC_ALIGN8
#           define uXmGC_ALIGN_REAL uXmGC_ALIGN8
#           define uXmGC_ALIGN uXmGC_ALIGN8

#			define uXm_ALIGN_F32DECL(decl) uXm_ALIGN8DECL(decl)
#			define uXm_ALIGN_F64DECL(decl) uXm_ALIGN8DECL(decl)
#			define uXm_ALIGN_REALDECL(decl) uXm_ALIGN8DECL(decl)
#			define uXm_ALIGNDECLN(decl) uXm_ALIGN8DECL(decl)
#elif defined(uXm_PS3) && !defined(uXm_NO_ALIGN)
#           define uXm_PACK_PUSH uXm_PACK_PUSH128
#           define uXmVC_ALGN uXmVC_ALGN128
#           define uXmVC_ALIGN_F32 uXmVC_ALIGN128
#           define uXmVC_ALIGN_F64 uXmVC_ALIGN128
#           define uXmVC_ALIGN_REAL uXmVC_ALIGN128
#           define uXmVC_ALIGN uXmVC_ALIGN128

#           define uXmGC_ALGN uXmGC_ALGN128
#           define uXmGC_ALIGN_F32 uXmGC_ALIGN128
#           define uXmGC_ALIGN_F64 uXmGC_ALIGN128
#           define uXmGC_ALIGN_REAL uXmGC_ALIGN128
#           define uXmGC_ALIGN uXmGC_ALIGN128

#			define uXm_ALIGN_F32DECL(decl) uXm_ALIGN128DECL(decl)
#			define uXm_ALIGN_F64DECL(decl) uXm_ALIGN128DECL(decl)
#			define uXm_ALIGN_REALDECL(decl) uXm_ALIGN128DECL(decl)
#			define uXm_ALIGNDECLN(decl) uXm_ALIGN128DECL(decl)
#elif defined(uXm_NO_ALIGN)
#           define uXm_PACK_PUSH
#           define uXmVC_ALGN uXmVC_ALGN4
#           define uXmVC_ALIGN_F32 uXmVC_ALIGN4
#           define uXmVC_ALIGN_F64 uXmVC_ALIGN4
#           define uXmVC_ALIGN_REAL uXmVC_ALIGN4
#           define uXmVC_ALIGN uXmVC_ALIGN4

#           define uXmGC_ALGN uXmGC_ALGN4
#           define uXmGC_ALIGN_F32 uXmGC_ALIGN4
#           define uXmGC_ALIGN_F64 uXmGC_ALIGN4
#           define uXmGC_ALIGN_REAL uXmGC_ALIGN4
#           define uXmGC_ALIGN uXmGC_ALIGN4

#			define uXm_ALIGN_F32DECL(decl) uXm_ALIGN4DECL(decl)
#			define uXm_ALIGN_F64DECL(decl) uXm_ALIGN4DECL(decl)
#			define uXm_ALIGN_REALDECL(decl) uXm_ALIGN4DECL(decl)
#			define uXm_ALIGNDECLN(decl) uXm_ALIGN4DECL(decl)
#else
#           define uXm_PACK_PUSH
#           define uXmVC_ALGN uXmVC_ALGN4
#           define uXmVC_ALIGN_F32 uXmVC_ALIGN4
#           define uXmVC_ALIGN_F64 uXmVC_ALIGN4
#           define uXmVC_ALIGN_REAL uXmVC_ALIGN4
#           define uXmVC_ALIGN uXmVC_ALIGN4

#           define uXmGC_ALGN uXmGC_ALGN4
#           define uXmGC_ALIGN_F32 uXmGC_ALIGN4
#           define uXmGC_ALIGN_F64 uXmGC_ALIGN4
#           define uXmGC_ALIGN_REAL uXmGC_ALIGN4
#           define uXmGC_ALIGN uXmGC_ALIGN4

#			define uXm_ALIGN_F32DECL(decl) uXm_ALIGN4DECL(decl)
#			define uXm_ALIGN_F64DECL(decl) uXm_ALIGN4DECL(decl)
#			define uXm_ALIGN_REALDECL(decl) uXm_ALIGN4DECL(decl)
#			define uXm_ALIGNDECLN(decl) uXm_ALIGN4DECL(decl)
#endif

//////////////////////////////////////////////////////////////////////////
// Math and constants align macro

// sample use uXm_NMALIGN(valor)
#if defined(uXm_UNALIGNED_MATH_CONST_ALIGN) && !defined(uXm_NO_ALIGN_MATH_INITIALIZED_CONST)
// unaligned initialized constants
#	define uXm_NMALIGN(decl) uXm_ALIGNDECLN(decl)
#else
#	define uXm_NMALIGN(decl) decl
#endif

// aligned initialized constants
#if !defined(uXm_NO_ALIGN_MATH_INITIALIZED_CONST)

#		define uXm_NMALIGN1(decl) uXm_ALIGN1DECL(decl)
#		define uXm_NMALIGN2(decl) uXm_ALIGN2DECL(decl)
#		define uXm_NMALIGN4(decl) uXm_ALIGN4DECL(decl)
#		define uXm_NMALIGN8(decl) uXm_ALIGN8DECL(decl)
#		define uXm_NMALIGN16(decl) uXm_ALIGN16DECL(decl)
#		define uXm_NMALIGN32(decl) uXm_ALIGN32DECL(decl)
#		define uXm_NMALIGN64(decl) uXm_ALIGN64DECL(decl)

#		define uXm_NMPACK_PUSH uXm_PACK_PUSH
#		define uXm_NMPACK_PUSH1 uXm_PACK_PUSH1
#		define uXm_NMPACK_PUSH2 uXm_PACK_PUSH2
#		define uXm_NMPACK_PUSH4 uXm_PACK_PUSH4
#		define uXm_NMPACK_PUSH8 uXm_PACK_PUSH8
#		define uXm_NMPACK_PUSH16 uXm_PACK_PUSH16
#		define uXm_NMPACK_PUSH32 uXm_PACK_PUSH32
#		define uXm_NMPACK_PUSH64 uXm_PACK_PUSH64

#else
#		define uXm_NMALIGN1(decl) decl
#		define uXm_NMALIGN2(decl) decl
#		define uXm_NMALIGN4(decl) decl
#		define uXm_NMALIGN8(decl) decl
#		define uXm_NMALIGN16(decl) decl
#		define uXm_NMALIGN32(decl) decl
#		define uXm_NMALIGN64(decl) decl
#endif
//////////////////////////////////////////////////////////////////////////

#   define  uXm_4x4ARRAY_2LOOP_UNROLL4(remval, unroll1, unroll2, refval) \
									remval[unroll1 + 0][unroll2 + 0] refval(unroll1 + 0, unroll2 + 0); \
									remval[unroll1 + 0][unroll2 + 1] refval(unroll1 + 0, unroll2 + 1); \
									remval[unroll1 + 0][unroll2 + 2] refval(unroll1 + 0, unroll2 + 2); \
									remval[unroll1 + 0][unroll2 + 3] refval(unroll1 + 0, unroll2 + 3); \
									\
									remval[unroll1 + 1][unroll2 + 0] refval(unroll1 + 1, unroll2 + 0); \
									remval[unroll1 + 1][unroll2 + 1] refval(unroll1 + 1, unroll2 + 1); \
									remval[unroll1 + 1][unroll2 + 2] refval(unroll1 + 1, unroll2 + 2); \
									remval[unroll1 + 1][unroll2 + 3] refval(unroll1 + 1, unroll2 + 3); \
									\
									remval[unroll1 + 2][unroll2 + 0] refval(unroll1 + 2, unroll2 + 0); \
									remval[unroll1 + 2][unroll2 + 1] refval(unroll1 + 2, unroll2 + 1); \
									remval[unroll1 + 2][unroll2 + 2] refval(unroll1 + 2, unroll2 + 2); \
									remval[unroll1 + 2][unroll2 + 3] refval(unroll1 + 2, unroll2 + 3); \
									\
									remval[unroll1 + 3][unroll2 + 0] refval(unroll1 + 3, unroll2 + 0); \
									remval[unroll1 + 3][unroll2 + 1] refval(unroll1 + 3, unroll2 + 1); \
									remval[unroll1 + 3][unroll2 + 2] refval(unroll1 + 3, unroll2 + 2); \
									remval[unroll1 + 3][unroll2 + 3] refval(unroll1 + 3, unroll2 + 3);

/**
Deprecated macro
- To deprecate a function: Place uXm_DEPRECATED at the start of the function header (leftmost word).
- To deprecate a 'typedef, a 'struct' or a 'class': Place uXm_DEPRECATED directly after the keywords ('typdef', 'struct', 'class').
*/
#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#	if (defined(uXm_WINDOWS) || defined(uXm_XBOXONE) || defined(uXm_ARM)) && (_MSC_VER >= 1300) && !defined(MIDL_PASS)
#		define uXm_DEPRECATED(T) __declspec(deprecated) T
#		define uXm_DEPRECATED2(T,MSG) __declspec(deprecated(MSG)) T
#	else
#		define uXm_DEPRECATED /* nothing */
#		define uXm_DEPRECATED2(MSG) /* nothing */
#	endif
#elif defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(uXm_IBMC)
#		define uXm_DEPRECATED(T) __attribute__((deprecated)) T
#		define uXm_DEPRECATED2(T,MSG) __attribute__((deprecated)(MSG)) T
#else
#		define uXm_DEPRECATED(T) T
#		define uXm_DEPRECATED2(T,MSG) T
#endif

// VC6 no '__FUNCTION__' workaround
#if defined(uXm_VC6) && !defined(__FUNCTION__)
#	define __FUNCTION__	"Undefined"
#endif

#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#   define uXm_OFFSET_OF(X, Y) offsetof(X, Y)
#elif defined(uXm_GCC_COMPATIBLE_COMPILER)
#   define uXm_OFFSET_OF(X, Y) __builtin_offsetof(X, Y)
#else
#   define uXm_OFFSET_OF(X, Y)
#endif

#define uXm_OFFSETOF_BASE 0x100 // casting the null ptr takes a special-case code path, which we don't want
#define uXm_OFFSET_OF_RT(Class, Member)                                                                                 \
	(reinterpret_cast<uXmsize_t>(&reinterpret_cast<Class*>(uXm_OFFSETOF_BASE)->Member) - uXmsize_t(uXm_OFFSETOF_BASE))

// use the compiler friendly but programmer ugly version for release only
#ifdef uXm_DEBUG
#	define uXm_MULTILINE_MACRO_BEGIN	do {
#	define uXm_MULTILINE_MACRO_END		} while(0)
#else
#		define uXm_MULTILINE_MACRO_BEGIN	if(1) {
#		define uXm_MULTILINE_MACRO_END		} else
#endif

#if  defined(uXm_CUDACC)
#		define uXm_BREAKPOINT(ID) _builtin_trap();
#elif defined(uXm_X86_OR_X64_CPU) || defined(uXm_XBOXONE)
#	if defined(uXm_VC)
#		define uXm_BREAKPOINT(ID) __debugbreak();
#   elif defined(uXm_NACL) // not allowed raise interrupts
#		define uXm_BREAKPOINT(ID) ((*((int*)0)) = ID);
#	elif defined(uXm_GCC_COMPATIBLE_COMPILER)
#		define uXm_BREAKPOINT(ID) __builtin_trap();
#	else
#		define uXm_BREAKPOINT(ID) ((*((int*)0)) = ID);
#	endif
#elif defined(uXm_XBOX360)
#	if defined(uXm_VC)
#		define uXm_BREAKPOINT(ID) __debugbreak();
#	else
#		define uXm_BREAKPOINT(ID) ((*((int*)0)) = ID);
#	endif
#elif defined(uXm_PS3_PPU)
#		define uXm_BREAKPOINT(ID) __asm__ volatile ( "tw 31,1,1" )
#elif defined(uXm_PS3_SPU)
#		define uXm_BREAKPOINT(ID) __asm__ volatile ("ilhu $0, %0\n\tiohl $0, %1\n\tstopd $0,$0,$0" : : "i"(ID>>16), "i"(ID&0xFFFF) );
#elif defined(uXm_WIIU)
#		define uXm_BREAKPOINT(ID) OSDebug();
#elif defined(uXm_GEKKO)
#		define uXm_BREAKPOINT(ID)    uXm_MULTILINE_MACRO_BEGIN						\
																																{                                               \
									register unsigned int uXm_ORIGINAL_MSR;		\
									register unsigned int uXm_NEW_MSR;			\
									asm volatile								\
																																				{											\
										mfmsr uXm_ORIGINAL_MSR; 					/* Grab the original value of the MSR */ \
										ori uXm_NEW_MSR, uXm_ORIGINAL_MSR, 0x400; /* or the original MSR with 0x400 and store it */ \
										mtmsr uXm_NEW_MSR; 						/* Set the MSR to the new value - this will throw exception 0xD00 */ \
										mtmsr uXm_ORIGINAL_MSR; 					/* This puts the MSR back to its original state; required for*/\
																				/* getting out of single-step mode (when the user resumes) */\
																																				}											\
																																}   											\
								uXm_MULTILINE_MACRO_END

#elif defined(uXm_ARM)
#	if defined(uXm_VC)
#		define uXm_BREAKPOINT(ID) __debugbreak();
#	elif defined(uXm_SNC)
#		define uXm_BREAKPOINT(ID) __breakpoint(0);
#	elif defined(uXm_GCC_COMPATIBLE_COMPILER)
#		define uXm_BREAKPOINT(ID) __builtin_trap();
#	else
#		define uXm_BREAKPOINT(ID) ((*((int*)0)) = ID);
#	endif
#elif defined(uXm_CTR)
#	include <nn/dbg.h>
#		define uXm_BREAKPOINT(ID) ::nn::dbg::Break(nn::dbg::BREAK_REASON_ASSERT);
#else
#		define uXm_BREAKPOINT(ID) ((*((int*)0)) = ID);
#endif

#if (defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(uXm_ARM_COMPILER)) && defined(__ELF__)
#		define uXm_USE_DISPATCH_POINTER_SECTION  __attribute__((section(".data.DispatchPointer")))
#		define uXm_USE_DISPATCH_FUNCTION_SECTION __attribute__((section(".text.DispatchFunction")))
#  if defined(uXm_ARCH_ARM)
#		define uXm_USE_DISPATCH_TABLE_SECTION __attribute__((section(".rodata.DispatchTable,\"a\",%progbits @")))
#  else
#		define uXm_USE_DISPATCH_TABLE_SECTION __attribute__((section(".rodata.DispatchTable,\"a\",@progbits #")))
#  endif
#elif (defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(uXm_ARM_COMPILER)) && defined(__MACH__)
#		define uXm_USE_DISPATCH_POINTER_SECTION  __attribute__((section("__DATA,__data.DispPtr")))
#		define uXm_USE_DISPATCH_FUNCTION_SECTION __attribute__((section("__TEXT,__text.DispFun")))
#		define uXm_USE_DISPATCH_TABLE_SECTION    __attribute__((section("__DATA,__const.DispTbl")))
#elif defined(uXm_MSVC_COMPATIBLE_COMPILER)
#		define uXm_USE_DISPATCH_POINTER_SECTION __declspec(allocate(".data$DispatchPointer"))
/* __declspec(allocate(...)) works with data only. Use pragma for code. */
#		define uXm_USE_DISPATCH_FUNCTION_SECTION
#		define uXm_USE_DISPATCH_TABLE_SECTION   __declspec(allocate(".rdata$DispatchTable"))
#else
#error "Unsupported compiler or output format"
#endif

/// Note that alignment must be a power of two for this to work.
/// Note: to use this macro you must cast your pointer to a byte pointer or to an integer value.
#   define uXm_NEXT_MULTIPLE_OF(Alignment, Value)  ( ((Value) + ((Alignment)-1)) & (~((Alignment)+(Value)*0-1)) )

/// The offset of a member within a structure
#   define uXm_OFFSET_OFCLASS(Class, Member) int(reinterpret_cast<long>(&(reinterpret_cast<Class*>(16)->Member))-16)

/// A check for whether the offset of a member within a structure is as expected
#   define uXm_OFFSET_EQUALS(Class, Member, Offset) (uXm_OFFSET_OFCLASS(Class,Member)==Offset)

//
// Helper macro THRUST_JOIN (based on BOOST_JOIN):
// The following piece of macro magic joins the two
// arguments together, even when one of the arguments is
// itself a macro (see 16.3.1 in C++ standard).  The key
// is that macro expansion of macro arguments does not
// occur in THRUST_DO_JOIN2 but does in THRUST_DO_JOIN.
//
/// Join two preprocessor tokens, even when a token is itself a macro.
#   define uXm_JOIN(A,B) uXm_JOIN2(A,B)
#   define uXm_JOIN2(A,B) uXm_JOIN3(A,B)
#   define uXm_JOIN3(A,B) A##B

/// Creates an uninitialized buffer large enough for object of type TYPE to fit in while aligned to ALIGN boundary. Creates a pointer VAR to this aligned address.
#   define uXm_DECLARE_ALIGNED_LOCAL_PTR( TYPE, VAR, ALIGN  )										\
	const int VAR ## BufferSize = ALIGN + sizeof(TYPE);												\
	char VAR ## Buffer[VAR ## BufferSize];															\
	TYPE* VAR = reinterpret_cast<TYPE*>(uXm_NEXT_MULTIPLE_OF(ALIGN, unsigned long(VAR ## Buffer)));	

#   define uXm_SIZE_OF(Class, Member)			sizeof(((Class*)0)->Member)

//#   define uXm_UNUSED(_P) (void)(_P);

// An expression that should expand to nothing in non uXm_DEBUG builds.
// currently use this only for tagging the purpose of containers for memory use tracking.
#if defined(uXm_DEBUG)
#   define uXm_DEBUG_EXP(x) (x)
#   define uXm_DEBUG_EXP_C(x) x,
#else
#   define uXm_DEBUG_EXP(x)
#   define uXm_DEBUG_EXP_C(x)
#endif

#if defined(uXm_INTRIN_DEBUG)
/*
#   define uXm_INTRIN_VEC_DEBUG 1
#include <iostream>
/ * Figure out whether and how to define the output operators * /
#if defined(_IOSTREAM_) || defined(_CPP_IOSTREAM) || defined(_GLIBCXX_IOSTREAM) || defined (_LIBCPP_IOSTREAM)
#   define uXm_INTRINVEC_OUTPUT_OPERATORS 1
#   define uXm_STDOSTREAM std::ostream
#elif defined(_INC_IOSTREAM) || defined(_IOSTREAM_H_)
#   define uXm_INTRINVEC_OUTPUT_OPERATORS 1
#   define uXm_STDOSTREAM ostream
#endif*/

#endif

#   define uXm_SIGN_BITMASK		0x80000000

// Macro for avoiding default assignment and copy
// because NoCopy inheritance can increase class size on some platforms.
#   define uXm_NOCOPY(Class) \
	Class(const Class &); \
	Class &operator=(const Class &);

// use in a cpp file to suppress LNK4221
#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#   define uXm_DUMMY_SYMBOL namespace { char uXmDummySymbol; }
#else
#   define uXm_DUMMY_SYMBOL
#endif

#if defined(uXm_GCC_COMPATIBLE_COMPILER)
#   define uXm_WEAK_SYMBOL __attribute__((weak)) // this is to support SIMD constant merging in template specialization
#else
#   define uXm_WEAK_SYMBOL
#endif

#ifndef uXm_USE_DOUBLE_PRECISION

# if defined(uXm_AMP_USE_PRECISE_PRECISION)
#	define ampmath(Name) __dp_math_##Name
# elif defined(uXm_AMP_USE_FAST_PRECISION)
#	define ampmath(Name) __dp_d3d_##Name
# endif

# if defined(uXm_CUDA_SUPPORT)
// gets expanded to __nv_Name
#	define nvmath(Name)   __nv_##Name
# endif
#else

# if defined(uXm_AMP_USE_PRECISE_PRECISION)
#	define ampmath(Name) __dp_math_##Name
# elif defined(uXm_AMP_SUPPORT) && defined(uXm_AMP_USE_FAST_PRECISION)
#error : AMP concurrency fast_math don't have double precision and double precision cannot be used with fast math in all situations
# endif

# if defined(uXm_CUDA_SUPPORT)
// gets expanded to __nv_Name
#	define nvmath(Name)   __nv_##Name
# elif defined(uXm_CUDA_SUPPORT) && defined(uXm_CUDA_USE_FAST_PRECISION)
#error : CUDA fast math don't have double precision and double precision cannot be used with fast math in all situations
# endif
#endif /* uXm_USE_DOUBLE_PRECISION */

//#if defined(uXm_DIRECTXMATH_SUPPORT)
#   define namespace_DirectX namespace DirectX {
#   define namespace_DirectX_end }
//#endif

#   define namespace_uXmOAMP namespace uXmOAMP {
#   define namespace_uXmOAMP_end }

#   define namespace_Math namespace Math {
#   define namespace_Math_end }

#if defined(uXm_AMP_SUPPORT)
#   define namespace_AMP namespace AMP {
#   define namespace_AMP_end }

#   define namespace_AMPMath namespace AMPMath {
#   define namespace_AMPMath_end }
#endif

#   define namespace_uXmTemplate namespace uXmTemplate {
#   define namespace_uXmTemplate_end }

#   define namespace_uXmTMath namespace uXmTMath {
#   define namespace_uXmTMath_end }

#if defined(uXm_SSE_INTRINSICS)
#   define namespace_uXmSSE namespace uXmSSE {
#   define namespace_uXmSSE_end }
#endif

#if defined(uXm_CUDA_SUPPORT)
#   define namespace_CUDA namespace CUDA {
#   define namespace_CUDA_end }

#   define namespace_CUDAMath namespace CUDAMath {
#   define namespace_CUDAMath_end }
#endif

#   define namespace_Intrin namespace Intrin {
#   define namespace_Intrin_end }

#   define namespace_IntrinMath namespace IntrinMath {
#   define namespace_IntrinMath_end }

#   define namespace_std namespace std {
#   define namespace_std_end }

/*
namespace_uXmOAMP
namespace_uXmOAMP_end*/
/*namespace uXm = uXmOAMP;*/

# if !defined(uXm_NO_DIRECTXMATH_SUPPORT)
/*
namespace_DirectX
namespace_DirectX_end*/
/*namespace DX = DirectX;*/
# endif

#endif // uXm_BASEDEFS_H
