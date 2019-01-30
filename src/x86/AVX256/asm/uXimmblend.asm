	
	include uXx86asm.inc

ifndef __MIC__

	.ymm
	option arch:avx
	option evex:0

	;include uXavx256intrin.inc
	
	include uXymmconstdata.inc
	
	.const
	
	uXalignsize_t
	_m256vdppsjmptable isize_t	offset _m256vdpps_0, offset _m256vdpps_1, offset _m256vdpps_2, offset _m256vdpps_3, offset _m256vdpps_4, \
								offset _m256vdpps_5, offset _m256vdpps_6, offset _m256vdpps_7, offset _m256vdpps_8, offset _m256vdpps_9, \
								offset _m256vdpps_10, offset _m256vdpps_11, offset _m256vdpps_12, offset _m256vdpps_13, offset _m256vdpps_14, \
								offset _m256vdpps_15, offset _m256vdpps_16, offset _m256vdpps_17, offset _m256vdpps_18, offset _m256vdpps_19, \
								offset _m256vdpps_20, offset _m256vdpps_21, offset _m256vdpps_22, offset _m256vdpps_23, offset _m256vdpps_24, \
								offset _m256vdpps_25, offset _m256vdpps_26, offset _m256vdpps_27, offset _m256vdpps_28, offset _m256vdpps_29, \
								offset _m256vdpps_30, offset _m256vdpps_31, offset _m256vdpps_32, offset _m256vdpps_33, offset _m256vdpps_34, \
								offset _m256vdpps_35, offset _m256vdpps_36, offset _m256vdpps_37, offset _m256vdpps_38, offset _m256vdpps_39, \
								offset _m256vdpps_40, offset _m256vdpps_41, offset _m256vdpps_42, offset _m256vdpps_43, offset _m256vdpps_44, \
								offset _m256vdpps_45, offset _m256vdpps_46, offset _m256vdpps_47, offset _m256vdpps_48, offset _m256vdpps_49, \
								offset _m256vdpps_50, offset _m256vdpps_51, offset _m256vdpps_52, offset _m256vdpps_53, offset _m256vdpps_54, \
								offset _m256vdpps_55, offset _m256vdpps_56, offset _m256vdpps_57, offset _m256vdpps_58, offset _m256vdpps_59, \
								offset _m256vdpps_60, offset _m256vdpps_61, offset _m256vdpps_62, offset _m256vdpps_63, offset _m256vdpps_64, \
								offset _m256vdpps_65, offset _m256vdpps_66, offset _m256vdpps_67, offset _m256vdpps_68, offset _m256vdpps_69, \
								offset _m256vdpps_70, offset _m256vdpps_71, offset _m256vdpps_72, offset _m256vdpps_73, offset _m256vdpps_74, \
								offset _m256vdpps_75, offset _m256vdpps_76, offset _m256vdpps_77, offset _m256vdpps_78, offset _m256vdpps_79, \
								offset _m256vdpps_80, offset _m256vdpps_81, offset _m256vdpps_82, offset _m256vdpps_83, offset _m256vdpps_84, \
								offset _m256vdpps_85, offset _m256vdpps_86, offset _m256vdpps_87, offset _m256vdpps_88, offset _m256vdpps_89, \
								offset _m256vdpps_90, offset _m256vdpps_91, offset _m256vdpps_92, offset _m256vdpps_93, offset _m256vdpps_94, \
								offset _m256vdpps_95, offset _m256vdpps_96, offset _m256vdpps_97, offset _m256vdpps_98, offset _m256vdpps_99, \
								offset _m256vdpps_100, offset _m256vdpps_101, offset _m256vdpps_102, offset _m256vdpps_103, offset _m256vdpps_104, \
								offset _m256vdpps_105, offset _m256vdpps_106, offset _m256vdpps_107, offset _m256vdpps_108, offset _m256vdpps_109, \
								offset _m256vdpps_110, offset _m256vdpps_111, offset _m256vdpps_112, offset _m256vdpps_113, offset _m256vdpps_114, \
								offset _m256vdpps_115, offset _m256vdpps_116, offset _m256vdpps_117, offset _m256vdpps_118, offset _m256vdpps_119, \
								offset _m256vdpps_120, offset _m256vdpps_121, offset _m256vdpps_122, offset _m256vdpps_123, offset _m256vdpps_124, \
								offset _m256vdpps_125, offset _m256vdpps_126, offset _m256vdpps_127, offset _m256vdpps_128, offset _m256vdpps_129, \
								offset _m256vdpps_130, offset _m256vdpps_131, offset _m256vdpps_132, offset _m256vdpps_133, offset _m256vdpps_134, \
								offset _m256vdpps_135, offset _m256vdpps_136, offset _m256vdpps_137, offset _m256vdpps_138, offset _m256vdpps_139, \
								offset _m256vdpps_140, offset _m256vdpps_141, offset _m256vdpps_142, offset _m256vdpps_143, offset _m256vdpps_144, \
								offset _m256vdpps_145, offset _m256vdpps_146, offset _m256vdpps_147, offset _m256vdpps_148, offset _m256vdpps_149, \
								offset _m256vdpps_150, offset _m256vdpps_151, offset _m256vdpps_152, offset _m256vdpps_153, offset _m256vdpps_154, \
								offset _m256vdpps_155, offset _m256vdpps_156, offset _m256vdpps_157, offset _m256vdpps_158, offset _m256vdpps_159, \
								offset _m256vdpps_160, offset _m256vdpps_161, offset _m256vdpps_162, offset _m256vdpps_163, offset _m256vdpps_164, \
								offset _m256vdpps_165, offset _m256vdpps_166, offset _m256vdpps_167, offset _m256vdpps_168, offset _m256vdpps_169, \
								offset _m256vdpps_170, offset _m256vdpps_171, offset _m256vdpps_172, offset _m256vdpps_173, offset _m256vdpps_174, \
								offset _m256vdpps_175, offset _m256vdpps_176, offset _m256vdpps_177, offset _m256vdpps_178, offset _m256vdpps_179, \
								offset _m256vdpps_180, offset _m256vdpps_181, offset _m256vdpps_182, offset _m256vdpps_183, offset _m256vdpps_184, \
								offset _m256vdpps_185, offset _m256vdpps_186, offset _m256vdpps_187, offset _m256vdpps_188, offset _m256vdpps_189, \
								offset _m256vdpps_190, offset _m256vdpps_191, offset _m256vdpps_192, offset _m256vdpps_193, offset _m256vdpps_194, \
								offset _m256vdpps_195, offset _m256vdpps_196, offset _m256vdpps_197, offset _m256vdpps_198, offset _m256vdpps_199, \
								offset _m256vdpps_200, offset _m256vdpps_201, offset _m256vdpps_202, offset _m256vdpps_203, offset _m256vdpps_204, \
								offset _m256vdpps_205, offset _m256vdpps_206, offset _m256vdpps_207, offset _m256vdpps_208, offset _m256vdpps_209, \
								offset _m256vdpps_210, offset _m256vdpps_211, offset _m256vdpps_212, offset _m256vdpps_213, offset _m256vdpps_214, \
								offset _m256vdpps_215, offset _m256vdpps_216, offset _m256vdpps_217, offset _m256vdpps_218, offset _m256vdpps_219, \
								offset _m256vdpps_220, offset _m256vdpps_221, offset _m256vdpps_222, offset _m256vdpps_223, offset _m256vdpps_224, \
								offset _m256vdpps_225, offset _m256vdpps_226, offset _m256vdpps_227, offset _m256vdpps_228, offset _m256vdpps_229, \
								offset _m256vdpps_230, offset _m256vdpps_231, offset _m256vdpps_232, offset _m256vdpps_233, offset _m256vdpps_234, \
								offset _m256vdpps_235, offset _m256vdpps_236, offset _m256vdpps_237, offset _m256vdpps_238, offset _m256vdpps_239, \
								offset _m256vdpps_240, offset _m256vdpps_241, offset _m256vdpps_242, offset _m256vdpps_243, offset _m256vdpps_244, \
								offset _m256vdpps_245, offset _m256vdpps_246, offset _m256vdpps_247, offset _m256vdpps_248, offset _m256vdpps_249, \
								offset _m256vdpps_250, offset _m256vdpps_251, offset _m256vdpps_252, offset _m256vdpps_253, offset _m256vdpps_254, \
								offset _m256vdpps_255

	uXalignsize_t
	_m256vroundpsjmptable isize_t	offset _m256vroundps_0, offset _m256vroundps_1, offset _m256vroundps_2, offset _m256vroundps_3, offset _m256vroundps_4, \
									offset _m256vroundps_5, offset _m256vroundps_6, offset _m256vroundps_7, offset _m256vroundps_8, offset _m256vroundps_9, \
									offset _m256vroundps_10, offset _m256vroundps_11, offset _m256vroundps_12

	uXalignsize_t
	_m256vroundssjmptable isize_t	offset _m256vroundss_0, offset _m256vroundss_1, offset _m256vroundss_2, offset _m256vroundss_3, offset _m256vroundss_4, \
									offset _m256vroundss_5, offset _m256vroundss_6, offset _m256vroundss_7, offset _m256vroundss_8, offset _m256vroundss_9, \
									offset _m256vroundss_10, offset _m256vroundss_11, offset _m256vroundss_12

	uXalignsize_t
	_m256vdppdjmptable isize_t	offset _m256vdppd_0, offset _m256vdppd_1, offset _m256vdppd_2, offset _m256vdppd_3, offset _m256vdppd_4, \
								offset _m256vdppd_5, offset _m256vdppd_6, offset _m256vdppd_7, offset _m256vdppd_8, offset _m256vdppd_9, \
								offset _m256vdppd_10, offset _m256vdppd_11, offset _m256vdppd_12, offset _m256vdppd_13, offset _m256vdppd_14, \
								offset _m256vdppd_15, offset _m256vdppd_16, offset _m256vdppd_17, offset _m256vdppd_18, offset _m256vdppd_19, \
								offset _m256vdppd_20, offset _m256vdppd_21, offset _m256vdppd_22, offset _m256vdppd_23, offset _m256vdppd_24, \
								offset _m256vdppd_25, offset _m256vdppd_26, offset _m256vdppd_27, offset _m256vdppd_28, offset _m256vdppd_29, \
								offset _m256vdppd_30, offset _m256vdppd_31, offset _m256vdppd_32, offset _m256vdppd_33, offset _m256vdppd_34, \
								offset _m256vdppd_35, offset _m256vdppd_36, offset _m256vdppd_37, offset _m256vdppd_38, offset _m256vdppd_39, \
								offset _m256vdppd_40, offset _m256vdppd_41, offset _m256vdppd_42, offset _m256vdppd_43, offset _m256vdppd_44, \
								offset _m256vdppd_45, offset _m256vdppd_46, offset _m256vdppd_47, offset _m256vdppd_48, offset _m256vdppd_49, \
								offset _m256vdppd_50, offset _m256vdppd_51, offset _m256vdppd_52, offset _m256vdppd_53, offset _m256vdppd_54, \
								offset _m256vdppd_55, offset _m256vdppd_56, offset _m256vdppd_57, offset _m256vdppd_58, offset _m256vdppd_59, \
								offset _m256vdppd_60, offset _m256vdppd_61, offset _m256vdppd_62, offset _m256vdppd_63, offset _m256vdppd_64, \
								offset _m256vdppd_65, offset _m256vdppd_66, offset _m256vdppd_67, offset _m256vdppd_68, offset _m256vdppd_69, \
								offset _m256vdppd_70, offset _m256vdppd_71, offset _m256vdppd_72, offset _m256vdppd_73, offset _m256vdppd_74, \
								offset _m256vdppd_75, offset _m256vdppd_76, offset _m256vdppd_77, offset _m256vdppd_78, offset _m256vdppd_79, \
								offset _m256vdppd_80, offset _m256vdppd_81, offset _m256vdppd_82, offset _m256vdppd_83, offset _m256vdppd_84, \
								offset _m256vdppd_85, offset _m256vdppd_86, offset _m256vdppd_87, offset _m256vdppd_88, offset _m256vdppd_89, \
								offset _m256vdppd_90, offset _m256vdppd_91, offset _m256vdppd_92, offset _m256vdppd_93, offset _m256vdppd_94, \
								offset _m256vdppd_95, offset _m256vdppd_96, offset _m256vdppd_97, offset _m256vdppd_98, offset _m256vdppd_99, \
								offset _m256vdppd_100, offset _m256vdppd_101, offset _m256vdppd_102, offset _m256vdppd_103, offset _m256vdppd_104, \
								offset _m256vdppd_105, offset _m256vdppd_106, offset _m256vdppd_107, offset _m256vdppd_108, offset _m256vdppd_109, \
								offset _m256vdppd_110, offset _m256vdppd_111, offset _m256vdppd_112, offset _m256vdppd_113, offset _m256vdppd_114, \
								offset _m256vdppd_115, offset _m256vdppd_116, offset _m256vdppd_117, offset _m256vdppd_118, offset _m256vdppd_119, \
								offset _m256vdppd_120, offset _m256vdppd_121, offset _m256vdppd_122, offset _m256vdppd_123, offset _m256vdppd_124, \
								offset _m256vdppd_125, offset _m256vdppd_126, offset _m256vdppd_127, offset _m256vdppd_128, offset _m256vdppd_129, \
								offset _m256vdppd_130, offset _m256vdppd_131, offset _m256vdppd_132, offset _m256vdppd_133, offset _m256vdppd_134, \
								offset _m256vdppd_135, offset _m256vdppd_136, offset _m256vdppd_137, offset _m256vdppd_138, offset _m256vdppd_139, \
								offset _m256vdppd_140, offset _m256vdppd_141, offset _m256vdppd_142, offset _m256vdppd_143, offset _m256vdppd_144, \
								offset _m256vdppd_145, offset _m256vdppd_146, offset _m256vdppd_147, offset _m256vdppd_148, offset _m256vdppd_149, \
								offset _m256vdppd_150, offset _m256vdppd_151, offset _m256vdppd_152, offset _m256vdppd_153, offset _m256vdppd_154, \
								offset _m256vdppd_155, offset _m256vdppd_156, offset _m256vdppd_157, offset _m256vdppd_158, offset _m256vdppd_159, \
								offset _m256vdppd_160, offset _m256vdppd_161, offset _m256vdppd_162, offset _m256vdppd_163, offset _m256vdppd_164, \
								offset _m256vdppd_165, offset _m256vdppd_166, offset _m256vdppd_167, offset _m256vdppd_168, offset _m256vdppd_169, \
								offset _m256vdppd_170, offset _m256vdppd_171, offset _m256vdppd_172, offset _m256vdppd_173, offset _m256vdppd_174, \
								offset _m256vdppd_175, offset _m256vdppd_176, offset _m256vdppd_177, offset _m256vdppd_178, offset _m256vdppd_179, \
								offset _m256vdppd_180, offset _m256vdppd_181, offset _m256vdppd_182, offset _m256vdppd_183, offset _m256vdppd_184, \
								offset _m256vdppd_185, offset _m256vdppd_186, offset _m256vdppd_187, offset _m256vdppd_188, offset _m256vdppd_189, \
								offset _m256vdppd_190, offset _m256vdppd_191, offset _m256vdppd_192, offset _m256vdppd_193, offset _m256vdppd_194, \
								offset _m256vdppd_195, offset _m256vdppd_196, offset _m256vdppd_197, offset _m256vdppd_198, offset _m256vdppd_199, \
								offset _m256vdppd_200, offset _m256vdppd_201, offset _m256vdppd_202, offset _m256vdppd_203, offset _m256vdppd_204, \
								offset _m256vdppd_205, offset _m256vdppd_206, offset _m256vdppd_207, offset _m256vdppd_208, offset _m256vdppd_209, \
								offset _m256vdppd_210, offset _m256vdppd_211, offset _m256vdppd_212, offset _m256vdppd_213, offset _m256vdppd_214, \
								offset _m256vdppd_215, offset _m256vdppd_216, offset _m256vdppd_217, offset _m256vdppd_218, offset _m256vdppd_219, \
								offset _m256vdppd_220, offset _m256vdppd_221, offset _m256vdppd_222, offset _m256vdppd_223, offset _m256vdppd_224, \
								offset _m256vdppd_225, offset _m256vdppd_226, offset _m256vdppd_227, offset _m256vdppd_228, offset _m256vdppd_229, \
								offset _m256vdppd_230, offset _m256vdppd_231, offset _m256vdppd_232, offset _m256vdppd_233, offset _m256vdppd_234, \
								offset _m256vdppd_235, offset _m256vdppd_236, offset _m256vdppd_237, offset _m256vdppd_238, offset _m256vdppd_239, \
								offset _m256vdppd_240, offset _m256vdppd_241, offset _m256vdppd_242, offset _m256vdppd_243, offset _m256vdppd_244, \
								offset _m256vdppd_245, offset _m256vdppd_246, offset _m256vdppd_247, offset _m256vdppd_248, offset _m256vdppd_249, \
								offset _m256vdppd_250, offset _m256vdppd_251, offset _m256vdppd_252, offset _m256vdppd_253, offset _m256vdppd_254, \
								offset _m256vdppd_255

	uXalignsize_t
	_m256vroundpdjmptable isize_t	offset _m256vroundpd_0, offset _m256vroundpd_1, offset _m256vroundpd_2, offset _m256vroundpd_3, offset _m256vroundpd_4, \
									offset _m256vroundpd_5, offset _m256vroundpd_6, offset _m256vroundpd_7, offset _m256vroundpd_8, offset _m256vroundpd_9, \
									offset _m256vroundpd_10, offset _m256vroundpd_11, offset _m256vroundpd_12

	uXalignsize_t
	_m256vroundsdjmptable isize_t	offset _m256vroundsd_0, offset _m256vroundsd_1, offset _m256vroundsd_2, offset _m256vroundsd_3, offset _m256vroundsd_4, \
									offset _m256vroundsd_5, offset _m256vroundsd_6, offset _m256vroundsd_7, offset _m256vroundsd_8, offset _m256vroundsd_9, \
									offset _m256vroundsd_10, offset _m256vroundsd_11, offset _m256vroundsd_12

	uXalignsize_t
	_m256vcmppsjmptable isize_t	offset _m256vcmpps_0, offset _m256vcmpps_1, offset _m256vcmpps_2, offset _m256vcmpps_3, offset _m256vcmpps_4, \
								offset _m256vcmpps_5, offset _m256vcmpps_6, offset _m256vcmpps_7, offset _m256vcmpps_8, offset _m256vcmpps_9, \
								offset _m256vcmpps_10, offset _m256vcmpps_11, offset _m256vcmpps_12, offset _m256vcmpps_13, offset _m256vcmpps_14, \
								offset _m256vcmpps_15, offset _m256vcmpps_16, offset _m256vcmpps_17, offset _m256vcmpps_18, offset _m256vcmpps_19, \
								offset _m256vcmpps_20, offset _m256vcmpps_21, offset _m256vcmpps_22, offset _m256vcmpps_23, offset _m256vcmpps_24, \
								offset _m256vcmpps_25, offset _m256vcmpps_26, offset _m256vcmpps_27, offset _m256vcmpps_28, offset _m256vcmpps_29, \
								offset _m256vcmpps_30, offset _m256vcmpps_31

	uXalignsize_t
	_m256vcmppdjmptable isize_t	offset _m256vcmppd_0, offset _m256vcmppd_1, offset _m256vcmppd_2, offset _m256vcmppd_3, offset _m256vcmppd_4, \
								offset _m256vcmppd_5, offset _m256vcmppd_6, offset _m256vcmppd_7, offset _m256vcmppd_8, offset _m256vcmppd_9, \
								offset _m256vcmppd_10, offset _m256vcmppd_11, offset _m256vcmppd_12, offset _m256vcmppd_13, offset _m256vcmppd_14, \
								offset _m256vcmppd_15, offset _m256vcmppd_16, offset _m256vcmppd_17, offset _m256vcmppd_18, offset _m256vcmppd_19, \
								offset _m256vcmppd_20, offset _m256vcmppd_21, offset _m256vcmppd_22, offset _m256vcmppd_23, offset _m256vcmppd_24, \
								offset _m256vcmppd_25, offset _m256vcmppd_26, offset _m256vcmppd_27, offset _m256vcmppd_28, offset _m256vcmppd_29, \
								offset _m256vcmppd_30, offset _m256vcmppd_31

uXalignymmFPopt
uXveccallopt

	.code
	
;******************
; Externs
;******************
	;extern uXveccall _uX_intrin_CPUFeatures:proc
	
;******************
; FP, arithmetic
;******************

uXfuncstart _uX_mm256_dp_ps_0, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			0
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_1, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_2, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			2
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_3, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			3
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_4, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			4
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_5, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			5
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_6, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			6
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_7, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			7
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_8, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			8
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_9, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			9
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_10, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			10
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_11, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			11
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_12, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			12
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_13, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			13
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_14, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			14
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_15, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			15
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_16, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			16
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_17, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			17
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_18, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			18
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_19, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			19
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_20, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			20
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_21, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			21
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_22, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			22
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_23, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			23
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_24, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			24
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_25, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			25
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_26, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			26
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_27, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			27
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_28, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			28
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_29, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			29
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_30, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			30
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_31, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			31
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_32, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			32
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_33, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			33
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_34, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			34
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_35, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			35
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_36, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			36
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_37, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			37
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_38, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			38
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_39, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			39
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_40, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			40
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_41, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			41
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_42, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			42
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_43, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			43
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_44, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			44
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_45, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			45
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_46, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			46
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_47, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			47
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_48, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			48
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_49, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			49
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_50, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			50
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_51, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			51
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_52, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			52
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_53, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			53
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_54, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			54
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_55, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			55
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_56, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			56
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_57, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			57
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_58, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			58
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_59, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			59
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_60, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			60
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_61, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			61
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_62, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			62
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_63, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			63
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_64, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			64
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_65, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			65
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_66, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			66
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_67, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			67
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_68, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			68
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_69, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			69
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_70, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			70
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_71, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			71
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_72, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			72
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_73, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			73
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_74, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			74
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_75, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			75
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_76, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			76
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_77, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			77
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_78, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			78
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_79, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			79
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_80, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			80
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_81, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			81
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_82, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			82
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_83, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			83
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_84, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			84
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_85, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			85
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_86, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			86
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_87, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			87
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_88, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			88
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_89, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			89
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_90, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			90
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_91, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			91
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_92, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			92
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_93, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			93
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_94, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			94
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_95, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			95
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_96, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			96
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_97, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			97
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_98, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			98
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_99, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			99
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_100, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			100
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_101, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			101
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_102, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			102
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_103, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			103
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_104, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			104
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_105, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			105
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_106, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			106
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_107, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			107
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_108, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			108
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_109, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			109
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_110, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			110
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_111, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			111
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_112, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			112
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_113, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			113
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_114, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			114
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_115, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			115
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_116, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			116
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_117, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			117
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_118, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			118
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_119, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			119
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_120, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			120
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_121, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			121
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_122, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			122
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_123, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			123
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_124, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			124
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_125, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			125
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_126, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			126
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_127, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			127
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_128, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			128
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_129, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			129
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_130, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			130
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_131, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			131
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_132, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			132
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_133, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			133
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_134, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			134
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_135, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			135
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_136, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			136
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_137, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			137
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_138, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			138
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_139, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			139
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_140, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			140
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_141, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			141
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_142, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			142
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_143, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			143
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_144, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			144
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_145, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			145
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_146, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B) 
			vdpps				ymm0,			ymm0,			ymm1,			146
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_147, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			147
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_148, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			148
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_149, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			149
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_150, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			150
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_151, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			151
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_152, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			152
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_153, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			153
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_154, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B) 
			vdpps				ymm0,			ymm0,			ymm1,			154
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_155, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			155
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_156, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			156
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_157, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			157
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_158, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			158
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_159, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			159
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_160, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			160
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_161, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			161
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_162, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			162
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_163, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			163
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_164, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			164
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_165, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			165
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_166, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			166
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_167, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			167
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_168, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			168
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_169, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			169
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_170, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			170
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_171, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			171
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_172, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			172
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_173, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			173
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_174, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B) 
			vdpps				ymm0,			ymm0,			ymm1,			174
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_175, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			175
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_176, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			176
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_177, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			177
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_178, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			178
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_179, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			179
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_180, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			180
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_181, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			181
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_182, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			182
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_183, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			183
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_184, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			184
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_185, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			185
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_186, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			186
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_187, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			187
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_188, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			188
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_189, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			189
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_190, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			190
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_191, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			191
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_192, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			192
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_193, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			193
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_194, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			194
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_195, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			195
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_196, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			196
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_197, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			197
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_198, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			198
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_199, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			199
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_200, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			200
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_201, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			201
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_202, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			202
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_203, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			203
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_204, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			204
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_205, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			205
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_206, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			206
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_207, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			207
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_208, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			208
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_209, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			209
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_210, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			210
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_211, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			211
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_212, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			212
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_213, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			213
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_214, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			214
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_215, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			215
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_216, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			216
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_217, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			217
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_218, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			218
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_219, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			219
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_220, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			220
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_221, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			221
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_222, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			222
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_223, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			223
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_224, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			224
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_225, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			225
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_226, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			226
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_227, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			227
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_228, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			228
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_229, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			229
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_230, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			230
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_231, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			231
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_232, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			232
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_233, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			233
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_234, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			234
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_235, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			235
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_236, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			236
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_237, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			237
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_238, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			238
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_239, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			239
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_240, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			240
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_241, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			241
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_242, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			242
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_243, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			243
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_244, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			244
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_245, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			245
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_246, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			246
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_247, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			247
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_248, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			248
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_249, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			249
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_250, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			250
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_251, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			251
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_252, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			252
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_253, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			253
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_254, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			254
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps_255, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdpps				ymm0,			ymm0,			ymm1,			255
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m256vdppsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m256vdppsjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m256vdpps_0 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			0
			ret
		_m256vdpps_1 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			1
			ret
		_m256vdpps_2 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			2
			ret
		_m256vdpps_3 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			3
			ret
		_m256vdpps_4 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			4
			ret
		_m256vdpps_5 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			5
			ret
		_m256vdpps_6 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			6
			ret
		_m256vdpps_7 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			7
			ret
		_m256vdpps_8 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			8
			ret
		_m256vdpps_9 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			9
			ret
		_m256vdpps_10 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			10
			ret
		_m256vdpps_11 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			11
			ret
		_m256vdpps_12 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			12
			ret
		_m256vdpps_13 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			13
			ret
		_m256vdpps_14 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			14
			ret
		_m256vdpps_15 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			15
			ret
		_m256vdpps_16 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			16
			ret
		_m256vdpps_17 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			17
			ret
		_m256vdpps_18 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			18
			ret
		_m256vdpps_19 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			19
			ret
		_m256vdpps_20 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			20
			ret
		_m256vdpps_21 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			21
			ret
		_m256vdpps_22 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			22
			ret
		_m256vdpps_23 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			23
			ret
		_m256vdpps_24 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			24
			ret
		_m256vdpps_25 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			25
			ret
		_m256vdpps_26 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			26
			ret
		_m256vdpps_27 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			27
			ret
		_m256vdpps_28 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			28
			ret
		_m256vdpps_29 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			29
			ret
		_m256vdpps_30 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			30
			ret
		_m256vdpps_31 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			31
			ret
		_m256vdpps_32 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			32
			ret
		_m256vdpps_33 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			33
			ret
		_m256vdpps_34 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			34
			ret
		_m256vdpps_35 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			35
			ret
		_m256vdpps_36 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			36
			ret
		_m256vdpps_37 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			37
			ret
		_m256vdpps_38 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			38
			ret
		_m256vdpps_39 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			39
			ret
		_m256vdpps_40 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			40
			ret
		_m256vdpps_41 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			41
			ret
		_m256vdpps_42 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			42
			ret
		_m256vdpps_43 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			43
			ret
		_m256vdpps_44 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			44
			ret
		_m256vdpps_45 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			45
			ret
		_m256vdpps_46 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			46
			ret
		_m256vdpps_47 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			47
			ret
		_m256vdpps_48 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			48
			ret
		_m256vdpps_49 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			49
			ret
		_m256vdpps_50 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			50
			ret
		_m256vdpps_51 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			51
			ret
		_m256vdpps_52 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			52
			ret
		_m256vdpps_53 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			53
			ret
		_m256vdpps_54 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			54
			ret
		_m256vdpps_55 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			55
			ret
		_m256vdpps_56 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			56
			ret
		_m256vdpps_57 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			57
			ret
		_m256vdpps_58 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			58
			ret
		_m256vdpps_59 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			59
			ret
		_m256vdpps_60 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			60
			ret
		_m256vdpps_61 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			61
			ret
		_m256vdpps_62 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			62
			ret
		_m256vdpps_63 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			63
			ret
		_m256vdpps_64 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			64
			ret
		_m256vdpps_65 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			65
			ret
		_m256vdpps_66 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			66
			ret
		_m256vdpps_67 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			67
			ret
		_m256vdpps_68 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			68
			ret
		_m256vdpps_69 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			69
			ret
		_m256vdpps_70 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			70
			ret
		_m256vdpps_71 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			71
			ret
		_m256vdpps_72 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			72
			ret
		_m256vdpps_73 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			73
			ret
		_m256vdpps_74 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			74
			ret
		_m256vdpps_75 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			75
			ret
		_m256vdpps_76 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			76
			ret
		_m256vdpps_77 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			77
			ret
		_m256vdpps_78 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			78
			ret
		_m256vdpps_79 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			79
			ret
		_m256vdpps_80 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			80
			ret
		_m256vdpps_81 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			81
			ret
		_m256vdpps_82 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			82
			ret
		_m256vdpps_83 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			83
			ret
		_m256vdpps_84 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			84
			ret
		_m256vdpps_85 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			85
			ret
		_m256vdpps_86 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			86
			ret
		_m256vdpps_87 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			87
			ret
		_m256vdpps_88 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			88
			ret
		_m256vdpps_89 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			89
			ret
		_m256vdpps_90 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			90
			ret
		_m256vdpps_91 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			91
			ret
		_m256vdpps_92 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			92
			ret
		_m256vdpps_93 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			93
			ret
		_m256vdpps_94 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			94
			ret
		_m256vdpps_95 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			95
			ret
		_m256vdpps_96 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			96
			ret
		_m256vdpps_97 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			97
			ret
		_m256vdpps_98 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			98
			ret
		_m256vdpps_99 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			99
			ret
		_m256vdpps_100 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			100
			ret
		_m256vdpps_101 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			101
			ret
		_m256vdpps_102 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			102
			ret
		_m256vdpps_103 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			103
			ret
		_m256vdpps_104 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			104
			ret
		_m256vdpps_105 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			105
			ret
		_m256vdpps_106 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			106
			ret
		_m256vdpps_107 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			107
			ret
		_m256vdpps_108 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			108
			ret
		_m256vdpps_109 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			109
			ret
		_m256vdpps_110 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			110
			ret
		_m256vdpps_111 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			111
			ret
		_m256vdpps_112 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			112
			ret
		_m256vdpps_113 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			113
			ret
		_m256vdpps_114 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			114
			ret
		_m256vdpps_115 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			115
			ret
		_m256vdpps_116 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			116
			ret
		_m256vdpps_117 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			117
			ret
		_m256vdpps_118 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			118
			ret
		_m256vdpps_119 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			119
			ret
		_m256vdpps_120 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			120
			ret
		_m256vdpps_121 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			121
			ret
		_m256vdpps_122 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			122
			ret
		_m256vdpps_123 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			123
			ret
		_m256vdpps_124 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			124
			ret
		_m256vdpps_125 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			125
			ret
		_m256vdpps_126 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			126
			ret
		_m256vdpps_127 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			127
			ret
		_m256vdpps_128 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			128
			ret
		_m256vdpps_129 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			129
			ret
		_m256vdpps_130 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			130
			ret
		_m256vdpps_131 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			131
			ret
		_m256vdpps_132 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			132
			ret
		_m256vdpps_133 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			133
			ret
		_m256vdpps_134 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			134
			ret
		_m256vdpps_135 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			135
			ret
		_m256vdpps_136 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			136
			ret
		_m256vdpps_137 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			137
			ret
		_m256vdpps_138 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			138
			ret
		_m256vdpps_139 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			139
			ret
		_m256vdpps_140 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			140
			ret
		_m256vdpps_141 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			141
			ret
		_m256vdpps_142 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			142
			ret
		_m256vdpps_143 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			143
			ret
		_m256vdpps_144 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			144
			ret
		_m256vdpps_145 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			145
			ret
		_m256vdpps_146 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			146
			ret
		_m256vdpps_147 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			147
			ret
		_m256vdpps_148 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			148
			ret
		_m256vdpps_149 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			149
			ret
		_m256vdpps_150 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			150
			ret
		_m256vdpps_151 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			151
			ret
		_m256vdpps_152 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			152
			ret
		_m256vdpps_153 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			153
			ret
		_m256vdpps_154 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			154
			ret
		_m256vdpps_155 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			155
			ret
		_m256vdpps_156 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			156
			ret
		_m256vdpps_157 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			157
			ret
		_m256vdpps_158 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			158
			ret
		_m256vdpps_159 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			159
			ret
		_m256vdpps_160 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			160
			ret
		_m256vdpps_161 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			161
			ret
		_m256vdpps_162 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			162
			ret
		_m256vdpps_163 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			163
			ret
		_m256vdpps_164 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			164
			ret
		_m256vdpps_165 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			165
			ret
		_m256vdpps_166 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			166
			ret
		_m256vdpps_167 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			167
			ret
		_m256vdpps_168 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			168
			ret
		_m256vdpps_169 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			169
			ret
		_m256vdpps_170 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			170
			ret
		_m256vdpps_171 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			171
			ret
		_m256vdpps_172 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			172
			ret
		_m256vdpps_173 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			173
			ret
		_m256vdpps_174 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			174
			ret
		_m256vdpps_175 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			175
			ret
		_m256vdpps_176 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			176
			ret
		_m256vdpps_177 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			177
			ret
		_m256vdpps_178 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			178
			ret
		_m256vdpps_179 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			179
			ret
		_m256vdpps_180 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			180
			ret
		_m256vdpps_181 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			181
			ret
		_m256vdpps_182 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			182
			ret
		_m256vdpps_183 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			183
			ret
		_m256vdpps_184 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			184
			ret
		_m256vdpps_185 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			185
			ret
		_m256vdpps_186 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			186
			ret
		_m256vdpps_187 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			187
			ret
		_m256vdpps_188 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			188
			ret
		_m256vdpps_189 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			189
			ret
		_m256vdpps_190 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			190
			ret
		_m256vdpps_191 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			191
			ret
		_m256vdpps_192 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			192
			ret
		_m256vdpps_193 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			193
			ret
		_m256vdpps_194 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			194
			ret
		_m256vdpps_195 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			195
			ret
		_m256vdpps_196 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			196
			ret
		_m256vdpps_197 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			197
			ret
		_m256vdpps_198 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			198
			ret
		_m256vdpps_199 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			199
			ret
		_m256vdpps_200 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			200
			ret
		_m256vdpps_201 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			201
			ret
		_m256vdpps_202 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			202
			ret
		_m256vdpps_203 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			203
			ret
		_m256vdpps_204 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			204
			ret
		_m256vdpps_205 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			205
			ret
		_m256vdpps_206 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			206
			ret
		_m256vdpps_207 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			207
			ret
		_m256vdpps_208 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			208
			ret
		_m256vdpps_209 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			209
			ret
		_m256vdpps_210 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			210
			ret
		_m256vdpps_211 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			211
			ret
		_m256vdpps_212 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			212
			ret
		_m256vdpps_213 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			213
			ret
		_m256vdpps_214 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			214
			ret
		_m256vdpps_215 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			215
			ret
		_m256vdpps_216 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			216
			ret
		_m256vdpps_217 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			217
			ret
		_m256vdpps_218 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			218
			ret
		_m256vdpps_219 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			219
			ret
		_m256vdpps_220 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			220
			ret
		_m256vdpps_221 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			221
			ret
		_m256vdpps_222 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			222
			ret
		_m256vdpps_223 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			223
			ret
		_m256vdpps_224 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			224
			ret
		_m256vdpps_225 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			225
			ret
		_m256vdpps_226 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			226
			ret
		_m256vdpps_227 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			227
			ret
		_m256vdpps_228 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			228
			ret
		_m256vdpps_229 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			229
			ret
		_m256vdpps_230 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			230
			ret
		_m256vdpps_231 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			231
			ret
		_m256vdpps_232 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			232
			ret
		_m256vdpps_233 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			233
			ret
		_m256vdpps_234 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			234
			ret
		_m256vdpps_235 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			235
			ret
		_m256vdpps_236 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			236
			ret
		_m256vdpps_237 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			237
			ret
		_m256vdpps_238 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			238
			ret
		_m256vdpps_239 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			239
			ret
		_m256vdpps_240 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			240
			ret
		_m256vdpps_241 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			241
			ret
		_m256vdpps_242 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			242
			ret
		_m256vdpps_243 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			243
			ret
		_m256vdpps_244 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			244
			ret
		_m256vdpps_245 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			245
			ret
		_m256vdpps_246 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			246
			ret
		_m256vdpps_247 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			247
			ret
		_m256vdpps_248 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			248
			ret
		_m256vdpps_249 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			249
			ret
		_m256vdpps_250 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			250
			ret
		_m256vdpps_251 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			251
			ret
		_m256vdpps_252 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			252
			ret
		_m256vdpps_253 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			253
			ret
		_m256vdpps_254 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			254
			ret
		_m256vdpps_255 label size_t
			vdpps				ymm0,			ymm0,			ymm1,			255
			ret
		;.endif
		
uXfuncend

uXfuncstart _uX_mm256_round_ps_0, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			0
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_1, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_2, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			2
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_3, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			3
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_4, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			4
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_5, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			5
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_6, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			6
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_7, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			7
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_8, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			8
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_9, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			9
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_10, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			10
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_11, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			11
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps_12, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			12
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ps, ymmword, < >, ymmwordparam1(Inymm_A), Inint_RoundMode:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m256vroundpsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m256vroundpsjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m256vroundps_0 label size_t
			vroundps 			ymm0, 			ymm0,			0
			ret
		_m256vroundps_1 label size_t
			vroundps 			ymm0, 			ymm0,			1
			ret
		_m256vroundps_2 label size_t
			vroundps 			ymm0, 			ymm0,			2
			ret
		_m256vroundps_3 label size_t
			vroundps 			ymm0, 			ymm0,			3
			ret
		_m256vroundps_4 label size_t
			vroundps 			ymm0, 			ymm0,			4
			ret
		_m256vroundps_5 label size_t
			vroundps 			ymm0, 			ymm0,			5
			ret
		_m256vroundps_6 label size_t
			vroundps 			ymm0, 			ymm0,			6
			ret
		_m256vroundps_7 label size_t
			vroundps 			ymm0, 			ymm0,			7
			ret
		_m256vroundps_8 label size_t
			vroundps 			ymm0, 			ymm0,			8
			ret
		_m256vroundps_9 label size_t
			vroundps 			ymm0, 			ymm0,			9
			ret
		_m256vroundps_10 label size_t
			vroundps 			ymm0, 			ymm0,			10
			ret
		_m256vroundps_11 label size_t
			vroundps 			ymm0, 			ymm0,			11
			ret
		_m256vroundps_12 label size_t
			vroundps 			ymm0, 			ymm0,			12
			ret
		;.endif

uXfuncend

uXfuncstart _uX_mm256_round_ss_0, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			0
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_1, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_2, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			2
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_3, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			3
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_4, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			4
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_5, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			5
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_6, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			6
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_7, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			7
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_8, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			8
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_9, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			9
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_10, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			10
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_11, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			11
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss_12, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			12
			ret
uXfuncend

uXfuncstart _uX_mm256_round_ss, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam1(Inymm_B), Inint_RoundMode:dword

		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m256vroundssjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m256vroundssjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m256vroundss_0 label size_t
			vroundss 			ymm0, 			ymm1,			0
			ret
		_m256vroundss_1 label size_t
			vroundss 			ymm0, 			ymm1,			1
			ret
		_m256vroundss_2 label size_t
			vroundss 			ymm0, 			ymm1,			2
			ret
		_m256vroundss_3 label size_t
			vroundss 			ymm0, 			ymm1,			3
			ret
		_m256vroundss_4 label size_t
			vroundss 			ymm0, 			ymm1,			4
			ret
		_m256vroundss_5 label size_t
			vroundss 			ymm0, 			ymm1,			5
			ret
		_m256vroundss_6 label size_t
			vroundss 			ymm0, 			ymm1,			6
			ret
		_m256vroundss_7 label size_t
			vroundss 			ymm0, 			ymm1,			7
			ret
		_m256vroundss_8 label size_t
			vroundss 			ymm0, 			ymm1,			8
			ret
		_m256vroundss_9 label size_t
			vroundss 			ymm0, 			ymm1,			9
			ret
		_m256vroundss_10 label size_t
			vroundss 			ymm0, 			ymm1,			10
			ret
		_m256vroundss_11 label size_t
			vroundss 			ymm0, 			ymm1,			11
			ret
		_m256vroundss_12 label size_t
			vroundss 			ymm0, 			ymm1,			12
			ret
		;.endif

uXfuncend

uXfuncstart _uX_mm256_floor_ps, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_ceil_ps, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundps 			ymm0, 			ymm0,			2
			ret
uXfuncend

uXfuncstart _uX_mm256_floor_ss, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_ceil_ss, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundss 			ymm0, 			ymm1,			2
			ret
uXfuncend

;******************
; DP, arithmetic
;******************

uXfuncstart _uX_mm256_dp_pd_0, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			0
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_1, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_2, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			2
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_3, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			3
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_4, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			4
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_5, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			5
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_6, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			6
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_7, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			7
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_8, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			8
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_9, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			9
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_10, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			10
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_11, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			11
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_12, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			12
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_13, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			13
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_14, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			14
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_15, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			15
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_16, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			16
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_17, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			17
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_18, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			18
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_19, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			19
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_20, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			20
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_21, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			21
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_22, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			22
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_23, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			23
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_24, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			24
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_25, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			25
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_26, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			26
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_27, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			27
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_28, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			28
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_29, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			29
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_30, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			30
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_31, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			31
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_32, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			32
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_33, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			33
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_34, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			34
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_35, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			35
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_36, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			36
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_37, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			37
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_38, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			38
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_39, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			39
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_40, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			40
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_41, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			41
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_42, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			42
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_43, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			43
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_44, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			44
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_45, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			45
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_46, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			46
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_47, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			47
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_48, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			48
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_49, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			49
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_50, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			50
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_51, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			51
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_52, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			52
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_53, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			53
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_54, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			54
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_55, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			55
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_56, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			56
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_57, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			57
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_58, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			58
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_59, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			59
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_60, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			60
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_61, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			61
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_62, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			62
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_63, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			63
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_64, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			64
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_65, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			65
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_66, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			66
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_67, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			67
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_68, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			68
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_69, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			69
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_70, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			70
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_71, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			71
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_72, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			72
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_73, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			73
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_74, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			74
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_75, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			75
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_76, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			76
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_77, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			77
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_78, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			78
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_79, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			79
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_80, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			80
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_81, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			81
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_82, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			82
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_83, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			83
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_84, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			84
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_85, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			85
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_86, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			86
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_87, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			87
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_88, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			88
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_89, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			89
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_90, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			90
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_91, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			91
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_92, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			92
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_93, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			93
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_94, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			94
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_95, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			95
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_96, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			96
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_97, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			97
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_98, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			98
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_99, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			99
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_100, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			100
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_101, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			101
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_102, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			102
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_103, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			103
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_104, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			104
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_105, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			105
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_106, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			106
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_107, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			107
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_108, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			108
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_109, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			109
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_110, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			110
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_111, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			111
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_112, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			112
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_113, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			113
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_114, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			114
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_115, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			115
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_116, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			116
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_117, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			117
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_118, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			118
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_119, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			119
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_120, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			120
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_121, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			121
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_122, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			122
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_123, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			123
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_124, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			124
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_125, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			125
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_126, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			126
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_127, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			127
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_128, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			128
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_129, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			129
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_130, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			130
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_131, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			131
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_132, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			132
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_133, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			133
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_134, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			134
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_135, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			135
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_136, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			136
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_137, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			137
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_138, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			138
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_139, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			139
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_140, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			140
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_141, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			141
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_142, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			142
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_143, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			143
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_144, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			144
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_145, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			145
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_146, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B) 
			vdppd				ymm0,			ymm0,			ymm1,			146
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_147, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			147
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_148, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			148
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_149, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			149
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_150, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			150
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_151, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			151
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_152, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			152
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_153, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			153
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_154, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B) 
			vdppd				ymm0,			ymm0,			ymm1,			154
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_155, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			155
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_156, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			156
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_157, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			157
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_158, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			158
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_159, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			159
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_160, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			160
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_161, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			161
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_162, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			162
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_163, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			163
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_164, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			164
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_165, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			165
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_166, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			166
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_167, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			167
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_168, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			168
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_169, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			169
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_170, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			170
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_171, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			171
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_172, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			172
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_173, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			173
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_174, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B) 
			vdppd				ymm0,			ymm0,			ymm1,			174
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_175, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			175
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_176, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			176
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_177, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			177
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_178, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			178
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_179, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			179
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_180, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			180
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_181, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			181
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_182, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			182
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_183, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			183
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_184, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			184
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_185, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			185
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_186, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			186
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_187, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			187
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_188, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			188
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_189, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			189
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_190, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			190
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_191, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			191
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_192, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			192
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_193, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			193
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_194, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			194
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_195, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			195
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_196, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			196
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_197, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			197
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_198, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			198
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_199, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			199
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_200, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			200
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_201, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			201
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_202, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			202
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_203, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			203
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_204, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			204
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_205, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			205
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_206, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			206
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_207, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			207
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_208, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			208
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_209, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			209
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_210, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			210
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_211, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			211
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_212, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			212
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_213, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			213
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_214, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			214
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_215, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			215
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_216, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			216
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_217, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			217
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_218, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			218
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_219, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			219
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_220, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			220
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_221, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			221
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_222, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			222
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_223, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			223
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_224, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			224
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_225, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			225
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_226, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			226
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_227, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			227
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_228, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			228
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_229, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			229
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_230, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			230
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_231, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			231
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_232, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			232
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_233, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			233
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_234, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			234
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_235, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			235
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_236, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			236
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_237, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			237
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_238, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			238
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_239, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			239
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_240, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			240
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_241, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			241
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_242, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			242
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_243, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			243
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_244, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			244
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_245, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			245
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_246, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			246
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_247, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			247
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_248, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			248
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_249, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			249
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_250, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			250
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_251, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			251
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_252, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			252
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_253, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			253
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_254, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			254
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd_255, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vdppd				ymm0,			ymm0,			ymm1,			255
			ret
uXfuncend

uXfuncstart _uX_mm256_dp_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m256vdppdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m256vdppdjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m256vdppd_0 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			0
			ret
		_m256vdppd_1 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			1
			ret
		_m256vdppd_2 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			2
			ret
		_m256vdppd_3 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			3
			ret
		_m256vdppd_4 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			4
			ret
		_m256vdppd_5 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			5
			ret
		_m256vdppd_6 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			6
			ret
		_m256vdppd_7 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			7
			ret
		_m256vdppd_8 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			8
			ret
		_m256vdppd_9 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			9
			ret
		_m256vdppd_10 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			10
			ret
		_m256vdppd_11 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			11
			ret
		_m256vdppd_12 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			12
			ret
		_m256vdppd_13 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			13
			ret
		_m256vdppd_14 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			14
			ret
		_m256vdppd_15 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			15
			ret
		_m256vdppd_16 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			16
			ret
		_m256vdppd_17 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			17
			ret
		_m256vdppd_18 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			18
			ret
		_m256vdppd_19 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			19
			ret
		_m256vdppd_20 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			20
			ret
		_m256vdppd_21 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			21
			ret
		_m256vdppd_22 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			22
			ret
		_m256vdppd_23 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			23
			ret
		_m256vdppd_24 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			24
			ret
		_m256vdppd_25 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			25
			ret
		_m256vdppd_26 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			26
			ret
		_m256vdppd_27 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			27
			ret
		_m256vdppd_28 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			28
			ret
		_m256vdppd_29 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			29
			ret
		_m256vdppd_30 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			30
			ret
		_m256vdppd_31 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			31
			ret
		_m256vdppd_32 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			32
			ret
		_m256vdppd_33 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			33
			ret
		_m256vdppd_34 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			34
			ret
		_m256vdppd_35 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			35
			ret
		_m256vdppd_36 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			36
			ret
		_m256vdppd_37 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			37
			ret
		_m256vdppd_38 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			38
			ret
		_m256vdppd_39 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			39
			ret
		_m256vdppd_40 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			40
			ret
		_m256vdppd_41 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			41
			ret
		_m256vdppd_42 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			42
			ret
		_m256vdppd_43 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			43
			ret
		_m256vdppd_44 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			44
			ret
		_m256vdppd_45 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			45
			ret
		_m256vdppd_46 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			46
			ret
		_m256vdppd_47 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			47
			ret
		_m256vdppd_48 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			48
			ret
		_m256vdppd_49 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			49
			ret
		_m256vdppd_50 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			50
			ret
		_m256vdppd_51 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			51
			ret
		_m256vdppd_52 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			52
			ret
		_m256vdppd_53 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			53
			ret
		_m256vdppd_54 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			54
			ret
		_m256vdppd_55 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			55
			ret
		_m256vdppd_56 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			56
			ret
		_m256vdppd_57 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			57
			ret
		_m256vdppd_58 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			58
			ret
		_m256vdppd_59 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			59
			ret
		_m256vdppd_60 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			60
			ret
		_m256vdppd_61 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			61
			ret
		_m256vdppd_62 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			62
			ret
		_m256vdppd_63 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			63
			ret
		_m256vdppd_64 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			64
			ret
		_m256vdppd_65 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			65
			ret
		_m256vdppd_66 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			66
			ret
		_m256vdppd_67 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			67
			ret
		_m256vdppd_68 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			68
			ret
		_m256vdppd_69 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			69
			ret
		_m256vdppd_70 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			70
			ret
		_m256vdppd_71 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			71
			ret
		_m256vdppd_72 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			72
			ret
		_m256vdppd_73 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			73
			ret
		_m256vdppd_74 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			74
			ret
		_m256vdppd_75 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			75
			ret
		_m256vdppd_76 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			76
			ret
		_m256vdppd_77 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			77
			ret
		_m256vdppd_78 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			78
			ret
		_m256vdppd_79 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			79
			ret
		_m256vdppd_80 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			80
			ret
		_m256vdppd_81 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			81
			ret
		_m256vdppd_82 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			82
			ret
		_m256vdppd_83 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			83
			ret
		_m256vdppd_84 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			84
			ret
		_m256vdppd_85 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			85
			ret
		_m256vdppd_86 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			86
			ret
		_m256vdppd_87 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			87
			ret
		_m256vdppd_88 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			88
			ret
		_m256vdppd_89 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			89
			ret
		_m256vdppd_90 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			90
			ret
		_m256vdppd_91 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			91
			ret
		_m256vdppd_92 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			92
			ret
		_m256vdppd_93 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			93
			ret
		_m256vdppd_94 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			94
			ret
		_m256vdppd_95 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			95
			ret
		_m256vdppd_96 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			96
			ret
		_m256vdppd_97 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			97
			ret
		_m256vdppd_98 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			98
			ret
		_m256vdppd_99 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			99
			ret
		_m256vdppd_100 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			100
			ret
		_m256vdppd_101 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			101
			ret
		_m256vdppd_102 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			102
			ret
		_m256vdppd_103 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			103
			ret
		_m256vdppd_104 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			104
			ret
		_m256vdppd_105 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			105
			ret
		_m256vdppd_106 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			106
			ret
		_m256vdppd_107 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			107
			ret
		_m256vdppd_108 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			108
			ret
		_m256vdppd_109 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			109
			ret
		_m256vdppd_110 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			110
			ret
		_m256vdppd_111 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			111
			ret
		_m256vdppd_112 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			112
			ret
		_m256vdppd_113 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			113
			ret
		_m256vdppd_114 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			114
			ret
		_m256vdppd_115 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			115
			ret
		_m256vdppd_116 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			116
			ret
		_m256vdppd_117 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			117
			ret
		_m256vdppd_118 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			118
			ret
		_m256vdppd_119 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			119
			ret
		_m256vdppd_120 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			120
			ret
		_m256vdppd_121 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			121
			ret
		_m256vdppd_122 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			122
			ret
		_m256vdppd_123 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			123
			ret
		_m256vdppd_124 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			124
			ret
		_m256vdppd_125 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			125
			ret
		_m256vdppd_126 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			126
			ret
		_m256vdppd_127 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			127
			ret
		_m256vdppd_128 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			128
			ret
		_m256vdppd_129 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			129
			ret
		_m256vdppd_130 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			130
			ret
		_m256vdppd_131 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			131
			ret
		_m256vdppd_132 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			132
			ret
		_m256vdppd_133 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			133
			ret
		_m256vdppd_134 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			134
			ret
		_m256vdppd_135 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			135
			ret
		_m256vdppd_136 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			136
			ret
		_m256vdppd_137 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			137
			ret
		_m256vdppd_138 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			138
			ret
		_m256vdppd_139 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			139
			ret
		_m256vdppd_140 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			140
			ret
		_m256vdppd_141 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			141
			ret
		_m256vdppd_142 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			142
			ret
		_m256vdppd_143 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			143
			ret
		_m256vdppd_144 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			144
			ret
		_m256vdppd_145 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			145
			ret
		_m256vdppd_146 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			146
			ret
		_m256vdppd_147 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			147
			ret
		_m256vdppd_148 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			148
			ret
		_m256vdppd_149 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			149
			ret
		_m256vdppd_150 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			150
			ret
		_m256vdppd_151 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			151
			ret
		_m256vdppd_152 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			152
			ret
		_m256vdppd_153 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			153
			ret
		_m256vdppd_154 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			154
			ret
		_m256vdppd_155 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			155
			ret
		_m256vdppd_156 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			156
			ret
		_m256vdppd_157 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			157
			ret
		_m256vdppd_158 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			158
			ret
		_m256vdppd_159 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			159
			ret
		_m256vdppd_160 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			160
			ret
		_m256vdppd_161 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			161
			ret
		_m256vdppd_162 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			162
			ret
		_m256vdppd_163 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			163
			ret
		_m256vdppd_164 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			164
			ret
		_m256vdppd_165 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			165
			ret
		_m256vdppd_166 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			166
			ret
		_m256vdppd_167 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			167
			ret
		_m256vdppd_168 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			168
			ret
		_m256vdppd_169 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			169
			ret
		_m256vdppd_170 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			170
			ret
		_m256vdppd_171 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			171
			ret
		_m256vdppd_172 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			172
			ret
		_m256vdppd_173 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			173
			ret
		_m256vdppd_174 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			174
			ret
		_m256vdppd_175 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			175
			ret
		_m256vdppd_176 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			176
			ret
		_m256vdppd_177 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			177
			ret
		_m256vdppd_178 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			178
			ret
		_m256vdppd_179 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			179
			ret
		_m256vdppd_180 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			180
			ret
		_m256vdppd_181 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			181
			ret
		_m256vdppd_182 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			182
			ret
		_m256vdppd_183 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			183
			ret
		_m256vdppd_184 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			184
			ret
		_m256vdppd_185 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			185
			ret
		_m256vdppd_186 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			186
			ret
		_m256vdppd_187 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			187
			ret
		_m256vdppd_188 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			188
			ret
		_m256vdppd_189 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			189
			ret
		_m256vdppd_190 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			190
			ret
		_m256vdppd_191 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			191
			ret
		_m256vdppd_192 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			192
			ret
		_m256vdppd_193 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			193
			ret
		_m256vdppd_194 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			194
			ret
		_m256vdppd_195 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			195
			ret
		_m256vdppd_196 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			196
			ret
		_m256vdppd_197 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			197
			ret
		_m256vdppd_198 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			198
			ret
		_m256vdppd_199 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			199
			ret
		_m256vdppd_200 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			200
			ret
		_m256vdppd_201 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			201
			ret
		_m256vdppd_202 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			202
			ret
		_m256vdppd_203 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			203
			ret
		_m256vdppd_204 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			204
			ret
		_m256vdppd_205 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			205
			ret
		_m256vdppd_206 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			206
			ret
		_m256vdppd_207 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			207
			ret
		_m256vdppd_208 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			208
			ret
		_m256vdppd_209 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			209
			ret
		_m256vdppd_210 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			210
			ret
		_m256vdppd_211 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			211
			ret
		_m256vdppd_212 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			212
			ret
		_m256vdppd_213 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			213
			ret
		_m256vdppd_214 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			214
			ret
		_m256vdppd_215 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			215
			ret
		_m256vdppd_216 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			216
			ret
		_m256vdppd_217 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			217
			ret
		_m256vdppd_218 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			218
			ret
		_m256vdppd_219 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			219
			ret
		_m256vdppd_220 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			220
			ret
		_m256vdppd_221 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			221
			ret
		_m256vdppd_222 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			222
			ret
		_m256vdppd_223 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			223
			ret
		_m256vdppd_224 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			224
			ret
		_m256vdppd_225 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			225
			ret
		_m256vdppd_226 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			226
			ret
		_m256vdppd_227 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			227
			ret
		_m256vdppd_228 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			228
			ret
		_m256vdppd_229 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			229
			ret
		_m256vdppd_230 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			230
			ret
		_m256vdppd_231 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			231
			ret
		_m256vdppd_232 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			232
			ret
		_m256vdppd_233 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			233
			ret
		_m256vdppd_234 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			234
			ret
		_m256vdppd_235 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			235
			ret
		_m256vdppd_236 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			236
			ret
		_m256vdppd_237 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			237
			ret
		_m256vdppd_238 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			238
			ret
		_m256vdppd_239 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			239
			ret
		_m256vdppd_240 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			240
			ret
		_m256vdppd_241 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			241
			ret
		_m256vdppd_242 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			242
			ret
		_m256vdppd_243 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			243
			ret
		_m256vdppd_244 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			244
			ret
		_m256vdppd_245 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			245
			ret
		_m256vdppd_246 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			246
			ret
		_m256vdppd_247 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			247
			ret
		_m256vdppd_248 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			248
			ret
		_m256vdppd_249 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			249
			ret
		_m256vdppd_250 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			250
			ret
		_m256vdppd_251 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			251
			ret
		_m256vdppd_252 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			252
			ret
		_m256vdppd_253 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			253
			ret
		_m256vdppd_254 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			254
			ret
		_m256vdppd_255 label size_t
			vdppd				ymm0,			ymm0,			ymm1,			255
			ret
		;.endif
		
uXfuncend

uXfuncstart _uX_mm256_round_pd_0, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			0
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_1, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_2, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			2
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_3, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			3
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_4, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			4
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_5, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			5
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_6, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			6
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_7, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			7
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_8, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			8
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_9, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			9
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_10, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			10
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_11, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			11
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd_12, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			12
			ret
uXfuncend

uXfuncstart _uX_mm256_round_pd, ymmword, < >, ymmwordparam1(Inymm_A), Inint_RoundMode:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m256vroundpdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m256vroundpdjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m256vroundpd_0 label size_t
			vroundpd 			ymm0, 			ymm0,			0
			ret
		_m256vroundpd_1 label size_t
			vroundpd 			ymm0, 			ymm0,			1
			ret
		_m256vroundpd_2 label size_t
			vroundpd 			ymm0, 			ymm0,			2
			ret
		_m256vroundpd_3 label size_t
			vroundpd 			ymm0, 			ymm0,			3
			ret
		_m256vroundpd_4 label size_t
			vroundpd 			ymm0, 			ymm0,			4
			ret
		_m256vroundpd_5 label size_t
			vroundpd 			ymm0, 			ymm0,			5
			ret
		_m256vroundpd_6 label size_t
			vroundpd 			ymm0, 			ymm0,			6
			ret
		_m256vroundpd_7 label size_t
			vroundpd 			ymm0, 			ymm0,			7
			ret
		_m256vroundpd_8 label size_t
			vroundpd 			ymm0, 			ymm0,			8
			ret
		_m256vroundpd_9 label size_t
			vroundpd 			ymm0, 			ymm0,			9
			ret
		_m256vroundpd_10 label size_t
			vroundpd 			ymm0, 			ymm0,			10
			ret
		_m256vroundpd_11 label size_t
			vroundpd 			ymm0, 			ymm0,			11
			ret
		_m256vroundpd_12 label size_t
			vroundpd 			ymm0, 			ymm0,			12
			ret
		;.endif

uXfuncend

uXfuncstart _uX_mm256_round_sd_0, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			0
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_1, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_2, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			2
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_3, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			3
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_4, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			4
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_5, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			5
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_6, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			6
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_7, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			7
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_8, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			8
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_9, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			9
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_10, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			10
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_11, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			11
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd_12, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			12
			ret
uXfuncend

uXfuncstart _uX_mm256_round_sd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam1(Inymm_B), Inint_RoundMode:dword

		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m256vroundsdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m256vroundsdjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m256vroundsd_0 label size_t
			vroundsd 			ymm0, 			ymm1,			0
			ret
		_m256vroundsd_1 label size_t
			vroundsd 			ymm0, 			ymm1,			1
			ret
		_m256vroundsd_2 label size_t
			vroundsd 			ymm0, 			ymm1,			2
			ret
		_m256vroundsd_3 label size_t
			vroundsd 			ymm0, 			ymm1,			3
			ret
		_m256vroundsd_4 label size_t
			vroundsd 			ymm0, 			ymm1,			4
			ret
		_m256vroundsd_5 label size_t
			vroundsd 			ymm0, 			ymm1,			5
			ret
		_m256vroundsd_6 label size_t
			vroundsd 			ymm0, 			ymm1,			6
			ret
		_m256vroundsd_7 label size_t
			vroundsd 			ymm0, 			ymm1,			7
			ret
		_m256vroundsd_8 label size_t
			vroundsd 			ymm0, 			ymm1,			8
			ret
		_m256vroundsd_9 label size_t
			vroundsd 			ymm0, 			ymm1,			9
			ret
		_m256vroundsd_10 label size_t
			vroundsd 			ymm0, 			ymm1,			10
			ret
		_m256vroundsd_11 label size_t
			vroundsd 			ymm0, 			ymm1,			11
			ret
		_m256vroundsd_12 label size_t
			vroundsd 			ymm0, 			ymm1,			12
			ret
		;.endif

uXfuncend

uXfuncstart _uX_mm256_floor_pd, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_ceil_pd, ymmword, < >, ymmwordparam1(Inymm_A)
			vroundpd 			ymm0, 			ymm0,			2
			ret
uXfuncend

uXfuncstart _uX_mm256_floor_sd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_ceil_sd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)
			vroundsd 			ymm0, 			ymm1,			2
			ret
uXfuncend

;******************
; FP, comparison
;******************
uXfuncstart _uX_mm256_cmp_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m256vcmppsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m256vcmppsjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m256vcmpps_0 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			0
			ret
		_m256vcmpps_1 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			1
			ret
		_m256vcmpps_2 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			2
			ret
		_m256vcmpps_3 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			3
			ret
		_m256vcmpps_4 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			4
			ret
		_m256vcmpps_5 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			5
			ret
		_m256vcmpps_6 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			6
			ret
		_m256vcmpps_7 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			7
			ret
		_m256vcmpps_8 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			8
			ret
		_m256vcmpps_9 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			9
			ret
		_m256vcmpps_10 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			10
			ret
		_m256vcmpps_11 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			11
			ret
		_m256vcmpps_12 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			12
			ret
		_m256vcmpps_13 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			13
			ret
		_m256vcmpps_14 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			14
			ret
		_m256vcmpps_15 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			15
			ret
		_m256vcmpps_16 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			16
			ret
		_m256vcmpps_17 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			17
			ret
		_m256vcmpps_18 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			18
			ret
		_m256vcmpps_19 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			19
			ret
		_m256vcmpps_20 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			20
			ret
		_m256vcmpps_21 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			21
			ret
		_m256vcmpps_22 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			22
			ret
		_m256vcmpps_23 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			23
			ret
		_m256vcmpps_24 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			24
			ret
		_m256vcmpps_25 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			25
			ret
		_m256vcmpps_26 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			26
			ret
		_m256vcmpps_27 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			27
			ret
		_m256vcmpps_28 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			28
			ret
		_m256vcmpps_29 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			29
			ret
		_m256vcmpps_30 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			30
			ret
		_m256vcmpps_31 label size_t
			vcmpps				ymm0,			ymm0,			ymm1,			31
			ret
		;.endif
		
uXfuncend

uXfuncstart _uX_mm256_cmpeqoq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			0
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpltos_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpleos_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			2
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpunordq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			3
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnequq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			4
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnltus_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			5
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnleus_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			6
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpordq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			7
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpequq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			8
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpngeus_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			9
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpngtus_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			10
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpfalseoq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			11
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpneqoq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			12
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpgeos_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			13
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpgtos_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			14
			ret
uXfuncend

uXfuncstart _uX_mm256_cmptrueuq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			15
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpeqos_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			16
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpltoq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			17
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpleoq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			18
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpunords_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			19
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnequs_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			20
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnltuq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			21
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnleuq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			22
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpords_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			23
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpequs_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			24
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpngeuq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			25
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpngtuq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			26
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpfalseos_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			27
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpneqos_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			28
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpgeoq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			29
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpgtoq_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			30
			ret
uXfuncend

uXfuncstart _uX_mm256_cmptrueus_ps, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmpps				ymm0,			ymm0,			ymm1,			31
			ret
uXfuncend

;******************
; DP, comparison
;******************
uXfuncstart _uX_mm256_cmp_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m256vcmppdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m256vcmppdjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m256vcmppd_0 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			0
			ret
		_m256vcmppd_1 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			1
			ret
		_m256vcmppd_2 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			2
			ret
		_m256vcmppd_3 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			3
			ret
		_m256vcmppd_4 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			4
			ret
		_m256vcmppd_5 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			5
			ret
		_m256vcmppd_6 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			6
			ret
		_m256vcmppd_7 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			7
			ret
		_m256vcmppd_8 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			8
			ret
		_m256vcmppd_9 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			9
			ret
		_m256vcmppd_10 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			10
			ret
		_m256vcmppd_11 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			11
			ret
		_m256vcmppd_12 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			12
			ret
		_m256vcmppd_13 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			13
			ret
		_m256vcmppd_14 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			14
			ret
		_m256vcmppd_15 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			15
			ret
		_m256vcmppd_16 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			16
			ret
		_m256vcmppd_17 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			17
			ret
		_m256vcmppd_18 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			18
			ret
		_m256vcmppd_19 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			19
			ret
		_m256vcmppd_20 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			20
			ret
		_m256vcmppd_21 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			21
			ret
		_m256vcmppd_22 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			22
			ret
		_m256vcmppd_23 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			23
			ret
		_m256vcmppd_24 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			24
			ret
		_m256vcmppd_25 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			25
			ret
		_m256vcmppd_26 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			26
			ret
		_m256vcmppd_27 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			27
			ret
		_m256vcmppd_28 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			28
			ret
		_m256vcmppd_29 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			29
			ret
		_m256vcmppd_30 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			30
			ret
		_m256vcmppd_31 label size_t
			vcmppd				ymm0,			ymm0,			ymm1,			31
			ret
		;.endif
		
uXfuncend

uXfuncstart _uX_mm256_cmpeqoq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			0
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpltos_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpleos_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			2
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpunordq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			3
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnequq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			4
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnltus_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			5
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnleus_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			6
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpordq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			7
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpequq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			8
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpngeus_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			9
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpngtus_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			10
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpfalseoq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			11
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpneqoq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			12
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpgeos_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			13
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpgtos_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			14
			ret
uXfuncend

uXfuncstart _uX_mm256_cmptrueuq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			15
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpeqos_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			16
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpltoq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			17
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpleoq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			18
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpunords_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			19
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnequs_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			20
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnltuq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			21
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpnleuq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			22
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpords_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			23
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpequs_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			24
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpngeuq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			25
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpngtuq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			26
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpfalseos_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			27
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpneqos_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			28
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpgeoq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			29
			ret
uXfuncend

uXfuncstart _uX_mm256_cmpgtoq_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			30
			ret
uXfuncend

uXfuncstart _uX_mm256_cmptrueus_pd, ymmword, < >, ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B), _Imm8:dword
			vcmppd				ymm0,			ymm0,			ymm1,			31
			ret
uXfuncend

endif ;__MIC__

	end
