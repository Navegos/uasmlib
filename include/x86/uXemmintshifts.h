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

#ifndef uX_EMM_INTSHIFTS_H
#define uX_EMM_INTSHIFTS_H 1

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
 * Integer, shifts
 */

	extern __m128i uX_ABI _uX_mm_slli_si128_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_si128_15(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_slli_epi8_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi8_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi8_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi8_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi8_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi8_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi8_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi8_7(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_slli_epi16_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi16_15(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_slli_epi32_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_15(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_16(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_17(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_18(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_19(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_20(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_21(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_22(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_23(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_24(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_25(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_26(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_27(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_28(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_29(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_30(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi32_31(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_slli_epi64_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_15(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_16(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_17(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_18(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_19(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_20(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_21(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_22(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_23(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_24(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_25(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_26(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_27(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_28(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_29(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_30(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_31(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_32(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_33(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_34(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_35(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_36(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_37(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_38(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_39(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_40(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_41(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_42(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_43(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_44(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_45(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_46(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_47(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_48(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_49(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_50(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_51(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_52(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_53(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_54(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_55(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_56(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_57(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_58(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_59(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_50(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_61(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_62(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_slli_epi64_63(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_srai_epi8_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi8_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi8_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi8_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi8_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi8_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi8_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi8_7(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_srai_epi16_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi16_15(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_srai_epi32_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_15(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_16(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_17(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_18(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_19(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_20(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_21(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_22(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_23(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_24(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_25(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_26(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_27(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_28(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_29(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_30(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi32_31(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_srai_epi64_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_15(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_16(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_17(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_18(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_19(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_20(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_21(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_22(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_23(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_24(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_25(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_26(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_27(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_28(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_29(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_30(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_31(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_32(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_33(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_34(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_35(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_36(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_37(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_38(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_39(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_40(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_41(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_42(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_43(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_44(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_45(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_46(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_47(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_48(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_49(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_50(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_51(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_52(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_53(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_54(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_55(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_56(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_57(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_58(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_59(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_50(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_61(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_62(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srai_epi64_63(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_srli_si128_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_si128_15(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_srli_epi8_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi8_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi8_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi8_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi8_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi8_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi8_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi8_7(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_srli_epi16_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi16_15(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_srli_epi32_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_15(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_16(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_17(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_18(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_19(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_20(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_21(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_22(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_23(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_24(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_25(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_26(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_27(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_28(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_29(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_30(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi32_31(__m128i /*Inxmm_A*/);

extern __m128i uX_ABI _uX_mm_srli_epi64_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_15(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_16(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_17(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_18(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_19(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_20(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_21(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_22(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_23(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_24(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_25(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_26(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_27(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_28(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_29(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_30(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_31(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_32(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_33(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_34(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_35(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_36(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_37(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_38(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_39(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_40(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_41(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_42(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_43(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_44(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_45(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_46(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_47(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_48(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_49(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_50(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_51(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_52(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_53(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_54(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_55(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_56(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_57(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_58(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_59(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_50(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_61(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_62(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_srli_epi64_63(__m128i /*Inxmm_A*/);

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSE2

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_EMM_INTSHIFTS_H
