
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
/* MACRO for shuffle parameter for uXm_mm_shuffle_pd().*/
/* Argument fp1 is a digit[01] that represents the fp  */
/* from argument "b" of uXm_mm_shuffle_pd that will be */
/* placed in fp1 of result. fp0 is the same for fp0 in */
/* result                                              */
/*******************************************************/
#define uXm_MM_SHUFFLE2(fp1,fp0) (((fp1) << 1) | (fp0))
#define uXm_MM_SHUFFLER2(fp0,fp1) ((fp0) | ((fp1) << 1))

/*******************************************************/
/* MACRO for use uXm_mm_shuffle_**_pd().				*/
/* Argument fp1 is a digit[01] that represents the fp	*/
/* from argument "b" of uXm_mm_shuffle_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in	*/
/* result												*/
/* const __uXm128d temp = uXm_MM_SHUFFLE_IMR_PD(InXmm_A, InXmm_B, 0, 1); */
/*******************************************************/
#define uXm_MM_SHUFFLE_IM_PD(VA,VB,fp1,fp0) uXm_mm_shuffle_##fp1##fp0##_pd(VA,VB)
#define uXm_MM_SHUFFLE_IMR_PD(VA,VB,fp0,fp1) uXm_mm_shuffle_##fp1##fp0##_pd(VA,VB)

/*******************************************************/
/* MACRO for use uXm_mm_shuffle_**_pd().				*/
/* Argument fp1 is a digit[01] that represents the fp	*/
/* from argument "b" of uXm_mm_shuffle_**_pd that will be */
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

uXm_EXTERNCC_BEGIN

uXm_PACK_PUSH16

/*
 * DP, arithmetic
 */

extern __uXm128d uXm_mm_add_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_add_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_sub_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_sub_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_mul_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_mul_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_sqrt_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_sqrt_pd(__uXm128d _A);
extern __uXm128d uXm_mm_div_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_div_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_min_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_min_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_max_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_max_pd(__uXm128d _A, __uXm128d _B);

/*
 * DP, logicals
 */

extern __uXm128d uXm_mm_and_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_andnot_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_or_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_xor_pd(__uXm128d _A, __uXm128d _B);

/*
 * DP, comparisons
 */

extern __uXm128d uXm_mm_cmpeq_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpeq_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmplt_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmplt_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmple_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmple_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpgt_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpgt_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpge_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpge_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpneq_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpneq_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpnlt_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpnlt_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpnle_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpnle_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpngt_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpngt_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpnge_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpnge_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpord_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpord_sd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpunord_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_cmpunord_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_comieq_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_comilt_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_comile_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_comigt_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_comige_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_comineq_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_ucomieq_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_ucomilt_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_ucomile_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_ucomigt_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_ucomige_sd(__uXm128d _A, __uXm128d _B);
extern unsigned __int8 uXm_mm_ucomineq_sd(__uXm128d _A, __uXm128d _B);

/*
 * DP, conversions
 */

extern __uXm128d uXm_mm_cvtepi32_pd(__uXm128i _A);
extern __uXm128i uXm_mm_cvtpd_epi32(__uXm128d _A);
extern __uXm128i uXm_mm_cvttpd_epi32(__uXm128d _A);
extern __uXm128 uXm_mm_cvtepi32_ps(__uXm128i _A);
extern __uXm128i uXm_mm_cvtps_epi32(__uXm128 _A);
extern __uXm128i uXm_mm_cvttps_epi32(__uXm128 _A);
extern __uXm128 uXm_mm_cvtpd_ps(__uXm128d _A);
extern __uXm128d uXm_mm_cvtps_pd(__uXm128 _A);
extern __uXm128 uXm_mm_cvtsd_ss(__uXm128 _A, __uXm128d _B);
extern __uXm128d uXm_mm_cvtss_sd(__uXm128d _A, __uXm128 _B);

extern int uXm_mm_cvtsd_si32(__uXm128d _A);
extern int uXm_mm_cvttsd_si32(__uXm128d _A);
extern __uXm128d uXm_mm_cvtsi32_sd(__uXm128d _A, int _B);

#if defined(_M_IX86)
extern __uXm64 uXm_mm_cvtpd_pi32(__uXm128d _A);
extern __uXm64 uXm_mm_cvttpd_pi32(__uXm128d _A);
extern __uXm128d uXm_mm_cvtpi32_pd(__uXm64 _A);
#endif

/*
 * DP, misc
 */

extern __uXm128d uXm_mm_unpackhi_pd(__uXm128d _A, __uXm128d _B);
extern __uXm128d uXm_mm_unpacklo_pd(__uXm128d _A, __uXm128d _B);
extern int uXm_mm_movemask_pd(__uXm128d _A);
#include "uXmxmmshufflepd.h"
extern __uXm128d uXm_mm_shuffle_pd(__uXm128d InXmm_A, __uXm128d InXmm_B, unsigned int _Imm8);
#include "uXmxmmpermutepd.h"
extern __uXm128d uXm_mm_permute_pd(__uXm128d InXmm_A, unsigned int _Imm8);

/*
 * DP, loads
 */

extern __uXm128d uXm_mm_load_sd(const double* _Dp);
extern __uXm128d uXm_mm_load_pd1(const double* _Dp);
extern __uXm128d uXm_mm_load_pd(const double* _Dp);
extern __uXm128d uXm_mm_loadr_pd(const double* _Dp);
extern __uXm128d uXm_mm_loadu_pd(const double* _Dp);
extern __uXm128d uXm_mm_loadur_pd(const double* _Dp);
extern __uXm128d uXm_mm_loadh_pd(__uXm128d _A, const double* _Dp);
extern __uXm128d uXm_mm_loadl_pd(__uXm128d _A, const double* _Dp);

/*
 * DP, sets
 */

extern __uXm128d uXm_mm_set_sd(double _W);
extern __uXm128d uXm_mm_set_pd1(double _A);
extern __uXm128d uXm_mm_set_pd(double _Z, double _Y);
extern __uXm128d uXm_mm_setr_pd(double _Y, double _Z);
extern __uXm128d uXm_mm_setzero_pd(void);

/*
 * DP, stores
 */

extern void uXm_mm_store_sd(double* _Dp, __uXm128d _A);
extern void uXm_mm_store_pd1(double* _Dp, __uXm128d _A);
extern void uXm_mm_storeu_pd1(double* _Dp, __uXm128d _A);
extern void uXm_mm_store_pd(double* _Dp, __uXm128d _A);
extern void uXm_mm_storeu_pd(double* _Dp, __uXm128d _A);
extern void uXm_mm_storer_pd(double* _Dp, __uXm128d _A);
extern void uXm_mm_storeur_pd(double* _Dp, __uXm128d _A);
extern void uXm_mm_storeh_pd(double* _Dp, __uXm128d _A);
extern void uXm_mm_storel_pd(double* _Dp, __uXm128d _A);

/*
 * Integer, arithmetic
 */

extern __uXm128i uXm_mm_add_epi8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_add_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_add_epi32(__uXm128i _A, __uXm128i _B);
#if defined(_M_IX86)
extern __uXm64 uXm_mm_add_si64(__uXm64 _A, __uXm64 _B);
#endif
extern __uXm128i uXm_mm_add_epi64(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_adds_epi8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_adds_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_adds_epu8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_adds_epu16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_avg_epu8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_avg_epu16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_madd_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_max_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_max_epu8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_min_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_min_epu8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_mulhi_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_mulhi_epu16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_mullo_epi16(__uXm128i _A, __uXm128i _B);
#if defined(_M_IX86)
extern __uXm64 uXm_mm_mul_su32(__uXm64 _A, __uXm64 _B);
#endif
extern __uXm128i uXm_mm_mul_epu32(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_sad_epu8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_sub_epi8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_sub_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_sub_epi32(__uXm128i _A, __uXm128i _B);
#if defined(_M_IX86)
extern __uXm64 uXm_mm_sub_si64(__uXm64 _A, __uXm64 _B);
#endif
extern __uXm128i uXm_mm_sub_epi64(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_subs_epi8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_subs_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_subs_epu8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_subs_epu16(__uXm128i _A, __uXm128i _B);

/*
 * Integer, logicals
 */

extern __uXm128i uXm_mm_and_si128(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_andnot_si128(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_or_si128(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_xor_si128(__uXm128i _A, __uXm128i _B);

/*
 * Integer, shifts
 */

extern __uXm128i uXm_mm_slli_si128(__uXm128i _A, int _Imm);
#define uXm_mm_bslli_si128 uXm_mm_slli_si128
extern __uXm128i uXm_mm_slli_epi16(__uXm128i _A, int _Count);
extern __uXm128i uXm_mm_sll_epi16(__uXm128i _A, __uXm128i _Count);
extern __uXm128i uXm_mm_slli_epi32(__uXm128i _A, int _Count);
extern __uXm128i uXm_mm_sll_epi32(__uXm128i _A, __uXm128i _Count);
extern __uXm128i uXm_mm_slli_epi64(__uXm128i _A, int _Count);
extern __uXm128i uXm_mm_sll_epi64(__uXm128i _A, __uXm128i _Count);
extern __uXm128i uXm_mm_srai_epi16(__uXm128i _A, int _Count);
extern __uXm128i uXm_mm_sra_epi16(__uXm128i _A, __uXm128i _Count);
extern __uXm128i uXm_mm_srai_epi32(__uXm128i _A, int _Count);
extern __uXm128i uXm_mm_sra_epi32(__uXm128i _A, __uXm128i _Count);
extern __uXm128i uXm_mm_srli_si128(__uXm128i _A, int _Imm);
#define uXm_mm_bsrli_si128 uXm_mm_srli_si128
extern __uXm128i uXm_mm_srli_epi16(__uXm128i _A, int _Count);
extern __uXm128i uXm_mm_srl_epi16(__uXm128i _A, __uXm128i _Count);
extern __uXm128i uXm_mm_srli_epi32(__uXm128i _A, int _Count);
extern __uXm128i uXm_mm_srl_epi32(__uXm128i _A, __uXm128i _Count);
extern __uXm128i uXm_mm_srli_epi64(__uXm128i _A, int _Count);
extern __uXm128i uXm_mm_srl_epi64(__uXm128i _A, __uXm128i _Count);

/*
 * Integer, comparisons
 */

extern __uXm128i uXm_mm_cmpeq_epi8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_cmpeq_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_cmpeq_epi32(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_cmpgt_epi8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_cmpgt_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_cmpgt_epi32(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_cmplt_epi8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_cmplt_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_cmplt_epi32(__uXm128i _A, __uXm128i _B);

/*
 * Integer, converts
 */

extern __uXm128i uXm_mm_cvtsi32_si128(int _A);
extern int uXm_mm_cvtsi128_si32(__uXm128i _A);

/*
 * Integer, misc
 */

extern __uXm128i uXm_mm_packs_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_packs_epi32(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_packus_epi16(__uXm128i _A, __uXm128i _B);
extern int uXm_mm_extract_epi16(__uXm128i _A, int _Imm);
extern __uXm128i uXm_mm_insert_epi16(__uXm128i _A, int _B, int _Imm);
extern int uXm_mm_movemask_epi8(__uXm128i _A);
extern __uXm128i uXm_mm_shuffle_epi32(__uXm128i _A, int _Imm);
extern __uXm128i uXm_mm_shufflehi_epi16(__uXm128i _A, int _Imm);
extern __uXm128i uXm_mm_shufflelo_epi16(__uXm128i _A, int _Imm);
extern __uXm128i uXm_mm_unpackhi_epi8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_unpackhi_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_unpackhi_epi32(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_unpackhi_epi64(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_unpacklo_epi8(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_unpacklo_epi16(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_unpacklo_epi32(__uXm128i _A, __uXm128i _B);
extern __uXm128i uXm_mm_unpacklo_epi64(__uXm128i _A, __uXm128i _B);

/*
 * Integer, loads
 */

extern __uXm128i uXm_mm_load_si128(const __uXm128i* _P);
extern __uXm128i uXm_mm_loadu_si128(const __uXm128i* _P);
extern __uXm128i uXm_mm_loadl_epi64(const __uXm128i* _P);

/*
 * Integer, sets
 */

#if defined(_M_IX86)
extern __uXm128i uXm_mm_set_epi64(__uXm64 _Q1, __uXm64 _Q0);
#endif
extern __uXm128i uXm_mm_set_epi64x(__int64 _I1,__int64 _I0);
extern __uXm128i uXm_mm_set_epi32(int _I3, int _I2, int _I1, int _I0);
extern __uXm128i uXm_mm_set_epi16(short _W7, short _W6, short _W5, short _W4,
								  short _W3, short _W2, short _W1, short _W0);
extern __uXm128i uXm_mm_set_epi8(char _B15, char _B14, char _B13, char _B12,
								 char _B11, char _B10, char _B9, char _B8,
								 char _B7, char _B6, char _B5, char _B4,
								 char _B3, char _B2, char _B1, char _B0);
#if defined(_M_IX86)
extern __uXm128i uXm_mm_set1_epi64(__uXm64 _Q);
#endif
extern __uXm128i uXm_mm_set1_epi64x(__int64 i);
extern __uXm128i uXm_mm_set1_epi32(int _I);
extern __uXm128i uXm_mm_set1_epi16(short _W);
extern __uXm128i uXm_mm_set1_epi8(char _B);
extern __uXm128i uXm_mm_setl_epi64(__uXm128i _Q);
#if defined(_M_IX86)
extern __uXm128i uXm_mm_setr_epi64(__uXm64 _Q0, __uXm64 _Q1);
#endif
extern __uXm128i uXm_mm_setr_epi32(int _I0, int _I1, int _I2, int _I3);
extern __uXm128i uXm_mm_setr_epi16(short _W0, short _W1, short _W2, short _W3,
								   short _W4, short _W5, short _W6, short _W7);
extern __uXm128i uXm_mm_setr_epi8(char _B15, char _B14, char _B13, char _B12,
								  char _B11, char _B10, char _B9, char _B8,
								  char _B7, char _B6, char _B5, char _B4,
								  char _B3, char _B2, char _B1, char _B0);
extern __uXm128i uXm_mm_setzero_si128(void);

/*
 * Integer, stores
 */

extern void uXm_mm_store_si128(__uXm128i* _P, __uXm128i _B);
extern void uXm_mm_storeu_si128(__uXm128i* _P, __uXm128i _B);
extern void uXm_mm_storel_epi64(__uXm128i* _P, __uXm128i _Q);
extern void uXm_mm_maskmoveu_si128(__uXm128i _D, __uXm128i _N, char* _P);

/*
 * Integer, moves
 */

extern __uXm128i uXm_mm_move_epi64(__uXm128i _Q);
#if defined(_M_IX86)
extern __uXm128i uXm_mm_movpi64_epi64(__uXm64 _Q);
extern __uXm64 uXm_mm_movepi64_pi64(__uXm128i _Q);
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

extern void uXm_mm_stream_pd(double* _Dp, __uXm128d _A);
extern void uXm_mm_stream_si128(__uXm128i* _P, __uXm128i _A);
extern void uXm_mm_clflush(const void* _P);
extern void uXm_mm_lfence(void);
extern void uXm_mm_mfence(void);
extern void uXm_mm_stream_si32(int* _P, int _I);
extern void uXm_mm_pause(void);

/*
 * New convert to float
 */

extern double uXm_mm_cvtsd_f64(__uXm128d _A);

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

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_EMM_INTRIN_H
