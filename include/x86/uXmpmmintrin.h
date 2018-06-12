
#pragma once

#ifndef uXm_PMM_INTRIN_H
#define uXm_PMM_INTRIN_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE3

#ifndef uXm_EMM_INTRIN_H
#include "uXmemmintrin.h"
#endif  /* uXm_MM_INTRIN_H */

#ifndef _INCLUDED_PMM
#include <pmmintrin.h>
#endif  /* _INCLUDED_PMM */

/*
 * MACRO functions for setting and reading the DAZ bit in the MXCSR
 */
#define _uXm_MM_DENORMALS_ZERO_MASK   0x0040
#define _uXm_MM_DENORMALS_ZERO_ON     0x0040
#define _uXm_MM_DENORMALS_ZERO_OFF    0x0000

#define _uXm_MM_SET_DENORMALS_ZERO_MODE(mode)                                   \
            _uXm_mm_setcsr((_uXm_mm_getcsr() & ~_MM_DENORMALS_ZERO_MASK) | (mode))
#define _uXm_MM_GET_DENORMALS_ZERO_MODE()                                       \
            (_uXm_mm_getcsr() & _MM_DENORMALS_ZERO_MASK)

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * New Single precision vector instructions.
 */

	extern __m128 uXm_callconv _uXm_mm_addsub_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uXm_callconv _uXm_mm_hadd_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uXm_callconv _uXm_mm_hsub_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uXm_callconv _uXm_mm_movehdup_ps(__m128 Inxmm_A);
	extern __m128 uXm_callconv _uXm_mm_moveldup_ps(__m128 Inxmm_A);

/*
 * New double precision vector instructions.
 */

	extern __m128d uXm_callconv _uXm_mm_addsub_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uXm_callconv _uXm_mm_hadd_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uXm_callconv _uXm_mm_hsub_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uXm_callconv _uXm_mm_loaddup_pd(const double* InPdouble_B);
	extern __m128d uXm_callconv _uXm_mm_movedup_pd(__m128d Inxmm_A);

/*
 * New unaligned integer vector load instruction.
 */
	extern __m128i uXm_callconv _uXm_mm_lddqu_si128(const __m128i* InPxmm_A);

/*
 * Miscellaneous new instructions.
 */
/*
 * For _uXm_mm_monitor p goes in eax, extensions goes in ecx, hints goes in edx.
 */
	extern void uXm_callconv _uXm_mm_monitor(const void* InPvoid_A, unsigned Ext_B, unsigned Hints_C);

/*
 * For _uXm_mm_mwait, extensions goes in ecx, hints goes in eax.
 */
	extern void uXm_callconv _uXm_mm_mwait(unsigned Ext_A, unsigned Hints_C);

uXm_PACK_POP

uXm_EXTERNC_END

#endif // uXm_SSE3

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_PMM_INTRIN_H
