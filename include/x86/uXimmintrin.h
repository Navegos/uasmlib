
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - UASM assembly library             / /
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

#ifndef uX_IMM_INTRIN_H
#define uX_IMM_INTRIN_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_AVX

#ifndef uX_WMM_INTRIN_H
#include "uXwmmintrin.h"
#endif  /* uX_WMM_INTRIN_H */

#ifndef _INCLUDED_IMM
#include <immintrin.h>
#endif  /* _INCLUDED_IMM */

/*
 * Compare predicates for scalar and packed compare intrinsic functions
 */
#define uX_CMP_EQ_OQ     0x00  /* Equal (ordered, nonsignaling)               */
#define uX_CMP_LT_OS     0x01  /* Less-than (ordered, signaling)              */
#define uX_CMP_LE_OS     0x02  /* Less-than-or-equal (ordered, signaling)     */
#define uX_CMP_UNORD_Q   0x03  /* Unordered (nonsignaling)                    */
#define uX_CMP_NEQ_UQ    0x04  /* Not-equal (unordered, nonsignaling)         */
#define uX_CMP_NLT_US    0x05  /* Not-less-than (unordered, signaling)        */
#define uX_CMP_NLE_US    0x06  /* Not-less-than-or-equal (unordered, signaling) */
#define uX_CMP_ORD_Q     0x07  /* Ordered (nonsignaling)                      */
#define uX_CMP_EQ_UQ     0x08  /* Equal (unordered, non-signaling)            */
#define uX_CMP_NGE_US    0x09  /* Not-greater-than-or-equal (unordered, signaling) */
#define uX_CMP_NGT_US    0x0A  /* Not-greater-than (unordered, signaling)     */
#define uX_CMP_FALSE_OQ  0x0B  /* False (ordered, nonsignaling)               */
#define uX_CMP_NEQ_OQ    0x0C  /* Not-equal (ordered, non-signaling)          */
#define uX_CMP_GE_OS     0x0D  /* Greater-than-or-equal (ordered, signaling)  */
#define uX_CMP_GT_OS     0x0E  /* Greater-than (ordered, signaling)           */
#define uX_CMP_TRUE_UQ   0x0F  /* True (unordered, non-signaling)             */
#define uX_CMP_EQ_OS     0x10  /* Equal (ordered, signaling)                  */
#define uX_CMP_LT_OQ     0x11  /* Less-than (ordered, nonsignaling)           */
#define uX_CMP_LE_OQ     0x12  /* Less-than-or-equal (ordered, nonsignaling)  */
#define uX_CMP_UNORD_S   0x13  /* Unordered (signaling)                       */
#define uX_CMP_NEQ_US    0x14  /* Not-equal (unordered, signaling)            */
#define uX_CMP_NLT_UQ    0x15  /* Not-less-than (unordered, nonsignaling)     */
#define uX_CMP_NLE_UQ    0x16  /* Not-less-than-or-equal (unordered, nonsignaling) */
#define uX_CMP_ORD_S     0x17  /* Ordered (signaling)                         */
#define uX_CMP_EQ_US     0x18  /* Equal (unordered, signaling)                */
#define uX_CMP_NGE_UQ    0x19  /* Not-greater-than-or-equal (unordered, nonsignaling) */
#define uX_CMP_NGT_UQ    0x1A  /* Not-greater-than (unordered, nonsignaling)  */
#define uX_CMP_FALSE_OS  0x1B  /* False (ordered, signaling)                  */
#define uX_CMP_NEQ_OS    0x1C  /* Not-equal (ordered, signaling)              */
#define uX_CMP_GE_OQ     0x1D  /* Greater-than-or-equal (ordered, nonsignaling) */
#define uX_CMP_GT_OQ     0x1E  /* Greater-than (ordered, nonsignaling)        */
#define uX_CMP_TRUE_US   0x1F  /* True (unordered, signaling)                 */

#define _uX_mm256_test_all_zeros(mask, val) _uX_mm256_testz_si256((mask), (val))
#define _uX_mm256_test_all_ones(val) _uX_mm256_testc_si256((val), _uX_mm256_cmpeq_epi32((val),(val)))
#define _uX_mm256_test_mix_ones_zeros(mask, val) _uX_mm256_testnzc_si256((mask), (val))

uX_EXTERNC_BEGIN
uX_PACK_PUSH_YMM

/*
 * FP, arithmetic
 */
    
    extern __m256 uX_ABI _uX_mm256_add_ss(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_add_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_sub_ss(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_sub_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_mul_ss(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_mul_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_div_ss(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_div_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_sqrt_ss(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_sqrt_ps(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_rcp_ss(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_rcp_ps(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_rsqrt_ss(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_rsqrt_ps(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_min_ss(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_min_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_max_ss(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_max_ps(__m256 Inymm_A, __m256 Inymm_B);

    extern __m256 uX_ABI _uX_mm256_addsub_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_hadd_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_hsub_ps(__m256 Inymm_A, __m256 Inymm_B);

    extern __m256 uX_ABI _uX_mm256_dp_ps(__m256 Inymm_A, __m256 Inymm_B, const count_t Inint_mask);

    extern __m256 uX_ABI _uX_mm256_round_ps(__m256  val, const count_t iRoundMode);
    extern __m256 uX_ABI _uX_mm256_round_ss(__m256 dst, __m256  val, const count_t iRoundMode);

    extern __m256 uX_ABI _uX_mm256_floor_ps(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_ceil_ps(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_floor_ss(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_ceil_ss(__m256 Inymm_A);

/*
 * DP, arithmetic
 */

    extern __m256d uX_ABI _uX_mm256_add_sd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_add_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_sub_sd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_sub_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_mul_sd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_mul_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_div_sd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_div_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_sqrt_sd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_sqrt_pd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_rcp_sd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_rcp_pd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_rsqrt_sd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_rsqrt_pd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_min_sd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_min_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_max_sd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_max_pd(__m256d Inymm_A, __m256d Inymm_B);

    extern __m256d uX_ABI _uX_mm256_addsub_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_hadd_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_hsub_pd(__m256d Inymm_A, __m256d Inymm_B);

    extern __m256d uX_ABI _uX_mm256_dp_pd(__m256d Inymm_A, __m256d Inymm_B, const count_t Inint_mask);

    extern __m256d uX_ABI _uX_mm256_round_pd(__m256d val, const count_t iRoundMode);
    extern __m256d uX_ABI _uX_mm256_round_sd(__m256d dst, __m256d val, const count_t iRoundMode);

    extern __m256d uX_ABI _uX_mm256_floor_pd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_ceil_pd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_floor_sd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_ceil_sd(__m256d Inymm_A);

/*
 * FP, logical
 */

    extern __m256 uX_ABI _uX_mm256_and_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_andnot_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_or_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_xor_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_not_ps(__m256 Inymm_A);

/*
 * DP, logical
 */

    extern __m256d uX_ABI _uX_mm256_and_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_andnot_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_or_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_xor_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_not_pd(__m256d Inymm_A);

uX_PACK_XMM

/*
 * FP, comparison
 */

    extern __m128 uX_ABI _uX_mm_cmp_ps(__m128 Inxmm_A, __m128 Inxmm_B, const count_t Inint_CmpMask);
    extern __m128 uX_ABI _uX_mm_cmp_ss(__m128 Inxmm_A, __m128 Inxmm_B, const count_t Inint_CmpMask);
    extern intbool_t uX_ABI _uX_mm_comi_ss(__m128 Inxmm_A, __m128 Inxmm_B, const count_t Inint_CmpMask);

uX_PACK_YMM

    extern __m256 uX_ABI _uX_mm256_cmp_ps(__m256 Inymm_A, __m256 Inymm_B, const count_t Inint_CmpMask);

uX_PACK_XMM

/*
 * DP, comparison
 */

    extern __m128d uX_ABI _uX_mm_cmp_pd(__m128d Inxmm_A, __m128d, const count_t Inint_CmpMask);
    extern __m128d uX_ABI _uX_mm_cmp_sd(__m128d Inxmm_A, __m128d, const count_t Inint_CmpMask);
    extern intbool_t uX_ABI _uX_mm_comi_sd(__m128d Inxmm_A, __m128d Inxmm_B, const count_t Inint_CmpMask);

uX_PACK_YMM

    extern __m256d uX_ABI _uX_mm256_cmp_pd(__m256d Inymm_A, __m256d Inymm_B, const count_t Inint_CmpMask);

/*
 * FP, conversions
 */

    extern __m256 uX_ABI _uX_mm256_cvtepi32_ps(__m256i Inymm_A);
    extern __m128 uX_ABI _uX_mm256_cvtpd_ps(__m256d Inymm_A);

    extern float uX_ABI _uX_mm256_cvtss_f32(__m256 Inymm_A);
    extern float uX_ABI _uX_mm256_cvt0s_f32(__m256 Inymm_A);
    extern float uX_ABI _uX_mm256_cvt1s_f32(__m256 Inymm_A);
    extern float uX_ABI _uX_mm256_cvt2s_f32(__m256 Inymm_A);
    extern float uX_ABI _uX_mm256_cvt3s_f32(__m256 Inymm_A);
    extern float uX_ABI _uX_mm256_cvt4s_f32(__m256 Inymm_A);
    extern float uX_ABI _uX_mm256_cvt5s_f32(__m256 Inymm_A);
    extern float uX_ABI _uX_mm256_cvt6s_f32(__m256 Inymm_A);
    extern float uX_ABI _uX_mm256_cvt7s_f32(__m256 Inymm_A);
    extern float uX_ABI _uX_mm256_cvtelts_f32(__m256 Inymm_A, const count_t InInt_BSel);

/*
 * DP, conversions
 */

    extern __m256d uX_ABI _uX_mm256_cvtepi32_pd(__m128i Inxmm_A);
    extern __m256d uX_ABI _uX_mm256_cvtps_pd(__m128 Inxmm_A);

    extern double uX_ABI _uX_mm256_cvtsd_f64(__m256d Inymm_A);
    extern double uX_ABI _uX_mm256_cvt0d_f64(__m256d Inymm_A);
    extern double uX_ABI _uX_mm256_cvt1d_f64(__m256d Inymm_A);
    extern double uX_ABI _uX_mm256_cvt2d_f64(__m256d Inymm_A);
    extern double uX_ABI _uX_mm256_cvt3d_f64(__m256d Inymm_A);
    extern double uX_ABI _uX_mm256_cvteltd_f64(__m256d Inymm_A, const count_t Inint_BSel);
    
/*
 * FP, misc
 */

    extern __m256 uX_ABI _uX_mm256_unpackhi_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_unpacklo_ps(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_shuffle_ps(__m256 Inymm_A, __m256 Inymm_B, const count_t Inint_Imm8);
    extern __m256 uX_ABI _uX_mm256_permutevar_ps(__m256  Inxmm_A, __m256i Inymm_mask);
    extern __m128 uX_ABI _uX_mm_permutevar_ps(__m128  Inxmm_A, __m128i Inxmm_mask);
    extern __m256 uX_ABI _uX_mm256_permute_ps(__m256 Inymm_A, const count_t Inint_Imm8);
    /*extern __m128 uX_ABI _uX_mm_permute_ps(__m128 Inxmm_A, const count_t Inint_Imm8);*/ /*Already defined in uXemmintrin.h*/
    extern __m256 uX_ABI _uX_mm256_permute2f128_ps(__m256 Inymm_A, __m256 Inymm_B, const count_t Inint_Imm8);
    extern __m256 uX_ABI _uX_mm256_blend_ps(__m256 Inymm_A, __m256 Inymm_B, const count_t Inint_mask);
    extern __m256 uX_ABI _uX_mm256_blendv_ps(__m256 Inymm_A, __m256 Inymm_B, __m256 Inymm_mask);
    extern __m128 uX_ABI _uX_mm256_extractf128_ps(__m256 Inymm_A, const count_t Inint_BSel);
    extern __m256 uX_ABI _uX_mm256_broadcast_ss(const float* InPfloat_A);
    extern __m128 uX_ABI _uX_mm_broadcast_ss(const float* InPfloat_A);
    extern __m256 uX_ABI _uX_mm256_broadcast_ps(const __m128* InPxmm_A);
    extern __m256 uX_ABI _uX_mm256_insertf128_ps(__m256 Inymm_A, __m128 Inxmm_B, const count_t Inint_BSel);
    extern int uX_ABI _uX_mm256_movemask_ps(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_zextps128_ps256(__m128 Inxmm_A);

    extern intbool_t uX_ABI _uX_mm256_testz_ps(__m256 Inymm_mask, __m256 Inymm_val);
    extern intbool_t uX_ABI _uX_mm256_testc_ps(__m256 Inymm_mask, __m256 Inymm_val);
    extern intbool_t uX_ABI _uX_mm256_testnzc_ps(__m256 Inymm_mask, __m256 Inymm_val);
    extern intbool_t uX_ABI _uX_mm_testz_ps(__m128 Inxmm_mask, __m128 Inxmm_val);
    extern intbool_t uX_ABI _uX_mm_testc_ps(__m128 Inxmm_mask, __m128 Inxmm_val);
    extern intbool_t uX_ABI _uX_mm_testnzc_ps(__m128 Inxmm_mask, __m128 Inxmm_val);

/*
 * DP, misc
 */

    extern __m256d uX_ABI _uX_mm256_unpackhi_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_unpacklo_pd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_shuffle_pd(__m256d Inymm_A, __m256d Inymm_B, const count_t Inint_Imm8);
    extern __m256d uX_ABI _uX_mm256_permutevar_pd(__m256d Inymm_A, __m256i Inymm_mask);
    extern __m128d uX_ABI _uX_mm_permutevar_pd(__m128d Inxmm_A, __m128i Inxmm_mask);
    extern __m256d uX_ABI _uX_mm256_permute_pd(__m256d Inymm_A, const count_t Inint_Imm8);
    /*extern __m128d uX_ABI _uX_mm_permute_pd(__m128d Inxmm_A, const count_t Inint_Imm8);*/ /*Already defined in uXemmintrin.h*/
    extern __m256d uX_ABI _uX_mm256_permute2f128_pd(__m256d Inymm_A, __m256d Inymm_B, const count_t Inint_Imm8);
    extern __m256d uX_ABI _uX_mm256_blend_pd(__m256d Inymm_A, __m256d Inymm_B, const count_t Inint_mask);
    extern __m256d uX_ABI _uX_mm256_blendv_pd(__m256d Inymm_A, __m256d Inymm_B, __m256d Inymm_mask);
    extern __m128d uX_ABI _uX_mm256_extractf128_pd(__m256d Inymm_A, const count_t Inint_BSel);
    extern __m256d uX_ABI _uX_mm256_broadcast_sd(const double* InPdouble_A);
    extern __m128 uX_ABI _uX_mm_broadcast_sd(const double* InPdouble_A);
    extern __m256d uX_ABI _uX_mm256_broadcast_pd(const __m128d* InPxmm_A);
    extern __m256d uX_ABI _uX_mm256_insertf128_pd(__m256d Inymm_A, __m128d Inxmm_B, const count_t Inint_BSel);
    extern int uX_ABI _uX_mm256_movemask_pd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_zextpd128_pd256(__m128d Inxmm_A);

    extern intbool_t uX_ABI _uX_mm256_testz_pd(__m256d  Inxmm_mask, __m256d Inymm_val);
    extern intbool_t uX_ABI _uX_mm256_testc_pd(__m256d Inymm_mask, __m256d Inymm_val);
    extern intbool_t uX_ABI _uX_mm256_testnzc_pd(__m256d Inymm_mask, __m256d Inymm_val);
    extern intbool_t uX_ABI _uX_mm_testz_pd(__m128d Inxmm_mask, __m128d Inxmm_val);
    extern intbool_t uX_ABI _uX_mm_testc_pd(__m128d Inxmm_mask, __m128d Inxmm_val);
    extern intbool_t uX_ABI _uX_mm_testnzc_pd(__m128d Inxmm_mask, __m128d Inxmm_val);

    extern void uX_ABI _uX_mm256_zeroall();
    extern void uX_ABI _uX_mm256_zeroupper();

/*
 * FP, sets
 */

    extern __m256 uX_ABI _uX_mm256_set_ss(float Infloat_A);
    extern __m256 uX_ABI _uX_mm256_set_ps1(float Infloat_A);
    extern __m256 uX_ABI _uX_mm256_set_ps(float Infloat_7, float Infloat_6, float Infloat_5, float Infloat_4, 
                                                 float Infloat_3, float Infloat_2, float Infloat_1, float Infloat_0);
    extern __m256 uX_ABI _uX_mm256_setr_ps(float Infloat_0, float Infloat_1, float Infloat_2, float Infloat_3, 
                                                  float Infloat_4, float Infloat_5, float Infloat_6, float Infloat_7);

    extern __m256 uX_ABI _uX_mm256_setzero_ps();

    extern __m256 uX_ABI _uX_mm256_set_m128(__m128 Inxmm_B, __m128 Inxmm_A);
    extern __m256 uX_ABI _uX_mm256_setr_m128(__m128 Inxmm_A, __m128 Inxmm_B);

/*
 * DP, sets
 */

    extern __m256d uX_ABI _uX_mm256_set_sd(double Indouble_A);
    extern __m256d uX_ABI _uX_mm256_set_pd1(double Indouble_A);
    extern __m256d uX_ABI _uX_mm256_set_pd(double Indouble_3, double Indouble_2, double Indouble_1, double Indouble_0);
    extern __m256d uX_ABI _uX_mm256_setr_pd(double Indouble_0, double Indouble_1, double Indouble_2, double Indouble_3);

    extern __m256d uX_ABI _uX_mm256_setzero_pd();

    extern __m256d uX_ABI _uX_mm256_set_m128d(__m128d Inxmm_B, __m128d Inxmm_A);
    extern __m256d uX_ABI _uX_mm256_setr_m128d(__m128d Inxmm_A, __m128d Inxmm_B);
    
/*
 * FP, loads
 */

    extern __m256 uX_ABI _uX_mm256_load_ss(const float* InPfloat_A);
    extern __m256 uX_ABI _uX_mm256_load_ps1(const float* InPfloat_A);
    extern __m256 uX_ABI _uX_mm256_load_ps(const float* InPfloat_A);
    extern __m256 uX_ABI _uX_mm256_loadr_ps(const float* InPfloat_A);
    extern __m256 uX_ABI _uX_mm256_loadu_ps(const float* InPfloat_A);
    extern __m256 uX_ABI _uX_mm256_loadur_ps(const float* InPfloat_A);
    /*extern __m256 uX_ABI _uX_mm256_loadh_ps(const float* InPfloat_A);
    extern __m256 uX_ABI _uX_mm256_loadl_ps(const float* InPfloat_A);*/
    extern __m256 uX_ABI _uX_mm256_load2_m128(const float* InPfloat_A, const float* InPfloat_B);
    extern __m256 uX_ABI _uX_mm256_loadr2_m128(const float* InPfloat_A, const float* InPfloat_B);
    extern __m256 uX_ABI _uX_mm256_loadu2_m128(const float* InPfloat_A, const float* InPfloat_B);
    extern __m256 uX_ABI _uX_mm256_loadur2_m128(const float* InPfloat_A, const float* InPfloat_B);

    extern __m256 uX_ABI _uX_mm256_maskload_ps(const float* InPfloat_A, __m256i Inymm_mask);
    extern __m128 uX_ABI _uX_mm_maskload_ps(const float* InPfloat_A, __m128i Inxmm_mask);

/*
 * DP, loads
 */

    extern __m256d uX_ABI _uX_mm256_load_sd(const double* InPdouble_A);
    extern __m256d uX_ABI _uX_mm256_load_pd1(const double* InPdouble_A);
    extern __m256d uX_ABI _uX_mm256_load_pd(const double* InPdouble_A);
    extern __m256d uX_ABI _uX_mm256_loadr_pd(const double* InPdouble_A);
    extern __m256d uX_ABI _uX_mm256_loadu_pd(const double* InPdouble_A);
    extern __m256d uX_ABI _uX_mm256_loadur_pd(const double* InPdouble_A);
    /*extern __m256d uX_ABI _uX_mm256_loadh_pd(__m256d Inymm_B, const double* InPdouble_B);
    extern __m256d uX_ABI _uX_mm256_loadl_pd(__m256d Inymm_B, const double* InPdouble_B);*/
    extern __m256d uX_ABI _uX_mm256_load2_m128d(const double* InPdouble_A, const double* InPdouble_B);
    extern __m256d uX_ABI _uX_mm256_loadr2_m128d(const double* InPdouble_A, const double* InPdouble_B);
    extern __m256d uX_ABI _uX_mm256_loadu2_m128d(const double* InPdouble_A, const double* InPdouble_B);
    extern __m256d uX_ABI _uX_mm256_loadur2_m128d(const double* InPdouble_A, const double* InPdouble_B);
    extern __m256d uX_ABI _uX_mm256_loaddup_pd(const double* InPdouble_A);

    extern __m256d uX_ABI _uX_mm256_maskload_pd(const double* InPdouble_A, __m256i Inymm_mask);
    extern __m128d uX_ABI _uX_mm_maskload_pd(const double* InPdouble_A, __m128i Inxmm_mask);

/*
 * FP, stores
 */

    extern void uX_ABI _uX_mm256_store_ss(float* Outpfloat_A, __m256 Inymm_B);
    extern void uX_ABI _uX_mm256_store_ps1(float* Outpfloat_A, __m256 Inymm_B);
    extern void uX_ABI _uX_mm256_storeu_ps1(float* Outpfloat_A, __m256 Inymm_B);
    extern void uX_ABI _uX_mm256_store_ps(float* Outpfloat_A, __m256 Inymm_B);
    extern void uX_ABI _uX_mm256_storeu_ps(float* Outpfloat_A, __m256 Inymm_B);
    extern void uX_ABI _uX_mm256_storer_ps(float* Outpfloat_A, __m256 Inymm_B);
    extern void uX_ABI _uX_mm256_storeur_ps(float* Outpfloat_A, __m256 Inymm_B);
    /*extern void uX_ABI _uX_mm256_storeh_ps(float* Outpfloat_A, __m256 Inymm_B);
    extern void uX_ABI _uX_mm256_storel_ps(float* Outpfloat_A, __m256 Inymm_B);*/
    extern __m256 uX_ABI _uX_mm256_store2_m128(float* Outpfloat_A, float* Outpfloat_B);
    extern __m256 uX_ABI _uX_mm256_storer2_m128(float* Outpfloat_A, float* Outpfloat_B);
    extern __m256 uX_ABI _uX_mm256_storeu2_m128(float* Outpfloat_A, float* Outpfloat_B);
    extern __m256 uX_ABI _uX_mm256_storeur2_m128(float* Outpfloat_A, float* Outpfloat_B);

    extern void uX_ABI _uX_mm256_maskstore_ps(float* Outpfloat_A, __m256i Inymm_mask, __m256 Inymm_C);
    extern void uX_ABI _uX_mm_maskstore_ps(float* Outpfloat_A, __m128i Inxmm_mask, __m128 Inxmm_C);

    extern void uX_ABI _uX_mm256_store_mm256_ps(__m256* Outpxmm_A, __m256 Inymm_B);
    extern void uX_ABI _uX_mm256_store_pfloat_ps(__m256* Outpxmm_A, const float* InPfloat_B);
    extern void uX_ABI _uX_mm256_storeu_pfloat_ps(__m256* Outpxmm_A, const float* InPfloat_B);

/*
 * DP, stores
 */

    extern void uX_ABI _uX_mm256_store_sd(double* Outpdouble_A, __m256d Inymm_B);
    extern void uX_ABI _uX_mm256_store_pd1(double* Outpdouble_A, __m256d Inymm_B);
    extern void uX_ABI _uX_mm256_storeu_pd1(double* Outpdouble_A, __m256d Inymm_B);
    extern void uX_ABI _uX_mm256_store_pd(double* Outpdouble_A, __m256d Inymm_B);
    extern void uX_ABI _uX_mm256_storeu_pd(double* Outpdouble_A, __m256d Inymm_B);
    extern void uX_ABI _uX_mm256_storer_pd(double* Outpdouble_A, __m256d Inymm_B);
    extern void uX_ABI _uX_mm256_storeur_pd(double* Outpdouble_A, __m256d Inymm_B);
    /*extern void uX_ABI _uX_mm256_storeh_pd(double* Outpdouble_A, __m256d Inymm_B);
    extern void uX_ABI _uX_mm256_storel_pd(double* Outpdouble_A, __m256d Inymm_B);*/
    extern __m256d uX_ABI _uX_mm256_store2_m128d(double* Outpdouble_A, double* Outpdouble_B);
    extern __m256d uX_ABI _uX_mm256_storer2_m128d(double* Outpdouble_A, double* Outpdouble_B);
    extern __m256d uX_ABI _uX_mm256_storeu2_m128d(double* Outpdouble_A, double* Outpdouble_B);
    extern __m256d uX_ABI _uX_mm256_storeur2_m128d(double* Outpdouble_A, double* Outpdouble_B);

    extern void uX_ABI _uX_mm256_maskstore_pd(double* Outpdouble_A, __m256i Inymm_mask, __m256d Inymm_C);
    extern void uX_ABI _uX_mm_maskstore_pd(double* Outpdouble_A, __m128i Inxmm_mask, __m128d Inxmm_C);

    extern void uX_ABI _uX_mm256_store_mm256_pd(__m256d* Outpxmm_A, __m256d Inymm_B);
    extern void uX_ABI _uX_mm256_store_pdouble_pd(__m256d* Outpxmm_A, const double* InPdouble_B);
    extern void uX_ABI _uX_mm256_storeu_pdouble_pd(__m256d* Outpxmm_A, const double* InPdouble_B);

/*
 * FP, moves
 */

    extern __m256 uX_ABI _uX_mm256_move_ss(__m256 Inymm_A, __m256 Inymm_B);
    extern __m256 uX_ABI _uX_mm256_move_ps1(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_move_ps(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_mover_ps(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_movehdup_ps(__m256 Inymm_A);
    extern __m256 uX_ABI _uX_mm256_moveldup_ps(__m256 Inymm_A);

    extern float* uX_ABI _uX_ptr_move_mm256_ss(__m256 Inymm_A, __m256 Inymm_B);
    extern float* uX_ABI _uX_ptr_move_mm256_ps1(__m256 Inymm_A);
    extern float* uX_ABI _uX_ptr_move_mm256_ps(__m256 Inymm_A);
    extern float* uX_ABI _uX_ptr_mover_mm256_ps(__m256 Inymm_A);
    extern float* uX_ABI _uX_ptr_moveu_mm256_ss(__m256 Inymm_A, __m256 Inymm_B);
    extern float* uX_ABI _uX_ptr_moveu_mm256_ps1(__m256 Inymm_A);
    extern float* uX_ABI _uX_ptr_moveu_mm256_ps(__m256 Inymm_A);
    extern float* uX_ABI _uX_ptr_moveur_mm256_ps(__m256 Inymm_A);

/*
 * DP, moves
 */

    extern __m256d uX_ABI _uX_mm256_move_sd(__m256d Inymm_A, __m256d Inymm_B);
    extern __m256d uX_ABI _uX_mm256_move_pd1(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_move_pd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_mover_pd(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_movedup_pd(__m256d Inymm_A);

    extern double* uX_ABI _uX_ptr_move_mm256_sd(__m256d Inymm_A, __m256d Inymm_B);
    extern double* uX_ABI _uX_ptr_move_mm256_pd1(__m256d Inymm_A);
    extern double* uX_ABI _uX_ptr_move_mm256_pd(__m256d Inymm_A);
    extern double* uX_ABI _uX_ptr_mover_mm256_pd(__m256d Inymm_A);
    extern double* uX_ABI _uX_ptr_moveu_mm256_sd(__m256d Inymm_A, __m256d Inymm_B);
    extern double* uX_ABI _uX_ptr_moveu_mm256_pd1(__m256d Inymm_A);
    extern double* uX_ABI _uX_ptr_moveu_mm256_pd(__m256d Inymm_A);
    extern double* uX_ABI _uX_ptr_moveur_mm256_pd(__m256d Inymm_A);

/*
 * Integer, logicals
 */

    extern __m256i uX_ABI _uX_mm256_and_si256(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_andnot_si256(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_or_si256(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_xor_si256(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_not_si256(__m256i Inymm_A);

/*
 * Integer, converts
 */

    extern __m256i uX_ABI _uX_mm256_cvtps_epi32(__m256 Inymm_A);
    extern __m256i uX_ABI _uX_mm256_cvttps_epi32(__m256 Inymm_A);
    extern __m128i uX_ABI _uX_mm256_cvtpd_epi32(__m256d Inymm_A);
    extern __m128i uX_ABI _uX_mm256_cvttpd_epi32(__m256d Inymm_A);

/*
 * Integer, misc
 */

    extern __m256i uX_ABI _uX_mm256_permute2f128_si256(__m256i Inymm_A, __m256i, const count_t Inint_Imm);
    extern int8_t uX_ABI _uX_mm256_extract_epi8(__m256i Inymm_A, const count_t Inint_Imm8);
    extern int16_t uX_ABI _uX_mm256_extract_epi16(__m256i Inymm_A, const count_t Inint_Imm8);
    extern int32_t uX_ABI _uX_mm256_extract_epi32(__m256i Inymm_A, const count_t Inint_BSel);
#if defined(uX_X64)
    extern int64_t uX_ABI _uX_mm256_extract_epi64(__m256i Inymm_A, const count_t Inint_BSel);
#endif  /* defined (uX_X64) */
    extern __m128i uX_ABI _uX_mm256_extractf128_si256(__m256i Inymm_A, const count_t Inint_BSel);

    extern __m256i uX_ABI _uX_mm256_insert_epi8(__m256i Inymm_A, int8_t Inint_B, const count_t Inint_Imm8);
    extern __m256i uX_ABI _uX_mm256_insert_epi16(__m256i Inymm_A, int16_t Inint_B, const count_t Inint_Imm8);
    extern __m256i uX_ABI _uX_mm256_insert_epi32(__m256i Inymm_A, int32_t Inint_B, const count_t Inint_Imm8);
#if defined(uX_X64)
    extern __m256i uX_ABI _uX_mm256_insert_epi64(__m256i Inymm_A, int64_t Inint_B, const count_t Inint_Imm8);
#endif  /* defined (uX_X64) */
    extern __m256i uX_ABI _uX_mm256_insertf128_si256(__m256i Inymm_A, __m128i Inxmm_B, const count_t Inint_BSel);
    extern __m256i uX_ABI _uX_mm256_zextsi128_si256(__m128i Inxmm_A);

    extern intbool_t uX_ABI _uX_mm256_testz_si256(__m256i Inymm_mask, __m256i Inymm_val);
    extern intbool_t uX_ABI _uX_mm256_testc_si256(__m256i Inymm_mask, __m256i Inymm_val);
    extern intbool_t uX_ABI _uX_mm256_testnzc_si256(__m256i Inymm_mask, __m256i Inymm_val);

/*
 * Integer, sets
 */

    extern __m256i uX_ABI _uX_mm256_set_epi64(__m256i Inymm_Q1, __m256i Inymm_Q0);
    extern __m256i uX_ABI _uX_mm256_set_epi64x(int64_t Inint_Q3, int64_t Inint_Q2, int64_t Inint_Q1, int64_t Inint_Q0);
    extern __m256i uX_ABI _uX_mm256_set_epi32(int32_t Inint_D7, int32_t Inint_D6, int32_t Inint_D5, int32_t Inint_D4, 
                                                   int32_t Inint_D3, int32_t Inint_D2, int32_t Inint_D1, int32_t Inint_D0);
    extern __m256i uX_ABI _uX_mm256_set_epi16(int16_t Inint_W15, int16_t Inint_W14, int16_t Inint_W13, int16_t Inint_W12,
                                                   int16_t Inint_W11, int16_t Inint_W10, int16_t Inint_W9, int16_t Inint_W8,
                                                   int16_t Inint_W7, int16_t Inint_W6, int16_t Inint_W5, int16_t Inint_W4,
                                                   int16_t Inint_W3, int16_t Inint_W2, int16_t Inint_W1, int16_t Inint_W0);
    extern __m256i uX_ABI _uX_mm256_set_epi8(int8_t Inint_B31, int8_t Inint_B30, int8_t Inint_B29, int8_t Inint_B28,
                                                  int8_t Inint_B27, int8_t Inint_B26, int8_t Inint_B25, int8_t Inint_B24,
                                                  int8_t Inint_B23, int8_t Inint_B22, int8_t Inint_B21, int8_t Inint_B20,
                                                  int8_t Inint_B19, int8_t Inint_B18, int8_t Inint_B17, int8_t Inint_B16,
                                                  int8_t Inint_B15, int8_t Inint_B14, int8_t Inint_B13, int8_t Inint_B12,
                                                  int8_t Inint_B11, int8_t Inint_B10, int8_t Inint_B9, int8_t Inint_B8,
                                                  int8_t Inint_B7, int8_t Inint_B6, int8_t Inint_B5, int8_t Inint_B4,
                                                  int8_t Inint_B3, int8_t Inint_B2, int8_t Inint_B1, int8_t Inint_B0);

    extern __m256i uX_ABI _uX_mm256_setr_epi64(__m256i Inymm_Q0, __m256i Inymm_Q1);
    extern __m256i uX_ABI _uX_mm256_setr_epi64x(int64_t Inint_Q0, int64_t Inint_Q1, int64_t Inint_Q2, int64_t Inint_Q3);
    extern __m256i uX_ABI _uX_mm256_setr_epi32(int32_t Inint_D0, int32_t Inint_D1, int32_t Inint_D2, int32_t Inint_D3,
                                                    int32_t Inint_D4, int32_t Inint_D5, int32_t Inint_D6, int32_t Inint_D7);
    extern __m256i uX_ABI _uX_mm256_setr_epi16(int16_t Inint_W0, int16_t Inint_W1, int16_t Inint_W2, int16_t Inint_W3,
                                                    int16_t Inint_W4, int16_t Inint_W5, int16_t Inint_W6, int16_t Inint_W7,
                                                    int16_t Inint_W8, int16_t Inint_W9, int16_t Inint_W10, int16_t Inint_W11,
                                                    int16_t Inint_W12, int16_t Inint_W13, int16_t Inint_W14, int16_t Inint_W15);
    extern __m256i uX_ABI _uX_mm256_setr_epi8(int8_t Inint_B0, int8_t Inint_B1, int8_t Inint_B2, int8_t Inint_B3,
                                                   int8_t Inint_B4, int8_t Inint_B5, int8_t Inint_B6, int8_t Inint_B7,
                                                   int8_t Inint_B8, int8_t Inint_B9, int8_t Inint_B10, int8_t Inint_B11,
                                                   int8_t Inint_B12, int8_t Inint_B13, int8_t Inint_B14, int8_t Inint_B15,
                                                   int8_t Inint_B16, int8_t Inint_B17, int8_t Inint_B18, int8_t Inint_B19,
                                                   int8_t Inint_B20, int8_t Inint_B21, int8_t Inint_B22, int8_t Inint_B23,
                                                   int8_t Inint_B24, int8_t Inint_B25, int8_t Inint_B126, int8_t Inint_B27,
                                                   int8_t Inint_B28, int8_t Inint_B29, int8_t Inint_B30, int8_t Inint_B31);

    extern __m256i uX_ABI _uX_mm256_set1_epi64(__m256i Inymm_Q);
    extern __m256i uX_ABI _uX_mm256_set1_epi64x(int64_t Inint_Q);
    extern __m256i uX_ABI _uX_mm256_set1_epi32(int32_t Inint_D);
    extern __m256i uX_ABI _uX_mm256_set1_epi16(int16_t Inint_W);
    extern __m256i uX_ABI _uX_mm256_set1_epi8(int8_t Inint_B);
    extern __m256i uX_ABI _uX_mm256_setl_epi64(__m256i Inymm_Q);
    extern __m256i uX_ABI _uX_mm256_setl_epi64x(int64_t Inint_Q);

    extern __m256i uX_ABI _uX_mm256_setzero_si256();

    extern __m256i uX_ABI _uX_mm256_set_m128i(__m128i Inxmm_B, __m128i Inxmm_A);
    extern __m256i uX_ABI _uX_mm256_setr_m128i(__m128i Inxmm_A, __m128i Inxmm_B);

/*
 * Integer, loads
 */

    extern __m256i uX_ABI _uX_mm256_load1_epi64(const __m256i* InPxmm_A);
    extern __m256i uX_ABI _uX_mm256_load1_epi32(const __m256i* InPxmm_A);
    extern __m256i uX_ABI _uX_mm256_load_si256(const __m256i* InPxmm_A);
    extern __m256i uX_ABI _uX_mm256_loadr_epi64(const __m256i* InPxmm_A);
    extern __m256i uX_ABI _uX_mm256_loadr_epi32(const __m256i* InPxmm_A);
    extern __m256i uX_ABI _uX_mm256_loadu_si256(const __m256i* InPxmm_A);
    extern __m256i uX_ABI _uX_mm256_loadur_epi64(const __m256i* InPxmm_A);
    extern __m256i uX_ABI _uX_mm256_loadur_epi32(const __m256i* InPxmm_A);
    extern __m256i uX_ABI _uX_mm256_loadh_epi64(__m256i Inymm_A, const __m256i* InPxmm_B);
    extern __m256i uX_ABI _uX_mm256_loadl_epi64(__m256i Inymm_A, const __m256i* InPxmm_B);
    /*extern __m256i uX_ABI _uX_mm256_loadh_epi32(__m256i Inymm_A, const __m256i* InPxmm_B);
    extern __m256i uX_ABI _uX_mm256_loadl_epi32(__m256i Inymm_A, const __m256i* InPxmm_B);*/
    extern __m256i uX_ABI _uX_mm256_load2_m128i(const __m128i* InPxmm_A, const __m128i* InPxmm_B);
    extern __m256i uX_ABI _uX_mm256_loadr_m128i(const __m128i* InPxmm_A, const __m128i* InPxmm_B);
    extern __m256i uX_ABI _uX_mm256_loadu2_m128i(const __m128i* InPxmm_A, const __m128i* InPxmm_B);
    extern __m256i uX_ABI _uX_mm256_loadur2_m128i(const __m128i* InPxmm_A, const __m128i* InPxmm_B);

    extern __m256i uX_ABI _uX_mm256_lddqu_si256(__m256i const *);

/*
 * Integer, stores
 */

    extern void uX_ABI _uX_mm256_store1_epi64(__m256i* Outpxmm_A, __m256i Inymm_Q);
    extern void uX_ABI _uX_mm256_store1_epi32(__m256i* Outpxmm_A, __m256i Inymm_D);
    extern void uX_ABI _uX_mm256_store_si256(__m256i* Outpxmm_A, __m256i Inymm_B);
    extern void uX_ABI _uX_mm256_storer_epi64(__m256i* Outpxmm_A, __m256i Inymm_Q);
    extern void uX_ABI _uX_mm256_storer_epi32(__m256i* Outpxmm_A, __m256i Inymm_D);
    extern void uX_ABI _uX_mm256_storeu_si256(__m256i* Outpxmm_A, __m256i Inymm_B);
    extern void uX_ABI _uX_mm256_storeur_epi64(__m256i* Outpxmm_A, __m256i Inymm_Q);
    extern void uX_ABI _uX_mm256_storeur_epi32(__m256i* Outpxmm_A, __m256i Inymm_D);
    /*extern void uX_ABI _uX_mm256_storeh_epi64(__m256i* Outpxmm_A, __m256i Inymm_Q);
    extern void uX_ABI _uX_mm256_storel_epi64(__m256i* Outpxmm_A, __m256i Inymm_Q);
    extern void uX_ABI _uX_mm256_storeh_epi32(__m256i* Outpxmm_A, __m256i Inymm_D);
    extern void uX_ABI _uX_mm256_storel_epi32(__m256i* Outpxmm_A, __m256i Inymm_D);*/
    extern __m256i uX_ABI _uX_mm256_store2_m128i(__m128i* OutPxmm_A, __m128i* OutPxmm_B);
    extern __m256i uX_ABI _uX_mm256_storer_m128i(__m128i* OutPxmm_A, __m128i* OutPxmm_B);
    extern __m256i uX_ABI _uX_mm256_storeu2_m128i(__m128i* OutPxmm_A, __m128i* OutPxmm_B);
    extern __m256i uX_ABI _uX_mm256_storeur2_m128i(__m128i* OutPxmm_A, __m128i* OutPxmm_B);

    /*extern void uX_ABI _uX_mm256_maskmoveu_si256(__m256i Inymm_D, __m256i Inymm_N, int8_t* Outpint_P);*/

    extern void uX_ABI _uX_mm256_store_psi256(__m256i* Outpxmm_A, const __m256i* InPxmm_B);
    extern void uX_ABI _uX_mm256_storeu_psi256(__m256i* Outpxmm_A, const __m256i* InPxmm_B);

/*
 * Integer, moves
 */

    extern __m256i uX_ABI _uX_mm256_moveq_epi64(__m256i Inymm_A);
    extern __m256i uX_ABI _uX_mm256_moveqr_epi64(__m256i Inymm_A);
    extern __m256i uX_ABI _uX_mm256_moved_epi32(__m256i Inymm_A);
    extern __m256i uX_ABI _uX_mm256_movedr_epi32(__m256i Inymm_A);

    extern __m256i uX_ABI _uX_mm256_move_epi64(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_mover_epi64(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_move1_epi64(__m256i Inymm_A);
    extern __m256i uX_ABI _uX_mm256_move_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_mover_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_move1_epi32(__m256i Inymm_A);
    extern __m256i uX_ABI _uX_mm256_move_si256(__m256i Inymm_A);

    extern __m256i* uX_ABI _uX_ptr_move_mm256_epi64(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i* uX_ABI _uX_ptr_mover_mm256_epi64(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i* uX_ABI _uX_ptr_move1_mm256_epi64(__m256i Inymm_A);
    extern __m256i* uX_ABI _uX_ptr_moveu_mm256_epi64(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i* uX_ABI _uX_ptr_moveur_mm256_epi64(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i* uX_ABI _uX_ptr_moveu1_mm256_epi64(__m256i Inymm_A);
    extern __m256i* uX_ABI _uX_ptr_move_mm256_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i* uX_ABI _uX_ptr_mover_mm256_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i* uX_ABI _uX_ptr_move1_mm256_epi32(__m256i Inymm_A);
    extern __m256i* uX_ABI _uX_ptr_moveu_mm256_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i* uX_ABI _uX_ptr_moveur_mm256_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i* uX_ABI _uX_ptr_moveu1_mm256_epi32(__m256i Inymm_A);
    extern __m256i* uX_ABI _uX_ptr_move_mm256_si256(__m256i Inymm_A);
    extern __m256i* uX_ABI _uX_ptr_moveu_mm256_si256(__m256i Inymm_A);
    
/*
 * Cacheability support
 */

    extern void uX_ABI _uX_mm256_stream_ps(float* Outpdouble_A, __m256 Inymm_A);
    extern void uX_ABI _uX_mm256_stream_pd(double* Outpdouble_A, __m256d Inymm_A);
    extern void uX_ABI _uX_mm256_stream_si256(__m256i* Outpxmm_A, __m256i Inymm_A);
    extern void uX_ABI _uX_mm256_stream_si32(int32_t* Outpint_A, int32_t Inint_B);
    extern void uX_ABI _uX_mm256_stream_si64(int64_t* Outpint_A, int64_t Inint_B);

/*
 * Support for casting between various SP, DP, INT vector types.
 * Note that these do no conversion of values, they just change
 * the type.
 */

    extern __m256 uX_ABI _uX_mm256_castpd_ps(__m256d Inymm_A);
    extern __m256d uX_ABI _uX_mm256_castps_pd(__m256 Inymm_A);
    extern __m256i uX_ABI _uX_mm256_castps_si256(__m256 Inymm_A);
    extern __m256i uX_ABI _uX_mm256_castpd_si256(__m256d Inymm_A);
    extern __m256 uX_ABI _uX_mm256_castsi256_ps(__m256i Inymm_A);
    extern __m256d uX_ABI _uX_mm256_castsi256_pd(__m256i Inymm_A);
    extern __m128 uX_ABI _uX_mm256_castps256_ps128(__m256 Inymm_A);
    extern __m128d uX_ABI _uX_mm256_castpd256_pd128(__m256d Inymm_A);
    extern __m128i uX_ABI _uX_mm256_castsi256_si128(__m256i Inymm_A);
    extern __m256 uX_ABI _uX_mm256_castps128_ps256(__m128 Inxmm_A);
    extern __m256d uX_ABI _uX_mm256_castpd128_pd256(__m128d Inxmm_A);
    extern __m256i uX_ABI _uX_mm256_castsi128_si256(__m128i Inxmm_A);

/*
 * Support for half-float conversions to/from normal float.
 * Immediate argument is used for special MXCSR overrides.
 */

    extern __m128 uX_ABI _uX_mm_cvtph_ps(__m128i Inxmm_A);
    extern __m256 uX_ABI _uX_mm256_cvtph_ps(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_cvtps_ph(__m128 Inxmm_A, const count_t iRoundMode);
    extern __m128i uX_ABI _uX_mm256_cvtps_ph(__m256 Inymm_A, const count_t iRoundMode);

/*
 * Undefined
 */

    extern __m256 uX_ABI  _uX_mm256_undefined_ps();
    extern __m256d uX_ABI  _uX_mm256_undefined_pd();
    extern __m256i uX_ABI  _uX_mm256_undefined_si256();

#ifdef uX_AVX2
/*
 * Integer, arithmetic
 */

    extern __m256i uX_ABI _uX_mm256_add_epi8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_add_epi16(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_add_epi32(__m256i Inymm_A, __m256i Inymm_B);   
    extern __m256i uX_ABI _uX_mm256_add_epi64(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_adds_epi8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_adds_epi16(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_adds_epu8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_adds_epu16(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_avg_epu8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_avg_epu16(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_madd_epi16(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_max_epi16(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_max_epu8(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_min_epi16(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_min_epu8(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_mulhi_epi16(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_mulhi_epu16(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_mullo_epi16(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_mul_epu32(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_sad_epu8(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_sub_epi8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_sub_epi16(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_sub_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_sub_epi64(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_subs_epi8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_subs_epi16(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_subs_epu8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_subs_epu16(__m256i Inymm_A, __m256i Inymm_B);

/*
 * Integer, shifts
 */

    extern __m256i uX_ABI _uX_mm256_slli_si256(__m256i Inymm_A, const count_t Inint_Count);
#define _uX_mm256_bslli_si256 _uX_mm256_slli_si256
    extern __m256i uX_ABI _uX_mm256_slli_epi16(__m256i Inymm_A, const count_t Inint_Count);
    extern __m256i uX_ABI _uX_mm256_sll_epi16(__m256i Inymm_A, __m256i Inymm_Count);
    extern __m256i uX_ABI _uX_mm256_slli_epi32(__m256i Inymm_A, const count_t Inint_Count);
    extern __m256i uX_ABI _uX_mm256_sll_epi32(__m256i Inymm_A, __m256i Inymm_Count);
    extern __m256i uX_ABI _uX_mm256_slli_epi64(__m256i Inymm_A, const count_t Inint_Count);
    extern __m256i uX_ABI _uX_mm256_sll_epi64(__m256i Inymm_A, __m256i Inymm_Count);
    extern __m256i uX_ABI _uX_mm256_srai_epi16(__m256i Inymm_A, const count_t Inint_Count);
    extern __m256i uX_ABI _uX_mm256_sra_epi16(__m256i Inymm_A, __m256i Inymm_Count);
    extern __m256i uX_ABI _uX_mm256_srai_epi32(__m256i Inymm_A, const count_t Inint_Count);
    extern __m256i uX_ABI _uX_mm256_sra_epi32(__m256i Inymm_A, __m256i Inymm_Count);
    extern __m256i uX_ABI _uX_mm256_srli_si256(__m256i Inymm_A, const count_t Inint_Count);
#define _uX_mm256_bsrli_si256 _uX_mm256_srli_si256
    extern __m256i uX_ABI _uX_mm256_srli_epi16(__m256i Inymm_A, const count_t Inint_Count);
    extern __m256i uX_ABI _uX_mm256_srl_epi16(__m256i Inymm_A, __m256i Inymm_Count);
    extern __m256i uX_ABI _uX_mm256_srli_epi32(__m256i Inymm_A, const count_t Inint_Count);
    extern __m256i uX_ABI _uX_mm256_srl_epi32(__m256i Inymm_A, __m256i Inymm_Count);
    extern __m256i uX_ABI _uX_mm256_srli_epi64(__m256i Inymm_A, const count_t Inint_Count);
    extern __m256i uX_ABI _uX_mm256_srl_epi64(__m256i Inymm_A, __m256i Inymm_Count);

/*
 * Integer, comparisons
 */

    extern __m256i uX_ABI _uX_mm256_cmpeq_epi8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_cmpeq_epi16(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_cmpeq_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_cmpgt_epi8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_cmpgt_epi16(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_cmpgt_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_cmplt_epi8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_cmplt_epi16(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_cmplt_epi32(__m256i Inymm_A, __m256i Inymm_B);
    
/*
 * Integer, converts
 */

    extern __m256i uX_ABI _uX_mm256_cvtsi32_si256(int32_t Inint_A);
    extern int uX_ABI _uX_mm256_cvtsi256_si32(__m256i Inymm_A);

    extern __m256i uX_ABI _uX_mm256_cvteltsi256_epi64(__m256i Inymm_A, const count_t Inint_BSel);
    extern int64_t uX_ABI _uX_mm256_cvteltsi256_epi64x(__m256i Inymm_A, const count_t Inint_BSel);
    extern int32_t uX_ABI _uX_mm256_cvteltsi256_epi32(__m256i Inymm_A, const count_t Inint_BSel);
    extern int16_t uX_ABI _uX_mm256_cvteltsi256_epi16(__m256i Inymm_A, const count_t Inint_BSel);
    extern int8_t uX_ABI _uX_mm256_cvteltsi256_epi8(__m256i Inymm_A, const count_t Inint_BSel);

/*
 * Support for 64-bit extension intrinsics
 */

#if defined(uX_X64)
    extern __m256i uX_ABI _uX_mm256_cvtsi64_si256(int64_t Inint_A);
    extern int64_t uX_ABI _uX_mm256_cvtsi256_si64(__m256i Inymm_A);
#endif  /* defined (uX_X64) */
    
/*
 * Integer, misc
 */

    extern __m256i uX_ABI _uX_mm256_packs_epi16(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_packs_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_packus_epi16(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_unpackhi_epi8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_unpackhi_epi16(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_unpackhi_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_unpackhi_epi64(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_unpacklo_epi8(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_unpacklo_epi16(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_unpacklo_epi32(__m256i Inymm_A, __m256i Inymm_B);
    extern __m256i uX_ABI _uX_mm256_unpacklo_epi64(__m256i Inymm_A, __m256i Inymm_B);

    extern __m256i uX_ABI _uX_mm256_shuffle_epi64(__m256i Inymm_A, const count_t Inint_Imm);
    extern __m256i uX_ABI _uX_mm256_shuffle_epi32(__m256i Inymm_A, const count_t Inint_Imm);
    extern __m256i uX_ABI _uX_mm256_shufflehi_epi16(__m256i Inymm_A, const count_t Inint_Imm);
    extern __m256i uX_ABI _uX_mm256_shufflelo_epi16(__m256i Inymm_A, const count_t Inint_Imm);

    extern int uX_ABI _uX_mm256_movemask_epi8(__m256i Inymm_A);

#endif /*uX_AVX2*/

uX_PACK_POP
uX_EXTERNC_END

#ifndef uX_IMM_BLEND_H
#include "uXimmblend.h"
#endif
#ifndef uX_IMM_CMP_H
#include "uXimmcmp.h"
#endif
#ifndef uX_EMM_PERMUTE_PD_H
#include "uXemmpermutepd.h"
#endif
#ifndef uX_EMM_INTMISC_H
#include "uXemmintmisc.h"
#endif
#ifndef uX_EMM_INTSHUFFLE_H
#include "uXemmintshuffle.h"
#endif
#ifndef uX_EMM_INTSHIFTS_H
#include "uXemmintshifts.h"
#endif

#define _uX_mm256_set1_pd       _uX_mm256_set_pd1
#define _uX_mm256_load1_pd      _uX_mm256_load_pd1
#define _uX_mm256_store1_pd     _uX_mm256_store_pd1
#define _uX_mm256_storeu1_pd    _uX_mm256_storeu_pd1

//#define _uX_mm256_set_epi64     _uX_mm256_set_epi64x
#endif // uX_SSE2

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_IMM_INTRIN_H
