
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.code

;******************
; Proto
;******************
uXm_mm_permute_0000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_0333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_1333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_permute_2103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_permute_2123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
uXm_mm_permute_2233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_2333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_3333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword

;******************
; Proc
;******************
			align 16
uXm_mm_permute_0000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			0
				ret
uXm_mm_permute_0000_ps endp

			align 16
uXm_mm_permute_0001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			1
				ret
uXm_mm_permute_0001_ps endp

			align 16
uXm_mm_permute_0002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			2
				ret
uXm_mm_permute_0002_ps endp

			align 16
uXm_mm_permute_0003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			3
				ret
uXm_mm_permute_0003_ps endp

			align 16
uXm_mm_permute_0010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			4
				ret
uXm_mm_permute_0010_ps endp

			align 16
uXm_mm_permute_0011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			5
				ret
uXm_mm_permute_0011_ps endp

			align 16
uXm_mm_permute_0012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			6
				ret
uXm_mm_permute_0012_ps endp

			align 16
uXm_mm_permute_0013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			7
				ret
uXm_mm_permute_0013_ps endp

			align 16
uXm_mm_permute_0020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			8
				ret
uXm_mm_permute_0020_ps endp

			align 16
uXm_mm_permute_0021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			9
				ret
uXm_mm_permute_0021_ps endp

			align 16
uXm_mm_permute_0022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			10
				ret
uXm_mm_permute_0022_ps endp

			align 16
uXm_mm_permute_0023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			11
				ret
uXm_mm_permute_0023_ps endp

			align 16
uXm_mm_permute_0030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			12
				ret
uXm_mm_permute_0030_ps endp

			align 16
uXm_mm_permute_0031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			13
				ret
uXm_mm_permute_0031_ps endp

			align 16
uXm_mm_permute_0032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			14
				ret
uXm_mm_permute_0032_ps endp

			align 16
uXm_mm_permute_0033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			15
				ret
uXm_mm_permute_0033_ps endp

			align 16
uXm_mm_permute_0100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			16
				ret
uXm_mm_permute_0100_ps endp

			align 16
uXm_mm_permute_0101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			17
				ret
uXm_mm_permute_0101_ps endp

			align 16
uXm_mm_permute_0102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			18
				ret
uXm_mm_permute_0102_ps endp

			align 16
uXm_mm_permute_0103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			19
				ret
uXm_mm_permute_0103_ps endp

			align 16
uXm_mm_permute_0110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			20
				ret
uXm_mm_permute_0110_ps endp

			align 16
uXm_mm_permute_0111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			21
				ret
uXm_mm_permute_0111_ps endp

			align 16
uXm_mm_permute_0112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			22
				ret
uXm_mm_permute_0112_ps endp

			align 16
uXm_mm_permute_0113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			23
				ret
uXm_mm_permute_0113_ps endp

			align 16
uXm_mm_permute_0120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			24
				ret
uXm_mm_permute_0120_ps endp

			align 16
uXm_mm_permute_0121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			25
				ret
uXm_mm_permute_0121_ps endp

			align 16
uXm_mm_permute_0122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			26
				ret
uXm_mm_permute_0122_ps endp

			align 16
uXm_mm_permute_0123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			27
				ret
uXm_mm_permute_0123_ps endp

			align 16
uXm_mm_permute_0130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			28
				ret
uXm_mm_permute_0130_ps endp

			align 16
uXm_mm_permute_0131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			29
				ret
uXm_mm_permute_0131_ps endp

			align 16
uXm_mm_permute_0132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			30
				ret
uXm_mm_permute_0132_ps endp

			align 16
uXm_mm_permute_0133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			31
				ret
uXm_mm_permute_0133_ps endp

			align 16
uXm_mm_permute_0200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			32
				ret
uXm_mm_permute_0200_ps endp

			align 16
uXm_mm_permute_0201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			33
				ret
uXm_mm_permute_0201_ps endp

			align 16
uXm_mm_permute_0202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			34
				ret
uXm_mm_permute_0202_ps endp

			align 16
uXm_mm_permute_0203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			35
				ret
uXm_mm_permute_0203_ps endp

			align 16
uXm_mm_permute_0210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			36
				ret
uXm_mm_permute_0210_ps endp

			align 16
uXm_mm_permute_0211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			37
				ret
uXm_mm_permute_0211_ps endp

			align 16
uXm_mm_permute_0212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			38
				ret
uXm_mm_permute_0212_ps endp

			align 16
uXm_mm_permute_0213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			39
				ret
uXm_mm_permute_0213_ps endp

			align 16
uXm_mm_permute_0220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			40
				ret
uXm_mm_permute_0220_ps endp

			align 16
uXm_mm_permute_0221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			41
				ret
uXm_mm_permute_0221_ps endp

			align 16
uXm_mm_permute_0222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			42
				ret
uXm_mm_permute_0222_ps endp

			align 16
uXm_mm_permute_0223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			43
				ret
uXm_mm_permute_0223_ps endp

			align 16
uXm_mm_permute_0230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			44
				ret
uXm_mm_permute_0230_ps endp

			align 16
uXm_mm_permute_0231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			45
				ret
uXm_mm_permute_0231_ps endp

			align 16
uXm_mm_permute_0232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			46
				ret
uXm_mm_permute_0232_ps endp

			align 16
uXm_mm_permute_0233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			47
				ret
uXm_mm_permute_0233_ps endp

			align 16
uXm_mm_permute_0300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			48
				ret
uXm_mm_permute_0300_ps endp

			align 16
uXm_mm_permute_0301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			49
				ret
uXm_mm_permute_0301_ps endp

			align 16
uXm_mm_permute_0302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			50
				ret
uXm_mm_permute_0302_ps endp

			align 16
uXm_mm_permute_0303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			51
				ret
uXm_mm_permute_0303_ps endp

			align 16
uXm_mm_permute_0310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			52
				ret
uXm_mm_permute_0310_ps endp

			align 16
uXm_mm_permute_0311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			53
				ret
uXm_mm_permute_0311_ps endp

			align 16
uXm_mm_permute_0312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			54
				ret
uXm_mm_permute_0312_ps endp

			align 16
uXm_mm_permute_0313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			55
				ret
uXm_mm_permute_0313_ps endp

			align 16
uXm_mm_permute_0320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			56
				ret
uXm_mm_permute_0320_ps endp

			align 16
uXm_mm_permute_0321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			57
				ret
uXm_mm_permute_0321_ps endp

			align 16
uXm_mm_permute_0322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			58
				ret
uXm_mm_permute_0322_ps endp

			align 16
uXm_mm_permute_0323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			59
				ret
uXm_mm_permute_0323_ps endp

			align 16
uXm_mm_permute_0330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			60
				ret
uXm_mm_permute_0330_ps endp

			align 16
uXm_mm_permute_0331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			61
				ret
uXm_mm_permute_0331_ps endp

			align 16
uXm_mm_permute_0332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			62
				ret
uXm_mm_permute_0332_ps endp

			align 16
uXm_mm_permute_0333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			63
				ret
uXm_mm_permute_0333_ps endp

			align 16
uXm_mm_permute_1000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			64
				ret
uXm_mm_permute_1000_ps endp

			align 16
uXm_mm_permute_1001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			65
				ret
uXm_mm_permute_1001_ps endp

			align 16
uXm_mm_permute_1002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			66
				ret
uXm_mm_permute_1002_ps endp

			align 16
uXm_mm_permute_1003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			67
				ret
uXm_mm_permute_1003_ps endp

			align 16
uXm_mm_permute_1010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			68
				ret
uXm_mm_permute_1010_ps endp

			align 16
uXm_mm_permute_1011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			69
				ret
uXm_mm_permute_1011_ps endp

			align 16
uXm_mm_permute_1012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			70
				ret
uXm_mm_permute_1012_ps endp

			align 16
uXm_mm_permute_1013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			71
				ret
uXm_mm_permute_1013_ps endp

			align 16
uXm_mm_permute_1020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			72
				ret
uXm_mm_permute_1020_ps endp

			align 16
uXm_mm_permute_1021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			73
				ret
uXm_mm_permute_1021_ps endp

			align 16
uXm_mm_permute_1022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			74
				ret
uXm_mm_permute_1022_ps endp

			align 16
uXm_mm_permute_1023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			75
				ret
uXm_mm_permute_1023_ps endp

			align 16
uXm_mm_permute_1030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			76
				ret
uXm_mm_permute_1030_ps endp

			align 16
uXm_mm_permute_1031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			77
				ret
uXm_mm_permute_1031_ps endp

			align 16
uXm_mm_permute_1032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			78
				ret
uXm_mm_permute_1032_ps endp

			align 16
uXm_mm_permute_1033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			79
				ret
uXm_mm_permute_1033_ps endp

			align 16
uXm_mm_permute_1100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			80
				ret
uXm_mm_permute_1100_ps endp

			align 16
uXm_mm_permute_1101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			81
				ret
uXm_mm_permute_1101_ps endp

			align 16
uXm_mm_permute_1102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			82
				ret
uXm_mm_permute_1102_ps endp

			align 16
uXm_mm_permute_1103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			83
				ret
uXm_mm_permute_1103_ps endp

			align 16
uXm_mm_permute_1110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			84
				ret
uXm_mm_permute_1110_ps endp

			align 16
uXm_mm_permute_1111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			85
				ret
uXm_mm_permute_1111_ps endp

			align 16
uXm_mm_permute_1112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			86
				ret
uXm_mm_permute_1112_ps endp

			align 16
uXm_mm_permute_1113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			87
				ret
uXm_mm_permute_1113_ps endp

			align 16
uXm_mm_permute_1120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			88
				ret
uXm_mm_permute_1120_ps endp

			align 16
uXm_mm_permute_1121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			89
				ret
uXm_mm_permute_1121_ps endp

			align 16
uXm_mm_permute_1122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			90
				ret
uXm_mm_permute_1122_ps endp

			align 16
uXm_mm_permute_1123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			91
				ret
uXm_mm_permute_1123_ps endp

			align 16
uXm_mm_permute_1130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			92
				ret
uXm_mm_permute_1130_ps endp

			align 16
uXm_mm_permute_1131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			93
				ret
uXm_mm_permute_1131_ps endp

			align 16
uXm_mm_permute_1132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			94
				ret
uXm_mm_permute_1132_ps endp

			align 16
uXm_mm_permute_1133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			95
				ret
uXm_mm_permute_1133_ps endp

			align 16
uXm_mm_permute_1200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			96
				ret
uXm_mm_permute_1200_ps endp

			align 16
uXm_mm_permute_1201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			97
				ret
uXm_mm_permute_1201_ps endp

			align 16
uXm_mm_permute_1202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			98
				ret
uXm_mm_permute_1202_ps endp

			align 16
uXm_mm_permute_1203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			99
				ret
uXm_mm_permute_1203_ps endp

			align 16
uXm_mm_permute_1210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			100
				ret
uXm_mm_permute_1210_ps endp

			align 16
uXm_mm_permute_1211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			101
				ret
uXm_mm_permute_1211_ps endp

			align 16
uXm_mm_permute_1212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			102
				ret
uXm_mm_permute_1212_ps endp

			align 16
uXm_mm_permute_1213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			103
				ret
uXm_mm_permute_1213_ps endp

			align 16
uXm_mm_permute_1220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			104
				ret
uXm_mm_permute_1220_ps endp

			align 16
uXm_mm_permute_1221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			105
				ret
uXm_mm_permute_1221_ps endp

			align 16
uXm_mm_permute_1222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			106
				ret
uXm_mm_permute_1222_ps endp

			align 16
uXm_mm_permute_1223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			107
				ret
uXm_mm_permute_1223_ps endp

			align 16
uXm_mm_permute_1230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			108
				ret
uXm_mm_permute_1230_ps endp

			align 16
uXm_mm_permute_1231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			109
				ret
uXm_mm_permute_1231_ps endp

			align 16
uXm_mm_permute_1232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			110
				ret
uXm_mm_permute_1232_ps endp

			align 16
uXm_mm_permute_1233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			111
				ret
uXm_mm_permute_1233_ps endp

			align 16
uXm_mm_permute_1300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			112
				ret
uXm_mm_permute_1300_ps endp

			align 16
uXm_mm_permute_1301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			113
				ret
uXm_mm_permute_1301_ps endp

			align 16
uXm_mm_permute_1302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			114
				ret
uXm_mm_permute_1302_ps endp

			align 16
uXm_mm_permute_1303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			115
				ret
uXm_mm_permute_1303_ps endp

			align 16
uXm_mm_permute_1310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			116
				ret
uXm_mm_permute_1310_ps endp

			align 16
uXm_mm_permute_1311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			117
				ret
uXm_mm_permute_1311_ps endp

			align 16
uXm_mm_permute_1312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			118
				ret
uXm_mm_permute_1312_ps endp

			align 16
uXm_mm_permute_1313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			119
				ret
uXm_mm_permute_1313_ps endp

			align 16
uXm_mm_permute_1320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			120
				ret
uXm_mm_permute_1320_ps endp

			align 16
uXm_mm_permute_1321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			121
				ret
uXm_mm_permute_1321_ps endp

			align 16
uXm_mm_permute_1322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			122
				ret
uXm_mm_permute_1322_ps endp

			align 16
uXm_mm_permute_1323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			123
				ret
uXm_mm_permute_1323_ps endp

			align 16
uXm_mm_permute_1330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			124
				ret
uXm_mm_permute_1330_ps endp

			align 16
uXm_mm_permute_1331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			125
				ret
uXm_mm_permute_1331_ps endp

			align 16
uXm_mm_permute_1332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			126
				ret
uXm_mm_permute_1332_ps endp

			align 16
uXm_mm_permute_1333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			127
				ret
uXm_mm_permute_1333_ps endp

			align 16
uXm_mm_permute_2000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			128
				ret
uXm_mm_permute_2000_ps endp

			align 16
uXm_mm_permute_2001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			129
				ret
uXm_mm_permute_2001_ps endp

			align 16
uXm_mm_permute_2002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			130
				ret
uXm_mm_permute_2002_ps endp

			align 16
uXm_mm_permute_2003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			131
				ret
uXm_mm_permute_2003_ps endp

			align 16
uXm_mm_permute_2010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			132
				ret
uXm_mm_permute_2010_ps endp

			align 16
uXm_mm_permute_2011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			133
				ret
uXm_mm_permute_2011_ps endp

			align 16
uXm_mm_permute_2012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			134
				ret
uXm_mm_permute_2012_ps endp

			align 16
uXm_mm_permute_2013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			135
				ret
uXm_mm_permute_2013_ps endp

			align 16
uXm_mm_permute_2020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			136
				ret
uXm_mm_permute_2020_ps endp

			align 16
uXm_mm_permute_2021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			137
				ret
uXm_mm_permute_2021_ps endp

			align 16
uXm_mm_permute_2022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			138
				ret
uXm_mm_permute_2022_ps endp

			align 16
uXm_mm_permute_2023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			139
				ret
uXm_mm_permute_2023_ps endp

			align 16
uXm_mm_permute_2030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			140
				ret
uXm_mm_permute_2030_ps endp

			align 16
uXm_mm_permute_2031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			141
				ret
uXm_mm_permute_2031_ps endp

			align 16
uXm_mm_permute_2032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			142
				ret
uXm_mm_permute_2032_ps endp

			align 16
uXm_mm_permute_2033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			143
				ret
uXm_mm_permute_2033_ps endp

			align 16
uXm_mm_permute_2100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			144
				ret
uXm_mm_permute_2100_ps endp

			align 16
uXm_mm_permute_2101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			145
				ret
uXm_mm_permute_2101_ps endp

			align 16
uXm_mm_permute_2102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				shufps				xmm0,			xmm0,			146
				ret
uXm_mm_permute_2102_ps endp

			align 16
uXm_mm_permute_2103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			147
				ret
uXm_mm_permute_2103_ps endp

			align 16
uXm_mm_permute_2110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			148
				ret
uXm_mm_permute_2110_ps endp

			align 16
uXm_mm_permute_2111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			149
				ret
uXm_mm_permute_2111_ps endp

			align 16
uXm_mm_permute_2112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			150
				ret
uXm_mm_permute_2112_ps endp

			align 16
uXm_mm_permute_2113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			151
				ret
uXm_mm_permute_2113_ps endp

			align 16
uXm_mm_permute_2120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			152
				ret
uXm_mm_permute_2120_ps endp

			align 16
uXm_mm_permute_2121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			153
				ret
uXm_mm_permute_2121_ps endp

			align 16
uXm_mm_permute_2122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				shufps				xmm0,			xmm0,			154
				ret
uXm_mm_permute_2122_ps endp

			align 16
uXm_mm_permute_2123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			155
				ret
uXm_mm_permute_2123_ps endp

			align 16
uXm_mm_permute_2130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			156
				ret
uXm_mm_permute_2130_ps endp

			align 16
uXm_mm_permute_2131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			157
				ret
uXm_mm_permute_2131_ps endp

			align 16
uXm_mm_permute_2132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			158
				ret
uXm_mm_permute_2132_ps endp

			align 16
uXm_mm_permute_2133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			159
				ret
uXm_mm_permute_2133_ps endp

			align 16
uXm_mm_permute_2200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			160
				ret
uXm_mm_permute_2200_ps endp

			align 16
uXm_mm_permute_2201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			161
				ret
uXm_mm_permute_2201_ps endp

			align 16
uXm_mm_permute_2202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			162
				ret
uXm_mm_permute_2202_ps endp

			align 16
uXm_mm_permute_2203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			163
				ret
uXm_mm_permute_2203_ps endp

			align 16
uXm_mm_permute_2210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			164
				ret
uXm_mm_permute_2210_ps endp

			align 16
uXm_mm_permute_2211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			165
				ret
uXm_mm_permute_2211_ps endp

			align 16
uXm_mm_permute_2212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			166
				ret
uXm_mm_permute_2212_ps endp

			align 16
uXm_mm_permute_2213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			167
				ret
uXm_mm_permute_2213_ps endp

			align 16
uXm_mm_permute_2220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			168
				ret
uXm_mm_permute_2220_ps endp

			align 16
uXm_mm_permute_2221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			169
				ret
uXm_mm_permute_2221_ps endp

			align 16
uXm_mm_permute_2222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			170
				ret
uXm_mm_permute_2222_ps endp

			align 16
uXm_mm_permute_2223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			171
				ret
uXm_mm_permute_2223_ps endp

			align 16
uXm_mm_permute_2230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			172
				ret
uXm_mm_permute_2230_ps endp

			align 16
uXm_mm_permute_2231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			173
				ret
uXm_mm_permute_2231_ps endp

			align 16
uXm_mm_permute_2232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				shufps				xmm0,			xmm0,			174
				ret
uXm_mm_permute_2232_ps endp

			align 16
uXm_mm_permute_2233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			175
				ret
uXm_mm_permute_2233_ps endp

			align 16
uXm_mm_permute_2300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			176
				ret
uXm_mm_permute_2300_ps endp

			align 16
uXm_mm_permute_2301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			177
				ret
uXm_mm_permute_2301_ps endp

			align 16
uXm_mm_permute_2302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			178
				ret
uXm_mm_permute_2302_ps endp

			align 16
uXm_mm_permute_2303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			179
				ret
uXm_mm_permute_2303_ps endp

			align 16
uXm_mm_permute_2310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			180
				ret
uXm_mm_permute_2310_ps endp

			align 16
uXm_mm_permute_2311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			181
				ret
uXm_mm_permute_2311_ps endp

			align 16
uXm_mm_permute_2312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			182
				ret
uXm_mm_permute_2312_ps endp

			align 16
uXm_mm_permute_2313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			183
				ret
uXm_mm_permute_2313_ps endp

			align 16
uXm_mm_permute_2320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			184
				ret
uXm_mm_permute_2320_ps endp

			align 16
uXm_mm_permute_2321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			185
				ret
uXm_mm_permute_2321_ps endp

			align 16
uXm_mm_permute_2322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			186
				ret
uXm_mm_permute_2322_ps endp

			align 16
uXm_mm_permute_2323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			187
				ret
uXm_mm_permute_2323_ps endp

			align 16
uXm_mm_permute_2330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			188
				ret
uXm_mm_permute_2330_ps endp

			align 16
uXm_mm_permute_2331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			189
				ret
uXm_mm_permute_2331_ps endp

			align 16
uXm_mm_permute_2332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			190
				ret
uXm_mm_permute_2332_ps endp

			align 16
uXm_mm_permute_2333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			191
				ret
uXm_mm_permute_2333_ps endp

			align 16
uXm_mm_permute_3000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			192
				ret
uXm_mm_permute_3000_ps endp

			align 16
uXm_mm_permute_3001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			193
				ret
uXm_mm_permute_3001_ps endp

			align 16
uXm_mm_permute_3002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			194
				ret
uXm_mm_permute_3002_ps endp

			align 16
uXm_mm_permute_3003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			195
				ret
uXm_mm_permute_3003_ps endp

			align 16
uXm_mm_permute_3010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			196
				ret
uXm_mm_permute_3010_ps endp

			align 16
uXm_mm_permute_3011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			197
				ret
uXm_mm_permute_3011_ps endp

			align 16
uXm_mm_permute_3012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			198
				ret
uXm_mm_permute_3012_ps endp

			align 16
uXm_mm_permute_3013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			199
				ret
uXm_mm_permute_3013_ps endp

			align 16
uXm_mm_permute_3020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			200
				ret
uXm_mm_permute_3020_ps endp

			align 16
uXm_mm_permute_3021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			201
				ret
uXm_mm_permute_3021_ps endp

			align 16
uXm_mm_permute_3022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			202
				ret
uXm_mm_permute_3022_ps endp

			align 16
uXm_mm_permute_3023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			203
				ret
uXm_mm_permute_3023_ps endp

			align 16
uXm_mm_permute_3030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			204
				ret
uXm_mm_permute_3030_ps endp

			align 16
uXm_mm_permute_3031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			205
				ret
uXm_mm_permute_3031_ps endp

			align 16
uXm_mm_permute_3032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			206
				ret
uXm_mm_permute_3032_ps endp

			align 16
uXm_mm_permute_3033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			207
				ret
uXm_mm_permute_3033_ps endp

			align 16
uXm_mm_permute_3100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			208
				ret
uXm_mm_permute_3100_ps endp

			align 16
uXm_mm_permute_3101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			209
				ret
uXm_mm_permute_3101_ps endp

			align 16
uXm_mm_permute_3102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			210
				ret
uXm_mm_permute_3102_ps endp

			align 16
uXm_mm_permute_3103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			211
				ret
uXm_mm_permute_3103_ps endp

			align 16
uXm_mm_permute_3110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			212
				ret
uXm_mm_permute_3110_ps endp

			align 16
uXm_mm_permute_3111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			213
				ret
uXm_mm_permute_3111_ps endp

			align 16
uXm_mm_permute_3112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			214
				ret
uXm_mm_permute_3112_ps endp

			align 16
uXm_mm_permute_3113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			215
				ret
uXm_mm_permute_3113_ps endp

			align 16
uXm_mm_permute_3120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			216
				ret
uXm_mm_permute_3120_ps endp

			align 16
uXm_mm_permute_3121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			217
				ret
uXm_mm_permute_3121_ps endp

			align 16
uXm_mm_permute_3122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			218
				ret
uXm_mm_permute_3122_ps endp

			align 16
uXm_mm_permute_3123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			219
				ret
uXm_mm_permute_3123_ps endp

			align 16
uXm_mm_permute_3130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			220
				ret
uXm_mm_permute_3130_ps endp

			align 16
uXm_mm_permute_3131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			221
				ret
uXm_mm_permute_3131_ps endp

			align 16
uXm_mm_permute_3132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			222
				ret
uXm_mm_permute_3132_ps endp

			align 16
uXm_mm_permute_3133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			223
				ret
uXm_mm_permute_3133_ps endp

			align 16
uXm_mm_permute_3200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			224
				ret
uXm_mm_permute_3200_ps endp

			align 16
uXm_mm_permute_3201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			225
				ret
uXm_mm_permute_3201_ps endp

			align 16
uXm_mm_permute_3202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			226
				ret
uXm_mm_permute_3202_ps endp

			align 16
uXm_mm_permute_3203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			227
				ret
uXm_mm_permute_3203_ps endp

			align 16
uXm_mm_permute_3210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			228
				ret
uXm_mm_permute_3210_ps endp

			align 16
uXm_mm_permute_3211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			229
				ret
uXm_mm_permute_3211_ps endp

			align 16
uXm_mm_permute_3212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			230
				ret
uXm_mm_permute_3212_ps endp

			align 16
uXm_mm_permute_3213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			231
				ret
uXm_mm_permute_3213_ps endp

			align 16
uXm_mm_permute_3220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			232
				ret
uXm_mm_permute_3220_ps endp

			align 16
uXm_mm_permute_3221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			233
				ret
uXm_mm_permute_3221_ps endp

			align 16
uXm_mm_permute_3222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			234
				ret
uXm_mm_permute_3222_ps endp

			align 16
uXm_mm_permute_3223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			235
				ret
uXm_mm_permute_3223_ps endp

			align 16
uXm_mm_permute_3230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			236
				ret
uXm_mm_permute_3230_ps endp

			align 16
uXm_mm_permute_3231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			237
				ret
uXm_mm_permute_3231_ps endp

			align 16
uXm_mm_permute_3232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			238
				ret
uXm_mm_permute_3232_ps endp

			align 16
uXm_mm_permute_3233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			239
				ret
uXm_mm_permute_3233_ps endp

			align 16
uXm_mm_permute_3300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			240
				ret
uXm_mm_permute_3300_ps endp

			align 16
uXm_mm_permute_3301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			241
				ret
uXm_mm_permute_3301_ps endp

			align 16
uXm_mm_permute_3302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			242
				ret
uXm_mm_permute_3302_ps endp

			align 16
uXm_mm_permute_3303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			243
				ret
uXm_mm_permute_3303_ps endp

			align 16
uXm_mm_permute_3310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			244
				ret
uXm_mm_permute_3310_ps endp

			align 16
uXm_mm_permute_3311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			245
				ret
uXm_mm_permute_3311_ps endp

			align 16
uXm_mm_permute_3312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			246
				ret
uXm_mm_permute_3312_ps endp

			align 16
uXm_mm_permute_3313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			247
				ret
uXm_mm_permute_3313_ps endp

			align 16
uXm_mm_permute_3320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			248
				ret
uXm_mm_permute_3320_ps endp

			align 16
uXm_mm_permute_3321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			249
				ret
uXm_mm_permute_3321_ps endp

			align 16
uXm_mm_permute_3322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			250
				ret
uXm_mm_permute_3322_ps endp

			align 16
uXm_mm_permute_3323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			251
				ret
uXm_mm_permute_3323_ps endp

			align 16
uXm_mm_permute_3330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			252
				ret
uXm_mm_permute_3330_ps endp

			align 16
uXm_mm_permute_3331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			253
				ret
uXm_mm_permute_3331_ps endp

			align 16
uXm_mm_permute_3332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			254
				ret
uXm_mm_permute_3332_ps endp

			align 16
uXm_mm_permute_3333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			255
				ret
uXm_mm_permute_3333_ps endp

			align 16
uXm_mm_permute_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword
				
		ifndef __X64__
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmpermpsjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmpermpsjmptable
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
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmpermpsjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmpermpsjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmpermpsword		textequ		<dword>
			mmpermpsiword		textequ		<dd>
		else
			mmpermpsword		textequ		<qword>
			mmpermpsiword		textequ		<dq>
		endif
		
		mmpermpsjmptable label mmpermpsword
			mmpermpsiword offset mmpermps_0, offset mmpermps_1, offset mmpermps_2, offset mmpermps_3, offset mmpermps_4, offset mmpermps_5, offset mmpermps_6, offset mmpermps_7, offset mmpermps_8, offset mmpermps_9, offset mmpermps_10, offset mmpermps_11, offset mmpermps_12, offset mmpermps_13, offset mmpermps_14, offset mmpermps_15, offset mmpermps_16, offset mmpermps_17, offset mmpermps_18, offset mmpermps_19, offset mmpermps_20, offset mmpermps_21, offset mmpermps_22, offset mmpermps_23, offset mmpermps_24, offset mmpermps_25
			mmpermpsiword offset mmpermps_26, offset mmpermps_27, offset mmpermps_28, offset mmpermps_29, offset mmpermps_30, offset mmpermps_31, offset mmpermps_32, offset mmpermps_33, offset mmpermps_34, offset mmpermps_35, offset mmpermps_36, offset mmpermps_37, offset mmpermps_38, offset mmpermps_39, offset mmpermps_40, offset mmpermps_41, offset mmpermps_42, offset mmpermps_43, offset mmpermps_44, offset mmpermps_45, offset mmpermps_46, offset mmpermps_47, offset mmpermps_48, offset mmpermps_49, offset mmpermps_50
			mmpermpsiword offset mmpermps_51, offset mmpermps_52, offset mmpermps_53, offset mmpermps_54, offset mmpermps_55, offset mmpermps_56, offset mmpermps_57, offset mmpermps_58, offset mmpermps_59, offset mmpermps_60, offset mmpermps_61, offset mmpermps_62, offset mmpermps_63, offset mmpermps_64, offset mmpermps_65, offset mmpermps_66, offset mmpermps_67, offset mmpermps_68, offset mmpermps_69, offset mmpermps_70, offset mmpermps_71, offset mmpermps_72, offset mmpermps_73, offset mmpermps_74, offset mmpermps_75
			mmpermpsiword offset mmpermps_76, offset mmpermps_77, offset mmpermps_78, offset mmpermps_79, offset mmpermps_80, offset mmpermps_81, offset mmpermps_82, offset mmpermps_83, offset mmpermps_84, offset mmpermps_85, offset mmpermps_86, offset mmpermps_87, offset mmpermps_88, offset mmpermps_89, offset mmpermps_90, offset mmpermps_91, offset mmpermps_92, offset mmpermps_93, offset mmpermps_94, offset mmpermps_95, offset mmpermps_96, offset mmpermps_97, offset mmpermps_98, offset mmpermps_99, offset mmpermps_100
			mmpermpsiword offset mmpermps_101, offset mmpermps_102, offset mmpermps_103, offset mmpermps_104, offset mmpermps_105, offset mmpermps_106, offset mmpermps_107, offset mmpermps_108, offset mmpermps_109, offset mmpermps_110, offset mmpermps_111, offset mmpermps_112, offset mmpermps_113, offset mmpermps_114, offset mmpermps_115, offset mmpermps_116, offset mmpermps_117, offset mmpermps_118, offset mmpermps_119, offset mmpermps_120, offset mmpermps_121, offset mmpermps_122, offset mmpermps_123, offset mmpermps_124, offset mmpermps_125
			mmpermpsiword offset mmpermps_126, offset mmpermps_127, offset mmpermps_128, offset mmpermps_129, offset mmpermps_130, offset mmpermps_131, offset mmpermps_132, offset mmpermps_133, offset mmpermps_134, offset mmpermps_135, offset mmpermps_136, offset mmpermps_137, offset mmpermps_138, offset mmpermps_139, offset mmpermps_140, offset mmpermps_141, offset mmpermps_142, offset mmpermps_143, offset mmpermps_144, offset mmpermps_145, offset mmpermps_146, offset mmpermps_147, offset mmpermps_148, offset mmpermps_149, offset mmpermps_150
			mmpermpsiword offset mmpermps_151, offset mmpermps_152, offset mmpermps_153, offset mmpermps_154, offset mmpermps_155, offset mmpermps_156, offset mmpermps_157, offset mmpermps_158, offset mmpermps_159, offset mmpermps_160, offset mmpermps_161, offset mmpermps_162, offset mmpermps_163, offset mmpermps_164, offset mmpermps_165, offset mmpermps_166, offset mmpermps_167, offset mmpermps_168, offset mmpermps_169, offset mmpermps_170, offset mmpermps_171, offset mmpermps_172, offset mmpermps_173, offset mmpermps_174, offset mmpermps_175
			mmpermpsiword offset mmpermps_176, offset mmpermps_177, offset mmpermps_178, offset mmpermps_179, offset mmpermps_180, offset mmpermps_181, offset mmpermps_182, offset mmpermps_183, offset mmpermps_184, offset mmpermps_185, offset mmpermps_186, offset mmpermps_187, offset mmpermps_188, offset mmpermps_189, offset mmpermps_190, offset mmpermps_191, offset mmpermps_192, offset mmpermps_193, offset mmpermps_194, offset mmpermps_195, offset mmpermps_196, offset mmpermps_197, offset mmpermps_198, offset mmpermps_199, offset mmpermps_200
			mmpermpsiword offset mmpermps_201, offset mmpermps_202, offset mmpermps_203, offset mmpermps_204, offset mmpermps_205, offset mmpermps_206, offset mmpermps_207, offset mmpermps_208, offset mmpermps_209, offset mmpermps_210, offset mmpermps_211, offset mmpermps_212, offset mmpermps_213, offset mmpermps_214, offset mmpermps_215, offset mmpermps_216, offset mmpermps_217, offset mmpermps_218, offset mmpermps_219, offset mmpermps_220, offset mmpermps_221, offset mmpermps_222, offset mmpermps_223, offset mmpermps_224, offset mmpermps_225
			mmpermpsiword offset mmpermps_226, offset mmpermps_227, offset mmpermps_228, offset mmpermps_229, offset mmpermps_230, offset mmpermps_231, offset mmpermps_232, offset mmpermps_233, offset mmpermps_234, offset mmpermps_235, offset mmpermps_236, offset mmpermps_237, offset mmpermps_238, offset mmpermps_239, offset mmpermps_240, offset mmpermps_241, offset mmpermps_242, offset mmpermps_243, offset mmpermps_244, offset mmpermps_245, offset mmpermps_246, offset mmpermps_247, offset mmpermps_248, offset mmpermps_249, offset mmpermps_250
			mmpermpsiword offset mmpermps_251, offset mmpermps_252, offset mmpermps_253, offset mmpermps_254, offset mmpermps_255
			
			mmpermps_0 label mmpermpsword
				jmp		uXm_mm_permute_0000_ps
			mmpermps_1 label mmpermpsword
				jmp		uXm_mm_permute_0001_ps
			mmpermps_2 label mmpermpsword
				jmp		uXm_mm_permute_0002_ps
			mmpermps_3 label mmpermpsword
				jmp		uXm_mm_permute_0003_ps
			mmpermps_4 label mmpermpsword
				jmp		uXm_mm_permute_0010_ps
			mmpermps_5 label mmpermpsword
				jmp		uXm_mm_permute_0011_ps
			mmpermps_6 label mmpermpsword
				jmp		uXm_mm_permute_0012_ps
			mmpermps_7 label mmpermpsword
				jmp		uXm_mm_permute_0013_ps
			mmpermps_8 label mmpermpsword
				jmp		uXm_mm_permute_0020_ps
			mmpermps_9 label mmpermpsword
				jmp		uXm_mm_permute_0021_ps
			mmpermps_10 label mmpermpsword
				jmp		uXm_mm_permute_0022_ps
			mmpermps_11 label mmpermpsword
				jmp		uXm_mm_permute_0023_ps
			mmpermps_12 label mmpermpsword
				jmp		uXm_mm_permute_0030_ps
			mmpermps_13 label mmpermpsword
				jmp		uXm_mm_permute_0031_ps
			mmpermps_14 label mmpermpsword
				jmp		uXm_mm_permute_0032_ps
			mmpermps_15 label mmpermpsword
				jmp		uXm_mm_permute_0033_ps
			mmpermps_16 label mmpermpsword
				jmp		uXm_mm_permute_0100_ps
			mmpermps_17 label mmpermpsword
				jmp		uXm_mm_permute_0101_ps
			mmpermps_18 label mmpermpsword
				jmp		uXm_mm_permute_0102_ps
			mmpermps_19 label mmpermpsword
				jmp		uXm_mm_permute_0103_ps
			mmpermps_20 label mmpermpsword
				jmp		uXm_mm_permute_0110_ps
			mmpermps_21 label mmpermpsword
				jmp		uXm_mm_permute_0111_ps
			mmpermps_22 label mmpermpsword
				jmp		uXm_mm_permute_0112_ps
			mmpermps_23 label mmpermpsword
				jmp		uXm_mm_permute_0113_ps
			mmpermps_24 label mmpermpsword
				jmp		uXm_mm_permute_0120_ps
			mmpermps_25 label mmpermpsword
				jmp		uXm_mm_permute_0121_ps
			mmpermps_26 label mmpermpsword
				jmp		uXm_mm_permute_0122_ps
			mmpermps_27 label mmpermpsword
				jmp		uXm_mm_permute_0123_ps
			mmpermps_28 label mmpermpsword
				jmp		uXm_mm_permute_0130_ps
			mmpermps_29 label mmpermpsword
				jmp		uXm_mm_permute_0131_ps
			mmpermps_30 label mmpermpsword
				jmp		uXm_mm_permute_0132_ps
			mmpermps_31 label mmpermpsword
				jmp		uXm_mm_permute_0133_ps
			mmpermps_32 label mmpermpsword
				jmp		uXm_mm_permute_0200_ps
			mmpermps_33 label mmpermpsword
				jmp		uXm_mm_permute_0201_ps
			mmpermps_34 label mmpermpsword
				jmp		uXm_mm_permute_0202_ps
			mmpermps_35 label mmpermpsword
				jmp		uXm_mm_permute_0203_ps
			mmpermps_36 label mmpermpsword
				jmp		uXm_mm_permute_0210_ps
			mmpermps_37 label mmpermpsword
				jmp		uXm_mm_permute_0211_ps
			mmpermps_38 label mmpermpsword
				jmp		uXm_mm_permute_0212_ps
			mmpermps_39 label mmpermpsword
				jmp		uXm_mm_permute_0213_ps
			mmpermps_40 label mmpermpsword
				jmp		uXm_mm_permute_0220_ps
			mmpermps_41 label mmpermpsword
				jmp		uXm_mm_permute_0221_ps
			mmpermps_42 label mmpermpsword
				jmp		uXm_mm_permute_0222_ps
			mmpermps_43 label mmpermpsword
				jmp		uXm_mm_permute_0223_ps
			mmpermps_44 label mmpermpsword
				jmp		uXm_mm_permute_0230_ps
			mmpermps_45 label mmpermpsword
				jmp		uXm_mm_permute_0231_ps
			mmpermps_46 label mmpermpsword
				jmp		uXm_mm_permute_0232_ps
			mmpermps_47 label mmpermpsword
				jmp		uXm_mm_permute_0233_ps
			mmpermps_48 label mmpermpsword
				jmp		uXm_mm_permute_0300_ps
			mmpermps_49 label mmpermpsword
				jmp		uXm_mm_permute_0301_ps
			mmpermps_50 label mmpermpsword
				jmp		uXm_mm_permute_0302_ps
			mmpermps_51 label mmpermpsword
				jmp		uXm_mm_permute_0303_ps
			mmpermps_52 label mmpermpsword
				jmp		uXm_mm_permute_0310_ps
			mmpermps_53 label mmpermpsword
				jmp		uXm_mm_permute_0311_ps
			mmpermps_54 label mmpermpsword
				jmp		uXm_mm_permute_0312_ps
			mmpermps_55 label mmpermpsword
				jmp		uXm_mm_permute_0313_ps
			mmpermps_56 label mmpermpsword
				jmp		uXm_mm_permute_0320_ps
			mmpermps_57 label mmpermpsword
				jmp		uXm_mm_permute_0321_ps
			mmpermps_58 label mmpermpsword
				jmp		uXm_mm_permute_0322_ps
			mmpermps_59 label mmpermpsword
				jmp		uXm_mm_permute_0323_ps
			mmpermps_60 label mmpermpsword
				jmp		uXm_mm_permute_0330_ps
			mmpermps_61 label mmpermpsword
				jmp		uXm_mm_permute_0331_ps
			mmpermps_62 label mmpermpsword
				jmp		uXm_mm_permute_0332_ps
			mmpermps_63 label mmpermpsword
				jmp		uXm_mm_permute_0333_ps
			mmpermps_64 label mmpermpsword
				jmp		uXm_mm_permute_1000_ps
			mmpermps_65 label mmpermpsword
				jmp		uXm_mm_permute_1001_ps
			mmpermps_66 label mmpermpsword
				jmp		uXm_mm_permute_1002_ps
			mmpermps_67 label mmpermpsword
				jmp		uXm_mm_permute_1003_ps
			mmpermps_68 label mmpermpsword
				jmp		uXm_mm_permute_1010_ps
			mmpermps_69 label mmpermpsword
				jmp		uXm_mm_permute_1011_ps
			mmpermps_70 label mmpermpsword
				jmp		uXm_mm_permute_1012_ps
			mmpermps_71 label mmpermpsword
				jmp		uXm_mm_permute_1013_ps
			mmpermps_72 label mmpermpsword
				jmp		uXm_mm_permute_1020_ps
			mmpermps_73 label mmpermpsword
				jmp		uXm_mm_permute_1021_ps
			mmpermps_74 label mmpermpsword
				jmp		uXm_mm_permute_1022_ps
			mmpermps_75 label mmpermpsword
				jmp		uXm_mm_permute_1023_ps
			mmpermps_76 label mmpermpsword
				jmp		uXm_mm_permute_1030_ps
			mmpermps_77 label mmpermpsword
				jmp		uXm_mm_permute_1031_ps
			mmpermps_78 label mmpermpsword
				jmp		uXm_mm_permute_1032_ps
			mmpermps_79 label mmpermpsword
				jmp		uXm_mm_permute_1033_ps
			mmpermps_80 label mmpermpsword
				jmp		uXm_mm_permute_1100_ps
			mmpermps_81 label mmpermpsword
				jmp		uXm_mm_permute_1101_ps
			mmpermps_82 label mmpermpsword
				jmp		uXm_mm_permute_1102_ps
			mmpermps_83 label mmpermpsword
				jmp		uXm_mm_permute_1103_ps
			mmpermps_84 label mmpermpsword
				jmp		uXm_mm_permute_1110_ps
			mmpermps_85 label mmpermpsword
				jmp		uXm_mm_permute_1111_ps
			mmpermps_86 label mmpermpsword
				jmp		uXm_mm_permute_1112_ps
			mmpermps_87 label mmpermpsword
				jmp		uXm_mm_permute_1113_ps
			mmpermps_88 label mmpermpsword
				jmp		uXm_mm_permute_1120_ps
			mmpermps_89 label mmpermpsword
				jmp		uXm_mm_permute_1121_ps
			mmpermps_90 label mmpermpsword
				jmp		uXm_mm_permute_1122_ps
			mmpermps_91 label mmpermpsword
				jmp		uXm_mm_permute_1123_ps
			mmpermps_92 label mmpermpsword
				jmp		uXm_mm_permute_1130_ps
			mmpermps_93 label mmpermpsword
				jmp		uXm_mm_permute_1131_ps
			mmpermps_94 label mmpermpsword
				jmp		uXm_mm_permute_1132_ps
			mmpermps_95 label mmpermpsword
				jmp		uXm_mm_permute_1133_ps
			mmpermps_96 label mmpermpsword
				jmp		uXm_mm_permute_1200_ps
			mmpermps_97 label mmpermpsword
				jmp		uXm_mm_permute_1201_ps
			mmpermps_98 label mmpermpsword
				jmp		uXm_mm_permute_1202_ps
			mmpermps_99 label mmpermpsword
				jmp		uXm_mm_permute_1203_ps
			mmpermps_100 label mmpermpsword
				jmp		uXm_mm_permute_1210_ps
			mmpermps_101 label mmpermpsword
				jmp		uXm_mm_permute_1211_ps
			mmpermps_102 label mmpermpsword
				jmp		uXm_mm_permute_1212_ps
			mmpermps_103 label mmpermpsword
				jmp		uXm_mm_permute_1213_ps
			mmpermps_104 label mmpermpsword
				jmp		uXm_mm_permute_1220_ps
			mmpermps_105 label mmpermpsword
				jmp		uXm_mm_permute_1221_ps
			mmpermps_106 label mmpermpsword
				jmp		uXm_mm_permute_1222_ps
			mmpermps_107 label mmpermpsword
				jmp		uXm_mm_permute_1223_ps
			mmpermps_108 label mmpermpsword
				jmp		uXm_mm_permute_1230_ps
			mmpermps_109 label mmpermpsword
				jmp		uXm_mm_permute_1231_ps
			mmpermps_110 label mmpermpsword
				jmp		uXm_mm_permute_1232_ps
			mmpermps_111 label mmpermpsword
				jmp		uXm_mm_permute_1233_ps
			mmpermps_112 label mmpermpsword
				jmp		uXm_mm_permute_1300_ps
			mmpermps_113 label mmpermpsword
				jmp		uXm_mm_permute_1301_ps
			mmpermps_114 label mmpermpsword
				jmp		uXm_mm_permute_1302_ps
			mmpermps_115 label mmpermpsword
				jmp		uXm_mm_permute_1303_ps
			mmpermps_116 label mmpermpsword
				jmp		uXm_mm_permute_1310_ps
			mmpermps_117 label mmpermpsword
				jmp		uXm_mm_permute_1311_ps
			mmpermps_118 label mmpermpsword
				jmp		uXm_mm_permute_1312_ps
			mmpermps_119 label mmpermpsword
				jmp		uXm_mm_permute_1313_ps
			mmpermps_120 label mmpermpsword
				jmp		uXm_mm_permute_1320_ps
			mmpermps_121 label mmpermpsword
				jmp		uXm_mm_permute_1321_ps
			mmpermps_122 label mmpermpsword
				jmp		uXm_mm_permute_1322_ps
			mmpermps_123 label mmpermpsword
				jmp		uXm_mm_permute_1323_ps
			mmpermps_124 label mmpermpsword
				jmp		uXm_mm_permute_1330_ps
			mmpermps_125 label mmpermpsword
				jmp		uXm_mm_permute_1331_ps
			mmpermps_126 label mmpermpsword
				jmp		uXm_mm_permute_1332_ps
			mmpermps_127 label mmpermpsword
				jmp		uXm_mm_permute_1333_ps
			mmpermps_128 label mmpermpsword
				jmp		uXm_mm_permute_2000_ps
			mmpermps_129 label mmpermpsword
				jmp		uXm_mm_permute_2001_ps
			mmpermps_130 label mmpermpsword
				jmp		uXm_mm_permute_2002_ps
			mmpermps_131 label mmpermpsword
				jmp		uXm_mm_permute_2003_ps
			mmpermps_132 label mmpermpsword
				jmp		uXm_mm_permute_2010_ps
			mmpermps_133 label mmpermpsword
				jmp		uXm_mm_permute_2011_ps
			mmpermps_134 label mmpermpsword
				jmp		uXm_mm_permute_2012_ps
			mmpermps_135 label mmpermpsword
				jmp		uXm_mm_permute_2013_ps
			mmpermps_136 label mmpermpsword
				jmp		uXm_mm_permute_2020_ps
			mmpermps_137 label mmpermpsword
				jmp		uXm_mm_permute_2021_ps
			mmpermps_138 label mmpermpsword
				jmp		uXm_mm_permute_2022_ps
			mmpermps_139 label mmpermpsword
				jmp		uXm_mm_permute_2023_ps
			mmpermps_140 label mmpermpsword
				jmp		uXm_mm_permute_2030_ps
			mmpermps_141 label mmpermpsword
				jmp		uXm_mm_permute_2031_ps
			mmpermps_142 label mmpermpsword
				jmp		uXm_mm_permute_2032_ps
			mmpermps_143 label mmpermpsword
				jmp		uXm_mm_permute_2033_ps
			mmpermps_144 label mmpermpsword
				jmp		uXm_mm_permute_2100_ps
			mmpermps_145 label mmpermpsword
				jmp		uXm_mm_permute_2101_ps
			mmpermps_146 label mmpermpsword
				jmp		uXm_mm_permute_2102_ps
			mmpermps_147 label mmpermpsword
				jmp		uXm_mm_permute_2103_ps
			mmpermps_148 label mmpermpsword
				jmp		uXm_mm_permute_2110_ps
			mmpermps_149 label mmpermpsword
				jmp		uXm_mm_permute_2111_ps
			mmpermps_150 label mmpermpsword
				jmp		uXm_mm_permute_2112_ps
			mmpermps_151 label mmpermpsword
				jmp		uXm_mm_permute_2113_ps
			mmpermps_152 label mmpermpsword
				jmp		uXm_mm_permute_2120_ps
			mmpermps_153 label mmpermpsword
				jmp		uXm_mm_permute_2121_ps
			mmpermps_154 label mmpermpsword
				jmp		uXm_mm_permute_2122_ps
			mmpermps_155 label mmpermpsword
				jmp		uXm_mm_permute_2123_ps
			mmpermps_156 label mmpermpsword
				jmp		uXm_mm_permute_2130_ps
			mmpermps_157 label mmpermpsword
				jmp		uXm_mm_permute_2131_ps
			mmpermps_158 label mmpermpsword
				jmp		uXm_mm_permute_2132_ps
			mmpermps_159 label mmpermpsword
				jmp		uXm_mm_permute_2133_ps
			mmpermps_160 label mmpermpsword
				jmp		uXm_mm_permute_2200_ps
			mmpermps_161 label mmpermpsword
				jmp		uXm_mm_permute_2201_ps
			mmpermps_162 label mmpermpsword
				jmp		uXm_mm_permute_2202_ps
			mmpermps_163 label mmpermpsword
				jmp		uXm_mm_permute_2203_ps
			mmpermps_164 label mmpermpsword
				jmp		uXm_mm_permute_2210_ps
			mmpermps_165 label mmpermpsword
				jmp		uXm_mm_permute_2211_ps
			mmpermps_166 label mmpermpsword
				jmp		uXm_mm_permute_2212_ps
			mmpermps_167 label mmpermpsword
				jmp		uXm_mm_permute_2213_ps
			mmpermps_168 label mmpermpsword
				jmp		uXm_mm_permute_2220_ps
			mmpermps_169 label mmpermpsword
				jmp		uXm_mm_permute_2221_ps
			mmpermps_170 label mmpermpsword
				jmp		uXm_mm_permute_2222_ps
			mmpermps_171 label mmpermpsword
				jmp		uXm_mm_permute_2223_ps
			mmpermps_172 label mmpermpsword
				jmp		uXm_mm_permute_2230_ps
			mmpermps_173 label mmpermpsword
				jmp		uXm_mm_permute_2231_ps
			mmpermps_174 label mmpermpsword
				jmp		uXm_mm_permute_2232_ps
			mmpermps_175 label mmpermpsword
				jmp		uXm_mm_permute_2233_ps
			mmpermps_176 label mmpermpsword
				jmp		uXm_mm_permute_2300_ps
			mmpermps_177 label mmpermpsword
				jmp		uXm_mm_permute_2301_ps
			mmpermps_178 label mmpermpsword
				jmp		uXm_mm_permute_2302_ps
			mmpermps_179 label mmpermpsword
				jmp		uXm_mm_permute_2303_ps
			mmpermps_180 label mmpermpsword
				jmp		uXm_mm_permute_2310_ps
			mmpermps_181 label mmpermpsword
				jmp		uXm_mm_permute_2311_ps
			mmpermps_182 label mmpermpsword
				jmp		uXm_mm_permute_2312_ps
			mmpermps_183 label mmpermpsword
				jmp		uXm_mm_permute_2313_ps
			mmpermps_184 label mmpermpsword
				jmp		uXm_mm_permute_2320_ps
			mmpermps_185 label mmpermpsword
				jmp		uXm_mm_permute_2321_ps
			mmpermps_186 label mmpermpsword
				jmp		uXm_mm_permute_2322_ps
			mmpermps_187 label mmpermpsword
				jmp		uXm_mm_permute_2323_ps
			mmpermps_188 label mmpermpsword
				jmp		uXm_mm_permute_2330_ps
			mmpermps_189 label mmpermpsword
				jmp		uXm_mm_permute_2331_ps
			mmpermps_190 label mmpermpsword
				jmp		uXm_mm_permute_2332_ps
			mmpermps_191 label mmpermpsword
				jmp		uXm_mm_permute_2333_ps
			mmpermps_192 label mmpermpsword
				jmp		uXm_mm_permute_3000_ps
			mmpermps_193 label mmpermpsword
				jmp		uXm_mm_permute_3001_ps
			mmpermps_194 label mmpermpsword
				jmp		uXm_mm_permute_3002_ps
			mmpermps_195 label mmpermpsword
				jmp		uXm_mm_permute_3003_ps
			mmpermps_196 label mmpermpsword
				jmp		uXm_mm_permute_3010_ps
			mmpermps_197 label mmpermpsword
				jmp		uXm_mm_permute_3011_ps
			mmpermps_198 label mmpermpsword
				jmp		uXm_mm_permute_3012_ps
			mmpermps_199 label mmpermpsword
				jmp		uXm_mm_permute_3013_ps
			mmpermps_200 label mmpermpsword
				jmp		uXm_mm_permute_3020_ps
			mmpermps_201 label mmpermpsword
				jmp		uXm_mm_permute_3021_ps
			mmpermps_202 label mmpermpsword
				jmp		uXm_mm_permute_3022_ps
			mmpermps_203 label mmpermpsword
				jmp		uXm_mm_permute_3023_ps
			mmpermps_204 label mmpermpsword
				jmp		uXm_mm_permute_3030_ps
			mmpermps_205 label mmpermpsword
				jmp		uXm_mm_permute_3031_ps
			mmpermps_206 label mmpermpsword
				jmp		uXm_mm_permute_3032_ps
			mmpermps_207 label mmpermpsword
				jmp		uXm_mm_permute_3033_ps
			mmpermps_208 label mmpermpsword
				jmp		uXm_mm_permute_3100_ps
			mmpermps_209 label mmpermpsword
				jmp		uXm_mm_permute_3101_ps
			mmpermps_210 label mmpermpsword
				jmp		uXm_mm_permute_3102_ps
			mmpermps_211 label mmpermpsword
				jmp		uXm_mm_permute_3103_ps
			mmpermps_212 label mmpermpsword
				jmp		uXm_mm_permute_3110_ps
			mmpermps_213 label mmpermpsword
				jmp		uXm_mm_permute_3111_ps
			mmpermps_214 label mmpermpsword
				jmp		uXm_mm_permute_3112_ps
			mmpermps_215 label mmpermpsword
				jmp		uXm_mm_permute_3113_ps
			mmpermps_216 label mmpermpsword
				jmp		uXm_mm_permute_3120_ps
			mmpermps_217 label mmpermpsword
				jmp		uXm_mm_permute_3121_ps
			mmpermps_218 label mmpermpsword
				jmp		uXm_mm_permute_3122_ps
			mmpermps_219 label mmpermpsword
				jmp		uXm_mm_permute_3123_ps
			mmpermps_220 label mmpermpsword
				jmp		uXm_mm_permute_3130_ps
			mmpermps_221 label mmpermpsword
				jmp		uXm_mm_permute_3131_ps
			mmpermps_222 label mmpermpsword
				jmp		uXm_mm_permute_3132_ps
			mmpermps_223 label mmpermpsword
				jmp		uXm_mm_permute_3133_ps
			mmpermps_224 label mmpermpsword
				jmp		uXm_mm_permute_3200_ps
			mmpermps_225 label mmpermpsword
				jmp		uXm_mm_permute_3201_ps
			mmpermps_226 label mmpermpsword
				jmp		uXm_mm_permute_3202_ps
			mmpermps_227 label mmpermpsword
				jmp		uXm_mm_permute_3203_ps
			mmpermps_228 label mmpermpsword
				jmp		uXm_mm_permute_3210_ps
			mmpermps_229 label mmpermpsword
				jmp		uXm_mm_permute_3211_ps
			mmpermps_230 label mmpermpsword
				jmp		uXm_mm_permute_3212_ps
			mmpermps_231 label mmpermpsword
				jmp		uXm_mm_permute_3213_ps
			mmpermps_232 label mmpermpsword
				jmp		uXm_mm_permute_3220_ps
			mmpermps_233 label mmpermpsword
				jmp		uXm_mm_permute_3221_ps
			mmpermps_234 label mmpermpsword
				jmp		uXm_mm_permute_3222_ps
			mmpermps_235 label mmpermpsword
				jmp		uXm_mm_permute_3223_ps
			mmpermps_236 label mmpermpsword
				jmp		uXm_mm_permute_3230_ps
			mmpermps_237 label mmpermpsword
				jmp		uXm_mm_permute_3231_ps
			mmpermps_238 label mmpermpsword
				jmp		uXm_mm_permute_3232_ps
			mmpermps_239 label mmpermpsword
				jmp		uXm_mm_permute_3233_ps
			mmpermps_240 label mmpermpsword
				jmp		uXm_mm_permute_3300_ps
			mmpermps_241 label mmpermpsword
				jmp		uXm_mm_permute_3301_ps
			mmpermps_242 label mmpermpsword
				jmp		uXm_mm_permute_3302_ps
			mmpermps_243 label mmpermpsword
				jmp		uXm_mm_permute_3303_ps
			mmpermps_244 label mmpermpsword
				jmp		uXm_mm_permute_3310_ps
			mmpermps_245 label mmpermpsword
				jmp		uXm_mm_permute_3311_ps
			mmpermps_246 label mmpermpsword
				jmp		uXm_mm_permute_3312_ps
			mmpermps_247 label mmpermpsword
				jmp		uXm_mm_permute_3313_ps
			mmpermps_248 label mmpermpsword
				jmp		uXm_mm_permute_3320_ps
			mmpermps_249 label mmpermpsword
				jmp		uXm_mm_permute_3321_ps
			mmpermps_250 label mmpermpsword
				jmp		uXm_mm_permute_3322_ps
			mmpermps_251 label mmpermpsword
				jmp		uXm_mm_permute_3323_ps
			mmpermps_252 label mmpermpsword
				jmp		uXm_mm_permute_3330_ps
			mmpermps_253 label mmpermpsword
				jmp		uXm_mm_permute_3331_ps
			mmpermps_254 label mmpermpsword
				jmp		uXm_mm_permute_3332_ps
			mmpermps_255 label mmpermpsword
				jmp		uXm_mm_permute_3333_ps

uXm_mm_permute_ps endp

	end
