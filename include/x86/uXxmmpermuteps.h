
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

#ifndef uX_XMM_PERMUTE_PS_H
#define uX_XMM_PERMUTE_PS_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

#ifndef uX_XMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXxmmintrin.h to use this header"
#endif

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

/*
 * FP, misc
 */

extern __m128 uX_ABI _uX_mm_permute_0000_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0001_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0002_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0003_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0010_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0011_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0012_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0013_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0020_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0021_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0022_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0023_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0030_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0031_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0032_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0033_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0100_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0101_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0102_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0103_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0110_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0111_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0112_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0113_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0120_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0121_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0122_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0123_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0130_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0131_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0132_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0133_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0200_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0201_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0202_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0203_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0210_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0211_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0212_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0213_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0220_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0221_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0222_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0223_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0230_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0231_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0232_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0233_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0300_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0301_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0302_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0303_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0310_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0311_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0312_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0313_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0320_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0321_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0322_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0323_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0330_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0331_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0332_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_0333_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1000_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1001_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1002_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1003_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1010_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1011_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1012_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1013_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1020_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1021_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1022_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1023_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1030_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1031_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1032_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1033_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1100_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1101_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1102_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1103_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1110_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1111_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1112_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1113_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1120_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1121_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1122_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1123_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1130_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1131_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1132_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1133_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1200_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1201_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1202_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1203_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1210_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1211_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1212_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1213_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1220_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1221_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1222_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1223_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1230_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1231_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1232_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1233_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1300_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1301_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1302_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1303_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1310_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1311_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1312_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1313_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1320_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1321_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1322_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1323_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1330_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1331_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1332_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_1333_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2000_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2001_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2002_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2003_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2010_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2011_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2012_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2013_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2020_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2021_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2022_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2023_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2030_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2031_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2032_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2033_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2100_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2101_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2102_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2103_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2110_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2111_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2112_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2113_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2120_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2121_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2122_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2123_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2130_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2131_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2132_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2133_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2200_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2201_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2202_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2203_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2210_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2211_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2212_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2213_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2220_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2221_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2222_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2223_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2230_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2231_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2232_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2233_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2300_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2301_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2302_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2303_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2310_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2311_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2312_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2313_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2320_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2321_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2322_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2323_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2330_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2331_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2332_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_2333_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3000_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3001_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3002_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3003_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3010_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3011_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3012_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3013_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3020_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3021_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3022_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3023_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3030_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3031_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3032_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3033_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3100_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3101_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3102_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3103_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3110_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3111_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3112_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3113_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3120_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3121_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3122_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3123_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3130_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3131_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3132_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3133_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3200_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3201_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3202_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3203_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3210_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3211_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3212_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3213_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3220_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3221_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3222_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3223_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3230_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3231_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3232_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3233_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3300_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3301_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3302_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3303_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3310_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3311_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3312_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3313_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3320_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3321_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3322_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3323_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3330_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3331_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3332_ps(__m128 /*Inxmm_A*/);
extern __m128 uX_ABI _uX_mm_permute_3333_ps(__m128 /*Inxmm_A*/);

uX_PACK_POP
uX_EXTERNC_END
#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_PERMUTE_PS_H
