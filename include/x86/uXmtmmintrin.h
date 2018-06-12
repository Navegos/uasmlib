
#pragma once

#ifndef uXm_TMM_INTRIN_H
#define uXm_TMM_INTRIN_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSSE3

#ifndef uXm_PMM_INTRIN_H
#include "uXmpmmintrin.h"
#endif  /* uXm_MM_INTRIN_H */

#ifndef _INCLUDED_TMM
#include <tmmintrin.h>
#endif  /* _INCLUDED_TMM */

/*
 * Integer, Macros
 */

/*******************************************************/
/* MACRO for use _uXm_mm_alignr_epi8_*().				*/
/* result                                              */
/* const __m128i temp = _uXm_MM_ALIGNR_EPI8_IM(Inxmm_A, 3); */
/*******************************************************/
#define _uXm_MM_ALIGNR_EPI8_IM(VA,VB,IMM) _uXm_mm_alignr_epi8_##IMM##(VA,VB)
#if defined(uXm_X86)
#define _uXm_MM_ALIGNR_PI8_IM(VA,VB,IMM) _uXm_mm_alignr_pi8_##IMM##(VA,VB)
#endif

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

    // Horizontal Add: add pairs of adjacent words or double words.
    // Each field in the result is the sum of two adjacent fields
    // from the arguments, with the lower result fields coming from
    // the first argument and the upper result fields coming from
    // the second argument. The "hadds" forms saturate the signed
    // addition rather than wrapping.

    extern __m128i uXm_callconv _uXm_mm_hadd_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uXm_callconv _uXm_mm_hadd_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uXm_callconv _uXm_mm_hadds_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uXm_X86)
    extern __m64 uXm_callconv _uXm_mm_hadd_pi16(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uXm_callconv _uXm_mm_hadd_pi32(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uXm_callconv _uXm_mm_hadds_pi16(__m64 Inmm_A, __m64 Inmm_B);
#endif

    // Horizontal Subtract: subtract pairs of adjacent words or double
    // words. Each field in the result is the difference of two adjacent
    // fields from the arguments, where the upper field is subtracted
    // from the lower field. The lower result fields come from
    // the first argument and the upper result fields come from
    // the second argument. The "hsubs" forms saturate the signed
    // subtraction rather than wrapping.

    extern __m128i uXm_callconv _uXm_mm_hsub_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uXm_callconv _uXm_mm_hsub_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uXm_callconv _uXm_mm_hsubs_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uXm_X86)
    extern __m64 uXm_callconv _uXm_mm_hsub_pi16(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uXm_callconv _uXm_mm_hsub_pi32(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uXm_callconv _uXm_mm_hsubs_pi16(__m64 Inmm_A, __m64 Inmm_B);
#endif

    // Multiply unsigned bytes by signed bytes and sum the word
    // results in pairs with saturation. Each byte of the first
    // argument is zero-extended to a word field and each byte
    // of the second argument is sign-extended to a word field,
    // then each pair of words is multiplied together to give
    // signed word intermediate results. Pairs of words from
    // that result are added horizontally with saturation
    // to give the final result.

    extern __m128i uXm_callconv _uXm_mm_maddubs_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uXm_X86)
	extern __m64 uXm_callconv _uXm_mm_maddubs_pi16(__m64 Inmm_A, __m64 Inmm_B);
#endif

    // Packed multiply high integers with round and scaling,
    // {X,}MM2/m{128,64}(b) to {X,}MM1(a).

    extern __m128i uXm_callconv _uXm_mm_mulhrs_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uXm_X86)
    extern __m64 uXm_callconv _uXm_mm_mulhrs_pi16(__m64 Inmm_A, __m64 Inmm_B);
#endif

    // Packed shuffle bytes
    // {X,}MM2/m{128,64}(b) by {X,}MM1(a).

    extern __m128i uXm_callconv _uXm_mm_shuffle_epi8(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uXm_X86)
    extern __m64 uXm_callconv _uXm_mm_shuffle_pi8(__m64 Inmm_A, __m64 Inmm_B);
#endif

    // Packed byte, word, double word sign, {X,}MM2/m{128,64}(b) to
    // {X,}MM1(a).

    extern __m128i uXm_callconv _uXm_mm_sign_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uXm_callconv _uXm_mm_sign_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uXm_callconv _uXm_mm_sign_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uXm_X86)
    extern __m64 uXm_callconv _uXm_mm_sign_pi8(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uXm_callconv _uXm_mm_sign_pi16(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uXm_callconv _uXm_mm_sign_pi32(__m64 Inmm_A, __m64 Inmm_B);
#endif

    // Packed align and shift right by n*8 bits,
    // {X,}MM2/m{128,64}(b) to {X,}MM1(a).

    extern __m128i uXm_callconv _uXm_mm_alignr_epi8(__m128i Inxmm_A, __m128i Inxmm_B, unsigned int Inint_Count);
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
    extern __m64 uXm_callconv _uXm_mm_alignr_pi8(__m64 Inmm_A, __m64 Inmm_B, unsigned int Inint_Count);
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

    // Packed byte, word, double word absolute value,
    // {X,}MM2/m{128,64}(b) to {X,}MM1(a).

    extern __m128i uXm_callconv _uXm_mm_abs_epi8(__m128i Inxmm_A);
    extern __m128i uXm_callconv _uXm_mm_abs_epi16(__m128i Inxmm_A);
    extern __m128i uXm_callconv _uXm_mm_abs_epi32(__m128i Inxmm_A);

#if defined(uXm_X86)
    extern __m64 uXm_callconv _uXm_mm_abs_pi8(__m64 Inmm_A);
    extern __m64 uXm_callconv _uXm_mm_abs_pi16(__m64 Inmm_A);
    extern __m64 uXm_callconv _uXm_mm_abs_pi32(__m64 Inmm_A);
#endif

uXm_PACK_POP

uXm_EXTERNC_END

#endif // uXm_SSSE3

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_TMM_INTRIN_H
