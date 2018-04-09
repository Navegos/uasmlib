
#pragma once

#ifndef uXm_MM_PSHUFFLEW_H
#define uXm_MM_PSHUFFLEW_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef uXm_MMX_STRUCTS_H
#include "uXmmmxStructs.h"
#endif  /* uXm_MMX_STRUCTS_H */

uXm_EXTERNCC_BEGIN

uXm_PACK_PUSH8

/*
* Integer (MMX) extensions
*/

extern __uXm64f uXm_mm_pshufw_0000(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0001(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0002(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0003(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0010(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0011(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0012(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0013(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0020(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0021(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0022(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0023(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0030(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0031(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0032(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0033(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0100(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0101(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0102(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0103(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0110(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0111(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0112(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0113(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0120(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0121(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0122(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0123(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0130(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0131(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0132(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0133(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0200(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0201(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0202(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0203(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0210(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0211(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0212(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0213(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0220(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0221(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0222(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0223(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0230(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0231(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0232(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0233(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0300(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0301(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0302(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0303(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0310(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0311(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0312(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0313(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0320(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0321(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0322(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0323(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0330(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0331(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0332(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_0333(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1000(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1001(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1002(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1003(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1010(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1011(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1012(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1013(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1020(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1021(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1022(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1023(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1030(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1031(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1032(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1033(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1100(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1101(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1102(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1103(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1110(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1111(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1112(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1113(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1120(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1121(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1122(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1123(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1130(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1131(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1132(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1133(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1200(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1201(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1202(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1203(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1210(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1211(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1212(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1213(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1220(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1221(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1222(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1223(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1230(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1231(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1232(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1233(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1300(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1301(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1302(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1303(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1310(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1311(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1312(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1313(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1320(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1321(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1322(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1323(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1330(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1331(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1332(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_1333(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2000(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2001(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2002(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2003(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2010(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2011(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2012(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2013(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2020(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2021(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2022(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2023(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2030(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2031(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2032(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2033(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2100(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2101(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2102(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2103(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2110(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2111(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2112(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2113(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2120(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2121(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2122(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2123(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2130(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2131(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2132(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2133(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2200(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2201(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2202(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2203(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2210(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2211(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2212(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2213(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2220(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2221(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2222(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2223(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2230(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2231(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2232(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2233(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2300(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2301(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2302(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2303(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2310(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2311(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2312(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2313(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2320(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2321(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2322(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2323(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2330(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2331(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2332(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_2333(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3000(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3001(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3002(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3003(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3010(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3011(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3012(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3013(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3020(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3021(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3022(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3023(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3030(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3031(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3032(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3033(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3100(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3101(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3102(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3103(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3110(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3111(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3112(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3113(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3120(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3121(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3122(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3123(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3130(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3131(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3132(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3133(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3200(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3201(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3202(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3203(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3210(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3211(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3212(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3213(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3220(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3221(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3222(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3223(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3230(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3231(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3232(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3233(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3300(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3301(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3302(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3303(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3310(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3311(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3312(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3313(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3320(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3321(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3322(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3323(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3330(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3331(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3332(__uXm64f InXmm_A, __uXm64f InXmm_B);
extern __uXm64f uXm_mm_pshufw_3333(__uXm64f InXmm_A, __uXm64f InXmm_B);

extern __uXm64 uXm_mm_pshufw_0000(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0001(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0002(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0003(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0010(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0011(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0012(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0013(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0020(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0021(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0022(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0023(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0030(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0031(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0032(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0033(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0100(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0101(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0102(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0103(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0110(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0111(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0112(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0113(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0120(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0121(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0122(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0123(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0130(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0131(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0132(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0133(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0200(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0201(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0202(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0203(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0210(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0211(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0212(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0213(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0220(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0221(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0222(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0223(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0230(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0231(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0232(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0233(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0300(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0301(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0302(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0303(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0310(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0311(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0312(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0313(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0320(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0321(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0322(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0323(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0330(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0331(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0332(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_0333(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1000(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1001(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1002(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1003(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1010(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1011(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1012(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1013(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1020(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1021(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1022(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1023(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1030(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1031(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1032(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1033(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1100(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1101(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1102(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1103(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1110(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1111(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1112(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1113(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1120(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1121(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1122(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1123(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1130(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1131(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1132(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1133(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1200(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1201(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1202(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1203(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1210(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1211(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1212(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1213(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1220(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1221(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1222(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1223(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1230(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1231(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1232(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1233(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1300(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1301(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1302(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1303(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1310(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1311(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1312(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1313(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1320(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1321(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1322(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1323(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1330(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1331(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1332(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_1333(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2000(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2001(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2002(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2003(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2010(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2011(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2012(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2013(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2020(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2021(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2022(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2023(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2030(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2031(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2032(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2033(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2100(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2101(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2102(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2103(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2110(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2111(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2112(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2113(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2120(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2121(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2122(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2123(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2130(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2131(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2132(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2133(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2200(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2201(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2202(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2203(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2210(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2211(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2212(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2213(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2220(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2221(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2222(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2223(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2230(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2231(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2232(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2233(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2300(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2301(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2302(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2303(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2310(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2311(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2312(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2313(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2320(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2321(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2322(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2323(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2330(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2331(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2332(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_2333(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3000(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3001(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3002(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3003(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3010(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3011(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3012(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3013(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3020(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3021(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3022(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3023(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3030(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3031(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3032(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3033(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3100(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3101(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3102(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3103(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3110(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3111(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3112(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3113(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3120(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3121(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3122(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3123(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3130(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3131(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3132(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3133(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3200(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3201(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3202(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3203(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3210(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3211(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3212(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3213(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3220(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3221(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3222(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3223(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3230(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3231(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3232(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3233(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3300(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3301(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3302(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3303(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3310(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3311(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3312(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3313(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3320(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3321(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3322(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3323(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3330(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3331(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3332(__uXm64 InXmm_A, __uXm64 InXmm_B);
extern __uXm64 uXm_mm_pshufw_3333(__uXm64 InXmm_A, __uXm64 InXmm_B);

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_MM_PSHUFFLEW_H
