
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.code

;******************
; Proto
;******************
_uXm_m128_shuffle_0000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_0333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_1333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
_uXm_m128_shuffle_2103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
_uXm_m128_shuffle_2123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
_uXm_m128_shuffle_2233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_2333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_3333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword

;******************
; Proc
;******************
			align 16
_uXm_m128_shuffle_0000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			0
				ret
_uXm_m128_shuffle_0000_ps endp

			align 16
_uXm_m128_shuffle_0001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			1
				ret
_uXm_m128_shuffle_0001_ps endp

			align 16
_uXm_m128_shuffle_0002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			2
				ret
_uXm_m128_shuffle_0002_ps endp

			align 16
_uXm_m128_shuffle_0003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			3
				ret
_uXm_m128_shuffle_0003_ps endp

			align 16
_uXm_m128_shuffle_0010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			4
				ret
_uXm_m128_shuffle_0010_ps endp

			align 16
_uXm_m128_shuffle_0011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			5
				ret
_uXm_m128_shuffle_0011_ps endp

			align 16
_uXm_m128_shuffle_0012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			6
				ret
_uXm_m128_shuffle_0012_ps endp

			align 16
_uXm_m128_shuffle_0013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			7
				ret
_uXm_m128_shuffle_0013_ps endp

			align 16
_uXm_m128_shuffle_0020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			8
				ret
_uXm_m128_shuffle_0020_ps endp

			align 16
_uXm_m128_shuffle_0021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			9
				ret
_uXm_m128_shuffle_0021_ps endp

			align 16
_uXm_m128_shuffle_0022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			10
				ret
_uXm_m128_shuffle_0022_ps endp

			align 16
_uXm_m128_shuffle_0023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			11
				ret
_uXm_m128_shuffle_0023_ps endp

			align 16
_uXm_m128_shuffle_0030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			12
				ret
_uXm_m128_shuffle_0030_ps endp

			align 16
_uXm_m128_shuffle_0031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			13
				ret
_uXm_m128_shuffle_0031_ps endp

			align 16
_uXm_m128_shuffle_0032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			14
				ret
_uXm_m128_shuffle_0032_ps endp

			align 16
_uXm_m128_shuffle_0033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			15
				ret
_uXm_m128_shuffle_0033_ps endp

			align 16
_uXm_m128_shuffle_0100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			16
				ret
_uXm_m128_shuffle_0100_ps endp

			align 16
_uXm_m128_shuffle_0101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			17
				ret
_uXm_m128_shuffle_0101_ps endp

			align 16
_uXm_m128_shuffle_0102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			18
				ret
_uXm_m128_shuffle_0102_ps endp

			align 16
_uXm_m128_shuffle_0103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			19
				ret
_uXm_m128_shuffle_0103_ps endp

			align 16
_uXm_m128_shuffle_0110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			20
				ret
_uXm_m128_shuffle_0110_ps endp

			align 16
_uXm_m128_shuffle_0111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			21
				ret
_uXm_m128_shuffle_0111_ps endp

			align 16
_uXm_m128_shuffle_0112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			22
				ret
_uXm_m128_shuffle_0112_ps endp

			align 16
_uXm_m128_shuffle_0113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			23
				ret
_uXm_m128_shuffle_0113_ps endp

			align 16
_uXm_m128_shuffle_0120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			24
				ret
_uXm_m128_shuffle_0120_ps endp

			align 16
_uXm_m128_shuffle_0121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			25
				ret
_uXm_m128_shuffle_0121_ps endp

			align 16
_uXm_m128_shuffle_0122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			26
				ret
_uXm_m128_shuffle_0122_ps endp

			align 16
_uXm_m128_shuffle_0123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			27
				ret
_uXm_m128_shuffle_0123_ps endp

			align 16
_uXm_m128_shuffle_0130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			28
				ret
_uXm_m128_shuffle_0130_ps endp

			align 16
_uXm_m128_shuffle_0131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			29
				ret
_uXm_m128_shuffle_0131_ps endp

			align 16
_uXm_m128_shuffle_0132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			30
				ret
_uXm_m128_shuffle_0132_ps endp

			align 16
_uXm_m128_shuffle_0133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			31
				ret
_uXm_m128_shuffle_0133_ps endp

			align 16
_uXm_m128_shuffle_0200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			32
				ret
_uXm_m128_shuffle_0200_ps endp

			align 16
_uXm_m128_shuffle_0201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			33
				ret
_uXm_m128_shuffle_0201_ps endp

			align 16
_uXm_m128_shuffle_0202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			34
				ret
_uXm_m128_shuffle_0202_ps endp

			align 16
_uXm_m128_shuffle_0203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			35
				ret
_uXm_m128_shuffle_0203_ps endp

			align 16
_uXm_m128_shuffle_0210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			36
				ret
_uXm_m128_shuffle_0210_ps endp

			align 16
_uXm_m128_shuffle_0211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			37
				ret
_uXm_m128_shuffle_0211_ps endp

			align 16
_uXm_m128_shuffle_0212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			38
				ret
_uXm_m128_shuffle_0212_ps endp

			align 16
_uXm_m128_shuffle_0213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			39
				ret
_uXm_m128_shuffle_0213_ps endp

			align 16
_uXm_m128_shuffle_0220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			40
				ret
_uXm_m128_shuffle_0220_ps endp

			align 16
_uXm_m128_shuffle_0221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			41
				ret
_uXm_m128_shuffle_0221_ps endp

			align 16
_uXm_m128_shuffle_0222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			42
				ret
_uXm_m128_shuffle_0222_ps endp

			align 16
_uXm_m128_shuffle_0223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			43
				ret
_uXm_m128_shuffle_0223_ps endp

			align 16
_uXm_m128_shuffle_0230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			44
				ret
_uXm_m128_shuffle_0230_ps endp

			align 16
_uXm_m128_shuffle_0231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			45
				ret
_uXm_m128_shuffle_0231_ps endp

			align 16
_uXm_m128_shuffle_0232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			46
				ret
_uXm_m128_shuffle_0232_ps endp

			align 16
_uXm_m128_shuffle_0233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			47
				ret
_uXm_m128_shuffle_0233_ps endp

			align 16
_uXm_m128_shuffle_0300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			48
				ret
_uXm_m128_shuffle_0300_ps endp

			align 16
_uXm_m128_shuffle_0301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			49
				ret
_uXm_m128_shuffle_0301_ps endp

			align 16
_uXm_m128_shuffle_0302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			50
				ret
_uXm_m128_shuffle_0302_ps endp

			align 16
_uXm_m128_shuffle_0303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			51
				ret
_uXm_m128_shuffle_0303_ps endp

			align 16
_uXm_m128_shuffle_0310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			52
				ret
_uXm_m128_shuffle_0310_ps endp

			align 16
_uXm_m128_shuffle_0311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			53
				ret
_uXm_m128_shuffle_0311_ps endp

			align 16
_uXm_m128_shuffle_0312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			54
				ret
_uXm_m128_shuffle_0312_ps endp

			align 16
_uXm_m128_shuffle_0313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			55
				ret
_uXm_m128_shuffle_0313_ps endp

			align 16
_uXm_m128_shuffle_0320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			56
				ret
_uXm_m128_shuffle_0320_ps endp

			align 16
_uXm_m128_shuffle_0321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			57
				ret
_uXm_m128_shuffle_0321_ps endp

			align 16
_uXm_m128_shuffle_0322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			58
				ret
_uXm_m128_shuffle_0322_ps endp

			align 16
_uXm_m128_shuffle_0323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			59
				ret
_uXm_m128_shuffle_0323_ps endp

			align 16
_uXm_m128_shuffle_0330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			60
				ret
_uXm_m128_shuffle_0330_ps endp

			align 16
_uXm_m128_shuffle_0331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			61
				ret
_uXm_m128_shuffle_0331_ps endp

			align 16
_uXm_m128_shuffle_0332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			62
				ret
_uXm_m128_shuffle_0332_ps endp

			align 16
_uXm_m128_shuffle_0333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			63
				ret
_uXm_m128_shuffle_0333_ps endp

			align 16
_uXm_m128_shuffle_1000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			64
				ret
_uXm_m128_shuffle_1000_ps endp

			align 16
_uXm_m128_shuffle_1001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			65
				ret
_uXm_m128_shuffle_1001_ps endp

			align 16
_uXm_m128_shuffle_1002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			66
				ret
_uXm_m128_shuffle_1002_ps endp

			align 16
_uXm_m128_shuffle_1003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			67
				ret
_uXm_m128_shuffle_1003_ps endp

			align 16
_uXm_m128_shuffle_1010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			68
				ret
_uXm_m128_shuffle_1010_ps endp

			align 16
_uXm_m128_shuffle_1011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			69
				ret
_uXm_m128_shuffle_1011_ps endp

			align 16
_uXm_m128_shuffle_1012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			70
				ret
_uXm_m128_shuffle_1012_ps endp

			align 16
_uXm_m128_shuffle_1013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			71
				ret
_uXm_m128_shuffle_1013_ps endp

			align 16
_uXm_m128_shuffle_1020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			72
				ret
_uXm_m128_shuffle_1020_ps endp

			align 16
_uXm_m128_shuffle_1021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			73
				ret
_uXm_m128_shuffle_1021_ps endp

			align 16
_uXm_m128_shuffle_1022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			74
				ret
_uXm_m128_shuffle_1022_ps endp

			align 16
_uXm_m128_shuffle_1023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			75
				ret
_uXm_m128_shuffle_1023_ps endp

			align 16
_uXm_m128_shuffle_1030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			76
				ret
_uXm_m128_shuffle_1030_ps endp

			align 16
_uXm_m128_shuffle_1031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			77
				ret
_uXm_m128_shuffle_1031_ps endp

			align 16
_uXm_m128_shuffle_1032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			78
				ret
_uXm_m128_shuffle_1032_ps endp

			align 16
_uXm_m128_shuffle_1033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			79
				ret
_uXm_m128_shuffle_1033_ps endp

			align 16
_uXm_m128_shuffle_1100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			80
				ret
_uXm_m128_shuffle_1100_ps endp

			align 16
_uXm_m128_shuffle_1101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			81
				ret
_uXm_m128_shuffle_1101_ps endp

			align 16
_uXm_m128_shuffle_1102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			82
				ret
_uXm_m128_shuffle_1102_ps endp

			align 16
_uXm_m128_shuffle_1103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			83
				ret
_uXm_m128_shuffle_1103_ps endp

			align 16
_uXm_m128_shuffle_1110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			84
				ret
_uXm_m128_shuffle_1110_ps endp

			align 16
_uXm_m128_shuffle_1111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			85
				ret
_uXm_m128_shuffle_1111_ps endp

			align 16
_uXm_m128_shuffle_1112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			86
				ret
_uXm_m128_shuffle_1112_ps endp

			align 16
_uXm_m128_shuffle_1113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			87
				ret
_uXm_m128_shuffle_1113_ps endp

			align 16
_uXm_m128_shuffle_1120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			88
				ret
_uXm_m128_shuffle_1120_ps endp

			align 16
_uXm_m128_shuffle_1121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			89
				ret
_uXm_m128_shuffle_1121_ps endp

			align 16
_uXm_m128_shuffle_1122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			90
				ret
_uXm_m128_shuffle_1122_ps endp

			align 16
_uXm_m128_shuffle_1123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			91
				ret
_uXm_m128_shuffle_1123_ps endp

			align 16
_uXm_m128_shuffle_1130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			92
				ret
_uXm_m128_shuffle_1130_ps endp

			align 16
_uXm_m128_shuffle_1131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			93
				ret
_uXm_m128_shuffle_1131_ps endp

			align 16
_uXm_m128_shuffle_1132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			94
				ret
_uXm_m128_shuffle_1132_ps endp

			align 16
_uXm_m128_shuffle_1133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			95
				ret
_uXm_m128_shuffle_1133_ps endp

			align 16
_uXm_m128_shuffle_1200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			96
				ret
_uXm_m128_shuffle_1200_ps endp

			align 16
_uXm_m128_shuffle_1201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			97
				ret
_uXm_m128_shuffle_1201_ps endp

			align 16
_uXm_m128_shuffle_1202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			98
				ret
_uXm_m128_shuffle_1202_ps endp

			align 16
_uXm_m128_shuffle_1203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			99
				ret
_uXm_m128_shuffle_1203_ps endp

			align 16
_uXm_m128_shuffle_1210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			100
				ret
_uXm_m128_shuffle_1210_ps endp

			align 16
_uXm_m128_shuffle_1211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			101
				ret
_uXm_m128_shuffle_1211_ps endp

			align 16
_uXm_m128_shuffle_1212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			102
				ret
_uXm_m128_shuffle_1212_ps endp

			align 16
_uXm_m128_shuffle_1213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			103
				ret
_uXm_m128_shuffle_1213_ps endp

			align 16
_uXm_m128_shuffle_1220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			104
				ret
_uXm_m128_shuffle_1220_ps endp

			align 16
_uXm_m128_shuffle_1221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			105
				ret
_uXm_m128_shuffle_1221_ps endp

			align 16
_uXm_m128_shuffle_1222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			106
				ret
_uXm_m128_shuffle_1222_ps endp

			align 16
_uXm_m128_shuffle_1223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			107
				ret
_uXm_m128_shuffle_1223_ps endp

			align 16
_uXm_m128_shuffle_1230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			108
				ret
_uXm_m128_shuffle_1230_ps endp

			align 16
_uXm_m128_shuffle_1231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			109
				ret
_uXm_m128_shuffle_1231_ps endp

			align 16
_uXm_m128_shuffle_1232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			110
				ret
_uXm_m128_shuffle_1232_ps endp

			align 16
_uXm_m128_shuffle_1233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			111
				ret
_uXm_m128_shuffle_1233_ps endp

			align 16
_uXm_m128_shuffle_1300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			112
				ret
_uXm_m128_shuffle_1300_ps endp

			align 16
_uXm_m128_shuffle_1301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			113
				ret
_uXm_m128_shuffle_1301_ps endp

			align 16
_uXm_m128_shuffle_1302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			114
				ret
_uXm_m128_shuffle_1302_ps endp

			align 16
_uXm_m128_shuffle_1303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			115
				ret
_uXm_m128_shuffle_1303_ps endp

			align 16
_uXm_m128_shuffle_1310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			116
				ret
_uXm_m128_shuffle_1310_ps endp

			align 16
_uXm_m128_shuffle_1311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			117
				ret
_uXm_m128_shuffle_1311_ps endp

			align 16
_uXm_m128_shuffle_1312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			118
				ret
_uXm_m128_shuffle_1312_ps endp

			align 16
_uXm_m128_shuffle_1313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			119
				ret
_uXm_m128_shuffle_1313_ps endp

			align 16
_uXm_m128_shuffle_1320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			120
				ret
_uXm_m128_shuffle_1320_ps endp

			align 16
_uXm_m128_shuffle_1321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			121
				ret
_uXm_m128_shuffle_1321_ps endp

			align 16
_uXm_m128_shuffle_1322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			122
				ret
_uXm_m128_shuffle_1322_ps endp

			align 16
_uXm_m128_shuffle_1323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			123
				ret
_uXm_m128_shuffle_1323_ps endp

			align 16
_uXm_m128_shuffle_1330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			124
				ret
_uXm_m128_shuffle_1330_ps endp

			align 16
_uXm_m128_shuffle_1331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			125
				ret
_uXm_m128_shuffle_1331_ps endp

			align 16
_uXm_m128_shuffle_1332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			126
				ret
_uXm_m128_shuffle_1332_ps endp

			align 16
_uXm_m128_shuffle_1333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			127
				ret
_uXm_m128_shuffle_1333_ps endp

			align 16
_uXm_m128_shuffle_2000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			128
				ret
_uXm_m128_shuffle_2000_ps endp

			align 16
_uXm_m128_shuffle_2001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			129
				ret
_uXm_m128_shuffle_2001_ps endp

			align 16
_uXm_m128_shuffle_2002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			130
				ret
_uXm_m128_shuffle_2002_ps endp

			align 16
_uXm_m128_shuffle_2003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			131
				ret
_uXm_m128_shuffle_2003_ps endp

			align 16
_uXm_m128_shuffle_2010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			132
				ret
_uXm_m128_shuffle_2010_ps endp

			align 16
_uXm_m128_shuffle_2011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			133
				ret
_uXm_m128_shuffle_2011_ps endp

			align 16
_uXm_m128_shuffle_2012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			134
				ret
_uXm_m128_shuffle_2012_ps endp

			align 16
_uXm_m128_shuffle_2013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			135
				ret
_uXm_m128_shuffle_2013_ps endp

			align 16
_uXm_m128_shuffle_2020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			136
				ret
_uXm_m128_shuffle_2020_ps endp

			align 16
_uXm_m128_shuffle_2021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			137
				ret
_uXm_m128_shuffle_2021_ps endp

			align 16
_uXm_m128_shuffle_2022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			138
				ret
_uXm_m128_shuffle_2022_ps endp

			align 16
_uXm_m128_shuffle_2023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			139
				ret
_uXm_m128_shuffle_2023_ps endp

			align 16
_uXm_m128_shuffle_2030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			140
				ret
_uXm_m128_shuffle_2030_ps endp

			align 16
_uXm_m128_shuffle_2031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			141
				ret
_uXm_m128_shuffle_2031_ps endp

			align 16
_uXm_m128_shuffle_2032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			142
				ret
_uXm_m128_shuffle_2032_ps endp

			align 16
_uXm_m128_shuffle_2033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			143
				ret
_uXm_m128_shuffle_2033_ps endp

			align 16
_uXm_m128_shuffle_2100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			144
				ret
_uXm_m128_shuffle_2100_ps endp

			align 16
_uXm_m128_shuffle_2101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			145
				ret
_uXm_m128_shuffle_2101_ps endp

			align 16
_uXm_m128_shuffle_2102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
				shufps				xmm0,			xmm1,			146
				ret
_uXm_m128_shuffle_2102_ps endp

			align 16
_uXm_m128_shuffle_2103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			147
				ret
_uXm_m128_shuffle_2103_ps endp

			align 16
_uXm_m128_shuffle_2110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			148
				ret
_uXm_m128_shuffle_2110_ps endp

			align 16
_uXm_m128_shuffle_2111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			149
				ret
_uXm_m128_shuffle_2111_ps endp

			align 16
_uXm_m128_shuffle_2112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			150
				ret
_uXm_m128_shuffle_2112_ps endp

			align 16
_uXm_m128_shuffle_2113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			151
				ret
_uXm_m128_shuffle_2113_ps endp

			align 16
_uXm_m128_shuffle_2120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			152
				ret
_uXm_m128_shuffle_2120_ps endp

			align 16
_uXm_m128_shuffle_2121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			153
				ret
_uXm_m128_shuffle_2121_ps endp

			align 16
_uXm_m128_shuffle_2122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
				shufps				xmm0,			xmm1,			154
				ret
_uXm_m128_shuffle_2122_ps endp

			align 16
_uXm_m128_shuffle_2123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			155
				ret
_uXm_m128_shuffle_2123_ps endp

			align 16
_uXm_m128_shuffle_2130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			156
				ret
_uXm_m128_shuffle_2130_ps endp

			align 16
_uXm_m128_shuffle_2131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			157
				ret
_uXm_m128_shuffle_2131_ps endp

			align 16
_uXm_m128_shuffle_2132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			158
				ret
_uXm_m128_shuffle_2132_ps endp

			align 16
_uXm_m128_shuffle_2133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			159
				ret
_uXm_m128_shuffle_2133_ps endp

			align 16
_uXm_m128_shuffle_2200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			160
				ret
_uXm_m128_shuffle_2200_ps endp

			align 16
_uXm_m128_shuffle_2201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			161
				ret
_uXm_m128_shuffle_2201_ps endp

			align 16
_uXm_m128_shuffle_2202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			162
				ret
_uXm_m128_shuffle_2202_ps endp

			align 16
_uXm_m128_shuffle_2203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			163
				ret
_uXm_m128_shuffle_2203_ps endp

			align 16
_uXm_m128_shuffle_2210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			164
				ret
_uXm_m128_shuffle_2210_ps endp

			align 16
_uXm_m128_shuffle_2211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			165
				ret
_uXm_m128_shuffle_2211_ps endp

			align 16
_uXm_m128_shuffle_2212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			166
				ret
_uXm_m128_shuffle_2212_ps endp

			align 16
_uXm_m128_shuffle_2213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			167
				ret
_uXm_m128_shuffle_2213_ps endp

			align 16
_uXm_m128_shuffle_2220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			168
				ret
_uXm_m128_shuffle_2220_ps endp

			align 16
_uXm_m128_shuffle_2221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			169
				ret
_uXm_m128_shuffle_2221_ps endp

			align 16
_uXm_m128_shuffle_2222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			170
				ret
_uXm_m128_shuffle_2222_ps endp

			align 16
_uXm_m128_shuffle_2223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			171
				ret
_uXm_m128_shuffle_2223_ps endp

			align 16
_uXm_m128_shuffle_2230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			172
				ret
_uXm_m128_shuffle_2230_ps endp

			align 16
_uXm_m128_shuffle_2231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			173
				ret
_uXm_m128_shuffle_2231_ps endp

			align 16
_uXm_m128_shuffle_2232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword 
				shufps				xmm0,			xmm1,			174
				ret
_uXm_m128_shuffle_2232_ps endp

			align 16
_uXm_m128_shuffle_2233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			175
				ret
_uXm_m128_shuffle_2233_ps endp

			align 16
_uXm_m128_shuffle_2300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			176
				ret
_uXm_m128_shuffle_2300_ps endp

			align 16
_uXm_m128_shuffle_2301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			177
				ret
_uXm_m128_shuffle_2301_ps endp

			align 16
_uXm_m128_shuffle_2302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			178
				ret
_uXm_m128_shuffle_2302_ps endp

			align 16
_uXm_m128_shuffle_2303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			179
				ret
_uXm_m128_shuffle_2303_ps endp

			align 16
_uXm_m128_shuffle_2310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			180
				ret
_uXm_m128_shuffle_2310_ps endp

			align 16
_uXm_m128_shuffle_2311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			181
				ret
_uXm_m128_shuffle_2311_ps endp

			align 16
_uXm_m128_shuffle_2312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			182
				ret
_uXm_m128_shuffle_2312_ps endp

			align 16
_uXm_m128_shuffle_2313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			183
				ret
_uXm_m128_shuffle_2313_ps endp

			align 16
_uXm_m128_shuffle_2320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			184
				ret
_uXm_m128_shuffle_2320_ps endp

			align 16
_uXm_m128_shuffle_2321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			185
				ret
_uXm_m128_shuffle_2321_ps endp

			align 16
_uXm_m128_shuffle_2322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			186
				ret
_uXm_m128_shuffle_2322_ps endp

			align 16
_uXm_m128_shuffle_2323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			187
				ret
_uXm_m128_shuffle_2323_ps endp

			align 16
_uXm_m128_shuffle_2330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			188
				ret
_uXm_m128_shuffle_2330_ps endp

			align 16
_uXm_m128_shuffle_2331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			189
				ret
_uXm_m128_shuffle_2331_ps endp

			align 16
_uXm_m128_shuffle_2332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			190
				ret
_uXm_m128_shuffle_2332_ps endp

			align 16
_uXm_m128_shuffle_2333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			191
				ret
_uXm_m128_shuffle_2333_ps endp

			align 16
_uXm_m128_shuffle_3000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			192
				ret
_uXm_m128_shuffle_3000_ps endp

			align 16
_uXm_m128_shuffle_3001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			193
				ret
_uXm_m128_shuffle_3001_ps endp

			align 16
_uXm_m128_shuffle_3002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			194
				ret
_uXm_m128_shuffle_3002_ps endp

			align 16
_uXm_m128_shuffle_3003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			195
				ret
_uXm_m128_shuffle_3003_ps endp

			align 16
_uXm_m128_shuffle_3010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			196
				ret
_uXm_m128_shuffle_3010_ps endp

			align 16
_uXm_m128_shuffle_3011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			197
				ret
_uXm_m128_shuffle_3011_ps endp

			align 16
_uXm_m128_shuffle_3012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			198
				ret
_uXm_m128_shuffle_3012_ps endp

			align 16
_uXm_m128_shuffle_3013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			199
				ret
_uXm_m128_shuffle_3013_ps endp

			align 16
_uXm_m128_shuffle_3020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			200
				ret
_uXm_m128_shuffle_3020_ps endp

			align 16
_uXm_m128_shuffle_3021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			201
				ret
_uXm_m128_shuffle_3021_ps endp

			align 16
_uXm_m128_shuffle_3022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			202
				ret
_uXm_m128_shuffle_3022_ps endp

			align 16
_uXm_m128_shuffle_3023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			203
				ret
_uXm_m128_shuffle_3023_ps endp

			align 16
_uXm_m128_shuffle_3030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			204
				ret
_uXm_m128_shuffle_3030_ps endp

			align 16
_uXm_m128_shuffle_3031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			205
				ret
_uXm_m128_shuffle_3031_ps endp

			align 16
_uXm_m128_shuffle_3032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			206
				ret
_uXm_m128_shuffle_3032_ps endp

			align 16
_uXm_m128_shuffle_3033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			207
				ret
_uXm_m128_shuffle_3033_ps endp

			align 16
_uXm_m128_shuffle_3100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			208
				ret
_uXm_m128_shuffle_3100_ps endp

			align 16
_uXm_m128_shuffle_3101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			209
				ret
_uXm_m128_shuffle_3101_ps endp

			align 16
_uXm_m128_shuffle_3102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			210
				ret
_uXm_m128_shuffle_3102_ps endp

			align 16
_uXm_m128_shuffle_3103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			211
				ret
_uXm_m128_shuffle_3103_ps endp

			align 16
_uXm_m128_shuffle_3110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			212
				ret
_uXm_m128_shuffle_3110_ps endp

			align 16
_uXm_m128_shuffle_3111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			213
				ret
_uXm_m128_shuffle_3111_ps endp

			align 16
_uXm_m128_shuffle_3112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			214
				ret
_uXm_m128_shuffle_3112_ps endp

			align 16
_uXm_m128_shuffle_3113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			215
				ret
_uXm_m128_shuffle_3113_ps endp

			align 16
_uXm_m128_shuffle_3120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			216
				ret
_uXm_m128_shuffle_3120_ps endp

			align 16
_uXm_m128_shuffle_3121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			217
				ret
_uXm_m128_shuffle_3121_ps endp

			align 16
_uXm_m128_shuffle_3122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			218
				ret
_uXm_m128_shuffle_3122_ps endp

			align 16
_uXm_m128_shuffle_3123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			219
				ret
_uXm_m128_shuffle_3123_ps endp

			align 16
_uXm_m128_shuffle_3130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			220
				ret
_uXm_m128_shuffle_3130_ps endp

			align 16
_uXm_m128_shuffle_3131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			221
				ret
_uXm_m128_shuffle_3131_ps endp

			align 16
_uXm_m128_shuffle_3132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			222
				ret
_uXm_m128_shuffle_3132_ps endp

			align 16
_uXm_m128_shuffle_3133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			223
				ret
_uXm_m128_shuffle_3133_ps endp

			align 16
_uXm_m128_shuffle_3200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			224
				ret
_uXm_m128_shuffle_3200_ps endp

			align 16
_uXm_m128_shuffle_3201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			225
				ret
_uXm_m128_shuffle_3201_ps endp

			align 16
_uXm_m128_shuffle_3202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			226
				ret
_uXm_m128_shuffle_3202_ps endp

			align 16
_uXm_m128_shuffle_3203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			227
				ret
_uXm_m128_shuffle_3203_ps endp

			align 16
_uXm_m128_shuffle_3210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			228
				ret
_uXm_m128_shuffle_3210_ps endp

			align 16
_uXm_m128_shuffle_3211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			229
				ret
_uXm_m128_shuffle_3211_ps endp

			align 16
_uXm_m128_shuffle_3212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			230
				ret
_uXm_m128_shuffle_3212_ps endp

			align 16
_uXm_m128_shuffle_3213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			231
				ret
_uXm_m128_shuffle_3213_ps endp

			align 16
_uXm_m128_shuffle_3220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			232
				ret
_uXm_m128_shuffle_3220_ps endp

			align 16
_uXm_m128_shuffle_3221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			233
				ret
_uXm_m128_shuffle_3221_ps endp

			align 16
_uXm_m128_shuffle_3222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			234
				ret
_uXm_m128_shuffle_3222_ps endp

			align 16
_uXm_m128_shuffle_3223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			235
				ret
_uXm_m128_shuffle_3223_ps endp

			align 16
_uXm_m128_shuffle_3230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			236
				ret
_uXm_m128_shuffle_3230_ps endp

			align 16
_uXm_m128_shuffle_3231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			237
				ret
_uXm_m128_shuffle_3231_ps endp

			align 16
_uXm_m128_shuffle_3232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			238
				ret
_uXm_m128_shuffle_3232_ps endp

			align 16
_uXm_m128_shuffle_3233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			239
				ret
_uXm_m128_shuffle_3233_ps endp

			align 16
_uXm_m128_shuffle_3300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			240
				ret
_uXm_m128_shuffle_3300_ps endp

			align 16
_uXm_m128_shuffle_3301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			241
				ret
_uXm_m128_shuffle_3301_ps endp

			align 16
_uXm_m128_shuffle_3302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			242
				ret
_uXm_m128_shuffle_3302_ps endp

			align 16
_uXm_m128_shuffle_3303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			243
				ret
_uXm_m128_shuffle_3303_ps endp

			align 16
_uXm_m128_shuffle_3310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			244
				ret
_uXm_m128_shuffle_3310_ps endp

			align 16
_uXm_m128_shuffle_3311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			245
				ret
_uXm_m128_shuffle_3311_ps endp

			align 16
_uXm_m128_shuffle_3312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			246
				ret
_uXm_m128_shuffle_3312_ps endp

			align 16
_uXm_m128_shuffle_3313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			247
				ret
_uXm_m128_shuffle_3313_ps endp

			align 16
_uXm_m128_shuffle_3320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			248
				ret
_uXm_m128_shuffle_3320_ps endp

			align 16
_uXm_m128_shuffle_3321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			249
				ret
_uXm_m128_shuffle_3321_ps endp

			align 16
_uXm_m128_shuffle_3322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			250
				ret
_uXm_m128_shuffle_3322_ps endp

			align 16
_uXm_m128_shuffle_3323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			251
				ret
_uXm_m128_shuffle_3323_ps endp

			align 16
_uXm_m128_shuffle_3330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			252
				ret
_uXm_m128_shuffle_3330_ps endp

			align 16
_uXm_m128_shuffle_3331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			253
				ret
_uXm_m128_shuffle_3331_ps endp

			align 16
_uXm_m128_shuffle_3332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			254
				ret
_uXm_m128_shuffle_3332_ps endp

			align 16
_uXm_m128_shuffle_3333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufps				xmm0,			xmm1,			255
				ret
_uXm_m128_shuffle_3333_ps endp

			align 16
_uXm_m128_shuffle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
				
		ifndef __X64__
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam3]
			lea				ebx,			[m128shufpsjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			m128shufpsjmptable
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
			lea				rbx,			[m128shufpsjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			m128shufpsjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			m128shufpsword		textequ		<dword>
			m128shufpsiword		textequ		<dd>
		else
			m128shufpsword		textequ		<qword>
			m128shufpsiword		textequ		<dq>
		endif
		
		m128shufpsjmptable label m128shufpsword
			m128shufpsiword offset m128shufps_0, offset m128shufps_1, offset m128shufps_2, offset m128shufps_3, offset m128shufps_4, offset m128shufps_5, offset m128shufps_6, offset m128shufps_7, offset m128shufps_8, offset m128shufps_9, offset m128shufps_10, offset m128shufps_11, offset m128shufps_12, offset m128shufps_13, offset m128shufps_14, offset m128shufps_15, offset m128shufps_16, offset m128shufps_17, offset m128shufps_18, offset m128shufps_19, offset m128shufps_20, offset m128shufps_21, offset m128shufps_22, offset m128shufps_23, offset m128shufps_24, offset m128shufps_25
			m128shufpsiword offset m128shufps_26, offset m128shufps_27, offset m128shufps_28, offset m128shufps_29, offset m128shufps_30, offset m128shufps_31, offset m128shufps_32, offset m128shufps_33, offset m128shufps_34, offset m128shufps_35, offset m128shufps_36, offset m128shufps_37, offset m128shufps_38, offset m128shufps_39, offset m128shufps_40, offset m128shufps_41, offset m128shufps_42, offset m128shufps_43, offset m128shufps_44, offset m128shufps_45, offset m128shufps_46, offset m128shufps_47, offset m128shufps_48, offset m128shufps_49, offset m128shufps_50
			m128shufpsiword offset m128shufps_51, offset m128shufps_52, offset m128shufps_53, offset m128shufps_54, offset m128shufps_55, offset m128shufps_56, offset m128shufps_57, offset m128shufps_58, offset m128shufps_59, offset m128shufps_60, offset m128shufps_61, offset m128shufps_62, offset m128shufps_63, offset m128shufps_64, offset m128shufps_65, offset m128shufps_66, offset m128shufps_67, offset m128shufps_68, offset m128shufps_69, offset m128shufps_70, offset m128shufps_71, offset m128shufps_72, offset m128shufps_73, offset m128shufps_74, offset m128shufps_75
			m128shufpsiword offset m128shufps_76, offset m128shufps_77, offset m128shufps_78, offset m128shufps_79, offset m128shufps_80, offset m128shufps_81, offset m128shufps_82, offset m128shufps_83, offset m128shufps_84, offset m128shufps_85, offset m128shufps_86, offset m128shufps_87, offset m128shufps_88, offset m128shufps_89, offset m128shufps_90, offset m128shufps_91, offset m128shufps_92, offset m128shufps_93, offset m128shufps_94, offset m128shufps_95, offset m128shufps_96, offset m128shufps_97, offset m128shufps_98, offset m128shufps_99, offset m128shufps_100
			m128shufpsiword offset m128shufps_101, offset m128shufps_102, offset m128shufps_103, offset m128shufps_104, offset m128shufps_105, offset m128shufps_106, offset m128shufps_107, offset m128shufps_108, offset m128shufps_109, offset m128shufps_110, offset m128shufps_111, offset m128shufps_112, offset m128shufps_113, offset m128shufps_114, offset m128shufps_115, offset m128shufps_116, offset m128shufps_117, offset m128shufps_118, offset m128shufps_119, offset m128shufps_120, offset m128shufps_121, offset m128shufps_122, offset m128shufps_123, offset m128shufps_124, offset m128shufps_125
			m128shufpsiword offset m128shufps_126, offset m128shufps_127, offset m128shufps_128, offset m128shufps_129, offset m128shufps_130, offset m128shufps_131, offset m128shufps_132, offset m128shufps_133, offset m128shufps_134, offset m128shufps_135, offset m128shufps_136, offset m128shufps_137, offset m128shufps_138, offset m128shufps_139, offset m128shufps_140, offset m128shufps_141, offset m128shufps_142, offset m128shufps_143, offset m128shufps_144, offset m128shufps_145, offset m128shufps_146, offset m128shufps_147, offset m128shufps_148, offset m128shufps_149, offset m128shufps_150
			m128shufpsiword offset m128shufps_151, offset m128shufps_152, offset m128shufps_153, offset m128shufps_154, offset m128shufps_155, offset m128shufps_156, offset m128shufps_157, offset m128shufps_158, offset m128shufps_159, offset m128shufps_160, offset m128shufps_161, offset m128shufps_162, offset m128shufps_163, offset m128shufps_164, offset m128shufps_165, offset m128shufps_166, offset m128shufps_167, offset m128shufps_168, offset m128shufps_169, offset m128shufps_170, offset m128shufps_171, offset m128shufps_172, offset m128shufps_173, offset m128shufps_174, offset m128shufps_175
			m128shufpsiword offset m128shufps_176, offset m128shufps_177, offset m128shufps_178, offset m128shufps_179, offset m128shufps_180, offset m128shufps_181, offset m128shufps_182, offset m128shufps_183, offset m128shufps_184, offset m128shufps_185, offset m128shufps_186, offset m128shufps_187, offset m128shufps_188, offset m128shufps_189, offset m128shufps_190, offset m128shufps_191, offset m128shufps_192, offset m128shufps_193, offset m128shufps_194, offset m128shufps_195, offset m128shufps_196, offset m128shufps_197, offset m128shufps_198, offset m128shufps_199, offset m128shufps_200
			m128shufpsiword offset m128shufps_201, offset m128shufps_202, offset m128shufps_203, offset m128shufps_204, offset m128shufps_205, offset m128shufps_206, offset m128shufps_207, offset m128shufps_208, offset m128shufps_209, offset m128shufps_210, offset m128shufps_211, offset m128shufps_212, offset m128shufps_213, offset m128shufps_214, offset m128shufps_215, offset m128shufps_216, offset m128shufps_217, offset m128shufps_218, offset m128shufps_219, offset m128shufps_220, offset m128shufps_221, offset m128shufps_222, offset m128shufps_223, offset m128shufps_224, offset m128shufps_225
			m128shufpsiword offset m128shufps_226, offset m128shufps_227, offset m128shufps_228, offset m128shufps_229, offset m128shufps_230, offset m128shufps_231, offset m128shufps_232, offset m128shufps_233, offset m128shufps_234, offset m128shufps_235, offset m128shufps_236, offset m128shufps_237, offset m128shufps_238, offset m128shufps_239, offset m128shufps_240, offset m128shufps_241, offset m128shufps_242, offset m128shufps_243, offset m128shufps_244, offset m128shufps_245, offset m128shufps_246, offset m128shufps_247, offset m128shufps_248, offset m128shufps_249, offset m128shufps_250
			m128shufpsiword offset m128shufps_251, offset m128shufps_252, offset m128shufps_253, offset m128shufps_254, offset m128shufps_255				

			m128shufps_0 label m128shufpsword
				jmp		_uXm_m128_shuffle_0000_ps
			m128shufps_1 label m128shufpsword
				jmp		_uXm_m128_shuffle_0001_ps
			m128shufps_2 label m128shufpsword
				jmp		_uXm_m128_shuffle_0002_ps
			m128shufps_3 label m128shufpsword
				jmp		_uXm_m128_shuffle_0003_ps
			m128shufps_4 label m128shufpsword
				jmp		_uXm_m128_shuffle_0010_ps
			m128shufps_5 label m128shufpsword
				jmp		_uXm_m128_shuffle_0011_ps
			m128shufps_6 label m128shufpsword
				jmp		_uXm_m128_shuffle_0012_ps
			m128shufps_7 label m128shufpsword
				jmp		_uXm_m128_shuffle_0013_ps
			m128shufps_8 label m128shufpsword
				jmp		_uXm_m128_shuffle_0020_ps
			m128shufps_9 label m128shufpsword
				jmp		_uXm_m128_shuffle_0021_ps
			m128shufps_10 label m128shufpsword
				jmp		_uXm_m128_shuffle_0022_ps
			m128shufps_11 label m128shufpsword
				jmp		_uXm_m128_shuffle_0023_ps
			m128shufps_12 label m128shufpsword
				jmp		_uXm_m128_shuffle_0030_ps
			m128shufps_13 label m128shufpsword
				jmp		_uXm_m128_shuffle_0031_ps
			m128shufps_14 label m128shufpsword
				jmp		_uXm_m128_shuffle_0032_ps
			m128shufps_15 label m128shufpsword
				jmp		_uXm_m128_shuffle_0033_ps
			m128shufps_16 label m128shufpsword
				jmp		_uXm_m128_shuffle_0100_ps
			m128shufps_17 label m128shufpsword
				jmp		_uXm_m128_shuffle_0101_ps
			m128shufps_18 label m128shufpsword
				jmp		_uXm_m128_shuffle_0102_ps
			m128shufps_19 label m128shufpsword
				jmp		_uXm_m128_shuffle_0103_ps
			m128shufps_20 label m128shufpsword
				jmp		_uXm_m128_shuffle_0110_ps
			m128shufps_21 label m128shufpsword
				jmp		_uXm_m128_shuffle_0111_ps
			m128shufps_22 label m128shufpsword
				jmp		_uXm_m128_shuffle_0112_ps
			m128shufps_23 label m128shufpsword
				jmp		_uXm_m128_shuffle_0113_ps
			m128shufps_24 label m128shufpsword
				jmp		_uXm_m128_shuffle_0120_ps
			m128shufps_25 label m128shufpsword
				jmp		_uXm_m128_shuffle_0121_ps
			m128shufps_26 label m128shufpsword
				jmp		_uXm_m128_shuffle_0122_ps
			m128shufps_27 label m128shufpsword
				jmp		_uXm_m128_shuffle_0123_ps
			m128shufps_28 label m128shufpsword
				jmp		_uXm_m128_shuffle_0130_ps
			m128shufps_29 label m128shufpsword
				jmp		_uXm_m128_shuffle_0131_ps
			m128shufps_30 label m128shufpsword
				jmp		_uXm_m128_shuffle_0132_ps
			m128shufps_31 label m128shufpsword
				jmp		_uXm_m128_shuffle_0133_ps
			m128shufps_32 label m128shufpsword
				jmp		_uXm_m128_shuffle_0200_ps
			m128shufps_33 label m128shufpsword
				jmp		_uXm_m128_shuffle_0201_ps
			m128shufps_34 label m128shufpsword
				jmp		_uXm_m128_shuffle_0202_ps
			m128shufps_35 label m128shufpsword
				jmp		_uXm_m128_shuffle_0203_ps
			m128shufps_36 label m128shufpsword
				jmp		_uXm_m128_shuffle_0210_ps
			m128shufps_37 label m128shufpsword
				jmp		_uXm_m128_shuffle_0211_ps
			m128shufps_38 label m128shufpsword
				jmp		_uXm_m128_shuffle_0212_ps
			m128shufps_39 label m128shufpsword
				jmp		_uXm_m128_shuffle_0213_ps
			m128shufps_40 label m128shufpsword
				jmp		_uXm_m128_shuffle_0220_ps
			m128shufps_41 label m128shufpsword
				jmp		_uXm_m128_shuffle_0221_ps
			m128shufps_42 label m128shufpsword
				jmp		_uXm_m128_shuffle_0222_ps
			m128shufps_43 label m128shufpsword
				jmp		_uXm_m128_shuffle_0223_ps
			m128shufps_44 label m128shufpsword
				jmp		_uXm_m128_shuffle_0230_ps
			m128shufps_45 label m128shufpsword
				jmp		_uXm_m128_shuffle_0231_ps
			m128shufps_46 label m128shufpsword
				jmp		_uXm_m128_shuffle_0232_ps
			m128shufps_47 label m128shufpsword
				jmp		_uXm_m128_shuffle_0233_ps
			m128shufps_48 label m128shufpsword
				jmp		_uXm_m128_shuffle_0300_ps
			m128shufps_49 label m128shufpsword
				jmp		_uXm_m128_shuffle_0301_ps
			m128shufps_50 label m128shufpsword
				jmp		_uXm_m128_shuffle_0302_ps
			m128shufps_51 label m128shufpsword
				jmp		_uXm_m128_shuffle_0303_ps
			m128shufps_52 label m128shufpsword
				jmp		_uXm_m128_shuffle_0310_ps
			m128shufps_53 label m128shufpsword
				jmp		_uXm_m128_shuffle_0311_ps
			m128shufps_54 label m128shufpsword
				jmp		_uXm_m128_shuffle_0312_ps
			m128shufps_55 label m128shufpsword
				jmp		_uXm_m128_shuffle_0313_ps
			m128shufps_56 label m128shufpsword
				jmp		_uXm_m128_shuffle_0320_ps
			m128shufps_57 label m128shufpsword
				jmp		_uXm_m128_shuffle_0321_ps
			m128shufps_58 label m128shufpsword
				jmp		_uXm_m128_shuffle_0322_ps
			m128shufps_59 label m128shufpsword
				jmp		_uXm_m128_shuffle_0323_ps
			m128shufps_60 label m128shufpsword
				jmp		_uXm_m128_shuffle_0330_ps
			m128shufps_61 label m128shufpsword
				jmp		_uXm_m128_shuffle_0331_ps
			m128shufps_62 label m128shufpsword
				jmp		_uXm_m128_shuffle_0332_ps
			m128shufps_63 label m128shufpsword
				jmp		_uXm_m128_shuffle_0333_ps
			m128shufps_64 label m128shufpsword
				jmp		_uXm_m128_shuffle_1000_ps
			m128shufps_65 label m128shufpsword
				jmp		_uXm_m128_shuffle_1001_ps
			m128shufps_66 label m128shufpsword
				jmp		_uXm_m128_shuffle_1002_ps
			m128shufps_67 label m128shufpsword
				jmp		_uXm_m128_shuffle_1003_ps
			m128shufps_68 label m128shufpsword
				jmp		_uXm_m128_shuffle_1010_ps
			m128shufps_69 label m128shufpsword
				jmp		_uXm_m128_shuffle_1011_ps
			m128shufps_70 label m128shufpsword
				jmp		_uXm_m128_shuffle_1012_ps
			m128shufps_71 label m128shufpsword
				jmp		_uXm_m128_shuffle_1013_ps
			m128shufps_72 label m128shufpsword
				jmp		_uXm_m128_shuffle_1020_ps
			m128shufps_73 label m128shufpsword
				jmp		_uXm_m128_shuffle_1021_ps
			m128shufps_74 label m128shufpsword
				jmp		_uXm_m128_shuffle_1022_ps
			m128shufps_75 label m128shufpsword
				jmp		_uXm_m128_shuffle_1023_ps
			m128shufps_76 label m128shufpsword
				jmp		_uXm_m128_shuffle_1030_ps
			m128shufps_77 label m128shufpsword
				jmp		_uXm_m128_shuffle_1031_ps
			m128shufps_78 label m128shufpsword
				jmp		_uXm_m128_shuffle_1032_ps
			m128shufps_79 label m128shufpsword
				jmp		_uXm_m128_shuffle_1033_ps
			m128shufps_80 label m128shufpsword
				jmp		_uXm_m128_shuffle_1100_ps
			m128shufps_81 label m128shufpsword
				jmp		_uXm_m128_shuffle_1101_ps
			m128shufps_82 label m128shufpsword
				jmp		_uXm_m128_shuffle_1102_ps
			m128shufps_83 label m128shufpsword
				jmp		_uXm_m128_shuffle_1103_ps
			m128shufps_84 label m128shufpsword
				jmp		_uXm_m128_shuffle_1110_ps
			m128shufps_85 label m128shufpsword
				jmp		_uXm_m128_shuffle_1111_ps
			m128shufps_86 label m128shufpsword
				jmp		_uXm_m128_shuffle_1112_ps
			m128shufps_87 label m128shufpsword
				jmp		_uXm_m128_shuffle_1113_ps
			m128shufps_88 label m128shufpsword
				jmp		_uXm_m128_shuffle_1120_ps
			m128shufps_89 label m128shufpsword
				jmp		_uXm_m128_shuffle_1121_ps
			m128shufps_90 label m128shufpsword
				jmp		_uXm_m128_shuffle_1122_ps
			m128shufps_91 label m128shufpsword
				jmp		_uXm_m128_shuffle_1123_ps
			m128shufps_92 label m128shufpsword
				jmp		_uXm_m128_shuffle_1130_ps
			m128shufps_93 label m128shufpsword
				jmp		_uXm_m128_shuffle_1131_ps
			m128shufps_94 label m128shufpsword
				jmp		_uXm_m128_shuffle_1132_ps
			m128shufps_95 label m128shufpsword
				jmp		_uXm_m128_shuffle_1133_ps
			m128shufps_96 label m128shufpsword
				jmp		_uXm_m128_shuffle_1200_ps
			m128shufps_97 label m128shufpsword
				jmp		_uXm_m128_shuffle_1201_ps
			m128shufps_98 label m128shufpsword
				jmp		_uXm_m128_shuffle_1202_ps
			m128shufps_99 label m128shufpsword
				jmp		_uXm_m128_shuffle_1203_ps
			m128shufps_100 label m128shufpsword
				jmp		_uXm_m128_shuffle_1210_ps
			m128shufps_101 label m128shufpsword
				jmp		_uXm_m128_shuffle_1211_ps
			m128shufps_102 label m128shufpsword
				jmp		_uXm_m128_shuffle_1212_ps
			m128shufps_103 label m128shufpsword
				jmp		_uXm_m128_shuffle_1213_ps
			m128shufps_104 label m128shufpsword
				jmp		_uXm_m128_shuffle_1220_ps
			m128shufps_105 label m128shufpsword
				jmp		_uXm_m128_shuffle_1221_ps
			m128shufps_106 label m128shufpsword
				jmp		_uXm_m128_shuffle_1222_ps
			m128shufps_107 label m128shufpsword
				jmp		_uXm_m128_shuffle_1223_ps
			m128shufps_108 label m128shufpsword
				jmp		_uXm_m128_shuffle_1230_ps
			m128shufps_109 label m128shufpsword
				jmp		_uXm_m128_shuffle_1231_ps
			m128shufps_110 label m128shufpsword
				jmp		_uXm_m128_shuffle_1232_ps
			m128shufps_111 label m128shufpsword
				jmp		_uXm_m128_shuffle_1233_ps
			m128shufps_112 label m128shufpsword
				jmp		_uXm_m128_shuffle_1300_ps
			m128shufps_113 label m128shufpsword
				jmp		_uXm_m128_shuffle_1301_ps
			m128shufps_114 label m128shufpsword
				jmp		_uXm_m128_shuffle_1302_ps
			m128shufps_115 label m128shufpsword
				jmp		_uXm_m128_shuffle_1303_ps
			m128shufps_116 label m128shufpsword
				jmp		_uXm_m128_shuffle_1310_ps
			m128shufps_117 label m128shufpsword
				jmp		_uXm_m128_shuffle_1311_ps
			m128shufps_118 label m128shufpsword
				jmp		_uXm_m128_shuffle_1312_ps
			m128shufps_119 label m128shufpsword
				jmp		_uXm_m128_shuffle_1313_ps
			m128shufps_120 label m128shufpsword
				jmp		_uXm_m128_shuffle_1320_ps
			m128shufps_121 label m128shufpsword
				jmp		_uXm_m128_shuffle_1321_ps
			m128shufps_122 label m128shufpsword
				jmp		_uXm_m128_shuffle_1322_ps
			m128shufps_123 label m128shufpsword
				jmp		_uXm_m128_shuffle_1323_ps
			m128shufps_124 label m128shufpsword
				jmp		_uXm_m128_shuffle_1330_ps
			m128shufps_125 label m128shufpsword
				jmp		_uXm_m128_shuffle_1331_ps
			m128shufps_126 label m128shufpsword
				jmp		_uXm_m128_shuffle_1332_ps
			m128shufps_127 label m128shufpsword
				jmp		_uXm_m128_shuffle_1333_ps
			m128shufps_128 label m128shufpsword
				jmp		_uXm_m128_shuffle_2000_ps
			m128shufps_129 label m128shufpsword
				jmp		_uXm_m128_shuffle_2001_ps
			m128shufps_130 label m128shufpsword
				jmp		_uXm_m128_shuffle_2002_ps
			m128shufps_131 label m128shufpsword
				jmp		_uXm_m128_shuffle_2003_ps
			m128shufps_132 label m128shufpsword
				jmp		_uXm_m128_shuffle_2010_ps
			m128shufps_133 label m128shufpsword
				jmp		_uXm_m128_shuffle_2011_ps
			m128shufps_134 label m128shufpsword
				jmp		_uXm_m128_shuffle_2012_ps
			m128shufps_135 label m128shufpsword
				jmp		_uXm_m128_shuffle_2013_ps
			m128shufps_136 label m128shufpsword
				jmp		_uXm_m128_shuffle_2020_ps
			m128shufps_137 label m128shufpsword
				jmp		_uXm_m128_shuffle_2021_ps
			m128shufps_138 label m128shufpsword
				jmp		_uXm_m128_shuffle_2022_ps
			m128shufps_139 label m128shufpsword
				jmp		_uXm_m128_shuffle_2023_ps
			m128shufps_140 label m128shufpsword
				jmp		_uXm_m128_shuffle_2030_ps
			m128shufps_141 label m128shufpsword
				jmp		_uXm_m128_shuffle_2031_ps
			m128shufps_142 label m128shufpsword
				jmp		_uXm_m128_shuffle_2032_ps
			m128shufps_143 label m128shufpsword
				jmp		_uXm_m128_shuffle_2033_ps
			m128shufps_144 label m128shufpsword
				jmp		_uXm_m128_shuffle_2100_ps
			m128shufps_145 label m128shufpsword
				jmp		_uXm_m128_shuffle_2101_ps
			m128shufps_146 label m128shufpsword
				jmp		_uXm_m128_shuffle_2102_ps
			m128shufps_147 label m128shufpsword
				jmp		_uXm_m128_shuffle_2103_ps
			m128shufps_148 label m128shufpsword
				jmp		_uXm_m128_shuffle_2110_ps
			m128shufps_149 label m128shufpsword
				jmp		_uXm_m128_shuffle_2111_ps
			m128shufps_150 label m128shufpsword
				jmp		_uXm_m128_shuffle_2112_ps
			m128shufps_151 label m128shufpsword
				jmp		_uXm_m128_shuffle_2113_ps
			m128shufps_152 label m128shufpsword
				jmp		_uXm_m128_shuffle_2120_ps
			m128shufps_153 label m128shufpsword
				jmp		_uXm_m128_shuffle_2121_ps
			m128shufps_154 label m128shufpsword
				jmp		_uXm_m128_shuffle_2122_ps
			m128shufps_155 label m128shufpsword
				jmp		_uXm_m128_shuffle_2123_ps
			m128shufps_156 label m128shufpsword
				jmp		_uXm_m128_shuffle_2130_ps
			m128shufps_157 label m128shufpsword
				jmp		_uXm_m128_shuffle_2131_ps
			m128shufps_158 label m128shufpsword
				jmp		_uXm_m128_shuffle_2132_ps
			m128shufps_159 label m128shufpsword
				jmp		_uXm_m128_shuffle_2133_ps
			m128shufps_160 label m128shufpsword
				jmp		_uXm_m128_shuffle_2200_ps
			m128shufps_161 label m128shufpsword
				jmp		_uXm_m128_shuffle_2201_ps
			m128shufps_162 label m128shufpsword
				jmp		_uXm_m128_shuffle_2202_ps
			m128shufps_163 label m128shufpsword
				jmp		_uXm_m128_shuffle_2203_ps
			m128shufps_164 label m128shufpsword
				jmp		_uXm_m128_shuffle_2210_ps
			m128shufps_165 label m128shufpsword
				jmp		_uXm_m128_shuffle_2211_ps
			m128shufps_166 label m128shufpsword
				jmp		_uXm_m128_shuffle_2212_ps
			m128shufps_167 label m128shufpsword
				jmp		_uXm_m128_shuffle_2213_ps
			m128shufps_168 label m128shufpsword
				jmp		_uXm_m128_shuffle_2220_ps
			m128shufps_169 label m128shufpsword
				jmp		_uXm_m128_shuffle_2221_ps
			m128shufps_170 label m128shufpsword
				jmp		_uXm_m128_shuffle_2222_ps
			m128shufps_171 label m128shufpsword
				jmp		_uXm_m128_shuffle_2223_ps
			m128shufps_172 label m128shufpsword
				jmp		_uXm_m128_shuffle_2230_ps
			m128shufps_173 label m128shufpsword
				jmp		_uXm_m128_shuffle_2231_ps
			m128shufps_174 label m128shufpsword
				jmp		_uXm_m128_shuffle_2232_ps
			m128shufps_175 label m128shufpsword
				jmp		_uXm_m128_shuffle_2233_ps
			m128shufps_176 label m128shufpsword
				jmp		_uXm_m128_shuffle_2300_ps
			m128shufps_177 label m128shufpsword
				jmp		_uXm_m128_shuffle_2301_ps
			m128shufps_178 label m128shufpsword
				jmp		_uXm_m128_shuffle_2302_ps
			m128shufps_179 label m128shufpsword
				jmp		_uXm_m128_shuffle_2303_ps
			m128shufps_180 label m128shufpsword
				jmp		_uXm_m128_shuffle_2310_ps
			m128shufps_181 label m128shufpsword
				jmp		_uXm_m128_shuffle_2311_ps
			m128shufps_182 label m128shufpsword
				jmp		_uXm_m128_shuffle_2312_ps
			m128shufps_183 label m128shufpsword
				jmp		_uXm_m128_shuffle_2313_ps
			m128shufps_184 label m128shufpsword
				jmp		_uXm_m128_shuffle_2320_ps
			m128shufps_185 label m128shufpsword
				jmp		_uXm_m128_shuffle_2321_ps
			m128shufps_186 label m128shufpsword
				jmp		_uXm_m128_shuffle_2322_ps
			m128shufps_187 label m128shufpsword
				jmp		_uXm_m128_shuffle_2323_ps
			m128shufps_188 label m128shufpsword
				jmp		_uXm_m128_shuffle_2330_ps
			m128shufps_189 label m128shufpsword
				jmp		_uXm_m128_shuffle_2331_ps
			m128shufps_190 label m128shufpsword
				jmp		_uXm_m128_shuffle_2332_ps
			m128shufps_191 label m128shufpsword
				jmp		_uXm_m128_shuffle_2333_ps
			m128shufps_192 label m128shufpsword
				jmp		_uXm_m128_shuffle_3000_ps
			m128shufps_193 label m128shufpsword
				jmp		_uXm_m128_shuffle_3001_ps
			m128shufps_194 label m128shufpsword
				jmp		_uXm_m128_shuffle_3002_ps
			m128shufps_195 label m128shufpsword
				jmp		_uXm_m128_shuffle_3003_ps
			m128shufps_196 label m128shufpsword
				jmp		_uXm_m128_shuffle_3010_ps
			m128shufps_197 label m128shufpsword
				jmp		_uXm_m128_shuffle_3011_ps
			m128shufps_198 label m128shufpsword
				jmp		_uXm_m128_shuffle_3012_ps
			m128shufps_199 label m128shufpsword
				jmp		_uXm_m128_shuffle_3013_ps
			m128shufps_200 label m128shufpsword
				jmp		_uXm_m128_shuffle_3020_ps
			m128shufps_201 label m128shufpsword
				jmp		_uXm_m128_shuffle_3021_ps
			m128shufps_202 label m128shufpsword
				jmp		_uXm_m128_shuffle_3022_ps
			m128shufps_203 label m128shufpsword
				jmp		_uXm_m128_shuffle_3023_ps
			m128shufps_204 label m128shufpsword
				jmp		_uXm_m128_shuffle_3030_ps
			m128shufps_205 label m128shufpsword
				jmp		_uXm_m128_shuffle_3031_ps
			m128shufps_206 label m128shufpsword
				jmp		_uXm_m128_shuffle_3032_ps
			m128shufps_207 label m128shufpsword
				jmp		_uXm_m128_shuffle_3033_ps
			m128shufps_208 label m128shufpsword
				jmp		_uXm_m128_shuffle_3100_ps
			m128shufps_209 label m128shufpsword
				jmp		_uXm_m128_shuffle_3101_ps
			m128shufps_210 label m128shufpsword
				jmp		_uXm_m128_shuffle_3102_ps
			m128shufps_211 label m128shufpsword
				jmp		_uXm_m128_shuffle_3103_ps
			m128shufps_212 label m128shufpsword
				jmp		_uXm_m128_shuffle_3110_ps
			m128shufps_213 label m128shufpsword
				jmp		_uXm_m128_shuffle_3111_ps
			m128shufps_214 label m128shufpsword
				jmp		_uXm_m128_shuffle_3112_ps
			m128shufps_215 label m128shufpsword
				jmp		_uXm_m128_shuffle_3113_ps
			m128shufps_216 label m128shufpsword
				jmp		_uXm_m128_shuffle_3120_ps
			m128shufps_217 label m128shufpsword
				jmp		_uXm_m128_shuffle_3121_ps
			m128shufps_218 label m128shufpsword
				jmp		_uXm_m128_shuffle_3122_ps
			m128shufps_219 label m128shufpsword
				jmp		_uXm_m128_shuffle_3123_ps
			m128shufps_220 label m128shufpsword
				jmp		_uXm_m128_shuffle_3130_ps
			m128shufps_221 label m128shufpsword
				jmp		_uXm_m128_shuffle_3131_ps
			m128shufps_222 label m128shufpsword
				jmp		_uXm_m128_shuffle_3132_ps
			m128shufps_223 label m128shufpsword
				jmp		_uXm_m128_shuffle_3133_ps
			m128shufps_224 label m128shufpsword
				jmp		_uXm_m128_shuffle_3200_ps
			m128shufps_225 label m128shufpsword
				jmp		_uXm_m128_shuffle_3201_ps
			m128shufps_226 label m128shufpsword
				jmp		_uXm_m128_shuffle_3202_ps
			m128shufps_227 label m128shufpsword
				jmp		_uXm_m128_shuffle_3203_ps
			m128shufps_228 label m128shufpsword
				jmp		_uXm_m128_shuffle_3210_ps
			m128shufps_229 label m128shufpsword
				jmp		_uXm_m128_shuffle_3211_ps
			m128shufps_230 label m128shufpsword
				jmp		_uXm_m128_shuffle_3212_ps
			m128shufps_231 label m128shufpsword
				jmp		_uXm_m128_shuffle_3213_ps
			m128shufps_232 label m128shufpsword
				jmp		_uXm_m128_shuffle_3220_ps
			m128shufps_233 label m128shufpsword
				jmp		_uXm_m128_shuffle_3221_ps
			m128shufps_234 label m128shufpsword
				jmp		_uXm_m128_shuffle_3222_ps
			m128shufps_235 label m128shufpsword
				jmp		_uXm_m128_shuffle_3223_ps
			m128shufps_236 label m128shufpsword
				jmp		_uXm_m128_shuffle_3230_ps
			m128shufps_237 label m128shufpsword
				jmp		_uXm_m128_shuffle_3231_ps
			m128shufps_238 label m128shufpsword
				jmp		_uXm_m128_shuffle_3232_ps
			m128shufps_239 label m128shufpsword
				jmp		_uXm_m128_shuffle_3233_ps
			m128shufps_240 label m128shufpsword
				jmp		_uXm_m128_shuffle_3300_ps
			m128shufps_241 label m128shufpsword
				jmp		_uXm_m128_shuffle_3301_ps
			m128shufps_242 label m128shufpsword
				jmp		_uXm_m128_shuffle_3302_ps
			m128shufps_243 label m128shufpsword
				jmp		_uXm_m128_shuffle_3303_ps
			m128shufps_244 label m128shufpsword
				jmp		_uXm_m128_shuffle_3310_ps
			m128shufps_245 label m128shufpsword
				jmp		_uXm_m128_shuffle_3311_ps
			m128shufps_246 label m128shufpsword
				jmp		_uXm_m128_shuffle_3312_ps
			m128shufps_247 label m128shufpsword
				jmp		_uXm_m128_shuffle_3313_ps
			m128shufps_248 label m128shufpsword
				jmp		_uXm_m128_shuffle_3320_ps
			m128shufps_249 label m128shufpsword
				jmp		_uXm_m128_shuffle_3321_ps
			m128shufps_250 label m128shufpsword
				jmp		_uXm_m128_shuffle_3322_ps
			m128shufps_251 label m128shufpsword
				jmp		_uXm_m128_shuffle_3323_ps
			m128shufps_252 label m128shufpsword
				jmp		_uXm_m128_shuffle_3330_ps
			m128shufps_253 label m128shufpsword
				jmp		_uXm_m128_shuffle_3331_ps
			m128shufps_254 label m128shufpsword
				jmp		_uXm_m128_shuffle_3332_ps
			m128shufps_255 label m128shufpsword
				jmp		_uXm_m128_shuffle_3333_ps

_uXm_m128_shuffle_ps endp

	end
