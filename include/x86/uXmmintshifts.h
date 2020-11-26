
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - UASM assembly library             / /
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

#ifndef uX_MM_INTSHIFTS_H
#define uX_MM_INTSHIFTS_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#if defined(uX_MMX) && defined(uX_X86)

#ifndef uX_MM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXmmintrin.h to use this header"
#endif

uX_EXTERNC_BEGIN
uX_PACK_PUSH_MM

/*
 * Integer, shifts
 */

    extern __m64 uX_ABI _uX_m_psllwi_0(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_1(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_2(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_3(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_4(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_5(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_6(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_7(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_8(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_9(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_10(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_11(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_12(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_13(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_14(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllwi_15(__m64 Inmm_A);

    extern __m64 uX_ABI _uX_m_pslldi_0(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_1(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_2(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_3(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_4(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_5(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_6(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_7(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_8(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_9(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_10(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_11(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_12(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_13(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_14(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_15(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_16(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_17(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_18(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_19(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_20(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_21(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_22(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_23(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_24(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_25(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_26(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_27(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_28(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_29(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_30(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_pslldi_31(__m64 Inmm_A);

    extern __m64 uX_ABI _uX_m_psllqi_0(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_1(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_2(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_3(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_4(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_5(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_6(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_7(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_8(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_9(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_10(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_11(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_12(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_13(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_14(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_15(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_16(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_17(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_18(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_19(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_20(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_21(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_22(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_23(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_24(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_25(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_26(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_27(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_28(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_29(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_30(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_31(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_32(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_33(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_34(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_35(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_36(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_37(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_38(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_39(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_40(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_41(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_42(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_43(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_44(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_45(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_46(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_47(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_48(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_49(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_50(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_51(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_52(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_53(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_54(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_55(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_56(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_57(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_58(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_59(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_50(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_61(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_62(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psllqi_63(__m64 Inmm_A);

    extern __m64 uX_ABI _uX_m_psrawi_0(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_1(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_2(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_3(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_4(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_5(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_6(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_7(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_8(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_9(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_10(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_11(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_12(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_13(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_14(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrawi_15(__m64 Inmm_A);

    extern __m64 uX_ABI _uX_m_psradi_0(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_1(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_2(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_3(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_4(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_5(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_6(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_7(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_8(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_9(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_10(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_11(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_12(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_13(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_14(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_15(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_16(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_17(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_18(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_19(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_20(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_21(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_22(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_23(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_24(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_25(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_26(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_27(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_28(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_29(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_30(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psradi_31(__m64 Inmm_A);

    extern __m64 uX_ABI _uX_m_psrlwi_0(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_1(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_2(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_3(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_4(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_5(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_6(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_7(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_8(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_9(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_10(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_11(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_12(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_13(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_14(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlwi_15(__m64 Inmm_A);

    extern __m64 uX_ABI _uX_m_psrldi_0(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_1(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_2(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_3(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_4(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_5(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_6(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_7(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_8(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_9(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_10(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_11(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_12(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_13(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_14(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_15(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_16(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_17(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_18(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_19(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_20(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_21(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_22(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_23(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_24(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_25(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_26(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_27(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_28(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_29(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_30(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrldi_31(__m64 Inmm_A);

    extern __m64 uX_ABI _uX_m_psrlqi_0(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_1(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_2(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_3(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_4(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_5(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_6(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_7(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_8(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_9(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_10(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_11(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_12(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_13(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_14(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_15(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_16(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_17(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_18(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_19(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_20(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_21(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_22(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_23(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_24(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_25(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_26(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_27(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_28(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_29(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_30(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_31(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_32(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_33(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_34(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_35(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_36(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_37(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_38(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_39(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_40(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_41(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_42(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_43(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_44(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_45(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_46(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_47(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_48(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_49(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_50(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_51(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_52(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_53(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_54(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_55(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_56(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_57(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_58(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_59(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_50(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_61(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_62(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_m_psrlqi_63(__m64 Inmm_A);

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_MMX

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_MM_INTSHIFTS_H
