
#pragma once

#ifndef uX_SMM_INTRIN_H
#define uX_SMM_INTRIN_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE41

#ifndef uX_TMM_INTRIN_H
#include "uXtmmintrin.h"
#endif  /* uX_MM_INTRIN_H */

#ifndef _INCLUDED_SMM
#include <smmintrin.h>
#endif  /* _INCLUDED_SMM */

/*
 * Integer, Macros
 */

/*******************************************************/
/* MACRO for use _uX_mm_blend_epi16_*().				*/
/* result                                              */
/* const __m128i temp = _uX_MM_BLEND_EPI16_IM(Inxmm_A, Inxmm_B, 255); */
/*******************************************************/
#define _uX_MM_BLEND_EPI16_IM(VA,VB,IMM) _uX_mm_blend_epi16_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uX_mm_blend_ps_*().					*/
/* result                                              */
/* const __m128 temp = _uX_MM_BLEND_PS_IM(Inxmm_A, Inxmm_B, 255); */
/*******************************************************/
#define _uX_MM_BLEND_PS_IM(VA,VB,IMM) _uX_mm_blend_ps_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uX_mm_blend_pd_*().					*/
/* result                                              */
/* const __m128d temp = _uX_MM_BLEND_PD_IM(Inxmm_A, Inxmm_B, 3); */
/*******************************************************/
#define _uX_MM_BLEND_PD_IM(VA,VB,IMM) _uX_mm_blend_pd_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uX_mm_dp_ps_*().					*/
/* result                                              */
/* const __m128 temp = _uX_MM_DP_PS_IM(Inxmm_A, Inxmm_B, 255); */
/*******************************************************/
#define _uX_MM_DP_PS_IM(VA,VB,IMM) _uX_mm_dp_ps_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uX_mm_dp_pd_*().					*/
/* result                                              */
/* const __m128d temp = _uX_MM_DP_PD_IM(Inxmm_A, Inxmm_B, 3); */
/*******************************************************/
#define _uX_MM_DP_PD_IM(VA,VB,IMM) _uX_mm_dp_pd_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uX_mm_insert_ps_*().					*/
/* result                                              */
/* const __m128 temp = _uX_MM_INSERT_PS_IM(Inxmm_A, Inxmm_B, 217); */
/*******************************************************/
#define _uX_MM_INSERT_PS_IM(VA,VB,IMM) _uX_mm_insert_ps_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uX_mm_extract_ps_*().					*/
/* result                                              */
/* const int temp = _uX_MM_EXTRACT_PS_IM(Inxmm_A, 3); */
/*******************************************************/
#define _uX_MM_EXTRACT_PS_IM(VA,IMM) _uX_mm_extract_ps_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_insert_epi8_*().					*/
/* result                                              */
/* const __m128i temp = _uX_MM_INSERT_EPI8_IM(Inxmm_A, Inxmm_B, 15); */
/*******************************************************/
#define _uX_MM_INSERT_EPI8_IM(VA,INTB,IMM) _uX_mm_insert_epi8_##IMM##(VA,INTB)

/*******************************************************/
/* MACRO for use _uX_mm_insert_epi32_*().					*/
/* result                                              */
/* const __m128i temp = _uX_MM_INSERT_EPI32_IM(Inxmm_A, Inxmm_B, 3); */
/*******************************************************/
#define _uX_MM_INSERT_EPI32_IM(VA,INTB,IMM) _uX_mm_insert_epi32_##IMM##(VA,INTB)

#if defined(uX_X64)
/*******************************************************/
/* MACRO for use _uX_mm_insert_epi64_*().					*/
/* result                                              */
/* const __m128i temp = _uX_MM_INSERT_EPI64_IM(Inxmm_A, Inxmm_B, 1); */
/*******************************************************/
#define _uX_MM_INSERT_EPI64_IM(VA,INTB,IMM) _uX_mm_insert_epi64_##IMM##(VA,INTB)
#endif //uX_X64

/*******************************************************/
/* MACRO for use _uX_mm_extract_epi8_*().					*/
/* result                                              */
/* const int temp = _uX_MM_EXTRACT_EPI8_IM(Inxmm_A, 15); */
/*******************************************************/
#define _uX_MM_EXTRACT_EPI8_IM(VA,IMM) _uX_mm_extract_epi8_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_extract_epi32_*().					*/
/* result                                              */
/* const int temp = _uX_MM_EXTRACT_EPI32_IM(Inxmm_A, 3); */
/*******************************************************/
#define _uX_MM_EXTRACT_EPI32_IM(VA,IMM) _uX_mm_extract_epi32_##IMM##(VA)

#if defined(uX_X64)
/*******************************************************/
/* MACRO for use _uX_mm_extract_epi64_*().					*/
/* result                                              */
/* const __int64 temp = _uX_MM_EXTRACT_EPI64_IM(Inxmm_A, 1); */
/*******************************************************/
#define _uX_MM_EXTRACT_EPI64_IM(VA,IMM) _uX_mm_extract_epi64_##IMM##(VA)
#endif //uX_X64

/*******************************************************/
/* MACRO for use _uX_mm_round_pd_*().					*/
/* result                                              */
/* const __m128d temp = _uX_MM_ROUND_PD_IM(Inxmm_A, 12); */
/*******************************************************/
#define _uX_MM_ROUND_PD_IM(VA,IMM) _uX_mm_round_pd_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_round_sd_*().					*/
/* result                                              */
/* const __m128d temp = _uX_MM_ROUND_SD_IM(Inxmm_A, 12); */
/*******************************************************/
#define _uX_MM_ROUND_SD_IM(VA,IMM) _uX_mm_round_sd_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_round_ps_*().					*/
/* result                                              */
/* const __m128d temp = _uX_MM_ROUND_PS_IM(Inxmm_A, 12); */
/*******************************************************/
#define _uX_MM_ROUND_PS_IM(VA,IMM) _uX_mm_round_ps_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_round_ss_*().					*/
/* result                                              */
/* const __m128d temp = _uX_MM_ROUND_SS_IM(Inxmm_A, 12); */
/*******************************************************/
#define _uX_MM_ROUND_SS_IM(VA,IMM) _uX_mm_round_ss_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uX_mm_mpsadbw_epu8_*().					*/
/* result                                              */
/* const __m128I temp = _uX_MM_MPSADBW_EPU8_IM(Inxmm_A, Inxmm_B, 217); */
/*******************************************************/
#define _uX_MM_MPSADBW_EPU8_IM(VA,VB,IMM) _uX_mm_mpsadbw_epu8_##IMM##(VA,VB)

/*
 * Rounding mode macros
 */

#define uX_MM_FROUND_TO_NEAREST_INT    0x00
#define uX_MM_FROUND_TO_NEG_INF        0x01
#define uX_MM_FROUND_TO_POS_INF        0x02
#define uX_MM_FROUND_TO_ZERO           0x03
#define uX_MM_FROUND_CUR_DIRECTION     0x04

#define uX_MM_FROUND_RAISE_EXC         0x00
#define uX_MM_FROUND_NO_EXC            0x08

#define uX_MM_FROUND_NINT      uX_MM_FROUND_TO_NEAREST_INT | uX_MM_FROUND_RAISE_EXC
#define uX_MM_FROUND_FLOOR     uX_MM_FROUND_TO_NEG_INF     | uX_MM_FROUND_RAISE_EXC
#define uX_MM_FROUND_CEIL      uX_MM_FROUND_TO_POS_INF     | uX_MM_FROUND_RAISE_EXC
#define uX_MM_FROUND_TRUNC     uX_MM_FROUND_TO_ZERO        | uX_MM_FROUND_RAISE_EXC
#define uX_MM_FROUND_RINT      uX_MM_FROUND_CUR_DIRECTION  | uX_MM_FROUND_RAISE_EXC
#define uX_MM_FROUND_NEARBYINT uX_MM_FROUND_CUR_DIRECTION  | uX_MM_FROUND_NO_EXC

/*
 * MACRO functions for ceil/floor intrinsics
 */

/*
#define _uX_mm_ceil_pd(val)       _uX_mm_round_pd((val), uX_MM_FROUND_CEIL)
#define _uX_mm_ceil_sd(dst, val)  _uX_mm_round_sd((dst),(val), uX_MM_FROUND_CEIL)

#define _uX_mm_floor_pd(val)      _uX_mm_round_pd((val), uX_MM_FROUND_FLOOR)
#define _uX_mm_floor_sd(dst, val) _uX_mm_round_sd((dst),(val), uX_MM_FROUND_FLOOR)

#define _uX_mm_ceil_ps(val)       _uX_mm_round_ps((val), uX_MM_FROUND_CEIL)
#define _uX_mm_ceil_ss(dst, val)  _uX_mm_round_ss((dst),(val), uX_MM_FROUND_CEIL)

#define _uX_mm_floor_ps(val)      _uX_mm_round_ps((val), uX_MM_FROUND_FLOOR)
#define _uX_mm_floor_ss(dst, val) _uX_mm_round_ss((dst),(val), uX_MM_FROUND_FLOOR)*/

#define _uX_mm_test_all_zeros(mask, val)      _uX_mm_testz_si128((mask),(val))

/*
 * MACRO functions for packed integer 128-bit comparison intrinsics.
 */

#define _uX_mm_test_all_ones(val) \
              _uX_mm_testc_si128((val), _uX_mm_cmpeq_epi32((val),(val)))

#define _uX_mm_test_mix_ones_zeros(mask, val) _uX_mm_testnzc_si128((mask),(val))

uX_EXTERNC_BEGIN

uX_PACK_PUSH16

	// Integer blend instructions - select data from 2 sources
	// using constant or variable mask

	extern __m128i uX_callconv _uX_mm_blend_epi16(__m128i Inxmm_A, __m128i Inxmm_B, const unsigned int Inint_mask);
	extern __m128i uX_callconv _uX_mm_blendv_epi8(__m128i Inxmm_A, __m128i Inxmm_B, __m128i Inxmm_mask);

	// Float single precision blend instructions - select data
	// from 2 sources using constant/variable mask

	extern __m128 uX_callconv _uX_mm_blend_ps(__m128 Inxmm_A, __m128 Inxmm_B, const unsigned int Inint_mask);
	extern __m128 uX_callconv _uX_mm_blendv_ps(__m128 Inxmm_A, __m128 Inxmm_B, __m128 Inxmm_mask);

	// Float double precision blend instructions - select data
	// from 2 sources using constant/variable mask

	extern __m128d uX_callconv _uX_mm_blend_pd(__m128d Inxmm_A, __m128d Inxmm_B, const unsigned int Inint_mask);
	extern __m128d uX_callconv _uX_mm_blendv_pd(__m128d Inxmm_A, __m128d Inxmm_B, __m128d Inxmm_mask);

	// Dot product instructions with mask-defined summing and zeroing
	// of result's parts

	extern __m128 uX_callconv _uX_mm_dp_ps(__m128 Inxmm_A, __m128 Inxmm_B, const unsigned int Inint_mask);
	extern __m128d uX_callconv _uX_mm_dp_pd(__m128d Inxmm_A, __m128d Inxmm_B, const unsigned int Inint_mask);

	// Packed integer 64-bit comparison, zeroing or filling with ones
	// corresponding parts of result

	extern __m128i uX_callconv _uX_mm_cmpeq_epi64(__m128i Inxmm_A, __m128i Inxmm_B);

	// Min/max packed integer instructions

	extern __m128i uX_callconv _uX_mm_min_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uX_callconv _uX_mm_max_epi8(__m128i Inxmm_A, __m128i Inxmm_B);

	extern __m128i uX_callconv _uX_mm_min_epu16(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uX_callconv _uX_mm_max_epu16(__m128i Inxmm_A, __m128i Inxmm_B);

	extern __m128i uX_callconv _uX_mm_min_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uX_callconv _uX_mm_max_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uX_callconv _uX_mm_min_epu32(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uX_callconv _uX_mm_max_epu32(__m128i Inxmm_A, __m128i Inxmm_B);

	// Packed integer 32-bit multiplication with truncation
	// of upper halves of results

	extern __m128i uX_callconv _uX_mm_mullo_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

	// Packed integer 32-bit multiplication of 2 pairs of operands
	// producing two 64-bit results

	extern __m128i uX_callconv _uX_mm_mul_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

	// Packed integer 128-bit bitwise comparison.
	// return 1 if(val 'and' mask) == 0

	extern int uX_callconv _uX_mm_testz_si128(__m128i mask, __m128i val);

	// Packed integer 128-bit bitwise comparison.
	// return 1 if(val 'and_not' mask) == 0

	extern int uX_callconv _uX_mm_testc_si128(__m128i mask, __m128i val);

	// Packed integer 128-bit bitwise comparison
	// ZF =((val 'and' mask) == 0)  CF =((val 'and_not' mask) == 0)
	// return 1 if both ZF and CF are 0

	extern int uX_callconv _uX_mm_testnzc_si128(__m128i mask, __m128i val);

	// Insert single precision float into packed single precision
	// array element selected by index.
	// The bits [7-6] of the 3d parameter define src index,
	// the bits [5-4] define dst index, and bits [3-0] define zeroing
	// mask for dst

	extern __m128 uX_callconv _uX_mm_insert_ps(__m128 dst, __m128 src, int index);

	// Helper macro to create index-parameter value for _uX_mm_insert_ps

#define _uX_MM_MK_INSERTPS_NDX(srcField, dstField, zeroMask) \
	(((srcField)<<6) |((dstField)<<4) |(zeroMask))

	// Extract binary representation of single precision float from
	// packed single precision array element selected by index

	extern int uX_callconv _uX_mm_extract_ps(__m128 src, const unsigned int index);

	// Extract single precision float from packed single precision
	// array element selected by index into dest

#define _uX_MM_EXTRACT_FLOAT(dest, src, ndx) \
	*((int*)&(dest)) = _uX_mm_extract_ps((src),(ndx))

	// Extract specified single precision float element
	// into the lower part of __m128

#define _uX_MM_PICK_OUT_PS(src, num) \
	_mm_insert_ps(_mm_setzero_ps(),(src), \
		      _uX_MM_MK_INSERTPS_NDX((num), 0, 0x0e))

	// Insert integer into packed integer array element
	// selected by index

	extern __m128i uX_callconv _uX_mm_insert_epi8(__m128i dst, int src, const unsigned int index);
	extern __m128i uX_callconv _uX_mm_insert_epi32(__m128i dst, int src, const unsigned int index);

#if defined(uX_X64)
	extern __m128i uX_callconv _uX_mm_insert_epi64(__m128i dst, __int64 src, const unsigned int index);
#endif  /* defined(uX_X64) */

	// Extract integer from packed integer array element
	// selected by index

	extern int uX_callconv _uX_mm_extract_epi8(__m128i src, const unsigned int index);
	extern int uX_callconv _uX_mm_extract_epi32(__m128i src, const unsigned int index);

#if defined(uX_X64)
	extern __int64 uX_callconv _uX_mm_extract_epi64(__m128i src, const unsigned int index);
#endif  /* defined(uX_X64) */

	// Horizontal packed word minimum and its index in
	// result[15:0] and result[18:16] respectively

	extern __m128i uX_callconv _uX_mm_minpos_epu16(__m128i Inxmm_A);

	// Packed/single float double precision rounding

	extern __m128d uX_callconv _uX_mm_round_pd(__m128d val, const unsigned int iRoundMode);
	extern __m128d uX_callconv _uX_mm_round_sd(__m128d dst, __m128d val, const unsigned int iRoundMode);

	// Packed/single float single precision rounding

	extern __m128 uX_callconv _uX_mm_round_ps(__m128  val, const unsigned int iRoundMode);
	extern __m128 uX_callconv _uX_mm_round_ss(__m128 dst, __m128  val, const unsigned int iRoundMode);

	/*
	* functions for ceil/floor intrinsics
	*/

	extern __m128d uX_callconv _uX_mm_floor_pd(__m128d Inxmm_A);
	extern __m128d uX_callconv _uX_mm_ceil_pd(__m128d Inxmm_A);
	extern __m128d uX_callconv _uX_mm_floor_sd(__m128d Inxmm_A);
	extern __m128d uX_callconv _uX_mm_ceil_sd(__m128d Inxmm_A);

	extern __m128 uX_callconv _uX_mm_floor_ps(__m128 Inxmm_A);
	extern __m128 uX_callconv _uX_mm_ceil_ps(__m128 Inxmm_A);
	extern __m128 uX_callconv _uX_mm_floor_ss(__m128 Inxmm_A);
	extern __m128 uX_callconv _uX_mm_ceil_ss(__m128 Inxmm_A);

	// Packed integer sign-extension

	extern __m128i uX_callconv _uX_mm_cvtepi8_epi32(__m128i Inxmm_A);
	extern __m128i uX_callconv _uX_mm_cvtepi16_epi32(__m128i Inxmm_A);
	extern __m128i uX_callconv _uX_mm_cvtepi8_epi64(__m128i Inxmm_A);
	extern __m128i uX_callconv _uX_mm_cvtepi32_epi64(__m128i Inxmm_A);
	extern __m128i uX_callconv _uX_mm_cvtepi16_epi64(__m128i Inxmm_A);
	extern __m128i uX_callconv _uX_mm_cvtepi8_epi16(__m128i Inxmm_A);

	// Packed integer zero-extension

	extern __m128i uX_callconv _uX_mm_cvtepu8_epi32(__m128i Inxmm_A);
	extern __m128i uX_callconv _uX_mm_cvtepu16_epi32(__m128i Inxmm_A);
	extern __m128i uX_callconv _uX_mm_cvtepu8_epi64(__m128i Inxmm_A);
	extern __m128i uX_callconv _uX_mm_cvtepu32_epi64(__m128i Inxmm_A);
	extern __m128i uX_callconv _uX_mm_cvtepu16_epi64(__m128i Inxmm_A);
	extern __m128i uX_callconv _uX_mm_cvtepu8_epi16(__m128i Inxmm_A);


	// Pack 8 double words from 2 operands into 8 words of result
	// with unsigned saturation

	extern __m128i uX_callconv _uX_mm_packus_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

	// Sum absolute 8-bit integer difference of adjacent groups of 4 byte
	// integers in operands. Starting offsets within operands are
	// determined by mask

	extern __m128i uX_callconv _uX_mm_mpsadbw_epu8(__m128i s1, __m128i s2, const unsigned int mask);

	/*
	 * Load double quadword using non-temporal aligned hint
	 */

	extern __m128i uX_callconv _uX_mm_stream_load_si128(const __m128i* Inpxmm_A);
	
uX_PACK_POP

uX_EXTERNC_END

#ifndef uX_SMM_BLEND_H
#include "uXsmmblend.h"
#endif

#endif // uX_SSE41

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_SMM_INTRIN_H
