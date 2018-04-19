
#pragma once

#ifndef uXm_EMM_INTSHIFTS_H
#define uXm_EMM_INTSHIFTS_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef uXm_SSE_STRUCTS_H
#include "uXmSSEStructs.h"
#endif  /* uXm_MMX_STRUCTS_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
* Integer, shifts
*/

extern __uXm128i uXm_mm_slli_si128_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_7(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_8(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_9(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_10(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_11(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_12(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_13(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_14(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_si128_15(__uXm128i InXmm_A);

extern __uXm128i uXm_mm_slli_epi16_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_7(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_8(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_9(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_10(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_11(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_12(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_13(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_14(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi16_15(__uXm128i InXmm_A);

extern __uXm128i uXm_mm_slli_epi32_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_7(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_8(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_9(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_10(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_11(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_12(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_13(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_14(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_15(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_16(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_17(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_18(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_19(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_20(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_21(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_22(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_23(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_24(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_25(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_26(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_27(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_28(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_29(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_30(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi32_31(__uXm128i InXmm_A);

extern __uXm128i uXm_mm_slli_epi64_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_7(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_8(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_9(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_10(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_11(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_12(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_13(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_14(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_15(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_16(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_17(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_18(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_19(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_20(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_21(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_22(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_23(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_24(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_25(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_26(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_27(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_28(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_29(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_30(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_31(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_32(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_33(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_34(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_35(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_36(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_37(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_38(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_39(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_40(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_41(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_42(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_43(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_44(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_45(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_46(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_47(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_48(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_49(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_50(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_51(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_52(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_53(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_54(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_55(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_56(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_57(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_58(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_59(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_50(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_61(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_62(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_slli_epi64_63(__uXm128i InXmm_A);

extern __uXm128i uXm_mm_srai_epi16_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_7(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_8(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_9(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_10(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_11(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_12(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_13(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_14(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi16_15(__uXm128i InXmm_A);

extern __uXm128i uXm_mm_srai_epi32_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_7(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_8(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_9(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_10(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_11(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_12(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_13(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_14(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_15(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_16(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_17(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_18(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_19(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_20(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_21(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_22(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_23(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_24(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_25(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_26(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_27(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_28(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_29(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_30(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srai_epi32_31(__uXm128i InXmm_A);

extern __uXm128i uXm_mm_srli_si128_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_7(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_8(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_9(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_10(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_11(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_12(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_13(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_14(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_si128_15(__uXm128i InXmm_A);

extern __uXm128i uXm_mm_srli_epi16_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_7(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_8(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_9(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_10(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_11(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_12(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_13(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_14(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi16_15(__uXm128i InXmm_A);

extern __uXm128i uXm_mm_srli_epi32_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_7(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_8(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_9(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_10(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_11(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_12(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_13(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_14(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_15(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_16(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_17(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_18(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_19(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_20(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_21(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_22(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_23(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_24(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_25(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_26(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_27(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_28(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_29(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_30(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi32_31(__uXm128i InXmm_A);

extern __uXm128i uXm_mm_srli_epi64_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_7(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_8(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_9(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_10(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_11(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_12(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_13(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_14(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_15(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_16(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_17(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_18(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_19(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_20(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_21(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_22(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_23(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_24(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_25(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_26(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_27(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_28(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_29(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_30(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_31(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_32(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_33(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_34(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_35(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_36(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_37(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_38(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_39(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_40(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_41(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_42(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_43(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_44(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_45(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_46(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_47(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_48(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_49(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_50(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_51(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_52(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_53(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_54(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_55(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_56(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_57(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_58(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_59(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_50(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_61(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_62(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_srli_epi64_63(__uXm128i InXmm_A);

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_EMM_INTSHIFTS_H
