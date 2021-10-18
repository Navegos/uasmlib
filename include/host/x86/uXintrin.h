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

#ifndef uX_INTRIN_H
#define uX_INTRIN_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)

uX_EXTERNC_BEGIN
uX_PACK_PUSH_PTR

extern void uX_abi _uX_cpuidex(int32_t* /*CPUInfo*/, int32_t /*CPUInfoType*/, int32_t /*ECXValue*/);
extern void uX_abi _uX_cpuid(int32_t* /*CPUInfo*/, int32_t /*CPUInfoType*/);

uX_PACK_8

extern uint64_t uX_abi _uX_xgetbv(uint32_t /*EXCR*/);
extern void uX_abi _uX_xsetbv(uint32_t /*EXCR*/, uint64_t /*EXCRSet*/);

uX_PACK_POP
uX_EXTERNC_END

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_MMX) && !defined(uX_MIC)
#include "uxmmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSE) && !defined(uX_MIC)
#include "uXxmmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSE2) && !defined(uX_MIC)
#include "uXemmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSE3) && !defined(uX_MIC)
#include "uXpmmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSSE3) && !defined(uX_MIC)
#include "uXtmmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSE41) && !defined(uX_MIC)
#include "uXsmmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSE42) && !defined(uX_MIC)
#include "uXnmmintrin.h"
#include "uXwmmintrin.h"
#endif

/*
#if defined(uX_INTRINSET) && ((uX_INTRINSET >= uX_ISET_AVX) || (uX_INTRINSET >= uX_ISET_AVX2)) && !defined(uX_MIC)
#include "uXimmintrin.h"
#endif

#include "uXSSEStructs.h"*/

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_INTRIN_H
