
#pragma once

#ifndef uXm128fi_XMM_INTRIN_H
#define uXm128fi_XMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE2

#ifndef uXm_MM_INTRIN_H
#include "../../MMX/uXmmmintrin.h"
#endif  /* uXm_MM_INTRIN_H */

#ifndef uXm_SSE_STRUCTS_H
#include "../uxmSSEStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

/*******************************************************/
/* MACRO for use _uXm_m128fi_shuffle_****_ps().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of _uXm_m128fi_shuffle_****_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of _uXm_m128fi_shuffle_****_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __uXm128fi temp = _uXm_m128fi_SHUFFLE_IMR_PS(InXmm_A, InXmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M128FI_SHUFFLE_IM_PS(VA,VB,fp3,fp2,fp1,fp0) _uXm_m128fi_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define _uXm_M128FI_SHUFFLE_IMR_PS(VA,VB,fp0,fp1,fp2,fp3) _uXm_m128fi_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_m128fi_permute_****_ps().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of _uXm_m128fi_permute_****_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of _uXm_m128fi_permute_****_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __uXm128fi temp = _uXm_m128fi_PERMUTE_IMR_PS(InXmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M128FI_PERMUTE_IM_PS(VA,fp3,fp2,fp1,fp0) _uXm_m128fi_permute_##fp3##fp2##fp1##fp0##_ps(VA)
#define _uXm_M128FI_PERMUTE_IMR_PS(VA,fp0,fp1,fp2,fp3) _uXm_m128fi_permute_##fp3##fp2##fp1##fp0##_ps(VA)

/*******************************************************/
/* MACRO for use _uXm_m128fi_cvt*s_f32().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of _uXm_m128fi_cvt*s_f32 that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of _uXm_m128fi_cvt*s_f32 that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const float temp = _uXm_M128FI_CNVTF32_IM_PS(InXmm_A, 0); */
/*******************************************************/
#define _uXm_M128FI_CNVTF32_IM_PS(VA,fp) _uXm_m128fi_cvt##fp##s_f32(VA)

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * FP, arithmetic
 */

 // __uXm128fi START
extern __uXm128fi _uXm_m128fi_add_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_add_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_sub_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_sub_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_mul_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_mul_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_div_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_div_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_sqrt_ss(__uXm128fi InXmm_A);
extern __uXm128fi _uXm_m128fi_sqrt_ps(__uXm128fi InXmm_A);
extern __uXm128fi _uXm_m128fi_rcp_ss(__uXm128fi InXmm_A);
extern __uXm128fi _uXm_m128fi_rcp_ps(__uXm128fi InXmm_A);
extern __uXm128fi _uXm_m128fi_rsqrt_ss(__uXm128fi InXmm_A);
extern __uXm128fi _uXm_m128fi_rsqrt_ps(__uXm128fi InXmm_A);
extern __uXm128fi _uXm_m128fi_min_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_min_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_max_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_max_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
// __uXm128fi END

/*
 * FP, logical
 */

// __uXm128fi START
extern __uXm128fi _uXm_m128fi_and_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_andnot_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_or_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_xor_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_not_ps(__uXm128fi InXmm_A);
// __uXm128fi END

/*
 * FP, comparison
 */

// __uXm128fi START
extern __uXm128fi _uXm_m128fi_cmpeq_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpeq_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmplt_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmplt_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmple_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmple_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpgt_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpgt_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpge_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpge_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpneq_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpneq_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpnlt_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpnlt_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpnle_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpnle_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpngt_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpngt_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpnge_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpnge_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpord_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpord_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpunord_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_cmpunord_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
// __uXm128fi END

/*
 * FP, comparison return int
 */

// __uXm128fi START
extern unsigned __int8 _uXm_m128fi_comieq_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_comilt_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_comile_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_comigt_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_comige_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_comineq_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_ucomieq_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_ucomilt_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_ucomile_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_ucomigt_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_ucomige_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern unsigned __int8 _uXm_m128fi_ucomineq_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
// __uXm128fi END

// __uXm
/*
 * FP, conversions
 */

 // __uXm128fi START
extern int _uXm_m128fi_cvt_ss2si(__uXm128fi InXmm_A);
extern int _uXm_m128fi_cvtt_ss2si(__uXm128fi InXmm_A);
extern __uXm128fi _uXm_m128fi_cvt_si2ss(__uXm128fi InXmm_A, int InInt_B);
extern float _uXm_m128fi_cvtss_f32(__uXm128fi InXmm_A);
extern float _uXm_m128fi_cvt0s_f32(__uXm128fi InXmm_A);
extern float _uXm_m128fi_cvt1s_f32(__uXm128fi InXmm_A);
extern float _uXm_m128fi_cvt2s_f32(__uXm128fi InXmm_A);
extern float _uXm_m128fi_cvt3s_f32(__uXm128fi InXmm_A);
extern float _uXm_m128fi_cvtelts_f32(__uXm128fi InXmm_A, unsigned int InInt_BSel);
// __uXm128fi END

#if defined (uXm_X86)
/*
 * Support for MMX extension intrinsics
 */
// __uXm64 START
extern __uXm64 _uXm_m128fi_cvt_ps2pi(__uXm128fi InXmm_A);
extern __uXm64 _uXm_m128fi_cvtt_ps2pi(__uXm128fi InXmm_A);
extern __uXm128fi _uXm_m128fi_cvt_pi2ps(__uXm128fi InXmm_A, __uXm64 Inmm_B);
// __uXm64 END
#endif  /* defined (uXm_X86) */

#if defined (uXm_X64)
/*
 * Support for 64-bit intrinsics
 */
// __uXm128fi START
extern __int64 _uXm_m128fi_cvtss_si64(__uXm128fi InXmm_A);
extern __int64 _uXm_m128fi_cvttss_si64(__uXm128fi InXmm_A);
extern __uXm128fi  _uXm_m128fi_cvtsi64_ss(__uXm128fi InXmm_A, __int64 InInt_B);
// __uXm128fi END
#endif  /* defined (uXm_X64) */

/*
 * FP, misc
 */

// __uXm128fi START
extern __uXm128fi _uXm_m128fi_shuffle_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B, unsigned int _Imm8);
extern __uXm128fi _uXm_m128fi_permute_ps(__uXm128fi InXmm_A, unsigned int _Imm8);
extern void _uXm_m128fi_transpose4_ps(__uXm128fi InXmm_Row0, __uXm128fi InXmm_Row1, __uXm128fi InXmm_Row2, __uXm128fi InXmm_Row3);

extern __uXm128fi _uXm_m128fi_unpackhi_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_unpacklo_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);

extern __uXm128fi _uXm_m128fi_movehl_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_movelh_ps(__uXm128fi InXmm_A, __uXm128fi InXmm_B);

extern __uXm128fi _uXm_m128fi_loadh_pi(__uXm128fi InXmm_A, const __uXm64* InPmm_C);
extern __uXm128fi _uXm_m128fi_loadl_pi(__uXm128fi InXmm_A, const __uXm64* InPmm_C);

extern void _uXm_m128fi_storeh_pi(__uXm64* OutPmm_A, __uXm128fi InXmm_B);
extern void _uXm_m28f_storel_pi(__uXm64* OutPmm_A, __uXm128fi InXmm_B);

extern int _uXm_m128fi_movemask_ps(__uXm128fi InXmm_A);
// __uXm128fi END

/*
 * memory & initialization
 */

/*
 * FP, sets
 */

// __uXm128fi START
extern __uXm128fi _uXm_m128fi_set_ss(float Infloat_A);
extern __uXm128fi _uXm_m128fi_set_ps1(float Infloat_A);
extern __uXm128fi _uXm_m128fi_set_ps(float Infloat_3, float Infloat_2, float Infloat_1, float Infloat_0);
extern __uXm128fi _uXm_m128fi_setr_ps(float Infloat_0, float Infloat_1, float Infloat_2, float Infloat_3);
extern __uXm128fi _uXm_m128fi_setzero_ps(void);
// __uXm128fi END

/*
 * FP, loads
 */

// __uXm128fi START
extern __uXm128fi _uXm_m128fi_load_ss(const float* InPfloat_A);
extern __uXm128fi _uXm_m128fi_load_ps1(const float* InPfloat_A);
extern __uXm128fi _uXm_m128fi_load_ps(const float* InPfloat_A);
extern __uXm128fi _uXm_m128fi_loadr_ps(const float* InPfloat_A);
extern __uXm128fi _uXm_m128fi_loadu_ps(const float* InPfloat_A);
extern __uXm128fi _uXm_m128fi_loadur_ps(const float* InPfloat_A);
extern __uXm128fi _uXm_m128fi_loadh_ps(const float* InPfloat_A);
extern __uXm128fi _uXm_m128fi_loadl_ps(const float* InPfloat_A);
// __uXm128fi END

/*
 * FP, stores
 */

// __uXm128fi START
extern void _uXm_m128fi_store_ss(float* OutPfloat_A, __uXm128fi InXmm_B);
extern void _uXm_m128fi_store_ps1(float* OutPfloat_A, __uXm128fi InXmm_B);
extern void _uXm_m128fi_storeu_ps1(float* OutPfloat_A, __uXm128fi InXmm_B);
extern void _uXm_m128fi_store_ps(float* OutPfloat_A, __uXm128fi InXmm_B);
extern void _uXm_m128fi_storeu_ps(float* OutPfloat_A, __uXm128fi InXmm_B);
extern void _uXm_m128fi_storer_ps(float* OutPfloat_A, __uXm128fi InXmm_B);
extern void _uXm_m128fi_storeur_ps(float* OutPfloat_A, __uXm128fi InXmm_B);
extern void _uXm_m128fi_storeh_ps(float* OutPfloat_A, __uXm128fi InXmm_B);
extern void _uXm_m128fi_storel_ps(float* OutPfloat_A, __uXm128fi InXmm_B);

extern void _uXm_m128fi_store_m128f_ps(__uXm128fi* OutPXmm_A, __uXm128f InXmm_B);
extern void _uXm_m128fi_store_m128_ps(__uXm128fi* OutPXmm_A, __uXm128 InXmm_B);
extern void _uXm_m128fi_store_m128fi_ps(__uXm128fi* OutPXmm_A, __uXm128fi InXmm_B);
extern void _uXm_m128fi_store_cm128_ps(__uXm128fi* OutPXmm_A, __m128 InXmm_B);
extern void _uXm_m128fi_store_Pfloat_ps(__uXm128fi* OutPXmm_A, const float* InPfloat_B);
extern void _uXm_m128fi_storeu_Pfloat_ps(__uXm128fi* OutPXmm_A, const float* InPfloat_B);
// __uXm128fi END

/*
 * FP, moves
 */

// __uXm128fi START
extern __uXm128fi _uXm_m128fi_move_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern __uXm128fi _uXm_m128fi_move_ps1(__uXm128fi InXmm_A);
extern __uXm128fi _uXm_m128fi_move_ps(__uXm128fi InXmm_A);
extern __uXm128fi _uXm_m128fi_mover_ps(__uXm128fi InXmm_A);

extern __uXm128fi _uXm_m128fi_move_m128f_ss(__uXm128fi InXmm_A, __uXm128f InXmm_B);
extern __uXm128fi _uXm_m128fi_move_m128f_ps1(__uXm128f InXmm_A);
extern __uXm128fi _uXm_m128fi_move_m128f_ps(__uXm128f InXmm_A);
extern __uXm128fi _uXm_m128fi_mover_m128f_ps(__uXm128f InXmm_A);

extern __uXm128fi _uXm_m128fi_move_m128_ss(__uXm128fi InXmm_A, __uXm128 InXmm_B);
extern __uXm128fi _uXm_m128fi_move_m128_ps1(__uXm128 InXmm_A);
extern __uXm128fi _uXm_m128fi_move_m128_ps(__uXm128 InXmm_A);
extern __uXm128fi _uXm_m128fi_mover_m128_ps(__uXm128 InXmm_A);

extern __uXm128fi _uXm_m128fi_move_cm128_ss(__uXm128fi InXmm_A, __m128 InXmm_B);
extern __uXm128fi _uXm_m128fi_move_cm128_ps1(__m128 InXmm_A);
extern __uXm128fi _uXm_m128fi_move_cm128_ps(__m128 InXmm_A);
extern __uXm128fi _uXm_m128fi_mover_cm128_ps(__m128 InXmm_A);

extern float* _uXm_Pfloat_move_m128fi_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern float* _uXm_Pfloat_move_m128fi_ps1(__uXm128fi InXmm_A);
extern float* _uXm_Pfloat_move_m128fi_ps(__uXm128fi InXmm_A);
extern float* _uXm_Pfloat_mover_m128fi_ps(__uXm128fi InXmm_A);
extern float* _uXm_Pfloat_moveu_m128fi_ss(__uXm128fi InXmm_A, __uXm128fi InXmm_B);
extern float* _uXm_Pfloat_moveu_m128fi_ps1(__uXm128fi InXmm_A);
extern float* _uXm_Pfloat_moveu_m128fi_ps(__uXm128fi InXmm_A);
extern float* _uXm_Pfloat_moveur_m128fi_ps(__uXm128fi InXmm_A);
// __uXm128fi END

/*
* Cacheability support
*/

extern void _uXm_m128fi_stream_ps(float* OutPfloat_A, __uXm128fi InXmm_B);

uXm_PACK_POP

uXm_EXTERNC_END

#ifndef uXm128fi_SHUFFLE_PS_H
#include "uXm128fishuffleps.h"
#endif
#ifndef uXm128fi_PERMUTE_PS_H
#include "uXm128fipermuteps.h"
#endif

/* Alternate intrinsic names definition */
#if defined(uXm_X86)
#define _uXm_m128fi_cvtps_pi32    _uXm_m128fi_cvt_ps2pi
#define _uXm_m128fi_cvttps_pi32   _uXm_m128fi_cvtt_ps2pi
#define _uXm_m128fi_cvtpi32_ps    _uXm_m128fi_cvt_pi2ps
#define _uXm_m128fi_extract_pi16  _uXm_m64_pextrw
#define _uXm_m128fi_insert_pi16   _uXm_m64_pinsrw
#define _uXm_m128fi_max_pi16      _uXm_m64_pmaxsw
#define _uXm_m128fi_max_pu8       _uXm_m64_pmaxub
#define _uXm_m128fi_min_pi16      _uXm_m64_pminsw
#define _uXm_m128fi_min_pu8       _uXm_m64_pminub
#define _uXm_m128fi_movemask_pi8  _uXm_m64_pmovmskb
#define _uXm_m128fi_mulhi_pu16    _uXm_m64_pmulhuw
#define _uXm_m128fi_shuffle_pi16  _uXm_m64_pshufw
#define _uXm_m128fi_maskmove_si64 _uXm_m64_maskmovq
#define _uXm_m128fi_avg_pu8       _uXm_m64_pavgb
#define _uXm_m128fi_avg_pu16      _uXm_m64_pavgw
#define _uXm_m128fi_sad_pu8       _uXm_m64_psadbw
#endif

#define _uXm_m128fi_cvtss_si32		_uXm_m128fi_cvt_ss2si
#define _uXm_m128fi_cvttss_si32		_uXm_m128fi_cvtt_ss2si
#define _uXm_m128fi_cvtsi32_ss		_uXm_m128fi_cvt_si2ss
#define _uXm_m128fi_set1_ps			_uXm_m128fi_set_ps1
#define _uXm_m128fi_load1_ps		_uXm_m128fi_load_ps1
#define _uXm_m128fi_store1_ps		_uXm_m128fi_store_ps1
#define _uXm_m128fi_storeu1_ps		_uXm_m128fi_storeu_ps1
#define _uXm_m128fi_move1_m128f_ps	_uXm_m128fi_move_m128f_ps1
#define _uXm_m128fi_move1_m128_ps	_uXm_m128fi_move_m128_ps1
#define _uXm_m128fi_move1_ps		_uXm_m128fi_move_ps1
#define _uXm_m128fi_move1_cm128_ps	_uXm_m128fi_move_cm128_ps1

#if defined(uXm_X86)
/*********************************************************/
/*  NAME : _uXm_m128fi_cvtpi16_ps                                */
/*  DESCRIPTION : Convert 4 16-bit signed integer values */
/*                to 4 single-precision float values     */
/*  IN : __uXm64 _A                                         */
/*  OUT : none                                           */
/*  RETURN : __uXm128fi : (float)_A                           */
/*********************************************************/
extern __uXm128fi _uXm_m128fi_cvtpi16_ps(__uXm64 _A);


/***********************************************************/
/*  NAME : _uXm_m128fi_cvtpu16_ps                                  */
/*  DESCRIPTION : Convert 4 16-bit unsigned integer values */
/*                to 4 single-precision float values       */
/*  IN : __uXm64 _A                                           */
/*  OUT : none                                             */
/*  RETURN : __uXm128fi : (float)_A                             */
/***********************************************************/
extern __uXm128fi _uXm_m128fi_cvtpu16_ps(__uXm64 _A);


/******************************************************/
/*  NAME : _uXm_m128fi_cvtps_pi16                             */
/*  DESCRIPTION : Convert 4 single-precision float    */
/*                values to 4 16-bit integer values   */
/*  IN : __uXm128fi a                                     */
/*  OUT : none                                        */
/*  RETURN : __uXm64 : (short)a                         */
/******************************************************/
extern __uXm64 _uXm_m128fi_cvtps_pi16(__uXm128fi _A);


/******************************************************/
/*  NAME : _uXm_m128fi_cvtpi8_ps                              */
/*  DESCRIPTION : Convert 4 8-bit integer values to 4 */
/*                single-precision float values       */
/*  IN : __uXm64 _A                                     */
/*  OUT : none                                        */
/*  RETURN : __uXm128fi : (float)_A                        */
/******************************************************/
extern __uXm128fi _uXm_m128fi_cvtpi8_ps(__uXm64 _A);


/******************************************************/
/*  NAME : _uXm_m128fi_cvtpu8_ps                              */
/*  DESCRIPTION : Convert 4 8-bit unsigned integer    */
/*                values to 4 single-precision float  */
/*                values                              */
/*  IN : __uXm64 _A                                      */
/*  OUT : none                                        */
/*  RETURN : __uXm128fi : (float)_A                        */
/******************************************************/
extern __uXm128fi _uXm_m128fi_cvtpu8_ps(__uXm64 _A);


/******************************************************/
/*  NAME : _uXm_m128fi_cvtps_pi8                              */
/*  DESCRIPTION : Convert 4 single-precision float    */
/*                values to 4 8-bit integer values    */
/*  IN : __uXm128fi _A                                     */
/*  OUT : none                                        */
/*  RETURN : __uXm64 : (__int8)_A                          */
/******************************************************/
extern __uXm64 _uXm_m128fi_cvtps_pi8(__uXm128fi _A);


/******************************************************/
/*  NAME : _uXm_m128fi_cvtpi32x2_ps                           */
/*  DESCRIPTION : Convert 4 32-bit integer values     */
/*                to 4 single-precision float values  */
/*  IN : __uXm64 _A : operand 1                          */
/*       __uXm64 _B : operand 2                          */
/*  OUT : none                                        */
/*  RETURN : __uXm128fi : (float)_A,(float)_B               */
/******************************************************/
extern __uXm128fi _uXm_m128fi_cvtpi32x2_ps(__uXm64 _A, __uXm64 _B);

#endif // _M_IX86
#endif // uXm_SSE

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm128fi_XMM_INTRIN_H
