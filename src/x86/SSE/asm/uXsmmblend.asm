
	include uXx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXsseintrin.inc
	
	.data?

	.data

	.const
	
	alignsize_t
	_m128iblendepi16jmptable isize_t	offset _m128iblendepi16_0, offset _m128iblendepi16_1, offset _m128iblendepi16_2, offset _m128iblendepi16_3, offset _m128iblendepi16_4, \
										offset _m128iblendepi16_5, offset _m128iblendepi16_6, offset _m128iblendepi16_7, offset _m128iblendepi16_8, offset _m128iblendepi16_9, \
										offset _m128iblendepi16_10, offset _m128iblendepi16_11, offset _m128iblendepi16_12, offset _m128iblendepi16_13, offset _m128iblendepi16_14, \
										offset _m128iblendepi16_15, offset _m128iblendepi16_16, offset _m128iblendepi16_17, offset _m128iblendepi16_18, offset _m128iblendepi16_19, \
										offset _m128iblendepi16_20, offset _m128iblendepi16_21, offset _m128iblendepi16_22, offset _m128iblendepi16_23, offset _m128iblendepi16_24, \
										offset _m128iblendepi16_25, offset _m128iblendepi16_26, offset _m128iblendepi16_27, offset _m128iblendepi16_28, offset _m128iblendepi16_29, \
										offset _m128iblendepi16_30, offset _m128iblendepi16_31, offset _m128iblendepi16_32, offset _m128iblendepi16_33, offset _m128iblendepi16_34, \
										offset _m128iblendepi16_35, offset _m128iblendepi16_36, offset _m128iblendepi16_37, offset _m128iblendepi16_38, offset _m128iblendepi16_39, \
										offset _m128iblendepi16_40, offset _m128iblendepi16_41, offset _m128iblendepi16_42, offset _m128iblendepi16_43, offset _m128iblendepi16_44, \
										offset _m128iblendepi16_45, offset _m128iblendepi16_46, offset _m128iblendepi16_47, offset _m128iblendepi16_48, offset _m128iblendepi16_49, \
										offset _m128iblendepi16_50, offset _m128iblendepi16_51, offset _m128iblendepi16_52, offset _m128iblendepi16_53, offset _m128iblendepi16_54, \
										offset _m128iblendepi16_55, offset _m128iblendepi16_56, offset _m128iblendepi16_57, offset _m128iblendepi16_58, offset _m128iblendepi16_59, \
										offset _m128iblendepi16_60, offset _m128iblendepi16_61, offset _m128iblendepi16_62, offset _m128iblendepi16_63, offset _m128iblendepi16_64, \
										offset _m128iblendepi16_65, offset _m128iblendepi16_66, offset _m128iblendepi16_67, offset _m128iblendepi16_68, offset _m128iblendepi16_69, \
										offset _m128iblendepi16_70, offset _m128iblendepi16_71, offset _m128iblendepi16_72, offset _m128iblendepi16_73, offset _m128iblendepi16_74, \
										offset _m128iblendepi16_75, offset _m128iblendepi16_76, offset _m128iblendepi16_77, offset _m128iblendepi16_78, offset _m128iblendepi16_79, \
										offset _m128iblendepi16_80, offset _m128iblendepi16_81, offset _m128iblendepi16_82, offset _m128iblendepi16_83, offset _m128iblendepi16_84, \
										offset _m128iblendepi16_85, offset _m128iblendepi16_86, offset _m128iblendepi16_87, offset _m128iblendepi16_88, offset _m128iblendepi16_89, \
										offset _m128iblendepi16_90, offset _m128iblendepi16_91, offset _m128iblendepi16_92, offset _m128iblendepi16_93, offset _m128iblendepi16_94, \
										offset _m128iblendepi16_95, offset _m128iblendepi16_96, offset _m128iblendepi16_97, offset _m128iblendepi16_98, offset _m128iblendepi16_99, \
										offset _m128iblendepi16_100, offset _m128iblendepi16_101, offset _m128iblendepi16_102, offset _m128iblendepi16_103, offset _m128iblendepi16_104, \
										offset _m128iblendepi16_105, offset _m128iblendepi16_106, offset _m128iblendepi16_107, offset _m128iblendepi16_108, offset _m128iblendepi16_109, \
										offset _m128iblendepi16_110, offset _m128iblendepi16_111, offset _m128iblendepi16_112, offset _m128iblendepi16_113, offset _m128iblendepi16_114, \
										offset _m128iblendepi16_115, offset _m128iblendepi16_116, offset _m128iblendepi16_117, offset _m128iblendepi16_118, offset _m128iblendepi16_119, \
										offset _m128iblendepi16_120, offset _m128iblendepi16_121, offset _m128iblendepi16_122, offset _m128iblendepi16_123, offset _m128iblendepi16_124, \
										offset _m128iblendepi16_125, offset _m128iblendepi16_126, offset _m128iblendepi16_127, offset _m128iblendepi16_128, offset _m128iblendepi16_129, \
										offset _m128iblendepi16_130, offset _m128iblendepi16_131, offset _m128iblendepi16_132, offset _m128iblendepi16_133, offset _m128iblendepi16_134, \
										offset _m128iblendepi16_135, offset _m128iblendepi16_136, offset _m128iblendepi16_137, offset _m128iblendepi16_138, offset _m128iblendepi16_139, \
										offset _m128iblendepi16_140, offset _m128iblendepi16_141, offset _m128iblendepi16_142, offset _m128iblendepi16_143, offset _m128iblendepi16_144, \
										offset _m128iblendepi16_145, offset _m128iblendepi16_146, offset _m128iblendepi16_147, offset _m128iblendepi16_148, offset _m128iblendepi16_149, \
										offset _m128iblendepi16_150, offset _m128iblendepi16_151, offset _m128iblendepi16_152, offset _m128iblendepi16_153, offset _m128iblendepi16_154, \
										offset _m128iblendepi16_155, offset _m128iblendepi16_156, offset _m128iblendepi16_157, offset _m128iblendepi16_158, offset _m128iblendepi16_159, \
										offset _m128iblendepi16_160, offset _m128iblendepi16_161, offset _m128iblendepi16_162, offset _m128iblendepi16_163, offset _m128iblendepi16_164, \
										offset _m128iblendepi16_165, offset _m128iblendepi16_166, offset _m128iblendepi16_167, offset _m128iblendepi16_168, offset _m128iblendepi16_169, \
										offset _m128iblendepi16_170, offset _m128iblendepi16_171, offset _m128iblendepi16_172, offset _m128iblendepi16_173, offset _m128iblendepi16_174, \
										offset _m128iblendepi16_175, offset _m128iblendepi16_176, offset _m128iblendepi16_177, offset _m128iblendepi16_178, offset _m128iblendepi16_179, \
										offset _m128iblendepi16_180, offset _m128iblendepi16_181, offset _m128iblendepi16_182, offset _m128iblendepi16_183, offset _m128iblendepi16_184, \
										offset _m128iblendepi16_185, offset _m128iblendepi16_186, offset _m128iblendepi16_187, offset _m128iblendepi16_188, offset _m128iblendepi16_189, \
										offset _m128iblendepi16_190, offset _m128iblendepi16_191, offset _m128iblendepi16_192, offset _m128iblendepi16_193, offset _m128iblendepi16_194, \
										offset _m128iblendepi16_195, offset _m128iblendepi16_196, offset _m128iblendepi16_197, offset _m128iblendepi16_198, offset _m128iblendepi16_199, \
										offset _m128iblendepi16_200, offset _m128iblendepi16_201, offset _m128iblendepi16_202, offset _m128iblendepi16_203, offset _m128iblendepi16_204, \
										offset _m128iblendepi16_205, offset _m128iblendepi16_206, offset _m128iblendepi16_207, offset _m128iblendepi16_208, offset _m128iblendepi16_209, \
										offset _m128iblendepi16_210, offset _m128iblendepi16_211, offset _m128iblendepi16_212, offset _m128iblendepi16_213, offset _m128iblendepi16_214, \
										offset _m128iblendepi16_215, offset _m128iblendepi16_216, offset _m128iblendepi16_217, offset _m128iblendepi16_218, offset _m128iblendepi16_219, \
										offset _m128iblendepi16_220, offset _m128iblendepi16_221, offset _m128iblendepi16_222, offset _m128iblendepi16_223, offset _m128iblendepi16_224, \
										offset _m128iblendepi16_225, offset _m128iblendepi16_226, offset _m128iblendepi16_227, offset _m128iblendepi16_228, offset _m128iblendepi16_229, \
										offset _m128iblendepi16_230, offset _m128iblendepi16_231, offset _m128iblendepi16_232, offset _m128iblendepi16_233, offset _m128iblendepi16_234, \
										offset _m128iblendepi16_235, offset _m128iblendepi16_236, offset _m128iblendepi16_237, offset _m128iblendepi16_238, offset _m128iblendepi16_239, \
										offset _m128iblendepi16_240, offset _m128iblendepi16_241, offset _m128iblendepi16_242, offset _m128iblendepi16_243, offset _m128iblendepi16_244, \
										offset _m128iblendepi16_245, offset _m128iblendepi16_246, offset _m128iblendepi16_247, offset _m128iblendepi16_248, offset _m128iblendepi16_249, \
										offset _m128iblendepi16_250, offset _m128iblendepi16_251, offset _m128iblendepi16_252, offset _m128iblendepi16_253, offset _m128iblendepi16_254, \
										offset _m128iblendepi16_255
		
	alignsize_t
	_m128blendpsjmptable isize_t	offset _m128blendps_0, offset _m128blendps_1, offset _m128blendps_2, offset _m128blendps_3, offset _m128blendps_4, \
									offset _m128blendps_5, offset _m128blendps_6, offset _m128blendps_7, offset _m128blendps_8, offset _m128blendps_9, \
									offset _m128blendps_10, offset _m128blendps_11, offset _m128blendps_12, offset _m128blendps_13, offset _m128blendps_14, \
									offset _m128blendps_15

	alignsize_t
	_m128dblendpdjmptable isize_t	offset _m128dblendpd_0, offset _m128dblendpd_1, offset _m128dblendpd_2, offset _m128dblendpd_3
	
	alignsize_t
	_m128dppsjmptable isize_t	offset _m128dpps_0, offset _m128dpps_1, offset _m128dpps_2, offset _m128dpps_3, offset _m128dpps_4, \
								offset _m128dpps_5, offset _m128dpps_6, offset _m128dpps_7, offset _m128dpps_8, offset _m128dpps_9, \
								offset _m128dpps_10, offset _m128dpps_11, offset _m128dpps_12, offset _m128dpps_13, offset _m128dpps_14, \
								offset _m128dpps_15, offset _m128dpps_16, offset _m128dpps_17, offset _m128dpps_18, offset _m128dpps_19, \
								offset _m128dpps_20, offset _m128dpps_21, offset _m128dpps_22, offset _m128dpps_23, offset _m128dpps_24, \
								offset _m128dpps_25, offset _m128dpps_26, offset _m128dpps_27, offset _m128dpps_28, offset _m128dpps_29, \
								offset _m128dpps_30, offset _m128dpps_31, offset _m128dpps_32, offset _m128dpps_33, offset _m128dpps_34, \
								offset _m128dpps_35, offset _m128dpps_36, offset _m128dpps_37, offset _m128dpps_38, offset _m128dpps_39, \
								offset _m128dpps_40, offset _m128dpps_41, offset _m128dpps_42, offset _m128dpps_43, offset _m128dpps_44, \
								offset _m128dpps_45, offset _m128dpps_46, offset _m128dpps_47, offset _m128dpps_48, offset _m128dpps_49, \
								offset _m128dpps_50, offset _m128dpps_51, offset _m128dpps_52, offset _m128dpps_53, offset _m128dpps_54, \
								offset _m128dpps_55, offset _m128dpps_56, offset _m128dpps_57, offset _m128dpps_58, offset _m128dpps_59, \
								offset _m128dpps_60, offset _m128dpps_61, offset _m128dpps_62, offset _m128dpps_63, offset _m128dpps_64, \
								offset _m128dpps_65, offset _m128dpps_66, offset _m128dpps_67, offset _m128dpps_68, offset _m128dpps_69, \
								offset _m128dpps_70, offset _m128dpps_71, offset _m128dpps_72, offset _m128dpps_73, offset _m128dpps_74, \
								offset _m128dpps_75, offset _m128dpps_76, offset _m128dpps_77, offset _m128dpps_78, offset _m128dpps_79, \
								offset _m128dpps_80, offset _m128dpps_81, offset _m128dpps_82, offset _m128dpps_83, offset _m128dpps_84, \
								offset _m128dpps_85, offset _m128dpps_86, offset _m128dpps_87, offset _m128dpps_88, offset _m128dpps_89, \
								offset _m128dpps_90, offset _m128dpps_91, offset _m128dpps_92, offset _m128dpps_93, offset _m128dpps_94, \
								offset _m128dpps_95, offset _m128dpps_96, offset _m128dpps_97, offset _m128dpps_98, offset _m128dpps_99, \
								offset _m128dpps_100, offset _m128dpps_101, offset _m128dpps_102, offset _m128dpps_103, offset _m128dpps_104, \
								offset _m128dpps_105, offset _m128dpps_106, offset _m128dpps_107, offset _m128dpps_108, offset _m128dpps_109, \
								offset _m128dpps_110, offset _m128dpps_111, offset _m128dpps_112, offset _m128dpps_113, offset _m128dpps_114, \
								offset _m128dpps_115, offset _m128dpps_116, offset _m128dpps_117, offset _m128dpps_118, offset _m128dpps_119, \
								offset _m128dpps_120, offset _m128dpps_121, offset _m128dpps_122, offset _m128dpps_123, offset _m128dpps_124, \
								offset _m128dpps_125, offset _m128dpps_126, offset _m128dpps_127, offset _m128dpps_128, offset _m128dpps_129, \
								offset _m128dpps_130, offset _m128dpps_131, offset _m128dpps_132, offset _m128dpps_133, offset _m128dpps_134, \
								offset _m128dpps_135, offset _m128dpps_136, offset _m128dpps_137, offset _m128dpps_138, offset _m128dpps_139, \
								offset _m128dpps_140, offset _m128dpps_141, offset _m128dpps_142, offset _m128dpps_143, offset _m128dpps_144, \
								offset _m128dpps_145, offset _m128dpps_146, offset _m128dpps_147, offset _m128dpps_148, offset _m128dpps_149, \
								offset _m128dpps_150, offset _m128dpps_151, offset _m128dpps_152, offset _m128dpps_153, offset _m128dpps_154, \
								offset _m128dpps_155, offset _m128dpps_156, offset _m128dpps_157, offset _m128dpps_158, offset _m128dpps_159, \
								offset _m128dpps_160, offset _m128dpps_161, offset _m128dpps_162, offset _m128dpps_163, offset _m128dpps_164, \
								offset _m128dpps_165, offset _m128dpps_166, offset _m128dpps_167, offset _m128dpps_168, offset _m128dpps_169, \
								offset _m128dpps_170, offset _m128dpps_171, offset _m128dpps_172, offset _m128dpps_173, offset _m128dpps_174, \
								offset _m128dpps_175, offset _m128dpps_176, offset _m128dpps_177, offset _m128dpps_178, offset _m128dpps_179, \
								offset _m128dpps_180, offset _m128dpps_181, offset _m128dpps_182, offset _m128dpps_183, offset _m128dpps_184, \
								offset _m128dpps_185, offset _m128dpps_186, offset _m128dpps_187, offset _m128dpps_188, offset _m128dpps_189, \
								offset _m128dpps_190, offset _m128dpps_191, offset _m128dpps_192, offset _m128dpps_193, offset _m128dpps_194, \
								offset _m128dpps_195, offset _m128dpps_196, offset _m128dpps_197, offset _m128dpps_198, offset _m128dpps_199, \
								offset _m128dpps_200, offset _m128dpps_201, offset _m128dpps_202, offset _m128dpps_203, offset _m128dpps_204, \
								offset _m128dpps_205, offset _m128dpps_206, offset _m128dpps_207, offset _m128dpps_208, offset _m128dpps_209, \
								offset _m128dpps_210, offset _m128dpps_211, offset _m128dpps_212, offset _m128dpps_213, offset _m128dpps_214, \
								offset _m128dpps_215, offset _m128dpps_216, offset _m128dpps_217, offset _m128dpps_218, offset _m128dpps_219, \
								offset _m128dpps_220, offset _m128dpps_221, offset _m128dpps_222, offset _m128dpps_223, offset _m128dpps_224, \
								offset _m128dpps_225, offset _m128dpps_226, offset _m128dpps_227, offset _m128dpps_228, offset _m128dpps_229, \
								offset _m128dpps_230, offset _m128dpps_231, offset _m128dpps_232, offset _m128dpps_233, offset _m128dpps_234, \
								offset _m128dpps_235, offset _m128dpps_236, offset _m128dpps_237, offset _m128dpps_238, offset _m128dpps_239, \
								offset _m128dpps_240, offset _m128dpps_241, offset _m128dpps_242, offset _m128dpps_243, offset _m128dpps_244, \
								offset _m128dpps_245, offset _m128dpps_246, offset _m128dpps_247, offset _m128dpps_248, offset _m128dpps_249, \
								offset _m128dpps_250, offset _m128dpps_251, offset _m128dpps_252, offset _m128dpps_253, offset _m128dpps_254, \
								offset _m128dpps_255

	alignsize_t
	_m128ddppdjmptable isize_t	offset _m128ddppd_0, offset _m128ddppd_1, offset _m128ddppd_2, offset _m128ddppd_3, offset _m128ddppd_4, \
								offset _m128ddppd_5, offset _m128ddppd_6, offset _m128ddppd_7, offset _m128ddppd_8, offset _m128ddppd_9, \
								offset _m128ddppd_10, offset _m128ddppd_11, offset _m128ddppd_12, offset _m128ddppd_13, offset _m128ddppd_14, \
								offset _m128ddppd_15, offset _m128ddppd_16, offset _m128ddppd_17, offset _m128ddppd_18, offset _m128ddppd_19, \
								offset _m128ddppd_20, offset _m128ddppd_21, offset _m128ddppd_22, offset _m128ddppd_23, offset _m128ddppd_24, \
								offset _m128ddppd_25, offset _m128ddppd_26, offset _m128ddppd_27, offset _m128ddppd_28, offset _m128ddppd_29, \
								offset _m128ddppd_30, offset _m128ddppd_31, offset _m128ddppd_32, offset _m128ddppd_33, offset _m128ddppd_34, \
								offset _m128ddppd_35, offset _m128ddppd_36, offset _m128ddppd_37, offset _m128ddppd_38, offset _m128ddppd_39, \
								offset _m128ddppd_40, offset _m128ddppd_41, offset _m128ddppd_42, offset _m128ddppd_43, offset _m128ddppd_44, \
								offset _m128ddppd_45, offset _m128ddppd_46, offset _m128ddppd_47, offset _m128ddppd_48, offset _m128ddppd_49, \
								offset _m128ddppd_50, offset _m128ddppd_51, offset _m128ddppd_52, offset _m128ddppd_53, offset _m128ddppd_54, \
								offset _m128ddppd_55, offset _m128ddppd_56, offset _m128ddppd_57, offset _m128ddppd_58, offset _m128ddppd_59, \
								offset _m128ddppd_60, offset _m128ddppd_61, offset _m128ddppd_62, offset _m128ddppd_63, offset _m128ddppd_64, \
								offset _m128ddppd_65, offset _m128ddppd_66, offset _m128ddppd_67, offset _m128ddppd_68, offset _m128ddppd_69, \
								offset _m128ddppd_70, offset _m128ddppd_71, offset _m128ddppd_72, offset _m128ddppd_73, offset _m128ddppd_74, \
								offset _m128ddppd_75, offset _m128ddppd_76, offset _m128ddppd_77, offset _m128ddppd_78, offset _m128ddppd_79, \
								offset _m128ddppd_80, offset _m128ddppd_81, offset _m128ddppd_82, offset _m128ddppd_83, offset _m128ddppd_84, \
								offset _m128ddppd_85, offset _m128ddppd_86, offset _m128ddppd_87, offset _m128ddppd_88, offset _m128ddppd_89, \
								offset _m128ddppd_90, offset _m128ddppd_91, offset _m128ddppd_92, offset _m128ddppd_93, offset _m128ddppd_94, \
								offset _m128ddppd_95, offset _m128ddppd_96, offset _m128ddppd_97, offset _m128ddppd_98, offset _m128ddppd_99, \
								offset _m128ddppd_100, offset _m128ddppd_101, offset _m128ddppd_102, offset _m128ddppd_103, offset _m128ddppd_104, \
								offset _m128ddppd_105, offset _m128ddppd_106, offset _m128ddppd_107, offset _m128ddppd_108, offset _m128ddppd_109, \
								offset _m128ddppd_110, offset _m128ddppd_111, offset _m128ddppd_112, offset _m128ddppd_113, offset _m128ddppd_114, \
								offset _m128ddppd_115, offset _m128ddppd_116, offset _m128ddppd_117, offset _m128ddppd_118, offset _m128ddppd_119, \
								offset _m128ddppd_120, offset _m128ddppd_121, offset _m128ddppd_122, offset _m128ddppd_123, offset _m128ddppd_124, \
								offset _m128ddppd_125, offset _m128ddppd_126, offset _m128ddppd_127, offset _m128ddppd_128, offset _m128ddppd_129, \
								offset _m128ddppd_130, offset _m128ddppd_131, offset _m128ddppd_132, offset _m128ddppd_133, offset _m128ddppd_134, \
								offset _m128ddppd_135, offset _m128ddppd_136, offset _m128ddppd_137, offset _m128ddppd_138, offset _m128ddppd_139, \
								offset _m128ddppd_140, offset _m128ddppd_141, offset _m128ddppd_142, offset _m128ddppd_143, offset _m128ddppd_144, \
								offset _m128ddppd_145, offset _m128ddppd_146, offset _m128ddppd_147, offset _m128ddppd_148, offset _m128ddppd_149, \
								offset _m128ddppd_150, offset _m128ddppd_151, offset _m128ddppd_152, offset _m128ddppd_153, offset _m128ddppd_154, \
								offset _m128ddppd_155, offset _m128ddppd_156, offset _m128ddppd_157, offset _m128ddppd_158, offset _m128ddppd_159, \
								offset _m128ddppd_160, offset _m128ddppd_161, offset _m128ddppd_162, offset _m128ddppd_163, offset _m128ddppd_164, \
								offset _m128ddppd_165, offset _m128ddppd_166, offset _m128ddppd_167, offset _m128ddppd_168, offset _m128ddppd_169, \
								offset _m128ddppd_170, offset _m128ddppd_171, offset _m128ddppd_172, offset _m128ddppd_173, offset _m128ddppd_174, \
								offset _m128ddppd_175, offset _m128ddppd_176, offset _m128ddppd_177, offset _m128ddppd_178, offset _m128ddppd_179, \
								offset _m128ddppd_180, offset _m128ddppd_181, offset _m128ddppd_182, offset _m128ddppd_183, offset _m128ddppd_184, \
								offset _m128ddppd_185, offset _m128ddppd_186, offset _m128ddppd_187, offset _m128ddppd_188, offset _m128ddppd_189, \
								offset _m128ddppd_190, offset _m128ddppd_191, offset _m128ddppd_192, offset _m128ddppd_193, offset _m128ddppd_194, \
								offset _m128ddppd_195, offset _m128ddppd_196, offset _m128ddppd_197, offset _m128ddppd_198, offset _m128ddppd_199, \
								offset _m128ddppd_200, offset _m128ddppd_201, offset _m128ddppd_202, offset _m128ddppd_203, offset _m128ddppd_204, \
								offset _m128ddppd_205, offset _m128ddppd_206, offset _m128ddppd_207, offset _m128ddppd_208, offset _m128ddppd_209, \
								offset _m128ddppd_210, offset _m128ddppd_211, offset _m128ddppd_212, offset _m128ddppd_213, offset _m128ddppd_214, \
								offset _m128ddppd_215, offset _m128ddppd_216, offset _m128ddppd_217, offset _m128ddppd_218, offset _m128ddppd_219, \
								offset _m128ddppd_220, offset _m128ddppd_221, offset _m128ddppd_222, offset _m128ddppd_223, offset _m128ddppd_224, \
								offset _m128ddppd_225, offset _m128ddppd_226, offset _m128ddppd_227, offset _m128ddppd_228, offset _m128ddppd_229, \
								offset _m128ddppd_230, offset _m128ddppd_231, offset _m128ddppd_232, offset _m128ddppd_233, offset _m128ddppd_234, \
								offset _m128ddppd_235, offset _m128ddppd_236, offset _m128ddppd_237, offset _m128ddppd_238, offset _m128ddppd_239, \
								offset _m128ddppd_240, offset _m128ddppd_241, offset _m128ddppd_242, offset _m128ddppd_243, offset _m128ddppd_244, \
								offset _m128ddppd_245, offset _m128ddppd_246, offset _m128ddppd_247, offset _m128ddppd_248, offset _m128ddppd_249, \
								offset _m128ddppd_250, offset _m128ddppd_251, offset _m128ddppd_252, offset _m128ddppd_253, offset _m128ddppd_254, \
								offset _m128ddppd_255

	alignsize_t
	_m128insertpsjmptable isize_t	offset _m128insertps_0, offset _m128insertps_1, offset _m128insertps_2, offset _m128insertps_3, offset _m128insertps_4, \
									offset _m128insertps_5, offset _m128insertps_6, offset _m128insertps_7, offset _m128insertps_8, offset _m128insertps_9, \
									offset _m128insertps_10, offset _m128insertps_11, offset _m128insertps_12, offset _m128insertps_13, offset _m128insertps_14, \
									offset _m128insertps_15, offset _m128insertps_16, offset _m128insertps_17, offset _m128insertps_18, offset _m128insertps_19, \
									offset _m128insertps_20, offset _m128insertps_21, offset _m128insertps_22, offset _m128insertps_23, offset _m128insertps_24, \
									offset _m128insertps_25, offset _m128insertps_26, offset _m128insertps_27, offset _m128insertps_28, offset _m128insertps_29, \
									offset _m128insertps_30, offset _m128insertps_31, offset _m128insertps_32, offset _m128insertps_33, offset _m128insertps_34, \
									offset _m128insertps_35, offset _m128insertps_36, offset _m128insertps_37, offset _m128insertps_38, offset _m128insertps_39, \
									offset _m128insertps_40, offset _m128insertps_41, offset _m128insertps_42, offset _m128insertps_43, offset _m128insertps_44, \
									offset _m128insertps_45, offset _m128insertps_46, offset _m128insertps_47, offset _m128insertps_48, offset _m128insertps_49, \
									offset _m128insertps_50, offset _m128insertps_51, offset _m128insertps_52, offset _m128insertps_53, offset _m128insertps_54, \
									offset _m128insertps_55, offset _m128insertps_56, offset _m128insertps_57, offset _m128insertps_58, offset _m128insertps_59, \
									offset _m128insertps_60, offset _m128insertps_61, offset _m128insertps_62, offset _m128insertps_63, offset _m128insertps_64, \
									offset _m128insertps_65, offset _m128insertps_66, offset _m128insertps_67, offset _m128insertps_68, offset _m128insertps_69, \
									offset _m128insertps_70, offset _m128insertps_71, offset _m128insertps_72, offset _m128insertps_73, offset _m128insertps_74, \
									offset _m128insertps_75, offset _m128insertps_76, offset _m128insertps_77, offset _m128insertps_78, offset _m128insertps_79, \
									offset _m128insertps_80, offset _m128insertps_81, offset _m128insertps_82, offset _m128insertps_83, offset _m128insertps_84, \
									offset _m128insertps_85, offset _m128insertps_86, offset _m128insertps_87, offset _m128insertps_88, offset _m128insertps_89, \
									offset _m128insertps_90, offset _m128insertps_91, offset _m128insertps_92, offset _m128insertps_93, offset _m128insertps_94, \
									offset _m128insertps_95, offset _m128insertps_96, offset _m128insertps_97, offset _m128insertps_98, offset _m128insertps_99, \
									offset _m128insertps_100, offset _m128insertps_101, offset _m128insertps_102, offset _m128insertps_103, offset _m128insertps_104, \
									offset _m128insertps_105, offset _m128insertps_106, offset _m128insertps_107, offset _m128insertps_108, offset _m128insertps_109, \
									offset _m128insertps_110, offset _m128insertps_111, offset _m128insertps_112, offset _m128insertps_113, offset _m128insertps_114, \
									offset _m128insertps_115, offset _m128insertps_116, offset _m128insertps_117, offset _m128insertps_118, offset _m128insertps_119, \
									offset _m128insertps_120, offset _m128insertps_121, offset _m128insertps_122, offset _m128insertps_123, offset _m128insertps_124, \
									offset _m128insertps_125, offset _m128insertps_126, offset _m128insertps_127, offset _m128insertps_128, offset _m128insertps_129, \
									offset _m128insertps_130, offset _m128insertps_131, offset _m128insertps_132, offset _m128insertps_133, offset _m128insertps_134, \
									offset _m128insertps_135, offset _m128insertps_136, offset _m128insertps_137, offset _m128insertps_138, offset _m128insertps_139, \
									offset _m128insertps_140, offset _m128insertps_141, offset _m128insertps_142, offset _m128insertps_143, offset _m128insertps_144, \
									offset _m128insertps_145, offset _m128insertps_146, offset _m128insertps_147, offset _m128insertps_148, offset _m128insertps_149, \
									offset _m128insertps_150, offset _m128insertps_151, offset _m128insertps_152, offset _m128insertps_153, offset _m128insertps_154, \
									offset _m128insertps_155, offset _m128insertps_156, offset _m128insertps_157, offset _m128insertps_158, offset _m128insertps_159, \
									offset _m128insertps_160, offset _m128insertps_161, offset _m128insertps_162, offset _m128insertps_163, offset _m128insertps_164, \
									offset _m128insertps_165, offset _m128insertps_166, offset _m128insertps_167, offset _m128insertps_168, offset _m128insertps_169, \
									offset _m128insertps_170, offset _m128insertps_171, offset _m128insertps_172, offset _m128insertps_173, offset _m128insertps_174, \
									offset _m128insertps_175, offset _m128insertps_176, offset _m128insertps_177, offset _m128insertps_178, offset _m128insertps_179, \
									offset _m128insertps_180, offset _m128insertps_181, offset _m128insertps_182, offset _m128insertps_183, offset _m128insertps_184, \
									offset _m128insertps_185, offset _m128insertps_186, offset _m128insertps_187, offset _m128insertps_188, offset _m128insertps_189, \
									offset _m128insertps_190, offset _m128insertps_191, offset _m128insertps_192, offset _m128insertps_193, offset _m128insertps_194, \
									offset _m128insertps_195, offset _m128insertps_196, offset _m128insertps_197, offset _m128insertps_198, offset _m128insertps_199, \
									offset _m128insertps_200, offset _m128insertps_201, offset _m128insertps_202, offset _m128insertps_203, offset _m128insertps_204, \
									offset _m128insertps_205, offset _m128insertps_206, offset _m128insertps_207, offset _m128insertps_208, offset _m128insertps_209, \
									offset _m128insertps_210, offset _m128insertps_211, offset _m128insertps_212, offset _m128insertps_213, offset _m128insertps_214, \
									offset _m128insertps_215, offset _m128insertps_216, offset _m128insertps_217, offset _m128insertps_218, offset _m128insertps_219, \
									offset _m128insertps_220, offset _m128insertps_221, offset _m128insertps_222, offset _m128insertps_223, offset _m128insertps_224, \
									offset _m128insertps_225, offset _m128insertps_226, offset _m128insertps_227, offset _m128insertps_228, offset _m128insertps_229, \
									offset _m128insertps_230, offset _m128insertps_231, offset _m128insertps_232, offset _m128insertps_233, offset _m128insertps_234, \
									offset _m128insertps_235, offset _m128insertps_236, offset _m128insertps_237, offset _m128insertps_238, offset _m128insertps_239, \
									offset _m128insertps_240, offset _m128insertps_241, offset _m128insertps_242, offset _m128insertps_243, offset _m128insertps_244, \
									offset _m128insertps_245, offset _m128insertps_246, offset _m128insertps_247, offset _m128insertps_248, offset _m128insertps_249, \
									offset _m128insertps_250, offset _m128insertps_251, offset _m128insertps_252, offset _m128insertps_253, offset _m128insertps_254, \
									offset _m128insertps_255
		
	alignsize_t
	_m128impsadbwepu8jmptable isize_t	offset _m128impsadbwepu8_0, offset _m128impsadbwepu8_1, offset _m128impsadbwepu8_2, offset _m128impsadbwepu8_3, offset _m128impsadbwepu8_4, \
										offset _m128impsadbwepu8_5, offset _m128impsadbwepu8_6, offset _m128impsadbwepu8_7, offset _m128impsadbwepu8_8, offset _m128impsadbwepu8_9, \
										offset _m128impsadbwepu8_10, offset _m128impsadbwepu8_11, offset _m128impsadbwepu8_12, offset _m128impsadbwepu8_13, offset _m128impsadbwepu8_14, \
										offset _m128impsadbwepu8_15, offset _m128impsadbwepu8_16, offset _m128impsadbwepu8_17, offset _m128impsadbwepu8_18, offset _m128impsadbwepu8_19, \
										offset _m128impsadbwepu8_20, offset _m128impsadbwepu8_21, offset _m128impsadbwepu8_22, offset _m128impsadbwepu8_23, offset _m128impsadbwepu8_24, \
										offset _m128impsadbwepu8_25, offset _m128impsadbwepu8_26, offset _m128impsadbwepu8_27, offset _m128impsadbwepu8_28, offset _m128impsadbwepu8_29, \
										offset _m128impsadbwepu8_30, offset _m128impsadbwepu8_31, offset _m128impsadbwepu8_32, offset _m128impsadbwepu8_33, offset _m128impsadbwepu8_34, \
										offset _m128impsadbwepu8_35, offset _m128impsadbwepu8_36, offset _m128impsadbwepu8_37, offset _m128impsadbwepu8_38, offset _m128impsadbwepu8_39, \
										offset _m128impsadbwepu8_40, offset _m128impsadbwepu8_41, offset _m128impsadbwepu8_42, offset _m128impsadbwepu8_43, offset _m128impsadbwepu8_44, \
										offset _m128impsadbwepu8_45, offset _m128impsadbwepu8_46, offset _m128impsadbwepu8_47, offset _m128impsadbwepu8_48, offset _m128impsadbwepu8_49, \
										offset _m128impsadbwepu8_50, offset _m128impsadbwepu8_51, offset _m128impsadbwepu8_52, offset _m128impsadbwepu8_53, offset _m128impsadbwepu8_54, \
										offset _m128impsadbwepu8_55, offset _m128impsadbwepu8_56, offset _m128impsadbwepu8_57, offset _m128impsadbwepu8_58, offset _m128impsadbwepu8_59, \
										offset _m128impsadbwepu8_60, offset _m128impsadbwepu8_61, offset _m128impsadbwepu8_62, offset _m128impsadbwepu8_63, offset _m128impsadbwepu8_64, \
										offset _m128impsadbwepu8_65, offset _m128impsadbwepu8_66, offset _m128impsadbwepu8_67, offset _m128impsadbwepu8_68, offset _m128impsadbwepu8_69, \
										offset _m128impsadbwepu8_70, offset _m128impsadbwepu8_71, offset _m128impsadbwepu8_72, offset _m128impsadbwepu8_73, offset _m128impsadbwepu8_74, \
										offset _m128impsadbwepu8_75, offset _m128impsadbwepu8_76, offset _m128impsadbwepu8_77, offset _m128impsadbwepu8_78, offset _m128impsadbwepu8_79, \
										offset _m128impsadbwepu8_80, offset _m128impsadbwepu8_81, offset _m128impsadbwepu8_82, offset _m128impsadbwepu8_83, offset _m128impsadbwepu8_84, \
										offset _m128impsadbwepu8_85, offset _m128impsadbwepu8_86, offset _m128impsadbwepu8_87, offset _m128impsadbwepu8_88, offset _m128impsadbwepu8_89, \
										offset _m128impsadbwepu8_90, offset _m128impsadbwepu8_91, offset _m128impsadbwepu8_92, offset _m128impsadbwepu8_93, offset _m128impsadbwepu8_94, \
										offset _m128impsadbwepu8_95, offset _m128impsadbwepu8_96, offset _m128impsadbwepu8_97, offset _m128impsadbwepu8_98, offset _m128impsadbwepu8_99, \
										offset _m128impsadbwepu8_100, offset _m128impsadbwepu8_101, offset _m128impsadbwepu8_102, offset _m128impsadbwepu8_103, offset _m128impsadbwepu8_104, \
										offset _m128impsadbwepu8_105, offset _m128impsadbwepu8_106, offset _m128impsadbwepu8_107, offset _m128impsadbwepu8_108, offset _m128impsadbwepu8_109, \
										offset _m128impsadbwepu8_110, offset _m128impsadbwepu8_111, offset _m128impsadbwepu8_112, offset _m128impsadbwepu8_113, offset _m128impsadbwepu8_114, \
										offset _m128impsadbwepu8_115, offset _m128impsadbwepu8_116, offset _m128impsadbwepu8_117, offset _m128impsadbwepu8_118, offset _m128impsadbwepu8_119, \
										offset _m128impsadbwepu8_120, offset _m128impsadbwepu8_121, offset _m128impsadbwepu8_122, offset _m128impsadbwepu8_123, offset _m128impsadbwepu8_124, \
										offset _m128impsadbwepu8_125, offset _m128impsadbwepu8_126, offset _m128impsadbwepu8_127, offset _m128impsadbwepu8_128, offset _m128impsadbwepu8_129, \
										offset _m128impsadbwepu8_130, offset _m128impsadbwepu8_131, offset _m128impsadbwepu8_132, offset _m128impsadbwepu8_133, offset _m128impsadbwepu8_134, \
										offset _m128impsadbwepu8_135, offset _m128impsadbwepu8_136, offset _m128impsadbwepu8_137, offset _m128impsadbwepu8_138, offset _m128impsadbwepu8_139, \
										offset _m128impsadbwepu8_140, offset _m128impsadbwepu8_141, offset _m128impsadbwepu8_142, offset _m128impsadbwepu8_143, offset _m128impsadbwepu8_144, \
										offset _m128impsadbwepu8_145, offset _m128impsadbwepu8_146, offset _m128impsadbwepu8_147, offset _m128impsadbwepu8_148, offset _m128impsadbwepu8_149, \
										offset _m128impsadbwepu8_150, offset _m128impsadbwepu8_151, offset _m128impsadbwepu8_152, offset _m128impsadbwepu8_153, offset _m128impsadbwepu8_154, \
										offset _m128impsadbwepu8_155, offset _m128impsadbwepu8_156, offset _m128impsadbwepu8_157, offset _m128impsadbwepu8_158, offset _m128impsadbwepu8_159, \
										offset _m128impsadbwepu8_160, offset _m128impsadbwepu8_161, offset _m128impsadbwepu8_162, offset _m128impsadbwepu8_163, offset _m128impsadbwepu8_164, \
										offset _m128impsadbwepu8_165, offset _m128impsadbwepu8_166, offset _m128impsadbwepu8_167, offset _m128impsadbwepu8_168, offset _m128impsadbwepu8_169, \
										offset _m128impsadbwepu8_170, offset _m128impsadbwepu8_171, offset _m128impsadbwepu8_172, offset _m128impsadbwepu8_173, offset _m128impsadbwepu8_174, \
										offset _m128impsadbwepu8_175, offset _m128impsadbwepu8_176, offset _m128impsadbwepu8_177, offset _m128impsadbwepu8_178, offset _m128impsadbwepu8_179, \
										offset _m128impsadbwepu8_180, offset _m128impsadbwepu8_181, offset _m128impsadbwepu8_182, offset _m128impsadbwepu8_183, offset _m128impsadbwepu8_184, \
										offset _m128impsadbwepu8_185, offset _m128impsadbwepu8_186, offset _m128impsadbwepu8_187, offset _m128impsadbwepu8_188, offset _m128impsadbwepu8_189, \
										offset _m128impsadbwepu8_190, offset _m128impsadbwepu8_191, offset _m128impsadbwepu8_192, offset _m128impsadbwepu8_193, offset _m128impsadbwepu8_194, \
										offset _m128impsadbwepu8_195, offset _m128impsadbwepu8_196, offset _m128impsadbwepu8_197, offset _m128impsadbwepu8_198, offset _m128impsadbwepu8_199, \
										offset _m128impsadbwepu8_200, offset _m128impsadbwepu8_201, offset _m128impsadbwepu8_202, offset _m128impsadbwepu8_203, offset _m128impsadbwepu8_204, \
										offset _m128impsadbwepu8_205, offset _m128impsadbwepu8_206, offset _m128impsadbwepu8_207, offset _m128impsadbwepu8_208, offset _m128impsadbwepu8_209, \
										offset _m128impsadbwepu8_210, offset _m128impsadbwepu8_211, offset _m128impsadbwepu8_212, offset _m128impsadbwepu8_213, offset _m128impsadbwepu8_214, \
										offset _m128impsadbwepu8_215, offset _m128impsadbwepu8_216, offset _m128impsadbwepu8_217, offset _m128impsadbwepu8_218, offset _m128impsadbwepu8_219, \
										offset _m128impsadbwepu8_220, offset _m128impsadbwepu8_221, offset _m128impsadbwepu8_222, offset _m128impsadbwepu8_223, offset _m128impsadbwepu8_224, \
										offset _m128impsadbwepu8_225, offset _m128impsadbwepu8_226, offset _m128impsadbwepu8_227, offset _m128impsadbwepu8_228, offset _m128impsadbwepu8_229, \
										offset _m128impsadbwepu8_230, offset _m128impsadbwepu8_231, offset _m128impsadbwepu8_232, offset _m128impsadbwepu8_233, offset _m128impsadbwepu8_234, \
										offset _m128impsadbwepu8_235, offset _m128impsadbwepu8_236, offset _m128impsadbwepu8_237, offset _m128impsadbwepu8_238, offset _m128impsadbwepu8_239, \
										offset _m128impsadbwepu8_240, offset _m128impsadbwepu8_241, offset _m128impsadbwepu8_242, offset _m128impsadbwepu8_243, offset _m128impsadbwepu8_244, \
										offset _m128impsadbwepu8_245, offset _m128impsadbwepu8_246, offset _m128impsadbwepu8_247, offset _m128impsadbwepu8_248, offset _m128impsadbwepu8_249, \
										offset _m128impsadbwepu8_250, offset _m128impsadbwepu8_251, offset _m128impsadbwepu8_252, offset _m128impsadbwepu8_253, offset _m128impsadbwepu8_254, \
										offset _m128impsadbwepu8_255


	alignxmmfieldproc
	callconvopt

	.code
	
;************************************
; blend instructions
;************************************

funcstart _uX_mm_blend_epi16_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			0
			ret
funcend

funcstart _uX_mm_blend_epi16_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			1
			ret
funcend

funcstart _uX_mm_blend_epi16_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			2
			ret
funcend

funcstart _uX_mm_blend_epi16_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			3
			ret
funcend

funcstart _uX_mm_blend_epi16_4, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			4
			ret
funcend

funcstart _uX_mm_blend_epi16_5, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			5
			ret
funcend

funcstart _uX_mm_blend_epi16_6, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			6
			ret
funcend

funcstart _uX_mm_blend_epi16_7, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			7
			ret
funcend

funcstart _uX_mm_blend_epi16_8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			8
			ret
funcend

funcstart _uX_mm_blend_epi16_9, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			9
			ret
funcend

funcstart _uX_mm_blend_epi16_10, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			10
			ret
funcend

funcstart _uX_mm_blend_epi16_11, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			11
			ret
funcend

funcstart _uX_mm_blend_epi16_12, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			12
			ret
funcend

funcstart _uX_mm_blend_epi16_13, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			13
			ret
funcend

funcstart _uX_mm_blend_epi16_14, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			14
			ret
funcend

funcstart _uX_mm_blend_epi16_15, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			15
			ret
funcend

funcstart _uX_mm_blend_epi16_16, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			16
			ret
funcend

funcstart _uX_mm_blend_epi16_17, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			17
			ret
funcend

funcstart _uX_mm_blend_epi16_18, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			18
			ret
funcend

funcstart _uX_mm_blend_epi16_19, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			19
			ret
funcend

funcstart _uX_mm_blend_epi16_20, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			20
			ret
funcend

funcstart _uX_mm_blend_epi16_21, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			21
			ret
funcend

funcstart _uX_mm_blend_epi16_22, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			22
			ret
funcend

funcstart _uX_mm_blend_epi16_23, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			23
			ret
funcend

funcstart _uX_mm_blend_epi16_24, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			24
			ret
funcend

funcstart _uX_mm_blend_epi16_25, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			25
			ret
funcend

funcstart _uX_mm_blend_epi16_26, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			26
			ret
funcend

funcstart _uX_mm_blend_epi16_27, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			27
			ret
funcend

funcstart _uX_mm_blend_epi16_28, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			28
			ret
funcend

funcstart _uX_mm_blend_epi16_29, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			29
			ret
funcend

funcstart _uX_mm_blend_epi16_30, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			30
			ret
funcend

funcstart _uX_mm_blend_epi16_31, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			31
			ret
funcend

funcstart _uX_mm_blend_epi16_32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			32
			ret
funcend

funcstart _uX_mm_blend_epi16_33, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			33
			ret
funcend

funcstart _uX_mm_blend_epi16_34, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			34
			ret
funcend

funcstart _uX_mm_blend_epi16_35, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			35
			ret
funcend

funcstart _uX_mm_blend_epi16_36, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			36
			ret
funcend

funcstart _uX_mm_blend_epi16_37, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			37
			ret
funcend

funcstart _uX_mm_blend_epi16_38, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			38
			ret
funcend

funcstart _uX_mm_blend_epi16_39, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			39
			ret
funcend

funcstart _uX_mm_blend_epi16_40, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			40
			ret
funcend

funcstart _uX_mm_blend_epi16_41, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			41
			ret
funcend

funcstart _uX_mm_blend_epi16_42, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			42
			ret
funcend

funcstart _uX_mm_blend_epi16_43, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			43
			ret
funcend

funcstart _uX_mm_blend_epi16_44, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			44
			ret
funcend

funcstart _uX_mm_blend_epi16_45, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			45
			ret
funcend

funcstart _uX_mm_blend_epi16_46, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			46
			ret
funcend

funcstart _uX_mm_blend_epi16_47, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			47
			ret
funcend

funcstart _uX_mm_blend_epi16_48, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			48
			ret
funcend

funcstart _uX_mm_blend_epi16_49, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			49
			ret
funcend

funcstart _uX_mm_blend_epi16_50, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			50
			ret
funcend

funcstart _uX_mm_blend_epi16_51, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			51
			ret
funcend

funcstart _uX_mm_blend_epi16_52, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			52
			ret
funcend

funcstart _uX_mm_blend_epi16_53, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			53
			ret
funcend

funcstart _uX_mm_blend_epi16_54, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			54
			ret
funcend

funcstart _uX_mm_blend_epi16_55, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			55
			ret
funcend

funcstart _uX_mm_blend_epi16_56, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			56
			ret
funcend

funcstart _uX_mm_blend_epi16_57, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			57
			ret
funcend

funcstart _uX_mm_blend_epi16_58, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			58
			ret
funcend

funcstart _uX_mm_blend_epi16_59, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			59
			ret
funcend

funcstart _uX_mm_blend_epi16_60, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			60
			ret
funcend

funcstart _uX_mm_blend_epi16_61, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			61
			ret
funcend

funcstart _uX_mm_blend_epi16_62, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			62
			ret
funcend

funcstart _uX_mm_blend_epi16_63, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			63
			ret
funcend

funcstart _uX_mm_blend_epi16_64, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			64
			ret
funcend

funcstart _uX_mm_blend_epi16_65, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			65
			ret
funcend

funcstart _uX_mm_blend_epi16_66, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			66
			ret
funcend

funcstart _uX_mm_blend_epi16_67, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			67
			ret
funcend

funcstart _uX_mm_blend_epi16_68, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			68
			ret
funcend

funcstart _uX_mm_blend_epi16_69, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			69
			ret
funcend

funcstart _uX_mm_blend_epi16_70, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			70
			ret
funcend

funcstart _uX_mm_blend_epi16_71, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			71
			ret
funcend

funcstart _uX_mm_blend_epi16_72, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			72
			ret
funcend

funcstart _uX_mm_blend_epi16_73, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			73
			ret
funcend

funcstart _uX_mm_blend_epi16_74, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			74
			ret
funcend

funcstart _uX_mm_blend_epi16_75, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			75
			ret
funcend

funcstart _uX_mm_blend_epi16_76, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			76
			ret
funcend

funcstart _uX_mm_blend_epi16_77, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			77
			ret
funcend

funcstart _uX_mm_blend_epi16_78, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			78
			ret
funcend

funcstart _uX_mm_blend_epi16_79, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			79
			ret
funcend

funcstart _uX_mm_blend_epi16_80, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			80
			ret
funcend

funcstart _uX_mm_blend_epi16_81, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			81
			ret
funcend

funcstart _uX_mm_blend_epi16_82, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			82
			ret
funcend

funcstart _uX_mm_blend_epi16_83, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			83
			ret
funcend

funcstart _uX_mm_blend_epi16_84, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			84
			ret
funcend

funcstart _uX_mm_blend_epi16_85, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			85
			ret
funcend

funcstart _uX_mm_blend_epi16_86, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			86
			ret
funcend

funcstart _uX_mm_blend_epi16_87, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			87
			ret
funcend

funcstart _uX_mm_blend_epi16_88, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			88
			ret
funcend

funcstart _uX_mm_blend_epi16_89, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			89
			ret
funcend

funcstart _uX_mm_blend_epi16_90, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			90
			ret
funcend

funcstart _uX_mm_blend_epi16_91, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			91
			ret
funcend

funcstart _uX_mm_blend_epi16_92, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			92
			ret
funcend

funcstart _uX_mm_blend_epi16_93, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			93
			ret
funcend

funcstart _uX_mm_blend_epi16_94, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			94
			ret
funcend

funcstart _uX_mm_blend_epi16_95, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			95
			ret
funcend

funcstart _uX_mm_blend_epi16_96, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			96
			ret
funcend

funcstart _uX_mm_blend_epi16_97, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			97
			ret
funcend

funcstart _uX_mm_blend_epi16_98, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			98
			ret
funcend

funcstart _uX_mm_blend_epi16_99, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			99
			ret
funcend

funcstart _uX_mm_blend_epi16_100, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			100
			ret
funcend

funcstart _uX_mm_blend_epi16_101, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			101
			ret
funcend

funcstart _uX_mm_blend_epi16_102, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			102
			ret
funcend

funcstart _uX_mm_blend_epi16_103, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			103
			ret
funcend

funcstart _uX_mm_blend_epi16_104, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			104
			ret
funcend

funcstart _uX_mm_blend_epi16_105, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			105
			ret
funcend

funcstart _uX_mm_blend_epi16_106, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			106
			ret
funcend

funcstart _uX_mm_blend_epi16_107, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			107
			ret
funcend

funcstart _uX_mm_blend_epi16_108, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			108
			ret
funcend

funcstart _uX_mm_blend_epi16_109, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			109
			ret
funcend

funcstart _uX_mm_blend_epi16_110, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			110
			ret
funcend

funcstart _uX_mm_blend_epi16_111, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			111
			ret
funcend

funcstart _uX_mm_blend_epi16_112, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			112
			ret
funcend

funcstart _uX_mm_blend_epi16_113, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			113
			ret
funcend

funcstart _uX_mm_blend_epi16_114, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			114
			ret
funcend

funcstart _uX_mm_blend_epi16_115, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			115
			ret
funcend

funcstart _uX_mm_blend_epi16_116, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			116
			ret
funcend

funcstart _uX_mm_blend_epi16_117, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			117
			ret
funcend

funcstart _uX_mm_blend_epi16_118, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			118
			ret
funcend

funcstart _uX_mm_blend_epi16_119, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			119
			ret
funcend

funcstart _uX_mm_blend_epi16_120, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			120
			ret
funcend

funcstart _uX_mm_blend_epi16_121, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			121
			ret
funcend

funcstart _uX_mm_blend_epi16_122, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			122
			ret
funcend

funcstart _uX_mm_blend_epi16_123, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			123
			ret
funcend

funcstart _uX_mm_blend_epi16_124, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			124
			ret
funcend

funcstart _uX_mm_blend_epi16_125, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			125
			ret
funcend

funcstart _uX_mm_blend_epi16_126, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			126
			ret
funcend

funcstart _uX_mm_blend_epi16_127, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			127
			ret
funcend

funcstart _uX_mm_blend_epi16_128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			128
			ret
funcend

funcstart _uX_mm_blend_epi16_129, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			129
			ret
funcend

funcstart _uX_mm_blend_epi16_130, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			130
			ret
funcend

funcstart _uX_mm_blend_epi16_131, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			131
			ret
funcend

funcstart _uX_mm_blend_epi16_132, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			132
			ret
funcend

funcstart _uX_mm_blend_epi16_133, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			133
			ret
funcend

funcstart _uX_mm_blend_epi16_134, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			134
			ret
funcend

funcstart _uX_mm_blend_epi16_135, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			135
			ret
funcend

funcstart _uX_mm_blend_epi16_136, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			136
			ret
funcend

funcstart _uX_mm_blend_epi16_137, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			137
			ret
funcend

funcstart _uX_mm_blend_epi16_138, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			138
			ret
funcend

funcstart _uX_mm_blend_epi16_139, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			139
			ret
funcend

funcstart _uX_mm_blend_epi16_140, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			140
			ret
funcend

funcstart _uX_mm_blend_epi16_141, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			141
			ret
funcend

funcstart _uX_mm_blend_epi16_142, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			142
			ret
funcend

funcstart _uX_mm_blend_epi16_143, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			143
			ret
funcend

funcstart _uX_mm_blend_epi16_144, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			144
			ret
funcend

funcstart _uX_mm_blend_epi16_145, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			145
			ret
funcend

funcstart _uX_mm_blend_epi16_146, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			pblendw				xmm0,			xmm1,			146
			ret
funcend

funcstart _uX_mm_blend_epi16_147, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			147
			ret
funcend

funcstart _uX_mm_blend_epi16_148, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			148
			ret
funcend

funcstart _uX_mm_blend_epi16_149, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			149
			ret
funcend

funcstart _uX_mm_blend_epi16_150, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			150
			ret
funcend

funcstart _uX_mm_blend_epi16_151, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			151
			ret
funcend

funcstart _uX_mm_blend_epi16_152, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			152
			ret
funcend

funcstart _uX_mm_blend_epi16_153, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			153
			ret
funcend

funcstart _uX_mm_blend_epi16_154, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			pblendw				xmm0,			xmm1,			154
			ret
funcend

funcstart _uX_mm_blend_epi16_155, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			155
			ret
funcend

funcstart _uX_mm_blend_epi16_156, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			156
			ret
funcend

funcstart _uX_mm_blend_epi16_157, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			157
			ret
funcend

funcstart _uX_mm_blend_epi16_158, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			158
			ret
funcend

funcstart _uX_mm_blend_epi16_159, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			159
			ret
funcend

funcstart _uX_mm_blend_epi16_160, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			160
			ret
funcend

funcstart _uX_mm_blend_epi16_161, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			161
			ret
funcend

funcstart _uX_mm_blend_epi16_162, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			162
			ret
funcend

funcstart _uX_mm_blend_epi16_163, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			163
			ret
funcend

funcstart _uX_mm_blend_epi16_164, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			164
			ret
funcend

funcstart _uX_mm_blend_epi16_165, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			165
			ret
funcend

funcstart _uX_mm_blend_epi16_166, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			166
			ret
funcend

funcstart _uX_mm_blend_epi16_167, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			167
			ret
funcend

funcstart _uX_mm_blend_epi16_168, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			168
			ret
funcend

funcstart _uX_mm_blend_epi16_169, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			169
			ret
funcend

funcstart _uX_mm_blend_epi16_170, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			170
			ret
funcend

funcstart _uX_mm_blend_epi16_171, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			171
			ret
funcend

funcstart _uX_mm_blend_epi16_172, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			172
			ret
funcend

funcstart _uX_mm_blend_epi16_173, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			173
			ret
funcend

funcstart _uX_mm_blend_epi16_174, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			pblendw				xmm0,			xmm1,			174
			ret
funcend

funcstart _uX_mm_blend_epi16_175, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			175
			ret
funcend

funcstart _uX_mm_blend_epi16_176, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			176
			ret
funcend

funcstart _uX_mm_blend_epi16_177, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			177
			ret
funcend

funcstart _uX_mm_blend_epi16_178, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			178
			ret
funcend

funcstart _uX_mm_blend_epi16_179, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			179
			ret
funcend

funcstart _uX_mm_blend_epi16_180, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			180
			ret
funcend

funcstart _uX_mm_blend_epi16_181, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			181
			ret
funcend

funcstart _uX_mm_blend_epi16_182, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			182
			ret
funcend

funcstart _uX_mm_blend_epi16_183, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			183
			ret
funcend

funcstart _uX_mm_blend_epi16_184, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			184
			ret
funcend

funcstart _uX_mm_blend_epi16_185, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			185
			ret
funcend

funcstart _uX_mm_blend_epi16_186, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			186
			ret
funcend

funcstart _uX_mm_blend_epi16_187, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			187
			ret
funcend

funcstart _uX_mm_blend_epi16_188, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			188
			ret
funcend

funcstart _uX_mm_blend_epi16_189, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			189
			ret
funcend

funcstart _uX_mm_blend_epi16_190, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			190
			ret
funcend

funcstart _uX_mm_blend_epi16_191, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			191
			ret
funcend

funcstart _uX_mm_blend_epi16_192, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			192
			ret
funcend

funcstart _uX_mm_blend_epi16_193, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			193
			ret
funcend

funcstart _uX_mm_blend_epi16_194, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			194
			ret
funcend

funcstart _uX_mm_blend_epi16_195, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			195
			ret
funcend

funcstart _uX_mm_blend_epi16_196, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			196
			ret
funcend

funcstart _uX_mm_blend_epi16_197, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			197
			ret
funcend

funcstart _uX_mm_blend_epi16_198, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			198
			ret
funcend

funcstart _uX_mm_blend_epi16_199, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			199
			ret
funcend

funcstart _uX_mm_blend_epi16_200, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			200
			ret
funcend

funcstart _uX_mm_blend_epi16_201, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			201
			ret
funcend

funcstart _uX_mm_blend_epi16_202, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			202
			ret
funcend

funcstart _uX_mm_blend_epi16_203, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			203
			ret
funcend

funcstart _uX_mm_blend_epi16_204, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			204
			ret
funcend

funcstart _uX_mm_blend_epi16_205, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			205
			ret
funcend

funcstart _uX_mm_blend_epi16_206, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			206
			ret
funcend

funcstart _uX_mm_blend_epi16_207, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			207
			ret
funcend

funcstart _uX_mm_blend_epi16_208, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			208
			ret
funcend

funcstart _uX_mm_blend_epi16_209, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			209
			ret
funcend

funcstart _uX_mm_blend_epi16_210, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			210
			ret
funcend

funcstart _uX_mm_blend_epi16_211, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			211
			ret
funcend

funcstart _uX_mm_blend_epi16_212, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			212
			ret
funcend

funcstart _uX_mm_blend_epi16_213, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			213
			ret
funcend

funcstart _uX_mm_blend_epi16_214, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			214
			ret
funcend

funcstart _uX_mm_blend_epi16_215, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			215
			ret
funcend

funcstart _uX_mm_blend_epi16_216, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			216
			ret
funcend

funcstart _uX_mm_blend_epi16_217, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			217
			ret
funcend

funcstart _uX_mm_blend_epi16_218, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			218
			ret
funcend

funcstart _uX_mm_blend_epi16_219, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			219
			ret
funcend

funcstart _uX_mm_blend_epi16_220, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			220
			ret
funcend

funcstart _uX_mm_blend_epi16_221, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			221
			ret
funcend

funcstart _uX_mm_blend_epi16_222, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			222
			ret
funcend

funcstart _uX_mm_blend_epi16_223, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			223
			ret
funcend

funcstart _uX_mm_blend_epi16_224, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			224
			ret
funcend

funcstart _uX_mm_blend_epi16_225, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			225
			ret
funcend

funcstart _uX_mm_blend_epi16_226, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			226
			ret
funcend

funcstart _uX_mm_blend_epi16_227, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			227
			ret
funcend

funcstart _uX_mm_blend_epi16_228, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			228
			ret
funcend

funcstart _uX_mm_blend_epi16_229, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			229
			ret
funcend

funcstart _uX_mm_blend_epi16_230, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			230
			ret
funcend

funcstart _uX_mm_blend_epi16_231, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			231
			ret
funcend

funcstart _uX_mm_blend_epi16_232, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			232
			ret
funcend

funcstart _uX_mm_blend_epi16_233, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			233
			ret
funcend

funcstart _uX_mm_blend_epi16_234, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			234
			ret
funcend

funcstart _uX_mm_blend_epi16_235, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			235
			ret
funcend

funcstart _uX_mm_blend_epi16_236, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			236
			ret
funcend

funcstart _uX_mm_blend_epi16_237, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			237
			ret
funcend

funcstart _uX_mm_blend_epi16_238, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			238
			ret
funcend

funcstart _uX_mm_blend_epi16_239, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			239
			ret
funcend

funcstart _uX_mm_blend_epi16_240, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			240
			ret
funcend

funcstart _uX_mm_blend_epi16_241, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			241
			ret
funcend

funcstart _uX_mm_blend_epi16_242, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			242
			ret
funcend

funcstart _uX_mm_blend_epi16_243, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			243
			ret
funcend

funcstart _uX_mm_blend_epi16_244, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			244
			ret
funcend

funcstart _uX_mm_blend_epi16_245, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			245
			ret
funcend

funcstart _uX_mm_blend_epi16_246, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			246
			ret
funcend

funcstart _uX_mm_blend_epi16_247, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			247
			ret
funcend

funcstart _uX_mm_blend_epi16_248, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			248
			ret
funcend

funcstart _uX_mm_blend_epi16_249, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			249
			ret
funcend

funcstart _uX_mm_blend_epi16_250, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			250
			ret
funcend

funcstart _uX_mm_blend_epi16_251, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			251
			ret
funcend

funcstart _uX_mm_blend_epi16_252, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			252
			ret
funcend

funcstart _uX_mm_blend_epi16_253, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			253
			ret
funcend

funcstart _uX_mm_blend_epi16_254, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			254
			ret
funcend

funcstart _uX_mm_blend_epi16_255, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			pblendw				xmm0,			xmm1,			255
			ret
funcend

funcstart _uX_mm_blend_epi16, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128iblendepi16jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128iblendepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128iblendepi16_0 label size_t
			pblendw				xmm0,			xmm1,			0
			ret
		_m128iblendepi16_1 label size_t
			pblendw				xmm0,			xmm1,			1
			ret
		_m128iblendepi16_2 label size_t
			pblendw				xmm0,			xmm1,			2
			ret
		_m128iblendepi16_3 label size_t
			pblendw				xmm0,			xmm1,			3
			ret
		_m128iblendepi16_4 label size_t
			pblendw				xmm0,			xmm1,			4
			ret
		_m128iblendepi16_5 label size_t
			pblendw				xmm0,			xmm1,			5
			ret
		_m128iblendepi16_6 label size_t
			pblendw				xmm0,			xmm1,			6
			ret
		_m128iblendepi16_7 label size_t
			pblendw				xmm0,			xmm1,			7
			ret
		_m128iblendepi16_8 label size_t
			pblendw				xmm0,			xmm1,			8
			ret
		_m128iblendepi16_9 label size_t
			pblendw				xmm0,			xmm1,			9
			ret
		_m128iblendepi16_10 label size_t
			pblendw				xmm0,			xmm1,			10
			ret
		_m128iblendepi16_11 label size_t
			pblendw				xmm0,			xmm1,			11
			ret
		_m128iblendepi16_12 label size_t
			pblendw				xmm0,			xmm1,			12
			ret
		_m128iblendepi16_13 label size_t
			pblendw				xmm0,			xmm1,			13
			ret
		_m128iblendepi16_14 label size_t
			pblendw				xmm0,			xmm1,			14
			ret
		_m128iblendepi16_15 label size_t
			pblendw				xmm0,			xmm1,			15
			ret
		_m128iblendepi16_16 label size_t
			pblendw				xmm0,			xmm1,			16
			ret
		_m128iblendepi16_17 label size_t
			pblendw				xmm0,			xmm1,			17
			ret
		_m128iblendepi16_18 label size_t
			pblendw				xmm0,			xmm1,			18
			ret
		_m128iblendepi16_19 label size_t
			pblendw				xmm0,			xmm1,			19
			ret
		_m128iblendepi16_20 label size_t
			pblendw				xmm0,			xmm1,			20
			ret
		_m128iblendepi16_21 label size_t
			pblendw				xmm0,			xmm1,			21
			ret
		_m128iblendepi16_22 label size_t
			pblendw				xmm0,			xmm1,			22
			ret
		_m128iblendepi16_23 label size_t
			pblendw				xmm0,			xmm1,			23
			ret
		_m128iblendepi16_24 label size_t
			pblendw				xmm0,			xmm1,			24
			ret
		_m128iblendepi16_25 label size_t
			pblendw				xmm0,			xmm1,			25
			ret
		_m128iblendepi16_26 label size_t
			pblendw				xmm0,			xmm1,			26
			ret
		_m128iblendepi16_27 label size_t
			pblendw				xmm0,			xmm1,			27
			ret
		_m128iblendepi16_28 label size_t
			pblendw				xmm0,			xmm1,			28
			ret
		_m128iblendepi16_29 label size_t
			pblendw				xmm0,			xmm1,			29
			ret
		_m128iblendepi16_30 label size_t
			pblendw				xmm0,			xmm1,			30
			ret
		_m128iblendepi16_31 label size_t
			pblendw				xmm0,			xmm1,			31
			ret
		_m128iblendepi16_32 label size_t
			pblendw				xmm0,			xmm1,			32
			ret
		_m128iblendepi16_33 label size_t
			pblendw				xmm0,			xmm1,			33
			ret
		_m128iblendepi16_34 label size_t
			pblendw				xmm0,			xmm1,			34
			ret
		_m128iblendepi16_35 label size_t
			pblendw				xmm0,			xmm1,			35
			ret
		_m128iblendepi16_36 label size_t
			pblendw				xmm0,			xmm1,			36
			ret
		_m128iblendepi16_37 label size_t
			pblendw				xmm0,			xmm1,			37
			ret
		_m128iblendepi16_38 label size_t
			pblendw				xmm0,			xmm1,			38
			ret
		_m128iblendepi16_39 label size_t
			pblendw				xmm0,			xmm1,			39
			ret
		_m128iblendepi16_40 label size_t
			pblendw				xmm0,			xmm1,			40
			ret
		_m128iblendepi16_41 label size_t
			pblendw				xmm0,			xmm1,			41
			ret
		_m128iblendepi16_42 label size_t
			pblendw				xmm0,			xmm1,			42
			ret
		_m128iblendepi16_43 label size_t
			pblendw				xmm0,			xmm1,			43
			ret
		_m128iblendepi16_44 label size_t
			pblendw				xmm0,			xmm1,			44
			ret
		_m128iblendepi16_45 label size_t
			pblendw				xmm0,			xmm1,			45
			ret
		_m128iblendepi16_46 label size_t
			pblendw				xmm0,			xmm1,			46
			ret
		_m128iblendepi16_47 label size_t
			pblendw				xmm0,			xmm1,			47
			ret
		_m128iblendepi16_48 label size_t
			pblendw				xmm0,			xmm1,			48
			ret
		_m128iblendepi16_49 label size_t
			pblendw				xmm0,			xmm1,			49
			ret
		_m128iblendepi16_50 label size_t
			pblendw				xmm0,			xmm1,			50
			ret
		_m128iblendepi16_51 label size_t
			pblendw				xmm0,			xmm1,			51
			ret
		_m128iblendepi16_52 label size_t
			pblendw				xmm0,			xmm1,			52
			ret
		_m128iblendepi16_53 label size_t
			pblendw				xmm0,			xmm1,			53
			ret
		_m128iblendepi16_54 label size_t
			pblendw				xmm0,			xmm1,			54
			ret
		_m128iblendepi16_55 label size_t
			pblendw				xmm0,			xmm1,			55
			ret
		_m128iblendepi16_56 label size_t
			pblendw				xmm0,			xmm1,			56
			ret
		_m128iblendepi16_57 label size_t
			pblendw				xmm0,			xmm1,			57
			ret
		_m128iblendepi16_58 label size_t
			pblendw				xmm0,			xmm1,			58
			ret
		_m128iblendepi16_59 label size_t
			pblendw				xmm0,			xmm1,			59
			ret
		_m128iblendepi16_60 label size_t
			pblendw				xmm0,			xmm1,			60
			ret
		_m128iblendepi16_61 label size_t
			pblendw				xmm0,			xmm1,			61
			ret
		_m128iblendepi16_62 label size_t
			pblendw				xmm0,			xmm1,			62
			ret
		_m128iblendepi16_63 label size_t
			pblendw				xmm0,			xmm1,			63
			ret
		_m128iblendepi16_64 label size_t
			pblendw				xmm0,			xmm1,			64
			ret
		_m128iblendepi16_65 label size_t
			pblendw				xmm0,			xmm1,			65
			ret
		_m128iblendepi16_66 label size_t
			pblendw				xmm0,			xmm1,			66
			ret
		_m128iblendepi16_67 label size_t
			pblendw				xmm0,			xmm1,			67
			ret
		_m128iblendepi16_68 label size_t
			pblendw				xmm0,			xmm1,			68
			ret
		_m128iblendepi16_69 label size_t
			pblendw				xmm0,			xmm1,			69
			ret
		_m128iblendepi16_70 label size_t
			pblendw				xmm0,			xmm1,			70
			ret
		_m128iblendepi16_71 label size_t
			pblendw				xmm0,			xmm1,			71
			ret
		_m128iblendepi16_72 label size_t
			pblendw				xmm0,			xmm1,			72
			ret
		_m128iblendepi16_73 label size_t
			pblendw				xmm0,			xmm1,			73
			ret
		_m128iblendepi16_74 label size_t
			pblendw				xmm0,			xmm1,			74
			ret
		_m128iblendepi16_75 label size_t
			pblendw				xmm0,			xmm1,			75
			ret
		_m128iblendepi16_76 label size_t
			pblendw				xmm0,			xmm1,			76
			ret
		_m128iblendepi16_77 label size_t
			pblendw				xmm0,			xmm1,			77
			ret
		_m128iblendepi16_78 label size_t
			pblendw				xmm0,			xmm1,			78
			ret
		_m128iblendepi16_79 label size_t
			pblendw				xmm0,			xmm1,			79
			ret
		_m128iblendepi16_80 label size_t
			pblendw				xmm0,			xmm1,			80
			ret
		_m128iblendepi16_81 label size_t
			pblendw				xmm0,			xmm1,			81
			ret
		_m128iblendepi16_82 label size_t
			pblendw				xmm0,			xmm1,			82
			ret
		_m128iblendepi16_83 label size_t
			pblendw				xmm0,			xmm1,			83
			ret
		_m128iblendepi16_84 label size_t
			pblendw				xmm0,			xmm1,			84
			ret
		_m128iblendepi16_85 label size_t
			pblendw				xmm0,			xmm1,			85
			ret
		_m128iblendepi16_86 label size_t
			pblendw				xmm0,			xmm1,			86
			ret
		_m128iblendepi16_87 label size_t
			pblendw				xmm0,			xmm1,			87
			ret
		_m128iblendepi16_88 label size_t
			pblendw				xmm0,			xmm1,			88
			ret
		_m128iblendepi16_89 label size_t
			pblendw				xmm0,			xmm1,			89
			ret
		_m128iblendepi16_90 label size_t
			pblendw				xmm0,			xmm1,			90
			ret
		_m128iblendepi16_91 label size_t
			pblendw				xmm0,			xmm1,			91
			ret
		_m128iblendepi16_92 label size_t
			pblendw				xmm0,			xmm1,			92
			ret
		_m128iblendepi16_93 label size_t
			pblendw				xmm0,			xmm1,			93
			ret
		_m128iblendepi16_94 label size_t
			pblendw				xmm0,			xmm1,			94
			ret
		_m128iblendepi16_95 label size_t
			pblendw				xmm0,			xmm1,			95
			ret
		_m128iblendepi16_96 label size_t
			pblendw				xmm0,			xmm1,			96
			ret
		_m128iblendepi16_97 label size_t
			pblendw				xmm0,			xmm1,			97
			ret
		_m128iblendepi16_98 label size_t
			pblendw				xmm0,			xmm1,			98
			ret
		_m128iblendepi16_99 label size_t
			pblendw				xmm0,			xmm1,			99
			ret
		_m128iblendepi16_100 label size_t
			pblendw				xmm0,			xmm1,			100
			ret
		_m128iblendepi16_101 label size_t
			pblendw				xmm0,			xmm1,			101
			ret
		_m128iblendepi16_102 label size_t
			pblendw				xmm0,			xmm1,			102
			ret
		_m128iblendepi16_103 label size_t
			pblendw				xmm0,			xmm1,			103
			ret
		_m128iblendepi16_104 label size_t
			pblendw				xmm0,			xmm1,			104
			ret
		_m128iblendepi16_105 label size_t
			pblendw				xmm0,			xmm1,			105
			ret
		_m128iblendepi16_106 label size_t
			pblendw				xmm0,			xmm1,			106
			ret
		_m128iblendepi16_107 label size_t
			pblendw				xmm0,			xmm1,			107
			ret
		_m128iblendepi16_108 label size_t
			pblendw				xmm0,			xmm1,			108
			ret
		_m128iblendepi16_109 label size_t
			pblendw				xmm0,			xmm1,			109
			ret
		_m128iblendepi16_110 label size_t
			pblendw				xmm0,			xmm1,			110
			ret
		_m128iblendepi16_111 label size_t
			pblendw				xmm0,			xmm1,			111
			ret
		_m128iblendepi16_112 label size_t
			pblendw				xmm0,			xmm1,			112
			ret
		_m128iblendepi16_113 label size_t
			pblendw				xmm0,			xmm1,			113
			ret
		_m128iblendepi16_114 label size_t
			pblendw				xmm0,			xmm1,			114
			ret
		_m128iblendepi16_115 label size_t
			pblendw				xmm0,			xmm1,			115
			ret
		_m128iblendepi16_116 label size_t
			pblendw				xmm0,			xmm1,			116
			ret
		_m128iblendepi16_117 label size_t
			pblendw				xmm0,			xmm1,			117
			ret
		_m128iblendepi16_118 label size_t
			pblendw				xmm0,			xmm1,			118
			ret
		_m128iblendepi16_119 label size_t
			pblendw				xmm0,			xmm1,			119
			ret
		_m128iblendepi16_120 label size_t
			pblendw				xmm0,			xmm1,			120
			ret
		_m128iblendepi16_121 label size_t
			pblendw				xmm0,			xmm1,			121
			ret
		_m128iblendepi16_122 label size_t
			pblendw				xmm0,			xmm1,			122
			ret
		_m128iblendepi16_123 label size_t
			pblendw				xmm0,			xmm1,			123
			ret
		_m128iblendepi16_124 label size_t
			pblendw				xmm0,			xmm1,			124
			ret
		_m128iblendepi16_125 label size_t
			pblendw				xmm0,			xmm1,			125
			ret
		_m128iblendepi16_126 label size_t
			pblendw				xmm0,			xmm1,			126
			ret
		_m128iblendepi16_127 label size_t
			pblendw				xmm0,			xmm1,			127
			ret
		_m128iblendepi16_128 label size_t
			pblendw				xmm0,			xmm1,			128
			ret
		_m128iblendepi16_129 label size_t
			pblendw				xmm0,			xmm1,			129
			ret
		_m128iblendepi16_130 label size_t
			pblendw				xmm0,			xmm1,			130
			ret
		_m128iblendepi16_131 label size_t
			pblendw				xmm0,			xmm1,			131
			ret
		_m128iblendepi16_132 label size_t
			pblendw				xmm0,			xmm1,			132
			ret
		_m128iblendepi16_133 label size_t
			pblendw				xmm0,			xmm1,			133
			ret
		_m128iblendepi16_134 label size_t
			pblendw				xmm0,			xmm1,			134
			ret
		_m128iblendepi16_135 label size_t
			pblendw				xmm0,			xmm1,			135
			ret
		_m128iblendepi16_136 label size_t
			pblendw				xmm0,			xmm1,			136
			ret
		_m128iblendepi16_137 label size_t
			pblendw				xmm0,			xmm1,			137
			ret
		_m128iblendepi16_138 label size_t
			pblendw				xmm0,			xmm1,			138
			ret
		_m128iblendepi16_139 label size_t
			pblendw				xmm0,			xmm1,			139
			ret
		_m128iblendepi16_140 label size_t
			pblendw				xmm0,			xmm1,			140
			ret
		_m128iblendepi16_141 label size_t
			pblendw				xmm0,			xmm1,			141
			ret
		_m128iblendepi16_142 label size_t
			pblendw				xmm0,			xmm1,			142
			ret
		_m128iblendepi16_143 label size_t
			pblendw				xmm0,			xmm1,			143
			ret
		_m128iblendepi16_144 label size_t
			pblendw				xmm0,			xmm1,			144
			ret
		_m128iblendepi16_145 label size_t
			pblendw				xmm0,			xmm1,			145
			ret
		_m128iblendepi16_146 label size_t
			pblendw				xmm0,			xmm1,			146
			ret
		_m128iblendepi16_147 label size_t
			pblendw				xmm0,			xmm1,			147
			ret
		_m128iblendepi16_148 label size_t
			pblendw				xmm0,			xmm1,			148
			ret
		_m128iblendepi16_149 label size_t
			pblendw				xmm0,			xmm1,			149
			ret
		_m128iblendepi16_150 label size_t
			pblendw				xmm0,			xmm1,			150
			ret
		_m128iblendepi16_151 label size_t
			pblendw				xmm0,			xmm1,			151
			ret
		_m128iblendepi16_152 label size_t
			pblendw				xmm0,			xmm1,			152
			ret
		_m128iblendepi16_153 label size_t
			pblendw				xmm0,			xmm1,			153
			ret
		_m128iblendepi16_154 label size_t
			pblendw				xmm0,			xmm1,			154
			ret
		_m128iblendepi16_155 label size_t
			pblendw				xmm0,			xmm1,			155
			ret
		_m128iblendepi16_156 label size_t
			pblendw				xmm0,			xmm1,			156
			ret
		_m128iblendepi16_157 label size_t
			pblendw				xmm0,			xmm1,			157
			ret
		_m128iblendepi16_158 label size_t
			pblendw				xmm0,			xmm1,			158
			ret
		_m128iblendepi16_159 label size_t
			pblendw				xmm0,			xmm1,			159
			ret
		_m128iblendepi16_160 label size_t
			pblendw				xmm0,			xmm1,			160
			ret
		_m128iblendepi16_161 label size_t
			pblendw				xmm0,			xmm1,			161
			ret
		_m128iblendepi16_162 label size_t
			pblendw				xmm0,			xmm1,			162
			ret
		_m128iblendepi16_163 label size_t
			pblendw				xmm0,			xmm1,			163
			ret
		_m128iblendepi16_164 label size_t
			pblendw				xmm0,			xmm1,			164
			ret
		_m128iblendepi16_165 label size_t
			pblendw				xmm0,			xmm1,			165
			ret
		_m128iblendepi16_166 label size_t
			pblendw				xmm0,			xmm1,			166
			ret
		_m128iblendepi16_167 label size_t
			pblendw				xmm0,			xmm1,			167
			ret
		_m128iblendepi16_168 label size_t
			pblendw				xmm0,			xmm1,			168
			ret
		_m128iblendepi16_169 label size_t
			pblendw				xmm0,			xmm1,			169
			ret
		_m128iblendepi16_170 label size_t
			pblendw				xmm0,			xmm1,			170
			ret
		_m128iblendepi16_171 label size_t
			pblendw				xmm0,			xmm1,			171
			ret
		_m128iblendepi16_172 label size_t
			pblendw				xmm0,			xmm1,			172
			ret
		_m128iblendepi16_173 label size_t
			pblendw				xmm0,			xmm1,			173
			ret
		_m128iblendepi16_174 label size_t
			pblendw				xmm0,			xmm1,			174
			ret
		_m128iblendepi16_175 label size_t
			pblendw				xmm0,			xmm1,			175
			ret
		_m128iblendepi16_176 label size_t
			pblendw				xmm0,			xmm1,			176
			ret
		_m128iblendepi16_177 label size_t
			pblendw				xmm0,			xmm1,			177
			ret
		_m128iblendepi16_178 label size_t
			pblendw				xmm0,			xmm1,			178
			ret
		_m128iblendepi16_179 label size_t
			pblendw				xmm0,			xmm1,			179
			ret
		_m128iblendepi16_180 label size_t
			pblendw				xmm0,			xmm1,			180
			ret
		_m128iblendepi16_181 label size_t
			pblendw				xmm0,			xmm1,			181
			ret
		_m128iblendepi16_182 label size_t
			pblendw				xmm0,			xmm1,			182
			ret
		_m128iblendepi16_183 label size_t
			pblendw				xmm0,			xmm1,			183
			ret
		_m128iblendepi16_184 label size_t
			pblendw				xmm0,			xmm1,			184
			ret
		_m128iblendepi16_185 label size_t
			pblendw				xmm0,			xmm1,			185
			ret
		_m128iblendepi16_186 label size_t
			pblendw				xmm0,			xmm1,			186
			ret
		_m128iblendepi16_187 label size_t
			pblendw				xmm0,			xmm1,			187
			ret
		_m128iblendepi16_188 label size_t
			pblendw				xmm0,			xmm1,			188
			ret
		_m128iblendepi16_189 label size_t
			pblendw				xmm0,			xmm1,			189
			ret
		_m128iblendepi16_190 label size_t
			pblendw				xmm0,			xmm1,			190
			ret
		_m128iblendepi16_191 label size_t
			pblendw				xmm0,			xmm1,			191
			ret
		_m128iblendepi16_192 label size_t
			pblendw				xmm0,			xmm1,			192
			ret
		_m128iblendepi16_193 label size_t
			pblendw				xmm0,			xmm1,			193
			ret
		_m128iblendepi16_194 label size_t
			pblendw				xmm0,			xmm1,			194
			ret
		_m128iblendepi16_195 label size_t
			pblendw				xmm0,			xmm1,			195
			ret
		_m128iblendepi16_196 label size_t
			pblendw				xmm0,			xmm1,			196
			ret
		_m128iblendepi16_197 label size_t
			pblendw				xmm0,			xmm1,			197
			ret
		_m128iblendepi16_198 label size_t
			pblendw				xmm0,			xmm1,			198
			ret
		_m128iblendepi16_199 label size_t
			pblendw				xmm0,			xmm1,			199
			ret
		_m128iblendepi16_200 label size_t
			pblendw				xmm0,			xmm1,			200
			ret
		_m128iblendepi16_201 label size_t
			pblendw				xmm0,			xmm1,			201
			ret
		_m128iblendepi16_202 label size_t
			pblendw				xmm0,			xmm1,			202
			ret
		_m128iblendepi16_203 label size_t
			pblendw				xmm0,			xmm1,			203
			ret
		_m128iblendepi16_204 label size_t
			pblendw				xmm0,			xmm1,			204
			ret
		_m128iblendepi16_205 label size_t
			pblendw				xmm0,			xmm1,			205
			ret
		_m128iblendepi16_206 label size_t
			pblendw				xmm0,			xmm1,			206
			ret
		_m128iblendepi16_207 label size_t
			pblendw				xmm0,			xmm1,			207
			ret
		_m128iblendepi16_208 label size_t
			pblendw				xmm0,			xmm1,			208
			ret
		_m128iblendepi16_209 label size_t
			pblendw				xmm0,			xmm1,			209
			ret
		_m128iblendepi16_210 label size_t
			pblendw				xmm0,			xmm1,			210
			ret
		_m128iblendepi16_211 label size_t
			pblendw				xmm0,			xmm1,			211
			ret
		_m128iblendepi16_212 label size_t
			pblendw				xmm0,			xmm1,			212
			ret
		_m128iblendepi16_213 label size_t
			pblendw				xmm0,			xmm1,			213
			ret
		_m128iblendepi16_214 label size_t
			pblendw				xmm0,			xmm1,			214
			ret
		_m128iblendepi16_215 label size_t
			pblendw				xmm0,			xmm1,			215
			ret
		_m128iblendepi16_216 label size_t
			pblendw				xmm0,			xmm1,			216
			ret
		_m128iblendepi16_217 label size_t
			pblendw				xmm0,			xmm1,			217
			ret
		_m128iblendepi16_218 label size_t
			pblendw				xmm0,			xmm1,			218
			ret
		_m128iblendepi16_219 label size_t
			pblendw				xmm0,			xmm1,			219
			ret
		_m128iblendepi16_220 label size_t
			pblendw				xmm0,			xmm1,			220
			ret
		_m128iblendepi16_221 label size_t
			pblendw				xmm0,			xmm1,			221
			ret
		_m128iblendepi16_222 label size_t
			pblendw				xmm0,			xmm1,			222
			ret
		_m128iblendepi16_223 label size_t
			pblendw				xmm0,			xmm1,			223
			ret
		_m128iblendepi16_224 label size_t
			pblendw				xmm0,			xmm1,			224
			ret
		_m128iblendepi16_225 label size_t
			pblendw				xmm0,			xmm1,			225
			ret
		_m128iblendepi16_226 label size_t
			pblendw				xmm0,			xmm1,			226
			ret
		_m128iblendepi16_227 label size_t
			pblendw				xmm0,			xmm1,			227
			ret
		_m128iblendepi16_228 label size_t
			pblendw				xmm0,			xmm1,			228
			ret
		_m128iblendepi16_229 label size_t
			pblendw				xmm0,			xmm1,			229
			ret
		_m128iblendepi16_230 label size_t
			pblendw				xmm0,			xmm1,			230
			ret
		_m128iblendepi16_231 label size_t
			pblendw				xmm0,			xmm1,			231
			ret
		_m128iblendepi16_232 label size_t
			pblendw				xmm0,			xmm1,			232
			ret
		_m128iblendepi16_233 label size_t
			pblendw				xmm0,			xmm1,			233
			ret
		_m128iblendepi16_234 label size_t
			pblendw				xmm0,			xmm1,			234
			ret
		_m128iblendepi16_235 label size_t
			pblendw				xmm0,			xmm1,			235
			ret
		_m128iblendepi16_236 label size_t
			pblendw				xmm0,			xmm1,			236
			ret
		_m128iblendepi16_237 label size_t
			pblendw				xmm0,			xmm1,			237
			ret
		_m128iblendepi16_238 label size_t
			pblendw				xmm0,			xmm1,			238
			ret
		_m128iblendepi16_239 label size_t
			pblendw				xmm0,			xmm1,			239
			ret
		_m128iblendepi16_240 label size_t
			pblendw				xmm0,			xmm1,			240
			ret
		_m128iblendepi16_241 label size_t
			pblendw				xmm0,			xmm1,			241
			ret
		_m128iblendepi16_242 label size_t
			pblendw				xmm0,			xmm1,			242
			ret
		_m128iblendepi16_243 label size_t
			pblendw				xmm0,			xmm1,			243
			ret
		_m128iblendepi16_244 label size_t
			pblendw				xmm0,			xmm1,			244
			ret
		_m128iblendepi16_245 label size_t
			pblendw				xmm0,			xmm1,			245
			ret
		_m128iblendepi16_246 label size_t
			pblendw				xmm0,			xmm1,			246
			ret
		_m128iblendepi16_247 label size_t
			pblendw				xmm0,			xmm1,			247
			ret
		_m128iblendepi16_248 label size_t
			pblendw				xmm0,			xmm1,			248
			ret
		_m128iblendepi16_249 label size_t
			pblendw				xmm0,			xmm1,			249
			ret
		_m128iblendepi16_250 label size_t
			pblendw				xmm0,			xmm1,			250
			ret
		_m128iblendepi16_251 label size_t
			pblendw				xmm0,			xmm1,			251
			ret
		_m128iblendepi16_252 label size_t
			pblendw				xmm0,			xmm1,			252
			ret
		_m128iblendepi16_253 label size_t
			pblendw				xmm0,			xmm1,			253
			ret
		_m128iblendepi16_254 label size_t
			pblendw				xmm0,			xmm1,			254
			ret
		_m128iblendepi16_255 label size_t
			pblendw				xmm0,			xmm1,			255
			ret
		;.endif
		
funcend

funcstart _uX_mm_blend_ps_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			0
			ret
funcend

funcstart _uX_mm_blend_ps_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			1
			ret
funcend

funcstart _uX_mm_blend_ps_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			2
			ret
funcend

funcstart _uX_mm_blend_ps_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			3
			ret
funcend

funcstart _uX_mm_blend_ps_4, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			4
			ret
funcend

funcstart _uX_mm_blend_ps_5, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			5
			ret
funcend

funcstart _uX_mm_blend_ps_6, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			6
			ret
funcend

funcstart _uX_mm_blend_ps_7, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			7
			ret
funcend

funcstart _uX_mm_blend_ps_8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			8
			ret
funcend

funcstart _uX_mm_blend_ps_9, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			9
			ret
funcend

funcstart _uX_mm_blend_ps_10, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			10
			ret
funcend

funcstart _uX_mm_blend_ps_11, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			11
			ret
funcend

funcstart _uX_mm_blend_ps_12, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			12
			ret
funcend

funcstart _uX_mm_blend_ps_13, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			13
			ret
funcend

funcstart _uX_mm_blend_ps_14, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			14
			ret
funcend

funcstart _uX_mm_blend_ps_15, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendps				xmm0,			xmm1,			15
			ret
funcend

funcstart _uX_mm_blend_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128blendpsjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128blendpsjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128blendps_0 label size_t
			blendps				xmm0,			xmm1,			0
			ret
		_m128blendps_1 label size_t
			blendps				xmm0,			xmm1,			1
			ret
		_m128blendps_2 label size_t
			blendps				xmm0,			xmm1,			2
			ret
		_m128blendps_3 label size_t
			blendps				xmm0,			xmm1,			3
			ret
		_m128blendps_4 label size_t
			blendps				xmm0,			xmm1,			4
			ret
		_m128blendps_5 label size_t
			blendps				xmm0,			xmm1,			5
			ret
		_m128blendps_6 label size_t
			blendps				xmm0,			xmm1,			6
			ret
		_m128blendps_7 label size_t
			blendps				xmm0,			xmm1,			7
			ret
		_m128blendps_8 label size_t
			blendps				xmm0,			xmm1,			8
			ret
		_m128blendps_9 label size_t
			blendps				xmm0,			xmm1,			9
			ret
		_m128blendps_10 label size_t
			blendps				xmm0,			xmm1,			10
			ret
		_m128blendps_11 label size_t
			blendps				xmm0,			xmm1,			11
			ret
		_m128blendps_12 label size_t
			blendps				xmm0,			xmm1,			12
			ret
		_m128blendps_13 label size_t
			blendps				xmm0,			xmm1,			13
			ret
		_m128blendps_14 label size_t
			blendps				xmm0,			xmm1,			14
			ret
		_m128blendps_15 label size_t
			blendps				xmm0,			xmm1,			15
			ret
		;.endif
		
funcend

funcstart _uX_mm_blend_pd_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendpd				xmm0,			xmm1,			0
			ret
funcend

funcstart _uX_mm_blend_pd_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendpd				xmm0,			xmm1,			1
			ret
funcend

funcstart _uX_mm_blend_pd_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendpd				xmm0,			xmm1,			2
			ret
funcend

funcstart _uX_mm_blend_pd_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			blendpd				xmm0,			xmm1,			3
			ret
funcend

funcstart _uX_mm_blend_pd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128dblendpdjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128dblendpdjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128dblendpd_0 label size_t
			blendpd				xmm0,			xmm1,			0
			ret
		_m128dblendpd_1 label size_t
			blendpd				xmm0,			xmm1,			1
			ret
		_m128dblendpd_2 label size_t
			blendpd				xmm0,			xmm1,			2
			ret
		_m128dblendpd_3 label size_t
			blendpd				xmm0,			xmm1,			3
			ret
		;.endif
		
funcend

;************************************
; Dot product instructions
;************************************

funcstart _uX_mm_dp_ps_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			0
			ret
funcend

funcstart _uX_mm_dp_ps_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			1
			ret
funcend

funcstart _uX_mm_dp_ps_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			2
			ret
funcend

funcstart _uX_mm_dp_ps_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			3
			ret
funcend

funcstart _uX_mm_dp_ps_4, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			4
			ret
funcend

funcstart _uX_mm_dp_ps_5, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			5
			ret
funcend

funcstart _uX_mm_dp_ps_6, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			6
			ret
funcend

funcstart _uX_mm_dp_ps_7, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			7
			ret
funcend

funcstart _uX_mm_dp_ps_8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			8
			ret
funcend

funcstart _uX_mm_dp_ps_9, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			9
			ret
funcend

funcstart _uX_mm_dp_ps_10, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			10
			ret
funcend

funcstart _uX_mm_dp_ps_11, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			11
			ret
funcend

funcstart _uX_mm_dp_ps_12, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			12
			ret
funcend

funcstart _uX_mm_dp_ps_13, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			13
			ret
funcend

funcstart _uX_mm_dp_ps_14, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			14
			ret
funcend

funcstart _uX_mm_dp_ps_15, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			15
			ret
funcend

funcstart _uX_mm_dp_ps_16, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			16
			ret
funcend

funcstart _uX_mm_dp_ps_17, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			17
			ret
funcend

funcstart _uX_mm_dp_ps_18, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			18
			ret
funcend

funcstart _uX_mm_dp_ps_19, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			19
			ret
funcend

funcstart _uX_mm_dp_ps_20, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			20
			ret
funcend

funcstart _uX_mm_dp_ps_21, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			21
			ret
funcend

funcstart _uX_mm_dp_ps_22, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			22
			ret
funcend

funcstart _uX_mm_dp_ps_23, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			23
			ret
funcend

funcstart _uX_mm_dp_ps_24, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			24
			ret
funcend

funcstart _uX_mm_dp_ps_25, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			25
			ret
funcend

funcstart _uX_mm_dp_ps_26, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			26
			ret
funcend

funcstart _uX_mm_dp_ps_27, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			27
			ret
funcend

funcstart _uX_mm_dp_ps_28, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			28
			ret
funcend

funcstart _uX_mm_dp_ps_29, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			29
			ret
funcend

funcstart _uX_mm_dp_ps_30, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			30
			ret
funcend

funcstart _uX_mm_dp_ps_31, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			31
			ret
funcend

funcstart _uX_mm_dp_ps_32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			32
			ret
funcend

funcstart _uX_mm_dp_ps_33, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			33
			ret
funcend

funcstart _uX_mm_dp_ps_34, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			34
			ret
funcend

funcstart _uX_mm_dp_ps_35, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			35
			ret
funcend

funcstart _uX_mm_dp_ps_36, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			36
			ret
funcend

funcstart _uX_mm_dp_ps_37, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			37
			ret
funcend

funcstart _uX_mm_dp_ps_38, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			38
			ret
funcend

funcstart _uX_mm_dp_ps_39, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			39
			ret
funcend

funcstart _uX_mm_dp_ps_40, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			40
			ret
funcend

funcstart _uX_mm_dp_ps_41, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			41
			ret
funcend

funcstart _uX_mm_dp_ps_42, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			42
			ret
funcend

funcstart _uX_mm_dp_ps_43, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			43
			ret
funcend

funcstart _uX_mm_dp_ps_44, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			44
			ret
funcend

funcstart _uX_mm_dp_ps_45, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			45
			ret
funcend

funcstart _uX_mm_dp_ps_46, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			46
			ret
funcend

funcstart _uX_mm_dp_ps_47, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			47
			ret
funcend

funcstart _uX_mm_dp_ps_48, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			48
			ret
funcend

funcstart _uX_mm_dp_ps_49, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			49
			ret
funcend

funcstart _uX_mm_dp_ps_50, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			50
			ret
funcend

funcstart _uX_mm_dp_ps_51, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			51
			ret
funcend

funcstart _uX_mm_dp_ps_52, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			52
			ret
funcend

funcstart _uX_mm_dp_ps_53, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			53
			ret
funcend

funcstart _uX_mm_dp_ps_54, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			54
			ret
funcend

funcstart _uX_mm_dp_ps_55, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			55
			ret
funcend

funcstart _uX_mm_dp_ps_56, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			56
			ret
funcend

funcstart _uX_mm_dp_ps_57, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			57
			ret
funcend

funcstart _uX_mm_dp_ps_58, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			58
			ret
funcend

funcstart _uX_mm_dp_ps_59, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			59
			ret
funcend

funcstart _uX_mm_dp_ps_60, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			60
			ret
funcend

funcstart _uX_mm_dp_ps_61, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			61
			ret
funcend

funcstart _uX_mm_dp_ps_62, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			62
			ret
funcend

funcstart _uX_mm_dp_ps_63, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			63
			ret
funcend

funcstart _uX_mm_dp_ps_64, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			64
			ret
funcend

funcstart _uX_mm_dp_ps_65, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			65
			ret
funcend

funcstart _uX_mm_dp_ps_66, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			66
			ret
funcend

funcstart _uX_mm_dp_ps_67, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			67
			ret
funcend

funcstart _uX_mm_dp_ps_68, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			68
			ret
funcend

funcstart _uX_mm_dp_ps_69, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			69
			ret
funcend

funcstart _uX_mm_dp_ps_70, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			70
			ret
funcend

funcstart _uX_mm_dp_ps_71, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			71
			ret
funcend

funcstart _uX_mm_dp_ps_72, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			72
			ret
funcend

funcstart _uX_mm_dp_ps_73, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			73
			ret
funcend

funcstart _uX_mm_dp_ps_74, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			74
			ret
funcend

funcstart _uX_mm_dp_ps_75, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			75
			ret
funcend

funcstart _uX_mm_dp_ps_76, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			76
			ret
funcend

funcstart _uX_mm_dp_ps_77, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			77
			ret
funcend

funcstart _uX_mm_dp_ps_78, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			78
			ret
funcend

funcstart _uX_mm_dp_ps_79, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			79
			ret
funcend

funcstart _uX_mm_dp_ps_80, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			80
			ret
funcend

funcstart _uX_mm_dp_ps_81, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			81
			ret
funcend

funcstart _uX_mm_dp_ps_82, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			82
			ret
funcend

funcstart _uX_mm_dp_ps_83, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			83
			ret
funcend

funcstart _uX_mm_dp_ps_84, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			84
			ret
funcend

funcstart _uX_mm_dp_ps_85, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			85
			ret
funcend

funcstart _uX_mm_dp_ps_86, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			86
			ret
funcend

funcstart _uX_mm_dp_ps_87, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			87
			ret
funcend

funcstart _uX_mm_dp_ps_88, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			88
			ret
funcend

funcstart _uX_mm_dp_ps_89, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			89
			ret
funcend

funcstart _uX_mm_dp_ps_90, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			90
			ret
funcend

funcstart _uX_mm_dp_ps_91, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			91
			ret
funcend

funcstart _uX_mm_dp_ps_92, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			92
			ret
funcend

funcstart _uX_mm_dp_ps_93, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			93
			ret
funcend

funcstart _uX_mm_dp_ps_94, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			94
			ret
funcend

funcstart _uX_mm_dp_ps_95, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			95
			ret
funcend

funcstart _uX_mm_dp_ps_96, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			96
			ret
funcend

funcstart _uX_mm_dp_ps_97, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			97
			ret
funcend

funcstart _uX_mm_dp_ps_98, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			98
			ret
funcend

funcstart _uX_mm_dp_ps_99, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			99
			ret
funcend

funcstart _uX_mm_dp_ps_100, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			100
			ret
funcend

funcstart _uX_mm_dp_ps_101, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			101
			ret
funcend

funcstart _uX_mm_dp_ps_102, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			102
			ret
funcend

funcstart _uX_mm_dp_ps_103, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			103
			ret
funcend

funcstart _uX_mm_dp_ps_104, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			104
			ret
funcend

funcstart _uX_mm_dp_ps_105, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			105
			ret
funcend

funcstart _uX_mm_dp_ps_106, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			106
			ret
funcend

funcstart _uX_mm_dp_ps_107, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			107
			ret
funcend

funcstart _uX_mm_dp_ps_108, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			108
			ret
funcend

funcstart _uX_mm_dp_ps_109, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			109
			ret
funcend

funcstart _uX_mm_dp_ps_110, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			110
			ret
funcend

funcstart _uX_mm_dp_ps_111, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			111
			ret
funcend

funcstart _uX_mm_dp_ps_112, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			112
			ret
funcend

funcstart _uX_mm_dp_ps_113, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			113
			ret
funcend

funcstart _uX_mm_dp_ps_114, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			114
			ret
funcend

funcstart _uX_mm_dp_ps_115, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			115
			ret
funcend

funcstart _uX_mm_dp_ps_116, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			116
			ret
funcend

funcstart _uX_mm_dp_ps_117, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			117
			ret
funcend

funcstart _uX_mm_dp_ps_118, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			118
			ret
funcend

funcstart _uX_mm_dp_ps_119, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			119
			ret
funcend

funcstart _uX_mm_dp_ps_120, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			120
			ret
funcend

funcstart _uX_mm_dp_ps_121, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			121
			ret
funcend

funcstart _uX_mm_dp_ps_122, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			122
			ret
funcend

funcstart _uX_mm_dp_ps_123, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			123
			ret
funcend

funcstart _uX_mm_dp_ps_124, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			124
			ret
funcend

funcstart _uX_mm_dp_ps_125, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			125
			ret
funcend

funcstart _uX_mm_dp_ps_126, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			126
			ret
funcend

funcstart _uX_mm_dp_ps_127, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			127
			ret
funcend

funcstart _uX_mm_dp_ps_128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			128
			ret
funcend

funcstart _uX_mm_dp_ps_129, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			129
			ret
funcend

funcstart _uX_mm_dp_ps_130, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			130
			ret
funcend

funcstart _uX_mm_dp_ps_131, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			131
			ret
funcend

funcstart _uX_mm_dp_ps_132, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			132
			ret
funcend

funcstart _uX_mm_dp_ps_133, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			133
			ret
funcend

funcstart _uX_mm_dp_ps_134, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			134
			ret
funcend

funcstart _uX_mm_dp_ps_135, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			135
			ret
funcend

funcstart _uX_mm_dp_ps_136, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			136
			ret
funcend

funcstart _uX_mm_dp_ps_137, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			137
			ret
funcend

funcstart _uX_mm_dp_ps_138, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			138
			ret
funcend

funcstart _uX_mm_dp_ps_139, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			139
			ret
funcend

funcstart _uX_mm_dp_ps_140, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			140
			ret
funcend

funcstart _uX_mm_dp_ps_141, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			141
			ret
funcend

funcstart _uX_mm_dp_ps_142, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			142
			ret
funcend

funcstart _uX_mm_dp_ps_143, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			143
			ret
funcend

funcstart _uX_mm_dp_ps_144, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			144
			ret
funcend

funcstart _uX_mm_dp_ps_145, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			145
			ret
funcend

funcstart _uX_mm_dp_ps_146, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			dpps				xmm0,			xmm1,			146
			ret
funcend

funcstart _uX_mm_dp_ps_147, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			147
			ret
funcend

funcstart _uX_mm_dp_ps_148, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			148
			ret
funcend

funcstart _uX_mm_dp_ps_149, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			149
			ret
funcend

funcstart _uX_mm_dp_ps_150, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			150
			ret
funcend

funcstart _uX_mm_dp_ps_151, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			151
			ret
funcend

funcstart _uX_mm_dp_ps_152, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			152
			ret
funcend

funcstart _uX_mm_dp_ps_153, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			153
			ret
funcend

funcstart _uX_mm_dp_ps_154, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			dpps				xmm0,			xmm1,			154
			ret
funcend

funcstart _uX_mm_dp_ps_155, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			155
			ret
funcend

funcstart _uX_mm_dp_ps_156, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			156
			ret
funcend

funcstart _uX_mm_dp_ps_157, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			157
			ret
funcend

funcstart _uX_mm_dp_ps_158, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			158
			ret
funcend

funcstart _uX_mm_dp_ps_159, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			159
			ret
funcend

funcstart _uX_mm_dp_ps_160, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			160
			ret
funcend

funcstart _uX_mm_dp_ps_161, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			161
			ret
funcend

funcstart _uX_mm_dp_ps_162, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			162
			ret
funcend

funcstart _uX_mm_dp_ps_163, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			163
			ret
funcend

funcstart _uX_mm_dp_ps_164, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			164
			ret
funcend

funcstart _uX_mm_dp_ps_165, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			165
			ret
funcend

funcstart _uX_mm_dp_ps_166, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			166
			ret
funcend

funcstart _uX_mm_dp_ps_167, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			167
			ret
funcend

funcstart _uX_mm_dp_ps_168, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			168
			ret
funcend

funcstart _uX_mm_dp_ps_169, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			169
			ret
funcend

funcstart _uX_mm_dp_ps_170, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			170
			ret
funcend

funcstart _uX_mm_dp_ps_171, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			171
			ret
funcend

funcstart _uX_mm_dp_ps_172, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			172
			ret
funcend

funcstart _uX_mm_dp_ps_173, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			173
			ret
funcend

funcstart _uX_mm_dp_ps_174, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			dpps				xmm0,			xmm1,			174
			ret
funcend

funcstart _uX_mm_dp_ps_175, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			175
			ret
funcend

funcstart _uX_mm_dp_ps_176, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			176
			ret
funcend

funcstart _uX_mm_dp_ps_177, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			177
			ret
funcend

funcstart _uX_mm_dp_ps_178, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			178
			ret
funcend

funcstart _uX_mm_dp_ps_179, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			179
			ret
funcend

funcstart _uX_mm_dp_ps_180, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			180
			ret
funcend

funcstart _uX_mm_dp_ps_181, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			181
			ret
funcend

funcstart _uX_mm_dp_ps_182, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			182
			ret
funcend

funcstart _uX_mm_dp_ps_183, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			183
			ret
funcend

funcstart _uX_mm_dp_ps_184, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			184
			ret
funcend

funcstart _uX_mm_dp_ps_185, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			185
			ret
funcend

funcstart _uX_mm_dp_ps_186, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			186
			ret
funcend

funcstart _uX_mm_dp_ps_187, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			187
			ret
funcend

funcstart _uX_mm_dp_ps_188, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			188
			ret
funcend

funcstart _uX_mm_dp_ps_189, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			189
			ret
funcend

funcstart _uX_mm_dp_ps_190, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			190
			ret
funcend

funcstart _uX_mm_dp_ps_191, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			191
			ret
funcend

funcstart _uX_mm_dp_ps_192, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			192
			ret
funcend

funcstart _uX_mm_dp_ps_193, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			193
			ret
funcend

funcstart _uX_mm_dp_ps_194, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			194
			ret
funcend

funcstart _uX_mm_dp_ps_195, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			195
			ret
funcend

funcstart _uX_mm_dp_ps_196, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			196
			ret
funcend

funcstart _uX_mm_dp_ps_197, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			197
			ret
funcend

funcstart _uX_mm_dp_ps_198, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			198
			ret
funcend

funcstart _uX_mm_dp_ps_199, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			199
			ret
funcend

funcstart _uX_mm_dp_ps_200, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			200
			ret
funcend

funcstart _uX_mm_dp_ps_201, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			201
			ret
funcend

funcstart _uX_mm_dp_ps_202, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			202
			ret
funcend

funcstart _uX_mm_dp_ps_203, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			203
			ret
funcend

funcstart _uX_mm_dp_ps_204, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			204
			ret
funcend

funcstart _uX_mm_dp_ps_205, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			205
			ret
funcend

funcstart _uX_mm_dp_ps_206, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			206
			ret
funcend

funcstart _uX_mm_dp_ps_207, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			207
			ret
funcend

funcstart _uX_mm_dp_ps_208, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			208
			ret
funcend

funcstart _uX_mm_dp_ps_209, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			209
			ret
funcend

funcstart _uX_mm_dp_ps_210, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			210
			ret
funcend

funcstart _uX_mm_dp_ps_211, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			211
			ret
funcend

funcstart _uX_mm_dp_ps_212, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			212
			ret
funcend

funcstart _uX_mm_dp_ps_213, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			213
			ret
funcend

funcstart _uX_mm_dp_ps_214, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			214
			ret
funcend

funcstart _uX_mm_dp_ps_215, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			215
			ret
funcend

funcstart _uX_mm_dp_ps_216, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			216
			ret
funcend

funcstart _uX_mm_dp_ps_217, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			217
			ret
funcend

funcstart _uX_mm_dp_ps_218, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			218
			ret
funcend

funcstart _uX_mm_dp_ps_219, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			219
			ret
funcend

funcstart _uX_mm_dp_ps_220, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			220
			ret
funcend

funcstart _uX_mm_dp_ps_221, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			221
			ret
funcend

funcstart _uX_mm_dp_ps_222, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			222
			ret
funcend

funcstart _uX_mm_dp_ps_223, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			223
			ret
funcend

funcstart _uX_mm_dp_ps_224, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			224
			ret
funcend

funcstart _uX_mm_dp_ps_225, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			225
			ret
funcend

funcstart _uX_mm_dp_ps_226, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			226
			ret
funcend

funcstart _uX_mm_dp_ps_227, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			227
			ret
funcend

funcstart _uX_mm_dp_ps_228, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			228
			ret
funcend

funcstart _uX_mm_dp_ps_229, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			229
			ret
funcend

funcstart _uX_mm_dp_ps_230, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			230
			ret
funcend

funcstart _uX_mm_dp_ps_231, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			231
			ret
funcend

funcstart _uX_mm_dp_ps_232, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			232
			ret
funcend

funcstart _uX_mm_dp_ps_233, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			233
			ret
funcend

funcstart _uX_mm_dp_ps_234, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			234
			ret
funcend

funcstart _uX_mm_dp_ps_235, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			235
			ret
funcend

funcstart _uX_mm_dp_ps_236, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			236
			ret
funcend

funcstart _uX_mm_dp_ps_237, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			237
			ret
funcend

funcstart _uX_mm_dp_ps_238, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			238
			ret
funcend

funcstart _uX_mm_dp_ps_239, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			239
			ret
funcend

funcstart _uX_mm_dp_ps_240, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			240
			ret
funcend

funcstart _uX_mm_dp_ps_241, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			241
			ret
funcend

funcstart _uX_mm_dp_ps_242, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			242
			ret
funcend

funcstart _uX_mm_dp_ps_243, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			243
			ret
funcend

funcstart _uX_mm_dp_ps_244, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			244
			ret
funcend

funcstart _uX_mm_dp_ps_245, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			245
			ret
funcend

funcstart _uX_mm_dp_ps_246, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			246
			ret
funcend

funcstart _uX_mm_dp_ps_247, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			247
			ret
funcend

funcstart _uX_mm_dp_ps_248, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			248
			ret
funcend

funcstart _uX_mm_dp_ps_249, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			249
			ret
funcend

funcstart _uX_mm_dp_ps_250, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			250
			ret
funcend

funcstart _uX_mm_dp_ps_251, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			251
			ret
funcend

funcstart _uX_mm_dp_ps_252, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			252
			ret
funcend

funcstart _uX_mm_dp_ps_253, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			253
			ret
funcend

funcstart _uX_mm_dp_ps_254, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			254
			ret
funcend

funcstart _uX_mm_dp_ps_255, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dpps				xmm0,			xmm1,			255
			ret
funcend

funcstart _uX_mm_dp_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128dppsjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128dppsjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128dpps_0 label size_t
			dpps				xmm0,			xmm1,			0
			ret
		_m128dpps_1 label size_t
			dpps				xmm0,			xmm1,			1
			ret
		_m128dpps_2 label size_t
			dpps				xmm0,			xmm1,			2
			ret
		_m128dpps_3 label size_t
			dpps				xmm0,			xmm1,			3
			ret
		_m128dpps_4 label size_t
			dpps				xmm0,			xmm1,			4
			ret
		_m128dpps_5 label size_t
			dpps				xmm0,			xmm1,			5
			ret
		_m128dpps_6 label size_t
			dpps				xmm0,			xmm1,			6
			ret
		_m128dpps_7 label size_t
			dpps				xmm0,			xmm1,			7
			ret
		_m128dpps_8 label size_t
			dpps				xmm0,			xmm1,			8
			ret
		_m128dpps_9 label size_t
			dpps				xmm0,			xmm1,			9
			ret
		_m128dpps_10 label size_t
			dpps				xmm0,			xmm1,			10
			ret
		_m128dpps_11 label size_t
			dpps				xmm0,			xmm1,			11
			ret
		_m128dpps_12 label size_t
			dpps				xmm0,			xmm1,			12
			ret
		_m128dpps_13 label size_t
			dpps				xmm0,			xmm1,			13
			ret
		_m128dpps_14 label size_t
			dpps				xmm0,			xmm1,			14
			ret
		_m128dpps_15 label size_t
			dpps				xmm0,			xmm1,			15
			ret
		_m128dpps_16 label size_t
			dpps				xmm0,			xmm1,			16
			ret
		_m128dpps_17 label size_t
			dpps				xmm0,			xmm1,			17
			ret
		_m128dpps_18 label size_t
			dpps				xmm0,			xmm1,			18
			ret
		_m128dpps_19 label size_t
			dpps				xmm0,			xmm1,			19
			ret
		_m128dpps_20 label size_t
			dpps				xmm0,			xmm1,			20
			ret
		_m128dpps_21 label size_t
			dpps				xmm0,			xmm1,			21
			ret
		_m128dpps_22 label size_t
			dpps				xmm0,			xmm1,			22
			ret
		_m128dpps_23 label size_t
			dpps				xmm0,			xmm1,			23
			ret
		_m128dpps_24 label size_t
			dpps				xmm0,			xmm1,			24
			ret
		_m128dpps_25 label size_t
			dpps				xmm0,			xmm1,			25
			ret
		_m128dpps_26 label size_t
			dpps				xmm0,			xmm1,			26
			ret
		_m128dpps_27 label size_t
			dpps				xmm0,			xmm1,			27
			ret
		_m128dpps_28 label size_t
			dpps				xmm0,			xmm1,			28
			ret
		_m128dpps_29 label size_t
			dpps				xmm0,			xmm1,			29
			ret
		_m128dpps_30 label size_t
			dpps				xmm0,			xmm1,			30
			ret
		_m128dpps_31 label size_t
			dpps				xmm0,			xmm1,			31
			ret
		_m128dpps_32 label size_t
			dpps				xmm0,			xmm1,			32
			ret
		_m128dpps_33 label size_t
			dpps				xmm0,			xmm1,			33
			ret
		_m128dpps_34 label size_t
			dpps				xmm0,			xmm1,			34
			ret
		_m128dpps_35 label size_t
			dpps				xmm0,			xmm1,			35
			ret
		_m128dpps_36 label size_t
			dpps				xmm0,			xmm1,			36
			ret
		_m128dpps_37 label size_t
			dpps				xmm0,			xmm1,			37
			ret
		_m128dpps_38 label size_t
			dpps				xmm0,			xmm1,			38
			ret
		_m128dpps_39 label size_t
			dpps				xmm0,			xmm1,			39
			ret
		_m128dpps_40 label size_t
			dpps				xmm0,			xmm1,			40
			ret
		_m128dpps_41 label size_t
			dpps				xmm0,			xmm1,			41
			ret
		_m128dpps_42 label size_t
			dpps				xmm0,			xmm1,			42
			ret
		_m128dpps_43 label size_t
			dpps				xmm0,			xmm1,			43
			ret
		_m128dpps_44 label size_t
			dpps				xmm0,			xmm1,			44
			ret
		_m128dpps_45 label size_t
			dpps				xmm0,			xmm1,			45
			ret
		_m128dpps_46 label size_t
			dpps				xmm0,			xmm1,			46
			ret
		_m128dpps_47 label size_t
			dpps				xmm0,			xmm1,			47
			ret
		_m128dpps_48 label size_t
			dpps				xmm0,			xmm1,			48
			ret
		_m128dpps_49 label size_t
			dpps				xmm0,			xmm1,			49
			ret
		_m128dpps_50 label size_t
			dpps				xmm0,			xmm1,			50
			ret
		_m128dpps_51 label size_t
			dpps				xmm0,			xmm1,			51
			ret
		_m128dpps_52 label size_t
			dpps				xmm0,			xmm1,			52
			ret
		_m128dpps_53 label size_t
			dpps				xmm0,			xmm1,			53
			ret
		_m128dpps_54 label size_t
			dpps				xmm0,			xmm1,			54
			ret
		_m128dpps_55 label size_t
			dpps				xmm0,			xmm1,			55
			ret
		_m128dpps_56 label size_t
			dpps				xmm0,			xmm1,			56
			ret
		_m128dpps_57 label size_t
			dpps				xmm0,			xmm1,			57
			ret
		_m128dpps_58 label size_t
			dpps				xmm0,			xmm1,			58
			ret
		_m128dpps_59 label size_t
			dpps				xmm0,			xmm1,			59
			ret
		_m128dpps_60 label size_t
			dpps				xmm0,			xmm1,			60
			ret
		_m128dpps_61 label size_t
			dpps				xmm0,			xmm1,			61
			ret
		_m128dpps_62 label size_t
			dpps				xmm0,			xmm1,			62
			ret
		_m128dpps_63 label size_t
			dpps				xmm0,			xmm1,			63
			ret
		_m128dpps_64 label size_t
			dpps				xmm0,			xmm1,			64
			ret
		_m128dpps_65 label size_t
			dpps				xmm0,			xmm1,			65
			ret
		_m128dpps_66 label size_t
			dpps				xmm0,			xmm1,			66
			ret
		_m128dpps_67 label size_t
			dpps				xmm0,			xmm1,			67
			ret
		_m128dpps_68 label size_t
			dpps				xmm0,			xmm1,			68
			ret
		_m128dpps_69 label size_t
			dpps				xmm0,			xmm1,			69
			ret
		_m128dpps_70 label size_t
			dpps				xmm0,			xmm1,			70
			ret
		_m128dpps_71 label size_t
			dpps				xmm0,			xmm1,			71
			ret
		_m128dpps_72 label size_t
			dpps				xmm0,			xmm1,			72
			ret
		_m128dpps_73 label size_t
			dpps				xmm0,			xmm1,			73
			ret
		_m128dpps_74 label size_t
			dpps				xmm0,			xmm1,			74
			ret
		_m128dpps_75 label size_t
			dpps				xmm0,			xmm1,			75
			ret
		_m128dpps_76 label size_t
			dpps				xmm0,			xmm1,			76
			ret
		_m128dpps_77 label size_t
			dpps				xmm0,			xmm1,			77
			ret
		_m128dpps_78 label size_t
			dpps				xmm0,			xmm1,			78
			ret
		_m128dpps_79 label size_t
			dpps				xmm0,			xmm1,			79
			ret
		_m128dpps_80 label size_t
			dpps				xmm0,			xmm1,			80
			ret
		_m128dpps_81 label size_t
			dpps				xmm0,			xmm1,			81
			ret
		_m128dpps_82 label size_t
			dpps				xmm0,			xmm1,			82
			ret
		_m128dpps_83 label size_t
			dpps				xmm0,			xmm1,			83
			ret
		_m128dpps_84 label size_t
			dpps				xmm0,			xmm1,			84
			ret
		_m128dpps_85 label size_t
			dpps				xmm0,			xmm1,			85
			ret
		_m128dpps_86 label size_t
			dpps				xmm0,			xmm1,			86
			ret
		_m128dpps_87 label size_t
			dpps				xmm0,			xmm1,			87
			ret
		_m128dpps_88 label size_t
			dpps				xmm0,			xmm1,			88
			ret
		_m128dpps_89 label size_t
			dpps				xmm0,			xmm1,			89
			ret
		_m128dpps_90 label size_t
			dpps				xmm0,			xmm1,			90
			ret
		_m128dpps_91 label size_t
			dpps				xmm0,			xmm1,			91
			ret
		_m128dpps_92 label size_t
			dpps				xmm0,			xmm1,			92
			ret
		_m128dpps_93 label size_t
			dpps				xmm0,			xmm1,			93
			ret
		_m128dpps_94 label size_t
			dpps				xmm0,			xmm1,			94
			ret
		_m128dpps_95 label size_t
			dpps				xmm0,			xmm1,			95
			ret
		_m128dpps_96 label size_t
			dpps				xmm0,			xmm1,			96
			ret
		_m128dpps_97 label size_t
			dpps				xmm0,			xmm1,			97
			ret
		_m128dpps_98 label size_t
			dpps				xmm0,			xmm1,			98
			ret
		_m128dpps_99 label size_t
			dpps				xmm0,			xmm1,			99
			ret
		_m128dpps_100 label size_t
			dpps				xmm0,			xmm1,			100
			ret
		_m128dpps_101 label size_t
			dpps				xmm0,			xmm1,			101
			ret
		_m128dpps_102 label size_t
			dpps				xmm0,			xmm1,			102
			ret
		_m128dpps_103 label size_t
			dpps				xmm0,			xmm1,			103
			ret
		_m128dpps_104 label size_t
			dpps				xmm0,			xmm1,			104
			ret
		_m128dpps_105 label size_t
			dpps				xmm0,			xmm1,			105
			ret
		_m128dpps_106 label size_t
			dpps				xmm0,			xmm1,			106
			ret
		_m128dpps_107 label size_t
			dpps				xmm0,			xmm1,			107
			ret
		_m128dpps_108 label size_t
			dpps				xmm0,			xmm1,			108
			ret
		_m128dpps_109 label size_t
			dpps				xmm0,			xmm1,			109
			ret
		_m128dpps_110 label size_t
			dpps				xmm0,			xmm1,			110
			ret
		_m128dpps_111 label size_t
			dpps				xmm0,			xmm1,			111
			ret
		_m128dpps_112 label size_t
			dpps				xmm0,			xmm1,			112
			ret
		_m128dpps_113 label size_t
			dpps				xmm0,			xmm1,			113
			ret
		_m128dpps_114 label size_t
			dpps				xmm0,			xmm1,			114
			ret
		_m128dpps_115 label size_t
			dpps				xmm0,			xmm1,			115
			ret
		_m128dpps_116 label size_t
			dpps				xmm0,			xmm1,			116
			ret
		_m128dpps_117 label size_t
			dpps				xmm0,			xmm1,			117
			ret
		_m128dpps_118 label size_t
			dpps				xmm0,			xmm1,			118
			ret
		_m128dpps_119 label size_t
			dpps				xmm0,			xmm1,			119
			ret
		_m128dpps_120 label size_t
			dpps				xmm0,			xmm1,			120
			ret
		_m128dpps_121 label size_t
			dpps				xmm0,			xmm1,			121
			ret
		_m128dpps_122 label size_t
			dpps				xmm0,			xmm1,			122
			ret
		_m128dpps_123 label size_t
			dpps				xmm0,			xmm1,			123
			ret
		_m128dpps_124 label size_t
			dpps				xmm0,			xmm1,			124
			ret
		_m128dpps_125 label size_t
			dpps				xmm0,			xmm1,			125
			ret
		_m128dpps_126 label size_t
			dpps				xmm0,			xmm1,			126
			ret
		_m128dpps_127 label size_t
			dpps				xmm0,			xmm1,			127
			ret
		_m128dpps_128 label size_t
			dpps				xmm0,			xmm1,			128
			ret
		_m128dpps_129 label size_t
			dpps				xmm0,			xmm1,			129
			ret
		_m128dpps_130 label size_t
			dpps				xmm0,			xmm1,			130
			ret
		_m128dpps_131 label size_t
			dpps				xmm0,			xmm1,			131
			ret
		_m128dpps_132 label size_t
			dpps				xmm0,			xmm1,			132
			ret
		_m128dpps_133 label size_t
			dpps				xmm0,			xmm1,			133
			ret
		_m128dpps_134 label size_t
			dpps				xmm0,			xmm1,			134
			ret
		_m128dpps_135 label size_t
			dpps				xmm0,			xmm1,			135
			ret
		_m128dpps_136 label size_t
			dpps				xmm0,			xmm1,			136
			ret
		_m128dpps_137 label size_t
			dpps				xmm0,			xmm1,			137
			ret
		_m128dpps_138 label size_t
			dpps				xmm0,			xmm1,			138
			ret
		_m128dpps_139 label size_t
			dpps				xmm0,			xmm1,			139
			ret
		_m128dpps_140 label size_t
			dpps				xmm0,			xmm1,			140
			ret
		_m128dpps_141 label size_t
			dpps				xmm0,			xmm1,			141
			ret
		_m128dpps_142 label size_t
			dpps				xmm0,			xmm1,			142
			ret
		_m128dpps_143 label size_t
			dpps				xmm0,			xmm1,			143
			ret
		_m128dpps_144 label size_t
			dpps				xmm0,			xmm1,			144
			ret
		_m128dpps_145 label size_t
			dpps				xmm0,			xmm1,			145
			ret
		_m128dpps_146 label size_t
			dpps				xmm0,			xmm1,			146
			ret
		_m128dpps_147 label size_t
			dpps				xmm0,			xmm1,			147
			ret
		_m128dpps_148 label size_t
			dpps				xmm0,			xmm1,			148
			ret
		_m128dpps_149 label size_t
			dpps				xmm0,			xmm1,			149
			ret
		_m128dpps_150 label size_t
			dpps				xmm0,			xmm1,			150
			ret
		_m128dpps_151 label size_t
			dpps				xmm0,			xmm1,			151
			ret
		_m128dpps_152 label size_t
			dpps				xmm0,			xmm1,			152
			ret
		_m128dpps_153 label size_t
			dpps				xmm0,			xmm1,			153
			ret
		_m128dpps_154 label size_t
			dpps				xmm0,			xmm1,			154
			ret
		_m128dpps_155 label size_t
			dpps				xmm0,			xmm1,			155
			ret
		_m128dpps_156 label size_t
			dpps				xmm0,			xmm1,			156
			ret
		_m128dpps_157 label size_t
			dpps				xmm0,			xmm1,			157
			ret
		_m128dpps_158 label size_t
			dpps				xmm0,			xmm1,			158
			ret
		_m128dpps_159 label size_t
			dpps				xmm0,			xmm1,			159
			ret
		_m128dpps_160 label size_t
			dpps				xmm0,			xmm1,			160
			ret
		_m128dpps_161 label size_t
			dpps				xmm0,			xmm1,			161
			ret
		_m128dpps_162 label size_t
			dpps				xmm0,			xmm1,			162
			ret
		_m128dpps_163 label size_t
			dpps				xmm0,			xmm1,			163
			ret
		_m128dpps_164 label size_t
			dpps				xmm0,			xmm1,			164
			ret
		_m128dpps_165 label size_t
			dpps				xmm0,			xmm1,			165
			ret
		_m128dpps_166 label size_t
			dpps				xmm0,			xmm1,			166
			ret
		_m128dpps_167 label size_t
			dpps				xmm0,			xmm1,			167
			ret
		_m128dpps_168 label size_t
			dpps				xmm0,			xmm1,			168
			ret
		_m128dpps_169 label size_t
			dpps				xmm0,			xmm1,			169
			ret
		_m128dpps_170 label size_t
			dpps				xmm0,			xmm1,			170
			ret
		_m128dpps_171 label size_t
			dpps				xmm0,			xmm1,			171
			ret
		_m128dpps_172 label size_t
			dpps				xmm0,			xmm1,			172
			ret
		_m128dpps_173 label size_t
			dpps				xmm0,			xmm1,			173
			ret
		_m128dpps_174 label size_t
			dpps				xmm0,			xmm1,			174
			ret
		_m128dpps_175 label size_t
			dpps				xmm0,			xmm1,			175
			ret
		_m128dpps_176 label size_t
			dpps				xmm0,			xmm1,			176
			ret
		_m128dpps_177 label size_t
			dpps				xmm0,			xmm1,			177
			ret
		_m128dpps_178 label size_t
			dpps				xmm0,			xmm1,			178
			ret
		_m128dpps_179 label size_t
			dpps				xmm0,			xmm1,			179
			ret
		_m128dpps_180 label size_t
			dpps				xmm0,			xmm1,			180
			ret
		_m128dpps_181 label size_t
			dpps				xmm0,			xmm1,			181
			ret
		_m128dpps_182 label size_t
			dpps				xmm0,			xmm1,			182
			ret
		_m128dpps_183 label size_t
			dpps				xmm0,			xmm1,			183
			ret
		_m128dpps_184 label size_t
			dpps				xmm0,			xmm1,			184
			ret
		_m128dpps_185 label size_t
			dpps				xmm0,			xmm1,			185
			ret
		_m128dpps_186 label size_t
			dpps				xmm0,			xmm1,			186
			ret
		_m128dpps_187 label size_t
			dpps				xmm0,			xmm1,			187
			ret
		_m128dpps_188 label size_t
			dpps				xmm0,			xmm1,			188
			ret
		_m128dpps_189 label size_t
			dpps				xmm0,			xmm1,			189
			ret
		_m128dpps_190 label size_t
			dpps				xmm0,			xmm1,			190
			ret
		_m128dpps_191 label size_t
			dpps				xmm0,			xmm1,			191
			ret
		_m128dpps_192 label size_t
			dpps				xmm0,			xmm1,			192
			ret
		_m128dpps_193 label size_t
			dpps				xmm0,			xmm1,			193
			ret
		_m128dpps_194 label size_t
			dpps				xmm0,			xmm1,			194
			ret
		_m128dpps_195 label size_t
			dpps				xmm0,			xmm1,			195
			ret
		_m128dpps_196 label size_t
			dpps				xmm0,			xmm1,			196
			ret
		_m128dpps_197 label size_t
			dpps				xmm0,			xmm1,			197
			ret
		_m128dpps_198 label size_t
			dpps				xmm0,			xmm1,			198
			ret
		_m128dpps_199 label size_t
			dpps				xmm0,			xmm1,			199
			ret
		_m128dpps_200 label size_t
			dpps				xmm0,			xmm1,			200
			ret
		_m128dpps_201 label size_t
			dpps				xmm0,			xmm1,			201
			ret
		_m128dpps_202 label size_t
			dpps				xmm0,			xmm1,			202
			ret
		_m128dpps_203 label size_t
			dpps				xmm0,			xmm1,			203
			ret
		_m128dpps_204 label size_t
			dpps				xmm0,			xmm1,			204
			ret
		_m128dpps_205 label size_t
			dpps				xmm0,			xmm1,			205
			ret
		_m128dpps_206 label size_t
			dpps				xmm0,			xmm1,			206
			ret
		_m128dpps_207 label size_t
			dpps				xmm0,			xmm1,			207
			ret
		_m128dpps_208 label size_t
			dpps				xmm0,			xmm1,			208
			ret
		_m128dpps_209 label size_t
			dpps				xmm0,			xmm1,			209
			ret
		_m128dpps_210 label size_t
			dpps				xmm0,			xmm1,			210
			ret
		_m128dpps_211 label size_t
			dpps				xmm0,			xmm1,			211
			ret
		_m128dpps_212 label size_t
			dpps				xmm0,			xmm1,			212
			ret
		_m128dpps_213 label size_t
			dpps				xmm0,			xmm1,			213
			ret
		_m128dpps_214 label size_t
			dpps				xmm0,			xmm1,			214
			ret
		_m128dpps_215 label size_t
			dpps				xmm0,			xmm1,			215
			ret
		_m128dpps_216 label size_t
			dpps				xmm0,			xmm1,			216
			ret
		_m128dpps_217 label size_t
			dpps				xmm0,			xmm1,			217
			ret
		_m128dpps_218 label size_t
			dpps				xmm0,			xmm1,			218
			ret
		_m128dpps_219 label size_t
			dpps				xmm0,			xmm1,			219
			ret
		_m128dpps_220 label size_t
			dpps				xmm0,			xmm1,			220
			ret
		_m128dpps_221 label size_t
			dpps				xmm0,			xmm1,			221
			ret
		_m128dpps_222 label size_t
			dpps				xmm0,			xmm1,			222
			ret
		_m128dpps_223 label size_t
			dpps				xmm0,			xmm1,			223
			ret
		_m128dpps_224 label size_t
			dpps				xmm0,			xmm1,			224
			ret
		_m128dpps_225 label size_t
			dpps				xmm0,			xmm1,			225
			ret
		_m128dpps_226 label size_t
			dpps				xmm0,			xmm1,			226
			ret
		_m128dpps_227 label size_t
			dpps				xmm0,			xmm1,			227
			ret
		_m128dpps_228 label size_t
			dpps				xmm0,			xmm1,			228
			ret
		_m128dpps_229 label size_t
			dpps				xmm0,			xmm1,			229
			ret
		_m128dpps_230 label size_t
			dpps				xmm0,			xmm1,			230
			ret
		_m128dpps_231 label size_t
			dpps				xmm0,			xmm1,			231
			ret
		_m128dpps_232 label size_t
			dpps				xmm0,			xmm1,			232
			ret
		_m128dpps_233 label size_t
			dpps				xmm0,			xmm1,			233
			ret
		_m128dpps_234 label size_t
			dpps				xmm0,			xmm1,			234
			ret
		_m128dpps_235 label size_t
			dpps				xmm0,			xmm1,			235
			ret
		_m128dpps_236 label size_t
			dpps				xmm0,			xmm1,			236
			ret
		_m128dpps_237 label size_t
			dpps				xmm0,			xmm1,			237
			ret
		_m128dpps_238 label size_t
			dpps				xmm0,			xmm1,			238
			ret
		_m128dpps_239 label size_t
			dpps				xmm0,			xmm1,			239
			ret
		_m128dpps_240 label size_t
			dpps				xmm0,			xmm1,			240
			ret
		_m128dpps_241 label size_t
			dpps				xmm0,			xmm1,			241
			ret
		_m128dpps_242 label size_t
			dpps				xmm0,			xmm1,			242
			ret
		_m128dpps_243 label size_t
			dpps				xmm0,			xmm1,			243
			ret
		_m128dpps_244 label size_t
			dpps				xmm0,			xmm1,			244
			ret
		_m128dpps_245 label size_t
			dpps				xmm0,			xmm1,			245
			ret
		_m128dpps_246 label size_t
			dpps				xmm0,			xmm1,			246
			ret
		_m128dpps_247 label size_t
			dpps				xmm0,			xmm1,			247
			ret
		_m128dpps_248 label size_t
			dpps				xmm0,			xmm1,			248
			ret
		_m128dpps_249 label size_t
			dpps				xmm0,			xmm1,			249
			ret
		_m128dpps_250 label size_t
			dpps				xmm0,			xmm1,			250
			ret
		_m128dpps_251 label size_t
			dpps				xmm0,			xmm1,			251
			ret
		_m128dpps_252 label size_t
			dpps				xmm0,			xmm1,			252
			ret
		_m128dpps_253 label size_t
			dpps				xmm0,			xmm1,			253
			ret
		_m128dpps_254 label size_t
			dpps				xmm0,			xmm1,			254
			ret
		_m128dpps_255 label size_t
			dpps				xmm0,			xmm1,			255
			ret
		;.endif
		
funcend

funcstart _uX_mm_dp_pd_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			0
			ret
funcend

funcstart _uX_mm_dp_pd_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			1
			ret
funcend

funcstart _uX_mm_dp_pd_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			2
			ret
funcend

funcstart _uX_mm_dp_pd_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			3
			ret
funcend

funcstart _uX_mm_dp_pd_4, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			4
			ret
funcend

funcstart _uX_mm_dp_pd_5, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			5
			ret
funcend

funcstart _uX_mm_dp_pd_6, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			6
			ret
funcend

funcstart _uX_mm_dp_pd_7, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			7
			ret
funcend

funcstart _uX_mm_dp_pd_8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			8
			ret
funcend

funcstart _uX_mm_dp_pd_9, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			9
			ret
funcend

funcstart _uX_mm_dp_pd_10, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			10
			ret
funcend

funcstart _uX_mm_dp_pd_11, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			11
			ret
funcend

funcstart _uX_mm_dp_pd_12, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			12
			ret
funcend

funcstart _uX_mm_dp_pd_13, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			13
			ret
funcend

funcstart _uX_mm_dp_pd_14, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			14
			ret
funcend

funcstart _uX_mm_dp_pd_15, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			15
			ret
funcend

funcstart _uX_mm_dp_pd_16, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			16
			ret
funcend

funcstart _uX_mm_dp_pd_17, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			17
			ret
funcend

funcstart _uX_mm_dp_pd_18, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			18
			ret
funcend

funcstart _uX_mm_dp_pd_19, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			19
			ret
funcend

funcstart _uX_mm_dp_pd_20, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			20
			ret
funcend

funcstart _uX_mm_dp_pd_21, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			21
			ret
funcend

funcstart _uX_mm_dp_pd_22, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			22
			ret
funcend

funcstart _uX_mm_dp_pd_23, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			23
			ret
funcend

funcstart _uX_mm_dp_pd_24, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			24
			ret
funcend

funcstart _uX_mm_dp_pd_25, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			25
			ret
funcend

funcstart _uX_mm_dp_pd_26, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			26
			ret
funcend

funcstart _uX_mm_dp_pd_27, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			27
			ret
funcend

funcstart _uX_mm_dp_pd_28, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			28
			ret
funcend

funcstart _uX_mm_dp_pd_29, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			29
			ret
funcend

funcstart _uX_mm_dp_pd_30, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			30
			ret
funcend

funcstart _uX_mm_dp_pd_31, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			31
			ret
funcend

funcstart _uX_mm_dp_pd_32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			32
			ret
funcend

funcstart _uX_mm_dp_pd_33, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			33
			ret
funcend

funcstart _uX_mm_dp_pd_34, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			34
			ret
funcend

funcstart _uX_mm_dp_pd_35, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			35
			ret
funcend

funcstart _uX_mm_dp_pd_36, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			36
			ret
funcend

funcstart _uX_mm_dp_pd_37, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			37
			ret
funcend

funcstart _uX_mm_dp_pd_38, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			38
			ret
funcend

funcstart _uX_mm_dp_pd_39, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			39
			ret
funcend

funcstart _uX_mm_dp_pd_40, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			40
			ret
funcend

funcstart _uX_mm_dp_pd_41, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			41
			ret
funcend

funcstart _uX_mm_dp_pd_42, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			42
			ret
funcend

funcstart _uX_mm_dp_pd_43, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			43
			ret
funcend

funcstart _uX_mm_dp_pd_44, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			44
			ret
funcend

funcstart _uX_mm_dp_pd_45, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			45
			ret
funcend

funcstart _uX_mm_dp_pd_46, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			46
			ret
funcend

funcstart _uX_mm_dp_pd_47, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			47
			ret
funcend

funcstart _uX_mm_dp_pd_48, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			48
			ret
funcend

funcstart _uX_mm_dp_pd_49, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			49
			ret
funcend

funcstart _uX_mm_dp_pd_50, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			50
			ret
funcend

funcstart _uX_mm_dp_pd_51, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			51
			ret
funcend

funcstart _uX_mm_dp_pd_52, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			52
			ret
funcend

funcstart _uX_mm_dp_pd_53, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			53
			ret
funcend

funcstart _uX_mm_dp_pd_54, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			54
			ret
funcend

funcstart _uX_mm_dp_pd_55, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			55
			ret
funcend

funcstart _uX_mm_dp_pd_56, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			56
			ret
funcend

funcstart _uX_mm_dp_pd_57, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			57
			ret
funcend

funcstart _uX_mm_dp_pd_58, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			58
			ret
funcend

funcstart _uX_mm_dp_pd_59, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			59
			ret
funcend

funcstart _uX_mm_dp_pd_60, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			60
			ret
funcend

funcstart _uX_mm_dp_pd_61, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			61
			ret
funcend

funcstart _uX_mm_dp_pd_62, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			62
			ret
funcend

funcstart _uX_mm_dp_pd_63, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			63
			ret
funcend

funcstart _uX_mm_dp_pd_64, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			64
			ret
funcend

funcstart _uX_mm_dp_pd_65, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			65
			ret
funcend

funcstart _uX_mm_dp_pd_66, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			66
			ret
funcend

funcstart _uX_mm_dp_pd_67, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			67
			ret
funcend

funcstart _uX_mm_dp_pd_68, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			68
			ret
funcend

funcstart _uX_mm_dp_pd_69, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			69
			ret
funcend

funcstart _uX_mm_dp_pd_70, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			70
			ret
funcend

funcstart _uX_mm_dp_pd_71, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			71
			ret
funcend

funcstart _uX_mm_dp_pd_72, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			72
			ret
funcend

funcstart _uX_mm_dp_pd_73, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			73
			ret
funcend

funcstart _uX_mm_dp_pd_74, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			74
			ret
funcend

funcstart _uX_mm_dp_pd_75, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			75
			ret
funcend

funcstart _uX_mm_dp_pd_76, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			76
			ret
funcend

funcstart _uX_mm_dp_pd_77, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			77
			ret
funcend

funcstart _uX_mm_dp_pd_78, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			78
			ret
funcend

funcstart _uX_mm_dp_pd_79, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			79
			ret
funcend

funcstart _uX_mm_dp_pd_80, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			80
			ret
funcend

funcstart _uX_mm_dp_pd_81, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			81
			ret
funcend

funcstart _uX_mm_dp_pd_82, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			82
			ret
funcend

funcstart _uX_mm_dp_pd_83, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			83
			ret
funcend

funcstart _uX_mm_dp_pd_84, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			84
			ret
funcend

funcstart _uX_mm_dp_pd_85, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			85
			ret
funcend

funcstart _uX_mm_dp_pd_86, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			86
			ret
funcend

funcstart _uX_mm_dp_pd_87, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			87
			ret
funcend

funcstart _uX_mm_dp_pd_88, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			88
			ret
funcend

funcstart _uX_mm_dp_pd_89, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			89
			ret
funcend

funcstart _uX_mm_dp_pd_90, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			90
			ret
funcend

funcstart _uX_mm_dp_pd_91, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			91
			ret
funcend

funcstart _uX_mm_dp_pd_92, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			92
			ret
funcend

funcstart _uX_mm_dp_pd_93, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			93
			ret
funcend

funcstart _uX_mm_dp_pd_94, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			94
			ret
funcend

funcstart _uX_mm_dp_pd_95, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			95
			ret
funcend

funcstart _uX_mm_dp_pd_96, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			96
			ret
funcend

funcstart _uX_mm_dp_pd_97, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			97
			ret
funcend

funcstart _uX_mm_dp_pd_98, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			98
			ret
funcend

funcstart _uX_mm_dp_pd_99, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			99
			ret
funcend

funcstart _uX_mm_dp_pd_100, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			100
			ret
funcend

funcstart _uX_mm_dp_pd_101, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			101
			ret
funcend

funcstart _uX_mm_dp_pd_102, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			102
			ret
funcend

funcstart _uX_mm_dp_pd_103, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			103
			ret
funcend

funcstart _uX_mm_dp_pd_104, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			104
			ret
funcend

funcstart _uX_mm_dp_pd_105, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			105
			ret
funcend

funcstart _uX_mm_dp_pd_106, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			106
			ret
funcend

funcstart _uX_mm_dp_pd_107, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			107
			ret
funcend

funcstart _uX_mm_dp_pd_108, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			108
			ret
funcend

funcstart _uX_mm_dp_pd_109, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			109
			ret
funcend

funcstart _uX_mm_dp_pd_110, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			110
			ret
funcend

funcstart _uX_mm_dp_pd_111, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			111
			ret
funcend

funcstart _uX_mm_dp_pd_112, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			112
			ret
funcend

funcstart _uX_mm_dp_pd_113, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			113
			ret
funcend

funcstart _uX_mm_dp_pd_114, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			114
			ret
funcend

funcstart _uX_mm_dp_pd_115, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			115
			ret
funcend

funcstart _uX_mm_dp_pd_116, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			116
			ret
funcend

funcstart _uX_mm_dp_pd_117, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			117
			ret
funcend

funcstart _uX_mm_dp_pd_118, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			118
			ret
funcend

funcstart _uX_mm_dp_pd_119, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			119
			ret
funcend

funcstart _uX_mm_dp_pd_120, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			120
			ret
funcend

funcstart _uX_mm_dp_pd_121, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			121
			ret
funcend

funcstart _uX_mm_dp_pd_122, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			122
			ret
funcend

funcstart _uX_mm_dp_pd_123, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			123
			ret
funcend

funcstart _uX_mm_dp_pd_124, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			124
			ret
funcend

funcstart _uX_mm_dp_pd_125, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			125
			ret
funcend

funcstart _uX_mm_dp_pd_126, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			126
			ret
funcend

funcstart _uX_mm_dp_pd_127, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			127
			ret
funcend

funcstart _uX_mm_dp_pd_128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			128
			ret
funcend

funcstart _uX_mm_dp_pd_129, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			129
			ret
funcend

funcstart _uX_mm_dp_pd_130, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			130
			ret
funcend

funcstart _uX_mm_dp_pd_131, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			131
			ret
funcend

funcstart _uX_mm_dp_pd_132, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			132
			ret
funcend

funcstart _uX_mm_dp_pd_133, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			133
			ret
funcend

funcstart _uX_mm_dp_pd_134, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			134
			ret
funcend

funcstart _uX_mm_dp_pd_135, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			135
			ret
funcend

funcstart _uX_mm_dp_pd_136, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			136
			ret
funcend

funcstart _uX_mm_dp_pd_137, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			137
			ret
funcend

funcstart _uX_mm_dp_pd_138, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			138
			ret
funcend

funcstart _uX_mm_dp_pd_139, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			139
			ret
funcend

funcstart _uX_mm_dp_pd_140, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			140
			ret
funcend

funcstart _uX_mm_dp_pd_141, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			141
			ret
funcend

funcstart _uX_mm_dp_pd_142, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			142
			ret
funcend

funcstart _uX_mm_dp_pd_143, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			143
			ret
funcend

funcstart _uX_mm_dp_pd_144, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			144
			ret
funcend

funcstart _uX_mm_dp_pd_145, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			145
			ret
funcend

funcstart _uX_mm_dp_pd_146, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			dppd				xmm0,			xmm1,			146
			ret
funcend

funcstart _uX_mm_dp_pd_147, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			147
			ret
funcend

funcstart _uX_mm_dp_pd_148, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			148
			ret
funcend

funcstart _uX_mm_dp_pd_149, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			149
			ret
funcend

funcstart _uX_mm_dp_pd_150, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			150
			ret
funcend

funcstart _uX_mm_dp_pd_151, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			151
			ret
funcend

funcstart _uX_mm_dp_pd_152, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			152
			ret
funcend

funcstart _uX_mm_dp_pd_153, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			153
			ret
funcend

funcstart _uX_mm_dp_pd_154, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			dppd				xmm0,			xmm1,			154
			ret
funcend

funcstart _uX_mm_dp_pd_155, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			155
			ret
funcend

funcstart _uX_mm_dp_pd_156, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			156
			ret
funcend

funcstart _uX_mm_dp_pd_157, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			157
			ret
funcend

funcstart _uX_mm_dp_pd_158, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			158
			ret
funcend

funcstart _uX_mm_dp_pd_159, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			159
			ret
funcend

funcstart _uX_mm_dp_pd_160, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			160
			ret
funcend

funcstart _uX_mm_dp_pd_161, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			161
			ret
funcend

funcstart _uX_mm_dp_pd_162, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			162
			ret
funcend

funcstart _uX_mm_dp_pd_163, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			163
			ret
funcend

funcstart _uX_mm_dp_pd_164, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			164
			ret
funcend

funcstart _uX_mm_dp_pd_165, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			165
			ret
funcend

funcstart _uX_mm_dp_pd_166, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			166
			ret
funcend

funcstart _uX_mm_dp_pd_167, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			167
			ret
funcend

funcstart _uX_mm_dp_pd_168, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			168
			ret
funcend

funcstart _uX_mm_dp_pd_169, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			169
			ret
funcend

funcstart _uX_mm_dp_pd_170, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			170
			ret
funcend

funcstart _uX_mm_dp_pd_171, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			171
			ret
funcend

funcstart _uX_mm_dp_pd_172, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			172
			ret
funcend

funcstart _uX_mm_dp_pd_173, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			173
			ret
funcend

funcstart _uX_mm_dp_pd_174, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			dppd				xmm0,			xmm1,			174
			ret
funcend

funcstart _uX_mm_dp_pd_175, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			175
			ret
funcend

funcstart _uX_mm_dp_pd_176, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			176
			ret
funcend

funcstart _uX_mm_dp_pd_177, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			177
			ret
funcend

funcstart _uX_mm_dp_pd_178, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			178
			ret
funcend

funcstart _uX_mm_dp_pd_179, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			179
			ret
funcend

funcstart _uX_mm_dp_pd_180, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			180
			ret
funcend

funcstart _uX_mm_dp_pd_181, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			181
			ret
funcend

funcstart _uX_mm_dp_pd_182, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			182
			ret
funcend

funcstart _uX_mm_dp_pd_183, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			183
			ret
funcend

funcstart _uX_mm_dp_pd_184, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			184
			ret
funcend

funcstart _uX_mm_dp_pd_185, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			185
			ret
funcend

funcstart _uX_mm_dp_pd_186, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			186
			ret
funcend

funcstart _uX_mm_dp_pd_187, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			187
			ret
funcend

funcstart _uX_mm_dp_pd_188, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			188
			ret
funcend

funcstart _uX_mm_dp_pd_189, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			189
			ret
funcend

funcstart _uX_mm_dp_pd_190, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			190
			ret
funcend

funcstart _uX_mm_dp_pd_191, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			191
			ret
funcend

funcstart _uX_mm_dp_pd_192, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			192
			ret
funcend

funcstart _uX_mm_dp_pd_193, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			193
			ret
funcend

funcstart _uX_mm_dp_pd_194, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			194
			ret
funcend

funcstart _uX_mm_dp_pd_195, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			195
			ret
funcend

funcstart _uX_mm_dp_pd_196, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			196
			ret
funcend

funcstart _uX_mm_dp_pd_197, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			197
			ret
funcend

funcstart _uX_mm_dp_pd_198, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			198
			ret
funcend

funcstart _uX_mm_dp_pd_199, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			199
			ret
funcend

funcstart _uX_mm_dp_pd_200, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			200
			ret
funcend

funcstart _uX_mm_dp_pd_201, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			201
			ret
funcend

funcstart _uX_mm_dp_pd_202, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			202
			ret
funcend

funcstart _uX_mm_dp_pd_203, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			203
			ret
funcend

funcstart _uX_mm_dp_pd_204, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			204
			ret
funcend

funcstart _uX_mm_dp_pd_205, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			205
			ret
funcend

funcstart _uX_mm_dp_pd_206, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			206
			ret
funcend

funcstart _uX_mm_dp_pd_207, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			207
			ret
funcend

funcstart _uX_mm_dp_pd_208, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			208
			ret
funcend

funcstart _uX_mm_dp_pd_209, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			209
			ret
funcend

funcstart _uX_mm_dp_pd_210, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			210
			ret
funcend

funcstart _uX_mm_dp_pd_211, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			211
			ret
funcend

funcstart _uX_mm_dp_pd_212, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			212
			ret
funcend

funcstart _uX_mm_dp_pd_213, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			213
			ret
funcend

funcstart _uX_mm_dp_pd_214, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			214
			ret
funcend

funcstart _uX_mm_dp_pd_215, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			215
			ret
funcend

funcstart _uX_mm_dp_pd_216, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			216
			ret
funcend

funcstart _uX_mm_dp_pd_217, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			217
			ret
funcend

funcstart _uX_mm_dp_pd_218, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			218
			ret
funcend

funcstart _uX_mm_dp_pd_219, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			219
			ret
funcend

funcstart _uX_mm_dp_pd_220, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			220
			ret
funcend

funcstart _uX_mm_dp_pd_221, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			221
			ret
funcend

funcstart _uX_mm_dp_pd_222, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			222
			ret
funcend

funcstart _uX_mm_dp_pd_223, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			223
			ret
funcend

funcstart _uX_mm_dp_pd_224, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			224
			ret
funcend

funcstart _uX_mm_dp_pd_225, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			225
			ret
funcend

funcstart _uX_mm_dp_pd_226, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			226
			ret
funcend

funcstart _uX_mm_dp_pd_227, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			227
			ret
funcend

funcstart _uX_mm_dp_pd_228, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			228
			ret
funcend

funcstart _uX_mm_dp_pd_229, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			229
			ret
funcend

funcstart _uX_mm_dp_pd_230, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			230
			ret
funcend

funcstart _uX_mm_dp_pd_231, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			231
			ret
funcend

funcstart _uX_mm_dp_pd_232, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			232
			ret
funcend

funcstart _uX_mm_dp_pd_233, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			233
			ret
funcend

funcstart _uX_mm_dp_pd_234, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			234
			ret
funcend

funcstart _uX_mm_dp_pd_235, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			235
			ret
funcend

funcstart _uX_mm_dp_pd_236, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			236
			ret
funcend

funcstart _uX_mm_dp_pd_237, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			237
			ret
funcend

funcstart _uX_mm_dp_pd_238, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			238
			ret
funcend

funcstart _uX_mm_dp_pd_239, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			239
			ret
funcend

funcstart _uX_mm_dp_pd_240, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			240
			ret
funcend

funcstart _uX_mm_dp_pd_241, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			241
			ret
funcend

funcstart _uX_mm_dp_pd_242, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			242
			ret
funcend

funcstart _uX_mm_dp_pd_243, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			243
			ret
funcend

funcstart _uX_mm_dp_pd_244, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			244
			ret
funcend

funcstart _uX_mm_dp_pd_245, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			245
			ret
funcend

funcstart _uX_mm_dp_pd_246, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			246
			ret
funcend

funcstart _uX_mm_dp_pd_247, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			247
			ret
funcend

funcstart _uX_mm_dp_pd_248, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			248
			ret
funcend

funcstart _uX_mm_dp_pd_249, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			249
			ret
funcend

funcstart _uX_mm_dp_pd_250, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			250
			ret
funcend

funcstart _uX_mm_dp_pd_251, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			251
			ret
funcend

funcstart _uX_mm_dp_pd_252, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			252
			ret
funcend

funcstart _uX_mm_dp_pd_253, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			253
			ret
funcend

funcstart _uX_mm_dp_pd_254, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			254
			ret
funcend

funcstart _uX_mm_dp_pd_255, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			dppd				xmm0,			xmm1,			255
			ret
funcend

funcstart _uX_mm_dp_pd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128ddppdjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128ddppdjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128ddppd_0 label size_t
			dppd				xmm0,			xmm1,			0
			ret
		_m128ddppd_1 label size_t
			dppd				xmm0,			xmm1,			1
			ret
		_m128ddppd_2 label size_t
			dppd				xmm0,			xmm1,			2
			ret
		_m128ddppd_3 label size_t
			dppd				xmm0,			xmm1,			3
			ret
		_m128ddppd_4 label size_t
			dppd				xmm0,			xmm1,			4
			ret
		_m128ddppd_5 label size_t
			dppd				xmm0,			xmm1,			5
			ret
		_m128ddppd_6 label size_t
			dppd				xmm0,			xmm1,			6
			ret
		_m128ddppd_7 label size_t
			dppd				xmm0,			xmm1,			7
			ret
		_m128ddppd_8 label size_t
			dppd				xmm0,			xmm1,			8
			ret
		_m128ddppd_9 label size_t
			dppd				xmm0,			xmm1,			9
			ret
		_m128ddppd_10 label size_t
			dppd				xmm0,			xmm1,			10
			ret
		_m128ddppd_11 label size_t
			dppd				xmm0,			xmm1,			11
			ret
		_m128ddppd_12 label size_t
			dppd				xmm0,			xmm1,			12
			ret
		_m128ddppd_13 label size_t
			dppd				xmm0,			xmm1,			13
			ret
		_m128ddppd_14 label size_t
			dppd				xmm0,			xmm1,			14
			ret
		_m128ddppd_15 label size_t
			dppd				xmm0,			xmm1,			15
			ret
		_m128ddppd_16 label size_t
			dppd				xmm0,			xmm1,			16
			ret
		_m128ddppd_17 label size_t
			dppd				xmm0,			xmm1,			17
			ret
		_m128ddppd_18 label size_t
			dppd				xmm0,			xmm1,			18
			ret
		_m128ddppd_19 label size_t
			dppd				xmm0,			xmm1,			19
			ret
		_m128ddppd_20 label size_t
			dppd				xmm0,			xmm1,			20
			ret
		_m128ddppd_21 label size_t
			dppd				xmm0,			xmm1,			21
			ret
		_m128ddppd_22 label size_t
			dppd				xmm0,			xmm1,			22
			ret
		_m128ddppd_23 label size_t
			dppd				xmm0,			xmm1,			23
			ret
		_m128ddppd_24 label size_t
			dppd				xmm0,			xmm1,			24
			ret
		_m128ddppd_25 label size_t
			dppd				xmm0,			xmm1,			25
			ret
		_m128ddppd_26 label size_t
			dppd				xmm0,			xmm1,			26
			ret
		_m128ddppd_27 label size_t
			dppd				xmm0,			xmm1,			27
			ret
		_m128ddppd_28 label size_t
			dppd				xmm0,			xmm1,			28
			ret
		_m128ddppd_29 label size_t
			dppd				xmm0,			xmm1,			29
			ret
		_m128ddppd_30 label size_t
			dppd				xmm0,			xmm1,			30
			ret
		_m128ddppd_31 label size_t
			dppd				xmm0,			xmm1,			31
			ret
		_m128ddppd_32 label size_t
			dppd				xmm0,			xmm1,			32
			ret
		_m128ddppd_33 label size_t
			dppd				xmm0,			xmm1,			33
			ret
		_m128ddppd_34 label size_t
			dppd				xmm0,			xmm1,			34
			ret
		_m128ddppd_35 label size_t
			dppd				xmm0,			xmm1,			35
			ret
		_m128ddppd_36 label size_t
			dppd				xmm0,			xmm1,			36
			ret
		_m128ddppd_37 label size_t
			dppd				xmm0,			xmm1,			37
			ret
		_m128ddppd_38 label size_t
			dppd				xmm0,			xmm1,			38
			ret
		_m128ddppd_39 label size_t
			dppd				xmm0,			xmm1,			39
			ret
		_m128ddppd_40 label size_t
			dppd				xmm0,			xmm1,			40
			ret
		_m128ddppd_41 label size_t
			dppd				xmm0,			xmm1,			41
			ret
		_m128ddppd_42 label size_t
			dppd				xmm0,			xmm1,			42
			ret
		_m128ddppd_43 label size_t
			dppd				xmm0,			xmm1,			43
			ret
		_m128ddppd_44 label size_t
			dppd				xmm0,			xmm1,			44
			ret
		_m128ddppd_45 label size_t
			dppd				xmm0,			xmm1,			45
			ret
		_m128ddppd_46 label size_t
			dppd				xmm0,			xmm1,			46
			ret
		_m128ddppd_47 label size_t
			dppd				xmm0,			xmm1,			47
			ret
		_m128ddppd_48 label size_t
			dppd				xmm0,			xmm1,			48
			ret
		_m128ddppd_49 label size_t
			dppd				xmm0,			xmm1,			49
			ret
		_m128ddppd_50 label size_t
			dppd				xmm0,			xmm1,			50
			ret
		_m128ddppd_51 label size_t
			dppd				xmm0,			xmm1,			51
			ret
		_m128ddppd_52 label size_t
			dppd				xmm0,			xmm1,			52
			ret
		_m128ddppd_53 label size_t
			dppd				xmm0,			xmm1,			53
			ret
		_m128ddppd_54 label size_t
			dppd				xmm0,			xmm1,			54
			ret
		_m128ddppd_55 label size_t
			dppd				xmm0,			xmm1,			55
			ret
		_m128ddppd_56 label size_t
			dppd				xmm0,			xmm1,			56
			ret
		_m128ddppd_57 label size_t
			dppd				xmm0,			xmm1,			57
			ret
		_m128ddppd_58 label size_t
			dppd				xmm0,			xmm1,			58
			ret
		_m128ddppd_59 label size_t
			dppd				xmm0,			xmm1,			59
			ret
		_m128ddppd_60 label size_t
			dppd				xmm0,			xmm1,			60
			ret
		_m128ddppd_61 label size_t
			dppd				xmm0,			xmm1,			61
			ret
		_m128ddppd_62 label size_t
			dppd				xmm0,			xmm1,			62
			ret
		_m128ddppd_63 label size_t
			dppd				xmm0,			xmm1,			63
			ret
		_m128ddppd_64 label size_t
			dppd				xmm0,			xmm1,			64
			ret
		_m128ddppd_65 label size_t
			dppd				xmm0,			xmm1,			65
			ret
		_m128ddppd_66 label size_t
			dppd				xmm0,			xmm1,			66
			ret
		_m128ddppd_67 label size_t
			dppd				xmm0,			xmm1,			67
			ret
		_m128ddppd_68 label size_t
			dppd				xmm0,			xmm1,			68
			ret
		_m128ddppd_69 label size_t
			dppd				xmm0,			xmm1,			69
			ret
		_m128ddppd_70 label size_t
			dppd				xmm0,			xmm1,			70
			ret
		_m128ddppd_71 label size_t
			dppd				xmm0,			xmm1,			71
			ret
		_m128ddppd_72 label size_t
			dppd				xmm0,			xmm1,			72
			ret
		_m128ddppd_73 label size_t
			dppd				xmm0,			xmm1,			73
			ret
		_m128ddppd_74 label size_t
			dppd				xmm0,			xmm1,			74
			ret
		_m128ddppd_75 label size_t
			dppd				xmm0,			xmm1,			75
			ret
		_m128ddppd_76 label size_t
			dppd				xmm0,			xmm1,			76
			ret
		_m128ddppd_77 label size_t
			dppd				xmm0,			xmm1,			77
			ret
		_m128ddppd_78 label size_t
			dppd				xmm0,			xmm1,			78
			ret
		_m128ddppd_79 label size_t
			dppd				xmm0,			xmm1,			79
			ret
		_m128ddppd_80 label size_t
			dppd				xmm0,			xmm1,			80
			ret
		_m128ddppd_81 label size_t
			dppd				xmm0,			xmm1,			81
			ret
		_m128ddppd_82 label size_t
			dppd				xmm0,			xmm1,			82
			ret
		_m128ddppd_83 label size_t
			dppd				xmm0,			xmm1,			83
			ret
		_m128ddppd_84 label size_t
			dppd				xmm0,			xmm1,			84
			ret
		_m128ddppd_85 label size_t
			dppd				xmm0,			xmm1,			85
			ret
		_m128ddppd_86 label size_t
			dppd				xmm0,			xmm1,			86
			ret
		_m128ddppd_87 label size_t
			dppd				xmm0,			xmm1,			87
			ret
		_m128ddppd_88 label size_t
			dppd				xmm0,			xmm1,			88
			ret
		_m128ddppd_89 label size_t
			dppd				xmm0,			xmm1,			89
			ret
		_m128ddppd_90 label size_t
			dppd				xmm0,			xmm1,			90
			ret
		_m128ddppd_91 label size_t
			dppd				xmm0,			xmm1,			91
			ret
		_m128ddppd_92 label size_t
			dppd				xmm0,			xmm1,			92
			ret
		_m128ddppd_93 label size_t
			dppd				xmm0,			xmm1,			93
			ret
		_m128ddppd_94 label size_t
			dppd				xmm0,			xmm1,			94
			ret
		_m128ddppd_95 label size_t
			dppd				xmm0,			xmm1,			95
			ret
		_m128ddppd_96 label size_t
			dppd				xmm0,			xmm1,			96
			ret
		_m128ddppd_97 label size_t
			dppd				xmm0,			xmm1,			97
			ret
		_m128ddppd_98 label size_t
			dppd				xmm0,			xmm1,			98
			ret
		_m128ddppd_99 label size_t
			dppd				xmm0,			xmm1,			99
			ret
		_m128ddppd_100 label size_t
			dppd				xmm0,			xmm1,			100
			ret
		_m128ddppd_101 label size_t
			dppd				xmm0,			xmm1,			101
			ret
		_m128ddppd_102 label size_t
			dppd				xmm0,			xmm1,			102
			ret
		_m128ddppd_103 label size_t
			dppd				xmm0,			xmm1,			103
			ret
		_m128ddppd_104 label size_t
			dppd				xmm0,			xmm1,			104
			ret
		_m128ddppd_105 label size_t
			dppd				xmm0,			xmm1,			105
			ret
		_m128ddppd_106 label size_t
			dppd				xmm0,			xmm1,			106
			ret
		_m128ddppd_107 label size_t
			dppd				xmm0,			xmm1,			107
			ret
		_m128ddppd_108 label size_t
			dppd				xmm0,			xmm1,			108
			ret
		_m128ddppd_109 label size_t
			dppd				xmm0,			xmm1,			109
			ret
		_m128ddppd_110 label size_t
			dppd				xmm0,			xmm1,			110
			ret
		_m128ddppd_111 label size_t
			dppd				xmm0,			xmm1,			111
			ret
		_m128ddppd_112 label size_t
			dppd				xmm0,			xmm1,			112
			ret
		_m128ddppd_113 label size_t
			dppd				xmm0,			xmm1,			113
			ret
		_m128ddppd_114 label size_t
			dppd				xmm0,			xmm1,			114
			ret
		_m128ddppd_115 label size_t
			dppd				xmm0,			xmm1,			115
			ret
		_m128ddppd_116 label size_t
			dppd				xmm0,			xmm1,			116
			ret
		_m128ddppd_117 label size_t
			dppd				xmm0,			xmm1,			117
			ret
		_m128ddppd_118 label size_t
			dppd				xmm0,			xmm1,			118
			ret
		_m128ddppd_119 label size_t
			dppd				xmm0,			xmm1,			119
			ret
		_m128ddppd_120 label size_t
			dppd				xmm0,			xmm1,			120
			ret
		_m128ddppd_121 label size_t
			dppd				xmm0,			xmm1,			121
			ret
		_m128ddppd_122 label size_t
			dppd				xmm0,			xmm1,			122
			ret
		_m128ddppd_123 label size_t
			dppd				xmm0,			xmm1,			123
			ret
		_m128ddppd_124 label size_t
			dppd				xmm0,			xmm1,			124
			ret
		_m128ddppd_125 label size_t
			dppd				xmm0,			xmm1,			125
			ret
		_m128ddppd_126 label size_t
			dppd				xmm0,			xmm1,			126
			ret
		_m128ddppd_127 label size_t
			dppd				xmm0,			xmm1,			127
			ret
		_m128ddppd_128 label size_t
			dppd				xmm0,			xmm1,			128
			ret
		_m128ddppd_129 label size_t
			dppd				xmm0,			xmm1,			129
			ret
		_m128ddppd_130 label size_t
			dppd				xmm0,			xmm1,			130
			ret
		_m128ddppd_131 label size_t
			dppd				xmm0,			xmm1,			131
			ret
		_m128ddppd_132 label size_t
			dppd				xmm0,			xmm1,			132
			ret
		_m128ddppd_133 label size_t
			dppd				xmm0,			xmm1,			133
			ret
		_m128ddppd_134 label size_t
			dppd				xmm0,			xmm1,			134
			ret
		_m128ddppd_135 label size_t
			dppd				xmm0,			xmm1,			135
			ret
		_m128ddppd_136 label size_t
			dppd				xmm0,			xmm1,			136
			ret
		_m128ddppd_137 label size_t
			dppd				xmm0,			xmm1,			137
			ret
		_m128ddppd_138 label size_t
			dppd				xmm0,			xmm1,			138
			ret
		_m128ddppd_139 label size_t
			dppd				xmm0,			xmm1,			139
			ret
		_m128ddppd_140 label size_t
			dppd				xmm0,			xmm1,			140
			ret
		_m128ddppd_141 label size_t
			dppd				xmm0,			xmm1,			141
			ret
		_m128ddppd_142 label size_t
			dppd				xmm0,			xmm1,			142
			ret
		_m128ddppd_143 label size_t
			dppd				xmm0,			xmm1,			143
			ret
		_m128ddppd_144 label size_t
			dppd				xmm0,			xmm1,			144
			ret
		_m128ddppd_145 label size_t
			dppd				xmm0,			xmm1,			145
			ret
		_m128ddppd_146 label size_t
			dppd				xmm0,			xmm1,			146
			ret
		_m128ddppd_147 label size_t
			dppd				xmm0,			xmm1,			147
			ret
		_m128ddppd_148 label size_t
			dppd				xmm0,			xmm1,			148
			ret
		_m128ddppd_149 label size_t
			dppd				xmm0,			xmm1,			149
			ret
		_m128ddppd_150 label size_t
			dppd				xmm0,			xmm1,			150
			ret
		_m128ddppd_151 label size_t
			dppd				xmm0,			xmm1,			151
			ret
		_m128ddppd_152 label size_t
			dppd				xmm0,			xmm1,			152
			ret
		_m128ddppd_153 label size_t
			dppd				xmm0,			xmm1,			153
			ret
		_m128ddppd_154 label size_t
			dppd				xmm0,			xmm1,			154
			ret
		_m128ddppd_155 label size_t
			dppd				xmm0,			xmm1,			155
			ret
		_m128ddppd_156 label size_t
			dppd				xmm0,			xmm1,			156
			ret
		_m128ddppd_157 label size_t
			dppd				xmm0,			xmm1,			157
			ret
		_m128ddppd_158 label size_t
			dppd				xmm0,			xmm1,			158
			ret
		_m128ddppd_159 label size_t
			dppd				xmm0,			xmm1,			159
			ret
		_m128ddppd_160 label size_t
			dppd				xmm0,			xmm1,			160
			ret
		_m128ddppd_161 label size_t
			dppd				xmm0,			xmm1,			161
			ret
		_m128ddppd_162 label size_t
			dppd				xmm0,			xmm1,			162
			ret
		_m128ddppd_163 label size_t
			dppd				xmm0,			xmm1,			163
			ret
		_m128ddppd_164 label size_t
			dppd				xmm0,			xmm1,			164
			ret
		_m128ddppd_165 label size_t
			dppd				xmm0,			xmm1,			165
			ret
		_m128ddppd_166 label size_t
			dppd				xmm0,			xmm1,			166
			ret
		_m128ddppd_167 label size_t
			dppd				xmm0,			xmm1,			167
			ret
		_m128ddppd_168 label size_t
			dppd				xmm0,			xmm1,			168
			ret
		_m128ddppd_169 label size_t
			dppd				xmm0,			xmm1,			169
			ret
		_m128ddppd_170 label size_t
			dppd				xmm0,			xmm1,			170
			ret
		_m128ddppd_171 label size_t
			dppd				xmm0,			xmm1,			171
			ret
		_m128ddppd_172 label size_t
			dppd				xmm0,			xmm1,			172
			ret
		_m128ddppd_173 label size_t
			dppd				xmm0,			xmm1,			173
			ret
		_m128ddppd_174 label size_t
			dppd				xmm0,			xmm1,			174
			ret
		_m128ddppd_175 label size_t
			dppd				xmm0,			xmm1,			175
			ret
		_m128ddppd_176 label size_t
			dppd				xmm0,			xmm1,			176
			ret
		_m128ddppd_177 label size_t
			dppd				xmm0,			xmm1,			177
			ret
		_m128ddppd_178 label size_t
			dppd				xmm0,			xmm1,			178
			ret
		_m128ddppd_179 label size_t
			dppd				xmm0,			xmm1,			179
			ret
		_m128ddppd_180 label size_t
			dppd				xmm0,			xmm1,			180
			ret
		_m128ddppd_181 label size_t
			dppd				xmm0,			xmm1,			181
			ret
		_m128ddppd_182 label size_t
			dppd				xmm0,			xmm1,			182
			ret
		_m128ddppd_183 label size_t
			dppd				xmm0,			xmm1,			183
			ret
		_m128ddppd_184 label size_t
			dppd				xmm0,			xmm1,			184
			ret
		_m128ddppd_185 label size_t
			dppd				xmm0,			xmm1,			185
			ret
		_m128ddppd_186 label size_t
			dppd				xmm0,			xmm1,			186
			ret
		_m128ddppd_187 label size_t
			dppd				xmm0,			xmm1,			187
			ret
		_m128ddppd_188 label size_t
			dppd				xmm0,			xmm1,			188
			ret
		_m128ddppd_189 label size_t
			dppd				xmm0,			xmm1,			189
			ret
		_m128ddppd_190 label size_t
			dppd				xmm0,			xmm1,			190
			ret
		_m128ddppd_191 label size_t
			dppd				xmm0,			xmm1,			191
			ret
		_m128ddppd_192 label size_t
			dppd				xmm0,			xmm1,			192
			ret
		_m128ddppd_193 label size_t
			dppd				xmm0,			xmm1,			193
			ret
		_m128ddppd_194 label size_t
			dppd				xmm0,			xmm1,			194
			ret
		_m128ddppd_195 label size_t
			dppd				xmm0,			xmm1,			195
			ret
		_m128ddppd_196 label size_t
			dppd				xmm0,			xmm1,			196
			ret
		_m128ddppd_197 label size_t
			dppd				xmm0,			xmm1,			197
			ret
		_m128ddppd_198 label size_t
			dppd				xmm0,			xmm1,			198
			ret
		_m128ddppd_199 label size_t
			dppd				xmm0,			xmm1,			199
			ret
		_m128ddppd_200 label size_t
			dppd				xmm0,			xmm1,			200
			ret
		_m128ddppd_201 label size_t
			dppd				xmm0,			xmm1,			201
			ret
		_m128ddppd_202 label size_t
			dppd				xmm0,			xmm1,			202
			ret
		_m128ddppd_203 label size_t
			dppd				xmm0,			xmm1,			203
			ret
		_m128ddppd_204 label size_t
			dppd				xmm0,			xmm1,			204
			ret
		_m128ddppd_205 label size_t
			dppd				xmm0,			xmm1,			205
			ret
		_m128ddppd_206 label size_t
			dppd				xmm0,			xmm1,			206
			ret
		_m128ddppd_207 label size_t
			dppd				xmm0,			xmm1,			207
			ret
		_m128ddppd_208 label size_t
			dppd				xmm0,			xmm1,			208
			ret
		_m128ddppd_209 label size_t
			dppd				xmm0,			xmm1,			209
			ret
		_m128ddppd_210 label size_t
			dppd				xmm0,			xmm1,			210
			ret
		_m128ddppd_211 label size_t
			dppd				xmm0,			xmm1,			211
			ret
		_m128ddppd_212 label size_t
			dppd				xmm0,			xmm1,			212
			ret
		_m128ddppd_213 label size_t
			dppd				xmm0,			xmm1,			213
			ret
		_m128ddppd_214 label size_t
			dppd				xmm0,			xmm1,			214
			ret
		_m128ddppd_215 label size_t
			dppd				xmm0,			xmm1,			215
			ret
		_m128ddppd_216 label size_t
			dppd				xmm0,			xmm1,			216
			ret
		_m128ddppd_217 label size_t
			dppd				xmm0,			xmm1,			217
			ret
		_m128ddppd_218 label size_t
			dppd				xmm0,			xmm1,			218
			ret
		_m128ddppd_219 label size_t
			dppd				xmm0,			xmm1,			219
			ret
		_m128ddppd_220 label size_t
			dppd				xmm0,			xmm1,			220
			ret
		_m128ddppd_221 label size_t
			dppd				xmm0,			xmm1,			221
			ret
		_m128ddppd_222 label size_t
			dppd				xmm0,			xmm1,			222
			ret
		_m128ddppd_223 label size_t
			dppd				xmm0,			xmm1,			223
			ret
		_m128ddppd_224 label size_t
			dppd				xmm0,			xmm1,			224
			ret
		_m128ddppd_225 label size_t
			dppd				xmm0,			xmm1,			225
			ret
		_m128ddppd_226 label size_t
			dppd				xmm0,			xmm1,			226
			ret
		_m128ddppd_227 label size_t
			dppd				xmm0,			xmm1,			227
			ret
		_m128ddppd_228 label size_t
			dppd				xmm0,			xmm1,			228
			ret
		_m128ddppd_229 label size_t
			dppd				xmm0,			xmm1,			229
			ret
		_m128ddppd_230 label size_t
			dppd				xmm0,			xmm1,			230
			ret
		_m128ddppd_231 label size_t
			dppd				xmm0,			xmm1,			231
			ret
		_m128ddppd_232 label size_t
			dppd				xmm0,			xmm1,			232
			ret
		_m128ddppd_233 label size_t
			dppd				xmm0,			xmm1,			233
			ret
		_m128ddppd_234 label size_t
			dppd				xmm0,			xmm1,			234
			ret
		_m128ddppd_235 label size_t
			dppd				xmm0,			xmm1,			235
			ret
		_m128ddppd_236 label size_t
			dppd				xmm0,			xmm1,			236
			ret
		_m128ddppd_237 label size_t
			dppd				xmm0,			xmm1,			237
			ret
		_m128ddppd_238 label size_t
			dppd				xmm0,			xmm1,			238
			ret
		_m128ddppd_239 label size_t
			dppd				xmm0,			xmm1,			239
			ret
		_m128ddppd_240 label size_t
			dppd				xmm0,			xmm1,			240
			ret
		_m128ddppd_241 label size_t
			dppd				xmm0,			xmm1,			241
			ret
		_m128ddppd_242 label size_t
			dppd				xmm0,			xmm1,			242
			ret
		_m128ddppd_243 label size_t
			dppd				xmm0,			xmm1,			243
			ret
		_m128ddppd_244 label size_t
			dppd				xmm0,			xmm1,			244
			ret
		_m128ddppd_245 label size_t
			dppd				xmm0,			xmm1,			245
			ret
		_m128ddppd_246 label size_t
			dppd				xmm0,			xmm1,			246
			ret
		_m128ddppd_247 label size_t
			dppd				xmm0,			xmm1,			247
			ret
		_m128ddppd_248 label size_t
			dppd				xmm0,			xmm1,			248
			ret
		_m128ddppd_249 label size_t
			dppd				xmm0,			xmm1,			249
			ret
		_m128ddppd_250 label size_t
			dppd				xmm0,			xmm1,			250
			ret
		_m128ddppd_251 label size_t
			dppd				xmm0,			xmm1,			251
			ret
		_m128ddppd_252 label size_t
			dppd				xmm0,			xmm1,			252
			ret
		_m128ddppd_253 label size_t
			dppd				xmm0,			xmm1,			253
			ret
		_m128ddppd_254 label size_t
			dppd				xmm0,			xmm1,			254
			ret
		_m128ddppd_255 label size_t
			dppd				xmm0,			xmm1,			255
			ret
		;.endif
		
funcend
		
;************************************
; Insert single precision float
;************************************
funcstart _uX_mm_insert_ps_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			0
			ret
funcend

funcstart _uX_mm_insert_ps_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			1
			ret
funcend

funcstart _uX_mm_insert_ps_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			2
			ret
funcend

funcstart _uX_mm_insert_ps_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			3
			ret
funcend

funcstart _uX_mm_insert_ps_4, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			4
			ret
funcend

funcstart _uX_mm_insert_ps_5, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			5
			ret
funcend

funcstart _uX_mm_insert_ps_6, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			6
			ret
funcend

funcstart _uX_mm_insert_ps_7, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			7
			ret
funcend

funcstart _uX_mm_insert_ps_8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			8
			ret
funcend

funcstart _uX_mm_insert_ps_9, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			9
			ret
funcend

funcstart _uX_mm_insert_ps_10, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			10
			ret
funcend

funcstart _uX_mm_insert_ps_11, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			11
			ret
funcend

funcstart _uX_mm_insert_ps_12, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			12
			ret
funcend

funcstart _uX_mm_insert_ps_13, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			13
			ret
funcend

funcstart _uX_mm_insert_ps_14, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			14
			ret
funcend

funcstart _uX_mm_insert_ps_15, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			15
			ret
funcend

funcstart _uX_mm_insert_ps_16, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			16
			ret
funcend

funcstart _uX_mm_insert_ps_17, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			17
			ret
funcend

funcstart _uX_mm_insert_ps_18, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			18
			ret
funcend

funcstart _uX_mm_insert_ps_19, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			19
			ret
funcend

funcstart _uX_mm_insert_ps_20, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			20
			ret
funcend

funcstart _uX_mm_insert_ps_21, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			21
			ret
funcend

funcstart _uX_mm_insert_ps_22, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			22
			ret
funcend

funcstart _uX_mm_insert_ps_23, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			23
			ret
funcend

funcstart _uX_mm_insert_ps_24, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			24
			ret
funcend

funcstart _uX_mm_insert_ps_25, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			25
			ret
funcend

funcstart _uX_mm_insert_ps_26, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			26
			ret
funcend

funcstart _uX_mm_insert_ps_27, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			27
			ret
funcend

funcstart _uX_mm_insert_ps_28, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			28
			ret
funcend

funcstart _uX_mm_insert_ps_29, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			29
			ret
funcend

funcstart _uX_mm_insert_ps_30, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			30
			ret
funcend

funcstart _uX_mm_insert_ps_31, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			31
			ret
funcend

funcstart _uX_mm_insert_ps_32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			32
			ret
funcend

funcstart _uX_mm_insert_ps_33, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			33
			ret
funcend

funcstart _uX_mm_insert_ps_34, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			34
			ret
funcend

funcstart _uX_mm_insert_ps_35, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			35
			ret
funcend

funcstart _uX_mm_insert_ps_36, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			36
			ret
funcend

funcstart _uX_mm_insert_ps_37, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			37
			ret
funcend

funcstart _uX_mm_insert_ps_38, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			38
			ret
funcend

funcstart _uX_mm_insert_ps_39, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			39
			ret
funcend

funcstart _uX_mm_insert_ps_40, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			40
			ret
funcend

funcstart _uX_mm_insert_ps_41, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			41
			ret
funcend

funcstart _uX_mm_insert_ps_42, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			42
			ret
funcend

funcstart _uX_mm_insert_ps_43, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			43
			ret
funcend

funcstart _uX_mm_insert_ps_44, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			44
			ret
funcend

funcstart _uX_mm_insert_ps_45, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			45
			ret
funcend

funcstart _uX_mm_insert_ps_46, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			46
			ret
funcend

funcstart _uX_mm_insert_ps_47, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			47
			ret
funcend

funcstart _uX_mm_insert_ps_48, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			48
			ret
funcend

funcstart _uX_mm_insert_ps_49, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			49
			ret
funcend

funcstart _uX_mm_insert_ps_50, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			50
			ret
funcend

funcstart _uX_mm_insert_ps_51, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			51
			ret
funcend

funcstart _uX_mm_insert_ps_52, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			52
			ret
funcend

funcstart _uX_mm_insert_ps_53, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			53
			ret
funcend

funcstart _uX_mm_insert_ps_54, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			54
			ret
funcend

funcstart _uX_mm_insert_ps_55, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			55
			ret
funcend

funcstart _uX_mm_insert_ps_56, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			56
			ret
funcend

funcstart _uX_mm_insert_ps_57, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			57
			ret
funcend

funcstart _uX_mm_insert_ps_58, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			58
			ret
funcend

funcstart _uX_mm_insert_ps_59, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			59
			ret
funcend

funcstart _uX_mm_insert_ps_60, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			60
			ret
funcend

funcstart _uX_mm_insert_ps_61, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			61
			ret
funcend

funcstart _uX_mm_insert_ps_62, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			62
			ret
funcend

funcstart _uX_mm_insert_ps_63, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			63
			ret
funcend

funcstart _uX_mm_insert_ps_64, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			64
			ret
funcend

funcstart _uX_mm_insert_ps_65, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			65
			ret
funcend

funcstart _uX_mm_insert_ps_66, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			66
			ret
funcend

funcstart _uX_mm_insert_ps_67, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			67
			ret
funcend

funcstart _uX_mm_insert_ps_68, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			68
			ret
funcend

funcstart _uX_mm_insert_ps_69, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			69
			ret
funcend

funcstart _uX_mm_insert_ps_70, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			70
			ret
funcend

funcstart _uX_mm_insert_ps_71, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			71
			ret
funcend

funcstart _uX_mm_insert_ps_72, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			72
			ret
funcend

funcstart _uX_mm_insert_ps_73, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			73
			ret
funcend

funcstart _uX_mm_insert_ps_74, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			74
			ret
funcend

funcstart _uX_mm_insert_ps_75, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			75
			ret
funcend

funcstart _uX_mm_insert_ps_76, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			76
			ret
funcend

funcstart _uX_mm_insert_ps_77, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			77
			ret
funcend

funcstart _uX_mm_insert_ps_78, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			78
			ret
funcend

funcstart _uX_mm_insert_ps_79, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			79
			ret
funcend

funcstart _uX_mm_insert_ps_80, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			80
			ret
funcend

funcstart _uX_mm_insert_ps_81, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			81
			ret
funcend

funcstart _uX_mm_insert_ps_82, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			82
			ret
funcend

funcstart _uX_mm_insert_ps_83, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			83
			ret
funcend

funcstart _uX_mm_insert_ps_84, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			84
			ret
funcend

funcstart _uX_mm_insert_ps_85, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			85
			ret
funcend

funcstart _uX_mm_insert_ps_86, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			86
			ret
funcend

funcstart _uX_mm_insert_ps_87, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			87
			ret
funcend

funcstart _uX_mm_insert_ps_88, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			88
			ret
funcend

funcstart _uX_mm_insert_ps_89, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			89
			ret
funcend

funcstart _uX_mm_insert_ps_90, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			90
			ret
funcend

funcstart _uX_mm_insert_ps_91, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			91
			ret
funcend

funcstart _uX_mm_insert_ps_92, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			92
			ret
funcend

funcstart _uX_mm_insert_ps_93, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			93
			ret
funcend

funcstart _uX_mm_insert_ps_94, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			94
			ret
funcend

funcstart _uX_mm_insert_ps_95, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			95
			ret
funcend

funcstart _uX_mm_insert_ps_96, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			96
			ret
funcend

funcstart _uX_mm_insert_ps_97, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			97
			ret
funcend

funcstart _uX_mm_insert_ps_98, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			98
			ret
funcend

funcstart _uX_mm_insert_ps_99, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			99
			ret
funcend

funcstart _uX_mm_insert_ps_100, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			100
			ret
funcend

funcstart _uX_mm_insert_ps_101, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			101
			ret
funcend

funcstart _uX_mm_insert_ps_102, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			102
			ret
funcend

funcstart _uX_mm_insert_ps_103, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			103
			ret
funcend

funcstart _uX_mm_insert_ps_104, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			104
			ret
funcend

funcstart _uX_mm_insert_ps_105, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			105
			ret
funcend

funcstart _uX_mm_insert_ps_106, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			106
			ret
funcend

funcstart _uX_mm_insert_ps_107, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			107
			ret
funcend

funcstart _uX_mm_insert_ps_108, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			108
			ret
funcend

funcstart _uX_mm_insert_ps_109, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			109
			ret
funcend

funcstart _uX_mm_insert_ps_110, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			110
			ret
funcend

funcstart _uX_mm_insert_ps_111, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			111
			ret
funcend

funcstart _uX_mm_insert_ps_112, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			112
			ret
funcend

funcstart _uX_mm_insert_ps_113, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			113
			ret
funcend

funcstart _uX_mm_insert_ps_114, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			114
			ret
funcend

funcstart _uX_mm_insert_ps_115, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			115
			ret
funcend

funcstart _uX_mm_insert_ps_116, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			116
			ret
funcend

funcstart _uX_mm_insert_ps_117, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			117
			ret
funcend

funcstart _uX_mm_insert_ps_118, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			118
			ret
funcend

funcstart _uX_mm_insert_ps_119, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			119
			ret
funcend

funcstart _uX_mm_insert_ps_120, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			120
			ret
funcend

funcstart _uX_mm_insert_ps_121, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			121
			ret
funcend

funcstart _uX_mm_insert_ps_122, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			122
			ret
funcend

funcstart _uX_mm_insert_ps_123, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			123
			ret
funcend

funcstart _uX_mm_insert_ps_124, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			124
			ret
funcend

funcstart _uX_mm_insert_ps_125, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			125
			ret
funcend

funcstart _uX_mm_insert_ps_126, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			126
			ret
funcend

funcstart _uX_mm_insert_ps_127, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			127
			ret
funcend

funcstart _uX_mm_insert_ps_128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			128
			ret
funcend

funcstart _uX_mm_insert_ps_129, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			129
			ret
funcend

funcstart _uX_mm_insert_ps_130, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			130
			ret
funcend

funcstart _uX_mm_insert_ps_131, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			131
			ret
funcend

funcstart _uX_mm_insert_ps_132, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			132
			ret
funcend

funcstart _uX_mm_insert_ps_133, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			133
			ret
funcend

funcstart _uX_mm_insert_ps_134, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			134
			ret
funcend

funcstart _uX_mm_insert_ps_135, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			135
			ret
funcend

funcstart _uX_mm_insert_ps_136, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			136
			ret
funcend

funcstart _uX_mm_insert_ps_137, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			137
			ret
funcend

funcstart _uX_mm_insert_ps_138, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			138
			ret
funcend

funcstart _uX_mm_insert_ps_139, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			139
			ret
funcend

funcstart _uX_mm_insert_ps_140, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			140
			ret
funcend

funcstart _uX_mm_insert_ps_141, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			141
			ret
funcend

funcstart _uX_mm_insert_ps_142, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			142
			ret
funcend

funcstart _uX_mm_insert_ps_143, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			143
			ret
funcend

funcstart _uX_mm_insert_ps_144, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			144
			ret
funcend

funcstart _uX_mm_insert_ps_145, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			145
			ret
funcend

funcstart _uX_mm_insert_ps_146, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			insertps				xmm0,			xmm1,			146
			ret
funcend

funcstart _uX_mm_insert_ps_147, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			147
			ret
funcend

funcstart _uX_mm_insert_ps_148, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			148
			ret
funcend

funcstart _uX_mm_insert_ps_149, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			149
			ret
funcend

funcstart _uX_mm_insert_ps_150, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			150
			ret
funcend

funcstart _uX_mm_insert_ps_151, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			151
			ret
funcend

funcstart _uX_mm_insert_ps_152, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			152
			ret
funcend

funcstart _uX_mm_insert_ps_153, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			153
			ret
funcend

funcstart _uX_mm_insert_ps_154, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			insertps				xmm0,			xmm1,			154
			ret
funcend

funcstart _uX_mm_insert_ps_155, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			155
			ret
funcend

funcstart _uX_mm_insert_ps_156, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			156
			ret
funcend

funcstart _uX_mm_insert_ps_157, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			157
			ret
funcend

funcstart _uX_mm_insert_ps_158, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			158
			ret
funcend

funcstart _uX_mm_insert_ps_159, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			159
			ret
funcend

funcstart _uX_mm_insert_ps_160, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			160
			ret
funcend

funcstart _uX_mm_insert_ps_161, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			161
			ret
funcend

funcstart _uX_mm_insert_ps_162, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			162
			ret
funcend

funcstart _uX_mm_insert_ps_163, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			163
			ret
funcend

funcstart _uX_mm_insert_ps_164, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			164
			ret
funcend

funcstart _uX_mm_insert_ps_165, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			165
			ret
funcend

funcstart _uX_mm_insert_ps_166, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			166
			ret
funcend

funcstart _uX_mm_insert_ps_167, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			167
			ret
funcend

funcstart _uX_mm_insert_ps_168, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			168
			ret
funcend

funcstart _uX_mm_insert_ps_169, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			169
			ret
funcend

funcstart _uX_mm_insert_ps_170, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			170
			ret
funcend

funcstart _uX_mm_insert_ps_171, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			171
			ret
funcend

funcstart _uX_mm_insert_ps_172, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			172
			ret
funcend

funcstart _uX_mm_insert_ps_173, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			173
			ret
funcend

funcstart _uX_mm_insert_ps_174, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			insertps				xmm0,			xmm1,			174
			ret
funcend

funcstart _uX_mm_insert_ps_175, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			175
			ret
funcend

funcstart _uX_mm_insert_ps_176, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			176
			ret
funcend

funcstart _uX_mm_insert_ps_177, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			177
			ret
funcend

funcstart _uX_mm_insert_ps_178, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			178
			ret
funcend

funcstart _uX_mm_insert_ps_179, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			179
			ret
funcend

funcstart _uX_mm_insert_ps_180, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			180
			ret
funcend

funcstart _uX_mm_insert_ps_181, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			181
			ret
funcend

funcstart _uX_mm_insert_ps_182, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			182
			ret
funcend

funcstart _uX_mm_insert_ps_183, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			183
			ret
funcend

funcstart _uX_mm_insert_ps_184, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			184
			ret
funcend

funcstart _uX_mm_insert_ps_185, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			185
			ret
funcend

funcstart _uX_mm_insert_ps_186, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			186
			ret
funcend

funcstart _uX_mm_insert_ps_187, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			187
			ret
funcend

funcstart _uX_mm_insert_ps_188, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			188
			ret
funcend

funcstart _uX_mm_insert_ps_189, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			189
			ret
funcend

funcstart _uX_mm_insert_ps_190, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			190
			ret
funcend

funcstart _uX_mm_insert_ps_191, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			191
			ret
funcend

funcstart _uX_mm_insert_ps_192, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			192
			ret
funcend

funcstart _uX_mm_insert_ps_193, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			193
			ret
funcend

funcstart _uX_mm_insert_ps_194, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			194
			ret
funcend

funcstart _uX_mm_insert_ps_195, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			195
			ret
funcend

funcstart _uX_mm_insert_ps_196, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			196
			ret
funcend

funcstart _uX_mm_insert_ps_197, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			197
			ret
funcend

funcstart _uX_mm_insert_ps_198, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			198
			ret
funcend

funcstart _uX_mm_insert_ps_199, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			199
			ret
funcend

funcstart _uX_mm_insert_ps_200, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			200
			ret
funcend

funcstart _uX_mm_insert_ps_201, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			201
			ret
funcend

funcstart _uX_mm_insert_ps_202, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			202
			ret
funcend

funcstart _uX_mm_insert_ps_203, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			203
			ret
funcend

funcstart _uX_mm_insert_ps_204, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			204
			ret
funcend

funcstart _uX_mm_insert_ps_205, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			205
			ret
funcend

funcstart _uX_mm_insert_ps_206, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			206
			ret
funcend

funcstart _uX_mm_insert_ps_207, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			207
			ret
funcend

funcstart _uX_mm_insert_ps_208, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			208
			ret
funcend

funcstart _uX_mm_insert_ps_209, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			209
			ret
funcend

funcstart _uX_mm_insert_ps_210, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			210
			ret
funcend

funcstart _uX_mm_insert_ps_211, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			211
			ret
funcend

funcstart _uX_mm_insert_ps_212, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			212
			ret
funcend

funcstart _uX_mm_insert_ps_213, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			213
			ret
funcend

funcstart _uX_mm_insert_ps_214, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			214
			ret
funcend

funcstart _uX_mm_insert_ps_215, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			215
			ret
funcend

funcstart _uX_mm_insert_ps_216, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			216
			ret
funcend

funcstart _uX_mm_insert_ps_217, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			217
			ret
funcend

funcstart _uX_mm_insert_ps_218, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			218
			ret
funcend

funcstart _uX_mm_insert_ps_219, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			219
			ret
funcend

funcstart _uX_mm_insert_ps_220, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			220
			ret
funcend

funcstart _uX_mm_insert_ps_221, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			221
			ret
funcend

funcstart _uX_mm_insert_ps_222, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			222
			ret
funcend

funcstart _uX_mm_insert_ps_223, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			223
			ret
funcend

funcstart _uX_mm_insert_ps_224, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			224
			ret
funcend

funcstart _uX_mm_insert_ps_225, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			225
			ret
funcend

funcstart _uX_mm_insert_ps_226, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			226
			ret
funcend

funcstart _uX_mm_insert_ps_227, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			227
			ret
funcend

funcstart _uX_mm_insert_ps_228, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			228
			ret
funcend

funcstart _uX_mm_insert_ps_229, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			229
			ret
funcend

funcstart _uX_mm_insert_ps_230, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			230
			ret
funcend

funcstart _uX_mm_insert_ps_231, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			231
			ret
funcend

funcstart _uX_mm_insert_ps_232, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			232
			ret
funcend

funcstart _uX_mm_insert_ps_233, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			233
			ret
funcend

funcstart _uX_mm_insert_ps_234, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			234
			ret
funcend

funcstart _uX_mm_insert_ps_235, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			235
			ret
funcend

funcstart _uX_mm_insert_ps_236, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			236
			ret
funcend

funcstart _uX_mm_insert_ps_237, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			237
			ret
funcend

funcstart _uX_mm_insert_ps_238, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			238
			ret
funcend

funcstart _uX_mm_insert_ps_239, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			239
			ret
funcend

funcstart _uX_mm_insert_ps_240, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			240
			ret
funcend

funcstart _uX_mm_insert_ps_241, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			241
			ret
funcend

funcstart _uX_mm_insert_ps_242, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			242
			ret
funcend

funcstart _uX_mm_insert_ps_243, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			243
			ret
funcend

funcstart _uX_mm_insert_ps_244, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			244
			ret
funcend

funcstart _uX_mm_insert_ps_245, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			245
			ret
funcend

funcstart _uX_mm_insert_ps_246, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			246
			ret
funcend

funcstart _uX_mm_insert_ps_247, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			247
			ret
funcend

funcstart _uX_mm_insert_ps_248, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			248
			ret
funcend

funcstart _uX_mm_insert_ps_249, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			249
			ret
funcend

funcstart _uX_mm_insert_ps_250, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			250
			ret
funcend

funcstart _uX_mm_insert_ps_251, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			251
			ret
funcend

funcstart _uX_mm_insert_ps_252, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			252
			ret
funcend

funcstart _uX_mm_insert_ps_253, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			253
			ret
funcend

funcstart _uX_mm_insert_ps_254, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			254
			ret
funcend

funcstart _uX_mm_insert_ps_255, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			insertps				xmm0,			xmm1,			255
			ret
funcend

funcstart _uX_mm_insert_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128insertpsjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128insertpsjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128insertps_0 label size_t
			insertps				xmm0,			xmm1,			0
			ret
		_m128insertps_1 label size_t
			insertps				xmm0,			xmm1,			1
			ret
		_m128insertps_2 label size_t
			insertps				xmm0,			xmm1,			2
			ret
		_m128insertps_3 label size_t
			insertps				xmm0,			xmm1,			3
			ret
		_m128insertps_4 label size_t
			insertps				xmm0,			xmm1,			4
			ret
		_m128insertps_5 label size_t
			insertps				xmm0,			xmm1,			5
			ret
		_m128insertps_6 label size_t
			insertps				xmm0,			xmm1,			6
			ret
		_m128insertps_7 label size_t
			insertps				xmm0,			xmm1,			7
			ret
		_m128insertps_8 label size_t
			insertps				xmm0,			xmm1,			8
			ret
		_m128insertps_9 label size_t
			insertps				xmm0,			xmm1,			9
			ret
		_m128insertps_10 label size_t
			insertps				xmm0,			xmm1,			10
			ret
		_m128insertps_11 label size_t
			insertps				xmm0,			xmm1,			11
			ret
		_m128insertps_12 label size_t
			insertps				xmm0,			xmm1,			12
			ret
		_m128insertps_13 label size_t
			insertps				xmm0,			xmm1,			13
			ret
		_m128insertps_14 label size_t
			insertps				xmm0,			xmm1,			14
			ret
		_m128insertps_15 label size_t
			insertps				xmm0,			xmm1,			15
			ret
		_m128insertps_16 label size_t
			insertps				xmm0,			xmm1,			16
			ret
		_m128insertps_17 label size_t
			insertps				xmm0,			xmm1,			17
			ret
		_m128insertps_18 label size_t
			insertps				xmm0,			xmm1,			18
			ret
		_m128insertps_19 label size_t
			insertps				xmm0,			xmm1,			19
			ret
		_m128insertps_20 label size_t
			insertps				xmm0,			xmm1,			20
			ret
		_m128insertps_21 label size_t
			insertps				xmm0,			xmm1,			21
			ret
		_m128insertps_22 label size_t
			insertps				xmm0,			xmm1,			22
			ret
		_m128insertps_23 label size_t
			insertps				xmm0,			xmm1,			23
			ret
		_m128insertps_24 label size_t
			insertps				xmm0,			xmm1,			24
			ret
		_m128insertps_25 label size_t
			insertps				xmm0,			xmm1,			25
			ret
		_m128insertps_26 label size_t
			insertps				xmm0,			xmm1,			26
			ret
		_m128insertps_27 label size_t
			insertps				xmm0,			xmm1,			27
			ret
		_m128insertps_28 label size_t
			insertps				xmm0,			xmm1,			28
			ret
		_m128insertps_29 label size_t
			insertps				xmm0,			xmm1,			29
			ret
		_m128insertps_30 label size_t
			insertps				xmm0,			xmm1,			30
			ret
		_m128insertps_31 label size_t
			insertps				xmm0,			xmm1,			31
			ret
		_m128insertps_32 label size_t
			insertps				xmm0,			xmm1,			32
			ret
		_m128insertps_33 label size_t
			insertps				xmm0,			xmm1,			33
			ret
		_m128insertps_34 label size_t
			insertps				xmm0,			xmm1,			34
			ret
		_m128insertps_35 label size_t
			insertps				xmm0,			xmm1,			35
			ret
		_m128insertps_36 label size_t
			insertps				xmm0,			xmm1,			36
			ret
		_m128insertps_37 label size_t
			insertps				xmm0,			xmm1,			37
			ret
		_m128insertps_38 label size_t
			insertps				xmm0,			xmm1,			38
			ret
		_m128insertps_39 label size_t
			insertps				xmm0,			xmm1,			39
			ret
		_m128insertps_40 label size_t
			insertps				xmm0,			xmm1,			40
			ret
		_m128insertps_41 label size_t
			insertps				xmm0,			xmm1,			41
			ret
		_m128insertps_42 label size_t
			insertps				xmm0,			xmm1,			42
			ret
		_m128insertps_43 label size_t
			insertps				xmm0,			xmm1,			43
			ret
		_m128insertps_44 label size_t
			insertps				xmm0,			xmm1,			44
			ret
		_m128insertps_45 label size_t
			insertps				xmm0,			xmm1,			45
			ret
		_m128insertps_46 label size_t
			insertps				xmm0,			xmm1,			46
			ret
		_m128insertps_47 label size_t
			insertps				xmm0,			xmm1,			47
			ret
		_m128insertps_48 label size_t
			insertps				xmm0,			xmm1,			48
			ret
		_m128insertps_49 label size_t
			insertps				xmm0,			xmm1,			49
			ret
		_m128insertps_50 label size_t
			insertps				xmm0,			xmm1,			50
			ret
		_m128insertps_51 label size_t
			insertps				xmm0,			xmm1,			51
			ret
		_m128insertps_52 label size_t
			insertps				xmm0,			xmm1,			52
			ret
		_m128insertps_53 label size_t
			insertps				xmm0,			xmm1,			53
			ret
		_m128insertps_54 label size_t
			insertps				xmm0,			xmm1,			54
			ret
		_m128insertps_55 label size_t
			insertps				xmm0,			xmm1,			55
			ret
		_m128insertps_56 label size_t
			insertps				xmm0,			xmm1,			56
			ret
		_m128insertps_57 label size_t
			insertps				xmm0,			xmm1,			57
			ret
		_m128insertps_58 label size_t
			insertps				xmm0,			xmm1,			58
			ret
		_m128insertps_59 label size_t
			insertps				xmm0,			xmm1,			59
			ret
		_m128insertps_60 label size_t
			insertps				xmm0,			xmm1,			60
			ret
		_m128insertps_61 label size_t
			insertps				xmm0,			xmm1,			61
			ret
		_m128insertps_62 label size_t
			insertps				xmm0,			xmm1,			62
			ret
		_m128insertps_63 label size_t
			insertps				xmm0,			xmm1,			63
			ret
		_m128insertps_64 label size_t
			insertps				xmm0,			xmm1,			64
			ret
		_m128insertps_65 label size_t
			insertps				xmm0,			xmm1,			65
			ret
		_m128insertps_66 label size_t
			insertps				xmm0,			xmm1,			66
			ret
		_m128insertps_67 label size_t
			insertps				xmm0,			xmm1,			67
			ret
		_m128insertps_68 label size_t
			insertps				xmm0,			xmm1,			68
			ret
		_m128insertps_69 label size_t
			insertps				xmm0,			xmm1,			69
			ret
		_m128insertps_70 label size_t
			insertps				xmm0,			xmm1,			70
			ret
		_m128insertps_71 label size_t
			insertps				xmm0,			xmm1,			71
			ret
		_m128insertps_72 label size_t
			insertps				xmm0,			xmm1,			72
			ret
		_m128insertps_73 label size_t
			insertps				xmm0,			xmm1,			73
			ret
		_m128insertps_74 label size_t
			insertps				xmm0,			xmm1,			74
			ret
		_m128insertps_75 label size_t
			insertps				xmm0,			xmm1,			75
			ret
		_m128insertps_76 label size_t
			insertps				xmm0,			xmm1,			76
			ret
		_m128insertps_77 label size_t
			insertps				xmm0,			xmm1,			77
			ret
		_m128insertps_78 label size_t
			insertps				xmm0,			xmm1,			78
			ret
		_m128insertps_79 label size_t
			insertps				xmm0,			xmm1,			79
			ret
		_m128insertps_80 label size_t
			insertps				xmm0,			xmm1,			80
			ret
		_m128insertps_81 label size_t
			insertps				xmm0,			xmm1,			81
			ret
		_m128insertps_82 label size_t
			insertps				xmm0,			xmm1,			82
			ret
		_m128insertps_83 label size_t
			insertps				xmm0,			xmm1,			83
			ret
		_m128insertps_84 label size_t
			insertps				xmm0,			xmm1,			84
			ret
		_m128insertps_85 label size_t
			insertps				xmm0,			xmm1,			85
			ret
		_m128insertps_86 label size_t
			insertps				xmm0,			xmm1,			86
			ret
		_m128insertps_87 label size_t
			insertps				xmm0,			xmm1,			87
			ret
		_m128insertps_88 label size_t
			insertps				xmm0,			xmm1,			88
			ret
		_m128insertps_89 label size_t
			insertps				xmm0,			xmm1,			89
			ret
		_m128insertps_90 label size_t
			insertps				xmm0,			xmm1,			90
			ret
		_m128insertps_91 label size_t
			insertps				xmm0,			xmm1,			91
			ret
		_m128insertps_92 label size_t
			insertps				xmm0,			xmm1,			92
			ret
		_m128insertps_93 label size_t
			insertps				xmm0,			xmm1,			93
			ret
		_m128insertps_94 label size_t
			insertps				xmm0,			xmm1,			94
			ret
		_m128insertps_95 label size_t
			insertps				xmm0,			xmm1,			95
			ret
		_m128insertps_96 label size_t
			insertps				xmm0,			xmm1,			96
			ret
		_m128insertps_97 label size_t
			insertps				xmm0,			xmm1,			97
			ret
		_m128insertps_98 label size_t
			insertps				xmm0,			xmm1,			98
			ret
		_m128insertps_99 label size_t
			insertps				xmm0,			xmm1,			99
			ret
		_m128insertps_100 label size_t
			insertps				xmm0,			xmm1,			100
			ret
		_m128insertps_101 label size_t
			insertps				xmm0,			xmm1,			101
			ret
		_m128insertps_102 label size_t
			insertps				xmm0,			xmm1,			102
			ret
		_m128insertps_103 label size_t
			insertps				xmm0,			xmm1,			103
			ret
		_m128insertps_104 label size_t
			insertps				xmm0,			xmm1,			104
			ret
		_m128insertps_105 label size_t
			insertps				xmm0,			xmm1,			105
			ret
		_m128insertps_106 label size_t
			insertps				xmm0,			xmm1,			106
			ret
		_m128insertps_107 label size_t
			insertps				xmm0,			xmm1,			107
			ret
		_m128insertps_108 label size_t
			insertps				xmm0,			xmm1,			108
			ret
		_m128insertps_109 label size_t
			insertps				xmm0,			xmm1,			109
			ret
		_m128insertps_110 label size_t
			insertps				xmm0,			xmm1,			110
			ret
		_m128insertps_111 label size_t
			insertps				xmm0,			xmm1,			111
			ret
		_m128insertps_112 label size_t
			insertps				xmm0,			xmm1,			112
			ret
		_m128insertps_113 label size_t
			insertps				xmm0,			xmm1,			113
			ret
		_m128insertps_114 label size_t
			insertps				xmm0,			xmm1,			114
			ret
		_m128insertps_115 label size_t
			insertps				xmm0,			xmm1,			115
			ret
		_m128insertps_116 label size_t
			insertps				xmm0,			xmm1,			116
			ret
		_m128insertps_117 label size_t
			insertps				xmm0,			xmm1,			117
			ret
		_m128insertps_118 label size_t
			insertps				xmm0,			xmm1,			118
			ret
		_m128insertps_119 label size_t
			insertps				xmm0,			xmm1,			119
			ret
		_m128insertps_120 label size_t
			insertps				xmm0,			xmm1,			120
			ret
		_m128insertps_121 label size_t
			insertps				xmm0,			xmm1,			121
			ret
		_m128insertps_122 label size_t
			insertps				xmm0,			xmm1,			122
			ret
		_m128insertps_123 label size_t
			insertps				xmm0,			xmm1,			123
			ret
		_m128insertps_124 label size_t
			insertps				xmm0,			xmm1,			124
			ret
		_m128insertps_125 label size_t
			insertps				xmm0,			xmm1,			125
			ret
		_m128insertps_126 label size_t
			insertps				xmm0,			xmm1,			126
			ret
		_m128insertps_127 label size_t
			insertps				xmm0,			xmm1,			127
			ret
		_m128insertps_128 label size_t
			insertps				xmm0,			xmm1,			128
			ret
		_m128insertps_129 label size_t
			insertps				xmm0,			xmm1,			129
			ret
		_m128insertps_130 label size_t
			insertps				xmm0,			xmm1,			130
			ret
		_m128insertps_131 label size_t
			insertps				xmm0,			xmm1,			131
			ret
		_m128insertps_132 label size_t
			insertps				xmm0,			xmm1,			132
			ret
		_m128insertps_133 label size_t
			insertps				xmm0,			xmm1,			133
			ret
		_m128insertps_134 label size_t
			insertps				xmm0,			xmm1,			134
			ret
		_m128insertps_135 label size_t
			insertps				xmm0,			xmm1,			135
			ret
		_m128insertps_136 label size_t
			insertps				xmm0,			xmm1,			136
			ret
		_m128insertps_137 label size_t
			insertps				xmm0,			xmm1,			137
			ret
		_m128insertps_138 label size_t
			insertps				xmm0,			xmm1,			138
			ret
		_m128insertps_139 label size_t
			insertps				xmm0,			xmm1,			139
			ret
		_m128insertps_140 label size_t
			insertps				xmm0,			xmm1,			140
			ret
		_m128insertps_141 label size_t
			insertps				xmm0,			xmm1,			141
			ret
		_m128insertps_142 label size_t
			insertps				xmm0,			xmm1,			142
			ret
		_m128insertps_143 label size_t
			insertps				xmm0,			xmm1,			143
			ret
		_m128insertps_144 label size_t
			insertps				xmm0,			xmm1,			144
			ret
		_m128insertps_145 label size_t
			insertps				xmm0,			xmm1,			145
			ret
		_m128insertps_146 label size_t
			insertps				xmm0,			xmm1,			146
			ret
		_m128insertps_147 label size_t
			insertps				xmm0,			xmm1,			147
			ret
		_m128insertps_148 label size_t
			insertps				xmm0,			xmm1,			148
			ret
		_m128insertps_149 label size_t
			insertps				xmm0,			xmm1,			149
			ret
		_m128insertps_150 label size_t
			insertps				xmm0,			xmm1,			150
			ret
		_m128insertps_151 label size_t
			insertps				xmm0,			xmm1,			151
			ret
		_m128insertps_152 label size_t
			insertps				xmm0,			xmm1,			152
			ret
		_m128insertps_153 label size_t
			insertps				xmm0,			xmm1,			153
			ret
		_m128insertps_154 label size_t
			insertps				xmm0,			xmm1,			154
			ret
		_m128insertps_155 label size_t
			insertps				xmm0,			xmm1,			155
			ret
		_m128insertps_156 label size_t
			insertps				xmm0,			xmm1,			156
			ret
		_m128insertps_157 label size_t
			insertps				xmm0,			xmm1,			157
			ret
		_m128insertps_158 label size_t
			insertps				xmm0,			xmm1,			158
			ret
		_m128insertps_159 label size_t
			insertps				xmm0,			xmm1,			159
			ret
		_m128insertps_160 label size_t
			insertps				xmm0,			xmm1,			160
			ret
		_m128insertps_161 label size_t
			insertps				xmm0,			xmm1,			161
			ret
		_m128insertps_162 label size_t
			insertps				xmm0,			xmm1,			162
			ret
		_m128insertps_163 label size_t
			insertps				xmm0,			xmm1,			163
			ret
		_m128insertps_164 label size_t
			insertps				xmm0,			xmm1,			164
			ret
		_m128insertps_165 label size_t
			insertps				xmm0,			xmm1,			165
			ret
		_m128insertps_166 label size_t
			insertps				xmm0,			xmm1,			166
			ret
		_m128insertps_167 label size_t
			insertps				xmm0,			xmm1,			167
			ret
		_m128insertps_168 label size_t
			insertps				xmm0,			xmm1,			168
			ret
		_m128insertps_169 label size_t
			insertps				xmm0,			xmm1,			169
			ret
		_m128insertps_170 label size_t
			insertps				xmm0,			xmm1,			170
			ret
		_m128insertps_171 label size_t
			insertps				xmm0,			xmm1,			171
			ret
		_m128insertps_172 label size_t
			insertps				xmm0,			xmm1,			172
			ret
		_m128insertps_173 label size_t
			insertps				xmm0,			xmm1,			173
			ret
		_m128insertps_174 label size_t
			insertps				xmm0,			xmm1,			174
			ret
		_m128insertps_175 label size_t
			insertps				xmm0,			xmm1,			175
			ret
		_m128insertps_176 label size_t
			insertps				xmm0,			xmm1,			176
			ret
		_m128insertps_177 label size_t
			insertps				xmm0,			xmm1,			177
			ret
		_m128insertps_178 label size_t
			insertps				xmm0,			xmm1,			178
			ret
		_m128insertps_179 label size_t
			insertps				xmm0,			xmm1,			179
			ret
		_m128insertps_180 label size_t
			insertps				xmm0,			xmm1,			180
			ret
		_m128insertps_181 label size_t
			insertps				xmm0,			xmm1,			181
			ret
		_m128insertps_182 label size_t
			insertps				xmm0,			xmm1,			182
			ret
		_m128insertps_183 label size_t
			insertps				xmm0,			xmm1,			183
			ret
		_m128insertps_184 label size_t
			insertps				xmm0,			xmm1,			184
			ret
		_m128insertps_185 label size_t
			insertps				xmm0,			xmm1,			185
			ret
		_m128insertps_186 label size_t
			insertps				xmm0,			xmm1,			186
			ret
		_m128insertps_187 label size_t
			insertps				xmm0,			xmm1,			187
			ret
		_m128insertps_188 label size_t
			insertps				xmm0,			xmm1,			188
			ret
		_m128insertps_189 label size_t
			insertps				xmm0,			xmm1,			189
			ret
		_m128insertps_190 label size_t
			insertps				xmm0,			xmm1,			190
			ret
		_m128insertps_191 label size_t
			insertps				xmm0,			xmm1,			191
			ret
		_m128insertps_192 label size_t
			insertps				xmm0,			xmm1,			192
			ret
		_m128insertps_193 label size_t
			insertps				xmm0,			xmm1,			193
			ret
		_m128insertps_194 label size_t
			insertps				xmm0,			xmm1,			194
			ret
		_m128insertps_195 label size_t
			insertps				xmm0,			xmm1,			195
			ret
		_m128insertps_196 label size_t
			insertps				xmm0,			xmm1,			196
			ret
		_m128insertps_197 label size_t
			insertps				xmm0,			xmm1,			197
			ret
		_m128insertps_198 label size_t
			insertps				xmm0,			xmm1,			198
			ret
		_m128insertps_199 label size_t
			insertps				xmm0,			xmm1,			199
			ret
		_m128insertps_200 label size_t
			insertps				xmm0,			xmm1,			200
			ret
		_m128insertps_201 label size_t
			insertps				xmm0,			xmm1,			201
			ret
		_m128insertps_202 label size_t
			insertps				xmm0,			xmm1,			202
			ret
		_m128insertps_203 label size_t
			insertps				xmm0,			xmm1,			203
			ret
		_m128insertps_204 label size_t
			insertps				xmm0,			xmm1,			204
			ret
		_m128insertps_205 label size_t
			insertps				xmm0,			xmm1,			205
			ret
		_m128insertps_206 label size_t
			insertps				xmm0,			xmm1,			206
			ret
		_m128insertps_207 label size_t
			insertps				xmm0,			xmm1,			207
			ret
		_m128insertps_208 label size_t
			insertps				xmm0,			xmm1,			208
			ret
		_m128insertps_209 label size_t
			insertps				xmm0,			xmm1,			209
			ret
		_m128insertps_210 label size_t
			insertps				xmm0,			xmm1,			210
			ret
		_m128insertps_211 label size_t
			insertps				xmm0,			xmm1,			211
			ret
		_m128insertps_212 label size_t
			insertps				xmm0,			xmm1,			212
			ret
		_m128insertps_213 label size_t
			insertps				xmm0,			xmm1,			213
			ret
		_m128insertps_214 label size_t
			insertps				xmm0,			xmm1,			214
			ret
		_m128insertps_215 label size_t
			insertps				xmm0,			xmm1,			215
			ret
		_m128insertps_216 label size_t
			insertps				xmm0,			xmm1,			216
			ret
		_m128insertps_217 label size_t
			insertps				xmm0,			xmm1,			217
			ret
		_m128insertps_218 label size_t
			insertps				xmm0,			xmm1,			218
			ret
		_m128insertps_219 label size_t
			insertps				xmm0,			xmm1,			219
			ret
		_m128insertps_220 label size_t
			insertps				xmm0,			xmm1,			220
			ret
		_m128insertps_221 label size_t
			insertps				xmm0,			xmm1,			221
			ret
		_m128insertps_222 label size_t
			insertps				xmm0,			xmm1,			222
			ret
		_m128insertps_223 label size_t
			insertps				xmm0,			xmm1,			223
			ret
		_m128insertps_224 label size_t
			insertps				xmm0,			xmm1,			224
			ret
		_m128insertps_225 label size_t
			insertps				xmm0,			xmm1,			225
			ret
		_m128insertps_226 label size_t
			insertps				xmm0,			xmm1,			226
			ret
		_m128insertps_227 label size_t
			insertps				xmm0,			xmm1,			227
			ret
		_m128insertps_228 label size_t
			insertps				xmm0,			xmm1,			228
			ret
		_m128insertps_229 label size_t
			insertps				xmm0,			xmm1,			229
			ret
		_m128insertps_230 label size_t
			insertps				xmm0,			xmm1,			230
			ret
		_m128insertps_231 label size_t
			insertps				xmm0,			xmm1,			231
			ret
		_m128insertps_232 label size_t
			insertps				xmm0,			xmm1,			232
			ret
		_m128insertps_233 label size_t
			insertps				xmm0,			xmm1,			233
			ret
		_m128insertps_234 label size_t
			insertps				xmm0,			xmm1,			234
			ret
		_m128insertps_235 label size_t
			insertps				xmm0,			xmm1,			235
			ret
		_m128insertps_236 label size_t
			insertps				xmm0,			xmm1,			236
			ret
		_m128insertps_237 label size_t
			insertps				xmm0,			xmm1,			237
			ret
		_m128insertps_238 label size_t
			insertps				xmm0,			xmm1,			238
			ret
		_m128insertps_239 label size_t
			insertps				xmm0,			xmm1,			239
			ret
		_m128insertps_240 label size_t
			insertps				xmm0,			xmm1,			240
			ret
		_m128insertps_241 label size_t
			insertps				xmm0,			xmm1,			241
			ret
		_m128insertps_242 label size_t
			insertps				xmm0,			xmm1,			242
			ret
		_m128insertps_243 label size_t
			insertps				xmm0,			xmm1,			243
			ret
		_m128insertps_244 label size_t
			insertps				xmm0,			xmm1,			244
			ret
		_m128insertps_245 label size_t
			insertps				xmm0,			xmm1,			245
			ret
		_m128insertps_246 label size_t
			insertps				xmm0,			xmm1,			246
			ret
		_m128insertps_247 label size_t
			insertps				xmm0,			xmm1,			247
			ret
		_m128insertps_248 label size_t
			insertps				xmm0,			xmm1,			248
			ret
		_m128insertps_249 label size_t
			insertps				xmm0,			xmm1,			249
			ret
		_m128insertps_250 label size_t
			insertps				xmm0,			xmm1,			250
			ret
		_m128insertps_251 label size_t
			insertps				xmm0,			xmm1,			251
			ret
		_m128insertps_252 label size_t
			insertps				xmm0,			xmm1,			252
			ret
		_m128insertps_253 label size_t
			insertps				xmm0,			xmm1,			253
			ret
		_m128insertps_254 label size_t
			insertps				xmm0,			xmm1,			254
			ret
		_m128insertps_255 label size_t
			insertps				xmm0,			xmm1,			255
			ret
		;.endif
		
funcend

;************************************
; Sum absolute 8-bit integer difference of adjacent groups of 4 byte
;************************************
funcstart _uX_mm_mpsadbw_epu8_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			0
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			1
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			2
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			3
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_4, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			4
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_5, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			5
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_6, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			6
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_7, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			7
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			8
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_9, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			9
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_10, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			10
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_11, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			11
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_12, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			12
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_13, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			13
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_14, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			14
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_15, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			15
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_16, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			16
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_17, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			17
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_18, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			18
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_19, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			19
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_20, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			20
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_21, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			21
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_22, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			22
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_23, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			23
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_24, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			24
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_25, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			25
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_26, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			26
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_27, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			27
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_28, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			28
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_29, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			29
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_30, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			30
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_31, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			31
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			32
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_33, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			33
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_34, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			34
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_35, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			35
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_36, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			36
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_37, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			37
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_38, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			38
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_39, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			39
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_40, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			40
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_41, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			41
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_42, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			42
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_43, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			43
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_44, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			44
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_45, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			45
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_46, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			46
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_47, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			47
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_48, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			48
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_49, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			49
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_50, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			50
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_51, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			51
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_52, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			52
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_53, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			53
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_54, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			54
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_55, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			55
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_56, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			56
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_57, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			57
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_58, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			58
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_59, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			59
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_60, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			60
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_61, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			61
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_62, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			62
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_63, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			63
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_64, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			64
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_65, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			65
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_66, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			66
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_67, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			67
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_68, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			68
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_69, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			69
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_70, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			70
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_71, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			71
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_72, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			72
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_73, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			73
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_74, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			74
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_75, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			75
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_76, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			76
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_77, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			77
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_78, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			78
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_79, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			79
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_80, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			80
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_81, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			81
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_82, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			82
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_83, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			83
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_84, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			84
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_85, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			85
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_86, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			86
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_87, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			87
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_88, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			88
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_89, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			89
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_90, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			90
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_91, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			91
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_92, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			92
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_93, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			93
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_94, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			94
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_95, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			95
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_96, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			96
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_97, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			97
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_98, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			98
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_99, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			99
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_100, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			100
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_101, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			101
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_102, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			102
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_103, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			103
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_104, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			104
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_105, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			105
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_106, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			106
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_107, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			107
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_108, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			108
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_109, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			109
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_110, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			110
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_111, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			111
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_112, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			112
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_113, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			113
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_114, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			114
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_115, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			115
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_116, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			116
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_117, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			117
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_118, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			118
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_119, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			119
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_120, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			120
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_121, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			121
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_122, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			122
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_123, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			123
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_124, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			124
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_125, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			125
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_126, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			126
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_127, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			127
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_128, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			128
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_129, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			129
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_130, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			130
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_131, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			131
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_132, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			132
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_133, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			133
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_134, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			134
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_135, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			135
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_136, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			136
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_137, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			137
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_138, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			138
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_139, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			139
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_140, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			140
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_141, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			141
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_142, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			142
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_143, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			143
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_144, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			144
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_145, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			145
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_146, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			mpsadbw				xmm0,			xmm1,			146
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_147, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			147
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_148, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			148
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_149, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			149
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_150, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			150
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_151, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			151
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_152, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			152
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_153, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			153
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_154, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			mpsadbw				xmm0,			xmm1,			154
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_155, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			155
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_156, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			156
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_157, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			157
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_158, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			158
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_159, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			159
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_160, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			160
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_161, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			161
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_162, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			162
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_163, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			163
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_164, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			164
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_165, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			165
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_166, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			166
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_167, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			167
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_168, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			168
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_169, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			169
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_170, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			170
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_171, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			171
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_172, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			172
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_173, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			173
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_174, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
			mpsadbw				xmm0,			xmm1,			174
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_175, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			175
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_176, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			176
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_177, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			177
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_178, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			178
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_179, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			179
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_180, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			180
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_181, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			181
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_182, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			182
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_183, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			183
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_184, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			184
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_185, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			185
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_186, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			186
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_187, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			187
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_188, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			188
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_189, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			189
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_190, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			190
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_191, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			191
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_192, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			192
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_193, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			193
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_194, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			194
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_195, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			195
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_196, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			196
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_197, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			197
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_198, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			198
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_199, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			199
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_200, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			200
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_201, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			201
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_202, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			202
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_203, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			203
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_204, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			204
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_205, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			205
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_206, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			206
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_207, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			207
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_208, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			208
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_209, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			209
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_210, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			210
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_211, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			211
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_212, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			212
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_213, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			213
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_214, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			214
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_215, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			215
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_216, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			216
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_217, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			217
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_218, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			218
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_219, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			219
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_220, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			220
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_221, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			221
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_222, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			222
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_223, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			223
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_224, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			224
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_225, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			225
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_226, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			226
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_227, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			227
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_228, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			228
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_229, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			229
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_230, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			230
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_231, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			231
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_232, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			232
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_233, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			233
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_234, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			234
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_235, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			235
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_236, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			236
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_237, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			237
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_238, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			238
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_239, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			239
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_240, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			240
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_241, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			241
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_242, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			242
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_243, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			243
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_244, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			244
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_245, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			245
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_246, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			246
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_247, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			247
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_248, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			248
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_249, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			249
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_250, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			250
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_251, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			251
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_252, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			252
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_253, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			253
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_254, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			254
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8_255, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			mpsadbw				xmm0,			xmm1,			255
			ret
funcend

funcstart _uX_mm_mpsadbw_epu8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128impsadbwepu8jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128impsadbwepu8jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128impsadbwepu8_0 label size_t
			mpsadbw				xmm0,			xmm1,			0
			ret
		_m128impsadbwepu8_1 label size_t
			mpsadbw				xmm0,			xmm1,			1
			ret
		_m128impsadbwepu8_2 label size_t
			mpsadbw				xmm0,			xmm1,			2
			ret
		_m128impsadbwepu8_3 label size_t
			mpsadbw				xmm0,			xmm1,			3
			ret
		_m128impsadbwepu8_4 label size_t
			mpsadbw				xmm0,			xmm1,			4
			ret
		_m128impsadbwepu8_5 label size_t
			mpsadbw				xmm0,			xmm1,			5
			ret
		_m128impsadbwepu8_6 label size_t
			mpsadbw				xmm0,			xmm1,			6
			ret
		_m128impsadbwepu8_7 label size_t
			mpsadbw				xmm0,			xmm1,			7
			ret
		_m128impsadbwepu8_8 label size_t
			mpsadbw				xmm0,			xmm1,			8
			ret
		_m128impsadbwepu8_9 label size_t
			mpsadbw				xmm0,			xmm1,			9
			ret
		_m128impsadbwepu8_10 label size_t
			mpsadbw				xmm0,			xmm1,			10
			ret
		_m128impsadbwepu8_11 label size_t
			mpsadbw				xmm0,			xmm1,			11
			ret
		_m128impsadbwepu8_12 label size_t
			mpsadbw				xmm0,			xmm1,			12
			ret
		_m128impsadbwepu8_13 label size_t
			mpsadbw				xmm0,			xmm1,			13
			ret
		_m128impsadbwepu8_14 label size_t
			mpsadbw				xmm0,			xmm1,			14
			ret
		_m128impsadbwepu8_15 label size_t
			mpsadbw				xmm0,			xmm1,			15
			ret
		_m128impsadbwepu8_16 label size_t
			mpsadbw				xmm0,			xmm1,			16
			ret
		_m128impsadbwepu8_17 label size_t
			mpsadbw				xmm0,			xmm1,			17
			ret
		_m128impsadbwepu8_18 label size_t
			mpsadbw				xmm0,			xmm1,			18
			ret
		_m128impsadbwepu8_19 label size_t
			mpsadbw				xmm0,			xmm1,			19
			ret
		_m128impsadbwepu8_20 label size_t
			mpsadbw				xmm0,			xmm1,			20
			ret
		_m128impsadbwepu8_21 label size_t
			mpsadbw				xmm0,			xmm1,			21
			ret
		_m128impsadbwepu8_22 label size_t
			mpsadbw				xmm0,			xmm1,			22
			ret
		_m128impsadbwepu8_23 label size_t
			mpsadbw				xmm0,			xmm1,			23
			ret
		_m128impsadbwepu8_24 label size_t
			mpsadbw				xmm0,			xmm1,			24
			ret
		_m128impsadbwepu8_25 label size_t
			mpsadbw				xmm0,			xmm1,			25
			ret
		_m128impsadbwepu8_26 label size_t
			mpsadbw				xmm0,			xmm1,			26
			ret
		_m128impsadbwepu8_27 label size_t
			mpsadbw				xmm0,			xmm1,			27
			ret
		_m128impsadbwepu8_28 label size_t
			mpsadbw				xmm0,			xmm1,			28
			ret
		_m128impsadbwepu8_29 label size_t
			mpsadbw				xmm0,			xmm1,			29
			ret
		_m128impsadbwepu8_30 label size_t
			mpsadbw				xmm0,			xmm1,			30
			ret
		_m128impsadbwepu8_31 label size_t
			mpsadbw				xmm0,			xmm1,			31
			ret
		_m128impsadbwepu8_32 label size_t
			mpsadbw				xmm0,			xmm1,			32
			ret
		_m128impsadbwepu8_33 label size_t
			mpsadbw				xmm0,			xmm1,			33
			ret
		_m128impsadbwepu8_34 label size_t
			mpsadbw				xmm0,			xmm1,			34
			ret
		_m128impsadbwepu8_35 label size_t
			mpsadbw				xmm0,			xmm1,			35
			ret
		_m128impsadbwepu8_36 label size_t
			mpsadbw				xmm0,			xmm1,			36
			ret
		_m128impsadbwepu8_37 label size_t
			mpsadbw				xmm0,			xmm1,			37
			ret
		_m128impsadbwepu8_38 label size_t
			mpsadbw				xmm0,			xmm1,			38
			ret
		_m128impsadbwepu8_39 label size_t
			mpsadbw				xmm0,			xmm1,			39
			ret
		_m128impsadbwepu8_40 label size_t
			mpsadbw				xmm0,			xmm1,			40
			ret
		_m128impsadbwepu8_41 label size_t
			mpsadbw				xmm0,			xmm1,			41
			ret
		_m128impsadbwepu8_42 label size_t
			mpsadbw				xmm0,			xmm1,			42
			ret
		_m128impsadbwepu8_43 label size_t
			mpsadbw				xmm0,			xmm1,			43
			ret
		_m128impsadbwepu8_44 label size_t
			mpsadbw				xmm0,			xmm1,			44
			ret
		_m128impsadbwepu8_45 label size_t
			mpsadbw				xmm0,			xmm1,			45
			ret
		_m128impsadbwepu8_46 label size_t
			mpsadbw				xmm0,			xmm1,			46
			ret
		_m128impsadbwepu8_47 label size_t
			mpsadbw				xmm0,			xmm1,			47
			ret
		_m128impsadbwepu8_48 label size_t
			mpsadbw				xmm0,			xmm1,			48
			ret
		_m128impsadbwepu8_49 label size_t
			mpsadbw				xmm0,			xmm1,			49
			ret
		_m128impsadbwepu8_50 label size_t
			mpsadbw				xmm0,			xmm1,			50
			ret
		_m128impsadbwepu8_51 label size_t
			mpsadbw				xmm0,			xmm1,			51
			ret
		_m128impsadbwepu8_52 label size_t
			mpsadbw				xmm0,			xmm1,			52
			ret
		_m128impsadbwepu8_53 label size_t
			mpsadbw				xmm0,			xmm1,			53
			ret
		_m128impsadbwepu8_54 label size_t
			mpsadbw				xmm0,			xmm1,			54
			ret
		_m128impsadbwepu8_55 label size_t
			mpsadbw				xmm0,			xmm1,			55
			ret
		_m128impsadbwepu8_56 label size_t
			mpsadbw				xmm0,			xmm1,			56
			ret
		_m128impsadbwepu8_57 label size_t
			mpsadbw				xmm0,			xmm1,			57
			ret
		_m128impsadbwepu8_58 label size_t
			mpsadbw				xmm0,			xmm1,			58
			ret
		_m128impsadbwepu8_59 label size_t
			mpsadbw				xmm0,			xmm1,			59
			ret
		_m128impsadbwepu8_60 label size_t
			mpsadbw				xmm0,			xmm1,			60
			ret
		_m128impsadbwepu8_61 label size_t
			mpsadbw				xmm0,			xmm1,			61
			ret
		_m128impsadbwepu8_62 label size_t
			mpsadbw				xmm0,			xmm1,			62
			ret
		_m128impsadbwepu8_63 label size_t
			mpsadbw				xmm0,			xmm1,			63
			ret
		_m128impsadbwepu8_64 label size_t
			mpsadbw				xmm0,			xmm1,			64
			ret
		_m128impsadbwepu8_65 label size_t
			mpsadbw				xmm0,			xmm1,			65
			ret
		_m128impsadbwepu8_66 label size_t
			mpsadbw				xmm0,			xmm1,			66
			ret
		_m128impsadbwepu8_67 label size_t
			mpsadbw				xmm0,			xmm1,			67
			ret
		_m128impsadbwepu8_68 label size_t
			mpsadbw				xmm0,			xmm1,			68
			ret
		_m128impsadbwepu8_69 label size_t
			mpsadbw				xmm0,			xmm1,			69
			ret
		_m128impsadbwepu8_70 label size_t
			mpsadbw				xmm0,			xmm1,			70
			ret
		_m128impsadbwepu8_71 label size_t
			mpsadbw				xmm0,			xmm1,			71
			ret
		_m128impsadbwepu8_72 label size_t
			mpsadbw				xmm0,			xmm1,			72
			ret
		_m128impsadbwepu8_73 label size_t
			mpsadbw				xmm0,			xmm1,			73
			ret
		_m128impsadbwepu8_74 label size_t
			mpsadbw				xmm0,			xmm1,			74
			ret
		_m128impsadbwepu8_75 label size_t
			mpsadbw				xmm0,			xmm1,			75
			ret
		_m128impsadbwepu8_76 label size_t
			mpsadbw				xmm0,			xmm1,			76
			ret
		_m128impsadbwepu8_77 label size_t
			mpsadbw				xmm0,			xmm1,			77
			ret
		_m128impsadbwepu8_78 label size_t
			mpsadbw				xmm0,			xmm1,			78
			ret
		_m128impsadbwepu8_79 label size_t
			mpsadbw				xmm0,			xmm1,			79
			ret
		_m128impsadbwepu8_80 label size_t
			mpsadbw				xmm0,			xmm1,			80
			ret
		_m128impsadbwepu8_81 label size_t
			mpsadbw				xmm0,			xmm1,			81
			ret
		_m128impsadbwepu8_82 label size_t
			mpsadbw				xmm0,			xmm1,			82
			ret
		_m128impsadbwepu8_83 label size_t
			mpsadbw				xmm0,			xmm1,			83
			ret
		_m128impsadbwepu8_84 label size_t
			mpsadbw				xmm0,			xmm1,			84
			ret
		_m128impsadbwepu8_85 label size_t
			mpsadbw				xmm0,			xmm1,			85
			ret
		_m128impsadbwepu8_86 label size_t
			mpsadbw				xmm0,			xmm1,			86
			ret
		_m128impsadbwepu8_87 label size_t
			mpsadbw				xmm0,			xmm1,			87
			ret
		_m128impsadbwepu8_88 label size_t
			mpsadbw				xmm0,			xmm1,			88
			ret
		_m128impsadbwepu8_89 label size_t
			mpsadbw				xmm0,			xmm1,			89
			ret
		_m128impsadbwepu8_90 label size_t
			mpsadbw				xmm0,			xmm1,			90
			ret
		_m128impsadbwepu8_91 label size_t
			mpsadbw				xmm0,			xmm1,			91
			ret
		_m128impsadbwepu8_92 label size_t
			mpsadbw				xmm0,			xmm1,			92
			ret
		_m128impsadbwepu8_93 label size_t
			mpsadbw				xmm0,			xmm1,			93
			ret
		_m128impsadbwepu8_94 label size_t
			mpsadbw				xmm0,			xmm1,			94
			ret
		_m128impsadbwepu8_95 label size_t
			mpsadbw				xmm0,			xmm1,			95
			ret
		_m128impsadbwepu8_96 label size_t
			mpsadbw				xmm0,			xmm1,			96
			ret
		_m128impsadbwepu8_97 label size_t
			mpsadbw				xmm0,			xmm1,			97
			ret
		_m128impsadbwepu8_98 label size_t
			mpsadbw				xmm0,			xmm1,			98
			ret
		_m128impsadbwepu8_99 label size_t
			mpsadbw				xmm0,			xmm1,			99
			ret
		_m128impsadbwepu8_100 label size_t
			mpsadbw				xmm0,			xmm1,			100
			ret
		_m128impsadbwepu8_101 label size_t
			mpsadbw				xmm0,			xmm1,			101
			ret
		_m128impsadbwepu8_102 label size_t
			mpsadbw				xmm0,			xmm1,			102
			ret
		_m128impsadbwepu8_103 label size_t
			mpsadbw				xmm0,			xmm1,			103
			ret
		_m128impsadbwepu8_104 label size_t
			mpsadbw				xmm0,			xmm1,			104
			ret
		_m128impsadbwepu8_105 label size_t
			mpsadbw				xmm0,			xmm1,			105
			ret
		_m128impsadbwepu8_106 label size_t
			mpsadbw				xmm0,			xmm1,			106
			ret
		_m128impsadbwepu8_107 label size_t
			mpsadbw				xmm0,			xmm1,			107
			ret
		_m128impsadbwepu8_108 label size_t
			mpsadbw				xmm0,			xmm1,			108
			ret
		_m128impsadbwepu8_109 label size_t
			mpsadbw				xmm0,			xmm1,			109
			ret
		_m128impsadbwepu8_110 label size_t
			mpsadbw				xmm0,			xmm1,			110
			ret
		_m128impsadbwepu8_111 label size_t
			mpsadbw				xmm0,			xmm1,			111
			ret
		_m128impsadbwepu8_112 label size_t
			mpsadbw				xmm0,			xmm1,			112
			ret
		_m128impsadbwepu8_113 label size_t
			mpsadbw				xmm0,			xmm1,			113
			ret
		_m128impsadbwepu8_114 label size_t
			mpsadbw				xmm0,			xmm1,			114
			ret
		_m128impsadbwepu8_115 label size_t
			mpsadbw				xmm0,			xmm1,			115
			ret
		_m128impsadbwepu8_116 label size_t
			mpsadbw				xmm0,			xmm1,			116
			ret
		_m128impsadbwepu8_117 label size_t
			mpsadbw				xmm0,			xmm1,			117
			ret
		_m128impsadbwepu8_118 label size_t
			mpsadbw				xmm0,			xmm1,			118
			ret
		_m128impsadbwepu8_119 label size_t
			mpsadbw				xmm0,			xmm1,			119
			ret
		_m128impsadbwepu8_120 label size_t
			mpsadbw				xmm0,			xmm1,			120
			ret
		_m128impsadbwepu8_121 label size_t
			mpsadbw				xmm0,			xmm1,			121
			ret
		_m128impsadbwepu8_122 label size_t
			mpsadbw				xmm0,			xmm1,			122
			ret
		_m128impsadbwepu8_123 label size_t
			mpsadbw				xmm0,			xmm1,			123
			ret
		_m128impsadbwepu8_124 label size_t
			mpsadbw				xmm0,			xmm1,			124
			ret
		_m128impsadbwepu8_125 label size_t
			mpsadbw				xmm0,			xmm1,			125
			ret
		_m128impsadbwepu8_126 label size_t
			mpsadbw				xmm0,			xmm1,			126
			ret
		_m128impsadbwepu8_127 label size_t
			mpsadbw				xmm0,			xmm1,			127
			ret
		_m128impsadbwepu8_128 label size_t
			mpsadbw				xmm0,			xmm1,			128
			ret
		_m128impsadbwepu8_129 label size_t
			mpsadbw				xmm0,			xmm1,			129
			ret
		_m128impsadbwepu8_130 label size_t
			mpsadbw				xmm0,			xmm1,			130
			ret
		_m128impsadbwepu8_131 label size_t
			mpsadbw				xmm0,			xmm1,			131
			ret
		_m128impsadbwepu8_132 label size_t
			mpsadbw				xmm0,			xmm1,			132
			ret
		_m128impsadbwepu8_133 label size_t
			mpsadbw				xmm0,			xmm1,			133
			ret
		_m128impsadbwepu8_134 label size_t
			mpsadbw				xmm0,			xmm1,			134
			ret
		_m128impsadbwepu8_135 label size_t
			mpsadbw				xmm0,			xmm1,			135
			ret
		_m128impsadbwepu8_136 label size_t
			mpsadbw				xmm0,			xmm1,			136
			ret
		_m128impsadbwepu8_137 label size_t
			mpsadbw				xmm0,			xmm1,			137
			ret
		_m128impsadbwepu8_138 label size_t
			mpsadbw				xmm0,			xmm1,			138
			ret
		_m128impsadbwepu8_139 label size_t
			mpsadbw				xmm0,			xmm1,			139
			ret
		_m128impsadbwepu8_140 label size_t
			mpsadbw				xmm0,			xmm1,			140
			ret
		_m128impsadbwepu8_141 label size_t
			mpsadbw				xmm0,			xmm1,			141
			ret
		_m128impsadbwepu8_142 label size_t
			mpsadbw				xmm0,			xmm1,			142
			ret
		_m128impsadbwepu8_143 label size_t
			mpsadbw				xmm0,			xmm1,			143
			ret
		_m128impsadbwepu8_144 label size_t
			mpsadbw				xmm0,			xmm1,			144
			ret
		_m128impsadbwepu8_145 label size_t
			mpsadbw				xmm0,			xmm1,			145
			ret
		_m128impsadbwepu8_146 label size_t
			mpsadbw				xmm0,			xmm1,			146
			ret
		_m128impsadbwepu8_147 label size_t
			mpsadbw				xmm0,			xmm1,			147
			ret
		_m128impsadbwepu8_148 label size_t
			mpsadbw				xmm0,			xmm1,			148
			ret
		_m128impsadbwepu8_149 label size_t
			mpsadbw				xmm0,			xmm1,			149
			ret
		_m128impsadbwepu8_150 label size_t
			mpsadbw				xmm0,			xmm1,			150
			ret
		_m128impsadbwepu8_151 label size_t
			mpsadbw				xmm0,			xmm1,			151
			ret
		_m128impsadbwepu8_152 label size_t
			mpsadbw				xmm0,			xmm1,			152
			ret
		_m128impsadbwepu8_153 label size_t
			mpsadbw				xmm0,			xmm1,			153
			ret
		_m128impsadbwepu8_154 label size_t
			mpsadbw				xmm0,			xmm1,			154
			ret
		_m128impsadbwepu8_155 label size_t
			mpsadbw				xmm0,			xmm1,			155
			ret
		_m128impsadbwepu8_156 label size_t
			mpsadbw				xmm0,			xmm1,			156
			ret
		_m128impsadbwepu8_157 label size_t
			mpsadbw				xmm0,			xmm1,			157
			ret
		_m128impsadbwepu8_158 label size_t
			mpsadbw				xmm0,			xmm1,			158
			ret
		_m128impsadbwepu8_159 label size_t
			mpsadbw				xmm0,			xmm1,			159
			ret
		_m128impsadbwepu8_160 label size_t
			mpsadbw				xmm0,			xmm1,			160
			ret
		_m128impsadbwepu8_161 label size_t
			mpsadbw				xmm0,			xmm1,			161
			ret
		_m128impsadbwepu8_162 label size_t
			mpsadbw				xmm0,			xmm1,			162
			ret
		_m128impsadbwepu8_163 label size_t
			mpsadbw				xmm0,			xmm1,			163
			ret
		_m128impsadbwepu8_164 label size_t
			mpsadbw				xmm0,			xmm1,			164
			ret
		_m128impsadbwepu8_165 label size_t
			mpsadbw				xmm0,			xmm1,			165
			ret
		_m128impsadbwepu8_166 label size_t
			mpsadbw				xmm0,			xmm1,			166
			ret
		_m128impsadbwepu8_167 label size_t
			mpsadbw				xmm0,			xmm1,			167
			ret
		_m128impsadbwepu8_168 label size_t
			mpsadbw				xmm0,			xmm1,			168
			ret
		_m128impsadbwepu8_169 label size_t
			mpsadbw				xmm0,			xmm1,			169
			ret
		_m128impsadbwepu8_170 label size_t
			mpsadbw				xmm0,			xmm1,			170
			ret
		_m128impsadbwepu8_171 label size_t
			mpsadbw				xmm0,			xmm1,			171
			ret
		_m128impsadbwepu8_172 label size_t
			mpsadbw				xmm0,			xmm1,			172
			ret
		_m128impsadbwepu8_173 label size_t
			mpsadbw				xmm0,			xmm1,			173
			ret
		_m128impsadbwepu8_174 label size_t
			mpsadbw				xmm0,			xmm1,			174
			ret
		_m128impsadbwepu8_175 label size_t
			mpsadbw				xmm0,			xmm1,			175
			ret
		_m128impsadbwepu8_176 label size_t
			mpsadbw				xmm0,			xmm1,			176
			ret
		_m128impsadbwepu8_177 label size_t
			mpsadbw				xmm0,			xmm1,			177
			ret
		_m128impsadbwepu8_178 label size_t
			mpsadbw				xmm0,			xmm1,			178
			ret
		_m128impsadbwepu8_179 label size_t
			mpsadbw				xmm0,			xmm1,			179
			ret
		_m128impsadbwepu8_180 label size_t
			mpsadbw				xmm0,			xmm1,			180
			ret
		_m128impsadbwepu8_181 label size_t
			mpsadbw				xmm0,			xmm1,			181
			ret
		_m128impsadbwepu8_182 label size_t
			mpsadbw				xmm0,			xmm1,			182
			ret
		_m128impsadbwepu8_183 label size_t
			mpsadbw				xmm0,			xmm1,			183
			ret
		_m128impsadbwepu8_184 label size_t
			mpsadbw				xmm0,			xmm1,			184
			ret
		_m128impsadbwepu8_185 label size_t
			mpsadbw				xmm0,			xmm1,			185
			ret
		_m128impsadbwepu8_186 label size_t
			mpsadbw				xmm0,			xmm1,			186
			ret
		_m128impsadbwepu8_187 label size_t
			mpsadbw				xmm0,			xmm1,			187
			ret
		_m128impsadbwepu8_188 label size_t
			mpsadbw				xmm0,			xmm1,			188
			ret
		_m128impsadbwepu8_189 label size_t
			mpsadbw				xmm0,			xmm1,			189
			ret
		_m128impsadbwepu8_190 label size_t
			mpsadbw				xmm0,			xmm1,			190
			ret
		_m128impsadbwepu8_191 label size_t
			mpsadbw				xmm0,			xmm1,			191
			ret
		_m128impsadbwepu8_192 label size_t
			mpsadbw				xmm0,			xmm1,			192
			ret
		_m128impsadbwepu8_193 label size_t
			mpsadbw				xmm0,			xmm1,			193
			ret
		_m128impsadbwepu8_194 label size_t
			mpsadbw				xmm0,			xmm1,			194
			ret
		_m128impsadbwepu8_195 label size_t
			mpsadbw				xmm0,			xmm1,			195
			ret
		_m128impsadbwepu8_196 label size_t
			mpsadbw				xmm0,			xmm1,			196
			ret
		_m128impsadbwepu8_197 label size_t
			mpsadbw				xmm0,			xmm1,			197
			ret
		_m128impsadbwepu8_198 label size_t
			mpsadbw				xmm0,			xmm1,			198
			ret
		_m128impsadbwepu8_199 label size_t
			mpsadbw				xmm0,			xmm1,			199
			ret
		_m128impsadbwepu8_200 label size_t
			mpsadbw				xmm0,			xmm1,			200
			ret
		_m128impsadbwepu8_201 label size_t
			mpsadbw				xmm0,			xmm1,			201
			ret
		_m128impsadbwepu8_202 label size_t
			mpsadbw				xmm0,			xmm1,			202
			ret
		_m128impsadbwepu8_203 label size_t
			mpsadbw				xmm0,			xmm1,			203
			ret
		_m128impsadbwepu8_204 label size_t
			mpsadbw				xmm0,			xmm1,			204
			ret
		_m128impsadbwepu8_205 label size_t
			mpsadbw				xmm0,			xmm1,			205
			ret
		_m128impsadbwepu8_206 label size_t
			mpsadbw				xmm0,			xmm1,			206
			ret
		_m128impsadbwepu8_207 label size_t
			mpsadbw				xmm0,			xmm1,			207
			ret
		_m128impsadbwepu8_208 label size_t
			mpsadbw				xmm0,			xmm1,			208
			ret
		_m128impsadbwepu8_209 label size_t
			mpsadbw				xmm0,			xmm1,			209
			ret
		_m128impsadbwepu8_210 label size_t
			mpsadbw				xmm0,			xmm1,			210
			ret
		_m128impsadbwepu8_211 label size_t
			mpsadbw				xmm0,			xmm1,			211
			ret
		_m128impsadbwepu8_212 label size_t
			mpsadbw				xmm0,			xmm1,			212
			ret
		_m128impsadbwepu8_213 label size_t
			mpsadbw				xmm0,			xmm1,			213
			ret
		_m128impsadbwepu8_214 label size_t
			mpsadbw				xmm0,			xmm1,			214
			ret
		_m128impsadbwepu8_215 label size_t
			mpsadbw				xmm0,			xmm1,			215
			ret
		_m128impsadbwepu8_216 label size_t
			mpsadbw				xmm0,			xmm1,			216
			ret
		_m128impsadbwepu8_217 label size_t
			mpsadbw				xmm0,			xmm1,			217
			ret
		_m128impsadbwepu8_218 label size_t
			mpsadbw				xmm0,			xmm1,			218
			ret
		_m128impsadbwepu8_219 label size_t
			mpsadbw				xmm0,			xmm1,			219
			ret
		_m128impsadbwepu8_220 label size_t
			mpsadbw				xmm0,			xmm1,			220
			ret
		_m128impsadbwepu8_221 label size_t
			mpsadbw				xmm0,			xmm1,			221
			ret
		_m128impsadbwepu8_222 label size_t
			mpsadbw				xmm0,			xmm1,			222
			ret
		_m128impsadbwepu8_223 label size_t
			mpsadbw				xmm0,			xmm1,			223
			ret
		_m128impsadbwepu8_224 label size_t
			mpsadbw				xmm0,			xmm1,			224
			ret
		_m128impsadbwepu8_225 label size_t
			mpsadbw				xmm0,			xmm1,			225
			ret
		_m128impsadbwepu8_226 label size_t
			mpsadbw				xmm0,			xmm1,			226
			ret
		_m128impsadbwepu8_227 label size_t
			mpsadbw				xmm0,			xmm1,			227
			ret
		_m128impsadbwepu8_228 label size_t
			mpsadbw				xmm0,			xmm1,			228
			ret
		_m128impsadbwepu8_229 label size_t
			mpsadbw				xmm0,			xmm1,			229
			ret
		_m128impsadbwepu8_230 label size_t
			mpsadbw				xmm0,			xmm1,			230
			ret
		_m128impsadbwepu8_231 label size_t
			mpsadbw				xmm0,			xmm1,			231
			ret
		_m128impsadbwepu8_232 label size_t
			mpsadbw				xmm0,			xmm1,			232
			ret
		_m128impsadbwepu8_233 label size_t
			mpsadbw				xmm0,			xmm1,			233
			ret
		_m128impsadbwepu8_234 label size_t
			mpsadbw				xmm0,			xmm1,			234
			ret
		_m128impsadbwepu8_235 label size_t
			mpsadbw				xmm0,			xmm1,			235
			ret
		_m128impsadbwepu8_236 label size_t
			mpsadbw				xmm0,			xmm1,			236
			ret
		_m128impsadbwepu8_237 label size_t
			mpsadbw				xmm0,			xmm1,			237
			ret
		_m128impsadbwepu8_238 label size_t
			mpsadbw				xmm0,			xmm1,			238
			ret
		_m128impsadbwepu8_239 label size_t
			mpsadbw				xmm0,			xmm1,			239
			ret
		_m128impsadbwepu8_240 label size_t
			mpsadbw				xmm0,			xmm1,			240
			ret
		_m128impsadbwepu8_241 label size_t
			mpsadbw				xmm0,			xmm1,			241
			ret
		_m128impsadbwepu8_242 label size_t
			mpsadbw				xmm0,			xmm1,			242
			ret
		_m128impsadbwepu8_243 label size_t
			mpsadbw				xmm0,			xmm1,			243
			ret
		_m128impsadbwepu8_244 label size_t
			mpsadbw				xmm0,			xmm1,			244
			ret
		_m128impsadbwepu8_245 label size_t
			mpsadbw				xmm0,			xmm1,			245
			ret
		_m128impsadbwepu8_246 label size_t
			mpsadbw				xmm0,			xmm1,			246
			ret
		_m128impsadbwepu8_247 label size_t
			mpsadbw				xmm0,			xmm1,			247
			ret
		_m128impsadbwepu8_248 label size_t
			mpsadbw				xmm0,			xmm1,			248
			ret
		_m128impsadbwepu8_249 label size_t
			mpsadbw				xmm0,			xmm1,			249
			ret
		_m128impsadbwepu8_250 label size_t
			mpsadbw				xmm0,			xmm1,			250
			ret
		_m128impsadbwepu8_251 label size_t
			mpsadbw				xmm0,			xmm1,			251
			ret
		_m128impsadbwepu8_252 label size_t
			mpsadbw				xmm0,			xmm1,			252
			ret
		_m128impsadbwepu8_253 label size_t
			mpsadbw				xmm0,			xmm1,			253
			ret
		_m128impsadbwepu8_254 label size_t
			mpsadbw				xmm0,			xmm1,			254
			ret
		_m128impsadbwepu8_255 label size_t
			mpsadbw				xmm0,			xmm1,			255
			ret
		;.endif
		
funcend

endif ;__MIC__

	end
