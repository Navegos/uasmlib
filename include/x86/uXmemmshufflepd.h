
#pragma once

#ifndef uXm_EMM_SHUFFLE_PD_H
#define uXm_EMM_SHUFFLE_PD_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE2

#ifndef uXm_EMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXmemmintrin.h to use this header"
#endif

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * DP, misc
 */

	extern __m128d uXm_callconv _uXm_mm_shuffle_00_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uXm_callconv _uXm_mm_shuffle_01_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uXm_callconv _uXm_mm_shuffle_10_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uXm_callconv _uXm_mm_shuffle_11_pd(__m128d Inxmm_A, __m128d Inxmm_B);

uXm_PACK_POP

uXm_EXTERNC_END
#endif // uXm_SSE2

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_EMM_SHUFFLE_PD_H
