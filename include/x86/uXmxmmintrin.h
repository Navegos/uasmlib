
#pragma once

#ifndef uXm_XMM_INTRIN_H
#define uXm_XMM_INTRIN_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE

/*******************************************************/
/* MACRO for shuffle parameter for _uXm_mm_shuffle_ps(). */
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of _uXm_mm_shuffle_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of _uXm_mm_shuffle_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/*******************************************************/
#define _uXm_MM_SHUFFLE4(fp3,fp2,fp1,fp0) (((fp3) << 6) | ((fp2) << 4) | ((fp1) << 2) | (fp0))
#define _uXm_MM_SHUFFLER4(fp0,fp1,fp2,fp3) (((fp0) | ((fp1) << 2) | ((fp2) << 4) | (fp3) << 6))

#ifndef uXm_MM_INTRIN_H
#include "uXmmmintrin.h"
#endif  /* uXm_MM_INTRIN_H */

#ifndef _INCLUDED_MM2
#include <xmmintrin.h>
#endif  /* _INCLUDED_MM2 */

/*******************************************************/
/* MACRO for use _uXm_mm_shuffle_****_ps().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of _uXm_mm_shuffle_****_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of _uXm_mm_shuffle_****_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __m128 temp = _uXm_MM_SHUFFLE_IMR_PS(Inxmm_A, Inxmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_MM_SHUFFLE_IM_PS(VA,VB,fp3,fp2,fp1,fp0) _uXm_mm_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define _uXm_MM_SHUFFLE_IMR_PS(VA,VB,fp0,fp1,fp2,fp3) _uXm_mm_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_mm_permute_****_ps().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of _uXm_mm_permute_****_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of _uXm_mm_permute_****_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __m128 temp = _uXm_MM_PERMUTE_IMR_PS(Inxmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_MM_PERMUTE_IM_PS(VA,fp3,fp2,fp1,fp0) _uXm_mm_permute_##fp3##fp2##fp1##fp0##_ps(VA)
#define _uXm_MM_PERMUTE_IMR_PS(VA,fp0,fp1,fp2,fp3) _uXm_mm_permute_##fp3##fp2##fp1##fp0##_ps(VA)

#ifdef uXm_X86
/*******************************************************/
/* MACRO for use _uXm_mm_pshufw_****().				*/
/* Argument word3 is a digit[0123] that represents the word*/
/* from argument "b" of _uXm_mm_pshufw_**** that will be     */
/* placed in word3 of result. word2 is the same for word2 in */
/* result. word1 is a digit[0123] that represents the word */
/* from argument "a" of _uXm_mm_pshufw_**** that will be     */
/* places in word1 of result. word0 is the same for word0 of */
/* result                                              */
/* const __m64 temp = _uXm_M64_PSHUFW_IMR(Inxmm_A, Inxmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_MM_PSHUFW_IM(VA,VB,word3,word2,word1,word0) _uXm_mm_pshufw_##word3##word2##word1##word0##(VA,VB)
#define _uXm_MM_PSHUFW_IMR(VA,VB,word0,word1,word2,word3) _uXm_mm_pshufw_##word3##word2##word1##word0##(VA,VB)

#define _uXm_MM_PEXTRW_IM(VA,IM) _uXm_mm_pextrw_##IM##(VA)
#define _uXm_MM_PEXTRW_IM(VA,intb,IM) _uXm_mm_pinsrw_##IM##(VA,intb)
#endif  /* uXm_X86 */

/*******************************************************/
/* MACRO for performing the transpose of a 4x4 matrix  */
/* of single precision floating point values.          */
/* Arguments row0, row1, row2, and row3 are __m128     */
/* values whose elements form the corresponding rows   */
/* of a 4x4 matrix.  The matrix transpose is returned  */
/* in arguments row0, row1, row2, and row3 where row0  */
/* now holds column 0 of the original matrix, row1 now */
/* holds column 1 of the original matrix, etc.         */
/*******************************************************/
#define _uXm_MM_TRANSPOSE4_PS(row0, row1, row2, row3) {                 \
            __m128 _Tmp3, _Tmp2, _Tmp1, _Tmp0;                          \
                                                                    \
            _Tmp0   = _uXm_mm_shuffle_ps((row0), (row1), 0x44);          \
            _Tmp2   = _uXm_mm_shuffle_ps((row0), (row1), 0xEE);          \
            _Tmp1   = _uXm_mm_shuffle_ps((row2), (row3), 0x44);          \
            _Tmp3   = _uXm_mm_shuffle_ps((row2), (row3), 0xEE);          \
                                                                    \
            (row0) = _uXm_mm_shuffle_ps(_Tmp0, _Tmp1, 0x88);              \
            (row1) = _uXm_mm_shuffle_ps(_Tmp0, _Tmp1, 0xDD);              \
            (row2) = _uXm_mm_shuffle_ps(_Tmp2, _Tmp3, 0x88);              \
            (row3) = _uXm_mm_shuffle_ps(_Tmp2, _Tmp3, 0xDD);              \
        }

/*******************************************************/
/* MACRO for use _uXm_mm_cvt*s_f32().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of _uXm_mm_cvt*s_f32 that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of _uXm_mm_cvt*s_f32 that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const float temp = _uXm_MM_CNVTF32_IM_PS(Inxmm_A, 0); */
/*******************************************************/
#define _uXm_MM_CNVTF32_IM_PS(VA,fp) _uXm_mm_cvt##fp##s_f32(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_prefetch_*().				*/
/* _uXm_MM_PREFETCH_IM(Inmem, 0); */
/*******************************************************/
#define _uXm_MM_PREFETCH_IM(mem,sel) _uXm_mm_prefetch_##sel##(mem)

/* constants for use with _uXm_mm_prefetch */
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

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * Data, Constants
 */

extern const __m128 __m128_false;
extern const __m128 __m128_true;

extern const __m128 __m128_f32_0;
extern const __m128 __m128_f32_1;

extern const __m128 __m128_f32_neg0;
extern const __m128 __m128_f32_neg1;

/*
 * FP, arithmetic
 */

extern __m128 _uXm_mm_add_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_add_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_sub_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_sub_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_mul_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_mul_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_div_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_div_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_sqrt_ss(__m128 Inxmm_A);
extern __m128 _uXm_mm_sqrt_ps(__m128 Inxmm_A);
extern __m128 _uXm_mm_rcp_ss(__m128 Inxmm_A);
extern __m128 _uXm_mm_rcp_ps(__m128 Inxmm_A);
extern __m128 _uXm_mm_rsqrt_ss(__m128 Inxmm_A);
extern __m128 _uXm_mm_rsqrt_ps(__m128 Inxmm_A);
extern __m128 _uXm_mm_min_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_min_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_max_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_max_ps(__m128 Inxmm_A, __m128 Inxmm_B);

/*
 * FP, logical
 */

extern __m128 _uXm_mm_and_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_andnot_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_or_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_xor_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_not_ps(__m128 Inxmm_A);

/*
 * FP, comparison
 */

extern __m128 _uXm_mm_cmpeq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpeq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmplt_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmplt_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmple_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmple_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpgt_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpgt_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpge_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpge_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpneq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpneq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpnlt_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpnlt_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpnle_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpnle_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpngt_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpngt_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpnge_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpnge_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpord_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpord_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpunord_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_cmpunord_ps(__m128 Inxmm_A, __m128 Inxmm_B);

/*
 * FP, comparison return int
 */

extern unsigned int _uXm_mm_comieq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_comilt_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_comile_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_comigt_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_comige_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_comineq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_ucomieq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_ucomilt_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_ucomile_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_ucomigt_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_ucomige_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern unsigned int _uXm_mm_ucomineq_ss(__m128 Inxmm_A, __m128 Inxmm_B);

/*
 * FP, conversions
 */

extern int _uXm_mm_cvt_ss2si(__m128 Inxmm_A);
extern int _uXm_mm_cvtt_ss2si(__m128 Inxmm_A);
extern __m128 _uXm_mm_cvt_si2ss(__m128 Inxmm_A, int InInt_B);

extern float _uXm_mm_cvtss_f32(__m128 Inxmm_A);
extern float _uXm_mm_cvt0s_f32(__m128 Inxmm_A);
extern float _uXm_mm_cvt1s_f32(__m128 Inxmm_A);
extern float _uXm_mm_cvt2s_f32(__m128 Inxmm_A);
extern float _uXm_mm_cvt3s_f32(__m128 Inxmm_A);
extern float _uXm_mm_cvtelts_f32(__m128 Inxmm_A, unsigned int InInt_BSel);

#ifdef uXm_X86
/*
 * Support for MMX extension intrinsics
 */
extern __m64 _uXm_mm_cvt_ps2pi(__m128 Inxmm_A);
extern __m64 _uXm_mm_cvtt_ps2pi(__m128 Inxmm_A);
extern __m128 _uXm_mm_cvt_pi2ps(__m128 Inxmm_A, __m64 Inmm_B);
#endif /* uXm_X86 */

#ifdef uXm_X64
/*
 * Support for 64-bit intrinsics
 */
extern __int64 _uXm_mm_cvtss_si64(__m128 Inxmm_A);
extern __int64 _uXm_mm_cvttss_si64(__m128 Inxmm_A);
extern __m128  _uXm_mm_cvtsi64_ss(__m128 Inxmm_A, __int64 InInt_B);
#endif /* uXm_X64 */

/*
 * FP, misc
 */

extern __m128 _uXm_mm_shuffle_ps(__m128 Inxmm_A, __m128 Inxmm_B, unsigned int _Imm8);
extern __m128 _uXm_mm_permute_ps(__m128 Inxmm_A, unsigned int _Imm8);
extern void _uXm_mm_transpose4_ps(__m128 Inxmm_Row0, __m128 Inxmm_Row1, __m128 Inxmm_Row2, __m128 Inxmm_Row3);
extern __m128 _uXm_mm_unpackhi_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_unpacklo_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_movehl_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_movelh_ps(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_loadh_pi(__m128 Inxmm_A, const __m64* Inpmm_B);
extern __m128 _uXm_mm_loadl_pi(__m128 Inxmm_A, const __m64* Inpmm_B);
extern void _uXm_mm_storeh_pi(__m64* Outpmm_A, __m128 Inxmm_B);
extern void _uXm_mm_storel_pi(__m64* Outpmm_A, __m128 Inxmm_B);
extern int _uXm_mm_movemask_ps(__m128 Inxmm_A);

#ifdef uXm_X86
/*
* Integer (MMX) extensions
*/
uXm_PACK_PUSH8

extern int _uXm_mm_pextrw(__m64 Inmm_A, int _Imm8);
extern __m64 _uXm_mm_pinsrw(__m64 Inmm_A, int InInt_B, int _Imm8);
extern __m64 _uXm_mm_pmaxsw(__m64 Inmm_A, __m64 Inmm_B);
extern __m64 _uXm_mm_pmaxub(__m64 Inmm_A, __m64 Inmm_B);
extern __m64 _uXm_mm_pminsw(__m64 Inmm_A, __m64 Inmm_B);
extern __m64 _uXm_mm_pminub(__m64 Inmm_A, __m64 Inmm_B);
extern int _uXm_mm_pmovmskb(__m64 Inmm_A);
extern __m64 _uXm_mm_pmulhuw(__m64 Inmm_A, __m64 Inmm_B);

extern __m64 _uXm_mm_pshufw(__m64 Inmm_A, int _Imm8);
extern void _uXm_mm_maskmovq(__m64 Inmm_A, __m64 Inmm_B, __int8*  OutpInt8_C);
extern __m64 _uXm_mm_pavgb(__m64 Inmm_A, __m64 Inmm_B);
extern __m64 _uXm_mm_pavgw(__m64 Inmm_A, __m64 Inmm_B);
extern __m64 _uXm_mm_psadbw(__m64 Inmm_A, __m64 Inmm_B);

uXm_PACK_POP
#endif /* uXm_X86 */

/*
 * memory & initialization
 */

/*
 * FP, sets
 */

extern __m128 _uXm_mm_set_ss(float Infloat_A);
extern __m128 _uXm_mm_set_ps1(float Infloat_A);
extern __m128 _uXm_mm_set_ps(float Infloat_3, float Infloat_2, float Infloat_1, float Infloat_0);
extern __m128 _uXm_mm_setr_ps(float Infloat_0, float Infloat_1, float Infloat_2, float Infloat_3);
extern __m128 _uXm_mm_setzero_ps(void);

/*
 * FP, loads
 */

extern __m128 _uXm_mm_load_ss(const float* Inpfloat_A);
extern __m128 _uXm_mm_load_ps1(const float* Inpfloat_A);
extern __m128 _uXm_mm_load_ps(const float* Inpfloat_A);
extern __m128 _uXm_mm_loadr_ps(const float* Inpfloat_A);
extern __m128 _uXm_mm_loadu_ps(const float* Inpfloat_A);
extern __m128 _uXm_mm_loadur_ps(const float* Inpfloat_A);
extern __m128 _uXm_mm_loadh_ps(const float* Inpfloat_A);
extern __m128 _uXm_mm_loadl_ps(const float* Inpfloat_A);

/*
 * FP, stores
 */

extern void _uXm_mm_store_ss(float* Outpfloat_A, __m128 Inxmm_B);
extern void _uXm_mm_store_ps1(float* Outpfloat_A, __m128 Inxmm_B);
extern void _uXm_mm_storeu_ps1(float* Outpfloat_A, __m128 Inxmm_B);
extern void _uXm_mm_store_ps(float* Outpfloat_A, __m128 Inxmm_B);
extern void _uXm_mm_storeu_ps(float* Outpfloat_A, __m128 Inxmm_B);
extern void _uXm_mm_storer_ps(float* Outpfloat_A, __m128 Inxmm_B);
extern void _uXm_mm_storeur_ps(float* Outpfloat_A, __m128 Inxmm_B);
extern void _uXm_mm_storeh_ps(float* Outpfloat_A, __m128 Inxmm_B);
extern void _uXm_mm_storel_ps(float* Outpfloat_A, __m128 Inxmm_B);

extern void _uXm_mm_store_mm_ps(__m128* Outpxmm_A, __m128 Inxmm_B);
extern void _uXm_mm_store_m128_ps(__m128* Outpxmm_A, __m128 Inxmm_B);
extern void _uXm_mm_store_pfloat_ps(__m128* Outpxmm_A, const float* Inpfloat_B);
extern void _uXm_mm_storeu_pfloat_ps(__m128* Outpxmm_A, const float* Inpfloat_B);

extern void _uXm_m128_store_mm_ps(__m128* Outpxmm_A, __m128 Inxmm_B);
extern void _uXm_m128_store_pfloat_ps(__m128* Outpxmm_A, const float* Inpfloat_B);
extern void _uXm_m128_storeu_pfloat_ps(__m128* Outpxmm_A, const float* Inpfloat_B);

/*
 * FP, moves
 */

extern __m128 _uXm_mm_move_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_move_ps1(__m128 Inxmm_A);
extern __m128 _uXm_mm_move_ps(__m128 Inxmm_A);
extern __m128 _uXm_mm_mover_ps(__m128 Inxmm_A);

extern __m128 _uXm_mm_move_m128_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_mm_move_m128_ps1(__m128 Inxmm_A);
extern __m128 _uXm_mm_move_m128_ps(__m128 Inxmm_A);
extern __m128 _uXm_mm_mover_m128_ps(__m128 Inxmm_A);

extern float* _uXm_ptr_move_mm_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern float* _uXm_ptr_move_mm_ps1(__m128 Inxmm_A);
extern float* _uXm_ptr_move_mm_ps(__m128 Inxmm_A);
extern float* _uXm_ptr_mover_mm_ps(__m128 Inxmm_A);
extern float* _uXm_ptr_moveu_mm_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern float* _uXm_ptr_moveu_mm_ps1(__m128 Inxmm_A);
extern float* _uXm_ptr_moveu_mm_ps(__m128 Inxmm_A);
extern float* _uXm_ptr_moveur_mm_ps(__m128 Inxmm_A);

extern __m128 _uXm_m128_move_mm_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern __m128 _uXm_m128_move_mm_ps1(__m128 Inxmm_A);
extern __m128 _uXm_m128_move_mm_ps(__m128 Inxmm_A);
extern __m128 _uXm_m128_mover_mm_ps(__m128 Inxmm_A);

extern float* _uXm_ptr_move_m128_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern float* _uXm_ptr_move_m128_ps1(__m128 Inxmm_A);
extern float* _uXm_ptr_move_m128_ps(__m128 Inxmm_A);
extern float* _uXm_ptr_mover_m128_ps(__m128 Inxmm_A);
extern float* _uXm_ptr_moveu_m128_ss(__m128 Inxmm_A, __m128 Inxmm_B);
extern float* _uXm_ptr_moveu_m128_ps1(__m128 Inxmm_A);
extern float* _uXm_ptr_moveu_m128_ps(__m128 Inxmm_A);
extern float* _uXm_ptr_moveur_m128_ps(__m128 Inxmm_A);

/*
 * Cacheability support
 */
extern void _uXm_mm_prefetch_0(const __int8* InpInt8_A);
extern void _uXm_mm_prefetch_1(const __int8* InpInt8_A);
extern void _uXm_mm_prefetch_2(const __int8* InpInt8_A);
extern void _uXm_mm_prefetch_3(const __int8* InpInt8_A);
extern void _uXm_mm_prefetch(const __int8* InpInt8_A, int InInt_BSel);

#ifdef uXm_X86
/*
* Integer (MMX) extensions
*/
uXm_PACK_PUSH8

extern void _uXm_mm_stream_pi(__m64* Outpmm_A, __m64 Inmm_B);

uXm_PACK_POP
#endif /* uXm_X86 */

extern void _uXm_mm_stream_ps(float* Outpfloat_A, __m128 Inxmm_B);

extern void _uXm_mm_sfence(void);
extern unsigned int _uXm_mm_getcsr(void);
extern void _uXm_mm_setcsr(unsigned int InInt_A);

#ifdef __ICL
extern void* __cdecl _uXm_mm_malloc(size_t _Siz, size_t _Al);
extern void __cdecl _uXm_mm_free(void *_P);
#endif  /* __ICL */

uXm_PACK_POP

uXm_EXTERNC_END

#ifndef uXm_XMM_SHUFFLE_PS_H
#include "uXmxmmshuffleps.h"
#endif
#ifndef uXm_XMM_PERMUTE_PS_H
#include "uXmxmmpermuteps.h"
#endif

#ifndef uXm_XMM_PSHUFFLEW_H
#include "uXmxmmpshufw.h"
#endif

/* Alternate intrinsic names definition */
#ifdef uXm_X86
#define _uXm_mm_cvtps_pi32    _uXm_mm_cvt_ps2pi
#define _uXm_mm_cvttps_pi32   _uXm_mm_cvtt_ps2pi
#define _uXm_mm_cvtpi32_ps    _uXm_mm_cvt_pi2ps
#define _uXm_mm_extract_pi16  _uXm_mm_pextrw
#define _uXm_mm_insert_pi16   _uXm_mm_pinsrw
#define _uXm_mm_max_pi16      _uXm_mm_pmaxsw
#define _uXm_mm_max_pu8       _uXm_mm_pmaxub
#define _uXm_mm_min_pi16      _uXm_mm_pminsw
#define _uXm_mm_min_pu8       _uXm_mm_pminub
#define _uXm_mm_movemask_pi8  _uXm_mm_pmovmskb
#define _uXm_mm_mulhi_pu16    _uXm_mm_pmulhuw
#define _uXm_mm_shuffle_pi16  _uXm_mm_pshufw
#define _uXm_mm_maskmove_si64 _uXm_mm_maskmovq
#define _uXm_mm_avg_pu8       _uXm_mm_pavgb
#define _uXm_mm_avg_pu16      _uXm_mm_pavgw
#define _uXm_mm_sad_pu8       _uXm_mm_psadbw
#endif

#define _uXm_mm_cvtss_si32		_uXm_mm_cvt_ss2si
#define _uXm_mm_cvttss_si32		_uXm_mm_cvtt_ss2si
#define _uXm_mm_cvtsi32_ss		_uXm_mm_cvt_si2ss
#define _uXm_mm_set1_ps			_uXm_mm_set_ps1
#define _uXm_mm_load1_ps		_uXm_mm_load_ps1
#define _uXm_mm_store1_ps		_uXm_mm_store_ps1
#define _uXm_mm_storeu1_ps		_uXm_mm_storeu_ps1
#define _uXm_mm_move1_ps		_uXm_mm_move_ps1
#define _uXm_mm_move1_m128_ps	_uXm_mm_move_m128_ps1
#define _uXm_ptr_move1_mm_ps		_uXm_ptr_move_mm_ps1
#define _uXm_ptr_moveu1_mm_ps	_uXm_ptr_moveu_mm_ps1
#define _uXm_m128_move1_mm_ps		_uXm_m128_move_mm_ps1
#define _uXm_ptr_move1_m128_ps	_uXm_ptr_move_m128_ps1
#define _uXm_ptr_moveu1_m128_ps	_uXm_ptr_moveu_m128_ps1

#ifdef uXm_X86

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*********************************************************/
/*  NAME : _uXm_mm_cvtpi16_ps                                */
/*  DESCRIPTION : Convert 4 16-bit signed integer values */
/*                to 4 single-precision float values     */
/*  IN : __m64 _A                                         */
/*  OUT : none                                           */
/*  RETURN : __m128 : (float)_A                           */
/*********************************************************/
extern __m128 _uXm_mm_cvtpi16_ps(__m64 _A);


/***********************************************************/
/*  NAME : _uXm_mm_cvtpu16_ps                                  */
/*  DESCRIPTION : Convert 4 16-bit unsigned integer values */
/*                to 4 single-precision float values       */
/*  IN : __m64 _A                                           */
/*  OUT : none                                             */
/*  RETURN : __m128 : (float)_A                             */
/***********************************************************/
extern __m128 _uXm_mm_cvtpu16_ps(__m64 _A);


/******************************************************/
/*  NAME : _uXm_mm_cvtps_pi16                             */
/*  DESCRIPTION : Convert 4 single-precision float    */
/*                values to 4 16-bit integer values   */
/*  IN : __m128 a                                     */
/*  OUT : none                                        */
/*  RETURN : __m64 : (short)a                         */
/******************************************************/
extern __m64 _uXm_mm_cvtps_pi16(__m128 _A);


/******************************************************/
/*  NAME : _uXm_mm_cvtpi8_ps                              */
/*  DESCRIPTION : Convert 4 8-bit integer values to 4 */
/*                single-precision float values       */
/*  IN : __m64 _A                                     */
/*  OUT : none                                        */
/*  RETURN : __m128 : (float)_A                        */
/******************************************************/
extern __m128 _uXm_mm_cvtpi8_ps(__m64 _A);


/******************************************************/
/*  NAME : _uXm_mm_cvtpu8_ps                              */
/*  DESCRIPTION : Convert 4 8-bit unsigned integer    */
/*                values to 4 single-precision float  */
/*                values                              */
/*  IN : __m64 _A                                      */
/*  OUT : none                                        */
/*  RETURN : __m128 : (float)_A                        */
/******************************************************/
extern __m128 _uXm_mm_cvtpu8_ps(__m64 _A);


/******************************************************/
/*  NAME : _uXm_mm_cvtps_pi8                              */
/*  DESCRIPTION : Convert 4 single-precision float    */
/*                values to 4 8-bit integer values    */
/*  IN : __m128 _A                                     */
/*  OUT : none                                        */
/*  RETURN : __m64 : (__int8)_A                          */
/******************************************************/
extern __m64 _uXm_mm_cvtps_pi8(__m128 _A);


/******************************************************/
/*  NAME : _uXm_mm_cvtpi32x2_ps                           */
/*  DESCRIPTION : Convert 4 32-bit integer values     */
/*                to 4 single-precision float values  */
/*  IN : __m64 _A : operand 1                          */
/*       __m64 _B : operand 2                          */
/*  OUT : none                                        */
/*  RETURN : __m128 : (float)_A,(float)_B               */
/******************************************************/
extern __m128 _uXm_mm_cvtpi32x2_ps(__m64 _A, __m64 _B);

uXm_PACK_POP

uXm_EXTERNC_END

#endif // uXm_X86
#endif // uXm_SSE

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_XMM_INTRIN_H
