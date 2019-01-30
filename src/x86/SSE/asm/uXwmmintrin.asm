
	include uXx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXsseintrin.inc
	
	option switchstyle:asmstyle
	
	.data?

	.data

	.const
	
	alignsize_t
	_m128iaeskeygenassistsi128jmptable isize_t	offset _m128iaeskeygenassistsi128_0, offset _m128iaeskeygenassistsi128_1, offset _m128iaeskeygenassistsi128_2, offset _m128iaeskeygenassistsi128_3, offset _m128iaeskeygenassistsi128_4, \
												offset _m128iaeskeygenassistsi128_5, offset _m128iaeskeygenassistsi128_6, offset _m128iaeskeygenassistsi128_7, offset _m128iaeskeygenassistsi128_8, offset _m128iaeskeygenassistsi128_9, \
												offset _m128iaeskeygenassistsi128_10, offset _m128iaeskeygenassistsi128_11, offset _m128iaeskeygenassistsi128_12, offset _m128iaeskeygenassistsi128_13, offset _m128iaeskeygenassistsi128_14, \
												offset _m128iaeskeygenassistsi128_15, offset _m128iaeskeygenassistsi128_16, offset _m128iaeskeygenassistsi128_17, offset _m128iaeskeygenassistsi128_18, offset _m128iaeskeygenassistsi128_19, \
												offset _m128iaeskeygenassistsi128_20, offset _m128iaeskeygenassistsi128_21, offset _m128iaeskeygenassistsi128_22, offset _m128iaeskeygenassistsi128_23, offset _m128iaeskeygenassistsi128_24, \
												offset _m128iaeskeygenassistsi128_25, offset _m128iaeskeygenassistsi128_26, offset _m128iaeskeygenassistsi128_27, offset _m128iaeskeygenassistsi128_28, offset _m128iaeskeygenassistsi128_29, \
												offset _m128iaeskeygenassistsi128_30, offset _m128iaeskeygenassistsi128_31, offset _m128iaeskeygenassistsi128_32, offset _m128iaeskeygenassistsi128_33, offset _m128iaeskeygenassistsi128_34, \
												offset _m128iaeskeygenassistsi128_35, offset _m128iaeskeygenassistsi128_36, offset _m128iaeskeygenassistsi128_37, offset _m128iaeskeygenassistsi128_38, offset _m128iaeskeygenassistsi128_39, \
												offset _m128iaeskeygenassistsi128_40, offset _m128iaeskeygenassistsi128_41, offset _m128iaeskeygenassistsi128_42, offset _m128iaeskeygenassistsi128_43, offset _m128iaeskeygenassistsi128_44, \
												offset _m128iaeskeygenassistsi128_45, offset _m128iaeskeygenassistsi128_46, offset _m128iaeskeygenassistsi128_47, offset _m128iaeskeygenassistsi128_48, offset _m128iaeskeygenassistsi128_49, \
												offset _m128iaeskeygenassistsi128_50, offset _m128iaeskeygenassistsi128_51, offset _m128iaeskeygenassistsi128_52, offset _m128iaeskeygenassistsi128_53, offset _m128iaeskeygenassistsi128_54, \
												offset _m128iaeskeygenassistsi128_55, offset _m128iaeskeygenassistsi128_56, offset _m128iaeskeygenassistsi128_57, offset _m128iaeskeygenassistsi128_58, offset _m128iaeskeygenassistsi128_59, \
												offset _m128iaeskeygenassistsi128_60, offset _m128iaeskeygenassistsi128_61, offset _m128iaeskeygenassistsi128_62, offset _m128iaeskeygenassistsi128_63, offset _m128iaeskeygenassistsi128_64, \
												offset _m128iaeskeygenassistsi128_65, offset _m128iaeskeygenassistsi128_66, offset _m128iaeskeygenassistsi128_67, offset _m128iaeskeygenassistsi128_68, offset _m128iaeskeygenassistsi128_69, \
												offset _m128iaeskeygenassistsi128_70, offset _m128iaeskeygenassistsi128_71, offset _m128iaeskeygenassistsi128_72, offset _m128iaeskeygenassistsi128_73, offset _m128iaeskeygenassistsi128_74, \
												offset _m128iaeskeygenassistsi128_75, offset _m128iaeskeygenassistsi128_76, offset _m128iaeskeygenassistsi128_77, offset _m128iaeskeygenassistsi128_78, offset _m128iaeskeygenassistsi128_79, \
												offset _m128iaeskeygenassistsi128_80, offset _m128iaeskeygenassistsi128_81, offset _m128iaeskeygenassistsi128_82, offset _m128iaeskeygenassistsi128_83, offset _m128iaeskeygenassistsi128_84, \
												offset _m128iaeskeygenassistsi128_85, offset _m128iaeskeygenassistsi128_86, offset _m128iaeskeygenassistsi128_87, offset _m128iaeskeygenassistsi128_88, offset _m128iaeskeygenassistsi128_89, \
												offset _m128iaeskeygenassistsi128_90, offset _m128iaeskeygenassistsi128_91, offset _m128iaeskeygenassistsi128_92, offset _m128iaeskeygenassistsi128_93, offset _m128iaeskeygenassistsi128_94, \
												offset _m128iaeskeygenassistsi128_95, offset _m128iaeskeygenassistsi128_96, offset _m128iaeskeygenassistsi128_97, offset _m128iaeskeygenassistsi128_98, offset _m128iaeskeygenassistsi128_99, \
												offset _m128iaeskeygenassistsi128_100, offset _m128iaeskeygenassistsi128_101, offset _m128iaeskeygenassistsi128_102, offset _m128iaeskeygenassistsi128_103, offset _m128iaeskeygenassistsi128_104, \
												offset _m128iaeskeygenassistsi128_105, offset _m128iaeskeygenassistsi128_106, offset _m128iaeskeygenassistsi128_107, offset _m128iaeskeygenassistsi128_108, offset _m128iaeskeygenassistsi128_109, \
												offset _m128iaeskeygenassistsi128_110, offset _m128iaeskeygenassistsi128_111, offset _m128iaeskeygenassistsi128_112, offset _m128iaeskeygenassistsi128_113, offset _m128iaeskeygenassistsi128_114, \
												offset _m128iaeskeygenassistsi128_115, offset _m128iaeskeygenassistsi128_116, offset _m128iaeskeygenassistsi128_117, offset _m128iaeskeygenassistsi128_118, offset _m128iaeskeygenassistsi128_119, \
												offset _m128iaeskeygenassistsi128_120, offset _m128iaeskeygenassistsi128_121, offset _m128iaeskeygenassistsi128_122, offset _m128iaeskeygenassistsi128_123, offset _m128iaeskeygenassistsi128_124, \
												offset _m128iaeskeygenassistsi128_125, offset _m128iaeskeygenassistsi128_126, offset _m128iaeskeygenassistsi128_127, offset _m128iaeskeygenassistsi128_128, offset _m128iaeskeygenassistsi128_129, \
												offset _m128iaeskeygenassistsi128_130, offset _m128iaeskeygenassistsi128_131, offset _m128iaeskeygenassistsi128_132, offset _m128iaeskeygenassistsi128_133, offset _m128iaeskeygenassistsi128_134, \
												offset _m128iaeskeygenassistsi128_135, offset _m128iaeskeygenassistsi128_136, offset _m128iaeskeygenassistsi128_137, offset _m128iaeskeygenassistsi128_138, offset _m128iaeskeygenassistsi128_139, \
												offset _m128iaeskeygenassistsi128_140, offset _m128iaeskeygenassistsi128_141, offset _m128iaeskeygenassistsi128_142, offset _m128iaeskeygenassistsi128_143, offset _m128iaeskeygenassistsi128_144, \
												offset _m128iaeskeygenassistsi128_145, offset _m128iaeskeygenassistsi128_146, offset _m128iaeskeygenassistsi128_147, offset _m128iaeskeygenassistsi128_148, offset _m128iaeskeygenassistsi128_149, \
												offset _m128iaeskeygenassistsi128_150, offset _m128iaeskeygenassistsi128_151, offset _m128iaeskeygenassistsi128_152, offset _m128iaeskeygenassistsi128_153, offset _m128iaeskeygenassistsi128_154, \
												offset _m128iaeskeygenassistsi128_155, offset _m128iaeskeygenassistsi128_156, offset _m128iaeskeygenassistsi128_157, offset _m128iaeskeygenassistsi128_158, offset _m128iaeskeygenassistsi128_159, \
												offset _m128iaeskeygenassistsi128_160, offset _m128iaeskeygenassistsi128_161, offset _m128iaeskeygenassistsi128_162, offset _m128iaeskeygenassistsi128_163, offset _m128iaeskeygenassistsi128_164, \
												offset _m128iaeskeygenassistsi128_165, offset _m128iaeskeygenassistsi128_166, offset _m128iaeskeygenassistsi128_167, offset _m128iaeskeygenassistsi128_168, offset _m128iaeskeygenassistsi128_169, \
												offset _m128iaeskeygenassistsi128_170, offset _m128iaeskeygenassistsi128_171, offset _m128iaeskeygenassistsi128_172, offset _m128iaeskeygenassistsi128_173, offset _m128iaeskeygenassistsi128_174, \
												offset _m128iaeskeygenassistsi128_175, offset _m128iaeskeygenassistsi128_176, offset _m128iaeskeygenassistsi128_177, offset _m128iaeskeygenassistsi128_178, offset _m128iaeskeygenassistsi128_179, \
												offset _m128iaeskeygenassistsi128_180, offset _m128iaeskeygenassistsi128_181, offset _m128iaeskeygenassistsi128_182, offset _m128iaeskeygenassistsi128_183, offset _m128iaeskeygenassistsi128_184, \
												offset _m128iaeskeygenassistsi128_185, offset _m128iaeskeygenassistsi128_186, offset _m128iaeskeygenassistsi128_187, offset _m128iaeskeygenassistsi128_188, offset _m128iaeskeygenassistsi128_189, \
												offset _m128iaeskeygenassistsi128_190, offset _m128iaeskeygenassistsi128_191, offset _m128iaeskeygenassistsi128_192, offset _m128iaeskeygenassistsi128_193, offset _m128iaeskeygenassistsi128_194, \
												offset _m128iaeskeygenassistsi128_195, offset _m128iaeskeygenassistsi128_196, offset _m128iaeskeygenassistsi128_197, offset _m128iaeskeygenassistsi128_198, offset _m128iaeskeygenassistsi128_199, \
												offset _m128iaeskeygenassistsi128_200, offset _m128iaeskeygenassistsi128_201, offset _m128iaeskeygenassistsi128_202, offset _m128iaeskeygenassistsi128_203, offset _m128iaeskeygenassistsi128_204, \
												offset _m128iaeskeygenassistsi128_205, offset _m128iaeskeygenassistsi128_206, offset _m128iaeskeygenassistsi128_207, offset _m128iaeskeygenassistsi128_208, offset _m128iaeskeygenassistsi128_209, \
												offset _m128iaeskeygenassistsi128_210, offset _m128iaeskeygenassistsi128_211, offset _m128iaeskeygenassistsi128_212, offset _m128iaeskeygenassistsi128_213, offset _m128iaeskeygenassistsi128_214, \
												offset _m128iaeskeygenassistsi128_215, offset _m128iaeskeygenassistsi128_216, offset _m128iaeskeygenassistsi128_217, offset _m128iaeskeygenassistsi128_218, offset _m128iaeskeygenassistsi128_219, \
												offset _m128iaeskeygenassistsi128_220, offset _m128iaeskeygenassistsi128_221, offset _m128iaeskeygenassistsi128_222, offset _m128iaeskeygenassistsi128_223, offset _m128iaeskeygenassistsi128_224, \
												offset _m128iaeskeygenassistsi128_225, offset _m128iaeskeygenassistsi128_226, offset _m128iaeskeygenassistsi128_227, offset _m128iaeskeygenassistsi128_228, offset _m128iaeskeygenassistsi128_229, \
												offset _m128iaeskeygenassistsi128_230, offset _m128iaeskeygenassistsi128_231, offset _m128iaeskeygenassistsi128_232, offset _m128iaeskeygenassistsi128_233, offset _m128iaeskeygenassistsi128_234, \
												offset _m128iaeskeygenassistsi128_235, offset _m128iaeskeygenassistsi128_236, offset _m128iaeskeygenassistsi128_237, offset _m128iaeskeygenassistsi128_238, offset _m128iaeskeygenassistsi128_239, \
												offset _m128iaeskeygenassistsi128_240, offset _m128iaeskeygenassistsi128_241, offset _m128iaeskeygenassistsi128_242, offset _m128iaeskeygenassistsi128_243, offset _m128iaeskeygenassistsi128_244, \
												offset _m128iaeskeygenassistsi128_245, offset _m128iaeskeygenassistsi128_246, offset _m128iaeskeygenassistsi128_247, offset _m128iaeskeygenassistsi128_248, offset _m128iaeskeygenassistsi128_249, \
												offset _m128iaeskeygenassistsi128_250, offset _m128iaeskeygenassistsi128_251, offset _m128iaeskeygenassistsi128_252, offset _m128iaeskeygenassistsi128_253, offset _m128iaeskeygenassistsi128_254, \
												offset _m128iaeskeygenassistsi128_255

	alignxmmfieldproc
	callconvopt

	.code
	
;************************************
; AES instructions.
;************************************
funcstart _uX_mm_aesdec_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			aesdec			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_aesdeclast_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			aesdeclast				xmm0,			xmm1

			ret
funcend
	
funcstart _uX_mm_aesenc_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			aesenc			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_aesenclast_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			aesenclast			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_aesimc_si128, callconv, xmmword, < >, Inxmm_A:xmmword

			aesimc			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_0, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			0
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_1, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			1
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_2, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			2
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_3, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			3
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_4, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			4
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_5, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			5
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_6, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			6
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_7, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			7
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_8, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			8
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_9, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			9
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_10, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			10
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_11, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			11
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_12, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			12
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_13, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			13
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_14, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			14
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_15, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			15
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_16, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			16
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_17, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			17
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_18, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			18
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_19, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			19
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_20, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			20
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_21, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			21
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_22, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			22
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_23, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			23
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_24, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			24
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_25, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			25
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_26, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			26
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_27, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			27
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_28, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			28
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_29, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			29
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_30, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			30
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_31, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			31
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_32, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			32
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_33, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			33
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_34, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			34
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_35, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			35
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_36, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			36
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_37, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			37
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_38, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			38
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_39, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			39
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_40, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			40
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_41, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			41
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_42, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			42
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_43, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			43
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_44, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			44
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_45, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			45
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_46, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			46
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_47, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			47
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_48, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			48
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_49, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			49
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_50, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			50
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_51, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			51
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_52, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			52
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_53, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			53
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_54, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			54
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_55, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			55
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_56, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			56
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_57, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			57
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_58, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			58
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_59, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			59
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_60, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			60
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_61, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			61
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_62, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			62
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_63, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			63
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_64, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			64
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_65, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			65
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_66, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			66
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_67, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			67
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_68, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			68
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_69, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			69
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_70, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			70
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_71, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			71
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_72, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			72
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_73, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			73
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_74, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			74
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_75, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			75
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_76, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			76
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_77, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			77
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_78, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			78
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_79, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			79
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_80, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			80
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_81, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			81
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_82, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			82
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_83, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			83
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_84, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			84
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_85, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			85
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_86, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			86
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_87, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			87
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_88, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			88
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_89, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			89
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_90, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			90
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_91, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			91
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_92, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			92
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_93, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			93
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_94, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			94
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_95, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			95
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_96, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			96
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_97, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			97
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_98, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			98
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_99, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			99
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_100, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			100
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_101, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			101
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_102, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			102
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_103, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			103
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_104, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			104
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_105, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			105
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_106, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			106
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_107, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			107
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_108, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			108
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_109, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			109
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_110, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			110
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_111, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			111
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_112, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			112
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_113, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			113
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_114, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			114
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_115, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			115
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_116, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			116
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_117, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			117
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_118, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			118
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_119, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			119
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_120, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			120
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_121, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			121
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_122, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			122
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_123, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			123
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_124, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			124
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_125, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			125
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_126, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			126
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_127, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			127
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_128, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			128
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_129, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			129
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_130, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			130
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_131, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			131
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_132, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			132
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_133, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			133
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_134, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			134
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_135, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			135
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_136, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			136
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_137, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			137
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_138, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			138
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_139, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			139
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_140, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			140
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_141, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			141
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_142, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			142
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_143, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			143
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_144, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			144
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_145, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			145
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_146, callconv, xmmword, < >, Inxmm_A:xmmword 
			aeskeygenassist				xmm0,			xmm0,			146
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_147, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			147
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_148, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			148
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_149, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			149
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_150, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			150
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_151, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			151
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_152, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			152
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_153, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			153
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_154, callconv, xmmword, < >, Inxmm_A:xmmword 
			aeskeygenassist				xmm0,			xmm0,			154
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_155, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			155
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_156, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			156
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_157, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			157
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_158, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			158
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_159, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			159
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_160, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			160
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_161, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			161
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_162, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			162
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_163, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			163
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_164, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			164
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_165, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			165
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_166, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			166
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_167, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			167
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_168, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			168
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_169, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			169
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_170, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			170
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_171, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			171
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_172, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			172
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_173, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			173
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_174, callconv, xmmword, < >, Inxmm_A:xmmword 
			aeskeygenassist				xmm0,			xmm0,			174
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_175, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			175
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_176, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			176
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_177, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			177
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_178, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			178
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_179, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			179
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_180, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			180
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_181, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			181
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_182, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			182
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_183, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			183
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_184, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			184
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_185, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			185
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_186, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			186
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_187, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			187
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_188, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			188
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_189, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			189
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_190, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			190
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_191, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			191
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_192, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			192
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_193, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			193
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_194, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			194
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_195, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			195
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_196, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			196
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_197, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			197
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_198, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			198
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_199, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			199
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_200, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			200
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_201, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			201
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_202, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			202
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_203, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			203
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_204, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			204
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_205, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			205
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_206, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			206
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_207, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			207
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_208, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			208
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_209, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			209
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_210, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			210
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_211, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			211
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_212, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			212
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_213, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			213
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_214, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			214
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_215, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			215
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_216, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			216
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_217, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			217
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_218, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			218
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_219, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			219
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_220, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			220
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_221, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			221
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_222, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			222
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_223, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			223
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_224, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			224
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_225, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			225
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_226, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			226
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_227, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			227
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_228, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			228
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_229, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			229
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_230, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			230
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_231, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			231
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_232, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			232
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_233, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			233
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_234, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			234
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_235, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			235
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_236, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			236
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_237, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			237
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_238, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			238
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_239, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			239
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_240, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			240
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_241, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			241
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_242, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			242
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_243, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			243
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_244, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			244
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_245, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			245
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_246, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			246
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_247, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			247
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_248, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			248
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_249, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			249
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_250, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			250
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_251, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			251
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_252, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			252
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_253, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			253
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_254, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			254
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128_255, callconv, xmmword, < >, Inxmm_A:xmmword
			aeskeygenassist				xmm0,			xmm0,			255
			ret
funcend

funcstart _uX_mm_aeskeygenassist_si128, callconv, xmmword, < >, Inxmm_A:xmmword, _Imm8:dword
	
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128iaeskeygenassistsi128jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128iaeskeygenassistsi128jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128iaeskeygenassistsi128_0 label size_t
			aeskeygenassist				xmm0,			xmm0,			0
			ret
		_m128iaeskeygenassistsi128_1 label size_t
			aeskeygenassist				xmm0,			xmm0,			1
			ret
		_m128iaeskeygenassistsi128_2 label size_t
			aeskeygenassist				xmm0,			xmm0,			2
			ret
		_m128iaeskeygenassistsi128_3 label size_t
			aeskeygenassist				xmm0,			xmm0,			3
			ret
		_m128iaeskeygenassistsi128_4 label size_t
			aeskeygenassist				xmm0,			xmm0,			4
			ret
		_m128iaeskeygenassistsi128_5 label size_t
			aeskeygenassist				xmm0,			xmm0,			5
			ret
		_m128iaeskeygenassistsi128_6 label size_t
			aeskeygenassist				xmm0,			xmm0,			6
			ret
		_m128iaeskeygenassistsi128_7 label size_t
			aeskeygenassist				xmm0,			xmm0,			7
			ret
		_m128iaeskeygenassistsi128_8 label size_t
			aeskeygenassist				xmm0,			xmm0,			8
			ret
		_m128iaeskeygenassistsi128_9 label size_t
			aeskeygenassist				xmm0,			xmm0,			9
			ret
		_m128iaeskeygenassistsi128_10 label size_t
			aeskeygenassist				xmm0,			xmm0,			10
			ret
		_m128iaeskeygenassistsi128_11 label size_t
			aeskeygenassist				xmm0,			xmm0,			11
			ret
		_m128iaeskeygenassistsi128_12 label size_t
			aeskeygenassist				xmm0,			xmm0,			12
			ret
		_m128iaeskeygenassistsi128_13 label size_t
			aeskeygenassist				xmm0,			xmm0,			13
			ret
		_m128iaeskeygenassistsi128_14 label size_t
			aeskeygenassist				xmm0,			xmm0,			14
			ret
		_m128iaeskeygenassistsi128_15 label size_t
			aeskeygenassist				xmm0,			xmm0,			15
			ret
		_m128iaeskeygenassistsi128_16 label size_t
			aeskeygenassist				xmm0,			xmm0,			16
			ret
		_m128iaeskeygenassistsi128_17 label size_t
			aeskeygenassist				xmm0,			xmm0,			17
			ret
		_m128iaeskeygenassistsi128_18 label size_t
			aeskeygenassist				xmm0,			xmm0,			18
			ret
		_m128iaeskeygenassistsi128_19 label size_t
			aeskeygenassist				xmm0,			xmm0,			19
			ret
		_m128iaeskeygenassistsi128_20 label size_t
			aeskeygenassist				xmm0,			xmm0,			20
			ret
		_m128iaeskeygenassistsi128_21 label size_t
			aeskeygenassist				xmm0,			xmm0,			21
			ret
		_m128iaeskeygenassistsi128_22 label size_t
			aeskeygenassist				xmm0,			xmm0,			22
			ret
		_m128iaeskeygenassistsi128_23 label size_t
			aeskeygenassist				xmm0,			xmm0,			23
			ret
		_m128iaeskeygenassistsi128_24 label size_t
			aeskeygenassist				xmm0,			xmm0,			24
			ret
		_m128iaeskeygenassistsi128_25 label size_t
			aeskeygenassist				xmm0,			xmm0,			25
			ret
		_m128iaeskeygenassistsi128_26 label size_t
			aeskeygenassist				xmm0,			xmm0,			26
			ret
		_m128iaeskeygenassistsi128_27 label size_t
			aeskeygenassist				xmm0,			xmm0,			27
			ret
		_m128iaeskeygenassistsi128_28 label size_t
			aeskeygenassist				xmm0,			xmm0,			28
			ret
		_m128iaeskeygenassistsi128_29 label size_t
			aeskeygenassist				xmm0,			xmm0,			29
			ret
		_m128iaeskeygenassistsi128_30 label size_t
			aeskeygenassist				xmm0,			xmm0,			30
			ret
		_m128iaeskeygenassistsi128_31 label size_t
			aeskeygenassist				xmm0,			xmm0,			31
			ret
		_m128iaeskeygenassistsi128_32 label size_t
			aeskeygenassist				xmm0,			xmm0,			32
			ret
		_m128iaeskeygenassistsi128_33 label size_t
			aeskeygenassist				xmm0,			xmm0,			33
			ret
		_m128iaeskeygenassistsi128_34 label size_t
			aeskeygenassist				xmm0,			xmm0,			34
			ret
		_m128iaeskeygenassistsi128_35 label size_t
			aeskeygenassist				xmm0,			xmm0,			35
			ret
		_m128iaeskeygenassistsi128_36 label size_t
			aeskeygenassist				xmm0,			xmm0,			36
			ret
		_m128iaeskeygenassistsi128_37 label size_t
			aeskeygenassist				xmm0,			xmm0,			37
			ret
		_m128iaeskeygenassistsi128_38 label size_t
			aeskeygenassist				xmm0,			xmm0,			38
			ret
		_m128iaeskeygenassistsi128_39 label size_t
			aeskeygenassist				xmm0,			xmm0,			39
			ret
		_m128iaeskeygenassistsi128_40 label size_t
			aeskeygenassist				xmm0,			xmm0,			40
			ret
		_m128iaeskeygenassistsi128_41 label size_t
			aeskeygenassist				xmm0,			xmm0,			41
			ret
		_m128iaeskeygenassistsi128_42 label size_t
			aeskeygenassist				xmm0,			xmm0,			42
			ret
		_m128iaeskeygenassistsi128_43 label size_t
			aeskeygenassist				xmm0,			xmm0,			43
			ret
		_m128iaeskeygenassistsi128_44 label size_t
			aeskeygenassist				xmm0,			xmm0,			44
			ret
		_m128iaeskeygenassistsi128_45 label size_t
			aeskeygenassist				xmm0,			xmm0,			45
			ret
		_m128iaeskeygenassistsi128_46 label size_t
			aeskeygenassist				xmm0,			xmm0,			46
			ret
		_m128iaeskeygenassistsi128_47 label size_t
			aeskeygenassist				xmm0,			xmm0,			47
			ret
		_m128iaeskeygenassistsi128_48 label size_t
			aeskeygenassist				xmm0,			xmm0,			48
			ret
		_m128iaeskeygenassistsi128_49 label size_t
			aeskeygenassist				xmm0,			xmm0,			49
			ret
		_m128iaeskeygenassistsi128_50 label size_t
			aeskeygenassist				xmm0,			xmm0,			50
			ret
		_m128iaeskeygenassistsi128_51 label size_t
			aeskeygenassist				xmm0,			xmm0,			51
			ret
		_m128iaeskeygenassistsi128_52 label size_t
			aeskeygenassist				xmm0,			xmm0,			52
			ret
		_m128iaeskeygenassistsi128_53 label size_t
			aeskeygenassist				xmm0,			xmm0,			53
			ret
		_m128iaeskeygenassistsi128_54 label size_t
			aeskeygenassist				xmm0,			xmm0,			54
			ret
		_m128iaeskeygenassistsi128_55 label size_t
			aeskeygenassist				xmm0,			xmm0,			55
			ret
		_m128iaeskeygenassistsi128_56 label size_t
			aeskeygenassist				xmm0,			xmm0,			56
			ret
		_m128iaeskeygenassistsi128_57 label size_t
			aeskeygenassist				xmm0,			xmm0,			57
			ret
		_m128iaeskeygenassistsi128_58 label size_t
			aeskeygenassist				xmm0,			xmm0,			58
			ret
		_m128iaeskeygenassistsi128_59 label size_t
			aeskeygenassist				xmm0,			xmm0,			59
			ret
		_m128iaeskeygenassistsi128_60 label size_t
			aeskeygenassist				xmm0,			xmm0,			60
			ret
		_m128iaeskeygenassistsi128_61 label size_t
			aeskeygenassist				xmm0,			xmm0,			61
			ret
		_m128iaeskeygenassistsi128_62 label size_t
			aeskeygenassist				xmm0,			xmm0,			62
			ret
		_m128iaeskeygenassistsi128_63 label size_t
			aeskeygenassist				xmm0,			xmm0,			63
			ret
		_m128iaeskeygenassistsi128_64 label size_t
			aeskeygenassist				xmm0,			xmm0,			64
			ret
		_m128iaeskeygenassistsi128_65 label size_t
			aeskeygenassist				xmm0,			xmm0,			65
			ret
		_m128iaeskeygenassistsi128_66 label size_t
			aeskeygenassist				xmm0,			xmm0,			66
			ret
		_m128iaeskeygenassistsi128_67 label size_t
			aeskeygenassist				xmm0,			xmm0,			67
			ret
		_m128iaeskeygenassistsi128_68 label size_t
			aeskeygenassist				xmm0,			xmm0,			68
			ret
		_m128iaeskeygenassistsi128_69 label size_t
			aeskeygenassist				xmm0,			xmm0,			69
			ret
		_m128iaeskeygenassistsi128_70 label size_t
			aeskeygenassist				xmm0,			xmm0,			70
			ret
		_m128iaeskeygenassistsi128_71 label size_t
			aeskeygenassist				xmm0,			xmm0,			71
			ret
		_m128iaeskeygenassistsi128_72 label size_t
			aeskeygenassist				xmm0,			xmm0,			72
			ret
		_m128iaeskeygenassistsi128_73 label size_t
			aeskeygenassist				xmm0,			xmm0,			73
			ret
		_m128iaeskeygenassistsi128_74 label size_t
			aeskeygenassist				xmm0,			xmm0,			74
			ret
		_m128iaeskeygenassistsi128_75 label size_t
			aeskeygenassist				xmm0,			xmm0,			75
			ret
		_m128iaeskeygenassistsi128_76 label size_t
			aeskeygenassist				xmm0,			xmm0,			76
			ret
		_m128iaeskeygenassistsi128_77 label size_t
			aeskeygenassist				xmm0,			xmm0,			77
			ret
		_m128iaeskeygenassistsi128_78 label size_t
			aeskeygenassist				xmm0,			xmm0,			78
			ret
		_m128iaeskeygenassistsi128_79 label size_t
			aeskeygenassist				xmm0,			xmm0,			79
			ret
		_m128iaeskeygenassistsi128_80 label size_t
			aeskeygenassist				xmm0,			xmm0,			80
			ret
		_m128iaeskeygenassistsi128_81 label size_t
			aeskeygenassist				xmm0,			xmm0,			81
			ret
		_m128iaeskeygenassistsi128_82 label size_t
			aeskeygenassist				xmm0,			xmm0,			82
			ret
		_m128iaeskeygenassistsi128_83 label size_t
			aeskeygenassist				xmm0,			xmm0,			83
			ret
		_m128iaeskeygenassistsi128_84 label size_t
			aeskeygenassist				xmm0,			xmm0,			84
			ret
		_m128iaeskeygenassistsi128_85 label size_t
			aeskeygenassist				xmm0,			xmm0,			85
			ret
		_m128iaeskeygenassistsi128_86 label size_t
			aeskeygenassist				xmm0,			xmm0,			86
			ret
		_m128iaeskeygenassistsi128_87 label size_t
			aeskeygenassist				xmm0,			xmm0,			87
			ret
		_m128iaeskeygenassistsi128_88 label size_t
			aeskeygenassist				xmm0,			xmm0,			88
			ret
		_m128iaeskeygenassistsi128_89 label size_t
			aeskeygenassist				xmm0,			xmm0,			89
			ret
		_m128iaeskeygenassistsi128_90 label size_t
			aeskeygenassist				xmm0,			xmm0,			90
			ret
		_m128iaeskeygenassistsi128_91 label size_t
			aeskeygenassist				xmm0,			xmm0,			91
			ret
		_m128iaeskeygenassistsi128_92 label size_t
			aeskeygenassist				xmm0,			xmm0,			92
			ret
		_m128iaeskeygenassistsi128_93 label size_t
			aeskeygenassist				xmm0,			xmm0,			93
			ret
		_m128iaeskeygenassistsi128_94 label size_t
			aeskeygenassist				xmm0,			xmm0,			94
			ret
		_m128iaeskeygenassistsi128_95 label size_t
			aeskeygenassist				xmm0,			xmm0,			95
			ret
		_m128iaeskeygenassistsi128_96 label size_t
			aeskeygenassist				xmm0,			xmm0,			96
			ret
		_m128iaeskeygenassistsi128_97 label size_t
			aeskeygenassist				xmm0,			xmm0,			97
			ret
		_m128iaeskeygenassistsi128_98 label size_t
			aeskeygenassist				xmm0,			xmm0,			98
			ret
		_m128iaeskeygenassistsi128_99 label size_t
			aeskeygenassist				xmm0,			xmm0,			99
			ret
		_m128iaeskeygenassistsi128_100 label size_t
			aeskeygenassist				xmm0,			xmm0,			100
			ret
		_m128iaeskeygenassistsi128_101 label size_t
			aeskeygenassist				xmm0,			xmm0,			101
			ret
		_m128iaeskeygenassistsi128_102 label size_t
			aeskeygenassist				xmm0,			xmm0,			102
			ret
		_m128iaeskeygenassistsi128_103 label size_t
			aeskeygenassist				xmm0,			xmm0,			103
			ret
		_m128iaeskeygenassistsi128_104 label size_t
			aeskeygenassist				xmm0,			xmm0,			104
			ret
		_m128iaeskeygenassistsi128_105 label size_t
			aeskeygenassist				xmm0,			xmm0,			105
			ret
		_m128iaeskeygenassistsi128_106 label size_t
			aeskeygenassist				xmm0,			xmm0,			106
			ret
		_m128iaeskeygenassistsi128_107 label size_t
			aeskeygenassist				xmm0,			xmm0,			107
			ret
		_m128iaeskeygenassistsi128_108 label size_t
			aeskeygenassist				xmm0,			xmm0,			108
			ret
		_m128iaeskeygenassistsi128_109 label size_t
			aeskeygenassist				xmm0,			xmm0,			109
			ret
		_m128iaeskeygenassistsi128_110 label size_t
			aeskeygenassist				xmm0,			xmm0,			110
			ret
		_m128iaeskeygenassistsi128_111 label size_t
			aeskeygenassist				xmm0,			xmm0,			111
			ret
		_m128iaeskeygenassistsi128_112 label size_t
			aeskeygenassist				xmm0,			xmm0,			112
			ret
		_m128iaeskeygenassistsi128_113 label size_t
			aeskeygenassist				xmm0,			xmm0,			113
			ret
		_m128iaeskeygenassistsi128_114 label size_t
			aeskeygenassist				xmm0,			xmm0,			114
			ret
		_m128iaeskeygenassistsi128_115 label size_t
			aeskeygenassist				xmm0,			xmm0,			115
			ret
		_m128iaeskeygenassistsi128_116 label size_t
			aeskeygenassist				xmm0,			xmm0,			116
			ret
		_m128iaeskeygenassistsi128_117 label size_t
			aeskeygenassist				xmm0,			xmm0,			117
			ret
		_m128iaeskeygenassistsi128_118 label size_t
			aeskeygenassist				xmm0,			xmm0,			118
			ret
		_m128iaeskeygenassistsi128_119 label size_t
			aeskeygenassist				xmm0,			xmm0,			119
			ret
		_m128iaeskeygenassistsi128_120 label size_t
			aeskeygenassist				xmm0,			xmm0,			120
			ret
		_m128iaeskeygenassistsi128_121 label size_t
			aeskeygenassist				xmm0,			xmm0,			121
			ret
		_m128iaeskeygenassistsi128_122 label size_t
			aeskeygenassist				xmm0,			xmm0,			122
			ret
		_m128iaeskeygenassistsi128_123 label size_t
			aeskeygenassist				xmm0,			xmm0,			123
			ret
		_m128iaeskeygenassistsi128_124 label size_t
			aeskeygenassist				xmm0,			xmm0,			124
			ret
		_m128iaeskeygenassistsi128_125 label size_t
			aeskeygenassist				xmm0,			xmm0,			125
			ret
		_m128iaeskeygenassistsi128_126 label size_t
			aeskeygenassist				xmm0,			xmm0,			126
			ret
		_m128iaeskeygenassistsi128_127 label size_t
			aeskeygenassist				xmm0,			xmm0,			127
			ret
		_m128iaeskeygenassistsi128_128 label size_t
			aeskeygenassist				xmm0,			xmm0,			128
			ret
		_m128iaeskeygenassistsi128_129 label size_t
			aeskeygenassist				xmm0,			xmm0,			129
			ret
		_m128iaeskeygenassistsi128_130 label size_t
			aeskeygenassist				xmm0,			xmm0,			130
			ret
		_m128iaeskeygenassistsi128_131 label size_t
			aeskeygenassist				xmm0,			xmm0,			131
			ret
		_m128iaeskeygenassistsi128_132 label size_t
			aeskeygenassist				xmm0,			xmm0,			132
			ret
		_m128iaeskeygenassistsi128_133 label size_t
			aeskeygenassist				xmm0,			xmm0,			133
			ret
		_m128iaeskeygenassistsi128_134 label size_t
			aeskeygenassist				xmm0,			xmm0,			134
			ret
		_m128iaeskeygenassistsi128_135 label size_t
			aeskeygenassist				xmm0,			xmm0,			135
			ret
		_m128iaeskeygenassistsi128_136 label size_t
			aeskeygenassist				xmm0,			xmm0,			136
			ret
		_m128iaeskeygenassistsi128_137 label size_t
			aeskeygenassist				xmm0,			xmm0,			137
			ret
		_m128iaeskeygenassistsi128_138 label size_t
			aeskeygenassist				xmm0,			xmm0,			138
			ret
		_m128iaeskeygenassistsi128_139 label size_t
			aeskeygenassist				xmm0,			xmm0,			139
			ret
		_m128iaeskeygenassistsi128_140 label size_t
			aeskeygenassist				xmm0,			xmm0,			140
			ret
		_m128iaeskeygenassistsi128_141 label size_t
			aeskeygenassist				xmm0,			xmm0,			141
			ret
		_m128iaeskeygenassistsi128_142 label size_t
			aeskeygenassist				xmm0,			xmm0,			142
			ret
		_m128iaeskeygenassistsi128_143 label size_t
			aeskeygenassist				xmm0,			xmm0,			143
			ret
		_m128iaeskeygenassistsi128_144 label size_t
			aeskeygenassist				xmm0,			xmm0,			144
			ret
		_m128iaeskeygenassistsi128_145 label size_t
			aeskeygenassist				xmm0,			xmm0,			145
			ret
		_m128iaeskeygenassistsi128_146 label size_t
			aeskeygenassist				xmm0,			xmm0,			146
			ret
		_m128iaeskeygenassistsi128_147 label size_t
			aeskeygenassist				xmm0,			xmm0,			147
			ret
		_m128iaeskeygenassistsi128_148 label size_t
			aeskeygenassist				xmm0,			xmm0,			148
			ret
		_m128iaeskeygenassistsi128_149 label size_t
			aeskeygenassist				xmm0,			xmm0,			149
			ret
		_m128iaeskeygenassistsi128_150 label size_t
			aeskeygenassist				xmm0,			xmm0,			150
			ret
		_m128iaeskeygenassistsi128_151 label size_t
			aeskeygenassist				xmm0,			xmm0,			151
			ret
		_m128iaeskeygenassistsi128_152 label size_t
			aeskeygenassist				xmm0,			xmm0,			152
			ret
		_m128iaeskeygenassistsi128_153 label size_t
			aeskeygenassist				xmm0,			xmm0,			153
			ret
		_m128iaeskeygenassistsi128_154 label size_t
			aeskeygenassist				xmm0,			xmm0,			154
			ret
		_m128iaeskeygenassistsi128_155 label size_t
			aeskeygenassist				xmm0,			xmm0,			155
			ret
		_m128iaeskeygenassistsi128_156 label size_t
			aeskeygenassist				xmm0,			xmm0,			156
			ret
		_m128iaeskeygenassistsi128_157 label size_t
			aeskeygenassist				xmm0,			xmm0,			157
			ret
		_m128iaeskeygenassistsi128_158 label size_t
			aeskeygenassist				xmm0,			xmm0,			158
			ret
		_m128iaeskeygenassistsi128_159 label size_t
			aeskeygenassist				xmm0,			xmm0,			159
			ret
		_m128iaeskeygenassistsi128_160 label size_t
			aeskeygenassist				xmm0,			xmm0,			160
			ret
		_m128iaeskeygenassistsi128_161 label size_t
			aeskeygenassist				xmm0,			xmm0,			161
			ret
		_m128iaeskeygenassistsi128_162 label size_t
			aeskeygenassist				xmm0,			xmm0,			162
			ret
		_m128iaeskeygenassistsi128_163 label size_t
			aeskeygenassist				xmm0,			xmm0,			163
			ret
		_m128iaeskeygenassistsi128_164 label size_t
			aeskeygenassist				xmm0,			xmm0,			164
			ret
		_m128iaeskeygenassistsi128_165 label size_t
			aeskeygenassist				xmm0,			xmm0,			165
			ret
		_m128iaeskeygenassistsi128_166 label size_t
			aeskeygenassist				xmm0,			xmm0,			166
			ret
		_m128iaeskeygenassistsi128_167 label size_t
			aeskeygenassist				xmm0,			xmm0,			167
			ret
		_m128iaeskeygenassistsi128_168 label size_t
			aeskeygenassist				xmm0,			xmm0,			168
			ret
		_m128iaeskeygenassistsi128_169 label size_t
			aeskeygenassist				xmm0,			xmm0,			169
			ret
		_m128iaeskeygenassistsi128_170 label size_t
			aeskeygenassist				xmm0,			xmm0,			170
			ret
		_m128iaeskeygenassistsi128_171 label size_t
			aeskeygenassist				xmm0,			xmm0,			171
			ret
		_m128iaeskeygenassistsi128_172 label size_t
			aeskeygenassist				xmm0,			xmm0,			172
			ret
		_m128iaeskeygenassistsi128_173 label size_t
			aeskeygenassist				xmm0,			xmm0,			173
			ret
		_m128iaeskeygenassistsi128_174 label size_t
			aeskeygenassist				xmm0,			xmm0,			174
			ret
		_m128iaeskeygenassistsi128_175 label size_t
			aeskeygenassist				xmm0,			xmm0,			175
			ret
		_m128iaeskeygenassistsi128_176 label size_t
			aeskeygenassist				xmm0,			xmm0,			176
			ret
		_m128iaeskeygenassistsi128_177 label size_t
			aeskeygenassist				xmm0,			xmm0,			177
			ret
		_m128iaeskeygenassistsi128_178 label size_t
			aeskeygenassist				xmm0,			xmm0,			178
			ret
		_m128iaeskeygenassistsi128_179 label size_t
			aeskeygenassist				xmm0,			xmm0,			179
			ret
		_m128iaeskeygenassistsi128_180 label size_t
			aeskeygenassist				xmm0,			xmm0,			180
			ret
		_m128iaeskeygenassistsi128_181 label size_t
			aeskeygenassist				xmm0,			xmm0,			181
			ret
		_m128iaeskeygenassistsi128_182 label size_t
			aeskeygenassist				xmm0,			xmm0,			182
			ret
		_m128iaeskeygenassistsi128_183 label size_t
			aeskeygenassist				xmm0,			xmm0,			183
			ret
		_m128iaeskeygenassistsi128_184 label size_t
			aeskeygenassist				xmm0,			xmm0,			184
			ret
		_m128iaeskeygenassistsi128_185 label size_t
			aeskeygenassist				xmm0,			xmm0,			185
			ret
		_m128iaeskeygenassistsi128_186 label size_t
			aeskeygenassist				xmm0,			xmm0,			186
			ret
		_m128iaeskeygenassistsi128_187 label size_t
			aeskeygenassist				xmm0,			xmm0,			187
			ret
		_m128iaeskeygenassistsi128_188 label size_t
			aeskeygenassist				xmm0,			xmm0,			188
			ret
		_m128iaeskeygenassistsi128_189 label size_t
			aeskeygenassist				xmm0,			xmm0,			189
			ret
		_m128iaeskeygenassistsi128_190 label size_t
			aeskeygenassist				xmm0,			xmm0,			190
			ret
		_m128iaeskeygenassistsi128_191 label size_t
			aeskeygenassist				xmm0,			xmm0,			191
			ret
		_m128iaeskeygenassistsi128_192 label size_t
			aeskeygenassist				xmm0,			xmm0,			192
			ret
		_m128iaeskeygenassistsi128_193 label size_t
			aeskeygenassist				xmm0,			xmm0,			193
			ret
		_m128iaeskeygenassistsi128_194 label size_t
			aeskeygenassist				xmm0,			xmm0,			194
			ret
		_m128iaeskeygenassistsi128_195 label size_t
			aeskeygenassist				xmm0,			xmm0,			195
			ret
		_m128iaeskeygenassistsi128_196 label size_t
			aeskeygenassist				xmm0,			xmm0,			196
			ret
		_m128iaeskeygenassistsi128_197 label size_t
			aeskeygenassist				xmm0,			xmm0,			197
			ret
		_m128iaeskeygenassistsi128_198 label size_t
			aeskeygenassist				xmm0,			xmm0,			198
			ret
		_m128iaeskeygenassistsi128_199 label size_t
			aeskeygenassist				xmm0,			xmm0,			199
			ret
		_m128iaeskeygenassistsi128_200 label size_t
			aeskeygenassist				xmm0,			xmm0,			200
			ret
		_m128iaeskeygenassistsi128_201 label size_t
			aeskeygenassist				xmm0,			xmm0,			201
			ret
		_m128iaeskeygenassistsi128_202 label size_t
			aeskeygenassist				xmm0,			xmm0,			202
			ret
		_m128iaeskeygenassistsi128_203 label size_t
			aeskeygenassist				xmm0,			xmm0,			203
			ret
		_m128iaeskeygenassistsi128_204 label size_t
			aeskeygenassist				xmm0,			xmm0,			204
			ret
		_m128iaeskeygenassistsi128_205 label size_t
			aeskeygenassist				xmm0,			xmm0,			205
			ret
		_m128iaeskeygenassistsi128_206 label size_t
			aeskeygenassist				xmm0,			xmm0,			206
			ret
		_m128iaeskeygenassistsi128_207 label size_t
			aeskeygenassist				xmm0,			xmm0,			207
			ret
		_m128iaeskeygenassistsi128_208 label size_t
			aeskeygenassist				xmm0,			xmm0,			208
			ret
		_m128iaeskeygenassistsi128_209 label size_t
			aeskeygenassist				xmm0,			xmm0,			209
			ret
		_m128iaeskeygenassistsi128_210 label size_t
			aeskeygenassist				xmm0,			xmm0,			210
			ret
		_m128iaeskeygenassistsi128_211 label size_t
			aeskeygenassist				xmm0,			xmm0,			211
			ret
		_m128iaeskeygenassistsi128_212 label size_t
			aeskeygenassist				xmm0,			xmm0,			212
			ret
		_m128iaeskeygenassistsi128_213 label size_t
			aeskeygenassist				xmm0,			xmm0,			213
			ret
		_m128iaeskeygenassistsi128_214 label size_t
			aeskeygenassist				xmm0,			xmm0,			214
			ret
		_m128iaeskeygenassistsi128_215 label size_t
			aeskeygenassist				xmm0,			xmm0,			215
			ret
		_m128iaeskeygenassistsi128_216 label size_t
			aeskeygenassist				xmm0,			xmm0,			216
			ret
		_m128iaeskeygenassistsi128_217 label size_t
			aeskeygenassist				xmm0,			xmm0,			217
			ret
		_m128iaeskeygenassistsi128_218 label size_t
			aeskeygenassist				xmm0,			xmm0,			218
			ret
		_m128iaeskeygenassistsi128_219 label size_t
			aeskeygenassist				xmm0,			xmm0,			219
			ret
		_m128iaeskeygenassistsi128_220 label size_t
			aeskeygenassist				xmm0,			xmm0,			220
			ret
		_m128iaeskeygenassistsi128_221 label size_t
			aeskeygenassist				xmm0,			xmm0,			221
			ret
		_m128iaeskeygenassistsi128_222 label size_t
			aeskeygenassist				xmm0,			xmm0,			222
			ret
		_m128iaeskeygenassistsi128_223 label size_t
			aeskeygenassist				xmm0,			xmm0,			223
			ret
		_m128iaeskeygenassistsi128_224 label size_t
			aeskeygenassist				xmm0,			xmm0,			224
			ret
		_m128iaeskeygenassistsi128_225 label size_t
			aeskeygenassist				xmm0,			xmm0,			225
			ret
		_m128iaeskeygenassistsi128_226 label size_t
			aeskeygenassist				xmm0,			xmm0,			226
			ret
		_m128iaeskeygenassistsi128_227 label size_t
			aeskeygenassist				xmm0,			xmm0,			227
			ret
		_m128iaeskeygenassistsi128_228 label size_t
			aeskeygenassist				xmm0,			xmm0,			228
			ret
		_m128iaeskeygenassistsi128_229 label size_t
			aeskeygenassist				xmm0,			xmm0,			229
			ret
		_m128iaeskeygenassistsi128_230 label size_t
			aeskeygenassist				xmm0,			xmm0,			230
			ret
		_m128iaeskeygenassistsi128_231 label size_t
			aeskeygenassist				xmm0,			xmm0,			231
			ret
		_m128iaeskeygenassistsi128_232 label size_t
			aeskeygenassist				xmm0,			xmm0,			232
			ret
		_m128iaeskeygenassistsi128_233 label size_t
			aeskeygenassist				xmm0,			xmm0,			233
			ret
		_m128iaeskeygenassistsi128_234 label size_t
			aeskeygenassist				xmm0,			xmm0,			234
			ret
		_m128iaeskeygenassistsi128_235 label size_t
			aeskeygenassist				xmm0,			xmm0,			235
			ret
		_m128iaeskeygenassistsi128_236 label size_t
			aeskeygenassist				xmm0,			xmm0,			236
			ret
		_m128iaeskeygenassistsi128_237 label size_t
			aeskeygenassist				xmm0,			xmm0,			237
			ret
		_m128iaeskeygenassistsi128_238 label size_t
			aeskeygenassist				xmm0,			xmm0,			238
			ret
		_m128iaeskeygenassistsi128_239 label size_t
			aeskeygenassist				xmm0,			xmm0,			239
			ret
		_m128iaeskeygenassistsi128_240 label size_t
			aeskeygenassist				xmm0,			xmm0,			240
			ret
		_m128iaeskeygenassistsi128_241 label size_t
			aeskeygenassist				xmm0,			xmm0,			241
			ret
		_m128iaeskeygenassistsi128_242 label size_t
			aeskeygenassist				xmm0,			xmm0,			242
			ret
		_m128iaeskeygenassistsi128_243 label size_t
			aeskeygenassist				xmm0,			xmm0,			243
			ret
		_m128iaeskeygenassistsi128_244 label size_t
			aeskeygenassist				xmm0,			xmm0,			244
			ret
		_m128iaeskeygenassistsi128_245 label size_t
			aeskeygenassist				xmm0,			xmm0,			245
			ret
		_m128iaeskeygenassistsi128_246 label size_t
			aeskeygenassist				xmm0,			xmm0,			246
			ret
		_m128iaeskeygenassistsi128_247 label size_t
			aeskeygenassist				xmm0,			xmm0,			247
			ret
		_m128iaeskeygenassistsi128_248 label size_t
			aeskeygenassist				xmm0,			xmm0,			248
			ret
		_m128iaeskeygenassistsi128_249 label size_t
			aeskeygenassist				xmm0,			xmm0,			249
			ret
		_m128iaeskeygenassistsi128_250 label size_t
			aeskeygenassist				xmm0,			xmm0,			250
			ret
		_m128iaeskeygenassistsi128_251 label size_t
			aeskeygenassist				xmm0,			xmm0,			251
			ret
		_m128iaeskeygenassistsi128_252 label size_t
			aeskeygenassist				xmm0,			xmm0,			252
			ret
		_m128iaeskeygenassistsi128_253 label size_t
			aeskeygenassist				xmm0,			xmm0,			253
			ret
		_m128iaeskeygenassistsi128_254 label size_t
			aeskeygenassist				xmm0,			xmm0,			254
			ret
		_m128iaeskeygenassistsi128_255 label size_t
			aeskeygenassist				xmm0,			xmm0,			255
			ret
		;.endif
		
funcend

funcstart _uX_mm_clmulepi64_si128_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
					pclmulqdq			xmm0,			xmm1,			0h
			ret
funcend

funcstart _uX_mm_clmulepi64_si128_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
					pclmulqdq			xmm0,			xmm1,			1h
			ret
funcend

funcstart _uX_mm_clmulepi64_si128_10, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
					pclmulqdq			xmm0,			xmm1,			10h
			ret
funcend

funcstart _uX_mm_clmulepi64_si128_11, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
					pclmulqdq			xmm0,			xmm1,			11h
			ret
funcend

funcstart _uX_mm_clmulepi64_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword

			.switch rparam2
				.case 0h
					pclmulqdq			xmm0,			xmm1,			0h
				.case 1h
					pclmulqdq			xmm0,			xmm1,			1h
				.case 10h
					pclmulqdq			xmm0,			xmm1,			10h
				.case 11h
					pclmulqdq			xmm0,			xmm1,			11h
			.endsw

			ret
funcend

funcstart _uX_mm_clmullqlqepi64_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pclmullqlqdq			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_clmulhqlqepi64_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pclmulhqlqdq			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_clmullqhqepi64_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pclmullqhqdq			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_clmulhqhqepi64_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pclmulhqhqdq			xmm0,			xmm1

			ret
funcend

endif ;__MIC__

	end
