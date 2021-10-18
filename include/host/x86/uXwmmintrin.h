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

#ifndef uX_WMM_INTRIN_H
#define uX_WMM_INTRIN_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE42

#ifndef uX_NMM_INTRIN_H
#include "uXnmmintrin.h"
#endif  /* uX_NMM_INTRIN_H */

#ifndef _INCLUDED_WMM
#include <wmmintrin.h>
#endif  /* _INCLUDED_WMM */

#define _uX_MM_AESKEYGENASSIST_SI128_IM(VA,IM) _uX_mm_aeskeygenassist_si128_##IM##(VA)

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

/*
 * Performs 1 round of AES decryption of the first m128i using
 * the second m128i as a round key.
 */
	extern __m128i uX_abi _uX_mm_aesdec_si128(__m128i /*Inxmm_A*/, __m128i /*rkey*/);

	/*
	 * Performs the last round of AES decryption of the first m128i
	 * using the second m128i as a round key.
	 */
extern __m128i uX_abi _uX_mm_aesdeclast_si128(__m128i /*Inxmm_A*/, __m128i /*rkey*/);

/*
 * Performs 1 round of AES encryption of the first m128i using
 * the second m128i as a round key.
 */
extern __m128i uX_abi _uX_mm_aesenc_si128(__m128i /*Inxmm_A*/, __m128i /*rkey*/);

/*
 * Performs the last round of AES encryption of the first m128i
 * using the second m128i as a round key.
 */
extern __m128i uX_abi _uX_mm_aesenclast_si128(__m128i /*Inxmm_A*/, __m128i /*rkey*/);

/*
 * Performs the InverseMixColumn operation on the source m128i
 * and stores the result into m128i destination.
 */
extern __m128i uX_abi _uX_mm_aesimc_si128(__m128i /*Inxmm_A*/);

/*
 * Generates a m128i round key for the input m128i
 * AES cipher key and byte round constant.
 * The second parameter must be a compile time constant.
 */
extern __m128i uX_abi _uX_mm_aeskeygenassist_si128(__m128i /*ckey*/, count_t const /*rcon*/);

/*
 * Performs carry-less integer multiplication of 64-bit halves
 * of 128-bit input operands.
 * The third parameter indicates which 64-bit haves of the input parameters
 * v1 and v2 should be used. It must be a compile time constant.
 */
extern __m128i uX_abi _uX_mm_clmulepi64_si128(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/, count_t const /*Inint_Imm*/);

extern __m128i uX_abi _uX_mm_clmulepi64_si128_0(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_clmulepi64_si128_1(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_clmulepi64_si128_10(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_clmulepi64_si128_11(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);

extern __m128i uX_abi _uX_mm_clmullqlqepi64_si128(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_clmulhqlqepi64_si128(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_clmullqhqepi64_si128(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_abi _uX_mm_clmulhqhqepi64_si128(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);

uX_PACK_POP
uX_EXTERNC_END

#ifndef uX_XMM_AESKEYASSIST_SI128_H
#include "uXwmmaeskeyassist.h"
#endif

#endif // uX_SSE42

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_WMM_INTRIN_H
