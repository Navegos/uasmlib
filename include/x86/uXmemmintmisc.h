
#pragma once

#ifndef uXm_EMM_INTMISC_H
#define uXm_EMM_INTMISC_H

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
 * Integer, misc
 */

extern int uXm_callconv _uXm_mm_extract_epi16_0(__m128i InXmm_A);
extern int uXm_callconv _uXm_mm_extract_epi16_1(__m128i InXmm_A);
extern int uXm_callconv _uXm_mm_extract_epi16_2(__m128i InXmm_A);
extern int uXm_callconv _uXm_mm_extract_epi16_3(__m128i InXmm_A);
extern int uXm_callconv _uXm_mm_extract_epi16_4(__m128i InXmm_A);
extern int uXm_callconv _uXm_mm_extract_epi16_5(__m128i InXmm_A);
extern int uXm_callconv _uXm_mm_extract_epi16_6(__m128i InXmm_A);
extern int uXm_callconv _uXm_mm_extract_epi16_7(__m128i InXmm_A);

extern __m128i uXm_callconv _uXm_mm_insert_epi16_0(__m128i InXmm_A, int Inint_B);
extern __m128i uXm_callconv _uXm_mm_insert_epi16_1(__m128i InXmm_A, int Inint_B);
extern __m128i uXm_callconv _uXm_mm_insert_epi16_2(__m128i InXmm_A, int Inint_B);
extern __m128i uXm_callconv _uXm_mm_insert_epi16_3(__m128i InXmm_A, int Inint_B);
extern __m128i uXm_callconv _uXm_mm_insert_epi16_4(__m128i InXmm_A, int Inint_B);
extern __m128i uXm_callconv _uXm_mm_insert_epi16_5(__m128i InXmm_A, int Inint_B);
extern __m128i uXm_callconv _uXm_mm_insert_epi16_6(__m128i InXmm_A, int Inint_B);
extern __m128i uXm_callconv _uXm_mm_insert_epi16_7(__m128i InXmm_A, int Inint_B);

uXm_PACK_POP

uXm_EXTERNC_END

#endif // uXm_SSE2

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_EMM_INTMISC_H
