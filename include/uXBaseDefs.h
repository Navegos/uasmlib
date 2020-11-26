
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - optimized library                 / /
; / /                                                                               / /
; / /    Licensed under the Apache License, Version 2.0 (the "License");            / /
; / /    you may not use this file except in compliance with the License.           / /
; / /    You may obtain a copy of the License at                                    / /
; / /                                                                               / /
; / /        http://www.apache.org/licenses/LICENSE-2.0                             / /
; / /                                                                               / /
; / /    Unless required by applicable law or agreed to in writing, software        / /
; / /    distributed under the License is distributed on an "AS IS" BASIS,          / /
; / /    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   / /
; / /    See the License for the specific language governing permissions and        / /
; / /    limitations under the License.                                             / /
; / /                                                                               / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_BASEDEFS_H
#define uX_BASEDEFS_H 1

#include "uXpreprocessor.h"
#include "uXexp.h"

/**
Calling convention  // currently defined for windows only for (MSVC / Intel ICW) & (GCC compatible compiler / Intel ICU), needs researching for other compilers implementation
*/
#if defined(uX_MSVC_COMPATIBLE_COMPILER) && !defined(uX_MIC)
#  if defined(uX_X86_OR_X64_CPU)
#     define uX_cdecl __cdecl
#     define uX_stdcall __stdcall
#     define uX_fastcall __fastcall
#    ifndef uX_callconv
#      if defined(uX_VECTORCALL_SUPPORT)
#        if defined(uX_VC) || defined(uX_CLANGW) || defined(uX_ICW)
#           define uX_callconv __vectorcall
#        else
#           define uX_callconv __fastcall
#        endif
#      else
#           define uX_callconv __fastcall
#      endif
#    endif //uX_callconv
#    ifndef uX_veccall
#      if defined(uX_VECTORCALL_SUPPORT)
#        if defined(uX_VC) || defined(uX_CLANGW) || defined(uX_ICW)
#           define uX_veccall __vectorcall
#        else
#           define uX_veccall
#        endif
#      else
#           define uX_veccall
#      endif
#    endif //uX_veccall
#    ifndef uX_regcall
#      if defined(uX_REGCALL_SUPPORT)
#        if defined(uX_CLANGW) || defined(uX_ICW) && !defined(uX_VC)
#           define uX_regcall __regcall
#        else
#           define uX_regcall
#        endif
#      else
#           define uX_regcall
#      endif
#    endif //uX_regcall
#  else
#       define uX_cdecl
#       define uX_stdcall
#       define uX_fastcall
#       define uX_callconv
#       define uX_veccall
#       define uX_regcall
#   endif //uX_X86_OR_X64_CPU
#elif defined(uX_GCC_COMPATIBLE_COMPILER)
#  if defined(uX_X86_OR_X64_CPU)
#   if defined(uX_WINDOWS)
#    ifndef uX_callconv
#      if defined(uX_VECTORCALL_SUPPORT)
#        if defined(uX_CLANG) || defined(uX_ICC)
#           define uX_callconv __attribute__((vectorcall))
#        elif defined(uX_GCC)
#           define uX_callconv __attribute__((ms_abi))
#        else
#           define uX_callconv __attribute__((fastcall))
#        endif
#      else
#           define uX_callconv __attribute__((fastcall))
#      endif
#    endif //uX_callconv
#    ifndef uX_veccall
#      if defined(uX_VECTORCALL_SUPPORT)
#        if defined(uX_CLANG) || defined(uX_ICC)
#           define uX_veccall __attribute__((vectorcall))
#        elif defined(uX_GCC)
#           define uX_veccall __attribute__((ms_abi))
#        else
#           define uX_veccall
#        endif
#      else
#           define uX_veccall
#      endif
#    endif //uX_veccall
#    ifndef uX_regcall
#      if defined(uX_REGCALL_SUPPORT)
#        if defined(uX_CLANG) || defined(uX_ICC) && !defined(uX_VC)
#           define uX_regcall __attribute__((regcall))
#        else
#           define uX_regcall
#        endif
#      else
#           define uX_regcall
#      endif
#    endif //uX_regcall
/*
# if defined(uX_ICREGCALL)
#   define uX_callconv(T) __attribute__((regcall)) T
#   define uX_veccall(T) __attribute__((regcall)) T
#else*/
#  if defined(uX_X86_OR_X64_CPU) && !defined(uX_MIC)
#   define uX_callconv __attribute__((sysv_abi))
#   define uX_veccall __attribute__((sysv_abi))
#  else
#   define uX_callconv
#   define uX_veccall
#  endif
/*# endif*/
#   if defined(uX_X86_OR_X64_CPU) && !defined(uX_MIC)
#   define uX_cdecl __attribute__((cdecl))
#   define uX_fastcall __attribute__((fastcall))
#   define uX_stdcall  __attribute__((stdcall))
# else
#   define uX_cdecl
#   define uX_fastcall
#   define uX_stdcall
# endif
#    endif //uX_WINDOWS
#   endif //uX_X86_OR_X64_CPU
#else
#   define uX_callconv
#   define uX_veccall
#   define uX_cdecl
#   define uX_stdcall
#   define uX_fastcall
#endif

#if defined(uX_X86_OR_X64_ABI) && (defined(uX_MSVC_COMPATIBLE_COMPILER))
#   define uX_ABI uX_callconv
#elif defined(uX_X86_OR_X64_ABI) && (defined(uX_GCC_COMPATIBLE_COMPILER))
#   define uX_ABI uX_callconv
#else
#   define uX_ABI
#endif

#if defined(uX_MSVC_COMPATIBLE_COMPILER)
#   define uX_PACK_PUSH_DEF(X)          __pragma( pack(push, X) )
#   define uX_PACK_PUSH_1                __pragma( pack(push, 1) )
#   define uX_PACK_PUSH_2                __pragma( pack(push, 2) )
#   define uX_PACK_PUSH_4                __pragma( pack(push, 4) )
#   define uX_PACK_PUSH_8                __pragma( pack(push, 8) )
#   define uX_PACK_PUSH_16               __pragma( pack(push, 16) )
#   define uX_PACK_DEF(X)           __pragma( pack(X) )
#   define uX_PACK_1                 __pragma( pack(1) )
#   define uX_PACK_2                 __pragma( pack(2) )
#   define uX_PACK_4                 __pragma( pack(4) )
#   define uX_PACK_8                 __pragma( pack(8) )
#   define uX_PACK_16                __pragma( pack(16) )
# if (defined(_MSC_VER) && (_MSC_VER >= 1600)) || (defined(_MSC_VER) && (__INTEL_COMPILER >= 1300))
#   define uX_PACK_PUSH_32               __pragma( pack(push, 32) )
#   define uX_PACK_PUSH_64               __pragma( pack(push, 64) )
#   define uX_PACK_PUSH_128              __pragma( pack(push, 128) )
#   define uX_PACK_PUSH_256              __pragma( pack(push, 256) )
#   define uX_PACK_PUSH_512              __pragma( pack(push, 512) )
#   define uX_PACK_32                __pragma( pack(32) )
#   define uX_PACK_64                __pragma( pack(64) )
#   define uX_PACK_128               __pragma( pack(128) )
#   define uX_PACK_256               __pragma( pack(256) )
#   define uX_PACK_512               __pragma( pack(512) )
#else
#   define uX_PACK_PUSH_32               __pragma( pack(push, 16) )
#   define uX_PACK_PUSH_64               __pragma( pack(push, 16) )
#   define uX_PACK_PUSH_128              __pragma( pack(push, 16) )
#   define uX_PACK_PUSH_256              __pragma( pack(push, 16) )
#   define uX_PACK_PUSH_512              __pragma( pack(push, 16) )
#   define uX_PACK_32                __pragma( pack(16) )
#   define uX_PACK_64                __pragma( pack(16) )
#   define uX_PACK_128               __pragma( pack(16) )
#   define uX_PACK_256               __pragma( pack(16) )
#   define uX_PACK_512               __pragma( pack(16) )
# endif
#   define uX_PACK_PUSH_STACK           __pragma( pack(push, uX_STACK_SIZE) )
#   define uX_PACK_PUSH_SIZE_T          __pragma( pack(push, uX_SIZE_T_SIZE) )
#   define uX_PACK_PUSH_PTR             __pragma( pack(push, uX_PTR_SIZE) )
#   define uX_PACK_STACK                __pragma( pack(uX_STACK_SIZE) )
#   define uX_PACK_SIZE_T               __pragma( pack(uX_SIZE_T_SIZE) )
#   define uX_PACK_PTR                  __pragma( pack(uX_PTR_SIZE) )
#   define uX_PACK_POP                  __pragma( pack(pop) )
#   define uX_PRAGMA_ONCE               __pragma(once)
#   define uX_PRAGMA(exprs)             __pragma(exprs)
#   define uX_PRAGMA_OPTIMIZE_OFF           __pragma(optimize("", off))
#   define uX_PRAGMA_OPTIMIZE_ON            __pragma(optimize("", on))
#elif (uX_GCC_COMPATIBLE_COMPILER) && !defined(__SPU__)
#   define uX_PACK_PUSH_DEF(X)          _Pragma("pack(push, X)")
#   define uX_PACK_PUSH_1               _Pragma("pack(push, 1)")
#   define uX_PACK_PUSH_2               _Pragma("pack(push, 2)")
#   define uX_PACK_PUSH_4               _Pragma("pack(push, 4)")
#   define uX_PACK_PUSH_8               _Pragma("pack(push, 8)")
#   define uX_PACK_PUSH_16              _Pragma("pack(push, 16)")
#   define uX_PACK_PUSH_32              _Pragma("pack(push, 32)")
#   define uX_PACK_PUSH_64              _Pragma("pack(push, 64)")
#   define uX_PACK_PUSH_128             _Pragma("pack(push, 128)")
#   define uX_PACK_PUSH_256             _Pragma("pack(push, 256)")
#   define uX_PACK_PUSH_512             _Pragma("pack(push, 512)")
#   define uX_PACK_PUSH_STACK           _Pragma("pack(push, uX_STACK_SIZE)")
#   define uX_PACK_PUSH_SIZE_T          _Pragma("pack(push, uX_SIZE_T_SIZE)")
#   define uX_PACK_PUSH_PTR         _Pragma("pack(push, uX_PTR_SIZE)")
#   define uX_PACK_DEF(X)           _Pragma("pack(X)")
#   define uX_PACK_1                _Pragma("pack(1)")
#   define uX_PACK_2                _Pragma("pack(2)")
#   define uX_PACK_4                _Pragma("pack(4)")
#   define uX_PACK_8                _Pragma("pack(8)")
#   define uX_PACK_16               _Pragma("pack(16)")
#   define uX_PACK_32               _Pragma("pack(32)")
#   define uX_PACK_64               _Pragma("pack(64)")
#   define uX_PACK_128              _Pragma("pack(128)")
#   define uX_PACK_256              _Pragma("pack(256)")
#   define uX_PACK_512              _Pragma("pack(512)")
#   define uX_PACK_STACK            _Pragma("pack(uX_STACK_SIZE)")
#   define uX_PACK_SIZE_T           _Pragma("pack(uX_SIZE_T_SIZE)")
#   define uX_PACK_PTR              _Pragma("pack(uX_PTR_SIZE)")
#   define uX_PACK_POP                  _Pragma("pack(pop)")
#   define uX_PRAGMA_ONCE               _Pragma("once")
#   define uX_PRAGMA(exprs)             _Pragma(uX_Stringer(exprs))
# if defined(__clang__)
#   define _PRAGMA_OPTIMIZE_OFF     _Pragma("clang optimize(off)")
#   define _PRAGMA_OPTIMIZE_ON      _Pragma("clang optimize(on)")
# elif defined(__GNUC__)
#   define _PRAGMA_OPTIMIZE_OFF     _Pragma("gcc optimize(off)")
#   define _PRAGMA_OPTIMIZE_ON      _Pragma("gcc optimize(on)")
# endif
#elif defined(uX_IBMC)
#   define uX_PACK_PUSH_DEF(X)          _Pragma("pack(X)")
#   define uX_PACK_PUSH_1                _Pragma("pack(1)")
#   define uX_PACK_PUSH_2                _Pragma("pack(2)")
#   define uX_PACK_PUSH_4                _Pragma("pack(4)")
#   define uX_PACK_PUSH_8                _Pragma("pack(8)")
#   define uX_PACK_PUSH_16               _Pragma("pack(16)")
#   define uX_PACK_PUSH_32               _Pragma("pack(32)")
#   define uX_PACK_PUSH_64               _Pragma("pack(64)")
#   define uX_PACK_PUSH_128              _Pragma("pack(128)")
#   define uX_PACK_PUSH_256              _Pragma("pack(256)")
#   define uX_PACK_PUSH_512              _Pragma("pack(512)")
#   define uX_PACK_PUSH_STACK            _Pragma("pack(uX_STACK_SIZE)")
#   define uX_PACK_PUSH_SIZE_T           _Pragma("pack(uX_SIZE_T_SIZE)")
#   define uX_PACK_PUSH_PTR         _Pragma("pack(uX_PTR_SIZE)")
#   define uX_PACK_DEF(X)           _Pragma("pack(X)")
#   define uX_PACK_1                 _Pragma("pack(1)")
#   define uX_PACK_2                 _Pragma("pack(2)")
#   define uX_PACK_4                 _Pragma("pack(4)")
#   define uX_PACK_8                 _Pragma("pack(8)")
#   define uX_PACK_16                _Pragma("pack(16)")
#   define uX_PACK_32                _Pragma("pack(32)")
#   define uX_PACK_64                _Pragma("pack(64)")
#   define uX_PACK_128               _Pragma("pack(128)")
#   define uX_PACK_256               _Pragma("pack(256)")
#   define uX_PACK_512               _Pragma("pack(512)")
#   define uX_PACK_STACK            _Pragma("pack(uX_STACK_SIZE)")
#   define uX_PACK_SIZE_T           _Pragma("pack(uX_SIZE_T_SIZE)")
#   define uX_PACK_PTR              _Pragma("pack(uX_PTR_SIZE)")
#   define uX_PACK_POP                  _Pragma("pack(pop)")
#   define uX_PRAGMA_ONCE               _Pragma("once")
#   define uX_PRAGMA(exprs)             _Pragma(uX_Stringer(exprs))
#   define _PRAGMA_OPTIMIZE_OFF     _Pragma("ibmc optimize(off)")
#   define _PRAGMA_OPTIMIZE_ON      _Pragma("ibmc optimize(on)")
#else
#   define uX_PACK_PUSH_DEF(X)
#   define uX_PACK_PUSH_1
#   define uX_PACK_PUSH_2
#   define uX_PACK_PUSH_4
#   define uX_PACK_PUSH_8
#   define uX_PACK_PUSH_16
#   define uX_PACK_PUSH_32
#   define uX_PACK_PUSH_64
#   define uX_PACK_PUSH_128
#   define uX_PACK_PUSH_256
#   define uX_PACK_PUSH_512
#   define uX_PACK_PUSH_STACK
#   define uX_PACK_PUSH_SIZE_T
#   define uX_PACK_PUSH_PTR
#   define uX_PACK_DEF(X)
#   define uX_PACK_1
#   define uX_PACK_2
#   define uX_PACK_4
#   define uX_PACK_8
#   define uX_PACK_16
#   define uX_PACK_32
#   define uX_PACK_64
#   define uX_PACK_128
#   define uX_PACK_256
#   define uX_PACK_512
#   define uX_PACK_STACK
#   define uX_PACK_SIZE_T
#   define uX_PACK_PTR
#   define uX_PACK_POP
#   define uX_PRAGMA_ONCE
#   define uX_PRAGMAERROR(exprs)
#   define uX_PRAGMA(exprs)
#   define _PRAGMA_OPTIMIZE_OFF
#   define _PRAGMA_OPTIMIZE_ON
#endif

#   define uX_PACK_PUSH_MM      uX_PACK_PUSH_8
#   define uX_PACK_PUSH_XMM     uX_PACK_PUSH_16
#   define uX_PACK_PUSH_YMM     uX_PACK_PUSH_32
#   define uX_PACK_PUSH_ZMM     uX_PACK_PUSH_64
#   define uX_PACK_PUSH_M64      uX_PACK_PUSH_8
#   define uX_PACK_PUSH_M128     uX_PACK_PUSH_16
#   define uX_PACK_PUSH_M256     uX_PACK_PUSH_32
#   define uX_PACK_PUSH_M512     uX_PACK_PUSH_64

#   define uX_PACK_MM      uX_PACK_8
#   define uX_PACK_XMM     uX_PACK_16
#   define uX_PACK_YMM     uX_PACK_32
#   define uX_PACK_ZMM     uX_PACK_64
#   define uX_PACK_M64      uX_PACK_8
#   define uX_PACK_M128     uX_PACK_16
#   define uX_PACK_M256     uX_PACK_32
#   define uX_PACK_M512     uX_PACK_64

/**
Inline macro
*/
# if defined(uX_MSVC_COMPATIBLE_COMPILER)
uX_PRAGMA(inline_depth(255))
//# pragma inline_depth( 255 )
#   ifndef uX_INLINE
#     ifndef uX_DEBUG
// inline on in release build for static inline
#       define __uX_S_INLINE(T) static __inline T
// inline on in release build for static inline
#       define _uX_S_INLINE(T) static __inline T

// inline on in release build for static inline
#       define __uX_S_INLINEART(T) static __inline T
// inline on in release build for static inline
#       define _uX_S_INLINEART(T) static __inline T

// forceinline on in release build for static forceinline
#       define __uX_S_FINLINE(T) static __forceinline T
// forceinline on in release build for static forceinline
#       define __uX_S_FINLINEART(T) static __forceinline T

// inline on in release build for inline only
#       define __uX_INLINE(T) __inline T
// inline on in release build for inline only
#       define _uX_INLINE(T) __inline T

// inline on in release build for inline only
#       define __uX_INLINEART(T) __inline T
// inline on in release build for inline only
#       define _uX_INLINEART(T) __inline T

// forceinline on release build for forceinline only
#       define __uX_FINLINE(T) __forceinline T
// forceinline on release build for forceinline only
#       define __uX_FINLINEART(T) __forceinline T

// inline on in release build for static inline with veccall
#       define __uX_S_INLINE_VECCALL(T) static __inline uX_veccall(T)
// inline on in release build for static inline with veccall
#       define _uX_S_INLINE_VECCALL(T) static __inline uX_veccall(T)

// inline on in release build for static inline with veccall
#       define __uX_S_INLINEART_VECCALL(T) static __inline uX_veccall(T)
// inline on in release build for static inline with veccall
#       define _uX_S_INLINEART_VECCALL(T) static __inline uX_veccall(T)

// forceinline on in release build for static forceinline with veccall
#       define __uX_S_FINLINE_VECCALL(T) static __forceinline uX_veccall(T)
// forceinline on in release build for static forceinline with veccall
#       define __uX_S_FINLINEART_VECCALL(T) static __forceinline uX_veccall(T)

// inline on in release build for inline only with veccall
#       define __uX_INLINE_VECCALL(T) __inline uX_veccall(T)
// inline on in release build for inline only with veccall
#       define _uX_INLINE_VECCALL(T) __inline uX_veccall(T)

// inline on in release build for inline only with veccall
#       define __uX_INLINEART_VECCALL(T) __inline uX_veccall(T)
// inline on in release build for inline only with veccall
#       define _uX_INLINEART_VECCALL(T) __inline uX_veccall(T)

// forceinline on in release build for forceinline only with veccall
#       define __uX_FINLINE_VECCALL(T) __forceinline uX_veccall(T)
// forceinline on in release build for forceinline only with veccall
#       define __uX_FINLINEART_VECCALL(T) __forceinline uX_veccall(T)
#     else
// inline of in debug build for static inline
#       define __uX_S_INLINE(T) static T
// inline of in debug build for static inline
#       define _uX_S_INLINE(T) static T

// inline of in debug build for static inline
#       define __uX_S_INLINEART(T) static T
// inline of in debug build for static inline
#       define _uX_S_INLINEART(T) static T

// forceinline of in debug build for static forceinline
#       define __uX_S_FINLINE(T) static T
// forceinline of in debug build for static forceinline
#       define __uX_S_FINLINEART(T) static T

// inline of in debug build for inline only
#       define __uX_INLINE(T) T
// inline of in debug build for inline only
#       define _uX_INLINE(T) T

// inline of in debug build for inline only
#       define __uX_INLINEART(T) T
// inline of in debug build for inline only
#       define _uX_INLINEART(T) T

// forceinline of in debug build for forceinline only
#       define __uX_FINLINE(T) T
// forceinline of in debug build for forceinline only
#       define __uX_FINLINEART(T) T

// inline of in debug build for static inline with veccall
#       define __uX_S_INLINE_VECCALL(T) static uX_veccall(T)
// inline of in debug build for static inline with veccall
#       define _uX_S_INLINE_VECCALL(T) static uX_veccall(T)

// inline of in debug build for static inline with veccall
#       define __uX_S_INLINEART_VECCALL(T) static uX_veccall(T)
// inline of in debug build for static inline with veccall
#       define _uX_S_INLINEART_VECCALL(T) static uX_veccall(T)

// forceinline of in debug build for static forceinline with veccall
#       define __uX_S_FINLINE_VECCALL(T) static uX_veccall(T)
// forceinline of in debug build for static forceinline with veccall
#       define __uX_S_FINLINEART_VECCALL(T) static uX_veccall(T)

// inline of in debug build for inline only with veccall
#       define __uX_INLINE_VECCALL(T) uX_veccall(T)
// inline of in debug build for inline only with veccall
#       define _uX_INLINE_VECCALL(T) uX_veccall(T)

// inline of in debug build for inline only with veccall
#       define __uX_INLINEART_VECCALL(T) uX_veccall(T)
// inline of in debug build for inline only with veccall
#       define _uX_INLINEART_VECCALL(T) uX_veccall(T)

// forceinline of in debug build for forceinline only with veccall
#       define __uX_FINLINE_VECCALL(T) uX_veccall(T)
// forceinline of in debug build for forceinline only with veccall
#       define __uX_FINLINEART_VECCALL(T) uX_veccall(T)
#     endif // uX_DEBUG

// inline hallways on for static inline
#       define uX_S_INLINE(T) static __inline T
// inline hallways on for static inline
#       define uX_S_INLINEART(T) static __inline T

// forceinline hallways on for static forceinline
#       define uX_S_FINLINE(T) static __forceinline T
// forceinline hallways on for static forceinline
#       define uX_S_FINLINEART(T) static __forceinline T

// inline hallways on for inline only
#       define uX_INLINE(T) __inline T
// inline hallways on for inline only
#       define uX_INLINEART(T) __inline T

// forceinline hallways on for forceinline only
#       define uX_FINLINE(T) __forceinline T
// forceinline hallways on for forceinline only
#       define uX_FINLINEART(T) __forceinline T

// inline hallways on for static inline with veccall
#       define uX_S_INLINE_VECCALL(T) static __inline uX_veccall(T)
// inline hallways on for static inline with veccall
#       define uX_S_INLINEART_VECCALL(T) static __inline uX_veccall(T)

// forceinline hallways on for static forceinline with veccall
#       define uX_S_FINLINE_VECCALL(T) static __forceinline uX_veccall(T)
// forceinline hallways on for static forceinline with veccall
#       define uX_S_FINLINEART_VECCALL(T) static __forceinline uX_veccall(T)

// inline hallways on for inline only with veccall
#       define uX_INLINE_VECCALL(T) __inline uX_veccall(T)
// inline hallways on for inline only with veccall
#       define uX_INLINEART_VECCALL(T) __inline uX_veccall(T)

// forceinline hallways on for forceinline only with veccall
#       define uX_FINLINE_VECCALL(T) __forceinline uX_veccall(T)
// forceinline hallways on for forceinline only with veccall
#       define uX_FINLINEART_VECCALL(T) __forceinline uX_veccall(T)
#   endif // uX_INLINE
#elif defined(uX_GCC_COMPATIBLE_COMPILER) || defined(uX_IBMC)
#  if defined(uX_GNUC) && !defined(uX_CLANG)
uX_PRAGMA(inline_depth(255))
#   ifndef uX_INLINE
#     ifndef uX_DEBUG
// inline on in release build for static inline
#       define __uX_S_INLINE(T) static  inline T __attribute__((__gnu_inline__, __always_inline__))
// inline on in release build for static inline
#       define _uX_S_INLINE(T) static  inline T __attribute__((__gnu_inline__, __always_inline__))

// inline on in release build for static inline artificial
#       define __uX_S_INLINEART(T) static  inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))
// inline on in release build for static inline artificial
#       define _uX_S_INLINEART(T) static  inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline on in release build for static forceinline
#       define __uX_S_FINLINE(T) static inline T __attribute__((__gnu_inline__, __always_inline__))
// forceinline on in release build for static forceinline artificial
#       define __uX_S_FINLINEART(T) static inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline on in release build for inline only
#       define __uX_INLINE(T) inline T __attribute__((__gnu_inline__, __always_inline__))
// inline on in release build for inline only
#       define _uX_INLINE(T) inline T __attribute__((__gnu_inline__, __always_inline__))

// inline on in release build for inline only artificial
#       define __uX_INLINEART(T) inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))
// inline on in release build for inline only artificial
#       define _uX_INLINEART(T) inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline on in release build for forceinline only
#       define __uX_FINLINE(T) inline T __attribute__((__gnu_inline__, __always_inline__))
// forceinline on in release build for forceinline only artificial
#       define __uX_FINLINEART(T) inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline on in release build for static inline with veccall
#       define __uX_S_INLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__))
// inline on in release build for static inline with veccall
#       define _uX_S_INLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__))

// inline on in release build for static inline artificial with veccall
#       define __uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))
// inline on in release build for static inline artificial with veccall
#       define _uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline on in release build for static forceinline with veccall
#       define __uX_S_FINLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__))
// forceinline on in release build for static forceinline artificial with veccall
#       define __uX_S_FINLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline on in release build for inline only with veccall
#       define __uX_INLINE_VECCALL(T) inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__))
// inline on in release build for inline only with veccall
#       define _uX_INLINE_VECCALL(T) inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__))

// inline on in release build for static inline artificial with veccall
#       define __uX_INLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))
// inline on in release build for static inline artificial with veccall
#       define _uX_INLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline on in release build for forceinline only with veccall
#       define __uX_FINLINE_VECCALL(T) inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__))
// forceinline on in release build for forceinline artificial only with veccall
#       define __uX_FINLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))
#     else
// inline of in debug build for static inline
#       define __uX_S_INLINE(T) static T
// inline of in debug build for static inline
#       define _uX_S_INLINE(T) static T

// inline of in debug build for static inline artificial
#       define __uX_S_INLINEART(T) static T
// inline of in debug build for static inline artificial
#       define _uX_S_INLINEART(T) static T

// forceinline of in debug build for static forceinline
#       define __uX_S_FINLINE(T) static T
// forceinline of in debug build for static forceinline artificial
#       define __uX_S_FINLINEART(T) static T

// inline of in debug build for inline only
#       define __uX_INLINE(T) T
// inline of in debug build for inline only
#       define _uX_INLINE(T) T

// inline of in debug build for inline only artificial
#       define __uX_INLINEART(T) T
// inline of in debug build for inline only artificial
#       define _uX_INLINEART(T) T

// forceinline of in debug build for forceinline only
#       define __uX_FINLINE(T) T
// forceinline of in debug build for forceinline only artificial
#       define __uX_FINLINEART(T) T

// inline of in debug build for static inline with veccall
#       define __uX_S_INLINE_VECCALL(T) static uX_veccall(T)
// inline of in debug build for static inline with veccall
#       define _uX_S_INLINE_VECCALL(T) static uX_veccall(T)

// inline of in debug build for static inline artificial with veccall
#       define __uX_S_INLINEART_VECCALL(T) static uX_veccall(T)
// inline of in debug build for static inline artificial with veccall
#       define _uX_S_INLINEART_VECCALL(T) static uX_veccall(T)

// forceinline of in debug build for static forceinline with veccall
#       define __uX_S_FINLINE_VECCALL(T) static uX_veccall(T)
// forceinline of in debug build for static forceinline artificial with veccall
#       define __uX_S_FINLINEART_VECCALL(T) static uX_veccall(T)

// inline of in debug build for inline only with veccall
#       define __uX_INLINE_VECCALL(T) uX_veccall(T)
// inline of in debug build for inline only with veccall
#       define _uX_INLINE_VECCALL(T) uX_veccall(T)

// inline of in debug build for inline only artificial with veccall
#       define __uX_INLINEART_VECCALL(T) uX_veccall(T)
// inline of in debug build for inline only artificial with veccall
#       define _uX_INLINEART_VECCALL(T) uX_veccall(T)

// forceinline of in debug build for forceinline only with veccall
#       define __uX_FINLINE_VECCALL(T) uX_veccall(T)
// forceinline of in debug build for forceinline only artificial with veccall
#       define __uX_FINLINEART_VECCALL(T) uX_veccall(T)
#     endif // uX_DEBUG

// inline hallways on for static inline
#       define uX_S_INLINE(T)  static inline T __attribute__((__gnu_inline__, __always_inline__))
// inline hallways on for static inline artificial
#       define uX_S_INLINEART(T) static inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline hallways on for static forceinline
#       define uX_S_FINLINE(T) static inline T __attribute__((__gnu_inline__, __always_inline__))
// forceinline hallways on for static forceinline artificial
#       define uX_S_FINLINEART(T) static inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline hallways on for inline only
#       define uX_INLINE(T)  inline T __attribute__((__gnu_inline__, __always_inline__))
// inline hallways on for inline only artificial
#       define uX_INLINEART(T) inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline hallways on for forceinline only
#       define uX_FINLINE(T) inline T __attribute__((__gnu_inline__, __always_inline__))
// forceinline hallways on for forceinline only artificial
#       define uX_FINLINEART(T) inline T __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline hallways on for static inline with veccall
#       define uX_S_INLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__))
// inline hallways on for static inline artificial with veccall
#       define uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline hallways on for static forceinline with veccall
#       define uX_S_FINLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__))
// forceinline hallways on for static forceinline artificial with veccall
#       define uX_S_FINLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// inline hallways on for inline only with veccall
#       define uX_INLINE_VECCALL(T) inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__))
// inline hallways on for inline only artificial with veccall
#       define uX_INLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))

// forceinline hallways on for forceinline only with veccall
#       define uX_FINLINE_VECCALL(T) inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__))
// forceinline hallways on for forceinline only artificial with veccall
#       define uX_FINLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((__gnu_inline__, __always_inline__, __artificial__))
#   endif // uX_INLINE
#  elif defined(uX_CLANG)
uX_PRAGMA(inline_depth(255))
#   ifndef uX_INLINE
#     ifndef uX_DEBUG
// inline on in release build for static inline
#       define __uX_S_INLINE(T) static  inline T __attribute__((__always_inline__, __nodebug__))
// inline on in release build for static inline
#       define _uX_S_INLINE(T) static  inline T __attribute__((__always_inline__, __nodebug__))

// inline on in release build for static inline artificial
#       define __uX_S_INLINEART(T) static  inline T __attribute__((__always_inline__, __nodebug__))
// inline on in release build for static inline artificial
#       define _uX_S_INLINEART(T) static  inline T __attribute__((__always_inline__, __nodebug__))

// forceinline on in release build for static forceinline
#       define __uX_S_FINLINE(T) static inline T __attribute__((__always_inline__, __nodebug__))
// forceinline on in release build for static forceinline artificial
#       define __uX_S_FINLINEART(T) static inline T __attribute__((__always_inline__, __nodebug__))

// inline on in release build for inline only
#       define __uX_INLINE(T) inline T __attribute__((__always_inline__, __nodebug__))
// inline on in release build for inline only
#       define _uX_INLINE(T) inline T __attribute__((__always_inline__, __nodebug__))

// inline on in release build for inline only artificial
#       define __uX_INLINEART(T) inline T __attribute__((__always_inline__, __nodebug__))
// inline on in release build for inline only artificial
#       define _uX_INLINEART(T) inline T __attribute__((__always_inline__, __nodebug__))

// forceinline on in release build for forceinline only
#       define __uX_FINLINE(T) inline T __attribute__((__always_inline__, __nodebug__))
// forceinline on in release build for forceinline only artificial
#       define __uX_FINLINEART(T) inline T __attribute__((__always_inline__, __nodebug__))

// inline on in release build for static inline with veccall
#       define __uX_S_INLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
// inline on in release build for static inline with veccall
#       define _uX_S_INLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))

// inline on in release build for static inline artificial with veccall
#       define __uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
// inline on in release build for static inline artificial with veccall
#       define _uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))

// forceinline on in release build for static forceinline with veccall
#       define __uX_S_FINLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
// forceinline on in release build for static forceinline artificial with veccall
#       define __uX_S_FINLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))

// inline on in release build for inline only with veccall
#       define __uX_INLINE_VECCALL(T) inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
// inline on in release build for inline only with veccall
#       define _uX_INLINE_VECCALL(T) inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))

// inline on in release build for static inline artificial with veccall
#       define __uX_INLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
// inline on in release build for static inline artificial with veccall
#       define _uX_INLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))

// forceinline on in release build for forceinline only with veccall
#       define __uX_FINLINE_VECCALL(T) inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
// forceinline on in release build for forceinline artificial only with veccall
#       define __uX_FINLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
#     else
// inline of in debug build for static inline
#       define __uX_S_INLINE(T) static T
// inline of in debug build for static inline
#       define _uX_S_INLINE(T) static T

// inline of in debug build for static inline artificial
#       define __uX_S_INLINEART(T) static T
// inline of in debug build for static inline artificial
#       define _uX_S_INLINEART(T) static T

// forceinline of in debug build for static forceinline
#       define __uX_S_FINLINE(T) static T
// forceinline of in debug build for static forceinline artificial
#       define __uX_S_FINLINEART(T) static T

// inline of in debug build for inline only
#       define __uX_INLINE(T) T
// inline of in debug build for inline only
#       define _uX_INLINE(T) T

// inline of in debug build for inline only artificial
#       define __uX_INLINEART(T) T
// inline of in debug build for inline only artificial
#       define _uX_INLINEART(T) T

// forceinline of in debug build for forceinline only
#       define __uX_FINLINE(T) T
// forceinline of in debug build for forceinline only artificial
#       define __uX_FINLINEART(T) T

// inline of in debug build for static inline with veccall
#       define __uX_S_INLINE_VECCALL(T) static uX_veccall(T)
// inline of in debug build for static inline with veccall
#       define _uX_S_INLINE_VECCALL(T) static uX_veccall(T)

// inline of in debug build for static inline artificial with veccall
#       define __uX_S_INLINEART_VECCALL(T) static uX_veccall(T)
// inline of in debug build for static inline artificial with veccall
#       define _uX_S_INLINEART_VECCALL(T) static uX_veccall(T)

// forceinline of in debug build for static forceinline with veccall
#       define __uX_S_FINLINE_VECCALL(T) static uX_veccall(T)
// forceinline of in debug build for static forceinline artificial with veccall
#       define __uX_S_FINLINEART_VECCALL(T) static uX_veccall(T)

// inline of in debug build for inline only with veccall
#       define __uX_INLINE_VECCALL(T) uX_veccall(T)
// inline of in debug build for inline only with veccall
#       define _uX_INLINE_VECCALL(T) uX_veccall(T)

// inline of in debug build for inline only artificial with veccall
#       define __uX_INLINEART_VECCALL(T) uX_veccall(T)
// inline of in debug build for inline only artificial with veccall
#       define _uX_INLINEART_VECCALL(T) uX_veccall(T)

// forceinline of in debug build for forceinline only with veccall
#       define __uX_FINLINE_VECCALL(T) uX_veccall(T)
// forceinline of in debug build for forceinline only artificial with veccall
#       define __uX_FINLINEART_VECCALL(T) uX_veccall(T)
#     endif // uX_DEBUG

// inline hallways on for static inline
#       define uX_S_INLINE(T)  static inline T __attribute__((__always_inline__, __nodebug__))
// inline hallways on for static inline artificial
#       define uX_S_INLINEART(T) static inline T __attribute__((__always_inline__, __nodebug__))

// forceinline hallways on for static forceinline
#       define uX_S_FINLINE(T) static inline T __attribute__((__always_inline__, __nodebug__))
// forceinline hallways on for static forceinline artificial
#       define uX_S_FINLINEART(T) static inline T __attribute__((__always_inline__, __nodebug__))

// inline hallways on for inline only
#       define uX_INLINE(T)  inline T __attribute__((__always_inline__, __nodebug__))
// inline hallways on for inline only artificial
#       define uX_INLINEART(T) inline T __attribute__((__always_inline__, __nodebug__))

// forceinline hallways on for forceinline only
#       define uX_FINLINE(T) inline T __attribute__((__always_inline__, __nodebug__))
// forceinline hallways on for forceinline only artificial
#       define uX_FINLINEART(T) inline T __attribute__((__always_inline__, __nodebug__))

// inline hallways on for static inline with veccall
#       define uX_S_INLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
// inline hallways on for static inline artificial with veccall
#       define uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))

// forceinline hallways on for static forceinline with veccall
#       define uX_S_FINLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
// forceinline hallways on for static forceinline artificial with veccall
#       define uX_S_FINLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))

// inline hallways on for inline only with veccall
#       define uX_INLINE_VECCALL(T) inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
// inline hallways on for inline only artificial with veccall
#       define uX_INLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))

// forceinline hallways on for forceinline only with veccall
#       define uX_FINLINE_VECCALL(T) inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
// forceinline hallways on for forceinline only artificial with veccall
#       define uX_FINLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((__always_inline__, __nodebug__))
#   endif // uX_INLINE
#  else
uX_PRAGMA(inline_depth(255))
#   ifndef uX_INLINE
#     ifndef uX_DEBUG
// inline on in release build for static inline
#       define __uX_S_INLINE(T) static  inline T __attribute__((always_inline))
// inline on in release build for static inline
#       define _uX_S_INLINE(T) static  inline T __attribute__((always_inline))

// inline on in release build for static inline artificial
#       define __uX_S_INLINEART(T) static  inline T __attribute__((always_inline))
// inline on in release build for static inline artificial
#       define _uX_S_INLINEART(T) static  inline T __attribute__((always_inline))

// forceinline on in release build for static forceinline
#       define __uX_S_FINLINE(T) static inline T __attribute__((always_inline))
// forceinline on in release build for static forceinline artificial
#       define __uX_S_FINLINEART(T) static inline T __attribute__((always_inline))

// inline on in release build for inline only
#       define __uX_INLINE(T) inline T __attribute__((always_inline))
// inline on in release build for inline only
#       define _uX_INLINE(T) inline T __attribute__((always_inline))

// inline on in release build for inline only artificial
#       define __uX_INLINEART(T) inline T __attribute__((always_inline))
// inline on in release build for inline only artificial
#       define _uX_INLINEART(T) inline T __attribute__((always_inline))

// forceinline on in release build for forceinline only
#       define __uX_FINLINE(T) inline T __attribute__((always_inline))
// forceinline on in release build for forceinline only artificial
#       define __uX_FINLINEART(T) inline T __attribute__((always_inline))

// inline on in release build for static inline with veccall
#       define __uX_S_INLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((always_inline))
// inline on in release build for static inline with veccall
#       define _uX_S_INLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((always_inline))

// inline on in release build for static inline artificial with veccall
#       define __uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((always_inline))
// inline on in release build for static inline artificial with veccall
#       define _uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((always_inline))

// forceinline on in release build for static forceinline with veccall
#       define __uX_S_FINLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((always_inline))
// forceinline on in release build for static forceinline artificial with veccall
#       define __uX_S_FINLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((always_inline))

// inline on in release build for inline only with veccall
#       define __uX_INLINE_VECCALL(T) inline uX_veccall(T) __attribute__((always_inline))
// inline on in release build for inline only with veccall
#       define _uX_INLINE_VECCALL(T) inline uX_veccall(T) __attribute__((always_inline))

// inline on in release build for static inline artificial with veccall
#       define __uX_INLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((always_inline))
// inline on in release build for static inline artificial with veccall
#       define _uX_INLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((always_inline))

// forceinline on in release build for forceinline only with veccall
#       define __uX_FINLINE_VECCALL(T) inline uX_veccall(T) __attribute__((always_inline))
// forceinline on in release build for forceinline artificial only with veccall
#       define __uX_FINLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((always_inline))
#     else
// inline of in debug build for static inline
#       define __uX_S_INLINE(T) static T
// inline of in debug build for static inline
#       define _uX_S_INLINE(T) static T

// inline of in debug build for static inline artificial
#       define __uX_S_INLINEART(T) static T
// inline of in debug build for static inline artificial
#       define _uX_S_INLINEART(T) static T

// forceinline of in debug build for static forceinline
#       define __uX_S_FINLINE(T) static T
// forceinline of in debug build for static forceinline artificial
#       define __uX_S_FINLINEART(T) static T

// inline of in debug build for inline only
#       define __uX_INLINE(T) T
// inline of in debug build for inline only
#       define _uX_INLINE(T) T

// inline of in debug build for inline only artificial
#       define __uX_INLINEART(T) T
// inline of in debug build for inline only artificial
#       define _uX_INLINEART(T) T

// forceinline of in debug build for forceinline only
#       define __uX_FINLINE(T) T
// forceinline of in debug build for forceinline only artificial
#       define __uX_FINLINEART(T) T

// inline of in debug build for static inline with veccall
#       define __uX_S_INLINE_VECCALL(T) static uX_veccall(T)
// inline of in debug build for static inline with veccall
#       define _uX_S_INLINE_VECCALL(T) static uX_veccall(T)

// inline of in debug build for static inline artificial with veccall
#       define __uX_S_INLINEART_VECCALL(T) static uX_veccall(T)
// inline of in debug build for static inline artificial with veccall
#       define _uX_S_INLINEART_VECCALL(T) static uX_veccall(T)

// forceinline of in debug build for static forceinline with veccall
#       define __uX_S_FINLINE_VECCALL(T) static uX_veccall(T)
// forceinline of in debug build for static forceinline artificial with veccall
#       define __uX_S_FINLINEART_VECCALL(T) static uX_veccall(T)

// inline of in debug build for inline only with veccall
#       define __uX_INLINE_VECCALL(T) uX_veccall(T)
// inline of in debug build for inline only with veccall
#       define _uX_INLINE_VECCALL(T) uX_veccall(T)

// inline of in debug build for inline only artificial with veccall
#       define __uX_INLINEART_VECCALL(T) uX_veccall(T)
// inline of in debug build for inline only artificial with veccall
#       define _uX_INLINEART_VECCALL(T) uX_veccall(T)

// forceinline of in debug build for forceinline only with veccall
#       define __uX_FINLINE_VECCALL(T) uX_veccall(T)
// forceinline of in debug build for forceinline only artificial with veccall
#       define __uX_FINLINEART_VECCALL(T) uX_veccall(T)
#     endif // uX_DEBUG

// inline hallways on for static inline
#       define uX_S_INLINE(T)  static inline T __attribute__((always_inline))
// inline hallways on for static inline artificial
#       define uX_S_INLINEART(T) static inline T __attribute__((always_inline))

// forceinline hallways on for static forceinline
#       define uX_S_FINLINE(T) static inline T __attribute__((always_inline))
// forceinline hallways on for static forceinline artificial
#       define uX_S_FINLINEART(T) static inline T __attribute__((always_inline))

// inline hallways on for inline only
#       define uX_INLINE(T)  inline T __attribute__((always_inline))
// inline hallways on for inline only artificial
#       define uX_INLINEART(T) inline T __attribute__((always_inline))

// forceinline hallways on for forceinline only
#       define uX_FINLINE(T) inline T __attribute__((always_inline))
// forceinline hallways on for forceinline only artificial
#       define uX_FINLINEART(T) inline T __attribute__((always_inline))

// inline hallways on for static inline with veccall
#       define uX_S_INLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((always_inline))
// inline hallways on for static inline artificial with veccall
#       define uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((always_inline))

// forceinline hallways on for static forceinline with veccall
#       define uX_S_FINLINE_VECCALL(T) static inline uX_veccall(T) __attribute__((always_inline))
// forceinline hallways on for static forceinline artificial with veccall
#       define uX_S_FINLINEART_VECCALL(T) static inline uX_veccall(T) __attribute__((always_inline))

// inline hallways on for inline only with veccall
#       define uX_INLINE_VECCALL(T) inline uX_veccall(T) __attribute__((always_inline))
// inline hallways on for inline only artificial with veccall
#       define uX_INLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((always_inline))

// forceinline hallways on for forceinline only with veccall
#       define uX_FINLINE_VECCALL(T) inline uX_veccall(T) __attribute__((always_inline))
// forceinline hallways on for forceinline only artificial with veccall
#       define uX_FINLINEART_VECCALL(T) inline uX_veccall(T) __attribute__((always_inline))
#   endif // uX_INLINE
#  endif // uX_GNUC
#else
//uX_PRAGMA(inline_depth(255))
#   ifndef uX_INLINE
#     ifndef uX_DEBUG
// inline on in release build for static inline
#       define __uX_S_INLINE(T) static  inline T
// inline on in release build for static inline
#       define _uX_S_INLINE(T) static  inline T

// inline on in release build for static inline artificial
#       define __uX_S_INLINEART(T) static  inline T
// inline on in release build for static inline artificial
#       define _uX_S_INLINEART(T) static  inline T

// forceinline on in release build for static forceinline
#       define __uX_S_FINLINE(T) static inline T
// forceinline on in release build for static forceinline artificial
#       define __uX_S_FINLINEART(T) static inline T

// inline on in release build for inline only
#       define __uX_INLINE(T) inline T
// inline on in release build for inline only
#       define _uX_INLINE(T) inline T

// inline on in release build for inline only artificial
#       define __uX_INLINEART(T) inline T
// inline on in release build for inline only artificial
#       define _uX_INLINEART(T) inline T

// forceinline on in release build for forceinline only
#       define __uX_FINLINE(T) inline T
// forceinline on in release build for forceinline only artificial
#       define __uX_FINLINEART(T) inline T

// inline on in release build for static inline with veccall
#       define __uX_S_INLINE_VECCALL(T) static inline uX_veccall(T)
// inline on in release build for static inline with veccall
#       define _uX_S_INLINE_VECCALL(T) static inline uX_veccall(T)

// inline on in release build for static inline artificial with veccall
#       define __uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T)
// inline on in release build for static inline artificial with veccall
#       define _uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T)

// forceinline on in release build for static forceinline with veccall
#       define __uX_S_FINLINE_VECCALL(T) static inline uX_veccall(T)
// forceinline on in release build for static forceinline artificial with veccall
#       define __uX_S_FINLINEART_VECCALL(T) static inline uX_veccall(T)

// inline on in release build for inline only with veccall
#       define __uX_INLINE_VECCALL(T) inline uX_veccall(T)
// inline on in release build for inline only with veccall
#       define _uX_INLINE_VECCALL(T) inline uX_veccall(T)

// inline on in release build for static inline artificial with veccall
#       define __uX_INLINEART_VECCALL(T) inline uX_veccall(T)
// inline on in release build for static inline artificial with veccall
#       define _uX_INLINEART_VECCALL(T) inline uX_veccall(T)

// forceinline on in release build for forceinline only with veccall
#       define __uX_FINLINE_VECCALL(T) inline uX_veccall(T)
// forceinline on in release build for forceinline artificial only with veccall
#       define __uX_FINLINEART_VECCALL(T) inline uX_veccall(T)
#     else
// inline of in debug build for static inline
#       define __uX_S_INLINE(T) static T
// inline of in debug build for static inline
#       define _uX_S_INLINE(T) static T

// inline of in debug build for static inline artificial
#       define __uX_S_INLINEART(T) static T
// inline of in debug build for static inline artificial
#       define _uX_S_INLINEART(T) static T

// forceinline of in debug build for static forceinline
#       define __uX_S_FINLINE(T) static T
// forceinline of in debug build for static forceinline artificial
#       define __uX_S_FINLINEART(T) static T

// inline of in debug build for inline only
#       define __uX_INLINE(T) T
// inline of in debug build for inline only
#       define _uX_INLINE(T) T

// inline of in debug build for inline only artificial
#       define __uX_INLINEART(T) T
// inline of in debug build for inline only artificial
#       define _uX_INLINEART(T) T

// forceinline of in debug build for forceinline only
#       define __uX_FINLINE(T) T
// forceinline of in debug build for forceinline only artificial
#       define __uX_FINLINEART(T) T

// inline of in debug build for static inline with veccall
#       define __uX_S_INLINE_VECCALL(T) static uX_veccall(T)
// inline of in debug build for static inline with veccall
#       define _uX_S_INLINE_VECCALL(T) static uX_veccall(T)

// inline of in debug build for static inline artificial with veccall
#       define __uX_S_INLINEART_VECCALL(T) static uX_veccall(T)
// inline of in debug build for static inline artificial with veccall
#       define _uX_S_INLINEART_VECCALL(T) static uX_veccall(T)

// forceinline of in debug build for static forceinline with veccall
#       define __uX_S_FINLINE_VECCALL(T) static uX_veccall(T)
// forceinline of in debug build for static forceinline artificial with veccall
#       define __uX_S_FINLINEART_VECCALL(T) static uX_veccall(T)

// inline of in debug build for inline only with veccall
#       define __uX_INLINE_VECCALL(T) uX_veccall(T)
// inline of in debug build for inline only with veccall
#       define _uX_INLINE_VECCALL(T) uX_veccall(T)

// inline of in debug build for inline only artificial with veccall
#       define __uX_INLINEART_VECCALL(T) uX_veccall(T)
// inline of in debug build for inline only artificial with veccall
#       define _uX_INLINEART_VECCALL(T) uX_veccall(T)

// forceinline of in debug build for forceinline only with veccall
#       define __uX_FINLINE_VECCALL(T) uX_veccall(T)
// forceinline of in debug build for forceinline only artificial with veccall
#       define __uX_FINLINEART_VECCALL(T) uX_veccall(T)
#     endif // uX_DEBUG

// inline hallways on for static inline
#       define uX_S_INLINE(T)  static inline T
// inline hallways on for static inline artificial
#       define uX_S_INLINEART(T) static inline T

// forceinline hallways on for static forceinline
#       define uX_S_FINLINE(T) static inline T
// forceinline hallways on for static forceinline artificial
#       define uX_S_FINLINEART(T) static inline T

// inline hallways on for inline only
#       define uX_INLINE(T)  inline T
// inline hallways on for inline only artificial
#       define uX_INLINEART(T) inline T

// forceinline hallways on for forceinline only
#       define uX_FINLINE(T) inline T
// forceinline hallways on for forceinline only artificial
#       define uX_FINLINEART(T) inline T

// inline hallways on for static inline with veccall
#       define uX_S_INLINE_VECCALL(T) static inline uX_veccall(T)
// inline hallways on for static inline artificial with veccall
#       define uX_S_INLINEART_VECCALL(T) static inline uX_veccall(T)

// forceinline hallways on for static forceinline with veccall
#       define uX_S_FINLINE_VECCALL(T) static inline uX_veccall(T)
// forceinline hallways on for static forceinline artificial with veccall
#       define uX_S_FINLINEART_VECCALL(T) static inline uX_veccall(T)

// inline hallways on for inline only with veccall
#       define uX_INLINE_VECCALL(T) inline uX_veccall(T)
// inline hallways on for inline only artificial with veccall
#       define uX_INLINEART_VECCALL(T) inline uX_veccall(T)

// forceinline hallways on for forceinline only with veccall
#       define uX_FINLINE_VECCALL(T) inline uX_veccall(T)
// forceinline hallways on for forceinline only artificial with veccall
#       define uX_FINLINEART_VECCALL(T) inline uX_veccall(T)
#   endif // uX_INLINE
# endif

/**
Nullptr macro
*/
# if (defined(__cplusplus) && (__cplusplus >= 201103L)) || defined(_MSC_VER)
#   if defined(_MSC_VER) && (_MSC_VER >= 1800)
#       define uX_NULLPTR nullptr
#   else
#       define uX_NULLPTR NULL
#   endif
#elif defined(uX_GCC_COMPATIBLE_COMPILER)
#  if defined(uX_GNUC) || defined(uX_CLANGU)
#       define uX_NULLPTR __null
#  elif defined(__cplusplus)
#       define uX_NULLPTR 0
#  else
#       define uX_NULLPTR ((void*)0)
#  endif
#else
#       define uX_NULLPTR
#endif

#ifdef uX_CUDACC
//#   define _INC_MATH 1  /*  Try some workaround to block math header from mix with CUDA math functions */
#include <host_config.h>
#include <host_defines.h>
#include <cuda.h>
/*
#include <math_functions.h>
#include <device_functions.h>
#include <device_functions_decls.h>*/
//#undef _INC_MATH  /*  Secure the math header to be included after we include the cuda math functions header, >TODO needs directory inclusion fixing with some .props methods */
#endif

/**
Noinline macro
*/
#if defined(uX_CUDACC)
#   define uX_NOINLINE __noinline__
#elif defined(uX_MSVC_COMPATIBLE_COMPILER)
#   define uX_NOINLINE __declspec(noinline)
#elif defined(uX_GCC_COMPATIBLE_COMPILER) || defined(uX_IBMC)
#   define uX_NOINLINE __attribute__((noinline))
#else
#   define uX_NOINLINE
#endif

/**
Constexpr macro
*/
#if defined(uX_CONSTEXPR_SUPPORT)
#   define uX_constexpr constexpr
#   define uX_const constexpr
#else
#   define uX_constexpr
#   define uX_const const
#endif

/**
Empty function class body macro
*/
#if defined(uX_DEFAULT_CTOR_SUPPORT)
#   define uX_default =default
#else
#   define uX_default
#endif

/**
No exception function class body macro
*/
#if defined(uX_NOEXCEPT_SUPPORT)
#   define uX_noexcept noexcept
#else
#   define uX_noexcept
#endif

/*! restrict macro */
#if defined(uX_CUDACC)
# if defined(uX_MSVC_COMPATIBLE_COMPILER) && (_MSC_VER >= 1400))
#   define __uX_RESTRICT __declspec(restrict)
# elif defined(uX_GCC_COMPATIBLE_COMPILER)
#   define __uX_RESTRICT __attribute__((restrict))
# else
#   define __uX_RESTRICT
# endif
#   define uX_RESTRICT __restrict__
#elif (defined(uX_MSVC_COMPATIBLE_COMPILER) && (_MSC_VER >= 1400))
#   define __uX_RESTRICT __declspec(restrict)
#   define uX_RESTRICT __restrict
#elif (defined(uX_GCC_COMPATIBLE_COMPILER) || defined(uX_IBMC)) && !defined(uX_PS4) // ps4 doesn't like restricted functions
#   define __uX_RESTRICT __attribute__((restrict))
#   define uX_RESTRICT __restrict__
#elif defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 199901L)
#   define uX_RESTRICT restrict
#else
#   define __uX_RESTRICT
#   define uX_RESTRICT
#endif

/* noalias macro */
#if defined(uX_MSVC_COMPATIBLE_COMPILER)
#   define uX_NOALIAS __declspec(noalias)
#elif defined(uX_GCC_COMPATIBLE_COMPILER)
#   define uX_NOALIAS __attribute__((noalias))
#else
#   define uX_NOALIAS
#endif

/* property macro */
#if defined(uX_MSVC_COMPATIBLE_COMPILER)
#   define __uX_PROPERTY(exa,exb) __declspec(property(exa, exb))
#else
#   define __uX_PROPERTY(exa,exb) __attribute__((property(exa, exb)))
#endif

/* notrow macro */
#if defined(uX_MSVC_COMPATIBLE_COMPILER)
#ifdef  __cplusplus
#ifndef uX_NOTHROW
# define uX_NOTHROW __declspec(nothrow)
#endif
#else
#ifndef uX_NOTHROW
# define uX_NOTHROW
#endif
#endif
#else
#ifndef uX_NOTHROW
# define uX_NOTHROW
#endif
#endif

/* noreturn macro */
#if defined(uX_CUDACC)
#   define uX_NORETURN __attribute__((noreturn))
#elif defined(uX_MSVC_COMPATIBLE_COMPILER)
#   define uX_NORETURN __declspec(noreturn)
#elif defined(uX_GCC_COMPATIBLE_COMPILER) || defined(uX_IBMC)
#   define uX_NORETURN __attribute__((noreturn))
#else
#   define uX_NORETURN
#endif

#   define uX_COUNT_OF(x) (sizeof(x) / sizeof(x[0]))

/* alignof macro */
#if defined(uX_MSVC_COMPATIBLE_COMPILER)
#   define uX_ALIGN_OF(X) __alignof(X)
#elif defined(uX_GCC_COMPATIBLE_COMPILER) || defined(uX_IBMC)
#   define uX_ALIGN_OF(X) __alignof__(X)
#elif defined(uX_MWERKS)
#   define uX_ALIGN_OF(X) __builtin_align(X)
#elif defined(uX_ARMCC)
#   define uX_ALIGN_OF(X) __ALIGNOF__(X)
#else
#   define uX_ALIGN_OF(x)
#endif

#if defined(uX_GCC_COMPATIBLE_COMPILER)
#   define uX_LIKELY(x) (__builtin_expect(!!(x), 1))
#   define uX_UNLIKELY(x) (__builtin_expect(!!(x), 0))
#else
#   define uX_LIKELY(x) (!!(x))
#   define uX_UNLIKELY(x) (!!(x))
#endif

/* override and final macro */
#if defined(uX_MSVC_COMPATIBLE_COMPILER) && defined(__cplusplus)
#   if (_MSC_VER >= 1700)
#       define uX_OVERRIDE override
#       define uX_FINAL final
#       define uX_FINAL_OVERRIDE final override
#   elif (_MSC_VER >= 1600)
#       define uX_OVERRIDE override
#       define uX_FINAL sealed
#       define uX_FINAL_OVERRIDE sealed override
#endif
#endif

/* intrin_type macro and vector size*/
# if defined(uX_MSVC_COMPATIBLE_COMPILER) && (_MSC_VER >= 1400)
#  if !defined(__INTEL_COMPILER) && (_MSC_FULL_VER < 160020506)
#       define uXVC_VEC_INTRINTYPE(X) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE_ALIAS(X) __declspec(intrin_type)

#       define uXVC_VEC_INTRINTYPE4 __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE8 __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE16 __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE32 __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE64 __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE128 __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE256 __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE512 __declspec(intrin_type)

#       define uXVC_VEC_INTRINTYPE4_ALIAS __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE8_ALIAS __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE16_ALIAS __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE32_ALIAS __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE64_ALIAS __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE128_ALIAS __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE256_ALIAS __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE512_ALIAS __declspec(intrin_type)
#  else
#   if !defined(__INTEL_COMPILER)
#       define uXVC_VEC_INTRINTYPE(X) __declspec(intrin_type) __declspec(align(X))
#       define uXVC_VEC_INTRINTYPE_ALIAS(X) __declspec(intrin_type) __declspec(align(X))

#       define uXVC_VEC_INTRINTYPE4 __declspec(intrin_type) __declspec(align(4))
#       define uXVC_VEC_INTRINTYPE8 __declspec(intrin_type) __declspec(align(8))
#       define uXVC_VEC_INTRINTYPE16 __declspec(intrin_type) __declspec(align(16))
#       define uXVC_VEC_INTRINTYPE32 __declspec(intrin_type) __declspec(align(32))
#       define uXVC_VEC_INTRINTYPE64 __declspec(intrin_type) __declspec(align(64))
#       define uXVC_VEC_INTRINTYPE128 __declspec(intrin_type) __declspec(align(128))
#       define uXVC_VEC_INTRINTYPE256 __declspec(intrin_type) __declspec(align(256))
#       define uXVC_VEC_INTRINTYPE512 __declspec(intrin_type) __declspec(align(512))

#       define uXVC_VEC_INTRINTYPE4_ALIAS __declspec(intrin_type) __declspec(align(4))
#       define uXVC_VEC_INTRINTYPE8_ALIAS __declspec(intrin_type) __declspec(align(8))
#       define uXVC_VEC_INTRINTYPE16_ALIAS __declspec(intrin_type) __declspec(align(16))
#       define uXVC_VEC_INTRINTYPE32_ALIAS __declspec(intrin_type) __declspec(align(32))
#       define uXVC_VEC_INTRINTYPE64_ALIAS __declspec(intrin_type) __declspec(align(64))
#       define uXVC_VEC_INTRINTYPE128_ALIAS __declspec(intrin_type) __declspec(align(128))
#       define uXVC_VEC_INTRINTYPE256_ALIAS __declspec(intrin_type) __declspec(align(256))
#       define uXVC_VEC_INTRINTYPE512_ALIAS __declspec(intrin_type) __declspec(align(512))
#   else
#       define uXVC_VEC_INTRINTYPE(X) __declspec(align(X)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE_ALIAS(X) __declspec(align(X)) __declspec(intrin_type)

#       define uXVC_VEC_INTRINTYPE4 __declspec(align(4)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE8 __declspec(align(8)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE16 __declspec(align(16)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE32 __declspec(align(32)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE64 __declspec(align(64)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE128 __declspec(align(128)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE256 __declspec(align(256)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE512 __declspec(align(512)) __declspec(intrin_type)

#       define uXVC_VEC_INTRINTYPE4_ALIAS __declspec(align(4)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE8_ALIAS __declspec(align(8)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE16_ALIAS __declspec(align(16)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE32_ALIAS __declspec(align(32)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE64_ALIAS __declspec(align(64)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE128_ALIAS __declspec(align(128)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE256_ALIAS __declspec(align(256)) __declspec(intrin_type)
#       define uXVC_VEC_INTRINTYPE512_ALIAS __declspec(align(512)) __declspec(intrin_type)
#   endif
#  endif

#       define uX_VEC_SIZE_INTRINTYPE(Type,Name,size) __declspec(align(size)) Type Name[size]
#       define uX_VEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) __declspec(align(size)) Type Name[size]

#       define uX_NEONVEC_SIZE_INTRINTYPE(Type,Name,size) __declspec(align(size)) Type Name[size]
#       define uX_NEONVEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) __declspec(align(size)) Type Name[size]

#       define uX_VEC_SIZE(Type,Name,size) __declspec(align(size)) Type Name[size]
#       define uX_VEC_SIZE_ALIAS(Type,Name,size) __declspec(align(size)) Type Name[size]

#       define uXGC_VEC_INTRINTYPE(X)
#       define uXGC_VEC_INTRINTYPE_ALIAS(X)

#       define uXGC_VEC_INTRINTYPE4
#       define uXGC_VEC_INTRINTYPE8
#       define uXGC_VEC_INTRINTYPE16
#       define uXGC_VEC_INTRINTYPE32
#       define uXGC_VEC_INTRINTYPE64
#       define uXGC_VEC_INTRINTYPE128
#       define uXGC_VEC_INTRINTYPE256
#       define uXGC_VEC_INTRINTYPE512

#       define uXGC_VEC_INTRINTYPE4_ALIAS
#       define uXGC_VEC_INTRINTYPE8_ALIAS
#       define uXGC_VEC_INTRINTYPE16_ALIAS
#       define uXGC_VEC_INTRINTYPE32_ALIAS
#       define uXGC_VEC_INTRINTYPE64_ALIAS
#       define uXGC_VEC_INTRINTYPE128_ALIAS
#       define uXGC_VEC_INTRINTYPE256_ALIAS
#       define uXGC_VEC_INTRINTYPE512_ALIAS
# elif defined(uX_GCC_COMPATIBLE_COMPILER)
#       define uXGC_VEC_INTRINTYPE(X) __attribute__((__vector_size__(4), __aligned__(X)))
#       define uXGC_VEC_INTRINTYPE_ALIAS(X) __attribute__((__vector_size__(4), __aligned__(X), __may_alias__))

#       define uX_VEC_SIZE_INTRINTYPE(Type,Name,size) Type Name __attribute__((__vector_size__(size), __aligned__(X)))
#       define uX_VEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) Type Name __attribute__((__vector_size__(size), __aligned__(X), __may_alias__))

#       define uX_NEONVEC_SIZE_INTRINTYPE(Type,Name,size) Type Name __attribute__((neon_vector_type(size), __aligned__(X)))
#       define uX_NEONVEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) Type Name __attribute__((neon_vector_type(size), __aligned__(X), __may_alias__))

#       define uX_VEC_SIZE(Type,Name,size) Type Name[size] __attribute__((__aligned__(size)))
#       define uX_VEC_SIZE_ALIAS(Type,Name,size) Type Name[size] __attribute__((__aligned__(size), __may_alias__))

#       define uXGC_VEC_INTRINTYPE4 __attribute__((__vector_size__(4), __aligned__(4)))
#       define uXGC_VEC_INTRINTYPE8 __attribute__((__vector_size__(8), __aligned__(8)))
#       define uXGC_VEC_INTRINTYPE16 __attribute__((__vector_size__(16), __aligned__(16)))
#       define uXGC_VEC_INTRINTYPE32 __attribute__((__vector_size__(32), __aligned__(32)))
#       define uXGC_VEC_INTRINTYPE64 __attribute__((__vector_size__(64), __aligned__(64)))
#       define uXGC_VEC_INTRINTYPE128 __attribute__((__vector_size__(64), __aligned__(128)))
#       define uXGC_VEC_INTRINTYPE256 __attribute__((__vector_size__(64), __aligned__(256)))
#       define uXGC_VEC_INTRINTYPE512 __attribute__((__vector_size__(64), __aligned__(512)))

#       define uXGC_VEC_INTRINTYPE4_ALIAS __attribute__((__vector_size__(64), __aligned__(4), __may_alias__))
#       define uXGC_VEC_INTRINTYPE8_ALIAS __attribute__((__vector_size__(64), __aligned__(8), __may_alias__))
#       define uXGC_VEC_INTRINTYPE16_ALIAS __attribute__((__vector_size__(64), __aligned__(16), __may_alias__))
#       define uXGC_VEC_INTRINTYPE32_ALIAS __attribute__((__vector_size__(64), __aligned__(32), __may_alias__))
#       define uXGC_VEC_INTRINTYPE64_ALIAS __attribute__((__vector_size__(64), __aligned__(64), __may_alias__))
#       define uXGC_VEC_INTRINTYPE128_ALIAS __attribute__((__vector_size__(64), __aligned__(128), __may_alias__))
#       define uXGC_VEC_INTRINTYPE256_ALIAS __attribute__((__vector_size__(64), __aligned__(256), __may_alias__))
#       define uXGC_VEC_INTRINTYPE512_ALIAS __attribute__((__vector_size__(64), __aligned__(512), __may_alias__))

#   define uXVC_VEC_INTRINTYPE(X)
#   define uXVC_VEC_INTRINTYPE_ALIAS(X)

#       define uXVC_VEC_INTRINTYPE4
#       define uXVC_VEC_INTRINTYPE8
#       define uXVC_VEC_INTRINTYPE16
#       define uXVC_VEC_INTRINTYPE32
#       define uXVC_VEC_INTRINTYPE64
#       define uXVC_VEC_INTRINTYPE128
#       define uXVC_VEC_INTRINTYPE256
#       define uXVC_VEC_INTRINTYPE512

#       define uXVC_VEC_INTRINTYPE4_ALIAS
#       define uXVC_VEC_INTRINTYPE8_ALIAS
#       define uXVC_VEC_INTRINTYPE16_ALIAS
#       define uXVC_VEC_INTRINTYPE32_ALIAS
#       define uXVC_VEC_INTRINTYPE64_ALIAS
#       define uXVC_VEC_INTRINTYPE128_ALIAS
#       define uXVC_VEC_INTRINTYPE256_ALIAS
#       define uXVC_VEC_INTRINTYPE512_ALIAS
# else
#       define uXVC_VEC_INTRINTYPE(X)
#       define uXGC_VEC_INTRINTYPE(X)
#       define uXVC_VEC_INTRINTYPE_ALIAS(X)
#       define uXGC_VEC_INTRINTYPE_ALIAS(X)

#       define uX_VEC_SIZE_INTRINTYPE(Type,Name,size) Type Name[size]
#       define uX_VEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) Type Name[size]

#       define uX_NEONVEC_SIZE_INTRINTYPE(Type,Name,size) Type Name[size]
#       define uX_NEONVEC_SIZE_INTRINTYPE_ALIAS(Type,Name,size) Type Name[size]

#       define uX_VEC_SIZE(Type,Name,size) Type Name[size]
#       define uX_VEC_SIZE_ALIAS(Type,Name,size) Type Name[size]

#       define uXVC_VEC_INTRINTYPE4
#       define uXVC_VEC_INTRINTYPE8
#       define uXVC_VEC_INTRINTYPE16
#       define uXVC_VEC_INTRINTYPE32
#       define uXVC_VEC_INTRINTYPE64
#       define uXVC_VEC_INTRINTYPE128
#       define uXVC_VEC_INTRINTYPE256
#       define uXVC_VEC_INTRINTYPE512

#       define uXVC_VEC_INTRINTYPE4_ALIAS
#       define uXVC_VEC_INTRINTYPE8_ALIAS
#       define uXVC_VEC_INTRINTYPE16_ALIAS
#       define uXVC_VEC_INTRINTYPE32_ALIAS
#       define uXVC_VEC_INTRINTYPE64_ALIAS
#       define uXVC_VEC_INTRINTYPE128_ALIAS
#       define uXVC_VEC_INTRINTYPE256_ALIAS
#       define uXVC_VEC_INTRINTYPE512_ALIAS

#       define uXGC_VEC_INTRINTYPE4
#       define uXGC_VEC_INTRINTYPE8
#       define uXGC_VEC_INTRINTYPE16
#       define uXGC_VEC_INTRINTYPE32
#       define uXGC_VEC_INTRINTYPE64
#       define uXGC_VEC_INTRINTYPE128
#       define uXGC_VEC_INTRINTYPE256
#       define uXGC_VEC_INTRINTYPE512

#       define uXGC_VEC_INTRINTYPE4_ALIAS
#       define uXGC_VEC_INTRINTYPE8_ALIAS
#       define uXGC_VEC_INTRINTYPE16_ALIAS
#       define uXGC_VEC_INTRINTYPE32_ALIAS
#       define uXGC_VEC_INTRINTYPE64_ALIAS
#       define uXGC_VEC_INTRINTYPE128_ALIAS
#       define uXGC_VEC_INTRINTYPE256_ALIAS
#       define uXGC_VEC_INTRINTYPE512_ALIAS
# endif

// example vec size
// typedef uX_VEC_SIZE_INTRINTYPE(int, __v8si, 32); // = to VC: typedef __declspec(align(32)) int __v8si[32], or GNUC: typedef int __v8si __attribute__((__vector_size__(32)))

/* virtual macro */
#if !defined(uX_NO_VIRTUAL) && defined(__cplusplus)
#   define uX_virtual virtual
#   define uX_virtualinit = 0
#else
#   define uX_virtual
#   define uX_virtualinit
#endif

/* explicit macro */
#if !defined(uX_NO_EXPLICIT) && defined(__cplusplus)
#   define uX_explicit explicit
#else
#   define uX_explicit
#endif

#if defined(uX_INTELCC_GFX)
# if defined(_MSC_VER)
#   define __Intel_host__
#   define __Intel_device__             __declspec(target(gfx))
#   define __Intel_device_builtin__
# else
#   define __Intel_host__
#   define __Intel_device__             __attribute__((target(gfx)))
#   define __Intel_device_builtin__
# endif
#else
#   define __Intel_host__
#   define __Intel_device__
#   define __Intel_device_builtin__
#endif

#if defined(uX_CUDACC)
#   define __Cuda_host__                __host__
#   define __Cuda_device__              __device__
#   define __Cuda_device_builtin__      __device_builtin__
#else
#   define __Cuda_host__
#   define __Cuda_device__
#   define __Cuda_device_builtin__
#endif

#if defined(uX_CUDACC)
#   define uX_TARGET_CPU_GPU                        __Cuda_host__ __Cuda_device__
#   define uX_TARGET_CPU_ONLY                       __Cuda_host__
#   define uX_TARGET_GPU_ONLY                       __Cuda_device__
#   define uX_TARGET_DEVICE_BUILTIN             __Cuda_device_builtin__
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN        __Cuda_device__ __Cuda_device_builtin__
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN         __Cuda_host__ __Cuda_device__ __Cuda_device_builtin__
#elif defined(uX_INTELCC_GFX)
#   define uX_TARGET_CPU_GPU                        __Intel_host__ __Intel_device__
#   define uX_TARGET_CPU_ONLY                       __Intel_host__
#   define uX_TARGET_GPU_ONLY                       __Intel_device__
#   define uX_TARGET_DEVICE_BUILTIN             __Intel_device_builtin__
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN        __Intel_device__ __Intel_device_builtin__
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN         __Intel_host__ __Intel_device__ __Intel_device_builtin__
#else
#   define uX_TARGET_CPU_GPU
#   define uX_TARGET_CPU_ONLY
#   define uX_TARGET_GPU_ONLY
#   define uX_TARGET_DEVICE_BUILTIN
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN
#endif

#if defined(uX_CC_PDEF_GPU_SUPPORT)
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_S_INLINE(T) uX_S_INLINE(uX_TARGET_GPU_ONLY uX_TARGET_DEVICE_BUILTIN T)
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_S_FINLINE(T) uX_S_FINLINE(uX_TARGET_GPU_ONLY uX_TARGET_DEVICE_BUILTIN T)
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_INLINE(T) uX_INLINE(uX_TARGET_GPU_ONLY uX_TARGET_DEVICE_BUILTIN T)
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_FINLINE(T) uX_FINLINE(uX_TARGET_GPU_ONLY uX_TARGET_DEVICE_BUILTIN T)

#   define uX_TARGET_GPU_ONLY_S_INLINE(T) uX_S_INLINE(uX_TARGET_GPU_ONLY T)
#   define uX_TARGET_GPU_ONLY_S_FINLINE(T) uX_S_FINLINE(uX_TARGET_GPU_ONLY T)
#   define uX_TARGET_GPU_ONLY_INLINE(T) uX_INLINE(uX_TARGET_GPU_ONLY T)
#   define uX_TARGET_GPU_ONLY_FINLINE(T) uX_FINLINE(uX_TARGET_GPU_ONLY T)

#   define uX_TARGET_CPU_ONLY_S_INLINE(T) uX_S_INLINE(uX_TARGET_CPU_ONLY T)
#   define uX_TARGET_CPU_ONLY_S_FINLINE(T) uX_S_FINLINE(uX_TARGET_CPU_ONLY T)
#   define uX_TARGET_CPU_ONLY_INLINE(T) uX_INLINE(uX_TARGET_CPU_ONLY T)
#   define uX_TARGET_CPU_ONLY_FINLINE(T) uX_FINLINE(uX_TARGET_CPU_ONLY T)

#   define uX_TARGET_CPU_ONLY_S_INLINE_VECCALL(T) uX_S_INLINE(uX_TARGET_CPU_ONLY T)
#   define uX_TARGET_CPU_ONLY_S_FINLINE_VECCALL(T) uX_S_FINLINE(uX_TARGET_CPU_ONLY T)
#   define uX_TARGET_CPU_ONLY_INLINE_VECCALL(T) uX_INLINE(uX_TARGET_CPU_ONLY T)
#   define uX_TARGET_CPU_ONLY_FINLINE_VECCALL(T) uX_FINLINE(uX_TARGET_CPU_ONLY T)

#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_S_INLINE(T) uX_S_INLINE(uX_TARGET_CPU_GPU_DEVICE_BUILTIN T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_S_FINLINE(T) uX_S_FINLINE(uX_TARGET_CPU_GPU_DEVICE_BUILTIN T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_INLINE(T) uX_INLINE(uX_TARGET_CPU_GPU_DEVICE_BUILTIN T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_FINLINE(T) uX_FINLINE(uX_TARGET_CPU_GPU_DEVICE_BUILTIN T)

#   define uX_TARGET_CPU_GPU_S_INLINE(T) uX_S_INLINE(uX_TARGET_CPU_GPU T)
#   define uX_TARGET_CPU_GPU_S_FINLINE(T) uX_S_FINLINE(uX_TARGET_CPU_GPU T)
#   define uX_TARGET_CPU_GPU_INLINE(T) uX_INLINE(uX_TARGET_CPU_GPU T)
#   define uX_TARGET_CPU_GPU_FINLINE(T) uX_FINLINE(uX_TARGET_CPU_GPU T)

#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_S_INLINE_VECCALL(T) uX_S_INLINE(uX_TARGET_CPU_GPU_DEVICE_BUILTIN T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_S_FINLINE_VECCALL(T) uX_S_FINLINE(uX_TARGET_CPU_GPU_DEVICE_BUILTIN T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_INLINE_VECCALL(T) uX_INLINE(uX_TARGET_CPU_GPU_DEVICE_BUILTIN T)
#   define uX_TARGET_CPU_GP_DEVICE_BUILTINU_FINLINE_VECCALL(T) uX_FINLINE(uX_TARGET_CPU_GPU_DEVICE_BUILTIN T)

#   define uX_TARGET_CPU_GPU_S_INLINE_VECCALL(T) uX_S_INLINE(uX_TARGET_CPU_GPU T)
#   define uX_TARGET_CPU_GPU_S_FINLINE_VECCALL(T) uX_S_FINLINE(uX_TARGET_CPU_GPU T)
#   define uX_TARGET_CPU_GPU_INLINE_VECCALL(T) uX_INLINE(uX_TARGET_CPU_GPU T)
#   define uX_TARGET_CPU_GPU_FINLINE_VECCALL(T) uX_FINLINE(uX_TARGET_CPU_GPU T)
#else
# if defined(uX_INTRINSICS_SUPPORT)

#   define uX_TARGET_CPU_ONLY_S_INLINE_VECCALL(T) uX_S_INLINE_VECCALL(T)
#   define uX_TARGET_CPU_ONLY_S_FINLINE_VECCALL(T) uX_S_FINLINE_VECCALL(T)
#   define uX_TARGET_CPU_ONLY_INLINE_VECCALL(T) uX_INLINE_VECCALL(T)
#   define uX_TARGET_CPU_ONLY_FINLINE_VECCALL(T) uX_FINLINE_VECCALL(T)

#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_S_INLINE_VECCALL(T) uX_S_INLINE_VECCALL(T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_S_FINLINE_VECCALL(T) uX_S_FINLINE_VECCALL(T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_INLINE_VECCALL(T) uX_INLINE_VECCALL(T)
#   define uX_TARGET_CPU_GP_DEVICE_BUILTINU_FINLINE_VECCALL(T) uX_FINLINE_VECCALL(T)

#   define uX_TARGET_CPU_GPU_S_INLINE_VECCALL(T) uX_S_INLINE_VECCALL(T)
#   define uX_TARGET_CPU_GPU_S_FINLINE_VECCALL(T) uX_S_FINLINE_VECCALL(T)
#   define uX_TARGET_CPU_GPU_INLINE_VECCALL(T) uX_INLINE_VECCALL(T)
#   define uX_TARGET_CPU_GPU_FINLINE_VECCALL(T) uX_FINLINE_VECCALL(T)
# else

#   define uX_TARGET_CPU_ONLY_S_INLINE_VECCALL(T) uX_S_INLINE(T)
#   define uX_TARGET_CPU_ONLY_S_FINLINE_VECCALL(T) uX_S_FINLINE(T)
#   define uX_TARGET_CPU_ONLY_INLINE_VECCALL(T) uX_INLINE(T)
#   define uX_TARGET_CPU_ONLY_FINLINE_VECCALL(T) uX_FINLINE(T)

#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_S_INLINE_VECCALL(T) uX_S_INLINE(T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_S_FINLINE_VECCALL(T) uX_S_FINLINE(T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_INLINE_VECCALL(T) uX_INLINE(T)
#   define uX_TARGET_CPU_GP_DEVICE_BUILTINU_FINLINE_VECCALL(T) uX_FINLINE(T)

#   define uX_TARGET_CPU_GPU_S_INLINE_VECCALL(T) uX_S_INLINE(T)
#   define uX_TARGET_CPU_GPU_S_FINLINE_VECCALL(T) uX_S_FINLINE(T)
#   define uX_TARGET_CPU_GPU_INLINE_VECCALL(T) uX_INLINE(T)
#   define uX_TARGET_CPU_GPU_FINLINE_VECCALL(T) uX_FINLINE(T)
# endif

#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_S_INLINE(T) uX_S_INLINE(T)
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_S_FINLINE(T) uX_S_FINLINE( T)
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_INLINE(T) uX_INLINE(T)
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_FINLINE(T) uX_FINLINE(T)

#   define uX_TARGET_GPU_ONLY_S_INLINE(T) uX_S_INLINE(T)
#   define uX_TARGET_GPU_ONLY_S_FINLINE(T) uX_S_FINLINE(T)
#   define uX_TARGET_GPU_ONLY_INLINE(T) uX_INLINE(T)
#   define uX_TARGET_GPU_ONLY_FINLINE(T) uX_FINLINE(T)

#   define uX_TARGET_CPU_ONLY_S_INLINE(T) uX_S_INLINE(T)
#   define uX_TARGET_CPU_ONLY_S_FINLINE(T) uX_S_FINLINE(T)
#   define uX_TARGET_CPU_ONLY_INLINE(T) uX_INLINE(T)
#   define uX_TARGET_CPU_ONLY_FINLINE(T) uX_FINLINE(T)

#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_S_INLINE(T) uX_S_INLINE(T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_S_FINLINE(T) uX_S_FINLINE(T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_INLINE(T) uX_INLINE(T)
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_FINLINE(T) uX_FINLINE(T)

#   define uX_TARGET_CPU_GPU_S_INLINE(T) uX_S_INLINE(T)
#   define uX_TARGET_CPU_GPU_S_FINLINE(T) uX_S_FINLINE(T)
#   define uX_TARGET_CPU_GPU_INLINE(T) uX_INLINE(T)
#   define uX_TARGET_CPU_GPU_FINLINE(T) uX_FINLINE(T)
#endif

#if defined(uX_AMP_SUPPORT)
//#include <amp.h>
#   define uX_CPU_AMP       restrict(amp,cpu)
#   define uX_AMP_ONLY      restrict(amp)
#   define uX_AMP           restrict(amp)
#   define uX_CPU_ONLY      restrict(cpu)
#   define uX_CPU
#else
#   define uX_CPU_AMP
#   define uX_AMP_ONLY
#   define uX_AMP
#   define uX_CPU_ONLY
#   define uX_CPU
#endif // uX_AMP_SUPPORT

#if defined(uX_AMP_SUPPORT)
#   define uX_EXTERN_BEGIN EXTERN_CC_BEGIN
#   define uX_EXTERN_END EXTERN_CC_END
#else
#   define uX_EXTERN_BEGIN EXTERN_C_BEGIN
#   define uX_EXTERN_END EXTERN_C_END
#endif

#if defined(uX_MSVC_COMPATIBLE_COMPILER)
#  if defined( uX_LIB_DLL)
# ifndef uX_GLOBAL_CONST
#   define uX_GLOBAL_CONST _EXTERN const __declspec(selectany)
#   define uX_CGLOBAL_CONST _EXTERNC const __declspec(selectany)
#   define uX_CGLOBAL _EXTERNC __declspec(selectany)
#   define uX_CCGLOBAL_CONST _EXTERNCC const __declspec(selectany)
#   define uX_CCGLOBAL _EXTERNCC __declspec(selectany)
#   define uX_AMP_GLOBAL_CONST _EXTERN const __declspec(selectany)
#   define uX_AMP_CCGLOBAL_CONST _EXTERNCC const __declspec(selectany)
#   define uX_AMP_CCGLOBAL _EXTERNCC __declspec(selectany)
#   define uX_STATIC_CONST static const
#   define uX_C_STATIC_CONST _EXTERNC static const
#   define uX_CC_STATIC_CONST _EXTERNCC static const
// static inline
#   define uX_CGLOBAL_API(T) _EXTERNC uX_S_INLINE(T)
// inline only
#   define __uX_CGLOBAL_API(T) _EXTERNC __uX_INLINE(T)
// static inline
#   define uX_CCGLOBAL_API(T) _EXTERNCC uX_S_INLINE(T)
// inline only
#   define __uX_CCGLOBAL_API(T) _EXTERNCC __uX_INLINE(T)

// static inline
#   define uX_CGLOBAL_CALLCONV_API(T) _EXTERNC uX_S_INLINE(uX_callconv(T))
// inline only
#   define __uX_CGLOBAL_CALLCONV_API(T) _EXTERNC __uX_INLINE(uX_callconv(T))
// static inline
#   define uX_CCGLOBAL_CALLCONV_API(T) _EXTERNCC uX_S_INLINE(uX_callconv(T))
// inline only
#   define __uX_CCGLOBAL_CALLCONV_API(T) _EXTERNCC __uX_INLINE(uX_callconv(T))

// static inline
#   define uX_CGLOBAL_VECCALL_API(T) _EXTERNC uX_S_INLINE(uX_veccall(T))
// inline only
#   define __uX_CGLOBAL_VECCALL_API(T) _EXTERNC __uX_INLINE(uX_veccall(T))
// static inline
#   define uX_CCGLOBAL_VECCALL_API(T) _EXTERNCC uX_S_INLINE(uX_veccall(T))
// inline only
#   define __uX_CCGLOBAL_VECCALL_API(T) _EXTERNCC __uX_INLINE(uX_veccall(T))
# endif
# elif defined(uX_LIB_STATIC)
# ifndef uX_GLOBAL_CONST
#   define uX_GLOBAL_CONST _EXTERN const
#   define uX_CGLOBAL_CONST _EXTERNC const
#   define uX_CGLOBAL _EXTERNC
#   define uX_CCGLOBAL_CONST _EXTERNCC const
#   define uX_CCGLOBAL _EXTERNCC
#   define uX_AMP_GLOBAL_CONST _EXTERN const
#   define uX_AMP_CCGLOBAL_CONST _EXTERNCC const
#   define uX_AMP_CCGLOBAL _EXTERNCC
#   define uX_STATIC_CONST static const
#   define uX_C_STATIC_CONST _EXTERNC static const
#   define uX_CC_STATIC_CONST _EXTERNCC static const
// static inline
#   define uX_CGLOBAL_API(T) _EXTERNC uX_S_INLINE(T)
// inline only
#   define __uX_CGLOBAL_API(T) _EXTERNC __uX_INLINE(T)
// static inline
#   define uX_CCGLOBAL_API(T) _EXTERNCC uX_S_INLINE(T)
// inline only
#   define __uX_CCGLOBAL_API(T) _EXTERNCC __uX_INLINE(T)

// static inline
#   define uX_CGLOBAL_CALLCONV_API(T) _EXTERNC uX_S_INLINE(uX_callconv(T))
// inline only
#   define __uX_CGLOBAL_CALLCONV_API(T) _EXTERNC __uX_INLINE(uX_callconv(T))
// static inline
#   define uX_CCGLOBAL_CALLCONV_API(T) _EXTERNCC uX_S_INLINE(uX_callconv(T))
// inline only
#   define __uX_CCGLOBAL_CALLCONV_API(T) _EXTERNCC __uX_INLINE(uX_callconv(T))

// static inline
#   define uX_CGLOBAL_VECCALL_API(T) _EXTERNC uX_S_INLINE(uX_veccall(T))
// inline only
#   define __uX_CGLOBAL_VECCALL_API(T) _EXTERNC __uX_INLINE(uX_veccall(T))
// static inline
#   define uX_CCGLOBAL_VECCALL_API(T) _EXTERNCC uX_S_INLINE(uX_veccall(T))
// inline only
#   define __uX_CCGLOBAL_VECCALL_API(T) _EXTERNCC __uX_INLINE(uX_veccall(T))
# endif
# endif
#else
# ifndef uX_GLOBAL_CONST
#   define uX_GLOBAL_CONST _EXTERN const
#   define uX_CGLOBAL_CONST _EXTERNC const
#   define uX_CGLOBAL _EXTERNC
#   define uX_CCGLOBAL_CONST _EXTERNCC const
#   define uX_CCGLOBAL _EXTERNCC
#   define uX_AMP_GLOBAL_CONST _EXTERN const
#   define uX_AMP_CCGLOBAL_CONST _EXTERNCC const
#   define uX_AMP_CCGLOBAL _EXTERNCC
#   define uX_STATIC_CONST static const
#   define uX_C_STATIC_CONST _EXTERNC static const
#   define uX_CC_STATIC_CONST _EXTERNCC static const
// static inline
#   define uX_CGLOBAL_API(T) _EXTERNC uX_S_INLINE(T)
// inline only
#   define __uX_CGLOBAL_API(T) _EXTERNC __uX_INLINE(T)
// static inline
#   define uX_CCGLOBAL_API(T) _EXTERNCC uX_S_INLINE(T)
// inline only
#   define __uX_CCGLOBAL_API(T) _EXTERNCC __uX_INLINE(T)

// static inline
#   define uX_CGLOBAL_CALLCONV_API(T) _EXTERNC uX_S_INLINE(uX_callconv(T))
// inline only
#   define __uX_CGLOBAL_CALLCONV_API(T) _EXTERNC __uX_INLINE(uX_callconv(T))
// static inline
#   define uX_CCGLOBAL_CALLCONV_API(T) _EXTERNCC uX_S_INLINE(uX_callconv(T))
// inline only
#   define __uX_CCGLOBAL_CALLCONV_API(T) _EXTERNCC __uX_INLINE(uX_callconv(T))

// static inline
#   define uX_CGLOBAL_VECCALL_API(T) _EXTERNC uX_S_INLINE(uX_veccall(T))
// inline only
#   define __uX_CGLOBAL_VECCALL_API(T) _EXTERNC __uX_INLINE(uX_veccall(T))
// static inline
#   define uX_CCGLOBAL_VECCALL_API(T) _EXTERNCC uX_S_INLINE(uX_veccall(T))
// inline only
#   define __uX_CCGLOBAL_VECCALL_API(T) _EXTERNCC __uX_INLINE(uX_veccall(T))
# endif
#endif

#if defined(uX_AMP_SUPPORT)
#   define uX_NMGLOBAL_CONST  uX_AMP_GLOBAL_CONST
#else
#   define uX_NMGLOBAL_CONST  uX_GLOBAL_CONST
#endif

#  if defined(uX_CC_PDEF_GPU_SUPPORT)
// static inline
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T) uX_CGLOBAL_API(uX_TARGET_GPU_ONLY uX_TARGET_DEVICE_BUILTIN T)
// inline only
#   define __uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T) __uX_CGLOBAL_API(uX_TARGET_GPU_ONLY uX_TARGET_DEVICE_BUILTIN T)
// static inline
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T) uX_CCGLOBAL_API(uX_TARGET_GPU_ONLY uX_TARGET_DEVICE_BUILTIN T)
// inline only
#   define __uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T) __uX_CCGLOBAL_API(uX_TARGET_GPU_ONLY uX_TARGET_DEVICE_BUILTIN T)

// static inline
#   define uX_TARGET_GPU_ONLY_CGLOBALAPI(T) uX_CGLOBAL_API(uX_TARGET_GPU_ONLY T)
// inline only
#   define __uX_TARGET_GPU_ONLY_CGLOBALAPI(T) __uX_CGLOBAL_API(uX_TARGET_GPU_ONLY T)
// static inline
#   define uX_TARGET_GPU_ONLY_CCGLOBALAPI(T) uX_CCGLOBAL_API(uX_TARGET_GPU_ONLY T)
// inline only
#   define __uX_TARGET_GPU_ONLY_CCGLOBALAPI(T) __uX_CCGLOBAL_API(uX_TARGET_GPU_ONLY T)

// static inline
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T) uX_CGLOBAL_API(uX_TARGET_CPU_GPU uX_TARGET_DEVICE_BUILTIN T)
// inline only
#   define __uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T) __uX_CGLOBAL_API(uX_TARGET_CPU_GPU uX_TARGET_DEVICE_BUILTIN T)
// static inline
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T) uX_CCGLOBAL_API(uX_TARGET_CPU_GPU uX_TARGET_DEVICE_BUILTIN T)
// inline only
#   define __uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T) __uX_CCGLOBAL_API(uX_TARGET_CPU_GPU uX_TARGET_DEVICE_BUILTIN T)

// static inline
#   define uX_TARGET_CPU_GPU_CGLOBALAPI(T) uX_CGLOBAL_API(uX_TARGET_CPU_GPU T)
// inline only
#   define __uX_TARGET_CPU_GPU_CGLOBALAPI(T) __uX_CGLOBAL_API(uX_TARGET_CPU_GPU T)
// static inline
#   define uX_TARGET_CPU_GPU_CCGLOBALAPI(T) uX_CCGLOBAL_API(uX_TARGET_CPU_GPU T)
// inline only
#   define __uX_TARGET_CPU_GPU_CCGLOBALAPI(T) __uX_CCGLOBAL_API(uX_TARGET_CPU_GPU T)

// static inline
#   define uX_TARGET_CPU_ONLY_CGLOBALAPI(T) uX_CGLOBAL_API(uX_TARGET_CPU_ONLY T)
// inline only
#   define __uX_TARGET_CPU_ONLY_CGLOBALAPI(T) __uX_CGLOBAL_API(uX_TARGET_CPU_ONLY T)
// static inline
#   define uX_TARGET_CPU_ONLY_CCGLOBALAPI(T) uX_CCGLOBAL_API(uX_TARGET_CPU_ONLY T)
// inline only
#   define __uX_TARGET_CPU_ONLY_CCGLOBALAPI(T) __uX_CCGLOBAL_API(uX_TARGET_CPU_ONLY T)
#  else

// static inline
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T) uX_CGLOBAL_API(T)
// inline only
#   define __uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T) __uX_CGLOBAL_API(T)
// static inline
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T) uX_CCGLOBAL_API(T)
// inline only
#   define __uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T) __uX_CCGLOBAL_API(T)

// static inline
#   define uX_TARGET_GPU_ONLY_CGLOBALAPI(T) uX_CGLOBAL_API(T)
// inline only
#   define __uX_TARGET_GPU_ONLY_CGLOBALAPI(T) __uX_CGLOBAL_API(T)
// static inline
#   define uX_TARGET_GPU_ONLY_CCGLOBALAPI(T) uX_CCGLOBAL_API(T)
// inline only
#   define __uX_TARGET_GPU_ONLY_CCGLOBALAPI(T) __uX_CCGLOBAL_API(T)

// static inline
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T) uX_CGLOBAL_API(T)
// inline only
#   define __uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T) __uX_CGLOBAL_API(T)
// static inline
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T) uX_CCGLOBAL_API(T)
// inline only
#   define __uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T) __uX_CCGLOBAL_API(T)

// static inline
#   define uX_TARGET_CPU_GPU_CGLOBALAPI(T) uX_CGLOBAL_API(T)
// inline only
#   define __uX_TARGET_CPU_GPU_CGLOBALAPI(T) __uX_CGLOBAL_API(T)
// static inline
#   define uX_TARGET_CPU_GPU_CCGLOBALAPI(T) uX_CCGLOBAL_API(T)
// inline only
#   define __uX_TARGET_CPU_GPU_CCGLOBALAPI(T) __uX_CCGLOBAL_API(T)

// static inline
#   define uX_TARGET_CPU_ONLY_CGLOBALAPI(T) uX_CGLOBAL_API(T)
// inline only
#   define __uX_TARGET_CPU_ONLY_CGLOBALAPI(T) __uX_CGLOBAL_API(T)
// static inline
#   define uX_TARGET_CPU_ONLY_CCGLOBALAPI(T) uX_CCGLOBAL_API(T)
// inline only
#   define __uX_TARGET_CPU_ONLY_CCGLOBALAPI(T) __uX_CCGLOBAL_API(T)
#  endif

# if defined(uX_AMP_SUPPORT)
// static inline
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_NMGLOBALAPI(T) uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T)
// inline only
#   define __uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_NMGLOBALAPI(T) __uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CCGLOBALAPI(T)
// static inline
#   define uX_TARGET_GPU_ONLY_NMGLOBALAPI(T) uX_TARGET_GPU_ONLY_CCGLOBALAPI(T)
// inline only
#   define __uX_TARGET_GPU_ONLY_BUILTIN_NMGLOBALAPI(T) __uX_TARGET_GPU_ONLY_CCGLOBALAPI(T)
// static inline
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_NMGLOBALAPI(T) uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T)
// inline only
#   define __uX_TARGET_CPU_GPU_DEVICE_BUILTIN_NMGLOBALAPI(T) __uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CCGLOBALAPI(T)
// static inline
#   define uX_TARGET_CPU_GPU_NMGLOBALAPI(T) uX_TARGET_CPU_GPU_CCGLOBALAPI(T)
// inline only
#   define __uX_TARGET_CPU_GPU_NMGLOBALAPI(T) __uX_TARGET_CPU_GPU_CCGLOBALAPI(T)
// static inline
#   define uX_TARGET_CPU_ONLY_NMGLOBALAPI(T) uX_TARGET_CPU_ONLY_CCGLOBALAPI(T)
// inline only
#   define __uX_TARGET_CPU_ONLY_BUILTIN_NMGLOBALAPI(T) __uX_TARGET_CPU_ONLY_CCGLOBALAPI(T)
# else
// static inline
#   define uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_NMGLOBALAPI(T) uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T)
// inline only
#   define __uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_NMGLOBALAPI(T) __uX_TARGET_GPU_ONLY_DEVICE_BUILTIN_CGLOBALAPI(T)
// static inline
#   define uX_TARGET_GPU_ONLY_NMGLOBALAPI(T) uX_TARGET_GPU_ONLY_CGLOBALAPI(T)
// inline only
#   define __uX_TARGET_GPU_ONLY_BUILTIN_NMGLOBALAPI(T) __uX_TARGET_GPU_ONLY_CGLOBALAPI(T)
// static inline
#   define uX_TARGET_CPU_GPU_DEVICE_BUILTIN_NMGLOBALAPI(T) uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T)
// inline only
#   define __uX_TARGET_CPU_GPU_DEVICE_BUILTIN_NMGLOBALAPI(T) __uX_TARGET_CPU_GPU_DEVICE_BUILTIN_CGLOBALAPI(T)
// static inline
#   define uX_TARGET_CPU_GPU_NMGLOBALAPI(T) uX_TARGET_CPU_GPU_CGLOBALAPI(T)
// inline only
#   define __uX_TARGET_CPU_GPU_NMGLOBALAPI(T) __uX_TARGET_CPU_GPU_CGLOBALAPI(T)
// static inline
#   define uX_TARGET_CPU_ONLY_NMGLOBALAPI(T) uX_TARGET_CPU_ONLY_CGLOBALAPI(T)
// inline only
#   define __uX_TARGET_CPU_ONLY_NMGLOBALAPI(T) __uX_TARGET_CPU_ONLY_CGLOBALAPI(T)
# endif

/**
Alignment macros

uX_ALIGNPREFIX and uX_ALIGNSUFFIX can be used for type alignment instead of aligning individual variables as follows:
uX_ALIGNPREFIX(16)
struct A {
...
} uX_ALIGNSUFFIX(16);
This declaration style is parsed correctly by Visual Assist.
*/

#if defined(uX_MSVC_COMPATIBLE_COMPILER) && !defined(uX_NO_ALIGN)

#       define uX_DECLALIGN(alignment, decl) __declspec(align(alignment)) decl
#       define uX_ALIGNPREFIX(alignment) __declspec(align(alignment))
#       define uX_ALIGNSUFFIX(alignment)

#       define uX_ALIGNDECL(decl, alignment) __declspec(align(alignment)) decl
#       define uX_ALIGN1DECL(decl) __declspec(align(1)) decl
#       define uX_ALIGN2DECL(decl) __declspec(align(2)) decl
#       define uX_ALIGN3DECL(decl) __declspec(align(3)) decl
#       define uX_ALIGN4DECL(decl) __declspec(align(4)) decl
#       define uX_ALIGN6DECL(decl) __declspec(align(6)) decl
#       define uX_ALIGN8DECL(decl) __declspec(align(8)) decl
#       define uX_ALIGN9DECL(decl) __declspec(align(9)) decl
#       define uX_ALIGN12DECL(decl) __declspec(align(12)) decl
#       define uX_ALIGN16DECL(decl) __declspec(align(16)) decl
#       define uX_ALIGN18DECL(decl) __declspec(align(18)) decl
#       define uX_ALIGN24DECL(decl) __declspec(align(24)) decl
#       define uX_ALIGN32DECL(decl) __declspec(align(32)) decl
#       define uX_ALIGN36DECL(decl) __declspec(align(36)) decl
#       define uX_ALIGN48DECL(decl) __declspec(align(48)) decl
#       define uX_ALIGN64DECL(decl) __declspec(align(64)) decl
#       define uX_ALIGN72DECL(decl) __declspec(align(72)) decl
#       define uX_ALIGN96DECL(decl) __declspec(align(96)) decl
#       define uX_ALIGN128DECL(decl) __declspec(align(128)) decl
#       define uX_ALIGN256DECL(decl) __declspec(align(256)) decl
#       define uX_ALIGN512DECL(decl) __declspec(align(512)) decl

#   define uXVC_ALIGNMENT(X) __declspec(align(X))
#   define uXVC_ALIGN1 __declspec(align(1))
#   define uXVC_ALIGN2 __declspec(align(2))
#   define uXVC_ALIGN3 __declspec(align(3))
#   define uXVC_ALIGN4 __declspec(align(4))
#   define uXVC_ALIGN6 __declspec(align(6))
#   define uXVC_ALIGN8 __declspec(align(8))
#   define uXVC_ALIGN9 __declspec(align(9))
#   define uXVC_ALIGN12 __declspec(align(12))
#   define uXVC_ALIGN16 __declspec(align(16))
#   define uXVC_ALIGN18 __declspec(align(18))
#   define uXVC_ALIGN24 __declspec(align(24))
#   define uXVC_ALIGN32 __declspec(align(32))
#   define uXVC_ALIGN36 __declspec(align(36))
#   define uXVC_ALIGN48 __declspec(align(48))
#   define uXVC_ALIGN64 __declspec(align(64))
#   define uXVC_ALIGN72 __declspec(align(72))
#   define uXVC_ALIGN96 __declspec(align(96))
#   define uXVC_ALIGN128 __declspec(align(128))
#   define uXVC_ALIGN256 __declspec(align(256))
#   define uXVC_ALIGN512 __declspec(align(512))

#   define uXVC_ALGN1 1
#   define uXVC_ALGN2 2
#   define uXVC_ALGN3 3
#   define uXVC_ALGN4 4
#   define uXVC_ALGN6 6
#   define uXVC_ALGN8 8
#   define uXVC_ALGN9 9
#   define uXVC_ALGN12 12
#   define uXVC_ALGN16 16
#   define uXVC_ALGN18 18
#   define uXVC_ALGN24 24
#   define uXVC_ALGN32 32
#   define uXVC_ALGN36 36
#   define uXVC_ALGN48 48
#   define uXVC_ALGN64 64
#   define uXVC_ALGN72 72
#   define uXVC_ALGN96 96
#   define uXVC_ALGN128 128
#   define uXVC_ALGN256 256
#   define uXVC_ALGN512 512

#   define uXGC_ALIGNMENT(X)
#   define uXGC_ALIGN1
#   define uXGC_ALIGN2
#   define uXGC_ALIGN3
#   define uXGC_ALIGN4
#   define uXGC_ALIGN6
#   define uXGC_ALIGN8
#   define uXGC_ALIGN9
#   define uXGC_ALIGN12
#   define uXGC_ALIGN16
#   define uXGC_ALIGN18
#   define uXGC_ALIGN24
#   define uXGC_ALIGN32
#   define uXGC_ALIGN36
#   define uXGC_ALIGN48
#   define uXGC_ALIGN64
#   define uXGC_ALIGN72
#   define uXGC_ALIGN96
#   define uXGC_ALIGN128
#   define uXGC_ALIGN256
#   define uXGC_ALIGN512

#   define uXGC_ALGN1
#   define uXGC_ALGN2
#   define uXGC_ALGN3
#   define uXGC_ALGN4
#   define uXGC_ALGN6
#   define uXGC_ALGN8
#   define uXGC_ALGN9
#   define uXGC_ALGN12
#   define uXGC_ALGN16
#   define uXGC_ALGN18
#   define uXGC_ALGN24
#   define uXGC_ALGN32
#   define uXGC_ALGN36
#   define uXGC_ALGN48
#   define uXGC_ALGN64
#   define uXGC_ALGN72
#   define uXGC_ALGN96
#   define uXGC_ALGN128
#   define uXGC_ALGN256
#   define uXGC_ALGN512

#       define uX_PREFIXALIGN(alignment) uX_ALIGNPREFIX(alignment)
#       define uX_SUFFIXALIGN(alignment) uX_ALIGNSUFFIX(alignment)

#       define uX_DECL_ALIGN(alignment, decl) uX_DECLALIGN(alignment, decl)
#       define uX_ALIGN_DECL(decl, alignment) uX_ALIGNDECL(decl, alignment)

#elif defined(uX_GNUC_TYPE_ALIGNMENT) && !defined(uX_NO_ALIGN)
#       define uX_DECLALIGN(alignment, decl) decl __attribute__((aligned(alignment)))
#       define uX_ALIGNPREFIX(alignment)
#       define uX_ALIGNSUFFIX(alignment) __attribute__((aligned(alignment)))

#       define uX_ALIGNDECL(decl, alignment) decl  __attribute__((aligned(alignment)))
#       define uX_ALIGN1DECL(decl) decl __attribute__((aligned(1)))
#       define uX_ALIGN2DECL(decl) decl __attribute__((aligned(2)))
#       define uX_ALIGN3DECL(decl) decl __attribute__((aligned(3)))
#       define uX_ALIGN4DECL(decl) decl __attribute__((aligned(4)))
#       define uX_ALIGN6DECL(decl) decl __attribute__((aligned(6)))
#       define uX_ALIGN8DECL(decl) decl __attribute__((aligned(8)))
#       define uX_ALIGN9DECL(decl) decl __attribute__((aligned(9)))
#       define uX_ALIGN12DECL(decl) decl __attribute__((aligned(12)))
#       define uX_ALIGN16DECL(decl) decl __attribute__((aligned(16)))
#       define uX_ALIGN18DECL(decl) decl __attribute__((aligned(18)))
#       define uX_ALIGN24DECL(decl) decl __attribute__((aligned(24)))
#       define uX_ALIGN32DECL(decl) decl __attribute__((aligned(32)))
#       define uX_ALIGN36DECL(decl) decl __attribute__((aligned(36)))
#       define uX_ALIGN48DECL(decl) decl __attribute__((aligned(48)))
#       define uX_ALIGN64DECL(decl) decl __attribute__((aligned(64)))
#       define uX_ALIGN72DECL(decl) decl __attribute__((aligned(72)))
#       define uX_ALIGN96DECL(decl) decl __attribute__((aligned(96)))
#       define uX_ALIGN128DECL(decl) decl __attribute__((aligned(128)))
#       define uX_ALIGN256DECL(decl) decl __attribute__((aligned(256)))
#       define uX_ALIGN512DECL(decl) decl __attribute__((aligned(512)))

#   define uXGC_ALIGNMENT(X) __attribute__((aligned(X)))
#   define uXGC_ALIGN1 __attribute__((aligned(1)))
#   define uXGC_ALIGN2 __attribute__((aligned(2)))
#   define uXGC_ALIGN3 __attribute__((aligned(3)))
#   define uXGC_ALIGN4 __attribute__((aligned(4)))
#   define uXGC_ALIGN6 __attribute__((aligned(6)))
#   define uXGC_ALIGN8 __attribute__((aligned(8)))
#   define uXGC_ALIGN9 __attribute__((aligned(9)))
#   define uXGC_ALIGN12 __attribute__((aligned(12)))
#   define uXGC_ALIGN16 __attribute__((aligned(16)))
#   define uXGC_ALIGN18 __attribute__((aligned(18)))
#   define uXGC_ALIGN24 __attribute__((aligned(24)))
#   define uXGC_ALIGN32 __attribute__((aligned(32)))
#   define uXGC_ALIGN36 __attribute__((aligned(36)))
#   define uXGC_ALIGN48 __attribute__((aligned(48)))
#   define uXGC_ALIGN64 __attribute__((aligned(64)))
#   define uXGC_ALIGN72 __attribute__((aligned(72)))
#   define uXGC_ALIGN96 __attribute__((aligned(96)))
#   define uXGC_ALIGN128 __attribute__((aligned(128)))
#   define uXGC_ALIGN256 __attribute__((aligned(256)))
#   define uXGC_ALIGN512 __attribute__((aligned(512)))

#   define uXGC_ALGN1 1
#   define uXGC_ALGN2 2
#   define uXGC_ALGN3 3
#   define uXGC_ALGN4 4
#   define uXGC_ALGN6 6
#   define uXGC_ALGN8 8
#   define uXGC_ALGN9 9
#   define uXGC_ALGN12 12
#   define uXGC_ALGN16 16
#   define uXGC_ALGN18 18
#   define uXGC_ALGN24 24
#   define uXGC_ALGN32 32
#   define uXGC_ALGN36 36
#   define uXGC_ALGN48 48
#   define uXGC_ALGN64 64
#   define uXGC_ALGN72 72
#   define uXGC_ALGN96 96
#   define uXGC_ALGN128 128
#   define uXGC_ALGN256 256
#   define uXGC_ALGN512 512

#   define uXVC_ALIGNMENT(X)
#   define uXVC_ALIGN1
#   define uXVC_ALIGN2
#   define uXVC_ALIGN3
#   define uXVC_ALIGN4
#   define uXVC_ALIGN6
#   define uXVC_ALIGN8
#   define uXVC_ALIGN9
#   define uXVC_ALIGN12
#   define uXVC_ALIGN16
#   define uXVC_ALIGN18
#   define uXVC_ALIGN24
#   define uXVC_ALIGN32
#   define uXVC_ALIGN36
#   define uXVC_ALIGN48
#   define uXVC_ALIGN64
#   define uXVC_ALIGN72
#   define uXVC_ALIGN96
#   define uXVC_ALIGN128
#   define uXVC_ALIGN256
#   define uXVC_ALIGN512

# define uXVC_ALGN1
# define uXVC_ALGN2
# define uXVC_ALGN3
# define uXVC_ALGN4
# define uXVC_ALGN6
# define uXVC_ALGN8
# define uXVC_ALGN9
# define uXVC_ALGN12
# define uXVC_ALGN16
# define uXVC_ALGN18
# define uXVC_ALGN24
# define uXVC_ALGN32
# define uXVC_ALGN36
# define uXVC_ALGN48
# define uXVC_ALGN64
# define uXVC_ALGN72
# define uXVC_ALGN96
# define uXVC_ALGN128
# define uXVC_ALGN256
# define uXVC_ALGN512

#       define uX_PREFIXALIGN(alignment) uX_ALIGNPREFIX(alignment)
#       define uX_SUFFIXALIGN(alignment) uX_ALIGNSUFFIX(alignment)

#       define uX_DECL_ALIGN(alignment, decl) uX_DECLALIGN(alignment, decl)
#       define uX_ALIGN_DECL(decl, alignment) uX_ALIGNDECL(decl, alignment)

#elif defined(uX_NO_ALIGN)
#       define uX_DECLALIGN(alignment, decl)
#       define uX_ALIGNPREFIX(alignment)
#       define uX_ALIGNSUFFIX(alignment)

#       define uX_ALIGNDECL(decl, alignment)
#       define uX_ALIGN1DECL(decl)
#       define uX_ALIGN2DECL(decl)
#       define uX_ALIGN3DECL(decl)
#       define uX_ALIGN4DECL(decl)
#       define uX_ALIGN6DECL(decl)
#       define uX_ALIGN8DECL(decl)
#       define uX_ALIGN9DECL(decl)
#       define uX_ALIGN12DECL(decl)
#       define uX_ALIGN16DECL(decl)
#       define uX_ALIGN18DECL(decl)
#       define uX_ALIGN24DECL(decl)
#       define uX_ALIGN32DECL(decl)
#       define uX_ALIGN36DECL(decl)
#       define uX_ALIGN48DECL(decl)
#       define uX_ALIGN64DECL(decl)
#       define uX_ALIGN72DECL(decl)
#       define uX_ALIGN96DECL(decl)
#       define uX_ALIGN128DECL(decl)
#       define uX_ALIGN256DECL(decl)
#       define uX_ALIGN512DECL(decl)

#   define uXVC_ALIGNMENT(X)
#   define uXVC_ALIGN1
#   define uXVC_ALIGN2
#   define uXVC_ALIGN3
#   define uXVC_ALIGN4
#   define uXVC_ALIGN6
#   define uXVC_ALIGN8
#   define uXVC_ALIGN9
#   define uXVC_ALIGN12
#   define uXVC_ALIGN16
#   define uXVC_ALIGN18
#   define uXVC_ALIGN24
#   define uXVC_ALIGN32
#   define uXVC_ALIGN36
#   define uXVC_ALIGN48
#   define uXVC_ALIGN64
#   define uXVC_ALIGN72
#   define uXVC_ALIGN96
#   define uXVC_ALIGN128
#   define uXVC_ALIGN256
#   define uXVC_ALIGN512

# define uXVC_ALGN1
# define uXVC_ALGN2
# define uXVC_ALGN3
# define uXVC_ALGN4
# define uXVC_ALGN6
# define uXVC_ALGN8
# define uXVC_ALGN9
# define uXVC_ALGN12
# define uXVC_ALGN16
# define uXVC_ALGN18
# define uXVC_ALGN24
# define uXVC_ALGN32
# define uXVC_ALGN36
# define uXVC_ALGN48
# define uXVC_ALGN64
# define uXVC_ALGN72
# define uXVC_ALGN96
# define uXVC_ALGN128
# define uXVC_ALGN256
# define uXVC_ALGN512

#   define uXGC_ALIGNMENT(X)
#   define uXGC_ALIGN1
#   define uXGC_ALIGN2
#   define uXGC_ALIGN3
#   define uXGC_ALIGN4
#   define uXGC_ALIGN6
#   define uXGC_ALIGN8
#   define uXGC_ALIGN9
#   define uXGC_ALIGN12
#   define uXGC_ALIGN16
#   define uXGC_ALIGN18
#   define uXGC_ALIGN24
#   define uXGC_ALIGN32
#   define uXGC_ALIGN36
#   define uXGC_ALIGN48
#   define uXGC_ALIGN64
#   define uXGC_ALIGN72
#   define uXGC_ALIGN96
#   define uXGC_ALIGN128
#   define uXGC_ALIGN256
#   define uXGC_ALIGN512

# define uXGC_ALGN1
# define uXGC_ALGN2
# define uXGC_ALGN3
# define uXGC_ALGN4
# define uXGC_ALGN6
# define uXGC_ALGN8
# define uXGC_ALGN9
# define uXGC_ALGN12
# define uXGC_ALGN16
# define uXGC_ALGN18
# define uXGC_ALGN24
# define uXGC_ALGN32
# define uXGC_ALGN36
# define uXGC_ALGN48
# define uXGC_ALGN64
# define uXGC_ALGN72
# define uXGC_ALGN96
# define uXGC_ALGN128
# define uXGC_ALGN256
# define uXGC_ALGN512

#       define uX_PREFIXALIGN(alignment) uX_ALIGNPREFIX(alignment)
#       define uX_SUFFIXALIGN(alignment) uX_ALIGNSUFFIX(alignment)

#       define uX_DECL_ALIGN(alignment, decl) uX_DECLALIGN(alignment, decl)
#       define uX_ALIGN_DECL(decl, alignment) uX_ALIGNDECL(decl, alignment)

#else
#       define uX_DECLALIGN(alignment, decl)
#       define uX_ALIGNPREFIX(alignment)
#       define uX_ALIGNSUFFIX(alignment)

#       define uX_ALIGNDECL(decl, alignment)
#       define uX_ALIGN1DECL(decl)
#       define uX_ALIGN2DECL(decl)
#       define uX_ALIGN3DECL(decl)
#       define uX_ALIGN4DECL(decl)
#       define uX_ALIGN6DECL(decl)
#       define uX_ALIGN8DECL(decl)
#       define uX_ALIGN9DECL(decl)
#       define uX_ALIGN12DECL(decl)
#       define uX_ALIGN16DECL(decl)
#       define uX_ALIGN18DECL(decl)
#       define uX_ALIGN24DECL(decl)
#       define uX_ALIGN32DECL(decl)
#       define uX_ALIGN36DECL(decl)
#       define uX_ALIGN48DECL(decl)
#       define uX_ALIGN64DECL(decl)
#       define uX_ALIGN72DECL(decl)
#       define uX_ALIGN96DECL(decl)
#       define uX_ALIGN128DECL(decl)
#       define uX_ALIGN256DECL(decl)
#       define uX_ALIGN512DECL(decl)

#   define uXVC_ALIGNMENT(X)
#   define uXVC_ALIGN1
#   define uXVC_ALIGN2
#   define uXVC_ALIGN3
#   define uXVC_ALIGN4
#   define uXVC_ALIGN6
#   define uXVC_ALIGN8
#   define uXVC_ALIGN9
#   define uXVC_ALIGN12
#   define uXVC_ALIGN16
#   define uXVC_ALIGN18
#   define uXVC_ALIGN24
#   define uXVC_ALIGN32
#   define uXVC_ALIGN36
#   define uXVC_ALIGN48
#   define uXVC_ALIGN64
#   define uXVC_ALIGN72
#   define uXVC_ALIGN96
#   define uXVC_ALIGN128
#   define uXVC_ALIGN256
#   define uXVC_ALIGN512

# define uXVC_ALGN1
# define uXVC_ALGN2
# define uXVC_ALGN3
# define uXVC_ALGN4
# define uXVC_ALGN6
# define uXVC_ALGN8
# define uXVC_ALGN9
# define uXVC_ALGN12
# define uXVC_ALGN16
# define uXVC_ALGN18
# define uXVC_ALGN24
# define uXVC_ALGN32
# define uXVC_ALGN36
# define uXVC_ALGN48
# define uXVC_ALGN64
# define uXVC_ALGN72
# define uXVC_ALGN96
# define uXVC_ALGN128
# define uXVC_ALGN256
# define uXVC_ALGN512

#   define uXGC_ALIGNMENT(X)
#   define uXGC_ALIGN1
#   define uXGC_ALIGN2
#   define uXGC_ALIGN3
#   define uXGC_ALIGN4
#   define uXGC_ALIGN6
#   define uXGC_ALIGN8
#   define uXGC_ALIGN9
#   define uXGC_ALIGN12
#   define uXGC_ALIGN16
#   define uXGC_ALIGN18
#   define uXGC_ALIGN24
#   define uXGC_ALIGN32
#   define uXGC_ALIGN36
#   define uXGC_ALIGN48
#   define uXGC_ALIGN64
#   define uXGC_ALIGN72
#   define uXGC_ALIGN96
#   define uXGC_ALIGN128
#   define uXGC_ALIGN256
#   define uXGC_ALIGN512

# define uXGC_ALGN1
# define uXGC_ALGN2
# define uXGC_ALGN3
# define uXGC_ALGN4
# define uXGC_ALGN6
# define uXGC_ALGN8
# define uXGC_ALGN9
# define uXGC_ALGN12
# define uXGC_ALGN16
# define uXGC_ALGN18
# define uXGC_ALGN24
# define uXGC_ALGN32
# define uXGC_ALGN36
# define uXGC_ALGN48
# define uXGC_ALGN64
# define uXGC_ALGN72
# define uXGC_ALGN96
# define uXGC_ALGN128
# define uXGC_ALGN256
# define uXGC_ALGN512

#       define uX_PREFIXALIGN(alignment) uX_ALIGNPREFIX(alignment)
#       define uX_SUFFIXALIGN(alignment) uX_ALIGNSUFFIX(alignment)

#       define uX_DECL_ALIGN(alignment, decl) uX_DECLALIGN(alignment, decl)
#       define uX_ALIGN_DECL(decl, alignment) uX_ALIGNDECL(decl, alignment)

#endif

# define uX_F64_ALGN 8
# define uX_I64_ALGN 8
# define uX_F32_ALGN 4
# define uX_I32_ALGN 4
# define uX_I16_ALGN 2
# define uX_I8_ALGN 1

# define uX_F64_SIZE 8
# define uX_I64_SIZE 8
# define uX_F32_SIZE 4
# define uX_I32_SIZE 4
# define uX_I16_SIZE 2
# define uX_I8_SIZE 1

#if (defined(uX_X86_OR_X64_CPU) || defined(uX_XBOXONE))  && !defined(uX_NO_ALIGN)
# if (defined(uX_MMX_INTRINSICS) || defined(uX_3DNOW_INTRINSICS)) && (defined(uX_INTRINSET) && (uX_INTRINSET >= 2) && (uX_INTRINSET <= 9)) && \
                                                !defined(uX_AVX256_INTRINSICS) && !defined(uX_AVX512_INTRINSICS) && !defined(uX_SSE_INTRINSICS)
#           define uX_PACK_PUSH_ uX_PACK_PUSH_8
#           define uXVC_ALGN uXVC_ALGN8
#           define uXVC_ALIGN_F32 uXVC_ALIGN8
#           define uXVC_ALIGN_F64 uXVC_ALIGN8
#           define uXVC_ALIGN_REAL uXVC_ALIGN8
#           define uXVC_ALIGN uXVC_ALIGN8

#           define uXGC_ALGN uXGC_ALGN8
#           define uXGC_ALIGN_F32 uXGC_ALIGN8
#           define uXGC_ALIGN_F64 uXGC_ALIGN8
#           define uXGC_ALIGN_REAL uXGC_ALIGN8
#           define uXGC_ALIGN uXGC_ALIGN8

#           define uX_ALIGN_F32DECL(decl) uX_ALIGN8DECL(decl)
#           define uX_ALIGN_F64DECL(decl) uX_ALIGN8DECL(decl)
#           define uX_ALIGN_REALDECL(decl) uX_ALIGN8DECL(decl)
#           define uX_ALIGNDECLN(decl) uX_ALIGN8DECL(decl)
# elif defined(uX_SSE_INTRINSICS) && (defined(uX_INTRINSET) && (uX_INTRINSET >= 10) && (uX_INTRINSET <= 42)) && !defined(uX_AVX256_INTRINSICS) && !defined(uX_AVX512_INTRINSICS)
#           define uX_PACK_PUSH_ uX_PACK_PUSH_16
#           define uXVC_ALGN uXVC_ALGN16
#           define uXVC_ALIGN_F32 uXVC_ALIGN16
#           define uXVC_ALIGN_F64 uXVC_ALIGN16
#           define uXVC_ALIGN_REAL uXVC_ALIGN16
#           define uXVC_ALIGN uXVC_ALIGN16

#           define uXGC_ALGN uXGC_ALGN16
#           define uXGC_ALIGN_F32 uXGC_ALIGN16
#           define uXGC_ALIGN_F64 uXGC_ALIGN16
#           define uXGC_ALIGN_REAL uXGC_ALIGN16
#           define uXGC_ALIGN uXGC_ALIGN16

#           define uX_ALIGN_F32DECL(decl) uX_ALIGN16DECL(decl)
#           define uX_ALIGN_F64DECL(decl) uX_ALIGN16DECL(decl)
#           define uX_ALIGN_REALDECL(decl) uX_ALIGN16DECL(decl)
#           define uX_ALIGNDECLN(decl) uX_ALIGN16DECL(decl)
# elif defined(uX_AVX256_INTRINSICS) && (defined(uX_INTRINSET) && (uX_INTRINSET >= 50) && (uX_INTRINSET <= 52)) && !defined(uX_AVX512_INTRINSICS) && !defined(uX_SSE_INTRINSICS)
#if defined(_MSC_VER) && !defined(__INTEL_COMPILER)
#           define uX_PACK_PUSH_ uX_PACK_PUSH_16
#else
#           define uX_PACK_PUSH_ uX_PACK_PUSH_32
#endif
#           define uXVC_ALGN uXVC_ALGN32
#           define uXVC_ALIGN_F32 uXVC_ALIGN32
#           define uXVC_ALIGN_F64 uXVC_ALIGN32
#           define uXVC_ALIGN_REAL uXVC_ALIGN32
#           define uXVC_ALIGN uXVC_ALIGN32

#           define uXGC_ALGN uXGC_ALGN32
#           define uXGC_ALIGN_F32 uXGC_ALIGN32
#           define uXGC_ALIGN_F64 uXGC_ALIGN32
#           define uXGC_ALIGN_REAL uXGC_ALIGN32
#           define uXGC_ALIGN uXGC_ALIGN32

#           define uX_ALIGN_F32DECL(decl) uX_ALIGN32DECL(decl)
#           define uX_ALIGN_F64DECL(decl) uX_ALIGN32DECL(decl)
#           define uX_ALIGN_REALDECL(decl) uX_ALIGN32DECL(decl)
#           define uX_ALIGNDECLN(decl) uX_ALIGN32DECL(decl)
# elif defined(uX_AVX512_INTRINSICS) && (defined(uX_INTRINSET) && (uX_INTRINSET >= 60)) && !defined(uX_AVX256_INTRINSICS) && !defined(uX_SSE_INTRINSICS)
#if defined(_MSC_VER) && !defined(__INTEL_COMPILER)
#           define uX_PACK_PUSH_ uX_PACK_PUSH_16
#else
#           define uX_PACK_PUSH_ uX_PACK_PUSH_64
#endif
#           define uXVC_ALGN uXVC_ALGN64
#           define uXVC_ALIGN_F32 uXVC_ALIGN64
#           define uXVC_ALIGN_F64 uXVC_ALIGN64
#           define uXVC_ALIGN_REAL uXVC_ALIGN64
#           define uXVC_ALIGN uXVC_ALIGN64

#           define uXGC_ALGN uXGC_ALGN64
#           define uXGC_ALIGN_F32 uXGC_ALIGN64
#           define uXGC_ALIGN_F64 uXGC_ALIGN64
#           define uXGC_ALIGN_REAL uXGC_ALIGN64
#           define uXGC_ALIGN uXGC_ALIGN64

#           define uX_ALIGN_F32DECL(decl) uX_ALIGN64DECL(decl)
#           define uX_ALIGN_F64DECL(decl) uX_ALIGN64DECL(decl)
#           define uX_ALIGN_REALDECL(decl) uX_ALIGN64DECL(decl)
#           define uX_ALIGNDECLN(decl) uX_ALIGN64DECL(decl)
#else  /* building all x86/x64 intrinsics sizes, defaults to SSE compatibility size, defend your code against sizes accidentally mixing*/
#           define uX_PACK_PUSH_ uX_PACK_PUSH_16
#           define uXVC_ALGN uXVC_ALGN16
#           define uXVC_ALIGN_F32 uXVC_ALIGN16
#           define uXVC_ALIGN_F64 uXVC_ALIGN16
#           define uXVC_ALIGN_REAL uXVC_ALIGN16
#           define uXVC_ALIGN uXVC_ALIGN16

#           define uXGC_ALGN uXGC_ALGN16
#           define uXGC_ALIGN_F32 uXGC_ALIGN16
#           define uXGC_ALIGN_F64 uXGC_ALIGN16
#           define uXGC_ALIGN_REAL uXGC_ALIGN16
#           define uXGC_ALIGN uXGC_ALIGN16

#           define uX_ALIGN_F32DECL(decl) uX_ALIGN16DECL(decl)
#           define uX_ALIGN_F64DECL(decl) uX_ALIGN16DECL(decl)
#           define uX_ALIGN_REALDECL(decl) uX_ALIGN16DECL(decl)
#           define uX_ALIGNDECLN(decl) uX_ALIGN16DECL(decl)
# endif
#elif defined(uX_ARM) && !defined(uX_NO_ALIGN)
#           define uX_PACK_PUSH_ uX_PACK_PUSH_8
#           define uXVC_ALGN uXVC_ALGN8
#           define uXVC_ALIGN_F32 uXVC_ALIGN8
#           define uXVC_ALIGN_F64 uXVC_ALIGN8
#           define uXVC_ALIGN_REAL uXVC_ALIGN8
#           define uXVC_ALIGN uXVC_ALIGN8

#           define uXGC_ALGN uXGC_ALGN8
#           define uXGC_ALIGN_F32 uXGC_ALIGN8
#           define uXGC_ALIGN_F64 uXGC_ALIGN8
#           define uXGC_ALIGN_REAL uXGC_ALIGN8
#           define uXGC_ALIGN uXGC_ALIGN8

#           define uX_ALIGN_F32DECL(decl) uX_ALIGN8DECL(decl)
#           define uX_ALIGN_F64DECL(decl) uX_ALIGN8DECL(decl)
#           define uX_ALIGN_REALDECL(decl) uX_ALIGN8DECL(decl)
#           define uX_ALIGNDECLN(decl) uX_ALIGN8DECL(decl)
#elif defined(uX_PS3) && !defined(uX_NO_ALIGN)
#           define uX_PACK_PUSH_ uX_PACK_PUSH_128
#           define uXVC_ALGN uXVC_ALGN128
#           define uXVC_ALIGN_F32 uXVC_ALIGN128
#           define uXVC_ALIGN_F64 uXVC_ALIGN128
#           define uXVC_ALIGN_REAL uXVC_ALIGN128
#           define uXVC_ALIGN uXVC_ALIGN128

#           define uXGC_ALGN uXGC_ALGN128
#           define uXGC_ALIGN_F32 uXGC_ALIGN128
#           define uXGC_ALIGN_F64 uXGC_ALIGN128
#           define uXGC_ALIGN_REAL uXGC_ALIGN128
#           define uXGC_ALIGN uXGC_ALIGN128

#           define uX_ALIGN_F32DECL(decl) uX_ALIGN128DECL(decl)
#           define uX_ALIGN_F64DECL(decl) uX_ALIGN128DECL(decl)
#           define uX_ALIGN_REALDECL(decl) uX_ALIGN128DECL(decl)
#           define uX_ALIGNDECLN(decl) uX_ALIGN128DECL(decl)
#elif defined(uX_NO_ALIGN)
#           define uX_PACK_PUSH_
#           define uXVC_ALGN uXVC_ALGN4
#           define uXVC_ALIGN_F32 uXVC_ALIGN4
#           define uXVC_ALIGN_F64 uXVC_ALIGN4
#           define uXVC_ALIGN_REAL uXVC_ALIGN4
#           define uXVC_ALIGN uXVC_ALIGN4

#           define uXGC_ALGN uXGC_ALGN4
#           define uXGC_ALIGN_F32 uXGC_ALIGN4
#           define uXGC_ALIGN_F64 uXGC_ALIGN4
#           define uXGC_ALIGN_REAL uXGC_ALIGN4
#           define uXGC_ALIGN uXGC_ALIGN4

#           define uX_ALIGN_F32DECL(decl) uX_ALIGN4DECL(decl)
#           define uX_ALIGN_F64DECL(decl) uX_ALIGN4DECL(decl)
#           define uX_ALIGN_REALDECL(decl) uX_ALIGN4DECL(decl)
#           define uX_ALIGNDECLN(decl) uX_ALIGN4DECL(decl)
#else
#           define uX_PACK_PUSH_
#           define uXVC_ALGN uXVC_ALGN4
#           define uXVC_ALIGN_F32 uXVC_ALIGN4
#           define uXVC_ALIGN_F64 uXVC_ALIGN4
#           define uXVC_ALIGN_REAL uXVC_ALIGN4
#           define uXVC_ALIGN uXVC_ALIGN4

#           define uXGC_ALGN uXGC_ALGN4
#           define uXGC_ALIGN_F32 uXGC_ALIGN4
#           define uXGC_ALIGN_F64 uXGC_ALIGN4
#           define uXGC_ALIGN_REAL uXGC_ALIGN4
#           define uXGC_ALIGN uXGC_ALIGN4

#           define uX_ALIGN_F32DECL(decl) uX_ALIGN4DECL(decl)
#           define uX_ALIGN_F64DECL(decl) uX_ALIGN4DECL(decl)
#           define uX_ALIGN_REALDECL(decl) uX_ALIGN4DECL(decl)
#           define uX_ALIGNDECLN(decl) uX_ALIGN4DECL(decl)
#endif

//////////////////////////////////////////////////////////////////////////
// Math and constants align macro

// sample use uX_NMALIGN(valor)
#if defined(uX_UNALIGNED_MATH_CONST_ALIGN) && !defined(uX_NO_ALIGN_MATH_INITIALIZED_CONST)
// unaligned initialized constants
#   define uX_NMALIGN(decl) uX_ALIGNDECLN(decl)
#else
#   define uX_NMALIGN(decl) decl
#endif

// aligned initialized constants
#if !defined(uX_NO_ALIGN_MATH_INITIALIZED_CONST)

#       define uX_NMALIGN1(decl) uX_ALIGN1DECL(decl)
#       define uX_NMALIGN2(decl) uX_ALIGN2DECL(decl)
#       define uX_NMALIGN4(decl) uX_ALIGN4DECL(decl)
#       define uX_NMALIGN8(decl) uX_ALIGN8DECL(decl)
#       define uX_NMALIGN16(decl) uX_ALIGN16DECL(decl)
#       define uX_NMALIGN32(decl) uX_ALIGN32DECL(decl)
#       define uX_NMALIGN64(decl) uX_ALIGN64DECL(decl)

#       define uX_NMPACK_PUSH uX_PACK_PUSH_
#       define uX_NMPACK_PUSH1 uX_PACK_PUSH_1
#       define uX_NMPACK_PUSH2 uX_PACK_PUSH_2
#       define uX_NMPACK_PUSH4 uX_PACK_PUSH_4
#       define uX_NMPACK_PUSH8 uX_PACK_PUSH_8
#       define uX_NMPACK_PUSH16 uX_PACK_PUSH_16
#       define uX_NMPACK_PUSH32 uX_PACK_PUSH_32
#       define uX_NMPACK_PUSH64 uX_PACK_PUSH_64

#else
#       define uX_NMALIGN1(decl) decl
#       define uX_NMALIGN2(decl) decl
#       define uX_NMALIGN4(decl) decl
#       define uX_NMALIGN8(decl) decl
#       define uX_NMALIGN16(decl) decl
#       define uX_NMALIGN32(decl) decl
#       define uX_NMALIGN64(decl) decl
#endif
//////////////////////////////////////////////////////////////////////////

#   define  uX_4x4ARRAY_2LOOP_UNROLL4(remval, unroll1, unroll2, refval) \
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
- To deprecate a function: Place uX_DEPRECATED at the start of the function header (leftmost word).
- To deprecate a 'typedef, a 'struct' or a 'class': Place uX_DEPRECATED directly after the keywords ('typdef', 'struct', 'class').
*/
#if defined(uX_MSVC_COMPATIBLE_COMPILER)
#   if (defined(uX_WINDOWS) || defined(uX_XBOXONE) || defined(uX_ARM)) && (_MSC_VER >= 1300) && !defined(MIDL_PASS)
#       define uX_DEPRECATED(T) __declspec(deprecated) T
#       define uX_DEPRECATED2(T,MSG) __declspec(deprecated(MSG)) T
#   else
#       define uX_DEPRECATED /* nothing */
#       define uX_DEPRECATED2(MSG) /* nothing */
#   endif
#elif defined(uX_GCC_COMPATIBLE_COMPILER) || defined(uX_IBMC)
#       define uX_DEPRECATED(T) __attribute__((deprecated)) T
#       define uX_DEPRECATED2(T,MSG) __attribute__((deprecated)(MSG)) T
#else
#       define uX_DEPRECATED(T) T
#       define uX_DEPRECATED2(T,MSG) T
#endif

// VC6 no '__FUNCTION__' workaround
#if defined(uX_VC6) && !defined(__FUNCTION__)
#   define __FUNCTION__ "Undefined"
#endif

#if defined(uX_MSVC_COMPATIBLE_COMPILER)
#   define uX_OFFSET_OF(X, Y) offsetof(X, Y)
#elif defined(uX_GCC_COMPATIBLE_COMPILER)
#   define uX_OFFSET_OF(X, Y) __builtin_offsetof(X, Y)
#else
#   define uX_OFFSET_OF(X, Y)
#endif

#define uX_OFFSETOF_BASE 0x100 // casting the null ptr takes a special-case code path, which we don't want
#define uX_OFFSET_OF_RT(Class, Member)                                                                                 \
    (reinterpret_cast<uXsize_t>(&reinterpret_cast<Class*>(uX_OFFSETOF_BASE)->Member) - uXsize_t(uX_OFFSETOF_BASE))

// use the compiler friendly but programmer ugly version for release only
#ifdef uX_DEBUG
#   define uX_MULTILINE_MACRO_BEGIN do {
#   define uX_MULTILINE_MACRO_END       } while(0)
#else
#       define uX_MULTILINE_MACRO_BEGIN if(1) {
#       define uX_MULTILINE_MACRO_END       } else
#endif

#if  defined(uX_CUDACC)
#       define uX_BREAKPOINT(ID) _builtin_trap();
#elif defined(uX_X86_OR_X64_CPU) || defined(uX_XBOXONE)
#   if defined(uX_VC)
#       define uX_BREAKPOINT(ID) __debugbreak();
#   elif defined(uX_NACL) // not allowed raise interrupts
#       define uX_BREAKPOINT(ID) ((*((int*)0)) = ID);
#   elif defined(uX_GCC_COMPATIBLE_COMPILER)
#       define uX_BREAKPOINT(ID) __builtin_trap();
#   else
#       define uX_BREAKPOINT(ID) ((*((int*)0)) = ID);
#   endif
#elif defined(uX_XBOX360)
#   if defined(uX_VC)
#       define uX_BREAKPOINT(ID) __debugbreak();
#   else
#       define uX_BREAKPOINT(ID) ((*((int*)0)) = ID);
#   endif
#elif defined(uX_PS3_PPU)
#       define uX_BREAKPOINT(ID) __asm__ volatile ( "tw 31,1,1" )
#elif defined(uX_PS3_SPU)
#       define uX_BREAKPOINT(ID) __asm__ volatile ("ilhu $0, %0\n\tiohl $0, %1\n\tstopd $0,$0,$0" : : "i"(ID>>16), "i"(ID&0xFFFF) );
#elif defined(uX_WIIU)
#       define uX_BREAKPOINT(ID) OSDebug();
#elif defined(uX_GEKKO)
#       define uX_BREAKPOINT(ID)    uX_MULTILINE_MACRO_BEGIN                        \
                                                                                                                                {                                               \
                                    register unsigned int uX_ORIGINAL_MSR;      \
                                    register unsigned int uX_NEW_MSR;           \
                                    asm volatile                                \
                                                                                                                                                {                                           \
                                        mfmsr uX_ORIGINAL_MSR;                  /* Grab the original value of the MSR */ \
                                        ori uX_NEW_MSR, uX_ORIGINAL_MSR, 0x400; /* or the original MSR with 0x400 and store it */ \
                                        mtmsr uX_NEW_MSR;                       /* Set the MSR to the new value - this will throw exception 0xD00 */ \
                                        mtmsr uX_ORIGINAL_MSR;                  /* This puts the MSR back to its original state; required for*/\
                                                                                /* getting out of single-step mode (when the user resumes) */\
                                                                                                                                                }                                           \
                                                                                                                                }                                               \
                                uX_MULTILINE_MACRO_END

#elif defined(uX_ARM)
#   if defined(uX_VC)
#       define uX_BREAKPOINT(ID) __debugbreak();
#   elif defined(uX_SNC)
#       define uX_BREAKPOINT(ID) __breakpoint(0);
#   elif defined(uX_GCC_COMPATIBLE_COMPILER)
#       define uX_BREAKPOINT(ID) __builtin_trap();
#   else
#       define uX_BREAKPOINT(ID) ((*((int*)0)) = ID);
#   endif
#elif defined(uX_CTR)
#   include <nn/dbg.h>
#       define uX_BREAKPOINT(ID) ::nn::dbg::Break(nn::dbg::BREAK_REASON_ASSERT);
#else
#       define uX_BREAKPOINT(ID) ((*((int*)0)) = ID);
#endif

#if (defined(uX_GCC_COMPATIBLE_COMPILER) || defined(uX_ARM_COMPILER)) && defined(__ELF__)
#       define uX_USE_DISPATCH_POINTER_SECTION  __attribute__((section(".data.DispatchPointer")))
#       define uX_USE_DISPATCH_FUNCTION_SECTION __attribute__((section(".text.DispatchFunction")))
#  if defined(uX_ARCH_ARM)
#       define uX_USE_DISPATCH_TABLE_SECTION __attribute__((section(".rodata.DispatchTable,\"a\",%progbits @")))
#  else
#       define uX_USE_DISPATCH_TABLE_SECTION __attribute__((section(".rodata.DispatchTable,\"a\",@progbits #")))
#  endif
#elif (defined(uX_GCC_COMPATIBLE_COMPILER) || defined(uX_ARM_COMPILER)) && defined(__MACH__)
#       define uX_USE_DISPATCH_POINTER_SECTION  __attribute__((section("__DATA,__data.DispPtr")))
#       define uX_USE_DISPATCH_FUNCTION_SECTION __attribute__((section("__TEXT,__text.DispFun")))
#       define uX_USE_DISPATCH_TABLE_SECTION    __attribute__((section("__DATA,__const.DispTbl")))
#elif defined(uX_MSVC_COMPATIBLE_COMPILER)
#       define uX_USE_DISPATCH_POINTER_SECTION __declspec(allocate(".data$DispatchPointer"))
/* __declspec(allocate(...)) works with data only. Use pragma for code. */
#       define uX_USE_DISPATCH_FUNCTION_SECTION
#       define uX_USE_DISPATCH_TABLE_SECTION   __declspec(allocate(".rdata$DispatchTable"))
#else
#error "Unsupported compiler or output format"
#endif

/// Note that alignment must be a power of two for this to work.
/// Note: to use this macro you must cast your pointer to a byte pointer or to an integer value.
#   define uX_NEXT_MULTIPLE_OF(Alignment, Value)  ( ((Value) + ((Alignment)-1)) & (~((Alignment)+(Value)*0-1)) )

/// The offset of a member within a structure
#   define uX_OFFSET_OFCLASS(Class, Member) int(reinterpret_cast<long>(&(reinterpret_cast<Class*>(16)->Member))-16)

/// A check for whether the offset of a member within a structure is as expected
#   define uX_OFFSET_EQUALS(Class, Member, Offset) (uX_OFFSET_OFCLASS(Class,Member)==Offset)

//
// Helper macro THRUST_JOIN (based on BOOST_JOIN):
// The following piece of macro magic joins the two
// arguments together, even when one of the arguments is
// itself a macro (see 16.3.1 in C++ standard).  The key
// is that macro expansion of macro arguments does not
// occur in THRUST_DO_JOIN2 but does in THRUST_DO_JOIN.
//
/// Join two preprocessor tokens, even when a token is itself a macro.
#   define uX_JOIN(A,B) uX_JOIN2(A,B)
#   define uX_JOIN2(A,B) uX_JOIN3(A,B)
#   define uX_JOIN3(A,B) A##B

/// Creates an uninitialized buffer large enough for object of type TYPE to fit in while aligned to ALIGN boundary. Creates a pointer VAR to this aligned address.
#   define uX_DECLARE_ALIGNED_LOCAL_PTR( TYPE, VAR, ALIGN  )                                        \
    const int VAR ## BufferSize = ALIGN + sizeof(TYPE);                                             \
    char VAR ## Buffer[VAR ## BufferSize];                                                          \
    TYPE* VAR = reinterpret_cast<TYPE*>(uX_NEXT_MULTIPLE_OF(ALIGN, unsigned long(VAR ## Buffer)));  

#   define uX_SIZE_OF(Class, Member)            sizeof(((Class*)0)->Member)

#ifdef __cplusplus
// avoid unreferenced parameter warning
// preferred solution: omit the parameter's name from the declaration
template <class T>
uX_TARGET_CPU_GPU_INLINE(void) uX_UNREFPAR_UNUSED(T const&) uX_CPU_AMP {}
#   define uX_UNUSED(_P) uX_UNREFPAR_UNUSED(_P)
#else
#   define uX_UNUSED(_P) (void)(_P)
#endif //__cplusplus

// An expression that should expand to nothing in non uX_DEBUG builds.
// currently use this only for tagging the purpose of containers for memory use tracking.
#if defined(uX_DEBUG)
#   define uX_DEBUG_EXP(x) (x)
#   define uX_DEBUG_EXP_C(x) x,
#else
#   define uX_DEBUG_EXP(x)
#   define uX_DEBUG_EXP_C(x)
#endif

#if defined(uX_INTRIN_DEBUG)
/*
#   define uX_INTRIN_VEC_DEBUG 1
#include <iostream>
/ * Figure out whether and how to define the output operators * /
#if defined(_IOSTREAM_) || defined(_CPP_IOSTREAM) || defined(_GLIBCXX_IOSTREAM) || defined(_LIBCPP_IOSTREAM)
#   define uX_INTRINVEC_OUTPUT_OPERATORS 1
#   define uX_STDOSTREAM std::ostream
#elif defined(_INC_IOSTREAM) || defined(_IOSTREAM_H_)
#   define uX_INTRINVEC_OUTPUT_OPERATORS 1
#   define uX_STDOSTREAM ostream
#endif*/

#endif

#   define uX_SIGN_BITMASK      0x80000000

// Macro for avoiding default assignment and copy
// because NoCopy inheritance can increase class size on some platforms.
#   define uX_NOCOPY(Class) \
    Class(const Class &); \
    Class &operator=(const Class &);

// use in a cpp file to suppress LNK4221
#if defined(uX_MSVC_COMPATIBLE_COMPILER)
#   define uX_DUMMY_SYMBOL namespace { char uXDummySymbol; }
#else
#   define uX_DUMMY_SYMBOL
#endif

#if defined(uX_GCC_COMPATIBLE_COMPILER)
#   define uX_WEAK_SYMBOL __attribute__((weak)) // this is to support SIMD constant merging in template specialization
#else
#   define uX_WEAK_SYMBOL
#endif

#ifndef uX_USE_DOUBLE_PRECISION

# if defined(uX_AMP_USE_PRECISE_PRECISION)
#   define ampmath(Name) __dp_math_##Name
# elif defined(uX_AMP_USE_FAST_PRECISION)
#   define ampmath(Name) __dp_d3d_##Name
# endif

# if defined(uX_CUDA_SUPPORT)
// gets expanded to __nv_Name
#   define nvmath(Name)   __nv_##Name
# endif
#else

# if defined(uX_AMP_USE_PRECISE_PRECISION)
#   define ampmath(Name) __dp_math_##Name
# elif defined(uX_AMP_SUPPORT) && defined(uX_AMP_USE_FAST_PRECISION)
#error : AMP concurrency fast_math don't have double precision and double precision cannot be used with fast math in all situations
# endif

# if defined(uX_CUDA_SUPPORT)
// gets expanded to __nv_Name
#   define nvmath(Name)   __nv_##Name
# elif defined(uX_CUDA_SUPPORT) && defined(uX_CUDA_USE_FAST_PRECISION)
#error : CUDA fast math don't have double precision and double precision cannot be used with fast math in all situations
# endif
#endif /* uX_USE_DOUBLE_PRECISION */

//#if defined(uX_DIRECTXMATH_SUPPORT)
#   define namespace_DirectX namespace DirectX {
#   define namespace_DirectX_end }
//#endif

#   define namespace_uX namespace uX {
#   define namespace_uX_end }

#   define namespace_CPU namespace CPU {
#   define namespace_CPU_end }

#   define namespace_internal namespace _internal {
#   define namespace_internal_end }

#   define namespace_uXOAMP namespace uXOAMP {
#   define namespace_uXOAMP_end }

#   define namespace_Math namespace Math {
#   define namespace_Math_end }

#if defined(uX_AMP_SUPPORT)
#   define namespace_AMP namespace AMP {
#   define namespace_AMP_end }

#   define namespace_AMPMath namespace AMPMath {
#   define namespace_AMPMath_end }
#endif

#   define namespace_uXTemplate namespace uXTemplate {
#   define namespace_uXTemplate_end }

#   define namespace_uXTMath namespace uXTMath {
#   define namespace_uXTMath_end }

#if defined(uX_SSE_INTRINSICS)
#   define namespace_uXSSE namespace uXSSE {
#   define namespace_uXSSE_end }
#endif

#if defined(uX_CUDA_SUPPORT)
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

#   define namespace_XMM namespace xmm {
#   define namespace_XMM_end }

#   define namespace_YMM namespace ymm {
#   define namespace_YMM_end }

#   define namespace_ZMM namespace zmm {
#   define namespace_ZMM_end }

/*
namespace_uXOAMP
namespace_uXOAMP_end*/
/*namespace uX = uXOAMP;*/

# if !defined(uX_NO_DIRECTXMATH_SUPPORT)
/*
namespace_DirectX
namespace_DirectX_end*/
/*namespace DX = DirectX;*/
# endif

#endif // uX_BASEDEFS_H
