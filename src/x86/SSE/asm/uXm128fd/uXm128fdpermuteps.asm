
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.data
	
		m128fdpermpsjmptable isize_t	offset m128fdpermps_0, offset m128fdpermps_1, offset m128fdpermps_2, offset m128fdpermps_3, offset m128fdpermps_4, offset m128fdpermps_5, \
									offset m128fdpermps_6, offset m128fdpermps_7, offset m128fdpermps_8, offset m128fdpermps_9, offset m128fdpermps_10, offset m128fdpermps_11, \
									offset m128fdpermps_12, offset m128fdpermps_13, offset m128fdpermps_14, offset m128fdpermps_15, offset m128fdpermps_16, offset m128fdpermps_17, \
									offset m128fdpermps_18, offset m128fdpermps_19, offset m128fdpermps_20, offset m128fdpermps_21, offset m128fdpermps_22, offset m128fdpermps_23, \
									offset m128fdpermps_24, offset m128fdpermps_25, offset m128fdpermps_26, offset m128fdpermps_27, offset m128fdpermps_28, offset m128fdpermps_29, \
									offset m128fdpermps_30, offset m128fdpermps_31, offset m128fdpermps_32, offset m128fdpermps_33, offset m128fdpermps_34, offset m128fdpermps_35, \
									offset m128fdpermps_36, offset m128fdpermps_37, offset m128fdpermps_38, offset m128fdpermps_39, offset m128fdpermps_40, offset m128fdpermps_41, \
									offset m128fdpermps_42, offset m128fdpermps_43, offset m128fdpermps_44, offset m128fdpermps_45, offset m128fdpermps_46, offset m128fdpermps_47, \
									offset m128fdpermps_48, offset m128fdpermps_49, offset m128fdpermps_50, offset m128fdpermps_51, offset m128fdpermps_52, offset m128fdpermps_53, \
									offset m128fdpermps_54, offset m128fdpermps_55, offset m128fdpermps_56, offset m128fdpermps_57, offset m128fdpermps_58, offset m128fdpermps_59, \
									offset m128fdpermps_60, offset m128fdpermps_61, offset m128fdpermps_62, offset m128fdpermps_63, offset m128fdpermps_64, offset m128fdpermps_65, \
									offset m128fdpermps_66, offset m128fdpermps_67, offset m128fdpermps_68, offset m128fdpermps_69, offset m128fdpermps_70, offset m128fdpermps_71, \
									offset m128fdpermps_72, offset m128fdpermps_73, offset m128fdpermps_74, offset m128fdpermps_75, offset m128fdpermps_76, offset m128fdpermps_77, \
									offset m128fdpermps_78, offset m128fdpermps_79, offset m128fdpermps_80, offset m128fdpermps_81, offset m128fdpermps_82, offset m128fdpermps_83, \
									offset m128fdpermps_84, offset m128fdpermps_85, offset m128fdpermps_86, offset m128fdpermps_87, offset m128fdpermps_88, offset m128fdpermps_89, \
									offset m128fdpermps_90, offset m128fdpermps_91, offset m128fdpermps_92, offset m128fdpermps_93, offset m128fdpermps_94, offset m128fdpermps_95, \
									offset m128fdpermps_96, offset m128fdpermps_97, offset m128fdpermps_98, offset m128fdpermps_99, offset m128fdpermps_100, offset m128fdpermps_101, \
									offset m128fdpermps_102, offset m128fdpermps_103, offset m128fdpermps_104, offset m128fdpermps_105, offset m128fdpermps_106, offset m128fdpermps_107, \
									offset m128fdpermps_108, offset m128fdpermps_109, offset m128fdpermps_110, offset m128fdpermps_111, offset m128fdpermps_112, offset m128fdpermps_113, \
									offset m128fdpermps_114, offset m128fdpermps_115, offset m128fdpermps_116, offset m128fdpermps_117, offset m128fdpermps_118, offset m128fdpermps_119, \
									offset m128fdpermps_120, offset m128fdpermps_121, offset m128fdpermps_122, offset m128fdpermps_123, offset m128fdpermps_124, offset m128fdpermps_125, \
									offset m128fdpermps_126, offset m128fdpermps_127, offset m128fdpermps_128, offset m128fdpermps_129, offset m128fdpermps_130, offset m128fdpermps_131, \
									offset m128fdpermps_132, offset m128fdpermps_133, offset m128fdpermps_134, offset m128fdpermps_135, offset m128fdpermps_136, offset m128fdpermps_137, \
									offset m128fdpermps_138, offset m128fdpermps_139, offset m128fdpermps_140, offset m128fdpermps_141, offset m128fdpermps_142, offset m128fdpermps_143, \
									offset m128fdpermps_144, offset m128fdpermps_145, offset m128fdpermps_146, offset m128fdpermps_147, offset m128fdpermps_148, offset m128fdpermps_149, \
									offset m128fdpermps_150, offset m128fdpermps_151, offset m128fdpermps_152, offset m128fdpermps_153, offset m128fdpermps_154, offset m128fdpermps_155, \
									offset m128fdpermps_156, offset m128fdpermps_157, offset m128fdpermps_158, offset m128fdpermps_159, offset m128fdpermps_160, offset m128fdpermps_161, \
									offset m128fdpermps_162, offset m128fdpermps_163, offset m128fdpermps_164, offset m128fdpermps_165, offset m128fdpermps_166, offset m128fdpermps_167, \
									offset m128fdpermps_168, offset m128fdpermps_169, offset m128fdpermps_170, offset m128fdpermps_171, offset m128fdpermps_172, offset m128fdpermps_173, \
									offset m128fdpermps_174, offset m128fdpermps_175, offset m128fdpermps_176, offset m128fdpermps_177, offset m128fdpermps_178, offset m128fdpermps_179, \
									offset m128fdpermps_180, offset m128fdpermps_181, offset m128fdpermps_182, offset m128fdpermps_183, offset m128fdpermps_184, offset m128fdpermps_185, \
									offset m128fdpermps_186, offset m128fdpermps_187, offset m128fdpermps_188, offset m128fdpermps_189, offset m128fdpermps_190, offset m128fdpermps_191, \
									offset m128fdpermps_192, offset m128fdpermps_193, offset m128fdpermps_194, offset m128fdpermps_195, offset m128fdpermps_196, offset m128fdpermps_197, \
									offset m128fdpermps_198, offset m128fdpermps_199, offset m128fdpermps_200, offset m128fdpermps_201, offset m128fdpermps_202, offset m128fdpermps_203, \
									offset m128fdpermps_204, offset m128fdpermps_205, offset m128fdpermps_206, offset m128fdpermps_207, offset m128fdpermps_208, offset m128fdpermps_209, \
									offset m128fdpermps_210, offset m128fdpermps_211, offset m128fdpermps_212, offset m128fdpermps_213, offset m128fdpermps_214, offset m128fdpermps_215, \
									offset m128fdpermps_216, offset m128fdpermps_217, offset m128fdpermps_218, offset m128fdpermps_219, offset m128fdpermps_220, offset m128fdpermps_221, \
									offset m128fdpermps_222, offset m128fdpermps_223, offset m128fdpermps_224, offset m128fdpermps_225, offset m128fdpermps_226, offset m128fdpermps_227, \
									offset m128fdpermps_228, offset m128fdpermps_229, offset m128fdpermps_230, offset m128fdpermps_231, offset m128fdpermps_232, offset m128fdpermps_233, \
									offset m128fdpermps_234, offset m128fdpermps_235, offset m128fdpermps_236, offset m128fdpermps_237, offset m128fdpermps_238, offset m128fdpermps_239, \
									offset m128fdpermps_240, offset m128fdpermps_241, offset m128fdpermps_242, offset m128fdpermps_243, offset m128fdpermps_244, offset m128fdpermps_245, \
									offset m128fdpermps_246, offset m128fdpermps_247, offset m128fdpermps_248, offset m128fdpermps_249, offset m128fdpermps_250, offset m128fdpermps_251, \
									offset m128fdpermps_252, offset m128fdpermps_253, offset m128fdpermps_254, offset m128fdpermps_255				
				
	.code

;******************
; Proto
;******************
_uXm_m128fd_permute_0000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_0333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_1333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
_uXm_m128fd_permute_2103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
_uXm_m128fd_permute_2123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword 
_uXm_m128fd_permute_2233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_2333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3000_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3001_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3002_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3003_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3010_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3011_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3012_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3013_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3020_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3021_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3022_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3023_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3030_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3031_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3032_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3033_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3100_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3101_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3102_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3103_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3110_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3111_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3112_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3113_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3120_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3121_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3122_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3123_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3130_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3131_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3132_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3133_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3200_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3201_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3202_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3203_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3210_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3211_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3212_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3213_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3220_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3221_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3222_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3223_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3230_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3231_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3232_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3233_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3300_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3301_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3302_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3303_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3310_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3311_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3312_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3313_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3320_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3321_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3322_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3323_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3330_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3331_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3332_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_3333_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_permute_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword

;******************
; Proc
;******************

_uXm_m128fd_permute_0000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			0
			ret
_uXm_m128fd_permute_0000_ps endp

_uXm_m128fd_permute_0001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			1
			ret
_uXm_m128fd_permute_0001_ps endp

_uXm_m128fd_permute_0002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			2
			ret
_uXm_m128fd_permute_0002_ps endp

_uXm_m128fd_permute_0003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			3
			ret
_uXm_m128fd_permute_0003_ps endp

_uXm_m128fd_permute_0010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			4
			ret
_uXm_m128fd_permute_0010_ps endp

_uXm_m128fd_permute_0011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			5
			ret
_uXm_m128fd_permute_0011_ps endp

_uXm_m128fd_permute_0012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			6
			ret
_uXm_m128fd_permute_0012_ps endp

_uXm_m128fd_permute_0013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			7
			ret
_uXm_m128fd_permute_0013_ps endp

_uXm_m128fd_permute_0020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			8
			ret
_uXm_m128fd_permute_0020_ps endp

_uXm_m128fd_permute_0021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			9
			ret
_uXm_m128fd_permute_0021_ps endp

_uXm_m128fd_permute_0022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			10
			ret
_uXm_m128fd_permute_0022_ps endp

_uXm_m128fd_permute_0023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			11
			ret
_uXm_m128fd_permute_0023_ps endp

_uXm_m128fd_permute_0030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			12
			ret
_uXm_m128fd_permute_0030_ps endp

_uXm_m128fd_permute_0031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			13
			ret
_uXm_m128fd_permute_0031_ps endp

_uXm_m128fd_permute_0032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			14
			ret
_uXm_m128fd_permute_0032_ps endp

_uXm_m128fd_permute_0033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			15
			ret
_uXm_m128fd_permute_0033_ps endp

_uXm_m128fd_permute_0100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			16
			ret
_uXm_m128fd_permute_0100_ps endp

_uXm_m128fd_permute_0101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			17
			ret
_uXm_m128fd_permute_0101_ps endp

_uXm_m128fd_permute_0102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			18
			ret
_uXm_m128fd_permute_0102_ps endp

_uXm_m128fd_permute_0103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			19
			ret
_uXm_m128fd_permute_0103_ps endp

_uXm_m128fd_permute_0110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			20
			ret
_uXm_m128fd_permute_0110_ps endp

_uXm_m128fd_permute_0111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			21
			ret
_uXm_m128fd_permute_0111_ps endp

_uXm_m128fd_permute_0112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			22
			ret
_uXm_m128fd_permute_0112_ps endp

_uXm_m128fd_permute_0113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			23
			ret
_uXm_m128fd_permute_0113_ps endp

_uXm_m128fd_permute_0120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			24
			ret
_uXm_m128fd_permute_0120_ps endp

_uXm_m128fd_permute_0121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			25
			ret
_uXm_m128fd_permute_0121_ps endp

_uXm_m128fd_permute_0122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			26
			ret
_uXm_m128fd_permute_0122_ps endp

_uXm_m128fd_permute_0123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			27
			ret
_uXm_m128fd_permute_0123_ps endp

_uXm_m128fd_permute_0130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			28
			ret
_uXm_m128fd_permute_0130_ps endp

_uXm_m128fd_permute_0131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			29
			ret
_uXm_m128fd_permute_0131_ps endp

_uXm_m128fd_permute_0132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			30
			ret
_uXm_m128fd_permute_0132_ps endp

_uXm_m128fd_permute_0133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			31
			ret
_uXm_m128fd_permute_0133_ps endp

_uXm_m128fd_permute_0200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			32
			ret
_uXm_m128fd_permute_0200_ps endp

_uXm_m128fd_permute_0201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			33
			ret
_uXm_m128fd_permute_0201_ps endp

_uXm_m128fd_permute_0202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			34
			ret
_uXm_m128fd_permute_0202_ps endp

_uXm_m128fd_permute_0203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			35
			ret
_uXm_m128fd_permute_0203_ps endp

_uXm_m128fd_permute_0210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			36
			ret
_uXm_m128fd_permute_0210_ps endp

_uXm_m128fd_permute_0211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			37
			ret
_uXm_m128fd_permute_0211_ps endp

_uXm_m128fd_permute_0212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			38
			ret
_uXm_m128fd_permute_0212_ps endp

_uXm_m128fd_permute_0213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			39
			ret
_uXm_m128fd_permute_0213_ps endp

_uXm_m128fd_permute_0220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			40
			ret
_uXm_m128fd_permute_0220_ps endp

_uXm_m128fd_permute_0221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			41
			ret
_uXm_m128fd_permute_0221_ps endp

_uXm_m128fd_permute_0222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			42
			ret
_uXm_m128fd_permute_0222_ps endp

_uXm_m128fd_permute_0223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			43
			ret
_uXm_m128fd_permute_0223_ps endp

_uXm_m128fd_permute_0230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			44
			ret
_uXm_m128fd_permute_0230_ps endp

_uXm_m128fd_permute_0231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			45
			ret
_uXm_m128fd_permute_0231_ps endp

_uXm_m128fd_permute_0232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			46
			ret
_uXm_m128fd_permute_0232_ps endp

_uXm_m128fd_permute_0233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			47
			ret
_uXm_m128fd_permute_0233_ps endp

_uXm_m128fd_permute_0300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			48
			ret
_uXm_m128fd_permute_0300_ps endp

_uXm_m128fd_permute_0301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			49
			ret
_uXm_m128fd_permute_0301_ps endp

_uXm_m128fd_permute_0302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			50
			ret
_uXm_m128fd_permute_0302_ps endp

_uXm_m128fd_permute_0303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			51
			ret
_uXm_m128fd_permute_0303_ps endp

_uXm_m128fd_permute_0310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			52
			ret
_uXm_m128fd_permute_0310_ps endp

_uXm_m128fd_permute_0311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			53
			ret
_uXm_m128fd_permute_0311_ps endp

_uXm_m128fd_permute_0312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			54
			ret
_uXm_m128fd_permute_0312_ps endp

_uXm_m128fd_permute_0313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			55
			ret
_uXm_m128fd_permute_0313_ps endp

_uXm_m128fd_permute_0320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			56
			ret
_uXm_m128fd_permute_0320_ps endp

_uXm_m128fd_permute_0321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			57
			ret
_uXm_m128fd_permute_0321_ps endp

_uXm_m128fd_permute_0322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			58
			ret
_uXm_m128fd_permute_0322_ps endp

_uXm_m128fd_permute_0323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			59
			ret
_uXm_m128fd_permute_0323_ps endp

_uXm_m128fd_permute_0330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			60
			ret
_uXm_m128fd_permute_0330_ps endp

_uXm_m128fd_permute_0331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			61
			ret
_uXm_m128fd_permute_0331_ps endp

_uXm_m128fd_permute_0332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			62
			ret
_uXm_m128fd_permute_0332_ps endp

_uXm_m128fd_permute_0333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			63
			ret
_uXm_m128fd_permute_0333_ps endp

_uXm_m128fd_permute_1000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			64
			ret
_uXm_m128fd_permute_1000_ps endp

_uXm_m128fd_permute_1001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			65
			ret
_uXm_m128fd_permute_1001_ps endp

_uXm_m128fd_permute_1002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			66
			ret
_uXm_m128fd_permute_1002_ps endp

_uXm_m128fd_permute_1003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			67
			ret
_uXm_m128fd_permute_1003_ps endp

_uXm_m128fd_permute_1010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			68
			ret
_uXm_m128fd_permute_1010_ps endp

_uXm_m128fd_permute_1011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			69
			ret
_uXm_m128fd_permute_1011_ps endp

_uXm_m128fd_permute_1012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			70
			ret
_uXm_m128fd_permute_1012_ps endp

_uXm_m128fd_permute_1013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			71
			ret
_uXm_m128fd_permute_1013_ps endp

_uXm_m128fd_permute_1020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			72
			ret
_uXm_m128fd_permute_1020_ps endp

_uXm_m128fd_permute_1021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			73
			ret
_uXm_m128fd_permute_1021_ps endp

_uXm_m128fd_permute_1022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			74
			ret
_uXm_m128fd_permute_1022_ps endp

_uXm_m128fd_permute_1023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			75
			ret
_uXm_m128fd_permute_1023_ps endp

_uXm_m128fd_permute_1030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			76
			ret
_uXm_m128fd_permute_1030_ps endp

_uXm_m128fd_permute_1031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			77
			ret
_uXm_m128fd_permute_1031_ps endp

_uXm_m128fd_permute_1032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			78
			ret
_uXm_m128fd_permute_1032_ps endp

_uXm_m128fd_permute_1033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			79
			ret
_uXm_m128fd_permute_1033_ps endp

_uXm_m128fd_permute_1100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			80
			ret
_uXm_m128fd_permute_1100_ps endp

_uXm_m128fd_permute_1101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			81
			ret
_uXm_m128fd_permute_1101_ps endp

_uXm_m128fd_permute_1102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			82
			ret
_uXm_m128fd_permute_1102_ps endp

_uXm_m128fd_permute_1103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			83
			ret
_uXm_m128fd_permute_1103_ps endp

_uXm_m128fd_permute_1110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			84
			ret
_uXm_m128fd_permute_1110_ps endp

_uXm_m128fd_permute_1111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			85
			ret
_uXm_m128fd_permute_1111_ps endp

_uXm_m128fd_permute_1112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			86
			ret
_uXm_m128fd_permute_1112_ps endp

_uXm_m128fd_permute_1113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			87
			ret
_uXm_m128fd_permute_1113_ps endp

_uXm_m128fd_permute_1120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			88
			ret
_uXm_m128fd_permute_1120_ps endp

_uXm_m128fd_permute_1121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			89
			ret
_uXm_m128fd_permute_1121_ps endp

_uXm_m128fd_permute_1122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			90
			ret
_uXm_m128fd_permute_1122_ps endp

_uXm_m128fd_permute_1123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			91
			ret
_uXm_m128fd_permute_1123_ps endp

_uXm_m128fd_permute_1130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			92
			ret
_uXm_m128fd_permute_1130_ps endp

_uXm_m128fd_permute_1131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			93
			ret
_uXm_m128fd_permute_1131_ps endp

_uXm_m128fd_permute_1132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			94
			ret
_uXm_m128fd_permute_1132_ps endp

_uXm_m128fd_permute_1133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			95
			ret
_uXm_m128fd_permute_1133_ps endp

_uXm_m128fd_permute_1200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			96
			ret
_uXm_m128fd_permute_1200_ps endp

_uXm_m128fd_permute_1201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			97
			ret
_uXm_m128fd_permute_1201_ps endp

_uXm_m128fd_permute_1202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			98
			ret
_uXm_m128fd_permute_1202_ps endp

_uXm_m128fd_permute_1203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			99
			ret
_uXm_m128fd_permute_1203_ps endp

_uXm_m128fd_permute_1210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			100
			ret
_uXm_m128fd_permute_1210_ps endp

_uXm_m128fd_permute_1211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			101
			ret
_uXm_m128fd_permute_1211_ps endp

_uXm_m128fd_permute_1212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			102
			ret
_uXm_m128fd_permute_1212_ps endp

_uXm_m128fd_permute_1213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			103
			ret
_uXm_m128fd_permute_1213_ps endp

_uXm_m128fd_permute_1220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			104
			ret
_uXm_m128fd_permute_1220_ps endp

_uXm_m128fd_permute_1221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			105
			ret
_uXm_m128fd_permute_1221_ps endp

_uXm_m128fd_permute_1222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			106
			ret
_uXm_m128fd_permute_1222_ps endp

_uXm_m128fd_permute_1223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			107
			ret
_uXm_m128fd_permute_1223_ps endp

_uXm_m128fd_permute_1230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			108
			ret
_uXm_m128fd_permute_1230_ps endp

_uXm_m128fd_permute_1231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			109
			ret
_uXm_m128fd_permute_1231_ps endp

_uXm_m128fd_permute_1232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			110
			ret
_uXm_m128fd_permute_1232_ps endp

_uXm_m128fd_permute_1233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			111
			ret
_uXm_m128fd_permute_1233_ps endp

_uXm_m128fd_permute_1300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			112
			ret
_uXm_m128fd_permute_1300_ps endp

_uXm_m128fd_permute_1301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			113
			ret
_uXm_m128fd_permute_1301_ps endp

_uXm_m128fd_permute_1302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			114
			ret
_uXm_m128fd_permute_1302_ps endp

_uXm_m128fd_permute_1303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			115
			ret
_uXm_m128fd_permute_1303_ps endp

_uXm_m128fd_permute_1310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			116
			ret
_uXm_m128fd_permute_1310_ps endp

_uXm_m128fd_permute_1311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			117
			ret
_uXm_m128fd_permute_1311_ps endp

_uXm_m128fd_permute_1312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			118
			ret
_uXm_m128fd_permute_1312_ps endp

_uXm_m128fd_permute_1313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			119
			ret
_uXm_m128fd_permute_1313_ps endp

_uXm_m128fd_permute_1320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			120
			ret
_uXm_m128fd_permute_1320_ps endp

_uXm_m128fd_permute_1321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			121
			ret
_uXm_m128fd_permute_1321_ps endp

_uXm_m128fd_permute_1322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			122
			ret
_uXm_m128fd_permute_1322_ps endp

_uXm_m128fd_permute_1323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			123
			ret
_uXm_m128fd_permute_1323_ps endp

_uXm_m128fd_permute_1330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			124
			ret
_uXm_m128fd_permute_1330_ps endp

_uXm_m128fd_permute_1331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			125
			ret
_uXm_m128fd_permute_1331_ps endp

_uXm_m128fd_permute_1332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			126
			ret
_uXm_m128fd_permute_1332_ps endp

_uXm_m128fd_permute_1333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			127
			ret
_uXm_m128fd_permute_1333_ps endp

_uXm_m128fd_permute_2000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			128
			ret
_uXm_m128fd_permute_2000_ps endp

_uXm_m128fd_permute_2001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			129
			ret
_uXm_m128fd_permute_2001_ps endp

_uXm_m128fd_permute_2002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			130
			ret
_uXm_m128fd_permute_2002_ps endp

_uXm_m128fd_permute_2003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			131
			ret
_uXm_m128fd_permute_2003_ps endp

_uXm_m128fd_permute_2010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			132
			ret
_uXm_m128fd_permute_2010_ps endp

_uXm_m128fd_permute_2011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			133
			ret
_uXm_m128fd_permute_2011_ps endp

_uXm_m128fd_permute_2012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			134
			ret
_uXm_m128fd_permute_2012_ps endp

_uXm_m128fd_permute_2013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			135
			ret
_uXm_m128fd_permute_2013_ps endp

_uXm_m128fd_permute_2020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			136
			ret
_uXm_m128fd_permute_2020_ps endp

_uXm_m128fd_permute_2021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			137
			ret
_uXm_m128fd_permute_2021_ps endp

_uXm_m128fd_permute_2022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			138
			ret
_uXm_m128fd_permute_2022_ps endp

_uXm_m128fd_permute_2023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			139
			ret
_uXm_m128fd_permute_2023_ps endp

_uXm_m128fd_permute_2030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			140
			ret
_uXm_m128fd_permute_2030_ps endp

_uXm_m128fd_permute_2031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			141
			ret
_uXm_m128fd_permute_2031_ps endp

_uXm_m128fd_permute_2032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			142
			ret
_uXm_m128fd_permute_2032_ps endp

_uXm_m128fd_permute_2033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			143
			ret
_uXm_m128fd_permute_2033_ps endp

_uXm_m128fd_permute_2100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			144
			ret
_uXm_m128fd_permute_2100_ps endp

_uXm_m128fd_permute_2101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			145
			ret
_uXm_m128fd_permute_2101_ps endp

_uXm_m128fd_permute_2102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
			shufps				xmm0,			xmm0,			146
			ret
_uXm_m128fd_permute_2102_ps endp

_uXm_m128fd_permute_2103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			147
			ret
_uXm_m128fd_permute_2103_ps endp

_uXm_m128fd_permute_2110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			148
			ret
_uXm_m128fd_permute_2110_ps endp

_uXm_m128fd_permute_2111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			149
			ret
_uXm_m128fd_permute_2111_ps endp

_uXm_m128fd_permute_2112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			150
			ret
_uXm_m128fd_permute_2112_ps endp

_uXm_m128fd_permute_2113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			151
			ret
_uXm_m128fd_permute_2113_ps endp

_uXm_m128fd_permute_2120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			152
			ret
_uXm_m128fd_permute_2120_ps endp

_uXm_m128fd_permute_2121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			153
			ret
_uXm_m128fd_permute_2121_ps endp

_uXm_m128fd_permute_2122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
			shufps				xmm0,			xmm0,			154
			ret
_uXm_m128fd_permute_2122_ps endp

_uXm_m128fd_permute_2123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			155
			ret
_uXm_m128fd_permute_2123_ps endp

_uXm_m128fd_permute_2130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			156
			ret
_uXm_m128fd_permute_2130_ps endp

_uXm_m128fd_permute_2131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			157
			ret
_uXm_m128fd_permute_2131_ps endp

_uXm_m128fd_permute_2132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			158
			ret
_uXm_m128fd_permute_2132_ps endp

_uXm_m128fd_permute_2133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			159
			ret
_uXm_m128fd_permute_2133_ps endp

_uXm_m128fd_permute_2200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			160
			ret
_uXm_m128fd_permute_2200_ps endp

_uXm_m128fd_permute_2201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			161
			ret
_uXm_m128fd_permute_2201_ps endp

_uXm_m128fd_permute_2202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			162
			ret
_uXm_m128fd_permute_2202_ps endp

_uXm_m128fd_permute_2203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			163
			ret
_uXm_m128fd_permute_2203_ps endp

_uXm_m128fd_permute_2210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			164
			ret
_uXm_m128fd_permute_2210_ps endp

_uXm_m128fd_permute_2211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			165
			ret
_uXm_m128fd_permute_2211_ps endp

_uXm_m128fd_permute_2212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			166
			ret
_uXm_m128fd_permute_2212_ps endp

_uXm_m128fd_permute_2213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			167
			ret
_uXm_m128fd_permute_2213_ps endp

_uXm_m128fd_permute_2220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			168
			ret
_uXm_m128fd_permute_2220_ps endp

_uXm_m128fd_permute_2221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			169
			ret
_uXm_m128fd_permute_2221_ps endp

_uXm_m128fd_permute_2222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			170
			ret
_uXm_m128fd_permute_2222_ps endp

_uXm_m128fd_permute_2223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			171
			ret
_uXm_m128fd_permute_2223_ps endp

_uXm_m128fd_permute_2230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			172
			ret
_uXm_m128fd_permute_2230_ps endp

_uXm_m128fd_permute_2231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			173
			ret
_uXm_m128fd_permute_2231_ps endp

_uXm_m128fd_permute_2232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword 
			shufps				xmm0,			xmm0,			174
			ret
_uXm_m128fd_permute_2232_ps endp

_uXm_m128fd_permute_2233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			175
			ret
_uXm_m128fd_permute_2233_ps endp

_uXm_m128fd_permute_2300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			176
			ret
_uXm_m128fd_permute_2300_ps endp

_uXm_m128fd_permute_2301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			177
			ret
_uXm_m128fd_permute_2301_ps endp

_uXm_m128fd_permute_2302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			178
			ret
_uXm_m128fd_permute_2302_ps endp

_uXm_m128fd_permute_2303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			179
			ret
_uXm_m128fd_permute_2303_ps endp

_uXm_m128fd_permute_2310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			180
			ret
_uXm_m128fd_permute_2310_ps endp

_uXm_m128fd_permute_2311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			181
			ret
_uXm_m128fd_permute_2311_ps endp

_uXm_m128fd_permute_2312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			182
			ret
_uXm_m128fd_permute_2312_ps endp

_uXm_m128fd_permute_2313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			183
			ret
_uXm_m128fd_permute_2313_ps endp

_uXm_m128fd_permute_2320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			184
			ret
_uXm_m128fd_permute_2320_ps endp

_uXm_m128fd_permute_2321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			185
			ret
_uXm_m128fd_permute_2321_ps endp

_uXm_m128fd_permute_2322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			186
			ret
_uXm_m128fd_permute_2322_ps endp

_uXm_m128fd_permute_2323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			187
			ret
_uXm_m128fd_permute_2323_ps endp

_uXm_m128fd_permute_2330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			188
			ret
_uXm_m128fd_permute_2330_ps endp

_uXm_m128fd_permute_2331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			189
			ret
_uXm_m128fd_permute_2331_ps endp

_uXm_m128fd_permute_2332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			190
			ret
_uXm_m128fd_permute_2332_ps endp

_uXm_m128fd_permute_2333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			191
			ret
_uXm_m128fd_permute_2333_ps endp

_uXm_m128fd_permute_3000_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			192
			ret
_uXm_m128fd_permute_3000_ps endp

_uXm_m128fd_permute_3001_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			193
			ret
_uXm_m128fd_permute_3001_ps endp

_uXm_m128fd_permute_3002_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			194
			ret
_uXm_m128fd_permute_3002_ps endp

_uXm_m128fd_permute_3003_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			195
			ret
_uXm_m128fd_permute_3003_ps endp

_uXm_m128fd_permute_3010_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			196
			ret
_uXm_m128fd_permute_3010_ps endp

_uXm_m128fd_permute_3011_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			197
			ret
_uXm_m128fd_permute_3011_ps endp

_uXm_m128fd_permute_3012_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			198
			ret
_uXm_m128fd_permute_3012_ps endp

_uXm_m128fd_permute_3013_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			199
			ret
_uXm_m128fd_permute_3013_ps endp

_uXm_m128fd_permute_3020_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			200
			ret
_uXm_m128fd_permute_3020_ps endp

_uXm_m128fd_permute_3021_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			201
			ret
_uXm_m128fd_permute_3021_ps endp

_uXm_m128fd_permute_3022_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			202
			ret
_uXm_m128fd_permute_3022_ps endp

_uXm_m128fd_permute_3023_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			203
			ret
_uXm_m128fd_permute_3023_ps endp

_uXm_m128fd_permute_3030_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			204
			ret
_uXm_m128fd_permute_3030_ps endp

_uXm_m128fd_permute_3031_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			205
			ret
_uXm_m128fd_permute_3031_ps endp

_uXm_m128fd_permute_3032_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			206
			ret
_uXm_m128fd_permute_3032_ps endp

_uXm_m128fd_permute_3033_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			207
			ret
_uXm_m128fd_permute_3033_ps endp

_uXm_m128fd_permute_3100_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			208
			ret
_uXm_m128fd_permute_3100_ps endp

_uXm_m128fd_permute_3101_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			209
			ret
_uXm_m128fd_permute_3101_ps endp

_uXm_m128fd_permute_3102_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			210
			ret
_uXm_m128fd_permute_3102_ps endp

_uXm_m128fd_permute_3103_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			211
			ret
_uXm_m128fd_permute_3103_ps endp

_uXm_m128fd_permute_3110_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			212
			ret
_uXm_m128fd_permute_3110_ps endp

_uXm_m128fd_permute_3111_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			213
			ret
_uXm_m128fd_permute_3111_ps endp

_uXm_m128fd_permute_3112_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			214
			ret
_uXm_m128fd_permute_3112_ps endp

_uXm_m128fd_permute_3113_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			215
			ret
_uXm_m128fd_permute_3113_ps endp

_uXm_m128fd_permute_3120_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			216
			ret
_uXm_m128fd_permute_3120_ps endp

_uXm_m128fd_permute_3121_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			217
			ret
_uXm_m128fd_permute_3121_ps endp

_uXm_m128fd_permute_3122_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			218
			ret
_uXm_m128fd_permute_3122_ps endp

_uXm_m128fd_permute_3123_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			219
			ret
_uXm_m128fd_permute_3123_ps endp

_uXm_m128fd_permute_3130_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			220
			ret
_uXm_m128fd_permute_3130_ps endp

_uXm_m128fd_permute_3131_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			221
			ret
_uXm_m128fd_permute_3131_ps endp

_uXm_m128fd_permute_3132_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			222
			ret
_uXm_m128fd_permute_3132_ps endp

_uXm_m128fd_permute_3133_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			223
			ret
_uXm_m128fd_permute_3133_ps endp

_uXm_m128fd_permute_3200_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			224
			ret
_uXm_m128fd_permute_3200_ps endp

_uXm_m128fd_permute_3201_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			225
			ret
_uXm_m128fd_permute_3201_ps endp

_uXm_m128fd_permute_3202_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			226
			ret
_uXm_m128fd_permute_3202_ps endp

_uXm_m128fd_permute_3203_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			227
			ret
_uXm_m128fd_permute_3203_ps endp

_uXm_m128fd_permute_3210_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			228
			ret
_uXm_m128fd_permute_3210_ps endp

_uXm_m128fd_permute_3211_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			229
			ret
_uXm_m128fd_permute_3211_ps endp

_uXm_m128fd_permute_3212_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			230
			ret
_uXm_m128fd_permute_3212_ps endp

_uXm_m128fd_permute_3213_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			231
			ret
_uXm_m128fd_permute_3213_ps endp

_uXm_m128fd_permute_3220_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			232
			ret
_uXm_m128fd_permute_3220_ps endp

_uXm_m128fd_permute_3221_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			233
			ret
_uXm_m128fd_permute_3221_ps endp

_uXm_m128fd_permute_3222_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			234
			ret
_uXm_m128fd_permute_3222_ps endp

_uXm_m128fd_permute_3223_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			235
			ret
_uXm_m128fd_permute_3223_ps endp

_uXm_m128fd_permute_3230_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			236
			ret
_uXm_m128fd_permute_3230_ps endp

_uXm_m128fd_permute_3231_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			237
			ret
_uXm_m128fd_permute_3231_ps endp

_uXm_m128fd_permute_3232_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			238
			ret
_uXm_m128fd_permute_3232_ps endp

_uXm_m128fd_permute_3233_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			239
			ret
_uXm_m128fd_permute_3233_ps endp

_uXm_m128fd_permute_3300_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			240
			ret
_uXm_m128fd_permute_3300_ps endp

_uXm_m128fd_permute_3301_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			241
			ret
_uXm_m128fd_permute_3301_ps endp

_uXm_m128fd_permute_3302_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			242
			ret
_uXm_m128fd_permute_3302_ps endp

_uXm_m128fd_permute_3303_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			243
			ret
_uXm_m128fd_permute_3303_ps endp

_uXm_m128fd_permute_3310_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			244
			ret
_uXm_m128fd_permute_3310_ps endp

_uXm_m128fd_permute_3311_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			245
			ret
_uXm_m128fd_permute_3311_ps endp

_uXm_m128fd_permute_3312_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			246
			ret
_uXm_m128fd_permute_3312_ps endp

_uXm_m128fd_permute_3313_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			247
			ret
_uXm_m128fd_permute_3313_ps endp

_uXm_m128fd_permute_3320_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			248
			ret
_uXm_m128fd_permute_3320_ps endp

_uXm_m128fd_permute_3321_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			249
			ret
_uXm_m128fd_permute_3321_ps endp

_uXm_m128fd_permute_3322_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			250
			ret
_uXm_m128fd_permute_3322_ps endp

_uXm_m128fd_permute_3323_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			251
			ret
_uXm_m128fd_permute_3323_ps endp

_uXm_m128fd_permute_3330_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			252
			ret
_uXm_m128fd_permute_3330_ps endp

_uXm_m128fd_permute_3331_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			253
			ret
_uXm_m128fd_permute_3331_ps endp

_uXm_m128fd_permute_3332_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			254
			ret
_uXm_m128fd_permute_3332_ps endp

_uXm_m128fd_permute_3333_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			shufps				xmm0,			xmm0,			255
			ret
_uXm_m128fd_permute_3333_ps endp

_uXm_m128fd_permute_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword
			
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128fdpermpsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128fdpermpsjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128fdpermps_0 label size_t
			shufps				xmm0,			xmm0,			0
			ret
		m128fdpermps_1 label size_t
			shufps				xmm0,			xmm0,			1
			ret
		m128fdpermps_2 label size_t
			shufps				xmm0,			xmm0,			2
			ret
		m128fdpermps_3 label size_t
			shufps				xmm0,			xmm0,			3
			ret
		m128fdpermps_4 label size_t
			shufps				xmm0,			xmm0,			4
			ret
		m128fdpermps_5 label size_t
			shufps				xmm0,			xmm0,			5
			ret
		m128fdpermps_6 label size_t
			shufps				xmm0,			xmm0,			6
			ret
		m128fdpermps_7 label size_t
			shufps				xmm0,			xmm0,			7
			ret
		m128fdpermps_8 label size_t
			shufps				xmm0,			xmm0,			8
			ret
		m128fdpermps_9 label size_t
			shufps				xmm0,			xmm0,			9
			ret
		m128fdpermps_10 label size_t
			shufps				xmm0,			xmm0,			10
			ret
		m128fdpermps_11 label size_t
			shufps				xmm0,			xmm0,			11
			ret
		m128fdpermps_12 label size_t
			shufps				xmm0,			xmm0,			12
			ret
		m128fdpermps_13 label size_t
			shufps				xmm0,			xmm0,			13
			ret
		m128fdpermps_14 label size_t
			shufps				xmm0,			xmm0,			14
			ret
		m128fdpermps_15 label size_t
			shufps				xmm0,			xmm0,			15
			ret
		m128fdpermps_16 label size_t
			shufps				xmm0,			xmm0,			16
			ret
		m128fdpermps_17 label size_t
			shufps				xmm0,			xmm0,			17
			ret
		m128fdpermps_18 label size_t
			shufps				xmm0,			xmm0,			18
			ret
		m128fdpermps_19 label size_t
			shufps				xmm0,			xmm0,			19
			ret
		m128fdpermps_20 label size_t
			shufps				xmm0,			xmm0,			20
			ret
		m128fdpermps_21 label size_t
			shufps				xmm0,			xmm0,			21
			ret
		m128fdpermps_22 label size_t
			shufps				xmm0,			xmm0,			22
			ret
		m128fdpermps_23 label size_t
			shufps				xmm0,			xmm0,			23
			ret
		m128fdpermps_24 label size_t
			shufps				xmm0,			xmm0,			24
			ret
		m128fdpermps_25 label size_t
			shufps				xmm0,			xmm0,			25
			ret
		m128fdpermps_26 label size_t
			shufps				xmm0,			xmm0,			26
			ret
		m128fdpermps_27 label size_t
			shufps				xmm0,			xmm0,			27
			ret
		m128fdpermps_28 label size_t
			shufps				xmm0,			xmm0,			28
			ret
		m128fdpermps_29 label size_t
			shufps				xmm0,			xmm0,			29
			ret
		m128fdpermps_30 label size_t
			shufps				xmm0,			xmm0,			30
			ret
		m128fdpermps_31 label size_t
			shufps				xmm0,			xmm0,			31
			ret
		m128fdpermps_32 label size_t
			shufps				xmm0,			xmm0,			32
			ret
		m128fdpermps_33 label size_t
			shufps				xmm0,			xmm0,			33
			ret
		m128fdpermps_34 label size_t
			shufps				xmm0,			xmm0,			34
			ret
		m128fdpermps_35 label size_t
			shufps				xmm0,			xmm0,			35
			ret
		m128fdpermps_36 label size_t
			shufps				xmm0,			xmm0,			36
			ret
		m128fdpermps_37 label size_t
			shufps				xmm0,			xmm0,			37
			ret
		m128fdpermps_38 label size_t
			shufps				xmm0,			xmm0,			38
			ret
		m128fdpermps_39 label size_t
			shufps				xmm0,			xmm0,			39
			ret
		m128fdpermps_40 label size_t
			shufps				xmm0,			xmm0,			40
			ret
		m128fdpermps_41 label size_t
			shufps				xmm0,			xmm0,			41
			ret
		m128fdpermps_42 label size_t
			shufps				xmm0,			xmm0,			42
			ret
		m128fdpermps_43 label size_t
			shufps				xmm0,			xmm0,			43
			ret
		m128fdpermps_44 label size_t
			shufps				xmm0,			xmm0,			44
			ret
		m128fdpermps_45 label size_t
			shufps				xmm0,			xmm0,			45
			ret
		m128fdpermps_46 label size_t
			shufps				xmm0,			xmm0,			46
			ret
		m128fdpermps_47 label size_t
			shufps				xmm0,			xmm0,			47
			ret
		m128fdpermps_48 label size_t
			shufps				xmm0,			xmm0,			48
			ret
		m128fdpermps_49 label size_t
			shufps				xmm0,			xmm0,			49
			ret
		m128fdpermps_50 label size_t
			shufps				xmm0,			xmm0,			50
			ret
		m128fdpermps_51 label size_t
			shufps				xmm0,			xmm0,			51
			ret
		m128fdpermps_52 label size_t
			shufps				xmm0,			xmm0,			52
			ret
		m128fdpermps_53 label size_t
			shufps				xmm0,			xmm0,			53
			ret
		m128fdpermps_54 label size_t
			shufps				xmm0,			xmm0,			54
			ret
		m128fdpermps_55 label size_t
			shufps				xmm0,			xmm0,			55
			ret
		m128fdpermps_56 label size_t
			shufps				xmm0,			xmm0,			56
			ret
		m128fdpermps_57 label size_t
			shufps				xmm0,			xmm0,			57
			ret
		m128fdpermps_58 label size_t
			shufps				xmm0,			xmm0,			58
			ret
		m128fdpermps_59 label size_t
			shufps				xmm0,			xmm0,			59
			ret
		m128fdpermps_60 label size_t
			shufps				xmm0,			xmm0,			60
			ret
		m128fdpermps_61 label size_t
			shufps				xmm0,			xmm0,			61
			ret
		m128fdpermps_62 label size_t
			shufps				xmm0,			xmm0,			62
			ret
		m128fdpermps_63 label size_t
			shufps				xmm0,			xmm0,			63
			ret
		m128fdpermps_64 label size_t
			shufps				xmm0,			xmm0,			64
			ret
		m128fdpermps_65 label size_t
			shufps				xmm0,			xmm0,			65
			ret
		m128fdpermps_66 label size_t
			shufps				xmm0,			xmm0,			66
			ret
		m128fdpermps_67 label size_t
			shufps				xmm0,			xmm0,			67
			ret
		m128fdpermps_68 label size_t
			shufps				xmm0,			xmm0,			68
			ret
		m128fdpermps_69 label size_t
			shufps				xmm0,			xmm0,			69
			ret
		m128fdpermps_70 label size_t
			shufps				xmm0,			xmm0,			70
			ret
		m128fdpermps_71 label size_t
			shufps				xmm0,			xmm0,			71
			ret
		m128fdpermps_72 label size_t
			shufps				xmm0,			xmm0,			72
			ret
		m128fdpermps_73 label size_t
			shufps				xmm0,			xmm0,			73
			ret
		m128fdpermps_74 label size_t
			shufps				xmm0,			xmm0,			74
			ret
		m128fdpermps_75 label size_t
			shufps				xmm0,			xmm0,			75
			ret
		m128fdpermps_76 label size_t
			shufps				xmm0,			xmm0,			76
			ret
		m128fdpermps_77 label size_t
			shufps				xmm0,			xmm0,			77
			ret
		m128fdpermps_78 label size_t
			shufps				xmm0,			xmm0,			78
			ret
		m128fdpermps_79 label size_t
			shufps				xmm0,			xmm0,			79
			ret
		m128fdpermps_80 label size_t
			shufps				xmm0,			xmm0,			80
			ret
		m128fdpermps_81 label size_t
			shufps				xmm0,			xmm0,			81
			ret
		m128fdpermps_82 label size_t
			shufps				xmm0,			xmm0,			82
			ret
		m128fdpermps_83 label size_t
			shufps				xmm0,			xmm0,			83
			ret
		m128fdpermps_84 label size_t
			shufps				xmm0,			xmm0,			84
			ret
		m128fdpermps_85 label size_t
			shufps				xmm0,			xmm0,			85
			ret
		m128fdpermps_86 label size_t
			shufps				xmm0,			xmm0,			86
			ret
		m128fdpermps_87 label size_t
			shufps				xmm0,			xmm0,			87
			ret
		m128fdpermps_88 label size_t
			shufps				xmm0,			xmm0,			88
			ret
		m128fdpermps_89 label size_t
			shufps				xmm0,			xmm0,			89
			ret
		m128fdpermps_90 label size_t
			shufps				xmm0,			xmm0,			90
			ret
		m128fdpermps_91 label size_t
			shufps				xmm0,			xmm0,			91
			ret
		m128fdpermps_92 label size_t
			shufps				xmm0,			xmm0,			92
			ret
		m128fdpermps_93 label size_t
			shufps				xmm0,			xmm0,			93
			ret
		m128fdpermps_94 label size_t
			shufps				xmm0,			xmm0,			94
			ret
		m128fdpermps_95 label size_t
			shufps				xmm0,			xmm0,			95
			ret
		m128fdpermps_96 label size_t
			shufps				xmm0,			xmm0,			96
			ret
		m128fdpermps_97 label size_t
			shufps				xmm0,			xmm0,			97
			ret
		m128fdpermps_98 label size_t
			shufps				xmm0,			xmm0,			98
			ret
		m128fdpermps_99 label size_t
			shufps				xmm0,			xmm0,			99
			ret
		m128fdpermps_100 label size_t
			shufps				xmm0,			xmm0,			100
			ret
		m128fdpermps_101 label size_t
			shufps				xmm0,			xmm0,			101
			ret
		m128fdpermps_102 label size_t
			shufps				xmm0,			xmm0,			102
			ret
		m128fdpermps_103 label size_t
			shufps				xmm0,			xmm0,			103
			ret
		m128fdpermps_104 label size_t
			shufps				xmm0,			xmm0,			104
			ret
		m128fdpermps_105 label size_t
			shufps				xmm0,			xmm0,			105
			ret
		m128fdpermps_106 label size_t
			shufps				xmm0,			xmm0,			106
			ret
		m128fdpermps_107 label size_t
			shufps				xmm0,			xmm0,			107
			ret
		m128fdpermps_108 label size_t
			shufps				xmm0,			xmm0,			108
			ret
		m128fdpermps_109 label size_t
			shufps				xmm0,			xmm0,			109
			ret
		m128fdpermps_110 label size_t
			shufps				xmm0,			xmm0,			110
			ret
		m128fdpermps_111 label size_t
			shufps				xmm0,			xmm0,			111
			ret
		m128fdpermps_112 label size_t
			shufps				xmm0,			xmm0,			112
			ret
		m128fdpermps_113 label size_t
			shufps				xmm0,			xmm0,			113
			ret
		m128fdpermps_114 label size_t
			shufps				xmm0,			xmm0,			114
			ret
		m128fdpermps_115 label size_t
			shufps				xmm0,			xmm0,			115
			ret
		m128fdpermps_116 label size_t
			shufps				xmm0,			xmm0,			116
			ret
		m128fdpermps_117 label size_t
			shufps				xmm0,			xmm0,			117
			ret
		m128fdpermps_118 label size_t
			shufps				xmm0,			xmm0,			118
			ret
		m128fdpermps_119 label size_t
			shufps				xmm0,			xmm0,			119
			ret
		m128fdpermps_120 label size_t
			shufps				xmm0,			xmm0,			120
			ret
		m128fdpermps_121 label size_t
			shufps				xmm0,			xmm0,			121
			ret
		m128fdpermps_122 label size_t
			shufps				xmm0,			xmm0,			122
			ret
		m128fdpermps_123 label size_t
			shufps				xmm0,			xmm0,			123
			ret
		m128fdpermps_124 label size_t
			shufps				xmm0,			xmm0,			124
			ret
		m128fdpermps_125 label size_t
			shufps				xmm0,			xmm0,			125
			ret
		m128fdpermps_126 label size_t
			shufps				xmm0,			xmm0,			126
			ret
		m128fdpermps_127 label size_t
			shufps				xmm0,			xmm0,			127
			ret
		m128fdpermps_128 label size_t
			shufps				xmm0,			xmm0,			128
			ret
		m128fdpermps_129 label size_t
			shufps				xmm0,			xmm0,			129
			ret
		m128fdpermps_130 label size_t
			shufps				xmm0,			xmm0,			130
			ret
		m128fdpermps_131 label size_t
			shufps				xmm0,			xmm0,			131
			ret
		m128fdpermps_132 label size_t
			shufps				xmm0,			xmm0,			132
			ret
		m128fdpermps_133 label size_t
			shufps				xmm0,			xmm0,			133
			ret
		m128fdpermps_134 label size_t
			shufps				xmm0,			xmm0,			134
			ret
		m128fdpermps_135 label size_t
			shufps				xmm0,			xmm0,			135
			ret
		m128fdpermps_136 label size_t
			shufps				xmm0,			xmm0,			136
			ret
		m128fdpermps_137 label size_t
			shufps				xmm0,			xmm0,			137
			ret
		m128fdpermps_138 label size_t
			shufps				xmm0,			xmm0,			138
			ret
		m128fdpermps_139 label size_t
			shufps				xmm0,			xmm0,			139
			ret
		m128fdpermps_140 label size_t
			shufps				xmm0,			xmm0,			140
			ret
		m128fdpermps_141 label size_t
			shufps				xmm0,			xmm0,			141
			ret
		m128fdpermps_142 label size_t
			shufps				xmm0,			xmm0,			142
			ret
		m128fdpermps_143 label size_t
			shufps				xmm0,			xmm0,			143
			ret
		m128fdpermps_144 label size_t
			shufps				xmm0,			xmm0,			144
			ret
		m128fdpermps_145 label size_t
			shufps				xmm0,			xmm0,			145
			ret
		m128fdpermps_146 label size_t
			shufps				xmm0,			xmm0,			146
			ret
		m128fdpermps_147 label size_t
			shufps				xmm0,			xmm0,			147
			ret
		m128fdpermps_148 label size_t
			shufps				xmm0,			xmm0,			148
			ret
		m128fdpermps_149 label size_t
			shufps				xmm0,			xmm0,			149
			ret
		m128fdpermps_150 label size_t
			shufps				xmm0,			xmm0,			150
			ret
		m128fdpermps_151 label size_t
			shufps				xmm0,			xmm0,			151
			ret
		m128fdpermps_152 label size_t
			shufps				xmm0,			xmm0,			152
			ret
		m128fdpermps_153 label size_t
			shufps				xmm0,			xmm0,			153
			ret
		m128fdpermps_154 label size_t
			shufps				xmm0,			xmm0,			154
			ret
		m128fdpermps_155 label size_t
			shufps				xmm0,			xmm0,			155
			ret
		m128fdpermps_156 label size_t
			shufps				xmm0,			xmm0,			156
			ret
		m128fdpermps_157 label size_t
			shufps				xmm0,			xmm0,			157
			ret
		m128fdpermps_158 label size_t
			shufps				xmm0,			xmm0,			158
			ret
		m128fdpermps_159 label size_t
			shufps				xmm0,			xmm0,			159
			ret
		m128fdpermps_160 label size_t
			shufps				xmm0,			xmm0,			160
			ret
		m128fdpermps_161 label size_t
			shufps				xmm0,			xmm0,			161
			ret
		m128fdpermps_162 label size_t
			shufps				xmm0,			xmm0,			162
			ret
		m128fdpermps_163 label size_t
			shufps				xmm0,			xmm0,			163
			ret
		m128fdpermps_164 label size_t
			shufps				xmm0,			xmm0,			164
			ret
		m128fdpermps_165 label size_t
			shufps				xmm0,			xmm0,			165
			ret
		m128fdpermps_166 label size_t
			shufps				xmm0,			xmm0,			166
			ret
		m128fdpermps_167 label size_t
			shufps				xmm0,			xmm0,			167
			ret
		m128fdpermps_168 label size_t
			shufps				xmm0,			xmm0,			168
			ret
		m128fdpermps_169 label size_t
			shufps				xmm0,			xmm0,			169
			ret
		m128fdpermps_170 label size_t
			shufps				xmm0,			xmm0,			170
			ret
		m128fdpermps_171 label size_t
			shufps				xmm0,			xmm0,			171
			ret
		m128fdpermps_172 label size_t
			shufps				xmm0,			xmm0,			172
			ret
		m128fdpermps_173 label size_t
			shufps				xmm0,			xmm0,			173
			ret
		m128fdpermps_174 label size_t
			shufps				xmm0,			xmm0,			174
			ret
		m128fdpermps_175 label size_t
			shufps				xmm0,			xmm0,			175
			ret
		m128fdpermps_176 label size_t
			shufps				xmm0,			xmm0,			176
			ret
		m128fdpermps_177 label size_t
			shufps				xmm0,			xmm0,			177
			ret
		m128fdpermps_178 label size_t
			shufps				xmm0,			xmm0,			178
			ret
		m128fdpermps_179 label size_t
			shufps				xmm0,			xmm0,			179
			ret
		m128fdpermps_180 label size_t
			shufps				xmm0,			xmm0,			180
			ret
		m128fdpermps_181 label size_t
			shufps				xmm0,			xmm0,			181
			ret
		m128fdpermps_182 label size_t
			shufps				xmm0,			xmm0,			182
			ret
		m128fdpermps_183 label size_t
			shufps				xmm0,			xmm0,			183
			ret
		m128fdpermps_184 label size_t
			shufps				xmm0,			xmm0,			184
			ret
		m128fdpermps_185 label size_t
			shufps				xmm0,			xmm0,			185
			ret
		m128fdpermps_186 label size_t
			shufps				xmm0,			xmm0,			186
			ret
		m128fdpermps_187 label size_t
			shufps				xmm0,			xmm0,			187
			ret
		m128fdpermps_188 label size_t
			shufps				xmm0,			xmm0,			188
			ret
		m128fdpermps_189 label size_t
			shufps				xmm0,			xmm0,			189
			ret
		m128fdpermps_190 label size_t
			shufps				xmm0,			xmm0,			190
			ret
		m128fdpermps_191 label size_t
			shufps				xmm0,			xmm0,			191
			ret
		m128fdpermps_192 label size_t
			shufps				xmm0,			xmm0,			192
			ret
		m128fdpermps_193 label size_t
			shufps				xmm0,			xmm0,			193
			ret
		m128fdpermps_194 label size_t
			shufps				xmm0,			xmm0,			194
			ret
		m128fdpermps_195 label size_t
			shufps				xmm0,			xmm0,			195
			ret
		m128fdpermps_196 label size_t
			shufps				xmm0,			xmm0,			196
			ret
		m128fdpermps_197 label size_t
			shufps				xmm0,			xmm0,			197
			ret
		m128fdpermps_198 label size_t
			shufps				xmm0,			xmm0,			198
			ret
		m128fdpermps_199 label size_t
			shufps				xmm0,			xmm0,			199
			ret
		m128fdpermps_200 label size_t
			shufps				xmm0,			xmm0,			200
			ret
		m128fdpermps_201 label size_t
			shufps				xmm0,			xmm0,			201
			ret
		m128fdpermps_202 label size_t
			shufps				xmm0,			xmm0,			202
			ret
		m128fdpermps_203 label size_t
			shufps				xmm0,			xmm0,			203
			ret
		m128fdpermps_204 label size_t
			shufps				xmm0,			xmm0,			204
			ret
		m128fdpermps_205 label size_t
			shufps				xmm0,			xmm0,			205
			ret
		m128fdpermps_206 label size_t
			shufps				xmm0,			xmm0,			206
			ret
		m128fdpermps_207 label size_t
			shufps				xmm0,			xmm0,			207
			ret
		m128fdpermps_208 label size_t
			shufps				xmm0,			xmm0,			208
			ret
		m128fdpermps_209 label size_t
			shufps				xmm0,			xmm0,			209
			ret
		m128fdpermps_210 label size_t
			shufps				xmm0,			xmm0,			210
			ret
		m128fdpermps_211 label size_t
			shufps				xmm0,			xmm0,			211
			ret
		m128fdpermps_212 label size_t
			shufps				xmm0,			xmm0,			212
			ret
		m128fdpermps_213 label size_t
			shufps				xmm0,			xmm0,			213
			ret
		m128fdpermps_214 label size_t
			shufps				xmm0,			xmm0,			214
			ret
		m128fdpermps_215 label size_t
			shufps				xmm0,			xmm0,			215
			ret
		m128fdpermps_216 label size_t
			shufps				xmm0,			xmm0,			216
			ret
		m128fdpermps_217 label size_t
			shufps				xmm0,			xmm0,			217
			ret
		m128fdpermps_218 label size_t
			shufps				xmm0,			xmm0,			218
			ret
		m128fdpermps_219 label size_t
			shufps				xmm0,			xmm0,			219
			ret
		m128fdpermps_220 label size_t
			shufps				xmm0,			xmm0,			220
			ret
		m128fdpermps_221 label size_t
			shufps				xmm0,			xmm0,			221
			ret
		m128fdpermps_222 label size_t
			shufps				xmm0,			xmm0,			222
			ret
		m128fdpermps_223 label size_t
			shufps				xmm0,			xmm0,			223
			ret
		m128fdpermps_224 label size_t
			shufps				xmm0,			xmm0,			224
			ret
		m128fdpermps_225 label size_t
			shufps				xmm0,			xmm0,			225
			ret
		m128fdpermps_226 label size_t
			shufps				xmm0,			xmm0,			226
			ret
		m128fdpermps_227 label size_t
			shufps				xmm0,			xmm0,			227
			ret
		m128fdpermps_228 label size_t
			shufps				xmm0,			xmm0,			228
			ret
		m128fdpermps_229 label size_t
			shufps				xmm0,			xmm0,			229
			ret
		m128fdpermps_230 label size_t
			shufps				xmm0,			xmm0,			230
			ret
		m128fdpermps_231 label size_t
			shufps				xmm0,			xmm0,			231
			ret
		m128fdpermps_232 label size_t
			shufps				xmm0,			xmm0,			232
			ret
		m128fdpermps_233 label size_t
			shufps				xmm0,			xmm0,			233
			ret
		m128fdpermps_234 label size_t
			shufps				xmm0,			xmm0,			234
			ret
		m128fdpermps_235 label size_t
			shufps				xmm0,			xmm0,			235
			ret
		m128fdpermps_236 label size_t
			shufps				xmm0,			xmm0,			236
			ret
		m128fdpermps_237 label size_t
			shufps				xmm0,			xmm0,			237
			ret
		m128fdpermps_238 label size_t
			shufps				xmm0,			xmm0,			238
			ret
		m128fdpermps_239 label size_t
			shufps				xmm0,			xmm0,			239
			ret
		m128fdpermps_240 label size_t
			shufps				xmm0,			xmm0,			240
			ret
		m128fdpermps_241 label size_t
			shufps				xmm0,			xmm0,			241
			ret
		m128fdpermps_242 label size_t
			shufps				xmm0,			xmm0,			242
			ret
		m128fdpermps_243 label size_t
			shufps				xmm0,			xmm0,			243
			ret
		m128fdpermps_244 label size_t
			shufps				xmm0,			xmm0,			244
			ret
		m128fdpermps_245 label size_t
			shufps				xmm0,			xmm0,			245
			ret
		m128fdpermps_246 label size_t
			shufps				xmm0,			xmm0,			246
			ret
		m128fdpermps_247 label size_t
			shufps				xmm0,			xmm0,			247
			ret
		m128fdpermps_248 label size_t
			shufps				xmm0,			xmm0,			248
			ret
		m128fdpermps_249 label size_t
			shufps				xmm0,			xmm0,			249
			ret
		m128fdpermps_250 label size_t
			shufps				xmm0,			xmm0,			250
			ret
		m128fdpermps_251 label size_t
			shufps				xmm0,			xmm0,			251
			ret
		m128fdpermps_252 label size_t
			shufps				xmm0,			xmm0,			252
			ret
		m128fdpermps_253 label size_t
			shufps				xmm0,			xmm0,			253
			ret
		m128fdpermps_254 label size_t
			shufps				xmm0,			xmm0,			254
			ret
		m128fdpermps_255 label size_t
			shufps				xmm0,			xmm0,			255
			ret
		;.endif
		
_uXm_m128fd_permute_ps endp

	end
