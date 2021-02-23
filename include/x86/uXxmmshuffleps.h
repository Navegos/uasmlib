
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - optimized library                 / /
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

#ifndef uX_XMM_SHUFFLE_PS_H
#define uX_XMM_SHUFFLE_PS_H 1

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

    extern __m128 uX_ABI _uX_mm_shuffle_0000_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0001_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0002_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0003_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0010_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0011_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0012_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0013_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0020_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0021_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0022_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0023_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0030_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0031_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0032_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0033_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0100_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0101_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0102_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0103_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0110_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0111_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0112_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0113_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0120_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0121_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0122_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0123_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0130_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0131_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0132_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0133_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0200_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0201_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0202_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0203_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0210_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0211_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0212_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0213_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0220_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0221_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0222_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0223_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0230_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0231_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0232_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0233_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0300_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0301_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0302_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0303_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0310_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0311_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0312_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0313_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0320_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0321_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0322_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0323_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0330_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0331_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0332_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_0333_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1000_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1001_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1002_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1003_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1010_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1011_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1012_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1013_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1020_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1021_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1022_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1023_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1030_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1031_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1032_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1033_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1100_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1101_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1102_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1103_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1110_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1111_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1112_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1113_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1120_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1121_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1122_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1123_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1130_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1131_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1132_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1133_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1200_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1201_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1202_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1203_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1210_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1211_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1212_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1213_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1220_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1221_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1222_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1223_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1230_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1231_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1232_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1233_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1300_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1301_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1302_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1303_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1310_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1311_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1312_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1313_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1320_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1321_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1322_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1323_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1330_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1331_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1332_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_1333_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2000_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2001_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2002_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2003_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2010_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2011_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2012_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2013_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2020_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2021_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2022_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2023_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2030_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2031_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2032_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2033_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2100_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2101_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2102_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2103_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2110_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2111_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2112_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2113_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2120_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2121_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2122_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2123_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2130_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2131_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2132_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2133_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2200_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2201_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2202_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2203_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2210_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2211_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2212_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2213_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2220_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2221_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2222_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2223_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2230_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2231_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2232_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2233_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2300_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2301_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2302_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2303_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2310_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2311_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2312_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2313_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2320_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2321_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2322_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2323_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2330_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2331_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2332_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_2333_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3000_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3001_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3002_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3003_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3010_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3011_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3012_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3013_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3020_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3021_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3022_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3023_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3030_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3031_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3032_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3033_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3100_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3101_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3102_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3103_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3110_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3111_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3112_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3113_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3120_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3121_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3122_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3123_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3130_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3131_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3132_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3133_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3200_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3201_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3202_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3203_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3210_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3211_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3212_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3213_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3220_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3221_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3222_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3223_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3230_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3231_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3232_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3233_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3300_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3301_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3302_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3303_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3310_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3311_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3312_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3313_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3320_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3321_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3322_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3323_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3330_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3331_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3332_ps(__m128 Inxmm_A, __m128 Inxmm_B);
    extern __m128 uX_ABI _uX_mm_shuffle_3333_ps(__m128 Inxmm_A, __m128 Inxmm_B);

uX_PACK_POP
uX_EXTERNC_END
#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_SHUFFLE_PS_H
