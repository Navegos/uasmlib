
#pragma once

#ifndef uX_EMM_INTMISC_H
#define uX_EMM_INTMISC_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE2

#ifndef uX_EMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXemmintrin.h to use this header"
#endif

uX_EXTERNC_BEGIN

uX_PACK_PUSH16

/*
 * Integer, misc
 */

extern int uX_callconv _uX_mm_extract_epi16_0(__m128i Inxmm_A);
extern int uX_callconv _uX_mm_extract_epi16_1(__m128i Inxmm_A);
extern int uX_callconv _uX_mm_extract_epi16_2(__m128i Inxmm_A);
extern int uX_callconv _uX_mm_extract_epi16_3(__m128i Inxmm_A);
extern int uX_callconv _uX_mm_extract_epi16_4(__m128i Inxmm_A);
extern int uX_callconv _uX_mm_extract_epi16_5(__m128i Inxmm_A);
extern int uX_callconv _uX_mm_extract_epi16_6(__m128i Inxmm_A);
extern int uX_callconv _uX_mm_extract_epi16_7(__m128i Inxmm_A);

extern __m128i uX_callconv _uX_mm_insert_epi16_0(__m128i Inxmm_A, int Inint_B);
extern __m128i uX_callconv _uX_mm_insert_epi16_1(__m128i Inxmm_A, int Inint_B);
extern __m128i uX_callconv _uX_mm_insert_epi16_2(__m128i Inxmm_A, int Inint_B);
extern __m128i uX_callconv _uX_mm_insert_epi16_3(__m128i Inxmm_A, int Inint_B);
extern __m128i uX_callconv _uX_mm_insert_epi16_4(__m128i Inxmm_A, int Inint_B);
extern __m128i uX_callconv _uX_mm_insert_epi16_5(__m128i Inxmm_A, int Inint_B);
extern __m128i uX_callconv _uX_mm_insert_epi16_6(__m128i Inxmm_A, int Inint_B);
extern __m128i uX_callconv _uX_mm_insert_epi16_7(__m128i Inxmm_A, int Inint_B);

uX_PACK_POP

uX_EXTERNC_END

#endif // uX_SSE2

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_EMM_INTMISC_H
