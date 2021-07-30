
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

#ifndef uX_XMM_AESKEYASSIST_SI128_H
#define uX_XMM_AESKEYASSIST_SI128_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE42

#ifndef uX_WMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXwmmintrin.h to use this header"
#endif

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

/*
 * INT, AES
 */
 
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_0(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_1(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_2(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_3(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_4(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_5(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_6(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_7(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_8(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_9(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_10(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_11(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_12(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_13(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_14(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_15(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_16(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_17(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_18(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_19(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_20(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_21(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_22(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_23(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_24(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_25(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_26(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_27(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_28(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_29(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_30(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_31(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_32(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_33(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_34(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_35(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_36(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_37(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_38(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_39(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_40(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_41(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_42(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_43(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_44(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_45(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_46(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_47(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_48(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_49(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_50(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_51(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_52(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_53(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_54(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_55(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_56(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_57(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_58(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_59(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_60(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_61(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_62(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_63(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_64(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_65(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_66(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_67(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_68(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_69(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_70(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_71(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_72(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_73(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_74(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_75(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_76(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_77(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_78(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_79(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_80(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_81(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_82(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_83(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_84(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_85(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_86(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_87(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_88(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_89(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_90(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_91(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_92(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_93(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_94(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_95(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_96(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_97(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_98(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_99(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_100(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_101(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_102(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_103(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_104(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_105(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_106(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_107(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_108(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_109(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_110(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_111(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_112(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_113(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_114(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_115(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_116(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_117(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_118(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_119(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_120(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_121(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_122(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_123(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_124(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_125(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_126(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_127(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_128(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_129(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_130(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_131(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_132(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_133(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_134(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_135(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_136(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_137(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_138(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_139(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_140(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_141(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_142(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_143(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_144(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_145(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_146(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_147(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_148(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_149(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_150(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_151(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_152(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_153(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_154(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_155(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_156(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_157(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_158(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_159(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_160(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_161(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_162(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_163(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_164(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_165(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_166(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_167(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_168(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_169(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_170(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_171(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_172(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_173(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_174(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_175(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_176(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_177(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_178(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_179(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_180(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_181(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_182(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_183(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_184(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_185(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_186(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_187(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_188(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_189(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_190(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_191(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_192(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_193(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_194(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_195(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_196(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_197(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_198(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_199(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_200(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_201(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_202(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_203(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_204(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_205(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_206(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_207(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_208(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_209(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_210(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_211(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_212(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_213(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_214(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_215(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_216(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_217(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_218(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_219(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_220(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_221(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_222(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_223(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_224(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_225(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_226(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_227(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_228(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_229(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_230(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_231(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_232(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_233(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_234(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_235(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_236(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_237(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_238(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_239(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_240(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_241(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_242(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_243(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_244(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_245(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_246(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_247(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_248(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_249(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_250(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_251(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_252(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_253(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_254(__m128i /*Inxmm_A*/);
extern __m128i uX_ABI _uX_mm_aeskeygenassist_si128_255(__m128i /*Inxmm_A*/);

uX_PACK_POP
uX_EXTERNC_END
#endif // uX_SSE42

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_AESKEYASSIST_SI128_H
