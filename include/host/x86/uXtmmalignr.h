/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /																				/ /
; / /			Copyright 2021 (c) Navegos QA - optimized library					/ /
; / /																				/ /
; / /	Licensed under the Apache License, Version 2.0 (the "License");				/ /
; / /	you may not use this file except in compliance with the License.			/ /
; / /	You may obtain a copy of the License at										/ /
; / /																				/ /
; / /		http://www.apache.org/licenses/LICENSE-2.0								/ /
; / /																				/ /
; / /	Unless required by applicable law or agreed to in writing, software			/ /
; / /	distributed under the License is distributed on an "AS IS" BASIS,			/ /
; / /	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.	/ /
; / /	See the License for the specific language governing permissions and			/ /
; / /	limitations under the License.												/ /
; / /																				/ /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_TMM_ALIGNR_H
#define uX_TMM_ALIGNR_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSSE3

#ifndef uX_TMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXtmmintrin.h to use this header"
#endif

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

extern __m128i uX_abi _uX_mm_alignr_epi8_0(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_1(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_2(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_3(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_4(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_5(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_6(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_7(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_8(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_9(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_10(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_11(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_12(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_13(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_14(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_15(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_16(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_17(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_18(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_19(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_20(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_21(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_22(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_23(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_24(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_25(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_26(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_27(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_28(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_29(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_30(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_31(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_alignr_epi8_32(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);

#if defined(uX_X86)
uX_PACK_MM
extern __m64 uX_abi _uX_mm_alignr_pi8_0(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_1(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_2(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_3(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_4(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_5(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_6(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_7(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_8(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_9(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_10(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_11(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_12(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_13(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_14(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_15(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
extern __m64 uX_abi _uX_mm_alignr_pi8_16(__m64 /*Inmm_A*/, __m64 /*Inmm_B*/);
uX_PACK_XMM
#endif

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSSE3

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_TMM_ALIGNR_H
