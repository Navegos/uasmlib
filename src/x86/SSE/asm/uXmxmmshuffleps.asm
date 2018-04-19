
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.code

;******************
; Proto
;******************
uXm_mm_shuffle_0000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_0333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_1333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
uXm_mm_shuffle_2103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
uXm_mm_shuffle_2123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
uXm_mm_shuffle_2233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_2333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_3333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword

;******************
; Proc
;******************
			align 16
uXm_mm_shuffle_0000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			0
				ret
uXm_mm_shuffle_0000_ps endp

			align 16
uXm_mm_shuffle_0001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			1
				ret
uXm_mm_shuffle_0001_ps endp

			align 16
uXm_mm_shuffle_0002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			2
				ret
uXm_mm_shuffle_0002_ps endp

			align 16
uXm_mm_shuffle_0003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			3
				ret
uXm_mm_shuffle_0003_ps endp

			align 16
uXm_mm_shuffle_0010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			4
				ret
uXm_mm_shuffle_0010_ps endp

			align 16
uXm_mm_shuffle_0011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			5
				ret
uXm_mm_shuffle_0011_ps endp

			align 16
uXm_mm_shuffle_0012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			6
				ret
uXm_mm_shuffle_0012_ps endp

			align 16
uXm_mm_shuffle_0013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			7
				ret
uXm_mm_shuffle_0013_ps endp

			align 16
uXm_mm_shuffle_0020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			8
				ret
uXm_mm_shuffle_0020_ps endp

			align 16
uXm_mm_shuffle_0021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			9
				ret
uXm_mm_shuffle_0021_ps endp

			align 16
uXm_mm_shuffle_0022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			10
				ret
uXm_mm_shuffle_0022_ps endp

			align 16
uXm_mm_shuffle_0023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			11
				ret
uXm_mm_shuffle_0023_ps endp

			align 16
uXm_mm_shuffle_0030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			12
				ret
uXm_mm_shuffle_0030_ps endp

			align 16
uXm_mm_shuffle_0031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			13
				ret
uXm_mm_shuffle_0031_ps endp

			align 16
uXm_mm_shuffle_0032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			14
				ret
uXm_mm_shuffle_0032_ps endp

			align 16
uXm_mm_shuffle_0033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			15
				ret
uXm_mm_shuffle_0033_ps endp

			align 16
uXm_mm_shuffle_0100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			16
				ret
uXm_mm_shuffle_0100_ps endp

			align 16
uXm_mm_shuffle_0101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			17
				ret
uXm_mm_shuffle_0101_ps endp

			align 16
uXm_mm_shuffle_0102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			18
				ret
uXm_mm_shuffle_0102_ps endp

			align 16
uXm_mm_shuffle_0103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			19
				ret
uXm_mm_shuffle_0103_ps endp

			align 16
uXm_mm_shuffle_0110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			20
				ret
uXm_mm_shuffle_0110_ps endp

			align 16
uXm_mm_shuffle_0111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			21
				ret
uXm_mm_shuffle_0111_ps endp

			align 16
uXm_mm_shuffle_0112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			22
				ret
uXm_mm_shuffle_0112_ps endp

			align 16
uXm_mm_shuffle_0113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			23
				ret
uXm_mm_shuffle_0113_ps endp

			align 16
uXm_mm_shuffle_0120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			24
				ret
uXm_mm_shuffle_0120_ps endp

			align 16
uXm_mm_shuffle_0121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			25
				ret
uXm_mm_shuffle_0121_ps endp

			align 16
uXm_mm_shuffle_0122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			26
				ret
uXm_mm_shuffle_0122_ps endp

			align 16
uXm_mm_shuffle_0123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			27
				ret
uXm_mm_shuffle_0123_ps endp

			align 16
uXm_mm_shuffle_0130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			28
				ret
uXm_mm_shuffle_0130_ps endp

			align 16
uXm_mm_shuffle_0131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			29
				ret
uXm_mm_shuffle_0131_ps endp

			align 16
uXm_mm_shuffle_0132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			30
				ret
uXm_mm_shuffle_0132_ps endp

			align 16
uXm_mm_shuffle_0133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			31
				ret
uXm_mm_shuffle_0133_ps endp

			align 16
uXm_mm_shuffle_0200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			32
				ret
uXm_mm_shuffle_0200_ps endp

			align 16
uXm_mm_shuffle_0201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			33
				ret
uXm_mm_shuffle_0201_ps endp

			align 16
uXm_mm_shuffle_0202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			34
				ret
uXm_mm_shuffle_0202_ps endp

			align 16
uXm_mm_shuffle_0203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			35
				ret
uXm_mm_shuffle_0203_ps endp

			align 16
uXm_mm_shuffle_0210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			36
				ret
uXm_mm_shuffle_0210_ps endp

			align 16
uXm_mm_shuffle_0211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			37
				ret
uXm_mm_shuffle_0211_ps endp

			align 16
uXm_mm_shuffle_0212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			38
				ret
uXm_mm_shuffle_0212_ps endp

			align 16
uXm_mm_shuffle_0213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			39
				ret
uXm_mm_shuffle_0213_ps endp

			align 16
uXm_mm_shuffle_0220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			40
				ret
uXm_mm_shuffle_0220_ps endp

			align 16
uXm_mm_shuffle_0221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			41
				ret
uXm_mm_shuffle_0221_ps endp

			align 16
uXm_mm_shuffle_0222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			42
				ret
uXm_mm_shuffle_0222_ps endp

			align 16
uXm_mm_shuffle_0223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			43
				ret
uXm_mm_shuffle_0223_ps endp

			align 16
uXm_mm_shuffle_0230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			44
				ret
uXm_mm_shuffle_0230_ps endp

			align 16
uXm_mm_shuffle_0231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			45
				ret
uXm_mm_shuffle_0231_ps endp

			align 16
uXm_mm_shuffle_0232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			46
				ret
uXm_mm_shuffle_0232_ps endp

			align 16
uXm_mm_shuffle_0233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			47
				ret
uXm_mm_shuffle_0233_ps endp

			align 16
uXm_mm_shuffle_0300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			48
				ret
uXm_mm_shuffle_0300_ps endp

			align 16
uXm_mm_shuffle_0301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			49
				ret
uXm_mm_shuffle_0301_ps endp

			align 16
uXm_mm_shuffle_0302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			50
				ret
uXm_mm_shuffle_0302_ps endp

			align 16
uXm_mm_shuffle_0303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			51
				ret
uXm_mm_shuffle_0303_ps endp

			align 16
uXm_mm_shuffle_0310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			52
				ret
uXm_mm_shuffle_0310_ps endp

			align 16
uXm_mm_shuffle_0311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			53
				ret
uXm_mm_shuffle_0311_ps endp

			align 16
uXm_mm_shuffle_0312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			54
				ret
uXm_mm_shuffle_0312_ps endp

			align 16
uXm_mm_shuffle_0313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			55
				ret
uXm_mm_shuffle_0313_ps endp

			align 16
uXm_mm_shuffle_0320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			56
				ret
uXm_mm_shuffle_0320_ps endp

			align 16
uXm_mm_shuffle_0321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			57
				ret
uXm_mm_shuffle_0321_ps endp

			align 16
uXm_mm_shuffle_0322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			58
				ret
uXm_mm_shuffle_0322_ps endp

			align 16
uXm_mm_shuffle_0323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			59
				ret
uXm_mm_shuffle_0323_ps endp

			align 16
uXm_mm_shuffle_0330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			60
				ret
uXm_mm_shuffle_0330_ps endp

			align 16
uXm_mm_shuffle_0331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			61
				ret
uXm_mm_shuffle_0331_ps endp

			align 16
uXm_mm_shuffle_0332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			62
				ret
uXm_mm_shuffle_0332_ps endp

			align 16
uXm_mm_shuffle_0333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			63
				ret
uXm_mm_shuffle_0333_ps endp

			align 16
uXm_mm_shuffle_1000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			64
				ret
uXm_mm_shuffle_1000_ps endp

			align 16
uXm_mm_shuffle_1001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			65
				ret
uXm_mm_shuffle_1001_ps endp

			align 16
uXm_mm_shuffle_1002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			66
				ret
uXm_mm_shuffle_1002_ps endp

			align 16
uXm_mm_shuffle_1003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			67
				ret
uXm_mm_shuffle_1003_ps endp

			align 16
uXm_mm_shuffle_1010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			68
				ret
uXm_mm_shuffle_1010_ps endp

			align 16
uXm_mm_shuffle_1011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			69
				ret
uXm_mm_shuffle_1011_ps endp

			align 16
uXm_mm_shuffle_1012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			70
				ret
uXm_mm_shuffle_1012_ps endp

			align 16
uXm_mm_shuffle_1013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			71
				ret
uXm_mm_shuffle_1013_ps endp

			align 16
uXm_mm_shuffle_1020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			72
				ret
uXm_mm_shuffle_1020_ps endp

			align 16
uXm_mm_shuffle_1021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			73
				ret
uXm_mm_shuffle_1021_ps endp

			align 16
uXm_mm_shuffle_1022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			74
				ret
uXm_mm_shuffle_1022_ps endp

			align 16
uXm_mm_shuffle_1023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			75
				ret
uXm_mm_shuffle_1023_ps endp

			align 16
uXm_mm_shuffle_1030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			76
				ret
uXm_mm_shuffle_1030_ps endp

			align 16
uXm_mm_shuffle_1031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			77
				ret
uXm_mm_shuffle_1031_ps endp

			align 16
uXm_mm_shuffle_1032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			78
				ret
uXm_mm_shuffle_1032_ps endp

			align 16
uXm_mm_shuffle_1033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			79
				ret
uXm_mm_shuffle_1033_ps endp

			align 16
uXm_mm_shuffle_1100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			80
				ret
uXm_mm_shuffle_1100_ps endp

			align 16
uXm_mm_shuffle_1101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			81
				ret
uXm_mm_shuffle_1101_ps endp

			align 16
uXm_mm_shuffle_1102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			82
				ret
uXm_mm_shuffle_1102_ps endp

			align 16
uXm_mm_shuffle_1103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			83
				ret
uXm_mm_shuffle_1103_ps endp

			align 16
uXm_mm_shuffle_1110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			84
				ret
uXm_mm_shuffle_1110_ps endp

			align 16
uXm_mm_shuffle_1111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			85
				ret
uXm_mm_shuffle_1111_ps endp

			align 16
uXm_mm_shuffle_1112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			86
				ret
uXm_mm_shuffle_1112_ps endp

			align 16
uXm_mm_shuffle_1113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			87
				ret
uXm_mm_shuffle_1113_ps endp

			align 16
uXm_mm_shuffle_1120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			88
				ret
uXm_mm_shuffle_1120_ps endp

			align 16
uXm_mm_shuffle_1121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			89
				ret
uXm_mm_shuffle_1121_ps endp

			align 16
uXm_mm_shuffle_1122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			90
				ret
uXm_mm_shuffle_1122_ps endp

			align 16
uXm_mm_shuffle_1123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			91
				ret
uXm_mm_shuffle_1123_ps endp

			align 16
uXm_mm_shuffle_1130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			92
				ret
uXm_mm_shuffle_1130_ps endp

			align 16
uXm_mm_shuffle_1131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			93
				ret
uXm_mm_shuffle_1131_ps endp

			align 16
uXm_mm_shuffle_1132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			94
				ret
uXm_mm_shuffle_1132_ps endp

			align 16
uXm_mm_shuffle_1133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			95
				ret
uXm_mm_shuffle_1133_ps endp

			align 16
uXm_mm_shuffle_1200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			96
				ret
uXm_mm_shuffle_1200_ps endp

			align 16
uXm_mm_shuffle_1201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			97
				ret
uXm_mm_shuffle_1201_ps endp

			align 16
uXm_mm_shuffle_1202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			98
				ret
uXm_mm_shuffle_1202_ps endp

			align 16
uXm_mm_shuffle_1203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			99
				ret
uXm_mm_shuffle_1203_ps endp

			align 16
uXm_mm_shuffle_1210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			100
				ret
uXm_mm_shuffle_1210_ps endp

			align 16
uXm_mm_shuffle_1211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			101
				ret
uXm_mm_shuffle_1211_ps endp

			align 16
uXm_mm_shuffle_1212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			102
				ret
uXm_mm_shuffle_1212_ps endp

			align 16
uXm_mm_shuffle_1213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			103
				ret
uXm_mm_shuffle_1213_ps endp

			align 16
uXm_mm_shuffle_1220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			104
				ret
uXm_mm_shuffle_1220_ps endp

			align 16
uXm_mm_shuffle_1221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			105
				ret
uXm_mm_shuffle_1221_ps endp

			align 16
uXm_mm_shuffle_1222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			106
				ret
uXm_mm_shuffle_1222_ps endp

			align 16
uXm_mm_shuffle_1223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			107
				ret
uXm_mm_shuffle_1223_ps endp

			align 16
uXm_mm_shuffle_1230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			108
				ret
uXm_mm_shuffle_1230_ps endp

			align 16
uXm_mm_shuffle_1231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			109
				ret
uXm_mm_shuffle_1231_ps endp

			align 16
uXm_mm_shuffle_1232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			110
				ret
uXm_mm_shuffle_1232_ps endp

			align 16
uXm_mm_shuffle_1233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			111
				ret
uXm_mm_shuffle_1233_ps endp

			align 16
uXm_mm_shuffle_1300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			112
				ret
uXm_mm_shuffle_1300_ps endp

			align 16
uXm_mm_shuffle_1301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			113
				ret
uXm_mm_shuffle_1301_ps endp

			align 16
uXm_mm_shuffle_1302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			114
				ret
uXm_mm_shuffle_1302_ps endp

			align 16
uXm_mm_shuffle_1303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			115
				ret
uXm_mm_shuffle_1303_ps endp

			align 16
uXm_mm_shuffle_1310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			116
				ret
uXm_mm_shuffle_1310_ps endp

			align 16
uXm_mm_shuffle_1311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			117
				ret
uXm_mm_shuffle_1311_ps endp

			align 16
uXm_mm_shuffle_1312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			118
				ret
uXm_mm_shuffle_1312_ps endp

			align 16
uXm_mm_shuffle_1313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			119
				ret
uXm_mm_shuffle_1313_ps endp

			align 16
uXm_mm_shuffle_1320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			120
				ret
uXm_mm_shuffle_1320_ps endp

			align 16
uXm_mm_shuffle_1321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			121
				ret
uXm_mm_shuffle_1321_ps endp

			align 16
uXm_mm_shuffle_1322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			122
				ret
uXm_mm_shuffle_1322_ps endp

			align 16
uXm_mm_shuffle_1323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			123
				ret
uXm_mm_shuffle_1323_ps endp

			align 16
uXm_mm_shuffle_1330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			124
				ret
uXm_mm_shuffle_1330_ps endp

			align 16
uXm_mm_shuffle_1331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			125
				ret
uXm_mm_shuffle_1331_ps endp

			align 16
uXm_mm_shuffle_1332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			126
				ret
uXm_mm_shuffle_1332_ps endp

			align 16
uXm_mm_shuffle_1333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			127
				ret
uXm_mm_shuffle_1333_ps endp

			align 16
uXm_mm_shuffle_2000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			128
				ret
uXm_mm_shuffle_2000_ps endp

			align 16
uXm_mm_shuffle_2001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			129
				ret
uXm_mm_shuffle_2001_ps endp

			align 16
uXm_mm_shuffle_2002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			130
				ret
uXm_mm_shuffle_2002_ps endp

			align 16
uXm_mm_shuffle_2003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			131
				ret
uXm_mm_shuffle_2003_ps endp

			align 16
uXm_mm_shuffle_2010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			132
				ret
uXm_mm_shuffle_2010_ps endp

			align 16
uXm_mm_shuffle_2011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			133
				ret
uXm_mm_shuffle_2011_ps endp

			align 16
uXm_mm_shuffle_2012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			134
				ret
uXm_mm_shuffle_2012_ps endp

			align 16
uXm_mm_shuffle_2013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			135
				ret
uXm_mm_shuffle_2013_ps endp

			align 16
uXm_mm_shuffle_2020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			136
				ret
uXm_mm_shuffle_2020_ps endp

			align 16
uXm_mm_shuffle_2021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			137
				ret
uXm_mm_shuffle_2021_ps endp

			align 16
uXm_mm_shuffle_2022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			138
				ret
uXm_mm_shuffle_2022_ps endp

			align 16
uXm_mm_shuffle_2023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			139
				ret
uXm_mm_shuffle_2023_ps endp

			align 16
uXm_mm_shuffle_2030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			140
				ret
uXm_mm_shuffle_2030_ps endp

			align 16
uXm_mm_shuffle_2031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			141
				ret
uXm_mm_shuffle_2031_ps endp

			align 16
uXm_mm_shuffle_2032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			142
				ret
uXm_mm_shuffle_2032_ps endp

			align 16
uXm_mm_shuffle_2033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			143
				ret
uXm_mm_shuffle_2033_ps endp

			align 16
uXm_mm_shuffle_2100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			144
				ret
uXm_mm_shuffle_2100_ps endp

			align 16
uXm_mm_shuffle_2101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			145
				ret
uXm_mm_shuffle_2101_ps endp

			align 16
uXm_mm_shuffle_2102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
				shufps				xmm0,			xmm1,			146
				ret
uXm_mm_shuffle_2102_ps endp

			align 16
uXm_mm_shuffle_2103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			147
				ret
uXm_mm_shuffle_2103_ps endp

			align 16
uXm_mm_shuffle_2110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			148
				ret
uXm_mm_shuffle_2110_ps endp

			align 16
uXm_mm_shuffle_2111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			149
				ret
uXm_mm_shuffle_2111_ps endp

			align 16
uXm_mm_shuffle_2112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			150
				ret
uXm_mm_shuffle_2112_ps endp

			align 16
uXm_mm_shuffle_2113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			151
				ret
uXm_mm_shuffle_2113_ps endp

			align 16
uXm_mm_shuffle_2120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			152
				ret
uXm_mm_shuffle_2120_ps endp

			align 16
uXm_mm_shuffle_2121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			153
				ret
uXm_mm_shuffle_2121_ps endp

			align 16
uXm_mm_shuffle_2122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
				shufps				xmm0,			xmm1,			154
				ret
uXm_mm_shuffle_2122_ps endp

			align 16
uXm_mm_shuffle_2123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			155
				ret
uXm_mm_shuffle_2123_ps endp

			align 16
uXm_mm_shuffle_2130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			156
				ret
uXm_mm_shuffle_2130_ps endp

			align 16
uXm_mm_shuffle_2131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			157
				ret
uXm_mm_shuffle_2131_ps endp

			align 16
uXm_mm_shuffle_2132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			158
				ret
uXm_mm_shuffle_2132_ps endp

			align 16
uXm_mm_shuffle_2133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			159
				ret
uXm_mm_shuffle_2133_ps endp

			align 16
uXm_mm_shuffle_2200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			160
				ret
uXm_mm_shuffle_2200_ps endp

			align 16
uXm_mm_shuffle_2201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			161
				ret
uXm_mm_shuffle_2201_ps endp

			align 16
uXm_mm_shuffle_2202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			162
				ret
uXm_mm_shuffle_2202_ps endp

			align 16
uXm_mm_shuffle_2203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			163
				ret
uXm_mm_shuffle_2203_ps endp

			align 16
uXm_mm_shuffle_2210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			164
				ret
uXm_mm_shuffle_2210_ps endp

			align 16
uXm_mm_shuffle_2211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			165
				ret
uXm_mm_shuffle_2211_ps endp

			align 16
uXm_mm_shuffle_2212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			166
				ret
uXm_mm_shuffle_2212_ps endp

			align 16
uXm_mm_shuffle_2213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			167
				ret
uXm_mm_shuffle_2213_ps endp

			align 16
uXm_mm_shuffle_2220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			168
				ret
uXm_mm_shuffle_2220_ps endp

			align 16
uXm_mm_shuffle_2221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			169
				ret
uXm_mm_shuffle_2221_ps endp

			align 16
uXm_mm_shuffle_2222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			170
				ret
uXm_mm_shuffle_2222_ps endp

			align 16
uXm_mm_shuffle_2223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			171
				ret
uXm_mm_shuffle_2223_ps endp

			align 16
uXm_mm_shuffle_2230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			172
				ret
uXm_mm_shuffle_2230_ps endp

			align 16
uXm_mm_shuffle_2231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			173
				ret
uXm_mm_shuffle_2231_ps endp

			align 16
uXm_mm_shuffle_2232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
				shufps				xmm0,			xmm1,			174
				ret
uXm_mm_shuffle_2232_ps endp

			align 16
uXm_mm_shuffle_2233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			175
				ret
uXm_mm_shuffle_2233_ps endp

			align 16
uXm_mm_shuffle_2300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			176
				ret
uXm_mm_shuffle_2300_ps endp

			align 16
uXm_mm_shuffle_2301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			177
				ret
uXm_mm_shuffle_2301_ps endp

			align 16
uXm_mm_shuffle_2302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			178
				ret
uXm_mm_shuffle_2302_ps endp

			align 16
uXm_mm_shuffle_2303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			179
				ret
uXm_mm_shuffle_2303_ps endp

			align 16
uXm_mm_shuffle_2310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			180
				ret
uXm_mm_shuffle_2310_ps endp

			align 16
uXm_mm_shuffle_2311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			181
				ret
uXm_mm_shuffle_2311_ps endp

			align 16
uXm_mm_shuffle_2312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			182
				ret
uXm_mm_shuffle_2312_ps endp

			align 16
uXm_mm_shuffle_2313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			183
				ret
uXm_mm_shuffle_2313_ps endp

			align 16
uXm_mm_shuffle_2320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			184
				ret
uXm_mm_shuffle_2320_ps endp

			align 16
uXm_mm_shuffle_2321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			185
				ret
uXm_mm_shuffle_2321_ps endp

			align 16
uXm_mm_shuffle_2322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			186
				ret
uXm_mm_shuffle_2322_ps endp

			align 16
uXm_mm_shuffle_2323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			187
				ret
uXm_mm_shuffle_2323_ps endp

			align 16
uXm_mm_shuffle_2330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			188
				ret
uXm_mm_shuffle_2330_ps endp

			align 16
uXm_mm_shuffle_2331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			189
				ret
uXm_mm_shuffle_2331_ps endp

			align 16
uXm_mm_shuffle_2332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			190
				ret
uXm_mm_shuffle_2332_ps endp

			align 16
uXm_mm_shuffle_2333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			191
				ret
uXm_mm_shuffle_2333_ps endp

			align 16
uXm_mm_shuffle_3000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			192
				ret
uXm_mm_shuffle_3000_ps endp

			align 16
uXm_mm_shuffle_3001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			193
				ret
uXm_mm_shuffle_3001_ps endp

			align 16
uXm_mm_shuffle_3002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			194
				ret
uXm_mm_shuffle_3002_ps endp

			align 16
uXm_mm_shuffle_3003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			195
				ret
uXm_mm_shuffle_3003_ps endp

			align 16
uXm_mm_shuffle_3010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			196
				ret
uXm_mm_shuffle_3010_ps endp

			align 16
uXm_mm_shuffle_3011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			197
				ret
uXm_mm_shuffle_3011_ps endp

			align 16
uXm_mm_shuffle_3012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			198
				ret
uXm_mm_shuffle_3012_ps endp

			align 16
uXm_mm_shuffle_3013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			199
				ret
uXm_mm_shuffle_3013_ps endp

			align 16
uXm_mm_shuffle_3020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			200
				ret
uXm_mm_shuffle_3020_ps endp

			align 16
uXm_mm_shuffle_3021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			201
				ret
uXm_mm_shuffle_3021_ps endp

			align 16
uXm_mm_shuffle_3022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			202
				ret
uXm_mm_shuffle_3022_ps endp

			align 16
uXm_mm_shuffle_3023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			203
				ret
uXm_mm_shuffle_3023_ps endp

			align 16
uXm_mm_shuffle_3030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			204
				ret
uXm_mm_shuffle_3030_ps endp

			align 16
uXm_mm_shuffle_3031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			205
				ret
uXm_mm_shuffle_3031_ps endp

			align 16
uXm_mm_shuffle_3032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			206
				ret
uXm_mm_shuffle_3032_ps endp

			align 16
uXm_mm_shuffle_3033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			207
				ret
uXm_mm_shuffle_3033_ps endp

			align 16
uXm_mm_shuffle_3100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			208
				ret
uXm_mm_shuffle_3100_ps endp

			align 16
uXm_mm_shuffle_3101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			209
				ret
uXm_mm_shuffle_3101_ps endp

			align 16
uXm_mm_shuffle_3102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			210
				ret
uXm_mm_shuffle_3102_ps endp

			align 16
uXm_mm_shuffle_3103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			211
				ret
uXm_mm_shuffle_3103_ps endp

			align 16
uXm_mm_shuffle_3110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			212
				ret
uXm_mm_shuffle_3110_ps endp

			align 16
uXm_mm_shuffle_3111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			213
				ret
uXm_mm_shuffle_3111_ps endp

			align 16
uXm_mm_shuffle_3112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			214
				ret
uXm_mm_shuffle_3112_ps endp

			align 16
uXm_mm_shuffle_3113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			215
				ret
uXm_mm_shuffle_3113_ps endp

			align 16
uXm_mm_shuffle_3120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			216
				ret
uXm_mm_shuffle_3120_ps endp

			align 16
uXm_mm_shuffle_3121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			217
				ret
uXm_mm_shuffle_3121_ps endp

			align 16
uXm_mm_shuffle_3122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			218
				ret
uXm_mm_shuffle_3122_ps endp

			align 16
uXm_mm_shuffle_3123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			219
				ret
uXm_mm_shuffle_3123_ps endp

			align 16
uXm_mm_shuffle_3130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			220
				ret
uXm_mm_shuffle_3130_ps endp

			align 16
uXm_mm_shuffle_3131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			221
				ret
uXm_mm_shuffle_3131_ps endp

			align 16
uXm_mm_shuffle_3132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			222
				ret
uXm_mm_shuffle_3132_ps endp

			align 16
uXm_mm_shuffle_3133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			223
				ret
uXm_mm_shuffle_3133_ps endp

			align 16
uXm_mm_shuffle_3200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			224
				ret
uXm_mm_shuffle_3200_ps endp

			align 16
uXm_mm_shuffle_3201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			225
				ret
uXm_mm_shuffle_3201_ps endp

			align 16
uXm_mm_shuffle_3202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			226
				ret
uXm_mm_shuffle_3202_ps endp

			align 16
uXm_mm_shuffle_3203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			227
				ret
uXm_mm_shuffle_3203_ps endp

			align 16
uXm_mm_shuffle_3210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			228
				ret
uXm_mm_shuffle_3210_ps endp

			align 16
uXm_mm_shuffle_3211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			229
				ret
uXm_mm_shuffle_3211_ps endp

			align 16
uXm_mm_shuffle_3212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			230
				ret
uXm_mm_shuffle_3212_ps endp

			align 16
uXm_mm_shuffle_3213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			231
				ret
uXm_mm_shuffle_3213_ps endp

			align 16
uXm_mm_shuffle_3220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			232
				ret
uXm_mm_shuffle_3220_ps endp

			align 16
uXm_mm_shuffle_3221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			233
				ret
uXm_mm_shuffle_3221_ps endp

			align 16
uXm_mm_shuffle_3222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			234
				ret
uXm_mm_shuffle_3222_ps endp

			align 16
uXm_mm_shuffle_3223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			235
				ret
uXm_mm_shuffle_3223_ps endp

			align 16
uXm_mm_shuffle_3230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			236
				ret
uXm_mm_shuffle_3230_ps endp

			align 16
uXm_mm_shuffle_3231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			237
				ret
uXm_mm_shuffle_3231_ps endp

			align 16
uXm_mm_shuffle_3232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			238
				ret
uXm_mm_shuffle_3232_ps endp

			align 16
uXm_mm_shuffle_3233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			239
				ret
uXm_mm_shuffle_3233_ps endp

			align 16
uXm_mm_shuffle_3300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			240
				ret
uXm_mm_shuffle_3300_ps endp

			align 16
uXm_mm_shuffle_3301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			241
				ret
uXm_mm_shuffle_3301_ps endp

			align 16
uXm_mm_shuffle_3302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			242
				ret
uXm_mm_shuffle_3302_ps endp

			align 16
uXm_mm_shuffle_3303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			243
				ret
uXm_mm_shuffle_3303_ps endp

			align 16
uXm_mm_shuffle_3310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			244
				ret
uXm_mm_shuffle_3310_ps endp

			align 16
uXm_mm_shuffle_3311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			245
				ret
uXm_mm_shuffle_3311_ps endp

			align 16
uXm_mm_shuffle_3312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			246
				ret
uXm_mm_shuffle_3312_ps endp

			align 16
uXm_mm_shuffle_3313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			247
				ret
uXm_mm_shuffle_3313_ps endp

			align 16
uXm_mm_shuffle_3320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			248
				ret
uXm_mm_shuffle_3320_ps endp

			align 16
uXm_mm_shuffle_3321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			249
				ret
uXm_mm_shuffle_3321_ps endp

			align 16
uXm_mm_shuffle_3322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			250
				ret
uXm_mm_shuffle_3322_ps endp

			align 16
uXm_mm_shuffle_3323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			251
				ret
uXm_mm_shuffle_3323_ps endp

			align 16
uXm_mm_shuffle_3330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			252
				ret
uXm_mm_shuffle_3330_ps endp

			align 16
uXm_mm_shuffle_3331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			253
				ret
uXm_mm_shuffle_3331_ps endp

			align 16
uXm_mm_shuffle_3332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			254
				ret
uXm_mm_shuffle_3332_ps endp

			align 16
uXm_mm_shuffle_3333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			255
				ret
uXm_mm_shuffle_3333_ps endp

			align 16
uXm_mm_shuffle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
				
		ifndef __X64__
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam3]
			lea				ebx,			[mmshufpsjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmshufpsjmptable
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
			lea				rbx,			[mmshufpsjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmshufpsjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmshufpsword		textequ		<dword>
			mmshufpsiword		textequ		<dd>
		else
			mmshufpsword		textequ		<qword>
			mmshufpsiword		textequ		<dq>
		endif
		
		mmshufpsjmptable label mmshufpsword
			mmshufpsiword offset mmshufps_0, offset mmshufps_1, offset mmshufps_2, offset mmshufps_3, offset mmshufps_4, offset mmshufps_5, offset mmshufps_6, offset mmshufps_7, offset mmshufps_8, offset mmshufps_9, offset mmshufps_10, offset mmshufps_11, offset mmshufps_12, offset mmshufps_13, offset mmshufps_14, offset mmshufps_15, offset mmshufps_16, offset mmshufps_17, offset mmshufps_18, offset mmshufps_19, offset mmshufps_20, offset mmshufps_21, offset mmshufps_22, offset mmshufps_23, offset mmshufps_24, offset mmshufps_25
			mmshufpsiword offset mmshufps_26, offset mmshufps_27, offset mmshufps_28, offset mmshufps_29, offset mmshufps_30, offset mmshufps_31, offset mmshufps_32, offset mmshufps_33, offset mmshufps_34, offset mmshufps_35, offset mmshufps_36, offset mmshufps_37, offset mmshufps_38, offset mmshufps_39, offset mmshufps_40, offset mmshufps_41, offset mmshufps_42, offset mmshufps_43, offset mmshufps_44, offset mmshufps_45, offset mmshufps_46, offset mmshufps_47, offset mmshufps_48, offset mmshufps_49, offset mmshufps_50
			mmshufpsiword offset mmshufps_51, offset mmshufps_52, offset mmshufps_53, offset mmshufps_54, offset mmshufps_55, offset mmshufps_56, offset mmshufps_57, offset mmshufps_58, offset mmshufps_59, offset mmshufps_60, offset mmshufps_61, offset mmshufps_62, offset mmshufps_63, offset mmshufps_64, offset mmshufps_65, offset mmshufps_66, offset mmshufps_67, offset mmshufps_68, offset mmshufps_69, offset mmshufps_70, offset mmshufps_71, offset mmshufps_72, offset mmshufps_73, offset mmshufps_74, offset mmshufps_75
			mmshufpsiword offset mmshufps_76, offset mmshufps_77, offset mmshufps_78, offset mmshufps_79, offset mmshufps_80, offset mmshufps_81, offset mmshufps_82, offset mmshufps_83, offset mmshufps_84, offset mmshufps_85, offset mmshufps_86, offset mmshufps_87, offset mmshufps_88, offset mmshufps_89, offset mmshufps_90, offset mmshufps_91, offset mmshufps_92, offset mmshufps_93, offset mmshufps_94, offset mmshufps_95, offset mmshufps_96, offset mmshufps_97, offset mmshufps_98, offset mmshufps_99, offset mmshufps_100
			mmshufpsiword offset mmshufps_101, offset mmshufps_102, offset mmshufps_103, offset mmshufps_104, offset mmshufps_105, offset mmshufps_106, offset mmshufps_107, offset mmshufps_108, offset mmshufps_109, offset mmshufps_110, offset mmshufps_111, offset mmshufps_112, offset mmshufps_113, offset mmshufps_114, offset mmshufps_115, offset mmshufps_116, offset mmshufps_117, offset mmshufps_118, offset mmshufps_119, offset mmshufps_120, offset mmshufps_121, offset mmshufps_122, offset mmshufps_123, offset mmshufps_124, offset mmshufps_125
			mmshufpsiword offset mmshufps_126, offset mmshufps_127, offset mmshufps_128, offset mmshufps_129, offset mmshufps_130, offset mmshufps_131, offset mmshufps_132, offset mmshufps_133, offset mmshufps_134, offset mmshufps_135, offset mmshufps_136, offset mmshufps_137, offset mmshufps_138, offset mmshufps_139, offset mmshufps_140, offset mmshufps_141, offset mmshufps_142, offset mmshufps_143, offset mmshufps_144, offset mmshufps_145, offset mmshufps_146, offset mmshufps_147, offset mmshufps_148, offset mmshufps_149, offset mmshufps_150
			mmshufpsiword offset mmshufps_151, offset mmshufps_152, offset mmshufps_153, offset mmshufps_154, offset mmshufps_155, offset mmshufps_156, offset mmshufps_157, offset mmshufps_158, offset mmshufps_159, offset mmshufps_160, offset mmshufps_161, offset mmshufps_162, offset mmshufps_163, offset mmshufps_164, offset mmshufps_165, offset mmshufps_166, offset mmshufps_167, offset mmshufps_168, offset mmshufps_169, offset mmshufps_170, offset mmshufps_171, offset mmshufps_172, offset mmshufps_173, offset mmshufps_174, offset mmshufps_175
			mmshufpsiword offset mmshufps_176, offset mmshufps_177, offset mmshufps_178, offset mmshufps_179, offset mmshufps_180, offset mmshufps_181, offset mmshufps_182, offset mmshufps_183, offset mmshufps_184, offset mmshufps_185, offset mmshufps_186, offset mmshufps_187, offset mmshufps_188, offset mmshufps_189, offset mmshufps_190, offset mmshufps_191, offset mmshufps_192, offset mmshufps_193, offset mmshufps_194, offset mmshufps_195, offset mmshufps_196, offset mmshufps_197, offset mmshufps_198, offset mmshufps_199, offset mmshufps_200
			mmshufpsiword offset mmshufps_201, offset mmshufps_202, offset mmshufps_203, offset mmshufps_204, offset mmshufps_205, offset mmshufps_206, offset mmshufps_207, offset mmshufps_208, offset mmshufps_209, offset mmshufps_210, offset mmshufps_211, offset mmshufps_212, offset mmshufps_213, offset mmshufps_214, offset mmshufps_215, offset mmshufps_216, offset mmshufps_217, offset mmshufps_218, offset mmshufps_219, offset mmshufps_220, offset mmshufps_221, offset mmshufps_222, offset mmshufps_223, offset mmshufps_224, offset mmshufps_225
			mmshufpsiword offset mmshufps_226, offset mmshufps_227, offset mmshufps_228, offset mmshufps_229, offset mmshufps_230, offset mmshufps_231, offset mmshufps_232, offset mmshufps_233, offset mmshufps_234, offset mmshufps_235, offset mmshufps_236, offset mmshufps_237, offset mmshufps_238, offset mmshufps_239, offset mmshufps_240, offset mmshufps_241, offset mmshufps_242, offset mmshufps_243, offset mmshufps_244, offset mmshufps_245, offset mmshufps_246, offset mmshufps_247, offset mmshufps_248, offset mmshufps_249, offset mmshufps_250
			mmshufpsiword offset mmshufps_251, offset mmshufps_252, offset mmshufps_253, offset mmshufps_254, offset mmshufps_255				

			mmshufps_0 label mmshufpsword
				jmp		uXm_mm_shuffle_0000_ps
			mmshufps_1 label mmshufpsword
				jmp		uXm_mm_shuffle_0001_ps
			mmshufps_2 label mmshufpsword
				jmp		uXm_mm_shuffle_0002_ps
			mmshufps_3 label mmshufpsword
				jmp		uXm_mm_shuffle_0003_ps
			mmshufps_4 label mmshufpsword
				jmp		uXm_mm_shuffle_0010_ps
			mmshufps_5 label mmshufpsword
				jmp		uXm_mm_shuffle_0011_ps
			mmshufps_6 label mmshufpsword
				jmp		uXm_mm_shuffle_0012_ps
			mmshufps_7 label mmshufpsword
				jmp		uXm_mm_shuffle_0013_ps
			mmshufps_8 label mmshufpsword
				jmp		uXm_mm_shuffle_0020_ps
			mmshufps_9 label mmshufpsword
				jmp		uXm_mm_shuffle_0021_ps
			mmshufps_10 label mmshufpsword
				jmp		uXm_mm_shuffle_0022_ps
			mmshufps_11 label mmshufpsword
				jmp		uXm_mm_shuffle_0023_ps
			mmshufps_12 label mmshufpsword
				jmp		uXm_mm_shuffle_0030_ps
			mmshufps_13 label mmshufpsword
				jmp		uXm_mm_shuffle_0031_ps
			mmshufps_14 label mmshufpsword
				jmp		uXm_mm_shuffle_0032_ps
			mmshufps_15 label mmshufpsword
				jmp		uXm_mm_shuffle_0033_ps
			mmshufps_16 label mmshufpsword
				jmp		uXm_mm_shuffle_0100_ps
			mmshufps_17 label mmshufpsword
				jmp		uXm_mm_shuffle_0101_ps
			mmshufps_18 label mmshufpsword
				jmp		uXm_mm_shuffle_0102_ps
			mmshufps_19 label mmshufpsword
				jmp		uXm_mm_shuffle_0103_ps
			mmshufps_20 label mmshufpsword
				jmp		uXm_mm_shuffle_0110_ps
			mmshufps_21 label mmshufpsword
				jmp		uXm_mm_shuffle_0111_ps
			mmshufps_22 label mmshufpsword
				jmp		uXm_mm_shuffle_0112_ps
			mmshufps_23 label mmshufpsword
				jmp		uXm_mm_shuffle_0113_ps
			mmshufps_24 label mmshufpsword
				jmp		uXm_mm_shuffle_0120_ps
			mmshufps_25 label mmshufpsword
				jmp		uXm_mm_shuffle_0121_ps
			mmshufps_26 label mmshufpsword
				jmp		uXm_mm_shuffle_0122_ps
			mmshufps_27 label mmshufpsword
				jmp		uXm_mm_shuffle_0123_ps
			mmshufps_28 label mmshufpsword
				jmp		uXm_mm_shuffle_0130_ps
			mmshufps_29 label mmshufpsword
				jmp		uXm_mm_shuffle_0131_ps
			mmshufps_30 label mmshufpsword
				jmp		uXm_mm_shuffle_0132_ps
			mmshufps_31 label mmshufpsword
				jmp		uXm_mm_shuffle_0133_ps
			mmshufps_32 label mmshufpsword
				jmp		uXm_mm_shuffle_0200_ps
			mmshufps_33 label mmshufpsword
				jmp		uXm_mm_shuffle_0201_ps
			mmshufps_34 label mmshufpsword
				jmp		uXm_mm_shuffle_0202_ps
			mmshufps_35 label mmshufpsword
				jmp		uXm_mm_shuffle_0203_ps
			mmshufps_36 label mmshufpsword
				jmp		uXm_mm_shuffle_0210_ps
			mmshufps_37 label mmshufpsword
				jmp		uXm_mm_shuffle_0211_ps
			mmshufps_38 label mmshufpsword
				jmp		uXm_mm_shuffle_0212_ps
			mmshufps_39 label mmshufpsword
				jmp		uXm_mm_shuffle_0213_ps
			mmshufps_40 label mmshufpsword
				jmp		uXm_mm_shuffle_0220_ps
			mmshufps_41 label mmshufpsword
				jmp		uXm_mm_shuffle_0221_ps
			mmshufps_42 label mmshufpsword
				jmp		uXm_mm_shuffle_0222_ps
			mmshufps_43 label mmshufpsword
				jmp		uXm_mm_shuffle_0223_ps
			mmshufps_44 label mmshufpsword
				jmp		uXm_mm_shuffle_0230_ps
			mmshufps_45 label mmshufpsword
				jmp		uXm_mm_shuffle_0231_ps
			mmshufps_46 label mmshufpsword
				jmp		uXm_mm_shuffle_0232_ps
			mmshufps_47 label mmshufpsword
				jmp		uXm_mm_shuffle_0233_ps
			mmshufps_48 label mmshufpsword
				jmp		uXm_mm_shuffle_0300_ps
			mmshufps_49 label mmshufpsword
				jmp		uXm_mm_shuffle_0301_ps
			mmshufps_50 label mmshufpsword
				jmp		uXm_mm_shuffle_0302_ps
			mmshufps_51 label mmshufpsword
				jmp		uXm_mm_shuffle_0303_ps
			mmshufps_52 label mmshufpsword
				jmp		uXm_mm_shuffle_0310_ps
			mmshufps_53 label mmshufpsword
				jmp		uXm_mm_shuffle_0311_ps
			mmshufps_54 label mmshufpsword
				jmp		uXm_mm_shuffle_0312_ps
			mmshufps_55 label mmshufpsword
				jmp		uXm_mm_shuffle_0313_ps
			mmshufps_56 label mmshufpsword
				jmp		uXm_mm_shuffle_0320_ps
			mmshufps_57 label mmshufpsword
				jmp		uXm_mm_shuffle_0321_ps
			mmshufps_58 label mmshufpsword
				jmp		uXm_mm_shuffle_0322_ps
			mmshufps_59 label mmshufpsword
				jmp		uXm_mm_shuffle_0323_ps
			mmshufps_60 label mmshufpsword
				jmp		uXm_mm_shuffle_0330_ps
			mmshufps_61 label mmshufpsword
				jmp		uXm_mm_shuffle_0331_ps
			mmshufps_62 label mmshufpsword
				jmp		uXm_mm_shuffle_0332_ps
			mmshufps_63 label mmshufpsword
				jmp		uXm_mm_shuffle_0333_ps
			mmshufps_64 label mmshufpsword
				jmp		uXm_mm_shuffle_1000_ps
			mmshufps_65 label mmshufpsword
				jmp		uXm_mm_shuffle_1001_ps
			mmshufps_66 label mmshufpsword
				jmp		uXm_mm_shuffle_1002_ps
			mmshufps_67 label mmshufpsword
				jmp		uXm_mm_shuffle_1003_ps
			mmshufps_68 label mmshufpsword
				jmp		uXm_mm_shuffle_1010_ps
			mmshufps_69 label mmshufpsword
				jmp		uXm_mm_shuffle_1011_ps
			mmshufps_70 label mmshufpsword
				jmp		uXm_mm_shuffle_1012_ps
			mmshufps_71 label mmshufpsword
				jmp		uXm_mm_shuffle_1013_ps
			mmshufps_72 label mmshufpsword
				jmp		uXm_mm_shuffle_1020_ps
			mmshufps_73 label mmshufpsword
				jmp		uXm_mm_shuffle_1021_ps
			mmshufps_74 label mmshufpsword
				jmp		uXm_mm_shuffle_1022_ps
			mmshufps_75 label mmshufpsword
				jmp		uXm_mm_shuffle_1023_ps
			mmshufps_76 label mmshufpsword
				jmp		uXm_mm_shuffle_1030_ps
			mmshufps_77 label mmshufpsword
				jmp		uXm_mm_shuffle_1031_ps
			mmshufps_78 label mmshufpsword
				jmp		uXm_mm_shuffle_1032_ps
			mmshufps_79 label mmshufpsword
				jmp		uXm_mm_shuffle_1033_ps
			mmshufps_80 label mmshufpsword
				jmp		uXm_mm_shuffle_1100_ps
			mmshufps_81 label mmshufpsword
				jmp		uXm_mm_shuffle_1101_ps
			mmshufps_82 label mmshufpsword
				jmp		uXm_mm_shuffle_1102_ps
			mmshufps_83 label mmshufpsword
				jmp		uXm_mm_shuffle_1103_ps
			mmshufps_84 label mmshufpsword
				jmp		uXm_mm_shuffle_1110_ps
			mmshufps_85 label mmshufpsword
				jmp		uXm_mm_shuffle_1111_ps
			mmshufps_86 label mmshufpsword
				jmp		uXm_mm_shuffle_1112_ps
			mmshufps_87 label mmshufpsword
				jmp		uXm_mm_shuffle_1113_ps
			mmshufps_88 label mmshufpsword
				jmp		uXm_mm_shuffle_1120_ps
			mmshufps_89 label mmshufpsword
				jmp		uXm_mm_shuffle_1121_ps
			mmshufps_90 label mmshufpsword
				jmp		uXm_mm_shuffle_1122_ps
			mmshufps_91 label mmshufpsword
				jmp		uXm_mm_shuffle_1123_ps
			mmshufps_92 label mmshufpsword
				jmp		uXm_mm_shuffle_1130_ps
			mmshufps_93 label mmshufpsword
				jmp		uXm_mm_shuffle_1131_ps
			mmshufps_94 label mmshufpsword
				jmp		uXm_mm_shuffle_1132_ps
			mmshufps_95 label mmshufpsword
				jmp		uXm_mm_shuffle_1133_ps
			mmshufps_96 label mmshufpsword
				jmp		uXm_mm_shuffle_1200_ps
			mmshufps_97 label mmshufpsword
				jmp		uXm_mm_shuffle_1201_ps
			mmshufps_98 label mmshufpsword
				jmp		uXm_mm_shuffle_1202_ps
			mmshufps_99 label mmshufpsword
				jmp		uXm_mm_shuffle_1203_ps
			mmshufps_100 label mmshufpsword
				jmp		uXm_mm_shuffle_1210_ps
			mmshufps_101 label mmshufpsword
				jmp		uXm_mm_shuffle_1211_ps
			mmshufps_102 label mmshufpsword
				jmp		uXm_mm_shuffle_1212_ps
			mmshufps_103 label mmshufpsword
				jmp		uXm_mm_shuffle_1213_ps
			mmshufps_104 label mmshufpsword
				jmp		uXm_mm_shuffle_1220_ps
			mmshufps_105 label mmshufpsword
				jmp		uXm_mm_shuffle_1221_ps
			mmshufps_106 label mmshufpsword
				jmp		uXm_mm_shuffle_1222_ps
			mmshufps_107 label mmshufpsword
				jmp		uXm_mm_shuffle_1223_ps
			mmshufps_108 label mmshufpsword
				jmp		uXm_mm_shuffle_1230_ps
			mmshufps_109 label mmshufpsword
				jmp		uXm_mm_shuffle_1231_ps
			mmshufps_110 label mmshufpsword
				jmp		uXm_mm_shuffle_1232_ps
			mmshufps_111 label mmshufpsword
				jmp		uXm_mm_shuffle_1233_ps
			mmshufps_112 label mmshufpsword
				jmp		uXm_mm_shuffle_1300_ps
			mmshufps_113 label mmshufpsword
				jmp		uXm_mm_shuffle_1301_ps
			mmshufps_114 label mmshufpsword
				jmp		uXm_mm_shuffle_1302_ps
			mmshufps_115 label mmshufpsword
				jmp		uXm_mm_shuffle_1303_ps
			mmshufps_116 label mmshufpsword
				jmp		uXm_mm_shuffle_1310_ps
			mmshufps_117 label mmshufpsword
				jmp		uXm_mm_shuffle_1311_ps
			mmshufps_118 label mmshufpsword
				jmp		uXm_mm_shuffle_1312_ps
			mmshufps_119 label mmshufpsword
				jmp		uXm_mm_shuffle_1313_ps
			mmshufps_120 label mmshufpsword
				jmp		uXm_mm_shuffle_1320_ps
			mmshufps_121 label mmshufpsword
				jmp		uXm_mm_shuffle_1321_ps
			mmshufps_122 label mmshufpsword
				jmp		uXm_mm_shuffle_1322_ps
			mmshufps_123 label mmshufpsword
				jmp		uXm_mm_shuffle_1323_ps
			mmshufps_124 label mmshufpsword
				jmp		uXm_mm_shuffle_1330_ps
			mmshufps_125 label mmshufpsword
				jmp		uXm_mm_shuffle_1331_ps
			mmshufps_126 label mmshufpsword
				jmp		uXm_mm_shuffle_1332_ps
			mmshufps_127 label mmshufpsword
				jmp		uXm_mm_shuffle_1333_ps
			mmshufps_128 label mmshufpsword
				jmp		uXm_mm_shuffle_2000_ps
			mmshufps_129 label mmshufpsword
				jmp		uXm_mm_shuffle_2001_ps
			mmshufps_130 label mmshufpsword
				jmp		uXm_mm_shuffle_2002_ps
			mmshufps_131 label mmshufpsword
				jmp		uXm_mm_shuffle_2003_ps
			mmshufps_132 label mmshufpsword
				jmp		uXm_mm_shuffle_2010_ps
			mmshufps_133 label mmshufpsword
				jmp		uXm_mm_shuffle_2011_ps
			mmshufps_134 label mmshufpsword
				jmp		uXm_mm_shuffle_2012_ps
			mmshufps_135 label mmshufpsword
				jmp		uXm_mm_shuffle_2013_ps
			mmshufps_136 label mmshufpsword
				jmp		uXm_mm_shuffle_2020_ps
			mmshufps_137 label mmshufpsword
				jmp		uXm_mm_shuffle_2021_ps
			mmshufps_138 label mmshufpsword
				jmp		uXm_mm_shuffle_2022_ps
			mmshufps_139 label mmshufpsword
				jmp		uXm_mm_shuffle_2023_ps
			mmshufps_140 label mmshufpsword
				jmp		uXm_mm_shuffle_2030_ps
			mmshufps_141 label mmshufpsword
				jmp		uXm_mm_shuffle_2031_ps
			mmshufps_142 label mmshufpsword
				jmp		uXm_mm_shuffle_2032_ps
			mmshufps_143 label mmshufpsword
				jmp		uXm_mm_shuffle_2033_ps
			mmshufps_144 label mmshufpsword
				jmp		uXm_mm_shuffle_2100_ps
			mmshufps_145 label mmshufpsword
				jmp		uXm_mm_shuffle_2101_ps
			mmshufps_146 label mmshufpsword
				jmp		uXm_mm_shuffle_2102_ps
			mmshufps_147 label mmshufpsword
				jmp		uXm_mm_shuffle_2103_ps
			mmshufps_148 label mmshufpsword
				jmp		uXm_mm_shuffle_2110_ps
			mmshufps_149 label mmshufpsword
				jmp		uXm_mm_shuffle_2111_ps
			mmshufps_150 label mmshufpsword
				jmp		uXm_mm_shuffle_2112_ps
			mmshufps_151 label mmshufpsword
				jmp		uXm_mm_shuffle_2113_ps
			mmshufps_152 label mmshufpsword
				jmp		uXm_mm_shuffle_2120_ps
			mmshufps_153 label mmshufpsword
				jmp		uXm_mm_shuffle_2121_ps
			mmshufps_154 label mmshufpsword
				jmp		uXm_mm_shuffle_2122_ps
			mmshufps_155 label mmshufpsword
				jmp		uXm_mm_shuffle_2123_ps
			mmshufps_156 label mmshufpsword
				jmp		uXm_mm_shuffle_2130_ps
			mmshufps_157 label mmshufpsword
				jmp		uXm_mm_shuffle_2131_ps
			mmshufps_158 label mmshufpsword
				jmp		uXm_mm_shuffle_2132_ps
			mmshufps_159 label mmshufpsword
				jmp		uXm_mm_shuffle_2133_ps
			mmshufps_160 label mmshufpsword
				jmp		uXm_mm_shuffle_2200_ps
			mmshufps_161 label mmshufpsword
				jmp		uXm_mm_shuffle_2201_ps
			mmshufps_162 label mmshufpsword
				jmp		uXm_mm_shuffle_2202_ps
			mmshufps_163 label mmshufpsword
				jmp		uXm_mm_shuffle_2203_ps
			mmshufps_164 label mmshufpsword
				jmp		uXm_mm_shuffle_2210_ps
			mmshufps_165 label mmshufpsword
				jmp		uXm_mm_shuffle_2211_ps
			mmshufps_166 label mmshufpsword
				jmp		uXm_mm_shuffle_2212_ps
			mmshufps_167 label mmshufpsword
				jmp		uXm_mm_shuffle_2213_ps
			mmshufps_168 label mmshufpsword
				jmp		uXm_mm_shuffle_2220_ps
			mmshufps_169 label mmshufpsword
				jmp		uXm_mm_shuffle_2221_ps
			mmshufps_170 label mmshufpsword
				jmp		uXm_mm_shuffle_2222_ps
			mmshufps_171 label mmshufpsword
				jmp		uXm_mm_shuffle_2223_ps
			mmshufps_172 label mmshufpsword
				jmp		uXm_mm_shuffle_2230_ps
			mmshufps_173 label mmshufpsword
				jmp		uXm_mm_shuffle_2231_ps
			mmshufps_174 label mmshufpsword
				jmp		uXm_mm_shuffle_2232_ps
			mmshufps_175 label mmshufpsword
				jmp		uXm_mm_shuffle_2233_ps
			mmshufps_176 label mmshufpsword
				jmp		uXm_mm_shuffle_2300_ps
			mmshufps_177 label mmshufpsword
				jmp		uXm_mm_shuffle_2301_ps
			mmshufps_178 label mmshufpsword
				jmp		uXm_mm_shuffle_2302_ps
			mmshufps_179 label mmshufpsword
				jmp		uXm_mm_shuffle_2303_ps
			mmshufps_180 label mmshufpsword
				jmp		uXm_mm_shuffle_2310_ps
			mmshufps_181 label mmshufpsword
				jmp		uXm_mm_shuffle_2311_ps
			mmshufps_182 label mmshufpsword
				jmp		uXm_mm_shuffle_2312_ps
			mmshufps_183 label mmshufpsword
				jmp		uXm_mm_shuffle_2313_ps
			mmshufps_184 label mmshufpsword
				jmp		uXm_mm_shuffle_2320_ps
			mmshufps_185 label mmshufpsword
				jmp		uXm_mm_shuffle_2321_ps
			mmshufps_186 label mmshufpsword
				jmp		uXm_mm_shuffle_2322_ps
			mmshufps_187 label mmshufpsword
				jmp		uXm_mm_shuffle_2323_ps
			mmshufps_188 label mmshufpsword
				jmp		uXm_mm_shuffle_2330_ps
			mmshufps_189 label mmshufpsword
				jmp		uXm_mm_shuffle_2331_ps
			mmshufps_190 label mmshufpsword
				jmp		uXm_mm_shuffle_2332_ps
			mmshufps_191 label mmshufpsword
				jmp		uXm_mm_shuffle_2333_ps
			mmshufps_192 label mmshufpsword
				jmp		uXm_mm_shuffle_3000_ps
			mmshufps_193 label mmshufpsword
				jmp		uXm_mm_shuffle_3001_ps
			mmshufps_194 label mmshufpsword
				jmp		uXm_mm_shuffle_3002_ps
			mmshufps_195 label mmshufpsword
				jmp		uXm_mm_shuffle_3003_ps
			mmshufps_196 label mmshufpsword
				jmp		uXm_mm_shuffle_3010_ps
			mmshufps_197 label mmshufpsword
				jmp		uXm_mm_shuffle_3011_ps
			mmshufps_198 label mmshufpsword
				jmp		uXm_mm_shuffle_3012_ps
			mmshufps_199 label mmshufpsword
				jmp		uXm_mm_shuffle_3013_ps
			mmshufps_200 label mmshufpsword
				jmp		uXm_mm_shuffle_3020_ps
			mmshufps_201 label mmshufpsword
				jmp		uXm_mm_shuffle_3021_ps
			mmshufps_202 label mmshufpsword
				jmp		uXm_mm_shuffle_3022_ps
			mmshufps_203 label mmshufpsword
				jmp		uXm_mm_shuffle_3023_ps
			mmshufps_204 label mmshufpsword
				jmp		uXm_mm_shuffle_3030_ps
			mmshufps_205 label mmshufpsword
				jmp		uXm_mm_shuffle_3031_ps
			mmshufps_206 label mmshufpsword
				jmp		uXm_mm_shuffle_3032_ps
			mmshufps_207 label mmshufpsword
				jmp		uXm_mm_shuffle_3033_ps
			mmshufps_208 label mmshufpsword
				jmp		uXm_mm_shuffle_3100_ps
			mmshufps_209 label mmshufpsword
				jmp		uXm_mm_shuffle_3101_ps
			mmshufps_210 label mmshufpsword
				jmp		uXm_mm_shuffle_3102_ps
			mmshufps_211 label mmshufpsword
				jmp		uXm_mm_shuffle_3103_ps
			mmshufps_212 label mmshufpsword
				jmp		uXm_mm_shuffle_3110_ps
			mmshufps_213 label mmshufpsword
				jmp		uXm_mm_shuffle_3111_ps
			mmshufps_214 label mmshufpsword
				jmp		uXm_mm_shuffle_3112_ps
			mmshufps_215 label mmshufpsword
				jmp		uXm_mm_shuffle_3113_ps
			mmshufps_216 label mmshufpsword
				jmp		uXm_mm_shuffle_3120_ps
			mmshufps_217 label mmshufpsword
				jmp		uXm_mm_shuffle_3121_ps
			mmshufps_218 label mmshufpsword
				jmp		uXm_mm_shuffle_3122_ps
			mmshufps_219 label mmshufpsword
				jmp		uXm_mm_shuffle_3123_ps
			mmshufps_220 label mmshufpsword
				jmp		uXm_mm_shuffle_3130_ps
			mmshufps_221 label mmshufpsword
				jmp		uXm_mm_shuffle_3131_ps
			mmshufps_222 label mmshufpsword
				jmp		uXm_mm_shuffle_3132_ps
			mmshufps_223 label mmshufpsword
				jmp		uXm_mm_shuffle_3133_ps
			mmshufps_224 label mmshufpsword
				jmp		uXm_mm_shuffle_3200_ps
			mmshufps_225 label mmshufpsword
				jmp		uXm_mm_shuffle_3201_ps
			mmshufps_226 label mmshufpsword
				jmp		uXm_mm_shuffle_3202_ps
			mmshufps_227 label mmshufpsword
				jmp		uXm_mm_shuffle_3203_ps
			mmshufps_228 label mmshufpsword
				jmp		uXm_mm_shuffle_3210_ps
			mmshufps_229 label mmshufpsword
				jmp		uXm_mm_shuffle_3211_ps
			mmshufps_230 label mmshufpsword
				jmp		uXm_mm_shuffle_3212_ps
			mmshufps_231 label mmshufpsword
				jmp		uXm_mm_shuffle_3213_ps
			mmshufps_232 label mmshufpsword
				jmp		uXm_mm_shuffle_3220_ps
			mmshufps_233 label mmshufpsword
				jmp		uXm_mm_shuffle_3221_ps
			mmshufps_234 label mmshufpsword
				jmp		uXm_mm_shuffle_3222_ps
			mmshufps_235 label mmshufpsword
				jmp		uXm_mm_shuffle_3223_ps
			mmshufps_236 label mmshufpsword
				jmp		uXm_mm_shuffle_3230_ps
			mmshufps_237 label mmshufpsword
				jmp		uXm_mm_shuffle_3231_ps
			mmshufps_238 label mmshufpsword
				jmp		uXm_mm_shuffle_3232_ps
			mmshufps_239 label mmshufpsword
				jmp		uXm_mm_shuffle_3233_ps
			mmshufps_240 label mmshufpsword
				jmp		uXm_mm_shuffle_3300_ps
			mmshufps_241 label mmshufpsword
				jmp		uXm_mm_shuffle_3301_ps
			mmshufps_242 label mmshufpsword
				jmp		uXm_mm_shuffle_3302_ps
			mmshufps_243 label mmshufpsword
				jmp		uXm_mm_shuffle_3303_ps
			mmshufps_244 label mmshufpsword
				jmp		uXm_mm_shuffle_3310_ps
			mmshufps_245 label mmshufpsword
				jmp		uXm_mm_shuffle_3311_ps
			mmshufps_246 label mmshufpsword
				jmp		uXm_mm_shuffle_3312_ps
			mmshufps_247 label mmshufpsword
				jmp		uXm_mm_shuffle_3313_ps
			mmshufps_248 label mmshufpsword
				jmp		uXm_mm_shuffle_3320_ps
			mmshufps_249 label mmshufpsword
				jmp		uXm_mm_shuffle_3321_ps
			mmshufps_250 label mmshufpsword
				jmp		uXm_mm_shuffle_3322_ps
			mmshufps_251 label mmshufpsword
				jmp		uXm_mm_shuffle_3323_ps
			mmshufps_252 label mmshufpsword
				jmp		uXm_mm_shuffle_3330_ps
			mmshufps_253 label mmshufpsword
				jmp		uXm_mm_shuffle_3331_ps
			mmshufps_254 label mmshufpsword
				jmp		uXm_mm_shuffle_3332_ps
			mmshufps_255 label mmshufpsword
				jmp		uXm_mm_shuffle_3333_ps

uXm_mm_shuffle_ps endp

	end
