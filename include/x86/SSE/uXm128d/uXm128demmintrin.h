
#pragma once

#ifndef uXm128d_EMM_INTRIN_H
#define uXm128d_EMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE2

#ifndef uXm_XMM_INTRIN_H
#include "../uXmxmmintrin.h"
#endif  /* uXm_XMM_INTRIN_H */

#ifndef uXm_SSE_STRUCTS_H
#include "../uxmSSEStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

/*
 * DP, Macros
 */

/*******************************************************/
/* MACRO for use _uXm_m128d_shuffle_**_pd().				*/
/* Argument fp1 is a digit[01] that represents the fp	*/
/* from argument "b" of _uXm_m128d_shuffle_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in	*/
/* result												*/
/* const __uXm128d temp = _uXm_M128D_SHUFFLE_IM_PD(InXmm_A, InXmm_B, 0, 1); */
/*******************************************************/
#define _uXm_M128D_SHUFFLE_IM_PD(VA,VB,fp1,fp0) _uXm_m128d_shuffle_##fp1##fp0##_pd(VA,VB)
#define _uXm_M128D_SHUFFLE_IMR_PD(VA,VB,fp0,fp1) _uXm_m128d_shuffle_##fp1##fp0##_pd(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_m128d_permute_**_pd().				*/
/* Argument fp1 is a digit[01] that represents the fp	*/
/* from argument "b" of _uXm_m128d_permute_**_pd that will be */
/* placed in fp0 of result. fp0 is the same for fp0 in	*/
/* result												*/
/* const __uXm128d temp = _uXm_m128d_PERMUTE_IMR_PD(InXmm_A, 0, 1); */
/*******************************************************/
#define _uXm_M128D_PERMUTE_IM_PD(VA,fp1,fp0) _uXm_m128d_permute_##fp1##fp0##_pd(VA)
#define _uXm_M128D_PERMUTE_IMR_PD(VA,fp0,fp1) _uXm_m128d_permute_##fp1##fp0##_pd(VA)

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

/*
 * DP, logicals
 */

extern __uXm128d _uXm_m128d_and_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_andnot_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_or_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_xor_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_not_pd(__uXm128d InXmm_A);

/*
 * DP, comparisons
 */

extern __uXm128d _uXm_m128d_cmpeq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpeq_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmplt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmplt_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmple_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmple_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpgt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpgt_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpge_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpge_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpneq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpneq_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpnlt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpnlt_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpnle_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpnle_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpngt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpngt_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpnge_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpnge_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpord_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpord_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpunord_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_cmpunord_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);

/*
 * DP, comparisons return int
 */

extern unsigned __int8 _uXm_m128d_comieq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_comilt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_comile_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_comigt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_comige_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_comineq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_ucomieq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_ucomilt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_ucomile_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_ucomigt_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_ucomige_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern unsigned __int8 _uXm_m128d_ucomineq_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);

/*
 * DP, conversions
 */

extern __uXm128d _uXm_m128d_cvtepi32_pd(__uXm128i InXmm_A);
extern __uXm128d _uXm_m128d_cvtps_pd(__uXm128 InXmm_A);
extern __uXm128d _uXm_m128d_cvtss_sd(__uXm128d InXmm_A, __uXm128 InXmm_B);

extern __uXm128 _uXm_m128d_cvtepi32_ps(__uXm128i InXmm_A);
extern __uXm128 _uXm_m128d_cvtpd_ps(__uXm128d InXmm_A);
extern __uXm128 _uXm_m128d_cvtsd_ss(__uXm128 InXmm_A, __uXm128d InXmm_B);

extern __uXm128i _uXm_m128d_cvtpd_epi32(__uXm128d InXmm_A);
extern __uXm128i _uXm_m128d_cvttpd_epi32(__uXm128d InXmm_A);

extern __uXm128i _uXm_m128d_cvtps_epi32(__uXm128 InXmm_A);
extern __uXm128i _uXm_m128d_cvttps_epi32(__uXm128 InXmm_A);

extern int _uXm_m128d_cvtsd_si32(__uXm128d InXmm_A);
extern int _uXm_m128d_cvttsd_si32(__uXm128d InXmm_A);
extern __uXm128d _uXm_m128d_cvtsi32_sd(__uXm128d InXmm_A, int InInt_B);

#if defined(uXm_X86)
extern __uXm64 _uXm_m128d_cvtpd_pi32(__uXm128d InXmm_A);
extern __uXm64 _uXm_m128d_cvttpd_pi32(__uXm128d InXmm_A);
extern __uXm128d _uXm_m128d_cvtpi32_pd(__uXm64 Inmm_A);
#endif

/*
* Support for 64-bit extension intrinsics
*/

#if defined (uXm_X64)
extern __int64 _uXm_m128d_cvtsd_si64(__uXm128d);
extern __int64 _uXm_m128d_cvttsd_si64(__uXm128d);
extern __uXm128d _uXm_m128d_cvtsi64_sd(__uXm128d, __int64);
extern __uXm128i _uXm_m128d_cvtsi64_si128(__int64);
extern __int64 _uXm_m128d_cvtsi128_si64(__uXm128i);
#endif  /* defined (uXm_X64) */

/*
* New convert to double
*/

extern double _uXm_m128d_cvtsd_f64(__uXm128d InXmm_A);

/*
 * DP, misc
 */

extern __uXm128d _uXm_m128d_unpackhi_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_unpacklo_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern int _uXm_m128d_movemask_pd(__uXm128d InXmm_A);
extern __uXm128d _uXm_m128d_shuffle_epi32_pd(__uXm128d InXmm_A, __uXm128d InXmm_B, unsigned int InInt_Imm8);
extern __uXm128d _uXm_m128d_permute_pd(__uXm128d InXmm_A, unsigned int InInt_Imm8);

/*
 * DP, loads
 */

extern void _uXm_m128d_load_sd(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128d_load_pd1(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128d_load_pd(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128d_loadr_pd(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128d_loadu_pd(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128d_loadur_pd(__uXm128d OutXmm_A, const double* InPdouble_B);
extern void _uXm_m128d_loadh_pd(__uXm128d OutXmm_A, __uXm128d InXmm_B, const double* InPdouble_C);
extern void _uXm_m128d_loadl_pd(__uXm128d OutXmm_A, __uXm128d InXmm_B, const double* InPdouble_C);

/*
 * DP, sets
 */

extern void _uXm_m128d_set_sd(__uXm128d OutXmm_A, double Indouble_B);
extern void _uXm_m128d_set_pd1(__uXm128d OutXmm_A, double Indouble_B);
extern void _uXm_m128d_set_pd(__uXm128d OutXmm_A, double Indouble_C, double Indouble_B);
extern void _uXm_m128d_setr_pd(__uXm128d OutXmm_A, double Indouble_B, double Indouble_C);
extern void _uXm_m128d_setzero_pd(__uXm128d OutXmm_A);

/*
 * DP, stores
 */

extern void _uXm_m128d_store_sd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void _uXm_m128d_store_pd1(double* OutPdouble_A, __uXm128d InXmm_B);
extern void _uXm_m128d_storeu_pd1(double* OutPdouble_A, __uXm128d InXmm_B);
extern void _uXm_m128d_store_pd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void _uXm_m128d_storeu_pd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void _uXm_m128d_storer_pd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void _uXm_m128d_storeur_pd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void _uXm_m128d_storeh_pd(double* OutPdouble_A, __uXm128d InXmm_B);
extern void _uXm_m128d_storel_pd(double* OutPdouble_A, __uXm128d InXmm_B);

/*
 * DP, moves
 */

extern __uXm128d _uXm_m128d_move_sd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern void _uXm_m128d_move_pd(__uXm128d OutXmm_A, __uXm128d InXmm_B);
extern void _uXm_m128d_mover_pd(__uXm128d OutXmm_A, __uXm128d InXmm_B);

/*
 * Cacheability support
 */

extern void _uXm_m128d_stream_pd(double* OutPdouble_A, __uXm128d InXmm_A);
extern void _uXm_m128d_stream_si128(__uXm128i* OutPXmm_A, __uXm128i InXmm_A);

/*
 * Support for casting between various SP, DP, INT vector types.
 * Note that these do no conversion of values, they just change
 * the type.
 */

extern __uXm128d _uXm_m128d_castps_pd(__uXm128);
extern __uXm128d _uXm_m128d_castsi128_pd(__uXm128i);

uXm_PACK_POP

uXm_EXTERNC_END

#include "uXm128dshufflepd.h"
#include "uXm128dpermutepd.h"

#define _uXm_m128d_set1_pd       _uXm_m128d_set_pd1
#define _uXm_m128d_load1_pd      _uXm_m128d_load_pd1
#define _uXm_m128d_store1_pd     _uXm_m128d_store_pd1
#define _uXm_m128d_storeu1_pd    _uXm_m128d_storeu_pd1


//#define _uXm_m128d_set_epi64     _uXm_m128d_set_epi64x
#endif // uXm_SSE2

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm128d_EMM_INTRIN_H
