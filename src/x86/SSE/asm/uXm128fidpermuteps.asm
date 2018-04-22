
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.code

;******************
; Proto
;******************
_uXm_m128fid_permute_0000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_0333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_1333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
_uXm_m128fid_permute_2103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
_uXm_m128fid_permute_2123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
_uXm_m128fid_permute_2233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_2333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_3333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_permute_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword

;******************
; Proc
;******************
			align 16
_uXm_m128fid_permute_0000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			0
				ret
_uXm_m128fid_permute_0000_ps endp

			align 16
_uXm_m128fid_permute_0001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			1
				ret
_uXm_m128fid_permute_0001_ps endp

			align 16
_uXm_m128fid_permute_0002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			2
				ret
_uXm_m128fid_permute_0002_ps endp

			align 16
_uXm_m128fid_permute_0003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			3
				ret
_uXm_m128fid_permute_0003_ps endp

			align 16
_uXm_m128fid_permute_0010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			4
				ret
_uXm_m128fid_permute_0010_ps endp

			align 16
_uXm_m128fid_permute_0011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			5
				ret
_uXm_m128fid_permute_0011_ps endp

			align 16
_uXm_m128fid_permute_0012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			6
				ret
_uXm_m128fid_permute_0012_ps endp

			align 16
_uXm_m128fid_permute_0013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			7
				ret
_uXm_m128fid_permute_0013_ps endp

			align 16
_uXm_m128fid_permute_0020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			8
				ret
_uXm_m128fid_permute_0020_ps endp

			align 16
_uXm_m128fid_permute_0021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			9
				ret
_uXm_m128fid_permute_0021_ps endp

			align 16
_uXm_m128fid_permute_0022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			10
				ret
_uXm_m128fid_permute_0022_ps endp

			align 16
_uXm_m128fid_permute_0023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			11
				ret
_uXm_m128fid_permute_0023_ps endp

			align 16
_uXm_m128fid_permute_0030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			12
				ret
_uXm_m128fid_permute_0030_ps endp

			align 16
_uXm_m128fid_permute_0031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			13
				ret
_uXm_m128fid_permute_0031_ps endp

			align 16
_uXm_m128fid_permute_0032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			14
				ret
_uXm_m128fid_permute_0032_ps endp

			align 16
_uXm_m128fid_permute_0033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			15
				ret
_uXm_m128fid_permute_0033_ps endp

			align 16
_uXm_m128fid_permute_0100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			16
				ret
_uXm_m128fid_permute_0100_ps endp

			align 16
_uXm_m128fid_permute_0101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			17
				ret
_uXm_m128fid_permute_0101_ps endp

			align 16
_uXm_m128fid_permute_0102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			18
				ret
_uXm_m128fid_permute_0102_ps endp

			align 16
_uXm_m128fid_permute_0103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			19
				ret
_uXm_m128fid_permute_0103_ps endp

			align 16
_uXm_m128fid_permute_0110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			20
				ret
_uXm_m128fid_permute_0110_ps endp

			align 16
_uXm_m128fid_permute_0111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			21
				ret
_uXm_m128fid_permute_0111_ps endp

			align 16
_uXm_m128fid_permute_0112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			22
				ret
_uXm_m128fid_permute_0112_ps endp

			align 16
_uXm_m128fid_permute_0113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			23
				ret
_uXm_m128fid_permute_0113_ps endp

			align 16
_uXm_m128fid_permute_0120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			24
				ret
_uXm_m128fid_permute_0120_ps endp

			align 16
_uXm_m128fid_permute_0121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			25
				ret
_uXm_m128fid_permute_0121_ps endp

			align 16
_uXm_m128fid_permute_0122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			26
				ret
_uXm_m128fid_permute_0122_ps endp

			align 16
_uXm_m128fid_permute_0123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			27
				ret
_uXm_m128fid_permute_0123_ps endp

			align 16
_uXm_m128fid_permute_0130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			28
				ret
_uXm_m128fid_permute_0130_ps endp

			align 16
_uXm_m128fid_permute_0131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			29
				ret
_uXm_m128fid_permute_0131_ps endp

			align 16
_uXm_m128fid_permute_0132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			30
				ret
_uXm_m128fid_permute_0132_ps endp

			align 16
_uXm_m128fid_permute_0133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			31
				ret
_uXm_m128fid_permute_0133_ps endp

			align 16
_uXm_m128fid_permute_0200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			32
				ret
_uXm_m128fid_permute_0200_ps endp

			align 16
_uXm_m128fid_permute_0201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			33
				ret
_uXm_m128fid_permute_0201_ps endp

			align 16
_uXm_m128fid_permute_0202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			34
				ret
_uXm_m128fid_permute_0202_ps endp

			align 16
_uXm_m128fid_permute_0203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			35
				ret
_uXm_m128fid_permute_0203_ps endp

			align 16
_uXm_m128fid_permute_0210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			36
				ret
_uXm_m128fid_permute_0210_ps endp

			align 16
_uXm_m128fid_permute_0211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			37
				ret
_uXm_m128fid_permute_0211_ps endp

			align 16
_uXm_m128fid_permute_0212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			38
				ret
_uXm_m128fid_permute_0212_ps endp

			align 16
_uXm_m128fid_permute_0213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			39
				ret
_uXm_m128fid_permute_0213_ps endp

			align 16
_uXm_m128fid_permute_0220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			40
				ret
_uXm_m128fid_permute_0220_ps endp

			align 16
_uXm_m128fid_permute_0221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			41
				ret
_uXm_m128fid_permute_0221_ps endp

			align 16
_uXm_m128fid_permute_0222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			42
				ret
_uXm_m128fid_permute_0222_ps endp

			align 16
_uXm_m128fid_permute_0223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			43
				ret
_uXm_m128fid_permute_0223_ps endp

			align 16
_uXm_m128fid_permute_0230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			44
				ret
_uXm_m128fid_permute_0230_ps endp

			align 16
_uXm_m128fid_permute_0231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			45
				ret
_uXm_m128fid_permute_0231_ps endp

			align 16
_uXm_m128fid_permute_0232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			46
				ret
_uXm_m128fid_permute_0232_ps endp

			align 16
_uXm_m128fid_permute_0233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			47
				ret
_uXm_m128fid_permute_0233_ps endp

			align 16
_uXm_m128fid_permute_0300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			48
				ret
_uXm_m128fid_permute_0300_ps endp

			align 16
_uXm_m128fid_permute_0301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			49
				ret
_uXm_m128fid_permute_0301_ps endp

			align 16
_uXm_m128fid_permute_0302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			50
				ret
_uXm_m128fid_permute_0302_ps endp

			align 16
_uXm_m128fid_permute_0303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			51
				ret
_uXm_m128fid_permute_0303_ps endp

			align 16
_uXm_m128fid_permute_0310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			52
				ret
_uXm_m128fid_permute_0310_ps endp

			align 16
_uXm_m128fid_permute_0311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			53
				ret
_uXm_m128fid_permute_0311_ps endp

			align 16
_uXm_m128fid_permute_0312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			54
				ret
_uXm_m128fid_permute_0312_ps endp

			align 16
_uXm_m128fid_permute_0313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			55
				ret
_uXm_m128fid_permute_0313_ps endp

			align 16
_uXm_m128fid_permute_0320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			56
				ret
_uXm_m128fid_permute_0320_ps endp

			align 16
_uXm_m128fid_permute_0321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			57
				ret
_uXm_m128fid_permute_0321_ps endp

			align 16
_uXm_m128fid_permute_0322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			58
				ret
_uXm_m128fid_permute_0322_ps endp

			align 16
_uXm_m128fid_permute_0323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			59
				ret
_uXm_m128fid_permute_0323_ps endp

			align 16
_uXm_m128fid_permute_0330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			60
				ret
_uXm_m128fid_permute_0330_ps endp

			align 16
_uXm_m128fid_permute_0331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			61
				ret
_uXm_m128fid_permute_0331_ps endp

			align 16
_uXm_m128fid_permute_0332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			62
				ret
_uXm_m128fid_permute_0332_ps endp

			align 16
_uXm_m128fid_permute_0333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			63
				ret
_uXm_m128fid_permute_0333_ps endp

			align 16
_uXm_m128fid_permute_1000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			64
				ret
_uXm_m128fid_permute_1000_ps endp

			align 16
_uXm_m128fid_permute_1001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			65
				ret
_uXm_m128fid_permute_1001_ps endp

			align 16
_uXm_m128fid_permute_1002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			66
				ret
_uXm_m128fid_permute_1002_ps endp

			align 16
_uXm_m128fid_permute_1003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			67
				ret
_uXm_m128fid_permute_1003_ps endp

			align 16
_uXm_m128fid_permute_1010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			68
				ret
_uXm_m128fid_permute_1010_ps endp

			align 16
_uXm_m128fid_permute_1011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			69
				ret
_uXm_m128fid_permute_1011_ps endp

			align 16
_uXm_m128fid_permute_1012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			70
				ret
_uXm_m128fid_permute_1012_ps endp

			align 16
_uXm_m128fid_permute_1013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			71
				ret
_uXm_m128fid_permute_1013_ps endp

			align 16
_uXm_m128fid_permute_1020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			72
				ret
_uXm_m128fid_permute_1020_ps endp

			align 16
_uXm_m128fid_permute_1021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			73
				ret
_uXm_m128fid_permute_1021_ps endp

			align 16
_uXm_m128fid_permute_1022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			74
				ret
_uXm_m128fid_permute_1022_ps endp

			align 16
_uXm_m128fid_permute_1023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			75
				ret
_uXm_m128fid_permute_1023_ps endp

			align 16
_uXm_m128fid_permute_1030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			76
				ret
_uXm_m128fid_permute_1030_ps endp

			align 16
_uXm_m128fid_permute_1031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			77
				ret
_uXm_m128fid_permute_1031_ps endp

			align 16
_uXm_m128fid_permute_1032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			78
				ret
_uXm_m128fid_permute_1032_ps endp

			align 16
_uXm_m128fid_permute_1033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			79
				ret
_uXm_m128fid_permute_1033_ps endp

			align 16
_uXm_m128fid_permute_1100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			80
				ret
_uXm_m128fid_permute_1100_ps endp

			align 16
_uXm_m128fid_permute_1101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			81
				ret
_uXm_m128fid_permute_1101_ps endp

			align 16
_uXm_m128fid_permute_1102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			82
				ret
_uXm_m128fid_permute_1102_ps endp

			align 16
_uXm_m128fid_permute_1103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			83
				ret
_uXm_m128fid_permute_1103_ps endp

			align 16
_uXm_m128fid_permute_1110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			84
				ret
_uXm_m128fid_permute_1110_ps endp

			align 16
_uXm_m128fid_permute_1111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			85
				ret
_uXm_m128fid_permute_1111_ps endp

			align 16
_uXm_m128fid_permute_1112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			86
				ret
_uXm_m128fid_permute_1112_ps endp

			align 16
_uXm_m128fid_permute_1113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			87
				ret
_uXm_m128fid_permute_1113_ps endp

			align 16
_uXm_m128fid_permute_1120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			88
				ret
_uXm_m128fid_permute_1120_ps endp

			align 16
_uXm_m128fid_permute_1121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			89
				ret
_uXm_m128fid_permute_1121_ps endp

			align 16
_uXm_m128fid_permute_1122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			90
				ret
_uXm_m128fid_permute_1122_ps endp

			align 16
_uXm_m128fid_permute_1123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			91
				ret
_uXm_m128fid_permute_1123_ps endp

			align 16
_uXm_m128fid_permute_1130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			92
				ret
_uXm_m128fid_permute_1130_ps endp

			align 16
_uXm_m128fid_permute_1131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			93
				ret
_uXm_m128fid_permute_1131_ps endp

			align 16
_uXm_m128fid_permute_1132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			94
				ret
_uXm_m128fid_permute_1132_ps endp

			align 16
_uXm_m128fid_permute_1133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			95
				ret
_uXm_m128fid_permute_1133_ps endp

			align 16
_uXm_m128fid_permute_1200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			96
				ret
_uXm_m128fid_permute_1200_ps endp

			align 16
_uXm_m128fid_permute_1201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			97
				ret
_uXm_m128fid_permute_1201_ps endp

			align 16
_uXm_m128fid_permute_1202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			98
				ret
_uXm_m128fid_permute_1202_ps endp

			align 16
_uXm_m128fid_permute_1203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			99
				ret
_uXm_m128fid_permute_1203_ps endp

			align 16
_uXm_m128fid_permute_1210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			100
				ret
_uXm_m128fid_permute_1210_ps endp

			align 16
_uXm_m128fid_permute_1211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			101
				ret
_uXm_m128fid_permute_1211_ps endp

			align 16
_uXm_m128fid_permute_1212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			102
				ret
_uXm_m128fid_permute_1212_ps endp

			align 16
_uXm_m128fid_permute_1213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			103
				ret
_uXm_m128fid_permute_1213_ps endp

			align 16
_uXm_m128fid_permute_1220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			104
				ret
_uXm_m128fid_permute_1220_ps endp

			align 16
_uXm_m128fid_permute_1221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			105
				ret
_uXm_m128fid_permute_1221_ps endp

			align 16
_uXm_m128fid_permute_1222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			106
				ret
_uXm_m128fid_permute_1222_ps endp

			align 16
_uXm_m128fid_permute_1223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			107
				ret
_uXm_m128fid_permute_1223_ps endp

			align 16
_uXm_m128fid_permute_1230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			108
				ret
_uXm_m128fid_permute_1230_ps endp

			align 16
_uXm_m128fid_permute_1231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			109
				ret
_uXm_m128fid_permute_1231_ps endp

			align 16
_uXm_m128fid_permute_1232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			110
				ret
_uXm_m128fid_permute_1232_ps endp

			align 16
_uXm_m128fid_permute_1233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			111
				ret
_uXm_m128fid_permute_1233_ps endp

			align 16
_uXm_m128fid_permute_1300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			112
				ret
_uXm_m128fid_permute_1300_ps endp

			align 16
_uXm_m128fid_permute_1301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			113
				ret
_uXm_m128fid_permute_1301_ps endp

			align 16
_uXm_m128fid_permute_1302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			114
				ret
_uXm_m128fid_permute_1302_ps endp

			align 16
_uXm_m128fid_permute_1303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			115
				ret
_uXm_m128fid_permute_1303_ps endp

			align 16
_uXm_m128fid_permute_1310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			116
				ret
_uXm_m128fid_permute_1310_ps endp

			align 16
_uXm_m128fid_permute_1311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			117
				ret
_uXm_m128fid_permute_1311_ps endp

			align 16
_uXm_m128fid_permute_1312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			118
				ret
_uXm_m128fid_permute_1312_ps endp

			align 16
_uXm_m128fid_permute_1313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			119
				ret
_uXm_m128fid_permute_1313_ps endp

			align 16
_uXm_m128fid_permute_1320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			120
				ret
_uXm_m128fid_permute_1320_ps endp

			align 16
_uXm_m128fid_permute_1321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			121
				ret
_uXm_m128fid_permute_1321_ps endp

			align 16
_uXm_m128fid_permute_1322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			122
				ret
_uXm_m128fid_permute_1322_ps endp

			align 16
_uXm_m128fid_permute_1323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			123
				ret
_uXm_m128fid_permute_1323_ps endp

			align 16
_uXm_m128fid_permute_1330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			124
				ret
_uXm_m128fid_permute_1330_ps endp

			align 16
_uXm_m128fid_permute_1331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			125
				ret
_uXm_m128fid_permute_1331_ps endp

			align 16
_uXm_m128fid_permute_1332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			126
				ret
_uXm_m128fid_permute_1332_ps endp

			align 16
_uXm_m128fid_permute_1333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			127
				ret
_uXm_m128fid_permute_1333_ps endp

			align 16
_uXm_m128fid_permute_2000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			128
				ret
_uXm_m128fid_permute_2000_ps endp

			align 16
_uXm_m128fid_permute_2001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			129
				ret
_uXm_m128fid_permute_2001_ps endp

			align 16
_uXm_m128fid_permute_2002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			130
				ret
_uXm_m128fid_permute_2002_ps endp

			align 16
_uXm_m128fid_permute_2003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			131
				ret
_uXm_m128fid_permute_2003_ps endp

			align 16
_uXm_m128fid_permute_2010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			132
				ret
_uXm_m128fid_permute_2010_ps endp

			align 16
_uXm_m128fid_permute_2011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			133
				ret
_uXm_m128fid_permute_2011_ps endp

			align 16
_uXm_m128fid_permute_2012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			134
				ret
_uXm_m128fid_permute_2012_ps endp

			align 16
_uXm_m128fid_permute_2013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			135
				ret
_uXm_m128fid_permute_2013_ps endp

			align 16
_uXm_m128fid_permute_2020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			136
				ret
_uXm_m128fid_permute_2020_ps endp

			align 16
_uXm_m128fid_permute_2021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			137
				ret
_uXm_m128fid_permute_2021_ps endp

			align 16
_uXm_m128fid_permute_2022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			138
				ret
_uXm_m128fid_permute_2022_ps endp

			align 16
_uXm_m128fid_permute_2023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			139
				ret
_uXm_m128fid_permute_2023_ps endp

			align 16
_uXm_m128fid_permute_2030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			140
				ret
_uXm_m128fid_permute_2030_ps endp

			align 16
_uXm_m128fid_permute_2031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			141
				ret
_uXm_m128fid_permute_2031_ps endp

			align 16
_uXm_m128fid_permute_2032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			142
				ret
_uXm_m128fid_permute_2032_ps endp

			align 16
_uXm_m128fid_permute_2033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			143
				ret
_uXm_m128fid_permute_2033_ps endp

			align 16
_uXm_m128fid_permute_2100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			144
				ret
_uXm_m128fid_permute_2100_ps endp

			align 16
_uXm_m128fid_permute_2101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			145
				ret
_uXm_m128fid_permute_2101_ps endp

			align 16
_uXm_m128fid_permute_2102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				shufps				xmm0,			xmm0,			146
				ret
_uXm_m128fid_permute_2102_ps endp

			align 16
_uXm_m128fid_permute_2103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			147
				ret
_uXm_m128fid_permute_2103_ps endp

			align 16
_uXm_m128fid_permute_2110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			148
				ret
_uXm_m128fid_permute_2110_ps endp

			align 16
_uXm_m128fid_permute_2111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			149
				ret
_uXm_m128fid_permute_2111_ps endp

			align 16
_uXm_m128fid_permute_2112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			150
				ret
_uXm_m128fid_permute_2112_ps endp

			align 16
_uXm_m128fid_permute_2113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			151
				ret
_uXm_m128fid_permute_2113_ps endp

			align 16
_uXm_m128fid_permute_2120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			152
				ret
_uXm_m128fid_permute_2120_ps endp

			align 16
_uXm_m128fid_permute_2121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			153
				ret
_uXm_m128fid_permute_2121_ps endp

			align 16
_uXm_m128fid_permute_2122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				shufps				xmm0,			xmm0,			154
				ret
_uXm_m128fid_permute_2122_ps endp

			align 16
_uXm_m128fid_permute_2123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			155
				ret
_uXm_m128fid_permute_2123_ps endp

			align 16
_uXm_m128fid_permute_2130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			156
				ret
_uXm_m128fid_permute_2130_ps endp

			align 16
_uXm_m128fid_permute_2131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			157
				ret
_uXm_m128fid_permute_2131_ps endp

			align 16
_uXm_m128fid_permute_2132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			158
				ret
_uXm_m128fid_permute_2132_ps endp

			align 16
_uXm_m128fid_permute_2133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			159
				ret
_uXm_m128fid_permute_2133_ps endp

			align 16
_uXm_m128fid_permute_2200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			160
				ret
_uXm_m128fid_permute_2200_ps endp

			align 16
_uXm_m128fid_permute_2201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			161
				ret
_uXm_m128fid_permute_2201_ps endp

			align 16
_uXm_m128fid_permute_2202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			162
				ret
_uXm_m128fid_permute_2202_ps endp

			align 16
_uXm_m128fid_permute_2203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			163
				ret
_uXm_m128fid_permute_2203_ps endp

			align 16
_uXm_m128fid_permute_2210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			164
				ret
_uXm_m128fid_permute_2210_ps endp

			align 16
_uXm_m128fid_permute_2211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			165
				ret
_uXm_m128fid_permute_2211_ps endp

			align 16
_uXm_m128fid_permute_2212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			166
				ret
_uXm_m128fid_permute_2212_ps endp

			align 16
_uXm_m128fid_permute_2213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			167
				ret
_uXm_m128fid_permute_2213_ps endp

			align 16
_uXm_m128fid_permute_2220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			168
				ret
_uXm_m128fid_permute_2220_ps endp

			align 16
_uXm_m128fid_permute_2221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			169
				ret
_uXm_m128fid_permute_2221_ps endp

			align 16
_uXm_m128fid_permute_2222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			170
				ret
_uXm_m128fid_permute_2222_ps endp

			align 16
_uXm_m128fid_permute_2223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			171
				ret
_uXm_m128fid_permute_2223_ps endp

			align 16
_uXm_m128fid_permute_2230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			172
				ret
_uXm_m128fid_permute_2230_ps endp

			align 16
_uXm_m128fid_permute_2231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			173
				ret
_uXm_m128fid_permute_2231_ps endp

			align 16
_uXm_m128fid_permute_2232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
				shufps				xmm0,			xmm0,			174
				ret
_uXm_m128fid_permute_2232_ps endp

			align 16
_uXm_m128fid_permute_2233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			175
				ret
_uXm_m128fid_permute_2233_ps endp

			align 16
_uXm_m128fid_permute_2300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			176
				ret
_uXm_m128fid_permute_2300_ps endp

			align 16
_uXm_m128fid_permute_2301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			177
				ret
_uXm_m128fid_permute_2301_ps endp

			align 16
_uXm_m128fid_permute_2302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			178
				ret
_uXm_m128fid_permute_2302_ps endp

			align 16
_uXm_m128fid_permute_2303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			179
				ret
_uXm_m128fid_permute_2303_ps endp

			align 16
_uXm_m128fid_permute_2310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			180
				ret
_uXm_m128fid_permute_2310_ps endp

			align 16
_uXm_m128fid_permute_2311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			181
				ret
_uXm_m128fid_permute_2311_ps endp

			align 16
_uXm_m128fid_permute_2312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			182
				ret
_uXm_m128fid_permute_2312_ps endp

			align 16
_uXm_m128fid_permute_2313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			183
				ret
_uXm_m128fid_permute_2313_ps endp

			align 16
_uXm_m128fid_permute_2320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			184
				ret
_uXm_m128fid_permute_2320_ps endp

			align 16
_uXm_m128fid_permute_2321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			185
				ret
_uXm_m128fid_permute_2321_ps endp

			align 16
_uXm_m128fid_permute_2322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			186
				ret
_uXm_m128fid_permute_2322_ps endp

			align 16
_uXm_m128fid_permute_2323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			187
				ret
_uXm_m128fid_permute_2323_ps endp

			align 16
_uXm_m128fid_permute_2330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			188
				ret
_uXm_m128fid_permute_2330_ps endp

			align 16
_uXm_m128fid_permute_2331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			189
				ret
_uXm_m128fid_permute_2331_ps endp

			align 16
_uXm_m128fid_permute_2332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			190
				ret
_uXm_m128fid_permute_2332_ps endp

			align 16
_uXm_m128fid_permute_2333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			191
				ret
_uXm_m128fid_permute_2333_ps endp

			align 16
_uXm_m128fid_permute_3000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			192
				ret
_uXm_m128fid_permute_3000_ps endp

			align 16
_uXm_m128fid_permute_3001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			193
				ret
_uXm_m128fid_permute_3001_ps endp

			align 16
_uXm_m128fid_permute_3002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			194
				ret
_uXm_m128fid_permute_3002_ps endp

			align 16
_uXm_m128fid_permute_3003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			195
				ret
_uXm_m128fid_permute_3003_ps endp

			align 16
_uXm_m128fid_permute_3010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			196
				ret
_uXm_m128fid_permute_3010_ps endp

			align 16
_uXm_m128fid_permute_3011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			197
				ret
_uXm_m128fid_permute_3011_ps endp

			align 16
_uXm_m128fid_permute_3012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			198
				ret
_uXm_m128fid_permute_3012_ps endp

			align 16
_uXm_m128fid_permute_3013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			199
				ret
_uXm_m128fid_permute_3013_ps endp

			align 16
_uXm_m128fid_permute_3020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			200
				ret
_uXm_m128fid_permute_3020_ps endp

			align 16
_uXm_m128fid_permute_3021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			201
				ret
_uXm_m128fid_permute_3021_ps endp

			align 16
_uXm_m128fid_permute_3022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			202
				ret
_uXm_m128fid_permute_3022_ps endp

			align 16
_uXm_m128fid_permute_3023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			203
				ret
_uXm_m128fid_permute_3023_ps endp

			align 16
_uXm_m128fid_permute_3030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			204
				ret
_uXm_m128fid_permute_3030_ps endp

			align 16
_uXm_m128fid_permute_3031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			205
				ret
_uXm_m128fid_permute_3031_ps endp

			align 16
_uXm_m128fid_permute_3032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			206
				ret
_uXm_m128fid_permute_3032_ps endp

			align 16
_uXm_m128fid_permute_3033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			207
				ret
_uXm_m128fid_permute_3033_ps endp

			align 16
_uXm_m128fid_permute_3100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			208
				ret
_uXm_m128fid_permute_3100_ps endp

			align 16
_uXm_m128fid_permute_3101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			209
				ret
_uXm_m128fid_permute_3101_ps endp

			align 16
_uXm_m128fid_permute_3102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			210
				ret
_uXm_m128fid_permute_3102_ps endp

			align 16
_uXm_m128fid_permute_3103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			211
				ret
_uXm_m128fid_permute_3103_ps endp

			align 16
_uXm_m128fid_permute_3110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			212
				ret
_uXm_m128fid_permute_3110_ps endp

			align 16
_uXm_m128fid_permute_3111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			213
				ret
_uXm_m128fid_permute_3111_ps endp

			align 16
_uXm_m128fid_permute_3112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			214
				ret
_uXm_m128fid_permute_3112_ps endp

			align 16
_uXm_m128fid_permute_3113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			215
				ret
_uXm_m128fid_permute_3113_ps endp

			align 16
_uXm_m128fid_permute_3120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			216
				ret
_uXm_m128fid_permute_3120_ps endp

			align 16
_uXm_m128fid_permute_3121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			217
				ret
_uXm_m128fid_permute_3121_ps endp

			align 16
_uXm_m128fid_permute_3122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			218
				ret
_uXm_m128fid_permute_3122_ps endp

			align 16
_uXm_m128fid_permute_3123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			219
				ret
_uXm_m128fid_permute_3123_ps endp

			align 16
_uXm_m128fid_permute_3130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			220
				ret
_uXm_m128fid_permute_3130_ps endp

			align 16
_uXm_m128fid_permute_3131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			221
				ret
_uXm_m128fid_permute_3131_ps endp

			align 16
_uXm_m128fid_permute_3132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			222
				ret
_uXm_m128fid_permute_3132_ps endp

			align 16
_uXm_m128fid_permute_3133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			223
				ret
_uXm_m128fid_permute_3133_ps endp

			align 16
_uXm_m128fid_permute_3200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			224
				ret
_uXm_m128fid_permute_3200_ps endp

			align 16
_uXm_m128fid_permute_3201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			225
				ret
_uXm_m128fid_permute_3201_ps endp

			align 16
_uXm_m128fid_permute_3202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			226
				ret
_uXm_m128fid_permute_3202_ps endp

			align 16
_uXm_m128fid_permute_3203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			227
				ret
_uXm_m128fid_permute_3203_ps endp

			align 16
_uXm_m128fid_permute_3210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			228
				ret
_uXm_m128fid_permute_3210_ps endp

			align 16
_uXm_m128fid_permute_3211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			229
				ret
_uXm_m128fid_permute_3211_ps endp

			align 16
_uXm_m128fid_permute_3212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			230
				ret
_uXm_m128fid_permute_3212_ps endp

			align 16
_uXm_m128fid_permute_3213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			231
				ret
_uXm_m128fid_permute_3213_ps endp

			align 16
_uXm_m128fid_permute_3220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			232
				ret
_uXm_m128fid_permute_3220_ps endp

			align 16
_uXm_m128fid_permute_3221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			233
				ret
_uXm_m128fid_permute_3221_ps endp

			align 16
_uXm_m128fid_permute_3222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			234
				ret
_uXm_m128fid_permute_3222_ps endp

			align 16
_uXm_m128fid_permute_3223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			235
				ret
_uXm_m128fid_permute_3223_ps endp

			align 16
_uXm_m128fid_permute_3230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			236
				ret
_uXm_m128fid_permute_3230_ps endp

			align 16
_uXm_m128fid_permute_3231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			237
				ret
_uXm_m128fid_permute_3231_ps endp

			align 16
_uXm_m128fid_permute_3232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			238
				ret
_uXm_m128fid_permute_3232_ps endp

			align 16
_uXm_m128fid_permute_3233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			239
				ret
_uXm_m128fid_permute_3233_ps endp

			align 16
_uXm_m128fid_permute_3300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			240
				ret
_uXm_m128fid_permute_3300_ps endp

			align 16
_uXm_m128fid_permute_3301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			241
				ret
_uXm_m128fid_permute_3301_ps endp

			align 16
_uXm_m128fid_permute_3302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			242
				ret
_uXm_m128fid_permute_3302_ps endp

			align 16
_uXm_m128fid_permute_3303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			243
				ret
_uXm_m128fid_permute_3303_ps endp

			align 16
_uXm_m128fid_permute_3310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			244
				ret
_uXm_m128fid_permute_3310_ps endp

			align 16
_uXm_m128fid_permute_3311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			245
				ret
_uXm_m128fid_permute_3311_ps endp

			align 16
_uXm_m128fid_permute_3312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			246
				ret
_uXm_m128fid_permute_3312_ps endp

			align 16
_uXm_m128fid_permute_3313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			247
				ret
_uXm_m128fid_permute_3313_ps endp

			align 16
_uXm_m128fid_permute_3320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			248
				ret
_uXm_m128fid_permute_3320_ps endp

			align 16
_uXm_m128fid_permute_3321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			249
				ret
_uXm_m128fid_permute_3321_ps endp

			align 16
_uXm_m128fid_permute_3322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			250
				ret
_uXm_m128fid_permute_3322_ps endp

			align 16
_uXm_m128fid_permute_3323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			251
				ret
_uXm_m128fid_permute_3323_ps endp

			align 16
_uXm_m128fid_permute_3330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			252
				ret
_uXm_m128fid_permute_3330_ps endp

			align 16
_uXm_m128fid_permute_3331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			253
				ret
_uXm_m128fid_permute_3331_ps endp

			align 16
_uXm_m128fid_permute_3332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			254
				ret
_uXm_m128fid_permute_3332_ps endp

			align 16
_uXm_m128fid_permute_3333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufps				xmm0,			xmm0,			255
				ret
_uXm_m128fid_permute_3333_ps endp

			align 16
_uXm_m128fid_permute_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword
				
		ifndef __X64__
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[m128fidpermpsjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			m128fidpermpsjmptable
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
			lea				rbx,			[m128fidpermpsjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			m128fidpermpsjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			m128fidpermpsword		textequ		<dword>
			m128fidpermpsiword		textequ		<dd>
		else
			m128fidpermpsword		textequ		<qword>
			m128fidpermpsiword		textequ		<dq>
		endif
		
		m128fidpermpsjmptable label m128fidpermpsword
			m128fidpermpsiword offset m128fidpermps_0, offset m128fidpermps_1, offset m128fidpermps_2, offset m128fidpermps_3, offset m128fidpermps_4, offset m128fidpermps_5, offset m128fidpermps_6, offset m128fidpermps_7, offset m128fidpermps_8, offset m128fidpermps_9, offset m128fidpermps_10, offset m128fidpermps_11, offset m128fidpermps_12, offset m128fidpermps_13, offset m128fidpermps_14, offset m128fidpermps_15, offset m128fidpermps_16, offset m128fidpermps_17, offset m128fidpermps_18, offset m128fidpermps_19, offset m128fidpermps_20, offset m128fidpermps_21, offset m128fidpermps_22, offset m128fidpermps_23, offset m128fidpermps_24, offset m128fidpermps_25
			m128fidpermpsiword offset m128fidpermps_26, offset m128fidpermps_27, offset m128fidpermps_28, offset m128fidpermps_29, offset m128fidpermps_30, offset m128fidpermps_31, offset m128fidpermps_32, offset m128fidpermps_33, offset m128fidpermps_34, offset m128fidpermps_35, offset m128fidpermps_36, offset m128fidpermps_37, offset m128fidpermps_38, offset m128fidpermps_39, offset m128fidpermps_40, offset m128fidpermps_41, offset m128fidpermps_42, offset m128fidpermps_43, offset m128fidpermps_44, offset m128fidpermps_45, offset m128fidpermps_46, offset m128fidpermps_47, offset m128fidpermps_48, offset m128fidpermps_49, offset m128fidpermps_50
			m128fidpermpsiword offset m128fidpermps_51, offset m128fidpermps_52, offset m128fidpermps_53, offset m128fidpermps_54, offset m128fidpermps_55, offset m128fidpermps_56, offset m128fidpermps_57, offset m128fidpermps_58, offset m128fidpermps_59, offset m128fidpermps_60, offset m128fidpermps_61, offset m128fidpermps_62, offset m128fidpermps_63, offset m128fidpermps_64, offset m128fidpermps_65, offset m128fidpermps_66, offset m128fidpermps_67, offset m128fidpermps_68, offset m128fidpermps_69, offset m128fidpermps_70, offset m128fidpermps_71, offset m128fidpermps_72, offset m128fidpermps_73, offset m128fidpermps_74, offset m128fidpermps_75
			m128fidpermpsiword offset m128fidpermps_76, offset m128fidpermps_77, offset m128fidpermps_78, offset m128fidpermps_79, offset m128fidpermps_80, offset m128fidpermps_81, offset m128fidpermps_82, offset m128fidpermps_83, offset m128fidpermps_84, offset m128fidpermps_85, offset m128fidpermps_86, offset m128fidpermps_87, offset m128fidpermps_88, offset m128fidpermps_89, offset m128fidpermps_90, offset m128fidpermps_91, offset m128fidpermps_92, offset m128fidpermps_93, offset m128fidpermps_94, offset m128fidpermps_95, offset m128fidpermps_96, offset m128fidpermps_97, offset m128fidpermps_98, offset m128fidpermps_99, offset m128fidpermps_100
			m128fidpermpsiword offset m128fidpermps_101, offset m128fidpermps_102, offset m128fidpermps_103, offset m128fidpermps_104, offset m128fidpermps_105, offset m128fidpermps_106, offset m128fidpermps_107, offset m128fidpermps_108, offset m128fidpermps_109, offset m128fidpermps_110, offset m128fidpermps_111, offset m128fidpermps_112, offset m128fidpermps_113, offset m128fidpermps_114, offset m128fidpermps_115, offset m128fidpermps_116, offset m128fidpermps_117, offset m128fidpermps_118, offset m128fidpermps_119, offset m128fidpermps_120, offset m128fidpermps_121, offset m128fidpermps_122, offset m128fidpermps_123, offset m128fidpermps_124, offset m128fidpermps_125
			m128fidpermpsiword offset m128fidpermps_126, offset m128fidpermps_127, offset m128fidpermps_128, offset m128fidpermps_129, offset m128fidpermps_130, offset m128fidpermps_131, offset m128fidpermps_132, offset m128fidpermps_133, offset m128fidpermps_134, offset m128fidpermps_135, offset m128fidpermps_136, offset m128fidpermps_137, offset m128fidpermps_138, offset m128fidpermps_139, offset m128fidpermps_140, offset m128fidpermps_141, offset m128fidpermps_142, offset m128fidpermps_143, offset m128fidpermps_144, offset m128fidpermps_145, offset m128fidpermps_146, offset m128fidpermps_147, offset m128fidpermps_148, offset m128fidpermps_149, offset m128fidpermps_150
			m128fidpermpsiword offset m128fidpermps_151, offset m128fidpermps_152, offset m128fidpermps_153, offset m128fidpermps_154, offset m128fidpermps_155, offset m128fidpermps_156, offset m128fidpermps_157, offset m128fidpermps_158, offset m128fidpermps_159, offset m128fidpermps_160, offset m128fidpermps_161, offset m128fidpermps_162, offset m128fidpermps_163, offset m128fidpermps_164, offset m128fidpermps_165, offset m128fidpermps_166, offset m128fidpermps_167, offset m128fidpermps_168, offset m128fidpermps_169, offset m128fidpermps_170, offset m128fidpermps_171, offset m128fidpermps_172, offset m128fidpermps_173, offset m128fidpermps_174, offset m128fidpermps_175
			m128fidpermpsiword offset m128fidpermps_176, offset m128fidpermps_177, offset m128fidpermps_178, offset m128fidpermps_179, offset m128fidpermps_180, offset m128fidpermps_181, offset m128fidpermps_182, offset m128fidpermps_183, offset m128fidpermps_184, offset m128fidpermps_185, offset m128fidpermps_186, offset m128fidpermps_187, offset m128fidpermps_188, offset m128fidpermps_189, offset m128fidpermps_190, offset m128fidpermps_191, offset m128fidpermps_192, offset m128fidpermps_193, offset m128fidpermps_194, offset m128fidpermps_195, offset m128fidpermps_196, offset m128fidpermps_197, offset m128fidpermps_198, offset m128fidpermps_199, offset m128fidpermps_200
			m128fidpermpsiword offset m128fidpermps_201, offset m128fidpermps_202, offset m128fidpermps_203, offset m128fidpermps_204, offset m128fidpermps_205, offset m128fidpermps_206, offset m128fidpermps_207, offset m128fidpermps_208, offset m128fidpermps_209, offset m128fidpermps_210, offset m128fidpermps_211, offset m128fidpermps_212, offset m128fidpermps_213, offset m128fidpermps_214, offset m128fidpermps_215, offset m128fidpermps_216, offset m128fidpermps_217, offset m128fidpermps_218, offset m128fidpermps_219, offset m128fidpermps_220, offset m128fidpermps_221, offset m128fidpermps_222, offset m128fidpermps_223, offset m128fidpermps_224, offset m128fidpermps_225
			m128fidpermpsiword offset m128fidpermps_226, offset m128fidpermps_227, offset m128fidpermps_228, offset m128fidpermps_229, offset m128fidpermps_230, offset m128fidpermps_231, offset m128fidpermps_232, offset m128fidpermps_233, offset m128fidpermps_234, offset m128fidpermps_235, offset m128fidpermps_236, offset m128fidpermps_237, offset m128fidpermps_238, offset m128fidpermps_239, offset m128fidpermps_240, offset m128fidpermps_241, offset m128fidpermps_242, offset m128fidpermps_243, offset m128fidpermps_244, offset m128fidpermps_245, offset m128fidpermps_246, offset m128fidpermps_247, offset m128fidpermps_248, offset m128fidpermps_249, offset m128fidpermps_250
			m128fidpermpsiword offset m128fidpermps_251, offset m128fidpermps_252, offset m128fidpermps_253, offset m128fidpermps_254, offset m128fidpermps_255
			
			m128fidpermps_0 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0000_ps
			m128fidpermps_1 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0001_ps
			m128fidpermps_2 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0002_ps
			m128fidpermps_3 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0003_ps
			m128fidpermps_4 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0010_ps
			m128fidpermps_5 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0011_ps
			m128fidpermps_6 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0012_ps
			m128fidpermps_7 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0013_ps
			m128fidpermps_8 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0020_ps
			m128fidpermps_9 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0021_ps
			m128fidpermps_10 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0022_ps
			m128fidpermps_11 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0023_ps
			m128fidpermps_12 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0030_ps
			m128fidpermps_13 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0031_ps
			m128fidpermps_14 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0032_ps
			m128fidpermps_15 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0033_ps
			m128fidpermps_16 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0100_ps
			m128fidpermps_17 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0101_ps
			m128fidpermps_18 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0102_ps
			m128fidpermps_19 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0103_ps
			m128fidpermps_20 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0110_ps
			m128fidpermps_21 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0111_ps
			m128fidpermps_22 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0112_ps
			m128fidpermps_23 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0113_ps
			m128fidpermps_24 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0120_ps
			m128fidpermps_25 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0121_ps
			m128fidpermps_26 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0122_ps
			m128fidpermps_27 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0123_ps
			m128fidpermps_28 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0130_ps
			m128fidpermps_29 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0131_ps
			m128fidpermps_30 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0132_ps
			m128fidpermps_31 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0133_ps
			m128fidpermps_32 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0200_ps
			m128fidpermps_33 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0201_ps
			m128fidpermps_34 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0202_ps
			m128fidpermps_35 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0203_ps
			m128fidpermps_36 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0210_ps
			m128fidpermps_37 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0211_ps
			m128fidpermps_38 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0212_ps
			m128fidpermps_39 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0213_ps
			m128fidpermps_40 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0220_ps
			m128fidpermps_41 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0221_ps
			m128fidpermps_42 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0222_ps
			m128fidpermps_43 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0223_ps
			m128fidpermps_44 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0230_ps
			m128fidpermps_45 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0231_ps
			m128fidpermps_46 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0232_ps
			m128fidpermps_47 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0233_ps
			m128fidpermps_48 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0300_ps
			m128fidpermps_49 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0301_ps
			m128fidpermps_50 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0302_ps
			m128fidpermps_51 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0303_ps
			m128fidpermps_52 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0310_ps
			m128fidpermps_53 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0311_ps
			m128fidpermps_54 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0312_ps
			m128fidpermps_55 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0313_ps
			m128fidpermps_56 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0320_ps
			m128fidpermps_57 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0321_ps
			m128fidpermps_58 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0322_ps
			m128fidpermps_59 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0323_ps
			m128fidpermps_60 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0330_ps
			m128fidpermps_61 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0331_ps
			m128fidpermps_62 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0332_ps
			m128fidpermps_63 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_0333_ps
			m128fidpermps_64 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1000_ps
			m128fidpermps_65 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1001_ps
			m128fidpermps_66 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1002_ps
			m128fidpermps_67 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1003_ps
			m128fidpermps_68 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1010_ps
			m128fidpermps_69 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1011_ps
			m128fidpermps_70 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1012_ps
			m128fidpermps_71 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1013_ps
			m128fidpermps_72 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1020_ps
			m128fidpermps_73 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1021_ps
			m128fidpermps_74 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1022_ps
			m128fidpermps_75 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1023_ps
			m128fidpermps_76 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1030_ps
			m128fidpermps_77 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1031_ps
			m128fidpermps_78 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1032_ps
			m128fidpermps_79 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1033_ps
			m128fidpermps_80 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1100_ps
			m128fidpermps_81 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1101_ps
			m128fidpermps_82 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1102_ps
			m128fidpermps_83 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1103_ps
			m128fidpermps_84 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1110_ps
			m128fidpermps_85 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1111_ps
			m128fidpermps_86 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1112_ps
			m128fidpermps_87 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1113_ps
			m128fidpermps_88 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1120_ps
			m128fidpermps_89 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1121_ps
			m128fidpermps_90 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1122_ps
			m128fidpermps_91 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1123_ps
			m128fidpermps_92 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1130_ps
			m128fidpermps_93 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1131_ps
			m128fidpermps_94 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1132_ps
			m128fidpermps_95 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1133_ps
			m128fidpermps_96 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1200_ps
			m128fidpermps_97 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1201_ps
			m128fidpermps_98 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1202_ps
			m128fidpermps_99 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1203_ps
			m128fidpermps_100 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1210_ps
			m128fidpermps_101 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1211_ps
			m128fidpermps_102 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1212_ps
			m128fidpermps_103 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1213_ps
			m128fidpermps_104 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1220_ps
			m128fidpermps_105 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1221_ps
			m128fidpermps_106 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1222_ps
			m128fidpermps_107 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1223_ps
			m128fidpermps_108 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1230_ps
			m128fidpermps_109 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1231_ps
			m128fidpermps_110 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1232_ps
			m128fidpermps_111 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1233_ps
			m128fidpermps_112 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1300_ps
			m128fidpermps_113 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1301_ps
			m128fidpermps_114 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1302_ps
			m128fidpermps_115 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1303_ps
			m128fidpermps_116 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1310_ps
			m128fidpermps_117 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1311_ps
			m128fidpermps_118 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1312_ps
			m128fidpermps_119 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1313_ps
			m128fidpermps_120 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1320_ps
			m128fidpermps_121 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1321_ps
			m128fidpermps_122 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1322_ps
			m128fidpermps_123 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1323_ps
			m128fidpermps_124 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1330_ps
			m128fidpermps_125 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1331_ps
			m128fidpermps_126 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1332_ps
			m128fidpermps_127 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_1333_ps
			m128fidpermps_128 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2000_ps
			m128fidpermps_129 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2001_ps
			m128fidpermps_130 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2002_ps
			m128fidpermps_131 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2003_ps
			m128fidpermps_132 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2010_ps
			m128fidpermps_133 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2011_ps
			m128fidpermps_134 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2012_ps
			m128fidpermps_135 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2013_ps
			m128fidpermps_136 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2020_ps
			m128fidpermps_137 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2021_ps
			m128fidpermps_138 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2022_ps
			m128fidpermps_139 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2023_ps
			m128fidpermps_140 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2030_ps
			m128fidpermps_141 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2031_ps
			m128fidpermps_142 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2032_ps
			m128fidpermps_143 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2033_ps
			m128fidpermps_144 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2100_ps
			m128fidpermps_145 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2101_ps
			m128fidpermps_146 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2102_ps
			m128fidpermps_147 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2103_ps
			m128fidpermps_148 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2110_ps
			m128fidpermps_149 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2111_ps
			m128fidpermps_150 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2112_ps
			m128fidpermps_151 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2113_ps
			m128fidpermps_152 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2120_ps
			m128fidpermps_153 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2121_ps
			m128fidpermps_154 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2122_ps
			m128fidpermps_155 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2123_ps
			m128fidpermps_156 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2130_ps
			m128fidpermps_157 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2131_ps
			m128fidpermps_158 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2132_ps
			m128fidpermps_159 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2133_ps
			m128fidpermps_160 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2200_ps
			m128fidpermps_161 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2201_ps
			m128fidpermps_162 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2202_ps
			m128fidpermps_163 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2203_ps
			m128fidpermps_164 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2210_ps
			m128fidpermps_165 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2211_ps
			m128fidpermps_166 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2212_ps
			m128fidpermps_167 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2213_ps
			m128fidpermps_168 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2220_ps
			m128fidpermps_169 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2221_ps
			m128fidpermps_170 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2222_ps
			m128fidpermps_171 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2223_ps
			m128fidpermps_172 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2230_ps
			m128fidpermps_173 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2231_ps
			m128fidpermps_174 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2232_ps
			m128fidpermps_175 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2233_ps
			m128fidpermps_176 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2300_ps
			m128fidpermps_177 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2301_ps
			m128fidpermps_178 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2302_ps
			m128fidpermps_179 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2303_ps
			m128fidpermps_180 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2310_ps
			m128fidpermps_181 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2311_ps
			m128fidpermps_182 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2312_ps
			m128fidpermps_183 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2313_ps
			m128fidpermps_184 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2320_ps
			m128fidpermps_185 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2321_ps
			m128fidpermps_186 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2322_ps
			m128fidpermps_187 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2323_ps
			m128fidpermps_188 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2330_ps
			m128fidpermps_189 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2331_ps
			m128fidpermps_190 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2332_ps
			m128fidpermps_191 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_2333_ps
			m128fidpermps_192 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3000_ps
			m128fidpermps_193 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3001_ps
			m128fidpermps_194 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3002_ps
			m128fidpermps_195 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3003_ps
			m128fidpermps_196 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3010_ps
			m128fidpermps_197 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3011_ps
			m128fidpermps_198 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3012_ps
			m128fidpermps_199 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3013_ps
			m128fidpermps_200 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3020_ps
			m128fidpermps_201 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3021_ps
			m128fidpermps_202 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3022_ps
			m128fidpermps_203 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3023_ps
			m128fidpermps_204 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3030_ps
			m128fidpermps_205 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3031_ps
			m128fidpermps_206 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3032_ps
			m128fidpermps_207 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3033_ps
			m128fidpermps_208 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3100_ps
			m128fidpermps_209 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3101_ps
			m128fidpermps_210 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3102_ps
			m128fidpermps_211 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3103_ps
			m128fidpermps_212 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3110_ps
			m128fidpermps_213 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3111_ps
			m128fidpermps_214 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3112_ps
			m128fidpermps_215 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3113_ps
			m128fidpermps_216 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3120_ps
			m128fidpermps_217 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3121_ps
			m128fidpermps_218 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3122_ps
			m128fidpermps_219 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3123_ps
			m128fidpermps_220 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3130_ps
			m128fidpermps_221 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3131_ps
			m128fidpermps_222 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3132_ps
			m128fidpermps_223 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3133_ps
			m128fidpermps_224 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3200_ps
			m128fidpermps_225 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3201_ps
			m128fidpermps_226 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3202_ps
			m128fidpermps_227 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3203_ps
			m128fidpermps_228 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3210_ps
			m128fidpermps_229 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3211_ps
			m128fidpermps_230 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3212_ps
			m128fidpermps_231 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3213_ps
			m128fidpermps_232 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3220_ps
			m128fidpermps_233 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3221_ps
			m128fidpermps_234 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3222_ps
			m128fidpermps_235 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3223_ps
			m128fidpermps_236 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3230_ps
			m128fidpermps_237 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3231_ps
			m128fidpermps_238 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3232_ps
			m128fidpermps_239 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3233_ps
			m128fidpermps_240 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3300_ps
			m128fidpermps_241 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3301_ps
			m128fidpermps_242 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3302_ps
			m128fidpermps_243 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3303_ps
			m128fidpermps_244 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3310_ps
			m128fidpermps_245 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3311_ps
			m128fidpermps_246 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3312_ps
			m128fidpermps_247 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3313_ps
			m128fidpermps_248 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3320_ps
			m128fidpermps_249 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3321_ps
			m128fidpermps_250 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3322_ps
			m128fidpermps_251 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3323_ps
			m128fidpermps_252 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3330_ps
			m128fidpermps_253 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3331_ps
			m128fidpermps_254 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3332_ps
			m128fidpermps_255 label m128fidpermpsword
				jmp		_uXm_m128fid_permute_3333_ps

_uXm_m128fid_permute_ps endp

	end
