
#pragma once

#ifndef uXm128_EMM_INTRIN_H
#define uXm128_EMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE2

#ifndef uXm_XMM_INTRIN_H
#include "../uXmxmmintrin.h"
#endif  /* uXm_XMM_INTRIN_H */

#ifndef uXm_SSE_STRUCTS_H
#include "../uxmSSEStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * FP, conversions
 */

extern __uXm128 _uXm_m128_cvtepi32_ps(__uXm128i InXmm_A);
extern __uXm128 _uXm_m128_cvtpd_ps(__uXm128d InXmm_A);
extern __uXm128 _uXm_m128_cvtsd_ss(__uXm128 InXmm_A, __uXm128d InXmm_B);

/*
 * Support for casting between various SP, DP, INT vector types.
 * Note that these do no conversion of values, they just change
 * the type.
 */

extern __uXm128  _uXm_m128_castpd_ps(__uXm128d);
extern __uXm128  _uXm_m128_castsi128_ps(__uXm128i);

uXm_PACK_POP

uXm_EXTERNC_END

#endif // uXm_SSE2

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm128_EMM_INTRIN_H
