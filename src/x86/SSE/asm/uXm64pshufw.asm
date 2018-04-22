
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.code

ifdef __X32__
;******************
; Proto
;******************
_uXm_m64_pshufw_0000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0102 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0122 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0232 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1102 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1122 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1232 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2102 proto UX_VECCALL (mmword) ;Inmm_A:mmword 
_uXm_m64_pshufw_2103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2122 proto UX_VECCALL (mmword) ;Inmm_A:mmword 
_uXm_m64_pshufw_2123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2232 proto UX_VECCALL (mmword) ;Inmm_A:mmword 
_uXm_m64_pshufw_2233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3102 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3122 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3232 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw proto UX_VECCALL (mmword) ;Inmm_A:mmword, _Imm8:dword

;******************
; Proc
;******************
			align 8
_uXm_m64_pshufw_0000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			0
				ret
_uXm_m64_pshufw_0000 endp

			align 8
_uXm_m64_pshufw_0001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			1
				ret
_uXm_m64_pshufw_0001 endp

			align 8
_uXm_m64_pshufw_0002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			2
				ret
_uXm_m64_pshufw_0002 endp

			align 8
_uXm_m64_pshufw_0003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			3
				ret
_uXm_m64_pshufw_0003 endp

			align 8
_uXm_m64_pshufw_0010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			4
				ret
_uXm_m64_pshufw_0010 endp

			align 8
_uXm_m64_pshufw_0011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			5
				ret
_uXm_m64_pshufw_0011 endp

			align 8
_uXm_m64_pshufw_0012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			6
				ret
_uXm_m64_pshufw_0012 endp

			align 8
_uXm_m64_pshufw_0013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			7
				ret
_uXm_m64_pshufw_0013 endp

			align 8
_uXm_m64_pshufw_0020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			8
				ret
_uXm_m64_pshufw_0020 endp

			align 8
_uXm_m64_pshufw_0021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			9
				ret
_uXm_m64_pshufw_0021 endp

			align 8
_uXm_m64_pshufw_0022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			10
				ret
_uXm_m64_pshufw_0022 endp

			align 8
_uXm_m64_pshufw_0023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			11
				ret
_uXm_m64_pshufw_0023 endp

			align 8
_uXm_m64_pshufw_0030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			12
				ret
_uXm_m64_pshufw_0030 endp

			align 8
_uXm_m64_pshufw_0031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			13
				ret
_uXm_m64_pshufw_0031 endp

			align 8
_uXm_m64_pshufw_0032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			14
				ret
_uXm_m64_pshufw_0032 endp

			align 8
_uXm_m64_pshufw_0033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			15
				ret
_uXm_m64_pshufw_0033 endp

			align 8
_uXm_m64_pshufw_0100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			8
				ret
_uXm_m64_pshufw_0100 endp

			align 8
_uXm_m64_pshufw_0101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			17
				ret
_uXm_m64_pshufw_0101 endp

			align 8
_uXm_m64_pshufw_0102 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			18
				ret
_uXm_m64_pshufw_0102 endp

			align 8
_uXm_m64_pshufw_0103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			19
				ret
_uXm_m64_pshufw_0103 endp

			align 8
_uXm_m64_pshufw_0110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			20
				ret
_uXm_m64_pshufw_0110 endp

			align 8
_uXm_m64_pshufw_0111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			21
				ret
_uXm_m64_pshufw_0111 endp

			align 8
_uXm_m64_pshufw_0112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			22
				ret
_uXm_m64_pshufw_0112 endp

			align 8
_uXm_m64_pshufw_0113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			23
				ret
_uXm_m64_pshufw_0113 endp

			align 8
_uXm_m64_pshufw_0120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			24
				ret
_uXm_m64_pshufw_0120 endp

			align 8
_uXm_m64_pshufw_0121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			25
				ret
_uXm_m64_pshufw_0121 endp

			align 8
_uXm_m64_pshufw_0122 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			26
				ret
_uXm_m64_pshufw_0122 endp

			align 8
_uXm_m64_pshufw_0123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			27
				ret
_uXm_m64_pshufw_0123 endp

			align 8
_uXm_m64_pshufw_0130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			28
				ret
_uXm_m64_pshufw_0130 endp

			align 8
_uXm_m64_pshufw_0131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			29
				ret
_uXm_m64_pshufw_0131 endp

			align 8
_uXm_m64_pshufw_0132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			30
				ret
_uXm_m64_pshufw_0132 endp

			align 8
_uXm_m64_pshufw_0133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			31
				ret
_uXm_m64_pshufw_0133 endp

			align 8
_uXm_m64_pshufw_0200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			32
				ret
_uXm_m64_pshufw_0200 endp

			align 8
_uXm_m64_pshufw_0201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			33
				ret
_uXm_m64_pshufw_0201 endp

			align 8
_uXm_m64_pshufw_0202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			34
				ret
_uXm_m64_pshufw_0202 endp

			align 8
_uXm_m64_pshufw_0203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			35
				ret
_uXm_m64_pshufw_0203 endp

			align 8
_uXm_m64_pshufw_0210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			36
				ret
_uXm_m64_pshufw_0210 endp

			align 8
_uXm_m64_pshufw_0211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			37
				ret
_uXm_m64_pshufw_0211 endp

			align 8
_uXm_m64_pshufw_0212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			38
				ret
_uXm_m64_pshufw_0212 endp

			align 8
_uXm_m64_pshufw_0213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			39
				ret
_uXm_m64_pshufw_0213 endp

			align 8
_uXm_m64_pshufw_0220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			40
				ret
_uXm_m64_pshufw_0220 endp

			align 8
_uXm_m64_pshufw_0221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			41
				ret
_uXm_m64_pshufw_0221 endp

			align 8
_uXm_m64_pshufw_0222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			42
				ret
_uXm_m64_pshufw_0222 endp

			align 8
_uXm_m64_pshufw_0223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			43
				ret
_uXm_m64_pshufw_0223 endp

			align 8
_uXm_m64_pshufw_0230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			44
				ret
_uXm_m64_pshufw_0230 endp

			align 8
_uXm_m64_pshufw_0231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			45
				ret
_uXm_m64_pshufw_0231 endp

			align 8
_uXm_m64_pshufw_0232 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			46
				ret
_uXm_m64_pshufw_0232 endp

			align 8
_uXm_m64_pshufw_0233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			47
				ret
_uXm_m64_pshufw_0233 endp

			align 8
_uXm_m64_pshufw_0300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			48
				ret
_uXm_m64_pshufw_0300 endp

			align 8
_uXm_m64_pshufw_0301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			49
				ret
_uXm_m64_pshufw_0301 endp

			align 8
_uXm_m64_pshufw_0302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			50
				ret
_uXm_m64_pshufw_0302 endp

			align 8
_uXm_m64_pshufw_0303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			51
				ret
_uXm_m64_pshufw_0303 endp

			align 8
_uXm_m64_pshufw_0310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			52
				ret
_uXm_m64_pshufw_0310 endp

			align 8
_uXm_m64_pshufw_0311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			53
				ret
_uXm_m64_pshufw_0311 endp

			align 8
_uXm_m64_pshufw_0312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			54
				ret
_uXm_m64_pshufw_0312 endp

			align 8
_uXm_m64_pshufw_0313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			55
				ret
_uXm_m64_pshufw_0313 endp

			align 8
_uXm_m64_pshufw_0320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			56
				ret
_uXm_m64_pshufw_0320 endp

			align 8
_uXm_m64_pshufw_0321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			57
				ret
_uXm_m64_pshufw_0321 endp

			align 8
_uXm_m64_pshufw_0322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			58
				ret
_uXm_m64_pshufw_0322 endp

			align 8
_uXm_m64_pshufw_0323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			59
				ret
_uXm_m64_pshufw_0323 endp

			align 8
_uXm_m64_pshufw_0330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			60
				ret
_uXm_m64_pshufw_0330 endp

			align 8
_uXm_m64_pshufw_0331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			61
				ret
_uXm_m64_pshufw_0331 endp

			align 8
_uXm_m64_pshufw_0332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			62
				ret
_uXm_m64_pshufw_0332 endp

			align 8
_uXm_m64_pshufw_0333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			63
				ret
_uXm_m64_pshufw_0333 endp

			align 8
_uXm_m64_pshufw_1000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			64
				ret
_uXm_m64_pshufw_1000 endp

			align 8
_uXm_m64_pshufw_1001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			65
				ret
_uXm_m64_pshufw_1001 endp

			align 8
_uXm_m64_pshufw_1002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			66
				ret
_uXm_m64_pshufw_1002 endp

			align 8
_uXm_m64_pshufw_1003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			67
				ret
_uXm_m64_pshufw_1003 endp

			align 8
_uXm_m64_pshufw_1010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			68
				ret
_uXm_m64_pshufw_1010 endp

			align 8
_uXm_m64_pshufw_1011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			69
				ret
_uXm_m64_pshufw_1011 endp

			align 8
_uXm_m64_pshufw_1012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			70
				ret
_uXm_m64_pshufw_1012 endp

			align 8
_uXm_m64_pshufw_1013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			71
				ret
_uXm_m64_pshufw_1013 endp

			align 8
_uXm_m64_pshufw_1020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			72
				ret
_uXm_m64_pshufw_1020 endp

			align 8
_uXm_m64_pshufw_1021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			73
				ret
_uXm_m64_pshufw_1021 endp

			align 8
_uXm_m64_pshufw_1022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			74
				ret
_uXm_m64_pshufw_1022 endp

			align 8
_uXm_m64_pshufw_1023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			75
				ret
_uXm_m64_pshufw_1023 endp

			align 8
_uXm_m64_pshufw_1030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			76
				ret
_uXm_m64_pshufw_1030 endp

			align 8
_uXm_m64_pshufw_1031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			77
				ret
_uXm_m64_pshufw_1031 endp

			align 8
_uXm_m64_pshufw_1032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			78
				ret
_uXm_m64_pshufw_1032 endp

			align 8
_uXm_m64_pshufw_1033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			79
				ret
_uXm_m64_pshufw_1033 endp

			align 8
_uXm_m64_pshufw_1100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			80
				ret
_uXm_m64_pshufw_1100 endp

			align 8
_uXm_m64_pshufw_1101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			81
				ret
_uXm_m64_pshufw_1101 endp

			align 8
_uXm_m64_pshufw_1102 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			82
				ret
_uXm_m64_pshufw_1102 endp

			align 8
_uXm_m64_pshufw_1103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			83
				ret
_uXm_m64_pshufw_1103 endp

			align 8
_uXm_m64_pshufw_1110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			84
				ret
_uXm_m64_pshufw_1110 endp

			align 8
_uXm_m64_pshufw_1111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			85
				ret
_uXm_m64_pshufw_1111 endp

			align 8
_uXm_m64_pshufw_1112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			86
				ret
_uXm_m64_pshufw_1112 endp

			align 8
_uXm_m64_pshufw_1113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			87
				ret
_uXm_m64_pshufw_1113 endp

			align 8
_uXm_m64_pshufw_1120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			88
				ret
_uXm_m64_pshufw_1120 endp

			align 8
_uXm_m64_pshufw_1121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			89
				ret
_uXm_m64_pshufw_1121 endp

			align 8
_uXm_m64_pshufw_1122 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			90
				ret
_uXm_m64_pshufw_1122 endp

			align 8
_uXm_m64_pshufw_1123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			91
				ret
_uXm_m64_pshufw_1123 endp

			align 8
_uXm_m64_pshufw_1130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			92
				ret
_uXm_m64_pshufw_1130 endp

			align 8
_uXm_m64_pshufw_1131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			93
				ret
_uXm_m64_pshufw_1131 endp

			align 8
_uXm_m64_pshufw_1132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			94
				ret
_uXm_m64_pshufw_1132 endp

			align 8
_uXm_m64_pshufw_1133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			95
				ret
_uXm_m64_pshufw_1133 endp

			align 8
_uXm_m64_pshufw_1200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			96
				ret
_uXm_m64_pshufw_1200 endp

			align 8
_uXm_m64_pshufw_1201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			97
				ret
_uXm_m64_pshufw_1201 endp

			align 8
_uXm_m64_pshufw_1202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			98
				ret
_uXm_m64_pshufw_1202 endp

			align 8
_uXm_m64_pshufw_1203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			99
				ret
_uXm_m64_pshufw_1203 endp

			align 8
_uXm_m64_pshufw_1210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			100
				ret
_uXm_m64_pshufw_1210 endp

			align 8
_uXm_m64_pshufw_1211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			101
				ret
_uXm_m64_pshufw_1211 endp

			align 8
_uXm_m64_pshufw_1212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			102
				ret
_uXm_m64_pshufw_1212 endp

			align 8
_uXm_m64_pshufw_1213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			103
				ret
_uXm_m64_pshufw_1213 endp

			align 8
_uXm_m64_pshufw_1220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			104
				ret
_uXm_m64_pshufw_1220 endp

			align 8
_uXm_m64_pshufw_1221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			105
				ret
_uXm_m64_pshufw_1221 endp

			align 8
_uXm_m64_pshufw_1222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			106
				ret
_uXm_m64_pshufw_1222 endp

			align 8
_uXm_m64_pshufw_1223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			107
				ret
_uXm_m64_pshufw_1223 endp

			align 8
_uXm_m64_pshufw_1230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			108
				ret
_uXm_m64_pshufw_1230 endp

			align 8
_uXm_m64_pshufw_1231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			109
				ret
_uXm_m64_pshufw_1231 endp

			align 8
_uXm_m64_pshufw_1232 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			110
				ret
_uXm_m64_pshufw_1232 endp

			align 8
_uXm_m64_pshufw_1233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			111
				ret
_uXm_m64_pshufw_1233 endp

			align 8
_uXm_m64_pshufw_1300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			112
				ret
_uXm_m64_pshufw_1300 endp

			align 8
_uXm_m64_pshufw_1301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			113
				ret
_uXm_m64_pshufw_1301 endp

			align 8
_uXm_m64_pshufw_1302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			114
				ret
_uXm_m64_pshufw_1302 endp

			align 8
_uXm_m64_pshufw_1303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			115
				ret
_uXm_m64_pshufw_1303 endp

			align 8
_uXm_m64_pshufw_1310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			18
				ret
_uXm_m64_pshufw_1310 endp

			align 8
_uXm_m64_pshufw_1311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			117
				ret
_uXm_m64_pshufw_1311 endp

			align 8
_uXm_m64_pshufw_1312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			118
				ret
_uXm_m64_pshufw_1312 endp

			align 8
_uXm_m64_pshufw_1313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			119
				ret
_uXm_m64_pshufw_1313 endp

			align 8
_uXm_m64_pshufw_1320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			120
				ret
_uXm_m64_pshufw_1320 endp

			align 8
_uXm_m64_pshufw_1321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			121
				ret
_uXm_m64_pshufw_1321 endp

			align 8
_uXm_m64_pshufw_1322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			122
				ret
_uXm_m64_pshufw_1322 endp

			align 8
_uXm_m64_pshufw_1323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			123
				ret
_uXm_m64_pshufw_1323 endp

			align 8
_uXm_m64_pshufw_1330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			124
				ret
_uXm_m64_pshufw_1330 endp

			align 8
_uXm_m64_pshufw_1331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			125
				ret
_uXm_m64_pshufw_1331 endp

			align 8
_uXm_m64_pshufw_1332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			126
				ret
_uXm_m64_pshufw_1332 endp

			align 8
_uXm_m64_pshufw_1333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			127
				ret
_uXm_m64_pshufw_1333 endp

			align 8
_uXm_m64_pshufw_2000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			128
				ret
_uXm_m64_pshufw_2000 endp

			align 8
_uXm_m64_pshufw_2001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			129
				ret
_uXm_m64_pshufw_2001 endp

			align 8
_uXm_m64_pshufw_2002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			130
				ret
_uXm_m64_pshufw_2002 endp

			align 8
_uXm_m64_pshufw_2003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			131
				ret
_uXm_m64_pshufw_2003 endp

			align 8
_uXm_m64_pshufw_2010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			132
				ret
_uXm_m64_pshufw_2010 endp

			align 8
_uXm_m64_pshufw_2011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			133
				ret
_uXm_m64_pshufw_2011 endp

			align 8
_uXm_m64_pshufw_2012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			134
				ret
_uXm_m64_pshufw_2012 endp

			align 8
_uXm_m64_pshufw_2013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			135
				ret
_uXm_m64_pshufw_2013 endp

			align 8
_uXm_m64_pshufw_2020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			136
				ret
_uXm_m64_pshufw_2020 endp

			align 8
_uXm_m64_pshufw_2021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			137
				ret
_uXm_m64_pshufw_2021 endp

			align 8
_uXm_m64_pshufw_2022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			138
				ret
_uXm_m64_pshufw_2022 endp

			align 8
_uXm_m64_pshufw_2023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			139
				ret
_uXm_m64_pshufw_2023 endp

			align 8
_uXm_m64_pshufw_2030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			140
				ret
_uXm_m64_pshufw_2030 endp

			align 8
_uXm_m64_pshufw_2031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			141
				ret
_uXm_m64_pshufw_2031 endp

			align 8
_uXm_m64_pshufw_2032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			142
				ret
_uXm_m64_pshufw_2032 endp

			align 8
_uXm_m64_pshufw_2033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			143
				ret
_uXm_m64_pshufw_2033 endp

			align 8
_uXm_m64_pshufw_2100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			144
				ret
_uXm_m64_pshufw_2100 endp

			align 8
_uXm_m64_pshufw_2101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			145
				ret
_uXm_m64_pshufw_2101 endp

			align 8
_uXm_m64_pshufw_2102 proc UX_VECCALL (mmword) ;Inmm_A:mmword 
				pshufw				mm0,			mm1,			146
				ret
_uXm_m64_pshufw_2102 endp

			align 8
_uXm_m64_pshufw_2103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			147
				ret
_uXm_m64_pshufw_2103 endp

			align 8
_uXm_m64_pshufw_2110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			148
				ret
_uXm_m64_pshufw_2110 endp

			align 8
_uXm_m64_pshufw_2111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			149
				ret
_uXm_m64_pshufw_2111 endp

			align 8
_uXm_m64_pshufw_2112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			150
				ret
_uXm_m64_pshufw_2112 endp

			align 8
_uXm_m64_pshufw_2113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			151
				ret
_uXm_m64_pshufw_2113 endp

			align 8
_uXm_m64_pshufw_2120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			152
				ret
_uXm_m64_pshufw_2120 endp

			align 8
_uXm_m64_pshufw_2121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			153
				ret
_uXm_m64_pshufw_2121 endp

			align 8
_uXm_m64_pshufw_2122 proc UX_VECCALL (mmword) ;Inmm_A:mmword 
				pshufw				mm0,			mm1,			154
				ret
_uXm_m64_pshufw_2122 endp

			align 8
_uXm_m64_pshufw_2123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			155
				ret
_uXm_m64_pshufw_2123 endp

			align 8
_uXm_m64_pshufw_2130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			156
				ret
_uXm_m64_pshufw_2130 endp

			align 8
_uXm_m64_pshufw_2131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			157
				ret
_uXm_m64_pshufw_2131 endp

			align 8
_uXm_m64_pshufw_2132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			158
				ret
_uXm_m64_pshufw_2132 endp

			align 8
_uXm_m64_pshufw_2133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			159
				ret
_uXm_m64_pshufw_2133 endp

			align 8
_uXm_m64_pshufw_2200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			80
				ret
_uXm_m64_pshufw_2200 endp

			align 8
_uXm_m64_pshufw_2201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			81
				ret
_uXm_m64_pshufw_2201 endp

			align 8
_uXm_m64_pshufw_2202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			82
				ret
_uXm_m64_pshufw_2202 endp

			align 8
_uXm_m64_pshufw_2203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			83
				ret
_uXm_m64_pshufw_2203 endp

			align 8
_uXm_m64_pshufw_2210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			84
				ret
_uXm_m64_pshufw_2210 endp

			align 8
_uXm_m64_pshufw_2211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			85
				ret
_uXm_m64_pshufw_2211 endp

			align 8
_uXm_m64_pshufw_2212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			86
				ret
_uXm_m64_pshufw_2212 endp

			align 8
_uXm_m64_pshufw_2213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			87
				ret
_uXm_m64_pshufw_2213 endp

			align 8
_uXm_m64_pshufw_2220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			88
				ret
_uXm_m64_pshufw_2220 endp

			align 8
_uXm_m64_pshufw_2221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			89
				ret
_uXm_m64_pshufw_2221 endp

			align 8
_uXm_m64_pshufw_2222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			170
				ret
_uXm_m64_pshufw_2222 endp

			align 8
_uXm_m64_pshufw_2223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			171
				ret
_uXm_m64_pshufw_2223 endp

			align 8
_uXm_m64_pshufw_2230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			172
				ret
_uXm_m64_pshufw_2230 endp

			align 8
_uXm_m64_pshufw_2231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			173
				ret
_uXm_m64_pshufw_2231 endp

			align 8
_uXm_m64_pshufw_2232 proc UX_VECCALL (mmword) ;Inmm_A:mmword 
				pshufw				mm0,			mm1,			174
				ret
_uXm_m64_pshufw_2232 endp

			align 8
_uXm_m64_pshufw_2233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			175
				ret
_uXm_m64_pshufw_2233 endp

			align 8
_uXm_m64_pshufw_2300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			176
				ret
_uXm_m64_pshufw_2300 endp

			align 8
_uXm_m64_pshufw_2301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			177
				ret
_uXm_m64_pshufw_2301 endp

			align 8
_uXm_m64_pshufw_2302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			178
				ret
_uXm_m64_pshufw_2302 endp

			align 8
_uXm_m64_pshufw_2303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			179
				ret
_uXm_m64_pshufw_2303 endp

			align 8
_uXm_m64_pshufw_2310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			180
				ret
_uXm_m64_pshufw_2310 endp

			align 8
_uXm_m64_pshufw_2311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			181
				ret
_uXm_m64_pshufw_2311 endp

			align 8
_uXm_m64_pshufw_2312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			182
				ret
_uXm_m64_pshufw_2312 endp

			align 8
_uXm_m64_pshufw_2313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			183
				ret
_uXm_m64_pshufw_2313 endp

			align 8
_uXm_m64_pshufw_2320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			184
				ret
_uXm_m64_pshufw_2320 endp

			align 8
_uXm_m64_pshufw_2321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			185
				ret
_uXm_m64_pshufw_2321 endp

			align 8
_uXm_m64_pshufw_2322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			186
				ret
_uXm_m64_pshufw_2322 endp

			align 8
_uXm_m64_pshufw_2323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			187
				ret
_uXm_m64_pshufw_2323 endp

			align 8
_uXm_m64_pshufw_2330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			188
				ret
_uXm_m64_pshufw_2330 endp

			align 8
_uXm_m64_pshufw_2331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			189
				ret
_uXm_m64_pshufw_2331 endp

			align 8
_uXm_m64_pshufw_2332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			190
				ret
_uXm_m64_pshufw_2332 endp

			align 8
_uXm_m64_pshufw_2333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			191
				ret
_uXm_m64_pshufw_2333 endp

			align 8
_uXm_m64_pshufw_3000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			192
				ret
_uXm_m64_pshufw_3000 endp

			align 8
_uXm_m64_pshufw_3001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			193
				ret
_uXm_m64_pshufw_3001 endp

			align 8
_uXm_m64_pshufw_3002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			194
				ret
_uXm_m64_pshufw_3002 endp

			align 8
_uXm_m64_pshufw_3003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			195
				ret
_uXm_m64_pshufw_3003 endp

			align 8
_uXm_m64_pshufw_3010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			196
				ret
_uXm_m64_pshufw_3010 endp

			align 8
_uXm_m64_pshufw_3011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			197
				ret
_uXm_m64_pshufw_3011 endp

			align 8
_uXm_m64_pshufw_3012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			198
				ret
_uXm_m64_pshufw_3012 endp

			align 8
_uXm_m64_pshufw_3013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			199
				ret
_uXm_m64_pshufw_3013 endp

			align 8
_uXm_m64_pshufw_3020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			200
				ret
_uXm_m64_pshufw_3020 endp

			align 8
_uXm_m64_pshufw_3021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			201
				ret
_uXm_m64_pshufw_3021 endp

			align 8
_uXm_m64_pshufw_3022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			202
				ret
_uXm_m64_pshufw_3022 endp

			align 8
_uXm_m64_pshufw_3023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			203
				ret
_uXm_m64_pshufw_3023 endp

			align 8
_uXm_m64_pshufw_3030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			204
				ret
_uXm_m64_pshufw_3030 endp

			align 8
_uXm_m64_pshufw_3031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			205
				ret
_uXm_m64_pshufw_3031 endp

			align 8
_uXm_m64_pshufw_3032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			206
				ret
_uXm_m64_pshufw_3032 endp

			align 8
_uXm_m64_pshufw_3033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			207
				ret
_uXm_m64_pshufw_3033 endp

			align 8
_uXm_m64_pshufw_3100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			208
				ret
_uXm_m64_pshufw_3100 endp

			align 8
_uXm_m64_pshufw_3101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			209
				ret
_uXm_m64_pshufw_3101 endp

			align 8
_uXm_m64_pshufw_3102 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			210
				ret
_uXm_m64_pshufw_3102 endp

			align 8
_uXm_m64_pshufw_3103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			211
				ret
_uXm_m64_pshufw_3103 endp

			align 8
_uXm_m64_pshufw_3110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			212
				ret
_uXm_m64_pshufw_3110 endp

			align 8
_uXm_m64_pshufw_3111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			213
				ret
_uXm_m64_pshufw_3111 endp

			align 8
_uXm_m64_pshufw_3112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			214
				ret
_uXm_m64_pshufw_3112 endp

			align 8
_uXm_m64_pshufw_3113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			215
				ret
_uXm_m64_pshufw_3113 endp

			align 8
_uXm_m64_pshufw_3120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			28
				ret
_uXm_m64_pshufw_3120 endp

			align 8
_uXm_m64_pshufw_3121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			217
				ret
_uXm_m64_pshufw_3121 endp

			align 8
_uXm_m64_pshufw_3122 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			218
				ret
_uXm_m64_pshufw_3122 endp

			align 8
_uXm_m64_pshufw_3123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			219
				ret
_uXm_m64_pshufw_3123 endp

			align 8
_uXm_m64_pshufw_3130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			220
				ret
_uXm_m64_pshufw_3130 endp

			align 8
_uXm_m64_pshufw_3131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			221
				ret
_uXm_m64_pshufw_3131 endp

			align 8
_uXm_m64_pshufw_3132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			222
				ret
_uXm_m64_pshufw_3132 endp

			align 8
_uXm_m64_pshufw_3133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			223
				ret
_uXm_m64_pshufw_3133 endp

			align 8
_uXm_m64_pshufw_3200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			224
				ret
_uXm_m64_pshufw_3200 endp

			align 8
_uXm_m64_pshufw_3201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			225
				ret
_uXm_m64_pshufw_3201 endp

			align 8
_uXm_m64_pshufw_3202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			226
				ret
_uXm_m64_pshufw_3202 endp

			align 8
_uXm_m64_pshufw_3203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			227
				ret
_uXm_m64_pshufw_3203 endp

			align 8
_uXm_m64_pshufw_3210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			228
				ret
_uXm_m64_pshufw_3210 endp

			align 8
_uXm_m64_pshufw_3211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			229
				ret
_uXm_m64_pshufw_3211 endp

			align 8
_uXm_m64_pshufw_3212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			230
				ret
_uXm_m64_pshufw_3212 endp

			align 8
_uXm_m64_pshufw_3213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			231
				ret
_uXm_m64_pshufw_3213 endp

			align 8
_uXm_m64_pshufw_3220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			232
				ret
_uXm_m64_pshufw_3220 endp

			align 8
_uXm_m64_pshufw_3221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			233
				ret
_uXm_m64_pshufw_3221 endp

			align 8
_uXm_m64_pshufw_3222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			234
				ret
_uXm_m64_pshufw_3222 endp

			align 8
_uXm_m64_pshufw_3223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			235
				ret
_uXm_m64_pshufw_3223 endp

			align 8
_uXm_m64_pshufw_3230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			236
				ret
_uXm_m64_pshufw_3230 endp

			align 8
_uXm_m64_pshufw_3231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			237
				ret
_uXm_m64_pshufw_3231 endp

			align 8
_uXm_m64_pshufw_3232 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			238
				ret
_uXm_m64_pshufw_3232 endp

			align 8
_uXm_m64_pshufw_3233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			239
				ret
_uXm_m64_pshufw_3233 endp

			align 8
_uXm_m64_pshufw_3300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			240
				ret
_uXm_m64_pshufw_3300 endp

			align 8
_uXm_m64_pshufw_3301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			241
				ret
_uXm_m64_pshufw_3301 endp

			align 8
_uXm_m64_pshufw_3302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			242
				ret
_uXm_m64_pshufw_3302 endp

			align 8
_uXm_m64_pshufw_3303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			243
				ret
_uXm_m64_pshufw_3303 endp

			align 8
_uXm_m64_pshufw_3310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			244
				ret
_uXm_m64_pshufw_3310 endp

			align 8
_uXm_m64_pshufw_3311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			245
				ret
_uXm_m64_pshufw_3311 endp

			align 8
_uXm_m64_pshufw_3312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			246
				ret
_uXm_m64_pshufw_3312 endp

			align 8
_uXm_m64_pshufw_3313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			247
				ret
_uXm_m64_pshufw_3313 endp

			align 8
_uXm_m64_pshufw_3320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			248
				ret
_uXm_m64_pshufw_3320 endp

			align 8
_uXm_m64_pshufw_3321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			249
				ret
_uXm_m64_pshufw_3321 endp

			align 8
_uXm_m64_pshufw_3322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			250
				ret
_uXm_m64_pshufw_3322 endp

			align 8
_uXm_m64_pshufw_3323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			251
				ret
_uXm_m64_pshufw_3323 endp

			align 8
_uXm_m64_pshufw_3330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			252
				ret
_uXm_m64_pshufw_3330 endp

			align 8
_uXm_m64_pshufw_3331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			253
				ret
_uXm_m64_pshufw_3331 endp

			align 8
_uXm_m64_pshufw_3332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			254
				ret
_uXm_m64_pshufw_3332 endp

			align 8
_uXm_m64_pshufw_3333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
				pshufw				mm0,			mm1,			255
				ret
_uXm_m64_pshufw_3333 endp

			align 8
_uXm_m64_pshufw proc UX_VECCALL (mmword) ;Inmm_A:mmword, _Imm8:dword
				
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam3]
			lea				ebx,			[m64pshufwjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			m64pshufwjmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
					
			m64pshufwword		textequ		<dword>
			m64pshufwiword		textequ		<dd>

		m64pshufwjmptable label m64pshufwword
			m64pshufwiword offset m64pshufw_0, offset m64pshufw_1, offset m64pshufw_2, offset m64pshufw_3, offset m64pshufw_4, offset m64pshufw_5, offset m64pshufw_6, offset m64pshufw_7, offset m64pshufw_8, offset m64pshufw_9, offset m64pshufw_10, offset m64pshufw_11, offset m64pshufw_12, offset m64pshufw_13, offset m64pshufw_14, offset m64pshufw_15, offset m64pshufw_8, offset m64pshufw_17, offset m64pshufw_18, offset m64pshufw_19, offset m64pshufw_20, offset m64pshufw_21, offset m64pshufw_22, offset m64pshufw_23, offset m64pshufw_24, offset m64pshufw_25
			m64pshufwiword offset m64pshufw_26, offset m64pshufw_27, offset m64pshufw_28, offset m64pshufw_29, offset m64pshufw_30, offset m64pshufw_31, offset m64pshufw_32, offset m64pshufw_33, offset m64pshufw_34, offset m64pshufw_35, offset m64pshufw_36, offset m64pshufw_37, offset m64pshufw_38, offset m64pshufw_39, offset m64pshufw_40, offset m64pshufw_41, offset m64pshufw_42, offset m64pshufw_43, offset m64pshufw_44, offset m64pshufw_45, offset m64pshufw_46, offset m64pshufw_47, offset m64pshufw_48, offset m64pshufw_49, offset m64pshufw_50
			m64pshufwiword offset m64pshufw_51, offset m64pshufw_52, offset m64pshufw_53, offset m64pshufw_54, offset m64pshufw_55, offset m64pshufw_56, offset m64pshufw_57, offset m64pshufw_58, offset m64pshufw_59, offset m64pshufw_60, offset m64pshufw_61, offset m64pshufw_62, offset m64pshufw_63, offset m64pshufw_64, offset m64pshufw_65, offset m64pshufw_66, offset m64pshufw_67, offset m64pshufw_68, offset m64pshufw_69, offset m64pshufw_70, offset m64pshufw_71, offset m64pshufw_72, offset m64pshufw_73, offset m64pshufw_74, offset m64pshufw_75
			m64pshufwiword offset m64pshufw_76, offset m64pshufw_77, offset m64pshufw_78, offset m64pshufw_79, offset m64pshufw_80, offset m64pshufw_81, offset m64pshufw_82, offset m64pshufw_83, offset m64pshufw_84, offset m64pshufw_85, offset m64pshufw_86, offset m64pshufw_87, offset m64pshufw_88, offset m64pshufw_89, offset m64pshufw_90, offset m64pshufw_91, offset m64pshufw_92, offset m64pshufw_93, offset m64pshufw_94, offset m64pshufw_95, offset m64pshufw_96, offset m64pshufw_97, offset m64pshufw_98, offset m64pshufw_99, offset m64pshufw_100
			m64pshufwiword offset m64pshufw_101, offset m64pshufw_102, offset m64pshufw_103, offset m64pshufw_104, offset m64pshufw_105, offset m64pshufw_106, offset m64pshufw_107, offset m64pshufw_108, offset m64pshufw_109, offset m64pshufw_110, offset m64pshufw_111, offset m64pshufw_112, offset m64pshufw_113, offset m64pshufw_114, offset m64pshufw_115, offset m64pshufw_18, offset m64pshufw_117, offset m64pshufw_118, offset m64pshufw_119, offset m64pshufw_120, offset m64pshufw_121, offset m64pshufw_122, offset m64pshufw_123, offset m64pshufw_124, offset m64pshufw_125
			m64pshufwiword offset m64pshufw_126, offset m64pshufw_127, offset m64pshufw_128, offset m64pshufw_129, offset m64pshufw_130, offset m64pshufw_131, offset m64pshufw_132, offset m64pshufw_133, offset m64pshufw_134, offset m64pshufw_135, offset m64pshufw_136, offset m64pshufw_137, offset m64pshufw_138, offset m64pshufw_139, offset m64pshufw_140, offset m64pshufw_141, offset m64pshufw_142, offset m64pshufw_143, offset m64pshufw_144, offset m64pshufw_145, offset m64pshufw_146, offset m64pshufw_147, offset m64pshufw_148, offset m64pshufw_149, offset m64pshufw_150
			m64pshufwiword offset m64pshufw_151, offset m64pshufw_152, offset m64pshufw_153, offset m64pshufw_154, offset m64pshufw_155, offset m64pshufw_156, offset m64pshufw_157, offset m64pshufw_158, offset m64pshufw_159, offset m64pshufw_160, offset m64pshufw_161, offset m64pshufw_162, offset m64pshufw_163, offset m64pshufw_164, offset m64pshufw_165, offset m64pshufw_166, offset m64pshufw_167, offset m64pshufw_168, offset m64pshufw_169, offset m64pshufw_170, offset m64pshufw_171, offset m64pshufw_172, offset m64pshufw_173, offset m64pshufw_174, offset m64pshufw_175
			m64pshufwiword offset m64pshufw_176, offset m64pshufw_177, offset m64pshufw_178, offset m64pshufw_179, offset m64pshufw_180, offset m64pshufw_181, offset m64pshufw_182, offset m64pshufw_183, offset m64pshufw_184, offset m64pshufw_185, offset m64pshufw_186, offset m64pshufw_187, offset m64pshufw_188, offset m64pshufw_189, offset m64pshufw_190, offset m64pshufw_191, offset m64pshufw_192, offset m64pshufw_193, offset m64pshufw_194, offset m64pshufw_195, offset m64pshufw_196, offset m64pshufw_197, offset m64pshufw_198, offset m64pshufw_199, offset m64pshufw_200
			m64pshufwiword offset m64pshufw_201, offset m64pshufw_202, offset m64pshufw_203, offset m64pshufw_204, offset m64pshufw_205, offset m64pshufw_206, offset m64pshufw_207, offset m64pshufw_208, offset m64pshufw_209, offset m64pshufw_210, offset m64pshufw_211, offset m64pshufw_212, offset m64pshufw_213, offset m64pshufw_214, offset m64pshufw_215, offset m64pshufw_28, offset m64pshufw_217, offset m64pshufw_218, offset m64pshufw_219, offset m64pshufw_220, offset m64pshufw_221, offset m64pshufw_222, offset m64pshufw_223, offset m64pshufw_224, offset m64pshufw_225
			m64pshufwiword offset m64pshufw_226, offset m64pshufw_227, offset m64pshufw_228, offset m64pshufw_229, offset m64pshufw_230, offset m64pshufw_231, offset m64pshufw_232, offset m64pshufw_233, offset m64pshufw_234, offset m64pshufw_235, offset m64pshufw_236, offset m64pshufw_237, offset m64pshufw_238, offset m64pshufw_239, offset m64pshufw_240, offset m64pshufw_241, offset m64pshufw_242, offset m64pshufw_243, offset m64pshufw_244, offset m64pshufw_245, offset m64pshufw_246, offset m64pshufw_247, offset m64pshufw_248, offset m64pshufw_249, offset m64pshufw_250
			m64pshufwiword offset m64pshufw_251, offset m64pshufw_252, offset m64pshufw_253, offset m64pshufw_254, offset m64pshufw_255

			m64pshufw_0 label m64pshufwword
				jmp		_uXm_m64_pshufw_0000
			m64pshufw_1 label m64pshufwword
				jmp		_uXm_m64_pshufw_0001
			m64pshufw_2 label m64pshufwword
				jmp		_uXm_m64_pshufw_0002
			m64pshufw_3 label m64pshufwword
				jmp		_uXm_m64_pshufw_0003
			m64pshufw_4 label m64pshufwword
				jmp		_uXm_m64_pshufw_0010
			m64pshufw_5 label m64pshufwword
				jmp		_uXm_m64_pshufw_0011
			m64pshufw_6 label m64pshufwword
				jmp		_uXm_m64_pshufw_0012
			m64pshufw_7 label m64pshufwword
				jmp		_uXm_m64_pshufw_0013
			m64pshufw_8 label m64pshufwword
				jmp		_uXm_m64_pshufw_0020
			m64pshufw_9 label m64pshufwword
				jmp		_uXm_m64_pshufw_0021
			m64pshufw_10 label m64pshufwword
				jmp		_uXm_m64_pshufw_0022
			m64pshufw_11 label m64pshufwword
				jmp		_uXm_m64_pshufw_0023
			m64pshufw_12 label m64pshufwword
				jmp		_uXm_m64_pshufw_0030
			m64pshufw_13 label m64pshufwword
				jmp		_uXm_m64_pshufw_0031
			m64pshufw_14 label m64pshufwword
				jmp		_uXm_m64_pshufw_0032
			m64pshufw_15 label m64pshufwword
				jmp		_uXm_m64_pshufw_0033
			m64pshufw_8 label m64pshufwword
				jmp		_uXm_m64_pshufw_0100
			m64pshufw_17 label m64pshufwword
				jmp		_uXm_m64_pshufw_0101
			m64pshufw_18 label m64pshufwword
				jmp		_uXm_m64_pshufw_0102
			m64pshufw_19 label m64pshufwword
				jmp		_uXm_m64_pshufw_0103
			m64pshufw_20 label m64pshufwword
				jmp		_uXm_m64_pshufw_0110
			m64pshufw_21 label m64pshufwword
				jmp		_uXm_m64_pshufw_0111
			m64pshufw_22 label m64pshufwword
				jmp		_uXm_m64_pshufw_0112
			m64pshufw_23 label m64pshufwword
				jmp		_uXm_m64_pshufw_0113
			m64pshufw_24 label m64pshufwword
				jmp		_uXm_m64_pshufw_0120
			m64pshufw_25 label m64pshufwword
				jmp		_uXm_m64_pshufw_0121
			m64pshufw_26 label m64pshufwword
				jmp		_uXm_m64_pshufw_0122
			m64pshufw_27 label m64pshufwword
				jmp		_uXm_m64_pshufw_0123
			m64pshufw_28 label m64pshufwword
				jmp		_uXm_m64_pshufw_0130
			m64pshufw_29 label m64pshufwword
				jmp		_uXm_m64_pshufw_0131
			m64pshufw_30 label m64pshufwword
				jmp		_uXm_m64_pshufw_0132
			m64pshufw_31 label m64pshufwword
				jmp		_uXm_m64_pshufw_0133
			m64pshufw_32 label m64pshufwword
				jmp		_uXm_m64_pshufw_0200
			m64pshufw_33 label m64pshufwword
				jmp		_uXm_m64_pshufw_0201
			m64pshufw_34 label m64pshufwword
				jmp		_uXm_m64_pshufw_0202
			m64pshufw_35 label m64pshufwword
				jmp		_uXm_m64_pshufw_0203
			m64pshufw_36 label m64pshufwword
				jmp		_uXm_m64_pshufw_0210
			m64pshufw_37 label m64pshufwword
				jmp		_uXm_m64_pshufw_0211
			m64pshufw_38 label m64pshufwword
				jmp		_uXm_m64_pshufw_0212
			m64pshufw_39 label m64pshufwword
				jmp		_uXm_m64_pshufw_0213
			m64pshufw_40 label m64pshufwword
				jmp		_uXm_m64_pshufw_0220
			m64pshufw_41 label m64pshufwword
				jmp		_uXm_m64_pshufw_0221
			m64pshufw_42 label m64pshufwword
				jmp		_uXm_m64_pshufw_0222
			m64pshufw_43 label m64pshufwword
				jmp		_uXm_m64_pshufw_0223
			m64pshufw_44 label m64pshufwword
				jmp		_uXm_m64_pshufw_0230
			m64pshufw_45 label m64pshufwword
				jmp		_uXm_m64_pshufw_0231
			m64pshufw_46 label m64pshufwword
				jmp		_uXm_m64_pshufw_0232
			m64pshufw_47 label m64pshufwword
				jmp		_uXm_m64_pshufw_0233
			m64pshufw_48 label m64pshufwword
				jmp		_uXm_m64_pshufw_0300
			m64pshufw_49 label m64pshufwword
				jmp		_uXm_m64_pshufw_0301
			m64pshufw_50 label m64pshufwword
				jmp		_uXm_m64_pshufw_0302
			m64pshufw_51 label m64pshufwword
				jmp		_uXm_m64_pshufw_0303
			m64pshufw_52 label m64pshufwword
				jmp		_uXm_m64_pshufw_0310
			m64pshufw_53 label m64pshufwword
				jmp		_uXm_m64_pshufw_0311
			m64pshufw_54 label m64pshufwword
				jmp		_uXm_m64_pshufw_0312
			m64pshufw_55 label m64pshufwword
				jmp		_uXm_m64_pshufw_0313
			m64pshufw_56 label m64pshufwword
				jmp		_uXm_m64_pshufw_0320
			m64pshufw_57 label m64pshufwword
				jmp		_uXm_m64_pshufw_0321
			m64pshufw_58 label m64pshufwword
				jmp		_uXm_m64_pshufw_0322
			m64pshufw_59 label m64pshufwword
				jmp		_uXm_m64_pshufw_0323
			m64pshufw_60 label m64pshufwword
				jmp		_uXm_m64_pshufw_0330
			m64pshufw_61 label m64pshufwword
				jmp		_uXm_m64_pshufw_0331
			m64pshufw_62 label m64pshufwword
				jmp		_uXm_m64_pshufw_0332
			m64pshufw_63 label m64pshufwword
				jmp		_uXm_m64_pshufw_0333
			m64pshufw_64 label m64pshufwword
				jmp		_uXm_m64_pshufw_1000
			m64pshufw_65 label m64pshufwword
				jmp		_uXm_m64_pshufw_1001
			m64pshufw_66 label m64pshufwword
				jmp		_uXm_m64_pshufw_1002
			m64pshufw_67 label m64pshufwword
				jmp		_uXm_m64_pshufw_1003
			m64pshufw_68 label m64pshufwword
				jmp		_uXm_m64_pshufw_1010
			m64pshufw_69 label m64pshufwword
				jmp		_uXm_m64_pshufw_1011
			m64pshufw_70 label m64pshufwword
				jmp		_uXm_m64_pshufw_1012
			m64pshufw_71 label m64pshufwword
				jmp		_uXm_m64_pshufw_1013
			m64pshufw_72 label m64pshufwword
				jmp		_uXm_m64_pshufw_1020
			m64pshufw_73 label m64pshufwword
				jmp		_uXm_m64_pshufw_1021
			m64pshufw_74 label m64pshufwword
				jmp		_uXm_m64_pshufw_1022
			m64pshufw_75 label m64pshufwword
				jmp		_uXm_m64_pshufw_1023
			m64pshufw_76 label m64pshufwword
				jmp		_uXm_m64_pshufw_1030
			m64pshufw_77 label m64pshufwword
				jmp		_uXm_m64_pshufw_1031
			m64pshufw_78 label m64pshufwword
				jmp		_uXm_m64_pshufw_1032
			m64pshufw_79 label m64pshufwword
				jmp		_uXm_m64_pshufw_1033
			m64pshufw_80 label m64pshufwword
				jmp		_uXm_m64_pshufw_1100
			m64pshufw_81 label m64pshufwword
				jmp		_uXm_m64_pshufw_1101
			m64pshufw_82 label m64pshufwword
				jmp		_uXm_m64_pshufw_1102
			m64pshufw_83 label m64pshufwword
				jmp		_uXm_m64_pshufw_1103
			m64pshufw_84 label m64pshufwword
				jmp		_uXm_m64_pshufw_1110
			m64pshufw_85 label m64pshufwword
				jmp		_uXm_m64_pshufw_1111
			m64pshufw_86 label m64pshufwword
				jmp		_uXm_m64_pshufw_1112
			m64pshufw_87 label m64pshufwword
				jmp		_uXm_m64_pshufw_1113
			m64pshufw_88 label m64pshufwword
				jmp		_uXm_m64_pshufw_1120
			m64pshufw_89 label m64pshufwword
				jmp		_uXm_m64_pshufw_1121
			m64pshufw_90 label m64pshufwword
				jmp		_uXm_m64_pshufw_1122
			m64pshufw_91 label m64pshufwword
				jmp		_uXm_m64_pshufw_1123
			m64pshufw_92 label m64pshufwword
				jmp		_uXm_m64_pshufw_1130
			m64pshufw_93 label m64pshufwword
				jmp		_uXm_m64_pshufw_1131
			m64pshufw_94 label m64pshufwword
				jmp		_uXm_m64_pshufw_1132
			m64pshufw_95 label m64pshufwword
				jmp		_uXm_m64_pshufw_1133
			m64pshufw_96 label m64pshufwword
				jmp		_uXm_m64_pshufw_1200
			m64pshufw_97 label m64pshufwword
				jmp		_uXm_m64_pshufw_1201
			m64pshufw_98 label m64pshufwword
				jmp		_uXm_m64_pshufw_1202
			m64pshufw_99 label m64pshufwword
				jmp		_uXm_m64_pshufw_1203
			m64pshufw_100 label m64pshufwword
				jmp		_uXm_m64_pshufw_1210
			m64pshufw_101 label m64pshufwword
				jmp		_uXm_m64_pshufw_1211
			m64pshufw_102 label m64pshufwword
				jmp		_uXm_m64_pshufw_1212
			m64pshufw_103 label m64pshufwword
				jmp		_uXm_m64_pshufw_1213
			m64pshufw_104 label m64pshufwword
				jmp		_uXm_m64_pshufw_1220
			m64pshufw_105 label m64pshufwword
				jmp		_uXm_m64_pshufw_1221
			m64pshufw_106 label m64pshufwword
				jmp		_uXm_m64_pshufw_1222
			m64pshufw_107 label m64pshufwword
				jmp		_uXm_m64_pshufw_1223
			m64pshufw_108 label m64pshufwword
				jmp		_uXm_m64_pshufw_1230
			m64pshufw_109 label m64pshufwword
				jmp		_uXm_m64_pshufw_1231
			m64pshufw_110 label m64pshufwword
				jmp		_uXm_m64_pshufw_1232
			m64pshufw_111 label m64pshufwword
				jmp		_uXm_m64_pshufw_1233
			m64pshufw_112 label m64pshufwword
				jmp		_uXm_m64_pshufw_1300
			m64pshufw_113 label m64pshufwword
				jmp		_uXm_m64_pshufw_1301
			m64pshufw_114 label m64pshufwword
				jmp		_uXm_m64_pshufw_1302
			m64pshufw_115 label m64pshufwword
				jmp		_uXm_m64_pshufw_1303
			m64pshufw_18 label m64pshufwword
				jmp		_uXm_m64_pshufw_1310
			m64pshufw_117 label m64pshufwword
				jmp		_uXm_m64_pshufw_1311
			m64pshufw_118 label m64pshufwword
				jmp		_uXm_m64_pshufw_1312
			m64pshufw_119 label m64pshufwword
				jmp		_uXm_m64_pshufw_1313
			m64pshufw_120 label m64pshufwword
				jmp		_uXm_m64_pshufw_1320
			m64pshufw_121 label m64pshufwword
				jmp		_uXm_m64_pshufw_1321
			m64pshufw_122 label m64pshufwword
				jmp		_uXm_m64_pshufw_1322
			m64pshufw_123 label m64pshufwword
				jmp		_uXm_m64_pshufw_1323
			m64pshufw_124 label m64pshufwword
				jmp		_uXm_m64_pshufw_1330
			m64pshufw_125 label m64pshufwword
				jmp		_uXm_m64_pshufw_1331
			m64pshufw_126 label m64pshufwword
				jmp		_uXm_m64_pshufw_1332
			m64pshufw_127 label m64pshufwword
				jmp		_uXm_m64_pshufw_1333
			m64pshufw_128 label m64pshufwword
				jmp		_uXm_m64_pshufw_2000
			m64pshufw_129 label m64pshufwword
				jmp		_uXm_m64_pshufw_2001
			m64pshufw_130 label m64pshufwword
				jmp		_uXm_m64_pshufw_2002
			m64pshufw_131 label m64pshufwword
				jmp		_uXm_m64_pshufw_2003
			m64pshufw_132 label m64pshufwword
				jmp		_uXm_m64_pshufw_2010
			m64pshufw_133 label m64pshufwword
				jmp		_uXm_m64_pshufw_2011
			m64pshufw_134 label m64pshufwword
				jmp		_uXm_m64_pshufw_2012
			m64pshufw_135 label m64pshufwword
				jmp		_uXm_m64_pshufw_2013
			m64pshufw_136 label m64pshufwword
				jmp		_uXm_m64_pshufw_2020
			m64pshufw_137 label m64pshufwword
				jmp		_uXm_m64_pshufw_2021
			m64pshufw_138 label m64pshufwword
				jmp		_uXm_m64_pshufw_2022
			m64pshufw_139 label m64pshufwword
				jmp		_uXm_m64_pshufw_2023
			m64pshufw_140 label m64pshufwword
				jmp		_uXm_m64_pshufw_2030
			m64pshufw_141 label m64pshufwword
				jmp		_uXm_m64_pshufw_2031
			m64pshufw_142 label m64pshufwword
				jmp		_uXm_m64_pshufw_2032
			m64pshufw_143 label m64pshufwword
				jmp		_uXm_m64_pshufw_2033
			m64pshufw_144 label m64pshufwword
				jmp		_uXm_m64_pshufw_2100
			m64pshufw_145 label m64pshufwword
				jmp		_uXm_m64_pshufw_2101
			m64pshufw_146 label m64pshufwword
				jmp		_uXm_m64_pshufw_2102
			m64pshufw_147 label m64pshufwword
				jmp		_uXm_m64_pshufw_2103
			m64pshufw_148 label m64pshufwword
				jmp		_uXm_m64_pshufw_2110
			m64pshufw_149 label m64pshufwword
				jmp		_uXm_m64_pshufw_2111
			m64pshufw_150 label m64pshufwword
				jmp		_uXm_m64_pshufw_2112
			m64pshufw_151 label m64pshufwword
				jmp		_uXm_m64_pshufw_2113
			m64pshufw_152 label m64pshufwword
				jmp		_uXm_m64_pshufw_2120
			m64pshufw_153 label m64pshufwword
				jmp		_uXm_m64_pshufw_2121
			m64pshufw_154 label m64pshufwword
				jmp		_uXm_m64_pshufw_2122
			m64pshufw_155 label m64pshufwword
				jmp		_uXm_m64_pshufw_2123
			m64pshufw_156 label m64pshufwword
				jmp		_uXm_m64_pshufw_2130
			m64pshufw_157 label m64pshufwword
				jmp		_uXm_m64_pshufw_2131
			m64pshufw_158 label m64pshufwword
				jmp		_uXm_m64_pshufw_2132
			m64pshufw_159 label m64pshufwword
				jmp		_uXm_m64_pshufw_2133
			m64pshufw_80 label m64pshufwword
				jmp		_uXm_m64_pshufw_2200
			m64pshufw_81 label m64pshufwword
				jmp		_uXm_m64_pshufw_2201
			m64pshufw_82 label m64pshufwword
				jmp		_uXm_m64_pshufw_2202
			m64pshufw_83 label m64pshufwword
				jmp		_uXm_m64_pshufw_2203
			m64pshufw_84 label m64pshufwword
				jmp		_uXm_m64_pshufw_2210
			m64pshufw_85 label m64pshufwword
				jmp		_uXm_m64_pshufw_2211
			m64pshufw_86 label m64pshufwword
				jmp		_uXm_m64_pshufw_2212
			m64pshufw_87 label m64pshufwword
				jmp		_uXm_m64_pshufw_2213
			m64pshufw_88 label m64pshufwword
				jmp		_uXm_m64_pshufw_2220
			m64pshufw_89 label m64pshufwword
				jmp		_uXm_m64_pshufw_2221
			m64pshufw_170 label m64pshufwword
				jmp		_uXm_m64_pshufw_2222
			m64pshufw_171 label m64pshufwword
				jmp		_uXm_m64_pshufw_2223
			m64pshufw_172 label m64pshufwword
				jmp		_uXm_m64_pshufw_2230
			m64pshufw_173 label m64pshufwword
				jmp		_uXm_m64_pshufw_2231
			m64pshufw_174 label m64pshufwword
				jmp		_uXm_m64_pshufw_2232
			m64pshufw_175 label m64pshufwword
				jmp		_uXm_m64_pshufw_2233
			m64pshufw_176 label m64pshufwword
				jmp		_uXm_m64_pshufw_2300
			m64pshufw_177 label m64pshufwword
				jmp		_uXm_m64_pshufw_2301
			m64pshufw_178 label m64pshufwword
				jmp		_uXm_m64_pshufw_2302
			m64pshufw_179 label m64pshufwword
				jmp		_uXm_m64_pshufw_2303
			m64pshufw_180 label m64pshufwword
				jmp		_uXm_m64_pshufw_2310
			m64pshufw_181 label m64pshufwword
				jmp		_uXm_m64_pshufw_2311
			m64pshufw_182 label m64pshufwword
				jmp		_uXm_m64_pshufw_2312
			m64pshufw_183 label m64pshufwword
				jmp		_uXm_m64_pshufw_2313
			m64pshufw_184 label m64pshufwword
				jmp		_uXm_m64_pshufw_2320
			m64pshufw_185 label m64pshufwword
				jmp		_uXm_m64_pshufw_2321
			m64pshufw_186 label m64pshufwword
				jmp		_uXm_m64_pshufw_2322
			m64pshufw_187 label m64pshufwword
				jmp		_uXm_m64_pshufw_2323
			m64pshufw_188 label m64pshufwword
				jmp		_uXm_m64_pshufw_2330
			m64pshufw_189 label m64pshufwword
				jmp		_uXm_m64_pshufw_2331
			m64pshufw_190 label m64pshufwword
				jmp		_uXm_m64_pshufw_2332
			m64pshufw_191 label m64pshufwword
				jmp		_uXm_m64_pshufw_2333
			m64pshufw_192 label m64pshufwword
				jmp		_uXm_m64_pshufw_3000
			m64pshufw_193 label m64pshufwword
				jmp		_uXm_m64_pshufw_3001
			m64pshufw_194 label m64pshufwword
				jmp		_uXm_m64_pshufw_3002
			m64pshufw_195 label m64pshufwword
				jmp		_uXm_m64_pshufw_3003
			m64pshufw_196 label m64pshufwword
				jmp		_uXm_m64_pshufw_3010
			m64pshufw_197 label m64pshufwword
				jmp		_uXm_m64_pshufw_3011
			m64pshufw_198 label m64pshufwword
				jmp		_uXm_m64_pshufw_3012
			m64pshufw_199 label m64pshufwword
				jmp		_uXm_m64_pshufw_3013
			m64pshufw_200 label m64pshufwword
				jmp		_uXm_m64_pshufw_3020
			m64pshufw_201 label m64pshufwword
				jmp		_uXm_m64_pshufw_3021
			m64pshufw_202 label m64pshufwword
				jmp		_uXm_m64_pshufw_3022
			m64pshufw_203 label m64pshufwword
				jmp		_uXm_m64_pshufw_3023
			m64pshufw_204 label m64pshufwword
				jmp		_uXm_m64_pshufw_3030
			m64pshufw_205 label m64pshufwword
				jmp		_uXm_m64_pshufw_3031
			m64pshufw_206 label m64pshufwword
				jmp		_uXm_m64_pshufw_3032
			m64pshufw_207 label m64pshufwword
				jmp		_uXm_m64_pshufw_3033
			m64pshufw_208 label m64pshufwword
				jmp		_uXm_m64_pshufw_3100
			m64pshufw_209 label m64pshufwword
				jmp		_uXm_m64_pshufw_3101
			m64pshufw_210 label m64pshufwword
				jmp		_uXm_m64_pshufw_3102
			m64pshufw_211 label m64pshufwword
				jmp		_uXm_m64_pshufw_3103
			m64pshufw_212 label m64pshufwword
				jmp		_uXm_m64_pshufw_3110
			m64pshufw_213 label m64pshufwword
				jmp		_uXm_m64_pshufw_3111
			m64pshufw_214 label m64pshufwword
				jmp		_uXm_m64_pshufw_3112
			m64pshufw_215 label m64pshufwword
				jmp		_uXm_m64_pshufw_3113
			m64pshufw_28 label m64pshufwword
				jmp		_uXm_m64_pshufw_3120
			m64pshufw_217 label m64pshufwword
				jmp		_uXm_m64_pshufw_3121
			m64pshufw_218 label m64pshufwword
				jmp		_uXm_m64_pshufw_3122
			m64pshufw_219 label m64pshufwword
				jmp		_uXm_m64_pshufw_3123
			m64pshufw_220 label m64pshufwword
				jmp		_uXm_m64_pshufw_3130
			m64pshufw_221 label m64pshufwword
				jmp		_uXm_m64_pshufw_3131
			m64pshufw_222 label m64pshufwword
				jmp		_uXm_m64_pshufw_3132
			m64pshufw_223 label m64pshufwword
				jmp		_uXm_m64_pshufw_3133
			m64pshufw_224 label m64pshufwword
				jmp		_uXm_m64_pshufw_3200
			m64pshufw_225 label m64pshufwword
				jmp		_uXm_m64_pshufw_3201
			m64pshufw_226 label m64pshufwword
				jmp		_uXm_m64_pshufw_3202
			m64pshufw_227 label m64pshufwword
				jmp		_uXm_m64_pshufw_3203
			m64pshufw_228 label m64pshufwword
				jmp		_uXm_m64_pshufw_3210
			m64pshufw_229 label m64pshufwword
				jmp		_uXm_m64_pshufw_3211
			m64pshufw_230 label m64pshufwword
				jmp		_uXm_m64_pshufw_3212
			m64pshufw_231 label m64pshufwword
				jmp		_uXm_m64_pshufw_3213
			m64pshufw_232 label m64pshufwword
				jmp		_uXm_m64_pshufw_3220
			m64pshufw_233 label m64pshufwword
				jmp		_uXm_m64_pshufw_3221
			m64pshufw_234 label m64pshufwword
				jmp		_uXm_m64_pshufw_3222
			m64pshufw_235 label m64pshufwword
				jmp		_uXm_m64_pshufw_3223
			m64pshufw_236 label m64pshufwword
				jmp		_uXm_m64_pshufw_3230
			m64pshufw_237 label m64pshufwword
				jmp		_uXm_m64_pshufw_3231
			m64pshufw_238 label m64pshufwword
				jmp		_uXm_m64_pshufw_3232
			m64pshufw_239 label m64pshufwword
				jmp		_uXm_m64_pshufw_3233
			m64pshufw_240 label m64pshufwword
				jmp		_uXm_m64_pshufw_3300
			m64pshufw_241 label m64pshufwword
				jmp		_uXm_m64_pshufw_3301
			m64pshufw_242 label m64pshufwword
				jmp		_uXm_m64_pshufw_3302
			m64pshufw_243 label m64pshufwword
				jmp		_uXm_m64_pshufw_3303
			m64pshufw_244 label m64pshufwword
				jmp		_uXm_m64_pshufw_3310
			m64pshufw_245 label m64pshufwword
				jmp		_uXm_m64_pshufw_3311
			m64pshufw_246 label m64pshufwword
				jmp		_uXm_m64_pshufw_3312
			m64pshufw_247 label m64pshufwword
				jmp		_uXm_m64_pshufw_3313
			m64pshufw_248 label m64pshufwword
				jmp		_uXm_m64_pshufw_3320
			m64pshufw_249 label m64pshufwword
				jmp		_uXm_m64_pshufw_3321
			m64pshufw_250 label m64pshufwword
				jmp		_uXm_m64_pshufw_3322
			m64pshufw_251 label m64pshufwword
				jmp		_uXm_m64_pshufw_3323
			m64pshufw_252 label m64pshufwword
				jmp		_uXm_m64_pshufw_3330
			m64pshufw_253 label m64pshufwword
				jmp		_uXm_m64_pshufw_3331
			m64pshufw_254 label m64pshufwword
				jmp		_uXm_m64_pshufw_3332
			m64pshufw_255 label m64pshufwword
				jmp		_uXm_m64_pshufw_3333

_uXm_m64_pshufw endp
endif ;__X32__

	end
