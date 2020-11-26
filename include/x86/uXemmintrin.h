
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

#ifndef uX_EMM_INTRIN_H
#define uX_EMM_INTRIN_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE2

#ifndef uX_XMM_INTRIN_H
#include "uXxmmintrin.h"
#endif  /* uX_XMM_INTRIN_H */

#ifndef _INCLUDED_EMM
#include <emmintrin.h>
#endif  /* _INCLUDED_EMM */

/*******************************************************/
/* MACRO for shuffle parameter for _uX_mm_shuffle_pd().*/
/* Argument fp1 is a digit[01] that represents the fp  */
/* from argument "b" of _uX_mm_shuffle_pd that will be */
/* placed in fp1 of result. fp0 is the same for fp0 in */
/* result                                              */
/*******************************************************/
#define uX_MM_SHUFFLE2(fp1,fp0) (((fp1) << 1) | (fp0))
#define uX_MM_SHUFFLER2(fp0,fp1) ((fp0) | ((fp1) << 1))

/*
 * DP, Macros
 */

/*******************************************************/
/* MACRO for use _uX_mm_shuffle_**_pd().                */
/* Argument fp1 is a digit[01] that represents the fp   */
/* from argument "b" of _uX_mm_shuffle_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in  */
/* result                                               */
/* const __m128d temp = _uX_MM_SHUFFLER_IM_PD(Inxmm_A, Inxmm_B, 0, 1); */
/*******************************************************/
#define _uX_MM_SHUFFLE_IM_PD(VA,VB,fp1,fp0) _uX_mm_shuffle_##fp1##fp0##_pd(VA,VB)
#define _uX_MM_SHUFFLER_IM_PD(VA,VB,fp0,fp1) _uX_mm_shuffle_##fp1##fp0##_pd(VA,VB)

/*******************************************************/
/* MACRO for use _uX_mm_permute_**_pd().                */
/* Argument fp1 is a digit[01] that represents the fp   */
/* from argument "b" of _uX_mm_permute_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in  */
/* result                                               */
/* const __m128d temp = _uX_MM_PERMUTER_IM_PD(Inxmm_A, 0, 1); */
/*******************************************************/
#define _uX_MM_PERMUTE_IM_PD(VA,fp1,fp0) _uX_mm_permute_##fp1##fp0##_pd(VA)
#define _uX_MM_PERMUTER_IM_PD(VA,fp0,fp1) _uX_mm_permute_##fp1##fp0##_pd(VA)

/*******************************************************/
/* MACRO for use _uX_mm_cvtdbl_*d().              */
/* Argument fp3 is a digit[01] that represents the fp*/
/* from argument "b" of _uX_mm_cvtdbl_*d that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[01] that represents the fp */
/* from argument "a" of _uX_mm_cvtdbl_*d that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __m128d temp = _uX_MM_SETDBL_IM_PD(Inxmm_A, Indouble_B, 1); */
/*******************************************************/
#define _uX_MM_CVTDBL_IM_PD(VA,Infp,fp) _uX_mm_cvtdbl_##fp##d(VA,Infp)
#define _uX_MM_SETDBL_IM_PD(VA,Infp,fp) _uX_mm_cvtdbl_##fp##d(VA,Infp)

/*******************************************************/
/* MACRO for use _uX_mm_cvt*d_dbl().              */
/* Argument fp3 is a digit[01] that represents the fp*/
/* from argument "b" of _uX_mm_cvt*d_dbl that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[01] that represents the fp */
/* from argument "a" of _uX_mm_cvt*d_dbl that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const double temp = _uX_MM_CVTPD_IM_DBL(Inxmm_A, 1); */
/*******************************************************/
#define _uX_MM_CVTPD_IM_DBL(VA,fp) _uX_mm_cvt##fp##d_dbl(VA)

/*
 * Integer, Macros
 */

/*******************************************************/
/* MACRO for use _uX_mm_slli_si128_*().             */
/* result                                              */
/* const __m128i temp = _uX_MM_SLLI_SI128_IM(Inxmm_A, 3); */
/*******************************************************/
#define _uX_MM_SLLI_SI128_IM(VA,IMM) _uX_mm_slli_si128_##IMM##(VA)
#define _uX_MM_SLLI_EPI16_IM(VA,IMM) _uX_mm_slli_epi16_##IMM##(VA)
#define _uX_MM_SLLI_EPI32_IM(VA,IMM) _uX_mm_slli_epi32_##IMM##(VA)
#define _uX_MM_SLLI_EPI64_IM(VA,IMM) _uX_mm_slli_epi64_##IMM##(VA)
#define _uX_MM_SRAI_EPI16_IM(VA,IMM) _uX_mm_srai_epi16_##IMM##(VA)
#define _uX_MM_SRAI_EPI32_IM(VA,IMM) _uX_mm_srai_epi32_##IMM##(VA)
#define _uX_MM_SRLI_SI128_IM(VA,IMM) _uX_mm_srli_si128_##IMM##(VA)
#define _uX_MM_SRLI_EPI16_IM(VA,IMM) _uX_mm_srli_epi16_##IMM##(VA)
#define _uX_MM_SRLI_EPI32_IM(VA,IMM) _uX_mm_srli_epi32_##IMM##(VA)
#define _uX_MM_SRLI_EPI64_IM(VA,IMM) _uX_mm_srli_epi64_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_extract_epi16_*(). from 0 to 7 */
/* result                                              */
/* const int temp = _uX_MM_EXTRACT_EPI16_IM(Inxmm_A, 3); */
/*******************************************************/
#define _uX_MM_EXTRACT_EPI16_IM(VA,IMM) _uX_mm_extract_epi16_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_insert_epi16_*(). from 0 to 7 */
/* result                                              */
/* const __m128i temp = _uX_MM_INSERT_EPI16_IM(Inxmm_A, Inint_B, 3); */
/*******************************************************/
#define _uX_MM_INSERT_EPI16_IM(VA,INTB,IMM) _uX_mm_insert_epi16_##IMM##(VA,INTB)

/*******************************************************/
/* MACRO for use _uX_mm_shuffle_epi64_**().             */
/* Argument it0 is a digit[01] that represents the it*/
/* from argument "b" of _uX_mm_shuffle_epi64_** that will be     */
/* places in it0 of result. it0 is the same for it0 of */
/* result                                              */
/* const __m128i temp = _uX_MM_SHUFFLE_EPI64R_IM(Inxmm_A, Inxmm_B, 0, 1); */
/*******************************************************/
#define _uX_MM_SHUFFLE_EPI64_IM(VA,it1,it0) _uX_mm_shuffle_epi64_##it1##it0##(VA)
#define _uX_MM_SHUFFLE_EPI64R_IM(VA,it0,it1) _uX_mm_shuffle_epi64_##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_shuffle_epi32_****().               */
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uX_mm_shuffle_epi32_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uX_mm_shuffle_epi32_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __m128i temp = _uX_MM_SHUFFLE_EPI32R_IM(Inxmm_A, Inxmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define _uX_MM_SHUFFLE_EPI32_IM(VA,it3,it2,it1,it0) _uX_mm_shuffle_epi32_##it3##it2##it1##it0##(VA)
#define _uX_MM_SHUFFLE_EPI32R_IM(VA,it0,it1,it2,it3) _uX_mm_shuffle_epi32_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_shufflehi_epi16_****().             */
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uX_mm_shufflehi_epi16_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uX_mm_shufflehi_epi16_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __m128i temp = _uX_MM_SHUFFLEHI_EPI16R_IM(Inxmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uX_MM_SHUFFLEHI_EPI16_IM(VA,it3,it2,it1,it0) _uX_mm_shufflehi_epi16_##it3##it2##it1##it0##(VA)
#define _uX_MM_SHUFFLEHI_EPI16R_IM(VA,it0,it1,it2,it3) _uX_mm_shufflehi_epi16_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_shufflelo_epi16_****().             */
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uX_mm_shufflelo_epi16_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uX_mm_shufflelo_epi16_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __m128i temp = _uX_MM_SHUFFLELO_EPI16R_IM(Inxmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uX_MM_SHUFFLELO_EPI16_IM(VA,it3,it2,it1,it0) _uX_mm_shufflelo_epi16_##it3##it2##it1##it0##(VA)
#define _uX_MM_SHUFFLELO_EPI16R_IM(VA,it0,it1,it2,it3) _uX_mm_shufflelo_epi16_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_cvtepi8_si128_*().              */
/* Argument fp3 is a digit[0to15] that represents the fp*/
/* from argument "b" of _uX_mm_cvtepi8_si128_* that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0to15] that represents the fp */
/* from argument "a" of _uX_mm_cvtepi8_si128_* that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __m128i temp = _uX_MM_SETEPI8_IM_SI128(Inxmm_A, Inint8_a, 15); */
/*******************************************************/
#define _uX_MM_CVTEPI8_IM_SI128(VA,Inint,int8p) _uX_mm_cvtepi8_si128_##int8p##(VA,Inint)
#define _uX_MM_SETEPI8_IM_SI128(VA,Inint,int8p) _uX_mm_cvtepi8_si128_##int8p##(VA,Inint)

/*******************************************************/
/* MACRO for use _uX_mm_cvtsi128_epi8_*().              */
/* Argument fp3 is a digit[0to15] that represents the fp*/
/* from argument "b" of _uX_mm_cvtsi128_epi8_* that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0to15] that represents the fp */
/* from argument "a" of _uX_mm_cvtsi128_epi8_* that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const int8_t temp = _uX_MM_CVTSI128_IM_EPI8(Inxmm_A, 15); */
/*******************************************************/
#define _uX_MM_CVTSI128_IM_EPI8(VA,int8p) _uX_mm_cvtsi128_epi8_##int8p##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_cvtepi16_si128_*().              */
/* Argument fp3 is a digit[0to7] that represents the fp*/
/* from argument "b" of _uX_mm_cvtepi16_si128_* that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0to7] that represents the fp */
/* from argument "a" of _uX_mm_cvtepi16_si128_* that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __m128i temp = _uX_MM_SETEPI16_IM_SI128(Inxmm_A, Inint16_a, 7); */
/*******************************************************/
#define _uX_MM_CVTEPI16_IM_SI128(VA,Inint,int16p) _uX_mm_cvtepi16_si128_##int16p##(VA,Inint)
#define _uX_MM_SETEPI16_IM_SI128(VA,Inint,int16p) _uX_mm_cvtepi16_si128_##int16p##(VA,Inint)

/*******************************************************/
/* MACRO for use _uX_mm_cvtsi128_epi16_*().              */
/* Argument fp3 is a digit[0to7] that represents the fp*/
/* from argument "b" of _uX_mm_cvtsi128_epi16_* that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0to7] that represents the fp */
/* from argument "a" of _uX_mm_cvtsi128_epi16_* that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const int16_t temp = _uX_MM_CVTSI128_IM_EPI16(Inxmm_A, 15); */
/*******************************************************/
#define _uX_MM_CVTSI128_IM_EPI16(VA,int16p) _uX_mm_cvtsi128_epi16_##int16p##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_cvtepi32_si128_*().              */
/* Argument fp3 is a digit[0to3] that represents the fp*/
/* from argument "b" of _uX_mm_cvtepi32_si128_* that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0to3] that represents the fp */
/* from argument "a" of _uX_mm_cvtepi32_si128_* that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __m128i temp = _uX_MM_SETEPI32_IM_SI128(Inxmm_A, Inint32_a, 3); */
/*******************************************************/
#define _uX_MM_CVTEPI32_IM_SI128(VA,Inint,int32p) _uX_mm_cvtepi32_si128_##int32p##(VA,Inint)
#define _uX_MM_SETEPI32_IM_SI128(VA,Inint,int32p) _uX_mm_cvtepi32_si128_##int32p##(VA,Inint)

/*******************************************************/
/* MACRO for use _uX_mm_cvtsi128_epi32_*().              */
/* Argument fp3 is a digit[0to7] that represents the fp*/
/* from argument "b" of _uX_mm_cvtsi128_epi32_* that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0to7] that represents the fp */
/* from argument "a" of _uX_mm_cvtsi128_epi32_* that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const int32_t temp = _uX_MM_CVTSI128_IM_EPI32(Inxmm_A, 7); */
/*******************************************************/
#define _uX_MM_CVTSI128_IM_EPI32(VA,int32p) _uX_mm_cvtsi128_epi32_##int32p##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_cvtepi64_si128_*().              */
/* Argument fp3 is a digit[0to1] that represents the fp*/
/* from argument "b" of _uX_mm_cvtepi64_si128_* that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0to1] that represents the fp */
/* from argument "a" of _uX_mm_cvtepi64_si128_* that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __m128i temp = _uX_MM_SETEPI64_IM_SI128(Inxmm_A, Inxmm_B, 1); */
/*******************************************************/
#define _uX_MM_CVTEPI64_IM_SI128(VA,VB,int64p) _uX_mm_cvtepi64_si128_##int64p##(VA,VB)
#define _uX_MM_SETEPI64_IM_SI128(VA,VB,int64p) _uX_mm_cvtepi64_si128_##int64p##(VA,VB)

/*******************************************************/
/* MACRO for use _uX_mm_cvtsi128_epi64_*().              */
/* Argument fp3 is a digit[0to1] that represents the fp*/
/* from argument "b" of _uX_mm_cvtsi128_epi64_* that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0to1] that represents the fp */
/* from argument "a" of _uX_mm_cvtsi128_epi64_* that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __m128i temp = _uX_MM_CVTSI128_IM_EPI64(Inxmm_A, 1); */
/*******************************************************/
#define _uX_MM_CVTSI128_IM_EPI64(VA,int64p) _uX_mm_cvtsi128_epi64_##int64p##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_cvtepi64x_si128_*().              */
/* Argument fp3 is a digit[0to1] that represents the fp*/
/* from argument "b" of _uX_mm_cvtepi64x_si128_* that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0to1] that represents the fp */
/* from argument "a" of _uX_mm_cvtepi64x_si128_* that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __m128i temp = _uX_MM_SETEPI64X_IM_SI128(Inxmm_A, Inint64_a, 1); */
/*******************************************************/
#define _uX_MM_CVTEPI64X_IM_SI128(VA,Inint,int64p) _uX_mm_cvtepi64x_si128_##int64p##(VA,Inint)
#define _uX_MM_SETEPI64X_IM_SI128(VA,Inint,int64p) _uX_mm_cvtepi64x_si128_##int64p##(VA,Inint)

/*******************************************************/
/* MACRO for use _uX_mm_cvtsi128_epi64x_*().              */
/* Argument fp3 is a digit[0to1] that represents the fp*/
/* from argument "b" of _uX_mm_cvtsi128_epi64x_* that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0to1] that represents the fp */
/* from argument "a" of _uX_mm_cvtsi128_epi64x_* that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const int64_t temp = _uX_MM_CVTSI128_IM_EPI64X(Inxmm_A, 1); */
/*******************************************************/
#define _uX_MM_CVTSI128_IM_EPI64X(VA,int64p) _uX_mm_cvtsi128_epi64x_##int64p##(VA)

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

/*
 * DP, arithmetic
 */

    extern __m128d uX_ABI _uX_mm_add_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_add_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_sub_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_sub_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_mul_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_mul_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_div_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_div_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_scale_sd(__m128d Inxmm_A, double Indouble_B);
    extern __m128d uX_ABI _uX_mm_scale_pd(__m128d Inxmm_A, double Indouble_B);
    extern __m128d uX_ABI _uX_mm_square_sd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_square_pd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_sqrt_sd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_sqrt_pd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_rcp_sd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_rcp_pd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_rsqrt_sd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_rsqrt_pd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_min_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_min_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_max_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_max_pd(__m128d Inxmm_A, __m128d Inxmm_B);

/*
 * DP, logical
 */

    extern __m128d uX_ABI _uX_mm_and_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_andnot_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_or_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_xor_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_not_pd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_negate_pd(__m128d Inxmm_A);

    extern __m128d uX_ABI _uX_mm_and_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_andnot_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_or_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_xor_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_not_sd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_negate_sd(__m128d Inxmm_A);

    extern intbool_t uX_ABI _uX_mm_iand_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_iandnot_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ior_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_inot_pd(__m128d Inxmm_A);

    extern intbool_t uX_ABI _uX_mm_iand_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_iandnot_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ior_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_inot_sd(__m128d Inxmm_A);

    extern intbool_t uX_ABI _uX_mm_ihand_pd(__m128d Inxmm_A);
    extern intbool_t uX_ABI _uX_mm_ihor_pd(__m128d Inxmm_A);

/*
 * DP, comparison
 */

    extern __m128d uX_ABI _uX_mm_cmpeq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpeq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmplt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmplt_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmple_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmple_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpgt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpgt_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpge_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpge_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpneq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpneq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpnlt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpnlt_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpnle_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpnle_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpngt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpngt_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpnge_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpnge_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpord_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpord_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpunord_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cmpunord_sd(__m128d Inxmm_A, __m128d Inxmm_B);

/*
 * DP, comparisons return int
 */

    extern intbool_t uX_ABI _uX_mm_comieq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_comilt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_comile_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_comigt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_comige_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_comineq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_cominlt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_cominle_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_comingt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_cominge_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ucomieq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ucomilt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ucomile_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ucomigt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ucomige_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ucomineq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ucominlt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ucominle_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ucomingt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ucominge_sd(__m128d Inxmm_A, __m128d Inxmm_B);

/*
 * , conversions
 */

    extern __m128d uX_ABI _uX_mm_cvtepi32_pd(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_cvtpd_epi32(__m128d Inxmm_A);
    extern __m128i uX_ABI _uX_mm_cvttpd_epi32(__m128d Inxmm_A);

    extern __m128 uX_ABI _uX_mm_cvtepi32_ps(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_cvtps_epi32(__m128 Inxmm_A);
    extern __m128i uX_ABI _uX_mm_cvttps_epi32(__m128 Inxmm_A);

    extern __m128 uX_ABI _uX_mm_cvtpd_ps(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_cvtps_pd(__m128 Inxmm_A);

    extern __m128 uX_ABI _uX_mm_cvtsd_ss(__m128 Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_cvtss_sd(__m128d Inxmm_A, __m128 Inxmm_B);

    extern int32_t uX_ABI _uX_mm_cvtsd_si32(__m128d Inxmm_A);
    extern int32_t uX_ABI _uX_mm_cvttsd_si32(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_cvtsi32_sd(__m128d Inxmm_A, int32_t Inint_B);

#if defined(uX_X86)
    extern __m64 uX_ABI _uX_mm_cvtpd_pi32(__m128d Inxmm_A);
    extern __m64 uX_ABI _uX_mm_cvttpd_pi32(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_cvtpi32_pd(__m64 Inmm_A);
#endif

/*
 * Support for 64-bit extension intrinsics
 */

#if defined (uX_X64)
    extern int64_t uX_ABI _uX_mm_cvtsd_si64(__m128d Inxmm_A);
    extern int64_t uX_ABI _uX_mm_cvttsd_si64(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_cvtsi64_sd(__m128d Inxmm_A, int64_t Inint_B);
#endif  /* defined (uX_X64) */

/*
 * New convert to double
 */

    extern double uX_ABI _uX_mm_cvtsd_dbl(__m128d Inxmm_A);
    extern double uX_ABI _uX_mm_cvt0d_dbl(__m128d Inxmm_A);
    extern double uX_ABI _uX_mm_cvt1d_dbl(__m128d Inxmm_A);
    extern double uX_ABI _uX_mm_cvtpd_dbl(__m128d Inxmm_A, const count_t Inint_BSel);

    extern __m128d uX_ABI _uX_mm_cvtdbl_0d(__m128d Inxmm_A, double Indouble_B);
    extern __m128d uX_ABI _uX_mm_cvtdbl_1d(__m128d Inxmm_A, double Indouble_B);
    extern __m128d uX_ABI _uX_mm_cvtdbl_pd(__m128d Inxmm_A, double Indouble_B, const count_t InInt_CSel);

/*
 * DP, misc
 */

    extern __m128d uX_ABI _uX_mm_unpackhi_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_unpacklo_pd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern int uX_ABI _uX_mm_movemask_pd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_shuffle_pd(__m128d Inxmm_A, __m128d Inxmm_B, const count_t Inint_Imm8);
    extern __m128d uX_ABI _uX_mm_permute_pd(__m128d Inxmm_A, const count_t Inint_Imm8);

/*
 * DP, sets
 */

    extern __m128d uX_ABI _uX_mm_set_sd(double Indouble_A);
    extern __m128d uX_ABI _uX_mm_set_pd1(double Indouble_A);
    extern __m128d uX_ABI _uX_mm_set_pd(double Indouble_1, double Indouble_0);
    extern __m128d uX_ABI _uX_mm_setr_pd(double Indouble_0, double Indouble_1);
    extern __m128d uX_ABI _uX_mm_setzero_pd();

    extern intbool_t uX_ABI _uX_mm_iszero_pd(__m128d Inxmm_A);
    extern intbool_t uX_ABI _uX_mm_iszero_sd(__m128d Inxmm_A);

/*
 * DP, loads
 */

    extern __m128d uX_ABI _uX_mm_load_sd(const double* InPdouble_B);
    extern __m128d uX_ABI _uX_mm_load_pd1(const double* InPdouble_B);
    extern __m128d uX_ABI _uX_mm_load_pd(const double* InPdouble_B);
    extern __m128d uX_ABI _uX_mm_loadr_pd(const double* InPdouble_B);
    extern __m128d uX_ABI _uX_mm_loadu_pd(const double* InPdouble_B);
    extern __m128d uX_ABI _uX_mm_loadur_pd(const double* InPdouble_B);
    extern __m128d uX_ABI _uX_mm_loadh_pd(__m128d Inxmm_B, const double* InPdouble_C);
    extern __m128d uX_ABI _uX_mm_loadl_pd(__m128d Inxmm_B, const double* InPdouble_C);

/*
 * DP, stores
 */

    extern void uX_ABI _uX_mm_store_sd(double* Outpdouble_A, __m128d Inxmm_B);
    extern void uX_ABI _uX_mm_store_pd1(double* Outpdouble_A, __m128d Inxmm_B);
    extern void uX_ABI _uX_mm_storeu_pd1(double* Outpdouble_A, __m128d Inxmm_B);
    extern void uX_ABI _uX_mm_store_pd(double* Outpdouble_A, __m128d Inxmm_B);
    extern void uX_ABI _uX_mm_storeu_pd(double* Outpdouble_A, __m128d Inxmm_B);
    extern void uX_ABI _uX_mm_storer_pd(double* Outpdouble_A, __m128d Inxmm_B);
    extern void uX_ABI _uX_mm_storeur_pd(double* Outpdouble_A, __m128d Inxmm_B);
    extern void uX_ABI _uX_mm_storeh_pd(double* Outpdouble_A, __m128d Inxmm_B);
    extern void uX_ABI _uX_mm_storel_pd(double* Outpdouble_A, __m128d Inxmm_B);

    extern void uX_ABI _uX_mm_store_mm_pd(__m128d* Outpxmm_A, __m128d Inxmm_B);
    extern void uX_ABI _uX_mm_store_pdouble_pd(__m128d* Outpxmm_A, const double* Inpdouble_B);
    extern void uX_ABI _uX_mm_storeu_pdouble_pd(__m128d* Outpxmm_A, const double* Inpdouble_B);

/*
 * DP, moves
 */

    extern __m128d uX_ABI _uX_mm_move_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern __m128d uX_ABI _uX_mm_move_pd1(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_move_pd(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_mover_pd(__m128d Inxmm_A);

    extern const double* uX_ABI _uX_ptr_move_mm_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern const double* uX_ABI _uX_ptr_move_mm_pd1(__m128d Inxmm_A);
    extern const double* uX_ABI _uX_ptr_move_mm_pd(__m128d Inxmm_A);
    extern const double* uX_ABI _uX_ptr_mover_mm_pd(__m128d Inxmm_A);
    extern const double* uX_ABI _uX_ptr_moveu_mm_sd(__m128d Inxmm_A, __m128d Inxmm_B);
    extern const double* uX_ABI _uX_ptr_moveu_mm_pd1(__m128d Inxmm_A);
    extern const double* uX_ABI _uX_ptr_moveu_mm_pd(__m128d Inxmm_A);
    extern const double* uX_ABI _uX_ptr_moveur_mm_pd(__m128d Inxmm_A);

/*
 * Integer, arithmetic
 */

    extern __m128i uX_ABI _uX_mm_add_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_add_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_add_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uX_X86)
uX_PACK_MM
    extern __m64 uX_ABI _uX_mm_add_si64(__m64 Inmm_A, __m64 Inmm_B);
uX_PACK_XMM
#endif

    extern __m128i uX_ABI _uX_mm_add_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_adds_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_adds_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_adds_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_adds_epu16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_avg_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_avg_epu16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_madd_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_max_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_max_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_min_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_min_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_mulhi_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_mulhi_epu16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_mullo_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
#if defined(uX_X86)
uX_PACK_MM
    extern __m64 uX_ABI _uX_mm_mul_su32(__m64 Inmm_A, __m64 Inmm_B);
uX_PACK_XMM
#endif
    extern __m128i uX_ABI _uX_mm_mul_epu32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_sad_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_sub_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_sub_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_sub_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
#if defined(uX_X86)
uX_PACK_MM
    extern __m64 uX_ABI _uX_mm_sub_si64(__m64 Inmm_A, __m64 Inmm_B);
uX_PACK_XMM
#endif
    extern __m128i uX_ABI _uX_mm_sub_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_subs_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_subs_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_subs_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_subs_epu16(__m128i Inxmm_A, __m128i Inxmm_B);

/*
 * Integer, logicals
 */

    extern __m128i uX_ABI _uX_mm_and_si128(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_andnot_si128(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_or_si128(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_xor_si128(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_not_epi8(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_not_epi16(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_not_epi32(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_not_epi64(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_negate_epi8(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_negate_epi16(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_negate_epi32(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_negate_epi64(__m128i Inxmm_A);

    extern intbool_t uX_ABI _uX_mm_iand_si128(__m128i Inxmm_A, __m128i Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_iandnot_si128(__m128i Inxmm_A, __m128i Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_ior_si128(__m128i Inxmm_A, __m128i Inxmm_B);
    extern intbool_t uX_ABI _uX_mm_inot_epi8(__m128i Inxmm_A);
    extern intbool_t uX_ABI _uX_mm_inot_epi16(__m128i Inxmm_A);
    extern intbool_t uX_ABI _uX_mm_inot_epi32(__m128i Inxmm_A);
    extern intbool_t uX_ABI _uX_mm_inot_epi64(__m128i Inxmm_A);

    extern intbool_t uX_ABI _uX_mm_ihand_si128(__m128i Inxmm_A);
    extern intbool_t uX_ABI _uX_mm_ihor_si128(__m128i Inxmm_A);

/*
 * Integer, shifts
 */

    extern __m128i uX_ABI _uX_mm_slli_si128(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_slli_epi16(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_sll_epi16(__m128i Inxmm_A, __m128i Inxmm_Count);
    extern __m128i uX_ABI _uX_mm_slli_epi32(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_sll_epi32(__m128i Inxmm_A, __m128i Inxmm_Count);
    extern __m128i uX_ABI _uX_mm_slli_epi64(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_sll_epi64(__m128i Inxmm_A, __m128i Inxmm_Count);
    extern __m128i uX_ABI _uX_mm_srai_epi16(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_sra_epi16(__m128i Inxmm_A, __m128i Inxmm_Count);
    extern __m128i uX_ABI _uX_mm_srai_epi32(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_sra_epi32(__m128i Inxmm_A, __m128i Inxmm_Count);
    extern __m128i uX_ABI _uX_mm_srai_epi64(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_sra_epi64(__m128i Inxmm_A, __m128i Inxmm_Count);
    extern __m128i uX_ABI _uX_mm_srli_si128(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_srli_epi16(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_srl_epi16(__m128i Inxmm_A, __m128i Inxmm_Count);
    extern __m128i uX_ABI _uX_mm_srli_epi32(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_srl_epi32(__m128i Inxmm_A, __m128i Inxmm_Count);
    extern __m128i uX_ABI _uX_mm_srli_epi64(__m128i Inxmm_A, const count_t Inint_Count);
    extern __m128i uX_ABI _uX_mm_srl_epi64(__m128i Inxmm_A, __m128i Inxmm_Count);

/*
 * Integer, comparisons
 */
    
/*
 * Packed integer 8-bit comparison, zeroing or filling with ones corresponding parts of result
 */
    extern __m128i uX_ABI _uX_mm_cmpeq_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmplt_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmple_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpgt_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpge_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpneq_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnlt_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnle_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpngt_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnge_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    
/*
 * Packed integer 16-bit comparison, zeroing or filling with ones corresponding parts of result
 */
    extern __m128i uX_ABI _uX_mm_cmpeq_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmplt_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmple_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpgt_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpge_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpneq_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnlt_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnle_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpngt_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnge_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

/*
 * Packed integer 32-bit comparison, zeroing or filling with ones corresponding parts of result
 */
    extern __m128i uX_ABI _uX_mm_cmpeq_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmplt_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmple_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpgt_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpge_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpneq_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnlt_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnle_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpngt_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnge_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

/*
 * Packed integer 64-bit comparison, zeroing or filling with ones corresponding parts of result
 */
    extern __m128i uX_ABI _uX_mm_cmpeq_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmplt_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmple_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpgt_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpge_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpneq_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnlt_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnle_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpngt_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cmpnge_epi64(__m128i Inxmm_A, __m128i Inxmm_B);

/*
 * Integer, converts
 */

    extern __m128i uX_ABI _uX_mm_cvtsi32_si128(int32_t Inint_A);
    extern int32_t uX_ABI _uX_mm_cvtsi128_si32(__m128i Inxmm_A);

/*
 * Support for 64-bit extension intrinsics
 */

    extern __m128i uX_ABI _uX_mm_cvtsi64_si128(int64_t Inint_A);
    extern int64_t uX_ABI _uX_mm_cvtsi128_si64(__m128i Inxmm_A);

/*
 * Integer, misc
 */

    extern __m128i uX_ABI _uX_mm_packs_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_packs_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_packus_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

    extern int16_t uX_ABI _uX_mm_extract_epi16(__m128i Inxmm_A, const count_t Inint_Imm8);
    extern __m128i uX_ABI _uX_mm_insert_epi16(__m128i Inxmm_A, int16_t Inint_B, const count_t Inint_Imm8);

    extern __m128i uX_ABI _uX_mm_cvtsi128_epi64(__m128i Inxmm_A, const count_t Inint_BSel);
    extern int64_t uX_ABI _uX_mm_cvtsi128_epi64x(__m128i Inxmm_A, const count_t Inint_BSel);
    extern int32_t uX_ABI _uX_mm_cvtsi128_epi32(__m128i Inxmm_A, const count_t Inint_BSel);
    extern int16_t uX_ABI _uX_mm_cvtsi128_epi16(__m128i Inxmm_A, const count_t Inint_BSel);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8(__m128i Inxmm_A, const count_t Inint_BSel);

    extern __m128i uX_ABI _uX_mm_cvtepi64_si128(__m128i Inxmm_A, __m128i Inxmm_B, const count_t Inint_BSel);
    extern __m128i uX_ABI _uX_mm_cvtepi64x_si128(__m128i Inxmm_A, int64_t Inint_Q, const count_t Inint_BSel);
    extern __m128i uX_ABI _uX_mm_cvtepi32_si128(__m128i Inxmm_A, int32_t Inint_D, const count_t Inint_BSel);
    extern __m128i uX_ABI _uX_mm_cvtepi16_si128(__m128i Inxmm_A, int16_t Inint_W, const count_t Inint_BSel);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128(__m128i Inxmm_A, int8_t Inint_B, const count_t Inint_BSel);

    extern int uX_ABI _uX_mm_movemask_epi8(__m128i Inxmm_A);

    extern __m128i uX_ABI _uX_mm_shuffle_epi64(__m128i Inxmm_A, const count_t Inint_Imm);
    extern __m128i uX_ABI _uX_mm_shuffle_epi32(__m128i Inxmm_A, const count_t Inint_Imm);
    extern __m128i uX_ABI _uX_mm_shufflehi_epi16(__m128i Inxmm_A, const count_t Inint_Imm);
    extern __m128i uX_ABI _uX_mm_shufflelo_epi16(__m128i Inxmm_A, const count_t Inint_Imm);

    extern __m128i uX_ABI _uX_mm_unpackhi_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_unpackhi_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_unpackhi_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_unpackhi_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_unpacklo_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_unpacklo_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_unpacklo_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_unpacklo_epi64(__m128i Inxmm_A, __m128i Inxmm_B);

/*
 * Integer, loads
 */

    extern __m128i uX_ABI _uX_mm_load1_epi64(const __m128i* Inpqword_A);
    extern __m128i uX_ABI _uX_mm_load1_epi32(const __m128i* Inpdword_A);
    extern __m128i uX_ABI _uX_mm_load_si128(const __m128i* InPxmm_A);
    extern __m128i uX_ABI _uX_mm_loadr_epi64(const __m128i* InPxmm_A);
    extern __m128i uX_ABI _uX_mm_loadr_epi32(const __m128i* InPxmm_A);
    extern __m128i uX_ABI _uX_mm_loadu_si128(const __m128i* InPxmm_A);
    extern __m128i uX_ABI _uX_mm_loadur_epi64(const __m128i* InPxmm_A);
    extern __m128i uX_ABI _uX_mm_loadur_epi32(const __m128i* InPxmm_A);
    extern __m128i uX_ABI _uX_mm_loadh_epi64(__m128i Inxmm_A, const __m128i* InPxmm_B);
    extern __m128i uX_ABI _uX_mm_loadl_epi64(__m128i Inxmm_A, const __m128i* InPxmm_B);
    extern __m128i uX_ABI _uX_mm_loadh_epi32(__m128i Inxmm_A, const __m128i* InPxmm_B);
    extern __m128i uX_ABI _uX_mm_loadl_epi32(__m128i Inxmm_A, const __m128i* InPxmm_B);

/*
 * Integer, sets
 */

#if defined(uX_X86)
    extern __m128i uX_ABI _uX_mm_set_pi64(__m64 Inmm_Q1, __m64 Inmm_Q0);
    extern __m128i uX_ABI _uX_mm_setr_pi64(__m64 Inmm_Q0, __m64 Inmm_Q1);
    extern __m128i uX_ABI _uX_mm_set1_pi64(__m64 Inmm_Q);
#endif

    extern __m128i uX_ABI _uX_mm_set_epi64(__m128i Inxmm_Q1, __m128i Inxmm_Q0);
    extern __m128i uX_ABI _uX_mm_set_epi64x(int64_t Inint_Q1, int64_t Inint_Q0);
    extern __m128i uX_ABI _uX_mm_set_epi32(int32_t Inint_D3, int32_t Inint_D2, int32_t Inint_D1, int32_t Inint_D0);
    extern __m128i uX_ABI _uX_mm_set_epi16(int16_t Inint_W7, int16_t Inint_W6, int16_t Inint_W5, int16_t Inint_W4,
                                                int16_t Inint_W3, int16_t Inint_W2, int16_t Inint_W1, int16_t Inint_W0);
    extern __m128i uX_ABI _uX_mm_set_epi8(int8_t Inint_B15, int8_t Inint_B14, int8_t Inint_B13, int8_t Inint_B12,
                                               int8_t Inint_B11, int8_t Inint_B10, int8_t Inint_B9, int8_t Inint_B8,
                                               int8_t Inint_B7, int8_t Inint_B6, int8_t Inint_B5, int8_t Inint_B4,
                                               int8_t Inint_B3, int8_t Inint_B2, int8_t Inint_B1, int8_t Inint_B0);

    extern __m128i uX_ABI _uX_mm_setr_epi64(__m128i Inxmm_Q0, __m128i Inxmm_Q1);
    extern __m128i uX_ABI _uX_mm_setr_epi64x(int64_t Inint_Q0, int64_t Inint_Q1);
    extern __m128i uX_ABI _uX_mm_setr_epi32(int32_t Inint_D0, int32_t Inint_D1, int32_t Inint_D2, int32_t Inint_D3);
    extern __m128i uX_ABI _uX_mm_setr_epi16(int16_t Inint_W0, int16_t Inint_W1, int16_t Inint_W2, int16_t Inint_W3,
                                                 int16_t Inint_W4, int16_t Inint_W5, int16_t Inint_W6, int16_t Inint_W7);
    extern __m128i uX_ABI _uX_mm_setr_epi8(int8_t Inint_B0, int8_t Inint_B1, int8_t Inint_B2, int8_t Inint_B3,
                                                int8_t Inint_B4, int8_t Inint_B5, int8_t Inint_B6, int8_t Inint_B7,
                                                int8_t Inint_B8, int8_t Inint_B9, int8_t Inint_B10, int8_t Inint_B11,
                                                int8_t Inint_B12, int8_t Inint_B13, int8_t Inint_B14, int8_t Inint_B15);

    extern __m128i uX_ABI _uX_mm_set1_epi64(__m128i Inxmm_Q);
    extern __m128i uX_ABI _uX_mm_set1_epi64x(int64_t Inint_Q);
    extern __m128i uX_ABI _uX_mm_set1_epi32(int32_t Inint_D);
    extern __m128i uX_ABI _uX_mm_set1_epi16(int16_t Inint_W);
    extern __m128i uX_ABI _uX_mm_set1_epi8(int8_t Inint_B);

    extern __m128i uX_ABI _uX_mm_seth_epi64(__m128i Inxmm_Q);
    extern __m128i uX_ABI _uX_mm_seth_epi64x(int64_t Inint_Q);
    extern __m128i uX_ABI _uX_mm_setl_epi64(__m128i Inxmm_Q);
    extern __m128i uX_ABI _uX_mm_setl_epi64x(int64_t Inint_Q);

    extern __m128i uX_ABI _uX_mm_seth_epi32(int32_t Inint_Q);
    extern __m128i uX_ABI _uX_mm_setl_epi32(int32_t Inint_Q);

    extern __m128i uX_ABI _uX_mm_setzero_si128();

/*
 * Integer, stores
 */

    extern void uX_ABI _uX_mm_store1_epi64(__m128i* Outpxmm_A, __m128i Inxmm_Q);
    extern void uX_ABI _uX_mm_store1_epi32(__m128i* Outpxmm_A, __m128i Inxmm_D);
    extern void uX_ABI _uX_mm_store_si128(__m128i* Outpxmm_A, __m128i Inxmm_B);
    extern void uX_ABI _uX_mm_storer_epi64(__m128i* Outpxmm_A, __m128i Inxmm_Q);
    extern void uX_ABI _uX_mm_storer_epi32(__m128i* Outpxmm_A, __m128i Inxmm_D);
    extern void uX_ABI _uX_mm_storeu_si128(__m128i* Outpxmm_A, __m128i Inxmm_B);
    extern void uX_ABI _uX_mm_storeur_epi64(__m128i* Outpxmm_A, __m128i Inxmm_Q);
    extern void uX_ABI _uX_mm_storeur_epi32(__m128i* Outpxmm_A, __m128i Inxmm_D);
    extern void uX_ABI _uX_mm_storeh_epi64(__m128i* Outpxmm_A, __m128i Inxmm_Q);
    extern void uX_ABI _uX_mm_storel_epi64(__m128i* Outpxmm_A, __m128i Inxmm_Q);
    extern void uX_ABI _uX_mm_storeh_epi32(__m128i* Outpxmm_A, __m128i Inxmm_D);
    extern void uX_ABI _uX_mm_storel_epi32(__m128i* Outpxmm_A, __m128i Inxmm_D);
    extern void uX_ABI _uX_mm_maskmoveu_si128(__m128i Inxmm_D, __m128i Inxmm_N, int8_t* Outpint_P);

    extern void uX_ABI _uX_mm_store_psi128(__m128i* Outpxmm_A, const __m128i* Inpxmm_B);
    extern void uX_ABI _uX_mm_storeu_psi128(__m128i* Outpxmm_A, const __m128i* Inpxmm_B);

/*
 * Integer, moves
 */
    extern int64_t uX_ABI _uX_mm_move_epi64x(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_move_epi64(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_mover_epi64(__m128i Inxmm_A);

    extern int32_t uX_ABI _uX_mm_move_epi32x(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_move_epi32(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_mover_epi32(__m128i Inxmm_A);

    extern __m128i uX_ABI _uX_mm_move1_epi64(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_move1_epi32(__m128i Inxmm_A);

    extern __m128i uX_ABI _uX_mm_move_si128(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_move_si128_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_move_si128_epi64x(__m128i Inxmm_A, int64_t Inint_D);
    extern __m128i uX_ABI _uX_mm_mover_si128_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_mover_si128_epi64x(int64_t Inint_D, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_move_si128_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_mover_si128_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
#if defined(uX_X86)
    extern __m128i uX_ABI _uX_mm_movpi64_epi64(__m64 Inmm_Q);
    extern __m64 uX_ABI _uX_mm_movepi64_pi64(__m128i Inxmm_Q);
#endif

    extern const __m128i* uX_ABI _uX_ptr_move_mm_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern const __m128i* uX_ABI _uX_ptr_mover_mm_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern const __m128i* uX_ABI _uX_ptr_move1_mm_epi64(__m128i Inxmm_A);
    extern const __m128i* uX_ABI _uX_ptr_moveu_mm_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern const __m128i* uX_ABI _uX_ptr_moveur_mm_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
    extern const __m128i* uX_ABI _uX_ptr_moveu1_mm_epi64(__m128i Inxmm_A);
    extern const __m128i* uX_ABI _uX_ptr_move_mm_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern const __m128i* uX_ABI _uX_ptr_mover_mm_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern const __m128i* uX_ABI _uX_ptr_move1_mm_epi32(__m128i Inxmm_A);
    extern const __m128i* uX_ABI _uX_ptr_moveu_mm_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern const __m128i* uX_ABI _uX_ptr_moveur_mm_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern const __m128i* uX_ABI _uX_ptr_moveu1_mm_epi32(__m128i Inxmm_A);
    extern const __m128i* uX_ABI _uX_ptr_move_mm_si128(__m128i Inxmm_A);
    extern const __m128i* uX_ABI _uX_ptr_moveu_mm_si128(__m128i Inxmm_A);

/*
 * Cacheability support
 */

    extern void uX_ABI _uX_mm_stream_pd(double* Outpdouble_A, __m128d Inxmm_A);
    extern void uX_ABI _uX_mm_stream_si128(__m128i* Outpxmm_A, __m128i Inxmm_A);
    extern void uX_ABI _uX_mm_clflush(const void* _P);
    extern void uX_ABI _uX_mm_lfence();
    extern void uX_ABI _uX_mm_mfence();
    extern void uX_ABI _uX_mm_stream_si32(int32_t* Outpint_A, int32_t Inint_B);
    extern void uX_ABI _uX_mm_stream_si64(int64_t* Outpint_A, int64_t Inint_B);
    extern void uX_ABI _uX_mm_pause();

/*
 * Support for casting between various SP, DP, INT vector types.
 * Note that these do no conversion of values, they just change
 * the type.
 */

    extern __m128  uX_ABI _uX_mm_castpd_ps(__m128d Inxmm_A);
    extern __m128i uX_ABI _uX_mm_castpd_si128(__m128d Inxmm_A);
    extern __m128d uX_ABI _uX_mm_castps_pd(__m128 Inxmm_A);
    extern __m128i uX_ABI _uX_mm_castps_si128(__m128 Inxmm_A);
    extern __m128  uX_ABI _uX_mm_castsi128_ps(__m128i Inxmm_A);
    extern __m128d uX_ABI _uX_mm_castsi128_pd(__m128i Inxmm_A);

/*
 * Undefined
 */

    extern __m128 uX_ABI  _uX_mm_undefined_ps();
    extern __m128d uX_ABI  _uX_mm_undefined_pd();
    extern __m128i uX_ABI  _uX_mm_undefined_si128();

uX_PACK_POP
uX_EXTERNC_END

#ifndef uX_EMM_SHUFFLE_PD_H
#include "uXemmshufflepd.h"
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
#ifndef uX_EMM_ARITHMETIC_H
#include "uXemmarithmetic.h"
#endif

#ifndef uX_EMM_DATA_H
#include "uXemmdata.h"
#endif

#define _uX_mm_bslli_si128      _uX_mm_slli_si128
#define _uX_mm_bsrli_si128      _uX_mm_srli_si128

#define _uX_mm_set1_pd          _uX_mm_set_pd1
#define _uX_mm_cvtdbl_sd        _uX_mm_set_sd
#define _uX_mm_setelts_pd       _uX_mm_cvtdbl_pd
#define _uX_mm_cvtelts_dbl      _uX_mm_cvtpd_dbl
#define _uX_mm_load1_pd         _uX_mm_load_pd1
#define _uX_mm_store1_pd        _uX_mm_store_pd1
#define _uX_mm_storeu1_pd       _uX_mm_storeu_pd1

#define _uX_mm_set_0d           _uX_mm_cvtdbl_0d
#define _uX_mm_set_1d           _uX_mm_cvtdbl_1d

#define _uX_mm_setelts_epi8     _uX_mm_cvtepi8_si128
#define _uX_mm_setelts_epi16    _uX_mm_cvtepi16_si128
#define _uX_mm_setelts_epi32    _uX_mm_cvtepi32_si128
#define _uX_mm_setelts_epi64    _uX_mm_cvtepi64_si128
#define _uX_mm_setelts_epi64x   _uX_mm_cvtepi64x_si128

#define _uX_mm_cvtelts_epi8     _uX_mm_cvtsi128_epi8
#define _uX_mm_cvtelts_epi16    _uX_mm_cvtsi128_epi16
#define _uX_mm_cvtelts_epi32    _uX_mm_cvtsi128_epi32
#define _uX_mm_cvtelts_epi64    _uX_mm_cvtsi128_epi64
#define _uX_mm_cvtelts_epi64x   _uX_mm_cvtsi128_epi64x

#define _uX_mm_setelts_epi8_0   _uX_mm_cvtepi8_si128_0
#define _uX_mm_setelts_epi8_1   _uX_mm_cvtepi8_si128_1
#define _uX_mm_setelts_epi8_2   _uX_mm_cvtepi8_si128_2
#define _uX_mm_setelts_epi8_3   _uX_mm_cvtepi8_si128_3
#define _uX_mm_setelts_epi8_4   _uX_mm_cvtepi8_si128_4
#define _uX_mm_setelts_epi8_5   _uX_mm_cvtepi8_si128_5
#define _uX_mm_setelts_epi8_6   _uX_mm_cvtepi8_si128_6
#define _uX_mm_setelts_epi8_7   _uX_mm_cvtepi8_si128_7
#define _uX_mm_setelts_epi8_8   _uX_mm_cvtepi8_si128_8
#define _uX_mm_setelts_epi8_9   _uX_mm_cvtepi8_si128_9
#define _uX_mm_setelts_epi8_10  _uX_mm_cvtepi8_si128_10
#define _uX_mm_setelts_epi8_11  _uX_mm_cvtepi8_si128_11
#define _uX_mm_setelts_epi8_12  _uX_mm_cvtepi8_si128_12
#define _uX_mm_setelts_epi8_13  _uX_mm_cvtepi8_si128_13
#define _uX_mm_setelts_epi8_14  _uX_mm_cvtepi8_si128_14
#define _uX_mm_setelts_epi8_15  _uX_mm_cvtepi8_si128_15

#define _uX_mm_setelts_epi16_0  _uX_mm_cvtepi16_si128_0
#define _uX_mm_setelts_epi16_1  _uX_mm_cvtepi16_si128_1
#define _uX_mm_setelts_epi16_2  _uX_mm_cvtepi16_si128_2
#define _uX_mm_setelts_epi16_3  _uX_mm_cvtepi16_si128_3
#define _uX_mm_setelts_epi16_4  _uX_mm_cvtepi16_si128_4
#define _uX_mm_setelts_epi16_5  _uX_mm_cvtepi16_si128_5
#define _uX_mm_setelts_epi16_6  _uX_mm_cvtepi16_si128_6
#define _uX_mm_setelts_epi16_7  _uX_mm_cvtepi16_si128_7

#define _uX_mm_setelts_epi32_0  _uX_mm_cvtepi32_si128_0
#define _uX_mm_setelts_epi32_1  _uX_mm_cvtepi32_si128_1
#define _uX_mm_setelts_epi32_2  _uX_mm_cvtepi32_si128_2
#define _uX_mm_setelts_epi32_3  _uX_mm_cvtepi32_si128_3

#define _uX_mm_setelts_epi64_0  _uX_mm_cvtepi64_si128_0
#define _uX_mm_setelts_epi64_1  _uX_mm_cvtepi64_si128_1
#define _uX_mm_setelts_epi64x_0  _uX_mm_cvtepi64x_si128_0
#define _uX_mm_setelts_epi64x_1  _uX_mm_cvtepi64x_si128_1

#define _uX_mm_null_pd          _uX_mm_setzero_pd()
#define _uX_xmm_vecd_null       _uX_mm_null_pd

#define _uX_mm_null_si128        _uX_mm_setzero_si128()
#define _uX_xmm_veci_null        _uX_mm_null_si128

//#define _uX_mm_set_epi64     _uX_mm_set_epi64x
#endif // uX_SSE2

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_EMM_INTRIN_H
