
	include uXmx86asm.inc
	
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
			push			ebp
			mov				ebp,			esp
			sub				esp,			16*2+4					; allocate space on stack
			movups			[ebp-16],		xmm0					; push xmm param 1
			movups			[ebp-16*2],		xmm1					; push xmm param 2
			mov				[ebp-16*2+4],	dparam3					; push param 3
			db		0fh, 0c6h, 3h									; shufps imm encoding
			mov				dparam3,		[ebp-16*2+4]			; pop param 3
			movups			xmm1,			[ebp-16*2]				; pop xmm param 2
			movups			xmm0,			[ebp-16]				; pop xmm param 1
			add				esp,			16*2+4					; deallocate space on stack
			mov				esp,			ebp
			pop				ebp
		else
			push			rbp
			mov				rbp,			rsp
			sub				rsp,			16*2+4					; allocate space on stack
			movups			[rbp-16],		xmm0					; push xmm param 1
			movups			[rbp-16*2],		xmm1					; push xmm param 2
			mov				[rbp-16*2+4],	dparam3					; push param 3
			db		0fh, 0c6h, 3h									; shufps imm encoding
			mov				dparam3,		[rbp-16*2+4]			; pop param 3
			movups			xmm1,			[rbp-16*2]				; pop xmm param 2
			movups			xmm0,			[rbp-16]				; pop xmm param 1
			add				rsp,			16*2+4					; deallocate space on stack
			mov				rsp,			rbp
			pop				rbp
		endif			

		ret
uXm_mm_shuffle_ps endp

	end
