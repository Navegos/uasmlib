
	include uXmx86asm.inc
	
	.code

ifdef __X32__
;******************
; Proto
;******************
uXm_mm_pshufw_0000 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0001 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0002 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0003 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0010 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0011 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0012 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0013 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0020 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0021 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0022 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0023 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0030 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0031 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0032 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0033 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0100 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0101 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0102 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0103 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0110 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0111 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0112 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0113 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0120 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0121 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0122 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0123 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0130 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0131 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0132 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0133 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0200 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0201 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0202 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0203 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0210 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0211 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0212 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0213 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0220 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0221 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0222 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0223 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0230 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0231 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0232 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0233 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0300 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0301 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0302 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0303 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0310 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0311 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0312 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0313 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0320 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0321 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0322 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0323 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0330 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0331 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0332 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_0333 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1000 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1001 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1002 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1003 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1010 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1011 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1012 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1013 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1020 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1021 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1022 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1023 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1030 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1031 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1032 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1033 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1100 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1101 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1102 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1103 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1110 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1111 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1112 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1113 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1120 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1121 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1122 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1123 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1130 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1131 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1132 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1133 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1200 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1201 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1202 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1203 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1210 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1211 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1212 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1213 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1220 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1221 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1222 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1223 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1230 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1231 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1232 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1233 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1300 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1301 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1302 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1303 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1310 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1311 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1312 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1313 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1320 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1321 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1322 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1323 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1330 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1331 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1332 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_1333 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2000 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2001 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2002 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2003 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2010 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2011 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2012 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2013 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2020 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2021 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2022 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2023 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2030 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2031 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2032 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2033 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2100 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2101 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2102 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword 
uXm_mm_pshufw_2103 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2110 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2111 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2112 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2113 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2120 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2121 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2122 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword 
uXm_mm_pshufw_2123 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2130 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2131 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2132 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2133 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2200 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2201 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2202 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2203 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2210 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2211 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2212 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2213 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2220 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2221 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2222 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2223 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2230 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2231 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2232 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword 
uXm_mm_pshufw_2233 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2300 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2301 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2302 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2303 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2310 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2311 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2312 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2313 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2320 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2321 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2322 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2323 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2330 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2331 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2332 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_2333 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3000 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3001 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3002 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3003 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3010 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3011 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3012 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3013 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3020 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3021 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3022 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3023 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3030 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3031 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3032 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3033 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3100 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3101 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3102 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3103 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3110 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3111 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3112 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3113 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3120 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3121 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3122 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3123 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3130 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3131 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3132 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3133 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3200 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3201 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3202 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3203 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3210 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3211 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3212 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3213 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3220 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3221 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3222 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3223 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3230 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3231 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3232 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3233 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3300 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3301 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3302 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3303 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3310 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3311 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3312 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3313 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3320 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3321 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3322 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3323 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3330 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3331 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3332 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw_3333 proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pshufw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword, _Imm8:dword

;******************
; Proc
;******************
			align 8
uXm_mm_pshufw_0000 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			0
				ret
uXm_mm_pshufw_0000 endp

			align 8
uXm_mm_pshufw_0001 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			1
				ret
uXm_mm_pshufw_0001 endp

			align 8
uXm_mm_pshufw_0002 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			2
				ret
uXm_mm_pshufw_0002 endp

			align 8
uXm_mm_pshufw_0003 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			3
				ret
uXm_mm_pshufw_0003 endp

			align 8
uXm_mm_pshufw_0010 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			4
				ret
uXm_mm_pshufw_0010 endp

			align 8
uXm_mm_pshufw_0011 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			5
				ret
uXm_mm_pshufw_0011 endp

			align 8
uXm_mm_pshufw_0012 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			6
				ret
uXm_mm_pshufw_0012 endp

			align 8
uXm_mm_pshufw_0013 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			7
				ret
uXm_mm_pshufw_0013 endp

			align 8
uXm_mm_pshufw_0020 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			8
				ret
uXm_mm_pshufw_0020 endp

			align 8
uXm_mm_pshufw_0021 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			9
				ret
uXm_mm_pshufw_0021 endp

			align 8
uXm_mm_pshufw_0022 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			10
				ret
uXm_mm_pshufw_0022 endp

			align 8
uXm_mm_pshufw_0023 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			11
				ret
uXm_mm_pshufw_0023 endp

			align 8
uXm_mm_pshufw_0030 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			12
				ret
uXm_mm_pshufw_0030 endp

			align 8
uXm_mm_pshufw_0031 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			13
				ret
uXm_mm_pshufw_0031 endp

			align 8
uXm_mm_pshufw_0032 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			14
				ret
uXm_mm_pshufw_0032 endp

			align 8
uXm_mm_pshufw_0033 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			15
				ret
uXm_mm_pshufw_0033 endp

			align 8
uXm_mm_pshufw_0100 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			8
				ret
uXm_mm_pshufw_0100 endp

			align 8
uXm_mm_pshufw_0101 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			17
				ret
uXm_mm_pshufw_0101 endp

			align 8
uXm_mm_pshufw_0102 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			18
				ret
uXm_mm_pshufw_0102 endp

			align 8
uXm_mm_pshufw_0103 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			19
				ret
uXm_mm_pshufw_0103 endp

			align 8
uXm_mm_pshufw_0110 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			20
				ret
uXm_mm_pshufw_0110 endp

			align 8
uXm_mm_pshufw_0111 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			21
				ret
uXm_mm_pshufw_0111 endp

			align 8
uXm_mm_pshufw_0112 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			22
				ret
uXm_mm_pshufw_0112 endp

			align 8
uXm_mm_pshufw_0113 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			23
				ret
uXm_mm_pshufw_0113 endp

			align 8
uXm_mm_pshufw_0120 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			24
				ret
uXm_mm_pshufw_0120 endp

			align 8
uXm_mm_pshufw_0121 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			25
				ret
uXm_mm_pshufw_0121 endp

			align 8
uXm_mm_pshufw_0122 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			26
				ret
uXm_mm_pshufw_0122 endp

			align 8
uXm_mm_pshufw_0123 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			27
				ret
uXm_mm_pshufw_0123 endp

			align 8
uXm_mm_pshufw_0130 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			28
				ret
uXm_mm_pshufw_0130 endp

			align 8
uXm_mm_pshufw_0131 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			29
				ret
uXm_mm_pshufw_0131 endp

			align 8
uXm_mm_pshufw_0132 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			30
				ret
uXm_mm_pshufw_0132 endp

			align 8
uXm_mm_pshufw_0133 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			31
				ret
uXm_mm_pshufw_0133 endp

			align 8
uXm_mm_pshufw_0200 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			32
				ret
uXm_mm_pshufw_0200 endp

			align 8
uXm_mm_pshufw_0201 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			33
				ret
uXm_mm_pshufw_0201 endp

			align 8
uXm_mm_pshufw_0202 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			34
				ret
uXm_mm_pshufw_0202 endp

			align 8
uXm_mm_pshufw_0203 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			35
				ret
uXm_mm_pshufw_0203 endp

			align 8
uXm_mm_pshufw_0210 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			36
				ret
uXm_mm_pshufw_0210 endp

			align 8
uXm_mm_pshufw_0211 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			37
				ret
uXm_mm_pshufw_0211 endp

			align 8
uXm_mm_pshufw_0212 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			38
				ret
uXm_mm_pshufw_0212 endp

			align 8
uXm_mm_pshufw_0213 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			39
				ret
uXm_mm_pshufw_0213 endp

			align 8
uXm_mm_pshufw_0220 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			40
				ret
uXm_mm_pshufw_0220 endp

			align 8
uXm_mm_pshufw_0221 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			41
				ret
uXm_mm_pshufw_0221 endp

			align 8
uXm_mm_pshufw_0222 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			42
				ret
uXm_mm_pshufw_0222 endp

			align 8
uXm_mm_pshufw_0223 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			43
				ret
uXm_mm_pshufw_0223 endp

			align 8
uXm_mm_pshufw_0230 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			44
				ret
uXm_mm_pshufw_0230 endp

			align 8
uXm_mm_pshufw_0231 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			45
				ret
uXm_mm_pshufw_0231 endp

			align 8
uXm_mm_pshufw_0232 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			46
				ret
uXm_mm_pshufw_0232 endp

			align 8
uXm_mm_pshufw_0233 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			47
				ret
uXm_mm_pshufw_0233 endp

			align 8
uXm_mm_pshufw_0300 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			48
				ret
uXm_mm_pshufw_0300 endp

			align 8
uXm_mm_pshufw_0301 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			49
				ret
uXm_mm_pshufw_0301 endp

			align 8
uXm_mm_pshufw_0302 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			50
				ret
uXm_mm_pshufw_0302 endp

			align 8
uXm_mm_pshufw_0303 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			51
				ret
uXm_mm_pshufw_0303 endp

			align 8
uXm_mm_pshufw_0310 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			52
				ret
uXm_mm_pshufw_0310 endp

			align 8
uXm_mm_pshufw_0311 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			53
				ret
uXm_mm_pshufw_0311 endp

			align 8
uXm_mm_pshufw_0312 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			54
				ret
uXm_mm_pshufw_0312 endp

			align 8
uXm_mm_pshufw_0313 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			55
				ret
uXm_mm_pshufw_0313 endp

			align 8
uXm_mm_pshufw_0320 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			56
				ret
uXm_mm_pshufw_0320 endp

			align 8
uXm_mm_pshufw_0321 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			57
				ret
uXm_mm_pshufw_0321 endp

			align 8
uXm_mm_pshufw_0322 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			58
				ret
uXm_mm_pshufw_0322 endp

			align 8
uXm_mm_pshufw_0323 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			59
				ret
uXm_mm_pshufw_0323 endp

			align 8
uXm_mm_pshufw_0330 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			60
				ret
uXm_mm_pshufw_0330 endp

			align 8
uXm_mm_pshufw_0331 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			61
				ret
uXm_mm_pshufw_0331 endp

			align 8
uXm_mm_pshufw_0332 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			62
				ret
uXm_mm_pshufw_0332 endp

			align 8
uXm_mm_pshufw_0333 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			63
				ret
uXm_mm_pshufw_0333 endp

			align 8
uXm_mm_pshufw_1000 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			64
				ret
uXm_mm_pshufw_1000 endp

			align 8
uXm_mm_pshufw_1001 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			65
				ret
uXm_mm_pshufw_1001 endp

			align 8
uXm_mm_pshufw_1002 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			66
				ret
uXm_mm_pshufw_1002 endp

			align 8
uXm_mm_pshufw_1003 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			67
				ret
uXm_mm_pshufw_1003 endp

			align 8
uXm_mm_pshufw_1010 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			68
				ret
uXm_mm_pshufw_1010 endp

			align 8
uXm_mm_pshufw_1011 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			69
				ret
uXm_mm_pshufw_1011 endp

			align 8
uXm_mm_pshufw_1012 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			70
				ret
uXm_mm_pshufw_1012 endp

			align 8
uXm_mm_pshufw_1013 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			71
				ret
uXm_mm_pshufw_1013 endp

			align 8
uXm_mm_pshufw_1020 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			72
				ret
uXm_mm_pshufw_1020 endp

			align 8
uXm_mm_pshufw_1021 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			73
				ret
uXm_mm_pshufw_1021 endp

			align 8
uXm_mm_pshufw_1022 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			74
				ret
uXm_mm_pshufw_1022 endp

			align 8
uXm_mm_pshufw_1023 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			75
				ret
uXm_mm_pshufw_1023 endp

			align 8
uXm_mm_pshufw_1030 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			76
				ret
uXm_mm_pshufw_1030 endp

			align 8
uXm_mm_pshufw_1031 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			77
				ret
uXm_mm_pshufw_1031 endp

			align 8
uXm_mm_pshufw_1032 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			78
				ret
uXm_mm_pshufw_1032 endp

			align 8
uXm_mm_pshufw_1033 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			79
				ret
uXm_mm_pshufw_1033 endp

			align 8
uXm_mm_pshufw_1100 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			80
				ret
uXm_mm_pshufw_1100 endp

			align 8
uXm_mm_pshufw_1101 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			81
				ret
uXm_mm_pshufw_1101 endp

			align 8
uXm_mm_pshufw_1102 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			82
				ret
uXm_mm_pshufw_1102 endp

			align 8
uXm_mm_pshufw_1103 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			83
				ret
uXm_mm_pshufw_1103 endp

			align 8
uXm_mm_pshufw_1110 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			84
				ret
uXm_mm_pshufw_1110 endp

			align 8
uXm_mm_pshufw_1111 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			85
				ret
uXm_mm_pshufw_1111 endp

			align 8
uXm_mm_pshufw_1112 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			86
				ret
uXm_mm_pshufw_1112 endp

			align 8
uXm_mm_pshufw_1113 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			87
				ret
uXm_mm_pshufw_1113 endp

			align 8
uXm_mm_pshufw_1120 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			88
				ret
uXm_mm_pshufw_1120 endp

			align 8
uXm_mm_pshufw_1121 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			89
				ret
uXm_mm_pshufw_1121 endp

			align 8
uXm_mm_pshufw_1122 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			90
				ret
uXm_mm_pshufw_1122 endp

			align 8
uXm_mm_pshufw_1123 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			91
				ret
uXm_mm_pshufw_1123 endp

			align 8
uXm_mm_pshufw_1130 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			92
				ret
uXm_mm_pshufw_1130 endp

			align 8
uXm_mm_pshufw_1131 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			93
				ret
uXm_mm_pshufw_1131 endp

			align 8
uXm_mm_pshufw_1132 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			94
				ret
uXm_mm_pshufw_1132 endp

			align 8
uXm_mm_pshufw_1133 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			95
				ret
uXm_mm_pshufw_1133 endp

			align 8
uXm_mm_pshufw_1200 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			96
				ret
uXm_mm_pshufw_1200 endp

			align 8
uXm_mm_pshufw_1201 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			97
				ret
uXm_mm_pshufw_1201 endp

			align 8
uXm_mm_pshufw_1202 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			98
				ret
uXm_mm_pshufw_1202 endp

			align 8
uXm_mm_pshufw_1203 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			99
				ret
uXm_mm_pshufw_1203 endp

			align 8
uXm_mm_pshufw_1210 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			100
				ret
uXm_mm_pshufw_1210 endp

			align 8
uXm_mm_pshufw_1211 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			101
				ret
uXm_mm_pshufw_1211 endp

			align 8
uXm_mm_pshufw_1212 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			102
				ret
uXm_mm_pshufw_1212 endp

			align 8
uXm_mm_pshufw_1213 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			103
				ret
uXm_mm_pshufw_1213 endp

			align 8
uXm_mm_pshufw_1220 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			104
				ret
uXm_mm_pshufw_1220 endp

			align 8
uXm_mm_pshufw_1221 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			105
				ret
uXm_mm_pshufw_1221 endp

			align 8
uXm_mm_pshufw_1222 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			106
				ret
uXm_mm_pshufw_1222 endp

			align 8
uXm_mm_pshufw_1223 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			107
				ret
uXm_mm_pshufw_1223 endp

			align 8
uXm_mm_pshufw_1230 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			108
				ret
uXm_mm_pshufw_1230 endp

			align 8
uXm_mm_pshufw_1231 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			109
				ret
uXm_mm_pshufw_1231 endp

			align 8
uXm_mm_pshufw_1232 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			110
				ret
uXm_mm_pshufw_1232 endp

			align 8
uXm_mm_pshufw_1233 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			111
				ret
uXm_mm_pshufw_1233 endp

			align 8
uXm_mm_pshufw_1300 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			112
				ret
uXm_mm_pshufw_1300 endp

			align 8
uXm_mm_pshufw_1301 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			113
				ret
uXm_mm_pshufw_1301 endp

			align 8
uXm_mm_pshufw_1302 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			114
				ret
uXm_mm_pshufw_1302 endp

			align 8
uXm_mm_pshufw_1303 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			115
				ret
uXm_mm_pshufw_1303 endp

			align 8
uXm_mm_pshufw_1310 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			18
				ret
uXm_mm_pshufw_1310 endp

			align 8
uXm_mm_pshufw_1311 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			117
				ret
uXm_mm_pshufw_1311 endp

			align 8
uXm_mm_pshufw_1312 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			118
				ret
uXm_mm_pshufw_1312 endp

			align 8
uXm_mm_pshufw_1313 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			119
				ret
uXm_mm_pshufw_1313 endp

			align 8
uXm_mm_pshufw_1320 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			120
				ret
uXm_mm_pshufw_1320 endp

			align 8
uXm_mm_pshufw_1321 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			121
				ret
uXm_mm_pshufw_1321 endp

			align 8
uXm_mm_pshufw_1322 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			122
				ret
uXm_mm_pshufw_1322 endp

			align 8
uXm_mm_pshufw_1323 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			123
				ret
uXm_mm_pshufw_1323 endp

			align 8
uXm_mm_pshufw_1330 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			124
				ret
uXm_mm_pshufw_1330 endp

			align 8
uXm_mm_pshufw_1331 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			125
				ret
uXm_mm_pshufw_1331 endp

			align 8
uXm_mm_pshufw_1332 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			126
				ret
uXm_mm_pshufw_1332 endp

			align 8
uXm_mm_pshufw_1333 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			127
				ret
uXm_mm_pshufw_1333 endp

			align 8
uXm_mm_pshufw_2000 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			128
				ret
uXm_mm_pshufw_2000 endp

			align 8
uXm_mm_pshufw_2001 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			129
				ret
uXm_mm_pshufw_2001 endp

			align 8
uXm_mm_pshufw_2002 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			130
				ret
uXm_mm_pshufw_2002 endp

			align 8
uXm_mm_pshufw_2003 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			131
				ret
uXm_mm_pshufw_2003 endp

			align 8
uXm_mm_pshufw_2010 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			132
				ret
uXm_mm_pshufw_2010 endp

			align 8
uXm_mm_pshufw_2011 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			133
				ret
uXm_mm_pshufw_2011 endp

			align 8
uXm_mm_pshufw_2012 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			134
				ret
uXm_mm_pshufw_2012 endp

			align 8
uXm_mm_pshufw_2013 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			135
				ret
uXm_mm_pshufw_2013 endp

			align 8
uXm_mm_pshufw_2020 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			136
				ret
uXm_mm_pshufw_2020 endp

			align 8
uXm_mm_pshufw_2021 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			137
				ret
uXm_mm_pshufw_2021 endp

			align 8
uXm_mm_pshufw_2022 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			138
				ret
uXm_mm_pshufw_2022 endp

			align 8
uXm_mm_pshufw_2023 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			139
				ret
uXm_mm_pshufw_2023 endp

			align 8
uXm_mm_pshufw_2030 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			140
				ret
uXm_mm_pshufw_2030 endp

			align 8
uXm_mm_pshufw_2031 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			141
				ret
uXm_mm_pshufw_2031 endp

			align 8
uXm_mm_pshufw_2032 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			142
				ret
uXm_mm_pshufw_2032 endp

			align 8
uXm_mm_pshufw_2033 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			143
				ret
uXm_mm_pshufw_2033 endp

			align 8
uXm_mm_pshufw_2100 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			144
				ret
uXm_mm_pshufw_2100 endp

			align 8
uXm_mm_pshufw_2101 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			145
				ret
uXm_mm_pshufw_2101 endp

			align 8
uXm_mm_pshufw_2102 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword 
				pshufw				mm0,			mm1,			146
				ret
uXm_mm_pshufw_2102 endp

			align 8
uXm_mm_pshufw_2103 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			147
				ret
uXm_mm_pshufw_2103 endp

			align 8
uXm_mm_pshufw_2110 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			148
				ret
uXm_mm_pshufw_2110 endp

			align 8
uXm_mm_pshufw_2111 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			149
				ret
uXm_mm_pshufw_2111 endp

			align 8
uXm_mm_pshufw_2112 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			150
				ret
uXm_mm_pshufw_2112 endp

			align 8
uXm_mm_pshufw_2113 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			151
				ret
uXm_mm_pshufw_2113 endp

			align 8
uXm_mm_pshufw_2120 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			152
				ret
uXm_mm_pshufw_2120 endp

			align 8
uXm_mm_pshufw_2121 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			153
				ret
uXm_mm_pshufw_2121 endp

			align 8
uXm_mm_pshufw_2122 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword 
				pshufw				mm0,			mm1,			154
				ret
uXm_mm_pshufw_2122 endp

			align 8
uXm_mm_pshufw_2123 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			155
				ret
uXm_mm_pshufw_2123 endp

			align 8
uXm_mm_pshufw_2130 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			156
				ret
uXm_mm_pshufw_2130 endp

			align 8
uXm_mm_pshufw_2131 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			157
				ret
uXm_mm_pshufw_2131 endp

			align 8
uXm_mm_pshufw_2132 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			158
				ret
uXm_mm_pshufw_2132 endp

			align 8
uXm_mm_pshufw_2133 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			159
				ret
uXm_mm_pshufw_2133 endp

			align 8
uXm_mm_pshufw_2200 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			80
				ret
uXm_mm_pshufw_2200 endp

			align 8
uXm_mm_pshufw_2201 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			81
				ret
uXm_mm_pshufw_2201 endp

			align 8
uXm_mm_pshufw_2202 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			82
				ret
uXm_mm_pshufw_2202 endp

			align 8
uXm_mm_pshufw_2203 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			83
				ret
uXm_mm_pshufw_2203 endp

			align 8
uXm_mm_pshufw_2210 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			84
				ret
uXm_mm_pshufw_2210 endp

			align 8
uXm_mm_pshufw_2211 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			85
				ret
uXm_mm_pshufw_2211 endp

			align 8
uXm_mm_pshufw_2212 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			86
				ret
uXm_mm_pshufw_2212 endp

			align 8
uXm_mm_pshufw_2213 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			87
				ret
uXm_mm_pshufw_2213 endp

			align 8
uXm_mm_pshufw_2220 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			88
				ret
uXm_mm_pshufw_2220 endp

			align 8
uXm_mm_pshufw_2221 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			89
				ret
uXm_mm_pshufw_2221 endp

			align 8
uXm_mm_pshufw_2222 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			170
				ret
uXm_mm_pshufw_2222 endp

			align 8
uXm_mm_pshufw_2223 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			171
				ret
uXm_mm_pshufw_2223 endp

			align 8
uXm_mm_pshufw_2230 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			172
				ret
uXm_mm_pshufw_2230 endp

			align 8
uXm_mm_pshufw_2231 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			173
				ret
uXm_mm_pshufw_2231 endp

			align 8
uXm_mm_pshufw_2232 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword 
				pshufw				mm0,			mm1,			174
				ret
uXm_mm_pshufw_2232 endp

			align 8
uXm_mm_pshufw_2233 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			175
				ret
uXm_mm_pshufw_2233 endp

			align 8
uXm_mm_pshufw_2300 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			176
				ret
uXm_mm_pshufw_2300 endp

			align 8
uXm_mm_pshufw_2301 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			177
				ret
uXm_mm_pshufw_2301 endp

			align 8
uXm_mm_pshufw_2302 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			178
				ret
uXm_mm_pshufw_2302 endp

			align 8
uXm_mm_pshufw_2303 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			179
				ret
uXm_mm_pshufw_2303 endp

			align 8
uXm_mm_pshufw_2310 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			180
				ret
uXm_mm_pshufw_2310 endp

			align 8
uXm_mm_pshufw_2311 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			181
				ret
uXm_mm_pshufw_2311 endp

			align 8
uXm_mm_pshufw_2312 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			182
				ret
uXm_mm_pshufw_2312 endp

			align 8
uXm_mm_pshufw_2313 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			183
				ret
uXm_mm_pshufw_2313 endp

			align 8
uXm_mm_pshufw_2320 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			184
				ret
uXm_mm_pshufw_2320 endp

			align 8
uXm_mm_pshufw_2321 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			185
				ret
uXm_mm_pshufw_2321 endp

			align 8
uXm_mm_pshufw_2322 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			186
				ret
uXm_mm_pshufw_2322 endp

			align 8
uXm_mm_pshufw_2323 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			187
				ret
uXm_mm_pshufw_2323 endp

			align 8
uXm_mm_pshufw_2330 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			188
				ret
uXm_mm_pshufw_2330 endp

			align 8
uXm_mm_pshufw_2331 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			189
				ret
uXm_mm_pshufw_2331 endp

			align 8
uXm_mm_pshufw_2332 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			190
				ret
uXm_mm_pshufw_2332 endp

			align 8
uXm_mm_pshufw_2333 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			191
				ret
uXm_mm_pshufw_2333 endp

			align 8
uXm_mm_pshufw_3000 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			192
				ret
uXm_mm_pshufw_3000 endp

			align 8
uXm_mm_pshufw_3001 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			193
				ret
uXm_mm_pshufw_3001 endp

			align 8
uXm_mm_pshufw_3002 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			194
				ret
uXm_mm_pshufw_3002 endp

			align 8
uXm_mm_pshufw_3003 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			195
				ret
uXm_mm_pshufw_3003 endp

			align 8
uXm_mm_pshufw_3010 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			196
				ret
uXm_mm_pshufw_3010 endp

			align 8
uXm_mm_pshufw_3011 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			197
				ret
uXm_mm_pshufw_3011 endp

			align 8
uXm_mm_pshufw_3012 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			198
				ret
uXm_mm_pshufw_3012 endp

			align 8
uXm_mm_pshufw_3013 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			199
				ret
uXm_mm_pshufw_3013 endp

			align 8
uXm_mm_pshufw_3020 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			200
				ret
uXm_mm_pshufw_3020 endp

			align 8
uXm_mm_pshufw_3021 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			201
				ret
uXm_mm_pshufw_3021 endp

			align 8
uXm_mm_pshufw_3022 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			202
				ret
uXm_mm_pshufw_3022 endp

			align 8
uXm_mm_pshufw_3023 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			203
				ret
uXm_mm_pshufw_3023 endp

			align 8
uXm_mm_pshufw_3030 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			204
				ret
uXm_mm_pshufw_3030 endp

			align 8
uXm_mm_pshufw_3031 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			205
				ret
uXm_mm_pshufw_3031 endp

			align 8
uXm_mm_pshufw_3032 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			206
				ret
uXm_mm_pshufw_3032 endp

			align 8
uXm_mm_pshufw_3033 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			207
				ret
uXm_mm_pshufw_3033 endp

			align 8
uXm_mm_pshufw_3100 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			208
				ret
uXm_mm_pshufw_3100 endp

			align 8
uXm_mm_pshufw_3101 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			209
				ret
uXm_mm_pshufw_3101 endp

			align 8
uXm_mm_pshufw_3102 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			210
				ret
uXm_mm_pshufw_3102 endp

			align 8
uXm_mm_pshufw_3103 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			211
				ret
uXm_mm_pshufw_3103 endp

			align 8
uXm_mm_pshufw_3110 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			212
				ret
uXm_mm_pshufw_3110 endp

			align 8
uXm_mm_pshufw_3111 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			213
				ret
uXm_mm_pshufw_3111 endp

			align 8
uXm_mm_pshufw_3112 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			214
				ret
uXm_mm_pshufw_3112 endp

			align 8
uXm_mm_pshufw_3113 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			215
				ret
uXm_mm_pshufw_3113 endp

			align 8
uXm_mm_pshufw_3120 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			28
				ret
uXm_mm_pshufw_3120 endp

			align 8
uXm_mm_pshufw_3121 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			217
				ret
uXm_mm_pshufw_3121 endp

			align 8
uXm_mm_pshufw_3122 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			218
				ret
uXm_mm_pshufw_3122 endp

			align 8
uXm_mm_pshufw_3123 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			219
				ret
uXm_mm_pshufw_3123 endp

			align 8
uXm_mm_pshufw_3130 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			220
				ret
uXm_mm_pshufw_3130 endp

			align 8
uXm_mm_pshufw_3131 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			221
				ret
uXm_mm_pshufw_3131 endp

			align 8
uXm_mm_pshufw_3132 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			222
				ret
uXm_mm_pshufw_3132 endp

			align 8
uXm_mm_pshufw_3133 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			223
				ret
uXm_mm_pshufw_3133 endp

			align 8
uXm_mm_pshufw_3200 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			224
				ret
uXm_mm_pshufw_3200 endp

			align 8
uXm_mm_pshufw_3201 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			225
				ret
uXm_mm_pshufw_3201 endp

			align 8
uXm_mm_pshufw_3202 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			226
				ret
uXm_mm_pshufw_3202 endp

			align 8
uXm_mm_pshufw_3203 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			227
				ret
uXm_mm_pshufw_3203 endp

			align 8
uXm_mm_pshufw_3210 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			228
				ret
uXm_mm_pshufw_3210 endp

			align 8
uXm_mm_pshufw_3211 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			229
				ret
uXm_mm_pshufw_3211 endp

			align 8
uXm_mm_pshufw_3212 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			230
				ret
uXm_mm_pshufw_3212 endp

			align 8
uXm_mm_pshufw_3213 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			231
				ret
uXm_mm_pshufw_3213 endp

			align 8
uXm_mm_pshufw_3220 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			232
				ret
uXm_mm_pshufw_3220 endp

			align 8
uXm_mm_pshufw_3221 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			233
				ret
uXm_mm_pshufw_3221 endp

			align 8
uXm_mm_pshufw_3222 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			234
				ret
uXm_mm_pshufw_3222 endp

			align 8
uXm_mm_pshufw_3223 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			235
				ret
uXm_mm_pshufw_3223 endp

			align 8
uXm_mm_pshufw_3230 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			236
				ret
uXm_mm_pshufw_3230 endp

			align 8
uXm_mm_pshufw_3231 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			237
				ret
uXm_mm_pshufw_3231 endp

			align 8
uXm_mm_pshufw_3232 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			238
				ret
uXm_mm_pshufw_3232 endp

			align 8
uXm_mm_pshufw_3233 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			239
				ret
uXm_mm_pshufw_3233 endp

			align 8
uXm_mm_pshufw_3300 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			240
				ret
uXm_mm_pshufw_3300 endp

			align 8
uXm_mm_pshufw_3301 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			241
				ret
uXm_mm_pshufw_3301 endp

			align 8
uXm_mm_pshufw_3302 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			242
				ret
uXm_mm_pshufw_3302 endp

			align 8
uXm_mm_pshufw_3303 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			243
				ret
uXm_mm_pshufw_3303 endp

			align 8
uXm_mm_pshufw_3310 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			244
				ret
uXm_mm_pshufw_3310 endp

			align 8
uXm_mm_pshufw_3311 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			245
				ret
uXm_mm_pshufw_3311 endp

			align 8
uXm_mm_pshufw_3312 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			246
				ret
uXm_mm_pshufw_3312 endp

			align 8
uXm_mm_pshufw_3313 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			247
				ret
uXm_mm_pshufw_3313 endp

			align 8
uXm_mm_pshufw_3320 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			248
				ret
uXm_mm_pshufw_3320 endp

			align 8
uXm_mm_pshufw_3321 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			249
				ret
uXm_mm_pshufw_3321 endp

			align 8
uXm_mm_pshufw_3322 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			250
				ret
uXm_mm_pshufw_3322 endp

			align 8
uXm_mm_pshufw_3323 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			251
				ret
uXm_mm_pshufw_3323 endp

			align 8
uXm_mm_pshufw_3330 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			252
				ret
uXm_mm_pshufw_3330 endp

			align 8
uXm_mm_pshufw_3331 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			253
				ret
uXm_mm_pshufw_3331 endp

			align 8
uXm_mm_pshufw_3332 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			254
				ret
uXm_mm_pshufw_3332 endp

			align 8
uXm_mm_pshufw_3333 proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
				pshufw				mm0,			mm1,			255
				ret
uXm_mm_pshufw_3333 endp

			align 8
uXm_mm_pshufw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword, _Imm8:dword
				
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam3]
			lea				ebx,			[pshjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			pshjmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
					
			pshword		textequ		<dword>
			pshiword		textequ		<dd>

		pshjmptable label pshword
			pshiword	offset psh_0, offset psh_1, offset psh_2, offset psh_3, offset psh_4, offset psh_5, offset psh_6, offset psh_7, offset psh_8, offset psh_9, offset psh_10, offset psh_11, offset psh_12, offset psh_13, offset psh_14, offset psh_15, offset psh_8, offset psh_17, offset psh_18, offset psh_19, offset psh_20, offset psh_21, offset psh_22, offset psh_23, offset psh_24, offset psh_25, offset psh_26, offset psh_27, offset psh_28, offset psh_29, offset psh_30, offset psh_31, offset psh_32, offset psh_33, offset psh_34, offset psh_35, offset psh_36, offset psh_37, offset psh_38, offset psh_39, offset psh_40, offset psh_41, offset psh_42, offset psh_43, offset psh_44, offset psh_45, offset psh_46, offset psh_47, offset psh_48, offset psh_49, offset psh_50
			pshiword	offset psh_51, offset psh_52, offset psh_53, offset psh_54, offset psh_55, offset psh_56, offset psh_57, offset psh_58, offset psh_59, offset psh_60, offset psh_61, offset psh_62, offset psh_63, offset psh_64, offset psh_65, offset psh_66, offset psh_67, offset psh_68, offset psh_69, offset psh_70, offset psh_71, offset psh_72, offset psh_73, offset psh_74, offset psh_75, offset psh_76, offset psh_77, offset psh_78, offset psh_79, offset psh_80, offset psh_81, offset psh_82, offset psh_83, offset psh_84, offset psh_85, offset psh_86, offset psh_87, offset psh_88, offset psh_89, offset psh_90, offset psh_91, offset psh_92, offset psh_93, offset psh_94, offset psh_95, offset psh_96, offset psh_97, offset psh_98, offset psh_99, offset psh_100
			pshiword	offset psh_101, offset psh_102, offset psh_103, offset psh_104, offset psh_105, offset psh_106, offset psh_107, offset psh_108, offset psh_109, offset psh_110, offset psh_111, offset psh_112, offset psh_113, offset psh_114, offset psh_115, offset psh_18, offset psh_117, offset psh_118, offset psh_119, offset psh_120, offset psh_121, offset psh_122, offset psh_123, offset psh_124, offset psh_125, offset psh_126, offset psh_127, offset psh_128, offset psh_129, offset psh_130, offset psh_131, offset psh_132, offset psh_133, offset psh_134, offset psh_135, offset psh_136, offset psh_137, offset psh_138, offset psh_139, offset psh_140, offset psh_141, offset psh_142, offset psh_143, offset psh_144, offset psh_145, offset psh_146, offset psh_147, offset psh_148, offset psh_149, offset psh_150
			pshiword	offset psh_151, offset psh_152, offset psh_153, offset psh_154, offset psh_155, offset psh_156, offset psh_157, offset psh_158, offset psh_159, offset psh_80, offset psh_81, offset psh_82, offset psh_83, offset psh_84, offset psh_85, offset psh_86, offset psh_87, offset psh_88, offset psh_89, offset psh_170, offset psh_171, offset psh_172, offset psh_173, offset psh_174, offset psh_175, offset psh_176, offset psh_177, offset psh_178, offset psh_179, offset psh_180, offset psh_181, offset psh_182, offset psh_183, offset psh_184, offset psh_185, offset psh_186, offset psh_187, offset psh_188, offset psh_189, offset psh_190, offset psh_191, offset psh_192, offset psh_193, offset psh_194, offset psh_195, offset psh_196, offset psh_197, offset psh_198, offset psh_199, offset psh_200
			pshiword	offset psh_201, offset psh_202, offset psh_203, offset psh_204, offset psh_205, offset psh_206, offset psh_207, offset psh_208, offset psh_209, offset psh_210, offset psh_211, offset psh_212, offset psh_213, offset psh_214, offset psh_215, offset psh_28, offset psh_217, offset psh_218, offset psh_219, offset psh_220, offset psh_221, offset psh_222, offset psh_223, offset psh_224, offset psh_225, offset psh_226, offset psh_227, offset psh_228, offset psh_229, offset psh_230, offset psh_231, offset psh_232, offset psh_233, offset psh_234, offset psh_235, offset psh_236, offset psh_237, offset psh_238, offset psh_239, offset psh_240, offset psh_241, offset psh_242, offset psh_243, offset psh_244, offset psh_245, offset psh_246, offset psh_247, offset psh_248, offset psh_249, offset psh_250
			pshiword	offset psh_251, offset psh_252, offset psh_253, offset psh_254, offset psh_255

			psh_0 label pshword
				jmp		uXm_mm_pshufw_0000
			psh_1 label pshword
				jmp		uXm_mm_pshufw_0001
			psh_2 label pshword
				jmp		uXm_mm_pshufw_0002
			psh_3 label pshword
				jmp		uXm_mm_pshufw_0003
			psh_4 label pshword
				jmp		uXm_mm_pshufw_0010
			psh_5 label pshword
				jmp		uXm_mm_pshufw_0011
			psh_6 label pshword
				jmp		uXm_mm_pshufw_0012
			psh_7 label pshword
				jmp		uXm_mm_pshufw_0013
			psh_8 label pshword
				jmp		uXm_mm_pshufw_0020
			psh_9 label pshword
				jmp		uXm_mm_pshufw_0021
			psh_10 label pshword
				jmp		uXm_mm_pshufw_0022
			psh_11 label pshword
				jmp		uXm_mm_pshufw_0023
			psh_12 label pshword
				jmp		uXm_mm_pshufw_0030
			psh_13 label pshword
				jmp		uXm_mm_pshufw_0031
			psh_14 label pshword
				jmp		uXm_mm_pshufw_0032
			psh_15 label pshword
				jmp		uXm_mm_pshufw_0033
			psh_8 label pshword
				jmp		uXm_mm_pshufw_0100
			psh_17 label pshword
				jmp		uXm_mm_pshufw_0101
			psh_18 label pshword
				jmp		uXm_mm_pshufw_0102
			psh_19 label pshword
				jmp		uXm_mm_pshufw_0103
			psh_20 label pshword
				jmp		uXm_mm_pshufw_0110
			psh_21 label pshword
				jmp		uXm_mm_pshufw_0111
			psh_22 label pshword
				jmp		uXm_mm_pshufw_0112
			psh_23 label pshword
				jmp		uXm_mm_pshufw_0113
			psh_24 label pshword
				jmp		uXm_mm_pshufw_0120
			psh_25 label pshword
				jmp		uXm_mm_pshufw_0121
			psh_26 label pshword
				jmp		uXm_mm_pshufw_0122
			psh_27 label pshword
				jmp		uXm_mm_pshufw_0123
			psh_28 label pshword
				jmp		uXm_mm_pshufw_0130
			psh_29 label pshword
				jmp		uXm_mm_pshufw_0131
			psh_30 label pshword
				jmp		uXm_mm_pshufw_0132
			psh_31 label pshword
				jmp		uXm_mm_pshufw_0133
			psh_32 label pshword
				jmp		uXm_mm_pshufw_0200
			psh_33 label pshword
				jmp		uXm_mm_pshufw_0201
			psh_34 label pshword
				jmp		uXm_mm_pshufw_0202
			psh_35 label pshword
				jmp		uXm_mm_pshufw_0203
			psh_36 label pshword
				jmp		uXm_mm_pshufw_0210
			psh_37 label pshword
				jmp		uXm_mm_pshufw_0211
			psh_38 label pshword
				jmp		uXm_mm_pshufw_0212
			psh_39 label pshword
				jmp		uXm_mm_pshufw_0213
			psh_40 label pshword
				jmp		uXm_mm_pshufw_0220
			psh_41 label pshword
				jmp		uXm_mm_pshufw_0221
			psh_42 label pshword
				jmp		uXm_mm_pshufw_0222
			psh_43 label pshword
				jmp		uXm_mm_pshufw_0223
			psh_44 label pshword
				jmp		uXm_mm_pshufw_0230
			psh_45 label pshword
				jmp		uXm_mm_pshufw_0231
			psh_46 label pshword
				jmp		uXm_mm_pshufw_0232
			psh_47 label pshword
				jmp		uXm_mm_pshufw_0233
			psh_48 label pshword
				jmp		uXm_mm_pshufw_0300
			psh_49 label pshword
				jmp		uXm_mm_pshufw_0301
			psh_50 label pshword
				jmp		uXm_mm_pshufw_0302
			psh_51 label pshword
				jmp		uXm_mm_pshufw_0303
			psh_52 label pshword
				jmp		uXm_mm_pshufw_0310
			psh_53 label pshword
				jmp		uXm_mm_pshufw_0311
			psh_54 label pshword
				jmp		uXm_mm_pshufw_0312
			psh_55 label pshword
				jmp		uXm_mm_pshufw_0313
			psh_56 label pshword
				jmp		uXm_mm_pshufw_0320
			psh_57 label pshword
				jmp		uXm_mm_pshufw_0321
			psh_58 label pshword
				jmp		uXm_mm_pshufw_0322
			psh_59 label pshword
				jmp		uXm_mm_pshufw_0323
			psh_60 label pshword
				jmp		uXm_mm_pshufw_0330
			psh_61 label pshword
				jmp		uXm_mm_pshufw_0331
			psh_62 label pshword
				jmp		uXm_mm_pshufw_0332
			psh_63 label pshword
				jmp		uXm_mm_pshufw_0333
			psh_64 label pshword
				jmp		uXm_mm_pshufw_1000
			psh_65 label pshword
				jmp		uXm_mm_pshufw_1001
			psh_66 label pshword
				jmp		uXm_mm_pshufw_1002
			psh_67 label pshword
				jmp		uXm_mm_pshufw_1003
			psh_68 label pshword
				jmp		uXm_mm_pshufw_1010
			psh_69 label pshword
				jmp		uXm_mm_pshufw_1011
			psh_70 label pshword
				jmp		uXm_mm_pshufw_1012
			psh_71 label pshword
				jmp		uXm_mm_pshufw_1013
			psh_72 label pshword
				jmp		uXm_mm_pshufw_1020
			psh_73 label pshword
				jmp		uXm_mm_pshufw_1021
			psh_74 label pshword
				jmp		uXm_mm_pshufw_1022
			psh_75 label pshword
				jmp		uXm_mm_pshufw_1023
			psh_76 label pshword
				jmp		uXm_mm_pshufw_1030
			psh_77 label pshword
				jmp		uXm_mm_pshufw_1031
			psh_78 label pshword
				jmp		uXm_mm_pshufw_1032
			psh_79 label pshword
				jmp		uXm_mm_pshufw_1033
			psh_80 label pshword
				jmp		uXm_mm_pshufw_1100
			psh_81 label pshword
				jmp		uXm_mm_pshufw_1101
			psh_82 label pshword
				jmp		uXm_mm_pshufw_1102
			psh_83 label pshword
				jmp		uXm_mm_pshufw_1103
			psh_84 label pshword
				jmp		uXm_mm_pshufw_1110
			psh_85 label pshword
				jmp		uXm_mm_pshufw_1111
			psh_86 label pshword
				jmp		uXm_mm_pshufw_1112
			psh_87 label pshword
				jmp		uXm_mm_pshufw_1113
			psh_88 label pshword
				jmp		uXm_mm_pshufw_1120
			psh_89 label pshword
				jmp		uXm_mm_pshufw_1121
			psh_90 label pshword
				jmp		uXm_mm_pshufw_1122
			psh_91 label pshword
				jmp		uXm_mm_pshufw_1123
			psh_92 label pshword
				jmp		uXm_mm_pshufw_1130
			psh_93 label pshword
				jmp		uXm_mm_pshufw_1131
			psh_94 label pshword
				jmp		uXm_mm_pshufw_1132
			psh_95 label pshword
				jmp		uXm_mm_pshufw_1133
			psh_96 label pshword
				jmp		uXm_mm_pshufw_1200
			psh_97 label pshword
				jmp		uXm_mm_pshufw_1201
			psh_98 label pshword
				jmp		uXm_mm_pshufw_1202
			psh_99 label pshword
				jmp		uXm_mm_pshufw_1203
			psh_100 label pshword
				jmp		uXm_mm_pshufw_1210
			psh_101 label pshword
				jmp		uXm_mm_pshufw_1211
			psh_102 label pshword
				jmp		uXm_mm_pshufw_1212
			psh_103 label pshword
				jmp		uXm_mm_pshufw_1213
			psh_104 label pshword
				jmp		uXm_mm_pshufw_1220
			psh_105 label pshword
				jmp		uXm_mm_pshufw_1221
			psh_106 label pshword
				jmp		uXm_mm_pshufw_1222
			psh_107 label pshword
				jmp		uXm_mm_pshufw_1223
			psh_108 label pshword
				jmp		uXm_mm_pshufw_1230
			psh_109 label pshword
				jmp		uXm_mm_pshufw_1231
			psh_110 label pshword
				jmp		uXm_mm_pshufw_1232
			psh_111 label pshword
				jmp		uXm_mm_pshufw_1233
			psh_112 label pshword
				jmp		uXm_mm_pshufw_1300
			psh_113 label pshword
				jmp		uXm_mm_pshufw_1301
			psh_114 label pshword
				jmp		uXm_mm_pshufw_1302
			psh_115 label pshword
				jmp		uXm_mm_pshufw_1303
			psh_18 label pshword
				jmp		uXm_mm_pshufw_1310
			psh_117 label pshword
				jmp		uXm_mm_pshufw_1311
			psh_118 label pshword
				jmp		uXm_mm_pshufw_1312
			psh_119 label pshword
				jmp		uXm_mm_pshufw_1313
			psh_120 label pshword
				jmp		uXm_mm_pshufw_1320
			psh_121 label pshword
				jmp		uXm_mm_pshufw_1321
			psh_122 label pshword
				jmp		uXm_mm_pshufw_1322
			psh_123 label pshword
				jmp		uXm_mm_pshufw_1323
			psh_124 label pshword
				jmp		uXm_mm_pshufw_1330
			psh_125 label pshword
				jmp		uXm_mm_pshufw_1331
			psh_126 label pshword
				jmp		uXm_mm_pshufw_1332
			psh_127 label pshword
				jmp		uXm_mm_pshufw_1333
			psh_128 label pshword
				jmp		uXm_mm_pshufw_2000
			psh_129 label pshword
				jmp		uXm_mm_pshufw_2001
			psh_130 label pshword
				jmp		uXm_mm_pshufw_2002
			psh_131 label pshword
				jmp		uXm_mm_pshufw_2003
			psh_132 label pshword
				jmp		uXm_mm_pshufw_2010
			psh_133 label pshword
				jmp		uXm_mm_pshufw_2011
			psh_134 label pshword
				jmp		uXm_mm_pshufw_2012
			psh_135 label pshword
				jmp		uXm_mm_pshufw_2013
			psh_136 label pshword
				jmp		uXm_mm_pshufw_2020
			psh_137 label pshword
				jmp		uXm_mm_pshufw_2021
			psh_138 label pshword
				jmp		uXm_mm_pshufw_2022
			psh_139 label pshword
				jmp		uXm_mm_pshufw_2023
			psh_140 label pshword
				jmp		uXm_mm_pshufw_2030
			psh_141 label pshword
				jmp		uXm_mm_pshufw_2031
			psh_142 label pshword
				jmp		uXm_mm_pshufw_2032
			psh_143 label pshword
				jmp		uXm_mm_pshufw_2033
			psh_144 label pshword
				jmp		uXm_mm_pshufw_2100
			psh_145 label pshword
				jmp		uXm_mm_pshufw_2101
			psh_146 label pshword
				jmp		uXm_mm_pshufw_2102
			psh_147 label pshword
				jmp		uXm_mm_pshufw_2103
			psh_148 label pshword
				jmp		uXm_mm_pshufw_2110
			psh_149 label pshword
				jmp		uXm_mm_pshufw_2111
			psh_150 label pshword
				jmp		uXm_mm_pshufw_2112
			psh_151 label pshword
				jmp		uXm_mm_pshufw_2113
			psh_152 label pshword
				jmp		uXm_mm_pshufw_2120
			psh_153 label pshword
				jmp		uXm_mm_pshufw_2121
			psh_154 label pshword
				jmp		uXm_mm_pshufw_2122
			psh_155 label pshword
				jmp		uXm_mm_pshufw_2123
			psh_156 label pshword
				jmp		uXm_mm_pshufw_2130
			psh_157 label pshword
				jmp		uXm_mm_pshufw_2131
			psh_158 label pshword
				jmp		uXm_mm_pshufw_2132
			psh_159 label pshword
				jmp		uXm_mm_pshufw_2133
			psh_80 label pshword
				jmp		uXm_mm_pshufw_2200
			psh_81 label pshword
				jmp		uXm_mm_pshufw_2201
			psh_82 label pshword
				jmp		uXm_mm_pshufw_2202
			psh_83 label pshword
				jmp		uXm_mm_pshufw_2203
			psh_84 label pshword
				jmp		uXm_mm_pshufw_2210
			psh_85 label pshword
				jmp		uXm_mm_pshufw_2211
			psh_86 label pshword
				jmp		uXm_mm_pshufw_2212
			psh_87 label pshword
				jmp		uXm_mm_pshufw_2213
			psh_88 label pshword
				jmp		uXm_mm_pshufw_2220
			psh_89 label pshword
				jmp		uXm_mm_pshufw_2221
			psh_170 label pshword
				jmp		uXm_mm_pshufw_2222
			psh_171 label pshword
				jmp		uXm_mm_pshufw_2223
			psh_172 label pshword
				jmp		uXm_mm_pshufw_2230
			psh_173 label pshword
				jmp		uXm_mm_pshufw_2231
			psh_174 label pshword
				jmp		uXm_mm_pshufw_2232
			psh_175 label pshword
				jmp		uXm_mm_pshufw_2233
			psh_176 label pshword
				jmp		uXm_mm_pshufw_2300
			psh_177 label pshword
				jmp		uXm_mm_pshufw_2301
			psh_178 label pshword
				jmp		uXm_mm_pshufw_2302
			psh_179 label pshword
				jmp		uXm_mm_pshufw_2303
			psh_180 label pshword
				jmp		uXm_mm_pshufw_2310
			psh_181 label pshword
				jmp		uXm_mm_pshufw_2311
			psh_182 label pshword
				jmp		uXm_mm_pshufw_2312
			psh_183 label pshword
				jmp		uXm_mm_pshufw_2313
			psh_184 label pshword
				jmp		uXm_mm_pshufw_2320
			psh_185 label pshword
				jmp		uXm_mm_pshufw_2321
			psh_186 label pshword
				jmp		uXm_mm_pshufw_2322
			psh_187 label pshword
				jmp		uXm_mm_pshufw_2323
			psh_188 label pshword
				jmp		uXm_mm_pshufw_2330
			psh_189 label pshword
				jmp		uXm_mm_pshufw_2331
			psh_190 label pshword
				jmp		uXm_mm_pshufw_2332
			psh_191 label pshword
				jmp		uXm_mm_pshufw_2333
			psh_192 label pshword
				jmp		uXm_mm_pshufw_3000
			psh_193 label pshword
				jmp		uXm_mm_pshufw_3001
			psh_194 label pshword
				jmp		uXm_mm_pshufw_3002
			psh_195 label pshword
				jmp		uXm_mm_pshufw_3003
			psh_196 label pshword
				jmp		uXm_mm_pshufw_3010
			psh_197 label pshword
				jmp		uXm_mm_pshufw_3011
			psh_198 label pshword
				jmp		uXm_mm_pshufw_3012
			psh_199 label pshword
				jmp		uXm_mm_pshufw_3013
			psh_200 label pshword
				jmp		uXm_mm_pshufw_3020
			psh_201 label pshword
				jmp		uXm_mm_pshufw_3021
			psh_202 label pshword
				jmp		uXm_mm_pshufw_3022
			psh_203 label pshword
				jmp		uXm_mm_pshufw_3023
			psh_204 label pshword
				jmp		uXm_mm_pshufw_3030
			psh_205 label pshword
				jmp		uXm_mm_pshufw_3031
			psh_206 label pshword
				jmp		uXm_mm_pshufw_3032
			psh_207 label pshword
				jmp		uXm_mm_pshufw_3033
			psh_208 label pshword
				jmp		uXm_mm_pshufw_3100
			psh_209 label pshword
				jmp		uXm_mm_pshufw_3101
			psh_210 label pshword
				jmp		uXm_mm_pshufw_3102
			psh_211 label pshword
				jmp		uXm_mm_pshufw_3103
			psh_212 label pshword
				jmp		uXm_mm_pshufw_3110
			psh_213 label pshword
				jmp		uXm_mm_pshufw_3111
			psh_214 label pshword
				jmp		uXm_mm_pshufw_3112
			psh_215 label pshword
				jmp		uXm_mm_pshufw_3113
			psh_28 label pshword
				jmp		uXm_mm_pshufw_3120
			psh_217 label pshword
				jmp		uXm_mm_pshufw_3121
			psh_218 label pshword
				jmp		uXm_mm_pshufw_3122
			psh_219 label pshword
				jmp		uXm_mm_pshufw_3123
			psh_220 label pshword
				jmp		uXm_mm_pshufw_3130
			psh_221 label pshword
				jmp		uXm_mm_pshufw_3131
			psh_222 label pshword
				jmp		uXm_mm_pshufw_3132
			psh_223 label pshword
				jmp		uXm_mm_pshufw_3133
			psh_224 label pshword
				jmp		uXm_mm_pshufw_3200
			psh_225 label pshword
				jmp		uXm_mm_pshufw_3201
			psh_226 label pshword
				jmp		uXm_mm_pshufw_3202
			psh_227 label pshword
				jmp		uXm_mm_pshufw_3203
			psh_228 label pshword
				jmp		uXm_mm_pshufw_3210
			psh_229 label pshword
				jmp		uXm_mm_pshufw_3211
			psh_230 label pshword
				jmp		uXm_mm_pshufw_3212
			psh_231 label pshword
				jmp		uXm_mm_pshufw_3213
			psh_232 label pshword
				jmp		uXm_mm_pshufw_3220
			psh_233 label pshword
				jmp		uXm_mm_pshufw_3221
			psh_234 label pshword
				jmp		uXm_mm_pshufw_3222
			psh_235 label pshword
				jmp		uXm_mm_pshufw_3223
			psh_236 label pshword
				jmp		uXm_mm_pshufw_3230
			psh_237 label pshword
				jmp		uXm_mm_pshufw_3231
			psh_238 label pshword
				jmp		uXm_mm_pshufw_3232
			psh_239 label pshword
				jmp		uXm_mm_pshufw_3233
			psh_240 label pshword
				jmp		uXm_mm_pshufw_3300
			psh_241 label pshword
				jmp		uXm_mm_pshufw_3301
			psh_242 label pshword
				jmp		uXm_mm_pshufw_3302
			psh_243 label pshword
				jmp		uXm_mm_pshufw_3303
			psh_244 label pshword
				jmp		uXm_mm_pshufw_3310
			psh_245 label pshword
				jmp		uXm_mm_pshufw_3311
			psh_246 label pshword
				jmp		uXm_mm_pshufw_3312
			psh_247 label pshword
				jmp		uXm_mm_pshufw_3313
			psh_248 label pshword
				jmp		uXm_mm_pshufw_3320
			psh_249 label pshword
				jmp		uXm_mm_pshufw_3321
			psh_250 label pshword
				jmp		uXm_mm_pshufw_3322
			psh_251 label pshword
				jmp		uXm_mm_pshufw_3323
			psh_252 label pshword
				jmp		uXm_mm_pshufw_3330
			psh_253 label pshword
				jmp		uXm_mm_pshufw_3331
			psh_254 label pshword
				jmp		uXm_mm_pshufw_3332
			psh_255 label pshword
				jmp		uXm_mm_pshufw_3333

uXm_mm_pshufw endp
endif ;__X32__

	end
