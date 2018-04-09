
	include uXmx86asm.inc
	
	.code

;******************
; Proto
;******************
uXm_mm_slli_si128_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

uXm_mm_pshufw_0033 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0100 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0101 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0102 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0103 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0110 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0111 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0112 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0113 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0120 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0121 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0122 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0123 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0130 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0131 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0132 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0133 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0200 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0201 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0202 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0203 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0210 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0211 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0212 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0213 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0220 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0221 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0222 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0223 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0230 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0231 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0232 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0233 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0300 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0301 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0302 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0303 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0310 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0311 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0312 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0313 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0320 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0321 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0322 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0323 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0330 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0331 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0332 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_0333 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1000 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1001 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1002 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1003 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1010 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1011 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1012 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1013 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1020 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1021 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1022 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1023 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1030 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1031 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1032 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1033 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1100 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1101 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1102 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1103 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1110 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1111 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1112 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1113 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1120 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1121 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1122 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1123 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1130 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1131 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1132 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1133 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1200 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1201 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1202 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1203 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1210 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1211 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1212 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1213 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1220 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1221 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1222 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1223 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1230 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1231 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1232 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1233 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1300 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1301 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1302 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1303 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1310 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1311 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1312 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1313 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1320 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1321 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1322 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1323 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1330 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1331 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1332 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_1333 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2000 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2001 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2002 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2003 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2010 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2011 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2012 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2013 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2020 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2021 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2022 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2023 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2030 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2031 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2032 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2033 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2100 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2101 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2102 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword 
uXm_mm_pshufw_2103 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2110 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2111 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2112 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2113 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2120 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2121 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2122 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword 
uXm_mm_pshufw_2123 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2130 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2131 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2132 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2133 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2200 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2201 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2202 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2203 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2210 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2211 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2212 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2213 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2220 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2221 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2222 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2223 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2230 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2231 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2232 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword 
uXm_mm_pshufw_2233 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2300 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2301 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2302 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2303 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2310 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2311 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2312 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2313 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2320 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2321 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2322 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2323 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2330 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2331 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2332 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_2333 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3000 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3001 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3002 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3003 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3010 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3011 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3012 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3013 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3020 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3021 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3022 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3023 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3030 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3031 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3032 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3033 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3100 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3101 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3102 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3103 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3110 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3111 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3112 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3113 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3120 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3121 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3122 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3123 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3130 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3131 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3132 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3133 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3200 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3201 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3202 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3203 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3210 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3211 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3212 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3213 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3220 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3221 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3222 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3223 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3230 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3231 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3232 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3233 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3300 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3301 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3302 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3303 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3310 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3311 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3312 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3313 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3320 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3321 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3322 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3323 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3330 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3331 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3332 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw_3333 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_pshufw proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, _Ixmm8:dword

;******************
; Proc
;******************
			align 16
uXm_mm_slli_si128_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			0
				ret
uXm_mm_slli_si128_0 endp

			align 16
uXm_mm_slli_si128_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			1
				ret
uXm_mm_slli_si128_1 endp

			align 16
uXm_mm_slli_si128_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			2
				ret
uXm_mm_slli_si128_2 endp

			align 16
uXm_mm_slli_si128_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			3
				ret
uXm_mm_slli_si128_3 endp

			align 16
uXm_mm_slli_si128_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			4
				ret
uXm_mm_slli_si128_4 endp

			align 16
uXm_mm_slli_si128_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			5
				ret
uXm_mm_slli_si128_5 endp

			align 16
uXm_mm_slli_si128_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			6
				ret
uXm_mm_slli_si128_6 endp

			align 16
uXm_mm_slli_si128_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			7
				ret
uXm_mm_slli_si128_7 endp

			align 16
uXm_mm_slli_si128_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			8
				ret
uXm_mm_slli_si128_8 endp

			align 16
uXm_mm_slli_si128_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			9
				ret
uXm_mm_slli_si128_9 endp

			align 16
uXm_mm_slli_si128_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			10
				ret
uXm_mm_slli_si128_10 endp

			align 16
uXm_mm_slli_si128_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			11
				ret
uXm_mm_slli_si128_11 endp

			align 16
uXm_mm_slli_si128_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			12
				ret
uXm_mm_slli_si128_12 endp

			align 16
uXm_mm_slli_si128_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			13
				ret
uXm_mm_slli_si128_13 endp

			align 16
uXm_mm_slli_si128_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			14
				ret
uXm_mm_slli_si128_14 endp

			align 16
uXm_mm_slli_si128_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			15
				ret
uXm_mm_slli_si128_15 endp

			align 16
uXm_mm_slli_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[sllisi128jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			sllisi128jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[sllisi128jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			sllisi128jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			sllisi128word		textequ		<dword>
			sllisi128iword		textequ		<dd>
		else
			sllisi128word		textequ		<qword>
			sllisi128iword		textequ		<dq>
		endif
		
		sllisi128jmptable label sllisi128word
			sllisi128iword	offset sllisi128_0, offset sllisi128_1, offset sllisi128_2, offset sllisi128_3, offset sllisi128_4, offset sllisi128_5, offset sllisi128_6, offset sllisi128_7, offset sllisi128_8, offset sllisi128_9, offset sllisi128_10, offset sllisi128_11, offset sllisi128_12, offset sllisi128_13, offset sllisi128_14, offset sllisi128_15			
		
			sllisi128_0 label sllisi128word
				jmp		uXm_mm_slli_si128_0
			sllisi128_1 label sllisi128word
				jmp		uXm_mm_slli_si128_1
			sllisi128_2 label sllisi128word
				jmp		uXm_mm_slli_si128_2
			sllisi128_3 label sllisi128word
				jmp		uXm_mm_slli_si128_3
			sllisi128_4 label sllisi128word
				jmp		uXm_mm_slli_si128_4
			sllisi128_5 label sllisi128word
				jmp		uXm_mm_slli_si128_5
			sllisi128_6 label sllisi128word
				jmp		uXm_mm_slli_si128_6
			sllisi128_7 label sllisi128word
				jmp		uXm_mm_slli_si128_7
			sllisi128_8 label sllisi128word
				jmp		uXm_mm_slli_si128_8
			sllisi128_9 label sllisi128word
				jmp		uXm_mm_slli_si128_9
			sllisi128_10 label sllisi128word
				jmp		uXm_mm_slli_si128_10
			sllisi128_11 label sllisi128word
				jmp		uXm_mm_slli_si128_11
			sllisi128_12 label sllisi128word
				jmp		uXm_mm_slli_si128_12
			sllisi128_13 label sllisi128word
				jmp		uXm_mm_slli_si128_13
			sllisi128_14 label sllisi128word
				jmp		uXm_mm_slli_si128_14
			sllisi128_15 label sllisi128word
				jmp		uXm_mm_slli_si128_15

			ret
uXm_mm_slli_si128 endp



			align 16
uXm_mm_pshufw_0100 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			8
				ret
uXm_mm_pshufw_0100 endp

			align 16
uXm_mm_pshufw_0101 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			17
				ret
uXm_mm_pshufw_0101 endp

			align 16
uXm_mm_pshufw_0102 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			18
				ret
uXm_mm_pshufw_0102 endp

			align 16
uXm_mm_pshufw_0103 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			19
				ret
uXm_mm_pshufw_0103 endp

			align 16
uXm_mm_pshufw_0110 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			20
				ret
uXm_mm_pshufw_0110 endp

			align 16
uXm_mm_pshufw_0111 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			21
				ret
uXm_mm_pshufw_0111 endp

			align 16
uXm_mm_pshufw_0112 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			22
				ret
uXm_mm_pshufw_0112 endp

			align 16
uXm_mm_pshufw_0113 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			23
				ret
uXm_mm_pshufw_0113 endp

			align 16
uXm_mm_pshufw_0120 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			24
				ret
uXm_mm_pshufw_0120 endp

			align 16
uXm_mm_pshufw_0121 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			25
				ret
uXm_mm_pshufw_0121 endp

			align 16
uXm_mm_pshufw_0122 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			26
				ret
uXm_mm_pshufw_0122 endp

			align 16
uXm_mm_pshufw_0123 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			27
				ret
uXm_mm_pshufw_0123 endp

			align 16
uXm_mm_pshufw_0130 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			28
				ret
uXm_mm_pshufw_0130 endp

			align 16
uXm_mm_pshufw_0131 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			29
				ret
uXm_mm_pshufw_0131 endp

			align 16
uXm_mm_pshufw_0132 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			30
				ret
uXm_mm_pshufw_0132 endp

			align 16
uXm_mm_pshufw_0133 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			31
				ret
uXm_mm_pshufw_0133 endp

			align 16
uXm_mm_pshufw_0200 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			32
				ret
uXm_mm_pshufw_0200 endp

			align 16
uXm_mm_pshufw_0201 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			33
				ret
uXm_mm_pshufw_0201 endp

			align 16
uXm_mm_pshufw_0202 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			34
				ret
uXm_mm_pshufw_0202 endp

			align 16
uXm_mm_pshufw_0203 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			35
				ret
uXm_mm_pshufw_0203 endp

			align 16
uXm_mm_pshufw_0210 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			36
				ret
uXm_mm_pshufw_0210 endp

			align 16
uXm_mm_pshufw_0211 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			37
				ret
uXm_mm_pshufw_0211 endp

			align 16
uXm_mm_pshufw_0212 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			38
				ret
uXm_mm_pshufw_0212 endp

			align 16
uXm_mm_pshufw_0213 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			39
				ret
uXm_mm_pshufw_0213 endp

			align 16
uXm_mm_pshufw_0220 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			40
				ret
uXm_mm_pshufw_0220 endp

			align 16
uXm_mm_pshufw_0221 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			41
				ret
uXm_mm_pshufw_0221 endp

			align 16
uXm_mm_pshufw_0222 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			42
				ret
uXm_mm_pshufw_0222 endp

			align 16
uXm_mm_pshufw_0223 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			43
				ret
uXm_mm_pshufw_0223 endp

			align 16
uXm_mm_pshufw_0230 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			44
				ret
uXm_mm_pshufw_0230 endp

			align 16
uXm_mm_pshufw_0231 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			45
				ret
uXm_mm_pshufw_0231 endp

			align 16
uXm_mm_pshufw_0232 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			46
				ret
uXm_mm_pshufw_0232 endp

			align 16
uXm_mm_pshufw_0233 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			47
				ret
uXm_mm_pshufw_0233 endp

			align 16
uXm_mm_pshufw_0300 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			48
				ret
uXm_mm_pshufw_0300 endp

			align 16
uXm_mm_pshufw_0301 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			49
				ret
uXm_mm_pshufw_0301 endp

			align 16
uXm_mm_pshufw_0302 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			50
				ret
uXm_mm_pshufw_0302 endp

			align 16
uXm_mm_pshufw_0303 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			51
				ret
uXm_mm_pshufw_0303 endp

			align 16
uXm_mm_pshufw_0310 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			52
				ret
uXm_mm_pshufw_0310 endp

			align 16
uXm_mm_pshufw_0311 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			53
				ret
uXm_mm_pshufw_0311 endp

			align 16
uXm_mm_pshufw_0312 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			54
				ret
uXm_mm_pshufw_0312 endp

			align 16
uXm_mm_pshufw_0313 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			55
				ret
uXm_mm_pshufw_0313 endp

			align 16
uXm_mm_pshufw_0320 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			56
				ret
uXm_mm_pshufw_0320 endp

			align 16
uXm_mm_pshufw_0321 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			57
				ret
uXm_mm_pshufw_0321 endp

			align 16
uXm_mm_pshufw_0322 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			58
				ret
uXm_mm_pshufw_0322 endp

			align 16
uXm_mm_pshufw_0323 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			59
				ret
uXm_mm_pshufw_0323 endp

			align 16
uXm_mm_pshufw_0330 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			60
				ret
uXm_mm_pshufw_0330 endp

			align 16
uXm_mm_pshufw_0331 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			61
				ret
uXm_mm_pshufw_0331 endp

			align 16
uXm_mm_pshufw_0332 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			62
				ret
uXm_mm_pshufw_0332 endp

			align 16
uXm_mm_pshufw_0333 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			63
				ret
uXm_mm_pshufw_0333 endp

			align 16
uXm_mm_pshufw_1000 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			64
				ret
uXm_mm_pshufw_1000 endp

			align 16
uXm_mm_pshufw_1001 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			65
				ret
uXm_mm_pshufw_1001 endp

			align 16
uXm_mm_pshufw_1002 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			66
				ret
uXm_mm_pshufw_1002 endp

			align 16
uXm_mm_pshufw_1003 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			67
				ret
uXm_mm_pshufw_1003 endp

			align 16
uXm_mm_pshufw_1010 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			68
				ret
uXm_mm_pshufw_1010 endp

			align 16
uXm_mm_pshufw_1011 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			69
				ret
uXm_mm_pshufw_1011 endp

			align 16
uXm_mm_pshufw_1012 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			70
				ret
uXm_mm_pshufw_1012 endp

			align 16
uXm_mm_pshufw_1013 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			71
				ret
uXm_mm_pshufw_1013 endp

			align 16
uXm_mm_pshufw_1020 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			72
				ret
uXm_mm_pshufw_1020 endp

			align 16
uXm_mm_pshufw_1021 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			73
				ret
uXm_mm_pshufw_1021 endp

			align 16
uXm_mm_pshufw_1022 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			74
				ret
uXm_mm_pshufw_1022 endp

			align 16
uXm_mm_pshufw_1023 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			75
				ret
uXm_mm_pshufw_1023 endp

			align 16
uXm_mm_pshufw_1030 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			76
				ret
uXm_mm_pshufw_1030 endp

			align 16
uXm_mm_pshufw_1031 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			77
				ret
uXm_mm_pshufw_1031 endp

			align 16
uXm_mm_pshufw_1032 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			78
				ret
uXm_mm_pshufw_1032 endp

			align 16
uXm_mm_pshufw_1033 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			79
				ret
uXm_mm_pshufw_1033 endp

			align 16
uXm_mm_pshufw_1100 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			80
				ret
uXm_mm_pshufw_1100 endp

			align 16
uXm_mm_pshufw_1101 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			81
				ret
uXm_mm_pshufw_1101 endp

			align 16
uXm_mm_pshufw_1102 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			82
				ret
uXm_mm_pshufw_1102 endp

			align 16
uXm_mm_pshufw_1103 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			83
				ret
uXm_mm_pshufw_1103 endp

			align 16
uXm_mm_pshufw_1110 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			84
				ret
uXm_mm_pshufw_1110 endp

			align 16
uXm_mm_pshufw_1111 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			85
				ret
uXm_mm_pshufw_1111 endp

			align 16
uXm_mm_pshufw_1112 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			86
				ret
uXm_mm_pshufw_1112 endp

			align 16
uXm_mm_pshufw_1113 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			87
				ret
uXm_mm_pshufw_1113 endp

			align 16
uXm_mm_pshufw_1120 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			88
				ret
uXm_mm_pshufw_1120 endp

			align 16
uXm_mm_pshufw_1121 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			89
				ret
uXm_mm_pshufw_1121 endp

			align 16
uXm_mm_pshufw_1122 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			90
				ret
uXm_mm_pshufw_1122 endp

			align 16
uXm_mm_pshufw_1123 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			91
				ret
uXm_mm_pshufw_1123 endp

			align 16
uXm_mm_pshufw_1130 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			92
				ret
uXm_mm_pshufw_1130 endp

			align 16
uXm_mm_pshufw_1131 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			93
				ret
uXm_mm_pshufw_1131 endp

			align 16
uXm_mm_pshufw_1132 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			94
				ret
uXm_mm_pshufw_1132 endp

			align 16
uXm_mm_pshufw_1133 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			95
				ret
uXm_mm_pshufw_1133 endp

			align 16
uXm_mm_pshufw_1200 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			96
				ret
uXm_mm_pshufw_1200 endp

			align 16
uXm_mm_pshufw_1201 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			97
				ret
uXm_mm_pshufw_1201 endp

			align 16
uXm_mm_pshufw_1202 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			98
				ret
uXm_mm_pshufw_1202 endp

			align 16
uXm_mm_pshufw_1203 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			99
				ret
uXm_mm_pshufw_1203 endp

			align 16
uXm_mm_pshufw_1210 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			100
				ret
uXm_mm_pshufw_1210 endp

			align 16
uXm_mm_pshufw_1211 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			101
				ret
uXm_mm_pshufw_1211 endp

			align 16
uXm_mm_pshufw_1212 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			102
				ret
uXm_mm_pshufw_1212 endp

			align 16
uXm_mm_pshufw_1213 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			103
				ret
uXm_mm_pshufw_1213 endp

			align 16
uXm_mm_pshufw_1220 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			104
				ret
uXm_mm_pshufw_1220 endp

			align 16
uXm_mm_pshufw_1221 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			105
				ret
uXm_mm_pshufw_1221 endp

			align 16
uXm_mm_pshufw_1222 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			106
				ret
uXm_mm_pshufw_1222 endp

			align 16
uXm_mm_pshufw_1223 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			107
				ret
uXm_mm_pshufw_1223 endp

			align 16
uXm_mm_pshufw_1230 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			108
				ret
uXm_mm_pshufw_1230 endp

			align 16
uXm_mm_pshufw_1231 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			109
				ret
uXm_mm_pshufw_1231 endp

			align 16
uXm_mm_pshufw_1232 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			110
				ret
uXm_mm_pshufw_1232 endp

			align 16
uXm_mm_pshufw_1233 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			111
				ret
uXm_mm_pshufw_1233 endp

			align 16
uXm_mm_pshufw_1300 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			112
				ret
uXm_mm_pshufw_1300 endp

			align 16
uXm_mm_pshufw_1301 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			113
				ret
uXm_mm_pshufw_1301 endp

			align 16
uXm_mm_pshufw_1302 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			114
				ret
uXm_mm_pshufw_1302 endp

			align 16
uXm_mm_pshufw_1303 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			115
				ret
uXm_mm_pshufw_1303 endp

			align 16
uXm_mm_pshufw_1310 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			18
				ret
uXm_mm_pshufw_1310 endp

			align 16
uXm_mm_pshufw_1311 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			117
				ret
uXm_mm_pshufw_1311 endp

			align 16
uXm_mm_pshufw_1312 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			118
				ret
uXm_mm_pshufw_1312 endp

			align 16
uXm_mm_pshufw_1313 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			119
				ret
uXm_mm_pshufw_1313 endp

			align 16
uXm_mm_pshufw_1320 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			120
				ret
uXm_mm_pshufw_1320 endp

			align 16
uXm_mm_pshufw_1321 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			121
				ret
uXm_mm_pshufw_1321 endp

			align 16
uXm_mm_pshufw_1322 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			122
				ret
uXm_mm_pshufw_1322 endp

			align 16
uXm_mm_pshufw_1323 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			123
				ret
uXm_mm_pshufw_1323 endp

			align 16
uXm_mm_pshufw_1330 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			124
				ret
uXm_mm_pshufw_1330 endp

			align 16
uXm_mm_pshufw_1331 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			125
				ret
uXm_mm_pshufw_1331 endp

			align 16
uXm_mm_pshufw_1332 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			126
				ret
uXm_mm_pshufw_1332 endp

			align 16
uXm_mm_pshufw_1333 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			127
				ret
uXm_mm_pshufw_1333 endp

			align 16
uXm_mm_pshufw_2000 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			128
				ret
uXm_mm_pshufw_2000 endp

			align 16
uXm_mm_pshufw_2001 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			129
				ret
uXm_mm_pshufw_2001 endp

			align 16
uXm_mm_pshufw_2002 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			130
				ret
uXm_mm_pshufw_2002 endp

			align 16
uXm_mm_pshufw_2003 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			131
				ret
uXm_mm_pshufw_2003 endp

			align 16
uXm_mm_pshufw_2010 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			132
				ret
uXm_mm_pshufw_2010 endp

			align 16
uXm_mm_pshufw_2011 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			133
				ret
uXm_mm_pshufw_2011 endp

			align 16
uXm_mm_pshufw_2012 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			134
				ret
uXm_mm_pshufw_2012 endp

			align 16
uXm_mm_pshufw_2013 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			135
				ret
uXm_mm_pshufw_2013 endp

			align 16
uXm_mm_pshufw_2020 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			136
				ret
uXm_mm_pshufw_2020 endp

			align 16
uXm_mm_pshufw_2021 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			137
				ret
uXm_mm_pshufw_2021 endp

			align 16
uXm_mm_pshufw_2022 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			138
				ret
uXm_mm_pshufw_2022 endp

			align 16
uXm_mm_pshufw_2023 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			139
				ret
uXm_mm_pshufw_2023 endp

			align 16
uXm_mm_pshufw_2030 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			140
				ret
uXm_mm_pshufw_2030 endp

			align 16
uXm_mm_pshufw_2031 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			141
				ret
uXm_mm_pshufw_2031 endp

			align 16
uXm_mm_pshufw_2032 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			142
				ret
uXm_mm_pshufw_2032 endp

			align 16
uXm_mm_pshufw_2033 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			143
				ret
uXm_mm_pshufw_2033 endp

			align 16
uXm_mm_pshufw_2100 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			144
				ret
uXm_mm_pshufw_2100 endp

			align 16
uXm_mm_pshufw_2101 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			145
				ret
uXm_mm_pshufw_2101 endp

			align 16
uXm_mm_pshufw_2102 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword 
				pshufw				xmm0,			xmm1,			146
				ret
uXm_mm_pshufw_2102 endp

			align 16
uXm_mm_pshufw_2103 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			147
				ret
uXm_mm_pshufw_2103 endp

			align 16
uXm_mm_pshufw_2110 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			148
				ret
uXm_mm_pshufw_2110 endp

			align 16
uXm_mm_pshufw_2111 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			149
				ret
uXm_mm_pshufw_2111 endp

			align 16
uXm_mm_pshufw_2112 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			150
				ret
uXm_mm_pshufw_2112 endp

			align 16
uXm_mm_pshufw_2113 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			151
				ret
uXm_mm_pshufw_2113 endp

			align 16
uXm_mm_pshufw_2120 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			152
				ret
uXm_mm_pshufw_2120 endp

			align 16
uXm_mm_pshufw_2121 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			153
				ret
uXm_mm_pshufw_2121 endp

			align 16
uXm_mm_pshufw_2122 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword 
				pshufw				xmm0,			xmm1,			154
				ret
uXm_mm_pshufw_2122 endp

			align 16
uXm_mm_pshufw_2123 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			155
				ret
uXm_mm_pshufw_2123 endp

			align 16
uXm_mm_pshufw_2130 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			156
				ret
uXm_mm_pshufw_2130 endp

			align 16
uXm_mm_pshufw_2131 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			157
				ret
uXm_mm_pshufw_2131 endp

			align 16
uXm_mm_pshufw_2132 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			158
				ret
uXm_mm_pshufw_2132 endp

			align 16
uXm_mm_pshufw_2133 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			159
				ret
uXm_mm_pshufw_2133 endp

			align 16
uXm_mm_pshufw_2200 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			80
				ret
uXm_mm_pshufw_2200 endp

			align 16
uXm_mm_pshufw_2201 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			81
				ret
uXm_mm_pshufw_2201 endp

			align 16
uXm_mm_pshufw_2202 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			82
				ret
uXm_mm_pshufw_2202 endp

			align 16
uXm_mm_pshufw_2203 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			83
				ret
uXm_mm_pshufw_2203 endp

			align 16
uXm_mm_pshufw_2210 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			84
				ret
uXm_mm_pshufw_2210 endp

			align 16
uXm_mm_pshufw_2211 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			85
				ret
uXm_mm_pshufw_2211 endp

			align 16
uXm_mm_pshufw_2212 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			86
				ret
uXm_mm_pshufw_2212 endp

			align 16
uXm_mm_pshufw_2213 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			87
				ret
uXm_mm_pshufw_2213 endp

			align 16
uXm_mm_pshufw_2220 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			88
				ret
uXm_mm_pshufw_2220 endp

			align 16
uXm_mm_pshufw_2221 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			89
				ret
uXm_mm_pshufw_2221 endp

			align 16
uXm_mm_pshufw_2222 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			170
				ret
uXm_mm_pshufw_2222 endp

			align 16
uXm_mm_pshufw_2223 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			171
				ret
uXm_mm_pshufw_2223 endp

			align 16
uXm_mm_pshufw_2230 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			172
				ret
uXm_mm_pshufw_2230 endp

			align 16
uXm_mm_pshufw_2231 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			173
				ret
uXm_mm_pshufw_2231 endp

			align 16
uXm_mm_pshufw_2232 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword 
				pshufw				xmm0,			xmm1,			174
				ret
uXm_mm_pshufw_2232 endp

			align 16
uXm_mm_pshufw_2233 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			175
				ret
uXm_mm_pshufw_2233 endp

			align 16
uXm_mm_pshufw_2300 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			176
				ret
uXm_mm_pshufw_2300 endp

			align 16
uXm_mm_pshufw_2301 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			177
				ret
uXm_mm_pshufw_2301 endp

			align 16
uXm_mm_pshufw_2302 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			178
				ret
uXm_mm_pshufw_2302 endp

			align 16
uXm_mm_pshufw_2303 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			179
				ret
uXm_mm_pshufw_2303 endp

			align 16
uXm_mm_pshufw_2310 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			180
				ret
uXm_mm_pshufw_2310 endp

			align 16
uXm_mm_pshufw_2311 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			181
				ret
uXm_mm_pshufw_2311 endp

			align 16
uXm_mm_pshufw_2312 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			182
				ret
uXm_mm_pshufw_2312 endp

			align 16
uXm_mm_pshufw_2313 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			183
				ret
uXm_mm_pshufw_2313 endp

			align 16
uXm_mm_pshufw_2320 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			184
				ret
uXm_mm_pshufw_2320 endp

			align 16
uXm_mm_pshufw_2321 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			185
				ret
uXm_mm_pshufw_2321 endp

			align 16
uXm_mm_pshufw_2322 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			186
				ret
uXm_mm_pshufw_2322 endp

			align 16
uXm_mm_pshufw_2323 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			187
				ret
uXm_mm_pshufw_2323 endp

			align 16
uXm_mm_pshufw_2330 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			188
				ret
uXm_mm_pshufw_2330 endp

			align 16
uXm_mm_pshufw_2331 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			189
				ret
uXm_mm_pshufw_2331 endp

			align 16
uXm_mm_pshufw_2332 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			190
				ret
uXm_mm_pshufw_2332 endp

			align 16
uXm_mm_pshufw_2333 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			191
				ret
uXm_mm_pshufw_2333 endp

			align 16
uXm_mm_pshufw_3000 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			192
				ret
uXm_mm_pshufw_3000 endp

			align 16
uXm_mm_pshufw_3001 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			193
				ret
uXm_mm_pshufw_3001 endp

			align 16
uXm_mm_pshufw_3002 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			194
				ret
uXm_mm_pshufw_3002 endp

			align 16
uXm_mm_pshufw_3003 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			195
				ret
uXm_mm_pshufw_3003 endp

			align 16
uXm_mm_pshufw_3010 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			196
				ret
uXm_mm_pshufw_3010 endp

			align 16
uXm_mm_pshufw_3011 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			197
				ret
uXm_mm_pshufw_3011 endp

			align 16
uXm_mm_pshufw_3012 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			198
				ret
uXm_mm_pshufw_3012 endp

			align 16
uXm_mm_pshufw_3013 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			199
				ret
uXm_mm_pshufw_3013 endp

			align 16
uXm_mm_pshufw_3020 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			200
				ret
uXm_mm_pshufw_3020 endp

			align 16
uXm_mm_pshufw_3021 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			201
				ret
uXm_mm_pshufw_3021 endp

			align 16
uXm_mm_pshufw_3022 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			202
				ret
uXm_mm_pshufw_3022 endp

			align 16
uXm_mm_pshufw_3023 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			203
				ret
uXm_mm_pshufw_3023 endp

			align 16
uXm_mm_pshufw_3030 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			204
				ret
uXm_mm_pshufw_3030 endp

			align 16
uXm_mm_pshufw_3031 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			205
				ret
uXm_mm_pshufw_3031 endp

			align 16
uXm_mm_pshufw_3032 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			206
				ret
uXm_mm_pshufw_3032 endp

			align 16
uXm_mm_pshufw_3033 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			207
				ret
uXm_mm_pshufw_3033 endp

			align 16
uXm_mm_pshufw_3100 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			208
				ret
uXm_mm_pshufw_3100 endp

			align 16
uXm_mm_pshufw_3101 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			209
				ret
uXm_mm_pshufw_3101 endp

			align 16
uXm_mm_pshufw_3102 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			210
				ret
uXm_mm_pshufw_3102 endp

			align 16
uXm_mm_pshufw_3103 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			211
				ret
uXm_mm_pshufw_3103 endp

			align 16
uXm_mm_pshufw_3110 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			212
				ret
uXm_mm_pshufw_3110 endp

			align 16
uXm_mm_pshufw_3111 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			213
				ret
uXm_mm_pshufw_3111 endp

			align 16
uXm_mm_pshufw_3112 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			214
				ret
uXm_mm_pshufw_3112 endp

			align 16
uXm_mm_pshufw_3113 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			215
				ret
uXm_mm_pshufw_3113 endp

			align 16
uXm_mm_pshufw_3120 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			28
				ret
uXm_mm_pshufw_3120 endp

			align 16
uXm_mm_pshufw_3121 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			217
				ret
uXm_mm_pshufw_3121 endp

			align 16
uXm_mm_pshufw_3122 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			218
				ret
uXm_mm_pshufw_3122 endp

			align 16
uXm_mm_pshufw_3123 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			219
				ret
uXm_mm_pshufw_3123 endp

			align 16
uXm_mm_pshufw_3130 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			220
				ret
uXm_mm_pshufw_3130 endp

			align 16
uXm_mm_pshufw_3131 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			221
				ret
uXm_mm_pshufw_3131 endp

			align 16
uXm_mm_pshufw_3132 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			222
				ret
uXm_mm_pshufw_3132 endp

			align 16
uXm_mm_pshufw_3133 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			223
				ret
uXm_mm_pshufw_3133 endp

			align 16
uXm_mm_pshufw_3200 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			224
				ret
uXm_mm_pshufw_3200 endp

			align 16
uXm_mm_pshufw_3201 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			225
				ret
uXm_mm_pshufw_3201 endp

			align 16
uXm_mm_pshufw_3202 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			226
				ret
uXm_mm_pshufw_3202 endp

			align 16
uXm_mm_pshufw_3203 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			227
				ret
uXm_mm_pshufw_3203 endp

			align 16
uXm_mm_pshufw_3210 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			228
				ret
uXm_mm_pshufw_3210 endp

			align 16
uXm_mm_pshufw_3211 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			229
				ret
uXm_mm_pshufw_3211 endp

			align 16
uXm_mm_pshufw_3212 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			230
				ret
uXm_mm_pshufw_3212 endp

			align 16
uXm_mm_pshufw_3213 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			231
				ret
uXm_mm_pshufw_3213 endp

			align 16
uXm_mm_pshufw_3220 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			232
				ret
uXm_mm_pshufw_3220 endp

			align 16
uXm_mm_pshufw_3221 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			233
				ret
uXm_mm_pshufw_3221 endp

			align 16
uXm_mm_pshufw_3222 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			234
				ret
uXm_mm_pshufw_3222 endp

			align 16
uXm_mm_pshufw_3223 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			235
				ret
uXm_mm_pshufw_3223 endp

			align 16
uXm_mm_pshufw_3230 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			236
				ret
uXm_mm_pshufw_3230 endp

			align 16
uXm_mm_pshufw_3231 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			237
				ret
uXm_mm_pshufw_3231 endp

			align 16
uXm_mm_pshufw_3232 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			238
				ret
uXm_mm_pshufw_3232 endp

			align 16
uXm_mm_pshufw_3233 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			239
				ret
uXm_mm_pshufw_3233 endp

			align 16
uXm_mm_pshufw_3300 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			240
				ret
uXm_mm_pshufw_3300 endp

			align 16
uXm_mm_pshufw_3301 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			241
				ret
uXm_mm_pshufw_3301 endp

			align 16
uXm_mm_pshufw_3302 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			242
				ret
uXm_mm_pshufw_3302 endp

			align 16
uXm_mm_pshufw_3303 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			243
				ret
uXm_mm_pshufw_3303 endp

			align 16
uXm_mm_pshufw_3310 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			244
				ret
uXm_mm_pshufw_3310 endp

			align 16
uXm_mm_pshufw_3311 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			245
				ret
uXm_mm_pshufw_3311 endp

			align 16
uXm_mm_pshufw_3312 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			246
				ret
uXm_mm_pshufw_3312 endp

			align 16
uXm_mm_pshufw_3313 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			247
				ret
uXm_mm_pshufw_3313 endp

			align 16
uXm_mm_pshufw_3320 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			248
				ret
uXm_mm_pshufw_3320 endp

			align 16
uXm_mm_pshufw_3321 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			249
				ret
uXm_mm_pshufw_3321 endp

			align 16
uXm_mm_pshufw_3322 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			250
				ret
uXm_mm_pshufw_3322 endp

			align 16
uXm_mm_pshufw_3323 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			251
				ret
uXm_mm_pshufw_3323 endp

			align 16
uXm_mm_pshufw_3330 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			252
				ret
uXm_mm_pshufw_3330 endp

			align 16
uXm_mm_pshufw_3331 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			253
				ret
uXm_mm_pshufw_3331 endp

			align 16
uXm_mm_pshufw_3332 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			254
				ret
uXm_mm_pshufw_3332 endp

			align 16
uXm_mm_pshufw_3333 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pshufw				xmm0,			xmm1,			255
				ret
uXm_mm_pshufw_3333 endp

	end
