
#pragma once

#ifndef uXm_XMM_INTRIN_H
#define uXm_XMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef uXm_MM_INTRIN_H
#include "uxmmmintrin.h"
#endif  /* uXm_MM_INTRIN_H */

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
/* MACRO for use _uXm_m128_shuffle_****_ps().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of _uXm_m128_shuffle_****_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of _uXm_m128_shuffle_****_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __uXm128 temp = _uXm_M128_SHUFFLE_IMR_PS(InXmm_A, InXmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M128F_SHUFFLE_IM_PS(VA,VB,fp3,fp2,fp1,fp0) _uXm_m128f_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define _uXm_M128F_SHUFFLE_IMR_PS(VA,VB,fp0,fp1,fp2,fp3) _uXm_m128f_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define _uXm_M128_SHUFFLE_IM_PS(VA,VB,fp3,fp2,fp1,fp0) _uXm_m128_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define _uXm_M128_SHUFFLE_IMR_PS(VA,VB,fp0,fp1,fp2,fp3) _uXm_m128_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define _uXm_M128FD_SHUFFLE_IM_PS(VA,VB,fp3,fp2,fp1,fp0) _uXm_m128fd_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define _uXm_M128FD_SHUFFLE_IMR_PS(VA,VB,fp0,fp1,fp2,fp3) _uXm_m128fd_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define _uXm_M128FID_SHUFFLE_IM_PS(VA,VB,fp3,fp2,fp1,fp0) _uXm_m128fid_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define _uXm_M128FID_SHUFFLE_IMR_PS(VA,VB,fp0,fp1,fp2,fp3) _uXm_m128fid_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_m128_permute_****_ps().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of _uXm_m128_permute_****_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of _uXm_m128_permute_****_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __uXm128 temp = _uXm_M128_PERMUTE_IMR_PS(InXmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M128F_PERMUTE_IM_PS(VA,fp3,fp2,fp1,fp0) _uXm_m128f_permute_##fp3##fp2##fp1##fp0##_ps(VA)
#define _uXm_M128F_PERMUTE_IMR_PS(VA,fp0,fp1,fp2,fp3) _uXm_m128f_permute_##fp3##fp2##fp1##fp0##_ps(VA)
#define _uXm_M128_PERMUTE_IM_PS(VA,fp3,fp2,fp1,fp0) _uXm_m128_permute_##fp3##fp2##fp1##fp0##_ps(VA)
#define _uXm_M128_PERMUTE_IMR_PS(VA,fp0,fp1,fp2,fp3) _uXm_m128_permute_##fp3##fp2##fp1##fp0##_ps(VA)
#define _uXm_M128FD_PERMUTE_IM_PS(VA,fp3,fp2,fp1,fp0) _uXm_m128fd_permute_##fp3##fp2##fp1##fp0##_ps(VA)
#define _uXm_M128FD_PERMUTE_IMR_PS(VA,fp0,fp1,fp2,fp3) _uXm_m128fd_permute_##fp3##fp2##fp1##fp0##_ps(VA)
#define _uXm_M128FID_PERMUTE_IM_PS(VA,fp3,fp2,fp1,fp0) _uXm_m128fid_permute_##fp3##fp2##fp1##fp0##_ps(VA)
#define _uXm_M128FID_PERMUTE_IMR_PS(VA,fp0,fp1,fp2,fp3) _uXm_m128fid_permute_##fp3##fp2##fp1##fp0##_ps(VA)

#if defined (uXm_X86)
/*******************************************************/
/* MACRO for use _uXm_m64_pshufw_****().				*/
/* Argument word3 is a digit[0123] that represents the word*/
/* from argument "b" of _uXm_m64_pshufw_**** that will be     */
/* placed in word3 of result. word2 is the same for word2 in */
/* result. word1 is a digit[0123] that represents the word */
/* from argument "a" of _uXm_m64_pshufw_**** that will be     */
/* places in word1 of result. word0 is the same for word0 of */
/* result                                              */
/* const __uXm64 temp = _uXm_M64_PSHUFW_IMR(InXmm_A, InXmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M64F_PSHUFW_IM(VA,VB,word3,word2,word1,word0) _uXm_m64f_pshufw_##word3##word2##word1##word0##(VA,VB)
#define _uXm_M64F_PSHUFW_IMR(VA,VB,word0,word1,word2,word3) _uXm_m64f_pshufw_##word3##word2##word1##word0##(VA,VB)
#define _uXm_M64_PSHUFW_IM(VA,VB,word3,word2,word1,word0) _uXm_m64_pshufw_##word3##word2##word1##word0##(VA,VB)
#define _uXm_M64_PSHUFW_IMR(VA,VB,word0,word1,word2,word3) _uXm_m64_pshufw_##word3##word2##word1##word0##(VA,VB)
#endif  /* defined (uXm_X86) */

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
            _uXm_m128_setcsr((_uXm_m128_getcsr() & ~_uXm_MM_EXCEPT_MASK) | (mask))
#define _uXm_MM_GET_EXCEPTION_STATE()                                   \
            (_uXm_m128_getcsr() & _uXm_MM_EXCEPT_MASK)

#define _uXm_MM_SET_EXCEPTION_MASK(mask)                                \
            _uXm_m128_setcsr((_uXm_m128_getcsr() & ~_uXm_MM_MASK_MASK) | (mask))
#define _uXm_MM_GET_EXCEPTION_MASK()                                    \
            (_uXm_m128_getcsr() & _uXm_MM_MASK_MASK)

#define _uXm_MM_SET_ROUNDING_MODE(mode)                                 \
            _uXm_m128_setcsr((_uXm_m128_getcsr() & ~_uXm_MM_ROUND_MASK) | (mode))
#define _uXm_MM_GET_ROUNDING_MODE()                                     \
            (_uXm_m128_getcsr() & _uXm_MM_ROUND_MASK)

#define _uXm_MM_SET_FLUSH_ZERO_MODE(mode)                               \
            _uXm_m128_setcsr((_uXm_m128_getcsr() & ~_uXm_MM_FLUSH_ZERO_MASK) | (mode))
#define _uXm_MM_GET_FLUSH_ZERO_MODE()                                   \
            (_uXm_m128_getcsr() & _uXm_MM_FLUSH_ZERO_MASK)

/*******************************************************/
/* MACRO for performing the transpose of a 4x4 matrix  */
/* of single precision floating point values.          */
/* Arguments row0, row1, row2, and row3 are __uXm128   */
/* values whose elements form the corresponding rows   */
/* of a 4x4 matrix.  The matrix transpose is returned  */
/* in arguments row0, row1, row2, and row3 where row0  */
/* now holds column 0 of the original matrix, row1 now */
/* holds column 1 of the original matrix, etc.         */
/*******************************************************/
/*
#define _uXm_MM_TRANSPOSE4_PS(row0, row1, row2, row3) {                 \
            __uXm128 _Tmp3, _Tmp2, _Tmp1, _Tmp0;                        \
																		\
            _Tmp0   = _uXm_mm_shuffle_ps((row0), (row1), 0x44);         \
            _Tmp2   = _uXm_mm_shuffle_ps((row0), (row1), 0xEE);         \
            _Tmp1   = _uXm_mm_shuffle_ps((row2), (row3), 0x44);         \
            _Tmp3   = _uXm_mm_shuffle_ps((row2), (row3), 0xEE);		    \
																		\
            (row0) = _uXm_mm_shuffle_ps(_Tmp0, _Tmp1, 0x88);            \
            (row1) = _uXm_mm_shuffle_ps(_Tmp0, _Tmp1, 0xDD);            \
            (row2) = _uXm_mm_shuffle_ps(_Tmp2, _Tmp3, 0x88);            \
            (row3) = _uXm_mm_shuffle_ps(_Tmp2, _Tmp3, 0xDD);            \
        }
#define _uXm_MM_TRANSPOSE4F_PS(row0, row1, row2, row3) {                \
            __uXm128f _Tmp3, _Tmp2, _Tmp1, _Tmp0;                       \
																		\
            _Tmp0   = _uXm_mm_shuffle_ps((row0), (row1), 0x44);         \
            _Tmp2   = _uXm_mm_shuffle_ps((row0), (row1), 0xEE);         \
            _Tmp1   = _uXm_mm_shuffle_ps((row2), (row3), 0x44);         \
            _Tmp3   = _uXm_mm_shuffle_ps((row2), (row3), 0xEE);		    \
																		\
            (row0) = _uXm_mm_shuffle_ps(_Tmp0, _Tmp1, 0x88);            \
            (row1) = _uXm_mm_shuffle_ps(_Tmp0, _Tmp1, 0xDD);            \
            (row2) = _uXm_mm_shuffle_ps(_Tmp2, _Tmp3, 0x88);            \
            (row3) = _uXm_mm_shuffle_ps(_Tmp2, _Tmp3, 0xDD);            \
        }
#define _uXm_MM_TRANSPOSE4_IM_PS(row0, row1, row2, row3) {					\
            __uXm128 _Tmp3, _Tmp2, _Tmp1, _Tmp0;							\
																			\
            _Tmp0   = _uXm_MM_PERMUTE_IMR_PS((row0), (row1), 0,1,0,1);      \
            _Tmp2   = _uXm_MM_PERMUTE_IMR_PS((row0), (row1), 2,3,2,3);      \
            _Tmp1   = _uXm_MM_PERMUTE_IMR_PS((row2), (row3), 0,1,0,1);      \
            _Tmp3   = _uXm_MM_PERMUTE_IMR_PS((row2), (row3), 2,3,2,3);		\
																			\
            (row0) = _uXm_MM_PERMUTE_IMR_PS(_Tmp0, _Tmp1, 0,2,0,2);         \
            (row1) = _uXm_MM_PERMUTE_IMR_PS(_Tmp0, _Tmp1, 1,3,1,3);         \
            (row2) = _uXm_MM_PERMUTE_IMR_PS(_Tmp2, _Tmp3, 0,2,0,2);         \
            (row3) = _uXm_MM_PERMUTE_IMR_PS(_Tmp2, _Tmp3, 1,3,1,3);         \
        }
#define _uXm_MM_TRANSPOSE4F_IM_PS(row0, row1, row2, row3) {					\
            __uXm128f _Tmp3, _Tmp2, _Tmp1, _Tmp0;							\
																			\
            _Tmp0   = _uXm_MM_PERMUTE_IMR_PS((row0), (row1), 0,1,0,1);      \
            _Tmp2   = _uXm_MM_PERMUTE_IMR_PS((row0), (row1), 2,3,2,3);      \
            _Tmp1   = _uXm_MM_PERMUTE_IMR_PS((row2), (row3), 0,1,0,1);      \
            _Tmp3   = _uXm_MM_PERMUTE_IMR_PS((row2), (row3), 2,3,2,3);		\
																			\
            (row0) = _uXm_MM_PERMUTE_IMR_PS(_Tmp0, _Tmp1, 0,2,0,2);			\
            (row1) = _uXm_MM_PERMUTE_IMR_PS(_Tmp0, _Tmp1, 1,3,1,3);			\
            (row2) = _uXm_MM_PERMUTE_IMR_PS(_Tmp2, _Tmp3, 0,2,0,2);			\
            (row3) = _uXm_MM_PERMUTE_IMR_PS(_Tmp2, _Tmp3, 1,3,1,3);			\
        }*/

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * FP, arithmetic
 */
extern __uXm128f _uXm_m128f_add_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_add_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_sub_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_sub_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_mul_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_mul_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_div_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_div_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_sqrt_ss(__uXm128f InXmm_A);
extern __uXm128f _uXm_m128f_sqrt_ps(__uXm128f InXmm_A);
extern __uXm128f _uXm_m128f_rcp_ss(__uXm128f InXmm_A);
extern __uXm128f _uXm_m128f_rcp_ps(__uXm128f InXmm_A);
extern __uXm128f _uXm_m128f_rsqrt_ss(__uXm128f InXmm_A);
extern __uXm128f _uXm_m128f_rsqrt_ps(__uXm128f InXmm_A);
extern __uXm128f _uXm_m128f_min_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_min_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_max_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_max_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);

extern __uXm128 _uXm_m128_add_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_add_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_sub_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_sub_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_mul_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_mul_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_div_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_div_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_sqrt_ss(__uXm128 InXmm_A);
extern __uXm128 _uXm_m128_sqrt_ps(__uXm128 InXmm_A);
extern __uXm128 _uXm_m128_rcp_ss(__uXm128 InXmm_A);
extern __uXm128 _uXm_m128_rcp_ps(__uXm128 InXmm_A);
extern __uXm128 _uXm_m128_rsqrt_ss(__uXm128 InXmm_A);
extern __uXm128 _uXm_m128_rsqrt_ps(__uXm128 InXmm_A);
extern __uXm128 _uXm_m128_min_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_min_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_max_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_max_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

extern __uXm128fd _uXm_m128fd_add_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_add_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_sub_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_sub_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_mul_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_mul_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_div_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_div_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_sqrt_ss(__uXm128fd InXmm_A);
extern __uXm128fd _uXm_m128fd_sqrt_ps(__uXm128fd InXmm_A);
extern __uXm128fd _uXm_m128fd_rcp_ss(__uXm128fd InXmm_A);
extern __uXm128fd _uXm_m128fd_rcp_ps(__uXm128fd InXmm_A);
extern __uXm128fd _uXm_m128fd_rsqrt_ss(__uXm128fd InXmm_A);
extern __uXm128fd _uXm_m128fd_rsqrt_ps(__uXm128fd InXmm_A);
extern __uXm128fd _uXm_m128fd_min_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_min_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_max_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_max_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);

extern __uXm128fid _uXm_m128fid_add_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_add_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sub_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sub_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_mul_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_mul_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_div_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_div_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sqrt_ss(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_sqrt_ps(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_rcp_ss(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_rcp_ps(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_rsqrt_ss(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_rsqrt_ps(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_min_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_min_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_max_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_max_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

/*
 * FP, logical
 */

extern __uXm128f _uXm_m128f_and_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_andnot_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_or_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_xor_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);

extern __uXm128 _uXm_m128_and_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_andnot_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_or_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_xor_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

extern __uXm128fd _uXm_m128fd_and_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_andnot_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_or_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_xor_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);

extern __uXm128fid _uXm_m128fid_and_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_andnot_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_or_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_xor_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

/*
* FP, comparison
*/

extern __uXm128f _uXm_m128f_cmpeq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpeq_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmplt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmplt_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmple_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmple_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpgt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpgt_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpge_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpge_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpneq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpneq_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpnlt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpnlt_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpnle_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpnle_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpngt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpngt_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpnge_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpnge_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpord_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpord_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpunord_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_cmpunord_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);

extern __uXm128 _uXm_m128_cmpeq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpeq_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmplt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmplt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmple_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmple_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpgt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpgt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpge_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpge_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpneq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpneq_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpnlt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpnlt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpnle_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpnle_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpngt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpngt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpnge_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpnge_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpord_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpord_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpunord_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_cmpunord_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

extern __uXm128fd _uXm_m128fd_cmpeq_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpeq_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmplt_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmplt_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmple_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmple_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpgt_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpgt_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpge_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpge_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpneq_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpneq_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpnlt_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpnlt_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpnle_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpnle_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpngt_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpngt_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpnge_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpnge_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpord_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpord_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpunord_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_cmpunord_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);

extern __uXm128fid _uXm_m128fid_cmpeq_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpeq_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmplt_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmplt_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmple_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmple_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpgt_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpgt_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpge_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpge_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpneq_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpneq_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnlt_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnlt_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnle_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnle_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpngt_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpngt_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnge_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnge_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpord_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpord_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpunord_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpunord_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

/*
* FP, comparison return int
*/

extern unsigned __int8 _uXm_m128f_comieq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_comilt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_comile_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_comigt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_comige_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_comineq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_ucomieq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_ucomilt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_ucomile_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_ucomigt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_ucomige_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 _uXm_m128f_ucomineq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);

extern unsigned __int8 _uXm_m128_comieq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_comilt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_comile_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_comigt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_comige_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_comineq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_ucomieq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_ucomilt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_ucomile_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_ucomigt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_ucomige_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 _uXm_m128_ucomineq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);

extern unsigned __int8 _uXm_m128fd_comieq_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_comilt_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_comile_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_comigt_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_comige_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_comineq_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_ucomieq_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_ucomilt_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_ucomile_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_ucomigt_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_ucomige_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern unsigned __int8 _uXm_m128fd_ucomineq_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);

extern unsigned __int8 _uXm_m128fid_comieq_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comilt_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comile_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comigt_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comige_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comineq_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomieq_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomilt_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomile_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomigt_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomige_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomineq_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

/*
 * FP, conversions
 */

extern int _uXm_m128f_cvt_ss2si(__uXm128f InXmm_A);
extern int _uXm_m128f_cvtt_ss2si(__uXm128f InXmm_A);
extern __uXm128f _uXm_m128f_cvt_si2ss(__uXm128f InXmm_A, int InInt_B);
extern float _uXm_m128f_cvtss_f32(__uXm128f InXmm_A);

extern int _uXm_m128_cvt_ss2si(__uXm128 InXmm_A);
extern int _uXm_m128_cvtt_ss2si(__uXm128 InXmm_A);
extern __uXm128 _uXm_m128_cvt_si2ss(__uXm128 InXmm_A, int InInt_B);
extern float _uXm_m128_cvtss_f32(__uXm128 InXmm_A);

extern int _uXm_m128fd_cvt_ss2si(__uXm128fd InXmm_A);
extern int _uXm_m128fd_cvtt_ss2si(__uXm128fd InXmm_A);
extern __uXm128fd _uXm_m128fd_cvt_si2ss(__uXm128fd InXmm_A, int InInt_B);
extern float _uXm_m128fd_cvtss_f32(__uXm128fd InXmm_A);

extern int _uXm_m128fid_cvt_ss2si(__uXm128fid InXmm_A);
extern int _uXm_m128fid_cvtt_ss2si(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_cvt_si2ss(__uXm128fid InXmm_A, int InInt_B);
extern float _uXm_m128fid_cvtss_f32(__uXm128fid InXmm_A);

#if defined (uXm_X86)
/*
* Support for MMX extension intrinsics
*/
extern __uXm64f _uXm_m64f_cvt_ps2pi(__uXm128f InXmm_A);
extern __uXm64f _uXm_m64f_cvtt_ps2pi(__uXm128f InXmm_A);
extern __uXm128f _uXm_m64f_cvt_pi2ps(__uXm128f InXmm_A, __uXm64f Inmm_B);

extern __uXm64 _uXm_m64_cvt_ps2pi(__uXm128 InXmm_A);
extern __uXm64 _uXm_m64_cvtt_ps2pi(__uXm128 InXmm_A);
extern __uXm128 _uXm_m64_cvt_pi2ps(__uXm128 InXmm_A, __uXm64 Inmm_B);
#endif  /* defined (uXm_X86) */

#if defined (uXm_X64)
/*
* Support for 64-bit intrinsics
*/
extern __int64 _uXm_m128f_cvtss_si64(__uXm128f InXmm_A);
extern __int64 _uXm_m128f_cvttss_si64(__uXm128f InXmm_A);
extern __uXm128f  _uXm_m128f_cvtsi64_ss(__uXm128f InXmm_A, __int64 InInt_B);

extern __int64 _uXm_m128_cvtss_si64(__uXm128 InXmm_A);
extern __int64 _uXm_m128_cvttss_si64(__uXm128 InXmm_A);
extern __uXm128  _uXm_m128_cvtsi64_ss(__uXm128 InXmm_A, __int64 InInt_B);

extern __int64 _uXm_m128fd_cvtss_si64(__uXm128fd InXmm_A);
extern __int64 _uXm_m128fd_cvttss_si64(__uXm128fd InXmm_A);
extern __uXm128fd  _uXm_m128fd_cvtsi64_ss(__uXm128fd InXmm_A, __int64 InInt_B);

extern __int64 _uXm_m128fid_cvtss_si64(__uXm128fid InXmm_A);
extern __int64 _uXm_m128fid_cvttss_si64(__uXm128fid InXmm_A);
extern __uXm128fid  _uXm_m128fid_cvtsi64_ss(__uXm128fid InXmm_A, __int64 InInt_B);
#endif  /* defined (uXm_X64) */

/*
* FP, misc
*/
extern __uXm128f _uXm_m128f_shuffle_ps(__uXm128f InXmm_A, __uXm128f InXmm_B, unsigned int _Imm8);
extern __uXm128f _uXm_m128f_permute_ps(__uXm128f InXmm_A, unsigned int _Imm8);
extern void _uXm_m128f_transpose4_ps(__uXm128f InXmm_Row0, __uXm128f InXmm_Row1, __uXm128f InXmm_Row2, __uXm128f InXmm_Row3);

extern __uXm128f _uXm_m128f_unpackhi_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_unpacklo_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);

extern __uXm128f _uXm_m128f_movehl_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_movelh_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);

extern __uXm128f _uXm_m128f_loadh_pi(__uXm128f InXmm_A, const __uXm64f* InPmm_C);
extern __uXm128f _uXm_m128f_loadl_pi(__uXm128f InXmm_A, const __uXm64f* InPmm_C);

extern void _uXm_m128f_storeh_pi(__uXm64f* OutPmm_A, __uXm128f InXmm_B);
extern void _uXm_m28f_storel_pi(__uXm64f* OutPmm_A, __uXm128f InXmm_B);

extern int _uXm_m128f_movemask_ps(__uXm128f InXmm_A);

extern __uXm128 _uXm_m128_shuffle_ps(__uXm128 InXmm_A, __uXm128 InXmm_B, unsigned int _Imm8);
extern __uXm128 _uXm_m128_permute_ps(__uXm128 InXmm_A, unsigned int _Imm8);
extern void _uXm_m128_transpose4_ps(__uXm128 InXmm_Row0, __uXm128 InXmm_Row1, __uXm128 InXmm_Row2, __uXm128 InXmm_Row3);

extern __uXm128 _uXm_m128_unpackhi_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_unpacklo_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

extern __uXm128 _uXm_m128_movehl_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_movelh_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

extern __uXm128 _uXm_m128_loadh_pi(__uXm128 InXmm_A, const __uXm64* InPmm_B);
extern __uXm128 _uXm_m128_loadl_pi(__uXm128 InXmm_A, const __uXm64* InPmm_B);

extern void _uXm_m128_storeh_pi(__uXm64* OutPmm_A, __uXm128 InXmm_B);
extern void _uXm_m128_storel_pi(__uXm64* OutPmm_A, __uXm128 InXmm_B);

extern int _uXm_m128_movemask_ps(__uXm128 InXmm_A);

extern __uXm128fd _uXm_m128fd_shuffle_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B, unsigned int _Imm8);
extern __uXm128fd _uXm_m128fd_permute_ps(__uXm128fd InXmm_A, unsigned int _Imm8);
extern void _uXm_m128fd_transpose4_ps(__uXm128fd InXmm_Row0, __uXm128fd InXmm_Row1, __uXm128fd InXmm_Row2, __uXm128fd InXmm_Row3);

extern __uXm128fd _uXm_m128fd_unpackhi_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_unpacklo_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);

extern __uXm128fd _uXm_m128fd_movehl_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_movelh_ps(__uXm128fd InXmm_A, __uXm128fd InXmm_B);

extern int _uXm_m128fd_movemask_ps(__uXm128fd InXmm_A);

extern __uXm128fid _uXm_m128fid_shuffle_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B, unsigned int _Imm8);
extern __uXm128fid _uXm_m128fid_permute_ps(__uXm128fid InXmm_A, unsigned int _Imm8);
extern void _uXm_m128fid_transpose4_ps(__uXm128fid InXmm_Row0, __uXm128fid InXmm_Row1, __uXm128fid InXmm_Row2, __uXm128fid InXmm_Row3);

extern __uXm128fid _uXm_m128fid_unpackhi_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_unpacklo_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

extern __uXm128fid _uXm_m128fid_movehl_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_movelh_ps(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

extern int _uXm_m128fid_movemask_ps(__uXm128fid InXmm_A);

#include "uXmxmmshuffleps.h"
#include "uXmxmmpermuteps.h"

#if defined(uXm_X86)
uXm_PACK_PUSH8
/*
* Integer (MMX) extensions
*/
extern int _uXm_m64_pextrw(__uXm64 Inmm_A, int _Imm8);
extern __uXm64 _uXm_m64_pinsrw(__uXm64 Inmm_A, int InInt_B, int _Imm8);
extern __uXm64 _uXm_m64_pmaxsw(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 _uXm_m64_pmaxub(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 _uXm_m64_pminsw(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 _uXm_m64_pminub(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern int _uXm_m64_pmovmskb(__uXm64 Inmm_A);
extern __uXm64 _uXm_m64_pmulhuw(__uXm64 Inmm_A, __uXm64 Inmm_B);

#include "uXmxmmpshufw.h"

extern __uXm64 _uXm_m64_pshufw(__uXm64 Inmm_A, int _Imm8);
extern void _uXm_m64_maskmovq(__uXm64 Inmm_A, __uXm64 Inmm_B, __int8*  OutPInt8_C);
extern __uXm64 _uXm_m64_pavgb(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 _uXm_m64_pavgw(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 _uXm_m64_psadbw(__uXm64 Inmm_A, __uXm64 Inmm_B);
uXm_PACK_POP
uXm_PACK_PUSH16
#endif  /* defined (uXm_X86) */

/*
* memory & initialization
*/

// __uXm128f START
extern __uXm128f _uXm_m128f_set_ss(float Infloat_A);
extern __uXm128f _uXm_m128f_set_ps1(float Infloat_A);
extern __uXm128f _uXm_m128f_set_ps(float Infloat_3, float Infloat_2, float Infloat_1, float Infloat_0);
extern __uXm128f _uXm_m128f_setr_ps(float Infloat_0, float Infloat_1, float Infloat_2, float Infloat_3);

extern __uXm128f _uXm_m128f_setzero_ps(void);

extern __uXm128f _uXm_m128f_load_ss(const float* InPfloat_A);
extern __uXm128f _uXm_m128f_load_ps1(const float* InPfloat_A);
extern __uXm128f _uXm_m128f_load_ps(const float* InPfloat_A);
extern __uXm128f _uXm_m128f_loadr_ps(const float* InPfloat_A);
extern __uXm128f _uXm_m128f_loadu_ps(const float* InPfloat_A);
extern __uXm128f _uXm_m128f_loadur_ps(const float* InPfloat_A);
extern __uXm128f _uXm_m128f_loadh_ps(const float* InPfloat_A);
extern __uXm128f _uXm_m128f_loadl_ps(const float* InPfloat_A);

extern void _uXm_m128f_store_ss(float* OutPfloat_A, __uXm128f InXmm_B);
extern void _uXm_m128f_store_ps1(float* OutPfloat_A, __uXm128f InXmm_B);
extern void _uXm_m128f_storeu_ps1(float* OutPfloat_A, __uXm128f InXmm_B);
extern void _uXm_m128f_store_ps(float* OutPfloat_A, __uXm128f InXmm_B);
extern void _uXm_m128f_storeu_ps(float* OutPfloat_A, __uXm128f InXmm_B);
extern void _uXm_m128f_storer_ps(float* OutPfloat_A, __uXm128f InXmm_B);
extern void _uXm_m128f_storeur_ps(float* OutPfloat_A, __uXm128f InXmm_B);
extern void _uXm_m128f_storeh_ps(float* OutPfloat_A, __uXm128f InXmm_B);
extern void _uXm_m128f_storel_ps(float* OutPfloat_A, __uXm128f InXmm_B);

extern void _uXm_m128f_store_m128f_ps(__uXm128f* OutPXmm_A, __uXm128f InXmm_B);
extern void _uXm_m128f_store_m128_ps(__uXm128f* OutPXmm_A, __uXm128 InXmm_B);
extern void _uXm_m128f_store_cm128_ps(__uXm128f* OutPXmm_A, __m128 InXmm_B);
extern void _uXm_m128f_store_Pfloat_ps(__uXm128f* OutPXmm_A, const float* InPfloat_B);
extern void _uXm_m128f_storeu_Pfloat_ps(__uXm128f* OutPXmm_A, const float* InPfloat_B);
// __uXm128f END

// __uXm128 START
extern __uXm128 _uXm_m128_set_ss(float Infloat_A);
extern __uXm128 _uXm_m128_set_ps1(float Infloat_A);
extern __uXm128 _uXm_m128_set_ps(float Infloat_3, float Infloat_2, float Infloat_1, float Infloat_0);
extern __uXm128 _uXm_m128_setr_ps(float Infloat_0, float Infloat_1, float Infloat_2, float Infloat_3);

extern __uXm128 _uXm_m128_setzero_ps(void);

extern __uXm128 _uXm_m128_load_ss(const float* InPfloat_A);
extern __uXm128 _uXm_m128_load_ps1(const float* InPfloat_A);
extern __uXm128 _uXm_m128_load_ps(const float* InPfloat_A);
extern __uXm128 _uXm_m128_loadr_ps(const float* InPfloat_A);
extern __uXm128 _uXm_m128_loadu_ps(const float* InPfloat_A);
extern __uXm128 _uXm_m128_loadur_ps(const float* InPfloat_A);
extern __uXm128 _uXm_m128_loadh_ps(const float* InPfloat_A);
extern __uXm128 _uXm_m128_loadl_ps(const float* InPfloat_A);

extern void _uXm_m128_store_ss(float* OutPfloat_A, __uXm128 InXmm_B);
extern void _uXm_m128_store_ps1(float* OutPfloat_A, __uXm128 InXmm_B);
extern void _uXm_m128_storeu_ps1(float* OutPfloat_A, __uXm128 InXmm_B);
extern void _uXm_m128_store_ps(float* OutPfloat_A, __uXm128 InXmm_B);
extern void _uXm_m128_storeu_ps(float* OutPfloat_A, __uXm128 InXmm_B);
extern void _uXm_m128_storer_ps(float* OutPfloat_A, __uXm128 InXmm_B);
extern void _uXm_m128_storeur_ps(float* OutPfloat_A, __uXm128 InXmm_B);
extern void _uXm_m128_storeh_ps(float* OutPfloat_A, __uXm128 InXmm_B);
extern void _uXm_m128_storel_ps(float* OutPfloat_A, __uXm128 InXmm_B);

extern void _uXm_m128_store_m128f_ps(__uXm128* OutPXmm_A, __uXm128f InXmm_B);
extern void _uXm_m128_store_m128_ps(__uXm128* OutPXmm_A, __uXm128 InXmm_B);
extern void _uXm_m128_store_cm128_ps(__uXm128* OutPXmm_A, __m128 InXmm_B);
extern void _uXm_m128_store_Pfloat_ps(__uXm128* OutPXmm_A, const float* InPfloat_B);
extern void _uXm_m128_storeu_Pfloat_ps(__uXm128* OutPXmm_A, const float* InPfloat_B);
// __uXm128 END

// __uXm128fd START
extern __uXm128fd _uXm_m128fd_set_ss(float Infloat_A);
extern __uXm128fd _uXm_m128fd_set_ps1(float Infloat_A);
extern __uXm128fd _uXm_m128fd_set_ps(float Infloat_3, float Infloat_2, float Infloat_1, float Infloat_0);
extern __uXm128fd _uXm_m128fd_setr_ps(float Infloat_0, float Infloat_1, float Infloat_2, float Infloat_3);

extern __uXm128fd _uXm_m128fd_setzero_ps(void);

extern __uXm128fd _uXm_m128fd_load_ss(const float* InPfloat_A);
extern __uXm128fd _uXm_m128fd_load_ps1(const float* InPfloat_A);
extern __uXm128fd _uXm_m128fd_load_ps(const float* InPfloat_A);
extern __uXm128fd _uXm_m128fd_loadr_ps(const float* InPfloat_A);
extern __uXm128fd _uXm_m128fd_loadu_ps(const float* InPfloat_A);
extern __uXm128fd _uXm_m128fd_loadur_ps(const float* InPfloat_A);
extern __uXm128fd _uXm_m128fd_loadh_ps(const float* InPfloat_A);
extern __uXm128fd _uXm_m128fd_loadl_ps(const float* InPfloat_A);

extern void _uXm_m128fd_store_ss(float* OutPfloat_A, __uXm128fd InXmm_B);
extern void _uXm_m128fd_store_ps1(float* OutPfloat_A, __uXm128fd InXmm_B);
extern void _uXm_m128fd_storeu_ps1(float* OutPfloat_A, __uXm128fd InXmm_B);
extern void _uXm_m128fd_store_ps(float* OutPfloat_A, __uXm128fd InXmm_B);
extern void _uXm_m128fd_storeu_ps(float* OutPfloat_A, __uXm128fd InXmm_B);
extern void _uXm_m128fd_storer_ps(float* OutPfloat_A, __uXm128fd InXmm_B);
extern void _uXm_m128fd_storeur_ps(float* OutPfloat_A, __uXm128fd InXmm_B);
extern void _uXm_m128fd_storeh_ps(float* OutPfloat_A, __uXm128fd InXmm_B);
extern void _uXm_m128fd_storel_ps(float* OutPfloat_A, __uXm128fd InXmm_B);

extern void _uXm_m128fd_store_m128f_ps(__uXm128fd* OutPXmm_A, __uXm128f InXmm_B);
extern void _uXm_m128fd_store_m128_ps(__uXm128fd* OutPXmm_A, __uXm128 InXmm_B);
extern void _uXm_m128fd_store_m128fd_ps(__uXm128fd* OutPXmm_A, __uXm128fd InXmm_B);
extern void _uXm_m128fd_store_m128fid_ps(__uXm128fd* OutPXmm_A, __uXm128fid InXmm_B);
extern void _uXm_m128fd_store_cm128_ps(__uXm128fd* OutPXmm_A, __m128 InXmm_B);
extern void _uXm_m128fd_store_Pfloat_ps(__uXm128fd* OutPXmm_A, const float* InPfloat_B);
extern void _uXm_m128fd_storeu_Pfloat_ps(__uXm128fd* OutPXmm_A, const float* InPfloat_B);
// __uXm128fd END

// __uXm128fid START
extern __uXm128fid _uXm_m128fid_set_ss(float Infloat_A);
extern __uXm128fid _uXm_m128fid_set_ps1(float Infloat_A);
extern __uXm128fid _uXm_m128fid_set_ps(float Infloat_3, float Infloat_2, float Infloat_1, float Infloat_0);
extern __uXm128fid _uXm_m128fid_setr_ps(float Infloat_0, float Infloat_1, float Infloat_2, float Infloat_3);

extern __uXm128fid _uXm_m128fid_setzero_ps(void);

extern __uXm128fid _uXm_m128fid_load_ss(const float* InPfloat_A);
extern __uXm128fid _uXm_m128fid_load_ps1(const float* InPfloat_A);
extern __uXm128fid _uXm_m128fid_load_ps(const float* InPfloat_A);
extern __uXm128fid _uXm_m128fid_loadr_ps(const float* InPfloat_A);
extern __uXm128fid _uXm_m128fid_loadu_ps(const float* InPfloat_A);
extern __uXm128fid _uXm_m128fid_loadur_ps(const float* InPfloat_A);
extern __uXm128fid _uXm_m128fid_loadh_ps(const float* InPfloat_A);
extern __uXm128fid _uXm_m128fid_loadl_ps(const float* InPfloat_A);

extern void _uXm_m128fid_store_ss(float* OutPfloat_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_store_ps1(float* OutPfloat_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storeu_ps1(float* OutPfloat_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_store_ps(float* OutPfloat_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storeu_ps(float* OutPfloat_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storer_ps(float* OutPfloat_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storeur_ps(float* OutPfloat_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storeh_ps(float* OutPfloat_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storel_ps(float* OutPfloat_A, __uXm128fid InXmm_B);

extern void _uXm_m128fid_store_m128f_ps(__uXm128fid* OutPXmm_A, __uXm128f InXmm_B);
extern void _uXm_m128fid_store_m128_ps(__uXm128fid* OutPXmm_A, __uXm128 InXmm_B);
extern void _uXm_m128fid_store_m128fd_ps(__uXm128fid* OutPXmm_A, __uXm128fd InXmm_B);
extern void _uXm_m128fid_store_m128fid_ps(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_store_cm128_ps(__uXm128fid* OutPXmm_A, __m128 InXmm_B);
extern void _uXm_m128fid_store_Pfloat_ps(__uXm128fid* OutPXmm_A, const float* InPfloat_B);
extern void _uXm_m128fid_storeu_Pfloat_ps(__uXm128fid* OutPXmm_A, const float* InPfloat_B);
// __uXm128f END

// __m128 START
extern void _uXm_cm128_store_m128f_ps(__m128* OutPXmm_A, __uXm128f InXmm_B);
extern void _uXm_cm128_store_m128_ps(__m128* OutPXmm_A, __uXm128 InXmm_B);
extern void _uXm_cm128_store_Pfloat_ps(__m128* OutPXmm_A, const float* InPfloat_B);
extern void _uXm_cm128_storeu_Pfloat_ps(__m128* OutPXmm_A, const float* InPfloat_B);
// __m128 END

/*
* FP, moves
*/
extern __uXm128f _uXm_m128f_move_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f _uXm_m128f_move_ps1(__uXm128f InXmm_A);
extern __uXm128f _uXm_m128f_move_ps(__uXm128f InXmm_A);
extern __uXm128f _uXm_m128f_mover_ps(__uXm128f InXmm_A);

extern __uXm128f _uXm_m128f_move_m128_ss(__uXm128f InXmm_A, __uXm128 InXmm_B);
extern __uXm128f _uXm_m128f_move_m128_ps1(__uXm128 InXmm_A);
extern __uXm128f _uXm_m128f_move_m128_ps(__uXm128 InXmm_A);
extern __uXm128f _uXm_m128f_mover_m128_ps(__uXm128 InXmm_A);

extern __uXm128f _uXm_m128f_move_cm128_ss(__uXm128f InXmm_A, __m128 InXmm_B);
extern __uXm128f _uXm_m128f_move_cm128_ps1(__m128 InXmm_A);
extern __uXm128f _uXm_m128f_move_cm128_ps(__m128 InXmm_A);
extern __uXm128f _uXm_m128f_mover_cm128_ps(__m128 InXmm_A);

extern __uXm128 _uXm_m128_move_m128f_ss(__uXm128 InXmm_A, __uXm128f InXmm_B);
extern __uXm128 _uXm_m128_move_m128f_ps1(__uXm128f InXmm_A);
extern __uXm128 _uXm_m128_move_m128f_ps(__uXm128f InXmm_A);
extern __uXm128 _uXm_m128_mover_m128f_ps(__uXm128f InXmm_A);

extern __uXm128 _uXm_m128_move_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 _uXm_m128_move_ps1(__uXm128 InXmm_A);
extern __uXm128 _uXm_m128_move_ps(__uXm128 InXmm_A);
extern __uXm128 _uXm_m128_mover_ps(__uXm128 InXmm_A);

extern __uXm128 _uXm_m128_move_cm128_ss(__uXm128 InXmm_A, __m128 InXmm_B);
extern __uXm128 _uXm_m128_move_cm128_ps1(__m128 InXmm_A);
extern __uXm128 _uXm_m128_move_cm128_ps(__m128 InXmm_A);
extern __uXm128 _uXm_m128_mover_cm128_ps(__m128 InXmm_A);

extern __m128 _uXm_cm128_move_m128f_ss(__m128 InXmm_A, __uXm128f InXmm_B);
extern __m128 _uXm_cm128_move_m128f_ps1(__uXm128f InXmm_A);
extern __m128 _uXm_cm128_move_m128f_ps(__uXm128f InXmm_A);
extern __m128 _uXm_cm128_mover_m128f_ps(__uXm128f InXmm_A);

extern __m128 _uXm_cm128_move_m128_ss(__m128 InXmm_A, __uXm128 InXmm_B);
extern __m128 _uXm_cm128_move_m128_ps1(__uXm128 InXmm_A);
extern __m128 _uXm_cm128_move_m128_ps(__uXm128 InXmm_A);
extern __m128 _uXm_cm128_mover_m128_ps(__uXm128 InXmm_A);

extern float* _uXm_Pfloat_move_m128f_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern float* _uXm_Pfloat_move_m128f_ps1(__uXm128f InXmm_A);
extern float* _uXm_Pfloat_move_m128f_ps(__uXm128f InXmm_A);
extern float* _uXm_Pfloat_mover_m128f_ps(__uXm128f InXmm_A);
extern float* _uXm_Pfloat_moveu_m128f_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern float* _uXm_Pfloat_moveu_m128f_ps1(__uXm128f InXmm_A);
extern float* _uXm_Pfloat_moveu_m128f_ps(__uXm128f InXmm_A);
extern float* _uXm_Pfloat_moveur_m128f_ps(__uXm128f InXmm_A);

extern float* _uXm_Pfloat_move_m128_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern float* _uXm_Pfloat_move_m128_ps1(__uXm128 InXmm_A);
extern float* _uXm_Pfloat_move_m128_ps(__uXm128 InXmm_A);
extern float* _uXm_Pfloat_mover_m128_ps(__uXm128 InXmm_A);
extern float* _uXm_Pfloat_moveu_m128_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern float* _uXm_Pfloat_moveu_m128_ps1(__uXm128 InXmm_A);
extern float* _uXm_Pfloat_moveu_m128_ps(__uXm128 InXmm_A);
extern float* _uXm_Pfloat_moveur_m128_ps(__uXm128 InXmm_A);

extern float* _uXm_Pfloat_move_m128fd_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern float* _uXm_Pfloat_move_m128fd_ps1(__uXm128fd InXmm_A);
extern float* _uXm_Pfloat_move_m128fd_ps(__uXm128fd InXmm_A);
extern float* _uXm_Pfloat_mover_m128fd_ps(__uXm128fd InXmm_A);
extern float* _uXm_Pfloat_moveu_m128fd_ss(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern float* _uXm_Pfloat_moveu_m128fd_ps1(__uXm128fd InXmm_A);
extern float* _uXm_Pfloat_moveu_m128fd_ps(__uXm128fd InXmm_A);
extern float* _uXm_Pfloat_moveur_m128fd_ps(__uXm128fd InXmm_A);

extern float* _uXm_Pfloat_move_m128fid_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern float* _uXm_Pfloat_move_m128fid_ps1(__uXm128fid InXmm_A);
extern float* _uXm_Pfloat_move_m128fid_ps(__uXm128fid InXmm_A);
extern float* _uXm_Pfloat_mover_m128fid_ps(__uXm128fid InXmm_A);
extern float* _uXm_Pfloat_moveu_m128fid_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern float* _uXm_Pfloat_moveu_m128fid_ps1(__uXm128fid InXmm_A);
extern float* _uXm_Pfloat_moveu_m128fid_ps(__uXm128fid InXmm_A);
extern float* _uXm_Pfloat_moveur_m128fid_ps(__uXm128fid InXmm_A);

extern float* _uXm_Pfloat_move_cm128_ss(__m128 InXmm_A, __m128 InXmm_B);
extern float* _uXm_Pfloat_move_cm128_ps1(__m128 InXmm_A);
extern float* _uXm_Pfloat_move_cm128_ps(__m128 InXmm_A);
extern float* _uXm_Pfloat_mover_cm128_ps(__m128 InXmm_A);
extern float* _uXm_Pfloat_moveu_cm128_ss(__m128 InXmm_A, __m128 InXmm_B);
extern float* _uXm_Pfloat_moveu_cm128_ps1(__m128 InXmm_A);
extern float* _uXm_Pfloat_moveu_cm128_ps(__m128 InXmm_A);
extern float* _uXm_Pfloat_moveur_cm128_ps(__m128 InXmm_A);

/*
* Cacheability support
*/
extern void uXm_m128_prefetch_0(const __int8* InPInt8_A);
extern void uXm_m128_prefetch_1(const __int8* InPInt8_A);
extern void uXm_m128_prefetch_2(const __int8* InPInt8_A);
extern void uXm_m128_prefetch_3(const __int8* InPInt8_A);
extern void uXm_m128_prefetch(const __int8* InPInt8_A, int InInt_BSel);

#if defined(uXm_X86)
uXm_PACK_PUSH8
extern void _uXm_m64_stream_pi(__uXm64* OutPmm_A, __uXm64 Inmm_B);
uXm_PACK_POP
uXm_PACK_PUSH16
#endif

extern void _uXm_m128f_stream_ps(float* OutPfloat_A, __uXm128f InXmm_B);
extern void _uXm_m128_stream_ps(float* OutPfloat_A, __uXm128 InXmm_B);

extern void _uXm_m128_sfence(void);
extern unsigned int _uXm_m128_getcsr(void);
extern void _uXm_m128_setcsr(unsigned int InInt_A);

#ifdef __ICL
extern void* __cdecl _uXm_mm_malloc(size_t _Siz, size_t _Al);
extern void __cdecl _uXm_mm_free(void *_P);
#endif  /* __ICL */

uXm_PACK_POP

uXm_EXTERNC_END

/* Alternate intrinsic names definition */
#if defined(uXm_X86)

#define _uXm_m64_cvtps_pi32    _uXm_m64_cvt_ps2pi
#define _uXm_m64_cvttps_pi32   _uXm_m64_cvtt_ps2pi
#define _uXm_m64_cvtpi32_ps    _uXm_m64_cvt_pi2ps
#define _uXm_m64_extract_pi16  _uXm_m64_pextrw
#define _uXm_m64_insert_pi16   _uXm_m64_pinsrw
#define _uXm_m64_max_pi16      _uXm_m64_pmaxsw
#define _uXm_m64_max_pu8       _uXm_m64_pmaxub
#define _uXm_m64_min_pi16      _uXm_m64_pminsw
#define _uXm_m64_min_pu8       _uXm_m64_pminub
#define _uXm_m64_movemask_pi8  _uXm_m64_pmovmskb
#define _uXm_m64_mulhi_pu16    _uXm_m64_pmulhuw
#define _uXm_m64_shuffle_pi16  _uXm_m64_pshufw
#define _uXm_m64_maskmove_si64 _uXm_m64_maskmovq
#define _uXm_m64_avg_pu8       _uXm_m64_pavgb
#define _uXm_m64_avg_pu16      _uXm_m64_pavgw
#define _uXm_m64_sad_pu8       _uXm_m64_psadbw
#endif

#define _uXm_m128f_cvtss_si32		_uXm_m128f_cvt_ss2si
#define _uXm_m128f_cvttss_si32		_uXm_m128f_cvtt_ss2si
#define _uXm_m128f_cvtsi32_ss		_uXm_m128f_cvt_si2ss
#define _uXm_m128f_set1_ps			_uXm_m128f_set_ps1
#define _uXm_m128f_load1_ps			_uXm_m128f_load_ps1
#define _uXm_m128f_store1_ps		_uXm_m128f_store_ps1
#define _uXm_m128f_storeu1_ps		_uXm_m128f_storeu_ps1

#define _uXm_m128_cvtss_si32		_uXm_m128_cvt_ss2si
#define _uXm_m128_cvttss_si32		_uXm_m128_cvtt_ss2si
#define _uXm_m128_cvtsi32_ss		_uXm_m128_cvt_si2ss
#define _uXm_m128_set1_ps			_uXm_m128_set_ps1
#define _uXm_m128_load1_ps			_uXm_m128_load_ps1
#define _uXm_m128_store1_ps			_uXm_m128_store_ps1
#define _uXm_m128_storeu1_ps		_uXm_m128_storeu_ps1
#define _uXm_m128_move1_m128f_ps	_uXm_m128_move_m128f_ps1
#define _uXm_m128_move1_ps			_uXm_m128_move_ps1
#define _uXm_m128_move1_cm128_ps	_uXm_m128_move_cm128_ps1

#if defined(uXm_X86)
/*********************************************************/
/*  NAME : _uXm_mm_cvtpi16_ps                                */
/*  DESCRIPTION : Convert 4 16-bit signed integer values */
/*                to 4 single-precision float values     */
/*  IN : __uXm64 _A                                         */
/*  OUT : none                                           */
/*  RETURN : __uXm128 : (float)_A                           */
/*********************************************************/
__inline __uXm128 _uXm_m128_cvtpi16_ps(__uXm64 _A)
{
	__uXm128 _Tmp;
	__uXm64  _Ext_val = _uXm_mm_cmpgt_pi16(_uXm_mm_setzero_si64(), _A);

	_Tmp = _uXm_mm_cvtpi32_ps(_uXm_mm_setzero_ps(), _uXm_mm_unpackhi_pi16(_A, _Ext_val));
	return(_uXm_mm_cvtpi32_ps(_uXm_mm_movelh_ps(_Tmp, _Tmp),
		   _uXm_mm_unpacklo_pi16(_A, _Ext_val)));
}


/***********************************************************/
/*  NAME : _uXm_mm_cvtpu16_ps                                  */
/*  DESCRIPTION : Convert 4 16-bit unsigned integer values */
/*                to 4 single-precision float values       */
/*  IN : __uXm64 _A                                           */
/*  OUT : none                                             */
/*  RETURN : __uXm128 : (float)_A                             */
/***********************************************************/
__inline __uXm128 _uXm_m128_cvtpu16_ps(__uXm64 _A)
{
	__uXm128 _Tmp;
	__uXm64  _Ext_val = _uXm_mm_setzero_si64();

	_Tmp = _uXm_mm_cvtpi32_ps(_uXm_mm_setzero_ps(), _uXm_mm_unpackhi_pi16(_A, _Ext_val));
	return(_uXm_mm_cvtpi32_ps(_uXm_mm_movelh_ps(_Tmp, _Tmp),
		   _uXm_mm_unpacklo_pi16(_A, _Ext_val)));
}


/******************************************************/
/*  NAME : _uXm_mm_cvtps_pi16                             */
/*  DESCRIPTION : Convert 4 single-precision float    */
/*                values to 4 16-bit integer values   */
/*  IN : __uXm128 a                                     */
/*  OUT : none                                        */
/*  RETURN : __uXm64 : (short)a                         */
/******************************************************/
__inline __uXm64 _uXm_mm_cvtps_pi16(__uXm128 _A)
{
	return _uXm_mm_packs_pi32(_uXm_mm_cvtps_pi32(_A),
						  _uXm_mm_cvtps_pi32(_uXm_mm_movehl_ps(_A, _A)));
}


/******************************************************/
/*  NAME : _uXm_mm_cvtpi8_ps                              */
/*  DESCRIPTION : Convert 4 8-bit integer values to 4 */
/*                single-precision float values       */
/*  IN : __uXm64 _A                                     */
/*  OUT : none                                        */
/*  RETURN : __uXm128 : (float)_A                        */
/******************************************************/
__inline __uXm128 _uXm_m128_cvtpi8_ps(__uXm64 _A)
{
	__uXm64  _Ext_val = _uXm_mm_cmpgt_pi8(_uXm_mm_setzero_si64(), _A);

	return _uXm_mm_cvtpi16_ps(_uXm_mm_unpacklo_pi8(_A, _Ext_val));
}


/******************************************************/
/*  NAME : _uXm_mm_cvtpu8_ps                              */
/*  DESCRIPTION : Convert 4 8-bit unsigned integer    */
/*                values to 4 single-precision float  */
/*                values                              */
/*  IN : __uXm64 _A                                      */
/*  OUT : none                                        */
/*  RETURN : __uXm128 : (float)_A                        */
/******************************************************/
__inline __uXm128 _uXm_m128_cvtpu8_ps(__uXm64 _A)
{
	return _uXm_mm_cvtpu16_ps(_uXm_mm_unpacklo_pi8(_A, _uXm_mm_setzero_si64()));
}


/******************************************************/
/*  NAME : _uXm_mm_cvtps_pi8                              */
/*  DESCRIPTION : Convert 4 single-precision float    */
/*                values to 4 8-bit integer values    */
/*  IN : __uXm128 _A                                     */
/*  OUT : none                                        */
/*  RETURN : __uXm64 : (__int8)_A                          */
/******************************************************/
__inline __uXm64 _uXm_mm_cvtps_pi8(__uXm128 _A)
{
	return _uXm_mm_packs_pi16(_uXm_mm_cvtps_pi16(_A), _uXm_mm_setzero_si64());
}


/******************************************************/
/*  NAME : _uXm_mm_cvtpi32x2_ps                           */
/*  DESCRIPTION : Convert 4 32-bit integer values     */
/*                to 4 single-precision float values  */
/*  IN : __uXm64 _A : operand 1                          */
/*       __uXm64 _B : operand 2                          */
/*  OUT : none                                        */
/*  RETURN : __uXm128 : (float)_A,(float)_B               */
/******************************************************/
__inline __uXm128 _uXm_m128_cvtpi32x2_ps(__uXm64 _A, __uXm64 _B)
{
	return _uXm_mm_movelh_ps(_uXm_mm_cvt_pi2ps(_uXm_mm_setzero_ps(), _A),
						 _uXm_mm_cvt_pi2ps(_uXm_mm_setzero_ps(), _B));
}
#endif // _M_IX86

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_MM_INTRIN_H
