
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.code

;******************
; Proto
;******************
uXm_mm_shuffle_epi32_0000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_0333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_1333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_shuffle_epi32_2103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_shuffle_epi32_2123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_shuffle_epi32_2233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_2333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32_3333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shuffle_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword

uXm_mm_shufflehi_epi16_0000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_0333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_1333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_shufflehi_epi16_2103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_shufflehi_epi16_2123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_shufflehi_epi16_2233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_2333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16_3333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflehi_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword

uXm_mm_shufflelo_epi16_0000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_0333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_1333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_shufflelo_epi16_2103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_shufflelo_epi16_2123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_shufflelo_epi16_2233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_2333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3000 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3001 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3002 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3003 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3010 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3011 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3012 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3013 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3020 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3021 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3022 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3023 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3030 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3031 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3032 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3033 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3100 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3101 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3102 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3103 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3110 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3111 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3112 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3113 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3120 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3121 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3122 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3123 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3130 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3131 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3132 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3133 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3200 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3201 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3202 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3203 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3210 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3211 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3212 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3213 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3220 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3221 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3222 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3223 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3230 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3231 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3232 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3233 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3300 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3301 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3302 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3303 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3310 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3311 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3312 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3313 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3320 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3321 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3322 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3323 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3330 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3331 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3332 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16_3333 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_shufflelo_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword

;******************
; Proc
;******************
			align 16
uXm_mm_shuffle_epi32_0000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			0
				ret
uXm_mm_shuffle_epi32_0000 endp

			align 16
uXm_mm_shuffle_epi32_0001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			1
				ret
uXm_mm_shuffle_epi32_0001 endp

			align 16
uXm_mm_shuffle_epi32_0002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			2
				ret
uXm_mm_shuffle_epi32_0002 endp

			align 16
uXm_mm_shuffle_epi32_0003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			3
				ret
uXm_mm_shuffle_epi32_0003 endp

			align 16
uXm_mm_shuffle_epi32_0010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			4
				ret
uXm_mm_shuffle_epi32_0010 endp

			align 16
uXm_mm_shuffle_epi32_0011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			5
				ret
uXm_mm_shuffle_epi32_0011 endp

			align 16
uXm_mm_shuffle_epi32_0012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			6
				ret
uXm_mm_shuffle_epi32_0012 endp

			align 16
uXm_mm_shuffle_epi32_0013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			7
				ret
uXm_mm_shuffle_epi32_0013 endp

			align 16
uXm_mm_shuffle_epi32_0020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			8
				ret
uXm_mm_shuffle_epi32_0020 endp

			align 16
uXm_mm_shuffle_epi32_0021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			9
				ret
uXm_mm_shuffle_epi32_0021 endp

			align 16
uXm_mm_shuffle_epi32_0022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			10
				ret
uXm_mm_shuffle_epi32_0022 endp

			align 16
uXm_mm_shuffle_epi32_0023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			11
				ret
uXm_mm_shuffle_epi32_0023 endp

			align 16
uXm_mm_shuffle_epi32_0030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			12
				ret
uXm_mm_shuffle_epi32_0030 endp

			align 16
uXm_mm_shuffle_epi32_0031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			13
				ret
uXm_mm_shuffle_epi32_0031 endp

			align 16
uXm_mm_shuffle_epi32_0032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			14
				ret
uXm_mm_shuffle_epi32_0032 endp

			align 16
uXm_mm_shuffle_epi32_0033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			15
				ret
uXm_mm_shuffle_epi32_0033 endp

			align 16
uXm_mm_shuffle_epi32_0100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			16
				ret
uXm_mm_shuffle_epi32_0100 endp

			align 16
uXm_mm_shuffle_epi32_0101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			17
				ret
uXm_mm_shuffle_epi32_0101 endp

			align 16
uXm_mm_shuffle_epi32_0102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			18
				ret
uXm_mm_shuffle_epi32_0102 endp

			align 16
uXm_mm_shuffle_epi32_0103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			19
				ret
uXm_mm_shuffle_epi32_0103 endp

			align 16
uXm_mm_shuffle_epi32_0110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			20
				ret
uXm_mm_shuffle_epi32_0110 endp

			align 16
uXm_mm_shuffle_epi32_0111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			21
				ret
uXm_mm_shuffle_epi32_0111 endp

			align 16
uXm_mm_shuffle_epi32_0112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			22
				ret
uXm_mm_shuffle_epi32_0112 endp

			align 16
uXm_mm_shuffle_epi32_0113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			23
				ret
uXm_mm_shuffle_epi32_0113 endp

			align 16
uXm_mm_shuffle_epi32_0120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			24
				ret
uXm_mm_shuffle_epi32_0120 endp

			align 16
uXm_mm_shuffle_epi32_0121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			25
				ret
uXm_mm_shuffle_epi32_0121 endp

			align 16
uXm_mm_shuffle_epi32_0122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			26
				ret
uXm_mm_shuffle_epi32_0122 endp

			align 16
uXm_mm_shuffle_epi32_0123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			27
				ret
uXm_mm_shuffle_epi32_0123 endp

			align 16
uXm_mm_shuffle_epi32_0130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			28
				ret
uXm_mm_shuffle_epi32_0130 endp

			align 16
uXm_mm_shuffle_epi32_0131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			29
				ret
uXm_mm_shuffle_epi32_0131 endp

			align 16
uXm_mm_shuffle_epi32_0132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			30
				ret
uXm_mm_shuffle_epi32_0132 endp

			align 16
uXm_mm_shuffle_epi32_0133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			31
				ret
uXm_mm_shuffle_epi32_0133 endp

			align 16
uXm_mm_shuffle_epi32_0200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			32
				ret
uXm_mm_shuffle_epi32_0200 endp

			align 16
uXm_mm_shuffle_epi32_0201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			33
				ret
uXm_mm_shuffle_epi32_0201 endp

			align 16
uXm_mm_shuffle_epi32_0202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			34
				ret
uXm_mm_shuffle_epi32_0202 endp

			align 16
uXm_mm_shuffle_epi32_0203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			35
				ret
uXm_mm_shuffle_epi32_0203 endp

			align 16
uXm_mm_shuffle_epi32_0210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			36
				ret
uXm_mm_shuffle_epi32_0210 endp

			align 16
uXm_mm_shuffle_epi32_0211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			37
				ret
uXm_mm_shuffle_epi32_0211 endp

			align 16
uXm_mm_shuffle_epi32_0212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			38
				ret
uXm_mm_shuffle_epi32_0212 endp

			align 16
uXm_mm_shuffle_epi32_0213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			39
				ret
uXm_mm_shuffle_epi32_0213 endp

			align 16
uXm_mm_shuffle_epi32_0220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			40
				ret
uXm_mm_shuffle_epi32_0220 endp

			align 16
uXm_mm_shuffle_epi32_0221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			41
				ret
uXm_mm_shuffle_epi32_0221 endp

			align 16
uXm_mm_shuffle_epi32_0222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			42
				ret
uXm_mm_shuffle_epi32_0222 endp

			align 16
uXm_mm_shuffle_epi32_0223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			43
				ret
uXm_mm_shuffle_epi32_0223 endp

			align 16
uXm_mm_shuffle_epi32_0230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			44
				ret
uXm_mm_shuffle_epi32_0230 endp

			align 16
uXm_mm_shuffle_epi32_0231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			45
				ret
uXm_mm_shuffle_epi32_0231 endp

			align 16
uXm_mm_shuffle_epi32_0232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			46
				ret
uXm_mm_shuffle_epi32_0232 endp

			align 16
uXm_mm_shuffle_epi32_0233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			47
				ret
uXm_mm_shuffle_epi32_0233 endp

			align 16
uXm_mm_shuffle_epi32_0300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			48
				ret
uXm_mm_shuffle_epi32_0300 endp

			align 16
uXm_mm_shuffle_epi32_0301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			49
				ret
uXm_mm_shuffle_epi32_0301 endp

			align 16
uXm_mm_shuffle_epi32_0302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			50
				ret
uXm_mm_shuffle_epi32_0302 endp

			align 16
uXm_mm_shuffle_epi32_0303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			51
				ret
uXm_mm_shuffle_epi32_0303 endp

			align 16
uXm_mm_shuffle_epi32_0310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			52
				ret
uXm_mm_shuffle_epi32_0310 endp

			align 16
uXm_mm_shuffle_epi32_0311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			53
				ret
uXm_mm_shuffle_epi32_0311 endp

			align 16
uXm_mm_shuffle_epi32_0312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			54
				ret
uXm_mm_shuffle_epi32_0312 endp

			align 16
uXm_mm_shuffle_epi32_0313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			55
				ret
uXm_mm_shuffle_epi32_0313 endp

			align 16
uXm_mm_shuffle_epi32_0320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			56
				ret
uXm_mm_shuffle_epi32_0320 endp

			align 16
uXm_mm_shuffle_epi32_0321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			57
				ret
uXm_mm_shuffle_epi32_0321 endp

			align 16
uXm_mm_shuffle_epi32_0322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			58
				ret
uXm_mm_shuffle_epi32_0322 endp

			align 16
uXm_mm_shuffle_epi32_0323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			59
				ret
uXm_mm_shuffle_epi32_0323 endp

			align 16
uXm_mm_shuffle_epi32_0330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			60
				ret
uXm_mm_shuffle_epi32_0330 endp

			align 16
uXm_mm_shuffle_epi32_0331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			61
				ret
uXm_mm_shuffle_epi32_0331 endp

			align 16
uXm_mm_shuffle_epi32_0332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			62
				ret
uXm_mm_shuffle_epi32_0332 endp

			align 16
uXm_mm_shuffle_epi32_0333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			63
				ret
uXm_mm_shuffle_epi32_0333 endp

			align 16
uXm_mm_shuffle_epi32_1000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			64
				ret
uXm_mm_shuffle_epi32_1000 endp

			align 16
uXm_mm_shuffle_epi32_1001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			65
				ret
uXm_mm_shuffle_epi32_1001 endp

			align 16
uXm_mm_shuffle_epi32_1002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			66
				ret
uXm_mm_shuffle_epi32_1002 endp

			align 16
uXm_mm_shuffle_epi32_1003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			67
				ret
uXm_mm_shuffle_epi32_1003 endp

			align 16
uXm_mm_shuffle_epi32_1010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			68
				ret
uXm_mm_shuffle_epi32_1010 endp

			align 16
uXm_mm_shuffle_epi32_1011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			69
				ret
uXm_mm_shuffle_epi32_1011 endp

			align 16
uXm_mm_shuffle_epi32_1012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			70
				ret
uXm_mm_shuffle_epi32_1012 endp

			align 16
uXm_mm_shuffle_epi32_1013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			71
				ret
uXm_mm_shuffle_epi32_1013 endp

			align 16
uXm_mm_shuffle_epi32_1020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			72
				ret
uXm_mm_shuffle_epi32_1020 endp

			align 16
uXm_mm_shuffle_epi32_1021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			73
				ret
uXm_mm_shuffle_epi32_1021 endp

			align 16
uXm_mm_shuffle_epi32_1022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			74
				ret
uXm_mm_shuffle_epi32_1022 endp

			align 16
uXm_mm_shuffle_epi32_1023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			75
				ret
uXm_mm_shuffle_epi32_1023 endp

			align 16
uXm_mm_shuffle_epi32_1030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			76
				ret
uXm_mm_shuffle_epi32_1030 endp

			align 16
uXm_mm_shuffle_epi32_1031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			77
				ret
uXm_mm_shuffle_epi32_1031 endp

			align 16
uXm_mm_shuffle_epi32_1032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			78
				ret
uXm_mm_shuffle_epi32_1032 endp

			align 16
uXm_mm_shuffle_epi32_1033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			79
				ret
uXm_mm_shuffle_epi32_1033 endp

			align 16
uXm_mm_shuffle_epi32_1100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			80
				ret
uXm_mm_shuffle_epi32_1100 endp

			align 16
uXm_mm_shuffle_epi32_1101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			81
				ret
uXm_mm_shuffle_epi32_1101 endp

			align 16
uXm_mm_shuffle_epi32_1102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			82
				ret
uXm_mm_shuffle_epi32_1102 endp

			align 16
uXm_mm_shuffle_epi32_1103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			83
				ret
uXm_mm_shuffle_epi32_1103 endp

			align 16
uXm_mm_shuffle_epi32_1110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			84
				ret
uXm_mm_shuffle_epi32_1110 endp

			align 16
uXm_mm_shuffle_epi32_1111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			85
				ret
uXm_mm_shuffle_epi32_1111 endp

			align 16
uXm_mm_shuffle_epi32_1112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			86
				ret
uXm_mm_shuffle_epi32_1112 endp

			align 16
uXm_mm_shuffle_epi32_1113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			87
				ret
uXm_mm_shuffle_epi32_1113 endp

			align 16
uXm_mm_shuffle_epi32_1120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			88
				ret
uXm_mm_shuffle_epi32_1120 endp

			align 16
uXm_mm_shuffle_epi32_1121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			89
				ret
uXm_mm_shuffle_epi32_1121 endp

			align 16
uXm_mm_shuffle_epi32_1122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			90
				ret
uXm_mm_shuffle_epi32_1122 endp

			align 16
uXm_mm_shuffle_epi32_1123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			91
				ret
uXm_mm_shuffle_epi32_1123 endp

			align 16
uXm_mm_shuffle_epi32_1130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			92
				ret
uXm_mm_shuffle_epi32_1130 endp

			align 16
uXm_mm_shuffle_epi32_1131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			93
				ret
uXm_mm_shuffle_epi32_1131 endp

			align 16
uXm_mm_shuffle_epi32_1132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			94
				ret
uXm_mm_shuffle_epi32_1132 endp

			align 16
uXm_mm_shuffle_epi32_1133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			95
				ret
uXm_mm_shuffle_epi32_1133 endp

			align 16
uXm_mm_shuffle_epi32_1200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			96
				ret
uXm_mm_shuffle_epi32_1200 endp

			align 16
uXm_mm_shuffle_epi32_1201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			97
				ret
uXm_mm_shuffle_epi32_1201 endp

			align 16
uXm_mm_shuffle_epi32_1202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			98
				ret
uXm_mm_shuffle_epi32_1202 endp

			align 16
uXm_mm_shuffle_epi32_1203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			99
				ret
uXm_mm_shuffle_epi32_1203 endp

			align 16
uXm_mm_shuffle_epi32_1210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			100
				ret
uXm_mm_shuffle_epi32_1210 endp

			align 16
uXm_mm_shuffle_epi32_1211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			101
				ret
uXm_mm_shuffle_epi32_1211 endp

			align 16
uXm_mm_shuffle_epi32_1212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			102
				ret
uXm_mm_shuffle_epi32_1212 endp

			align 16
uXm_mm_shuffle_epi32_1213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			103
				ret
uXm_mm_shuffle_epi32_1213 endp

			align 16
uXm_mm_shuffle_epi32_1220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			104
				ret
uXm_mm_shuffle_epi32_1220 endp

			align 16
uXm_mm_shuffle_epi32_1221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			105
				ret
uXm_mm_shuffle_epi32_1221 endp

			align 16
uXm_mm_shuffle_epi32_1222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			106
				ret
uXm_mm_shuffle_epi32_1222 endp

			align 16
uXm_mm_shuffle_epi32_1223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			107
				ret
uXm_mm_shuffle_epi32_1223 endp

			align 16
uXm_mm_shuffle_epi32_1230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			108
				ret
uXm_mm_shuffle_epi32_1230 endp

			align 16
uXm_mm_shuffle_epi32_1231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			109
				ret
uXm_mm_shuffle_epi32_1231 endp

			align 16
uXm_mm_shuffle_epi32_1232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			110
				ret
uXm_mm_shuffle_epi32_1232 endp

			align 16
uXm_mm_shuffle_epi32_1233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			111
				ret
uXm_mm_shuffle_epi32_1233 endp

			align 16
uXm_mm_shuffle_epi32_1300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			112
				ret
uXm_mm_shuffle_epi32_1300 endp

			align 16
uXm_mm_shuffle_epi32_1301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			113
				ret
uXm_mm_shuffle_epi32_1301 endp

			align 16
uXm_mm_shuffle_epi32_1302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			114
				ret
uXm_mm_shuffle_epi32_1302 endp

			align 16
uXm_mm_shuffle_epi32_1303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			115
				ret
uXm_mm_shuffle_epi32_1303 endp

			align 16
uXm_mm_shuffle_epi32_1310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			116
				ret
uXm_mm_shuffle_epi32_1310 endp

			align 16
uXm_mm_shuffle_epi32_1311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			117
				ret
uXm_mm_shuffle_epi32_1311 endp

			align 16
uXm_mm_shuffle_epi32_1312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			118
				ret
uXm_mm_shuffle_epi32_1312 endp

			align 16
uXm_mm_shuffle_epi32_1313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			119
				ret
uXm_mm_shuffle_epi32_1313 endp

			align 16
uXm_mm_shuffle_epi32_1320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			120
				ret
uXm_mm_shuffle_epi32_1320 endp

			align 16
uXm_mm_shuffle_epi32_1321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			121
				ret
uXm_mm_shuffle_epi32_1321 endp

			align 16
uXm_mm_shuffle_epi32_1322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			122
				ret
uXm_mm_shuffle_epi32_1322 endp

			align 16
uXm_mm_shuffle_epi32_1323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			123
				ret
uXm_mm_shuffle_epi32_1323 endp

			align 16
uXm_mm_shuffle_epi32_1330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			124
				ret
uXm_mm_shuffle_epi32_1330 endp

			align 16
uXm_mm_shuffle_epi32_1331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			125
				ret
uXm_mm_shuffle_epi32_1331 endp

			align 16
uXm_mm_shuffle_epi32_1332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			126
				ret
uXm_mm_shuffle_epi32_1332 endp

			align 16
uXm_mm_shuffle_epi32_1333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			127
				ret
uXm_mm_shuffle_epi32_1333 endp

			align 16
uXm_mm_shuffle_epi32_2000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			128
				ret
uXm_mm_shuffle_epi32_2000 endp

			align 16
uXm_mm_shuffle_epi32_2001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			129
				ret
uXm_mm_shuffle_epi32_2001 endp

			align 16
uXm_mm_shuffle_epi32_2002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			130
				ret
uXm_mm_shuffle_epi32_2002 endp

			align 16
uXm_mm_shuffle_epi32_2003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			131
				ret
uXm_mm_shuffle_epi32_2003 endp

			align 16
uXm_mm_shuffle_epi32_2010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			132
				ret
uXm_mm_shuffle_epi32_2010 endp

			align 16
uXm_mm_shuffle_epi32_2011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			133
				ret
uXm_mm_shuffle_epi32_2011 endp

			align 16
uXm_mm_shuffle_epi32_2012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			134
				ret
uXm_mm_shuffle_epi32_2012 endp

			align 16
uXm_mm_shuffle_epi32_2013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			135
				ret
uXm_mm_shuffle_epi32_2013 endp

			align 16
uXm_mm_shuffle_epi32_2020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			136
				ret
uXm_mm_shuffle_epi32_2020 endp

			align 16
uXm_mm_shuffle_epi32_2021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			137
				ret
uXm_mm_shuffle_epi32_2021 endp

			align 16
uXm_mm_shuffle_epi32_2022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			138
				ret
uXm_mm_shuffle_epi32_2022 endp

			align 16
uXm_mm_shuffle_epi32_2023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			139
				ret
uXm_mm_shuffle_epi32_2023 endp

			align 16
uXm_mm_shuffle_epi32_2030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			140
				ret
uXm_mm_shuffle_epi32_2030 endp

			align 16
uXm_mm_shuffle_epi32_2031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			141
				ret
uXm_mm_shuffle_epi32_2031 endp

			align 16
uXm_mm_shuffle_epi32_2032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			142
				ret
uXm_mm_shuffle_epi32_2032 endp

			align 16
uXm_mm_shuffle_epi32_2033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			143
				ret
uXm_mm_shuffle_epi32_2033 endp

			align 16
uXm_mm_shuffle_epi32_2100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			144
				ret
uXm_mm_shuffle_epi32_2100 endp

			align 16
uXm_mm_shuffle_epi32_2101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			145
				ret
uXm_mm_shuffle_epi32_2101 endp

			align 16
uXm_mm_shuffle_epi32_2102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				pshufd				xmm0,			xmm0,			146
				ret
uXm_mm_shuffle_epi32_2102 endp

			align 16
uXm_mm_shuffle_epi32_2103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			147
				ret
uXm_mm_shuffle_epi32_2103 endp

			align 16
uXm_mm_shuffle_epi32_2110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			148
				ret
uXm_mm_shuffle_epi32_2110 endp

			align 16
uXm_mm_shuffle_epi32_2111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			149
				ret
uXm_mm_shuffle_epi32_2111 endp

			align 16
uXm_mm_shuffle_epi32_2112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			150
				ret
uXm_mm_shuffle_epi32_2112 endp

			align 16
uXm_mm_shuffle_epi32_2113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			151
				ret
uXm_mm_shuffle_epi32_2113 endp

			align 16
uXm_mm_shuffle_epi32_2120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			152
				ret
uXm_mm_shuffle_epi32_2120 endp

			align 16
uXm_mm_shuffle_epi32_2121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			153
				ret
uXm_mm_shuffle_epi32_2121 endp

			align 16
uXm_mm_shuffle_epi32_2122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				pshufd				xmm0,			xmm0,			154
				ret
uXm_mm_shuffle_epi32_2122 endp

			align 16
uXm_mm_shuffle_epi32_2123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			155
				ret
uXm_mm_shuffle_epi32_2123 endp

			align 16
uXm_mm_shuffle_epi32_2130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			156
				ret
uXm_mm_shuffle_epi32_2130 endp

			align 16
uXm_mm_shuffle_epi32_2131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			157
				ret
uXm_mm_shuffle_epi32_2131 endp

			align 16
uXm_mm_shuffle_epi32_2132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			158
				ret
uXm_mm_shuffle_epi32_2132 endp

			align 16
uXm_mm_shuffle_epi32_2133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			159
				ret
uXm_mm_shuffle_epi32_2133 endp

			align 16
uXm_mm_shuffle_epi32_2200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			160
				ret
uXm_mm_shuffle_epi32_2200 endp

			align 16
uXm_mm_shuffle_epi32_2201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			161
				ret
uXm_mm_shuffle_epi32_2201 endp

			align 16
uXm_mm_shuffle_epi32_2202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			162
				ret
uXm_mm_shuffle_epi32_2202 endp

			align 16
uXm_mm_shuffle_epi32_2203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			163
				ret
uXm_mm_shuffle_epi32_2203 endp

			align 16
uXm_mm_shuffle_epi32_2210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			164
				ret
uXm_mm_shuffle_epi32_2210 endp

			align 16
uXm_mm_shuffle_epi32_2211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			165
				ret
uXm_mm_shuffle_epi32_2211 endp

			align 16
uXm_mm_shuffle_epi32_2212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			166
				ret
uXm_mm_shuffle_epi32_2212 endp

			align 16
uXm_mm_shuffle_epi32_2213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			167
				ret
uXm_mm_shuffle_epi32_2213 endp

			align 16
uXm_mm_shuffle_epi32_2220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			168
				ret
uXm_mm_shuffle_epi32_2220 endp

			align 16
uXm_mm_shuffle_epi32_2221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			169
				ret
uXm_mm_shuffle_epi32_2221 endp

			align 16
uXm_mm_shuffle_epi32_2222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			170
				ret
uXm_mm_shuffle_epi32_2222 endp

			align 16
uXm_mm_shuffle_epi32_2223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			171
				ret
uXm_mm_shuffle_epi32_2223 endp

			align 16
uXm_mm_shuffle_epi32_2230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			172
				ret
uXm_mm_shuffle_epi32_2230 endp

			align 16
uXm_mm_shuffle_epi32_2231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			173
				ret
uXm_mm_shuffle_epi32_2231 endp

			align 16
uXm_mm_shuffle_epi32_2232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				pshufd				xmm0,			xmm0,			174
				ret
uXm_mm_shuffle_epi32_2232 endp

			align 16
uXm_mm_shuffle_epi32_2233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			175
				ret
uXm_mm_shuffle_epi32_2233 endp

			align 16
uXm_mm_shuffle_epi32_2300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			176
				ret
uXm_mm_shuffle_epi32_2300 endp

			align 16
uXm_mm_shuffle_epi32_2301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			177
				ret
uXm_mm_shuffle_epi32_2301 endp

			align 16
uXm_mm_shuffle_epi32_2302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			178
				ret
uXm_mm_shuffle_epi32_2302 endp

			align 16
uXm_mm_shuffle_epi32_2303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			179
				ret
uXm_mm_shuffle_epi32_2303 endp

			align 16
uXm_mm_shuffle_epi32_2310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			180
				ret
uXm_mm_shuffle_epi32_2310 endp

			align 16
uXm_mm_shuffle_epi32_2311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			181
				ret
uXm_mm_shuffle_epi32_2311 endp

			align 16
uXm_mm_shuffle_epi32_2312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			182
				ret
uXm_mm_shuffle_epi32_2312 endp

			align 16
uXm_mm_shuffle_epi32_2313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			183
				ret
uXm_mm_shuffle_epi32_2313 endp

			align 16
uXm_mm_shuffle_epi32_2320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			184
				ret
uXm_mm_shuffle_epi32_2320 endp

			align 16
uXm_mm_shuffle_epi32_2321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			185
				ret
uXm_mm_shuffle_epi32_2321 endp

			align 16
uXm_mm_shuffle_epi32_2322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			186
				ret
uXm_mm_shuffle_epi32_2322 endp

			align 16
uXm_mm_shuffle_epi32_2323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			187
				ret
uXm_mm_shuffle_epi32_2323 endp

			align 16
uXm_mm_shuffle_epi32_2330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			188
				ret
uXm_mm_shuffle_epi32_2330 endp

			align 16
uXm_mm_shuffle_epi32_2331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			189
				ret
uXm_mm_shuffle_epi32_2331 endp

			align 16
uXm_mm_shuffle_epi32_2332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			190
				ret
uXm_mm_shuffle_epi32_2332 endp

			align 16
uXm_mm_shuffle_epi32_2333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			191
				ret
uXm_mm_shuffle_epi32_2333 endp

			align 16
uXm_mm_shuffle_epi32_3000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			192
				ret
uXm_mm_shuffle_epi32_3000 endp

			align 16
uXm_mm_shuffle_epi32_3001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			193
				ret
uXm_mm_shuffle_epi32_3001 endp

			align 16
uXm_mm_shuffle_epi32_3002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			194
				ret
uXm_mm_shuffle_epi32_3002 endp

			align 16
uXm_mm_shuffle_epi32_3003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			195
				ret
uXm_mm_shuffle_epi32_3003 endp

			align 16
uXm_mm_shuffle_epi32_3010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			196
				ret
uXm_mm_shuffle_epi32_3010 endp

			align 16
uXm_mm_shuffle_epi32_3011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			197
				ret
uXm_mm_shuffle_epi32_3011 endp

			align 16
uXm_mm_shuffle_epi32_3012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			198
				ret
uXm_mm_shuffle_epi32_3012 endp

			align 16
uXm_mm_shuffle_epi32_3013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			199
				ret
uXm_mm_shuffle_epi32_3013 endp

			align 16
uXm_mm_shuffle_epi32_3020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			200
				ret
uXm_mm_shuffle_epi32_3020 endp

			align 16
uXm_mm_shuffle_epi32_3021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			201
				ret
uXm_mm_shuffle_epi32_3021 endp

			align 16
uXm_mm_shuffle_epi32_3022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			202
				ret
uXm_mm_shuffle_epi32_3022 endp

			align 16
uXm_mm_shuffle_epi32_3023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			203
				ret
uXm_mm_shuffle_epi32_3023 endp

			align 16
uXm_mm_shuffle_epi32_3030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			204
				ret
uXm_mm_shuffle_epi32_3030 endp

			align 16
uXm_mm_shuffle_epi32_3031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			205
				ret
uXm_mm_shuffle_epi32_3031 endp

			align 16
uXm_mm_shuffle_epi32_3032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			206
				ret
uXm_mm_shuffle_epi32_3032 endp

			align 16
uXm_mm_shuffle_epi32_3033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			207
				ret
uXm_mm_shuffle_epi32_3033 endp

			align 16
uXm_mm_shuffle_epi32_3100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			208
				ret
uXm_mm_shuffle_epi32_3100 endp

			align 16
uXm_mm_shuffle_epi32_3101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			209
				ret
uXm_mm_shuffle_epi32_3101 endp

			align 16
uXm_mm_shuffle_epi32_3102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			210
				ret
uXm_mm_shuffle_epi32_3102 endp

			align 16
uXm_mm_shuffle_epi32_3103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			211
				ret
uXm_mm_shuffle_epi32_3103 endp

			align 16
uXm_mm_shuffle_epi32_3110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			212
				ret
uXm_mm_shuffle_epi32_3110 endp

			align 16
uXm_mm_shuffle_epi32_3111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			213
				ret
uXm_mm_shuffle_epi32_3111 endp

			align 16
uXm_mm_shuffle_epi32_3112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			214
				ret
uXm_mm_shuffle_epi32_3112 endp

			align 16
uXm_mm_shuffle_epi32_3113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			215
				ret
uXm_mm_shuffle_epi32_3113 endp

			align 16
uXm_mm_shuffle_epi32_3120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			216
				ret
uXm_mm_shuffle_epi32_3120 endp

			align 16
uXm_mm_shuffle_epi32_3121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			217
				ret
uXm_mm_shuffle_epi32_3121 endp

			align 16
uXm_mm_shuffle_epi32_3122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			218
				ret
uXm_mm_shuffle_epi32_3122 endp

			align 16
uXm_mm_shuffle_epi32_3123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			219
				ret
uXm_mm_shuffle_epi32_3123 endp

			align 16
uXm_mm_shuffle_epi32_3130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			220
				ret
uXm_mm_shuffle_epi32_3130 endp

			align 16
uXm_mm_shuffle_epi32_3131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			221
				ret
uXm_mm_shuffle_epi32_3131 endp

			align 16
uXm_mm_shuffle_epi32_3132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			222
				ret
uXm_mm_shuffle_epi32_3132 endp

			align 16
uXm_mm_shuffle_epi32_3133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			223
				ret
uXm_mm_shuffle_epi32_3133 endp

			align 16
uXm_mm_shuffle_epi32_3200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			224
				ret
uXm_mm_shuffle_epi32_3200 endp

			align 16
uXm_mm_shuffle_epi32_3201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			225
				ret
uXm_mm_shuffle_epi32_3201 endp

			align 16
uXm_mm_shuffle_epi32_3202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			226
				ret
uXm_mm_shuffle_epi32_3202 endp

			align 16
uXm_mm_shuffle_epi32_3203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			227
				ret
uXm_mm_shuffle_epi32_3203 endp

			align 16
uXm_mm_shuffle_epi32_3210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			228
				ret
uXm_mm_shuffle_epi32_3210 endp

			align 16
uXm_mm_shuffle_epi32_3211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			229
				ret
uXm_mm_shuffle_epi32_3211 endp

			align 16
uXm_mm_shuffle_epi32_3212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			230
				ret
uXm_mm_shuffle_epi32_3212 endp

			align 16
uXm_mm_shuffle_epi32_3213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			231
				ret
uXm_mm_shuffle_epi32_3213 endp

			align 16
uXm_mm_shuffle_epi32_3220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			232
				ret
uXm_mm_shuffle_epi32_3220 endp

			align 16
uXm_mm_shuffle_epi32_3221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			233
				ret
uXm_mm_shuffle_epi32_3221 endp

			align 16
uXm_mm_shuffle_epi32_3222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			234
				ret
uXm_mm_shuffle_epi32_3222 endp

			align 16
uXm_mm_shuffle_epi32_3223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			235
				ret
uXm_mm_shuffle_epi32_3223 endp

			align 16
uXm_mm_shuffle_epi32_3230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			236
				ret
uXm_mm_shuffle_epi32_3230 endp

			align 16
uXm_mm_shuffle_epi32_3231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			237
				ret
uXm_mm_shuffle_epi32_3231 endp

			align 16
uXm_mm_shuffle_epi32_3232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			238
				ret
uXm_mm_shuffle_epi32_3232 endp

			align 16
uXm_mm_shuffle_epi32_3233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			239
				ret
uXm_mm_shuffle_epi32_3233 endp

			align 16
uXm_mm_shuffle_epi32_3300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			240
				ret
uXm_mm_shuffle_epi32_3300 endp

			align 16
uXm_mm_shuffle_epi32_3301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			241
				ret
uXm_mm_shuffle_epi32_3301 endp

			align 16
uXm_mm_shuffle_epi32_3302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			242
				ret
uXm_mm_shuffle_epi32_3302 endp

			align 16
uXm_mm_shuffle_epi32_3303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			243
				ret
uXm_mm_shuffle_epi32_3303 endp

			align 16
uXm_mm_shuffle_epi32_3310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			244
				ret
uXm_mm_shuffle_epi32_3310 endp

			align 16
uXm_mm_shuffle_epi32_3311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			245
				ret
uXm_mm_shuffle_epi32_3311 endp

			align 16
uXm_mm_shuffle_epi32_3312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			246
				ret
uXm_mm_shuffle_epi32_3312 endp

			align 16
uXm_mm_shuffle_epi32_3313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			247
				ret
uXm_mm_shuffle_epi32_3313 endp

			align 16
uXm_mm_shuffle_epi32_3320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			248
				ret
uXm_mm_shuffle_epi32_3320 endp

			align 16
uXm_mm_shuffle_epi32_3321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			249
				ret
uXm_mm_shuffle_epi32_3321 endp

			align 16
uXm_mm_shuffle_epi32_3322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			250
				ret
uXm_mm_shuffle_epi32_3322 endp

			align 16
uXm_mm_shuffle_epi32_3323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			251
				ret
uXm_mm_shuffle_epi32_3323 endp

			align 16
uXm_mm_shuffle_epi32_3330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			252
				ret
uXm_mm_shuffle_epi32_3330 endp

			align 16
uXm_mm_shuffle_epi32_3331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			253
				ret
uXm_mm_shuffle_epi32_3331 endp

			align 16
uXm_mm_shuffle_epi32_3332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			254
				ret
uXm_mm_shuffle_epi32_3332 endp

			align 16
uXm_mm_shuffle_epi32_3333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufd				xmm0,			xmm0,			255
				ret
uXm_mm_shuffle_epi32_3333 endp

			align 16
uXm_mm_shuffle_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword
				
		ifndef __X64__
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam3]
			lea				ebx,			[mmshufepi32jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmshufepi32jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam3]
			lea				rbx,			[mmshufepi32jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmshufepi32jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmshufepi32word		textequ		<dword>
			mmshufepi32iword 	textequ		<dd>
		else
			mmshufepi32word		textequ		<qword>
			mmshufepi32iword 	textequ		<dq>
		endif
		
		mmshufepi32jmptable label mmshufepi32word
			mmshufepi32iword offset mmshufepi32_0, offset mmshufepi32_1, offset mmshufepi32_2, offset mmshufepi32_3, offset mmshufepi32_4, offset mmshufepi32_5, offset mmshufepi32_6, offset mmshufepi32_7, offset mmshufepi32_8, offset mmshufepi32_9, offset mmshufepi32_10, offset mmshufepi32_11, offset mmshufepi32_12, offset mmshufepi32_13, offset mmshufepi32_14, offset mmshufepi32_15, offset mmshufepi32_16, offset mmshufepi32_17, offset mmshufepi32_18, offset mmshufepi32_19, offset mmshufepi32_20, offset mmshufepi32_21, offset mmshufepi32_22, offset mmshufepi32_23, offset mmshufepi32_24, offset mmshufepi32_25
			mmshufepi32iword offset mmshufepi32_26, offset mmshufepi32_27, offset mmshufepi32_28, offset mmshufepi32_29, offset mmshufepi32_30, offset mmshufepi32_31, offset mmshufepi32_32, offset mmshufepi32_33, offset mmshufepi32_34, offset mmshufepi32_35, offset mmshufepi32_36, offset mmshufepi32_37, offset mmshufepi32_38, offset mmshufepi32_39, offset mmshufepi32_40, offset mmshufepi32_41, offset mmshufepi32_42, offset mmshufepi32_43, offset mmshufepi32_44, offset mmshufepi32_45, offset mmshufepi32_46, offset mmshufepi32_47, offset mmshufepi32_48, offset mmshufepi32_49, offset mmshufepi32_50
			mmshufepi32iword offset mmshufepi32_51, offset mmshufepi32_52, offset mmshufepi32_53, offset mmshufepi32_54, offset mmshufepi32_55, offset mmshufepi32_56, offset mmshufepi32_57, offset mmshufepi32_58, offset mmshufepi32_59, offset mmshufepi32_60, offset mmshufepi32_61, offset mmshufepi32_62, offset mmshufepi32_63, offset mmshufepi32_64, offset mmshufepi32_65, offset mmshufepi32_66, offset mmshufepi32_67, offset mmshufepi32_68, offset mmshufepi32_69, offset mmshufepi32_70, offset mmshufepi32_71, offset mmshufepi32_72, offset mmshufepi32_73, offset mmshufepi32_74, offset mmshufepi32_75
			mmshufepi32iword offset mmshufepi32_76, offset mmshufepi32_77, offset mmshufepi32_78, offset mmshufepi32_79, offset mmshufepi32_80, offset mmshufepi32_81, offset mmshufepi32_82, offset mmshufepi32_83, offset mmshufepi32_84, offset mmshufepi32_85, offset mmshufepi32_86, offset mmshufepi32_87, offset mmshufepi32_88, offset mmshufepi32_89, offset mmshufepi32_90, offset mmshufepi32_91, offset mmshufepi32_92, offset mmshufepi32_93, offset mmshufepi32_94, offset mmshufepi32_95, offset mmshufepi32_96, offset mmshufepi32_97, offset mmshufepi32_98, offset mmshufepi32_99, offset mmshufepi32_100
			mmshufepi32iword offset mmshufepi32_101, offset mmshufepi32_102, offset mmshufepi32_103, offset mmshufepi32_104, offset mmshufepi32_105, offset mmshufepi32_106, offset mmshufepi32_107, offset mmshufepi32_108, offset mmshufepi32_109, offset mmshufepi32_110, offset mmshufepi32_111, offset mmshufepi32_112, offset mmshufepi32_113, offset mmshufepi32_114, offset mmshufepi32_115, offset mmshufepi32_116, offset mmshufepi32_117, offset mmshufepi32_118, offset mmshufepi32_119, offset mmshufepi32_120, offset mmshufepi32_121, offset mmshufepi32_122, offset mmshufepi32_123, offset mmshufepi32_124, offset mmshufepi32_125
			mmshufepi32iword offset mmshufepi32_126, offset mmshufepi32_127, offset mmshufepi32_128, offset mmshufepi32_129, offset mmshufepi32_130, offset mmshufepi32_131, offset mmshufepi32_132, offset mmshufepi32_133, offset mmshufepi32_134, offset mmshufepi32_135, offset mmshufepi32_136, offset mmshufepi32_137, offset mmshufepi32_138, offset mmshufepi32_139, offset mmshufepi32_140, offset mmshufepi32_141, offset mmshufepi32_142, offset mmshufepi32_143, offset mmshufepi32_144, offset mmshufepi32_145, offset mmshufepi32_146, offset mmshufepi32_147, offset mmshufepi32_148, offset mmshufepi32_149, offset mmshufepi32_150
			mmshufepi32iword offset mmshufepi32_151, offset mmshufepi32_152, offset mmshufepi32_153, offset mmshufepi32_154, offset mmshufepi32_155, offset mmshufepi32_156, offset mmshufepi32_157, offset mmshufepi32_158, offset mmshufepi32_159, offset mmshufepi32_160, offset mmshufepi32_161, offset mmshufepi32_162, offset mmshufepi32_163, offset mmshufepi32_164, offset mmshufepi32_165, offset mmshufepi32_166, offset mmshufepi32_167, offset mmshufepi32_168, offset mmshufepi32_169, offset mmshufepi32_170, offset mmshufepi32_171, offset mmshufepi32_172, offset mmshufepi32_173, offset mmshufepi32_174, offset mmshufepi32_175
			mmshufepi32iword offset mmshufepi32_176, offset mmshufepi32_177, offset mmshufepi32_178, offset mmshufepi32_179, offset mmshufepi32_180, offset mmshufepi32_181, offset mmshufepi32_182, offset mmshufepi32_183, offset mmshufepi32_184, offset mmshufepi32_185, offset mmshufepi32_186, offset mmshufepi32_187, offset mmshufepi32_188, offset mmshufepi32_189, offset mmshufepi32_190, offset mmshufepi32_191, offset mmshufepi32_192, offset mmshufepi32_193, offset mmshufepi32_194, offset mmshufepi32_195, offset mmshufepi32_196, offset mmshufepi32_197, offset mmshufepi32_198, offset mmshufepi32_199, offset mmshufepi32_200
			mmshufepi32iword offset mmshufepi32_201, offset mmshufepi32_202, offset mmshufepi32_203, offset mmshufepi32_204, offset mmshufepi32_205, offset mmshufepi32_206, offset mmshufepi32_207, offset mmshufepi32_208, offset mmshufepi32_209, offset mmshufepi32_210, offset mmshufepi32_211, offset mmshufepi32_212, offset mmshufepi32_213, offset mmshufepi32_214, offset mmshufepi32_215, offset mmshufepi32_216, offset mmshufepi32_217, offset mmshufepi32_218, offset mmshufepi32_219, offset mmshufepi32_220, offset mmshufepi32_221, offset mmshufepi32_222, offset mmshufepi32_223, offset mmshufepi32_224, offset mmshufepi32_225
			mmshufepi32iword offset mmshufepi32_226, offset mmshufepi32_227, offset mmshufepi32_228, offset mmshufepi32_229, offset mmshufepi32_230, offset mmshufepi32_231, offset mmshufepi32_232, offset mmshufepi32_233, offset mmshufepi32_234, offset mmshufepi32_235, offset mmshufepi32_236, offset mmshufepi32_237, offset mmshufepi32_238, offset mmshufepi32_239, offset mmshufepi32_240, offset mmshufepi32_241, offset mmshufepi32_242, offset mmshufepi32_243, offset mmshufepi32_244, offset mmshufepi32_245, offset mmshufepi32_246, offset mmshufepi32_247, offset mmshufepi32_248, offset mmshufepi32_249, offset mmshufepi32_250
			mmshufepi32iword offset mmshufepi32_251, offset mmshufepi32_252, offset mmshufepi32_253, offset mmshufepi32_254, offset mmshufepi32_255				

			mmshufepi32_0 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0000
			mmshufepi32_1 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0001
			mmshufepi32_2 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0002
			mmshufepi32_3 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0003
			mmshufepi32_4 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0010
			mmshufepi32_5 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0011
			mmshufepi32_6 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0012
			mmshufepi32_7 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0013
			mmshufepi32_8 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0020
			mmshufepi32_9 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0021
			mmshufepi32_10 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0022
			mmshufepi32_11 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0023
			mmshufepi32_12 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0030
			mmshufepi32_13 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0031
			mmshufepi32_14 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0032
			mmshufepi32_15 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0033
			mmshufepi32_16 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0100
			mmshufepi32_17 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0101
			mmshufepi32_18 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0102
			mmshufepi32_19 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0103
			mmshufepi32_20 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0110
			mmshufepi32_21 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0111
			mmshufepi32_22 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0112
			mmshufepi32_23 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0113
			mmshufepi32_24 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0120
			mmshufepi32_25 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0121
			mmshufepi32_26 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0122
			mmshufepi32_27 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0123
			mmshufepi32_28 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0130
			mmshufepi32_29 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0131
			mmshufepi32_30 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0132
			mmshufepi32_31 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0133
			mmshufepi32_32 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0200
			mmshufepi32_33 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0201
			mmshufepi32_34 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0202
			mmshufepi32_35 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0203
			mmshufepi32_36 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0210
			mmshufepi32_37 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0211
			mmshufepi32_38 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0212
			mmshufepi32_39 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0213
			mmshufepi32_40 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0220
			mmshufepi32_41 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0221
			mmshufepi32_42 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0222
			mmshufepi32_43 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0223
			mmshufepi32_44 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0230
			mmshufepi32_45 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0231
			mmshufepi32_46 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0232
			mmshufepi32_47 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0233
			mmshufepi32_48 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0300
			mmshufepi32_49 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0301
			mmshufepi32_50 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0302
			mmshufepi32_51 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0303
			mmshufepi32_52 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0310
			mmshufepi32_53 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0311
			mmshufepi32_54 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0312
			mmshufepi32_55 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0313
			mmshufepi32_56 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0320
			mmshufepi32_57 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0321
			mmshufepi32_58 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0322
			mmshufepi32_59 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0323
			mmshufepi32_60 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0330
			mmshufepi32_61 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0331
			mmshufepi32_62 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0332
			mmshufepi32_63 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_0333
			mmshufepi32_64 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1000
			mmshufepi32_65 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1001
			mmshufepi32_66 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1002
			mmshufepi32_67 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1003
			mmshufepi32_68 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1010
			mmshufepi32_69 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1011
			mmshufepi32_70 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1012
			mmshufepi32_71 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1013
			mmshufepi32_72 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1020
			mmshufepi32_73 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1021
			mmshufepi32_74 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1022
			mmshufepi32_75 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1023
			mmshufepi32_76 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1030
			mmshufepi32_77 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1031
			mmshufepi32_78 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1032
			mmshufepi32_79 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1033
			mmshufepi32_80 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1100
			mmshufepi32_81 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1101
			mmshufepi32_82 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1102
			mmshufepi32_83 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1103
			mmshufepi32_84 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1110
			mmshufepi32_85 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1111
			mmshufepi32_86 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1112
			mmshufepi32_87 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1113
			mmshufepi32_88 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1120
			mmshufepi32_89 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1121
			mmshufepi32_90 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1122
			mmshufepi32_91 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1123
			mmshufepi32_92 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1130
			mmshufepi32_93 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1131
			mmshufepi32_94 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1132
			mmshufepi32_95 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1133
			mmshufepi32_96 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1200
			mmshufepi32_97 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1201
			mmshufepi32_98 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1202
			mmshufepi32_99 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1203
			mmshufepi32_100 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1210
			mmshufepi32_101 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1211
			mmshufepi32_102 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1212
			mmshufepi32_103 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1213
			mmshufepi32_104 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1220
			mmshufepi32_105 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1221
			mmshufepi32_106 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1222
			mmshufepi32_107 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1223
			mmshufepi32_108 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1230
			mmshufepi32_109 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1231
			mmshufepi32_110 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1232
			mmshufepi32_111 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1233
			mmshufepi32_112 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1300
			mmshufepi32_113 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1301
			mmshufepi32_114 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1302
			mmshufepi32_115 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1303
			mmshufepi32_116 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1310
			mmshufepi32_117 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1311
			mmshufepi32_118 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1312
			mmshufepi32_119 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1313
			mmshufepi32_120 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1320
			mmshufepi32_121 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1321
			mmshufepi32_122 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1322
			mmshufepi32_123 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1323
			mmshufepi32_124 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1330
			mmshufepi32_125 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1331
			mmshufepi32_126 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1332
			mmshufepi32_127 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_1333
			mmshufepi32_128 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2000
			mmshufepi32_129 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2001
			mmshufepi32_130 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2002
			mmshufepi32_131 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2003
			mmshufepi32_132 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2010
			mmshufepi32_133 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2011
			mmshufepi32_134 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2012
			mmshufepi32_135 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2013
			mmshufepi32_136 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2020
			mmshufepi32_137 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2021
			mmshufepi32_138 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2022
			mmshufepi32_139 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2023
			mmshufepi32_140 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2030
			mmshufepi32_141 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2031
			mmshufepi32_142 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2032
			mmshufepi32_143 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2033
			mmshufepi32_144 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2100
			mmshufepi32_145 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2101
			mmshufepi32_146 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2102
			mmshufepi32_147 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2103
			mmshufepi32_148 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2110
			mmshufepi32_149 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2111
			mmshufepi32_150 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2112
			mmshufepi32_151 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2113
			mmshufepi32_152 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2120
			mmshufepi32_153 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2121
			mmshufepi32_154 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2122
			mmshufepi32_155 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2123
			mmshufepi32_156 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2130
			mmshufepi32_157 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2131
			mmshufepi32_158 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2132
			mmshufepi32_159 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2133
			mmshufepi32_160 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2200
			mmshufepi32_161 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2201
			mmshufepi32_162 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2202
			mmshufepi32_163 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2203
			mmshufepi32_164 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2210
			mmshufepi32_165 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2211
			mmshufepi32_166 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2212
			mmshufepi32_167 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2213
			mmshufepi32_168 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2220
			mmshufepi32_169 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2221
			mmshufepi32_170 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2222
			mmshufepi32_171 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2223
			mmshufepi32_172 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2230
			mmshufepi32_173 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2231
			mmshufepi32_174 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2232
			mmshufepi32_175 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2233
			mmshufepi32_176 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2300
			mmshufepi32_177 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2301
			mmshufepi32_178 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2302
			mmshufepi32_179 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2303
			mmshufepi32_180 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2310
			mmshufepi32_181 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2311
			mmshufepi32_182 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2312
			mmshufepi32_183 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2313
			mmshufepi32_184 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2320
			mmshufepi32_185 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2321
			mmshufepi32_186 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2322
			mmshufepi32_187 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2323
			mmshufepi32_188 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2330
			mmshufepi32_189 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2331
			mmshufepi32_190 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2332
			mmshufepi32_191 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_2333
			mmshufepi32_192 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3000
			mmshufepi32_193 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3001
			mmshufepi32_194 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3002
			mmshufepi32_195 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3003
			mmshufepi32_196 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3010
			mmshufepi32_197 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3011
			mmshufepi32_198 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3012
			mmshufepi32_199 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3013
			mmshufepi32_200 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3020
			mmshufepi32_201 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3021
			mmshufepi32_202 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3022
			mmshufepi32_203 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3023
			mmshufepi32_204 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3030
			mmshufepi32_205 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3031
			mmshufepi32_206 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3032
			mmshufepi32_207 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3033
			mmshufepi32_208 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3100
			mmshufepi32_209 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3101
			mmshufepi32_210 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3102
			mmshufepi32_211 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3103
			mmshufepi32_212 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3110
			mmshufepi32_213 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3111
			mmshufepi32_214 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3112
			mmshufepi32_215 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3113
			mmshufepi32_216 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3120
			mmshufepi32_217 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3121
			mmshufepi32_218 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3122
			mmshufepi32_219 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3123
			mmshufepi32_220 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3130
			mmshufepi32_221 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3131
			mmshufepi32_222 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3132
			mmshufepi32_223 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3133
			mmshufepi32_224 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3200
			mmshufepi32_225 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3201
			mmshufepi32_226 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3202
			mmshufepi32_227 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3203
			mmshufepi32_228 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3210
			mmshufepi32_229 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3211
			mmshufepi32_230 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3212
			mmshufepi32_231 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3213
			mmshufepi32_232 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3220
			mmshufepi32_233 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3221
			mmshufepi32_234 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3222
			mmshufepi32_235 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3223
			mmshufepi32_236 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3230
			mmshufepi32_237 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3231
			mmshufepi32_238 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3232
			mmshufepi32_239 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3233
			mmshufepi32_240 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3300
			mmshufepi32_241 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3301
			mmshufepi32_242 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3302
			mmshufepi32_243 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3303
			mmshufepi32_244 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3310
			mmshufepi32_245 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3311
			mmshufepi32_246 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3312
			mmshufepi32_247 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3313
			mmshufepi32_248 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3320
			mmshufepi32_249 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3321
			mmshufepi32_250 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3322
			mmshufepi32_251 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3323
			mmshufepi32_252 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3330
			mmshufepi32_253 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3331
			mmshufepi32_254 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3332
			mmshufepi32_255 label mmshufepi32word
				jmp		uXm_mm_shuffle_epi32_3333

uXm_mm_shuffle_epi32 endp

			align 16
uXm_mm_shufflehi_epi16_0000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			0
				ret
uXm_mm_shufflehi_epi16_0000 endp

			align 16
uXm_mm_shufflehi_epi16_0001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			1
				ret
uXm_mm_shufflehi_epi16_0001 endp

			align 16
uXm_mm_shufflehi_epi16_0002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			2
				ret
uXm_mm_shufflehi_epi16_0002 endp

			align 16
uXm_mm_shufflehi_epi16_0003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			3
				ret
uXm_mm_shufflehi_epi16_0003 endp

			align 16
uXm_mm_shufflehi_epi16_0010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			4
				ret
uXm_mm_shufflehi_epi16_0010 endp

			align 16
uXm_mm_shufflehi_epi16_0011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			5
				ret
uXm_mm_shufflehi_epi16_0011 endp

			align 16
uXm_mm_shufflehi_epi16_0012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			6
				ret
uXm_mm_shufflehi_epi16_0012 endp

			align 16
uXm_mm_shufflehi_epi16_0013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			7
				ret
uXm_mm_shufflehi_epi16_0013 endp

			align 16
uXm_mm_shufflehi_epi16_0020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			8
				ret
uXm_mm_shufflehi_epi16_0020 endp

			align 16
uXm_mm_shufflehi_epi16_0021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			9
				ret
uXm_mm_shufflehi_epi16_0021 endp

			align 16
uXm_mm_shufflehi_epi16_0022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			10
				ret
uXm_mm_shufflehi_epi16_0022 endp

			align 16
uXm_mm_shufflehi_epi16_0023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			11
				ret
uXm_mm_shufflehi_epi16_0023 endp

			align 16
uXm_mm_shufflehi_epi16_0030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			12
				ret
uXm_mm_shufflehi_epi16_0030 endp

			align 16
uXm_mm_shufflehi_epi16_0031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			13
				ret
uXm_mm_shufflehi_epi16_0031 endp

			align 16
uXm_mm_shufflehi_epi16_0032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			14
				ret
uXm_mm_shufflehi_epi16_0032 endp

			align 16
uXm_mm_shufflehi_epi16_0033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			15
				ret
uXm_mm_shufflehi_epi16_0033 endp

			align 16
uXm_mm_shufflehi_epi16_0100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			16
				ret
uXm_mm_shufflehi_epi16_0100 endp

			align 16
uXm_mm_shufflehi_epi16_0101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			17
				ret
uXm_mm_shufflehi_epi16_0101 endp

			align 16
uXm_mm_shufflehi_epi16_0102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			18
				ret
uXm_mm_shufflehi_epi16_0102 endp

			align 16
uXm_mm_shufflehi_epi16_0103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			19
				ret
uXm_mm_shufflehi_epi16_0103 endp

			align 16
uXm_mm_shufflehi_epi16_0110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			20
				ret
uXm_mm_shufflehi_epi16_0110 endp

			align 16
uXm_mm_shufflehi_epi16_0111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			21
				ret
uXm_mm_shufflehi_epi16_0111 endp

			align 16
uXm_mm_shufflehi_epi16_0112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			22
				ret
uXm_mm_shufflehi_epi16_0112 endp

			align 16
uXm_mm_shufflehi_epi16_0113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			23
				ret
uXm_mm_shufflehi_epi16_0113 endp

			align 16
uXm_mm_shufflehi_epi16_0120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			24
				ret
uXm_mm_shufflehi_epi16_0120 endp

			align 16
uXm_mm_shufflehi_epi16_0121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			25
				ret
uXm_mm_shufflehi_epi16_0121 endp

			align 16
uXm_mm_shufflehi_epi16_0122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			26
				ret
uXm_mm_shufflehi_epi16_0122 endp

			align 16
uXm_mm_shufflehi_epi16_0123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			27
				ret
uXm_mm_shufflehi_epi16_0123 endp

			align 16
uXm_mm_shufflehi_epi16_0130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			28
				ret
uXm_mm_shufflehi_epi16_0130 endp

			align 16
uXm_mm_shufflehi_epi16_0131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			29
				ret
uXm_mm_shufflehi_epi16_0131 endp

			align 16
uXm_mm_shufflehi_epi16_0132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			30
				ret
uXm_mm_shufflehi_epi16_0132 endp

			align 16
uXm_mm_shufflehi_epi16_0133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			31
				ret
uXm_mm_shufflehi_epi16_0133 endp

			align 16
uXm_mm_shufflehi_epi16_0200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			32
				ret
uXm_mm_shufflehi_epi16_0200 endp

			align 16
uXm_mm_shufflehi_epi16_0201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			33
				ret
uXm_mm_shufflehi_epi16_0201 endp

			align 16
uXm_mm_shufflehi_epi16_0202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			34
				ret
uXm_mm_shufflehi_epi16_0202 endp

			align 16
uXm_mm_shufflehi_epi16_0203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			35
				ret
uXm_mm_shufflehi_epi16_0203 endp

			align 16
uXm_mm_shufflehi_epi16_0210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			36
				ret
uXm_mm_shufflehi_epi16_0210 endp

			align 16
uXm_mm_shufflehi_epi16_0211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			37
				ret
uXm_mm_shufflehi_epi16_0211 endp

			align 16
uXm_mm_shufflehi_epi16_0212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			38
				ret
uXm_mm_shufflehi_epi16_0212 endp

			align 16
uXm_mm_shufflehi_epi16_0213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			39
				ret
uXm_mm_shufflehi_epi16_0213 endp

			align 16
uXm_mm_shufflehi_epi16_0220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			40
				ret
uXm_mm_shufflehi_epi16_0220 endp

			align 16
uXm_mm_shufflehi_epi16_0221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			41
				ret
uXm_mm_shufflehi_epi16_0221 endp

			align 16
uXm_mm_shufflehi_epi16_0222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			42
				ret
uXm_mm_shufflehi_epi16_0222 endp

			align 16
uXm_mm_shufflehi_epi16_0223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			43
				ret
uXm_mm_shufflehi_epi16_0223 endp

			align 16
uXm_mm_shufflehi_epi16_0230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			44
				ret
uXm_mm_shufflehi_epi16_0230 endp

			align 16
uXm_mm_shufflehi_epi16_0231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			45
				ret
uXm_mm_shufflehi_epi16_0231 endp

			align 16
uXm_mm_shufflehi_epi16_0232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			46
				ret
uXm_mm_shufflehi_epi16_0232 endp

			align 16
uXm_mm_shufflehi_epi16_0233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			47
				ret
uXm_mm_shufflehi_epi16_0233 endp

			align 16
uXm_mm_shufflehi_epi16_0300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			48
				ret
uXm_mm_shufflehi_epi16_0300 endp

			align 16
uXm_mm_shufflehi_epi16_0301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			49
				ret
uXm_mm_shufflehi_epi16_0301 endp

			align 16
uXm_mm_shufflehi_epi16_0302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			50
				ret
uXm_mm_shufflehi_epi16_0302 endp

			align 16
uXm_mm_shufflehi_epi16_0303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			51
				ret
uXm_mm_shufflehi_epi16_0303 endp

			align 16
uXm_mm_shufflehi_epi16_0310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			52
				ret
uXm_mm_shufflehi_epi16_0310 endp

			align 16
uXm_mm_shufflehi_epi16_0311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			53
				ret
uXm_mm_shufflehi_epi16_0311 endp

			align 16
uXm_mm_shufflehi_epi16_0312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			54
				ret
uXm_mm_shufflehi_epi16_0312 endp

			align 16
uXm_mm_shufflehi_epi16_0313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			55
				ret
uXm_mm_shufflehi_epi16_0313 endp

			align 16
uXm_mm_shufflehi_epi16_0320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			56
				ret
uXm_mm_shufflehi_epi16_0320 endp

			align 16
uXm_mm_shufflehi_epi16_0321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			57
				ret
uXm_mm_shufflehi_epi16_0321 endp

			align 16
uXm_mm_shufflehi_epi16_0322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			58
				ret
uXm_mm_shufflehi_epi16_0322 endp

			align 16
uXm_mm_shufflehi_epi16_0323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			59
				ret
uXm_mm_shufflehi_epi16_0323 endp

			align 16
uXm_mm_shufflehi_epi16_0330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			60
				ret
uXm_mm_shufflehi_epi16_0330 endp

			align 16
uXm_mm_shufflehi_epi16_0331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			61
				ret
uXm_mm_shufflehi_epi16_0331 endp

			align 16
uXm_mm_shufflehi_epi16_0332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			62
				ret
uXm_mm_shufflehi_epi16_0332 endp

			align 16
uXm_mm_shufflehi_epi16_0333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			63
				ret
uXm_mm_shufflehi_epi16_0333 endp

			align 16
uXm_mm_shufflehi_epi16_1000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			64
				ret
uXm_mm_shufflehi_epi16_1000 endp

			align 16
uXm_mm_shufflehi_epi16_1001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			65
				ret
uXm_mm_shufflehi_epi16_1001 endp

			align 16
uXm_mm_shufflehi_epi16_1002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			66
				ret
uXm_mm_shufflehi_epi16_1002 endp

			align 16
uXm_mm_shufflehi_epi16_1003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			67
				ret
uXm_mm_shufflehi_epi16_1003 endp

			align 16
uXm_mm_shufflehi_epi16_1010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			68
				ret
uXm_mm_shufflehi_epi16_1010 endp

			align 16
uXm_mm_shufflehi_epi16_1011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			69
				ret
uXm_mm_shufflehi_epi16_1011 endp

			align 16
uXm_mm_shufflehi_epi16_1012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			70
				ret
uXm_mm_shufflehi_epi16_1012 endp

			align 16
uXm_mm_shufflehi_epi16_1013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			71
				ret
uXm_mm_shufflehi_epi16_1013 endp

			align 16
uXm_mm_shufflehi_epi16_1020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			72
				ret
uXm_mm_shufflehi_epi16_1020 endp

			align 16
uXm_mm_shufflehi_epi16_1021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			73
				ret
uXm_mm_shufflehi_epi16_1021 endp

			align 16
uXm_mm_shufflehi_epi16_1022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			74
				ret
uXm_mm_shufflehi_epi16_1022 endp

			align 16
uXm_mm_shufflehi_epi16_1023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			75
				ret
uXm_mm_shufflehi_epi16_1023 endp

			align 16
uXm_mm_shufflehi_epi16_1030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			76
				ret
uXm_mm_shufflehi_epi16_1030 endp

			align 16
uXm_mm_shufflehi_epi16_1031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			77
				ret
uXm_mm_shufflehi_epi16_1031 endp

			align 16
uXm_mm_shufflehi_epi16_1032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			78
				ret
uXm_mm_shufflehi_epi16_1032 endp

			align 16
uXm_mm_shufflehi_epi16_1033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			79
				ret
uXm_mm_shufflehi_epi16_1033 endp

			align 16
uXm_mm_shufflehi_epi16_1100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			80
				ret
uXm_mm_shufflehi_epi16_1100 endp

			align 16
uXm_mm_shufflehi_epi16_1101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			81
				ret
uXm_mm_shufflehi_epi16_1101 endp

			align 16
uXm_mm_shufflehi_epi16_1102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			82
				ret
uXm_mm_shufflehi_epi16_1102 endp

			align 16
uXm_mm_shufflehi_epi16_1103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			83
				ret
uXm_mm_shufflehi_epi16_1103 endp

			align 16
uXm_mm_shufflehi_epi16_1110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			84
				ret
uXm_mm_shufflehi_epi16_1110 endp

			align 16
uXm_mm_shufflehi_epi16_1111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			85
				ret
uXm_mm_shufflehi_epi16_1111 endp

			align 16
uXm_mm_shufflehi_epi16_1112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			86
				ret
uXm_mm_shufflehi_epi16_1112 endp

			align 16
uXm_mm_shufflehi_epi16_1113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			87
				ret
uXm_mm_shufflehi_epi16_1113 endp

			align 16
uXm_mm_shufflehi_epi16_1120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			88
				ret
uXm_mm_shufflehi_epi16_1120 endp

			align 16
uXm_mm_shufflehi_epi16_1121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			89
				ret
uXm_mm_shufflehi_epi16_1121 endp

			align 16
uXm_mm_shufflehi_epi16_1122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			90
				ret
uXm_mm_shufflehi_epi16_1122 endp

			align 16
uXm_mm_shufflehi_epi16_1123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			91
				ret
uXm_mm_shufflehi_epi16_1123 endp

			align 16
uXm_mm_shufflehi_epi16_1130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			92
				ret
uXm_mm_shufflehi_epi16_1130 endp

			align 16
uXm_mm_shufflehi_epi16_1131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			93
				ret
uXm_mm_shufflehi_epi16_1131 endp

			align 16
uXm_mm_shufflehi_epi16_1132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			94
				ret
uXm_mm_shufflehi_epi16_1132 endp

			align 16
uXm_mm_shufflehi_epi16_1133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			95
				ret
uXm_mm_shufflehi_epi16_1133 endp

			align 16
uXm_mm_shufflehi_epi16_1200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			96
				ret
uXm_mm_shufflehi_epi16_1200 endp

			align 16
uXm_mm_shufflehi_epi16_1201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			97
				ret
uXm_mm_shufflehi_epi16_1201 endp

			align 16
uXm_mm_shufflehi_epi16_1202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			98
				ret
uXm_mm_shufflehi_epi16_1202 endp

			align 16
uXm_mm_shufflehi_epi16_1203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			99
				ret
uXm_mm_shufflehi_epi16_1203 endp

			align 16
uXm_mm_shufflehi_epi16_1210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			100
				ret
uXm_mm_shufflehi_epi16_1210 endp

			align 16
uXm_mm_shufflehi_epi16_1211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			101
				ret
uXm_mm_shufflehi_epi16_1211 endp

			align 16
uXm_mm_shufflehi_epi16_1212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			102
				ret
uXm_mm_shufflehi_epi16_1212 endp

			align 16
uXm_mm_shufflehi_epi16_1213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			103
				ret
uXm_mm_shufflehi_epi16_1213 endp

			align 16
uXm_mm_shufflehi_epi16_1220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			104
				ret
uXm_mm_shufflehi_epi16_1220 endp

			align 16
uXm_mm_shufflehi_epi16_1221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			105
				ret
uXm_mm_shufflehi_epi16_1221 endp

			align 16
uXm_mm_shufflehi_epi16_1222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			106
				ret
uXm_mm_shufflehi_epi16_1222 endp

			align 16
uXm_mm_shufflehi_epi16_1223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			107
				ret
uXm_mm_shufflehi_epi16_1223 endp

			align 16
uXm_mm_shufflehi_epi16_1230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			108
				ret
uXm_mm_shufflehi_epi16_1230 endp

			align 16
uXm_mm_shufflehi_epi16_1231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			109
				ret
uXm_mm_shufflehi_epi16_1231 endp

			align 16
uXm_mm_shufflehi_epi16_1232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			110
				ret
uXm_mm_shufflehi_epi16_1232 endp

			align 16
uXm_mm_shufflehi_epi16_1233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			111
				ret
uXm_mm_shufflehi_epi16_1233 endp

			align 16
uXm_mm_shufflehi_epi16_1300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			112
				ret
uXm_mm_shufflehi_epi16_1300 endp

			align 16
uXm_mm_shufflehi_epi16_1301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			113
				ret
uXm_mm_shufflehi_epi16_1301 endp

			align 16
uXm_mm_shufflehi_epi16_1302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			114
				ret
uXm_mm_shufflehi_epi16_1302 endp

			align 16
uXm_mm_shufflehi_epi16_1303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			115
				ret
uXm_mm_shufflehi_epi16_1303 endp

			align 16
uXm_mm_shufflehi_epi16_1310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			116
				ret
uXm_mm_shufflehi_epi16_1310 endp

			align 16
uXm_mm_shufflehi_epi16_1311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			117
				ret
uXm_mm_shufflehi_epi16_1311 endp

			align 16
uXm_mm_shufflehi_epi16_1312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			118
				ret
uXm_mm_shufflehi_epi16_1312 endp

			align 16
uXm_mm_shufflehi_epi16_1313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			119
				ret
uXm_mm_shufflehi_epi16_1313 endp

			align 16
uXm_mm_shufflehi_epi16_1320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			120
				ret
uXm_mm_shufflehi_epi16_1320 endp

			align 16
uXm_mm_shufflehi_epi16_1321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			121
				ret
uXm_mm_shufflehi_epi16_1321 endp

			align 16
uXm_mm_shufflehi_epi16_1322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			122
				ret
uXm_mm_shufflehi_epi16_1322 endp

			align 16
uXm_mm_shufflehi_epi16_1323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			123
				ret
uXm_mm_shufflehi_epi16_1323 endp

			align 16
uXm_mm_shufflehi_epi16_1330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			124
				ret
uXm_mm_shufflehi_epi16_1330 endp

			align 16
uXm_mm_shufflehi_epi16_1331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			125
				ret
uXm_mm_shufflehi_epi16_1331 endp

			align 16
uXm_mm_shufflehi_epi16_1332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			126
				ret
uXm_mm_shufflehi_epi16_1332 endp

			align 16
uXm_mm_shufflehi_epi16_1333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			127
				ret
uXm_mm_shufflehi_epi16_1333 endp

			align 16
uXm_mm_shufflehi_epi16_2000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			128
				ret
uXm_mm_shufflehi_epi16_2000 endp

			align 16
uXm_mm_shufflehi_epi16_2001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			129
				ret
uXm_mm_shufflehi_epi16_2001 endp

			align 16
uXm_mm_shufflehi_epi16_2002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			130
				ret
uXm_mm_shufflehi_epi16_2002 endp

			align 16
uXm_mm_shufflehi_epi16_2003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			131
				ret
uXm_mm_shufflehi_epi16_2003 endp

			align 16
uXm_mm_shufflehi_epi16_2010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			132
				ret
uXm_mm_shufflehi_epi16_2010 endp

			align 16
uXm_mm_shufflehi_epi16_2011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			133
				ret
uXm_mm_shufflehi_epi16_2011 endp

			align 16
uXm_mm_shufflehi_epi16_2012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			134
				ret
uXm_mm_shufflehi_epi16_2012 endp

			align 16
uXm_mm_shufflehi_epi16_2013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			135
				ret
uXm_mm_shufflehi_epi16_2013 endp

			align 16
uXm_mm_shufflehi_epi16_2020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			136
				ret
uXm_mm_shufflehi_epi16_2020 endp

			align 16
uXm_mm_shufflehi_epi16_2021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			137
				ret
uXm_mm_shufflehi_epi16_2021 endp

			align 16
uXm_mm_shufflehi_epi16_2022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			138
				ret
uXm_mm_shufflehi_epi16_2022 endp

			align 16
uXm_mm_shufflehi_epi16_2023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			139
				ret
uXm_mm_shufflehi_epi16_2023 endp

			align 16
uXm_mm_shufflehi_epi16_2030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			140
				ret
uXm_mm_shufflehi_epi16_2030 endp

			align 16
uXm_mm_shufflehi_epi16_2031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			141
				ret
uXm_mm_shufflehi_epi16_2031 endp

			align 16
uXm_mm_shufflehi_epi16_2032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			142
				ret
uXm_mm_shufflehi_epi16_2032 endp

			align 16
uXm_mm_shufflehi_epi16_2033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			143
				ret
uXm_mm_shufflehi_epi16_2033 endp

			align 16
uXm_mm_shufflehi_epi16_2100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			144
				ret
uXm_mm_shufflehi_epi16_2100 endp

			align 16
uXm_mm_shufflehi_epi16_2101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			145
				ret
uXm_mm_shufflehi_epi16_2101 endp

			align 16
uXm_mm_shufflehi_epi16_2102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				pshufhw				xmm0,			xmm0,			146
				ret
uXm_mm_shufflehi_epi16_2102 endp

			align 16
uXm_mm_shufflehi_epi16_2103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			147
				ret
uXm_mm_shufflehi_epi16_2103 endp

			align 16
uXm_mm_shufflehi_epi16_2110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			148
				ret
uXm_mm_shufflehi_epi16_2110 endp

			align 16
uXm_mm_shufflehi_epi16_2111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			149
				ret
uXm_mm_shufflehi_epi16_2111 endp

			align 16
uXm_mm_shufflehi_epi16_2112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			150
				ret
uXm_mm_shufflehi_epi16_2112 endp

			align 16
uXm_mm_shufflehi_epi16_2113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			151
				ret
uXm_mm_shufflehi_epi16_2113 endp

			align 16
uXm_mm_shufflehi_epi16_2120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			152
				ret
uXm_mm_shufflehi_epi16_2120 endp

			align 16
uXm_mm_shufflehi_epi16_2121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			153
				ret
uXm_mm_shufflehi_epi16_2121 endp

			align 16
uXm_mm_shufflehi_epi16_2122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				pshufhw				xmm0,			xmm0,			154
				ret
uXm_mm_shufflehi_epi16_2122 endp

			align 16
uXm_mm_shufflehi_epi16_2123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			155
				ret
uXm_mm_shufflehi_epi16_2123 endp

			align 16
uXm_mm_shufflehi_epi16_2130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			156
				ret
uXm_mm_shufflehi_epi16_2130 endp

			align 16
uXm_mm_shufflehi_epi16_2131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			157
				ret
uXm_mm_shufflehi_epi16_2131 endp

			align 16
uXm_mm_shufflehi_epi16_2132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			158
				ret
uXm_mm_shufflehi_epi16_2132 endp

			align 16
uXm_mm_shufflehi_epi16_2133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			159
				ret
uXm_mm_shufflehi_epi16_2133 endp

			align 16
uXm_mm_shufflehi_epi16_2200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			160
				ret
uXm_mm_shufflehi_epi16_2200 endp

			align 16
uXm_mm_shufflehi_epi16_2201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			161
				ret
uXm_mm_shufflehi_epi16_2201 endp

			align 16
uXm_mm_shufflehi_epi16_2202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			162
				ret
uXm_mm_shufflehi_epi16_2202 endp

			align 16
uXm_mm_shufflehi_epi16_2203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			163
				ret
uXm_mm_shufflehi_epi16_2203 endp

			align 16
uXm_mm_shufflehi_epi16_2210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			164
				ret
uXm_mm_shufflehi_epi16_2210 endp

			align 16
uXm_mm_shufflehi_epi16_2211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			165
				ret
uXm_mm_shufflehi_epi16_2211 endp

			align 16
uXm_mm_shufflehi_epi16_2212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			166
				ret
uXm_mm_shufflehi_epi16_2212 endp

			align 16
uXm_mm_shufflehi_epi16_2213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			167
				ret
uXm_mm_shufflehi_epi16_2213 endp

			align 16
uXm_mm_shufflehi_epi16_2220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			168
				ret
uXm_mm_shufflehi_epi16_2220 endp

			align 16
uXm_mm_shufflehi_epi16_2221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			169
				ret
uXm_mm_shufflehi_epi16_2221 endp

			align 16
uXm_mm_shufflehi_epi16_2222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			170
				ret
uXm_mm_shufflehi_epi16_2222 endp

			align 16
uXm_mm_shufflehi_epi16_2223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			171
				ret
uXm_mm_shufflehi_epi16_2223 endp

			align 16
uXm_mm_shufflehi_epi16_2230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			172
				ret
uXm_mm_shufflehi_epi16_2230 endp

			align 16
uXm_mm_shufflehi_epi16_2231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			173
				ret
uXm_mm_shufflehi_epi16_2231 endp

			align 16
uXm_mm_shufflehi_epi16_2232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				pshufhw				xmm0,			xmm0,			174
				ret
uXm_mm_shufflehi_epi16_2232 endp

			align 16
uXm_mm_shufflehi_epi16_2233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			175
				ret
uXm_mm_shufflehi_epi16_2233 endp

			align 16
uXm_mm_shufflehi_epi16_2300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			176
				ret
uXm_mm_shufflehi_epi16_2300 endp

			align 16
uXm_mm_shufflehi_epi16_2301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			177
				ret
uXm_mm_shufflehi_epi16_2301 endp

			align 16
uXm_mm_shufflehi_epi16_2302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			178
				ret
uXm_mm_shufflehi_epi16_2302 endp

			align 16
uXm_mm_shufflehi_epi16_2303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			179
				ret
uXm_mm_shufflehi_epi16_2303 endp

			align 16
uXm_mm_shufflehi_epi16_2310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			180
				ret
uXm_mm_shufflehi_epi16_2310 endp

			align 16
uXm_mm_shufflehi_epi16_2311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			181
				ret
uXm_mm_shufflehi_epi16_2311 endp

			align 16
uXm_mm_shufflehi_epi16_2312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			182
				ret
uXm_mm_shufflehi_epi16_2312 endp

			align 16
uXm_mm_shufflehi_epi16_2313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			183
				ret
uXm_mm_shufflehi_epi16_2313 endp

			align 16
uXm_mm_shufflehi_epi16_2320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			184
				ret
uXm_mm_shufflehi_epi16_2320 endp

			align 16
uXm_mm_shufflehi_epi16_2321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			185
				ret
uXm_mm_shufflehi_epi16_2321 endp

			align 16
uXm_mm_shufflehi_epi16_2322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			186
				ret
uXm_mm_shufflehi_epi16_2322 endp

			align 16
uXm_mm_shufflehi_epi16_2323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			187
				ret
uXm_mm_shufflehi_epi16_2323 endp

			align 16
uXm_mm_shufflehi_epi16_2330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			188
				ret
uXm_mm_shufflehi_epi16_2330 endp

			align 16
uXm_mm_shufflehi_epi16_2331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			189
				ret
uXm_mm_shufflehi_epi16_2331 endp

			align 16
uXm_mm_shufflehi_epi16_2332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			190
				ret
uXm_mm_shufflehi_epi16_2332 endp

			align 16
uXm_mm_shufflehi_epi16_2333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			191
				ret
uXm_mm_shufflehi_epi16_2333 endp

			align 16
uXm_mm_shufflehi_epi16_3000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			192
				ret
uXm_mm_shufflehi_epi16_3000 endp

			align 16
uXm_mm_shufflehi_epi16_3001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			193
				ret
uXm_mm_shufflehi_epi16_3001 endp

			align 16
uXm_mm_shufflehi_epi16_3002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			194
				ret
uXm_mm_shufflehi_epi16_3002 endp

			align 16
uXm_mm_shufflehi_epi16_3003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			195
				ret
uXm_mm_shufflehi_epi16_3003 endp

			align 16
uXm_mm_shufflehi_epi16_3010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			196
				ret
uXm_mm_shufflehi_epi16_3010 endp

			align 16
uXm_mm_shufflehi_epi16_3011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			197
				ret
uXm_mm_shufflehi_epi16_3011 endp

			align 16
uXm_mm_shufflehi_epi16_3012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			198
				ret
uXm_mm_shufflehi_epi16_3012 endp

			align 16
uXm_mm_shufflehi_epi16_3013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			199
				ret
uXm_mm_shufflehi_epi16_3013 endp

			align 16
uXm_mm_shufflehi_epi16_3020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			200
				ret
uXm_mm_shufflehi_epi16_3020 endp

			align 16
uXm_mm_shufflehi_epi16_3021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			201
				ret
uXm_mm_shufflehi_epi16_3021 endp

			align 16
uXm_mm_shufflehi_epi16_3022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			202
				ret
uXm_mm_shufflehi_epi16_3022 endp

			align 16
uXm_mm_shufflehi_epi16_3023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			203
				ret
uXm_mm_shufflehi_epi16_3023 endp

			align 16
uXm_mm_shufflehi_epi16_3030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			204
				ret
uXm_mm_shufflehi_epi16_3030 endp

			align 16
uXm_mm_shufflehi_epi16_3031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			205
				ret
uXm_mm_shufflehi_epi16_3031 endp

			align 16
uXm_mm_shufflehi_epi16_3032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			206
				ret
uXm_mm_shufflehi_epi16_3032 endp

			align 16
uXm_mm_shufflehi_epi16_3033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			207
				ret
uXm_mm_shufflehi_epi16_3033 endp

			align 16
uXm_mm_shufflehi_epi16_3100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			208
				ret
uXm_mm_shufflehi_epi16_3100 endp

			align 16
uXm_mm_shufflehi_epi16_3101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			209
				ret
uXm_mm_shufflehi_epi16_3101 endp

			align 16
uXm_mm_shufflehi_epi16_3102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			210
				ret
uXm_mm_shufflehi_epi16_3102 endp

			align 16
uXm_mm_shufflehi_epi16_3103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			211
				ret
uXm_mm_shufflehi_epi16_3103 endp

			align 16
uXm_mm_shufflehi_epi16_3110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			212
				ret
uXm_mm_shufflehi_epi16_3110 endp

			align 16
uXm_mm_shufflehi_epi16_3111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			213
				ret
uXm_mm_shufflehi_epi16_3111 endp

			align 16
uXm_mm_shufflehi_epi16_3112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			214
				ret
uXm_mm_shufflehi_epi16_3112 endp

			align 16
uXm_mm_shufflehi_epi16_3113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			215
				ret
uXm_mm_shufflehi_epi16_3113 endp

			align 16
uXm_mm_shufflehi_epi16_3120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			216
				ret
uXm_mm_shufflehi_epi16_3120 endp

			align 16
uXm_mm_shufflehi_epi16_3121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			217
				ret
uXm_mm_shufflehi_epi16_3121 endp

			align 16
uXm_mm_shufflehi_epi16_3122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			218
				ret
uXm_mm_shufflehi_epi16_3122 endp

			align 16
uXm_mm_shufflehi_epi16_3123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			219
				ret
uXm_mm_shufflehi_epi16_3123 endp

			align 16
uXm_mm_shufflehi_epi16_3130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			220
				ret
uXm_mm_shufflehi_epi16_3130 endp

			align 16
uXm_mm_shufflehi_epi16_3131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			221
				ret
uXm_mm_shufflehi_epi16_3131 endp

			align 16
uXm_mm_shufflehi_epi16_3132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			222
				ret
uXm_mm_shufflehi_epi16_3132 endp

			align 16
uXm_mm_shufflehi_epi16_3133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			223
				ret
uXm_mm_shufflehi_epi16_3133 endp

			align 16
uXm_mm_shufflehi_epi16_3200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			224
				ret
uXm_mm_shufflehi_epi16_3200 endp

			align 16
uXm_mm_shufflehi_epi16_3201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			225
				ret
uXm_mm_shufflehi_epi16_3201 endp

			align 16
uXm_mm_shufflehi_epi16_3202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			226
				ret
uXm_mm_shufflehi_epi16_3202 endp

			align 16
uXm_mm_shufflehi_epi16_3203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			227
				ret
uXm_mm_shufflehi_epi16_3203 endp

			align 16
uXm_mm_shufflehi_epi16_3210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			228
				ret
uXm_mm_shufflehi_epi16_3210 endp

			align 16
uXm_mm_shufflehi_epi16_3211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			229
				ret
uXm_mm_shufflehi_epi16_3211 endp

			align 16
uXm_mm_shufflehi_epi16_3212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			230
				ret
uXm_mm_shufflehi_epi16_3212 endp

			align 16
uXm_mm_shufflehi_epi16_3213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			231
				ret
uXm_mm_shufflehi_epi16_3213 endp

			align 16
uXm_mm_shufflehi_epi16_3220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			232
				ret
uXm_mm_shufflehi_epi16_3220 endp

			align 16
uXm_mm_shufflehi_epi16_3221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			233
				ret
uXm_mm_shufflehi_epi16_3221 endp

			align 16
uXm_mm_shufflehi_epi16_3222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			234
				ret
uXm_mm_shufflehi_epi16_3222 endp

			align 16
uXm_mm_shufflehi_epi16_3223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			235
				ret
uXm_mm_shufflehi_epi16_3223 endp

			align 16
uXm_mm_shufflehi_epi16_3230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			236
				ret
uXm_mm_shufflehi_epi16_3230 endp

			align 16
uXm_mm_shufflehi_epi16_3231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			237
				ret
uXm_mm_shufflehi_epi16_3231 endp

			align 16
uXm_mm_shufflehi_epi16_3232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			238
				ret
uXm_mm_shufflehi_epi16_3232 endp

			align 16
uXm_mm_shufflehi_epi16_3233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			239
				ret
uXm_mm_shufflehi_epi16_3233 endp

			align 16
uXm_mm_shufflehi_epi16_3300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			240
				ret
uXm_mm_shufflehi_epi16_3300 endp

			align 16
uXm_mm_shufflehi_epi16_3301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			241
				ret
uXm_mm_shufflehi_epi16_3301 endp

			align 16
uXm_mm_shufflehi_epi16_3302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			242
				ret
uXm_mm_shufflehi_epi16_3302 endp

			align 16
uXm_mm_shufflehi_epi16_3303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			243
				ret
uXm_mm_shufflehi_epi16_3303 endp

			align 16
uXm_mm_shufflehi_epi16_3310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			244
				ret
uXm_mm_shufflehi_epi16_3310 endp

			align 16
uXm_mm_shufflehi_epi16_3311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			245
				ret
uXm_mm_shufflehi_epi16_3311 endp

			align 16
uXm_mm_shufflehi_epi16_3312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			246
				ret
uXm_mm_shufflehi_epi16_3312 endp

			align 16
uXm_mm_shufflehi_epi16_3313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			247
				ret
uXm_mm_shufflehi_epi16_3313 endp

			align 16
uXm_mm_shufflehi_epi16_3320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			248
				ret
uXm_mm_shufflehi_epi16_3320 endp

			align 16
uXm_mm_shufflehi_epi16_3321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			249
				ret
uXm_mm_shufflehi_epi16_3321 endp

			align 16
uXm_mm_shufflehi_epi16_3322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			250
				ret
uXm_mm_shufflehi_epi16_3322 endp

			align 16
uXm_mm_shufflehi_epi16_3323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			251
				ret
uXm_mm_shufflehi_epi16_3323 endp

			align 16
uXm_mm_shufflehi_epi16_3330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			252
				ret
uXm_mm_shufflehi_epi16_3330 endp

			align 16
uXm_mm_shufflehi_epi16_3331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			253
				ret
uXm_mm_shufflehi_epi16_3331 endp

			align 16
uXm_mm_shufflehi_epi16_3332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			254
				ret
uXm_mm_shufflehi_epi16_3332 endp

			align 16
uXm_mm_shufflehi_epi16_3333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshufhw				xmm0,			xmm0,			255
				ret
uXm_mm_shufflehi_epi16_3333 endp

			align 16
uXm_mm_shufflehi_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword
				
		ifndef __X64__
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam3]
			lea				ebx,			[mmshufhiepi16jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmshufhiepi16jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam3]
			lea				rbx,			[mmshufhiepi16jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmshufhiepi16jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmshufhiepi16word		textequ		<dword>
			mmshufhiepi16iword 	textequ		<dd>
		else
			mmshufhiepi16word		textequ		<qword>
			mmshufhiepi16iword 	textequ		<dq>
		endif
		
		mmshufhiepi16jmptable label mmshufhiepi16word
			mmshufhiepi16iword offset mmshufhiepi16_0, offset mmshufhiepi16_1, offset mmshufhiepi16_2, offset mmshufhiepi16_3, offset mmshufhiepi16_4, offset mmshufhiepi16_5, offset mmshufhiepi16_6, offset mmshufhiepi16_7, offset mmshufhiepi16_8, offset mmshufhiepi16_9, offset mmshufhiepi16_10, offset mmshufhiepi16_11, offset mmshufhiepi16_12, offset mmshufhiepi16_13, offset mmshufhiepi16_14, offset mmshufhiepi16_15, offset mmshufhiepi16_16, offset mmshufhiepi16_17, offset mmshufhiepi16_18, offset mmshufhiepi16_19, offset mmshufhiepi16_20, offset mmshufhiepi16_21, offset mmshufhiepi16_22, offset mmshufhiepi16_23, offset mmshufhiepi16_24, offset mmshufhiepi16_25
			mmshufhiepi16iword offset mmshufhiepi16_26, offset mmshufhiepi16_27, offset mmshufhiepi16_28, offset mmshufhiepi16_29, offset mmshufhiepi16_30, offset mmshufhiepi16_31, offset mmshufhiepi16_32, offset mmshufhiepi16_33, offset mmshufhiepi16_34, offset mmshufhiepi16_35, offset mmshufhiepi16_36, offset mmshufhiepi16_37, offset mmshufhiepi16_38, offset mmshufhiepi16_39, offset mmshufhiepi16_40, offset mmshufhiepi16_41, offset mmshufhiepi16_42, offset mmshufhiepi16_43, offset mmshufhiepi16_44, offset mmshufhiepi16_45, offset mmshufhiepi16_46, offset mmshufhiepi16_47, offset mmshufhiepi16_48, offset mmshufhiepi16_49, offset mmshufhiepi16_50
			mmshufhiepi16iword offset mmshufhiepi16_51, offset mmshufhiepi16_52, offset mmshufhiepi16_53, offset mmshufhiepi16_54, offset mmshufhiepi16_55, offset mmshufhiepi16_56, offset mmshufhiepi16_57, offset mmshufhiepi16_58, offset mmshufhiepi16_59, offset mmshufhiepi16_60, offset mmshufhiepi16_61, offset mmshufhiepi16_62, offset mmshufhiepi16_63, offset mmshufhiepi16_64, offset mmshufhiepi16_65, offset mmshufhiepi16_66, offset mmshufhiepi16_67, offset mmshufhiepi16_68, offset mmshufhiepi16_69, offset mmshufhiepi16_70, offset mmshufhiepi16_71, offset mmshufhiepi16_72, offset mmshufhiepi16_73, offset mmshufhiepi16_74, offset mmshufhiepi16_75
			mmshufhiepi16iword offset mmshufhiepi16_76, offset mmshufhiepi16_77, offset mmshufhiepi16_78, offset mmshufhiepi16_79, offset mmshufhiepi16_80, offset mmshufhiepi16_81, offset mmshufhiepi16_82, offset mmshufhiepi16_83, offset mmshufhiepi16_84, offset mmshufhiepi16_85, offset mmshufhiepi16_86, offset mmshufhiepi16_87, offset mmshufhiepi16_88, offset mmshufhiepi16_89, offset mmshufhiepi16_90, offset mmshufhiepi16_91, offset mmshufhiepi16_92, offset mmshufhiepi16_93, offset mmshufhiepi16_94, offset mmshufhiepi16_95, offset mmshufhiepi16_96, offset mmshufhiepi16_97, offset mmshufhiepi16_98, offset mmshufhiepi16_99, offset mmshufhiepi16_100
			mmshufhiepi16iword offset mmshufhiepi16_101, offset mmshufhiepi16_102, offset mmshufhiepi16_103, offset mmshufhiepi16_104, offset mmshufhiepi16_105, offset mmshufhiepi16_106, offset mmshufhiepi16_107, offset mmshufhiepi16_108, offset mmshufhiepi16_109, offset mmshufhiepi16_110, offset mmshufhiepi16_111, offset mmshufhiepi16_112, offset mmshufhiepi16_113, offset mmshufhiepi16_114, offset mmshufhiepi16_115, offset mmshufhiepi16_116, offset mmshufhiepi16_117, offset mmshufhiepi16_118, offset mmshufhiepi16_119, offset mmshufhiepi16_120, offset mmshufhiepi16_121, offset mmshufhiepi16_122, offset mmshufhiepi16_123, offset mmshufhiepi16_124, offset mmshufhiepi16_125
			mmshufhiepi16iword offset mmshufhiepi16_126, offset mmshufhiepi16_127, offset mmshufhiepi16_128, offset mmshufhiepi16_129, offset mmshufhiepi16_130, offset mmshufhiepi16_131, offset mmshufhiepi16_132, offset mmshufhiepi16_133, offset mmshufhiepi16_134, offset mmshufhiepi16_135, offset mmshufhiepi16_136, offset mmshufhiepi16_137, offset mmshufhiepi16_138, offset mmshufhiepi16_139, offset mmshufhiepi16_140, offset mmshufhiepi16_141, offset mmshufhiepi16_142, offset mmshufhiepi16_143, offset mmshufhiepi16_144, offset mmshufhiepi16_145, offset mmshufhiepi16_146, offset mmshufhiepi16_147, offset mmshufhiepi16_148, offset mmshufhiepi16_149, offset mmshufhiepi16_150
			mmshufhiepi16iword offset mmshufhiepi16_151, offset mmshufhiepi16_152, offset mmshufhiepi16_153, offset mmshufhiepi16_154, offset mmshufhiepi16_155, offset mmshufhiepi16_156, offset mmshufhiepi16_157, offset mmshufhiepi16_158, offset mmshufhiepi16_159, offset mmshufhiepi16_160, offset mmshufhiepi16_161, offset mmshufhiepi16_162, offset mmshufhiepi16_163, offset mmshufhiepi16_164, offset mmshufhiepi16_165, offset mmshufhiepi16_166, offset mmshufhiepi16_167, offset mmshufhiepi16_168, offset mmshufhiepi16_169, offset mmshufhiepi16_170, offset mmshufhiepi16_171, offset mmshufhiepi16_172, offset mmshufhiepi16_173, offset mmshufhiepi16_174, offset mmshufhiepi16_175
			mmshufhiepi16iword offset mmshufhiepi16_176, offset mmshufhiepi16_177, offset mmshufhiepi16_178, offset mmshufhiepi16_179, offset mmshufhiepi16_180, offset mmshufhiepi16_181, offset mmshufhiepi16_182, offset mmshufhiepi16_183, offset mmshufhiepi16_184, offset mmshufhiepi16_185, offset mmshufhiepi16_186, offset mmshufhiepi16_187, offset mmshufhiepi16_188, offset mmshufhiepi16_189, offset mmshufhiepi16_190, offset mmshufhiepi16_191, offset mmshufhiepi16_192, offset mmshufhiepi16_193, offset mmshufhiepi16_194, offset mmshufhiepi16_195, offset mmshufhiepi16_196, offset mmshufhiepi16_197, offset mmshufhiepi16_198, offset mmshufhiepi16_199, offset mmshufhiepi16_200
			mmshufhiepi16iword offset mmshufhiepi16_201, offset mmshufhiepi16_202, offset mmshufhiepi16_203, offset mmshufhiepi16_204, offset mmshufhiepi16_205, offset mmshufhiepi16_206, offset mmshufhiepi16_207, offset mmshufhiepi16_208, offset mmshufhiepi16_209, offset mmshufhiepi16_210, offset mmshufhiepi16_211, offset mmshufhiepi16_212, offset mmshufhiepi16_213, offset mmshufhiepi16_214, offset mmshufhiepi16_215, offset mmshufhiepi16_216, offset mmshufhiepi16_217, offset mmshufhiepi16_218, offset mmshufhiepi16_219, offset mmshufhiepi16_220, offset mmshufhiepi16_221, offset mmshufhiepi16_222, offset mmshufhiepi16_223, offset mmshufhiepi16_224, offset mmshufhiepi16_225
			mmshufhiepi16iword offset mmshufhiepi16_226, offset mmshufhiepi16_227, offset mmshufhiepi16_228, offset mmshufhiepi16_229, offset mmshufhiepi16_230, offset mmshufhiepi16_231, offset mmshufhiepi16_232, offset mmshufhiepi16_233, offset mmshufhiepi16_234, offset mmshufhiepi16_235, offset mmshufhiepi16_236, offset mmshufhiepi16_237, offset mmshufhiepi16_238, offset mmshufhiepi16_239, offset mmshufhiepi16_240, offset mmshufhiepi16_241, offset mmshufhiepi16_242, offset mmshufhiepi16_243, offset mmshufhiepi16_244, offset mmshufhiepi16_245, offset mmshufhiepi16_246, offset mmshufhiepi16_247, offset mmshufhiepi16_248, offset mmshufhiepi16_249, offset mmshufhiepi16_250
			mmshufhiepi16iword offset mmshufhiepi16_251, offset mmshufhiepi16_252, offset mmshufhiepi16_253, offset mmshufhiepi16_254, offset mmshufhiepi16_255				

			mmshufhiepi16_0 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0000
			mmshufhiepi16_1 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0001
			mmshufhiepi16_2 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0002
			mmshufhiepi16_3 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0003
			mmshufhiepi16_4 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0010
			mmshufhiepi16_5 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0011
			mmshufhiepi16_6 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0012
			mmshufhiepi16_7 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0013
			mmshufhiepi16_8 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0020
			mmshufhiepi16_9 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0021
			mmshufhiepi16_10 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0022
			mmshufhiepi16_11 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0023
			mmshufhiepi16_12 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0030
			mmshufhiepi16_13 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0031
			mmshufhiepi16_14 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0032
			mmshufhiepi16_15 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0033
			mmshufhiepi16_16 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0100
			mmshufhiepi16_17 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0101
			mmshufhiepi16_18 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0102
			mmshufhiepi16_19 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0103
			mmshufhiepi16_20 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0110
			mmshufhiepi16_21 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0111
			mmshufhiepi16_22 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0112
			mmshufhiepi16_23 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0113
			mmshufhiepi16_24 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0120
			mmshufhiepi16_25 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0121
			mmshufhiepi16_26 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0122
			mmshufhiepi16_27 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0123
			mmshufhiepi16_28 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0130
			mmshufhiepi16_29 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0131
			mmshufhiepi16_30 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0132
			mmshufhiepi16_31 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0133
			mmshufhiepi16_32 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0200
			mmshufhiepi16_33 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0201
			mmshufhiepi16_34 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0202
			mmshufhiepi16_35 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0203
			mmshufhiepi16_36 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0210
			mmshufhiepi16_37 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0211
			mmshufhiepi16_38 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0212
			mmshufhiepi16_39 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0213
			mmshufhiepi16_40 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0220
			mmshufhiepi16_41 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0221
			mmshufhiepi16_42 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0222
			mmshufhiepi16_43 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0223
			mmshufhiepi16_44 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0230
			mmshufhiepi16_45 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0231
			mmshufhiepi16_46 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0232
			mmshufhiepi16_47 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0233
			mmshufhiepi16_48 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0300
			mmshufhiepi16_49 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0301
			mmshufhiepi16_50 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0302
			mmshufhiepi16_51 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0303
			mmshufhiepi16_52 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0310
			mmshufhiepi16_53 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0311
			mmshufhiepi16_54 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0312
			mmshufhiepi16_55 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0313
			mmshufhiepi16_56 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0320
			mmshufhiepi16_57 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0321
			mmshufhiepi16_58 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0322
			mmshufhiepi16_59 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0323
			mmshufhiepi16_60 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0330
			mmshufhiepi16_61 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0331
			mmshufhiepi16_62 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0332
			mmshufhiepi16_63 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_0333
			mmshufhiepi16_64 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1000
			mmshufhiepi16_65 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1001
			mmshufhiepi16_66 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1002
			mmshufhiepi16_67 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1003
			mmshufhiepi16_68 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1010
			mmshufhiepi16_69 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1011
			mmshufhiepi16_70 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1012
			mmshufhiepi16_71 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1013
			mmshufhiepi16_72 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1020
			mmshufhiepi16_73 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1021
			mmshufhiepi16_74 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1022
			mmshufhiepi16_75 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1023
			mmshufhiepi16_76 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1030
			mmshufhiepi16_77 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1031
			mmshufhiepi16_78 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1032
			mmshufhiepi16_79 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1033
			mmshufhiepi16_80 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1100
			mmshufhiepi16_81 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1101
			mmshufhiepi16_82 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1102
			mmshufhiepi16_83 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1103
			mmshufhiepi16_84 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1110
			mmshufhiepi16_85 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1111
			mmshufhiepi16_86 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1112
			mmshufhiepi16_87 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1113
			mmshufhiepi16_88 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1120
			mmshufhiepi16_89 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1121
			mmshufhiepi16_90 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1122
			mmshufhiepi16_91 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1123
			mmshufhiepi16_92 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1130
			mmshufhiepi16_93 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1131
			mmshufhiepi16_94 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1132
			mmshufhiepi16_95 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1133
			mmshufhiepi16_96 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1200
			mmshufhiepi16_97 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1201
			mmshufhiepi16_98 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1202
			mmshufhiepi16_99 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1203
			mmshufhiepi16_100 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1210
			mmshufhiepi16_101 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1211
			mmshufhiepi16_102 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1212
			mmshufhiepi16_103 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1213
			mmshufhiepi16_104 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1220
			mmshufhiepi16_105 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1221
			mmshufhiepi16_106 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1222
			mmshufhiepi16_107 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1223
			mmshufhiepi16_108 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1230
			mmshufhiepi16_109 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1231
			mmshufhiepi16_110 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1232
			mmshufhiepi16_111 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1233
			mmshufhiepi16_112 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1300
			mmshufhiepi16_113 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1301
			mmshufhiepi16_114 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1302
			mmshufhiepi16_115 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1303
			mmshufhiepi16_116 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1310
			mmshufhiepi16_117 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1311
			mmshufhiepi16_118 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1312
			mmshufhiepi16_119 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1313
			mmshufhiepi16_120 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1320
			mmshufhiepi16_121 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1321
			mmshufhiepi16_122 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1322
			mmshufhiepi16_123 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1323
			mmshufhiepi16_124 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1330
			mmshufhiepi16_125 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1331
			mmshufhiepi16_126 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1332
			mmshufhiepi16_127 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_1333
			mmshufhiepi16_128 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2000
			mmshufhiepi16_129 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2001
			mmshufhiepi16_130 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2002
			mmshufhiepi16_131 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2003
			mmshufhiepi16_132 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2010
			mmshufhiepi16_133 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2011
			mmshufhiepi16_134 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2012
			mmshufhiepi16_135 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2013
			mmshufhiepi16_136 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2020
			mmshufhiepi16_137 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2021
			mmshufhiepi16_138 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2022
			mmshufhiepi16_139 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2023
			mmshufhiepi16_140 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2030
			mmshufhiepi16_141 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2031
			mmshufhiepi16_142 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2032
			mmshufhiepi16_143 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2033
			mmshufhiepi16_144 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2100
			mmshufhiepi16_145 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2101
			mmshufhiepi16_146 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2102
			mmshufhiepi16_147 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2103
			mmshufhiepi16_148 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2110
			mmshufhiepi16_149 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2111
			mmshufhiepi16_150 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2112
			mmshufhiepi16_151 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2113
			mmshufhiepi16_152 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2120
			mmshufhiepi16_153 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2121
			mmshufhiepi16_154 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2122
			mmshufhiepi16_155 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2123
			mmshufhiepi16_156 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2130
			mmshufhiepi16_157 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2131
			mmshufhiepi16_158 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2132
			mmshufhiepi16_159 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2133
			mmshufhiepi16_160 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2200
			mmshufhiepi16_161 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2201
			mmshufhiepi16_162 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2202
			mmshufhiepi16_163 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2203
			mmshufhiepi16_164 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2210
			mmshufhiepi16_165 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2211
			mmshufhiepi16_166 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2212
			mmshufhiepi16_167 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2213
			mmshufhiepi16_168 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2220
			mmshufhiepi16_169 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2221
			mmshufhiepi16_170 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2222
			mmshufhiepi16_171 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2223
			mmshufhiepi16_172 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2230
			mmshufhiepi16_173 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2231
			mmshufhiepi16_174 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2232
			mmshufhiepi16_175 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2233
			mmshufhiepi16_176 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2300
			mmshufhiepi16_177 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2301
			mmshufhiepi16_178 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2302
			mmshufhiepi16_179 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2303
			mmshufhiepi16_180 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2310
			mmshufhiepi16_181 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2311
			mmshufhiepi16_182 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2312
			mmshufhiepi16_183 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2313
			mmshufhiepi16_184 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2320
			mmshufhiepi16_185 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2321
			mmshufhiepi16_186 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2322
			mmshufhiepi16_187 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2323
			mmshufhiepi16_188 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2330
			mmshufhiepi16_189 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2331
			mmshufhiepi16_190 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2332
			mmshufhiepi16_191 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_2333
			mmshufhiepi16_192 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3000
			mmshufhiepi16_193 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3001
			mmshufhiepi16_194 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3002
			mmshufhiepi16_195 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3003
			mmshufhiepi16_196 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3010
			mmshufhiepi16_197 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3011
			mmshufhiepi16_198 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3012
			mmshufhiepi16_199 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3013
			mmshufhiepi16_200 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3020
			mmshufhiepi16_201 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3021
			mmshufhiepi16_202 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3022
			mmshufhiepi16_203 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3023
			mmshufhiepi16_204 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3030
			mmshufhiepi16_205 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3031
			mmshufhiepi16_206 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3032
			mmshufhiepi16_207 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3033
			mmshufhiepi16_208 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3100
			mmshufhiepi16_209 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3101
			mmshufhiepi16_210 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3102
			mmshufhiepi16_211 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3103
			mmshufhiepi16_212 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3110
			mmshufhiepi16_213 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3111
			mmshufhiepi16_214 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3112
			mmshufhiepi16_215 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3113
			mmshufhiepi16_216 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3120
			mmshufhiepi16_217 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3121
			mmshufhiepi16_218 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3122
			mmshufhiepi16_219 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3123
			mmshufhiepi16_220 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3130
			mmshufhiepi16_221 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3131
			mmshufhiepi16_222 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3132
			mmshufhiepi16_223 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3133
			mmshufhiepi16_224 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3200
			mmshufhiepi16_225 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3201
			mmshufhiepi16_226 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3202
			mmshufhiepi16_227 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3203
			mmshufhiepi16_228 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3210
			mmshufhiepi16_229 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3211
			mmshufhiepi16_230 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3212
			mmshufhiepi16_231 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3213
			mmshufhiepi16_232 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3220
			mmshufhiepi16_233 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3221
			mmshufhiepi16_234 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3222
			mmshufhiepi16_235 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3223
			mmshufhiepi16_236 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3230
			mmshufhiepi16_237 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3231
			mmshufhiepi16_238 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3232
			mmshufhiepi16_239 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3233
			mmshufhiepi16_240 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3300
			mmshufhiepi16_241 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3301
			mmshufhiepi16_242 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3302
			mmshufhiepi16_243 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3303
			mmshufhiepi16_244 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3310
			mmshufhiepi16_245 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3311
			mmshufhiepi16_246 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3312
			mmshufhiepi16_247 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3313
			mmshufhiepi16_248 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3320
			mmshufhiepi16_249 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3321
			mmshufhiepi16_250 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3322
			mmshufhiepi16_251 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3323
			mmshufhiepi16_252 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3330
			mmshufhiepi16_253 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3331
			mmshufhiepi16_254 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3332
			mmshufhiepi16_255 label mmshufhiepi16word
				jmp		uXm_mm_shufflehi_epi16_3333

uXm_mm_shufflehi_epi16 endp

			align 16
uXm_mm_shufflelo_epi16_0000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			0
				ret
uXm_mm_shufflelo_epi16_0000 endp

			align 16
uXm_mm_shufflelo_epi16_0001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			1
				ret
uXm_mm_shufflelo_epi16_0001 endp

			align 16
uXm_mm_shufflelo_epi16_0002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			2
				ret
uXm_mm_shufflelo_epi16_0002 endp

			align 16
uXm_mm_shufflelo_epi16_0003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			3
				ret
uXm_mm_shufflelo_epi16_0003 endp

			align 16
uXm_mm_shufflelo_epi16_0010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			4
				ret
uXm_mm_shufflelo_epi16_0010 endp

			align 16
uXm_mm_shufflelo_epi16_0011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			5
				ret
uXm_mm_shufflelo_epi16_0011 endp

			align 16
uXm_mm_shufflelo_epi16_0012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			6
				ret
uXm_mm_shufflelo_epi16_0012 endp

			align 16
uXm_mm_shufflelo_epi16_0013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			7
				ret
uXm_mm_shufflelo_epi16_0013 endp

			align 16
uXm_mm_shufflelo_epi16_0020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			8
				ret
uXm_mm_shufflelo_epi16_0020 endp

			align 16
uXm_mm_shufflelo_epi16_0021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			9
				ret
uXm_mm_shufflelo_epi16_0021 endp

			align 16
uXm_mm_shufflelo_epi16_0022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			10
				ret
uXm_mm_shufflelo_epi16_0022 endp

			align 16
uXm_mm_shufflelo_epi16_0023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			11
				ret
uXm_mm_shufflelo_epi16_0023 endp

			align 16
uXm_mm_shufflelo_epi16_0030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			12
				ret
uXm_mm_shufflelo_epi16_0030 endp

			align 16
uXm_mm_shufflelo_epi16_0031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			13
				ret
uXm_mm_shufflelo_epi16_0031 endp

			align 16
uXm_mm_shufflelo_epi16_0032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			14
				ret
uXm_mm_shufflelo_epi16_0032 endp

			align 16
uXm_mm_shufflelo_epi16_0033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			15
				ret
uXm_mm_shufflelo_epi16_0033 endp

			align 16
uXm_mm_shufflelo_epi16_0100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			16
				ret
uXm_mm_shufflelo_epi16_0100 endp

			align 16
uXm_mm_shufflelo_epi16_0101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			17
				ret
uXm_mm_shufflelo_epi16_0101 endp

			align 16
uXm_mm_shufflelo_epi16_0102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			18
				ret
uXm_mm_shufflelo_epi16_0102 endp

			align 16
uXm_mm_shufflelo_epi16_0103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			19
				ret
uXm_mm_shufflelo_epi16_0103 endp

			align 16
uXm_mm_shufflelo_epi16_0110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			20
				ret
uXm_mm_shufflelo_epi16_0110 endp

			align 16
uXm_mm_shufflelo_epi16_0111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			21
				ret
uXm_mm_shufflelo_epi16_0111 endp

			align 16
uXm_mm_shufflelo_epi16_0112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			22
				ret
uXm_mm_shufflelo_epi16_0112 endp

			align 16
uXm_mm_shufflelo_epi16_0113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			23
				ret
uXm_mm_shufflelo_epi16_0113 endp

			align 16
uXm_mm_shufflelo_epi16_0120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			24
				ret
uXm_mm_shufflelo_epi16_0120 endp

			align 16
uXm_mm_shufflelo_epi16_0121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			25
				ret
uXm_mm_shufflelo_epi16_0121 endp

			align 16
uXm_mm_shufflelo_epi16_0122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			26
				ret
uXm_mm_shufflelo_epi16_0122 endp

			align 16
uXm_mm_shufflelo_epi16_0123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			27
				ret
uXm_mm_shufflelo_epi16_0123 endp

			align 16
uXm_mm_shufflelo_epi16_0130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			28
				ret
uXm_mm_shufflelo_epi16_0130 endp

			align 16
uXm_mm_shufflelo_epi16_0131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			29
				ret
uXm_mm_shufflelo_epi16_0131 endp

			align 16
uXm_mm_shufflelo_epi16_0132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			30
				ret
uXm_mm_shufflelo_epi16_0132 endp

			align 16
uXm_mm_shufflelo_epi16_0133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			31
				ret
uXm_mm_shufflelo_epi16_0133 endp

			align 16
uXm_mm_shufflelo_epi16_0200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			32
				ret
uXm_mm_shufflelo_epi16_0200 endp

			align 16
uXm_mm_shufflelo_epi16_0201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			33
				ret
uXm_mm_shufflelo_epi16_0201 endp

			align 16
uXm_mm_shufflelo_epi16_0202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			34
				ret
uXm_mm_shufflelo_epi16_0202 endp

			align 16
uXm_mm_shufflelo_epi16_0203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			35
				ret
uXm_mm_shufflelo_epi16_0203 endp

			align 16
uXm_mm_shufflelo_epi16_0210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			36
				ret
uXm_mm_shufflelo_epi16_0210 endp

			align 16
uXm_mm_shufflelo_epi16_0211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			37
				ret
uXm_mm_shufflelo_epi16_0211 endp

			align 16
uXm_mm_shufflelo_epi16_0212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			38
				ret
uXm_mm_shufflelo_epi16_0212 endp

			align 16
uXm_mm_shufflelo_epi16_0213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			39
				ret
uXm_mm_shufflelo_epi16_0213 endp

			align 16
uXm_mm_shufflelo_epi16_0220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			40
				ret
uXm_mm_shufflelo_epi16_0220 endp

			align 16
uXm_mm_shufflelo_epi16_0221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			41
				ret
uXm_mm_shufflelo_epi16_0221 endp

			align 16
uXm_mm_shufflelo_epi16_0222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			42
				ret
uXm_mm_shufflelo_epi16_0222 endp

			align 16
uXm_mm_shufflelo_epi16_0223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			43
				ret
uXm_mm_shufflelo_epi16_0223 endp

			align 16
uXm_mm_shufflelo_epi16_0230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			44
				ret
uXm_mm_shufflelo_epi16_0230 endp

			align 16
uXm_mm_shufflelo_epi16_0231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			45
				ret
uXm_mm_shufflelo_epi16_0231 endp

			align 16
uXm_mm_shufflelo_epi16_0232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			46
				ret
uXm_mm_shufflelo_epi16_0232 endp

			align 16
uXm_mm_shufflelo_epi16_0233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			47
				ret
uXm_mm_shufflelo_epi16_0233 endp

			align 16
uXm_mm_shufflelo_epi16_0300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			48
				ret
uXm_mm_shufflelo_epi16_0300 endp

			align 16
uXm_mm_shufflelo_epi16_0301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			49
				ret
uXm_mm_shufflelo_epi16_0301 endp

			align 16
uXm_mm_shufflelo_epi16_0302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			50
				ret
uXm_mm_shufflelo_epi16_0302 endp

			align 16
uXm_mm_shufflelo_epi16_0303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			51
				ret
uXm_mm_shufflelo_epi16_0303 endp

			align 16
uXm_mm_shufflelo_epi16_0310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			52
				ret
uXm_mm_shufflelo_epi16_0310 endp

			align 16
uXm_mm_shufflelo_epi16_0311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			53
				ret
uXm_mm_shufflelo_epi16_0311 endp

			align 16
uXm_mm_shufflelo_epi16_0312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			54
				ret
uXm_mm_shufflelo_epi16_0312 endp

			align 16
uXm_mm_shufflelo_epi16_0313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			55
				ret
uXm_mm_shufflelo_epi16_0313 endp

			align 16
uXm_mm_shufflelo_epi16_0320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			56
				ret
uXm_mm_shufflelo_epi16_0320 endp

			align 16
uXm_mm_shufflelo_epi16_0321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			57
				ret
uXm_mm_shufflelo_epi16_0321 endp

			align 16
uXm_mm_shufflelo_epi16_0322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			58
				ret
uXm_mm_shufflelo_epi16_0322 endp

			align 16
uXm_mm_shufflelo_epi16_0323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			59
				ret
uXm_mm_shufflelo_epi16_0323 endp

			align 16
uXm_mm_shufflelo_epi16_0330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			60
				ret
uXm_mm_shufflelo_epi16_0330 endp

			align 16
uXm_mm_shufflelo_epi16_0331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			61
				ret
uXm_mm_shufflelo_epi16_0331 endp

			align 16
uXm_mm_shufflelo_epi16_0332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			62
				ret
uXm_mm_shufflelo_epi16_0332 endp

			align 16
uXm_mm_shufflelo_epi16_0333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			63
				ret
uXm_mm_shufflelo_epi16_0333 endp

			align 16
uXm_mm_shufflelo_epi16_1000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			64
				ret
uXm_mm_shufflelo_epi16_1000 endp

			align 16
uXm_mm_shufflelo_epi16_1001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			65
				ret
uXm_mm_shufflelo_epi16_1001 endp

			align 16
uXm_mm_shufflelo_epi16_1002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			66
				ret
uXm_mm_shufflelo_epi16_1002 endp

			align 16
uXm_mm_shufflelo_epi16_1003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			67
				ret
uXm_mm_shufflelo_epi16_1003 endp

			align 16
uXm_mm_shufflelo_epi16_1010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			68
				ret
uXm_mm_shufflelo_epi16_1010 endp

			align 16
uXm_mm_shufflelo_epi16_1011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			69
				ret
uXm_mm_shufflelo_epi16_1011 endp

			align 16
uXm_mm_shufflelo_epi16_1012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			70
				ret
uXm_mm_shufflelo_epi16_1012 endp

			align 16
uXm_mm_shufflelo_epi16_1013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			71
				ret
uXm_mm_shufflelo_epi16_1013 endp

			align 16
uXm_mm_shufflelo_epi16_1020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			72
				ret
uXm_mm_shufflelo_epi16_1020 endp

			align 16
uXm_mm_shufflelo_epi16_1021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			73
				ret
uXm_mm_shufflelo_epi16_1021 endp

			align 16
uXm_mm_shufflelo_epi16_1022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			74
				ret
uXm_mm_shufflelo_epi16_1022 endp

			align 16
uXm_mm_shufflelo_epi16_1023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			75
				ret
uXm_mm_shufflelo_epi16_1023 endp

			align 16
uXm_mm_shufflelo_epi16_1030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			76
				ret
uXm_mm_shufflelo_epi16_1030 endp

			align 16
uXm_mm_shufflelo_epi16_1031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			77
				ret
uXm_mm_shufflelo_epi16_1031 endp

			align 16
uXm_mm_shufflelo_epi16_1032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			78
				ret
uXm_mm_shufflelo_epi16_1032 endp

			align 16
uXm_mm_shufflelo_epi16_1033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			79
				ret
uXm_mm_shufflelo_epi16_1033 endp

			align 16
uXm_mm_shufflelo_epi16_1100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			80
				ret
uXm_mm_shufflelo_epi16_1100 endp

			align 16
uXm_mm_shufflelo_epi16_1101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			81
				ret
uXm_mm_shufflelo_epi16_1101 endp

			align 16
uXm_mm_shufflelo_epi16_1102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			82
				ret
uXm_mm_shufflelo_epi16_1102 endp

			align 16
uXm_mm_shufflelo_epi16_1103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			83
				ret
uXm_mm_shufflelo_epi16_1103 endp

			align 16
uXm_mm_shufflelo_epi16_1110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			84
				ret
uXm_mm_shufflelo_epi16_1110 endp

			align 16
uXm_mm_shufflelo_epi16_1111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			85
				ret
uXm_mm_shufflelo_epi16_1111 endp

			align 16
uXm_mm_shufflelo_epi16_1112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			86
				ret
uXm_mm_shufflelo_epi16_1112 endp

			align 16
uXm_mm_shufflelo_epi16_1113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			87
				ret
uXm_mm_shufflelo_epi16_1113 endp

			align 16
uXm_mm_shufflelo_epi16_1120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			88
				ret
uXm_mm_shufflelo_epi16_1120 endp

			align 16
uXm_mm_shufflelo_epi16_1121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			89
				ret
uXm_mm_shufflelo_epi16_1121 endp

			align 16
uXm_mm_shufflelo_epi16_1122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			90
				ret
uXm_mm_shufflelo_epi16_1122 endp

			align 16
uXm_mm_shufflelo_epi16_1123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			91
				ret
uXm_mm_shufflelo_epi16_1123 endp

			align 16
uXm_mm_shufflelo_epi16_1130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			92
				ret
uXm_mm_shufflelo_epi16_1130 endp

			align 16
uXm_mm_shufflelo_epi16_1131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			93
				ret
uXm_mm_shufflelo_epi16_1131 endp

			align 16
uXm_mm_shufflelo_epi16_1132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			94
				ret
uXm_mm_shufflelo_epi16_1132 endp

			align 16
uXm_mm_shufflelo_epi16_1133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			95
				ret
uXm_mm_shufflelo_epi16_1133 endp

			align 16
uXm_mm_shufflelo_epi16_1200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			96
				ret
uXm_mm_shufflelo_epi16_1200 endp

			align 16
uXm_mm_shufflelo_epi16_1201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			97
				ret
uXm_mm_shufflelo_epi16_1201 endp

			align 16
uXm_mm_shufflelo_epi16_1202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			98
				ret
uXm_mm_shufflelo_epi16_1202 endp

			align 16
uXm_mm_shufflelo_epi16_1203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			99
				ret
uXm_mm_shufflelo_epi16_1203 endp

			align 16
uXm_mm_shufflelo_epi16_1210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			100
				ret
uXm_mm_shufflelo_epi16_1210 endp

			align 16
uXm_mm_shufflelo_epi16_1211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			101
				ret
uXm_mm_shufflelo_epi16_1211 endp

			align 16
uXm_mm_shufflelo_epi16_1212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			102
				ret
uXm_mm_shufflelo_epi16_1212 endp

			align 16
uXm_mm_shufflelo_epi16_1213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			103
				ret
uXm_mm_shufflelo_epi16_1213 endp

			align 16
uXm_mm_shufflelo_epi16_1220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			104
				ret
uXm_mm_shufflelo_epi16_1220 endp

			align 16
uXm_mm_shufflelo_epi16_1221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			105
				ret
uXm_mm_shufflelo_epi16_1221 endp

			align 16
uXm_mm_shufflelo_epi16_1222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			106
				ret
uXm_mm_shufflelo_epi16_1222 endp

			align 16
uXm_mm_shufflelo_epi16_1223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			107
				ret
uXm_mm_shufflelo_epi16_1223 endp

			align 16
uXm_mm_shufflelo_epi16_1230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			108
				ret
uXm_mm_shufflelo_epi16_1230 endp

			align 16
uXm_mm_shufflelo_epi16_1231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			109
				ret
uXm_mm_shufflelo_epi16_1231 endp

			align 16
uXm_mm_shufflelo_epi16_1232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			110
				ret
uXm_mm_shufflelo_epi16_1232 endp

			align 16
uXm_mm_shufflelo_epi16_1233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			111
				ret
uXm_mm_shufflelo_epi16_1233 endp

			align 16
uXm_mm_shufflelo_epi16_1300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			112
				ret
uXm_mm_shufflelo_epi16_1300 endp

			align 16
uXm_mm_shufflelo_epi16_1301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			113
				ret
uXm_mm_shufflelo_epi16_1301 endp

			align 16
uXm_mm_shufflelo_epi16_1302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			114
				ret
uXm_mm_shufflelo_epi16_1302 endp

			align 16
uXm_mm_shufflelo_epi16_1303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			115
				ret
uXm_mm_shufflelo_epi16_1303 endp

			align 16
uXm_mm_shufflelo_epi16_1310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			116
				ret
uXm_mm_shufflelo_epi16_1310 endp

			align 16
uXm_mm_shufflelo_epi16_1311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			117
				ret
uXm_mm_shufflelo_epi16_1311 endp

			align 16
uXm_mm_shufflelo_epi16_1312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			118
				ret
uXm_mm_shufflelo_epi16_1312 endp

			align 16
uXm_mm_shufflelo_epi16_1313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			119
				ret
uXm_mm_shufflelo_epi16_1313 endp

			align 16
uXm_mm_shufflelo_epi16_1320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			120
				ret
uXm_mm_shufflelo_epi16_1320 endp

			align 16
uXm_mm_shufflelo_epi16_1321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			121
				ret
uXm_mm_shufflelo_epi16_1321 endp

			align 16
uXm_mm_shufflelo_epi16_1322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			122
				ret
uXm_mm_shufflelo_epi16_1322 endp

			align 16
uXm_mm_shufflelo_epi16_1323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			123
				ret
uXm_mm_shufflelo_epi16_1323 endp

			align 16
uXm_mm_shufflelo_epi16_1330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			124
				ret
uXm_mm_shufflelo_epi16_1330 endp

			align 16
uXm_mm_shufflelo_epi16_1331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			125
				ret
uXm_mm_shufflelo_epi16_1331 endp

			align 16
uXm_mm_shufflelo_epi16_1332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			126
				ret
uXm_mm_shufflelo_epi16_1332 endp

			align 16
uXm_mm_shufflelo_epi16_1333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			127
				ret
uXm_mm_shufflelo_epi16_1333 endp

			align 16
uXm_mm_shufflelo_epi16_2000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			128
				ret
uXm_mm_shufflelo_epi16_2000 endp

			align 16
uXm_mm_shufflelo_epi16_2001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			129
				ret
uXm_mm_shufflelo_epi16_2001 endp

			align 16
uXm_mm_shufflelo_epi16_2002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			130
				ret
uXm_mm_shufflelo_epi16_2002 endp

			align 16
uXm_mm_shufflelo_epi16_2003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			131
				ret
uXm_mm_shufflelo_epi16_2003 endp

			align 16
uXm_mm_shufflelo_epi16_2010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			132
				ret
uXm_mm_shufflelo_epi16_2010 endp

			align 16
uXm_mm_shufflelo_epi16_2011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			133
				ret
uXm_mm_shufflelo_epi16_2011 endp

			align 16
uXm_mm_shufflelo_epi16_2012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			134
				ret
uXm_mm_shufflelo_epi16_2012 endp

			align 16
uXm_mm_shufflelo_epi16_2013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			135
				ret
uXm_mm_shufflelo_epi16_2013 endp

			align 16
uXm_mm_shufflelo_epi16_2020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			136
				ret
uXm_mm_shufflelo_epi16_2020 endp

			align 16
uXm_mm_shufflelo_epi16_2021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			137
				ret
uXm_mm_shufflelo_epi16_2021 endp

			align 16
uXm_mm_shufflelo_epi16_2022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			138
				ret
uXm_mm_shufflelo_epi16_2022 endp

			align 16
uXm_mm_shufflelo_epi16_2023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			139
				ret
uXm_mm_shufflelo_epi16_2023 endp

			align 16
uXm_mm_shufflelo_epi16_2030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			140
				ret
uXm_mm_shufflelo_epi16_2030 endp

			align 16
uXm_mm_shufflelo_epi16_2031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			141
				ret
uXm_mm_shufflelo_epi16_2031 endp

			align 16
uXm_mm_shufflelo_epi16_2032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			142
				ret
uXm_mm_shufflelo_epi16_2032 endp

			align 16
uXm_mm_shufflelo_epi16_2033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			143
				ret
uXm_mm_shufflelo_epi16_2033 endp

			align 16
uXm_mm_shufflelo_epi16_2100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			144
				ret
uXm_mm_shufflelo_epi16_2100 endp

			align 16
uXm_mm_shufflelo_epi16_2101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			145
				ret
uXm_mm_shufflelo_epi16_2101 endp

			align 16
uXm_mm_shufflelo_epi16_2102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				pshuflw				xmm0,			xmm0,			146
				ret
uXm_mm_shufflelo_epi16_2102 endp

			align 16
uXm_mm_shufflelo_epi16_2103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			147
				ret
uXm_mm_shufflelo_epi16_2103 endp

			align 16
uXm_mm_shufflelo_epi16_2110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			148
				ret
uXm_mm_shufflelo_epi16_2110 endp

			align 16
uXm_mm_shufflelo_epi16_2111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			149
				ret
uXm_mm_shufflelo_epi16_2111 endp

			align 16
uXm_mm_shufflelo_epi16_2112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			150
				ret
uXm_mm_shufflelo_epi16_2112 endp

			align 16
uXm_mm_shufflelo_epi16_2113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			151
				ret
uXm_mm_shufflelo_epi16_2113 endp

			align 16
uXm_mm_shufflelo_epi16_2120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			152
				ret
uXm_mm_shufflelo_epi16_2120 endp

			align 16
uXm_mm_shufflelo_epi16_2121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			153
				ret
uXm_mm_shufflelo_epi16_2121 endp

			align 16
uXm_mm_shufflelo_epi16_2122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				pshuflw				xmm0,			xmm0,			154
				ret
uXm_mm_shufflelo_epi16_2122 endp

			align 16
uXm_mm_shufflelo_epi16_2123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			155
				ret
uXm_mm_shufflelo_epi16_2123 endp

			align 16
uXm_mm_shufflelo_epi16_2130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			156
				ret
uXm_mm_shufflelo_epi16_2130 endp

			align 16
uXm_mm_shufflelo_epi16_2131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			157
				ret
uXm_mm_shufflelo_epi16_2131 endp

			align 16
uXm_mm_shufflelo_epi16_2132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			158
				ret
uXm_mm_shufflelo_epi16_2132 endp

			align 16
uXm_mm_shufflelo_epi16_2133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			159
				ret
uXm_mm_shufflelo_epi16_2133 endp

			align 16
uXm_mm_shufflelo_epi16_2200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			160
				ret
uXm_mm_shufflelo_epi16_2200 endp

			align 16
uXm_mm_shufflelo_epi16_2201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			161
				ret
uXm_mm_shufflelo_epi16_2201 endp

			align 16
uXm_mm_shufflelo_epi16_2202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			162
				ret
uXm_mm_shufflelo_epi16_2202 endp

			align 16
uXm_mm_shufflelo_epi16_2203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			163
				ret
uXm_mm_shufflelo_epi16_2203 endp

			align 16
uXm_mm_shufflelo_epi16_2210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			164
				ret
uXm_mm_shufflelo_epi16_2210 endp

			align 16
uXm_mm_shufflelo_epi16_2211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			165
				ret
uXm_mm_shufflelo_epi16_2211 endp

			align 16
uXm_mm_shufflelo_epi16_2212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			166
				ret
uXm_mm_shufflelo_epi16_2212 endp

			align 16
uXm_mm_shufflelo_epi16_2213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			167
				ret
uXm_mm_shufflelo_epi16_2213 endp

			align 16
uXm_mm_shufflelo_epi16_2220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			168
				ret
uXm_mm_shufflelo_epi16_2220 endp

			align 16
uXm_mm_shufflelo_epi16_2221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			169
				ret
uXm_mm_shufflelo_epi16_2221 endp

			align 16
uXm_mm_shufflelo_epi16_2222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			170
				ret
uXm_mm_shufflelo_epi16_2222 endp

			align 16
uXm_mm_shufflelo_epi16_2223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			171
				ret
uXm_mm_shufflelo_epi16_2223 endp

			align 16
uXm_mm_shufflelo_epi16_2230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			172
				ret
uXm_mm_shufflelo_epi16_2230 endp

			align 16
uXm_mm_shufflelo_epi16_2231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			173
				ret
uXm_mm_shufflelo_epi16_2231 endp

			align 16
uXm_mm_shufflelo_epi16_2232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				pshuflw				xmm0,			xmm0,			174
				ret
uXm_mm_shufflelo_epi16_2232 endp

			align 16
uXm_mm_shufflelo_epi16_2233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			175
				ret
uXm_mm_shufflelo_epi16_2233 endp

			align 16
uXm_mm_shufflelo_epi16_2300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			176
				ret
uXm_mm_shufflelo_epi16_2300 endp

			align 16
uXm_mm_shufflelo_epi16_2301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			177
				ret
uXm_mm_shufflelo_epi16_2301 endp

			align 16
uXm_mm_shufflelo_epi16_2302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			178
				ret
uXm_mm_shufflelo_epi16_2302 endp

			align 16
uXm_mm_shufflelo_epi16_2303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			179
				ret
uXm_mm_shufflelo_epi16_2303 endp

			align 16
uXm_mm_shufflelo_epi16_2310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			180
				ret
uXm_mm_shufflelo_epi16_2310 endp

			align 16
uXm_mm_shufflelo_epi16_2311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			181
				ret
uXm_mm_shufflelo_epi16_2311 endp

			align 16
uXm_mm_shufflelo_epi16_2312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			182
				ret
uXm_mm_shufflelo_epi16_2312 endp

			align 16
uXm_mm_shufflelo_epi16_2313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			183
				ret
uXm_mm_shufflelo_epi16_2313 endp

			align 16
uXm_mm_shufflelo_epi16_2320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			184
				ret
uXm_mm_shufflelo_epi16_2320 endp

			align 16
uXm_mm_shufflelo_epi16_2321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			185
				ret
uXm_mm_shufflelo_epi16_2321 endp

			align 16
uXm_mm_shufflelo_epi16_2322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			186
				ret
uXm_mm_shufflelo_epi16_2322 endp

			align 16
uXm_mm_shufflelo_epi16_2323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			187
				ret
uXm_mm_shufflelo_epi16_2323 endp

			align 16
uXm_mm_shufflelo_epi16_2330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			188
				ret
uXm_mm_shufflelo_epi16_2330 endp

			align 16
uXm_mm_shufflelo_epi16_2331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			189
				ret
uXm_mm_shufflelo_epi16_2331 endp

			align 16
uXm_mm_shufflelo_epi16_2332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			190
				ret
uXm_mm_shufflelo_epi16_2332 endp

			align 16
uXm_mm_shufflelo_epi16_2333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			191
				ret
uXm_mm_shufflelo_epi16_2333 endp

			align 16
uXm_mm_shufflelo_epi16_3000 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			192
				ret
uXm_mm_shufflelo_epi16_3000 endp

			align 16
uXm_mm_shufflelo_epi16_3001 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			193
				ret
uXm_mm_shufflelo_epi16_3001 endp

			align 16
uXm_mm_shufflelo_epi16_3002 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			194
				ret
uXm_mm_shufflelo_epi16_3002 endp

			align 16
uXm_mm_shufflelo_epi16_3003 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			195
				ret
uXm_mm_shufflelo_epi16_3003 endp

			align 16
uXm_mm_shufflelo_epi16_3010 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			196
				ret
uXm_mm_shufflelo_epi16_3010 endp

			align 16
uXm_mm_shufflelo_epi16_3011 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			197
				ret
uXm_mm_shufflelo_epi16_3011 endp

			align 16
uXm_mm_shufflelo_epi16_3012 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			198
				ret
uXm_mm_shufflelo_epi16_3012 endp

			align 16
uXm_mm_shufflelo_epi16_3013 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			199
				ret
uXm_mm_shufflelo_epi16_3013 endp

			align 16
uXm_mm_shufflelo_epi16_3020 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			200
				ret
uXm_mm_shufflelo_epi16_3020 endp

			align 16
uXm_mm_shufflelo_epi16_3021 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			201
				ret
uXm_mm_shufflelo_epi16_3021 endp

			align 16
uXm_mm_shufflelo_epi16_3022 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			202
				ret
uXm_mm_shufflelo_epi16_3022 endp

			align 16
uXm_mm_shufflelo_epi16_3023 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			203
				ret
uXm_mm_shufflelo_epi16_3023 endp

			align 16
uXm_mm_shufflelo_epi16_3030 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			204
				ret
uXm_mm_shufflelo_epi16_3030 endp

			align 16
uXm_mm_shufflelo_epi16_3031 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			205
				ret
uXm_mm_shufflelo_epi16_3031 endp

			align 16
uXm_mm_shufflelo_epi16_3032 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			206
				ret
uXm_mm_shufflelo_epi16_3032 endp

			align 16
uXm_mm_shufflelo_epi16_3033 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			207
				ret
uXm_mm_shufflelo_epi16_3033 endp

			align 16
uXm_mm_shufflelo_epi16_3100 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			208
				ret
uXm_mm_shufflelo_epi16_3100 endp

			align 16
uXm_mm_shufflelo_epi16_3101 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			209
				ret
uXm_mm_shufflelo_epi16_3101 endp

			align 16
uXm_mm_shufflelo_epi16_3102 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			210
				ret
uXm_mm_shufflelo_epi16_3102 endp

			align 16
uXm_mm_shufflelo_epi16_3103 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			211
				ret
uXm_mm_shufflelo_epi16_3103 endp

			align 16
uXm_mm_shufflelo_epi16_3110 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			212
				ret
uXm_mm_shufflelo_epi16_3110 endp

			align 16
uXm_mm_shufflelo_epi16_3111 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			213
				ret
uXm_mm_shufflelo_epi16_3111 endp

			align 16
uXm_mm_shufflelo_epi16_3112 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			214
				ret
uXm_mm_shufflelo_epi16_3112 endp

			align 16
uXm_mm_shufflelo_epi16_3113 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			215
				ret
uXm_mm_shufflelo_epi16_3113 endp

			align 16
uXm_mm_shufflelo_epi16_3120 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			216
				ret
uXm_mm_shufflelo_epi16_3120 endp

			align 16
uXm_mm_shufflelo_epi16_3121 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			217
				ret
uXm_mm_shufflelo_epi16_3121 endp

			align 16
uXm_mm_shufflelo_epi16_3122 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			218
				ret
uXm_mm_shufflelo_epi16_3122 endp

			align 16
uXm_mm_shufflelo_epi16_3123 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			219
				ret
uXm_mm_shufflelo_epi16_3123 endp

			align 16
uXm_mm_shufflelo_epi16_3130 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			220
				ret
uXm_mm_shufflelo_epi16_3130 endp

			align 16
uXm_mm_shufflelo_epi16_3131 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			221
				ret
uXm_mm_shufflelo_epi16_3131 endp

			align 16
uXm_mm_shufflelo_epi16_3132 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			222
				ret
uXm_mm_shufflelo_epi16_3132 endp

			align 16
uXm_mm_shufflelo_epi16_3133 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			223
				ret
uXm_mm_shufflelo_epi16_3133 endp

			align 16
uXm_mm_shufflelo_epi16_3200 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			224
				ret
uXm_mm_shufflelo_epi16_3200 endp

			align 16
uXm_mm_shufflelo_epi16_3201 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			225
				ret
uXm_mm_shufflelo_epi16_3201 endp

			align 16
uXm_mm_shufflelo_epi16_3202 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			226
				ret
uXm_mm_shufflelo_epi16_3202 endp

			align 16
uXm_mm_shufflelo_epi16_3203 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			227
				ret
uXm_mm_shufflelo_epi16_3203 endp

			align 16
uXm_mm_shufflelo_epi16_3210 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			228
				ret
uXm_mm_shufflelo_epi16_3210 endp

			align 16
uXm_mm_shufflelo_epi16_3211 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			229
				ret
uXm_mm_shufflelo_epi16_3211 endp

			align 16
uXm_mm_shufflelo_epi16_3212 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			230
				ret
uXm_mm_shufflelo_epi16_3212 endp

			align 16
uXm_mm_shufflelo_epi16_3213 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			231
				ret
uXm_mm_shufflelo_epi16_3213 endp

			align 16
uXm_mm_shufflelo_epi16_3220 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			232
				ret
uXm_mm_shufflelo_epi16_3220 endp

			align 16
uXm_mm_shufflelo_epi16_3221 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			233
				ret
uXm_mm_shufflelo_epi16_3221 endp

			align 16
uXm_mm_shufflelo_epi16_3222 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			234
				ret
uXm_mm_shufflelo_epi16_3222 endp

			align 16
uXm_mm_shufflelo_epi16_3223 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			235
				ret
uXm_mm_shufflelo_epi16_3223 endp

			align 16
uXm_mm_shufflelo_epi16_3230 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			236
				ret
uXm_mm_shufflelo_epi16_3230 endp

			align 16
uXm_mm_shufflelo_epi16_3231 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			237
				ret
uXm_mm_shufflelo_epi16_3231 endp

			align 16
uXm_mm_shufflelo_epi16_3232 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			238
				ret
uXm_mm_shufflelo_epi16_3232 endp

			align 16
uXm_mm_shufflelo_epi16_3233 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			239
				ret
uXm_mm_shufflelo_epi16_3233 endp

			align 16
uXm_mm_shufflelo_epi16_3300 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			240
				ret
uXm_mm_shufflelo_epi16_3300 endp

			align 16
uXm_mm_shufflelo_epi16_3301 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			241
				ret
uXm_mm_shufflelo_epi16_3301 endp

			align 16
uXm_mm_shufflelo_epi16_3302 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			242
				ret
uXm_mm_shufflelo_epi16_3302 endp

			align 16
uXm_mm_shufflelo_epi16_3303 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			243
				ret
uXm_mm_shufflelo_epi16_3303 endp

			align 16
uXm_mm_shufflelo_epi16_3310 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			244
				ret
uXm_mm_shufflelo_epi16_3310 endp

			align 16
uXm_mm_shufflelo_epi16_3311 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			245
				ret
uXm_mm_shufflelo_epi16_3311 endp

			align 16
uXm_mm_shufflelo_epi16_3312 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			246
				ret
uXm_mm_shufflelo_epi16_3312 endp

			align 16
uXm_mm_shufflelo_epi16_3313 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			247
				ret
uXm_mm_shufflelo_epi16_3313 endp

			align 16
uXm_mm_shufflelo_epi16_3320 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			248
				ret
uXm_mm_shufflelo_epi16_3320 endp

			align 16
uXm_mm_shufflelo_epi16_3321 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			249
				ret
uXm_mm_shufflelo_epi16_3321 endp

			align 16
uXm_mm_shufflelo_epi16_3322 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			250
				ret
uXm_mm_shufflelo_epi16_3322 endp

			align 16
uXm_mm_shufflelo_epi16_3323 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			251
				ret
uXm_mm_shufflelo_epi16_3323 endp

			align 16
uXm_mm_shufflelo_epi16_3330 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			252
				ret
uXm_mm_shufflelo_epi16_3330 endp

			align 16
uXm_mm_shufflelo_epi16_3331 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			253
				ret
uXm_mm_shufflelo_epi16_3331 endp

			align 16
uXm_mm_shufflelo_epi16_3332 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			254
				ret
uXm_mm_shufflelo_epi16_3332 endp

			align 16
uXm_mm_shufflelo_epi16_3333 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				pshuflw				xmm0,			xmm0,			255
				ret
uXm_mm_shufflelo_epi16_3333 endp

			align 16
uXm_mm_shufflelo_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword
				
		ifndef __X64__
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam3]
			lea				ebx,			[mmshufloepi16jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmshufloepi16jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam3]
			lea				rbx,			[mmshufloepi16jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmshufloepi16jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmshufloepi16word		textequ		<dword>
			mmshufloepi16iword 	textequ		<dd>
		else
			mmshufloepi16word		textequ		<qword>
			mmshufloepi16iword 	textequ		<dq>
		endif
		
		mmshufloepi16jmptable label mmshufloepi16word
			mmshufloepi16iword offset mmshufloepi16_0, offset mmshufloepi16_1, offset mmshufloepi16_2, offset mmshufloepi16_3, offset mmshufloepi16_4, offset mmshufloepi16_5, offset mmshufloepi16_6, offset mmshufloepi16_7, offset mmshufloepi16_8, offset mmshufloepi16_9, offset mmshufloepi16_10, offset mmshufloepi16_11, offset mmshufloepi16_12, offset mmshufloepi16_13, offset mmshufloepi16_14, offset mmshufloepi16_15, offset mmshufloepi16_16, offset mmshufloepi16_17, offset mmshufloepi16_18, offset mmshufloepi16_19, offset mmshufloepi16_20, offset mmshufloepi16_21, offset mmshufloepi16_22, offset mmshufloepi16_23, offset mmshufloepi16_24, offset mmshufloepi16_25
			mmshufloepi16iword offset mmshufloepi16_26, offset mmshufloepi16_27, offset mmshufloepi16_28, offset mmshufloepi16_29, offset mmshufloepi16_30, offset mmshufloepi16_31, offset mmshufloepi16_32, offset mmshufloepi16_33, offset mmshufloepi16_34, offset mmshufloepi16_35, offset mmshufloepi16_36, offset mmshufloepi16_37, offset mmshufloepi16_38, offset mmshufloepi16_39, offset mmshufloepi16_40, offset mmshufloepi16_41, offset mmshufloepi16_42, offset mmshufloepi16_43, offset mmshufloepi16_44, offset mmshufloepi16_45, offset mmshufloepi16_46, offset mmshufloepi16_47, offset mmshufloepi16_48, offset mmshufloepi16_49, offset mmshufloepi16_50
			mmshufloepi16iword offset mmshufloepi16_51, offset mmshufloepi16_52, offset mmshufloepi16_53, offset mmshufloepi16_54, offset mmshufloepi16_55, offset mmshufloepi16_56, offset mmshufloepi16_57, offset mmshufloepi16_58, offset mmshufloepi16_59, offset mmshufloepi16_60, offset mmshufloepi16_61, offset mmshufloepi16_62, offset mmshufloepi16_63, offset mmshufloepi16_64, offset mmshufloepi16_65, offset mmshufloepi16_66, offset mmshufloepi16_67, offset mmshufloepi16_68, offset mmshufloepi16_69, offset mmshufloepi16_70, offset mmshufloepi16_71, offset mmshufloepi16_72, offset mmshufloepi16_73, offset mmshufloepi16_74, offset mmshufloepi16_75
			mmshufloepi16iword offset mmshufloepi16_76, offset mmshufloepi16_77, offset mmshufloepi16_78, offset mmshufloepi16_79, offset mmshufloepi16_80, offset mmshufloepi16_81, offset mmshufloepi16_82, offset mmshufloepi16_83, offset mmshufloepi16_84, offset mmshufloepi16_85, offset mmshufloepi16_86, offset mmshufloepi16_87, offset mmshufloepi16_88, offset mmshufloepi16_89, offset mmshufloepi16_90, offset mmshufloepi16_91, offset mmshufloepi16_92, offset mmshufloepi16_93, offset mmshufloepi16_94, offset mmshufloepi16_95, offset mmshufloepi16_96, offset mmshufloepi16_97, offset mmshufloepi16_98, offset mmshufloepi16_99, offset mmshufloepi16_100
			mmshufloepi16iword offset mmshufloepi16_101, offset mmshufloepi16_102, offset mmshufloepi16_103, offset mmshufloepi16_104, offset mmshufloepi16_105, offset mmshufloepi16_106, offset mmshufloepi16_107, offset mmshufloepi16_108, offset mmshufloepi16_109, offset mmshufloepi16_110, offset mmshufloepi16_111, offset mmshufloepi16_112, offset mmshufloepi16_113, offset mmshufloepi16_114, offset mmshufloepi16_115, offset mmshufloepi16_116, offset mmshufloepi16_117, offset mmshufloepi16_118, offset mmshufloepi16_119, offset mmshufloepi16_120, offset mmshufloepi16_121, offset mmshufloepi16_122, offset mmshufloepi16_123, offset mmshufloepi16_124, offset mmshufloepi16_125
			mmshufloepi16iword offset mmshufloepi16_126, offset mmshufloepi16_127, offset mmshufloepi16_128, offset mmshufloepi16_129, offset mmshufloepi16_130, offset mmshufloepi16_131, offset mmshufloepi16_132, offset mmshufloepi16_133, offset mmshufloepi16_134, offset mmshufloepi16_135, offset mmshufloepi16_136, offset mmshufloepi16_137, offset mmshufloepi16_138, offset mmshufloepi16_139, offset mmshufloepi16_140, offset mmshufloepi16_141, offset mmshufloepi16_142, offset mmshufloepi16_143, offset mmshufloepi16_144, offset mmshufloepi16_145, offset mmshufloepi16_146, offset mmshufloepi16_147, offset mmshufloepi16_148, offset mmshufloepi16_149, offset mmshufloepi16_150
			mmshufloepi16iword offset mmshufloepi16_151, offset mmshufloepi16_152, offset mmshufloepi16_153, offset mmshufloepi16_154, offset mmshufloepi16_155, offset mmshufloepi16_156, offset mmshufloepi16_157, offset mmshufloepi16_158, offset mmshufloepi16_159, offset mmshufloepi16_160, offset mmshufloepi16_161, offset mmshufloepi16_162, offset mmshufloepi16_163, offset mmshufloepi16_164, offset mmshufloepi16_165, offset mmshufloepi16_166, offset mmshufloepi16_167, offset mmshufloepi16_168, offset mmshufloepi16_169, offset mmshufloepi16_170, offset mmshufloepi16_171, offset mmshufloepi16_172, offset mmshufloepi16_173, offset mmshufloepi16_174, offset mmshufloepi16_175
			mmshufloepi16iword offset mmshufloepi16_176, offset mmshufloepi16_177, offset mmshufloepi16_178, offset mmshufloepi16_179, offset mmshufloepi16_180, offset mmshufloepi16_181, offset mmshufloepi16_182, offset mmshufloepi16_183, offset mmshufloepi16_184, offset mmshufloepi16_185, offset mmshufloepi16_186, offset mmshufloepi16_187, offset mmshufloepi16_188, offset mmshufloepi16_189, offset mmshufloepi16_190, offset mmshufloepi16_191, offset mmshufloepi16_192, offset mmshufloepi16_193, offset mmshufloepi16_194, offset mmshufloepi16_195, offset mmshufloepi16_196, offset mmshufloepi16_197, offset mmshufloepi16_198, offset mmshufloepi16_199, offset mmshufloepi16_200
			mmshufloepi16iword offset mmshufloepi16_201, offset mmshufloepi16_202, offset mmshufloepi16_203, offset mmshufloepi16_204, offset mmshufloepi16_205, offset mmshufloepi16_206, offset mmshufloepi16_207, offset mmshufloepi16_208, offset mmshufloepi16_209, offset mmshufloepi16_210, offset mmshufloepi16_211, offset mmshufloepi16_212, offset mmshufloepi16_213, offset mmshufloepi16_214, offset mmshufloepi16_215, offset mmshufloepi16_216, offset mmshufloepi16_217, offset mmshufloepi16_218, offset mmshufloepi16_219, offset mmshufloepi16_220, offset mmshufloepi16_221, offset mmshufloepi16_222, offset mmshufloepi16_223, offset mmshufloepi16_224, offset mmshufloepi16_225
			mmshufloepi16iword offset mmshufloepi16_226, offset mmshufloepi16_227, offset mmshufloepi16_228, offset mmshufloepi16_229, offset mmshufloepi16_230, offset mmshufloepi16_231, offset mmshufloepi16_232, offset mmshufloepi16_233, offset mmshufloepi16_234, offset mmshufloepi16_235, offset mmshufloepi16_236, offset mmshufloepi16_237, offset mmshufloepi16_238, offset mmshufloepi16_239, offset mmshufloepi16_240, offset mmshufloepi16_241, offset mmshufloepi16_242, offset mmshufloepi16_243, offset mmshufloepi16_244, offset mmshufloepi16_245, offset mmshufloepi16_246, offset mmshufloepi16_247, offset mmshufloepi16_248, offset mmshufloepi16_249, offset mmshufloepi16_250
			mmshufloepi16iword offset mmshufloepi16_251, offset mmshufloepi16_252, offset mmshufloepi16_253, offset mmshufloepi16_254, offset mmshufloepi16_255				

			mmshufloepi16_0 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0000
			mmshufloepi16_1 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0001
			mmshufloepi16_2 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0002
			mmshufloepi16_3 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0003
			mmshufloepi16_4 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0010
			mmshufloepi16_5 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0011
			mmshufloepi16_6 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0012
			mmshufloepi16_7 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0013
			mmshufloepi16_8 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0020
			mmshufloepi16_9 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0021
			mmshufloepi16_10 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0022
			mmshufloepi16_11 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0023
			mmshufloepi16_12 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0030
			mmshufloepi16_13 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0031
			mmshufloepi16_14 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0032
			mmshufloepi16_15 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0033
			mmshufloepi16_16 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0100
			mmshufloepi16_17 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0101
			mmshufloepi16_18 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0102
			mmshufloepi16_19 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0103
			mmshufloepi16_20 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0110
			mmshufloepi16_21 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0111
			mmshufloepi16_22 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0112
			mmshufloepi16_23 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0113
			mmshufloepi16_24 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0120
			mmshufloepi16_25 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0121
			mmshufloepi16_26 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0122
			mmshufloepi16_27 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0123
			mmshufloepi16_28 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0130
			mmshufloepi16_29 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0131
			mmshufloepi16_30 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0132
			mmshufloepi16_31 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0133
			mmshufloepi16_32 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0200
			mmshufloepi16_33 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0201
			mmshufloepi16_34 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0202
			mmshufloepi16_35 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0203
			mmshufloepi16_36 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0210
			mmshufloepi16_37 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0211
			mmshufloepi16_38 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0212
			mmshufloepi16_39 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0213
			mmshufloepi16_40 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0220
			mmshufloepi16_41 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0221
			mmshufloepi16_42 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0222
			mmshufloepi16_43 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0223
			mmshufloepi16_44 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0230
			mmshufloepi16_45 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0231
			mmshufloepi16_46 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0232
			mmshufloepi16_47 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0233
			mmshufloepi16_48 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0300
			mmshufloepi16_49 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0301
			mmshufloepi16_50 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0302
			mmshufloepi16_51 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0303
			mmshufloepi16_52 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0310
			mmshufloepi16_53 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0311
			mmshufloepi16_54 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0312
			mmshufloepi16_55 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0313
			mmshufloepi16_56 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0320
			mmshufloepi16_57 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0321
			mmshufloepi16_58 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0322
			mmshufloepi16_59 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0323
			mmshufloepi16_60 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0330
			mmshufloepi16_61 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0331
			mmshufloepi16_62 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0332
			mmshufloepi16_63 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_0333
			mmshufloepi16_64 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1000
			mmshufloepi16_65 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1001
			mmshufloepi16_66 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1002
			mmshufloepi16_67 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1003
			mmshufloepi16_68 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1010
			mmshufloepi16_69 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1011
			mmshufloepi16_70 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1012
			mmshufloepi16_71 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1013
			mmshufloepi16_72 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1020
			mmshufloepi16_73 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1021
			mmshufloepi16_74 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1022
			mmshufloepi16_75 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1023
			mmshufloepi16_76 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1030
			mmshufloepi16_77 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1031
			mmshufloepi16_78 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1032
			mmshufloepi16_79 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1033
			mmshufloepi16_80 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1100
			mmshufloepi16_81 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1101
			mmshufloepi16_82 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1102
			mmshufloepi16_83 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1103
			mmshufloepi16_84 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1110
			mmshufloepi16_85 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1111
			mmshufloepi16_86 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1112
			mmshufloepi16_87 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1113
			mmshufloepi16_88 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1120
			mmshufloepi16_89 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1121
			mmshufloepi16_90 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1122
			mmshufloepi16_91 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1123
			mmshufloepi16_92 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1130
			mmshufloepi16_93 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1131
			mmshufloepi16_94 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1132
			mmshufloepi16_95 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1133
			mmshufloepi16_96 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1200
			mmshufloepi16_97 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1201
			mmshufloepi16_98 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1202
			mmshufloepi16_99 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1203
			mmshufloepi16_100 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1210
			mmshufloepi16_101 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1211
			mmshufloepi16_102 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1212
			mmshufloepi16_103 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1213
			mmshufloepi16_104 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1220
			mmshufloepi16_105 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1221
			mmshufloepi16_106 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1222
			mmshufloepi16_107 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1223
			mmshufloepi16_108 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1230
			mmshufloepi16_109 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1231
			mmshufloepi16_110 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1232
			mmshufloepi16_111 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1233
			mmshufloepi16_112 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1300
			mmshufloepi16_113 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1301
			mmshufloepi16_114 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1302
			mmshufloepi16_115 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1303
			mmshufloepi16_116 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1310
			mmshufloepi16_117 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1311
			mmshufloepi16_118 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1312
			mmshufloepi16_119 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1313
			mmshufloepi16_120 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1320
			mmshufloepi16_121 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1321
			mmshufloepi16_122 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1322
			mmshufloepi16_123 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1323
			mmshufloepi16_124 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1330
			mmshufloepi16_125 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1331
			mmshufloepi16_126 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1332
			mmshufloepi16_127 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_1333
			mmshufloepi16_128 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2000
			mmshufloepi16_129 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2001
			mmshufloepi16_130 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2002
			mmshufloepi16_131 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2003
			mmshufloepi16_132 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2010
			mmshufloepi16_133 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2011
			mmshufloepi16_134 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2012
			mmshufloepi16_135 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2013
			mmshufloepi16_136 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2020
			mmshufloepi16_137 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2021
			mmshufloepi16_138 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2022
			mmshufloepi16_139 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2023
			mmshufloepi16_140 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2030
			mmshufloepi16_141 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2031
			mmshufloepi16_142 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2032
			mmshufloepi16_143 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2033
			mmshufloepi16_144 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2100
			mmshufloepi16_145 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2101
			mmshufloepi16_146 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2102
			mmshufloepi16_147 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2103
			mmshufloepi16_148 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2110
			mmshufloepi16_149 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2111
			mmshufloepi16_150 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2112
			mmshufloepi16_151 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2113
			mmshufloepi16_152 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2120
			mmshufloepi16_153 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2121
			mmshufloepi16_154 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2122
			mmshufloepi16_155 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2123
			mmshufloepi16_156 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2130
			mmshufloepi16_157 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2131
			mmshufloepi16_158 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2132
			mmshufloepi16_159 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2133
			mmshufloepi16_160 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2200
			mmshufloepi16_161 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2201
			mmshufloepi16_162 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2202
			mmshufloepi16_163 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2203
			mmshufloepi16_164 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2210
			mmshufloepi16_165 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2211
			mmshufloepi16_166 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2212
			mmshufloepi16_167 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2213
			mmshufloepi16_168 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2220
			mmshufloepi16_169 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2221
			mmshufloepi16_170 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2222
			mmshufloepi16_171 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2223
			mmshufloepi16_172 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2230
			mmshufloepi16_173 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2231
			mmshufloepi16_174 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2232
			mmshufloepi16_175 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2233
			mmshufloepi16_176 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2300
			mmshufloepi16_177 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2301
			mmshufloepi16_178 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2302
			mmshufloepi16_179 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2303
			mmshufloepi16_180 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2310
			mmshufloepi16_181 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2311
			mmshufloepi16_182 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2312
			mmshufloepi16_183 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2313
			mmshufloepi16_184 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2320
			mmshufloepi16_185 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2321
			mmshufloepi16_186 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2322
			mmshufloepi16_187 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2323
			mmshufloepi16_188 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2330
			mmshufloepi16_189 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2331
			mmshufloepi16_190 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2332
			mmshufloepi16_191 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_2333
			mmshufloepi16_192 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3000
			mmshufloepi16_193 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3001
			mmshufloepi16_194 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3002
			mmshufloepi16_195 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3003
			mmshufloepi16_196 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3010
			mmshufloepi16_197 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3011
			mmshufloepi16_198 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3012
			mmshufloepi16_199 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3013
			mmshufloepi16_200 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3020
			mmshufloepi16_201 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3021
			mmshufloepi16_202 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3022
			mmshufloepi16_203 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3023
			mmshufloepi16_204 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3030
			mmshufloepi16_205 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3031
			mmshufloepi16_206 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3032
			mmshufloepi16_207 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3033
			mmshufloepi16_208 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3100
			mmshufloepi16_209 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3101
			mmshufloepi16_210 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3102
			mmshufloepi16_211 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3103
			mmshufloepi16_212 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3110
			mmshufloepi16_213 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3111
			mmshufloepi16_214 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3112
			mmshufloepi16_215 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3113
			mmshufloepi16_216 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3120
			mmshufloepi16_217 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3121
			mmshufloepi16_218 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3122
			mmshufloepi16_219 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3123
			mmshufloepi16_220 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3130
			mmshufloepi16_221 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3131
			mmshufloepi16_222 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3132
			mmshufloepi16_223 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3133
			mmshufloepi16_224 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3200
			mmshufloepi16_225 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3201
			mmshufloepi16_226 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3202
			mmshufloepi16_227 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3203
			mmshufloepi16_228 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3210
			mmshufloepi16_229 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3211
			mmshufloepi16_230 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3212
			mmshufloepi16_231 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3213
			mmshufloepi16_232 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3220
			mmshufloepi16_233 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3221
			mmshufloepi16_234 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3222
			mmshufloepi16_235 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3223
			mmshufloepi16_236 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3230
			mmshufloepi16_237 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3231
			mmshufloepi16_238 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3232
			mmshufloepi16_239 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3233
			mmshufloepi16_240 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3300
			mmshufloepi16_241 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3301
			mmshufloepi16_242 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3302
			mmshufloepi16_243 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3303
			mmshufloepi16_244 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3310
			mmshufloepi16_245 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3311
			mmshufloepi16_246 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3312
			mmshufloepi16_247 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3313
			mmshufloepi16_248 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3320
			mmshufloepi16_249 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3321
			mmshufloepi16_250 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3322
			mmshufloepi16_251 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3323
			mmshufloepi16_252 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3330
			mmshufloepi16_253 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3331
			mmshufloepi16_254 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3332
			mmshufloepi16_255 label mmshufloepi16word
				jmp		uXm_mm_shufflelo_epi16_3333

uXm_mm_shufflelo_epi16 endp

	end
