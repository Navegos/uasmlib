
	__uXm128ib textequ <xmmword>
	__uXm128iw textequ <xmmword>
	__uXm128id textequ <xmmword>
	__uXm128iq textequ <xmmword>
	__uXm128i textequ <xmmword>
	__uXm128f textequ <xmmword>
	__uXm128 textequ <xmmword>
	__uXm128d textequ <xmmword>
	__uXm128fd textequ <xmmword>
	__uXm128fed textequ <xmmword>
	
;uXm_xmm_shuffle4 macro V3,V2,V1,V0
;    exitm %((V3 shl 6) or (V2 shl 4) or (V1 shl 2) or (V0))
;endm

uXm_xmm_shuffle4 macro V0
    exitm %((V0) or)
endm

;xmm4shuffle(1:3<<6,1:3<<4,1:3<<2,1:3)
xmm4shuffle0000 equ 0
xmm4shuffle0001 equ 1
xmm4shuffle0002 equ 2
xmm4shuffle0003 equ 3
xmm4shuffle0010 equ 4
xmm4shuffle0011 equ 5
xmm4shuffle0012 equ 6
xmm4shuffle0013 equ 7
xmm4shuffle0020 equ 8
xmm4shuffle0021 equ 9
xmm4shuffle0022 equ 10
xmm4shuffle0023 equ 11
xmm4shuffle0030 equ 12
xmm4shuffle0031 equ 13
xmm4shuffle0032 equ 14
xmm4shuffle0033 equ 15
xmm4shuffle0100 equ 16
xmm4shuffle0101 equ 17
xmm4shuffle0102 equ 18
xmm4shuffle0103 equ 19
xmm4shuffle0110 equ 20
xmm4shuffle0111 equ 21
xmm4shuffle0112 equ 22
xmm4shuffle0113 equ 23
xmm4shuffle0120 equ 24
xmm4shuffle0121 equ 25
xmm4shuffle0122 equ 26
xmm4shuffle0123 equ 27
xmm4shuffle0130 equ 28
xmm4shuffle0131 equ 29
xmm4shuffle0132 equ 30
xmm4shuffle0133 equ 31
xmm4shuffle0200 equ 32
xmm4shuffle0201 equ 33
xmm4shuffle0202 equ 34
xmm4shuffle0203 equ 35
xmm4shuffle0210 equ 36
xmm4shuffle0211 equ 37
xmm4shuffle0212 equ 38
xmm4shuffle0213 equ 39
xmm4shuffle0220 equ 40
xmm4shuffle0221 equ 41
xmm4shuffle0222 equ 42
xmm4shuffle0223 equ 43
xmm4shuffle0230 equ 44
xmm4shuffle0231 equ 45
xmm4shuffle0232 equ 46
xmm4shuffle0233 equ 47
xmm4shuffle0300 equ 48
xmm4shuffle0301 equ 49
xmm4shuffle0302 equ 50
xmm4shuffle0303 equ 51
xmm4shuffle0310 equ 52
xmm4shuffle0311 equ 53
xmm4shuffle0312 equ 54
xmm4shuffle0313 equ 55
xmm4shuffle0320 equ 56
xmm4shuffle0321 equ 57
xmm4shuffle0322 equ 58
xmm4shuffle0323 equ 59
xmm4shuffle0330 equ 60
xmm4shuffle0331 equ 61
xmm4shuffle0332 equ 62
xmm4shuffle0333 equ 63
xmm4shuffle1000 equ 64
xmm4shuffle1001 equ 65
xmm4shuffle1002 equ 66
xmm4shuffle1003 equ 67
xmm4shuffle1010 equ 68
xmm4shuffle1011 equ 69
xmm4shuffle1012 equ 70
xmm4shuffle1013 equ 71
xmm4shuffle1020 equ 72
xmm4shuffle1021 equ 73
xmm4shuffle1022 equ 74
xmm4shuffle1023 equ 75
xmm4shuffle1030 equ 76
xmm4shuffle1031 equ 77
xmm4shuffle1032 equ 78
xmm4shuffle1033 equ 79
xmm4shuffle1100 equ 80
xmm4shuffle1101 equ 81
xmm4shuffle1102 equ 82
xmm4shuffle1103 equ 83
xmm4shuffle1110 equ 84
xmm4shuffle1111 equ 85
xmm4shuffle1112 equ 86
xmm4shuffle1113 equ 87
xmm4shuffle1120 equ 88
xmm4shuffle1121 equ 89
xmm4shuffle1122 equ 90
xmm4shuffle1123 equ 91
xmm4shuffle1130 equ 92
xmm4shuffle1131 equ 93
xmm4shuffle1132 equ 94
xmm4shuffle1133 equ 95
xmm4shuffle1200 equ 96
xmm4shuffle1201 equ 97
xmm4shuffle1202 equ 98
xmm4shuffle1203 equ 99
xmm4shuffle1210 equ 100
xmm4shuffle1211 equ 101
xmm4shuffle1212 equ 102
xmm4shuffle1213 equ 103
xmm4shuffle1220 equ 104
xmm4shuffle1221 equ 105
xmm4shuffle1222 equ 106
xmm4shuffle1223 equ 107
xmm4shuffle1230 equ 108
xmm4shuffle1231 equ 109
xmm4shuffle1232 equ 110
xmm4shuffle1233 equ 111
xmm4shuffle1300 equ 112
xmm4shuffle1301 equ 113
xmm4shuffle1302 equ 114
xmm4shuffle1303 equ 115
xmm4shuffle1310 equ 116
xmm4shuffle1311 equ 117
xmm4shuffle1312 equ 118
xmm4shuffle1313 equ 119
xmm4shuffle1320 equ 120
xmm4shuffle1321 equ 121
xmm4shuffle1322 equ 122
xmm4shuffle1323 equ 123
xmm4shuffle1330 equ 124
xmm4shuffle1331 equ 125
xmm4shuffle1332 equ 126
xmm4shuffle1333 equ 127
xmm4shuffle2000 equ 128
xmm4shuffle2001 equ 129
xmm4shuffle2002 equ 130
xmm4shuffle2003 equ 131
xmm4shuffle2010 equ 132
xmm4shuffle2011 equ 133
xmm4shuffle2012 equ 134
xmm4shuffle2013 equ 135
xmm4shuffle2020 equ 136
xmm4shuffle2021 equ 137
xmm4shuffle2022 equ 138
xmm4shuffle2023 equ 139
xmm4shuffle2030 equ 140
xmm4shuffle2031 equ 141
xmm4shuffle2032 equ 142
xmm4shuffle2033 equ 143
xmm4shuffle2100 equ 144
xmm4shuffle2101 equ 145
xmm4shuffle2102 equ 146
xmm4shuffle2103 equ 147
xmm4shuffle2110 equ 148
xmm4shuffle2111 equ 149
xmm4shuffle2112 equ 150
xmm4shuffle2113 equ 151
xmm4shuffle2120 equ 152
xmm4shuffle2121 equ 153
xmm4shuffle2122 equ 154
xmm4shuffle2123 equ 155
xmm4shuffle2130 equ 156
xmm4shuffle2131 equ 157
xmm4shuffle2132 equ 158
xmm4shuffle2133 equ 159
xmm4shuffle2200 equ 160
xmm4shuffle2201 equ 161
xmm4shuffle2202 equ 162
xmm4shuffle2203 equ 163
xmm4shuffle2210 equ 164
xmm4shuffle2211 equ 165
xmm4shuffle2212 equ 166
xmm4shuffle2213 equ 167
xmm4shuffle2220 equ 168
xmm4shuffle2221 equ 169
xmm4shuffle2222 equ 170
xmm4shuffle2223 equ 171
xmm4shuffle2230 equ 172
xmm4shuffle2231 equ 173
xmm4shuffle2232 equ 174
xmm4shuffle2233 equ 175
xmm4shuffle2300 equ 176
xmm4shuffle2301 equ 177
xmm4shuffle2302 equ 178
xmm4shuffle2303 equ 179
xmm4shuffle2310 equ 180
xmm4shuffle2311 equ 181
xmm4shuffle2312 equ 182
xmm4shuffle2313 equ 183
xmm4shuffle2320 equ 184
xmm4shuffle2321 equ 185
xmm4shuffle2322 equ 186
xmm4shuffle2323 equ 187
xmm4shuffle2330 equ 188
xmm4shuffle2331 equ 189
xmm4shuffle2332 equ 190
xmm4shuffle2333 equ 191
xmm4shuffle3000 equ 192
xmm4shuffle3001 equ 193
xmm4shuffle3002 equ 194
xmm4shuffle3003 equ 195
xmm4shuffle3010 equ 196
xmm4shuffle3011 equ 197
xmm4shuffle3012 equ 198
xmm4shuffle3013 equ 199
xmm4shuffle3020 equ 200
xmm4shuffle3021 equ 201
xmm4shuffle3022 equ 202
xmm4shuffle3023 equ 203
xmm4shuffle3030 equ 204
xmm4shuffle3031 equ 205
xmm4shuffle3032 equ 206
xmm4shuffle3033 equ 207
xmm4shuffle3100 equ 208
xmm4shuffle3101 equ 209
xmm4shuffle3102 equ 210
xmm4shuffle3103 equ 211
xmm4shuffle3110 equ 212
xmm4shuffle3111 equ 213
xmm4shuffle3112 equ 214
xmm4shuffle3113 equ 215
xmm4shuffle3120 equ 216
xmm4shuffle3121 equ 217
xmm4shuffle3122 equ 218
xmm4shuffle3123 equ 219
xmm4shuffle3130 equ 220
xmm4shuffle3131 equ 221
xmm4shuffle3132 equ 222
xmm4shuffle3133 equ 223
xmm4shuffle3200 equ 224
xmm4shuffle3201 equ 225
xmm4shuffle3202 equ 226
xmm4shuffle3203 equ 227
xmm4shuffle3210 equ 228
xmm4shuffle3211 equ 229
xmm4shuffle3212 equ 230
xmm4shuffle3213 equ 231
xmm4shuffle3220 equ 232
xmm4shuffle3221 equ 233
xmm4shuffle3222 equ 234
xmm4shuffle3223 equ 235
xmm4shuffle3230 equ 236
xmm4shuffle3231 equ 237
xmm4shuffle3232 equ 238
xmm4shuffle3233 equ 239
xmm4shuffle3300 equ 240
xmm4shuffle3301 equ 241
xmm4shuffle3302 equ 242
xmm4shuffle3303 equ 243
xmm4shuffle3310 equ 244
xmm4shuffle3311 equ 245
xmm4shuffle3312 equ 246
xmm4shuffle3313 equ 247
xmm4shuffle3320 equ 248
xmm4shuffle3321 equ 249
xmm4shuffle3322 equ 250
xmm4shuffle3323 equ 251
xmm4shuffle3330 equ 252
xmm4shuffle3331 equ 253
xmm4shuffle3332 equ 254
xmm4shuffle3333 equ 255

uXm_xmm_shuffle4 macro V0
    exitm %(V0)
endm

uXm_xmm4shuffled2_ps macro reg0, reg1, reg2

		.if((bparam1 >= 240) && (bparam1 <= 255))
			jmp xmm4jelabel_16x16
		.endif
		
		.if((bparam1 >= 224) && (bparam1 <= 239))
			jmp xmm4jelabel_15x16
		.endif
		
		.if((bparam1 >= 208) && (bparam1 <= 223))
			jmp xmm4jelabel_14x16
		.endif
		
		.if((bparam1 >= 192) && (bparam1 <= 207))
			jmp xmm4jelabel_13x16
		.endif
		
		.if((bparam1 >= 176) && (bparam1 <= 191))
			jmp xmm4jelabel_12x16
		.endif
		
		.if((bparam1 >= 160) && (bparam1 <= 175))
			jmp xmm4jelabel_11x16
		.endif
		
		.if((bparam1 >= 144) && (bparam1 <= 159))
			jmp xmm4jelabel_10x16
		.endif
		
		.if((bparam1 >= 128) && (bparam1 <= 143))
			jmp xmm4jelabel_9x16
		.endif
		
		.if((bparam1 >= 112) && (bparam1 <= 127))
			jmp xmm4jelabel_8x16
		.endif
		
		.if((bparam1 >= 96) && (bparam1 <= 111))
			jmp xmm4jelabel_7x16
		.endif
		
		.if((bparam1 >= 80) && (bparam1 <= 95))
			jmp xmm4jelabel_6x16
		.endif
		
		.if((bparam1 >= 64) && (bparam1 <= 79))
			jmp xmm4jelabel_5x16
		.endif
		
		.if((bparam1 >= 48) && (bparam1 <= 63))
			jmp xmm4jelabel_4x16
		.endif
		
		.if((bparam1 >= 32) && (bparam1 <= 47))
			jmp xmm4jelabel_3x16
		.endif
		
		.if((bparam1 >= 16) && (bparam1 <= 31))
			jmp xmm4jelabel_2x16
		.endif
		
		.if((bparam1 >= 0) && (bparam1 <= 15))
			jmp xmm4jelabel_1x16
		.endif
		
xmm4jelabel_1x16:
		.if(reg2 == xmm4shuffle0000)
			shufps				reg0,			reg1,			xmm4shuffle0000
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0001)
			shufps				reg0,			reg1,			xmm4shuffle0001
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0002)
			shufps				reg0,			reg1,			xmm4shuffle0002
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0003)
			shufps				reg0,			reg1,			xmm4shuffle0003
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0010)
			shufps				reg0,			reg1,			xmm4shuffle0010
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0011)
			shufps				reg0,			reg1,			xmm4shuffle0011
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0012)
			shufps				reg0,			reg1,			xmm4shuffle0012
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0013)
			shufps				reg0,			reg1,			xmm4shuffle0013
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0020)
			shufps				reg0,			reg1,			xmm4shuffle0020
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0021)
			shufps				reg0,			reg1,			xmm4shuffle0021
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0022)
			shufps				reg0,			reg1,			xmm4shuffle0022
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0023)
			shufps				reg0,			reg1,			xmm4shuffle0023
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0030)
			shufps				reg0,			reg1,			xmm4shuffle0030
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0031)
			shufps				reg0,			reg1,			xmm4shuffle0031
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0032)
			shufps				reg0,			reg1,			xmm4shuffle0032
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0033)
			shufps				reg0,			reg1,			xmm4shuffle0033
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_2x16:
		.if(reg2 == xmm4shuffle0100)
			shufps				reg0,			reg1,			xmm4shuffle0100
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0101)
			shufps				reg0,			reg1,			xmm4shuffle0101
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0102)
			shufps				reg0,			reg1,			xmm4shuffle0102
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0103)
			shufps				reg0,			reg1,			xmm4shuffle0103
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0110)
			shufps				reg0,			reg1,			xmm4shuffle0110
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0111)
			shufps				reg0,			reg1,			xmm4shuffle0111
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0112)
			shufps				reg0,			reg1,			xmm4shuffle0112
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0113)
			shufps				reg0,			reg1,			xmm4shuffle0113
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0120)
			shufps				reg0,			reg1,			xmm4shuffle0120
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0121)
			shufps				reg0,			reg1,			xmm4shuffle0121
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0122)
			shufps				reg0,			reg1,			xmm4shuffle0122
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0123)
			shufps				reg0,			reg1,			xmm4shuffle0123
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0130)
			shufps				reg0,			reg1,			xmm4shuffle0130
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0131)
			shufps				reg0,			reg1,			xmm4shuffle0131
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0132)
			shufps				reg0,			reg1,			xmm4shuffle0132
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0133)
			shufps				reg0,			reg1,			xmm4shuffle0133
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_3x16:
		.if(reg2 == xmm4shuffle0200)
			shufps				reg0,			reg1,			xmm4shuffle0200
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0201)
			shufps				reg0,			reg1,			xmm4shuffle0201
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0202)
			shufps				reg0,			reg1,			xmm4shuffle0202
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0203)
			shufps				reg0,			reg1,			xmm4shuffle0203
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0210)
			shufps				reg0,			reg1,			xmm4shuffle0210
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0211)
			shufps				reg0,			reg1,			xmm4shuffle0211
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0212)
			shufps				reg0,			reg1,			xmm4shuffle0212
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0213)
			shufps				reg0,			reg1,			xmm4shuffle0213
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0220)
			shufps				reg0,			reg1,			xmm4shuffle0220
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0221)
			shufps				reg0,			reg1,			xmm4shuffle0221
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0222)
			shufps				reg0,			reg1,			xmm4shuffle0222
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0223)
			shufps				reg0,			reg1,			xmm4shuffle0223
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0230)
			shufps				reg0,			reg1,			xmm4shuffle0230
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0231)
			shufps				reg0,			reg1,			xmm4shuffle0231
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0232)
			shufps				reg0,			reg1,			xmm4shuffle0232
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0233)
			shufps				reg0,			reg1,			xmm4shuffle0233
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_4x16:
		.if(reg2 == xmm4shuffle0300)
			shufps				reg0,			reg1,			xmm4shuffle0300
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0301)
			shufps				reg0,			reg1,			xmm4shuffle0301
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0302)
			shufps				reg0,			reg1,			xmm4shuffle0302
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0303)
			shufps				reg0,			reg1,			xmm4shuffle0303
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0310)
			shufps				reg0,			reg1,			xmm4shuffle0310
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0311)
			shufps				reg0,			reg1,			xmm4shuffle0311
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0312)
			shufps				reg0,			reg1,			xmm4shuffle0312
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0313)
			shufps				reg0,			reg1,			xmm4shuffle0313
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0320)
			shufps				reg0,			reg1,			xmm4shuffle0320
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0321)
			shufps				reg0,			reg1,			xmm4shuffle0321
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0322)
			shufps				reg0,			reg1,			xmm4shuffle0322
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0323)
			shufps				reg0,			reg1,			xmm4shuffle0323
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0330)
			shufps				reg0,			reg1,			xmm4shuffle0330
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0331)
			shufps				reg0,			reg1,			xmm4shuffle0331
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0332)
			shufps				reg0,			reg1,			xmm4shuffle0332
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle0333)
			shufps				reg0,			reg1,			xmm4shuffle0333
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_5x16:
		.if(reg2 == xmm4shuffle1000)
			shufps				reg0,			reg1,			xmm4shuffle1000
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1001)
			shufps				reg0,			reg1,			xmm4shuffle1001
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1002)
			shufps				reg0,			reg1,			xmm4shuffle1002
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1003)
			shufps				reg0,			reg1,			xmm4shuffle1003
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1010)
			shufps				reg0,			reg1,			xmm4shuffle1010
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1011)
			shufps				reg0,			reg1,			xmm4shuffle1011
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1012)
			shufps				reg0,			reg1,			xmm4shuffle1012
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1013)
			shufps				reg0,			reg1,			xmm4shuffle1013
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1020)
			shufps				reg0,			reg1,			xmm4shuffle1020
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1021)
			shufps				reg0,			reg1,			xmm4shuffle1021
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1022)
			shufps				reg0,			reg1,			xmm4shuffle1022
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1023)
			shufps				reg0,			reg1,			xmm4shuffle1023
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1030)
			shufps				reg0,			reg1,			xmm4shuffle1030
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1031)
			shufps				reg0,			reg1,			xmm4shuffle1031
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1032)
			shufps				reg0,			reg1,			xmm4shuffle1032
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1033)
			shufps				reg0,			reg1,			xmm4shuffle1033
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_6x16:
		.if(reg2 == xmm4shuffle1100)
			shufps				reg0,			reg1,			xmm4shuffle1100
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1101)
			shufps				reg0,			reg1,			xmm4shuffle1101
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1102)
			shufps				reg0,			reg1,			xmm4shuffle1102
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1103)
			shufps				reg0,			reg1,			xmm4shuffle1103
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1110)
			shufps				reg0,			reg1,			xmm4shuffle1110
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1111)
			shufps				reg0,			reg1,			xmm4shuffle1111
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1112)
			shufps				reg0,			reg1,			xmm4shuffle1112
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1113)
			shufps				reg0,			reg1,			xmm4shuffle1113
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1120)
			shufps				reg0,			reg1,			xmm4shuffle1120
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1121)
			shufps				reg0,			reg1,			xmm4shuffle1121
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1122)
			shufps				reg0,			reg1,			xmm4shuffle1122
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1123)
			shufps				reg0,			reg1,			xmm4shuffle1123
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1130)
			shufps				reg0,			reg1,			xmm4shuffle1130
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1131)
			shufps				reg0,			reg1,			xmm4shuffle1131
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1132)
			shufps				reg0,			reg1,			xmm4shuffle1132
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1133)
			shufps				reg0,			reg1,			xmm4shuffle1133
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_7x16:
		.if(reg2 == xmm4shuffle1200)
			shufps				reg0,			reg1,			xmm4shuffle1200
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1201)
			shufps				reg0,			reg1,			xmm4shuffle1201
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1202)
			shufps				reg0,			reg1,			xmm4shuffle1202
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1203)
			shufps				reg0,			reg1,			xmm4shuffle1203
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1210)
			shufps				reg0,			reg1,			xmm4shuffle1210
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1211)
			shufps				reg0,			reg1,			xmm4shuffle1211
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1212)
			shufps				reg0,			reg1,			xmm4shuffle1212
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1213)
			shufps				reg0,			reg1,			xmm4shuffle1213
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1220)
			shufps				reg0,			reg1,			xmm4shuffle1220
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1221)
			shufps				reg0,			reg1,			xmm4shuffle1221
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1222)
			shufps				reg0,			reg1,			xmm4shuffle1222
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1223)
			shufps				reg0,			reg1,			xmm4shuffle1223
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1230)
			shufps				reg0,			reg1,			xmm4shuffle1230
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1231)
			shufps				reg0,			reg1,			xmm4shuffle1231
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1232)
			shufps				reg0,			reg1,			xmm4shuffle1232
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1233)
			shufps				reg0,			reg1,			xmm4shuffle1233
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_8x16:
		.if(reg2 == xmm4shuffle1300)
			shufps				reg0,			reg1,			xmm4shuffle1300
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1301)
			shufps				reg0,			reg1,			xmm4shuffle1301
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1302)
			shufps				reg0,			reg1,			xmm4shuffle1302
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1303)
			shufps				reg0,			reg1,			xmm4shuffle1303
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1310)
			shufps				reg0,			reg1,			xmm4shuffle1310
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1311)
			shufps				reg0,			reg1,			xmm4shuffle1311
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1312)
			shufps				reg0,			reg1,			xmm4shuffle1312
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1313)
			shufps				reg0,			reg1,			xmm4shuffle1313
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1320)
			shufps				reg0,			reg1,			xmm4shuffle1320
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1321)
			shufps				reg0,			reg1,			xmm4shuffle1321
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1322)
			shufps				reg0,			reg1,			xmm4shuffle1322
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1323)
			shufps				reg0,			reg1,			xmm4shuffle1323
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1330)
			shufps				reg0,			reg1,			xmm4shuffle1330
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1331)
			shufps				reg0,			reg1,			xmm4shuffle1331
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1332)
			shufps				reg0,			reg1,			xmm4shuffle1332
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle1333)
			shufps				reg0,			reg1,			xmm4shuffle1333
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_9x16:
		.if(reg2 == xmm4shuffle2000)
			shufps				reg0,			reg1,			xmm4shuffle2000
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2001)
			shufps				reg0,			reg1,			xmm4shuffle2001
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2002)
			shufps				reg0,			reg1,			xmm4shuffle2002
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2003)
			shufps				reg0,			reg1,			xmm4shuffle2003
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2010)
			shufps				reg0,			reg1,			xmm4shuffle2010
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2011)
			shufps				reg0,			reg1,			xmm4shuffle2011
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2012)
			shufps				reg0,			reg1,			xmm4shuffle2012
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2013)
			shufps				reg0,			reg1,			xmm4shuffle2013
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2020)
			shufps				reg0,			reg1,			xmm4shuffle2020
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2021)
			shufps				reg0,			reg1,			xmm4shuffle2021
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2022)
			shufps				reg0,			reg1,			xmm4shuffle2022
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2023)
			shufps				reg0,			reg1,			xmm4shuffle2023
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2030)
			shufps				reg0,			reg1,			xmm4shuffle2030
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2031)
			shufps				reg0,			reg1,			xmm4shuffle2031
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2032)
			shufps				reg0,			reg1,			xmm4shuffle2032
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2033)
			shufps				reg0,			reg1,			xmm4shuffle2033
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_10x16:
		.if(reg2 == xmm4shuffle2100)
			shufps				reg0,			reg1,			xmm4shuffle2100
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2101)
			shufps				reg0,			reg1,			xmm4shuffle2101
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2102)
			shufps				reg0,			reg1,			xmm4shuffle2102
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2103)
			shufps				reg0,			reg1,			xmm4shuffle2103
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2110)
			shufps				reg0,			reg1,			xmm4shuffle2110
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2111)
			shufps				reg0,			reg1,			xmm4shuffle2111
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2112)
			shufps				reg0,			reg1,			xmm4shuffle2112
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2113)
			shufps				reg0,			reg1,			xmm4shuffle2113
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2120)
			shufps				reg0,			reg1,			xmm4shuffle2120
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2121)
			shufps				reg0,			reg1,			xmm4shuffle2121
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2122)
			shufps				reg0,			reg1,			xmm4shuffle2122
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2123)
			shufps				reg0,			reg1,			xmm4shuffle2123
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2130)
			shufps				reg0,			reg1,			xmm4shuffle2130
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2131)
			shufps				reg0,			reg1,			xmm4shuffle2131
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2132)
			shufps				reg0,			reg1,			xmm4shuffle2132
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2133)
			shufps				reg0,			reg1,			xmm4shuffle2133
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_11x16:
		.if(reg2 == xmm4shuffle2200)
			shufps				reg0,			reg1,			xmm4shuffle2200
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2201)
			shufps				reg0,			reg1,			xmm4shuffle2201
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2202)
			shufps				reg0,			reg1,			xmm4shuffle2202
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2203)
			shufps				reg0,			reg1,			xmm4shuffle2203
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2210)
			shufps				reg0,			reg1,			xmm4shuffle2210
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2211)
			shufps				reg0,			reg1,			xmm4shuffle2211
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2212)
			shufps				reg0,			reg1,			xmm4shuffle2212
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2213)
			shufps				reg0,			reg1,			xmm4shuffle2213
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2220)
			shufps				reg0,			reg1,			xmm4shuffle2220
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2221)
			shufps				reg0,			reg1,			xmm4shuffle2221
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2222)
			shufps				reg0,			reg1,			xmm4shuffle2222
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2223)
			shufps				reg0,			reg1,			xmm4shuffle2223
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2230)
			shufps				reg0,			reg1,			xmm4shuffle2230
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2231)
			shufps				reg0,			reg1,			xmm4shuffle2231
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2232)
			shufps				reg0,			reg1,			xmm4shuffle2232
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2233)
			shufps				reg0,			reg1,			xmm4shuffle2233
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_12x16:
		.if(reg2 == xmm4shuffle2300)
			shufps				reg0,			reg1,			xmm4shuffle2300
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2301)
			shufps				reg0,			reg1,			xmm4shuffle2301
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2302)
			shufps				reg0,			reg1,			xmm4shuffle2302
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2303)
			shufps				reg0,			reg1,			xmm4shuffle2303
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2310)
			shufps				reg0,			reg1,			xmm4shuffle2310
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2311)
			shufps				reg0,			reg1,			xmm4shuffle2311
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2312)
			shufps				reg0,			reg1,			xmm4shuffle2312
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2313)
			shufps				reg0,			reg1,			xmm4shuffle2313
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2320)
			shufps				reg0,			reg1,			xmm4shuffle2320
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2321)
			shufps				reg0,			reg1,			xmm4shuffle2321
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2322)
			shufps				reg0,			reg1,			xmm4shuffle2322
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2323)
			shufps				reg0,			reg1,			xmm4shuffle2323
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2330)
			shufps				reg0,			reg1,			xmm4shuffle2330
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2331)
			shufps				reg0,			reg1,			xmm4shuffle2331
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2332)
			shufps				reg0,			reg1,			xmm4shuffle2332
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle2333)
			shufps				reg0,			reg1,			xmm4shuffle2333
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_13x16:
		.if(reg2 == xmm4shuffle3000)
			shufps				reg0,			reg1,			xmm4shuffle3000
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3001)
			shufps				reg0,			reg1,			xmm4shuffle3001
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3002)
			shufps				reg0,			reg1,			xmm4shuffle3002
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3003)
			shufps				reg0,			reg1,			xmm4shuffle3003
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3010)
			shufps				reg0,			reg1,			xmm4shuffle3010
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3011)
			shufps				reg0,			reg1,			xmm4shuffle3011
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3012)
			shufps				reg0,			reg1,			xmm4shuffle3012
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3013)
			shufps				reg0,			reg1,			xmm4shuffle3013
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3020)
			shufps				reg0,			reg1,			xmm4shuffle3020
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3021)
			shufps				reg0,			reg1,			xmm4shuffle3021
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3022)
			shufps				reg0,			reg1,			xmm4shuffle3022
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3023)
			shufps				reg0,			reg1,			xmm4shuffle3023
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3030)
			shufps				reg0,			reg1,			xmm4shuffle3030
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3031)
			shufps				reg0,			reg1,			xmm4shuffle3031
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3032)
			shufps				reg0,			reg1,			xmm4shuffle3032
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3033)
			shufps				reg0,			reg1,			xmm4shuffle3033
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_14x16:
		.if(reg2 == xmm4shuffle3100)
			shufps				reg0,			reg1,			xmm4shuffle3100
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3101)
			shufps				reg0,			reg1,			xmm4shuffle3101
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3102)
			shufps				reg0,			reg1,			xmm4shuffle3102
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3103)
			shufps				reg0,			reg1,			xmm4shuffle3103
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3110)
			shufps				reg0,			reg1,			xmm4shuffle3110
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3111)
			shufps				reg0,			reg1,			xmm4shuffle3111
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3112)
			shufps				reg0,			reg1,			xmm4shuffle3112
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3113)
			shufps				reg0,			reg1,			xmm4shuffle3113
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3120)
			shufps				reg0,			reg1,			xmm4shuffle3120
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3121)
			shufps				reg0,			reg1,			xmm4shuffle3121
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3122)
			shufps				reg0,			reg1,			xmm4shuffle3122
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3123)
			shufps				reg0,			reg1,			xmm4shuffle3123
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3130)
			shufps				reg0,			reg1,			xmm4shuffle3130
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3131)
			shufps				reg0,			reg1,			xmm4shuffle3131
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3132)
			shufps				reg0,			reg1,			xmm4shuffle3132
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3133)
			shufps				reg0,			reg1,			xmm4shuffle3133
			jmp xmm4shuffle_END
		.endif

xmm4jelabel_15x16:
		.if(reg2 == xmm4shuffle3200)
			shufps				reg0,			reg1,			xmm4shuffle3200
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3201)
			shufps				reg0,			reg1,			xmm4shuffle3201
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3202)
			shufps				reg0,			reg1,			xmm4shuffle3202
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3203)
			shufps				reg0,			reg1,			xmm4shuffle3203
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3210)
			shufps				reg0,			reg1,			xmm4shuffle3210
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3211)
			shufps				reg0,			reg1,			xmm4shuffle3211
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3212)
			shufps				reg0,			reg1,			xmm4shuffle3212
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3213)
			shufps				reg0,			reg1,			xmm4shuffle3213
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3220)
			shufps				reg0,			reg1,			xmm4shuffle3220
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3221)
			shufps				reg0,			reg1,			xmm4shuffle3221
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3222)
			shufps				reg0,			reg1,			xmm4shuffle3222
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3223)
			shufps				reg0,			reg1,			xmm4shuffle3223
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3230)
			shufps				reg0,			reg1,			xmm4shuffle3230
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3231)
			shufps				reg0,			reg1,			xmm4shuffle3231
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3232)
			shufps				reg0,			reg1,			xmm4shuffle3232
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3233)
			shufps				reg0,			reg1,			xmm4shuffle3233
			jmp xmm4shuffle_END
		.endif
		
xmm4jelabel_16x16:
		.if(reg2 == xmm4shuffle3300)
			shufps				reg0,			reg1,			xmm4shuffle3300
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3301)
			shufps				reg0,			reg1,			xmm4shuffle3301
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3302)
			shufps				reg0,			reg1,			xmm4shuffle3302
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3303)
			shufps				reg0,			reg1,			xmm4shuffle3303
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3310)
			shufps				reg0,			reg1,			xmm4shuffle3310
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3311)
			shufps				reg0,			reg1,			xmm4shuffle3311
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3312)
			shufps				reg0,			reg1,			xmm4shuffle3312
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3313)
			shufps				reg0,			reg1,			xmm4shuffle3313
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3320)
			shufps				reg0,			reg1,			xmm4shuffle3320
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3321)
			shufps				reg0,			reg1,			xmm4shuffle3321
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3322)
			shufps				reg0,			reg1,			xmm4shuffle3322
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3323)
			shufps				reg0,			reg1,			xmm4shuffle3323
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3330)
			shufps				reg0,			reg1,			xmm4shuffle3330
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3331)
			shufps				reg0,			reg1,			xmm4shuffle3331
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3332)
			shufps				reg0,			reg1,			xmm4shuffle3332
			jmp xmm4shuffle_END
		.endif
		.if(reg2 == xmm4shuffle3333)
			shufps				reg0,			reg1,			xmm4shuffle3333
			jmp xmm4shuffle_END
		.endif
xmm4shuffle_END:
endm

uXm_xmm4shuffled_ps macro reg0, reg1, reg2
	;.switch reg2
	.if(reg2 == xmm4shuffle0000)
		shufps				reg0,			reg1,			xmm4shuffle0000
	.endif
	.if(reg2 == xmm4shuffle0001)
		shufps				reg0,			reg1,			xmm4shuffle0001
	.endif
	.if(reg2 == xmm4shuffle0002)
		shufps				reg0,			reg1,			xmm4shuffle0002
	.endif
	.if(reg2 == xmm4shuffle0003)
		shufps				reg0,			reg1,			xmm4shuffle0003
	.endif
	.if(reg2 == xmm4shuffle0010)
		shufps				reg0,			reg1,			xmm4shuffle0010
	.endif
	.if(reg2 == xmm4shuffle0011)
		shufps				reg0,			reg1,			xmm4shuffle0011
	.endif
	.if(reg2 == xmm4shuffle0012)
		shufps				reg0,			reg1,			xmm4shuffle0012
	.endif
	.if(reg2 == xmm4shuffle0013)
		shufps				reg0,			reg1,			xmm4shuffle0013
	.endif
	.if(reg2 == xmm4shuffle0020)
		shufps				reg0,			reg1,			xmm4shuffle0020
	.endif
	.if(reg2 == xmm4shuffle0021)
		shufps				reg0,			reg1,			xmm4shuffle0021
	.endif
	.if(reg2 == xmm4shuffle0022)
		shufps				reg0,			reg1,			xmm4shuffle0022
	.endif
	.if(reg2 == xmm4shuffle0023)
		shufps				reg0,			reg1,			xmm4shuffle0023
	.endif
	.if(reg2 == xmm4shuffle0030)
		shufps				reg0,			reg1,			xmm4shuffle0030
	.endif
	.if(reg2 == xmm4shuffle0031)
		shufps				reg0,			reg1,			xmm4shuffle0031
	.endif
	.if(reg2 == xmm4shuffle0032)
		shufps				reg0,			reg1,			xmm4shuffle0032
	.endif
	.if(reg2 == xmm4shuffle0033)
		shufps				reg0,			reg1,			xmm4shuffle0033
	.endif
	.if(reg2 == xmm4shuffle0100)
		shufps				reg0,			reg1,			xmm4shuffle0100
	.endif
	.if(reg2 == xmm4shuffle0101)
		shufps				reg0,			reg1,			xmm4shuffle0101
	.endif
	.if(reg2 == xmm4shuffle0102)
		shufps				reg0,			reg1,			xmm4shuffle0102
	.endif
	.if(reg2 == xmm4shuffle0103)
		shufps				reg0,			reg1,			xmm4shuffle0103
	.endif
	.if(reg2 == xmm4shuffle0110)
		shufps				reg0,			reg1,			xmm4shuffle0110
	.endif
	.if(reg2 == xmm4shuffle0111)
		shufps				reg0,			reg1,			xmm4shuffle0111
	.endif
	.if(reg2 == xmm4shuffle0112)
		shufps				reg0,			reg1,			xmm4shuffle0112
	.endif
	.if(reg2 == xmm4shuffle0113)
		shufps				reg0,			reg1,			xmm4shuffle0113
	.endif
	.if(reg2 == xmm4shuffle0120)
		shufps				reg0,			reg1,			xmm4shuffle0120
	.endif
	.if(reg2 == xmm4shuffle0121)
		shufps				reg0,			reg1,			xmm4shuffle0121
	.endif
	.if(reg2 == xmm4shuffle0122)
		shufps				reg0,			reg1,			xmm4shuffle0122
	.endif
	.if(reg2 == xmm4shuffle0123)
		shufps				reg0,			reg1,			xmm4shuffle0123
	.endif
	.if(reg2 == xmm4shuffle0130)
		shufps				reg0,			reg1,			xmm4shuffle0130
	.endif
	.if(reg2 == xmm4shuffle0131)
		shufps				reg0,			reg1,			xmm4shuffle0131
	.endif
	.if(reg2 == xmm4shuffle0132)
		shufps				reg0,			reg1,			xmm4shuffle0132
	.endif
	.if(reg2 == xmm4shuffle0133)
		shufps				reg0,			reg1,			xmm4shuffle0133
	.endif
	.if(reg2 == xmm4shuffle0200)
		shufps				reg0,			reg1,			xmm4shuffle0200
	.endif
	.if(reg2 == xmm4shuffle0201)
		shufps				reg0,			reg1,			xmm4shuffle0201
	.endif
	.if(reg2 == xmm4shuffle0202)
		shufps				reg0,			reg1,			xmm4shuffle0202
	.endif
	.if(reg2 == xmm4shuffle0203)
		shufps				reg0,			reg1,			xmm4shuffle0203
	.endif
	.if(reg2 == xmm4shuffle0210)
		shufps				reg0,			reg1,			xmm4shuffle0210
	.endif
	.if(reg2 == xmm4shuffle0211)
		shufps				reg0,			reg1,			xmm4shuffle0211
	.endif
	.if(reg2 == xmm4shuffle0212)
		shufps				reg0,			reg1,			xmm4shuffle0212
	.endif
	.if(reg2 == xmm4shuffle0213)
		shufps				reg0,			reg1,			xmm4shuffle0213
	.endif
	.if(reg2 == xmm4shuffle0220)
		shufps				reg0,			reg1,			xmm4shuffle0220
	.endif
	.if(reg2 == xmm4shuffle0221)
		shufps				reg0,			reg1,			xmm4shuffle0221
	.endif
	.if(reg2 == xmm4shuffle0222)
		shufps				reg0,			reg1,			xmm4shuffle0222
	.endif
	.if(reg2 == xmm4shuffle0223)
		shufps				reg0,			reg1,			xmm4shuffle0223
	.endif
	.if(reg2 == xmm4shuffle0230)
		shufps				reg0,			reg1,			xmm4shuffle0230
	.endif
	.if(reg2 == xmm4shuffle0231)
		shufps				reg0,			reg1,			xmm4shuffle0231
	.endif
	.if(reg2 == xmm4shuffle0232)
		shufps				reg0,			reg1,			xmm4shuffle0232
	.endif
	.if(reg2 == xmm4shuffle0233)
		shufps				reg0,			reg1,			xmm4shuffle0233
	.endif
	.if(reg2 == xmm4shuffle0300)
		shufps				reg0,			reg1,			xmm4shuffle0300
	.endif
	.if(reg2 == xmm4shuffle0301)
		shufps				reg0,			reg1,			xmm4shuffle0301
	.endif
	.if(reg2 == xmm4shuffle0302)
		shufps				reg0,			reg1,			xmm4shuffle0302
	.endif
	.if(reg2 == xmm4shuffle0303)
		shufps				reg0,			reg1,			xmm4shuffle0303
	.endif
	.if(reg2 == xmm4shuffle0310)
		shufps				reg0,			reg1,			xmm4shuffle0310
	.endif
	.if(reg2 == xmm4shuffle0311)
		shufps				reg0,			reg1,			xmm4shuffle0311
	.endif
	.if(reg2 == xmm4shuffle0312)
		shufps				reg0,			reg1,			xmm4shuffle0312
	.endif
	.if(reg2 == xmm4shuffle0313)
		shufps				reg0,			reg1,			xmm4shuffle0313
	.endif
	.if(reg2 == xmm4shuffle0320)
		shufps				reg0,			reg1,			xmm4shuffle0320
	.endif
	.if(reg2 == xmm4shuffle0321)
		shufps				reg0,			reg1,			xmm4shuffle0321
	.endif
	.if(reg2 == xmm4shuffle0322)
		shufps				reg0,			reg1,			xmm4shuffle0322
	.endif
	.if(reg2 == xmm4shuffle0323)
		shufps				reg0,			reg1,			xmm4shuffle0323
	.endif
	.if(reg2 == xmm4shuffle0330)
		shufps				reg0,			reg1,			xmm4shuffle0330
	.endif
	.if(reg2 == xmm4shuffle0331)
		shufps				reg0,			reg1,			xmm4shuffle0331
	.endif
	.if(reg2 == xmm4shuffle0332)
		shufps				reg0,			reg1,			xmm4shuffle0332
	.endif
	.if(reg2 == xmm4shuffle0333)
		shufps				reg0,			reg1,			xmm4shuffle0333
	.endif
	.if(reg2 == xmm4shuffle1000)
		shufps				reg0,			reg1,			xmm4shuffle1000
	.endif
	.if(reg2 == xmm4shuffle1001)
		shufps				reg0,			reg1,			xmm4shuffle1001
	.endif
	.if(reg2 == xmm4shuffle1002)
		shufps				reg0,			reg1,			xmm4shuffle1002
	.endif
	.if(reg2 == xmm4shuffle1003)
		shufps				reg0,			reg1,			xmm4shuffle1003
	.endif
	.if(reg2 == xmm4shuffle1010)
		shufps				reg0,			reg1,			xmm4shuffle1010
	.endif
	.if(reg2 == xmm4shuffle1011)
		shufps				reg0,			reg1,			xmm4shuffle1011
	.endif
	.if(reg2 == xmm4shuffle1012)
		shufps				reg0,			reg1,			xmm4shuffle1012
	.endif
	.if(reg2 == xmm4shuffle1013)
		shufps				reg0,			reg1,			xmm4shuffle1013
	.endif
	.if(reg2 == xmm4shuffle1020)
		shufps				reg0,			reg1,			xmm4shuffle1020
	.endif
	.if(reg2 == xmm4shuffle1021)
		shufps				reg0,			reg1,			xmm4shuffle1021
	.endif
	.if(reg2 == xmm4shuffle1022)
		shufps				reg0,			reg1,			xmm4shuffle1022
	.endif
	.if(reg2 == xmm4shuffle1023)
		shufps				reg0,			reg1,			xmm4shuffle1023
	.endif
	.if(reg2 == xmm4shuffle1030)
		shufps				reg0,			reg1,			xmm4shuffle1030
	.endif
	.if(reg2 == xmm4shuffle1031)
		shufps				reg0,			reg1,			xmm4shuffle1031
	.endif
	.if(reg2 == xmm4shuffle1032)
		shufps				reg0,			reg1,			xmm4shuffle1032
	.endif
	.if(reg2 == xmm4shuffle1033)
		shufps				reg0,			reg1,			xmm4shuffle1033
	.endif
	.if(reg2 == xmm4shuffle1100)
		shufps				reg0,			reg1,			xmm4shuffle1100
	.endif
	.if(reg2 == xmm4shuffle1101)
		shufps				reg0,			reg1,			xmm4shuffle1101
	.endif
	.if(reg2 == xmm4shuffle1102)
		shufps				reg0,			reg1,			xmm4shuffle1102
	.endif
	.if(reg2 == xmm4shuffle1103)
		shufps				reg0,			reg1,			xmm4shuffle1103
	.endif
	.if(reg2 == xmm4shuffle1110)
		shufps				reg0,			reg1,			xmm4shuffle1110
	.endif
	.if(reg2 == xmm4shuffle1111)
		shufps				reg0,			reg1,			xmm4shuffle1111
	.endif
	.if(reg2 == xmm4shuffle1112)
		shufps				reg0,			reg1,			xmm4shuffle1112
	.endif
	.if(reg2 == xmm4shuffle1113)
		shufps				reg0,			reg1,			xmm4shuffle1113
	.endif
	.if(reg2 == xmm4shuffle1120)
		shufps				reg0,			reg1,			xmm4shuffle1120
	.endif
	.if(reg2 == xmm4shuffle1121)
		shufps				reg0,			reg1,			xmm4shuffle1121
	.endif
	.if(reg2 == xmm4shuffle1122)
		shufps				reg0,			reg1,			xmm4shuffle1122
	.endif
	.if(reg2 == xmm4shuffle1123)
		shufps				reg0,			reg1,			xmm4shuffle1123
	.endif
	.if(reg2 == xmm4shuffle1130)
		shufps				reg0,			reg1,			xmm4shuffle1130
	.endif
	.if(reg2 == xmm4shuffle1131)
		shufps				reg0,			reg1,			xmm4shuffle1131
	.endif
	.if(reg2 == xmm4shuffle1132)
		shufps				reg0,			reg1,			xmm4shuffle1132
	.endif
	.if(reg2 == xmm4shuffle1133)
		shufps				reg0,			reg1,			xmm4shuffle1133
	.endif
	.if(reg2 == xmm4shuffle1200)
		shufps				reg0,			reg1,			xmm4shuffle1200
	.endif
	.if(reg2 == xmm4shuffle1201)
		shufps				reg0,			reg1,			xmm4shuffle1201
	.endif
	.if(reg2 == xmm4shuffle1202)
		shufps				reg0,			reg1,			xmm4shuffle1202
	.endif
	.if(reg2 == xmm4shuffle1203)
		shufps				reg0,			reg1,			xmm4shuffle1203
	.endif
	.if(reg2 == xmm4shuffle1210)
		shufps				reg0,			reg1,			xmm4shuffle1210
	.endif
	.if(reg2 == xmm4shuffle1211)
		shufps				reg0,			reg1,			xmm4shuffle1211
	.endif
	.if(reg2 == xmm4shuffle1212)
		shufps				reg0,			reg1,			xmm4shuffle1212
	.endif
	.if(reg2 == xmm4shuffle1213)
		shufps				reg0,			reg1,			xmm4shuffle1213
	.endif
	.if(reg2 == xmm4shuffle1220)
		shufps				reg0,			reg1,			xmm4shuffle1220
	.endif
	.if(reg2 == xmm4shuffle1221)
		shufps				reg0,			reg1,			xmm4shuffle1221
	.endif
	.if(reg2 == xmm4shuffle1222)
		shufps				reg0,			reg1,			xmm4shuffle1222
	.endif
	.if(reg2 == xmm4shuffle1223)
		shufps				reg0,			reg1,			xmm4shuffle1223
	.endif
	.if(reg2 == xmm4shuffle1230)
		shufps				reg0,			reg1,			xmm4shuffle1230
	.endif
	.if(reg2 == xmm4shuffle1231)
		shufps				reg0,			reg1,			xmm4shuffle1231
	.endif
	.if(reg2 == xmm4shuffle1232)
		shufps				reg0,			reg1,			xmm4shuffle1232
	.endif
	.if(reg2 == xmm4shuffle1233)
		shufps				reg0,			reg1,			xmm4shuffle1233
	.endif
	.if(reg2 == xmm4shuffle1300)
		shufps				reg0,			reg1,			xmm4shuffle1300
	.endif
	.if(reg2 == xmm4shuffle1301)
		shufps				reg0,			reg1,			xmm4shuffle1301
	.endif
	.if(reg2 == xmm4shuffle1302)
		shufps				reg0,			reg1,			xmm4shuffle1302
	.endif
	.if(reg2 == xmm4shuffle1303)
		shufps				reg0,			reg1,			xmm4shuffle1303
	.endif
	.if(reg2 == xmm4shuffle1310)
		shufps				reg0,			reg1,			xmm4shuffle1310
	.endif
	.if(reg2 == xmm4shuffle1311)
		shufps				reg0,			reg1,			xmm4shuffle1311
	.endif
	.if(reg2 == xmm4shuffle1312)
		shufps				reg0,			reg1,			xmm4shuffle1312
	.endif
	.if(reg2 == xmm4shuffle1313)
		shufps				reg0,			reg1,			xmm4shuffle1313
	.endif
	.if(reg2 == xmm4shuffle1320)
		shufps				reg0,			reg1,			xmm4shuffle1320
	.endif
	.if(reg2 == xmm4shuffle1321)
		shufps				reg0,			reg1,			xmm4shuffle1321
	.endif
	.if(reg2 == xmm4shuffle1322)
		shufps				reg0,			reg1,			xmm4shuffle1322
	.endif
	.if(reg2 == xmm4shuffle1323)
		shufps				reg0,			reg1,			xmm4shuffle1323
	.endif
	.if(reg2 == xmm4shuffle1330)
		shufps				reg0,			reg1,			xmm4shuffle1330
	.endif
	.if(reg2 == xmm4shuffle1331)
		shufps				reg0,			reg1,			xmm4shuffle1331
	.endif
	.if(reg2 == xmm4shuffle1332)
		shufps				reg0,			reg1,			xmm4shuffle1332
	.endif
	.if(reg2 == xmm4shuffle1333)
		shufps				reg0,			reg1,			xmm4shuffle1333
	.endif
	.if(reg2 == xmm4shuffle2000)
		shufps				reg0,			reg1,			xmm4shuffle2000
	.endif
	.if(reg2 == xmm4shuffle2001)
		shufps				reg0,			reg1,			xmm4shuffle2001
	.endif
	.if(reg2 == xmm4shuffle2002)
		shufps				reg0,			reg1,			xmm4shuffle2002
	.endif
	.if(reg2 == xmm4shuffle2003)
		shufps				reg0,			reg1,			xmm4shuffle2003
	.endif
	.if(reg2 == xmm4shuffle2010)
		shufps				reg0,			reg1,			xmm4shuffle2010
	.endif
	.if(reg2 == xmm4shuffle2011)
		shufps				reg0,			reg1,			xmm4shuffle2011
	.endif
	.if(reg2 == xmm4shuffle2012)
		shufps				reg0,			reg1,			xmm4shuffle2012
	.endif
	.if(reg2 == xmm4shuffle2013)
		shufps				reg0,			reg1,			xmm4shuffle2013
	.endif
	.if(reg2 == xmm4shuffle2020)
		shufps				reg0,			reg1,			xmm4shuffle2020
	.endif
	.if(reg2 == xmm4shuffle2021)
		shufps				reg0,			reg1,			xmm4shuffle2021
	.endif
	.if(reg2 == xmm4shuffle2022)
		shufps				reg0,			reg1,			xmm4shuffle2022
	.endif
	.if(reg2 == xmm4shuffle2023)
		shufps				reg0,			reg1,			xmm4shuffle2023
	.endif
	.if(reg2 == xmm4shuffle2030)
		shufps				reg0,			reg1,			xmm4shuffle2030
	.endif
	.if(reg2 == xmm4shuffle2031)
		shufps				reg0,			reg1,			xmm4shuffle2031
	.endif
	.if(reg2 == xmm4shuffle2032)
		shufps				reg0,			reg1,			xmm4shuffle2032
	.endif
	.if(reg2 == xmm4shuffle2033)
		shufps				reg0,			reg1,			xmm4shuffle2033
	.endif
	.if(reg2 == xmm4shuffle2100)
		shufps				reg0,			reg1,			xmm4shuffle2100
	.endif
	.if(reg2 == xmm4shuffle2101)
		shufps				reg0,			reg1,			xmm4shuffle2101
	.endif
	.if(reg2 == xmm4shuffle2102)
		shufps				reg0,			reg1,			xmm4shuffle2102
	.endif
	.if(reg2 == xmm4shuffle2103)
		shufps				reg0,			reg1,			xmm4shuffle2103
	.endif
	.if(reg2 == xmm4shuffle2110)
		shufps				reg0,			reg1,			xmm4shuffle2110
	.endif
	.if(reg2 == xmm4shuffle2111)
		shufps				reg0,			reg1,			xmm4shuffle2111
	.endif
	.if(reg2 == xmm4shuffle2112)
		shufps				reg0,			reg1,			xmm4shuffle2112
	.endif
	.if(reg2 == xmm4shuffle2113)
		shufps				reg0,			reg1,			xmm4shuffle2113
	.endif
	.if(reg2 == xmm4shuffle2120)
		shufps				reg0,			reg1,			xmm4shuffle2120
	.endif
	.if(reg2 == xmm4shuffle2121)
		shufps				reg0,			reg1,			xmm4shuffle2121
	.endif
	.if(reg2 == xmm4shuffle2122)
		shufps				reg0,			reg1,			xmm4shuffle2122
	.endif
	.if(reg2 == xmm4shuffle2123)
		shufps				reg0,			reg1,			xmm4shuffle2123
	.endif
	.if(reg2 == xmm4shuffle2130)
		shufps				reg0,			reg1,			xmm4shuffle2130
	.endif
	.if(reg2 == xmm4shuffle2131)
		shufps				reg0,			reg1,			xmm4shuffle2131
	.endif
	.if(reg2 == xmm4shuffle2132)
		shufps				reg0,			reg1,			xmm4shuffle2132
	.endif
	.if(reg2 == xmm4shuffle2133)
		shufps				reg0,			reg1,			xmm4shuffle2133
	.endif
	.if(reg2 == xmm4shuffle2200)
		shufps				reg0,			reg1,			xmm4shuffle2200
	.endif
	.if(reg2 == xmm4shuffle2201)
		shufps				reg0,			reg1,			xmm4shuffle2201
	.endif
	.if(reg2 == xmm4shuffle2202)
		shufps				reg0,			reg1,			xmm4shuffle2202
	.endif
	.if(reg2 == xmm4shuffle2203)
		shufps				reg0,			reg1,			xmm4shuffle2203
	.endif
	.if(reg2 == xmm4shuffle2210)
		shufps				reg0,			reg1,			xmm4shuffle2210
	.endif
	.if(reg2 == xmm4shuffle2211)
		shufps				reg0,			reg1,			xmm4shuffle2211
	.endif
	.if(reg2 == xmm4shuffle2212)
		shufps				reg0,			reg1,			xmm4shuffle2212
	.endif
	.if(reg2 == xmm4shuffle2213)
		shufps				reg0,			reg1,			xmm4shuffle2213
	.endif
	.if(reg2 == xmm4shuffle2220)
		shufps				reg0,			reg1,			xmm4shuffle2220
	.endif
	.if(reg2 == xmm4shuffle2221)
		shufps				reg0,			reg1,			xmm4shuffle2221
	.endif
	.if(reg2 == xmm4shuffle2222)
		shufps				reg0,			reg1,			xmm4shuffle2222
	.endif
	.if(reg2 == xmm4shuffle2223)
		shufps				reg0,			reg1,			xmm4shuffle2223
	.endif
	.if(reg2 == xmm4shuffle2230)
		shufps				reg0,			reg1,			xmm4shuffle2230
	.endif
	.if(reg2 == xmm4shuffle2231)
		shufps				reg0,			reg1,			xmm4shuffle2231
	.endif
	.if(reg2 == xmm4shuffle2232)
		shufps				reg0,			reg1,			xmm4shuffle2232
	.endif
	.if(reg2 == xmm4shuffle2233)
		shufps				reg0,			reg1,			xmm4shuffle2233
	.endif
	.if(reg2 == xmm4shuffle2300)
		shufps				reg0,			reg1,			xmm4shuffle2300
	.endif
	.if(reg2 == xmm4shuffle2301)
		shufps				reg0,			reg1,			xmm4shuffle2301
	.endif
	.if(reg2 == xmm4shuffle2302)
		shufps				reg0,			reg1,			xmm4shuffle2302
	.endif
	.if(reg2 == xmm4shuffle2303)
		shufps				reg0,			reg1,			xmm4shuffle2303
	.endif
	.if(reg2 == xmm4shuffle2310)
		shufps				reg0,			reg1,			xmm4shuffle2310
	.endif
	.if(reg2 == xmm4shuffle2311)
		shufps				reg0,			reg1,			xmm4shuffle2311
	.endif
	.if(reg2 == xmm4shuffle2312)
		shufps				reg0,			reg1,			xmm4shuffle2312
	.endif
	.if(reg2 == xmm4shuffle2313)
		shufps				reg0,			reg1,			xmm4shuffle2313
	.endif
	.if(reg2 == xmm4shuffle2320)
		shufps				reg0,			reg1,			xmm4shuffle2320
	.endif
	.if(reg2 == xmm4shuffle2321)
		shufps				reg0,			reg1,			xmm4shuffle2321
	.endif
	.if(reg2 == xmm4shuffle2322)
		shufps				reg0,			reg1,			xmm4shuffle2322
	.endif
	.if(reg2 == xmm4shuffle2323)
		shufps				reg0,			reg1,			xmm4shuffle2323
	.endif
	.if(reg2 == xmm4shuffle2330)
		shufps				reg0,			reg1,			xmm4shuffle2330
	.endif
	.if(reg2 == xmm4shuffle2331)
		shufps				reg0,			reg1,			xmm4shuffle2331
	.endif
	.if(reg2 == xmm4shuffle2332)
		shufps				reg0,			reg1,			xmm4shuffle2332
	.endif
	.if(reg2 == xmm4shuffle2333)
		shufps				reg0,			reg1,			xmm4shuffle2333
	.endif
	.if(reg2 == xmm4shuffle3000)
		shufps				reg0,			reg1,			xmm4shuffle3000
	.endif
	.if(reg2 == xmm4shuffle3001)
		shufps				reg0,			reg1,			xmm4shuffle3001
	.endif
	.if(reg2 == xmm4shuffle3002)
		shufps				reg0,			reg1,			xmm4shuffle3002
	.endif
	.if(reg2 == xmm4shuffle3003)
		shufps				reg0,			reg1,			xmm4shuffle3003
	.endif
	.if(reg2 == xmm4shuffle3010)
		shufps				reg0,			reg1,			xmm4shuffle3010
	.endif
	.if(reg2 == xmm4shuffle3011)
		shufps				reg0,			reg1,			xmm4shuffle3011
	.endif
	.if(reg2 == xmm4shuffle3012)
		shufps				reg0,			reg1,			xmm4shuffle3012
	.endif
	.if(reg2 == xmm4shuffle3013)
		shufps				reg0,			reg1,			xmm4shuffle3013
	.endif
	.if(reg2 == xmm4shuffle3020)
		shufps				reg0,			reg1,			xmm4shuffle3020
	.endif
	.if(reg2 == xmm4shuffle3021)
		shufps				reg0,			reg1,			xmm4shuffle3021
	.endif
	.if(reg2 == xmm4shuffle3022)
		shufps				reg0,			reg1,			xmm4shuffle3022
	.endif
	.if(reg2 == xmm4shuffle3023)
		shufps				reg0,			reg1,			xmm4shuffle3023
	.endif
	.if(reg2 == xmm4shuffle3030)
		shufps				reg0,			reg1,			xmm4shuffle3030
	.endif
	.if(reg2 == xmm4shuffle3031)
		shufps				reg0,			reg1,			xmm4shuffle3031
	.endif
	.if(reg2 == xmm4shuffle3032)
		shufps				reg0,			reg1,			xmm4shuffle3032
	.endif
	.if(reg2 == xmm4shuffle3033)
		shufps				reg0,			reg1,			xmm4shuffle3033
	.endif
	.if(reg2 == xmm4shuffle3100)
		shufps				reg0,			reg1,			xmm4shuffle3100
	.endif
	.if(reg2 == xmm4shuffle3101)
		shufps				reg0,			reg1,			xmm4shuffle3101
	.endif
	.if(reg2 == xmm4shuffle3102)
		shufps				reg0,			reg1,			xmm4shuffle3102
	.endif
	.if(reg2 == xmm4shuffle3103)
		shufps				reg0,			reg1,			xmm4shuffle3103
	.endif
	.if(reg2 == xmm4shuffle3110)
		shufps				reg0,			reg1,			xmm4shuffle3110
	.endif
	.if(reg2 == xmm4shuffle3111)
		shufps				reg0,			reg1,			xmm4shuffle3111
	.endif
	.if(reg2 == xmm4shuffle3112)
		shufps				reg0,			reg1,			xmm4shuffle3112
	.endif
	.if(reg2 == xmm4shuffle3113)
		shufps				reg0,			reg1,			xmm4shuffle3113
	.endif
	.if(reg2 == xmm4shuffle3120)
		shufps				reg0,			reg1,			xmm4shuffle3120
	.endif
	.if(reg2 == xmm4shuffle3121)
		shufps				reg0,			reg1,			xmm4shuffle3121
	.endif
	.if(reg2 == xmm4shuffle3122)
		shufps				reg0,			reg1,			xmm4shuffle3122
	.endif
	.if(reg2 == xmm4shuffle3123)
		shufps				reg0,			reg1,			xmm4shuffle3123
	.endif
	.if(reg2 == xmm4shuffle3130)
		shufps				reg0,			reg1,			xmm4shuffle3130
	.endif
	.if(reg2 == xmm4shuffle3131)
		shufps				reg0,			reg1,			xmm4shuffle3131
	.endif
	.if(reg2 == xmm4shuffle3132)
		shufps				reg0,			reg1,			xmm4shuffle3132
	.endif
	.if(reg2 == xmm4shuffle3133)
		shufps				reg0,			reg1,			xmm4shuffle3133
	.endif
	.if(reg2 == xmm4shuffle3200)
		shufps				reg0,			reg1,			xmm4shuffle3200
	.endif
	.if(reg2 == xmm4shuffle3201)
		shufps				reg0,			reg1,			xmm4shuffle3201
	.endif
	.if(reg2 == xmm4shuffle3202)
		shufps				reg0,			reg1,			xmm4shuffle3202
	.endif
	.if(reg2 == xmm4shuffle3203)
		shufps				reg0,			reg1,			xmm4shuffle3203
	.endif
	.if(reg2 == xmm4shuffle3210)
		shufps				reg0,			reg1,			xmm4shuffle3210
	.endif
	.if(reg2 == xmm4shuffle3211)
		shufps				reg0,			reg1,			xmm4shuffle3211
	.endif
	.if(reg2 == xmm4shuffle3212)
		shufps				reg0,			reg1,			xmm4shuffle3212
	.endif
	.if(reg2 == xmm4shuffle3213)
		shufps				reg0,			reg1,			xmm4shuffle3213
	.endif
	.if(reg2 == xmm4shuffle3220)
		shufps				reg0,			reg1,			xmm4shuffle3220
	.endif
	.if(reg2 == xmm4shuffle3221)
		shufps				reg0,			reg1,			xmm4shuffle3221
	.endif
	.if(reg2 == xmm4shuffle3222)
		shufps				reg0,			reg1,			xmm4shuffle3222
	.endif
	.if(reg2 == xmm4shuffle3223)
		shufps				reg0,			reg1,			xmm4shuffle3223
	.endif
	.if(reg2 == xmm4shuffle3230)
		shufps				reg0,			reg1,			xmm4shuffle3230
	.endif
	.if(reg2 == xmm4shuffle3231)
		shufps				reg0,			reg1,			xmm4shuffle3231
	.endif
	.if(reg2 == xmm4shuffle3232)
		shufps				reg0,			reg1,			xmm4shuffle3232
	.endif
	.if(reg2 == xmm4shuffle3233)
		shufps				reg0,			reg1,			xmm4shuffle3233
	.endif
	.if(reg2 == xmm4shuffle3300)
		shufps				reg0,			reg1,			xmm4shuffle3300
	.endif
	.if(reg2 == xmm4shuffle3301)
		shufps				reg0,			reg1,			xmm4shuffle3301
	.endif
	.if(reg2 == xmm4shuffle3302)
		shufps				reg0,			reg1,			xmm4shuffle3302
	.endif
	.if(reg2 == xmm4shuffle3303)
		shufps				reg0,			reg1,			xmm4shuffle3303
	.endif
	.if(reg2 == xmm4shuffle3310)
		shufps				reg0,			reg1,			xmm4shuffle3310
	.endif
	.if(reg2 == xmm4shuffle3311)
		shufps				reg0,			reg1,			xmm4shuffle3311
	.endif
	.if(reg2 == xmm4shuffle3312)
		shufps				reg0,			reg1,			xmm4shuffle3312
	.endif
	.if(reg2 == xmm4shuffle3313)
		shufps				reg0,			reg1,			xmm4shuffle3313
	.endif
	.if(reg2 == xmm4shuffle3320)
		shufps				reg0,			reg1,			xmm4shuffle3320
	.endif
	.if(reg2 == xmm4shuffle3321)
		shufps				reg0,			reg1,			xmm4shuffle3321
	.endif
	.if(reg2 == xmm4shuffle3322)
		shufps				reg0,			reg1,			xmm4shuffle3322
	.endif
	.if(reg2 == xmm4shuffle3323)
		shufps				reg0,			reg1,			xmm4shuffle3323
	.endif
	.if(reg2 == xmm4shuffle3330)
		shufps				reg0,			reg1,			xmm4shuffle3330
	.endif
	.if(reg2 == xmm4shuffle3331)
		shufps				reg0,			reg1,			xmm4shuffle3331
	.endif
	.if(reg2 == xmm4shuffle3332)
		shufps				reg0,			reg1,			xmm4shuffle3332
	.endif
	.if(reg2 == xmm4shuffle3333)
		shufps				reg0,			reg1,			xmm4shuffle3333
	.endif
endm

;uXm_xmm_shuffled4 macro reg0, reg1, reg2
;	.switch reg2
;	.case uXm_xmm_shuffle4(0,0,0,0)
;		shufps				reg0,			reg1,			uXm_xmm_shuffle4(0,0,0,0)
;		.break
;	.case uXm_xmm_shuffle4(0,0,0,1)
;		shufps				reg0,			reg1,			uXm_xmm_shuffle4(0,0,0,1)
;		.break
;	.case uXm_xmm_shuffle4(0,0,1,1)
;		shufps				reg0,			reg1,			uXm_xmm_shuffle4(0,0,1,1)
;		.break
;	.case uXm_xmm_shuffle4(0,1,1,1)
;		shufps				reg0,			reg1,			uXm_xmm_shuffle4(0,1,1,1)
;		.break
;	.case uXm_xmm_shuffle4(1,1,1,1)
;		shufps				reg0,			reg1,			uXm_xmm_shuffle4(1,1,1,1)
;		.break
;	.case uXm_xmm_shuffle4(0,0,0,0)
;		shufps				reg0,			reg1,			uXm_xmm_shuffle4(0,0,0,0)
;		.break
;	.case uXm_xmm_shuffle4(0,0,0,0)
;		shufps				reg0,			reg1,			uXm_xmm_shuffle4(0,0,0,0)
;		.break
;	.case uXm_xmm_shuffle4(0,0,0,0)
;		shufps				reg0,			reg1,			uXm_xmm_shuffle4(0,0,0,0)
;		.break
;	.endswitch
;endm
