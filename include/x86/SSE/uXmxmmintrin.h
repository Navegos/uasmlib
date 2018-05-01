
#pragma once

#ifndef uXm_XMM_INTRIN_H
#define uXm_XMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifndef uXm_MM_INTRIN_H
#include "../MMX/uXmmmintrin.h"
#endif  /* uXm_MM_INTRIN_H */

#ifndef uXm_MMX_STRUCTS_H
#include "../MMX/uxmMMXStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

#ifndef uXm_SSE_STRUCTS_H
#include "uxmSSEStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

/*******************************************************/
/* MACRO for shuffle parameter for _uXm_m128_shuffle_ps(). */
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of _uXm_m128_shuffle_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of _uXm_m128_shuffle_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/*******************************************************/
#define _uXm_MM_SHUFFLE4(fp3,fp2,fp1,fp0) (((fp3) << 6) | ((fp2) << 4) | ((fp1) << 2) | (fp0))
#define _uXm_MM_SHUFFLER4(fp0,fp1,fp2,fp3) (((fp0) | ((fp1) << 2) | ((fp2) << 4) | (fp3) << 6))

/*******************************************************/
/* MACRO for use _uXm_m128_prefetch_*().				*/
/* _uXm_M128_PREFETCH_IM(Inmem, 0); */
/*******************************************************/
#define _uXm_M128_PREFETCH_IM(mem,sel) _uXm_m128_prefetch_##sel##(mem)

/* constants for use with _uXm_m128_prefetch */
#define _uXm_MM_HINT_NTA    0
#define _uXm_MM_HINT_T0     1
#define _uXm_MM_HINT_T1     2
#define _uXm_MM_HINT_T2     3
// The values below are not yet supported.
//#define _uXm_MM_HINT_ENTA   4
//#define _uXm_MM_HINT_ET0    5
//#define _uXm_MM_HINT_ET1    6
//#define _uXm_MM_HINT_ET2    7

/* MACRO functions for setting and reading the MXCSR */
#define _uXm_MM_EXCEPT_MASK       0x003f
#define _uXm_MM_EXCEPT_INVALID    0x0001
#define _uXm_MM_EXCEPT_DENORM     0x0002
#define _uXm_MM_EXCEPT_DIV_ZERO   0x0004
#define _uXm_MM_EXCEPT_OVERFLOW   0x0008
#define _uXm_MM_EXCEPT_UNDERFLOW  0x0010
#define _uXm_MM_EXCEPT_INEXACT    0x0020

#define _uXm_MM_MASK_MASK         0x1f80
#define _uXm_MM_MASK_INVALID      0x0080
#define _uXm_MM_MASK_DENORM       0x0100
#define _uXm_MM_MASK_DIV_ZERO     0x0200
#define _uXm_MM_MASK_OVERFLOW     0x0400
#define _uXm_MM_MASK_UNDERFLOW    0x0800
#define _uXm_MM_MASK_INEXACT      0x1000

#define _uXm_MM_ROUND_MASK        0x6000
#define _uXm_MM_ROUND_NEAREST     0x0000
#define _uXm_MM_ROUND_DOWN        0x2000
#define _uXm_MM_ROUND_UP          0x4000
#define _uXm_MM_ROUND_TOWARD_ZERO 0x6000

#define _uXm_MM_FLUSH_ZERO_MASK   0x8000
#define _uXm_MM_FLUSH_ZERO_ON     0x8000
#define _uXm_MM_FLUSH_ZERO_OFF    0x0000

#define _uXm_MM_SET_EXCEPTION_STATE(mask)                               \
            _uXm_mm_setcsr((_uXm_mm_getcsr() & ~_uXm_MM_EXCEPT_MASK) | (mask))
#define _uXm_MM_GET_EXCEPTION_STATE()                                   \
            (_uXm_mm_getcsr() & _uXm_MM_EXCEPT_MASK)

#define _uXm_MM_SET_EXCEPTION_MASK(mask)                                \
            _uXm_mm_setcsr((_uXm_mm_getcsr() & ~_uXm_MM_MASK_MASK) | (mask))
#define _uXm_MM_GET_EXCEPTION_MASK()                                    \
            (_uXm_mm_getcsr() & _uXm_MM_MASK_MASK)

#define _uXm_MM_SET_ROUNDING_MODE(mode)                                 \
            _uXm_mm_setcsr((_uXm_mm_getcsr() & ~_uXm_MM_ROUND_MASK) | (mode))
#define _uXm_MM_GET_ROUNDING_MODE()                                     \
            (_uXm_mm_getcsr() & _uXm_MM_ROUND_MASK)

#define _uXm_MM_SET_FLUSH_ZERO_MODE(mode)                               \
            _uXm_mm_setcsr((_uXm_mm_getcsr() & ~_uXm_MM_FLUSH_ZERO_MASK) | (mode))
#define _uXm_MM_GET_FLUSH_ZERO_MODE()                                   \
            (_uXm_mm_getcsr() & _uXm_MM_FLUSH_ZERO_MASK)

#ifndef uXm128f_XMM_INTRIN_H
#include "uXm128f/uXm128fxmmintrin.h"
#endif  /* uXm128f_XMM_INTRIN_H */

#ifndef uXm128_XMM_INTRIN_H
#include "uXm128/uXm128xmmintrin.h"
#endif  /* uXm128_XMM_INTRIN_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * memory & initialization
 */

/*
 * FP, stores
 */

// __m128 START
extern void _uXm_cm128_store_m128f_ps(__m128* OutPXmm_A, __uXm128f InXmm_B);
extern void _uXm_cm128_store_m128_ps(__m128* OutPXmm_A, __uXm128 InXmm_B);
extern void _uXm_cm128_store_Pfloat_ps(__m128* OutPXmm_A, const float* InPfloat_B);
extern void _uXm_cm128_storeu_Pfloat_ps(__m128* OutPXmm_A, const float* InPfloat_B);
// __m128 END

/*
 * FP, moves
 */

// __m128 START
extern __m128 _uXm_cm128_move_m128f_ss(__m128 InXmm_A, __uXm128f InXmm_B);
extern __m128 _uXm_cm128_move_m128f_ps1(__uXm128f InXmm_A);
extern __m128 _uXm_cm128_move_m128f_ps(__uXm128f InXmm_A);
extern __m128 _uXm_cm128_mover_m128f_ps(__uXm128f InXmm_A);

extern __m128 _uXm_cm128_move_m128_ss(__m128 InXmm_A, __uXm128 InXmm_B);
extern __m128 _uXm_cm128_move_m128_ps1(__uXm128 InXmm_A);
extern __m128 _uXm_cm128_move_m128_ps(__uXm128 InXmm_A);
extern __m128 _uXm_cm128_mover_m128_ps(__uXm128 InXmm_A);

extern float* _uXm_Pfloat_move_cm128_ss(__m128 InXmm_A, __m128 InXmm_B);
extern float* _uXm_Pfloat_move_cm128_ps1(__m128 InXmm_A);
extern float* _uXm_Pfloat_move_cm128_ps(__m128 InXmm_A);
extern float* _uXm_Pfloat_mover_cm128_ps(__m128 InXmm_A);
extern float* _uXm_Pfloat_moveu_cm128_ss(__m128 InXmm_A, __m128 InXmm_B);
extern float* _uXm_Pfloat_moveu_cm128_ps1(__m128 InXmm_A);
extern float* _uXm_Pfloat_moveu_cm128_ps(__m128 InXmm_A);
extern float* _uXm_Pfloat_moveur_cm128_ps(__m128 InXmm_A);
// __m128 END

/*
 * Cacheability support
 */

extern void uXm_m128_prefetch_0(const __int8* InPInt8_A);
extern void uXm_m128_prefetch_1(const __int8* InPInt8_A);
extern void uXm_m128_prefetch_2(const __int8* InPInt8_A);
extern void uXm_m128_prefetch_3(const __int8* InPInt8_A);
extern void uXm_m128_prefetch(const __int8* InPInt8_A, int InInt_BSel);

extern void _uXm_mm_sfence(void);
extern unsigned int _uXm_mm_getcsr(void);
extern void _uXm_mm_setcsr(unsigned int InInt_A);

#ifdef __ICL
extern void* __cdecl _uXm_mm_malloc(size_t _Siz, size_t _Al);
extern void __cdecl _uXm_mm_free(void *_P);
#endif  /* __ICL */

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_XMM_INTRIN_H
