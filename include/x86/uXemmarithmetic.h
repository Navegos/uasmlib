
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2021 (c) Navegos QA - optimized library                 / /
; / /                                                                               / /
; / /    Licensed under the Apache License, Version 2.0 (the "License");            / /
; / /    you may not use this file except in compliance with the License.           / /
; / /    You may obtain a copy of the License at                                    / /
; / /                                                                               / /
; / /        http://www.apache.org/licenses/LICENSE-2.0                             / /
; / /                                                                               / /
; / /    Unless required by applicable law or agreed to in writing, software        / /
; / /    distributed under the License is distributed on an "AS IS" BASIS,          / /
; / /    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   / /
; / /    See the License for the specific language governing permissions and        / /
; / /    limitations under the License.                                             / /
; / /                                                                               / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_EMM_ARITHMETIC_H
#define uX_EMM_ARITHMETIC_H 1

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
 * Integer Division
 */
extern __m128i uX_ABI _uX_mm_div_epi8(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_ABI _uX_mm_div_epi16(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_ABI _uX_mm_div_epi32(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_ABI _uX_mm_div_epi64(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_ABI _uX_mm_div_epu8(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_ABI _uX_mm_div_epu16(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_ABI _uX_mm_div_epu32(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_ABI _uX_mm_div_epu64(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);

/*
 * FLT Arithmetic
 */
extern __m128 uX_ABI _uX_mm_signbit_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_signbit_ss(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_signcombine_ps(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/);
extern __m128 uX_ABI _uX_mm_signcombine_ss(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/);
extern __m128 uX_ABI _uX_mm_isfinite_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_isfinite_ss(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_isinf_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_isinf_ss(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_isnan_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_isnan_ss(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_issubnormal_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_issubnormal_ss(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_iszeroorsubnormal_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_iszeroorsubnormal_ss(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_infinite_ps(void);
extern __m128 uX_ABI _uX_mm_infinite_ss(void);
extern __m128 uX_ABI _uX_mm_nan_ps(void);
extern __m128 uX_ABI _uX_mm_nan_ss(void);
extern __m128 uX_ABI _uX_mm_abs_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_abs_ss(__m128 /*Inxmm_A*/);

extern float uX_ABI _uX_mm_horizontaladd_ps(__m128 /*Inxmm_A*/);
extern float uX_ABI _uX_mm_horizontalsub_ps(__m128 /*Inxmm_A*/);
extern float uX_ABI _uX_mm_horizontalmul_ps(__m128 /*Inxmm_A*/);
extern float uX_ABI _uX_mm_horizontaldiv_ps(__m128 /*Inxmm_A*/);

extern __m128 uX_ABI _uX_mm_powtemplate_ps(__m128 /*Inxmm_A*/, int /*Inint_N*/);
extern __m128 uX_ABI _uX_mm_pown_ps(__m128 /*Inxmm_A*/, int /*Inint_N*/);

extern __m128 uX_ABI _uX_mm_powtemplate_ss(__m128 /*Inxmm_A*/, int /*Inint_N*/);
extern __m128 uX_ABI _uX_mm_pown_ss(__m128 /*Inxmm_A*/, int /*Inint_N*/);

extern __m128 uX_ABI _uX_mm_svml_round_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_svml_floor_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_svml_ceil_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_svml_trunc_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_svml_round_ss(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_svml_floor_ss(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_svml_ceil_ss(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_svml_trunc_ss(__m128 /*Inxmm_A*/);

extern __m128 uX_ABI _uX_mm_madd_ps(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/, __m128 /*Inxmm_C*/);
extern __m128 uX_ABI _uX_mm_msub_ps(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/, __m128 /*Inxmm_C*/);
extern __m128 uX_ABI _uX_mm_madd_ss(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/, __m128 /*Inxmm_C*/);
extern __m128 uX_ABI _uX_mm_msub_ss(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/, __m128 /*Inxmm_C*/);

extern __m128 uX_ABI _uX_mm_nmadd_ps(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/, __m128 /*Inxmm_C*/);
extern __m128 uX_ABI _uX_mm_nmsub_ps(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/, __m128 /*Inxmm_C*/);
extern __m128 uX_ABI _uX_mm_nmadd_ss(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/, __m128 /*Inxmm_C*/);
extern __m128 uX_ABI _uX_mm_nmsub_ss(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/, __m128 /*Inxmm_C*/);

extern __m128 uX_ABI _uX_mm_polynomial2_ps(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/, __m128 /*Inxmm_C*/, __m128 /*Inxmm_D*/);
extern __m128 uX_ABI _uX_mm_polynomial2_ss(__m128 /*Inxmm_A*/, __m128 /*Inxmm_B*/, __m128 /*Inxmm_C*/, __m128 /*Inxmm_D*/);

extern __m128 uX_ABI _uX_mm_sincostemplate_ps(__m128* /*OutPxmm_A*/, __m128 /*Inxmm_B*/, int /*Intint_SC*/);

/*
 * DBL Arithmetic
 */
extern __m128d uX_ABI _uX_mm_signbit_pd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_signbit_sd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_signcombine_pd(__m128d /*Inxmm_A*/, __m128d /*Inxmm_B*/);
extern __m128d uX_ABI _uX_mm_signcombine_sd(__m128d /*Inxmm_A*/, __m128d /*Inxmm_B*/);
extern __m128d uX_ABI _uX_mm_isfinite_pd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_isfinite_sd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_isinf_pd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_isinf_sd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_isnan_pd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_isnan_sd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_issubnormal_pd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_issubnormal_sd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_iszeroorsubnormal_pd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_iszeroorsubnormal_sd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_infinite_pd(void);
extern __m128d uX_ABI _uX_mm_infinite_sd(void);
extern __m128d uX_ABI _uX_mm_nan_pd(void);
extern __m128d uX_ABI _uX_mm_nan_sd(void);
extern __m128d uX_ABI _uX_mm_abs_pd(__m128d /*Inxmm_A*/);
extern __m128d uX_ABI _uX_mm_abs_sd(__m128d /*Inxmm_A*/);

extern double uX_ABI _uX_mm_horizontaladd_pd(__m128d /*Inxmm_A*/);
extern double uX_ABI _uX_mm_horizontalsub_pd(__m128d /*Inxmm_A*/);
extern double uX_ABI _uX_mm_horizontalmul_pd(__m128d /*Inxmm_A*/);
extern double uX_ABI _uX_mm_horizontaldiv_pd(__m128d /*Inxmm_A*/);

/*
 * INT64 Arithmetic
 */
extern __m128i uX_ABI _uX_mm_max_epi64(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_ABI _uX_mm_min_epi64(__m128i /*Inxmm_A*/, __m128i /*Inxmm_B*/);
extern __m128i uX_ABI _uX_mm_abs_epi64(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_abssat_epi64(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_scale_epi64(__m128i /*Inxmm_A*/, int64_t /*Inint_B*/);
extern __m128i uX_ABI _uX_mm_square_epi64(__m128i /*Inxmm_A*/);

uX_PACK_POP
uX_EXTERNC_END

//#define _uX_mm_set_epi64     _uX_mm_set_epi64x
#endif // uX_SSE2

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_EMM_ARITHMETIC_H
