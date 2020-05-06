
#pragma once

#ifndef uX_TMM_INTRIN_H
#define uX_TMM_INTRIN_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSSE3

#ifndef uX_PMM_INTRIN_H
#include "uXpmmintrin.h"
#endif  /* uX_MM_INTRIN_H */

#ifndef _INCLUDED_TMM
#include <tmmintrin.h>
#endif  /* _INCLUDED_TMM */

/*
 * Integer, Macros
 */

/*******************************************************/
/* MACRO for use _uX_mm_alignr_epi8_*().                */
/* result                                              */
/* const __m128i temp = _uX_MM_ALIGNR_EPI8_IM(Inxmm_A, 3); */
/*******************************************************/
#define _uX_MM_ALIGNR_EPI8_IM(VA,VB,IMM) _uX_mm_alignr_epi8_##IMM##(VA,VB)
#if defined(uX_X86)
/*******************************************************/
/* MACRO for use _uX_mm_alignr_pi8_*().                */
/* result                                              */
/* const __m64 temp = _uX_MM_ALIGNR_PI8_IM(Inmm_A, 3); */
/*******************************************************/
#define _uX_MM_ALIGNR_PI8_IM(VA,VB,IMM) _uX_mm_alignr_pi8_##IMM##(VA,VB)
#endif

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

    // Horizontal Add: add pairs of adjacent words or double words.
    // Each field in the result is the sum of two adjacent fields
    // from the arguments, with the lower result fields coming from
    // the first argument and the upper result fields coming from
    // the second argument. The "hadds" forms saturate the signed
    // addition rather than wrapping.

    extern __m128i uX_callconv _uX_mm_hadd_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_hadd_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_hadds_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uX_X86)
    uX_PACK_MM
    extern __m64 uX_callconv _uX_mm_hadd_pi16(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_hadd_pi32(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_hadds_pi16(__m64 Inmm_A, __m64 Inmm_B);
    uX_PACK_XMM
#endif

    // Horizontal Subtract: subtract pairs of adjacent words or double
    // words. Each field in the result is the difference of two adjacent
    // fields from the arguments, where the upper field is subtracted
    // from the lower field. The lower result fields come from
    // the first argument and the upper result fields come from
    // the second argument. The "hsubs" forms saturate the signed
    // subtraction rather than wrapping.

    extern __m128i uX_callconv _uX_mm_hsub_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_hsub_epi32(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_hsubs_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uX_X86)
    uX_PACK_MM
    extern __m64 uX_callconv _uX_mm_hsub_pi16(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_hsub_pi32(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_hsubs_pi16(__m64 Inmm_A, __m64 Inmm_B);
    uX_PACK_XMM
#endif

    // Multiply unsigned bytes by signed bytes and sum the word
    // results in pairs with saturation. Each byte of the first
    // argument is zero-extended to a word field and each byte
    // of the second argument is sign-extended to a word field,
    // then each pair of words is multiplied together to give
    // signed word intermediate results. Pairs of words from
    // that result are added horizontally with saturation
    // to give the final result.

    extern __m128i uX_callconv _uX_mm_maddubs_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uX_X86)
    uX_PACK_MM
        extern __m64 uX_callconv _uX_mm_maddubs_pi16(__m64 Inmm_A, __m64 Inmm_B);
    uX_PACK_XMM
#endif

    // Packed multiply high integers with round and scaling,
    // {X,}MM2/m{128,64}(b) to {X,}MM1(a).

    extern __m128i uX_callconv _uX_mm_mulhrs_epi16(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uX_X86)
    uX_PACK_MM
        extern __m64 uX_callconv _uX_mm_mulhrs_pi16(__m64 Inmm_A, __m64 Inmm_B);
    uX_PACK_XMM
#endif

    // Packed shuffle bytes
    // {X,}MM2/m{128,64}(b) by {X,}MM1(a).

    extern __m128i uX_callconv _uX_mm_shuffle_epi8(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uX_X86)
    uX_PACK_MM
        extern __m64 uX_callconv _uX_mm_shuffle_pi8(__m64 Inmm_A, __m64 Inmm_B);
    uX_PACK_XMM
#endif

    // Packed byte, word, double word sign, {X,}MM2/m{128,64}(b) to
    // {X,}MM1(a).

    extern __m128i uX_callconv _uX_mm_sign_epi8(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_sign_epi16(__m128i Inxmm_A, __m128i Inxmm_B);
    extern __m128i uX_callconv _uX_mm_sign_epi32(__m128i Inxmm_A, __m128i Inxmm_B);

#if defined(uX_X86)
    uX_PACK_MM
    extern __m64 uX_callconv _uX_mm_sign_pi8(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_sign_pi16(__m64 Inmm_A, __m64 Inmm_B);
    extern __m64 uX_callconv _uX_mm_sign_pi32(__m64 Inmm_A, __m64 Inmm_B);
    uX_PACK_XMM
#endif

    // Packed align and shift right by n*8 bits,
    // {X,}MM2/m{128,64}(b) to {X,}MM1(a).

    extern __m128i uX_callconv _uX_mm_alignr_epi8(__m128i Inxmm_A, __m128i Inxmm_B, const unsigned int Inint_Count);

#if defined(uX_X86)
    uX_PACK_MM
        extern __m64 uX_callconv _uX_mm_alignr_pi8(__m64 Inmm_A, __m64 Inmm_B, const unsigned int Inint_Count);
    uX_PACK_XMM
#endif

    // Packed byte, word, double word absolute value,
    // {X,}MM2/m{128,64}(b) to {X,}MM1(a).

    extern __m128i uX_callconv _uX_mm_abs_epi8(__m128i Inxmm_A);
    extern __m128i uX_callconv _uX_mm_abs_epi16(__m128i Inxmm_A);
    extern __m128i uX_callconv _uX_mm_abs_epi32(__m128i Inxmm_A);

#if defined(uX_X86)
    uX_PACK_MM
    extern __m64 uX_callconv _uX_mm_abs_pi8(__m64 Inmm_A);
    extern __m64 uX_callconv _uX_mm_abs_pi16(__m64 Inmm_A);
    extern __m64 uX_callconv _uX_mm_abs_pi32(__m64 Inmm_A);
    uX_PACK_XMM
#endif

uX_PACK_POP
uX_EXTERNC_END

#ifndef uX_TMM_ALIGNR_H
#include "uXtmmalignr.h"
#endif

#endif // uX_SSSE3

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_TMM_INTRIN_H