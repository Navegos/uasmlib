
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
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam3]
			lea				ebx,			[shpsjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			shpsjmptable
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
			lea				rbx,			[shpsjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			shpsjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			shpsword		textequ		<dword>
			shpsiword		textequ		<dd>
		else
			shpsword		textequ		<qword>
			shpsiword		textequ		<dq>
		endif
		
		shpsjmptable label shpsword
			shpsiword	offset shps_0, offset shps_1, offset shps_2, offset shps_3, offset shps_4, offset shps_5, offset shps_6, offset shps_7, offset shps_8, offset shps_9, offset shps_10, offset shps_11, offset shps_12, offset shps_13, offset shps_14, offset shps_15, offset shps_16, offset shps_17, offset shps_18, offset shps_19, offset shps_20, offset shps_21, offset shps_22, offset shps_23, offset shps_24, offset shps_25, offset shps_26, offset shps_27, offset shps_28, offset shps_29, offset shps_30, offset shps_31, offset shps_32, offset shps_33, offset shps_34, offset shps_35, offset shps_36, offset shps_37, offset shps_38, offset shps_39, offset shps_40, offset shps_41, offset shps_42, offset shps_43, offset shps_44, offset shps_45, offset shps_46, offset shps_47, offset shps_48, offset shps_49, offset shps_50
			shpsiword	offset shps_51, offset shps_52, offset shps_53, offset shps_54, offset shps_55, offset shps_56, offset shps_57, offset shps_58, offset shps_59, offset shps_60, offset shps_61, offset shps_62, offset shps_63, offset shps_64, offset shps_65, offset shps_66, offset shps_67, offset shps_68, offset shps_69, offset shps_70, offset shps_71, offset shps_72, offset shps_73, offset shps_74, offset shps_75, offset shps_76, offset shps_77, offset shps_78, offset shps_79, offset shps_80, offset shps_81, offset shps_82, offset shps_83, offset shps_84, offset shps_85, offset shps_86, offset shps_87, offset shps_88, offset shps_89, offset shps_90, offset shps_91, offset shps_92, offset shps_93, offset shps_94, offset shps_95, offset shps_96, offset shps_97, offset shps_98, offset shps_99, offset shps_100
			shpsiword	offset shps_101, offset shps_102, offset shps_103, offset shps_104, offset shps_105, offset shps_106, offset shps_107, offset shps_108, offset shps_109, offset shps_110, offset shps_111, offset shps_112, offset shps_113, offset shps_114, offset shps_115, offset shps_116, offset shps_117, offset shps_118, offset shps_119, offset shps_120, offset shps_121, offset shps_122, offset shps_123, offset shps_124, offset shps_125, offset shps_126, offset shps_127, offset shps_128, offset shps_129, offset shps_130, offset shps_131, offset shps_132, offset shps_133, offset shps_134, offset shps_135, offset shps_136, offset shps_137, offset shps_138, offset shps_139, offset shps_140, offset shps_141, offset shps_142, offset shps_143, offset shps_144, offset shps_145, offset shps_146, offset shps_147, offset shps_148, offset shps_149, offset shps_150
			shpsiword	offset shps_151, offset shps_152, offset shps_153, offset shps_154, offset shps_155, offset shps_156, offset shps_157, offset shps_158, offset shps_159, offset shps_160, offset shps_161, offset shps_162, offset shps_163, offset shps_164, offset shps_165, offset shps_166, offset shps_167, offset shps_168, offset shps_169, offset shps_170, offset shps_171, offset shps_172, offset shps_173, offset shps_174, offset shps_175, offset shps_176, offset shps_177, offset shps_178, offset shps_179, offset shps_180, offset shps_181, offset shps_182, offset shps_183, offset shps_184, offset shps_185, offset shps_186, offset shps_187, offset shps_188, offset shps_189, offset shps_190, offset shps_191, offset shps_192, offset shps_193, offset shps_194, offset shps_195, offset shps_196, offset shps_197, offset shps_198, offset shps_199, offset shps_200
			shpsiword	offset shps_201, offset shps_202, offset shps_203, offset shps_204, offset shps_205, offset shps_206, offset shps_207, offset shps_208, offset shps_209, offset shps_210, offset shps_211, offset shps_212, offset shps_213, offset shps_214, offset shps_215, offset shps_216, offset shps_217, offset shps_218, offset shps_219, offset shps_220, offset shps_221, offset shps_222, offset shps_223, offset shps_224, offset shps_225, offset shps_226, offset shps_227, offset shps_228, offset shps_229, offset shps_230, offset shps_231, offset shps_232, offset shps_233, offset shps_234, offset shps_235, offset shps_236, offset shps_237, offset shps_238, offset shps_239, offset shps_240, offset shps_241, offset shps_242, offset shps_243, offset shps_244, offset shps_245, offset shps_246, offset shps_247, offset shps_248, offset shps_249, offset shps_250
			shpsiword	offset shps_251, offset shps_252, offset shps_253, offset shps_254, offset shps_255				

			shps_0 label shpsword
				jmp		uXm_mm_shuffle_0000_ps
			shps_1 label shpsword
				jmp		uXm_mm_shuffle_0001_ps
			shps_2 label shpsword
				jmp		uXm_mm_shuffle_0002_ps
			shps_3 label shpsword
				jmp		uXm_mm_shuffle_0003_ps
			shps_4 label shpsword
				jmp		uXm_mm_shuffle_0010_ps
			shps_5 label shpsword
				jmp		uXm_mm_shuffle_0011_ps
			shps_6 label shpsword
				jmp		uXm_mm_shuffle_0012_ps
			shps_7 label shpsword
				jmp		uXm_mm_shuffle_0013_ps
			shps_8 label shpsword
				jmp		uXm_mm_shuffle_0020_ps
			shps_9 label shpsword
				jmp		uXm_mm_shuffle_0021_ps
			shps_10 label shpsword
				jmp		uXm_mm_shuffle_0022_ps
			shps_11 label shpsword
				jmp		uXm_mm_shuffle_0023_ps
			shps_12 label shpsword
				jmp		uXm_mm_shuffle_0030_ps
			shps_13 label shpsword
				jmp		uXm_mm_shuffle_0031_ps
			shps_14 label shpsword
				jmp		uXm_mm_shuffle_0032_ps
			shps_15 label shpsword
				jmp		uXm_mm_shuffle_0033_ps
			shps_16 label shpsword
				jmp		uXm_mm_shuffle_0100_ps
			shps_17 label shpsword
				jmp		uXm_mm_shuffle_0101_ps
			shps_18 label shpsword
				jmp		uXm_mm_shuffle_0102_ps
			shps_19 label shpsword
				jmp		uXm_mm_shuffle_0103_ps
			shps_20 label shpsword
				jmp		uXm_mm_shuffle_0110_ps
			shps_21 label shpsword
				jmp		uXm_mm_shuffle_0111_ps
			shps_22 label shpsword
				jmp		uXm_mm_shuffle_0112_ps
			shps_23 label shpsword
				jmp		uXm_mm_shuffle_0113_ps
			shps_24 label shpsword
				jmp		uXm_mm_shuffle_0120_ps
			shps_25 label shpsword
				jmp		uXm_mm_shuffle_0121_ps
			shps_26 label shpsword
				jmp		uXm_mm_shuffle_0122_ps
			shps_27 label shpsword
				jmp		uXm_mm_shuffle_0123_ps
			shps_28 label shpsword
				jmp		uXm_mm_shuffle_0130_ps
			shps_29 label shpsword
				jmp		uXm_mm_shuffle_0131_ps
			shps_30 label shpsword
				jmp		uXm_mm_shuffle_0132_ps
			shps_31 label shpsword
				jmp		uXm_mm_shuffle_0133_ps
			shps_32 label shpsword
				jmp		uXm_mm_shuffle_0200_ps
			shps_33 label shpsword
				jmp		uXm_mm_shuffle_0201_ps
			shps_34 label shpsword
				jmp		uXm_mm_shuffle_0202_ps
			shps_35 label shpsword
				jmp		uXm_mm_shuffle_0203_ps
			shps_36 label shpsword
				jmp		uXm_mm_shuffle_0210_ps
			shps_37 label shpsword
				jmp		uXm_mm_shuffle_0211_ps
			shps_38 label shpsword
				jmp		uXm_mm_shuffle_0212_ps
			shps_39 label shpsword
				jmp		uXm_mm_shuffle_0213_ps
			shps_40 label shpsword
				jmp		uXm_mm_shuffle_0220_ps
			shps_41 label shpsword
				jmp		uXm_mm_shuffle_0221_ps
			shps_42 label shpsword
				jmp		uXm_mm_shuffle_0222_ps
			shps_43 label shpsword
				jmp		uXm_mm_shuffle_0223_ps
			shps_44 label shpsword
				jmp		uXm_mm_shuffle_0230_ps
			shps_45 label shpsword
				jmp		uXm_mm_shuffle_0231_ps
			shps_46 label shpsword
				jmp		uXm_mm_shuffle_0232_ps
			shps_47 label shpsword
				jmp		uXm_mm_shuffle_0233_ps
			shps_48 label shpsword
				jmp		uXm_mm_shuffle_0300_ps
			shps_49 label shpsword
				jmp		uXm_mm_shuffle_0301_ps
			shps_50 label shpsword
				jmp		uXm_mm_shuffle_0302_ps
			shps_51 label shpsword
				jmp		uXm_mm_shuffle_0303_ps
			shps_52 label shpsword
				jmp		uXm_mm_shuffle_0310_ps
			shps_53 label shpsword
				jmp		uXm_mm_shuffle_0311_ps
			shps_54 label shpsword
				jmp		uXm_mm_shuffle_0312_ps
			shps_55 label shpsword
				jmp		uXm_mm_shuffle_0313_ps
			shps_56 label shpsword
				jmp		uXm_mm_shuffle_0320_ps
			shps_57 label shpsword
				jmp		uXm_mm_shuffle_0321_ps
			shps_58 label shpsword
				jmp		uXm_mm_shuffle_0322_ps
			shps_59 label shpsword
				jmp		uXm_mm_shuffle_0323_ps
			shps_60 label shpsword
				jmp		uXm_mm_shuffle_0330_ps
			shps_61 label shpsword
				jmp		uXm_mm_shuffle_0331_ps
			shps_62 label shpsword
				jmp		uXm_mm_shuffle_0332_ps
			shps_63 label shpsword
				jmp		uXm_mm_shuffle_0333_ps
			shps_64 label shpsword
				jmp		uXm_mm_shuffle_1000_ps
			shps_65 label shpsword
				jmp		uXm_mm_shuffle_1001_ps
			shps_66 label shpsword
				jmp		uXm_mm_shuffle_1002_ps
			shps_67 label shpsword
				jmp		uXm_mm_shuffle_1003_ps
			shps_68 label shpsword
				jmp		uXm_mm_shuffle_1010_ps
			shps_69 label shpsword
				jmp		uXm_mm_shuffle_1011_ps
			shps_70 label shpsword
				jmp		uXm_mm_shuffle_1012_ps
			shps_71 label shpsword
				jmp		uXm_mm_shuffle_1013_ps
			shps_72 label shpsword
				jmp		uXm_mm_shuffle_1020_ps
			shps_73 label shpsword
				jmp		uXm_mm_shuffle_1021_ps
			shps_74 label shpsword
				jmp		uXm_mm_shuffle_1022_ps
			shps_75 label shpsword
				jmp		uXm_mm_shuffle_1023_ps
			shps_76 label shpsword
				jmp		uXm_mm_shuffle_1030_ps
			shps_77 label shpsword
				jmp		uXm_mm_shuffle_1031_ps
			shps_78 label shpsword
				jmp		uXm_mm_shuffle_1032_ps
			shps_79 label shpsword
				jmp		uXm_mm_shuffle_1033_ps
			shps_80 label shpsword
				jmp		uXm_mm_shuffle_1100_ps
			shps_81 label shpsword
				jmp		uXm_mm_shuffle_1101_ps
			shps_82 label shpsword
				jmp		uXm_mm_shuffle_1102_ps
			shps_83 label shpsword
				jmp		uXm_mm_shuffle_1103_ps
			shps_84 label shpsword
				jmp		uXm_mm_shuffle_1110_ps
			shps_85 label shpsword
				jmp		uXm_mm_shuffle_1111_ps
			shps_86 label shpsword
				jmp		uXm_mm_shuffle_1112_ps
			shps_87 label shpsword
				jmp		uXm_mm_shuffle_1113_ps
			shps_88 label shpsword
				jmp		uXm_mm_shuffle_1120_ps
			shps_89 label shpsword
				jmp		uXm_mm_shuffle_1121_ps
			shps_90 label shpsword
				jmp		uXm_mm_shuffle_1122_ps
			shps_91 label shpsword
				jmp		uXm_mm_shuffle_1123_ps
			shps_92 label shpsword
				jmp		uXm_mm_shuffle_1130_ps
			shps_93 label shpsword
				jmp		uXm_mm_shuffle_1131_ps
			shps_94 label shpsword
				jmp		uXm_mm_shuffle_1132_ps
			shps_95 label shpsword
				jmp		uXm_mm_shuffle_1133_ps
			shps_96 label shpsword
				jmp		uXm_mm_shuffle_1200_ps
			shps_97 label shpsword
				jmp		uXm_mm_shuffle_1201_ps
			shps_98 label shpsword
				jmp		uXm_mm_shuffle_1202_ps
			shps_99 label shpsword
				jmp		uXm_mm_shuffle_1203_ps
			shps_100 label shpsword
				jmp		uXm_mm_shuffle_1210_ps
			shps_101 label shpsword
				jmp		uXm_mm_shuffle_1211_ps
			shps_102 label shpsword
				jmp		uXm_mm_shuffle_1212_ps
			shps_103 label shpsword
				jmp		uXm_mm_shuffle_1213_ps
			shps_104 label shpsword
				jmp		uXm_mm_shuffle_1220_ps
			shps_105 label shpsword
				jmp		uXm_mm_shuffle_1221_ps
			shps_106 label shpsword
				jmp		uXm_mm_shuffle_1222_ps
			shps_107 label shpsword
				jmp		uXm_mm_shuffle_1223_ps
			shps_108 label shpsword
				jmp		uXm_mm_shuffle_1230_ps
			shps_109 label shpsword
				jmp		uXm_mm_shuffle_1231_ps
			shps_110 label shpsword
				jmp		uXm_mm_shuffle_1232_ps
			shps_111 label shpsword
				jmp		uXm_mm_shuffle_1233_ps
			shps_112 label shpsword
				jmp		uXm_mm_shuffle_1300_ps
			shps_113 label shpsword
				jmp		uXm_mm_shuffle_1301_ps
			shps_114 label shpsword
				jmp		uXm_mm_shuffle_1302_ps
			shps_115 label shpsword
				jmp		uXm_mm_shuffle_1303_ps
			shps_116 label shpsword
				jmp		uXm_mm_shuffle_1310_ps
			shps_117 label shpsword
				jmp		uXm_mm_shuffle_1311_ps
			shps_118 label shpsword
				jmp		uXm_mm_shuffle_1312_ps
			shps_119 label shpsword
				jmp		uXm_mm_shuffle_1313_ps
			shps_120 label shpsword
				jmp		uXm_mm_shuffle_1320_ps
			shps_121 label shpsword
				jmp		uXm_mm_shuffle_1321_ps
			shps_122 label shpsword
				jmp		uXm_mm_shuffle_1322_ps
			shps_123 label shpsword
				jmp		uXm_mm_shuffle_1323_ps
			shps_124 label shpsword
				jmp		uXm_mm_shuffle_1330_ps
			shps_125 label shpsword
				jmp		uXm_mm_shuffle_1331_ps
			shps_126 label shpsword
				jmp		uXm_mm_shuffle_1332_ps
			shps_127 label shpsword
				jmp		uXm_mm_shuffle_1333_ps
			shps_128 label shpsword
				jmp		uXm_mm_shuffle_2000_ps
			shps_129 label shpsword
				jmp		uXm_mm_shuffle_2001_ps
			shps_130 label shpsword
				jmp		uXm_mm_shuffle_2002_ps
			shps_131 label shpsword
				jmp		uXm_mm_shuffle_2003_ps
			shps_132 label shpsword
				jmp		uXm_mm_shuffle_2010_ps
			shps_133 label shpsword
				jmp		uXm_mm_shuffle_2011_ps
			shps_134 label shpsword
				jmp		uXm_mm_shuffle_2012_ps
			shps_135 label shpsword
				jmp		uXm_mm_shuffle_2013_ps
			shps_136 label shpsword
				jmp		uXm_mm_shuffle_2020_ps
			shps_137 label shpsword
				jmp		uXm_mm_shuffle_2021_ps
			shps_138 label shpsword
				jmp		uXm_mm_shuffle_2022_ps
			shps_139 label shpsword
				jmp		uXm_mm_shuffle_2023_ps
			shps_140 label shpsword
				jmp		uXm_mm_shuffle_2030_ps
			shps_141 label shpsword
				jmp		uXm_mm_shuffle_2031_ps
			shps_142 label shpsword
				jmp		uXm_mm_shuffle_2032_ps
			shps_143 label shpsword
				jmp		uXm_mm_shuffle_2033_ps
			shps_144 label shpsword
				jmp		uXm_mm_shuffle_2100_ps
			shps_145 label shpsword
				jmp		uXm_mm_shuffle_2101_ps
			shps_146 label shpsword
				jmp		uXm_mm_shuffle_2102_ps
			shps_147 label shpsword
				jmp		uXm_mm_shuffle_2103_ps
			shps_148 label shpsword
				jmp		uXm_mm_shuffle_2110_ps
			shps_149 label shpsword
				jmp		uXm_mm_shuffle_2111_ps
			shps_150 label shpsword
				jmp		uXm_mm_shuffle_2112_ps
			shps_151 label shpsword
				jmp		uXm_mm_shuffle_2113_ps
			shps_152 label shpsword
				jmp		uXm_mm_shuffle_2120_ps
			shps_153 label shpsword
				jmp		uXm_mm_shuffle_2121_ps
			shps_154 label shpsword
				jmp		uXm_mm_shuffle_2122_ps
			shps_155 label shpsword
				jmp		uXm_mm_shuffle_2123_ps
			shps_156 label shpsword
				jmp		uXm_mm_shuffle_2130_ps
			shps_157 label shpsword
				jmp		uXm_mm_shuffle_2131_ps
			shps_158 label shpsword
				jmp		uXm_mm_shuffle_2132_ps
			shps_159 label shpsword
				jmp		uXm_mm_shuffle_2133_ps
			shps_160 label shpsword
				jmp		uXm_mm_shuffle_2200_ps
			shps_161 label shpsword
				jmp		uXm_mm_shuffle_2201_ps
			shps_162 label shpsword
				jmp		uXm_mm_shuffle_2202_ps
			shps_163 label shpsword
				jmp		uXm_mm_shuffle_2203_ps
			shps_164 label shpsword
				jmp		uXm_mm_shuffle_2210_ps
			shps_165 label shpsword
				jmp		uXm_mm_shuffle_2211_ps
			shps_166 label shpsword
				jmp		uXm_mm_shuffle_2212_ps
			shps_167 label shpsword
				jmp		uXm_mm_shuffle_2213_ps
			shps_168 label shpsword
				jmp		uXm_mm_shuffle_2220_ps
			shps_169 label shpsword
				jmp		uXm_mm_shuffle_2221_ps
			shps_170 label shpsword
				jmp		uXm_mm_shuffle_2222_ps
			shps_171 label shpsword
				jmp		uXm_mm_shuffle_2223_ps
			shps_172 label shpsword
				jmp		uXm_mm_shuffle_2230_ps
			shps_173 label shpsword
				jmp		uXm_mm_shuffle_2231_ps
			shps_174 label shpsword
				jmp		uXm_mm_shuffle_2232_ps
			shps_175 label shpsword
				jmp		uXm_mm_shuffle_2233_ps
			shps_176 label shpsword
				jmp		uXm_mm_shuffle_2300_ps
			shps_177 label shpsword
				jmp		uXm_mm_shuffle_2301_ps
			shps_178 label shpsword
				jmp		uXm_mm_shuffle_2302_ps
			shps_179 label shpsword
				jmp		uXm_mm_shuffle_2303_ps
			shps_180 label shpsword
				jmp		uXm_mm_shuffle_2310_ps
			shps_181 label shpsword
				jmp		uXm_mm_shuffle_2311_ps
			shps_182 label shpsword
				jmp		uXm_mm_shuffle_2312_ps
			shps_183 label shpsword
				jmp		uXm_mm_shuffle_2313_ps
			shps_184 label shpsword
				jmp		uXm_mm_shuffle_2320_ps
			shps_185 label shpsword
				jmp		uXm_mm_shuffle_2321_ps
			shps_186 label shpsword
				jmp		uXm_mm_shuffle_2322_ps
			shps_187 label shpsword
				jmp		uXm_mm_shuffle_2323_ps
			shps_188 label shpsword
				jmp		uXm_mm_shuffle_2330_ps
			shps_189 label shpsword
				jmp		uXm_mm_shuffle_2331_ps
			shps_190 label shpsword
				jmp		uXm_mm_shuffle_2332_ps
			shps_191 label shpsword
				jmp		uXm_mm_shuffle_2333_ps
			shps_192 label shpsword
				jmp		uXm_mm_shuffle_3000_ps
			shps_193 label shpsword
				jmp		uXm_mm_shuffle_3001_ps
			shps_194 label shpsword
				jmp		uXm_mm_shuffle_3002_ps
			shps_195 label shpsword
				jmp		uXm_mm_shuffle_3003_ps
			shps_196 label shpsword
				jmp		uXm_mm_shuffle_3010_ps
			shps_197 label shpsword
				jmp		uXm_mm_shuffle_3011_ps
			shps_198 label shpsword
				jmp		uXm_mm_shuffle_3012_ps
			shps_199 label shpsword
				jmp		uXm_mm_shuffle_3013_ps
			shps_200 label shpsword
				jmp		uXm_mm_shuffle_3020_ps
			shps_201 label shpsword
				jmp		uXm_mm_shuffle_3021_ps
			shps_202 label shpsword
				jmp		uXm_mm_shuffle_3022_ps
			shps_203 label shpsword
				jmp		uXm_mm_shuffle_3023_ps
			shps_204 label shpsword
				jmp		uXm_mm_shuffle_3030_ps
			shps_205 label shpsword
				jmp		uXm_mm_shuffle_3031_ps
			shps_206 label shpsword
				jmp		uXm_mm_shuffle_3032_ps
			shps_207 label shpsword
				jmp		uXm_mm_shuffle_3033_ps
			shps_208 label shpsword
				jmp		uXm_mm_shuffle_3100_ps
			shps_209 label shpsword
				jmp		uXm_mm_shuffle_3101_ps
			shps_210 label shpsword
				jmp		uXm_mm_shuffle_3102_ps
			shps_211 label shpsword
				jmp		uXm_mm_shuffle_3103_ps
			shps_212 label shpsword
				jmp		uXm_mm_shuffle_3110_ps
			shps_213 label shpsword
				jmp		uXm_mm_shuffle_3111_ps
			shps_214 label shpsword
				jmp		uXm_mm_shuffle_3112_ps
			shps_215 label shpsword
				jmp		uXm_mm_shuffle_3113_ps
			shps_216 label shpsword
				jmp		uXm_mm_shuffle_3120_ps
			shps_217 label shpsword
				jmp		uXm_mm_shuffle_3121_ps
			shps_218 label shpsword
				jmp		uXm_mm_shuffle_3122_ps
			shps_219 label shpsword
				jmp		uXm_mm_shuffle_3123_ps
			shps_220 label shpsword
				jmp		uXm_mm_shuffle_3130_ps
			shps_221 label shpsword
				jmp		uXm_mm_shuffle_3131_ps
			shps_222 label shpsword
				jmp		uXm_mm_shuffle_3132_ps
			shps_223 label shpsword
				jmp		uXm_mm_shuffle_3133_ps
			shps_224 label shpsword
				jmp		uXm_mm_shuffle_3200_ps
			shps_225 label shpsword
				jmp		uXm_mm_shuffle_3201_ps
			shps_226 label shpsword
				jmp		uXm_mm_shuffle_3202_ps
			shps_227 label shpsword
				jmp		uXm_mm_shuffle_3203_ps
			shps_228 label shpsword
				jmp		uXm_mm_shuffle_3210_ps
			shps_229 label shpsword
				jmp		uXm_mm_shuffle_3211_ps
			shps_230 label shpsword
				jmp		uXm_mm_shuffle_3212_ps
			shps_231 label shpsword
				jmp		uXm_mm_shuffle_3213_ps
			shps_232 label shpsword
				jmp		uXm_mm_shuffle_3220_ps
			shps_233 label shpsword
				jmp		uXm_mm_shuffle_3221_ps
			shps_234 label shpsword
				jmp		uXm_mm_shuffle_3222_ps
			shps_235 label shpsword
				jmp		uXm_mm_shuffle_3223_ps
			shps_236 label shpsword
				jmp		uXm_mm_shuffle_3230_ps
			shps_237 label shpsword
				jmp		uXm_mm_shuffle_3231_ps
			shps_238 label shpsword
				jmp		uXm_mm_shuffle_3232_ps
			shps_239 label shpsword
				jmp		uXm_mm_shuffle_3233_ps
			shps_240 label shpsword
				jmp		uXm_mm_shuffle_3300_ps
			shps_241 label shpsword
				jmp		uXm_mm_shuffle_3301_ps
			shps_242 label shpsword
				jmp		uXm_mm_shuffle_3302_ps
			shps_243 label shpsword
				jmp		uXm_mm_shuffle_3303_ps
			shps_244 label shpsword
				jmp		uXm_mm_shuffle_3310_ps
			shps_245 label shpsword
				jmp		uXm_mm_shuffle_3311_ps
			shps_246 label shpsword
				jmp		uXm_mm_shuffle_3312_ps
			shps_247 label shpsword
				jmp		uXm_mm_shuffle_3313_ps
			shps_248 label shpsword
				jmp		uXm_mm_shuffle_3320_ps
			shps_249 label shpsword
				jmp		uXm_mm_shuffle_3321_ps
			shps_250 label shpsword
				jmp		uXm_mm_shuffle_3322_ps
			shps_251 label shpsword
				jmp		uXm_mm_shuffle_3323_ps
			shps_252 label shpsword
				jmp		uXm_mm_shuffle_3330_ps
			shps_253 label shpsword
				jmp		uXm_mm_shuffle_3331_ps
			shps_254 label shpsword
				jmp		uXm_mm_shuffle_3332_ps
			shps_255 label shpsword
				jmp		uXm_mm_shuffle_3333_ps

uXm_mm_shuffle_ps endp

	end
