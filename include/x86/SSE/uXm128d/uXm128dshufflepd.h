
#pragma once

#ifndef uXm128d_SHUFFLE_PD_H
#define uXm128d_SHUFFLE_PD_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE2

#ifndef uXm_SSE_STRUCTS_H
#include "../uXmSSEStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
* DP, misc
*/

extern __uXm128d _uXm_m128d_shuffle_00_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_shuffle_01_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_shuffle_10_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d _uXm_m128d_shuffle_11_pd(__uXm128d InXmm_A, __uXm128d InXmm_B);

uXm_PACK_POP

uXm_EXTERNC_END
#endif // uXm_SSE2

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm128d_SHUFFLE_PD_H
