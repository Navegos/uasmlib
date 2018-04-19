
#pragma once

#ifndef uXm_EMM_INTRIN_H
#define uXm_EMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef uXm_XMM_INTRIN_H
#include "uxmxmmintrin.h"
#endif  /* uXm_XMM_INTRIN_H */

#ifndef uXm_SSE_STRUCTS_H
#include "uxmssestructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

/*******************************************************/
/* MACRO for shuffle parameter for uXm_mm_shuffle_epi32_pd().*/
/* Argument fp1 is a digit[01] that represents the fp  */
/* from argument "b" of uXm_mm_shuffle_epi32_pd that will be */
/* placed in fp1 of result. fp0 is the same for fp0 in */
/* result                                              */
/*******************************************************/
#define uXm_MM_SHUFFLE2(fp1,fp0) (((fp1) << 1) | (fp0))
#define uXm_MM_SHUFFLER2(fp0,fp1) ((fp0) | ((fp1) << 1))

/*******************************************************/
/* MACRO for use uXm_mm_shuffle_epi32_**_pd().				*/
/* Argument fp1 is a digit[01] that represents the fp	*/
/* from argument "b" of uXm_mm_shuffle_epi32_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in	*/
/* result												*/
/* const __uXm128d temp = uXm_MM_SHUFFLE_IMR_PD(InXmm_A, InXmm_B, 0, 1); */
/*******************************************************/
#define uXm_MM_SHUFFLE_IM_PD(VA,VB,fp1,fp0) uXm_mm_shuffle_epi32_##fp1##fp0##_pd(VA,VB)
#define uXm_MM_SHUFFLE_IMR_PD(VA,VB,fp0,fp1) uXm_mm_shuffle_epi32_##fp1##fp0##_pd(VA,VB)

/*******************************************************/
/* MACRO for use uXm_mm_shuffle_epi32_**_pd().				*/
/* Argument fp1 is a digit[01] that represents the fp	*/
/* from argument "b" of uXm_mm_shuffle_epi32_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in	*/
/* result												*/
/* const __uXm128d temp = uXm_MM_PERMUTE_IMR_PD(InXmm_A, 0, 1); */
/*******************************************************/
#define uXm_MM_PERMUTE_IM_PD(VA,fp1,fp0) uXm_mm_permute_##fp1##fp0##_pd(VA)
#define uXm_MM_PERMUTE_IMR_PD(VA,fp0,fp1) uXm_mm_permute_##fp1##fp0##_pd(VA)

/*******************************************************/
/* MACRO for use uXm_mm_slli_si128_*().				*/
/* result                                              */
/* const __uXm128i temp = uXm_MM_SLLI_SI128_IM(InXmm_A, 3); */
/*******************************************************/
#define uXm_MM_SLLI_SI128_IM(VA,IMM) uXm_mm_slli_si128_##IMM##(VA)
#define uXm_MM_SLLI_EPI16_IM(VA,IMM) uXm_mm_slli_epi16_##IMM##(VA)
#define uXm_MM_SLLI_EPI32_IM(VA,IMM) uXm_mm_slli_epi32_##IMM##(VA)
#define uXm_MM_SLLI_EPI64_IM(VA,IMM) uXm_mm_slli_epi64_##IMM##(VA)
#define uXm_MM_SRAI_EPI16_IM(VA,IMM) uXm_mm_srai_epi16_##IMM##(VA)
#define uXm_MM_SRRI_EPI32_IM(VA,IMM) uXm_mm_srai_epi32_##IMM##(VA)
#define uXm_MM_SRLI_SI128_IM(VA,IMM) uXm_mm_srli_si128_##IMM##(VA)
#define uXm_MM_SRLI_EPI16_IM(VA,IMM) uXm_mm_srli_epi16_##IMM##(VA)
#define uXm_MM_SRLI_EPI32_IM(VA,IMM) uXm_mm_srli_epi32_##IMM##(VA)
#define uXm_MM_SRLI_EPI64_IM(VA,IMM) uXm_mm_srli_epi64_##IMM##(VA)

/*******************************************************/
/* MACRO for use uXm_mm_extract_epi16_*(). from 0 to 7 */
/* result                                              */
/* const __uXm128i temp = uXm_mm_extract_epi16_(InXmm_A, 3); */
/*******************************************************/
#define uXm_MM_EXTRACT_EPI16_IM(VA,IMM) uXm_mm_extract_epi16_##IMM##(VA)

/*******************************************************/
/* MACRO for use uXm_mm_insert_epi16_*(). from 0 to 7 */
/* result                                              */
/* const __uXm128i temp = uXm_mm_insert_epi16_(InXmm_A, 3); */
/*******************************************************/
#define uXm_MM_INSERT_EPI16_IM(VA,IMM) uXm_mm_insert_epi16_##IMM##(VA)

/*******************************************************/
/* MACRO for use uXm_mm_shuffle_epi32_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of uXm_mm_shuffle_epi32_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of uXm_mm_shuffle_epi32_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __uXm128i temp = uXm_MM_SHUFFLE_EPI32_IMR(InXmm_A, InXmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define uXm_MM_SHUFFLE_EPI32_IM(VA,it3,it2,it1,it0) uXm_mm_shuffle_epi32_##it3##it2##it1##it0##(VA)
#define uXm_MM_SHUFFLE_EPI32_IMR(VA,it0,it1,it2,it3) uXm_mm_shuffle_epi32_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use uXm_mm_shufflehi_epi16_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of uXm_mm_shufflehi_epi16_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of uXm_mm_shufflehi_epi16_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __uXm128i temp = uXm_MM_SHUFFLEHI_EPI16_IMR(InXmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define uXm_MM_SHUFFLEHI_EPI16_IM(VA,it3,it2,it1,it0) uXm_mm_shufflehi_epi16_##it3##it2##it1##it0##(VA)
#define uXm_MM_SHUFFLEHI_EPI16_IMR(VA,it0,it1,it2,it3) uXm_mm_shufflehi_epi16_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use uXm_mm_shufflelo_epi16_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of uXm_mm_shufflelo_epi16_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of uXm_mm_shufflelo_epi16_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __uXm128i temp = uXm_MM_SHUFFLELO_EPI16_IMR(InXmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define uXm_MM_SHUFFLELO_EPI16_IM(VA,it3,it2,it1,it0) uXm_mm_shufflelo_epi16_##it3##it2##it1##it0##(VA)
#define uXm_MM_SHUFFLELO_EPI16_IMR(VA,it0,it1,it2,it3) uXm_mm_shufflelo_epi16_##it3##it2##it1##it0##(VA)


uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * DP, arithmetic
 */

extern __uXm128d uXm_mm_add_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_add_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_sub_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_sub_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_mul_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_mul_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_sqrt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_sqrt_pd(__uXm128d InXmm_A);
extern __uXm128d uXm_mm_div_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_div_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_min_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_min_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_max_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_max_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);

/*
 * DP, logicals
 */

extern __uXm128d uXm_mm_and_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_andnot_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_or_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_xor_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);

/*
 * DP, comparisons
 */

extern __uXm128d uXm_mm_cmpeq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpeq_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmplt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmplt_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmple_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmple_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpgt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpgt_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpge_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpge_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpneq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpneq_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpnlt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpnlt_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpnle_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpnle_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpngt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpngt_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpnge_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpnge_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpord_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpord_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpunord_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cmpunord_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_comieq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_comilt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_comile_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_comigt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_comige_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_comineq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_ucomieq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_ucomilt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_ucomile_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_ucomigt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_ucomige_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 uXm_mm_ucomineq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);

/*
 * DP, conversions
 */

extern __uXm128d uXm_mm_cvtepi32_pd(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_cvtpd_epi32(__uXm128d InXmm_A);
extern __uXm128i uXm_mm_cvttpd_epi32(__uXm128d InXmm_A);
extern __uXm128 uXm_mm_cvtepi32_ps(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_cvtps_epi32(__uXm128 InXmm_A);
extern __uXm128i uXm_mm_cvttps_epi32(__uXm128 InXmm_A);
extern __uXm128 uXm_mm_cvtpd_ps(__uXm128d InXmm_A);
extern __uXm128d uXm_mm_cvtps_pd(__uXm128 InXmm_A);
extern __uXm128 uXm_mm_cvtsd_ss(__uXm128 InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_cvtss_sd(__uXm128d InXmm_A, __uXm128 InXmm_B);

extern int uXm_mm_cvtsd_si32(__uXm128d InXmm_A);
extern int uXm_mm_cvttsd_si32(__uXm128d InXmm_A);
extern __uXm128d uXm_mm_cvtsi32_sd(__uXm128d InXmm_A, int InInt_B);

#if defined(uXm_X86)
extern __uXm64 uXm_mm_cvtpd_pi32(__uXm128d InXmm_A);
extern __uXm64 uXm_mm_cvttpd_pi32(__uXm128d InXmm_A);
extern __uXm128d uXm_mm_cvtpi32_pd(__uXm64 Inmm_A);
#endif

/*
 * DP, misc
 */

extern __uXm128d uXm_mm_unpackhi_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_unpacklo_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern int uXm_mm_movemask_pd(__uXm128d InXmm_A);
extern __uXm128d uXm_mm_shuffle_epi32_pd(__uXm128d InXmm_A, __uXm128d InXmm_B, unsigned int InInt_Imm8);
extern __uXm128d uXm_mm_permute_pd(__uXm128d InXmm_A, unsigned int InInt_Imm8);
#include "uXmxmmshufflepd.h"
#include "uXmxmmpermutepd.h"

/*
 * DP, loads
 */

extern void uXm_mm_load_sd(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void uXm_mm_load_pd1(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void uXm_mm_load_pd(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void uXm_mm_loadr_pd(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void uXm_mm_loadu_pd(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void uXm_mm_loadur_pd(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void uXm_mm_loadh_pd(__uXm128d OutXmm_A, __uXm128d InXmm_B, const double* InPdouble_C);
extern void uXm_mm_loadl_pd(__uXm128d OutXmm_A, __uXm128d InXmm_B, const double* InPdouble_C);

/*
 * DP, sets
 */

extern void uXm_mm_set_sd(__uXm128d OutXmm_A, double Indouble_B);
extern void uXm_mm_set_pd1(__uXm128d OutXmm_A, double Indouble_B);
extern void uXm_mm_set_pd(__uXm128d OutXmm_A, double Indouble_C, double Indouble_B);
extern void uXm_mm_setr_pd(__uXm128d OutXmm_A, double Indouble_B, double Indouble_C);
extern void uXm_mm_setzero_pd(__uXm128d OutXmm_A);

/*
 * DP, stores
 */

extern void uXm_mm_store_sd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void uXm_mm_store_pd1(double* OutPdouble_A, __uXm128d InXmm_B);
extern void uXm_mm_storeu_pd1(double* OutPdouble_A, __uXm128d InXmm_B);
extern void uXm_mm_store_pd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void uXm_mm_storeu_pd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void uXm_mm_storer_pd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void uXm_mm_storeur_pd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void uXm_mm_storeh_pd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void uXm_mm_storel_pd(double* OutPdouble_A, __uXm128d InXmm_B);

/*
 * Integer, arithmetic
 */

extern __uXm128i uXm_mm_add_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_add_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_add_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
#if defined(uXm_X86)
extern __uXm64 uXm_mm_add_si64(__uXm64 Inmm_A, __uXm64 Inmm_B);
#endif
extern __uXm128i uXm_mm_add_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_adds_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_adds_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_adds_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_adds_epu16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_avg_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_avg_epu16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_madd_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_max_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_max_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_min_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_min_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_mulhi_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_mulhi_epu16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_mullo_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
#if defined(uXm_X86)
extern __uXm64 uXm_mm_mul_su32(__uXm64 Inmm_A, __uXm64 Inmm_B);
#endif
extern __uXm128i uXm_mm_mul_epu32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_sad_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_sub_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_sub_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_sub_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
#if defined(uXm_X86)
extern __uXm64 uXm_mm_sub_si64(__uXm64 Inmm_A, __uXm64 Inmm_B);
#endif
extern __uXm128i uXm_mm_sub_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_subs_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_subs_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_subs_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_subs_epu16(__uXm128i InXmm_A, __uXm128i InXmm_B);

/*
 * Integer, logicals
 */

extern __uXm128i uXm_mm_and_si128(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_andnot_si128(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_or_si128(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_xor_si128(__uXm128i InXmm_A, __uXm128i InXmm_B);

/*
 * Integer, shifts
 */

#include "uXmemmintshifts.h"
extern __uXm128i uXm_mm_slli_si128(__uXm128i InXmm_A, int InInt_Imm);
#define uXm_mm_bslli_si128 uXm_mm_slli_si128
extern __uXm128i uXm_mm_slli_epi16(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i uXm_mm_sll_epi16(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i uXm_mm_slli_epi32(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i uXm_mm_sll_epi32(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i uXm_mm_slli_epi64(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i uXm_mm_sll_epi64(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i uXm_mm_srai_epi16(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i uXm_mm_sra_epi16(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i uXm_mm_srai_epi32(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i uXm_mm_sra_epi32(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i uXm_mm_srli_si128(__uXm128i InXmm_A, int InInt_Imm);
#define uXm_mm_bsrli_si128 uXm_mm_srli_si128
extern __uXm128i uXm_mm_srli_epi16(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i uXm_mm_srl_epi16(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i uXm_mm_srli_epi32(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i uXm_mm_srl_epi32(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i uXm_mm_srli_epi64(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i uXm_mm_srl_epi64(__uXm128i InXmm_A, __uXm128i InXmm_Count);

/*
 * Integer, comparisons
 */

extern __uXm128i uXm_mm_cmpeq_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_cmpeq_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_cmpeq_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_cmpgt_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_cmpgt_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_cmpgt_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_cmplt_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_cmplt_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_cmplt_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);

/*
 * Integer, converts
 */

extern __uXm128i uXm_mm_cvtsi32_si128(int InInt_A);
extern int uXm_mm_cvtsi128_si32(__uXm128i InXmm_A);

/*
 * Integer, misc
 */

extern __uXm128i uXm_mm_packs_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_packs_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_packus_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
#include "uXmemmintmisc.h"
extern int uXm_mm_extract_epi16(__uXm128i InXmm_A, int InInt_Imm);
extern __uXm128i uXm_mm_insert_epi16(__uXm128i InXmm_A, int InInt_B, int InInt_Imm);
extern int uXm_mm_movemask_epi8(__uXm128i InXmm_A);
#include "uXmemmintshuffle.h"
extern __uXm128i uXm_mm_shuffle_epi32(__uXm128i InXmm_A, int InInt_Imm);
extern __uXm128i uXm_mm_shufflehi_epi16(__uXm128i InXmm_A, int InInt_Imm);
extern __uXm128i uXm_mm_shufflelo_epi16(__uXm128i InXmm_A, int InInt_Imm);
extern __uXm128i uXm_mm_unpackhi_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_unpackhi_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_unpackhi_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_unpackhi_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_unpacklo_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_unpacklo_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_unpacklo_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i uXm_mm_unpacklo_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);

/*
 * Integer, loads
 */

extern __uXm128i uXm_mm_load1_epi64(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_load1_epi32(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_load_si128(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_loadr_epi64(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_loadr_epi32(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_loadu_si128(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_loadur_epi64(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_loadur_epi32(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_loadh_epi64(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_loadl_epi64(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_loadh_epi32(const __uXm128i* InPXmm_A);
extern __uXm128i uXm_mm_loadl_epi32(const __uXm128i* InPXmm_A);

/*
 * Integer, sets
 */

#if defined(uXm_X86)
extern __uXm128i uXm_mm_set_pi64(__uXm64 Inmm_Q1, __uXm64 Inmm_Q0);
extern __uXm128i uXm_mm_setr_pi64(__uXm64 Inmm_Q0, __uXm64 Inmm_Q1);
extern __uXm128i uXm_mm_set1_pi64(__uXm64 Inmm_Q);
#endif

extern __uXm128i uXm_mm_set_epi64(__uXm128i InXmm_Q1, __uXm128i InXmm_Q0);
extern __uXm128i uXm_mm_set_epi64x(__int64 InInt_Q1, __int64 InInt_Q0);
extern __uXm128i uXm_mm_set_epi32(__int32 InInt_D3, __int32 InInt_D2, __int32 InInt_D1, __int32 InInt_D0);
extern __uXm128i uXm_mm_set_epi16(__int16 InInt_W7, __int16 InInt_W6, __int16 InInt_W5, __int16 InInt_W4,
								  __int16 InInt_W3, __int16 InInt_W2, __int16 InInt_W1, __int16 InInt_W0);
extern __uXm128i uXm_mm_set_epi8(__int8 InInt_B15, __int8 InInt_B14, __int8 InInt_B13, __int8 InInt_B12,
								 __int8 InInt_B11, __int8 InInt_B10, __int8 InInt_B9, __int8 InInt_B8,
								 __int8 InInt_B7, __int8 InInt_B6, __int8 InInt_B5, __int8 InInt_B4,
								 __int8 InInt_B3, __int8 InInt_B2, __int8 InInt_B1, __int8 InInt_B0);

extern __uXm128i uXm_mm_setr_epi64(__uXm128i InXmm_Q0, __uXm128i InXmm_Q1);
extern __uXm128i uXm_mm_setr_epi64x(__int64 InInt_Q0, __int64 InInt_Q1);
extern __uXm128i uXm_mm_setr_epi32(__int32 InInt_D0, __int32 InInt_D1, __int32 InInt_D2, __int32 InInt_D3);
extern __uXm128i uXm_mm_setr_epi16(__int16 InInt_W0, __int16 InInt_W1, __int16 InInt_W2, __int16 InInt_W3,
								   __int16 InInt_W4, __int16 InInt_W5, __int16 InInt_W6, __int16 InInt_W7);
extern __uXm128i uXm_mm_setr_epi8(__int8 InInt_B15, __int8 InInt_B14, __int8 InInt_B13, __int8 InInt_B12,
								  __int8 InInt_B11, __int8 InInt_B10, __int8 InInt_B9, __int8 InInt_B8,
								  __int8 InInt_B7, __int8 InInt_B6, __int8 InInt_B5, __int8 InInt_B4,
								  __int8 InInt_B3, __int8 InInt_B2, __int8 InInt_B1, __int8 InInt_B0);

extern __uXm128i uXm_mm_setl_epi64(__uXm128i InXmm_Q);
extern __uXm128i uXm_mm_set1_epi64x(__int64 InInt_Q);
extern __uXm128i uXm_mm_set1_epi32(__int32 InInt_D);
extern __uXm128i uXm_mm_set1_epi16(__int16 InInt_W);
extern __uXm128i uXm_mm_set1_epi8(__int8 InInt_B);

extern __uXm128i uXm_mm_setzero_si128(void);

/*
 * Integer, stores
 */

extern void uXm_mm_store1_epi64(__uXm128i* OutPXmm_A, __uXm128i InXmm_Q);
extern void uXm_mm_store1_epi32(__uXm128i* OutPXmm_A, __uXm128i InXmm_D);
extern void uXm_mm_store_si128(__uXm128i* OutPXmm_A, __uXm128i InXmm_B);
extern void uXm_mm_storer_epi64(__uXm128i* OutPXmm_A, __uXm128i InXmm_Q);
extern void uXm_mm_storer_epi32(__uXm128i* OutPXmm_A, __uXm128i InXmm_D);
extern void uXm_mm_storeu_si128(__uXm128i* OutPXmm_A, __uXm128i InXmm_B);
extern void uXm_mm_storeur_epi64(__uXm128i* OutPXmm_A, __uXm128i InXmm_Q);
extern void uXm_mm_storeur_epi32(__uXm128i* OutPXmm_A, __uXm128i InXmm_D);
extern void uXm_mm_storeh_epi64(__uXm128i* OutPXmm_A, __uXm128i InXmm_Q);
extern void uXm_mm_storel_epi64(__uXm128i* OutPXmm_A, __uXm128i InXmm_Q);
extern void uXm_mm_storeh_epi32(__uXm128i* OutPXmm_A, __uXm128i InXmm_D);
extern void uXm_mm_storel_epi32(__uXm128i* OutPXmm_A, __uXm128i InXmm_D);
extern void uXm_mm_maskmoveu_si128(__uXm128i InXmm_D, __uXm128i InXmm_N, __int8* OutPint_P);

/*
 * Integer, moves
 */

extern void uXm_mm_move_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern void uXm_mm_mover_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern void uXm_mm_move_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern void uXm_mm_mover_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern void uXm_mm_move_si128(__uXm128i InXmm_A, __uXm128i InXmm_B);
#if defined(uXm_X86)
extern __uXm128i uXm_mm_movpi64_epi64(__uXm64 Inmm_Q);
extern __uXm64 uXm_mm_movepi64_pi64(__uXm128i InXmm_Q);
#endif

/*
* DP, moves
*/

extern __uXm128d uXm_mm_move_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern void uXm_mm_move_pd(__uXm128d OutXmm_A, __uXm128d InXmm_B);
extern void uXm_mm_mover_pd(__uXm128d OutXmm_A, __uXm128d InXmm_B);

/*
 * Cacheability support
 */

extern void uXm_mm_stream_pd(double* OutPdouble_A, __uXm128d InXmm_A);
extern void uXm_mm_stream_si128(__uXm128i* OutPXmm_A, __uXm128i InXmm_A);
extern void uXm_mm_clflush(const void* _P);
extern void uXm_mm_lfence(void);
extern void uXm_mm_mfence(void);
extern void uXm_mm_stream_si32(int* _P, __int32 InInt_D);
extern void uXm_mm_pause(void);

/*
 * New convert to float
 */

extern double uXm_mm_cvtsd_f64(__uXm128d InXmm_A);

/*
 * Support for casting between various SP, DP, INT vector types.
 * Note that these do no conversion of values, they just change
 * the type.
 */

extern __uXm128  uXm_mm_castpd_ps(__uXm128d);
extern __uXm128i uXm_mm_castpd_si128(__uXm128d);
extern __uXm128d uXm_mm_castps_pd(__uXm128);
extern __uXm128i uXm_mm_castps_si128(__uXm128);
extern __uXm128  uXm_mm_castsi128_ps(__uXm128i);
extern __uXm128d uXm_mm_castsi128_pd(__uXm128i);

/*
 * Support for 64-bit extension intrinsics
 */

#if defined (_M_X64)
extern __int64 uXm_mm_cvtsd_si64(__uXm128d);
extern __int64 uXm_mm_cvttsd_si64(__uXm128d);
extern __uXm128d uXm_mm_cvtsi64_sd(__uXm128d, __int64);
extern __uXm128i uXm_mm_cvtsi64_si128(__int64);
extern __int64 uXm_mm_cvtsi128_si64(__uXm128i);
/* Alternate intrinsic name definitions */
#define uXm_mm_stream_si64 uXm_mm_stream_si64x
#endif  /* defined (_M_X64) */

uXm_PACK_POP

uXm_EXTERNC_END

#define uXm_mm_set1_pd       uXm_mm_set_pd1
#define uXm_mm_load1_pd      uXm_mm_load_pd1
#define uXm_mm_store1_pd     uXm_mm_store_pd1
#define uXm_mm_storeu1_pd    uXm_mm_storeu_pd1


//#define uXm_mm_set_epi64     uXm_mm_set_epi64x

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_EMM_INTRIN_H
