
#pragma once

#ifndef uXm64_XMM_PSHUFFLEW_H
#define uXm64_XMM_PSHUFFLEW_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#if defined(uXm_SSE) && defined(uXm_X86)

#ifndef uXm_MMX_STRUCTS_H
#include "../../MMX/uXmMMXStructs.h"
#endif  /* uXm_MMX_STRUCTS_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH8

/*
 * Integer (MMX) extensions
 */

extern __uXm64 _uXm_m64_shufw_0000(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0001(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0002(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0003(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0010(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0011(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0012(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0013(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0020(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0021(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0022(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0023(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0030(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0031(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0032(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0033(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0100(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0101(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0102(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0103(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0110(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0111(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0112(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0113(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0120(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0121(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0122(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0123(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0130(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0131(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0132(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0133(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0200(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0201(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0202(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0203(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0210(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0211(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0212(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0213(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0220(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0221(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0222(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0223(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0230(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0231(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0232(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0233(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0300(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0301(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0302(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0303(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0310(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0311(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0312(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0313(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0320(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0321(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0322(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0323(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0330(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0331(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0332(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_0333(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1000(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1001(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1002(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1003(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1010(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1011(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1012(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1013(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1020(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1021(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1022(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1023(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1030(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1031(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1032(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1033(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1100(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1101(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1102(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1103(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1110(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1111(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1112(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1113(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1120(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1121(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1122(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1123(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1130(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1131(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1132(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1133(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1200(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1201(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1202(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1203(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1210(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1211(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1212(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1213(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1220(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1221(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1222(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1223(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1230(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1231(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1232(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1233(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1300(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1301(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1302(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1303(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1310(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1311(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1312(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1313(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1320(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1321(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1322(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1323(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1330(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1331(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1332(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_1333(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2000(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2001(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2002(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2003(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2010(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2011(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2012(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2013(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2020(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2021(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2022(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2023(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2030(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2031(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2032(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2033(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2100(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2101(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2102(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2103(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2110(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2111(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2112(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2113(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2120(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2121(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2122(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2123(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2130(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2131(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2132(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2133(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2200(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2201(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2202(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2203(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2210(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2211(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2212(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2213(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2220(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2221(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2222(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2223(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2230(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2231(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2232(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2233(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2300(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2301(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2302(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2303(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2310(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2311(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2312(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2313(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2320(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2321(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2322(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2323(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2330(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2331(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2332(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_2333(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3000(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3001(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3002(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3003(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3010(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3011(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3012(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3013(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3020(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3021(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3022(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3023(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3030(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3031(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3032(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3033(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3100(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3101(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3102(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3103(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3110(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3111(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3112(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3113(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3120(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3121(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3122(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3123(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3130(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3131(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3132(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3133(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3200(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3201(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3202(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3203(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3210(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3211(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3212(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3213(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3220(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3221(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3222(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3223(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3230(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3231(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3232(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3233(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3300(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3301(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3302(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3303(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3310(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3311(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3312(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3313(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3320(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3321(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3322(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3323(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3330(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3331(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3332(__uXm64 InXmm_A);
extern __uXm64 _uXm_m64_shufw_3333(__uXm64 InXmm_A);

uXm_PACK_POP

uXm_EXTERNC_END

#endif // uXm_SSE uXm_X86

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm64_XMM_PSHUFFLEW_H
