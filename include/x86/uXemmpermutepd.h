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

#ifndef uX_EMM_PERMUTE_PD_H
#define uX_EMM_PERMUTE_PD_H 1

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
 * DP, misc
 */

	extern __m128d uX_ABI _uX_mm_permute_00_pd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_permute_01_pd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_permute_10_pd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_permute_11_pd(__m128d /*Inxmm_A*/);

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSE2

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_EMM_PERMUTE_PD_H
