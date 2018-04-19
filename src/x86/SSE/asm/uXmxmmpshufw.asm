
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.code

ifdef __X32__
;******************
; Proto
;******************
uXm_mm_pshufw_0000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0102 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0122 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0232 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_0333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1102 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1122 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1232 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_1333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2102 proto UX_VECCALL (mmword) ;Inmm_A:mmword 
uXm_mm_pshufw_2103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2122 proto UX_VECCALL (mmword) ;Inmm_A:mmword 
uXm_mm_pshufw_2123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2232 proto UX_VECCALL (mmword) ;Inmm_A:mmword 
uXm_mm_pshufw_2233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_2333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3102 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3122 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3232 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw_3333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
uXm_mm_pshufw proto UX_VECCALL (mmword) ;Inmm_A:mmword, _Imm8:dword

;******************
; Proc
;******************
			align 8
uXm_mm_pshufw_0000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			0
				ret
uXm_mm_pshufw_0000 endp

			align 8
uXm_mm_pshufw_0001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			1
				ret
uXm_mm_pshufw_0001 endp

			align 8
uXm_mm_pshufw_0002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			2
				ret
uXm_mm_pshufw_0002 endp

			align 8
uXm_mm_pshufw_0003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			3
				ret
uXm_mm_pshufw_0003 endp

			align 8
uXm_mm_pshufw_0010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			4
				ret
uXm_mm_pshufw_0010 endp

			align 8
uXm_mm_pshufw_0011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			5
				ret
uXm_mm_pshufw_0011 endp

			align 8
uXm_mm_pshufw_0012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			6
				ret
uXm_mm_pshufw_0012 endp

			align 8
uXm_mm_pshufw_0013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			7
				ret
uXm_mm_pshufw_0013 endp

			align 8
uXm_mm_pshufw_0020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			8
				ret
uXm_mm_pshufw_0020 endp

			align 8
uXm_mm_pshufw_0021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			9
				ret
uXm_mm_pshufw_0021 endp

			align 8
uXm_mm_pshufw_0022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			10
				ret
uXm_mm_pshufw_0022 endp

			align 8
uXm_mm_pshufw_0023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			11
				ret
uXm_mm_pshufw_0023 endp

			align 8
uXm_mm_pshufw_0030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			12
				ret
uXm_mm_pshufw_0030 endp

			align 8
uXm_mm_pshufw_0031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			13
				ret
uXm_mm_pshufw_0031 endp

			align 8
uXm_mm_pshufw_0032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			14
				ret
uXm_mm_pshufw_0032 endp

			align 8
uXm_mm_pshufw_0033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			15
				ret
uXm_mm_pshufw_0033 endp

			align 8
uXm_mm_pshufw_0100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			8
				ret
uXm_mm_pshufw_0100 endp

			align 8
uXm_mm_pshufw_0101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			17
				ret
uXm_mm_pshufw_0101 endp

			align 8
uXm_mm_pshufw_0102 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			18
				ret
uXm_mm_pshufw_0102 endp

			align 8
uXm_mm_pshufw_0103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			19
				ret
uXm_mm_pshufw_0103 endp

			align 8
uXm_mm_pshufw_0110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			20
				ret
uXm_mm_pshufw_0110 endp

			align 8
uXm_mm_pshufw_0111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			21
				ret
uXm_mm_pshufw_0111 endp

			align 8
uXm_mm_pshufw_0112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			22
				ret
uXm_mm_pshufw_0112 endp

			align 8
uXm_mm_pshufw_0113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			23
				ret
uXm_mm_pshufw_0113 endp

			align 8
uXm_mm_pshufw_0120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			24
				ret
uXm_mm_pshufw_0120 endp

			align 8
uXm_mm_pshufw_0121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			25
				ret
uXm_mm_pshufw_0121 endp

			align 8
uXm_mm_pshufw_0122 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			26
				ret
uXm_mm_pshufw_0122 endp

			align 8
uXm_mm_pshufw_0123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			27
				ret
uXm_mm_pshufw_0123 endp

			align 8
uXm_mm_pshufw_0130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			28
				ret
uXm_mm_pshufw_0130 endp

			align 8
uXm_mm_pshufw_0131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			29
				ret
uXm_mm_pshufw_0131 endp

			align 8
uXm_mm_pshufw_0132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			30
				ret
uXm_mm_pshufw_0132 endp

			align 8
uXm_mm_pshufw_0133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			31
				ret
uXm_mm_pshufw_0133 endp

			align 8
uXm_mm_pshufw_0200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			32
				ret
uXm_mm_pshufw_0200 endp

			align 8
uXm_mm_pshufw_0201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			33
				ret
uXm_mm_pshufw_0201 endp

			align 8
uXm_mm_pshufw_0202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			34
				ret
uXm_mm_pshufw_0202 endp

			align 8
uXm_mm_pshufw_0203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			35
				ret
uXm_mm_pshufw_0203 endp

			align 8
uXm_mm_pshufw_0210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			36
				ret
uXm_mm_pshufw_0210 endp

			align 8
uXm_mm_pshufw_0211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			37
				ret
uXm_mm_pshufw_0211 endp

			align 8
uXm_mm_pshufw_0212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			38
				ret
uXm_mm_pshufw_0212 endp

			align 8
uXm_mm_pshufw_0213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			39
				ret
uXm_mm_pshufw_0213 endp

			align 8
uXm_mm_pshufw_0220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			40
				ret
uXm_mm_pshufw_0220 endp

			align 8
uXm_mm_pshufw_0221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			41
				ret
uXm_mm_pshufw_0221 endp

			align 8
uXm_mm_pshufw_0222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			42
				ret
uXm_mm_pshufw_0222 endp

			align 8
uXm_mm_pshufw_0223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			43
				ret
uXm_mm_pshufw_0223 endp

			align 8
uXm_mm_pshufw_0230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			44
				ret
uXm_mm_pshufw_0230 endp

			align 8
uXm_mm_pshufw_0231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			45
				ret
uXm_mm_pshufw_0231 endp

			align 8
uXm_mm_pshufw_0232 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			46
				ret
uXm_mm_pshufw_0232 endp

			align 8
uXm_mm_pshufw_0233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			47
				ret
uXm_mm_pshufw_0233 endp

			align 8
uXm_mm_pshufw_0300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			48
				ret
uXm_mm_pshufw_0300 endp

			align 8
uXm_mm_pshufw_0301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			49
				ret
uXm_mm_pshufw_0301 endp

			align 8
uXm_mm_pshufw_0302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			50
				ret
uXm_mm_pshufw_0302 endp

			align 8
uXm_mm_pshufw_0303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			51
				ret
uXm_mm_pshufw_0303 endp

			align 8
uXm_mm_pshufw_0310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			52
				ret
uXm_mm_pshufw_0310 endp

			align 8
uXm_mm_pshufw_0311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			53
				ret
uXm_mm_pshufw_0311 endp

			align 8
uXm_mm_pshufw_0312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			54
				ret
uXm_mm_pshufw_0312 endp

			align 8
uXm_mm_pshufw_0313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			55
				ret
uXm_mm_pshufw_0313 endp

			align 8
uXm_mm_pshufw_0320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			56
				ret
uXm_mm_pshufw_0320 endp

			align 8
uXm_mm_pshufw_0321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			57
				ret
uXm_mm_pshufw_0321 endp

			align 8
uXm_mm_pshufw_0322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			58
				ret
uXm_mm_pshufw_0322 endp

			align 8
uXm_mm_pshufw_0323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			59
				ret
uXm_mm_pshufw_0323 endp

			align 8
uXm_mm_pshufw_0330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			60
				ret
uXm_mm_pshufw_0330 endp

			align 8
uXm_mm_pshufw_0331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			61
				ret
uXm_mm_pshufw_0331 endp

			align 8
uXm_mm_pshufw_0332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			62
				ret
uXm_mm_pshufw_0332 endp

			align 8
uXm_mm_pshufw_0333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			63
				ret
uXm_mm_pshufw_0333 endp

			align 8
uXm_mm_pshufw_1000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			64
				ret
uXm_mm_pshufw_1000 endp

			align 8
uXm_mm_pshufw_1001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			65
				ret
uXm_mm_pshufw_1001 endp

			align 8
uXm_mm_pshufw_1002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			66
				ret
uXm_mm_pshufw_1002 endp

			align 8
uXm_mm_pshufw_1003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			67
				ret
uXm_mm_pshufw_1003 endp

			align 8
uXm_mm_pshufw_1010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			68
				ret
uXm_mm_pshufw_1010 endp

			align 8
uXm_mm_pshufw_1011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			69
				ret
uXm_mm_pshufw_1011 endp

			align 8
uXm_mm_pshufw_1012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			70
				ret
uXm_mm_pshufw_1012 endp

			align 8
uXm_mm_pshufw_1013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			71
				ret
uXm_mm_pshufw_1013 endp

			align 8
uXm_mm_pshufw_1020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			72
				ret
uXm_mm_pshufw_1020 endp

			align 8
uXm_mm_pshufw_1021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			73
				ret
uXm_mm_pshufw_1021 endp

			align 8
uXm_mm_pshufw_1022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			74
				ret
uXm_mm_pshufw_1022 endp

			align 8
uXm_mm_pshufw_1023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			75
				ret
uXm_mm_pshufw_1023 endp

			align 8
uXm_mm_pshufw_1030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			76
				ret
uXm_mm_pshufw_1030 endp

			align 8
uXm_mm_pshufw_1031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			77
				ret
uXm_mm_pshufw_1031 endp

			align 8
uXm_mm_pshufw_1032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			78
				ret
uXm_mm_pshufw_1032 endp

			align 8
uXm_mm_pshufw_1033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			79
				ret
uXm_mm_pshufw_1033 endp

			align 8
uXm_mm_pshufw_1100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			80
				ret
uXm_mm_pshufw_1100 endp

			align 8
uXm_mm_pshufw_1101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			81
				ret
uXm_mm_pshufw_1101 endp

			align 8
uXm_mm_pshufw_1102 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			82
				ret
uXm_mm_pshufw_1102 endp

			align 8
uXm_mm_pshufw_1103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			83
				ret
uXm_mm_pshufw_1103 endp

			align 8
uXm_mm_pshufw_1110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			84
				ret
uXm_mm_pshufw_1110 endp

			align 8
uXm_mm_pshufw_1111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			85
				ret
uXm_mm_pshufw_1111 endp

			align 8
uXm_mm_pshufw_1112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			86
				ret
uXm_mm_pshufw_1112 endp

			align 8
uXm_mm_pshufw_1113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			87
				ret
uXm_mm_pshufw_1113 endp

			align 8
uXm_mm_pshufw_1120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			88
				ret
uXm_mm_pshufw_1120 endp

			align 8
uXm_mm_pshufw_1121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			89
				ret
uXm_mm_pshufw_1121 endp

			align 8
uXm_mm_pshufw_1122 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			90
				ret
uXm_mm_pshufw_1122 endp

			align 8
uXm_mm_pshufw_1123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			91
				ret
uXm_mm_pshufw_1123 endp

			align 8
uXm_mm_pshufw_1130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			92
				ret
uXm_mm_pshufw_1130 endp

			align 8
uXm_mm_pshufw_1131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			93
				ret
uXm_mm_pshufw_1131 endp

			align 8
uXm_mm_pshufw_1132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			94
				ret
uXm_mm_pshufw_1132 endp

			align 8
uXm_mm_pshufw_1133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			95
				ret
uXm_mm_pshufw_1133 endp

			align 8
uXm_mm_pshufw_1200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			96
				ret
uXm_mm_pshufw_1200 endp

			align 8
uXm_mm_pshufw_1201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			97
				ret
uXm_mm_pshufw_1201 endp

			align 8
uXm_mm_pshufw_1202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			98
				ret
uXm_mm_pshufw_1202 endp

			align 8
uXm_mm_pshufw_1203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			99
				ret
uXm_mm_pshufw_1203 endp

			align 8
uXm_mm_pshufw_1210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			100
				ret
uXm_mm_pshufw_1210 endp

			align 8
uXm_mm_pshufw_1211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			101
				ret
uXm_mm_pshufw_1211 endp

			align 8
uXm_mm_pshufw_1212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			102
				ret
uXm_mm_pshufw_1212 endp

			align 8
uXm_mm_pshufw_1213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			103
				ret
uXm_mm_pshufw_1213 endp

			align 8
uXm_mm_pshufw_1220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			104
				ret
uXm_mm_pshufw_1220 endp

			align 8
uXm_mm_pshufw_1221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			105
				ret
uXm_mm_pshufw_1221 endp

			align 8
uXm_mm_pshufw_1222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			106
				ret
uXm_mm_pshufw_1222 endp

			align 8
uXm_mm_pshufw_1223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			107
				ret
uXm_mm_pshufw_1223 endp

			align 8
uXm_mm_pshufw_1230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			108
				ret
uXm_mm_pshufw_1230 endp

			align 8
uXm_mm_pshufw_1231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			109
				ret
uXm_mm_pshufw_1231 endp

			align 8
uXm_mm_pshufw_1232 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			110
				ret
uXm_mm_pshufw_1232 endp

			align 8
uXm_mm_pshufw_1233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			111
				ret
uXm_mm_pshufw_1233 endp

			align 8
uXm_mm_pshufw_1300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			112
				ret
uXm_mm_pshufw_1300 endp

			align 8
uXm_mm_pshufw_1301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			113
				ret
uXm_mm_pshufw_1301 endp

			align 8
uXm_mm_pshufw_1302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			114
				ret
uXm_mm_pshufw_1302 endp

			align 8
uXm_mm_pshufw_1303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			115
				ret
uXm_mm_pshufw_1303 endp

			align 8
uXm_mm_pshufw_1310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			18
				ret
uXm_mm_pshufw_1310 endp

			align 8
uXm_mm_pshufw_1311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			117
				ret
uXm_mm_pshufw_1311 endp

			align 8
uXm_mm_pshufw_1312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			118
				ret
uXm_mm_pshufw_1312 endp

			align 8
uXm_mm_pshufw_1313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			119
				ret
uXm_mm_pshufw_1313 endp

			align 8
uXm_mm_pshufw_1320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			120
				ret
uXm_mm_pshufw_1320 endp

			align 8
uXm_mm_pshufw_1321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			121
				ret
uXm_mm_pshufw_1321 endp

			align 8
uXm_mm_pshufw_1322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			122
				ret
uXm_mm_pshufw_1322 endp

			align 8
uXm_mm_pshufw_1323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			123
				ret
uXm_mm_pshufw_1323 endp

			align 8
uXm_mm_pshufw_1330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			124
				ret
uXm_mm_pshufw_1330 endp

			align 8
uXm_mm_pshufw_1331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			125
				ret
uXm_mm_pshufw_1331 endp

			align 8
uXm_mm_pshufw_1332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			126
				ret
uXm_mm_pshufw_1332 endp

			align 8
uXm_mm_pshufw_1333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			127
				ret
uXm_mm_pshufw_1333 endp

			align 8
uXm_mm_pshufw_2000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			128
				ret
uXm_mm_pshufw_2000 endp

			align 8
uXm_mm_pshufw_2001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			129
				ret
uXm_mm_pshufw_2001 endp

			align 8
uXm_mm_pshufw_2002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			130
				ret
uXm_mm_pshufw_2002 endp

			align 8
uXm_mm_pshufw_2003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			131
				ret
uXm_mm_pshufw_2003 endp

			align 8
uXm_mm_pshufw_2010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			132
				ret
uXm_mm_pshufw_2010 endp

			align 8
uXm_mm_pshufw_2011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			133
				ret
uXm_mm_pshufw_2011 endp

			align 8
uXm_mm_pshufw_2012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			134
				ret
uXm_mm_pshufw_2012 endp

			align 8
uXm_mm_pshufw_2013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			135
				ret
uXm_mm_pshufw_2013 endp

			align 8
uXm_mm_pshufw_2020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			136
				ret
uXm_mm_pshufw_2020 endp

			align 8
uXm_mm_pshufw_2021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			137
				ret
uXm_mm_pshufw_2021 endp

			align 8
uXm_mm_pshufw_2022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			138
				ret
uXm_mm_pshufw_2022 endp

			align 8
uXm_mm_pshufw_2023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			139
				ret
uXm_mm_pshufw_2023 endp

			align 8
uXm_mm_pshufw_2030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			140
				ret
uXm_mm_pshufw_2030 endp

			align 8
uXm_mm_pshufw_2031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			141
				ret
uXm_mm_pshufw_2031 endp

			align 8
uXm_mm_pshufw_2032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			142
				ret
uXm_mm_pshufw_2032 endp

			align 8
uXm_mm_pshufw_2033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			143
				ret
uXm_mm_pshufw_2033 endp

			align 8
uXm_mm_pshufw_2100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			144
				ret
uXm_mm_pshufw_2100 endp

			align 8
uXm_mm_pshufw_2101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			145
				ret
uXm_mm_pshufw_2101 endp

			align 8
uXm_mm_pshufw_2102 proc UX_VECCALL (mmword) ;Inmm_A:mmword 
				pshufw				mm0,			mm1,			146
				ret
uXm_mm_pshufw_2102 endp

			align 8
uXm_mm_pshufw_2103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			147
				ret
uXm_mm_pshufw_2103 endp

			align 8
uXm_mm_pshufw_2110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			148
				ret
uXm_mm_pshufw_2110 endp

			align 8
uXm_mm_pshufw_2111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			149
				ret
uXm_mm_pshufw_2111 endp

			align 8
uXm_mm_pshufw_2112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			150
				ret
uXm_mm_pshufw_2112 endp

			align 8
uXm_mm_pshufw_2113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			151
				ret
uXm_mm_pshufw_2113 endp

			align 8
uXm_mm_pshufw_2120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			152
				ret
uXm_mm_pshufw_2120 endp

			align 8
uXm_mm_pshufw_2121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			153
				ret
uXm_mm_pshufw_2121 endp

			align 8
uXm_mm_pshufw_2122 proc UX_VECCALL (mmword) ;Inmm_A:mmword 
				pshufw				mm0,			mm1,			154
				ret
uXm_mm_pshufw_2122 endp

			align 8
uXm_mm_pshufw_2123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			155
				ret
uXm_mm_pshufw_2123 endp

			align 8
uXm_mm_pshufw_2130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			156
				ret
uXm_mm_pshufw_2130 endp

			align 8
uXm_mm_pshufw_2131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			157
				ret
uXm_mm_pshufw_2131 endp

			align 8
uXm_mm_pshufw_2132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			158
				ret
uXm_mm_pshufw_2132 endp

			align 8
uXm_mm_pshufw_2133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			159
				ret
uXm_mm_pshufw_2133 endp

			align 8
uXm_mm_pshufw_2200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			80
				ret
uXm_mm_pshufw_2200 endp

			align 8
uXm_mm_pshufw_2201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			81
				ret
uXm_mm_pshufw_2201 endp

			align 8
uXm_mm_pshufw_2202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			82
				ret
uXm_mm_pshufw_2202 endp

			align 8
uXm_mm_pshufw_2203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			83
				ret
uXm_mm_pshufw_2203 endp

			align 8
uXm_mm_pshufw_2210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			84
				ret
uXm_mm_pshufw_2210 endp

			align 8
uXm_mm_pshufw_2211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			85
				ret
uXm_mm_pshufw_2211 endp

			align 8
uXm_mm_pshufw_2212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			86
				ret
uXm_mm_pshufw_2212 endp

			align 8
uXm_mm_pshufw_2213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			87
				ret
uXm_mm_pshufw_2213 endp

			align 8
uXm_mm_pshufw_2220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			88
				ret
uXm_mm_pshufw_2220 endp

			align 8
uXm_mm_pshufw_2221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			89
				ret
uXm_mm_pshufw_2221 endp

			align 8
uXm_mm_pshufw_2222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			170
				ret
uXm_mm_pshufw_2222 endp

			align 8
uXm_mm_pshufw_2223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			171
				ret
uXm_mm_pshufw_2223 endp

			align 8
uXm_mm_pshufw_2230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			172
				ret
uXm_mm_pshufw_2230 endp

			align 8
uXm_mm_pshufw_2231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			173
				ret
uXm_mm_pshufw_2231 endp

			align 8
uXm_mm_pshufw_2232 proc UX_VECCALL (mmword) ;Inmm_A:mmword 
				pshufw				mm0,			mm1,			174
				ret
uXm_mm_pshufw_2232 endp

			align 8
uXm_mm_pshufw_2233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			175
				ret
uXm_mm_pshufw_2233 endp

			align 8
uXm_mm_pshufw_2300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			176
				ret
uXm_mm_pshufw_2300 endp

			align 8
uXm_mm_pshufw_2301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			177
				ret
uXm_mm_pshufw_2301 endp

			align 8
uXm_mm_pshufw_2302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			178
				ret
uXm_mm_pshufw_2302 endp

			align 8
uXm_mm_pshufw_2303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			179
				ret
uXm_mm_pshufw_2303 endp

			align 8
uXm_mm_pshufw_2310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			180
				ret
uXm_mm_pshufw_2310 endp

			align 8
uXm_mm_pshufw_2311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			181
				ret
uXm_mm_pshufw_2311 endp

			align 8
uXm_mm_pshufw_2312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			182
				ret
uXm_mm_pshufw_2312 endp

			align 8
uXm_mm_pshufw_2313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			183
				ret
uXm_mm_pshufw_2313 endp

			align 8
uXm_mm_pshufw_2320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			184
				ret
uXm_mm_pshufw_2320 endp

			align 8
uXm_mm_pshufw_2321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			185
				ret
uXm_mm_pshufw_2321 endp

			align 8
uXm_mm_pshufw_2322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			186
				ret
uXm_mm_pshufw_2322 endp

			align 8
uXm_mm_pshufw_2323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			187
				ret
uXm_mm_pshufw_2323 endp

			align 8
uXm_mm_pshufw_2330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			188
				ret
uXm_mm_pshufw_2330 endp

			align 8
uXm_mm_pshufw_2331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			189
				ret
uXm_mm_pshufw_2331 endp

			align 8
uXm_mm_pshufw_2332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			190
				ret
uXm_mm_pshufw_2332 endp

			align 8
uXm_mm_pshufw_2333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			191
				ret
uXm_mm_pshufw_2333 endp

			align 8
uXm_mm_pshufw_3000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			192
				ret
uXm_mm_pshufw_3000 endp

			align 8
uXm_mm_pshufw_3001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			193
				ret
uXm_mm_pshufw_3001 endp

			align 8
uXm_mm_pshufw_3002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			194
				ret
uXm_mm_pshufw_3002 endp

			align 8
uXm_mm_pshufw_3003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			195
				ret
uXm_mm_pshufw_3003 endp

			align 8
uXm_mm_pshufw_3010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			196
				ret
uXm_mm_pshufw_3010 endp

			align 8
uXm_mm_pshufw_3011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			197
				ret
uXm_mm_pshufw_3011 endp

			align 8
uXm_mm_pshufw_3012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			198
				ret
uXm_mm_pshufw_3012 endp

			align 8
uXm_mm_pshufw_3013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			199
				ret
uXm_mm_pshufw_3013 endp

			align 8
uXm_mm_pshufw_3020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			200
				ret
uXm_mm_pshufw_3020 endp

			align 8
uXm_mm_pshufw_3021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			201
				ret
uXm_mm_pshufw_3021 endp

			align 8
uXm_mm_pshufw_3022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			202
				ret
uXm_mm_pshufw_3022 endp

			align 8
uXm_mm_pshufw_3023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			203
				ret
uXm_mm_pshufw_3023 endp

			align 8
uXm_mm_pshufw_3030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			204
				ret
uXm_mm_pshufw_3030 endp

			align 8
uXm_mm_pshufw_3031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			205
				ret
uXm_mm_pshufw_3031 endp

			align 8
uXm_mm_pshufw_3032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			206
				ret
uXm_mm_pshufw_3032 endp

			align 8
uXm_mm_pshufw_3033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			207
				ret
uXm_mm_pshufw_3033 endp

			align 8
uXm_mm_pshufw_3100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			208
				ret
uXm_mm_pshufw_3100 endp

			align 8
uXm_mm_pshufw_3101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			209
				ret
uXm_mm_pshufw_3101 endp

			align 8
uXm_mm_pshufw_3102 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			210
				ret
uXm_mm_pshufw_3102 endp

			align 8
uXm_mm_pshufw_3103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			211
				ret
uXm_mm_pshufw_3103 endp

			align 8
uXm_mm_pshufw_3110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			212
				ret
uXm_mm_pshufw_3110 endp

			align 8
uXm_mm_pshufw_3111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			213
				ret
uXm_mm_pshufw_3111 endp

			align 8
uXm_mm_pshufw_3112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			214
				ret
uXm_mm_pshufw_3112 endp

			align 8
uXm_mm_pshufw_3113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			215
				ret
uXm_mm_pshufw_3113 endp

			align 8
uXm_mm_pshufw_3120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			28
				ret
uXm_mm_pshufw_3120 endp

			align 8
uXm_mm_pshufw_3121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			217
				ret
uXm_mm_pshufw_3121 endp

			align 8
uXm_mm_pshufw_3122 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			218
				ret
uXm_mm_pshufw_3122 endp

			align 8
uXm_mm_pshufw_3123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			219
				ret
uXm_mm_pshufw_3123 endp

			align 8
uXm_mm_pshufw_3130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			220
				ret
uXm_mm_pshufw_3130 endp

			align 8
uXm_mm_pshufw_3131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			221
				ret
uXm_mm_pshufw_3131 endp

			align 8
uXm_mm_pshufw_3132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			222
				ret
uXm_mm_pshufw_3132 endp

			align 8
uXm_mm_pshufw_3133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			223
				ret
uXm_mm_pshufw_3133 endp

			align 8
uXm_mm_pshufw_3200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			224
				ret
uXm_mm_pshufw_3200 endp

			align 8
uXm_mm_pshufw_3201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			225
				ret
uXm_mm_pshufw_3201 endp

			align 8
uXm_mm_pshufw_3202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			226
				ret
uXm_mm_pshufw_3202 endp

			align 8
uXm_mm_pshufw_3203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			227
				ret
uXm_mm_pshufw_3203 endp

			align 8
uXm_mm_pshufw_3210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			228
				ret
uXm_mm_pshufw_3210 endp

			align 8
uXm_mm_pshufw_3211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			229
				ret
uXm_mm_pshufw_3211 endp

			align 8
uXm_mm_pshufw_3212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			230
				ret
uXm_mm_pshufw_3212 endp

			align 8
uXm_mm_pshufw_3213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			231
				ret
uXm_mm_pshufw_3213 endp

			align 8
uXm_mm_pshufw_3220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			232
				ret
uXm_mm_pshufw_3220 endp

			align 8
uXm_mm_pshufw_3221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			233
				ret
uXm_mm_pshufw_3221 endp

			align 8
uXm_mm_pshufw_3222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			234
				ret
uXm_mm_pshufw_3222 endp

			align 8
uXm_mm_pshufw_3223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			235
				ret
uXm_mm_pshufw_3223 endp

			align 8
uXm_mm_pshufw_3230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			236
				ret
uXm_mm_pshufw_3230 endp

			align 8
uXm_mm_pshufw_3231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			237
				ret
uXm_mm_pshufw_3231 endp

			align 8
uXm_mm_pshufw_3232 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			238
				ret
uXm_mm_pshufw_3232 endp

			align 8
uXm_mm_pshufw_3233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			239
				ret
uXm_mm_pshufw_3233 endp

			align 8
uXm_mm_pshufw_3300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			240
				ret
uXm_mm_pshufw_3300 endp

			align 8
uXm_mm_pshufw_3301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			241
				ret
uXm_mm_pshufw_3301 endp

			align 8
uXm_mm_pshufw_3302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			242
				ret
uXm_mm_pshufw_3302 endp

			align 8
uXm_mm_pshufw_3303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			243
				ret
uXm_mm_pshufw_3303 endp

			align 8
uXm_mm_pshufw_3310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			244
				ret
uXm_mm_pshufw_3310 endp

			align 8
uXm_mm_pshufw_3311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			245
				ret
uXm_mm_pshufw_3311 endp

			align 8
uXm_mm_pshufw_3312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			246
				ret
uXm_mm_pshufw_3312 endp

			align 8
uXm_mm_pshufw_3313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			247
				ret
uXm_mm_pshufw_3313 endp

			align 8
uXm_mm_pshufw_3320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			248
				ret
uXm_mm_pshufw_3320 endp

			align 8
uXm_mm_pshufw_3321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			249
				ret
uXm_mm_pshufw_3321 endp

			align 8
uXm_mm_pshufw_3322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			250
				ret
uXm_mm_pshufw_3322 endp

			align 8
uXm_mm_pshufw_3323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			251
				ret
uXm_mm_pshufw_3323 endp

			align 8
uXm_mm_pshufw_3330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			252
				ret
uXm_mm_pshufw_3330 endp

			align 8
uXm_mm_pshufw_3331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			253
				ret
uXm_mm_pshufw_3331 endp

			align 8
uXm_mm_pshufw_3332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			254
				ret
uXm_mm_pshufw_3332 endp

			align 8
uXm_mm_pshufw_3333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			255
				ret
uXm_mm_pshufw_3333 endp

			align 8
uXm_mm_pshufw proc UX_VECCALL (mmword) ;Inmm_A:mmword, _Imm8:dword
				
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam3]
			lea				ebx,			[mmpshufwjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmpshufwjmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
					
			mmpshufwword		textequ		<dword>
			mmpshufwiword		textequ		<dd>

		mmpshufwjmptable label mmpshufwword
			mmpshufwiword offset mmpshufw_0, offset mmpshufw_1, offset mmpshufw_2, offset mmpshufw_3, offset mmpshufw_4, offset mmpshufw_5, offset mmpshufw_6, offset mmpshufw_7, offset mmpshufw_8, offset mmpshufw_9, offset mmpshufw_10, offset mmpshufw_11, offset mmpshufw_12, offset mmpshufw_13, offset mmpshufw_14, offset mmpshufw_15, offset mmpshufw_8, offset mmpshufw_17, offset mmpshufw_18, offset mmpshufw_19, offset mmpshufw_20, offset mmpshufw_21, offset mmpshufw_22, offset mmpshufw_23, offset mmpshufw_24, offset mmpshufw_25
			mmpshufwiword offset mmpshufw_26, offset mmpshufw_27, offset mmpshufw_28, offset mmpshufw_29, offset mmpshufw_30, offset mmpshufw_31, offset mmpshufw_32, offset mmpshufw_33, offset mmpshufw_34, offset mmpshufw_35, offset mmpshufw_36, offset mmpshufw_37, offset mmpshufw_38, offset mmpshufw_39, offset mmpshufw_40, offset mmpshufw_41, offset mmpshufw_42, offset mmpshufw_43, offset mmpshufw_44, offset mmpshufw_45, offset mmpshufw_46, offset mmpshufw_47, offset mmpshufw_48, offset mmpshufw_49, offset mmpshufw_50
			mmpshufwiword offset mmpshufw_51, offset mmpshufw_52, offset mmpshufw_53, offset mmpshufw_54, offset mmpshufw_55, offset mmpshufw_56, offset mmpshufw_57, offset mmpshufw_58, offset mmpshufw_59, offset mmpshufw_60, offset mmpshufw_61, offset mmpshufw_62, offset mmpshufw_63, offset mmpshufw_64, offset mmpshufw_65, offset mmpshufw_66, offset mmpshufw_67, offset mmpshufw_68, offset mmpshufw_69, offset mmpshufw_70, offset mmpshufw_71, offset mmpshufw_72, offset mmpshufw_73, offset mmpshufw_74, offset mmpshufw_75
			mmpshufwiword offset mmpshufw_76, offset mmpshufw_77, offset mmpshufw_78, offset mmpshufw_79, offset mmpshufw_80, offset mmpshufw_81, offset mmpshufw_82, offset mmpshufw_83, offset mmpshufw_84, offset mmpshufw_85, offset mmpshufw_86, offset mmpshufw_87, offset mmpshufw_88, offset mmpshufw_89, offset mmpshufw_90, offset mmpshufw_91, offset mmpshufw_92, offset mmpshufw_93, offset mmpshufw_94, offset mmpshufw_95, offset mmpshufw_96, offset mmpshufw_97, offset mmpshufw_98, offset mmpshufw_99, offset mmpshufw_100
			mmpshufwiword offset mmpshufw_101, offset mmpshufw_102, offset mmpshufw_103, offset mmpshufw_104, offset mmpshufw_105, offset mmpshufw_106, offset mmpshufw_107, offset mmpshufw_108, offset mmpshufw_109, offset mmpshufw_110, offset mmpshufw_111, offset mmpshufw_112, offset mmpshufw_113, offset mmpshufw_114, offset mmpshufw_115, offset mmpshufw_18, offset mmpshufw_117, offset mmpshufw_118, offset mmpshufw_119, offset mmpshufw_120, offset mmpshufw_121, offset mmpshufw_122, offset mmpshufw_123, offset mmpshufw_124, offset mmpshufw_125
			mmpshufwiword offset mmpshufw_126, offset mmpshufw_127, offset mmpshufw_128, offset mmpshufw_129, offset mmpshufw_130, offset mmpshufw_131, offset mmpshufw_132, offset mmpshufw_133, offset mmpshufw_134, offset mmpshufw_135, offset mmpshufw_136, offset mmpshufw_137, offset mmpshufw_138, offset mmpshufw_139, offset mmpshufw_140, offset mmpshufw_141, offset mmpshufw_142, offset mmpshufw_143, offset mmpshufw_144, offset mmpshufw_145, offset mmpshufw_146, offset mmpshufw_147, offset mmpshufw_148, offset mmpshufw_149, offset mmpshufw_150
			mmpshufwiword offset mmpshufw_151, offset mmpshufw_152, offset mmpshufw_153, offset mmpshufw_154, offset mmpshufw_155, offset mmpshufw_156, offset mmpshufw_157, offset mmpshufw_158, offset mmpshufw_159, offset mmpshufw_160, offset mmpshufw_161, offset mmpshufw_162, offset mmpshufw_163, offset mmpshufw_164, offset mmpshufw_165, offset mmpshufw_166, offset mmpshufw_167, offset mmpshufw_168, offset mmpshufw_169, offset mmpshufw_170, offset mmpshufw_171, offset mmpshufw_172, offset mmpshufw_173, offset mmpshufw_174, offset mmpshufw_175
			mmpshufwiword offset mmpshufw_176, offset mmpshufw_177, offset mmpshufw_178, offset mmpshufw_179, offset mmpshufw_180, offset mmpshufw_181, offset mmpshufw_182, offset mmpshufw_183, offset mmpshufw_184, offset mmpshufw_185, offset mmpshufw_186, offset mmpshufw_187, offset mmpshufw_188, offset mmpshufw_189, offset mmpshufw_190, offset mmpshufw_191, offset mmpshufw_192, offset mmpshufw_193, offset mmpshufw_194, offset mmpshufw_195, offset mmpshufw_196, offset mmpshufw_197, offset mmpshufw_198, offset mmpshufw_199, offset mmpshufw_200
			mmpshufwiword offset mmpshufw_201, offset mmpshufw_202, offset mmpshufw_203, offset mmpshufw_204, offset mmpshufw_205, offset mmpshufw_206, offset mmpshufw_207, offset mmpshufw_208, offset mmpshufw_209, offset mmpshufw_210, offset mmpshufw_211, offset mmpshufw_212, offset mmpshufw_213, offset mmpshufw_214, offset mmpshufw_215, offset mmpshufw_28, offset mmpshufw_217, offset mmpshufw_218, offset mmpshufw_219, offset mmpshufw_220, offset mmpshufw_221, offset mmpshufw_222, offset mmpshufw_223, offset mmpshufw_224, offset mmpshufw_225
			mmpshufwiword offset mmpshufw_226, offset mmpshufw_227, offset mmpshufw_228, offset mmpshufw_229, offset mmpshufw_230, offset mmpshufw_231, offset mmpshufw_232, offset mmpshufw_233, offset mmpshufw_234, offset mmpshufw_235, offset mmpshufw_236, offset mmpshufw_237, offset mmpshufw_238, offset mmpshufw_239, offset mmpshufw_240, offset mmpshufw_241, offset mmpshufw_242, offset mmpshufw_243, offset mmpshufw_244, offset mmpshufw_245, offset mmpshufw_246, offset mmpshufw_247, offset mmpshufw_248, offset mmpshufw_249, offset mmpshufw_250
			mmpshufwiword offset mmpshufw_251, offset mmpshufw_252, offset mmpshufw_253, offset mmpshufw_254, offset mmpshufw_255

			mmpshufw_0 label mmpshufwword
				jmp		uXm_mm_pshufw_0000
			mmpshufw_1 label mmpshufwword
				jmp		uXm_mm_pshufw_0001
			mmpshufw_2 label mmpshufwword
				jmp		uXm_mm_pshufw_0002
			mmpshufw_3 label mmpshufwword
				jmp		uXm_mm_pshufw_0003
			mmpshufw_4 label mmpshufwword
				jmp		uXm_mm_pshufw_0010
			mmpshufw_5 label mmpshufwword
				jmp		uXm_mm_pshufw_0011
			mmpshufw_6 label mmpshufwword
				jmp		uXm_mm_pshufw_0012
			mmpshufw_7 label mmpshufwword
				jmp		uXm_mm_pshufw_0013
			mmpshufw_8 label mmpshufwword
				jmp		uXm_mm_pshufw_0020
			mmpshufw_9 label mmpshufwword
				jmp		uXm_mm_pshufw_0021
			mmpshufw_10 label mmpshufwword
				jmp		uXm_mm_pshufw_0022
			mmpshufw_11 label mmpshufwword
				jmp		uXm_mm_pshufw_0023
			mmpshufw_12 label mmpshufwword
				jmp		uXm_mm_pshufw_0030
			mmpshufw_13 label mmpshufwword
				jmp		uXm_mm_pshufw_0031
			mmpshufw_14 label mmpshufwword
				jmp		uXm_mm_pshufw_0032
			mmpshufw_15 label mmpshufwword
				jmp		uXm_mm_pshufw_0033
			mmpshufw_8 label mmpshufwword
				jmp		uXm_mm_pshufw_0100
			mmpshufw_17 label mmpshufwword
				jmp		uXm_mm_pshufw_0101
			mmpshufw_18 label mmpshufwword
				jmp		uXm_mm_pshufw_0102
			mmpshufw_19 label mmpshufwword
				jmp		uXm_mm_pshufw_0103
			mmpshufw_20 label mmpshufwword
				jmp		uXm_mm_pshufw_0110
			mmpshufw_21 label mmpshufwword
				jmp		uXm_mm_pshufw_0111
			mmpshufw_22 label mmpshufwword
				jmp		uXm_mm_pshufw_0112
			mmpshufw_23 label mmpshufwword
				jmp		uXm_mm_pshufw_0113
			mmpshufw_24 label mmpshufwword
				jmp		uXm_mm_pshufw_0120
			mmpshufw_25 label mmpshufwword
				jmp		uXm_mm_pshufw_0121
			mmpshufw_26 label mmpshufwword
				jmp		uXm_mm_pshufw_0122
			mmpshufw_27 label mmpshufwword
				jmp		uXm_mm_pshufw_0123
			mmpshufw_28 label mmpshufwword
				jmp		uXm_mm_pshufw_0130
			mmpshufw_29 label mmpshufwword
				jmp		uXm_mm_pshufw_0131
			mmpshufw_30 label mmpshufwword
				jmp		uXm_mm_pshufw_0132
			mmpshufw_31 label mmpshufwword
				jmp		uXm_mm_pshufw_0133
			mmpshufw_32 label mmpshufwword
				jmp		uXm_mm_pshufw_0200
			mmpshufw_33 label mmpshufwword
				jmp		uXm_mm_pshufw_0201
			mmpshufw_34 label mmpshufwword
				jmp		uXm_mm_pshufw_0202
			mmpshufw_35 label mmpshufwword
				jmp		uXm_mm_pshufw_0203
			mmpshufw_36 label mmpshufwword
				jmp		uXm_mm_pshufw_0210
			mmpshufw_37 label mmpshufwword
				jmp		uXm_mm_pshufw_0211
			mmpshufw_38 label mmpshufwword
				jmp		uXm_mm_pshufw_0212
			mmpshufw_39 label mmpshufwword
				jmp		uXm_mm_pshufw_0213
			mmpshufw_40 label mmpshufwword
				jmp		uXm_mm_pshufw_0220
			mmpshufw_41 label mmpshufwword
				jmp		uXm_mm_pshufw_0221
			mmpshufw_42 label mmpshufwword
				jmp		uXm_mm_pshufw_0222
			mmpshufw_43 label mmpshufwword
				jmp		uXm_mm_pshufw_0223
			mmpshufw_44 label mmpshufwword
				jmp		uXm_mm_pshufw_0230
			mmpshufw_45 label mmpshufwword
				jmp		uXm_mm_pshufw_0231
			mmpshufw_46 label mmpshufwword
				jmp		uXm_mm_pshufw_0232
			mmpshufw_47 label mmpshufwword
				jmp		uXm_mm_pshufw_0233
			mmpshufw_48 label mmpshufwword
				jmp		uXm_mm_pshufw_0300
			mmpshufw_49 label mmpshufwword
				jmp		uXm_mm_pshufw_0301
			mmpshufw_50 label mmpshufwword
				jmp		uXm_mm_pshufw_0302
			mmpshufw_51 label mmpshufwword
				jmp		uXm_mm_pshufw_0303
			mmpshufw_52 label mmpshufwword
				jmp		uXm_mm_pshufw_0310
			mmpshufw_53 label mmpshufwword
				jmp		uXm_mm_pshufw_0311
			mmpshufw_54 label mmpshufwword
				jmp		uXm_mm_pshufw_0312
			mmpshufw_55 label mmpshufwword
				jmp		uXm_mm_pshufw_0313
			mmpshufw_56 label mmpshufwword
				jmp		uXm_mm_pshufw_0320
			mmpshufw_57 label mmpshufwword
				jmp		uXm_mm_pshufw_0321
			mmpshufw_58 label mmpshufwword
				jmp		uXm_mm_pshufw_0322
			mmpshufw_59 label mmpshufwword
				jmp		uXm_mm_pshufw_0323
			mmpshufw_60 label mmpshufwword
				jmp		uXm_mm_pshufw_0330
			mmpshufw_61 label mmpshufwword
				jmp		uXm_mm_pshufw_0331
			mmpshufw_62 label mmpshufwword
				jmp		uXm_mm_pshufw_0332
			mmpshufw_63 label mmpshufwword
				jmp		uXm_mm_pshufw_0333
			mmpshufw_64 label mmpshufwword
				jmp		uXm_mm_pshufw_1000
			mmpshufw_65 label mmpshufwword
				jmp		uXm_mm_pshufw_1001
			mmpshufw_66 label mmpshufwword
				jmp		uXm_mm_pshufw_1002
			mmpshufw_67 label mmpshufwword
				jmp		uXm_mm_pshufw_1003
			mmpshufw_68 label mmpshufwword
				jmp		uXm_mm_pshufw_1010
			mmpshufw_69 label mmpshufwword
				jmp		uXm_mm_pshufw_1011
			mmpshufw_70 label mmpshufwword
				jmp		uXm_mm_pshufw_1012
			mmpshufw_71 label mmpshufwword
				jmp		uXm_mm_pshufw_1013
			mmpshufw_72 label mmpshufwword
				jmp		uXm_mm_pshufw_1020
			mmpshufw_73 label mmpshufwword
				jmp		uXm_mm_pshufw_1021
			mmpshufw_74 label mmpshufwword
				jmp		uXm_mm_pshufw_1022
			mmpshufw_75 label mmpshufwword
				jmp		uXm_mm_pshufw_1023
			mmpshufw_76 label mmpshufwword
				jmp		uXm_mm_pshufw_1030
			mmpshufw_77 label mmpshufwword
				jmp		uXm_mm_pshufw_1031
			mmpshufw_78 label mmpshufwword
				jmp		uXm_mm_pshufw_1032
			mmpshufw_79 label mmpshufwword
				jmp		uXm_mm_pshufw_1033
			mmpshufw_80 label mmpshufwword
				jmp		uXm_mm_pshufw_1100
			mmpshufw_81 label mmpshufwword
				jmp		uXm_mm_pshufw_1101
			mmpshufw_82 label mmpshufwword
				jmp		uXm_mm_pshufw_1102
			mmpshufw_83 label mmpshufwword
				jmp		uXm_mm_pshufw_1103
			mmpshufw_84 label mmpshufwword
				jmp		uXm_mm_pshufw_1110
			mmpshufw_85 label mmpshufwword
				jmp		uXm_mm_pshufw_1111
			mmpshufw_86 label mmpshufwword
				jmp		uXm_mm_pshufw_1112
			mmpshufw_87 label mmpshufwword
				jmp		uXm_mm_pshufw_1113
			mmpshufw_88 label mmpshufwword
				jmp		uXm_mm_pshufw_1120
			mmpshufw_89 label mmpshufwword
				jmp		uXm_mm_pshufw_1121
			mmpshufw_90 label mmpshufwword
				jmp		uXm_mm_pshufw_1122
			mmpshufw_91 label mmpshufwword
				jmp		uXm_mm_pshufw_1123
			mmpshufw_92 label mmpshufwword
				jmp		uXm_mm_pshufw_1130
			mmpshufw_93 label mmpshufwword
				jmp		uXm_mm_pshufw_1131
			mmpshufw_94 label mmpshufwword
				jmp		uXm_mm_pshufw_1132
			mmpshufw_95 label mmpshufwword
				jmp		uXm_mm_pshufw_1133
			mmpshufw_96 label mmpshufwword
				jmp		uXm_mm_pshufw_1200
			mmpshufw_97 label mmpshufwword
				jmp		uXm_mm_pshufw_1201
			mmpshufw_98 label mmpshufwword
				jmp		uXm_mm_pshufw_1202
			mmpshufw_99 label mmpshufwword
				jmp		uXm_mm_pshufw_1203
			mmpshufw_100 label mmpshufwword
				jmp		uXm_mm_pshufw_1210
			mmpshufw_101 label mmpshufwword
				jmp		uXm_mm_pshufw_1211
			mmpshufw_102 label mmpshufwword
				jmp		uXm_mm_pshufw_1212
			mmpshufw_103 label mmpshufwword
				jmp		uXm_mm_pshufw_1213
			mmpshufw_104 label mmpshufwword
				jmp		uXm_mm_pshufw_1220
			mmpshufw_105 label mmpshufwword
				jmp		uXm_mm_pshufw_1221
			mmpshufw_106 label mmpshufwword
				jmp		uXm_mm_pshufw_1222
			mmpshufw_107 label mmpshufwword
				jmp		uXm_mm_pshufw_1223
			mmpshufw_108 label mmpshufwword
				jmp		uXm_mm_pshufw_1230
			mmpshufw_109 label mmpshufwword
				jmp		uXm_mm_pshufw_1231
			mmpshufw_110 label mmpshufwword
				jmp		uXm_mm_pshufw_1232
			mmpshufw_111 label mmpshufwword
				jmp		uXm_mm_pshufw_1233
			mmpshufw_112 label mmpshufwword
				jmp		uXm_mm_pshufw_1300
			mmpshufw_113 label mmpshufwword
				jmp		uXm_mm_pshufw_1301
			mmpshufw_114 label mmpshufwword
				jmp		uXm_mm_pshufw_1302
			mmpshufw_115 label mmpshufwword
				jmp		uXm_mm_pshufw_1303
			mmpshufw_18 label mmpshufwword
				jmp		uXm_mm_pshufw_1310
			mmpshufw_117 label mmpshufwword
				jmp		uXm_mm_pshufw_1311
			mmpshufw_118 label mmpshufwword
				jmp		uXm_mm_pshufw_1312
			mmpshufw_119 label mmpshufwword
				jmp		uXm_mm_pshufw_1313
			mmpshufw_120 label mmpshufwword
				jmp		uXm_mm_pshufw_1320
			mmpshufw_121 label mmpshufwword
				jmp		uXm_mm_pshufw_1321
			mmpshufw_122 label mmpshufwword
				jmp		uXm_mm_pshufw_1322
			mmpshufw_123 label mmpshufwword
				jmp		uXm_mm_pshufw_1323
			mmpshufw_124 label mmpshufwword
				jmp		uXm_mm_pshufw_1330
			mmpshufw_125 label mmpshufwword
				jmp		uXm_mm_pshufw_1331
			mmpshufw_126 label mmpshufwword
				jmp		uXm_mm_pshufw_1332
			mmpshufw_127 label mmpshufwword
				jmp		uXm_mm_pshufw_1333
			mmpshufw_128 label mmpshufwword
				jmp		uXm_mm_pshufw_2000
			mmpshufw_129 label mmpshufwword
				jmp		uXm_mm_pshufw_2001
			mmpshufw_130 label mmpshufwword
				jmp		uXm_mm_pshufw_2002
			mmpshufw_131 label mmpshufwword
				jmp		uXm_mm_pshufw_2003
			mmpshufw_132 label mmpshufwword
				jmp		uXm_mm_pshufw_2010
			mmpshufw_133 label mmpshufwword
				jmp		uXm_mm_pshufw_2011
			mmpshufw_134 label mmpshufwword
				jmp		uXm_mm_pshufw_2012
			mmpshufw_135 label mmpshufwword
				jmp		uXm_mm_pshufw_2013
			mmpshufw_136 label mmpshufwword
				jmp		uXm_mm_pshufw_2020
			mmpshufw_137 label mmpshufwword
				jmp		uXm_mm_pshufw_2021
			mmpshufw_138 label mmpshufwword
				jmp		uXm_mm_pshufw_2022
			mmpshufw_139 label mmpshufwword
				jmp		uXm_mm_pshufw_2023
			mmpshufw_140 label mmpshufwword
				jmp		uXm_mm_pshufw_2030
			mmpshufw_141 label mmpshufwword
				jmp		uXm_mm_pshufw_2031
			mmpshufw_142 label mmpshufwword
				jmp		uXm_mm_pshufw_2032
			mmpshufw_143 label mmpshufwword
				jmp		uXm_mm_pshufw_2033
			mmpshufw_144 label mmpshufwword
				jmp		uXm_mm_pshufw_2100
			mmpshufw_145 label mmpshufwword
				jmp		uXm_mm_pshufw_2101
			mmpshufw_146 label mmpshufwword
				jmp		uXm_mm_pshufw_2102
			mmpshufw_147 label mmpshufwword
				jmp		uXm_mm_pshufw_2103
			mmpshufw_148 label mmpshufwword
				jmp		uXm_mm_pshufw_2110
			mmpshufw_149 label mmpshufwword
				jmp		uXm_mm_pshufw_2111
			mmpshufw_150 label mmpshufwword
				jmp		uXm_mm_pshufw_2112
			mmpshufw_151 label mmpshufwword
				jmp		uXm_mm_pshufw_2113
			mmpshufw_152 label mmpshufwword
				jmp		uXm_mm_pshufw_2120
			mmpshufw_153 label mmpshufwword
				jmp		uXm_mm_pshufw_2121
			mmpshufw_154 label mmpshufwword
				jmp		uXm_mm_pshufw_2122
			mmpshufw_155 label mmpshufwword
				jmp		uXm_mm_pshufw_2123
			mmpshufw_156 label mmpshufwword
				jmp		uXm_mm_pshufw_2130
			mmpshufw_157 label mmpshufwword
				jmp		uXm_mm_pshufw_2131
			mmpshufw_158 label mmpshufwword
				jmp		uXm_mm_pshufw_2132
			mmpshufw_159 label mmpshufwword
				jmp		uXm_mm_pshufw_2133
			mmpshufw_80 label mmpshufwword
				jmp		uXm_mm_pshufw_2200
			mmpshufw_81 label mmpshufwword
				jmp		uXm_mm_pshufw_2201
			mmpshufw_82 label mmpshufwword
				jmp		uXm_mm_pshufw_2202
			mmpshufw_83 label mmpshufwword
				jmp		uXm_mm_pshufw_2203
			mmpshufw_84 label mmpshufwword
				jmp		uXm_mm_pshufw_2210
			mmpshufw_85 label mmpshufwword
				jmp		uXm_mm_pshufw_2211
			mmpshufw_86 label mmpshufwword
				jmp		uXm_mm_pshufw_2212
			mmpshufw_87 label mmpshufwword
				jmp		uXm_mm_pshufw_2213
			mmpshufw_88 label mmpshufwword
				jmp		uXm_mm_pshufw_2220
			mmpshufw_89 label mmpshufwword
				jmp		uXm_mm_pshufw_2221
			mmpshufw_170 label mmpshufwword
				jmp		uXm_mm_pshufw_2222
			mmpshufw_171 label mmpshufwword
				jmp		uXm_mm_pshufw_2223
			mmpshufw_172 label mmpshufwword
				jmp		uXm_mm_pshufw_2230
			mmpshufw_173 label mmpshufwword
				jmp		uXm_mm_pshufw_2231
			mmpshufw_174 label mmpshufwword
				jmp		uXm_mm_pshufw_2232
			mmpshufw_175 label mmpshufwword
				jmp		uXm_mm_pshufw_2233
			mmpshufw_176 label mmpshufwword
				jmp		uXm_mm_pshufw_2300
			mmpshufw_177 label mmpshufwword
				jmp		uXm_mm_pshufw_2301
			mmpshufw_178 label mmpshufwword
				jmp		uXm_mm_pshufw_2302
			mmpshufw_179 label mmpshufwword
				jmp		uXm_mm_pshufw_2303
			mmpshufw_180 label mmpshufwword
				jmp		uXm_mm_pshufw_2310
			mmpshufw_181 label mmpshufwword
				jmp		uXm_mm_pshufw_2311
			mmpshufw_182 label mmpshufwword
				jmp		uXm_mm_pshufw_2312
			mmpshufw_183 label mmpshufwword
				jmp		uXm_mm_pshufw_2313
			mmpshufw_184 label mmpshufwword
				jmp		uXm_mm_pshufw_2320
			mmpshufw_185 label mmpshufwword
				jmp		uXm_mm_pshufw_2321
			mmpshufw_186 label mmpshufwword
				jmp		uXm_mm_pshufw_2322
			mmpshufw_187 label mmpshufwword
				jmp		uXm_mm_pshufw_2323
			mmpshufw_188 label mmpshufwword
				jmp		uXm_mm_pshufw_2330
			mmpshufw_189 label mmpshufwword
				jmp		uXm_mm_pshufw_2331
			mmpshufw_190 label mmpshufwword
				jmp		uXm_mm_pshufw_2332
			mmpshufw_191 label mmpshufwword
				jmp		uXm_mm_pshufw_2333
			mmpshufw_192 label mmpshufwword
				jmp		uXm_mm_pshufw_3000
			mmpshufw_193 label mmpshufwword
				jmp		uXm_mm_pshufw_3001
			mmpshufw_194 label mmpshufwword
				jmp		uXm_mm_pshufw_3002
			mmpshufw_195 label mmpshufwword
				jmp		uXm_mm_pshufw_3003
			mmpshufw_196 label mmpshufwword
				jmp		uXm_mm_pshufw_3010
			mmpshufw_197 label mmpshufwword
				jmp		uXm_mm_pshufw_3011
			mmpshufw_198 label mmpshufwword
				jmp		uXm_mm_pshufw_3012
			mmpshufw_199 label mmpshufwword
				jmp		uXm_mm_pshufw_3013
			mmpshufw_200 label mmpshufwword
				jmp		uXm_mm_pshufw_3020
			mmpshufw_201 label mmpshufwword
				jmp		uXm_mm_pshufw_3021
			mmpshufw_202 label mmpshufwword
				jmp		uXm_mm_pshufw_3022
			mmpshufw_203 label mmpshufwword
				jmp		uXm_mm_pshufw_3023
			mmpshufw_204 label mmpshufwword
				jmp		uXm_mm_pshufw_3030
			mmpshufw_205 label mmpshufwword
				jmp		uXm_mm_pshufw_3031
			mmpshufw_206 label mmpshufwword
				jmp		uXm_mm_pshufw_3032
			mmpshufw_207 label mmpshufwword
				jmp		uXm_mm_pshufw_3033
			mmpshufw_208 label mmpshufwword
				jmp		uXm_mm_pshufw_3100
			mmpshufw_209 label mmpshufwword
				jmp		uXm_mm_pshufw_3101
			mmpshufw_210 label mmpshufwword
				jmp		uXm_mm_pshufw_3102
			mmpshufw_211 label mmpshufwword
				jmp		uXm_mm_pshufw_3103
			mmpshufw_212 label mmpshufwword
				jmp		uXm_mm_pshufw_3110
			mmpshufw_213 label mmpshufwword
				jmp		uXm_mm_pshufw_3111
			mmpshufw_214 label mmpshufwword
				jmp		uXm_mm_pshufw_3112
			mmpshufw_215 label mmpshufwword
				jmp		uXm_mm_pshufw_3113
			mmpshufw_28 label mmpshufwword
				jmp		uXm_mm_pshufw_3120
			mmpshufw_217 label mmpshufwword
				jmp		uXm_mm_pshufw_3121
			mmpshufw_218 label mmpshufwword
				jmp		uXm_mm_pshufw_3122
			mmpshufw_219 label mmpshufwword
				jmp		uXm_mm_pshufw_3123
			mmpshufw_220 label mmpshufwword
				jmp		uXm_mm_pshufw_3130
			mmpshufw_221 label mmpshufwword
				jmp		uXm_mm_pshufw_3131
			mmpshufw_222 label mmpshufwword
				jmp		uXm_mm_pshufw_3132
			mmpshufw_223 label mmpshufwword
				jmp		uXm_mm_pshufw_3133
			mmpshufw_224 label mmpshufwword
				jmp		uXm_mm_pshufw_3200
			mmpshufw_225 label mmpshufwword
				jmp		uXm_mm_pshufw_3201
			mmpshufw_226 label mmpshufwword
				jmp		uXm_mm_pshufw_3202
			mmpshufw_227 label mmpshufwword
				jmp		uXm_mm_pshufw_3203
			mmpshufw_228 label mmpshufwword
				jmp		uXm_mm_pshufw_3210
			mmpshufw_229 label mmpshufwword
				jmp		uXm_mm_pshufw_3211
			mmpshufw_230 label mmpshufwword
				jmp		uXm_mm_pshufw_3212
			mmpshufw_231 label mmpshufwword
				jmp		uXm_mm_pshufw_3213
			mmpshufw_232 label mmpshufwword
				jmp		uXm_mm_pshufw_3220
			mmpshufw_233 label mmpshufwword
				jmp		uXm_mm_pshufw_3221
			mmpshufw_234 label mmpshufwword
				jmp		uXm_mm_pshufw_3222
			mmpshufw_235 label mmpshufwword
				jmp		uXm_mm_pshufw_3223
			mmpshufw_236 label mmpshufwword
				jmp		uXm_mm_pshufw_3230
			mmpshufw_237 label mmpshufwword
				jmp		uXm_mm_pshufw_3231
			mmpshufw_238 label mmpshufwword
				jmp		uXm_mm_pshufw_3232
			mmpshufw_239 label mmpshufwword
				jmp		uXm_mm_pshufw_3233
			mmpshufw_240 label mmpshufwword
				jmp		uXm_mm_pshufw_3300
			mmpshufw_241 label mmpshufwword
				jmp		uXm_mm_pshufw_3301
			mmpshufw_242 label mmpshufwword
				jmp		uXm_mm_pshufw_3302
			mmpshufw_243 label mmpshufwword
				jmp		uXm_mm_pshufw_3303
			mmpshufw_244 label mmpshufwword
				jmp		uXm_mm_pshufw_3310
			mmpshufw_245 label mmpshufwword
				jmp		uXm_mm_pshufw_3311
			mmpshufw_246 label mmpshufwword
				jmp		uXm_mm_pshufw_3312
			mmpshufw_247 label mmpshufwword
				jmp		uXm_mm_pshufw_3313
			mmpshufw_248 label mmpshufwword
				jmp		uXm_mm_pshufw_3320
			mmpshufw_249 label mmpshufwword
				jmp		uXm_mm_pshufw_3321
			mmpshufw_250 label mmpshufwword
				jmp		uXm_mm_pshufw_3322
			mmpshufw_251 label mmpshufwword
				jmp		uXm_mm_pshufw_3323
			mmpshufw_252 label mmpshufwword
				jmp		uXm_mm_pshufw_3330
			mmpshufw_253 label mmpshufwword
				jmp		uXm_mm_pshufw_3331
			mmpshufw_254 label mmpshufwword
				jmp		uXm_mm_pshufw_3332
			mmpshufw_255 label mmpshufwword
				jmp		uXm_mm_pshufw_3333

uXm_mm_pshufw endp
endif ;__X32__

	end
