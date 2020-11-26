
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

#ifndef uX_XMM_PSHUFFLEW_H
#define uX_XMM_PSHUFFLEW_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#if defined(uX_SSE) && defined(uX_X86)

#ifndef uX_XMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXxmmintrin.h to use this header"
#endif

uX_EXTERNC_BEGIN
uX_PACK_PUSH_MM

/*
 * Integer (MMX) extensions
 */

    extern int32_t uX_ABI _uX_mm_pextrw_0(__m64 Inmm_A);
    extern int32_t uX_ABI _uX_mm_pextrw_1(__m64 Inmm_A);
    extern int32_t uX_ABI _uX_mm_pextrw_2(__m64 Inmm_A);
    extern int32_t uX_ABI _uX_mm_pextrw_3(__m64 Inmm_A);

    extern __m64 uX_ABI _uX_mm_pinsrw_0(__m64 Inmm_A, int32_t InInt_B);
    extern __m64 uX_ABI _uX_mm_pinsrw_1(__m64 Inmm_A, int32_t InInt_B);
    extern __m64 uX_ABI _uX_mm_pinsrw_2(__m64 Inmm_A, int32_t InInt_B);
    extern __m64 uX_ABI _uX_mm_pinsrw_3(__m64 Inmm_A, int32_t InInt_B);

    extern __m64 uX_ABI _uX_mm_pshufw_0000(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0001(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0002(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0003(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0010(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0011(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0012(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0013(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0020(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0021(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0022(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0023(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0030(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0031(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0032(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0033(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0100(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0101(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0102(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0103(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0110(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0111(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0112(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0113(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0120(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0121(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0122(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0123(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0130(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0131(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0132(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0133(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0200(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0201(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0202(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0203(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0210(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0211(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0212(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0213(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0220(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0221(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0222(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0223(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0230(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0231(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0232(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0233(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0300(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0301(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0302(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0303(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0310(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0311(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0312(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0313(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0320(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0321(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0322(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0323(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0330(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0331(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0332(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_0333(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1000(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1001(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1002(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1003(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1010(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1011(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1012(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1013(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1020(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1021(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1022(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1023(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1030(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1031(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1032(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1033(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1100(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1101(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1102(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1103(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1110(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1111(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1112(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1113(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1120(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1121(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1122(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1123(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1130(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1131(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1132(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1133(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1200(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1201(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1202(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1203(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1210(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1211(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1212(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1213(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1220(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1221(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1222(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1223(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1230(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1231(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1232(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1233(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1300(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1301(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1302(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1303(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1310(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1311(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1312(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1313(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1320(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1321(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1322(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1323(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1330(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1331(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1332(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_1333(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2000(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2001(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2002(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2003(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2010(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2011(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2012(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2013(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2020(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2021(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2022(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2023(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2030(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2031(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2032(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2033(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2100(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2101(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2102(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2103(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2110(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2111(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2112(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2113(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2120(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2121(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2122(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2123(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2130(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2131(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2132(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2133(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2200(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2201(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2202(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2203(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2210(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2211(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2212(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2213(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2220(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2221(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2222(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2223(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2230(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2231(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2232(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2233(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2300(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2301(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2302(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2303(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2310(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2311(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2312(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2313(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2320(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2321(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2322(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2323(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2330(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2331(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2332(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_2333(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3000(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3001(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3002(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3003(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3010(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3011(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3012(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3013(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3020(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3021(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3022(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3023(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3030(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3031(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3032(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3033(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3100(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3101(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3102(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3103(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3110(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3111(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3112(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3113(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3120(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3121(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3122(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3123(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3130(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3131(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3132(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3133(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3200(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3201(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3202(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3203(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3210(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3211(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3212(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3213(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3220(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3221(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3222(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3223(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3230(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3231(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3232(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3233(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3300(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3301(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3302(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3303(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3310(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3311(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3312(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3313(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3320(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3321(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3322(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3323(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3330(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3331(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3332(__m64 Inmm_A);
    extern __m64 uX_ABI _uX_mm_pshufw_3333(__m64 Inmm_A);

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSE uX_X86

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_PSHUFFLEW_H
