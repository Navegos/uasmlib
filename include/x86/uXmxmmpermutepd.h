
#pragma once

#ifndef uXm_MM_PERMUTE_PD_H
#define uXm_MM_PERMUTE_PD_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef uXm_SSE_STRUCTS_H
#include "uxmSSEStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
* DP, misc
*/

extern __uXm128d uXm_mm_permute_00_ps(__uXm128d InXmm_A);
extern __uXm128d uXm_mm_permute_01_ps(__uXm128d InXmm_A);
extern __uXm128d uXm_mm_permute_10_ps(__uXm128d InXmm_A);
extern __uXm128d uXm_mm_permute_11_ps(__uXm128d InXmm_A);

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_MM_PERMUTE_PD_H
