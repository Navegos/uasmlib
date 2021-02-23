
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - optimized library                 / /
; / /                                                                               / /
; / /    Licensed under the Apache License, Version 2.0 (the "License");            / /
; / /    you may not use this file except in compliance with the License.           / /
; / /    You may obtain a copy of the License at                                    / /
; / /                                                                               / /
; / /        http://www.apache.org/licenses/LICENSE-2.0                             / /
; / /                                                                               / /
; / /    Unless required by applicable law or agreed to in writing, software        / /
; / /    distributed under the License is distributed on an "AS IS" BASIS,          / /
; / /    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   / /
; / /    See the License for the specific language governing permissions and        / /
; / /    limitations under the License.                                             / /
; / /                                                                               / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_EMM_INTMISC_H
#define uX_EMM_INTMISC_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE2

#ifndef uX_EMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXemmintrin.h to use this header"
#endif

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

/*
 * Integer, misc
 */

    extern int16_t uX_ABI _uX_mm_extract_epi16_0(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_extract_epi16_1(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_extract_epi16_2(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_extract_epi16_3(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_extract_epi16_4(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_extract_epi16_5(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_extract_epi16_6(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_extract_epi16_7(__m128i Inxmm_A);

    extern __m128i uX_ABI _uX_mm_insert_epi16_0(__m128i Inxmm_A, int16_t Inint_B);
    extern __m128i uX_ABI _uX_mm_insert_epi16_1(__m128i Inxmm_A, int16_t Inint_B);
    extern __m128i uX_ABI _uX_mm_insert_epi16_2(__m128i Inxmm_A, int16_t Inint_B);
    extern __m128i uX_ABI _uX_mm_insert_epi16_3(__m128i Inxmm_A, int16_t Inint_B);
    extern __m128i uX_ABI _uX_mm_insert_epi16_4(__m128i Inxmm_A, int16_t Inint_B);
    extern __m128i uX_ABI _uX_mm_insert_epi16_5(__m128i Inxmm_A, int16_t Inint_B);
    extern __m128i uX_ABI _uX_mm_insert_epi16_6(__m128i Inxmm_A, int16_t Inint_B);
    extern __m128i uX_ABI _uX_mm_insert_epi16_7(__m128i Inxmm_A, int16_t Inint_B);

    extern __m128i uX_ABI _uX_mm_cvtsi128_epi64_0(__m128i Inxmm_A);
    extern __m128i uX_ABI _uX_mm_cvtsi128_epi64_1(__m128i Inxmm_A);

    extern int64_t uX_ABI _uX_mm_cvtsi128_epi64x_0(__m128i Inxmm_A);
    extern int64_t uX_ABI _uX_mm_cvtsi128_epi64x_1(__m128i Inxmm_A);

    extern int32_t uX_ABI _uX_mm_cvtsi128_epi32_0(__m128i Inxmm_A);
    extern int32_t uX_ABI _uX_mm_cvtsi128_epi32_1(__m128i Inxmm_A);
    extern int32_t uX_ABI _uX_mm_cvtsi128_epi32_2(__m128i Inxmm_A);
    extern int32_t uX_ABI _uX_mm_cvtsi128_epi32_3(__m128i Inxmm_A);

    extern int16_t uX_ABI _uX_mm_cvtsi128_epi16_0(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_cvtsi128_epi16_1(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_cvtsi128_epi16_2(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_cvtsi128_epi16_3(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_cvtsi128_epi16_4(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_cvtsi128_epi16_5(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_cvtsi128_epi16_6(__m128i Inxmm_A);
    extern int16_t uX_ABI _uX_mm_cvtsi128_epi16_7(__m128i Inxmm_A);

    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_0(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_1(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_2(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_3(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_4(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_5(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_6(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_7(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_8(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_9(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_10(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_11(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_12(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_13(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_14(__m128i Inxmm_A);
    extern int8_t uX_ABI _uX_mm_cvtsi128_epi8_15(__m128i Inxmm_A);

    extern __m128i uX_ABI _uX_mm_cvtepi64_si128_0(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_ABI _uX_mm_cvtepi64_si128_1(__m128i Inxmm_A, __m128i Inxmm_B);

    extern __m128i uX_ABI _uX_mm_cvtepi64x_si128_0(__m128i Inxmm_A, int64_t Inint_Q);
    extern __m128i uX_ABI _uX_mm_cvtepi64x_si128_1(__m128i Inxmm_A, int64_t Inint_Q);

    extern __m128i uX_ABI _uX_mm_cvtepi32_si128_0(__m128i Inxmm_A, int32_t Inint_D);
    extern __m128i uX_ABI _uX_mm_cvtepi32_si128_1(__m128i Inxmm_A, int32_t Inint_D);
    extern __m128i uX_ABI _uX_mm_cvtepi32_si128_2(__m128i Inxmm_A, int32_t Inint_D);
    extern __m128i uX_ABI _uX_mm_cvtepi32_si128_3(__m128i Inxmm_A, int32_t Inint_D);

    extern __m128i uX_ABI _uX_mm_cvtepi16_si128_0(__m128i Inxmm_A, int16_t Inint_W);
    extern __m128i uX_ABI _uX_mm_cvtepi16_si128_1(__m128i Inxmm_A, int16_t Inint_W);
    extern __m128i uX_ABI _uX_mm_cvtepi16_si128_2(__m128i Inxmm_A, int16_t Inint_W);
    extern __m128i uX_ABI _uX_mm_cvtepi16_si128_3(__m128i Inxmm_A, int16_t Inint_W);
    extern __m128i uX_ABI _uX_mm_cvtepi16_si128_4(__m128i Inxmm_A, int16_t Inint_W);
    extern __m128i uX_ABI _uX_mm_cvtepi16_si128_5(__m128i Inxmm_A, int16_t Inint_W);
    extern __m128i uX_ABI _uX_mm_cvtepi16_si128_6(__m128i Inxmm_A, int16_t Inint_W);
    extern __m128i uX_ABI _uX_mm_cvtepi16_si128_7(__m128i Inxmm_A, int16_t Inint_W);

    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_0(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_1(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_2(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_3(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_4(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_5(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_6(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_7(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_8(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_9(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_10(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_11(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_12(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_13(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_14(__m128i Inxmm_A, int8_t Inint_B);
    extern __m128i uX_ABI _uX_mm_cvtepi8_si128_15(__m128i Inxmm_A, int8_t Inint_B);

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSE2

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_EMM_INTMISC_H
