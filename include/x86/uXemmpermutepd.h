
#pragma once

#ifndef uX_EMM_PERMUTE_PD_H
#define uX_EMM_PERMUTE_PD_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE2

#ifndef uX_EMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXemmintrin.h to use this header"
#endif

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

/*
 * DP, misc
 */

    extern __m128d uX_callconv _uX_mm_permute_00_pd(__m128d Inxmm_A);
    extern __m128d uX_callconv _uX_mm_permute_01_pd(__m128d Inxmm_A);
    extern __m128d uX_callconv _uX_mm_permute_10_pd(__m128d Inxmm_A);
    extern __m128d uX_callconv _uX_mm_permute_11_pd(__m128d Inxmm_A);

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSE2

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_EMM_PERMUTE_PD_H