
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0
	
ifdef __X32__
	.data
	
	 m64pshufwjmptable isize_t	offset m64pshufw_0, offset m64pshufw_1, offset m64pshufw_2, offset m64pshufw_3, offset m64pshufw_4, offset m64pshufw_5, \
									offset m64pshufw_6, offset m64pshufw_7, offset m64pshufw_8, offset m64pshufw_9, offset m64pshufw_10, offset m64pshufw_11, \
									offset m64pshufw_12, offset m64pshufw_13, offset m64pshufw_14, offset m64pshufw_15, offset m64pshufw_16, offset m64pshufw_17, \
									offset m64pshufw_18, offset m64pshufw_19, offset m64pshufw_20, offset m64pshufw_21, offset m64pshufw_22, offset m64pshufw_23, \
									offset m64pshufw_24, offset m64pshufw_25, offset m64pshufw_26, offset m64pshufw_27, offset m64pshufw_28, offset m64pshufw_29, \
									offset m64pshufw_30, offset m64pshufw_31, offset m64pshufw_32, offset m64pshufw_33, offset m64pshufw_34, offset m64pshufw_35, \
									offset m64pshufw_36, offset m64pshufw_37, offset m64pshufw_38, offset m64pshufw_39, offset m64pshufw_40, offset m64pshufw_41, \
									offset m64pshufw_42, offset m64pshufw_43, offset m64pshufw_44, offset m64pshufw_45, offset m64pshufw_46, offset m64pshufw_47, \
									offset m64pshufw_48, offset m64pshufw_49, offset m64pshufw_50, offset m64pshufw_51, offset m64pshufw_52, offset m64pshufw_53, \
									offset m64pshufw_54, offset m64pshufw_55, offset m64pshufw_56, offset m64pshufw_57, offset m64pshufw_58, offset m64pshufw_59, \
									offset m64pshufw_60, offset m64pshufw_61, offset m64pshufw_62, offset m64pshufw_63, offset m64pshufw_64, offset m64pshufw_65, \
									offset m64pshufw_66, offset m64pshufw_67, offset m64pshufw_68, offset m64pshufw_69, offset m64pshufw_70, offset m64pshufw_71, \
									offset m64pshufw_72, offset m64pshufw_73, offset m64pshufw_74, offset m64pshufw_75, offset m64pshufw_76, offset m64pshufw_77, \
									offset m64pshufw_78, offset m64pshufw_79, offset m64pshufw_80, offset m64pshufw_81, offset m64pshufw_82, offset m64pshufw_83, \
									offset m64pshufw_84, offset m64pshufw_85, offset m64pshufw_86, offset m64pshufw_87, offset m64pshufw_88, offset m64pshufw_89, \
									offset m64pshufw_90, offset m64pshufw_91, offset m64pshufw_92, offset m64pshufw_93, offset m64pshufw_94, offset m64pshufw_95, \
									offset m64pshufw_96, offset m64pshufw_97, offset m64pshufw_98, offset m64pshufw_99, offset m64pshufw_100, offset m64pshufw_101, \
									offset m64pshufw_102, offset m64pshufw_103, offset m64pshufw_104, offset m64pshufw_105, offset m64pshufw_106, offset m64pshufw_107, \
									offset m64pshufw_108, offset m64pshufw_109, offset m64pshufw_110, offset m64pshufw_111, offset m64pshufw_112, offset m64pshufw_113, \
									offset m64pshufw_114, offset m64pshufw_115, offset m64pshufw_116, offset m64pshufw_117, offset m64pshufw_118, offset m64pshufw_119, \
									offset m64pshufw_120, offset m64pshufw_121, offset m64pshufw_122, offset m64pshufw_123, offset m64pshufw_124, offset m64pshufw_125, \
									offset m64pshufw_126, offset m64pshufw_127, offset m64pshufw_128, offset m64pshufw_129, offset m64pshufw_130, offset m64pshufw_131, \
									offset m64pshufw_132, offset m64pshufw_133, offset m64pshufw_134, offset m64pshufw_135, offset m64pshufw_136, offset m64pshufw_137, \
									offset m64pshufw_138, offset m64pshufw_139, offset m64pshufw_140, offset m64pshufw_141, offset m64pshufw_142, offset m64pshufw_143, \
									offset m64pshufw_144, offset m64pshufw_145, offset m64pshufw_146, offset m64pshufw_147, offset m64pshufw_148, offset m64pshufw_149, \
									offset m64pshufw_150, offset m64pshufw_151, offset m64pshufw_152, offset m64pshufw_153, offset m64pshufw_154, offset m64pshufw_155, \
									offset m64pshufw_156, offset m64pshufw_157, offset m64pshufw_158, offset m64pshufw_159, offset m64pshufw_160, offset m64pshufw_161, \
									offset m64pshufw_162, offset m64pshufw_163, offset m64pshufw_164, offset m64pshufw_165, offset m64pshufw_166, offset m64pshufw_167, \
									offset m64pshufw_168, offset m64pshufw_169, offset m64pshufw_170, offset m64pshufw_171, offset m64pshufw_172, offset m64pshufw_173, \
									offset m64pshufw_174, offset m64pshufw_175, offset m64pshufw_176, offset m64pshufw_177, offset m64pshufw_178, offset m64pshufw_179, \
									offset m64pshufw_180, offset m64pshufw_181, offset m64pshufw_182, offset m64pshufw_183, offset m64pshufw_184, offset m64pshufw_185, \
									offset m64pshufw_186, offset m64pshufw_187, offset m64pshufw_188, offset m64pshufw_189, offset m64pshufw_190, offset m64pshufw_191, \
									offset m64pshufw_192, offset m64pshufw_193, offset m64pshufw_194, offset m64pshufw_195, offset m64pshufw_196, offset m64pshufw_197, \
									offset m64pshufw_198, offset m64pshufw_199, offset m64pshufw_200, offset m64pshufw_201, offset m64pshufw_202, offset m64pshufw_203, \
									offset m64pshufw_204, offset m64pshufw_205, offset m64pshufw_206, offset m64pshufw_207, offset m64pshufw_208, offset m64pshufw_209, \
									offset m64pshufw_210, offset m64pshufw_211, offset m64pshufw_212, offset m64pshufw_213, offset m64pshufw_214, offset m64pshufw_215, \
									offset m64pshufw_216, offset m64pshufw_217, offset m64pshufw_218, offset m64pshufw_219, offset m64pshufw_220, offset m64pshufw_221, \
									offset m64pshufw_222, offset m64pshufw_223, offset m64pshufw_224, offset m64pshufw_225, offset m64pshufw_226, offset m64pshufw_227, \
									offset m64pshufw_228, offset m64pshufw_229, offset m64pshufw_230, offset m64pshufw_231, offset m64pshufw_232, offset m64pshufw_233, \
									offset m64pshufw_234, offset m64pshufw_235, offset m64pshufw_236, offset m64pshufw_237, offset m64pshufw_238, offset m64pshufw_239, \
									offset m64pshufw_240, offset m64pshufw_241, offset m64pshufw_242, offset m64pshufw_243, offset m64pshufw_244, offset m64pshufw_245, \
									offset m64pshufw_246, offset m64pshufw_247, offset m64pshufw_248, offset m64pshufw_249, offset m64pshufw_250, offset m64pshufw_251, \
									offset m64pshufw_252, offset m64pshufw_253, offset m64pshufw_254, offset m64pshufw_255


	.code

;******************
; Proto
;******************
_uXm_m64_pshufw_0000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0102 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0122 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0232 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_0333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1102 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1122 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1232 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_1333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2102 proto UX_VECCALL (mmword) ;Inmm_A:mmword 
_uXm_m64_pshufw_2103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2122 proto UX_VECCALL (mmword) ;Inmm_A:mmword 
_uXm_m64_pshufw_2123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2232 proto UX_VECCALL (mmword) ;Inmm_A:mmword 
_uXm_m64_pshufw_2233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_2333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3000 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3001 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3002 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3003 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3010 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3011 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3012 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3013 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3020 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3021 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3022 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3023 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3030 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3031 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3032 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3033 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3100 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3101 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3102 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3103 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3110 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3111 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3112 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3113 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3120 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3121 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3122 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3123 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3130 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3131 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3132 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3133 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3200 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3201 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3202 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3203 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3210 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3211 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3212 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3213 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3220 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3221 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3222 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3223 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3230 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3231 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3232 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3233 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3300 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3301 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3302 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3303 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3310 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3311 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3312 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3313 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3320 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3321 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3322 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3323 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3330 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3331 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3332 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw_3333 proto UX_VECCALL (mmword) ;Inmm_A:mmword
_uXm_m64_pshufw proto UX_VECCALL (mmword) ;Inmm_A:mmword, _Imm8:dword

;******************
; Proc
;******************
			align 8
_uXm_m64_pshufw_0000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			0
			ret
_uXm_m64_pshufw_0000 endp

			align 8
_uXm_m64_pshufw_0001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			1
			ret
_uXm_m64_pshufw_0001 endp

			align 8
_uXm_m64_pshufw_0002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			2
			ret
_uXm_m64_pshufw_0002 endp

			align 8
_uXm_m64_pshufw_0003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			3
			ret
_uXm_m64_pshufw_0003 endp

			align 8
_uXm_m64_pshufw_0010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			4
			ret
_uXm_m64_pshufw_0010 endp

			align 8
_uXm_m64_pshufw_0011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			5
			ret
_uXm_m64_pshufw_0011 endp

			align 8
_uXm_m64_pshufw_0012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			6
			ret
_uXm_m64_pshufw_0012 endp

			align 8
_uXm_m64_pshufw_0013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			7
			ret
_uXm_m64_pshufw_0013 endp

			align 8
_uXm_m64_pshufw_0020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			8
			ret
_uXm_m64_pshufw_0020 endp

			align 8
_uXm_m64_pshufw_0021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			9
			ret
_uXm_m64_pshufw_0021 endp

			align 8
_uXm_m64_pshufw_0022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			10
			ret
_uXm_m64_pshufw_0022 endp

			align 8
_uXm_m64_pshufw_0023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			11
			ret
_uXm_m64_pshufw_0023 endp

			align 8
_uXm_m64_pshufw_0030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			12
			ret
_uXm_m64_pshufw_0030 endp

			align 8
_uXm_m64_pshufw_0031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			13
			ret
_uXm_m64_pshufw_0031 endp

			align 8
_uXm_m64_pshufw_0032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			14
			ret
_uXm_m64_pshufw_0032 endp

			align 8
_uXm_m64_pshufw_0033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			15
			ret
_uXm_m64_pshufw_0033 endp

			align 8
_uXm_m64_pshufw_0100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			8
			ret
_uXm_m64_pshufw_0100 endp

			align 8
_uXm_m64_pshufw_0101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			17
			ret
_uXm_m64_pshufw_0101 endp

			align 8
_uXm_m64_pshufw_0102 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			18
			ret
_uXm_m64_pshufw_0102 endp

			align 8
_uXm_m64_pshufw_0103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			19
			ret
_uXm_m64_pshufw_0103 endp

			align 8
_uXm_m64_pshufw_0110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			20
			ret
_uXm_m64_pshufw_0110 endp

			align 8
_uXm_m64_pshufw_0111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			21
			ret
_uXm_m64_pshufw_0111 endp

			align 8
_uXm_m64_pshufw_0112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			22
			ret
_uXm_m64_pshufw_0112 endp

			align 8
_uXm_m64_pshufw_0113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			23
			ret
_uXm_m64_pshufw_0113 endp

			align 8
_uXm_m64_pshufw_0120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			24
			ret
_uXm_m64_pshufw_0120 endp

			align 8
_uXm_m64_pshufw_0121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			25
			ret
_uXm_m64_pshufw_0121 endp

			align 8
_uXm_m64_pshufw_0122 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			26
			ret
_uXm_m64_pshufw_0122 endp

			align 8
_uXm_m64_pshufw_0123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			27
			ret
_uXm_m64_pshufw_0123 endp

			align 8
_uXm_m64_pshufw_0130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			28
			ret
_uXm_m64_pshufw_0130 endp

			align 8
_uXm_m64_pshufw_0131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			29
			ret
_uXm_m64_pshufw_0131 endp

			align 8
_uXm_m64_pshufw_0132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			30
			ret
_uXm_m64_pshufw_0132 endp

			align 8
_uXm_m64_pshufw_0133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			31
			ret
_uXm_m64_pshufw_0133 endp

			align 8
_uXm_m64_pshufw_0200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			32
			ret
_uXm_m64_pshufw_0200 endp

			align 8
_uXm_m64_pshufw_0201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			33
			ret
_uXm_m64_pshufw_0201 endp

			align 8
_uXm_m64_pshufw_0202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			34
			ret
_uXm_m64_pshufw_0202 endp

			align 8
_uXm_m64_pshufw_0203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			35
			ret
_uXm_m64_pshufw_0203 endp

			align 8
_uXm_m64_pshufw_0210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			36
			ret
_uXm_m64_pshufw_0210 endp

			align 8
_uXm_m64_pshufw_0211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			37
			ret
_uXm_m64_pshufw_0211 endp

			align 8
_uXm_m64_pshufw_0212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			38
			ret
_uXm_m64_pshufw_0212 endp

			align 8
_uXm_m64_pshufw_0213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			39
			ret
_uXm_m64_pshufw_0213 endp

			align 8
_uXm_m64_pshufw_0220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			40
			ret
_uXm_m64_pshufw_0220 endp

			align 8
_uXm_m64_pshufw_0221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			41
			ret
_uXm_m64_pshufw_0221 endp

			align 8
_uXm_m64_pshufw_0222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			42
			ret
_uXm_m64_pshufw_0222 endp

			align 8
_uXm_m64_pshufw_0223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			43
			ret
_uXm_m64_pshufw_0223 endp

			align 8
_uXm_m64_pshufw_0230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			44
			ret
_uXm_m64_pshufw_0230 endp

			align 8
_uXm_m64_pshufw_0231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			45
			ret
_uXm_m64_pshufw_0231 endp

			align 8
_uXm_m64_pshufw_0232 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			46
			ret
_uXm_m64_pshufw_0232 endp

			align 8
_uXm_m64_pshufw_0233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			47
			ret
_uXm_m64_pshufw_0233 endp

			align 8
_uXm_m64_pshufw_0300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			48
			ret
_uXm_m64_pshufw_0300 endp

			align 8
_uXm_m64_pshufw_0301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			49
			ret
_uXm_m64_pshufw_0301 endp

			align 8
_uXm_m64_pshufw_0302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			50
			ret
_uXm_m64_pshufw_0302 endp

			align 8
_uXm_m64_pshufw_0303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			51
			ret
_uXm_m64_pshufw_0303 endp

			align 8
_uXm_m64_pshufw_0310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			52
			ret
_uXm_m64_pshufw_0310 endp

			align 8
_uXm_m64_pshufw_0311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			53
			ret
_uXm_m64_pshufw_0311 endp

			align 8
_uXm_m64_pshufw_0312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			54
			ret
_uXm_m64_pshufw_0312 endp

			align 8
_uXm_m64_pshufw_0313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			55
			ret
_uXm_m64_pshufw_0313 endp

			align 8
_uXm_m64_pshufw_0320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			56
			ret
_uXm_m64_pshufw_0320 endp

			align 8
_uXm_m64_pshufw_0321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			57
			ret
_uXm_m64_pshufw_0321 endp

			align 8
_uXm_m64_pshufw_0322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			58
			ret
_uXm_m64_pshufw_0322 endp

			align 8
_uXm_m64_pshufw_0323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			59
			ret
_uXm_m64_pshufw_0323 endp

			align 8
_uXm_m64_pshufw_0330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			60
			ret
_uXm_m64_pshufw_0330 endp

			align 8
_uXm_m64_pshufw_0331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			61
			ret
_uXm_m64_pshufw_0331 endp

			align 8
_uXm_m64_pshufw_0332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			62
			ret
_uXm_m64_pshufw_0332 endp

			align 8
_uXm_m64_pshufw_0333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			63
			ret
_uXm_m64_pshufw_0333 endp

			align 8
_uXm_m64_pshufw_1000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			64
			ret
_uXm_m64_pshufw_1000 endp

			align 8
_uXm_m64_pshufw_1001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			65
			ret
_uXm_m64_pshufw_1001 endp

			align 8
_uXm_m64_pshufw_1002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			66
			ret
_uXm_m64_pshufw_1002 endp

			align 8
_uXm_m64_pshufw_1003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			67
			ret
_uXm_m64_pshufw_1003 endp

			align 8
_uXm_m64_pshufw_1010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			68
			ret
_uXm_m64_pshufw_1010 endp

			align 8
_uXm_m64_pshufw_1011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			69
			ret
_uXm_m64_pshufw_1011 endp

			align 8
_uXm_m64_pshufw_1012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			70
			ret
_uXm_m64_pshufw_1012 endp

			align 8
_uXm_m64_pshufw_1013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			71
			ret
_uXm_m64_pshufw_1013 endp

			align 8
_uXm_m64_pshufw_1020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			72
			ret
_uXm_m64_pshufw_1020 endp

			align 8
_uXm_m64_pshufw_1021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			73
			ret
_uXm_m64_pshufw_1021 endp

			align 8
_uXm_m64_pshufw_1022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			74
			ret
_uXm_m64_pshufw_1022 endp

			align 8
_uXm_m64_pshufw_1023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			75
			ret
_uXm_m64_pshufw_1023 endp

			align 8
_uXm_m64_pshufw_1030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			76
			ret
_uXm_m64_pshufw_1030 endp

			align 8
_uXm_m64_pshufw_1031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			77
			ret
_uXm_m64_pshufw_1031 endp

			align 8
_uXm_m64_pshufw_1032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			78
			ret
_uXm_m64_pshufw_1032 endp

			align 8
_uXm_m64_pshufw_1033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			79
			ret
_uXm_m64_pshufw_1033 endp

			align 8
_uXm_m64_pshufw_1100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			80
			ret
_uXm_m64_pshufw_1100 endp

			align 8
_uXm_m64_pshufw_1101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			81
			ret
_uXm_m64_pshufw_1101 endp

			align 8
_uXm_m64_pshufw_1102 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			82
			ret
_uXm_m64_pshufw_1102 endp

			align 8
_uXm_m64_pshufw_1103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			83
			ret
_uXm_m64_pshufw_1103 endp

			align 8
_uXm_m64_pshufw_1110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			84
			ret
_uXm_m64_pshufw_1110 endp

			align 8
_uXm_m64_pshufw_1111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			85
			ret
_uXm_m64_pshufw_1111 endp

			align 8
_uXm_m64_pshufw_1112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			86
			ret
_uXm_m64_pshufw_1112 endp

			align 8
_uXm_m64_pshufw_1113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			87
			ret
_uXm_m64_pshufw_1113 endp

			align 8
_uXm_m64_pshufw_1120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			88
			ret
_uXm_m64_pshufw_1120 endp

			align 8
_uXm_m64_pshufw_1121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			89
			ret
_uXm_m64_pshufw_1121 endp

			align 8
_uXm_m64_pshufw_1122 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			90
			ret
_uXm_m64_pshufw_1122 endp

			align 8
_uXm_m64_pshufw_1123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			91
			ret
_uXm_m64_pshufw_1123 endp

			align 8
_uXm_m64_pshufw_1130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			92
			ret
_uXm_m64_pshufw_1130 endp

			align 8
_uXm_m64_pshufw_1131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			93
			ret
_uXm_m64_pshufw_1131 endp

			align 8
_uXm_m64_pshufw_1132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			94
			ret
_uXm_m64_pshufw_1132 endp

			align 8
_uXm_m64_pshufw_1133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			95
			ret
_uXm_m64_pshufw_1133 endp

			align 8
_uXm_m64_pshufw_1200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			96
			ret
_uXm_m64_pshufw_1200 endp

			align 8
_uXm_m64_pshufw_1201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			97
			ret
_uXm_m64_pshufw_1201 endp

			align 8
_uXm_m64_pshufw_1202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			98
			ret
_uXm_m64_pshufw_1202 endp

			align 8
_uXm_m64_pshufw_1203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			99
			ret
_uXm_m64_pshufw_1203 endp

			align 8
_uXm_m64_pshufw_1210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			100
			ret
_uXm_m64_pshufw_1210 endp

			align 8
_uXm_m64_pshufw_1211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			101
			ret
_uXm_m64_pshufw_1211 endp

			align 8
_uXm_m64_pshufw_1212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			102
			ret
_uXm_m64_pshufw_1212 endp

			align 8
_uXm_m64_pshufw_1213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			103
			ret
_uXm_m64_pshufw_1213 endp

			align 8
_uXm_m64_pshufw_1220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			104
			ret
_uXm_m64_pshufw_1220 endp

			align 8
_uXm_m64_pshufw_1221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			105
			ret
_uXm_m64_pshufw_1221 endp

			align 8
_uXm_m64_pshufw_1222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			106
			ret
_uXm_m64_pshufw_1222 endp

			align 8
_uXm_m64_pshufw_1223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			107
			ret
_uXm_m64_pshufw_1223 endp

			align 8
_uXm_m64_pshufw_1230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			108
			ret
_uXm_m64_pshufw_1230 endp

			align 8
_uXm_m64_pshufw_1231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			109
			ret
_uXm_m64_pshufw_1231 endp

			align 8
_uXm_m64_pshufw_1232 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			110
			ret
_uXm_m64_pshufw_1232 endp

			align 8
_uXm_m64_pshufw_1233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			111
			ret
_uXm_m64_pshufw_1233 endp

			align 8
_uXm_m64_pshufw_1300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			112
			ret
_uXm_m64_pshufw_1300 endp

			align 8
_uXm_m64_pshufw_1301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			113
			ret
_uXm_m64_pshufw_1301 endp

			align 8
_uXm_m64_pshufw_1302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			114
			ret
_uXm_m64_pshufw_1302 endp

			align 8
_uXm_m64_pshufw_1303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			115
			ret
_uXm_m64_pshufw_1303 endp

			align 8
_uXm_m64_pshufw_1310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			18
			ret
_uXm_m64_pshufw_1310 endp

			align 8
_uXm_m64_pshufw_1311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			117
			ret
_uXm_m64_pshufw_1311 endp

			align 8
_uXm_m64_pshufw_1312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			118
			ret
_uXm_m64_pshufw_1312 endp

			align 8
_uXm_m64_pshufw_1313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			119
			ret
_uXm_m64_pshufw_1313 endp

			align 8
_uXm_m64_pshufw_1320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			120
			ret
_uXm_m64_pshufw_1320 endp

			align 8
_uXm_m64_pshufw_1321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			121
			ret
_uXm_m64_pshufw_1321 endp

			align 8
_uXm_m64_pshufw_1322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			122
			ret
_uXm_m64_pshufw_1322 endp

			align 8
_uXm_m64_pshufw_1323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			123
			ret
_uXm_m64_pshufw_1323 endp

			align 8
_uXm_m64_pshufw_1330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			124
			ret
_uXm_m64_pshufw_1330 endp

			align 8
_uXm_m64_pshufw_1331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			125
			ret
_uXm_m64_pshufw_1331 endp

			align 8
_uXm_m64_pshufw_1332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			126
			ret
_uXm_m64_pshufw_1332 endp

			align 8
_uXm_m64_pshufw_1333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			127
			ret
_uXm_m64_pshufw_1333 endp

			align 8
_uXm_m64_pshufw_2000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			128
			ret
_uXm_m64_pshufw_2000 endp

			align 8
_uXm_m64_pshufw_2001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			129
			ret
_uXm_m64_pshufw_2001 endp

			align 8
_uXm_m64_pshufw_2002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			130
			ret
_uXm_m64_pshufw_2002 endp

			align 8
_uXm_m64_pshufw_2003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			131
			ret
_uXm_m64_pshufw_2003 endp

			align 8
_uXm_m64_pshufw_2010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			132
			ret
_uXm_m64_pshufw_2010 endp

			align 8
_uXm_m64_pshufw_2011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			133
			ret
_uXm_m64_pshufw_2011 endp

			align 8
_uXm_m64_pshufw_2012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			134
			ret
_uXm_m64_pshufw_2012 endp

			align 8
_uXm_m64_pshufw_2013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			135
			ret
_uXm_m64_pshufw_2013 endp

			align 8
_uXm_m64_pshufw_2020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			136
			ret
_uXm_m64_pshufw_2020 endp

			align 8
_uXm_m64_pshufw_2021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			137
			ret
_uXm_m64_pshufw_2021 endp

			align 8
_uXm_m64_pshufw_2022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			138
			ret
_uXm_m64_pshufw_2022 endp

			align 8
_uXm_m64_pshufw_2023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			139
			ret
_uXm_m64_pshufw_2023 endp

			align 8
_uXm_m64_pshufw_2030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			140
			ret
_uXm_m64_pshufw_2030 endp

			align 8
_uXm_m64_pshufw_2031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			141
			ret
_uXm_m64_pshufw_2031 endp

			align 8
_uXm_m64_pshufw_2032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			142
			ret
_uXm_m64_pshufw_2032 endp

			align 8
_uXm_m64_pshufw_2033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			143
			ret
_uXm_m64_pshufw_2033 endp

			align 8
_uXm_m64_pshufw_2100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			144
			ret
_uXm_m64_pshufw_2100 endp

			align 8
_uXm_m64_pshufw_2101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			145
			ret
_uXm_m64_pshufw_2101 endp

			align 8
_uXm_m64_pshufw_2102 proc UX_VECCALL (mmword) ;Inmm_A:mmword 
			pshufw				mm0,			mm0,			146
			ret
_uXm_m64_pshufw_2102 endp

			align 8
_uXm_m64_pshufw_2103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			147
			ret
_uXm_m64_pshufw_2103 endp

			align 8
_uXm_m64_pshufw_2110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			148
			ret
_uXm_m64_pshufw_2110 endp

			align 8
_uXm_m64_pshufw_2111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			149
			ret
_uXm_m64_pshufw_2111 endp

			align 8
_uXm_m64_pshufw_2112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			150
			ret
_uXm_m64_pshufw_2112 endp

			align 8
_uXm_m64_pshufw_2113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			151
			ret
_uXm_m64_pshufw_2113 endp

			align 8
_uXm_m64_pshufw_2120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			152
			ret
_uXm_m64_pshufw_2120 endp

			align 8
_uXm_m64_pshufw_2121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			153
			ret
_uXm_m64_pshufw_2121 endp

			align 8
_uXm_m64_pshufw_2122 proc UX_VECCALL (mmword) ;Inmm_A:mmword 
			pshufw				mm0,			mm0,			154
			ret
_uXm_m64_pshufw_2122 endp

			align 8
_uXm_m64_pshufw_2123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			155
			ret
_uXm_m64_pshufw_2123 endp

			align 8
_uXm_m64_pshufw_2130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			156
			ret
_uXm_m64_pshufw_2130 endp

			align 8
_uXm_m64_pshufw_2131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			157
			ret
_uXm_m64_pshufw_2131 endp

			align 8
_uXm_m64_pshufw_2132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			158
			ret
_uXm_m64_pshufw_2132 endp

			align 8
_uXm_m64_pshufw_2133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			159
			ret
_uXm_m64_pshufw_2133 endp

			align 8
_uXm_m64_pshufw_2200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			80
			ret
_uXm_m64_pshufw_2200 endp

			align 8
_uXm_m64_pshufw_2201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			81
			ret
_uXm_m64_pshufw_2201 endp

			align 8
_uXm_m64_pshufw_2202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			82
			ret
_uXm_m64_pshufw_2202 endp

			align 8
_uXm_m64_pshufw_2203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			83
			ret
_uXm_m64_pshufw_2203 endp

			align 8
_uXm_m64_pshufw_2210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			84
			ret
_uXm_m64_pshufw_2210 endp

			align 8
_uXm_m64_pshufw_2211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			85
			ret
_uXm_m64_pshufw_2211 endp

			align 8
_uXm_m64_pshufw_2212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			86
			ret
_uXm_m64_pshufw_2212 endp

			align 8
_uXm_m64_pshufw_2213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			87
			ret
_uXm_m64_pshufw_2213 endp

			align 8
_uXm_m64_pshufw_2220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			88
			ret
_uXm_m64_pshufw_2220 endp

			align 8
_uXm_m64_pshufw_2221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			89
			ret
_uXm_m64_pshufw_2221 endp

			align 8
_uXm_m64_pshufw_2222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			170
			ret
_uXm_m64_pshufw_2222 endp

			align 8
_uXm_m64_pshufw_2223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			171
			ret
_uXm_m64_pshufw_2223 endp

			align 8
_uXm_m64_pshufw_2230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			172
			ret
_uXm_m64_pshufw_2230 endp

			align 8
_uXm_m64_pshufw_2231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			173
			ret
_uXm_m64_pshufw_2231 endp

			align 8
_uXm_m64_pshufw_2232 proc UX_VECCALL (mmword) ;Inmm_A:mmword 
			pshufw				mm0,			mm0,			174
			ret
_uXm_m64_pshufw_2232 endp

			align 8
_uXm_m64_pshufw_2233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			175
			ret
_uXm_m64_pshufw_2233 endp

			align 8
_uXm_m64_pshufw_2300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			176
			ret
_uXm_m64_pshufw_2300 endp

			align 8
_uXm_m64_pshufw_2301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			177
			ret
_uXm_m64_pshufw_2301 endp

			align 8
_uXm_m64_pshufw_2302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			178
			ret
_uXm_m64_pshufw_2302 endp

			align 8
_uXm_m64_pshufw_2303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			179
			ret
_uXm_m64_pshufw_2303 endp

			align 8
_uXm_m64_pshufw_2310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			180
			ret
_uXm_m64_pshufw_2310 endp

			align 8
_uXm_m64_pshufw_2311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			181
			ret
_uXm_m64_pshufw_2311 endp

			align 8
_uXm_m64_pshufw_2312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			182
			ret
_uXm_m64_pshufw_2312 endp

			align 8
_uXm_m64_pshufw_2313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			183
			ret
_uXm_m64_pshufw_2313 endp

			align 8
_uXm_m64_pshufw_2320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			184
			ret
_uXm_m64_pshufw_2320 endp

			align 8
_uXm_m64_pshufw_2321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			185
			ret
_uXm_m64_pshufw_2321 endp

			align 8
_uXm_m64_pshufw_2322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			186
			ret
_uXm_m64_pshufw_2322 endp

			align 8
_uXm_m64_pshufw_2323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			187
			ret
_uXm_m64_pshufw_2323 endp

			align 8
_uXm_m64_pshufw_2330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			188
			ret
_uXm_m64_pshufw_2330 endp

			align 8
_uXm_m64_pshufw_2331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			189
			ret
_uXm_m64_pshufw_2331 endp

			align 8
_uXm_m64_pshufw_2332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			190
			ret
_uXm_m64_pshufw_2332 endp

			align 8
_uXm_m64_pshufw_2333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			191
			ret
_uXm_m64_pshufw_2333 endp

			align 8
_uXm_m64_pshufw_3000 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			192
			ret
_uXm_m64_pshufw_3000 endp

			align 8
_uXm_m64_pshufw_3001 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			193
			ret
_uXm_m64_pshufw_3001 endp

			align 8
_uXm_m64_pshufw_3002 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			194
			ret
_uXm_m64_pshufw_3002 endp

			align 8
_uXm_m64_pshufw_3003 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			195
			ret
_uXm_m64_pshufw_3003 endp

			align 8
_uXm_m64_pshufw_3010 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			196
			ret
_uXm_m64_pshufw_3010 endp

			align 8
_uXm_m64_pshufw_3011 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			197
			ret
_uXm_m64_pshufw_3011 endp

			align 8
_uXm_m64_pshufw_3012 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			198
			ret
_uXm_m64_pshufw_3012 endp

			align 8
_uXm_m64_pshufw_3013 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			199
			ret
_uXm_m64_pshufw_3013 endp

			align 8
_uXm_m64_pshufw_3020 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			200
			ret
_uXm_m64_pshufw_3020 endp

			align 8
_uXm_m64_pshufw_3021 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			201
			ret
_uXm_m64_pshufw_3021 endp

			align 8
_uXm_m64_pshufw_3022 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			202
			ret
_uXm_m64_pshufw_3022 endp

			align 8
_uXm_m64_pshufw_3023 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			203
			ret
_uXm_m64_pshufw_3023 endp

			align 8
_uXm_m64_pshufw_3030 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			204
			ret
_uXm_m64_pshufw_3030 endp

			align 8
_uXm_m64_pshufw_3031 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			205
			ret
_uXm_m64_pshufw_3031 endp

			align 8
_uXm_m64_pshufw_3032 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			206
			ret
_uXm_m64_pshufw_3032 endp

			align 8
_uXm_m64_pshufw_3033 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			207
			ret
_uXm_m64_pshufw_3033 endp

			align 8
_uXm_m64_pshufw_3100 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			208
			ret
_uXm_m64_pshufw_3100 endp

			align 8
_uXm_m64_pshufw_3101 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			209
			ret
_uXm_m64_pshufw_3101 endp

			align 8
_uXm_m64_pshufw_3102 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			210
			ret
_uXm_m64_pshufw_3102 endp

			align 8
_uXm_m64_pshufw_3103 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			211
			ret
_uXm_m64_pshufw_3103 endp

			align 8
_uXm_m64_pshufw_3110 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			212
			ret
_uXm_m64_pshufw_3110 endp

			align 8
_uXm_m64_pshufw_3111 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			213
			ret
_uXm_m64_pshufw_3111 endp

			align 8
_uXm_m64_pshufw_3112 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			214
			ret
_uXm_m64_pshufw_3112 endp

			align 8
_uXm_m64_pshufw_3113 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			215
			ret
_uXm_m64_pshufw_3113 endp

			align 8
_uXm_m64_pshufw_3120 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			28
			ret
_uXm_m64_pshufw_3120 endp

			align 8
_uXm_m64_pshufw_3121 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			217
			ret
_uXm_m64_pshufw_3121 endp

			align 8
_uXm_m64_pshufw_3122 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			218
			ret
_uXm_m64_pshufw_3122 endp

			align 8
_uXm_m64_pshufw_3123 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			219
			ret
_uXm_m64_pshufw_3123 endp

			align 8
_uXm_m64_pshufw_3130 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			220
			ret
_uXm_m64_pshufw_3130 endp

			align 8
_uXm_m64_pshufw_3131 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			221
			ret
_uXm_m64_pshufw_3131 endp

			align 8
_uXm_m64_pshufw_3132 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			222
			ret
_uXm_m64_pshufw_3132 endp

			align 8
_uXm_m64_pshufw_3133 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			223
			ret
_uXm_m64_pshufw_3133 endp

			align 8
_uXm_m64_pshufw_3200 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			224
			ret
_uXm_m64_pshufw_3200 endp

			align 8
_uXm_m64_pshufw_3201 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			225
			ret
_uXm_m64_pshufw_3201 endp

			align 8
_uXm_m64_pshufw_3202 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			226
			ret
_uXm_m64_pshufw_3202 endp

			align 8
_uXm_m64_pshufw_3203 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			227
			ret
_uXm_m64_pshufw_3203 endp

			align 8
_uXm_m64_pshufw_3210 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			228
			ret
_uXm_m64_pshufw_3210 endp

			align 8
_uXm_m64_pshufw_3211 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			229
			ret
_uXm_m64_pshufw_3211 endp

			align 8
_uXm_m64_pshufw_3212 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			230
			ret
_uXm_m64_pshufw_3212 endp

			align 8
_uXm_m64_pshufw_3213 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			231
			ret
_uXm_m64_pshufw_3213 endp

			align 8
_uXm_m64_pshufw_3220 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			232
			ret
_uXm_m64_pshufw_3220 endp

			align 8
_uXm_m64_pshufw_3221 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			233
			ret
_uXm_m64_pshufw_3221 endp

			align 8
_uXm_m64_pshufw_3222 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			234
			ret
_uXm_m64_pshufw_3222 endp

			align 8
_uXm_m64_pshufw_3223 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			235
			ret
_uXm_m64_pshufw_3223 endp

			align 8
_uXm_m64_pshufw_3230 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			236
			ret
_uXm_m64_pshufw_3230 endp

			align 8
_uXm_m64_pshufw_3231 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			237
			ret
_uXm_m64_pshufw_3231 endp

			align 8
_uXm_m64_pshufw_3232 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			238
			ret
_uXm_m64_pshufw_3232 endp

			align 8
_uXm_m64_pshufw_3233 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			239
			ret
_uXm_m64_pshufw_3233 endp

			align 8
_uXm_m64_pshufw_3300 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			240
			ret
_uXm_m64_pshufw_3300 endp

			align 8
_uXm_m64_pshufw_3301 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			241
			ret
_uXm_m64_pshufw_3301 endp

			align 8
_uXm_m64_pshufw_3302 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			242
			ret
_uXm_m64_pshufw_3302 endp

			align 8
_uXm_m64_pshufw_3303 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			243
			ret
_uXm_m64_pshufw_3303 endp

			align 8
_uXm_m64_pshufw_3310 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			244
			ret
_uXm_m64_pshufw_3310 endp

			align 8
_uXm_m64_pshufw_3311 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			245
			ret
_uXm_m64_pshufw_3311 endp

			align 8
_uXm_m64_pshufw_3312 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			246
			ret
_uXm_m64_pshufw_3312 endp

			align 8
_uXm_m64_pshufw_3313 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			247
			ret
_uXm_m64_pshufw_3313 endp

			align 8
_uXm_m64_pshufw_3320 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			248
			ret
_uXm_m64_pshufw_3320 endp

			align 8
_uXm_m64_pshufw_3321 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			249
			ret
_uXm_m64_pshufw_3321 endp

			align 8
_uXm_m64_pshufw_3322 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			250
			ret
_uXm_m64_pshufw_3322 endp

			align 8
_uXm_m64_pshufw_3323 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			251
			ret
_uXm_m64_pshufw_3323 endp

			align 8
_uXm_m64_pshufw_3330 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			252
			ret
_uXm_m64_pshufw_3330 endp

			align 8
_uXm_m64_pshufw_3331 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			253
			ret
_uXm_m64_pshufw_3331 endp

			align 8
_uXm_m64_pshufw_3332 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			254
			ret
_uXm_m64_pshufw_3332 endp

			align 8
_uXm_m64_pshufw_3333 proc UX_VECCALL (mmword) ;Inmm_A:mmword
			pshufw				mm0,			mm0,			255
			ret
_uXm_m64_pshufw_3333 endp

			align 8
_uXm_m64_pshufw proc UX_VECCALL (mmword) ;Inmm_A:mmword, _Imm8:dword
				
		;.if(rparam2 > 3)
		;ret
		;.else

		movzx			eax,	byte ptr [rparam2]
		;mov				ebx,	dword ptr [ebx+rparam2*4]
		jmp		dword ptr [m64pshufwjmptable+eax*4]
		
		m64pshufw_0 label size_t
			pshufw				mm0,			mm0,			0
			ret
		m64pshufw_1 label size_t
			pshufw				mm0,			mm0,			1
			ret
		m64pshufw_2 label size_t
			pshufw				mm0,			mm0,			2
			ret
		m64pshufw_3 label size_t
			pshufw				mm0,			mm0,			3
			ret
		m64pshufw_4 label size_t
			pshufw				mm0,			mm0,			4
			ret
		m64pshufw_5 label size_t
			pshufw				mm0,			mm0,			5
			ret
		m64pshufw_6 label size_t
			pshufw				mm0,			mm0,			6
			ret
		m64pshufw_7 label size_t
			pshufw				mm0,			mm0,			7
			ret
		m64pshufw_8 label size_t
			pshufw				mm0,			mm0,			8
			ret
		m64pshufw_9 label size_t
			pshufw				mm0,			mm0,			9
			ret
		m64pshufw_10 label size_t
			pshufw				mm0,			mm0,			10
			ret
		m64pshufw_11 label size_t
			pshufw				mm0,			mm0,			11
			ret
		m64pshufw_12 label size_t
			pshufw				mm0,			mm0,			12
			ret
		m64pshufw_13 label size_t
			pshufw				mm0,			mm0,			13
			ret
		m64pshufw_14 label size_t
			pshufw				mm0,			mm0,			14
			ret
		m64pshufw_15 label size_t
			pshufw				mm0,			mm0,			15
			ret
		m64pshufw_16 label size_t
			pshufw				mm0,			mm0,			16
			ret
		m64pshufw_17 label size_t
			pshufw				mm0,			mm0,			17
			ret
		m64pshufw_18 label size_t
			pshufw				mm0,			mm0,			18
			ret
		m64pshufw_19 label size_t
			pshufw				mm0,			mm0,			19
			ret
		m64pshufw_20 label size_t
			pshufw				mm0,			mm0,			20
			ret
		m64pshufw_21 label size_t
			pshufw				mm0,			mm0,			21
			ret
		m64pshufw_22 label size_t
			pshufw				mm0,			mm0,			22
			ret
		m64pshufw_23 label size_t
			pshufw				mm0,			mm0,			23
			ret
		m64pshufw_24 label size_t
			pshufw				mm0,			mm0,			24
			ret
		m64pshufw_25 label size_t
			pshufw				mm0,			mm0,			25
			ret
		m64pshufw_26 label size_t
			pshufw				mm0,			mm0,			26
			ret
		m64pshufw_27 label size_t
			pshufw				mm0,			mm0,			27
			ret
		m64pshufw_28 label size_t
			pshufw				mm0,			mm0,			28
			ret
		m64pshufw_29 label size_t
			pshufw				mm0,			mm0,			29
			ret
		m64pshufw_30 label size_t
			pshufw				mm0,			mm0,			30
			ret
		m64pshufw_31 label size_t
			pshufw				mm0,			mm0,			31
			ret
		m64pshufw_32 label size_t
			pshufw				mm0,			mm0,			32
			ret
		m64pshufw_33 label size_t
			pshufw				mm0,			mm0,			33
			ret
		m64pshufw_34 label size_t
			pshufw				mm0,			mm0,			34
			ret
		m64pshufw_35 label size_t
			pshufw				mm0,			mm0,			35
			ret
		m64pshufw_36 label size_t
			pshufw				mm0,			mm0,			36
			ret
		m64pshufw_37 label size_t
			pshufw				mm0,			mm0,			37
			ret
		m64pshufw_38 label size_t
			pshufw				mm0,			mm0,			38
			ret
		m64pshufw_39 label size_t
			pshufw				mm0,			mm0,			39
			ret
		m64pshufw_40 label size_t
			pshufw				mm0,			mm0,			40
			ret
		m64pshufw_41 label size_t
			pshufw				mm0,			mm0,			41
			ret
		m64pshufw_42 label size_t
			pshufw				mm0,			mm0,			42
			ret
		m64pshufw_43 label size_t
			pshufw				mm0,			mm0,			43
			ret
		m64pshufw_44 label size_t
			pshufw				mm0,			mm0,			44
			ret
		m64pshufw_45 label size_t
			pshufw				mm0,			mm0,			45
			ret
		m64pshufw_46 label size_t
			pshufw				mm0,			mm0,			46
			ret
		m64pshufw_47 label size_t
			pshufw				mm0,			mm0,			47
			ret
		m64pshufw_48 label size_t
			pshufw				mm0,			mm0,			48
			ret
		m64pshufw_49 label size_t
			pshufw				mm0,			mm0,			49
			ret
		m64pshufw_50 label size_t
			pshufw				mm0,			mm0,			50
			ret
		m64pshufw_51 label size_t
			pshufw				mm0,			mm0,			51
			ret
		m64pshufw_52 label size_t
			pshufw				mm0,			mm0,			52
			ret
		m64pshufw_53 label size_t
			pshufw				mm0,			mm0,			53
			ret
		m64pshufw_54 label size_t
			pshufw				mm0,			mm0,			54
			ret
		m64pshufw_55 label size_t
			pshufw				mm0,			mm0,			55
			ret
		m64pshufw_56 label size_t
			pshufw				mm0,			mm0,			56
			ret
		m64pshufw_57 label size_t
			pshufw				mm0,			mm0,			57
			ret
		m64pshufw_58 label size_t
			pshufw				mm0,			mm0,			58
			ret
		m64pshufw_59 label size_t
			pshufw				mm0,			mm0,			59
			ret
		m64pshufw_60 label size_t
			pshufw				mm0,			mm0,			60
			ret
		m64pshufw_61 label size_t
			pshufw				mm0,			mm0,			61
			ret
		m64pshufw_62 label size_t
			pshufw				mm0,			mm0,			62
			ret
		m64pshufw_63 label size_t
			pshufw				mm0,			mm0,			63
			ret
		m64pshufw_64 label size_t
			pshufw				mm0,			mm0,			64
			ret
		m64pshufw_65 label size_t
			pshufw				mm0,			mm0,			65
			ret
		m64pshufw_66 label size_t
			pshufw				mm0,			mm0,			66
			ret
		m64pshufw_67 label size_t
			pshufw				mm0,			mm0,			67
			ret
		m64pshufw_68 label size_t
			pshufw				mm0,			mm0,			68
			ret
		m64pshufw_69 label size_t
			pshufw				mm0,			mm0,			69
			ret
		m64pshufw_70 label size_t
			pshufw				mm0,			mm0,			70
			ret
		m64pshufw_71 label size_t
			pshufw				mm0,			mm0,			71
			ret
		m64pshufw_72 label size_t
			pshufw				mm0,			mm0,			72
			ret
		m64pshufw_73 label size_t
			pshufw				mm0,			mm0,			73
			ret
		m64pshufw_74 label size_t
			pshufw				mm0,			mm0,			74
			ret
		m64pshufw_75 label size_t
			pshufw				mm0,			mm0,			75
			ret
		m64pshufw_76 label size_t
			pshufw				mm0,			mm0,			76
			ret
		m64pshufw_77 label size_t
			pshufw				mm0,			mm0,			77
			ret
		m64pshufw_78 label size_t
			pshufw				mm0,			mm0,			78
			ret
		m64pshufw_79 label size_t
			pshufw				mm0,			mm0,			79
			ret
		m64pshufw_80 label size_t
			pshufw				mm0,			mm0,			80
			ret
		m64pshufw_81 label size_t
			pshufw				mm0,			mm0,			81
			ret
		m64pshufw_82 label size_t
			pshufw				mm0,			mm0,			82
			ret
		m64pshufw_83 label size_t
			pshufw				mm0,			mm0,			83
			ret
		m64pshufw_84 label size_t
			pshufw				mm0,			mm0,			84
			ret
		m64pshufw_85 label size_t
			pshufw				mm0,			mm0,			85
			ret
		m64pshufw_86 label size_t
			pshufw				mm0,			mm0,			86
			ret
		m64pshufw_87 label size_t
			pshufw				mm0,			mm0,			87
			ret
		m64pshufw_88 label size_t
			pshufw				mm0,			mm0,			88
			ret
		m64pshufw_89 label size_t
			pshufw				mm0,			mm0,			89
			ret
		m64pshufw_90 label size_t
			pshufw				mm0,			mm0,			90
			ret
		m64pshufw_91 label size_t
			pshufw				mm0,			mm0,			91
			ret
		m64pshufw_92 label size_t
			pshufw				mm0,			mm0,			92
			ret
		m64pshufw_93 label size_t
			pshufw				mm0,			mm0,			93
			ret
		m64pshufw_94 label size_t
			pshufw				mm0,			mm0,			94
			ret
		m64pshufw_95 label size_t
			pshufw				mm0,			mm0,			95
			ret
		m64pshufw_96 label size_t
			pshufw				mm0,			mm0,			96
			ret
		m64pshufw_97 label size_t
			pshufw				mm0,			mm0,			97
			ret
		m64pshufw_98 label size_t
			pshufw				mm0,			mm0,			98
			ret
		m64pshufw_99 label size_t
			pshufw				mm0,			mm0,			99
			ret
		m64pshufw_100 label size_t
			pshufw				mm0,			mm0,			100
			ret
		m64pshufw_101 label size_t
			pshufw				mm0,			mm0,			101
			ret
		m64pshufw_102 label size_t
			pshufw				mm0,			mm0,			102
			ret
		m64pshufw_103 label size_t
			pshufw				mm0,			mm0,			103
			ret
		m64pshufw_104 label size_t
			pshufw				mm0,			mm0,			104
			ret
		m64pshufw_105 label size_t
			pshufw				mm0,			mm0,			105
			ret
		m64pshufw_106 label size_t
			pshufw				mm0,			mm0,			106
			ret
		m64pshufw_107 label size_t
			pshufw				mm0,			mm0,			107
			ret
		m64pshufw_108 label size_t
			pshufw				mm0,			mm0,			108
			ret
		m64pshufw_109 label size_t
			pshufw				mm0,			mm0,			109
			ret
		m64pshufw_110 label size_t
			pshufw				mm0,			mm0,			110
			ret
		m64pshufw_111 label size_t
			pshufw				mm0,			mm0,			111
			ret
		m64pshufw_112 label size_t
			pshufw				mm0,			mm0,			112
			ret
		m64pshufw_113 label size_t
			pshufw				mm0,			mm0,			113
			ret
		m64pshufw_114 label size_t
			pshufw				mm0,			mm0,			114
			ret
		m64pshufw_115 label size_t
			pshufw				mm0,			mm0,			115
			ret
		m64pshufw_116 label size_t
			pshufw				mm0,			mm0,			116
			ret
		m64pshufw_117 label size_t
			pshufw				mm0,			mm0,			117
			ret
		m64pshufw_118 label size_t
			pshufw				mm0,			mm0,			118
			ret
		m64pshufw_119 label size_t
			pshufw				mm0,			mm0,			119
			ret
		m64pshufw_120 label size_t
			pshufw				mm0,			mm0,			120
			ret
		m64pshufw_121 label size_t
			pshufw				mm0,			mm0,			121
			ret
		m64pshufw_122 label size_t
			pshufw				mm0,			mm0,			122
			ret
		m64pshufw_123 label size_t
			pshufw				mm0,			mm0,			123
			ret
		m64pshufw_124 label size_t
			pshufw				mm0,			mm0,			124
			ret
		m64pshufw_125 label size_t
			pshufw				mm0,			mm0,			125
			ret
		m64pshufw_126 label size_t
			pshufw				mm0,			mm0,			126
			ret
		m64pshufw_127 label size_t
			pshufw				mm0,			mm0,			127
			ret
		m64pshufw_128 label size_t
			pshufw				mm0,			mm0,			128
			ret
		m64pshufw_129 label size_t
			pshufw				mm0,			mm0,			129
			ret
		m64pshufw_130 label size_t
			pshufw				mm0,			mm0,			130
			ret
		m64pshufw_131 label size_t
			pshufw				mm0,			mm0,			131
			ret
		m64pshufw_132 label size_t
			pshufw				mm0,			mm0,			132
			ret
		m64pshufw_133 label size_t
			pshufw				mm0,			mm0,			133
			ret
		m64pshufw_134 label size_t
			pshufw				mm0,			mm0,			134
			ret
		m64pshufw_135 label size_t
			pshufw				mm0,			mm0,			135
			ret
		m64pshufw_136 label size_t
			pshufw				mm0,			mm0,			136
			ret
		m64pshufw_137 label size_t
			pshufw				mm0,			mm0,			137
			ret
		m64pshufw_138 label size_t
			pshufw				mm0,			mm0,			138
			ret
		m64pshufw_139 label size_t
			pshufw				mm0,			mm0,			139
			ret
		m64pshufw_140 label size_t
			pshufw				mm0,			mm0,			140
			ret
		m64pshufw_141 label size_t
			pshufw				mm0,			mm0,			141
			ret
		m64pshufw_142 label size_t
			pshufw				mm0,			mm0,			142
			ret
		m64pshufw_143 label size_t
			pshufw				mm0,			mm0,			143
			ret
		m64pshufw_144 label size_t
			pshufw				mm0,			mm0,			144
			ret
		m64pshufw_145 label size_t
			pshufw				mm0,			mm0,			145
			ret
		m64pshufw_146 label size_t
			pshufw				mm0,			mm0,			146
			ret
		m64pshufw_147 label size_t
			pshufw				mm0,			mm0,			147
			ret
		m64pshufw_148 label size_t
			pshufw				mm0,			mm0,			148
			ret
		m64pshufw_149 label size_t
			pshufw				mm0,			mm0,			149
			ret
		m64pshufw_150 label size_t
			pshufw				mm0,			mm0,			150
			ret
		m64pshufw_151 label size_t
			pshufw				mm0,			mm0,			151
			ret
		m64pshufw_152 label size_t
			pshufw				mm0,			mm0,			152
			ret
		m64pshufw_153 label size_t
			pshufw				mm0,			mm0,			153
			ret
		m64pshufw_154 label size_t
			pshufw				mm0,			mm0,			154
			ret
		m64pshufw_155 label size_t
			pshufw				mm0,			mm0,			155
			ret
		m64pshufw_156 label size_t
			pshufw				mm0,			mm0,			156
			ret
		m64pshufw_157 label size_t
			pshufw				mm0,			mm0,			157
			ret
		m64pshufw_158 label size_t
			pshufw				mm0,			mm0,			158
			ret
		m64pshufw_159 label size_t
			pshufw				mm0,			mm0,			159
			ret
		m64pshufw_160 label size_t
			pshufw				mm0,			mm0,			160
			ret
		m64pshufw_161 label size_t
			pshufw				mm0,			mm0,			161
			ret
		m64pshufw_162 label size_t
			pshufw				mm0,			mm0,			162
			ret
		m64pshufw_163 label size_t
			pshufw				mm0,			mm0,			163
			ret
		m64pshufw_164 label size_t
			pshufw				mm0,			mm0,			164
			ret
		m64pshufw_165 label size_t
			pshufw				mm0,			mm0,			165
			ret
		m64pshufw_166 label size_t
			pshufw				mm0,			mm0,			166
			ret
		m64pshufw_167 label size_t
			pshufw				mm0,			mm0,			167
			ret
		m64pshufw_168 label size_t
			pshufw				mm0,			mm0,			168
			ret
		m64pshufw_169 label size_t
			pshufw				mm0,			mm0,			169
			ret
		m64pshufw_170 label size_t
			pshufw				mm0,			mm0,			170
			ret
		m64pshufw_171 label size_t
			pshufw				mm0,			mm0,			171
			ret
		m64pshufw_172 label size_t
			pshufw				mm0,			mm0,			172
			ret
		m64pshufw_173 label size_t
			pshufw				mm0,			mm0,			173
			ret
		m64pshufw_174 label size_t
			pshufw				mm0,			mm0,			174
			ret
		m64pshufw_175 label size_t
			pshufw				mm0,			mm0,			175
			ret
		m64pshufw_176 label size_t
			pshufw				mm0,			mm0,			176
			ret
		m64pshufw_177 label size_t
			pshufw				mm0,			mm0,			177
			ret
		m64pshufw_178 label size_t
			pshufw				mm0,			mm0,			178
			ret
		m64pshufw_179 label size_t
			pshufw				mm0,			mm0,			179
			ret
		m64pshufw_180 label size_t
			pshufw				mm0,			mm0,			180
			ret
		m64pshufw_181 label size_t
			pshufw				mm0,			mm0,			181
			ret
		m64pshufw_182 label size_t
			pshufw				mm0,			mm0,			182
			ret
		m64pshufw_183 label size_t
			pshufw				mm0,			mm0,			183
			ret
		m64pshufw_184 label size_t
			pshufw				mm0,			mm0,			184
			ret
		m64pshufw_185 label size_t
			pshufw				mm0,			mm0,			185
			ret
		m64pshufw_186 label size_t
			pshufw				mm0,			mm0,			186
			ret
		m64pshufw_187 label size_t
			pshufw				mm0,			mm0,			187
			ret
		m64pshufw_188 label size_t
			pshufw				mm0,			mm0,			188
			ret
		m64pshufw_189 label size_t
			pshufw				mm0,			mm0,			189
			ret
		m64pshufw_190 label size_t
			pshufw				mm0,			mm0,			190
			ret
		m64pshufw_191 label size_t
			pshufw				mm0,			mm0,			191
			ret
		m64pshufw_192 label size_t
			pshufw				mm0,			mm0,			192
			ret
		m64pshufw_193 label size_t
			pshufw				mm0,			mm0,			193
			ret
		m64pshufw_194 label size_t
			pshufw				mm0,			mm0,			194
			ret
		m64pshufw_195 label size_t
			pshufw				mm0,			mm0,			195
			ret
		m64pshufw_196 label size_t
			pshufw				mm0,			mm0,			196
			ret
		m64pshufw_197 label size_t
			pshufw				mm0,			mm0,			197
			ret
		m64pshufw_198 label size_t
			pshufw				mm0,			mm0,			198
			ret
		m64pshufw_199 label size_t
			pshufw				mm0,			mm0,			199
			ret
		m64pshufw_200 label size_t
			pshufw				mm0,			mm0,			200
			ret
		m64pshufw_201 label size_t
			pshufw				mm0,			mm0,			201
			ret
		m64pshufw_202 label size_t
			pshufw				mm0,			mm0,			202
			ret
		m64pshufw_203 label size_t
			pshufw				mm0,			mm0,			203
			ret
		m64pshufw_204 label size_t
			pshufw				mm0,			mm0,			204
			ret
		m64pshufw_205 label size_t
			pshufw				mm0,			mm0,			205
			ret
		m64pshufw_206 label size_t
			pshufw				mm0,			mm0,			206
			ret
		m64pshufw_207 label size_t
			pshufw				mm0,			mm0,			207
			ret
		m64pshufw_208 label size_t
			pshufw				mm0,			mm0,			208
			ret
		m64pshufw_209 label size_t
			pshufw				mm0,			mm0,			209
			ret
		m64pshufw_210 label size_t
			pshufw				mm0,			mm0,			210
			ret
		m64pshufw_211 label size_t
			pshufw				mm0,			mm0,			211
			ret
		m64pshufw_212 label size_t
			pshufw				mm0,			mm0,			212
			ret
		m64pshufw_213 label size_t
			pshufw				mm0,			mm0,			213
			ret
		m64pshufw_214 label size_t
			pshufw				mm0,			mm0,			214
			ret
		m64pshufw_215 label size_t
			pshufw				mm0,			mm0,			215
			ret
		m64pshufw_216 label size_t
			pshufw				mm0,			mm0,			216
			ret
		m64pshufw_217 label size_t
			pshufw				mm0,			mm0,			217
			ret
		m64pshufw_218 label size_t
			pshufw				mm0,			mm0,			218
			ret
		m64pshufw_219 label size_t
			pshufw				mm0,			mm0,			219
			ret
		m64pshufw_220 label size_t
			pshufw				mm0,			mm0,			220
			ret
		m64pshufw_221 label size_t
			pshufw				mm0,			mm0,			221
			ret
		m64pshufw_222 label size_t
			pshufw				mm0,			mm0,			222
			ret
		m64pshufw_223 label size_t
			pshufw				mm0,			mm0,			223
			ret
		m64pshufw_224 label size_t
			pshufw				mm0,			mm0,			224
			ret
		m64pshufw_225 label size_t
			pshufw				mm0,			mm0,			225
			ret
		m64pshufw_226 label size_t
			pshufw				mm0,			mm0,			226
			ret
		m64pshufw_227 label size_t
			pshufw				mm0,			mm0,			227
			ret
		m64pshufw_228 label size_t
			pshufw				mm0,			mm0,			228
			ret
		m64pshufw_229 label size_t
			pshufw				mm0,			mm0,			229
			ret
		m64pshufw_230 label size_t
			pshufw				mm0,			mm0,			230
			ret
		m64pshufw_231 label size_t
			pshufw				mm0,			mm0,			231
			ret
		m64pshufw_232 label size_t
			pshufw				mm0,			mm0,			232
			ret
		m64pshufw_233 label size_t
			pshufw				mm0,			mm0,			233
			ret
		m64pshufw_234 label size_t
			pshufw				mm0,			mm0,			234
			ret
		m64pshufw_235 label size_t
			pshufw				mm0,			mm0,			235
			ret
		m64pshufw_236 label size_t
			pshufw				mm0,			mm0,			236
			ret
		m64pshufw_237 label size_t
			pshufw				mm0,			mm0,			237
			ret
		m64pshufw_238 label size_t
			pshufw				mm0,			mm0,			238
			ret
		m64pshufw_239 label size_t
			pshufw				mm0,			mm0,			239
			ret
		m64pshufw_240 label size_t
			pshufw				mm0,			mm0,			240
			ret
		m64pshufw_241 label size_t
			pshufw				mm0,			mm0,			241
			ret
		m64pshufw_242 label size_t
			pshufw				mm0,			mm0,			242
			ret
		m64pshufw_243 label size_t
			pshufw				mm0,			mm0,			243
			ret
		m64pshufw_244 label size_t
			pshufw				mm0,			mm0,			244
			ret
		m64pshufw_245 label size_t
			pshufw				mm0,			mm0,			245
			ret
		m64pshufw_246 label size_t
			pshufw				mm0,			mm0,			246
			ret
		m64pshufw_247 label size_t
			pshufw				mm0,			mm0,			247
			ret
		m64pshufw_248 label size_t
			pshufw				mm0,			mm0,			248
			ret
		m64pshufw_249 label size_t
			pshufw				mm0,			mm0,			249
			ret
		m64pshufw_250 label size_t
			pshufw				mm0,			mm0,			250
			ret
		m64pshufw_251 label size_t
			pshufw				mm0,			mm0,			251
			ret
		m64pshufw_252 label size_t
			pshufw				mm0,			mm0,			252
			ret
		m64pshufw_253 label size_t
			pshufw				mm0,			mm0,			253
			ret
		m64pshufw_254 label size_t
			pshufw				mm0,			mm0,			254
			ret
		m64pshufw_255 label size_t
			pshufw				mm0,			mm0,			255
			ret
		;.endif
		
_uXm_m64_pshufw endp
endif ;__X32__

	end
