
#pragma once

#ifndef uXm_EMM_INTRIN_H
#define uXm_EMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef uXm_XMM_INTRIN_H
#include "uxmxmmintrin.h"
#endif  /* uXm_XMM_INTRIN_H */

#ifndef uXm_SSE_STRUCTS_H
#include "uxmSSEStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

/*******************************************************/
/* MACRO for shuffle parameter for _uXm_m128fid_shuffle_pd().*/
/* Argument fp1 is a digit[01] that represents the fp  */
/* from argument "b" of _uXm_m128fid_shuffle_pd that will be */
/* placed in fp1 of result. fp0 is the same for fp0 in */
/* result                                              */
/*******************************************************/
#define _uXm_MM_SHUFFLE2(fp1,fp0) (((fp1) << 1) | (fp0))
#define _uXm_MM_SHUFFLER2(fp0,fp1) ((fp0) | ((fp1) << 1))

/*
 * DP, Macros
 */

/*******************************************************/
/* MACRO for use _uXm_m128fid_shuffle_**_pd().				*/
/* Argument fp1 is a digit[01] that represents the fp	*/
/* from argument "b" of _uXm_m128fid_shuffle_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in	*/
/* result												*/
/* const __uXm128fid temp = _uXm_m128fid_SHUFFLE_IMR_PD(InXmm_A, InXmm_B, 0, 1); */
/*******************************************************/
#define _uXm_M128D_SHUFFLE_IM_PD(VA,VB,fp1,fp0) _uXm_m128d_shuffle_##fp1##fp0##_pd(VA,VB)
#define _uXm_M128D_SHUFFLE_IMR_PD(VA,VB,fp0,fp1) _uXm_m128d_shuffle_##fp1##fp0##_pd(VA,VB)
#define _uXm_M128FD_SHUFFLE_IM_PD(VA,VB,fp1,fp0) _uXm_m128fd_shuffle_##fp1##fp0##_pd(VA,VB)
#define _uXm_M128FD_SHUFFLE_IMR_PD(VA,VB,fp0,fp1) _uXm_m128fd_shuffle_##fp1##fp0##_pd(VA,VB)
#define _uXm_M128DI_SHUFFLE_IM_PD(VA,VB,fp1,fp0) _uXm_m128di_shuffle_##fp1##fp0##_pd(VA,VB)
#define _uXm_M128DI_SHUFFLE_IMR_PD(VA,VB,fp0,fp1) _uXm_m128di_shuffle_##fp1##fp0##_pd(VA,VB)
#define _uXm_M128FID_SHUFFLE_IM_PD(VA,VB,fp1,fp0) _uXm_m128fid_shuffle_##fp1##fp0##_pd(VA,VB)
#define _uXm_M128FID_SHUFFLE_IMR_PD(VA,VB,fp0,fp1) _uXm_m128fid_shuffle_##fp1##fp0##_pd(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_m128fid_permute_**_pd().				*/
/* Argument fp1 is a digit[01] that represents the fp	*/
/* from argument "b" of _uXm_m128fid_permute_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in	*/
/* result												*/
/* const __uXm128fid temp = _uXm_m128fid_PERMUTE_IMR_PD(InXmm_A, 0, 1); */
/*******************************************************/
#define _uXm_M128D_PERMUTE_IM_PD(VA,fp1,fp0) _uXm_m128d_permute_##fp1##fp0##_pd(VA)
#define _uXm_M128D_PERMUTE_IMR_PD(VA,fp0,fp1) _uXm_m128d_permute_##fp1##fp0##_pd(VA)
#define _uXm_M128FD_PERMUTE_IM_PD(VA,fp1,fp0) _uXm_m128fd_permute_##fp1##fp0##_pd(VA)
#define _uXm_M128FD_PERMUTE_IMR_PD(VA,fp0,fp1) _uXm_m128fd_permute_##fp1##fp0##_pd(VA)
#define _uXm_M128DI_PERMUTE_IM_PD(VA,fp1,fp0) _uXm_m128di_permute_##fp1##fp0##_pd(VA)
#define _uXm_M128DI_PERMUTE_IMR_PD(VA,fp0,fp1) _uXm_m128di_permute_##fp1##fp0##_pd(VA)
#define _uXm_M128FID_PERMUTE_IM_PD(VA,fp1,fp0) _uXm_m128fid_permute_##fp1##fp0##_pd(VA)
#define _uXm_M128FID_PERMUTE_IMR_PD(VA,fp0,fp1) _uXm_m128fid_permute_##fp1##fp0##_pd(VA)

/*
 * Integer, Macros
 */

/*******************************************************/
/* MACRO for use _uXm_m128fid_slli_si128_*().				*/
/* result                                              */
/* const __uXm128fid temp = _uXm_m128fid_SLLI_SI128_IM(InXmm_A, 3); */
/*******************************************************/
#define _uXm_M128IW_SLLI_EPI16_IM(VA,IMM) _uXm_m128iw_slli_epi16_##IMM##(VA)
#define _uXm_M128ID_SLLI_EPI32_IM(VA,IMM) _uXm_m128id_slli_epi32_##IMM##(VA)
#define _uXm_M128IQ_SLLI_EPI64_IM(VA,IMM) _uXm_m128iq_slli_epi64_##IMM##(VA)

#define _uXm_M128IW_SRAI_EPI16_IM(VA,IMM) _uXm_m128iw_srai_epi16_##IMM##(VA)
#define _uXm_M128ID_SRAI_EPI32_IM(VA,IMM) _uXm_m128id_srai_epi32_##IMM##(VA)

#define _uXm_M128IW_SRLI_EPI16_IM(VA,IMM) _uXm_m128iw_srli_epi16_##IMM##(VA)
#define _uXm_M128ID_SRLI_EPI32_IM(VA,IMM) _uXm_m128id_srli_epi32_##IMM##(VA)
#define _uXm_M128IQ_SRLI_EPI64_IM(VA,IMM) _uXm_m128iq_srli_epi64_##IMM##(VA)

#define _uXm_M128I_SLLI_SI128_IM(VA,IMM) _uXm_m128i_slli_si128_##IMM##(VA)
#define _uXm_M128I_SLLI_EPI16_IM(VA,IMM) _uXm_m128i_slli_epi16_##IMM##(VA)
#define _uXm_M128I_SLLI_EPI32_IM(VA,IMM) _uXm_m128i_slli_epi32_##IMM##(VA)
#define _uXm_M128I_SLLI_EPI64_IM(VA,IMM) _uXm_m128i_slli_epi64_##IMM##(VA)
#define _uXm_M128I_SRAI_EPI16_IM(VA,IMM) _uXm_m128i_srai_epi16_##IMM##(VA)
#define _uXm_M128I_SRAI_EPI32_IM(VA,IMM) _uXm_m128i_srai_epi32_##IMM##(VA)
#define _uXm_M128I_SRLI_SI128_IM(VA,IMM) _uXm_m128i_srli_si128_##IMM##(VA)
#define _uXm_M128I_SRLI_EPI16_IM(VA,IMM) _uXm_m128i_srli_epi16_##IMM##(VA)
#define _uXm_M128I_SRLI_EPI32_IM(VA,IMM) _uXm_m128i_srli_epi32_##IMM##(VA)
#define _uXm_M128I_SRLI_EPI64_IM(VA,IMM) _uXm_m128i_srli_epi64_##IMM##(VA)

#define _uXm_M128FI_SLLI_SI128_IM(VA,IMM) _uXm_m128fi_slli_si128_##IMM##(VA)
#define _uXm_M128FI_SLLI_EPI16_IM(VA,IMM) _uXm_m128fi_slli_epi16_##IMM##(VA)
#define _uXm_M128FI_SLLI_EPI32_IM(VA,IMM) _uXm_m128fi_slli_epi32_##IMM##(VA)
#define _uXm_M128FI_SLLI_EPI64_IM(VA,IMM) _uXm_m128fi_slli_epi64_##IMM##(VA)
#define _uXm_M128FI_SRAI_EPI16_IM(VA,IMM) _uXm_m128fi_srai_epi16_##IMM##(VA)
#define _uXm_M128FI_SRAI_EPI32_IM(VA,IMM) _uXm_m128fi_srai_epi32_##IMM##(VA)
#define _uXm_M128FI_SRLI_SI128_IM(VA,IMM) _uXm_m128fi_srli_si128_##IMM##(VA)
#define _uXm_M128FI_SRLI_EPI16_IM(VA,IMM) _uXm_m128fi_srli_epi16_##IMM##(VA)
#define _uXm_M128FI_SRLI_EPI32_IM(VA,IMM) _uXm_m128fi_srli_epi32_##IMM##(VA)
#define _uXm_M128FI_SRLI_EPI64_IM(VA,IMM) _uXm_m128fi_srli_epi64_##IMM##(VA)

#define _uXm_M128DI_SLLI_SI128_IM(VA,IMM) _uXm_m128di_slli_si128_##IMM##(VA)
#define _uXm_M128DI_SLLI_EPI16_IM(VA,IMM) _uXm_m128di_slli_epi16_##IMM##(VA)
#define _uXm_M128DI_SLLI_EPI32_IM(VA,IMM) _uXm_m128di_slli_epi32_##IMM##(VA)
#define _uXm_M128DI_SLLI_EPI64_IM(VA,IMM) _uXm_m128di_slli_epi64_##IMM##(VA)
#define _uXm_M128DI_SRAI_EPI16_IM(VA,IMM) _uXm_m128di_srai_epi16_##IMM##(VA)
#define _uXm_M128DI_SRAI_EPI32_IM(VA,IMM) _uXm_m128di_srai_epi32_##IMM##(VA)
#define _uXm_M128DI_SRLI_SI128_IM(VA,IMM) _uXm_m128di_srli_si128_##IMM##(VA)
#define _uXm_M128DI_SRLI_EPI16_IM(VA,IMM) _uXm_m128di_srli_epi16_##IMM##(VA)
#define _uXm_M128DI_SRLI_EPI32_IM(VA,IMM) _uXm_m128di_srli_epi32_##IMM##(VA)
#define _uXm_M128DI_SRLI_EPI64_IM(VA,IMM) _uXm_m128di_srli_epi64_##IMM##(VA)

#define _uXm_M128FID_SLLI_SI128_IM(VA,IMM) _uXm_m128fid_slli_si128_##IMM##(VA)
#define _uXm_M128FID_SLLI_EPI16_IM(VA,IMM) _uXm_m128fid_slli_epi16_##IMM##(VA)
#define _uXm_M128FID_SLLI_EPI32_IM(VA,IMM) _uXm_m128fid_slli_epi32_##IMM##(VA)
#define _uXm_M128FID_SLLI_EPI64_IM(VA,IMM) _uXm_m128fid_slli_epi64_##IMM##(VA)
#define _uXm_M128FID_SRAI_EPI16_IM(VA,IMM) _uXm_m128fid_srai_epi16_##IMM##(VA)
#define _uXm_M128FID_SRAI_EPI32_IM(VA,IMM) _uXm_m128fid_srai_epi32_##IMM##(VA)
#define _uXm_M128FID_SRLI_SI128_IM(VA,IMM) _uXm_m128fid_srli_si128_##IMM##(VA)
#define _uXm_M128FID_SRLI_EPI16_IM(VA,IMM) _uXm_m128fid_srli_epi16_##IMM##(VA)
#define _uXm_M128FID_SRLI_EPI32_IM(VA,IMM) _uXm_m128fid_srli_epi32_##IMM##(VA)
#define _uXm_M128FID_SRLI_EPI64_IM(VA,IMM) _uXm_m128fid_srli_epi64_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_m128fid_extract_epi16_*(). from 0 to 7 */
/* result                                              */
/* const __uXm128fid temp = _uXm_m128fid_extract_epi16_(InXmm_A, 3); */
/*******************************************************/
#define _uXm_M128FID_EXTRACT_EPI16_IM(VA,IMM) _uXm_m128fid_extract_epi16_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_m128fid_insert_epi16_*(). from 0 to 7 */
/* result                                              */
/* const __uXm128fid temp = _uXm_m128fid_insert_epi16_(InXmm_A, 3); */
/*******************************************************/
#define _uXm_M128FID_INSERT_EPI16_IM(VA,IMM) _uXm_m128fid_insert_epi16_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_m128fid_shuffle_epi32_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uXm_m128fid_shuffle_epi32_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uXm_m128fid_shuffle_epi32_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __uXm128fid temp = _uXm_m128fid_SHUFFLE_EPI32_IMR(InXmm_A, InXmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M128FID_SHUFFLE_EPI32_IM(VA,it3,it2,it1,it0) _uXm_m128fid_shuffle_epi32_##it3##it2##it1##it0##(VA)
#define _uXm_M128FID_SHUFFLE_EPI32_IMR(VA,it0,it1,it2,it3) _uXm_m128fid_shuffle_epi32_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uXm_m128fid_shufflehi_epi16_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uXm_m128fid_shufflehi_epi16_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uXm_m128fid_shufflehi_epi16_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __uXm128fid temp = _uXm_m128fid_SHUFFLEHI_EPI16_IMR(InXmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M128FID_SHUFFLEHI_EPI16_IM(VA,it3,it2,it1,it0) _uXm_m128fid_shufflehi_epi16_##it3##it2##it1##it0##(VA)
#define _uXm_M128FID_SHUFFLEHI_EPI16_IMR(VA,it0,it1,it2,it3) _uXm_m128fid_shufflehi_epi16_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uXm_m128fid_shufflelo_epi16_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uXm_m128fid_shufflelo_epi16_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uXm_m128fid_shufflelo_epi16_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __uXm128fid temp = _uXm_m128fid_SHUFFLELO_EPI16_IMR(InXmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M128FID_SHUFFLELO_EPI16_IM(VA,it3,it2,it1,it0) _uXm_m128fid_shufflelo_epi16_##it3##it2##it1##it0##(VA)
#define _uXm_M128FID_SHUFFLELO_EPI16_IMR(VA,it0,it1,it2,it3) _uXm_m128fid_shufflelo_epi16_##it3##it2##it1##it0##(VA)

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * DP, arithmetic
 */

 // __uXm128d START
extern __uXm128d _uXm_m128d_add_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_add_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_sub_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_sub_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_mul_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_mul_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_sqrt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_sqrt_pd(__uXm128d InXmm_A);
extern __uXm128d _uXm_m128d_div_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_div_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_min_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_min_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_max_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_max_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
// __uXm128d END

// __uXm128fd START
extern __uXm128fd _uXm_m128fd_add_sd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_add_pd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_sub_sd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_sub_pd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_mul_sd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_mul_pd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_sqrt_sd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_sqrt_pd(__uXm128fd InXmm_A);
extern __uXm128fd _uXm_m128fd_div_sd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_div_pd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_min_sd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_min_pd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_max_sd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
extern __uXm128fd _uXm_m128fd_max_pd(__uXm128fd InXmm_A, __uXm128fd InXmm_B);
// __uXm128fd END

// __uXm128fid START
extern __uXm128fid _uXm_m128fid_add_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_add_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sub_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sub_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_mul_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_mul_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sqrt_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sqrt_pd(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_div_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_div_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_min_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_min_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_max_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_max_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
// __uXm128fid END

/*
 * DP, logicals
 */

extern __uXm128fid _uXm_m128fid_and_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_andnot_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_or_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_xor_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

/*
 * DP, comparisons
 */

extern __uXm128fid _uXm_m128fid_cmpeq_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpeq_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmplt_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmplt_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmple_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmple_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpgt_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpgt_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpge_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpge_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpneq_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpneq_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnlt_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnlt_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnle_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnle_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpngt_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpngt_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnge_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpnge_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpord_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpord_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpunord_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpunord_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comieq_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comilt_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comile_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comigt_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comige_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_comineq_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomieq_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomilt_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomile_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomigt_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomige_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern unsigned __int8 _uXm_m128fid_ucomineq_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

/*
 * DP, conversions
 */

extern __uXm128fid _uXm_m128fid_cvtepi32_pd(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_cvtpd_epi32(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_cvttpd_epi32(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_cvtepi32_ps(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_cvtps_epi32(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_cvttps_epi32(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_cvtpd_ps(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_cvtps_pd(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_cvtsd_ss(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cvtss_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

extern int _uXm_m128fid_cvtsd_si32(__uXm128fid InXmm_A);
extern int _uXm_m128fid_cvttsd_si32(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_cvtsi32_sd(__uXm128fid InXmm_A, int InInt_B);

#if defined(uXm_X86)
extern __uXm64 _uXm_m64_cvtpd_pi32(__uXm128fid InXmm_A);
extern __uXm64 _uXm_m64_cvttpd_pi32(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m64_cvtpi32_pd(__uXm64 Inmm_A);
#endif

/*
* New convert to double
*/

extern double _uXm_m128fid_cvtsd_f64(__uXm128fid InXmm_A);

/*
 * DP, misc
 */

extern __uXm128fid _uXm_m128fid_unpackhi_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_unpacklo_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern int _uXm_m128fid_movemask_pd(__uXm128fid InXmm_A);
extern __uXm128fid _uXm_m128fid_shuffle_epi32_pd(__uXm128fid InXmm_A, __uXm128fid InXmm_B, unsigned int InInt_Imm8);
extern __uXm128fid _uXm_m128fid_permute_pd(__uXm128fid InXmm_A, unsigned int InInt_Imm8);
#include "uXmemmshufflepd.h"
#include "uXmemmpermutepd.h"

/*
 * DP, loads
 */

extern void _uXm_m128fid_load_sd(__uXm128fid OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128fid_load_pd1(__uXm128fid OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128fid_load_pd(__uXm128fid OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128fid_loadr_pd(__uXm128fid OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128fid_loadu_pd(__uXm128fid OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128fid_loadur_pd(__uXm128fid OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128fid_loadh_pd(__uXm128fid OutXmm_A, __uXm128fid InXmm_B, const double* InPdouble_C);
extern void _uXm_m128fid_loadl_pd(__uXm128fid OutXmm_A, __uXm128fid InXmm_B, const double* InPdouble_C);

/*
 * DP, sets
 */

extern void _uXm_m128fid_set_sd(__uXm128fid OutXmm_A, double Indouble_B);
extern void _uXm_m128fid_set_pd1(__uXm128fid OutXmm_A, double Indouble_B);
extern void _uXm_m128fid_set_pd(__uXm128fid OutXmm_A, double Indouble_C, double Indouble_B);
extern void _uXm_m128fid_setr_pd(__uXm128fid OutXmm_A, double Indouble_B, double Indouble_C);
extern void _uXm_m128fid_setzero_pd(__uXm128fid OutXmm_A);

/*
 * DP, stores
 */

extern void _uXm_m128fid_store_sd(double* OutPdouble_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_store_pd1(double* OutPdouble_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storeu_pd1(double* OutPdouble_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_store_pd(double* OutPdouble_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storeu_pd(double* OutPdouble_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storer_pd(double* OutPdouble_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storeur_pd(double* OutPdouble_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storeh_pd(double* OutPdouble_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storel_pd(double* OutPdouble_A, __uXm128fid InXmm_B);

/*
 * DP, moves
 */

extern __uXm128fid _uXm_m128fid_move_sd(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_move_pd(__uXm128fid OutXmm_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_mover_pd(__uXm128fid OutXmm_A, __uXm128fid InXmm_B);

/*
 * Integer, arithmetic
 */

extern __uXm128fid _uXm_m128fid_add_epi8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_add_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_add_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
#if defined(uXm_X86)
extern __uXm64 _uXm_m64_add_si64(__uXm64 Inmm_A, __uXm64 Inmm_B);
#endif
extern __uXm128fid _uXm_m128fid_add_epi64(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_adds_epi8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_adds_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_adds_epu8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_adds_epu16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_avg_epu8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_avg_epu16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_madd_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_max_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_max_epu8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_min_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_min_epu8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_mulhi_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_mulhi_epu16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_mullo_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
#if defined(uXm_X86)
extern __uXm64 _uXm_m64_mul_su32(__uXm64 Inmm_A, __uXm64 Inmm_B);
#endif
extern __uXm128fid _uXm_m128fid_mul_epu32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sad_epu8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sub_epi8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sub_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_sub_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
#if defined(uXm_X86)
extern __uXm64 _uXm_m64_sub_si64(__uXm64 Inmm_A, __uXm64 Inmm_B);
#endif
extern __uXm128fid _uXm_m128fid_sub_epi64(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_subs_epi8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_subs_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_subs_epu8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_subs_epu16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

/*
 * Integer, logicals
 */

extern __uXm128fid _uXm_m128fid_and_si128(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_andnot_si128(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_or_si128(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_xor_si128(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

/*
 * Integer, shifts
 */

#include "uXmemmintshifts.h"
extern __uXm128fid _uXm_m128fid_slli_si128(__uXm128fid InXmm_A, int InInt_Imm);
#define _uXm_m128fid_bslli_si128 _uXm_m128fid_slli_si128
extern __uXm128fid _uXm_m128fid_slli_epi16(__uXm128fid InXmm_A, int InInt_Count);
extern __uXm128fid _uXm_m128fid_sll_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_Count);
extern __uXm128fid _uXm_m128fid_slli_epi32(__uXm128fid InXmm_A, int InInt_Count);
extern __uXm128fid _uXm_m128fid_sll_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_Count);
extern __uXm128fid _uXm_m128fid_slli_epi64(__uXm128fid InXmm_A, int InInt_Count);
extern __uXm128fid _uXm_m128fid_sll_epi64(__uXm128fid InXmm_A, __uXm128fid InXmm_Count);
extern __uXm128fid _uXm_m128fid_srai_epi16(__uXm128fid InXmm_A, int InInt_Count);
extern __uXm128fid _uXm_m128fid_sra_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_Count);
extern __uXm128fid _uXm_m128fid_srai_epi32(__uXm128fid InXmm_A, int InInt_Count);
extern __uXm128fid _uXm_m128fid_sra_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_Count);
extern __uXm128fid _uXm_m128fid_srli_si128(__uXm128fid InXmm_A, int InInt_Imm);
#define _uXm_m128fid_bsrli_si128 _uXm_m128fid_srli_si128
extern __uXm128fid _uXm_m128fid_srli_epi16(__uXm128fid InXmm_A, int InInt_Count);
extern __uXm128fid _uXm_m128fid_srl_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_Count);
extern __uXm128fid _uXm_m128fid_srli_epi32(__uXm128fid InXmm_A, int InInt_Count);
extern __uXm128fid _uXm_m128fid_srl_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_Count);
extern __uXm128fid _uXm_m128fid_srli_epi64(__uXm128fid InXmm_A, int InInt_Count);
extern __uXm128fid _uXm_m128fid_srl_epi64(__uXm128fid InXmm_A, __uXm128fid InXmm_Count);

/*
 * Integer, comparisons
 */

extern __uXm128fid _uXm_m128fid_cmpeq_epi8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpeq_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpeq_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpgt_epi8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpgt_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmpgt_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmplt_epi8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmplt_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_cmplt_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

/*
 * Integer, converts
 */

extern __uXm128fid _uXm_m128fid_cvtsi32_si128(int InInt_A);
extern int _uXm_m128fid_cvtsi128_si32(__uXm128fid InXmm_A);

/*
 * Integer, misc
 */

extern __uXm128fid _uXm_m128fid_packs_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_packs_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_packus_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
#include "uXmemmintmisc.h"
extern int _uXm_m128fid_extract_epi16(__uXm128fid InXmm_A, int InInt_Imm);
extern __uXm128fid _uXm_m128fid_insert_epi16(__uXm128fid InXmm_A, int InInt_B, int InInt_Imm);
extern int _uXm_m128fid_movemask_epi8(__uXm128fid InXmm_A);
#include "uXmemmintshuffle.h"
extern __uXm128fid _uXm_m128fid_shuffle_epi32(__uXm128fid InXmm_A, int InInt_Imm);
extern __uXm128fid _uXm_m128fid_shufflehi_epi16(__uXm128fid InXmm_A, int InInt_Imm);
extern __uXm128fid _uXm_m128fid_shufflelo_epi16(__uXm128fid InXmm_A, int InInt_Imm);
extern __uXm128fid _uXm_m128fid_unpackhi_epi8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_unpackhi_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_unpackhi_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_unpackhi_epi64(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_unpacklo_epi8(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_unpacklo_epi16(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_unpacklo_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern __uXm128fid _uXm_m128fid_unpacklo_epi64(__uXm128fid InXmm_A, __uXm128fid InXmm_B);

/*
 * Integer, loads
 */

extern __uXm128fid _uXm_m128fid_load1_epi64(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_load1_epi32(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_load_si128(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_loadr_epi64(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_loadr_epi32(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_loadu_si128(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_loadur_epi64(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_loadur_epi32(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_loadh_epi64(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_loadl_epi64(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_loadh_epi32(const __uXm128fid* InPXmm_A);
extern __uXm128fid _uXm_m128fid_loadl_epi32(const __uXm128fid* InPXmm_A);

/*
 * Integer, sets
 */

#if defined(uXm_X86)
extern __uXm128fid _uXm_m128fid_set_pi64(__uXm64 Inmm_Q1, __uXm64 Inmm_Q0);
extern __uXm128fid _uXm_m128fid_setr_pi64(__uXm64 Inmm_Q0, __uXm64 Inmm_Q1);
extern __uXm128fid _uXm_m128fid_set1_pi64(__uXm64 Inmm_Q);
#endif

extern __uXm128fid _uXm_m128fid_set_epi64(__uXm128fid InXmm_Q1, __uXm128fid InXmm_Q0);
extern __uXm128fid _uXm_m128fid_set_epi64x(__int64 InInt_Q1, __int64 InInt_Q0);
extern __uXm128fid _uXm_m128fid_set_epi32(__int32 InInt_D3, __int32 InInt_D2, __int32 InInt_D1, __int32 InInt_D0);
extern __uXm128fid _uXm_m128fid_set_epi16(__int16 InInt_W7, __int16 InInt_W6, __int16 InInt_W5, __int16 InInt_W4,
								  __int16 InInt_W3, __int16 InInt_W2, __int16 InInt_W1, __int16 InInt_W0);
extern __uXm128fid _uXm_m128fid_set_epi8(__int8 InInt_B15, __int8 InInt_B14, __int8 InInt_B13, __int8 InInt_B12,
								 __int8 InInt_B11, __int8 InInt_B10, __int8 InInt_B9, __int8 InInt_B8,
								 __int8 InInt_B7, __int8 InInt_B6, __int8 InInt_B5, __int8 InInt_B4,
								 __int8 InInt_B3, __int8 InInt_B2, __int8 InInt_B1, __int8 InInt_B0);

extern __uXm128fid _uXm_m128fid_setr_epi64(__uXm128fid InXmm_Q0, __uXm128fid InXmm_Q1);
extern __uXm128fid _uXm_m128fid_setr_epi64x(__int64 InInt_Q0, __int64 InInt_Q1);
extern __uXm128fid _uXm_m128fid_setr_epi32(__int32 InInt_D0, __int32 InInt_D1, __int32 InInt_D2, __int32 InInt_D3);
extern __uXm128fid _uXm_m128fid_setr_epi16(__int16 InInt_W0, __int16 InInt_W1, __int16 InInt_W2, __int16 InInt_W3,
								   __int16 InInt_W4, __int16 InInt_W5, __int16 InInt_W6, __int16 InInt_W7);
extern __uXm128fid _uXm_m128fid_setr_epi8(__int8 InInt_B15, __int8 InInt_B14, __int8 InInt_B13, __int8 InInt_B12,
								  __int8 InInt_B11, __int8 InInt_B10, __int8 InInt_B9, __int8 InInt_B8,
								  __int8 InInt_B7, __int8 InInt_B6, __int8 InInt_B5, __int8 InInt_B4,
								  __int8 InInt_B3, __int8 InInt_B2, __int8 InInt_B1, __int8 InInt_B0);

extern __uXm128fid _uXm_m128fid_setl_epi64(__uXm128fid InXmm_Q);
extern __uXm128fid _uXm_m128fid_set1_epi64x(__int64 InInt_Q);
extern __uXm128fid _uXm_m128fid_set1_epi32(__int32 InInt_D);
extern __uXm128fid _uXm_m128fid_set1_epi16(__int16 InInt_W);
extern __uXm128fid _uXm_m128fid_set1_epi8(__int8 InInt_B);

extern __uXm128fid _uXm_m128fid_setzero_si128(void);

/*
 * Integer, stores
 */

extern void _uXm_m128fid_store1_epi64(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_Q);
extern void _uXm_m128fid_store1_epi32(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_D);
extern void _uXm_m128fid_store_si128(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storer_epi64(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_Q);
extern void _uXm_m128fid_storer_epi32(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_D);
extern void _uXm_m128fid_storeu_si128(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_storeur_epi64(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_Q);
extern void _uXm_m128fid_storeur_epi32(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_D);
extern void _uXm_m128fid_storeh_epi64(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_Q);
extern void _uXm_m128fid_storel_epi64(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_Q);
extern void _uXm_m128fid_storeh_epi32(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_D);
extern void _uXm_m128fid_storel_epi32(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_D);
extern void _uXm_m128fid_maskmoveu_si128(__uXm128fid InXmm_D, __uXm128fid InXmm_N, __int8* OutPint_P);

/*
 * Integer, moves
 */

extern void _uXm_m128fid_move_epi64(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_mover_epi64(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_move_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_mover_epi32(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
extern void _uXm_m128fid_move_si128(__uXm128fid InXmm_A, __uXm128fid InXmm_B);
#if defined(uXm_X86)
extern __uXm128fid _uXm_m128fid_movpi64_epi64(__uXm64 Inmm_Q);
extern __uXm64 _uXm_m128fid_movepi64_pi64(__uXm128fid InXmm_Q);
#endif

/*
 * Cacheability support
 */

extern void _uXm_m128fid_stream_pd(double* OutPdouble_A, __uXm128fid InXmm_A);
extern void _uXm_m128fid_stream_si128(__uXm128fid* OutPXmm_A, __uXm128fid InXmm_A);
extern void _uXm_m128fid_clflush(const void* _P);
extern void _uXm_m128fid_lfence(void);
extern void _uXm_m128fid_mfence(void);
extern void _uXm_m128fid_stream_si32(int* _P, __int32 InInt_D);
extern void _uXm_m128fid_pause(void);

/*
 * Support for casting between various SP, DP, INT vector types.
 * Note that these do no conversion of values, they just change
 * the type.
 */

extern __uXm128fid  _uXm_m128fid_castpd_ps(__uXm128fid);
extern __uXm128fid _uXm_m128fid_castpd_si128(__uXm128fid);
extern __uXm128fid _uXm_m128fid_castps_pd(__uXm128fid);
extern __uXm128fid _uXm_m128fid_castps_si128(__uXm128fid);
extern __uXm128fid  _uXm_m128fid_castsi128_ps(__uXm128fid);
extern __uXm128fid _uXm_m128fid_castsi128_pd(__uXm128fid);

/*
 * Support for 64-bit extension intrinsics
 */

#if defined (_M_X64)
extern __int64 _uXm_m128fid_cvtsd_si64(__uXm128fid);
extern __int64 _uXm_m128fid_cvttsd_si64(__uXm128fid);
extern __uXm128fid _uXm_m128fid_cvtsi64_sd(__uXm128fid, __int64);
extern __uXm128fid _uXm_m128fid_cvtsi64_si128(__int64);
extern __int64 _uXm_m128fid_cvtsi128_si64(__uXm128fid);
/* Alternate intrinsic name definitions */
#define _uXm_m128fid_stream_si64 _uXm_m128fid_stream_si64x
#endif  /* defined (_M_X64) */

uXm_PACK_POP

uXm_EXTERNC_END

#define _uXm_m128fid_set1_pd       _uXm_m128fid_set_pd1
#define _uXm_m128fid_load1_pd      _uXm_m128fid_load_pd1
#define _uXm_m128fid_store1_pd     _uXm_m128fid_store_pd1
#define _uXm_m128fid_storeu1_pd    _uXm_m128fid_storeu_pd1


//#define _uXm_m128fid_set_epi64     _uXm_m128fid_set_epi64x

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_EMM_INTRIN_H
