
#pragma once

#ifndef uXm_XMM_INTRIN_H
#define uXm_XMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

/*******************************************************/
/* MACRO for shuffle parameter for uXm_xmm_shuffle_ps(). */
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

/*******************************************************/
/* MACRO for use uXm_xmm_shuffle_****_ps().				*/
/* Argument fp3 is a digit[0123] that represents the fp*/
/* from argument "b" of mm_shuffle_ps that will be     */
/* placed in fp3 of result. fp2 is the same for fp2 in */
/* result. fp1 is a digit[0123] that represents the fp */
/* from argument "a" of mm_shuffle_ps that will be     */
/* places in fp1 of result. fp0 is the same for fp0 of */
/* result                                              */
/* const __uXm128 temp = uXm_XMM_SHUFFLE_IMR_PS(InXmm_A, InXmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define uXm_XMM_SHUFFLE_IM_PS(VA,VB,fp3,fp2,fp1,fp0) uXm_xmm_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)
#define uXm_XMM_SHUFFLE_IMR_PS(VA,VB,fp0,fp1,fp2,fp3) uXm_xmm_shuffle_##fp3##fp2##fp1##fp0##_ps(VA,VB)

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
extern __uXm128 uXm_xmm_shuffle_0000_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0001_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0002_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0003_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0010_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0011_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0012_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0013_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0020_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0021_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0022_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0023_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0030_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0031_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0032_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0033_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0100_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0101_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0102_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0103_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0110_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0111_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0112_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0113_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0120_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0121_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0122_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0123_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0130_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0131_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0132_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0133_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0200_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0201_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0202_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0203_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0210_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0211_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0212_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0213_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0220_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0221_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0222_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0223_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0230_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0231_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0232_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0233_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0300_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0301_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0302_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0303_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0310_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0311_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0312_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0313_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0320_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0321_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0322_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0323_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0330_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0331_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0332_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_0333_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1000_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1001_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1002_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1003_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1010_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1011_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1012_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1013_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1020_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1021_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1022_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1023_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1030_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1031_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1032_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1033_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1100_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1101_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1102_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1103_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1110_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1111_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1112_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1113_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1120_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1121_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1122_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1123_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1130_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1131_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1132_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1133_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1200_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1201_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1202_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1203_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1210_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1211_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1212_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1213_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1220_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1221_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1222_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1223_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1230_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1231_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1232_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1233_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1300_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1301_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1302_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1303_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1310_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1311_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1312_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1313_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1320_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1321_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1322_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1323_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1330_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1331_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1332_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_1333_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2000_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2001_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2002_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2003_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2010_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2011_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2012_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2013_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2020_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2021_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2022_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2023_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2030_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2031_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2032_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2033_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2100_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2101_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2102_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2103_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2110_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2111_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2112_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2113_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2120_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2121_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2122_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2123_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2130_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2131_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2132_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2133_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2200_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2201_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2202_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2203_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2210_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2211_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2212_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2213_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2220_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2221_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2222_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2223_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2230_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2231_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2232_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2233_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2300_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2301_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2302_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2303_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2310_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2311_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2312_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2313_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2320_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2321_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2322_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2323_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2330_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2331_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2332_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_2333_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3000_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3001_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3002_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3003_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3010_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3011_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3012_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3013_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3020_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3021_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3022_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3023_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3030_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3031_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3032_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3033_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3100_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3101_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3102_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3103_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3110_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3111_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3112_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3113_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3120_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3121_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3122_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3123_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3130_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3131_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3132_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3133_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3200_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3201_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3202_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3203_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3210_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3211_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3212_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3213_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3220_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3221_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3222_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3223_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3230_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3231_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3232_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3233_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3300_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3301_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3302_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3303_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3310_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3311_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3312_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3313_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3320_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3321_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3322_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3323_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3330_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3331_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3332_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
extern __uXm128 uXm_xmm_shuffle_3333_ps(__uXm128 InXmm_A, __uXm128 InXmm_B);
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
