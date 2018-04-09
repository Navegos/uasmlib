
#pragma once

#ifndef uXm_XMM_INTRIN_H
#define uXm_XMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef uXm_MM_INTRIN_H
#include "uxmmmintrin.h"
#endif  /* uXm_MM_INTRIN_H */

#ifndef uXm_SSE_STRUCTS_H
#include "uxmssestructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

/*******************************************************/
/* MACRO for shuffle parameter for uXm_mm_shuffle_ps(). */
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of uXm_mm_shuffle_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of uXm_mm_shuffle_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/*******************************************************/
#define uXm_MM_SHUFFLE4(fp3,fp2,fp1,fp0) (((fp3) << 6) | ((fp2) << 4) | ((fp1) << 2) | (fp0))
#define uXm_MM_SHUFFLER4(fp0,fp1,fp2,fp3) (((fp0) | ((fp1) << 2) | ((fp2) << 4) | (fp3) << 6))

/*******************************************************/
/* MACRO for use uXm_mm_shuffle_****_ps().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of uXm_mm_shuffle_****_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of uXm_mm_shuffle_****_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __uXm128 temp = uXm_MM_SHUFFLE_IMR_PS(InXmm_A, InXmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define uXm_MM_SHUFFLE_IM_PS(VA,VB,fp3,fp2,fp1,fp0) uXm_mm_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define uXm_MM_SHUFFLE_IMR_PS(VA,VB,fp0,fp1,fp2,fp3) uXm_mm_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)

/*******************************************************/
/* MACRO for use uXm_mm_permute_****_ps().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of uXm_mm_permute_****_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of uXm_mm_permute_****_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __uXm128 temp = uXm_MM_PERMUTE_IMR_PS(InXmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define uXm_MM_PERMUTE_IM_PS(VA,fp3,fp2,fp1,fp0) uXm_mm_permute_##fp3##fp2##fp1##fp0##_ps(VA)
#define uXm_MM_PERMUTE_IMR_PS(VA,fp0,fp1,fp2,fp3) uXm_mm_permute_##fp3##fp2##fp1##fp0##_ps(VA)

#if defined (uXm_X86)
/*******************************************************/
/* MACRO for use uXm_mm_pshufw_****().				*/
/* Argument word3 is a digit[0123] that represents the word*/
/* from argument "b" of uXm_mm_pshufw_**** that will be     */
/* placed in word3 of result. word2 is the same for word2 in */
/* result. word1 is a digit[0123] that represents the word */
/* from argument "a" of uXm_mm_pshufw_**** that will be     */
/* places in word1 of result. word0 is the same for word0 of */
/* result                                              */
/* const __uXm64 temp = uXm_MM_PSHUFW_IMR(InXmm_A, InXmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define uXm_MM_PSHUFW_IM(VA,VB,word3,word2,word1,word0) uXm_mm_pshufw_##word3##word2##word1##word0##(VA,VB)
#define uXm_MM_PSHUFW_IMR(VA,VB,word0,word1,word2,word3) uXm_mm_pshufw_##word3##word2##word1##word0##(VA,VB)
#endif  /* defined (uXm_X86) */

/*******************************************************/
/* MACRO for use uXm_mm_prefetch_*().				*/
/* uXm_MM_PREFETCH_IM(Inmem, 0); */
/*******************************************************/
#define uXm_MM_PREFETCH_IM(mem,sel) uXm_mm_prefetch_##sel##(mem)

/* constants for use with uXm_mm_prefetch */
#define uXm_MM_HINT_NTA    0
#define uXm_MM_HINT_T0     1
#define uXm_MM_HINT_T1     2
#define uXm_MM_HINT_T2     3
// The values below are not yet supported.
//#define uXm_MM_HINT_ENTA   4
//#define uXm_MM_HINT_ET0    5
//#define uXm_MM_HINT_ET1    6
//#define uXm_MM_HINT_ET2    7

/* MACRO functions for setting and reading the MXCSR */
#define uXm_MM_EXCEPT_MASK       0x003f
#define uXm_MM_EXCEPT_INVALID    0x0001
#define uXm_MM_EXCEPT_DENORM     0x0002
#define uXm_MM_EXCEPT_DIV_ZERO   0x0004
#define uXm_MM_EXCEPT_OVERFLOW   0x0008
#define uXm_MM_EXCEPT_UNDERFLOW  0x0010
#define uXm_MM_EXCEPT_INEXACT    0x0020

#define uXm_MM_MASK_MASK         0x1f80
#define uXm_MM_MASK_INVALID      0x0080
#define uXm_MM_MASK_DENORM       0x0100
#define uXm_MM_MASK_DIV_ZERO     0x0200
#define uXm_MM_MASK_OVERFLOW     0x0400
#define uXm_MM_MASK_UNDERFLOW    0x0800
#define uXm_MM_MASK_INEXACT      0x1000

#define uXm_MM_ROUND_MASK        0x6000
#define uXm_MM_ROUND_NEAREST     0x0000
#define uXm_MM_ROUND_DOWN        0x2000
#define uXm_MM_ROUND_UP          0x4000
#define uXm_MM_ROUND_TOWARD_ZERO 0x6000

#define uXm_MM_FLUSH_ZERO_MASK   0x8000
#define uXm_MM_FLUSH_ZERO_ON     0x8000
#define uXm_MM_FLUSH_ZERO_OFF    0x0000

#define uXm_MM_SET_EXCEPTION_STATE(mask)                               \
            uXm_mm_setcsr((uXm_mm_getcsr() & ~uXm_MM_EXCEPT_MASK) | (mask))
#define uXm_MM_GET_EXCEPTION_STATE()                                   \
            (uXm_mm_getcsr() & uXm_MM_EXCEPT_MASK)

#define uXm_MM_SET_EXCEPTION_MASK(mask)                                \
            uXm_mm_setcsr((uXm_mm_getcsr() & ~uXm_MM_MASK_MASK) | (mask))
#define uXm_MM_GET_EXCEPTION_MASK()                                    \
            (uXm_mm_getcsr() & uXm_MM_MASK_MASK)

#define uXm_MM_SET_ROUNDING_MODE(mode)                                 \
            uXm_mm_setcsr((uXm_mm_getcsr() & ~uXm_MM_ROUND_MASK) | (mode))
#define uXm_MM_GET_ROUNDING_MODE()                                     \
            (uXm_mm_getcsr() & uXm_MM_ROUND_MASK)

#define uXm_MM_SET_FLUSH_ZERO_MODE(mode)                               \
            uXm_mm_setcsr((uXm_mm_getcsr() & ~uXm_MM_FLUSH_ZERO_MASK) | (mode))
#define uXm_MM_GET_FLUSH_ZERO_MODE()                                   \
            (uXm_mm_getcsr() & uXm_MM_FLUSH_ZERO_MASK)

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
#define uXm_MM_TRANSPOSE4_PS(row0, row1, row2, row3) {                 \
            __uXm128 _Tmp3, _Tmp2, _Tmp1, _Tmp0;                        \
																		\
            _Tmp0   = uXm_mm_shuffle_ps((row0), (row1), 0x44);         \
            _Tmp2   = uXm_mm_shuffle_ps((row0), (row1), 0xEE);         \
            _Tmp1   = uXm_mm_shuffle_ps((row2), (row3), 0x44);         \
            _Tmp3   = uXm_mm_shuffle_ps((row2), (row3), 0xEE);		    \
																		\
            (row0) = uXm_mm_shuffle_ps(_Tmp0, _Tmp1, 0x88);            \
            (row1) = uXm_mm_shuffle_ps(_Tmp0, _Tmp1, 0xDD);            \
            (row2) = uXm_mm_shuffle_ps(_Tmp2, _Tmp3, 0x88);            \
            (row3) = uXm_mm_shuffle_ps(_Tmp2, _Tmp3, 0xDD);            \
        }
#define uXm_MM_TRANSPOSE4F_PS(row0, row1, row2, row3) {                \
            __uXm128f _Tmp3, _Tmp2, _Tmp1, _Tmp0;                       \
																		\
            _Tmp0   = uXm_mm_shuffle_ps((row0), (row1), 0x44);         \
            _Tmp2   = uXm_mm_shuffle_ps((row0), (row1), 0xEE);         \
            _Tmp1   = uXm_mm_shuffle_ps((row2), (row3), 0x44);         \
            _Tmp3   = uXm_mm_shuffle_ps((row2), (row3), 0xEE);		    \
																		\
            (row0) = uXm_mm_shuffle_ps(_Tmp0, _Tmp1, 0x88);            \
            (row1) = uXm_mm_shuffle_ps(_Tmp0, _Tmp1, 0xDD);            \
            (row2) = uXm_mm_shuffle_ps(_Tmp2, _Tmp3, 0x88);            \
            (row3) = uXm_mm_shuffle_ps(_Tmp2, _Tmp3, 0xDD);            \
        }
#define uXm_MM_TRANSPOSE4_IM_PS(row0, row1, row2, row3) {					\
            __uXm128 _Tmp3, _Tmp2, _Tmp1, _Tmp0;							\
																			\
            _Tmp0   = uXm_MM_PERMUTE_IMR_PS((row0), (row1), 0,1,0,1);      \
            _Tmp2   = uXm_MM_PERMUTE_IMR_PS((row0), (row1), 2,3,2,3);      \
            _Tmp1   = uXm_MM_PERMUTE_IMR_PS((row2), (row3), 0,1,0,1);      \
            _Tmp3   = uXm_MM_PERMUTE_IMR_PS((row2), (row3), 2,3,2,3);		\
																			\
            (row0) = uXm_MM_PERMUTE_IMR_PS(_Tmp0, _Tmp1, 0,2,0,2);         \
            (row1) = uXm_MM_PERMUTE_IMR_PS(_Tmp0, _Tmp1, 1,3,1,3);         \
            (row2) = uXm_MM_PERMUTE_IMR_PS(_Tmp2, _Tmp3, 2,0,2,0);         \
            (row3) = uXm_MM_PERMUTE_IMR_PS(_Tmp2, _Tmp3, 1,3,1,3);         \
        }
#define uXm_MM_TRANSPOSE4F_IM_PS(row0, row1, row2, row3) {					\
            __uXm128f _Tmp3, _Tmp2, _Tmp1, _Tmp0;							\
																			\
            _Tmp0   = uXm_MM_PERMUTE_IMR_PS((row0), (row1), 0,1,0,1);      \
            _Tmp2   = uXm_MM_PERMUTE_IMR_PS((row0), (row1), 2,3,2,3);      \
            _Tmp1   = uXm_MM_PERMUTE_IMR_PS((row2), (row3), 0,1,0,1);      \
            _Tmp3   = uXm_MM_PERMUTE_IMR_PS((row2), (row3), 2,3,2,3);		\
																			\
            (row0) = uXm_MM_PERMUTE_IMR_PS(_Tmp0, _Tmp1, 0,2,0,2);			\
            (row1) = uXm_MM_PERMUTE_IMR_PS(_Tmp0, _Tmp1, 1,3,1,3);			\
            (row2) = uXm_MM_PERMUTE_IMR_PS(_Tmp2, _Tmp3, 0,2,0,2);			\
            (row3) = uXm_MM_PERMUTE_IMR_PS(_Tmp2, _Tmp3, 1,3,1,3);			\
        }

uXm_EXTERNCC_BEGIN

uXm_PACK_PUSH16

/*
 * FP, arithmetic
 */
extern __uXm128f uXm_mm_add_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_add_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_sub_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_sub_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_mul_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_mul_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_div_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_div_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_sqrt_ss(__uXm128f InXmm_A);
extern __uXm128f uXm_mm_sqrt_ps(__uXm128f InXmm_A);
extern __uXm128f uXm_mm_rcp_ss(__uXm128f InXmm_A);
extern __uXm128f uXm_mm_rcp_ps(__uXm128f InXmm_A);
extern __uXm128f uXm_mm_rsqrt_ss(__uXm128f InXmm_A);
extern __uXm128f uXm_mm_rsqrt_ps(__uXm128f InXmm_A);
extern __uXm128f uXm_mm_min_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_min_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_max_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_max_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);

extern __uXm128 uXm_mm_add_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_add_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_sub_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_sub_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_mul_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_mul_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_div_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_div_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_sqrt_ss(__uXm128 InXmm_A);
extern __uXm128 uXm_mm_sqrt_ps(__uXm128 InXmm_A);
extern __uXm128 uXm_mm_rcp_ss(__uXm128 InXmm_A);
extern __uXm128 uXm_mm_rcp_ps(__uXm128 InXmm_A);
extern __uXm128 uXm_mm_rsqrt_ss(__uXm128 InXmm_A);
extern __uXm128 uXm_mm_rsqrt_ps(__uXm128 InXmm_A);
extern __uXm128 uXm_mm_min_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_min_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_max_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_max_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

/*
 * FP, logical
 */

extern __uXm128f uXm_mm_and_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_andnot_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_or_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_xor_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);

extern __uXm128 uXm_mm_and_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_andnot_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_or_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_xor_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

/*
* FP, comparison
*/

extern __uXm128f uXm_mm_cmpeq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpeq_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmplt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmplt_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmple_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmple_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpgt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpgt_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpge_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpge_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpneq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpneq_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpnlt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpnlt_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpnle_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpnle_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpngt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpngt_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpnge_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpnge_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpord_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpord_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpunord_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_cmpunord_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);

extern __uXm128 uXm_mm_cmpeq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpeq_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmplt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmplt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmple_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmple_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpgt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpgt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpge_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpge_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpneq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpneq_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpnlt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpnlt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpnle_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpnle_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpngt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpngt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpnge_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpnge_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpord_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpord_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpunord_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_cmpunord_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

/*
* FP, comparison return int
*/

extern unsigned __int8 uXm_mm_comieq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_comilt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_comile_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_comigt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_comige_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_comineq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_ucomieq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_ucomilt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_ucomile_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_ucomigt_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_ucomige_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern unsigned __int8 uXm_mm_ucomineq_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);

extern unsigned __int8 uXm_mm_comieq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_comilt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_comile_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_comigt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_comige_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_comineq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_ucomieq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_ucomilt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_ucomile_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_ucomigt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_ucomige_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_mm_ucomineq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);

/*
 * FP, conversions
 */

extern int uXm_mm_cvt_ss2si(__uXm128f InXmm_A);
extern int uXm_mm_cvtt_ss2si(__uXm128f InXmm_A);
extern __uXm128f uXm_mm_cvt_si2ss(__uXm128f InXmm_A, int InInt_B);
extern float uXm_mm_cvtss_f32(__uXm128f InXmm_A);

extern int uXm_mm_cvt_ss2si(__uXm128 InXmm_A);
extern int uXm_mm_cvtt_ss2si(__uXm128 InXmm_A);
extern __uXm128 uXm_mm_cvt_si2ss(__uXm128 InXmm_A, int InInt_B);
extern float uXm_mm_cvtss_f32(__uXm128 InXmm_A);

#if defined (uXm_X86)
/*
* Support for MMX extension intrinsics
*/
extern __uXm64 uXm_mm_cvt_ps2pi(__uXm128f InXmm_A);
extern __uXm64 uXm_mm_cvtt_ps2pi(__uXm128f InXmm_A);
extern __uXm128f uXm_mm_cvt_pi2ps(__uXm128f InXmm_A, __uXm64 Inmm_B);

extern __uXm64 uXm_mm_cvt_ps2pi(__uXm128 InXmm_A);
extern __uXm64 uXm_mm_cvtt_ps2pi(__uXm128 InXmm_A);
extern __uXm128 uXm_mm_cvt_pi2ps(__uXm128 InXmm_A, __uXm64 Inmm_B);
#endif  /* defined (uXm_X86) */

#if defined (uXm_X64)
/*
* Support for 64-bit intrinsics
*/
extern __int64 uXm_mm_cvtss_si64(__uXm128f InXmm_A);
extern __int64 uXm_mm_cvttss_si64(__uXm128f InXmm_A);
extern __uXm128f  uXm_mm_cvtsi64_ss(__uXm128f InXmm_A, __int64 InInt_B);

extern __int64 uXm_mm_cvtss_si64(__uXm128 InXmm_A);
extern __int64 uXm_mm_cvttss_si64(__uXm128 InXmm_A);
extern __uXm128  uXm_mm_cvtsi64_ss(__uXm128 InXmm_A, __int64 InInt_B);
#endif  /* defined (uXm_X64) */

/*
* FP, misc
*/
#include "uXmxmmshuffleps.h"
extern __uXm128f uXm_mm_shuffle_ps(__uXm128f InXmm_A, __uXm128f InXmm_B, unsigned int _Imm8);
#include "uXmxmmpermuteps.h"
extern __uXm128f uXm_mm_permute_ps(__uXm128f InXmm_A, unsigned int _Imm8);
extern __uXm128f uXm_mm_unpackhi_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_unpacklo_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_loadh_pi(__uXm128f InXmm_A, const __uXm64* InPmm_B);
extern __uXm128f uXm_mm_movehl_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_movelh_ps(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern void uXm_mm_storeh_pi(__uXm64* OutPmm_A, __uXm128f InXmm_B);
extern __uXm128f uXm_mm_loadl_pi(__uXm128f InXmm_A, const __uXm64* InPmm_B);
extern void uXm_mm_storel_pi(__uXm64* OutPmm_A, __uXm128f InXmm_B);
extern int uXm_mm_movemask_ps(__uXm128f InXmm_A);

extern __uXm128 uXm_mm_shuffle_ps(__uXm128 InXmm_A, __uXm128 InXmm_B, unsigned int _Imm8);
extern __uXm128 uXm_mm_permute_ps(__uXm128 InXmm_A, unsigned int _Imm8);
extern __uXm128 uXm_mm_unpackhi_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_unpacklo_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_loadh_pi(__uXm128 InXmm_A, const __uXm64* InPmm_B);
extern __uXm128 uXm_mm_movehl_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_movelh_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern void uXm_mm_storeh_pi(__uXm64* OutPmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_mm_loadl_pi(__uXm128 InXmm_A, const __uXm64* InPmm_B);
extern void uXm_mm_storel_pi(__uXm64* OutPmm_A, __uXm128 InXmm_B);
extern int uXm_mm_movemask_ps(__uXm128 InXmm_A);

#if defined(uXm_X86)
uXm_PACK_PUSH8
/*
* Integer (MMX) extensions
*/
extern int uXm_mm_pextrw(__uXm64 Inmm_A, int _Imm8);
extern __uXm64 uXm_mm_pinsrw(__uXm64 Inmm_A, int InInt_B, int _Imm8);
extern __uXm64 uXm_mm_pmaxsw(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 uXm_mm_pmaxub(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 uXm_mm_pminsw(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 uXm_mm_pminub(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern int uXm_mm_pmovmskb(__uXm64 Inmm_A);
extern __uXm64 uXm_mm_pmulhuw(__uXm64 Inmm_A, __uXm64 Inmm_B);

#include "uXmxmmpshufw.h"

extern __uXm64 uXm_mm_pshufw(__uXm64 Inmm_A, int _Imm8);
extern void uXm_mm_maskmovq(__uXm64 Inmm_A, __uXm64 Inmm_B, char*  OutPInt8_C);
extern __uXm64 uXm_mm_pavgb(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 uXm_mm_pavgw(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 uXm_mm_psadbw(__uXm64 Inmm_A, __uXm64 Inmm_B);
uXm_PACK_POP
uXm_PACK_PUSH16
#endif  /* defined (uXm_X86) */

/*
* memory & initialization
*/

extern __uXm128f uXm_mmf_set_ss(float Infloat_A);
extern __uXm128f uXm_mmf_set_ps1(float Infloat_A);
extern __uXm128f uXm_mmf_set_ps(float Infloat_D, float Infloat_C, float Infloat_B, float Infloat_A);
extern __uXm128f uXm_mmf_setr_ps(float Infloat_A, float Infloat_B, float Infloat_C, float Infloat_D);
extern __uXm128f uXm_mmf_setzero_ps(void);
extern __uXm128f uXm_mmf_load_ss(const float* InPfloat_A);
extern __uXm128f uXm_mmf_load_ps1(const float* InPfloat_A);
extern __uXm128f uXm_mmf_load_ps(const float* InPfloat_A);
extern __uXm128f uXm_mmf_loadr_ps(const float* InPfloat_A);
extern __uXm128f uXm_mmf_loadu_ps(const float* InPfloat_A);
extern __uXm128f uXm_mmf_loadur_ps(const float* InPfloat_A);
extern void uXm_mm_store_ss(float* OutPfloat_A, __uXm128f InXmm_B);
extern void uXm_mm_store_ps1(float* OuPfloat_V, __uXm128f InXmm_B);
extern void uXm_mm_storeu_ps1(float* OuPfloat_V, __uXm128f InXmm_B);
extern void uXm_mm_store_ps(float* OutPfloat_A, __uXm128f InXmm_B);
extern void uXm_mm_storeu_ps(float* OutPfloat_A, __uXm128f InXmm_B);
extern void uXm_mm_storer_ps(float* OutPfloat_A, __uXm128f InXmm_B);
extern void uXm_mm_storeur_ps(float* OutPfloat_A, __uXm128f InXmm_B);

extern __uXm128 uXm_mm_set_ss(float Infloat_A);
extern __uXm128 uXm_mm_set_ps1(float Infloat_A);
extern __uXm128 uXm_mm_set_ps(float Infloat_D, float Infloat_C, float Infloat_B, float Infloat_A);
extern __uXm128 uXm_mm_setr_ps(float Infloat_A, float Infloat_B, float Infloat_C, float Infloat_D);
extern __uXm128 uXm_mm_setzero_ps(void);
extern __uXm128 uXm_mm_load_ss(const float* InPfloat_A);
extern __uXm128 uXm_mm_load_ps1(const float* InPfloat_A);
extern __uXm128 uXm_mm_load_ps(const float* InPfloat_A);
extern __uXm128 uXm_mm_loadr_ps(const float* InPfloat_A);
extern __uXm128 uXm_mm_loadu_ps(const float* InPfloat_A);
extern __uXm128 uXm_mm_loadur_ps(const float* InPfloat_A);
extern void uXm_mm_store_ss(float* OutPfloat_A, __uXm128 InXmm_B);
extern void uXm_mm_store_ps1(float* OuPfloat_V, __uXm128 InXmm_B);
extern void uXm_mm_storeu_ps1(float* OuPfloat_V, __uXm128 InXmm_B);
extern void uXm_mm_store_ps(float* OutPfloat_A, __uXm128 InXmm_B);
extern void uXm_mm_storeu_ps(float* OutPfloat_A, __uXm128 InXmm_B);
extern void uXm_mm_storer_ps(float* OutPfloat_A, __uXm128 InXmm_B);
extern void uXm_mm_storeur_ps(float* OutPfloat_A, __uXm128 InXmm_B);

/*
* FP, moves
*/
extern __uXm128f uXm_mm_move_ss(__uXm128f InXmm_A, __uXm128f InXmm_B);
extern void uXm_mm_move_ps(__uXm128f OutXmm_A, __uXm128f InXmm_B);
extern void uXm_mm_mover_ps(__uXm128f OutXmm_A, __uXm128f InXmm_B);
extern void uXm_mm_move_ps(__uXm128f OutXmm_A, __uXm128 InXmm_B);
extern void uXm_mm_mover_ps(__uXm128f OutXmm_A, __uXm128 InXmm_B);

extern __uXm128 uXm_mm_move_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern void uXm_mm_move_ps(__uXm128 OutXmm_A, __uXm128 InXmm_B);
extern void uXm_mm_mover_ps(__uXm128 OutXmm_A, __uXm128 InXmm_B);
extern void uXm_mm_move_ps(__uXm128 OutXmm_A, __uXm128f InXmm_B);
extern void uXm_mm_mover_ps(__uXm128 OutXmm_A, __uXm128f InXmm_B);

/*
* Cacheability support
*/
extern void uXm_mm_prefetch_0(const char* InPInt8_A);
extern void uXm_mm_prefetch_1(const char* InPInt8_A);
extern void uXm_mm_prefetch_2(const char* InPInt8_A);
extern void uXm_mm_prefetch_3(const char* InPInt8_A);
extern void uXm_mm_prefetch(const char* InPInt8_A, int InInt_BSel);

#if defined(uXm_X86)
uXm_PACK_PUSH8
extern void uXm_mm_stream_pi(__uXm64* OutPmm_A, __uXm64 Inmm_B);
uXm_PACK_POP
uXm_PACK_PUSH16
#endif

extern void uXm_mm_stream_ps(float* OutPfloat_A, __uXm128f InXmm_B);
extern void uXm_mm_stream_ps(float* OutPfloat_A, __uXm128 InXmm_B);

extern void uXm_mm_sfence(void);
extern unsigned int uXm_mm_getcsr(void);
extern void uXm_mm_setcsr(unsigned int InInt_A);

#ifdef __ICL
extern void* __cdecl uXm_mm_malloc(size_t _Siz, size_t _Al);
extern void __cdecl uXm_mm_free(void *_P);
#endif  /* __ICL */

uXm_PACK_POP

uXm_EXTERNC_END

/* Alternate intrinsic names definition */
#if defined(uXm_X86)

#define uXm_mm_cvtps_pi32    uXm_mm_cvt_ps2pi
#define uXm_mm_cvttps_pi32   uXm_mm_cvtt_ps2pi
#define uXm_mm_cvtpi32_ps    uXm_mm_cvt_pi2ps
#define uXm_mm_extract_pi16  uXm_mm_pextrw
#define uXm_mm_insert_pi16   uXm_mm_pinsrw
#define uXm_mm_max_pi16      uXm_mm_pmaxsw
#define uXm_mm_max_pu8       uXm_mm_pmaxub
#define uXm_mm_min_pi16      uXm_mm_pminsw
#define uXm_mm_min_pu8       uXm_mm_pminub
#define uXm_mm_movemask_pi8  uXm_mm_pmovmskb
#define uXm_mm_mulhi_pu16    uXm_mm_pmulhuw
#define uXm_mm_shuffle_pi16  uXm_mm_pshufw
#define uXm_mm_maskmove_si64 uXm_mm_maskmovq
#define uXm_mm_avg_pu8       uXm_mm_pavgb
#define uXm_mm_avg_pu16      uXm_mm_pavgw
#define uXm_mm_sad_pu8       uXm_mm_psadbw
#endif
#define uXm_mm_cvtss_si32    uXm_mm_cvt_ss2si
#define uXm_mm_cvttss_si32   uXm_mm_cvtt_ss2si
#define uXm_mm_cvtsi32_ss    uXm_mm_cvt_si2ss
#define uXm_mm_set1_ps       uXm_mm_set_ps1
#define uXm_mm_load1_ps      uXm_mm_load_ps1
#define uXm_mm_store1_ps     uXm_mm_store_ps1
#define uXm_mm_storeu1_ps    uXm_mm_storeu_ps1

#if defined(uXm_X86)
/*********************************************************/
/*  NAME : uXm_mm_cvtpi16_ps                                */
/*  DESCRIPTION : Convert 4 16-bit signed integer values */
/*                to 4 single-precision float values     */
/*  IN : __uXm64 _A                                         */
/*  OUT : none                                           */
/*  RETURN : __uXm128 : (float)_A                           */
/*********************************************************/
__inline __uXm128 uXm_mm_cvtpi16_ps(__uXm64 _A)
{
	__uXm128 _Tmp;
	__uXm64  _Ext_val = uXm_mm_cmpgt_pi16(uXm_mm_setzero_si64(), _A);

	_Tmp = uXm_mm_cvtpi32_ps(uXm_mm_setzero_ps(), uXm_mm_unpackhi_pi16(_A, _Ext_val));
	return(uXm_mm_cvtpi32_ps(uXm_mm_movelh_ps(_Tmp, _Tmp),
		   uXm_mm_unpacklo_pi16(_A, _Ext_val)));
}


/***********************************************************/
/*  NAME : uXm_mm_cvtpu16_ps                                  */
/*  DESCRIPTION : Convert 4 16-bit unsigned integer values */
/*                to 4 single-precision float values       */
/*  IN : __uXm64 _A                                           */
/*  OUT : none                                             */
/*  RETURN : __uXm128 : (float)_A                             */
/***********************************************************/
__inline __uXm128 uXm_mm_cvtpu16_ps(__uXm64 _A)
{
	__uXm128 _Tmp;
	__uXm64  _Ext_val = uXm_mm_setzero_si64();

	_Tmp = uXm_mm_cvtpi32_ps(uXm_mm_setzero_ps(), uXm_mm_unpackhi_pi16(_A, _Ext_val));
	return(uXm_mm_cvtpi32_ps(uXm_mm_movelh_ps(_Tmp, _Tmp),
		   uXm_mm_unpacklo_pi16(_A, _Ext_val)));
}


/******************************************************/
/*  NAME : uXm_mm_cvtps_pi16                             */
/*  DESCRIPTION : Convert 4 single-precision float    */
/*                values to 4 16-bit integer values   */
/*  IN : __uXm128 a                                     */
/*  OUT : none                                        */
/*  RETURN : __uXm64 : (short)a                         */
/******************************************************/
__inline __uXm64 uXm_mm_cvtps_pi16(__uXm128 _A)
{
	return uXm_mm_packs_pi32(uXm_mm_cvtps_pi32(_A),
						  uXm_mm_cvtps_pi32(uXm_mm_movehl_ps(_A, _A)));
}


/******************************************************/
/*  NAME : uXm_mm_cvtpi8_ps                              */
/*  DESCRIPTION : Convert 4 8-bit integer values to 4 */
/*                single-precision float values       */
/*  IN : __uXm64 _A                                     */
/*  OUT : none                                        */
/*  RETURN : __uXm128 : (float)_A                        */
/******************************************************/
__inline __uXm128 uXm_mm_cvtpi8_ps(__uXm64 _A)
{
	__uXm64  _Ext_val = uXm_mm_cmpgt_pi8(uXm_mm_setzero_si64(), _A);

	return uXm_mm_cvtpi16_ps(uXm_mm_unpacklo_pi8(_A, _Ext_val));
}


/******************************************************/
/*  NAME : uXm_mm_cvtpu8_ps                              */
/*  DESCRIPTION : Convert 4 8-bit unsigned integer    */
/*                values to 4 single-precision float  */
/*                values                              */
/*  IN : __uXm64 _A                                      */
/*  OUT : none                                        */
/*  RETURN : __uXm128 : (float)_A                        */
/******************************************************/
__inline __uXm128 uXm_mm_cvtpu8_ps(__uXm64 _A)
{
	return uXm_mm_cvtpu16_ps(uXm_mm_unpacklo_pi8(_A, uXm_mm_setzero_si64()));
}


/******************************************************/
/*  NAME : uXm_mm_cvtps_pi8                              */
/*  DESCRIPTION : Convert 4 single-precision float    */
/*                values to 4 8-bit integer values    */
/*  IN : __uXm128 _A                                     */
/*  OUT : none                                        */
/*  RETURN : __uXm64 : (char)_A                          */
/******************************************************/
__inline __uXm64 uXm_mm_cvtps_pi8(__uXm128 _A)
{
	return uXm_mm_packs_pi16(uXm_mm_cvtps_pi16(_A), uXm_mm_setzero_si64());
}


/******************************************************/
/*  NAME : uXm_mm_cvtpi32x2_ps                           */
/*  DESCRIPTION : Convert 4 32-bit integer values     */
/*                to 4 single-precision float values  */
/*  IN : __uXm64 _A : operand 1                          */
/*       __uXm64 _B : operand 2                          */
/*  OUT : none                                        */
/*  RETURN : __uXm128 : (float)_A,(float)_B               */
/******************************************************/
__inline __uXm128 uXm_mm_cvtpi32x2_ps(__uXm64 _A, __uXm64 _B)
{
	return uXm_mm_movelh_ps(uXm_mm_cvt_pi2ps(uXm_mm_setzero_ps(), _A),
						 uXm_mm_cvt_pi2ps(uXm_mm_setzero_ps(), _B));
}
#endif // _M_IX86

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_XMM_INTRIN_H
