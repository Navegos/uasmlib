
#pragma once

#ifndef uXm_XMM_INTRIN_H
#define uXm_XMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

/*******************************************************/
/* MACRO for shuffle parameter for uXm_xmm_shuffle_ps().   */
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of mm_shuffle_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of mm_shuffle_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/*******************************************************/
#define uXm_XMM_SHUFFLE4(fp3,fp2,fp1,fp0) (((fp3) << 6) | ((fp2) << 4) | ((fp1) << 2) | ((fp0)))
#define uXm_XMM_SHUFFLER4(fp0,fp1,fp2,fp3) ((((fp0)) | ((fp1) << 2) | ((fp2) << 4) | (fp3) << 6))


#include "uXmssestructs.h"
#include "uXmmmxstructs.h"

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * FP, arithmetic
 */

extern __uXm128 uXm_xmm_add_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_add_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_sub_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_sub_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_mul_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_mul_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_div_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_div_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_sqrt_ss(__uXm128 InXmm_A);
extern __uXm128 uXm_xmm_sqrt_ps(__uXm128 InXmm_A);
extern __uXm128 uXm_xmm_rcp_ss(__uXm128 InXmm_A);
extern __uXm128 uXm_xmm_rcp_ps(__uXm128 InXmm_A);
extern __uXm128 uXm_xmm_rsqrt_ss(__uXm128 InXmm_A);
extern __uXm128 uXm_xmm_rsqrt_ps(__uXm128 InXmm_A);
extern __uXm128 uXm_xmm_min_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_min_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_max_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_max_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

/*
 * FP, logical
 */

extern __uXm128 uXm_xmm_and_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_andnot_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_or_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_xor_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

/*
* FP, comparison
*/

extern __uXm128 uXm_xmm_cmpeq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpeq_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmplt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmplt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmple_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmple_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpgt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpgt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpge_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpge_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpneq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpneq_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpnlt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpnlt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpnle_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpnle_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpngt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpngt_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpnge_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpnge_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpord_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpord_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpunord_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_cmpunord_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);

/*
* FP, comparison return int
*/

extern unsigned __int8 uXm_xmm_comieq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_comilt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_comile_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_comigt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_comige_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_comineq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_ucomieq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_ucomilt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_ucomile_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_ucomigt_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_ucomige_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern unsigned __int8 uXm_xmm_ucomineq_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);

/*
 * FP, conversions
 */

extern int uXm_xmm_cvt_ss2si(__uXm128 InXmm_A);
extern int uXm_xmm_cvtt_ss2si(__uXm128 InXmm_A);
extern __uXm128 uXm_xmm_cvt_si2ss(__uXm128 InXmm_A, int InInt_B);
extern float uXm_xmm_cvtss_f32(__uXm128 InXmm_A);

#if defined(uXm_X86)
/*
* Support for MMX extension intrinsics
*/
extern __uXm64 uXm_xmm_cvt_ps2pi(__uXm128 InXmm_A);
extern __uXm64 uXm_xmm_cvtt_ps2pi(__uXm128 InXmm_A);
extern __uXm128 uXm_xmm_cvt_pi2ps(__uXm128 InXmm_A, __uXm64 InXmm_B);
#endif

#if defined (uXm_X64)
/*
* Support for 64-bit intrinsics
*/
extern __int64 uXm_xmm_cvtss_si64(__uXm128 InXmm_A);
extern __int64 uXm_xmm_cvttss_si64(__uXm128 InXmm_A);
extern __uXm128  uXm_xmm_cvtsi64_ss(__uXm128 InXmm_A, __int64 InInt_B);
#endif  /* defined (uXm_X64) */

/*
* FP, misc
*/

extern __uXm128 uXm_xmm_shuffle_ps(__uXm128 InXmm_A, __uXm128 InXmm_B, unsigned int _Imm8);
extern __uXm128 uXm_xmm_unpackhi_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_unpacklo_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_loadh_pi(__uXm128 InXmm_A, const __uXm64* InXmm_B);
extern __uXm128 uXm_xmm_movehl_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_movelh_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern void uXm_xmm_storeh_pi(__uXm64* OutXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_loadl_pi(__uXm128 InXmm_A, const __uXm64* InXmm_B);
extern void uXm_xmm_storel_pi(__uXm64* OutXmm_A, __uXm128 InXmm_B);
extern int uXm_xmm_movemask_ps(__uXm128 InXmm_A);

#if defined(uXm_X86)
/*
* Integer (MMX) extensions
*/
extern int uXm_xmm_pextrw(__uXm64 InXmm_A, int InInt_B);
extern __uXm64 uXm_xmm_pinsrw(__uXm64 InXmm_A, int InInt_B, int InInt_C);
extern __uXm64 uXm_xmm_pmaxsw(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_xmm_pmaxub(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_xmm_pminsw(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_xmm_pminub(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern int uXm_xmm_pmovmskb(__uXm64 InXmm_A);
extern __uXm64 uXm_xmm_pmulhuw(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_xmm_pshufw(__uXm64 InXmm_A, int InInt_B);
extern void uXm_xmm_maskmovq(__uXm64 InXmm_A, __uXm64 InXmm_B, char * OutInt8_C);
extern __uXm64 uXm_xmm_pavgb(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_xmm_pavgw(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_xmm_psadbw(__uXm64 InXmm_A, __uXm64 InXmm_B);
#endif

/*
* memory & initialization
*/

extern __uXm128 uXm_xmm_set_ss(float _A);
extern __uXm128 uXm_xmm_set_ps1(float _A);
extern __uXm128 uXm_xmm_set_ps(float _A, float _B, float _C, float _D);
extern __uXm128 uXm_xmm_setr_ps(float _A, float _B, float _C, float _D);
extern __uXm128 uXm_xmm_setzero_ps(void);
extern __uXm128 uXm_xmm_load_ss(float const*_A);
extern __uXm128 uXm_xmm_load_ps1(float const*_A);
extern __uXm128 uXm_xmm_load_ps(float const*_A);
extern __uXm128 uXm_xmm_loadr_ps(float const*_A);
extern __uXm128 uXm_xmm_loadu_ps(float const*_A);
extern void uXm_xmm_store_ss(float *_V, __uXm128 InXmm_A);
extern void uXm_xmm_store_ps1(float *_V, __uXm128 InXmm_A);
extern void uXm_xmm_store_ps(float *_V, __uXm128 InXmm_A);
extern void uXm_xmm_storer_ps(float *_V, __uXm128 InXmm_A);
extern void uXm_xmm_storeu_ps(float *_V, __uXm128 InXmm_A);
extern void uXm_xmm_prefetch(char const*_A, int _Sel);
#if defined(uXm_X86)
extern void uXm_xmm_stream_pi(__uXm64 *, __uXm64);
#endif
extern void uXm_xmm_stream_ps(float *, __uXm128);
extern __uXm128 uXm_xmm_move_ss(__uXm128 InXmm_A, __uXm128 InXmm_B);

extern void uXm_xmm_sfence(void);
extern unsigned int uXm_xmm_getcsr(void);
extern void uXm_xmm_setcsr(unsigned int);

#ifdef __ICL
extern void* __cdecl uXm_xmm_malloc(size_t _Siz, size_t _Al);
extern void __cdecl uXm_xmm_free(void *_P);
#endif  /* __ICL */

uXm_PACK_POP

uXm_EXTERNC_END

/* Alternate intrinsic names definition */
#if defined(uXm_X86)
/*
#define uXm_xmm_cvtps_pi32    uXm_xmm_cvt_ps2pi
#define uXm_xmm_cvttps_pi32   uXm_xmm_cvtt_ps2pi
#define uXm_xmm_cvtpi32_ps    uXm_xmm_cvt_pi2ps
#define uXm_xmm_extract_pi16  uXm_xmm_pextrw
#define uXm_xmm_insert_pi16   uXm_xmm_pinsrw
#define uXm_xmm_max_pi16      uXm_xmm_pmaxsw
#define uXm_xmm_max_pu8       uXm_xmm_pmaxub
#define uXm_xmm_min_pi16      uXm_xmm_pminsw
#define uXm_xmm_min_pu8       uXm_xmm_pminub
#define uXm_xmm_movemask_pi8  uXm_xmm_pmovmskb
#define uXm_xmm_mulhi_pu16    uXm_xmm_pmulhuw
#define uXm_xmm_shuffle_pi16  uXm_xmm_pshufw
#define uXm_xmm_maskmove_si64 uXm_xmm_maskmovq
#define uXm_xmm_avg_pu8       uXm_xmm_pavgb
#define uXm_xmm_avg_pu16      uXm_xmm_pavgw
#define uXm_xmm_sad_pu8       uXm_xmm_psadbw*/
#endif
#define uXm_xmm_cvtss_si32    uXm_xmm_cvt_ss2si
#define uXm_xmm_cvttss_si32   uXm_xmm_cvtt_ss2si
#define uXm_xmm_cvtsi32_ss    uXm_xmm_cvt_si2ss
#define uXm_xmm_set1_ps       uXm_xmm_set_ps1
#define uXm_xmm_load1_ps      uXm_xmm_load_ps1
#define uXm_xmm_store1_ps     uXm_xmm_store_ps1

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_XMM_INTRIN_H
