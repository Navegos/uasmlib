
#pragma once

#ifndef uXm_MM_SHUFFLE_PD_H
#define uXm_MM_SHUFFLE_PD_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef uXm_SSE_STRUCTS_H
#include "uxmssestructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

uXm_EXTERNCC_BEGIN

uXm_PACK_PUSH16

/*
* DP, misc
*/

extern __uXm128d uXm_mm_shuffle_00_ps(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_shuffle_01_ps(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_shuffle_10_ps(__uXm128d InXmm_A, __uXm128d InXmm_B);
extern __uXm128d uXm_mm_shuffle_11_ps(__uXm128d InXmm_A, __uXm128d InXmm_B);

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_MM_SHUFFLE_PD_H
