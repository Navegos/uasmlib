
#pragma once

#ifndef uX_TMM_ALIGNR_H
#define uX_TMM_ALIGNR_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSSE3

#ifndef uX_TMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXtmmintrin.h to use this header"
#endif

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

    extern __m128i uX_callconv _uX_mm_alignr_epi8_0(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_1(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_2(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_3(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_4(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_5(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_6(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_7(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_9(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_10(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_11(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_12(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_13(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_14(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_15(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_17(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_18(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_19(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_20(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_21(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_22(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_23(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_24(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_25(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_26(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_27(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_28(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_29(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_30(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_31(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_alignr_epi8_32(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uX_X86)
    uX_PACK_MM
    extern __m64 uX_callconv _uX_mm_alignr_pi8_0(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_1(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_2(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_3(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_4(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_5(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_6(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_7(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_8(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_9(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_10(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_11(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_12(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_13(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_14(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_15(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_alignr_pi8_16(__m64 Inmm_A, __m64 Inmm_B);
    uX_PACK_XMM
#endif

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSSE3

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_TMM_ALIGNR_H