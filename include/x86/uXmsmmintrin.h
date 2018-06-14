
#pragma once

#ifndef uXm_SMM_INTRIN_H
#define uXm_SMM_INTRIN_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE41

#ifndef uXm_TMM_INTRIN_H
#include "uXmtmmintrin.h"
#endif  /* uXm_MM_INTRIN_H */

#ifndef _INCLUDED_SMM
#include <smmintrin.h>
#endif  /* _INCLUDED_SMM */

/*
 * Integer, Macros
 */

/*******************************************************/
/* MACRO for use _uXm_mm_blend_epi16_*().				*/
/* result                                              */
/* const __m128i temp = _uXm_MM_BLEND_EPI16_IM(Inxmm_A, Inxmm_B, 255); */
/*******************************************************/
#define _uXm_MM_BLEND_EPI16_IM(VA,VB,IMM) _uXm_mm_blend_epi16_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_mm_blend_ps_*().					*/
/* result                                              */
/* const __m128 temp = _uXm_MM_BLEND_PS_IM(Inxmm_A, Inxmm_B, 255); */
/*******************************************************/
#define _uXm_MM_BLEND_PS_IM(VA,VB,IMM) _uXm_mm_blend_ps_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_mm_blend_pd_*().					*/
/* result                                              */
/* const __m128d temp = _uXm_MM_BLEND_PD_IM(Inxmm_A, Inxmm_B, 3); */
/*******************************************************/
#define _uXm_MM_BLEND_PD_IM(VA,VB,IMM) _uXm_mm_blend_pd_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_mm_dp_ps_*().					*/
/* result                                              */
/* const __m128 temp = _uXm_MM_DP_PS_IM(Inxmm_A, Inxmm_B, 255); */
/*******************************************************/
#define _uXm_MM_DP_PS_IM(VA,VB,IMM) _uXm_mm_dp_ps_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_mm_dp_pd_*().					*/
/* result                                              */
/* const __m128d temp = _uXm_MM_DP_PD_IM(Inxmm_A, Inxmm_B, 3); */
/*******************************************************/
#define _uXm_MM_DP_PD_IM(VA,VB,IMM) _uXm_mm_dp_pd_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_mm_insert_ps_*().					*/
/* result                                              */
/* const __m128 temp = _uXm_MM_INSERT_PS_IM(Inxmm_A, Inxmm_B, 217); */
/*******************************************************/
#define _uXm_MM_INSERT_PS_IM(VA,VB,IMM) _uXm_mm_insert_ps_##IMM##(VA,VB)

/*******************************************************/
/* MACRO for use _uXm_mm_extract_ps_*().					*/
/* result                                              */
/* const int temp = _uXm_MM_EXTRACT_PS_IM(Inxmm_A, 3); */
/*******************************************************/
#define _uXm_MM_EXTRACT_PS_IM(VA,IMM) _uXm_mm_extract_ps_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_insert_epi8_*().					*/
/* result                                              */
/* const __m128i temp = _uXm_MM_INSERT_EPI8_IM(Inxmm_A, Inxmm_B, 15); */
/*******************************************************/
#define _uXm_MM_INSERT_EPI8_IM(VA,INTB,IMM) _uXm_mm_insert_epi8_##IMM##(VA,INTB)

/*******************************************************/
/* MACRO for use _uXm_mm_insert_epi32_*().					*/
/* result                                              */
/* const __m128i temp = _uXm_MM_INSERT_EPI32_IM(Inxmm_A, Inxmm_B, 3); */
/*******************************************************/
#define _uXm_MM_INSERT_EPI32_IM(VA,INTB,IMM) _uXm_mm_insert_epi32_##IMM##(VA,INTB)

#if defined(uXm_X64)
/*******************************************************/
/* MACRO for use _uXm_mm_insert_epi64_*().					*/
/* result                                              */
/* const __m128i temp = _uXm_MM_INSERT_EPI64_IM(Inxmm_A, Inxmm_B, 1); */
/*******************************************************/
#define _uXm_MM_INSERT_EPI64_IM(VA,INTB,IMM) _uXm_mm_insert_epi64_##IMM##(VA,INTB)
#endif //uXm_X64

/*******************************************************/
/* MACRO for use _uXm_mm_extract_epi8_*().					*/
/* result                                              */
/* const int temp = _uXm_MM_EXTRACT_EPI8_IM(Inxmm_A, 15); */
/*******************************************************/
#define _uXm_MM_EXTRACT_EPI8_IM(VA,IMM) _uXm_mm_extract_epi8_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_extract_epi32_*().					*/
/* result                                              */
/* const int temp = _uXm_MM_EXTRACT_EPI32_IM(Inxmm_A, 3); */
/*******************************************************/
#define _uXm_MM_EXTRACT_EPI32_IM(VA,IMM) _uXm_mm_extract_epi32_##IMM##(VA)

#if defined(uXm_X64)
/*******************************************************/
/* MACRO for use _uXm_mm_extract_epi64_*().					*/
/* result                                              */
/* const __int64 temp = _uXm_MM_EXTRACT_EPI64_IM(Inxmm_A, 1); */
/*******************************************************/
#define _uXm_MM_EXTRACT_EPI64_IM(VA,IMM) _uXm_mm_extract_epi64_##IMM##(VA)
#endif //uXm_X64

/*******************************************************/
/* MACRO for use _uXm_mm_round_pd_*().					*/
/* result                                              */
/* const __m128d temp = _uXm_MM_ROUND_PD_IM(Inxmm_A, 12); */
/*******************************************************/
#define _uXm_MM_ROUND_PD_IM(VA,IMM) _uXm_mm_round_pd_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_round_sd_*().					*/
/* result                                              */
/* const __m128d temp = _uXm_MM_ROUND_SD_IM(Inxmm_A, 12); */
/*******************************************************/
#define _uXm_MM_ROUND_SD_IM(VA,IMM) _uXm_mm_round_sd_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_round_ps_*().					*/
/* result                                              */
/* const __m128d temp = _uXm_MM_ROUND_PS_IM(Inxmm_A, 12); */
/*******************************************************/
#define _uXm_MM_ROUND_PS_IM(VA,IMM) _uXm_mm_round_ps_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_round_ss_*().					*/
/* result                                              */
/* const __m128d temp = _uXm_MM_ROUND_SS_IM(Inxmm_A, 12); */
/*******************************************************/
#define _uXm_MM_ROUND_SS_IM(VA,IMM) _uXm_mm_round_ss_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_mm_mpsadbw_epu8_*().					*/
/* result                                              */
/* const __m128I temp = _uXm_MM_MPSADBW_EPU8_IM(Inxmm_A, Inxmm_B, 217); */
/*******************************************************/
#define _uXm_MM_MPSADBW_EPU8_IM(VA,VB,IMM) _uXm_mm_mpsadbw_epu8_##IMM##(VA,VB)

/*
 * Rounding mode macros
 */

#define _uXm_MM_FROUND_TO_NEAREST_INT    0x00
#define _uXm_MM_FROUND_TO_NEG_INF        0x01
#define _uXm_MM_FROUND_TO_POS_INF        0x02
#define _uXm_MM_FROUND_TO_ZERO           0x03
#define _uXm_MM_FROUND_CUR_DIRECTION     0x04

#define _uXm_MM_FROUND_RAISE_EXC         0x00
#define _uXm_MM_FROUND_NO_EXC            0x08

#define _uXm_MM_FROUND_NINT      _uXm_MM_FROUND_TO_NEAREST_INT | _uXm_MM_FROUND_RAISE_EXC
#define _uXm_MM_FROUND_FLOOR     _uXm_MM_FROUND_TO_NEG_INF     | _uXm_MM_FROUND_RAISE_EXC
#define _uXm_MM_FROUND_CEIL      _uXm_MM_FROUND_TO_POS_INF     | _uXm_MM_FROUND_RAISE_EXC
#define _uXm_MM_FROUND_TRUNC     _uXm_MM_FROUND_TO_ZERO        | _uXm_MM_FROUND_RAISE_EXC
#define _uXm_MM_FROUND_RINT      _uXm_MM_FROUND_CUR_DIRECTION  | _uXm_MM_FROUND_RAISE_EXC
#define _uXm_MM_FROUND_NEARBYINT _uXm_MM_FROUND_CUR_DIRECTION  | _uXm_MM_FROUND_NO_EXC

/*
 * MACRO functions for ceil/floor intrinsics
 */

/*
#define _uXm_mm_ceil_pd(val)       _uXm_mm_round_pd((val), _uXm_MM_FROUND_CEIL)
#define _uXm_mm_ceil_sd(dst, val)  _uXm_mm_round_sd((dst),(val), _uXm_MM_FROUND_CEIL)

#define _uXm_mm_floor_pd(val)      _uXm_mm_round_pd((val), _uXm_MM_FROUND_FLOOR)
#define _uXm_mm_floor_sd(dst, val) _uXm_mm_round_sd((dst),(val), _uXm_MM_FROUND_FLOOR)

#define _uXm_mm_ceil_ps(val)       _uXm_mm_round_ps((val), _uXm_MM_FROUND_CEIL)
#define _uXm_mm_ceil_ss(dst, val)  _uXm_mm_round_ss((dst),(val), _uXm_MM_FROUND_CEIL)

#define _uXm_mm_floor_ps(val)      _uXm_mm_round_ps((val), _uXm_MM_FROUND_FLOOR)
#define _uXm_mm_floor_ss(dst, val) _uXm_mm_round_ss((dst),(val), _uXm_MM_FROUND_FLOOR)*/

#define _uXm_mm_test_all_zeros(mask, val)      _uXm_mm_testz_si128((mask),(val))

/*
 * MACRO functions for packed integer 128-bit comparison intrinsics.
 */

#define _uXm_mm_test_all_ones(val) \
              _uXm_mm_testc_si128((val), _uXm_mm_cmpeq_epi32((val),(val)))

#define _uXm_mm_test_mix_ones_zeros(mask, val) _uXm_mm_testnzc_si128((mask),(val))

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

	// Integer blend instructions - select data from 2 sources
	// using constant or variable mask

	extern __m128i uXm_callconv _uXm_mm_blend_epi16(__m128i Inxmm_A, __m128i Inxmm_B, int mask);
	extern __m128i uXm_callconv _uXm_mm_blendv_epi8(__m128i Inxmm_A, __m128i Inxmm_B, __m128i mask);

	// Float single precision blend instructions - select data
	// from 2 sources using constant/variable mask

	extern __m128 uXm_callconv _uXm_mm_blend_ps(__m128 Inxmm_A, __m128 Inxmm_B, int mask);
	extern __m128 uXm_callconv _uXm_mm_blendv_ps(__m128 Inxmm_A, __m128 Inxmm_B, __m128 mask);

	// Float double precision blend instructions - select data
	// from 2 sources using constant/variable mask

	extern __m128d uXm_callconv _uXm_mm_blend_pd(__m128d Inxmm_A, __m128d Inxmm_B, int mask);
	extern __m128d uXm_callconv _uXm_mm_blendv_pd(__m128d Inxmm_A, __m128d Inxmm_B, __m128d mask);

	// Dot product instructions with mask-defined summing and zeroing
	// of result's parts

	extern __m128 uXm_callconv _uXm_mm_dp_ps(__m128 Inxmm_A, __m128 Inxmm_B, int mask);
	extern __m128d uXm_callconv _uXm_mm_dp_pd(__m128d Inxmm_A, __m128d Inxmm_B, int mask);

	// Packed integer 64-bit comparison, zeroing or filling with ones
	// corresponding parts of result

	extern __m128i uXm_callconv _uXm_mm_cmpeq_epi64(__m128i Inxmm_A, __m128i Inxmm_B);

	// Min/max packed integer instructions

	extern __m128i uXm_callconv _uXm_mm_min_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_max_epi8(__m128i Inxmm_A, __m128i Inxmm_B);

	extern __m128i uXm_callconv _uXm_mm_min_epu16(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_max_epu16(__m128i Inxmm_A, __m128i Inxmm_B);

	extern __m128i uXm_callconv _uXm_mm_min_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_max_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_min_epu32(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_max_epu32(__m128i Inxmm_A, __m128i Inxmm_B);

	// Packed integer 32-bit multiplication with truncation
	// of upper halves of results

	extern __m128i uXm_callconv _uXm_mm_mullo_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

	// Packed integer 32-bit multiplication of 2 pairs of operands
	// producing two 64-bit results

	extern __m128i uXm_callconv _uXm_mm_mul_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

	// Packed integer 128-bit bitwise comparison.
	// return 1 if(val 'and' mask) == 0

	extern int uXm_callconv _uXm_mm_testz_si128(__m128i mask, __m128i val);

	// Packed integer 128-bit bitwise comparison.
	// return 1 if(val 'and_not' mask) == 0

	extern int uXm_callconv _uXm_mm_testc_si128(__m128i mask, __m128i val);

	// Packed integer 128-bit bitwise comparison
	// ZF =((val 'and' mask) == 0)  CF =((val 'and_not' mask) == 0)
	// return 1 if both ZF and CF are 0

	extern int uXm_callconv _uXm_mm_testnzc_si128(__m128i mask, __m128i val);

	// Insert single precision float into packed single precision
	// array element selected by index.
	// The bits [7-6] of the 3d parameter define src index,
	// the bits [5-4] define dst index, and bits [3-0] define zeroing
	// mask for dst

	extern __m128 uXm_callconv _uXm_mm_insert_ps(__m128 dst, __m128 src, int index);

	// Helper macro to create index-parameter value for _uXm_mm_insert_ps

#define _uXm_MM_MK_INSERTPS_NDX(srcField, dstField, zeroMask) \
	(((srcField)<<6) |((dstField)<<4) |(zeroMask))

	// Extract binary representation of single precision float from
	// packed single precision array element selected by index

	extern int uXm_callconv _uXm_mm_extract_ps(__m128 src, int index);

	// Extract single precision float from packed single precision
	// array element selected by index into dest

#define _uXm_MM_EXTRACT_FLOAT(dest, src, ndx) \
	*((int*)&(dest)) = _uXm_mm_extract_ps((src),(ndx))

	// Extract specified single precision float element
	// into the lower part of __m128

#define _uXm_MM_PICK_OUT_PS(src, num) \
	_mm_insert_ps(_mm_setzero_ps(),(src), \
		      _uXm_MM_MK_INSERTPS_NDX((num), 0, 0x0e))

	// Insert integer into packed integer array element
	// selected by index

	extern __m128i uXm_callconv _uXm_mm_insert_epi8(__m128i dst, int src, int index);
	extern __m128i uXm_callconv _uXm_mm_insert_epi32(__m128i dst, int src, int index);

#if defined(uXm_X64)
	extern __m128i uXm_callconv _uXm_mm_insert_epi64(__m128i dst, __int64 src, int index);
#endif  /* defined(uXm_X64) */

	// Extract integer from packed integer array element
	// selected by index

	extern int uXm_callconv _uXm_mm_extract_epi8(__m128i src, int index);
	extern int uXm_callconv _uXm_mm_extract_epi32(__m128i src, int index);

#if defined(uXm_X64)
	extern __int64 uXm_callconv _uXm_mm_extract_epi64(__m128i src, int index);
#endif  /* defined(uXm_X64) */

	// Horizontal packed word minimum and its index in
	// result[15:0] and result[18:16] respectively

	extern __m128i uXm_callconv _uXm_mm_minpos_epu16(__m128i Inxmm_A);

	// Packed/single float double precision rounding

	extern __m128d uXm_callconv _uXm_mm_round_pd(__m128d val, int iRoundMode);
	extern __m128d uXm_callconv _uXm_mm_round_sd(__m128d dst, __m128d val, int iRoundMode);

	// Packed/single float single precision rounding

	extern __m128 uXm_callconv _uXm_mm_round_ps(__m128  val, int iRoundMode);
	extern __m128 uXm_callconv _uXm_mm_round_ss(__m128 dst, __m128  val, int iRoundMode);

	/*
	* functions for ceil/floor intrinsics
	*/

	extern __m128d uXm_callconv _uXm_mm_floor_pd(__m128d Inxmm_A);
	extern __m128d uXm_callconv _uXm_mm_ceil_pd(__m128d Inxmm_A);
	extern __m128d uXm_callconv _uXm_mm_floor_sd(__m128d Inxmm_A);
	extern __m128d uXm_callconv _uXm_mm_ceil_sd(__m128d Inxmm_A);

	extern __m128 uXm_callconv _uXm_mm_floor_ps(__m128 Inxmm_A);
	extern __m128 uXm_callconv _uXm_mm_ceil_ps(__m128 Inxmm_A);
	extern __m128 uXm_callconv _uXm_mm_floor_ss(__m128 Inxmm_A);
	extern __m128 uXm_callconv _uXm_mm_ceil_ss(__m128 Inxmm_A);

	// Packed integer sign-extension

	extern __m128i uXm_callconv _uXm_mm_cvtepi8_epi32(__m128i Inxmm_A);
	extern __m128i uXm_callconv _uXm_mm_cvtepi16_epi32(__m128i Inxmm_A);
	extern __m128i uXm_callconv _uXm_mm_cvtepi8_epi64(__m128i Inxmm_A);
	extern __m128i uXm_callconv _uXm_mm_cvtepi32_epi64(__m128i Inxmm_A);
	extern __m128i uXm_callconv _uXm_mm_cvtepi16_epi64(__m128i Inxmm_A);
	extern __m128i uXm_callconv _uXm_mm_cvtepi8_epi16(__m128i Inxmm_A);

	// Packed integer zero-extension

	extern __m128i uXm_callconv _uXm_mm_cvtepu8_epi32(__m128i Inxmm_A);
	extern __m128i uXm_callconv _uXm_mm_cvtepu16_epi32(__m128i Inxmm_A);
	extern __m128i uXm_callconv _uXm_mm_cvtepu8_epi64(__m128i Inxmm_A);
	extern __m128i uXm_callconv _uXm_mm_cvtepu32_epi64(__m128i Inxmm_A);
	extern __m128i uXm_callconv _uXm_mm_cvtepu16_epi64(__m128i Inxmm_A);
	extern __m128i uXm_callconv _uXm_mm_cvtepu8_epi16(__m128i Inxmm_A);


	// Pack 8 double words from 2 operands into 8 words of result
	// with unsigned saturation

	extern __m128i uXm_callconv _uXm_mm_packus_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

	// Sum absolute 8-bit integer difference of adjacent groups of 4 byte
	// integers in operands. Starting offsets within operands are
	// determined by mask

	extern __m128i uXm_callconv _uXm_mm_mpsadbw_epu8(__m128i s1, __m128i s2, int mask);

	/*
	 * Load double quadword using non-temporal aligned hint
	 */

	extern __m128i uXm_callconv _uXm_mm_stream_load_si128(const __m128i* Inpxmm_A);
	
uXm_PACK_POP

uXm_EXTERNC_END

#ifndef uXm_SMM_BLEND_H
#include "uXmsmmblend.h"
#endif

#endif // uXm_SSE41

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_SMM_INTRIN_H
