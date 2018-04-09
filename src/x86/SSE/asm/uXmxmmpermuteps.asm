
	include uXmx86asm.inc
	
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
			lea				ebx,			[pmpsjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			pmpsjmptable
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
			lea				rbx,			[pmpsjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			pmpsjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			pmpsword		textequ		<dword>
			pmpsiword		textequ		<dd>
		else
			pmpsword		textequ		<qword>
			pmpsiword		textequ		<dq>
		endif
		
		pmpsjmptable label pmpsword
			pmpsiword	offset pmps_0, offset pmps_1, offset pmps_2, offset pmps_3, offset pmps_4, offset pmps_5, offset pmps_6, offset pmps_7, offset pmps_8, offset pmps_9, offset pmps_10, offset pmps_11, offset pmps_12, offset pmps_13, offset pmps_14, offset pmps_15, offset pmps_16, offset pmps_17, offset pmps_18, offset pmps_19, offset pmps_20, offset pmps_21, offset pmps_22, offset pmps_23, offset pmps_24, offset pmps_25, offset pmps_26, offset pmps_27, offset pmps_28, offset pmps_29, offset pmps_30, offset pmps_31, offset pmps_32, offset pmps_33, offset pmps_34, offset pmps_35, offset pmps_36, offset pmps_37, offset pmps_38, offset pmps_39, offset pmps_40, offset pmps_41, offset pmps_42, offset pmps_43, offset pmps_44, offset pmps_45, offset pmps_46, offset pmps_47, offset pmps_48, offset pmps_49, offset pmps_50
			pmpsiword	offset pmps_51, offset pmps_52, offset pmps_53, offset pmps_54, offset pmps_55, offset pmps_56, offset pmps_57, offset pmps_58, offset pmps_59, offset pmps_60, offset pmps_61, offset pmps_62, offset pmps_63, offset pmps_64, offset pmps_65, offset pmps_66, offset pmps_67, offset pmps_68, offset pmps_69, offset pmps_70, offset pmps_71, offset pmps_72, offset pmps_73, offset pmps_74, offset pmps_75, offset pmps_76, offset pmps_77, offset pmps_78, offset pmps_79, offset pmps_80, offset pmps_81, offset pmps_82, offset pmps_83, offset pmps_84, offset pmps_85, offset pmps_86, offset pmps_87, offset pmps_88, offset pmps_89, offset pmps_90, offset pmps_91, offset pmps_92, offset pmps_93, offset pmps_94, offset pmps_95, offset pmps_96, offset pmps_97, offset pmps_98, offset pmps_99, offset pmps_100
			pmpsiword	offset pmps_101, offset pmps_102, offset pmps_103, offset pmps_104, offset pmps_105, offset pmps_106, offset pmps_107, offset pmps_108, offset pmps_109, offset pmps_110, offset pmps_111, offset pmps_112, offset pmps_113, offset pmps_114, offset pmps_115, offset pmps_116, offset pmps_117, offset pmps_118, offset pmps_119, offset pmps_120, offset pmps_121, offset pmps_122, offset pmps_123, offset pmps_124, offset pmps_125, offset pmps_126, offset pmps_127, offset pmps_128, offset pmps_129, offset pmps_130, offset pmps_131, offset pmps_132, offset pmps_133, offset pmps_134, offset pmps_135, offset pmps_136, offset pmps_137, offset pmps_138, offset pmps_139, offset pmps_140, offset pmps_141, offset pmps_142, offset pmps_143, offset pmps_144, offset pmps_145, offset pmps_146, offset pmps_147, offset pmps_148, offset pmps_149, offset pmps_150
			pmpsiword	offset pmps_151, offset pmps_152, offset pmps_153, offset pmps_154, offset pmps_155, offset pmps_156, offset pmps_157, offset pmps_158, offset pmps_159, offset pmps_160, offset pmps_161, offset pmps_162, offset pmps_163, offset pmps_164, offset pmps_165, offset pmps_166, offset pmps_167, offset pmps_168, offset pmps_169, offset pmps_170, offset pmps_171, offset pmps_172, offset pmps_173, offset pmps_174, offset pmps_175, offset pmps_176, offset pmps_177, offset pmps_178, offset pmps_179, offset pmps_180, offset pmps_181, offset pmps_182, offset pmps_183, offset pmps_184, offset pmps_185, offset pmps_186, offset pmps_187, offset pmps_188, offset pmps_189, offset pmps_190, offset pmps_191, offset pmps_192, offset pmps_193, offset pmps_194, offset pmps_195, offset pmps_196, offset pmps_197, offset pmps_198, offset pmps_199, offset pmps_200
			pmpsiword	offset pmps_201, offset pmps_202, offset pmps_203, offset pmps_204, offset pmps_205, offset pmps_206, offset pmps_207, offset pmps_208, offset pmps_209, offset pmps_210, offset pmps_211, offset pmps_212, offset pmps_213, offset pmps_214, offset pmps_215, offset pmps_216, offset pmps_217, offset pmps_218, offset pmps_219, offset pmps_220, offset pmps_221, offset pmps_222, offset pmps_223, offset pmps_224, offset pmps_225, offset pmps_226, offset pmps_227, offset pmps_228, offset pmps_229, offset pmps_230, offset pmps_231, offset pmps_232, offset pmps_233, offset pmps_234, offset pmps_235, offset pmps_236, offset pmps_237, offset pmps_238, offset pmps_239, offset pmps_240, offset pmps_241, offset pmps_242, offset pmps_243, offset pmps_244, offset pmps_245, offset pmps_246, offset pmps_247, offset pmps_248, offset pmps_249, offset pmps_250
			pmpsiword	offset pmps_251, offset pmps_252, offset pmps_253, offset pmps_254, offset pmps_255
			
			pmps_0 label pmpsword
				jmp		uXm_mm_permute_0000_ps
			pmps_1 label pmpsword
				jmp		uXm_mm_permute_0001_ps
			pmps_2 label pmpsword
				jmp		uXm_mm_permute_0002_ps
			pmps_3 label pmpsword
				jmp		uXm_mm_permute_0003_ps
			pmps_4 label pmpsword
				jmp		uXm_mm_permute_0010_ps
			pmps_5 label pmpsword
				jmp		uXm_mm_permute_0011_ps
			pmps_6 label pmpsword
				jmp		uXm_mm_permute_0012_ps
			pmps_7 label pmpsword
				jmp		uXm_mm_permute_0013_ps
			pmps_8 label pmpsword
				jmp		uXm_mm_permute_0020_ps
			pmps_9 label pmpsword
				jmp		uXm_mm_permute_0021_ps
			pmps_10 label pmpsword
				jmp		uXm_mm_permute_0022_ps
			pmps_11 label pmpsword
				jmp		uXm_mm_permute_0023_ps
			pmps_12 label pmpsword
				jmp		uXm_mm_permute_0030_ps
			pmps_13 label pmpsword
				jmp		uXm_mm_permute_0031_ps
			pmps_14 label pmpsword
				jmp		uXm_mm_permute_0032_ps
			pmps_15 label pmpsword
				jmp		uXm_mm_permute_0033_ps
			pmps_16 label pmpsword
				jmp		uXm_mm_permute_0100_ps
			pmps_17 label pmpsword
				jmp		uXm_mm_permute_0101_ps
			pmps_18 label pmpsword
				jmp		uXm_mm_permute_0102_ps
			pmps_19 label pmpsword
				jmp		uXm_mm_permute_0103_ps
			pmps_20 label pmpsword
				jmp		uXm_mm_permute_0110_ps
			pmps_21 label pmpsword
				jmp		uXm_mm_permute_0111_ps
			pmps_22 label pmpsword
				jmp		uXm_mm_permute_0112_ps
			pmps_23 label pmpsword
				jmp		uXm_mm_permute_0113_ps
			pmps_24 label pmpsword
				jmp		uXm_mm_permute_0120_ps
			pmps_25 label pmpsword
				jmp		uXm_mm_permute_0121_ps
			pmps_26 label pmpsword
				jmp		uXm_mm_permute_0122_ps
			pmps_27 label pmpsword
				jmp		uXm_mm_permute_0123_ps
			pmps_28 label pmpsword
				jmp		uXm_mm_permute_0130_ps
			pmps_29 label pmpsword
				jmp		uXm_mm_permute_0131_ps
			pmps_30 label pmpsword
				jmp		uXm_mm_permute_0132_ps
			pmps_31 label pmpsword
				jmp		uXm_mm_permute_0133_ps
			pmps_32 label pmpsword
				jmp		uXm_mm_permute_0200_ps
			pmps_33 label pmpsword
				jmp		uXm_mm_permute_0201_ps
			pmps_34 label pmpsword
				jmp		uXm_mm_permute_0202_ps
			pmps_35 label pmpsword
				jmp		uXm_mm_permute_0203_ps
			pmps_36 label pmpsword
				jmp		uXm_mm_permute_0210_ps
			pmps_37 label pmpsword
				jmp		uXm_mm_permute_0211_ps
			pmps_38 label pmpsword
				jmp		uXm_mm_permute_0212_ps
			pmps_39 label pmpsword
				jmp		uXm_mm_permute_0213_ps
			pmps_40 label pmpsword
				jmp		uXm_mm_permute_0220_ps
			pmps_41 label pmpsword
				jmp		uXm_mm_permute_0221_ps
			pmps_42 label pmpsword
				jmp		uXm_mm_permute_0222_ps
			pmps_43 label pmpsword
				jmp		uXm_mm_permute_0223_ps
			pmps_44 label pmpsword
				jmp		uXm_mm_permute_0230_ps
			pmps_45 label pmpsword
				jmp		uXm_mm_permute_0231_ps
			pmps_46 label pmpsword
				jmp		uXm_mm_permute_0232_ps
			pmps_47 label pmpsword
				jmp		uXm_mm_permute_0233_ps
			pmps_48 label pmpsword
				jmp		uXm_mm_permute_0300_ps
			pmps_49 label pmpsword
				jmp		uXm_mm_permute_0301_ps
			pmps_50 label pmpsword
				jmp		uXm_mm_permute_0302_ps
			pmps_51 label pmpsword
				jmp		uXm_mm_permute_0303_ps
			pmps_52 label pmpsword
				jmp		uXm_mm_permute_0310_ps
			pmps_53 label pmpsword
				jmp		uXm_mm_permute_0311_ps
			pmps_54 label pmpsword
				jmp		uXm_mm_permute_0312_ps
			pmps_55 label pmpsword
				jmp		uXm_mm_permute_0313_ps
			pmps_56 label pmpsword
				jmp		uXm_mm_permute_0320_ps
			pmps_57 label pmpsword
				jmp		uXm_mm_permute_0321_ps
			pmps_58 label pmpsword
				jmp		uXm_mm_permute_0322_ps
			pmps_59 label pmpsword
				jmp		uXm_mm_permute_0323_ps
			pmps_60 label pmpsword
				jmp		uXm_mm_permute_0330_ps
			pmps_61 label pmpsword
				jmp		uXm_mm_permute_0331_ps
			pmps_62 label pmpsword
				jmp		uXm_mm_permute_0332_ps
			pmps_63 label pmpsword
				jmp		uXm_mm_permute_0333_ps
			pmps_64 label pmpsword
				jmp		uXm_mm_permute_1000_ps
			pmps_65 label pmpsword
				jmp		uXm_mm_permute_1001_ps
			pmps_66 label pmpsword
				jmp		uXm_mm_permute_1002_ps
			pmps_67 label pmpsword
				jmp		uXm_mm_permute_1003_ps
			pmps_68 label pmpsword
				jmp		uXm_mm_permute_1010_ps
			pmps_69 label pmpsword
				jmp		uXm_mm_permute_1011_ps
			pmps_70 label pmpsword
				jmp		uXm_mm_permute_1012_ps
			pmps_71 label pmpsword
				jmp		uXm_mm_permute_1013_ps
			pmps_72 label pmpsword
				jmp		uXm_mm_permute_1020_ps
			pmps_73 label pmpsword
				jmp		uXm_mm_permute_1021_ps
			pmps_74 label pmpsword
				jmp		uXm_mm_permute_1022_ps
			pmps_75 label pmpsword
				jmp		uXm_mm_permute_1023_ps
			pmps_76 label pmpsword
				jmp		uXm_mm_permute_1030_ps
			pmps_77 label pmpsword
				jmp		uXm_mm_permute_1031_ps
			pmps_78 label pmpsword
				jmp		uXm_mm_permute_1032_ps
			pmps_79 label pmpsword
				jmp		uXm_mm_permute_1033_ps
			pmps_80 label pmpsword
				jmp		uXm_mm_permute_1100_ps
			pmps_81 label pmpsword
				jmp		uXm_mm_permute_1101_ps
			pmps_82 label pmpsword
				jmp		uXm_mm_permute_1102_ps
			pmps_83 label pmpsword
				jmp		uXm_mm_permute_1103_ps
			pmps_84 label pmpsword
				jmp		uXm_mm_permute_1110_ps
			pmps_85 label pmpsword
				jmp		uXm_mm_permute_1111_ps
			pmps_86 label pmpsword
				jmp		uXm_mm_permute_1112_ps
			pmps_87 label pmpsword
				jmp		uXm_mm_permute_1113_ps
			pmps_88 label pmpsword
				jmp		uXm_mm_permute_1120_ps
			pmps_89 label pmpsword
				jmp		uXm_mm_permute_1121_ps
			pmps_90 label pmpsword
				jmp		uXm_mm_permute_1122_ps
			pmps_91 label pmpsword
				jmp		uXm_mm_permute_1123_ps
			pmps_92 label pmpsword
				jmp		uXm_mm_permute_1130_ps
			pmps_93 label pmpsword
				jmp		uXm_mm_permute_1131_ps
			pmps_94 label pmpsword
				jmp		uXm_mm_permute_1132_ps
			pmps_95 label pmpsword
				jmp		uXm_mm_permute_1133_ps
			pmps_96 label pmpsword
				jmp		uXm_mm_permute_1200_ps
			pmps_97 label pmpsword
				jmp		uXm_mm_permute_1201_ps
			pmps_98 label pmpsword
				jmp		uXm_mm_permute_1202_ps
			pmps_99 label pmpsword
				jmp		uXm_mm_permute_1203_ps
			pmps_100 label pmpsword
				jmp		uXm_mm_permute_1210_ps
			pmps_101 label pmpsword
				jmp		uXm_mm_permute_1211_ps
			pmps_102 label pmpsword
				jmp		uXm_mm_permute_1212_ps
			pmps_103 label pmpsword
				jmp		uXm_mm_permute_1213_ps
			pmps_104 label pmpsword
				jmp		uXm_mm_permute_1220_ps
			pmps_105 label pmpsword
				jmp		uXm_mm_permute_1221_ps
			pmps_106 label pmpsword
				jmp		uXm_mm_permute_1222_ps
			pmps_107 label pmpsword
				jmp		uXm_mm_permute_1223_ps
			pmps_108 label pmpsword
				jmp		uXm_mm_permute_1230_ps
			pmps_109 label pmpsword
				jmp		uXm_mm_permute_1231_ps
			pmps_110 label pmpsword
				jmp		uXm_mm_permute_1232_ps
			pmps_111 label pmpsword
				jmp		uXm_mm_permute_1233_ps
			pmps_112 label pmpsword
				jmp		uXm_mm_permute_1300_ps
			pmps_113 label pmpsword
				jmp		uXm_mm_permute_1301_ps
			pmps_114 label pmpsword
				jmp		uXm_mm_permute_1302_ps
			pmps_115 label pmpsword
				jmp		uXm_mm_permute_1303_ps
			pmps_116 label pmpsword
				jmp		uXm_mm_permute_1310_ps
			pmps_117 label pmpsword
				jmp		uXm_mm_permute_1311_ps
			pmps_118 label pmpsword
				jmp		uXm_mm_permute_1312_ps
			pmps_119 label pmpsword
				jmp		uXm_mm_permute_1313_ps
			pmps_120 label pmpsword
				jmp		uXm_mm_permute_1320_ps
			pmps_121 label pmpsword
				jmp		uXm_mm_permute_1321_ps
			pmps_122 label pmpsword
				jmp		uXm_mm_permute_1322_ps
			pmps_123 label pmpsword
				jmp		uXm_mm_permute_1323_ps
			pmps_124 label pmpsword
				jmp		uXm_mm_permute_1330_ps
			pmps_125 label pmpsword
				jmp		uXm_mm_permute_1331_ps
			pmps_126 label pmpsword
				jmp		uXm_mm_permute_1332_ps
			pmps_127 label pmpsword
				jmp		uXm_mm_permute_1333_ps
			pmps_128 label pmpsword
				jmp		uXm_mm_permute_2000_ps
			pmps_129 label pmpsword
				jmp		uXm_mm_permute_2001_ps
			pmps_130 label pmpsword
				jmp		uXm_mm_permute_2002_ps
			pmps_131 label pmpsword
				jmp		uXm_mm_permute_2003_ps
			pmps_132 label pmpsword
				jmp		uXm_mm_permute_2010_ps
			pmps_133 label pmpsword
				jmp		uXm_mm_permute_2011_ps
			pmps_134 label pmpsword
				jmp		uXm_mm_permute_2012_ps
			pmps_135 label pmpsword
				jmp		uXm_mm_permute_2013_ps
			pmps_136 label pmpsword
				jmp		uXm_mm_permute_2020_ps
			pmps_137 label pmpsword
				jmp		uXm_mm_permute_2021_ps
			pmps_138 label pmpsword
				jmp		uXm_mm_permute_2022_ps
			pmps_139 label pmpsword
				jmp		uXm_mm_permute_2023_ps
			pmps_140 label pmpsword
				jmp		uXm_mm_permute_2030_ps
			pmps_141 label pmpsword
				jmp		uXm_mm_permute_2031_ps
			pmps_142 label pmpsword
				jmp		uXm_mm_permute_2032_ps
			pmps_143 label pmpsword
				jmp		uXm_mm_permute_2033_ps
			pmps_144 label pmpsword
				jmp		uXm_mm_permute_2100_ps
			pmps_145 label pmpsword
				jmp		uXm_mm_permute_2101_ps
			pmps_146 label pmpsword
				jmp		uXm_mm_permute_2102_ps
			pmps_147 label pmpsword
				jmp		uXm_mm_permute_2103_ps
			pmps_148 label pmpsword
				jmp		uXm_mm_permute_2110_ps
			pmps_149 label pmpsword
				jmp		uXm_mm_permute_2111_ps
			pmps_150 label pmpsword
				jmp		uXm_mm_permute_2112_ps
			pmps_151 label pmpsword
				jmp		uXm_mm_permute_2113_ps
			pmps_152 label pmpsword
				jmp		uXm_mm_permute_2120_ps
			pmps_153 label pmpsword
				jmp		uXm_mm_permute_2121_ps
			pmps_154 label pmpsword
				jmp		uXm_mm_permute_2122_ps
			pmps_155 label pmpsword
				jmp		uXm_mm_permute_2123_ps
			pmps_156 label pmpsword
				jmp		uXm_mm_permute_2130_ps
			pmps_157 label pmpsword
				jmp		uXm_mm_permute_2131_ps
			pmps_158 label pmpsword
				jmp		uXm_mm_permute_2132_ps
			pmps_159 label pmpsword
				jmp		uXm_mm_permute_2133_ps
			pmps_160 label pmpsword
				jmp		uXm_mm_permute_2200_ps
			pmps_161 label pmpsword
				jmp		uXm_mm_permute_2201_ps
			pmps_162 label pmpsword
				jmp		uXm_mm_permute_2202_ps
			pmps_163 label pmpsword
				jmp		uXm_mm_permute_2203_ps
			pmps_164 label pmpsword
				jmp		uXm_mm_permute_2210_ps
			pmps_165 label pmpsword
				jmp		uXm_mm_permute_2211_ps
			pmps_166 label pmpsword
				jmp		uXm_mm_permute_2212_ps
			pmps_167 label pmpsword
				jmp		uXm_mm_permute_2213_ps
			pmps_168 label pmpsword
				jmp		uXm_mm_permute_2220_ps
			pmps_169 label pmpsword
				jmp		uXm_mm_permute_2221_ps
			pmps_170 label pmpsword
				jmp		uXm_mm_permute_2222_ps
			pmps_171 label pmpsword
				jmp		uXm_mm_permute_2223_ps
			pmps_172 label pmpsword
				jmp		uXm_mm_permute_2230_ps
			pmps_173 label pmpsword
				jmp		uXm_mm_permute_2231_ps
			pmps_174 label pmpsword
				jmp		uXm_mm_permute_2232_ps
			pmps_175 label pmpsword
				jmp		uXm_mm_permute_2233_ps
			pmps_176 label pmpsword
				jmp		uXm_mm_permute_2300_ps
			pmps_177 label pmpsword
				jmp		uXm_mm_permute_2301_ps
			pmps_178 label pmpsword
				jmp		uXm_mm_permute_2302_ps
			pmps_179 label pmpsword
				jmp		uXm_mm_permute_2303_ps
			pmps_180 label pmpsword
				jmp		uXm_mm_permute_2310_ps
			pmps_181 label pmpsword
				jmp		uXm_mm_permute_2311_ps
			pmps_182 label pmpsword
				jmp		uXm_mm_permute_2312_ps
			pmps_183 label pmpsword
				jmp		uXm_mm_permute_2313_ps
			pmps_184 label pmpsword
				jmp		uXm_mm_permute_2320_ps
			pmps_185 label pmpsword
				jmp		uXm_mm_permute_2321_ps
			pmps_186 label pmpsword
				jmp		uXm_mm_permute_2322_ps
			pmps_187 label pmpsword
				jmp		uXm_mm_permute_2323_ps
			pmps_188 label pmpsword
				jmp		uXm_mm_permute_2330_ps
			pmps_189 label pmpsword
				jmp		uXm_mm_permute_2331_ps
			pmps_190 label pmpsword
				jmp		uXm_mm_permute_2332_ps
			pmps_191 label pmpsword
				jmp		uXm_mm_permute_2333_ps
			pmps_192 label pmpsword
				jmp		uXm_mm_permute_3000_ps
			pmps_193 label pmpsword
				jmp		uXm_mm_permute_3001_ps
			pmps_194 label pmpsword
				jmp		uXm_mm_permute_3002_ps
			pmps_195 label pmpsword
				jmp		uXm_mm_permute_3003_ps
			pmps_196 label pmpsword
				jmp		uXm_mm_permute_3010_ps
			pmps_197 label pmpsword
				jmp		uXm_mm_permute_3011_ps
			pmps_198 label pmpsword
				jmp		uXm_mm_permute_3012_ps
			pmps_199 label pmpsword
				jmp		uXm_mm_permute_3013_ps
			pmps_200 label pmpsword
				jmp		uXm_mm_permute_3020_ps
			pmps_201 label pmpsword
				jmp		uXm_mm_permute_3021_ps
			pmps_202 label pmpsword
				jmp		uXm_mm_permute_3022_ps
			pmps_203 label pmpsword
				jmp		uXm_mm_permute_3023_ps
			pmps_204 label pmpsword
				jmp		uXm_mm_permute_3030_ps
			pmps_205 label pmpsword
				jmp		uXm_mm_permute_3031_ps
			pmps_206 label pmpsword
				jmp		uXm_mm_permute_3032_ps
			pmps_207 label pmpsword
				jmp		uXm_mm_permute_3033_ps
			pmps_208 label pmpsword
				jmp		uXm_mm_permute_3100_ps
			pmps_209 label pmpsword
				jmp		uXm_mm_permute_3101_ps
			pmps_210 label pmpsword
				jmp		uXm_mm_permute_3102_ps
			pmps_211 label pmpsword
				jmp		uXm_mm_permute_3103_ps
			pmps_212 label pmpsword
				jmp		uXm_mm_permute_3110_ps
			pmps_213 label pmpsword
				jmp		uXm_mm_permute_3111_ps
			pmps_214 label pmpsword
				jmp		uXm_mm_permute_3112_ps
			pmps_215 label pmpsword
				jmp		uXm_mm_permute_3113_ps
			pmps_216 label pmpsword
				jmp		uXm_mm_permute_3120_ps
			pmps_217 label pmpsword
				jmp		uXm_mm_permute_3121_ps
			pmps_218 label pmpsword
				jmp		uXm_mm_permute_3122_ps
			pmps_219 label pmpsword
				jmp		uXm_mm_permute_3123_ps
			pmps_220 label pmpsword
				jmp		uXm_mm_permute_3130_ps
			pmps_221 label pmpsword
				jmp		uXm_mm_permute_3131_ps
			pmps_222 label pmpsword
				jmp		uXm_mm_permute_3132_ps
			pmps_223 label pmpsword
				jmp		uXm_mm_permute_3133_ps
			pmps_224 label pmpsword
				jmp		uXm_mm_permute_3200_ps
			pmps_225 label pmpsword
				jmp		uXm_mm_permute_3201_ps
			pmps_226 label pmpsword
				jmp		uXm_mm_permute_3202_ps
			pmps_227 label pmpsword
				jmp		uXm_mm_permute_3203_ps
			pmps_228 label pmpsword
				jmp		uXm_mm_permute_3210_ps
			pmps_229 label pmpsword
				jmp		uXm_mm_permute_3211_ps
			pmps_230 label pmpsword
				jmp		uXm_mm_permute_3212_ps
			pmps_231 label pmpsword
				jmp		uXm_mm_permute_3213_ps
			pmps_232 label pmpsword
				jmp		uXm_mm_permute_3220_ps
			pmps_233 label pmpsword
				jmp		uXm_mm_permute_3221_ps
			pmps_234 label pmpsword
				jmp		uXm_mm_permute_3222_ps
			pmps_235 label pmpsword
				jmp		uXm_mm_permute_3223_ps
			pmps_236 label pmpsword
				jmp		uXm_mm_permute_3230_ps
			pmps_237 label pmpsword
				jmp		uXm_mm_permute_3231_ps
			pmps_238 label pmpsword
				jmp		uXm_mm_permute_3232_ps
			pmps_239 label pmpsword
				jmp		uXm_mm_permute_3233_ps
			pmps_240 label pmpsword
				jmp		uXm_mm_permute_3300_ps
			pmps_241 label pmpsword
				jmp		uXm_mm_permute_3301_ps
			pmps_242 label pmpsword
				jmp		uXm_mm_permute_3302_ps
			pmps_243 label pmpsword
				jmp		uXm_mm_permute_3303_ps
			pmps_244 label pmpsword
				jmp		uXm_mm_permute_3310_ps
			pmps_245 label pmpsword
				jmp		uXm_mm_permute_3311_ps
			pmps_246 label pmpsword
				jmp		uXm_mm_permute_3312_ps
			pmps_247 label pmpsword
				jmp		uXm_mm_permute_3313_ps
			pmps_248 label pmpsword
				jmp		uXm_mm_permute_3320_ps
			pmps_249 label pmpsword
				jmp		uXm_mm_permute_3321_ps
			pmps_250 label pmpsword
				jmp		uXm_mm_permute_3322_ps
			pmps_251 label pmpsword
				jmp		uXm_mm_permute_3323_ps
			pmps_252 label pmpsword
				jmp		uXm_mm_permute_3330_ps
			pmps_253 label pmpsword
				jmp		uXm_mm_permute_3331_ps
			pmps_254 label pmpsword
				jmp		uXm_mm_permute_3332_ps
			pmps_255 label pmpsword
				jmp		uXm_mm_permute_3333_ps

uXm_mm_permute_ps endp

	end
