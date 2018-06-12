
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc
	
	.data

	.const
	
	__align_size_t
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
		
	__align_size_t
	_m128blendpsjmptable isize_t	offset _m128blendps_0, offset _m128blendps_1, offset _m128blendps_2, offset _m128blendps_3, offset _m128blendps_4, \
									offset _m128blendps_5, offset _m128blendps_6, offset _m128blendps_7, offset _m128blendps_8, offset _m128blendps_9, \
									offset _m128blendps_10, offset _m128blendps_11, offset _m128blendps_12, offset _m128blendps_13, offset _m128blendps_14, \
									offset _m128blendps_15

	__align_size_t
	_m128dblendpdjmptable isize_t	offset _m128dblendpd_0, offset _m128dblendpd_1, offset _m128dblendpd_2, offset _m128dblendpd_3
	
	__align_size_t
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

	__align_size_t
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


	__align_xmm_fp_opt
	__veccall_opt

	.code
	
;************************************
; blend instructions
;************************************

_uXm_func_start _uXm_mm_blend_epi16_0, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_1, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_2, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_3, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_4, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_5, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_6, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_7, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_8, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_9, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_10, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_11, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_12, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_13, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_14, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_15, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_16, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			16
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_17, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			17
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_18, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			18
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_19, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			19
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_20, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			20
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_21, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			21
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_22, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			22
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_23, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			23
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_24, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			24
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_25, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			25
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_26, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			26
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_27, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			27
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_28, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			28
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_29, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			29
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_30, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			30
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_31, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			31
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_32, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			32
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_33, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			33
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_34, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			34
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_35, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			35
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_36, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			36
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_37, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			37
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_38, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			38
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_39, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			39
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_40, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			40
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_41, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			41
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_42, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			42
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_43, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			43
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_44, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			44
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_45, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			45
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_46, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			46
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_47, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			47
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_48, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			48
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_49, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			49
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_50, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			50
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_51, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			51
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_52, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			52
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_53, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			53
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_54, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			54
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_55, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			55
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_56, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			56
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_57, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			57
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_58, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			58
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_59, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			59
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_60, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			60
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_61, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			61
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_62, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			62
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_63, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			63
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_64, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			64
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_65, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			65
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_66, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			66
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_67, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			67
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_68, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			68
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_69, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			69
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_70, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			70
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_71, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			71
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_72, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			72
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_73, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			73
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_74, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			74
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_75, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			75
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_76, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			76
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_77, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			77
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_78, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			78
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_79, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			79
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_80, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			80
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_81, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			81
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_82, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			82
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_83, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			83
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_84, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			84
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_85, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			85
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_86, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			86
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_87, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			87
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_88, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			88
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_89, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			89
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_90, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			90
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_91, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			91
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_92, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			92
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_93, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			93
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_94, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			94
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_95, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			95
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_96, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			96
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_97, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			97
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_98, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			98
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_99, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			99
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_100, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			100
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_101, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			101
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_102, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			102
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_103, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			103
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_104, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			104
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_105, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			105
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_106, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			106
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_107, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			107
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_108, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			108
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_109, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			109
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_110, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			110
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_111, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			111
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_112, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			112
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_113, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			113
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_114, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			114
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_115, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			115
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_116, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			116
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_117, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			117
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_118, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			118
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_119, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			119
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_120, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			120
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_121, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			121
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_122, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			122
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_123, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			123
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_124, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			124
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_125, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			125
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_126, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			126
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_127, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			127
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_128, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			128
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_129, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			129
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_130, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			130
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_131, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			131
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_132, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			132
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_133, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			133
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_134, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			134
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_135, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			135
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_136, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			136
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_137, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			137
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_138, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			138
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_139, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			139
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_140, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			140
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_141, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			141
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_142, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			142
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_143, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			143
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_144, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			144
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_145, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			145
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_146, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword 
			pblendw				xmm0,			xmm1,			146
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_147, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			147
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_148, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			148
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_149, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			149
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_150, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			150
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_151, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			151
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_152, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			152
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_153, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			153
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_154, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword 
			pblendw				xmm0,			xmm1,			154
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_155, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			155
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_156, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			156
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_157, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			157
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_158, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			158
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_159, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			159
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_160, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			160
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_161, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			161
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_162, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			162
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_163, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			163
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_164, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			164
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_165, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			165
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_166, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			166
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_167, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			167
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_168, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			168
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_169, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			169
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_170, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			170
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_171, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			171
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_172, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			172
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_173, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			173
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_174, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword 
			pblendw				xmm0,			xmm1,			174
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_175, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			175
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_176, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			176
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_177, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			177
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_178, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			178
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_179, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			179
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_180, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			180
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_181, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			181
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_182, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			182
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_183, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			183
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_184, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			184
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_185, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			185
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_186, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			186
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_187, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			187
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_188, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			188
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_189, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			189
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_190, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			190
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_191, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			191
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_192, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			192
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_193, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			193
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_194, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			194
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_195, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			195
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_196, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			196
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_197, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			197
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_198, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			198
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_199, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			199
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_200, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			200
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_201, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			201
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_202, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			202
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_203, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			203
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_204, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			204
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_205, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			205
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_206, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			206
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_207, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			207
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_208, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			208
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_209, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			209
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_210, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			210
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_211, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			211
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_212, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			212
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_213, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			213
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_214, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			214
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_215, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			215
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_216, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			216
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_217, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			217
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_218, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			218
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_219, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			219
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_220, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			220
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_221, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			221
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_222, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			222
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_223, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			223
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_224, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			224
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_225, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			225
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_226, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			226
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_227, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			227
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_228, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			228
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_229, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			229
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_230, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			230
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_231, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			231
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_232, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			232
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_233, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			233
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_234, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			234
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_235, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			235
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_236, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			236
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_237, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			237
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_238, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			238
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_239, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			239
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_240, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			240
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_241, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			241
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_242, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			242
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_243, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			243
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_244, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			244
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_245, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			245
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_246, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			246
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_247, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			247
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_248, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			248
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_249, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			249
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_250, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			250
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_251, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			251
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_252, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			252
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_253, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			253
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_254, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			254
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16_255, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			pblendw				xmm0,			xmm1,			255
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_epi16, xmmword, < >, (2 * xmm_size) + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128iblendepi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128iblendepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
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
		
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_0, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_1, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_2, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_3, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_4, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_5, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_6, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_7, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_8, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_9, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_10, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_11, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_12, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_13, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_14, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps_15, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendps				xmm0,			xmm1,			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_ps, xmmword, < >, (2 * xmm_size) + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128blendpsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128blendpsjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
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
		
_uXm_func_end

_uXm_func_start _uXm_mm_blend_pd_0, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendpd				xmm0,			xmm1,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_pd_1, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendpd				xmm0,			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_pd_2, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendpd				xmm0,			xmm1,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_pd_3, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			blendpd				xmm0,			xmm1,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blend_pd, xmmword, < >, (2 * xmm_size) + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128dblendpdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128dblendpdjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
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
		
_uXm_func_end

;************************************
; Dot product instructions
;************************************

_uXm_func_start _uXm_mm_dp_ps_0, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_1, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_2, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_3, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_4, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_5, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_6, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_7, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_8, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_9, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_10, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_11, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_12, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_13, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_14, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_15, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_16, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			16
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_17, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			17
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_18, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			18
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_19, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			19
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_20, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			20
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_21, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			21
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_22, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			22
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_23, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			23
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_24, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			24
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_25, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			25
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_26, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			26
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_27, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			27
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_28, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			28
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_29, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			29
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_30, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			30
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_31, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			31
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_32, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			32
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_33, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			33
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_34, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			34
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_35, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			35
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_36, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			36
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_37, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			37
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_38, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			38
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_39, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			39
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_40, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			40
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_41, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			41
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_42, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			42
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_43, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			43
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_44, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			44
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_45, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			45
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_46, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			46
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_47, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			47
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_48, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			48
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_49, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			49
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_50, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			50
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_51, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			51
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_52, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			52
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_53, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			53
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_54, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			54
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_55, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			55
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_56, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			56
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_57, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			57
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_58, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			58
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_59, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			59
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_60, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			60
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_61, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			61
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_62, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			62
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_63, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			63
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_64, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			64
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_65, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			65
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_66, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			66
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_67, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			67
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_68, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			68
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_69, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			69
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_70, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			70
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_71, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			71
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_72, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			72
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_73, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			73
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_74, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			74
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_75, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			75
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_76, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			76
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_77, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			77
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_78, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			78
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_79, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			79
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_80, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			80
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_81, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			81
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_82, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			82
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_83, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			83
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_84, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			84
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_85, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			85
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_86, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			86
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_87, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			87
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_88, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			88
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_89, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			89
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_90, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			90
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_91, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			91
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_92, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			92
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_93, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			93
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_94, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			94
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_95, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			95
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_96, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			96
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_97, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			97
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_98, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			98
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_99, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			99
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_100, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			100
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_101, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			101
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_102, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			102
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_103, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			103
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_104, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			104
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_105, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			105
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_106, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			106
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_107, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			107
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_108, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			108
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_109, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			109
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_110, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			110
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_111, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			111
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_112, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			112
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_113, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			113
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_114, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			114
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_115, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			115
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_116, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			116
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_117, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			117
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_118, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			118
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_119, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			119
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_120, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			120
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_121, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			121
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_122, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			122
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_123, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			123
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_124, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			124
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_125, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			125
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_126, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			126
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_127, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			127
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_128, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			128
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_129, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			129
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_130, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			130
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_131, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			131
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_132, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			132
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_133, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			133
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_134, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			134
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_135, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			135
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_136, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			136
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_137, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			137
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_138, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			138
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_139, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			139
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_140, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			140
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_141, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			141
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_142, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			142
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_143, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			143
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_144, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			144
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_145, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			145
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_146, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword 
			dpps				xmm0,			xmm1,			146
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_147, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			147
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_148, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			148
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_149, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			149
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_150, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			150
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_151, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			151
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_152, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			152
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_153, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			153
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_154, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword 
			dpps				xmm0,			xmm1,			154
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_155, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			155
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_156, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			156
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_157, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			157
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_158, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			158
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_159, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			159
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_160, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			160
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_161, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			161
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_162, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			162
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_163, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			163
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_164, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			164
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_165, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			165
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_166, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			166
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_167, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			167
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_168, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			168
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_169, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			169
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_170, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			170
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_171, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			171
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_172, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			172
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_173, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			173
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_174, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword 
			dpps				xmm0,			xmm1,			174
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_175, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			175
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_176, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			176
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_177, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			177
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_178, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			178
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_179, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			179
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_180, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			180
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_181, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			181
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_182, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			182
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_183, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			183
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_184, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			184
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_185, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			185
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_186, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			186
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_187, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			187
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_188, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			188
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_189, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			189
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_190, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			190
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_191, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			191
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_192, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			192
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_193, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			193
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_194, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			194
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_195, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			195
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_196, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			196
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_197, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			197
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_198, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			198
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_199, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			199
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_200, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			200
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_201, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			201
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_202, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			202
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_203, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			203
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_204, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			204
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_205, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			205
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_206, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			206
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_207, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			207
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_208, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			208
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_209, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			209
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_210, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			210
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_211, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			211
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_212, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			212
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_213, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			213
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_214, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			214
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_215, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			215
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_216, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			216
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_217, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			217
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_218, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			218
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_219, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			219
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_220, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			220
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_221, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			221
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_222, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			222
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_223, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			223
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_224, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			224
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_225, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			225
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_226, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			226
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_227, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			227
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_228, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			228
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_229, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			229
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_230, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			230
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_231, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			231
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_232, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			232
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_233, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			233
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_234, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			234
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_235, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			235
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_236, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			236
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_237, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			237
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_238, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			238
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_239, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			239
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_240, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			240
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_241, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			241
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_242, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			242
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_243, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			243
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_244, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			244
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_245, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			245
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_246, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			246
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_247, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			247
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_248, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			248
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_249, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			249
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_250, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			250
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_251, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			251
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_252, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			252
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_253, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			253
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_254, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			254
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps_255, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dpps				xmm0,			xmm1,			255
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_ps, xmmword, < >, (2 * xmm_size) + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128dppsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128dppsjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
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
		
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_0, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_1, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_2, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_3, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_4, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_5, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_6, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_7, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_8, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_9, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_10, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_11, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_12, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_13, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_14, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_15, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_16, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			16
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_17, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			17
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_18, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			18
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_19, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			19
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_20, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			20
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_21, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			21
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_22, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			22
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_23, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			23
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_24, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			24
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_25, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			25
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_26, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			26
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_27, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			27
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_28, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			28
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_29, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			29
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_30, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			30
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_31, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			31
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_32, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			32
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_33, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			33
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_34, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			34
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_35, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			35
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_36, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			36
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_37, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			37
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_38, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			38
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_39, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			39
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_40, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			40
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_41, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			41
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_42, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			42
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_43, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			43
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_44, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			44
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_45, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			45
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_46, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			46
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_47, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			47
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_48, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			48
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_49, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			49
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_50, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			50
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_51, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			51
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_52, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			52
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_53, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			53
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_54, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			54
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_55, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			55
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_56, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			56
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_57, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			57
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_58, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			58
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_59, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			59
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_60, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			60
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_61, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			61
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_62, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			62
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_63, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			63
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_64, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			64
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_65, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			65
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_66, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			66
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_67, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			67
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_68, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			68
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_69, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			69
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_70, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			70
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_71, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			71
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_72, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			72
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_73, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			73
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_74, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			74
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_75, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			75
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_76, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			76
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_77, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			77
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_78, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			78
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_79, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			79
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_80, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			80
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_81, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			81
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_82, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			82
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_83, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			83
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_84, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			84
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_85, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			85
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_86, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			86
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_87, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			87
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_88, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			88
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_89, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			89
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_90, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			90
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_91, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			91
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_92, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			92
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_93, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			93
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_94, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			94
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_95, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			95
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_96, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			96
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_97, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			97
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_98, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			98
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_99, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			99
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_100, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			100
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_101, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			101
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_102, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			102
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_103, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			103
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_104, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			104
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_105, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			105
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_106, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			106
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_107, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			107
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_108, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			108
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_109, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			109
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_110, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			110
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_111, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			111
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_112, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			112
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_113, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			113
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_114, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			114
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_115, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			115
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_116, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			116
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_117, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			117
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_118, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			118
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_119, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			119
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_120, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			120
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_121, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			121
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_122, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			122
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_123, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			123
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_124, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			124
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_125, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			125
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_126, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			126
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_127, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			127
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_128, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			128
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_129, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			129
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_130, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			130
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_131, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			131
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_132, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			132
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_133, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			133
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_134, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			134
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_135, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			135
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_136, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			136
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_137, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			137
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_138, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			138
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_139, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			139
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_140, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			140
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_141, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			141
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_142, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			142
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_143, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			143
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_144, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			144
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_145, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			145
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_146, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword 
			dppd				xmm0,			xmm1,			146
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_147, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			147
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_148, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			148
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_149, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			149
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_150, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			150
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_151, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			151
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_152, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			152
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_153, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			153
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_154, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword 
			dppd				xmm0,			xmm1,			154
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_155, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			155
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_156, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			156
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_157, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			157
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_158, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			158
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_159, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			159
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_160, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			160
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_161, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			161
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_162, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			162
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_163, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			163
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_164, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			164
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_165, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			165
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_166, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			166
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_167, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			167
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_168, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			168
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_169, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			169
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_170, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			170
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_171, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			171
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_172, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			172
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_173, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			173
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_174, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword 
			dppd				xmm0,			xmm1,			174
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_175, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			175
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_176, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			176
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_177, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			177
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_178, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			178
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_179, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			179
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_180, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			180
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_181, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			181
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_182, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			182
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_183, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			183
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_184, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			184
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_185, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			185
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_186, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			186
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_187, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			187
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_188, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			188
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_189, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			189
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_190, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			190
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_191, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			191
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_192, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			192
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_193, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			193
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_194, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			194
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_195, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			195
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_196, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			196
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_197, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			197
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_198, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			198
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_199, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			199
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_200, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			200
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_201, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			201
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_202, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			202
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_203, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			203
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_204, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			204
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_205, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			205
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_206, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			206
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_207, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			207
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_208, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			208
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_209, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			209
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_210, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			210
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_211, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			211
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_212, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			212
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_213, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			213
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_214, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			214
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_215, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			215
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_216, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			216
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_217, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			217
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_218, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			218
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_219, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			219
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_220, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			220
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_221, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			221
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_222, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			222
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_223, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			223
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_224, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			224
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_225, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			225
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_226, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			226
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_227, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			227
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_228, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			228
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_229, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			229
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_230, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			230
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_231, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			231
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_232, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			232
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_233, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			233
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_234, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			234
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_235, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			235
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_236, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			236
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_237, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			237
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_238, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			238
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_239, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			239
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_240, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			240
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_241, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			241
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_242, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			242
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_243, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			243
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_244, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			244
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_245, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			245
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_246, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			246
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_247, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			247
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_248, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			248
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_249, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			249
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_250, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			250
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_251, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			251
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_252, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			252
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_253, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			253
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_254, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			254
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd_255, xmmword, < >, (2 * xmm_size) ;InXmm_A:xmmword, InXmm_B:xmmword
			dppd				xmm0,			xmm1,			255
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_dp_pd, xmmword, < >, (2 * xmm_size) + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128ddppdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128ddppdjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
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
		
_uXm_func_end
		
endif ;__MIC__

	end
