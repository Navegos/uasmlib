
#pragma once

#ifndef uXm_TMM_ALIGNR_H
#define uXm_TMM_ALIGNR_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSSE3

#ifndef uXm_TMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXmxmmintrin.h to use this header"
#endif

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_0(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_1(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_2(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_3(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_4(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_5(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_6(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_7(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_8(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_9(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_10(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_11(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_12(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_13(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_14(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_15(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_16(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_17(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_18(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_19(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_20(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_21(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_22(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_23(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_24(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_25(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_26(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_27(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_28(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_29(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_30(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_31(__m128i Inxmm_A, __m128i Inxmm_B);
	extern __m128i uXm_callconv _uXm_mm_alignr_epi8_32(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uXm_X86)
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_0(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_1(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_2(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_3(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_4(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_5(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_6(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_7(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_8(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_9(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_10(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_11(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_12(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_13(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_14(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_15(__m64 Inmm_A, __m64 Inmm_B);
	extern __m64 uXm_callconv _uXm_mm_alignr_pi8_16(__m64 Inmm_A, __m64 Inmm_B);
#endif

uXm_PACK_POP

uXm_EXTERNC_END

#endif // uXm_SSSE3

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_TMM_ALIGNR_H
