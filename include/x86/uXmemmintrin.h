
#pragma once

#ifndef uXm_EMM_INTRIN_H
#define uXm_EMM_INTRIN_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE2

#ifndef uXm_XMM_INTRIN_H
#include "uxmxmmintrin.h"
#endif  /* uXm_XMM_INTRIN_H */

#ifndef _INCLUDED_EMM
#include <emmintrin.h>
#endif  /* _INCLUDED_EMM */

/*******************************************************/
/* MACRO for shuffle parameter for _uXm_mm_shuffle_pd().*/
/* Argument fp1 is a digit[01] that represents the fp  */
/* from argument "b" of _uXm_mm_shuffle_pd that will be */
/* placed in fp1 of result. fp0 is the same for fp0 in */
/* result                                              */
/*******************************************************/
#define _uXm_MM_SHUFFLE2(fp1,fp0) (((fp1) << 1) | (fp0))
#define _uXm_MM_SHUFFLER2(fp0,fp1) ((fp0) | ((fp1) << 1))

/*
 * DP, Macros
 */

/*******************************************************/
/* MACRO for use _uXm_mm_shuffle_**_pd().				*/
/* Argument fp1 is a digit[01] that represents the fp	*/
/* from argument "b" of _uXm_mm_shuffle_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in	*/
/* result												*/
/* const __m128d temp = _uXm_mm_SHUFFLE_IMR_PD(Inxmm_A, Inxmm_B, 0, 1); */
/*******************************************************/
#define _uXm_MM_SHUFFLE_IM_PD(VA,VB,fp1,fp0) _uXm_mm_shuffle_##fp1##fp0##_pd(VA,VB)
#define _uXm_MM_SHUFFLE_IMR_PD(VA,VB,fp0,fp1) _uXm_mm_shuffle_##fp1##fp0##_pd(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_mm_permute_**_pd().				*/
/* Argument fp1 is a digit[01] that represents the fp	*/
/* from argument "b" of _uXm_mm_permute_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in	*/
/* result												*/
/* const __m128d temp = _uXm_MM_PERMUTE_IMR_PD(Inxmm_A, 0, 1); */
/*******************************************************/
#define _uXm_MM_PERMUTE_IM_PD(VA,fp1,fp0) _uXm_mm_permute_##fp1##fp0##_pd(VA)
#define _uXm_MM_PERMUTE_IMR_PD(VA,fp0,fp1) _uXm_mm_permute_##fp1##fp0##_pd(VA)

/*
 * Integer, Macros
 */

/*******************************************************/
/* MACRO for use _uXm_mm_slli_si128_*().				*/
/* result                                              */
/* const __m128d temp = _uXm_mm_SLLI_SI128_IM(Inxmm_A, 3); */
/*******************************************************/
#define _uXm_MM_SLLI_SI128_IM(VA,IMM) _uXm_mm_slli_si128_##IMM##(VA)
#define _uXm_MM_SLLI_EPI16_IM(VA,IMM) _uXm_mm_slli_epi16_##IMM##(VA)
#define _uXm_MM_SLLI_EPI32_IM(VA,IMM) _uXm_mm_slli_epi32_##IMM##(VA)
#define _uXm_MM_SLLI_EPI64_IM(VA,IMM) _uXm_mm_slli_epi64_##IMM##(VA)
#define _uXm_MM_SRAI_EPI16_IM(VA,IMM) _uXm_mm_srai_epi16_##IMM##(VA)
#define _uXm_MM_SRAI_EPI32_IM(VA,IMM) _uXm_mm_srai_epi32_##IMM##(VA)
#define _uXm_MM_SRLI_SI128_IM(VA,IMM) _uXm_mm_srli_si128_##IMM##(VA)
#define _uXm_MM_SRLI_EPI16_IM(VA,IMM) _uXm_mm_srli_epi16_##IMM##(VA)
#define _uXm_MM_SRLI_EPI32_IM(VA,IMM) _uXm_mm_srli_epi32_##IMM##(VA)
#define _uXm_MM_SRLI_EPI64_IM(VA,IMM) _uXm_mm_srli_epi64_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_extract_epi16_*(). from 0 to 7 */
/* result                                              */
/* const int temp = _uXm_mm_extract_epi16_(Inxmm_A, 3); */
/*******************************************************/
#define _uXm_MM_EXTRACT_EPI16_IM(VA,IMM) _uXm_mm_extract_epi16_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_insert_epi16_*(). from 0 to 7 */
/* result                                              */
/* const __m128d temp = _uXm_mm_insert_epi16_(Inxmm_A, Inint_B, 3); */
/*******************************************************/
#define _uXm_MM_INSERT_EPI16_IM(VA,INTB,IMM) _uXm_mm_insert_epi16_##IMM##(VA,INTB)

/*******************************************************/
/* MACRO for use _uXm_mm_shuffle_epi64_**().				*/
/* Argument it0 is a digit[01] that represents the it*/
/* from argument "b" of _uXm_mm_shuffle_epi64_** that will be     */
/* places in it0 of result. it0 is the same for it0 of */
/* result                                              */
/* const __m128d temp = _uXm_MM_SHUFFLE_EPI64_IMR(Inxmm_A, Inxmm_B, 0, 1); */
/*******************************************************/
#define _uXm_MM_SHUFFLE_EPI64_IM(VA,it1,it0) _uXm_mm_shuffle_epi64_##it1##it0##(VA)
#define _uXm_MM_SHUFFLE_EPI64_IMR(VA,it0,it1) _uXm_mm_shuffle_epi64_##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_shuffle_epi32_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uXm_mm_shuffle_epi32_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uXm_mm_shuffle_epi32_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __m128d temp = _uXm_mm_SHUFFLE_EPI32_IMR(Inxmm_A, Inxmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_MM_SHUFFLE_EPI32_IM(VA,it3,it2,it1,it0) _uXm_mm_shuffle_epi32_##it3##it2##it1##it0##(VA)
#define _uXm_MM_SHUFFLE_EPI32_IMR(VA,it0,it1,it2,it3) _uXm_mm_shuffle_epi32_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_shufflehi_epi16_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uXm_mm_shufflehi_epi16_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uXm_mm_shufflehi_epi16_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __m128d temp = _uXm_mm_SHUFFLEHI_EPI16_IMR(Inxmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_MM_SHUFFLEHI_EPI16_IM(VA,it3,it2,it1,it0) _uXm_mm_shufflehi_epi16_##it3##it2##it1##it0##(VA)
#define _uXm_MM_SHUFFLEHI_EPI16_IMR(VA,it0,it1,it2,it3) _uXm_mm_shufflehi_epi16_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_shufflelo_epi16_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uXm_mm_shufflelo_epi16_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uXm_mm_shufflelo_epi16_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __m128d temp = _uXm_mm_SHUFFLELO_EPI16_IMR(Inxmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_MM_SHUFFLELO_EPI16_IM(VA,it3,it2,it1,it0) _uXm_mm_shufflelo_epi16_##it3##it2##it1##it0##(VA)
#define _uXm_MM_SHUFFLELO_EPI16_IMR(VA,it0,it1,it2,it3) _uXm_mm_shufflelo_epi16_##it3##it2##it1##it0##(VA)

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * DP, arithmetic
 */

 // __m128d START
extern __m128d _uXm_mm_add_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_add_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_sub_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_sub_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_mul_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_mul_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_sqrt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_sqrt_pd(__m128d Inxmm_A);
extern __m128d _uXm_mm_div_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_div_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_min_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_min_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_max_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_max_pd(__m128d Inxmm_A, __m128d Inxmm_B);
// __m128d END

/*
 * DP, logicals
 */

extern __m128d _uXm_mm_and_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_andnot_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_or_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_xor_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_not_pd(__m128d Inxmm_A);

/*
 * DP, comparisons
 */

extern __m128d _uXm_mm_cmpeq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpeq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmplt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmplt_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmple_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmple_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpgt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpgt_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpge_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpge_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpneq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpneq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpnlt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpnlt_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpnle_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpnle_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpngt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpngt_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpnge_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpnge_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpord_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpord_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpunord_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cmpunord_sd(__m128d Inxmm_A, __m128d Inxmm_B);

/*
 * DP, comparisons return int
 */

extern unsigned int _uXm_mm_comieq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_comilt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_comile_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_comigt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_comige_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_comineq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_ucomieq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_ucomilt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_ucomile_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_ucomigt_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_ucomige_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern unsigned int _uXm_mm_ucomineq_sd(__m128d Inxmm_A, __m128d Inxmm_B);

/*
 * DP, conversions
 */

extern __m128d _uXm_mm_cvtepi32_pd(__m128d Inxmm_A);
extern __m128d _uXm_mm_cvtpd_epi32(__m128d Inxmm_A);
extern __m128d _uXm_mm_cvttpd_epi32(__m128d Inxmm_A);
extern __m128d _uXm_mm_cvtepi32_ps(__m128d Inxmm_A);
extern __m128d _uXm_mm_cvtps_epi32(__m128d Inxmm_A);
extern __m128d _uXm_mm_cvttps_epi32(__m128d Inxmm_A);
extern __m128d _uXm_mm_cvtpd_ps(__m128d Inxmm_A);
extern __m128d _uXm_mm_cvtps_pd(__m128d Inxmm_A);
extern __m128d _uXm_mm_cvtsd_ss(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_cvtss_sd(__m128d Inxmm_A, __m128d Inxmm_B);

extern int _uXm_mm_cvtsd_si32(__m128d Inxmm_A);
extern int _uXm_mm_cvttsd_si32(__m128d Inxmm_A);
extern __m128d _uXm_mm_cvtsi32_sd(__m128d Inxmm_A, int Inint_B);

#if defined(uXm_X86)
extern __m64 _uXm_mm_cvtpd_pi32(__m128d Inxmm_A);
extern __m64 _uXm_mm_cvttpd_pi32(__m128d Inxmm_A);
extern __m128d _uXm_mm_cvtpi32_pd(__m64 Inmm_A);
#endif

/*
 * Support for 64-bit extension intrinsics
 */

#if defined (uXm_X64)
extern __int64 _uXm_mm_cvtsd_si64(__m128d);
extern __int64 _uXm_mm_cvttsd_si64(__m128d);
extern __m128d _uXm_mm_cvtsi64_sd(__m128d, __int64);
#endif  /* defined (uXm_X64) */

/*
 * New convert to double
 */

extern double _uXm_mm_cvtsd_f64(__m128d Inxmm_A);
extern double _uXm_mm_cvt0d_f64(__m128d Inxmm_A);
extern double _uXm_mm_cvt1d_f64(__m128d Inxmm_A);
extern double _uXm_mm_cvteltd_f64(__m128d Inxmm_A, unsigned int Inint_BSel);

/*
 * DP, misc
 */

extern __m128d _uXm_mm_unpackhi_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_unpacklo_pd(__m128d Inxmm_A, __m128d Inxmm_B);
extern int _uXm_mm_movemask_pd(__m128d Inxmm_A);
extern __m128d _uXm_mm_shuffle_pd(__m128d Inxmm_A, __m128d Inxmm_B, unsigned int Inint_Imm8);
extern __m128d _uXm_mm_permute_pd(__m128d Inxmm_A, unsigned int Inint_Imm8);

/*
 * DP, sets
 */

extern __m128d _uXm_mm_set_sd(double Indouble_B);
extern __m128d _uXm_mm_set_pd1(double Indouble_B);
extern __m128d _uXm_mm_set_pd(double Indouble_C, double Indouble_B);
extern __m128d _uXm_mm_setr_pd(double Indouble_B, double Indouble_C);
extern __m128d _uXm_mm_setzero_pd(void);

/*
 * DP, loads
 */

extern __m128d _uXm_mm_load_sd(const double* InPdouble_B);
extern __m128d _uXm_mm_load_pd1(const double* InPdouble_B);
extern __m128d _uXm_mm_load_pd(const double* InPdouble_B);
extern __m128d _uXm_mm_loadr_pd(const double* InPdouble_B);
extern __m128d _uXm_mm_loadu_pd(const double* InPdouble_B);
extern __m128d _uXm_mm_loadur_pd(const double* InPdouble_B);
extern __m128d _uXm_mm_loadh_pd(__m128d Inxmm_B, const double* InPdouble_C);
extern __m128d _uXm_mm_loadl_pd(__m128d Inxmm_B, const double* InPdouble_C);

/*
 * DP, stores
 */

extern void _uXm_mm_store_sd(double* Outpdouble_A, __m128d Inxmm_B);
extern void _uXm_mm_store_pd1(double* Outpdouble_A, __m128d Inxmm_B);
extern void _uXm_mm_storeu_pd1(double* Outpdouble_A, __m128d Inxmm_B);
extern void _uXm_mm_store_pd(double* Outpdouble_A, __m128d Inxmm_B);
extern void _uXm_mm_storeu_pd(double* Outpdouble_A, __m128d Inxmm_B);
extern void _uXm_mm_storer_pd(double* Outpdouble_A, __m128d Inxmm_B);
extern void _uXm_mm_storeur_pd(double* Outpdouble_A, __m128d Inxmm_B);
extern void _uXm_mm_storeh_pd(double* Outpdouble_A, __m128d Inxmm_B);
extern void _uXm_mm_storel_pd(double* Outpdouble_A, __m128d Inxmm_B);

extern void _uXm_mm_store_mm_pd(__m128d* Outpxmm_A, __m128d Inxmm_B);
extern void _uXm_mm_store_m128d_pd(__m128d* Outpxmm_A, __m128d Inxmm_B);
extern void _uXm_mm_store_pdouble_pd(__m128d* Outpxmm_A, const double* Inpdouble_B);
extern void _uXm_mm_storeu_pdouble_pd(__m128d* Outpxmm_A, const double* Inpdouble_B);

extern void _uXm_m128d_store_mm_pd(__m128d* Outpxmm_A, __m128d Inxmm_B);
extern void _uXm_m128d_store_pdouble_pd(__m128d* Outpxmm_A, const double* Inpdouble_B);
extern void _uXm_m128d_storeu_pdouble_pd(__m128d* Outpxmm_A, const double* Inpdouble_B);

/*
 * DP, moves
 */

extern __m128d _uXm_mm_move_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_move_pd1(__m128d Inxmm_A);
extern __m128d _uXm_mm_move_pd(__m128d Inxmm_A);
extern __m128d _uXm_mm_mover_pd(__m128d Inxmm_A);

extern __m128d _uXm_mm_move_m128d_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_mm_move_m128d_pd1(__m128d Inxmm_A);
extern __m128d _uXm_mm_move_m128d_pd(__m128d Inxmm_A);
extern __m128d _uXm_mm_mover_m128d_pd(__m128d Inxmm_A);

extern double* _uXm_ptr_move_mm_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern double* _uXm_ptr_move_mm_pd1(__m128d Inxmm_A);
extern double* _uXm_ptr_move_mm_pd(__m128d Inxmm_A);
extern double* _uXm_ptr_mover_mm_pd(__m128d Inxmm_A);
extern double* _uXm_ptr_moveu_mm_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern double* _uXm_ptr_moveu_mm_pd1(__m128d Inxmm_A);
extern double* _uXm_ptr_moveu_mm_pd(__m128d Inxmm_A);
extern double* _uXm_ptr_moveur_mm_pd(__m128d Inxmm_A);

extern __m128d _uXm_m128d_move_mm_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern __m128d _uXm_m128d_move_mm_pd1(__m128d Inxmm_A);
extern __m128d _uXm_m128d_move_mm_pd(__m128d Inxmm_A);
extern __m128d _uXm_m128d_mover_mm_pd(__m128d Inxmm_A);

extern double* _uXm_ptr_move_m128d_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern double* _uXm_ptr_move_m128d_pd1(__m128d Inxmm_A);
extern double* _uXm_ptr_move_m128d_pd(__m128d Inxmm_A);
extern double* _uXm_ptr_mover_m128d_pd(__m128d Inxmm_A);
extern double* _uXm_ptr_moveu_m128d_sd(__m128d Inxmm_A, __m128d Inxmm_B);
extern double* _uXm_ptr_moveu_m128d_pd1(__m128d Inxmm_A);
extern double* _uXm_ptr_moveu_m128d_pd(__m128d Inxmm_A);
extern double* _uXm_ptr_moveur_m128d_pd(__m128d Inxmm_A);

/*
* Integer, arithmetic
*/

extern __m128i _uXm_mm_add_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_add_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_add_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uXm_X86)
extern __m64 _uXm_mm_add_si64(__m64 Inmm_A, __m64 Inmm_B);
#endif

extern __m128i _uXm_mm_add_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_adds_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_adds_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_adds_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_adds_epu16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_avg_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_avg_epu16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_madd_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_max_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_max_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_min_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_min_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_mulhi_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_mulhi_epu16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_mullo_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
#if defined(uXm_X86)
extern __m64 _uXm_mm_mul_su32(__m64 Inmm_A, __m64 Inmm_B);
#endif
extern __m128i _uXm_mm_mul_epu32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_sad_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_sub_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_sub_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_sub_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
#if defined(uXm_X86)
extern __m64 _uXm_mm_sub_si64(__m64 Inmm_A, __m64 Inmm_B);
#endif
extern __m128i _uXm_mm_sub_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_subs_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_subs_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_subs_epu8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_subs_epu16(__m128i Inxmm_A, __m128i Inxmm_B);

/*
* Integer, logicals
*/

extern __m128i _uXm_mm_and_si128(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_andnot_si128(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_or_si128(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_xor_si128(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_not_si128(__m128i Inxmm_A);

/*
* Integer, shifts
*/

extern __m128i _uXm_mm_slli_si128(__m128i Inxmm_A, int Inint_Imm);
#define _uXm_mm_bslli_si128 _uXm_mm_slli_si128
extern __m128i _uXm_mm_slli_epi16(__m128i Inxmm_A, int Inint_Count);
extern __m128i _uXm_mm_sll_epi16(__m128i Inxmm_A, __m128i Inxmm_Count);
extern __m128i _uXm_mm_slli_epi32(__m128i Inxmm_A, int Inint_Count);
extern __m128i _uXm_mm_sll_epi32(__m128i Inxmm_A, __m128i Inxmm_Count);
extern __m128i _uXm_mm_slli_epi64(__m128i Inxmm_A, int Inint_Count);
extern __m128i _uXm_mm_sll_epi64(__m128i Inxmm_A, __m128i Inxmm_Count);
extern __m128i _uXm_mm_srai_epi16(__m128i Inxmm_A, int Inint_Count);
extern __m128i _uXm_mm_sra_epi16(__m128i Inxmm_A, __m128i Inxmm_Count);
extern __m128i _uXm_mm_srai_epi32(__m128i Inxmm_A, int Inint_Count);
extern __m128i _uXm_mm_sra_epi32(__m128i Inxmm_A, __m128i Inxmm_Count);
extern __m128i _uXm_mm_srli_si128(__m128i Inxmm_A, int Inint_Imm);
#define _uXm_mm_bsrli_si128 _uXm_mm_srli_si128
extern __m128i _uXm_mm_srli_epi16(__m128i Inxmm_A, int Inint_Count);
extern __m128i _uXm_mm_srl_epi16(__m128i Inxmm_A, __m128i Inxmm_Count);
extern __m128i _uXm_mm_srli_epi32(__m128i Inxmm_A, int Inint_Count);
extern __m128i _uXm_mm_srl_epi32(__m128i Inxmm_A, __m128i Inxmm_Count);
extern __m128i _uXm_mm_srli_epi64(__m128i Inxmm_A, int Inint_Count);
extern __m128i _uXm_mm_srl_epi64(__m128i Inxmm_A, __m128i Inxmm_Count);

/*
* Integer, comparisons
*/

extern __m128i _uXm_mm_cmpeq_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_cmpeq_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_cmpeq_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_cmpgt_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_cmpgt_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_cmpgt_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_cmplt_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_cmplt_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_cmplt_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

/*
* Integer, converts
*/

extern __m128i _uXm_mm_cvtsi32_si128(int Inint_A);
extern int _uXm_mm_cvtsi128_si32(__m128i Inxmm_A);

/*
* Support for 64-bit extension intrinsics
*/

#if defined (uXm_X64)
extern __m128i _uXm_mm_cvtsi64_si128(__int64);
extern __int64 _uXm_mm_cvtsi128_si64(__m128i);
#endif  /* defined (uXm_X64) */

/*
* Integer, misc
*/

extern __m128i _uXm_mm_packs_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_packs_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_packus_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

extern int _uXm_mm_extract_epi16(__m128i Inxmm_A, int Inint_Imm);
extern __m128i _uXm_mm_insert_epi16(__m128i Inxmm_A, int Inint_B, int Inint_Imm);

extern __m128i _uXm_mm_cvteltsi128_epi64(__m128i Inxmm_A, int Inint_BSel);
extern __int64 _uXm_mm_cvteltsi128_epi64x(__m128i Inxmm_A, int Inint_BSel);
extern __int32 _uXm_mm_cvteltsi128_epi32(__m128i Inxmm_A, int Inint_BSel);
extern __int16 _uXm_mm_cvteltsi128_epi16(__m128i Inxmm_A, int Inint_BSel);
extern __int8 _uXm_mm_cvteltsi128_epi8(__m128i Inxmm_A, int Inint_BSel);

extern int _uXm_mm_movemask_epi8(__m128i Inxmm_A);

extern __m128i _uXm_mm_shuffle_epi64(__m128i Inxmm_A, int Inint_Imm);
extern __m128i _uXm_mm_shuffle_epi32(__m128i Inxmm_A, int Inint_Imm);
extern __m128i _uXm_mm_shufflehi_epi16(__m128i Inxmm_A, int Inint_Imm);
extern __m128i _uXm_mm_shufflelo_epi16(__m128i Inxmm_A, int Inint_Imm);

extern __m128i _uXm_mm_unpackhi_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_unpackhi_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_unpackhi_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_unpackhi_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_unpacklo_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_unpacklo_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_unpacklo_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_unpacklo_epi64(__m128i Inxmm_A, __m128i Inxmm_B);

/*
* Integer, loads
*/

extern __m128i _uXm_mm_load1_epi64(const __m128i* InPxmm_A);
extern __m128i _uXm_mm_load1_epi32(const __m128i* InPxmm_A);
extern __m128i _uXm_mm_load_si128(const __m128i* InPxmm_A);
extern __m128i _uXm_mm_loadr_epi64(const __m128i* InPxmm_A);
extern __m128i _uXm_mm_loadr_epi32(const __m128i* InPxmm_A);
extern __m128i _uXm_mm_loadu_si128(const __m128i* InPxmm_A);
extern __m128i _uXm_mm_loadur_epi64(const __m128i* InPxmm_A);
extern __m128i _uXm_mm_loadur_epi32(const __m128i* InPxmm_A);
extern __m128i _uXm_mm_loadh_epi64(__m128i Inxmm_A, const __m128i* InPxmm_B);
extern __m128i _uXm_mm_loadl_epi64(__m128i Inxmm_A, const __m128i* InPxmm_B);
extern __m128i _uXm_mm_loadh_epi32(__m128i Inxmm_A, const __m128i* InPxmm_B);
extern __m128i _uXm_mm_loadl_epi32(__m128i Inxmm_A, const __m128i* InPxmm_B);

/*
* Integer, sets
*/

#if defined(uXm_X86)
extern __m128i _uXm_mm_set_pi64(__m64 Inmm_Q1, __m64 Inmm_Q0);
extern __m128i _uXm_mm_setr_pi64(__m64 Inmm_Q0, __m64 Inmm_Q1);
extern __m128i _uXm_mm_set1_pi64(__m64 Inmm_Q);
#endif

extern __m128i _uXm_mm_set_epi64(__m128i Inxmm_Q1, __m128i Inxmm_Q0);
extern __m128i _uXm_mm_set_epi64x(__int64 Inint_Q1, __int64 Inint_Q0);
extern __m128i _uXm_mm_set_epi32(__int32 Inint_D3, __int32 Inint_D2, __int32 Inint_D1, __int32 Inint_D0);
extern __m128i _uXm_mm_set_epi16(__int16 Inint_W7, __int16 Inint_W6, __int16 Inint_W5, __int16 Inint_W4,
								 __int16 Inint_W3, __int16 Inint_W2, __int16 Inint_W1, __int16 Inint_W0);
extern __m128i _uXm_mm_set_epi8(__int8 Inint_B15, __int8 Inint_B14, __int8 Inint_B13, __int8 Inint_B12,
								__int8 Inint_B11, __int8 Inint_B10, __int8 Inint_B9, __int8 Inint_B8,
								__int8 Inint_B7, __int8 Inint_B6, __int8 Inint_B5, __int8 Inint_B4,
								__int8 Inint_B3, __int8 Inint_B2, __int8 Inint_B1, __int8 Inint_B0);

extern __m128i _uXm_mm_setr_epi64(__m128i Inxmm_Q0, __m128i Inxmm_Q1);
extern __m128i _uXm_mm_setr_epi64x(__int64 Inint_Q0, __int64 Inint_Q1);
extern __m128i _uXm_mm_setr_epi32(__int32 Inint_D0, __int32 Inint_D1, __int32 Inint_D2, __int32 Inint_D3);
extern __m128i _uXm_mm_setr_epi16(__int16 Inint_W0, __int16 Inint_W1, __int16 Inint_W2, __int16 Inint_W3,
								  __int16 Inint_W4, __int16 Inint_W5, __int16 Inint_W6, __int16 Inint_W7);
extern __m128i _uXm_mm_setr_epi8(__int8 Inint_B0, __int8 Inint_B1, __int8 Inint_B2, __int8 Inint_B3,
								 __int8 Inint_B4, __int8 Inint_B5, __int8 Inint_B6, __int8 Inint_B7,
								 __int8 Inint_B8, __int8 Inint_B9, __int8 Inint_B10, __int8 Inint_B11,
								 __int8 Inint_B12, __int8 Inint_B13, __int8 Inint_B14, __int8 Inint_B15);

extern __m128i _uXm_mm_set1_epi64(__m128i Inxmm_Q);
extern __m128i _uXm_mm_set1_epi64x(__int64 Inint_Q);
extern __m128i _uXm_mm_set1_epi32(__int32 Inint_D);
extern __m128i _uXm_mm_set1_epi16(__int16 Inint_W);
extern __m128i _uXm_mm_set1_epi8(__int8 Inint_B);
extern __m128i _uXm_mm_setl_epi64(__m128i Inxmm_Q);
extern __m128i _uXm_mm_setl_epi64x(__int64 Inint_Q);

extern __m128i _uXm_mm_setzero_si128(void);

/*
* Integer, stores
*/

extern void _uXm_mm_store1_epi64(__m128i* Outpxmm_A, __m128i Inxmm_Q);
extern void _uXm_mm_store1_epi32(__m128i* Outpxmm_A, __m128i Inxmm_D);
extern void _uXm_mm_store_si128(__m128i* Outpxmm_A, __m128i Inxmm_B);
extern void _uXm_mm_storer_epi64(__m128i* Outpxmm_A, __m128i Inxmm_Q);
extern void _uXm_mm_storer_epi32(__m128i* Outpxmm_A, __m128i Inxmm_D);
extern void _uXm_mm_storeu_si128(__m128i* Outpxmm_A, __m128i Inxmm_B);
extern void _uXm_mm_storeur_epi64(__m128i* Outpxmm_A, __m128i Inxmm_Q);
extern void _uXm_mm_storeur_epi32(__m128i* Outpxmm_A, __m128i Inxmm_D);
extern void _uXm_mm_storeh_epi64(__m128i* Outpxmm_A, __m128i Inxmm_Q);
extern void _uXm_mm_storel_epi64(__m128i* Outpxmm_A, __m128i Inxmm_Q);
extern void _uXm_mm_storeh_epi32(__m128i* Outpxmm_A, __m128i Inxmm_D);
extern void _uXm_mm_storel_epi32(__m128i* Outpxmm_A, __m128i Inxmm_D);
extern void _uXm_mm_maskmoveu_si128(__m128i Inxmm_D, __m128i Inxmm_N, __int8* Outpint_P);

extern void _uXm_mm_store_m128i(__m128i* Outpxmm_A, __m128i Inxmm_B);
extern void _uXm_mm_store_psi128(__m128i* Outpxmm_A, const __m128i* Inpxmm_B);
extern void _uXm_mm_storeu_psi128(__m128i* Outpxmm_A, const __m128i* Inpxmm_B);

extern void _uXm_m128i_store_mm_si128(__m128i* Outpxmm_A, __m128i Inxmm_B);
extern void _uXm_m128i_store_psi128(__m128i* Outpxmm_A, const __m128i* Inpxmm_B);
extern void _uXm_m128i_storeu_psi128(__m128i* Outpxmm_A, const __m128i* Inpxmm_B);

/*
* Integer, moves
*/

extern __m128i _uXm_mm_moveq_epi64(__m128i Inxmm_A);
extern __m128i _uXm_mm_moveqr_epi64(__m128i Inxmm_A);
extern __m128i _uXm_mm_moved_epi32(__m128i Inxmm_A);
extern __m128i _uXm_mm_movedr_epi32(__m128i Inxmm_A);

extern __m128i _uXm_mm_move_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_mover_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_move1_epi64(__m128i Inxmm_A);
extern __m128i _uXm_mm_move_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_mover_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_move1_epi32(__m128i Inxmm_A);
extern __m128i _uXm_mm_move_si128(__m128i Inxmm_A);
#if defined(uXm_X86)
extern __m128i _uXm_mm_movqpi64_epi64(__m64 Inmm_Q);
extern __m128i _uXm_mm_movpi64_epi64(__m128i Inxmm_A, __m64 Inmm_Q);
extern __m64 _uXm_mm_movepi64_pi64(__m128i Inxmm_Q);
#endif

extern __m128i _uXm_mm_move_m128i_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_mover_m128i_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_move1_m128i_epi64(__m128i Inxmm_A);
extern __m128i _uXm_mm_move_m128i_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_mover_m128i_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_mm_move1_m128i_epi32(__m128i Inxmm_A);
extern __m128i _uXm_mm_move_m128i_si128(__m128i Inxmm_A);

extern __m128i* _uXm_ptr_move_mm_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_mover_mm_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_move1_mm_epi64(__m128i Inxmm_A);
extern __m128i* _uXm_ptr_moveu_mm_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_moveur_mm_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_moveu1_mm_epi64(__m128i Inxmm_A);
extern __m128i* _uXm_ptr_move_mm_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_mover_mm_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_move1_mm_epi32(__m128i Inxmm_A);
extern __m128i* _uXm_ptr_moveu_mm_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_moveur_mm_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_moveu1_mm_epi32(__m128i Inxmm_A);
extern __m128i* _uXm_ptr_move_mm_si128(__m128i Inxmm_A);
extern __m128i* _uXm_ptr_moveu_mm_si128(__m128i Inxmm_A);

extern __m128i _uXm_m128i_move_mm_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_m128i_mover_mm_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_m128i_move1_mm_epi64(__m128i Inxmm_A);
extern __m128i _uXm_m128i_move_mm_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_m128i_mover_mm_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i _uXm_m128i_move1_mm_epi32(__m128i Inxmm_A);
extern __m128i _uXm_m128i_move_mm_si128(__m128i Inxmm_A);

extern __m128i* _uXm_ptr_move_m128i_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_mover_m128i_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_move1_m128i_epi64(__m128i Inxmm_A);
extern __m128i* _uXm_ptr_moveu_m128i_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_moveur_m128i_epi64(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_moveu1_m128i_epi64(__m128i Inxmm_A);
extern __m128i* _uXm_ptr_move_m128i_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_mover_m128i_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_move1_m128i_epi32(__m128i Inxmm_A);
extern __m128i* _uXm_ptr_moveu_m128i_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_moveur_m128i_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
extern __m128i* _uXm_ptr_moveu1_m128i_epi32(__m128i Inxmm_A);
extern __m128i* _uXm_ptr_move_m128i_si128(__m128i Inxmm_A);
extern __m128i* _uXm_ptr_moveu_m128i_si128(__m128i Inxmm_A);

/*
 * Cacheability support
 */

extern void _uXm_mm_stream_pd(double* Outpdouble_A, __m128d Inxmm_A);
extern void _uXm_mm_stream_si128(__m128i* Outpxmm_A, __m128i Inxmm_A);
extern void _uXm_mm_clflush(const void* _P);
extern void _uXm_mm_lfence(void);
extern void _uXm_mm_mfence(void);
extern void _uXm_mm_stream_si32(int* Outpint_A, __int32 Inint_B);
extern void _uXm_mm_stream_si64(__int64* Outpint_A, __int64 Inint_B);
extern void _uXm_mm_pause(void);

/*
 * Support for casting between various SP, DP, INT vector types.
 * Note that these do no conversion of values, they just change
 * the type.
 */

extern __m128  _uXm_mm_castpd_ps(__m128d);
extern __m128i _uXm_mm_castpd_si128(__m128d);
extern __m128d _uXm_mm_castps_pd(__m128);
extern __m128i _uXm_mm_castps_si128(__m128);
extern __m128  _uXm_mm_castsi128_ps(__m128i);
extern __m128d _uXm_mm_castsi128_pd(__m128i);

uXm_PACK_POP

uXm_EXTERNC_END

#ifndef uXm_EMM_SHUFFLE_PD_H
#include "uXmemmshufflepd.h"
#endif
#ifndef uXm_EMM_PERMUTE_PD_H
#include "uXmemmpermutepd.h"
#endif
#ifndef uXm_EMM_INTMISC_H
#include "uXmemmintmisc.h"
#endif
#ifndef uXm_EMM_INTSHUFFLE_H
#include "uXmemmintshuffle.h"
#endif
#ifndef uXm_EMM_INTSHIFTS_H
#include "uXmemmintshifts.h"
#endif

#define _uXm_mm_set1_pd       _uXm_mm_set_pd1
#define _uXm_mm_load1_pd      _uXm_mm_load_pd1
#define _uXm_mm_store1_pd     _uXm_mm_store_pd1
#define _uXm_mm_storeu1_pd    _uXm_mm_storeu_pd1

//#define _uXm_mm_set_epi64     _uXm_mm_set_epi64x
#endif // uXm_SSE2

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_EMM_INTRIN_H
