
	include uXmx86asm.inc

ifndef __MIC__	

	.xmm
	option arch:sse
	option evex:0
	
	include uXmsseintrin.inc
	
	.const
			
		__align_size_t
		_m128ishufepi64jmptable isize_t	offset _m128ishufepi64_0, offset _m128ishufepi64_1, offset _m128ishufepi64_2, offset _m128ishufepi64_3

		__align_size_t
		_m128ishufepi32jmptable isize_t	offset _m128ishufepi32_0, offset _m128ishufepi32_1, offset _m128ishufepi32_2, offset _m128ishufepi32_3, offset _m128ishufepi32_4, \
										offset _m128ishufepi32_5, offset _m128ishufepi32_6, offset _m128ishufepi32_7, offset _m128ishufepi32_8, offset _m128ishufepi32_9, \
										offset _m128ishufepi32_10, offset _m128ishufepi32_11, offset _m128ishufepi32_12, offset _m128ishufepi32_13, offset _m128ishufepi32_14, \
										offset _m128ishufepi32_15, offset _m128ishufepi32_16, offset _m128ishufepi32_17, offset _m128ishufepi32_18, offset _m128ishufepi32_19, \
										offset _m128ishufepi32_20, offset _m128ishufepi32_21, offset _m128ishufepi32_22, offset _m128ishufepi32_23, offset _m128ishufepi32_24, \
										offset _m128ishufepi32_25, offset _m128ishufepi32_26, offset _m128ishufepi32_27, offset _m128ishufepi32_28, offset _m128ishufepi32_29, \
										offset _m128ishufepi32_30, offset _m128ishufepi32_31, offset _m128ishufepi32_32, offset _m128ishufepi32_33, offset _m128ishufepi32_34, \
										offset _m128ishufepi32_35, offset _m128ishufepi32_36, offset _m128ishufepi32_37, offset _m128ishufepi32_38, offset _m128ishufepi32_39, \
										offset _m128ishufepi32_40, offset _m128ishufepi32_41, offset _m128ishufepi32_42, offset _m128ishufepi32_43, offset _m128ishufepi32_44, \
										offset _m128ishufepi32_45, offset _m128ishufepi32_46, offset _m128ishufepi32_47, offset _m128ishufepi32_48, offset _m128ishufepi32_49, \
										offset _m128ishufepi32_50, offset _m128ishufepi32_51, offset _m128ishufepi32_52, offset _m128ishufepi32_53, offset _m128ishufepi32_54, \
										offset _m128ishufepi32_55, offset _m128ishufepi32_56, offset _m128ishufepi32_57, offset _m128ishufepi32_58, offset _m128ishufepi32_59, \
										offset _m128ishufepi32_60, offset _m128ishufepi32_61, offset _m128ishufepi32_62, offset _m128ishufepi32_63, offset _m128ishufepi32_64, \
										offset _m128ishufepi32_65, offset _m128ishufepi32_66, offset _m128ishufepi32_67, offset _m128ishufepi32_68, offset _m128ishufepi32_69, \
										offset _m128ishufepi32_70, offset _m128ishufepi32_71, offset _m128ishufepi32_72, offset _m128ishufepi32_73, offset _m128ishufepi32_74, \
										offset _m128ishufepi32_75, offset _m128ishufepi32_76, offset _m128ishufepi32_77, offset _m128ishufepi32_78, offset _m128ishufepi32_79, \
										offset _m128ishufepi32_80, offset _m128ishufepi32_81, offset _m128ishufepi32_82, offset _m128ishufepi32_83, offset _m128ishufepi32_84, \
										offset _m128ishufepi32_85, offset _m128ishufepi32_86, offset _m128ishufepi32_87, offset _m128ishufepi32_88, offset _m128ishufepi32_89, \
										offset _m128ishufepi32_90, offset _m128ishufepi32_91, offset _m128ishufepi32_92, offset _m128ishufepi32_93, offset _m128ishufepi32_94, \
										offset _m128ishufepi32_95, offset _m128ishufepi32_96, offset _m128ishufepi32_97, offset _m128ishufepi32_98, offset _m128ishufepi32_99, \
										offset _m128ishufepi32_100, offset _m128ishufepi32_101, offset _m128ishufepi32_102, offset _m128ishufepi32_103, offset _m128ishufepi32_104, \
										offset _m128ishufepi32_105, offset _m128ishufepi32_106, offset _m128ishufepi32_107, offset _m128ishufepi32_108, offset _m128ishufepi32_109, \
										offset _m128ishufepi32_110, offset _m128ishufepi32_111, offset _m128ishufepi32_112, offset _m128ishufepi32_113, offset _m128ishufepi32_114, \
										offset _m128ishufepi32_115, offset _m128ishufepi32_116, offset _m128ishufepi32_117, offset _m128ishufepi32_118, offset _m128ishufepi32_119, \
										offset _m128ishufepi32_120, offset _m128ishufepi32_121, offset _m128ishufepi32_122, offset _m128ishufepi32_123, offset _m128ishufepi32_124, \
										offset _m128ishufepi32_125, offset _m128ishufepi32_126, offset _m128ishufepi32_127, offset _m128ishufepi32_128, offset _m128ishufepi32_129, \
										offset _m128ishufepi32_130, offset _m128ishufepi32_131, offset _m128ishufepi32_132, offset _m128ishufepi32_133, offset _m128ishufepi32_134, \
										offset _m128ishufepi32_135, offset _m128ishufepi32_136, offset _m128ishufepi32_137, offset _m128ishufepi32_138, offset _m128ishufepi32_139, \
										offset _m128ishufepi32_140, offset _m128ishufepi32_141, offset _m128ishufepi32_142, offset _m128ishufepi32_143, offset _m128ishufepi32_144, \
										offset _m128ishufepi32_145, offset _m128ishufepi32_146, offset _m128ishufepi32_147, offset _m128ishufepi32_148, offset _m128ishufepi32_149, \
										offset _m128ishufepi32_150, offset _m128ishufepi32_151, offset _m128ishufepi32_152, offset _m128ishufepi32_153, offset _m128ishufepi32_154, \
										offset _m128ishufepi32_155, offset _m128ishufepi32_156, offset _m128ishufepi32_157, offset _m128ishufepi32_158, offset _m128ishufepi32_159, \
										offset _m128ishufepi32_160, offset _m128ishufepi32_161, offset _m128ishufepi32_162, offset _m128ishufepi32_163, offset _m128ishufepi32_164, \
										offset _m128ishufepi32_165, offset _m128ishufepi32_166, offset _m128ishufepi32_167, offset _m128ishufepi32_168, offset _m128ishufepi32_169, \
										offset _m128ishufepi32_170, offset _m128ishufepi32_171, offset _m128ishufepi32_172, offset _m128ishufepi32_173, offset _m128ishufepi32_174, \
										offset _m128ishufepi32_175, offset _m128ishufepi32_176, offset _m128ishufepi32_177, offset _m128ishufepi32_178, offset _m128ishufepi32_179, \
										offset _m128ishufepi32_180, offset _m128ishufepi32_181, offset _m128ishufepi32_182, offset _m128ishufepi32_183, offset _m128ishufepi32_184, \
										offset _m128ishufepi32_185, offset _m128ishufepi32_186, offset _m128ishufepi32_187, offset _m128ishufepi32_188, offset _m128ishufepi32_189, \
										offset _m128ishufepi32_190, offset _m128ishufepi32_191, offset _m128ishufepi32_192, offset _m128ishufepi32_193, offset _m128ishufepi32_194, \
										offset _m128ishufepi32_195, offset _m128ishufepi32_196, offset _m128ishufepi32_197, offset _m128ishufepi32_198, offset _m128ishufepi32_199, \
										offset _m128ishufepi32_200, offset _m128ishufepi32_201, offset _m128ishufepi32_202, offset _m128ishufepi32_203, offset _m128ishufepi32_204, \
										offset _m128ishufepi32_205, offset _m128ishufepi32_206, offset _m128ishufepi32_207, offset _m128ishufepi32_208, offset _m128ishufepi32_209, \
										offset _m128ishufepi32_210, offset _m128ishufepi32_211, offset _m128ishufepi32_212, offset _m128ishufepi32_213, offset _m128ishufepi32_214, \
										offset _m128ishufepi32_215, offset _m128ishufepi32_216, offset _m128ishufepi32_217, offset _m128ishufepi32_218, offset _m128ishufepi32_219, \
										offset _m128ishufepi32_220, offset _m128ishufepi32_221, offset _m128ishufepi32_222, offset _m128ishufepi32_223, offset _m128ishufepi32_224, \
										offset _m128ishufepi32_225, offset _m128ishufepi32_226, offset _m128ishufepi32_227, offset _m128ishufepi32_228, offset _m128ishufepi32_229, \
										offset _m128ishufepi32_230, offset _m128ishufepi32_231, offset _m128ishufepi32_232, offset _m128ishufepi32_233, offset _m128ishufepi32_234, \
										offset _m128ishufepi32_235, offset _m128ishufepi32_236, offset _m128ishufepi32_237, offset _m128ishufepi32_238, offset _m128ishufepi32_239, \
										offset _m128ishufepi32_240, offset _m128ishufepi32_241, offset _m128ishufepi32_242, offset _m128ishufepi32_243, offset _m128ishufepi32_244, \
										offset _m128ishufepi32_245, offset _m128ishufepi32_246, offset _m128ishufepi32_247, offset _m128ishufepi32_248, offset _m128ishufepi32_249, \
										offset _m128ishufepi32_250, offset _m128ishufepi32_251, offset _m128ishufepi32_252, offset _m128ishufepi32_253, offset _m128ishufepi32_254, \
										offset _m128ishufepi32_255
					
		__align_size_t					
		_m128ishufhiepi16jmptable isize_t offset _m128ishufhiepi16_0, offset _m128ishufhiepi16_1, offset _m128ishufhiepi16_2, offset _m128ishufhiepi16_3, offset _m128ishufhiepi16_4, \
										offset _m128ishufhiepi16_5, offset _m128ishufhiepi16_6, offset _m128ishufhiepi16_7, offset _m128ishufhiepi16_8, offset _m128ishufhiepi16_9, \
										offset _m128ishufhiepi16_10, offset _m128ishufhiepi16_11, offset _m128ishufhiepi16_12, offset _m128ishufhiepi16_13, offset _m128ishufhiepi16_14, \
										offset _m128ishufhiepi16_15, offset _m128ishufhiepi16_16, offset _m128ishufhiepi16_17, offset _m128ishufhiepi16_18, offset _m128ishufhiepi16_19, \
										offset _m128ishufhiepi16_20, offset _m128ishufhiepi16_21, offset _m128ishufhiepi16_22, offset _m128ishufhiepi16_23, offset _m128ishufhiepi16_24, \
										offset _m128ishufhiepi16_25, offset _m128ishufhiepi16_26, offset _m128ishufhiepi16_27, offset _m128ishufhiepi16_28, offset _m128ishufhiepi16_29, \
										offset _m128ishufhiepi16_30, offset _m128ishufhiepi16_31, offset _m128ishufhiepi16_32, offset _m128ishufhiepi16_33, offset _m128ishufhiepi16_34, \
										offset _m128ishufhiepi16_35, offset _m128ishufhiepi16_36, offset _m128ishufhiepi16_37, offset _m128ishufhiepi16_38, offset _m128ishufhiepi16_39, \
										offset _m128ishufhiepi16_40, offset _m128ishufhiepi16_41, offset _m128ishufhiepi16_42, offset _m128ishufhiepi16_43, offset _m128ishufhiepi16_44, \
										offset _m128ishufhiepi16_45, offset _m128ishufhiepi16_46, offset _m128ishufhiepi16_47, offset _m128ishufhiepi16_48, offset _m128ishufhiepi16_49, \
										offset _m128ishufhiepi16_50, offset _m128ishufhiepi16_51, offset _m128ishufhiepi16_52, offset _m128ishufhiepi16_53, offset _m128ishufhiepi16_54, \
										offset _m128ishufhiepi16_55, offset _m128ishufhiepi16_56, offset _m128ishufhiepi16_57, offset _m128ishufhiepi16_58, offset _m128ishufhiepi16_59, \
										offset _m128ishufhiepi16_60, offset _m128ishufhiepi16_61, offset _m128ishufhiepi16_62, offset _m128ishufhiepi16_63, offset _m128ishufhiepi16_64, \
										offset _m128ishufhiepi16_65, offset _m128ishufhiepi16_66, offset _m128ishufhiepi16_67, offset _m128ishufhiepi16_68, offset _m128ishufhiepi16_69, \
										offset _m128ishufhiepi16_70, offset _m128ishufhiepi16_71, offset _m128ishufhiepi16_72, offset _m128ishufhiepi16_73, offset _m128ishufhiepi16_74, \
										offset _m128ishufhiepi16_75, offset _m128ishufhiepi16_76, offset _m128ishufhiepi16_77, offset _m128ishufhiepi16_78, offset _m128ishufhiepi16_79, \
										offset _m128ishufhiepi16_80, offset _m128ishufhiepi16_81, offset _m128ishufhiepi16_82, offset _m128ishufhiepi16_83, offset _m128ishufhiepi16_84, \
										offset _m128ishufhiepi16_85, offset _m128ishufhiepi16_86, offset _m128ishufhiepi16_87, offset _m128ishufhiepi16_88, offset _m128ishufhiepi16_89, \
										offset _m128ishufhiepi16_90, offset _m128ishufhiepi16_91, offset _m128ishufhiepi16_92, offset _m128ishufhiepi16_93, offset _m128ishufhiepi16_94, \
										offset _m128ishufhiepi16_95, offset _m128ishufhiepi16_96, offset _m128ishufhiepi16_97, offset _m128ishufhiepi16_98, offset _m128ishufhiepi16_99, \
										offset _m128ishufhiepi16_100, offset _m128ishufhiepi16_101, offset _m128ishufhiepi16_102, offset _m128ishufhiepi16_103, offset _m128ishufhiepi16_104, \
										offset _m128ishufhiepi16_105, offset _m128ishufhiepi16_106, offset _m128ishufhiepi16_107, offset _m128ishufhiepi16_108, offset _m128ishufhiepi16_109, \
										offset _m128ishufhiepi16_110, offset _m128ishufhiepi16_111, offset _m128ishufhiepi16_112, offset _m128ishufhiepi16_113, offset _m128ishufhiepi16_114, \
										offset _m128ishufhiepi16_115, offset _m128ishufhiepi16_116, offset _m128ishufhiepi16_117, offset _m128ishufhiepi16_118, offset _m128ishufhiepi16_119, \
										offset _m128ishufhiepi16_120, offset _m128ishufhiepi16_121, offset _m128ishufhiepi16_122, offset _m128ishufhiepi16_123, offset _m128ishufhiepi16_124, \
										offset _m128ishufhiepi16_125, offset _m128ishufhiepi16_126, offset _m128ishufhiepi16_127, offset _m128ishufhiepi16_128, offset _m128ishufhiepi16_129, \
										offset _m128ishufhiepi16_130, offset _m128ishufhiepi16_131, offset _m128ishufhiepi16_132, offset _m128ishufhiepi16_133, offset _m128ishufhiepi16_134, \
										offset _m128ishufhiepi16_135, offset _m128ishufhiepi16_136, offset _m128ishufhiepi16_137, offset _m128ishufhiepi16_138, offset _m128ishufhiepi16_139, \
										offset _m128ishufhiepi16_140, offset _m128ishufhiepi16_141, offset _m128ishufhiepi16_142, offset _m128ishufhiepi16_143, offset _m128ishufhiepi16_144, \
										offset _m128ishufhiepi16_145, offset _m128ishufhiepi16_146, offset _m128ishufhiepi16_147, offset _m128ishufhiepi16_148, offset _m128ishufhiepi16_149, \
										offset _m128ishufhiepi16_150, offset _m128ishufhiepi16_151, offset _m128ishufhiepi16_152, offset _m128ishufhiepi16_153, offset _m128ishufhiepi16_154, \
										offset _m128ishufhiepi16_155, offset _m128ishufhiepi16_156, offset _m128ishufhiepi16_157, offset _m128ishufhiepi16_158, offset _m128ishufhiepi16_159, \
										offset _m128ishufhiepi16_160, offset _m128ishufhiepi16_161, offset _m128ishufhiepi16_162, offset _m128ishufhiepi16_163, offset _m128ishufhiepi16_164, \
										offset _m128ishufhiepi16_165, offset _m128ishufhiepi16_166, offset _m128ishufhiepi16_167, offset _m128ishufhiepi16_168, offset _m128ishufhiepi16_169, \
										offset _m128ishufhiepi16_170, offset _m128ishufhiepi16_171, offset _m128ishufhiepi16_172, offset _m128ishufhiepi16_173, offset _m128ishufhiepi16_174, \
										offset _m128ishufhiepi16_175, offset _m128ishufhiepi16_176, offset _m128ishufhiepi16_177, offset _m128ishufhiepi16_178, offset _m128ishufhiepi16_179, \
										offset _m128ishufhiepi16_180, offset _m128ishufhiepi16_181, offset _m128ishufhiepi16_182, offset _m128ishufhiepi16_183, offset _m128ishufhiepi16_184, \
										offset _m128ishufhiepi16_185, offset _m128ishufhiepi16_186, offset _m128ishufhiepi16_187, offset _m128ishufhiepi16_188, offset _m128ishufhiepi16_189, \
										offset _m128ishufhiepi16_190, offset _m128ishufhiepi16_191, offset _m128ishufhiepi16_192, offset _m128ishufhiepi16_193, offset _m128ishufhiepi16_194, \
										offset _m128ishufhiepi16_195, offset _m128ishufhiepi16_196, offset _m128ishufhiepi16_197, offset _m128ishufhiepi16_198, offset _m128ishufhiepi16_199, \
										offset _m128ishufhiepi16_200, offset _m128ishufhiepi16_201, offset _m128ishufhiepi16_202, offset _m128ishufhiepi16_203, offset _m128ishufhiepi16_204, \
										offset _m128ishufhiepi16_205, offset _m128ishufhiepi16_206, offset _m128ishufhiepi16_207, offset _m128ishufhiepi16_208, offset _m128ishufhiepi16_209, \
										offset _m128ishufhiepi16_210, offset _m128ishufhiepi16_211, offset _m128ishufhiepi16_212, offset _m128ishufhiepi16_213, offset _m128ishufhiepi16_214, \
										offset _m128ishufhiepi16_215, offset _m128ishufhiepi16_216, offset _m128ishufhiepi16_217, offset _m128ishufhiepi16_218, offset _m128ishufhiepi16_219, \
										offset _m128ishufhiepi16_220, offset _m128ishufhiepi16_221, offset _m128ishufhiepi16_222, offset _m128ishufhiepi16_223, offset _m128ishufhiepi16_224, \
										offset _m128ishufhiepi16_225, offset _m128ishufhiepi16_226, offset _m128ishufhiepi16_227, offset _m128ishufhiepi16_228, offset _m128ishufhiepi16_229, \
										offset _m128ishufhiepi16_230, offset _m128ishufhiepi16_231, offset _m128ishufhiepi16_232, offset _m128ishufhiepi16_233, offset _m128ishufhiepi16_234, \
										offset _m128ishufhiepi16_235, offset _m128ishufhiepi16_236, offset _m128ishufhiepi16_237, offset _m128ishufhiepi16_238, offset _m128ishufhiepi16_239, \
										offset _m128ishufhiepi16_240, offset _m128ishufhiepi16_241, offset _m128ishufhiepi16_242, offset _m128ishufhiepi16_243, offset _m128ishufhiepi16_244, \
										offset _m128ishufhiepi16_245, offset _m128ishufhiepi16_246, offset _m128ishufhiepi16_247, offset _m128ishufhiepi16_248, offset _m128ishufhiepi16_249, \
										offset _m128ishufhiepi16_250, offset _m128ishufhiepi16_251, offset _m128ishufhiepi16_252, offset _m128ishufhiepi16_253, offset _m128ishufhiepi16_254, \
										offset _m128ishufhiepi16_255
			
		__align_size_t							
		_m128ishufloepi16jmptable isize_t offset _m128ishufloepi16_0, offset _m128ishufloepi16_1, offset _m128ishufloepi16_2, offset _m128ishufloepi16_3, offset _m128ishufloepi16_4, \
										offset _m128ishufloepi16_5, offset _m128ishufloepi16_6, offset _m128ishufloepi16_7, offset _m128ishufloepi16_8, offset _m128ishufloepi16_9, \
										offset _m128ishufloepi16_10, offset _m128ishufloepi16_11, offset _m128ishufloepi16_12, offset _m128ishufloepi16_13, offset _m128ishufloepi16_14, \
										offset _m128ishufloepi16_15, offset _m128ishufloepi16_16, offset _m128ishufloepi16_17, offset _m128ishufloepi16_18, offset _m128ishufloepi16_19, \
										offset _m128ishufloepi16_20, offset _m128ishufloepi16_21, offset _m128ishufloepi16_22, offset _m128ishufloepi16_23, offset _m128ishufloepi16_24, \
										offset _m128ishufloepi16_25, offset _m128ishufloepi16_26, offset _m128ishufloepi16_27, offset _m128ishufloepi16_28, offset _m128ishufloepi16_29, \
										offset _m128ishufloepi16_30, offset _m128ishufloepi16_31, offset _m128ishufloepi16_32, offset _m128ishufloepi16_33, offset _m128ishufloepi16_34, \
										offset _m128ishufloepi16_35, offset _m128ishufloepi16_36, offset _m128ishufloepi16_37, offset _m128ishufloepi16_38, offset _m128ishufloepi16_39, \
										offset _m128ishufloepi16_40, offset _m128ishufloepi16_41, offset _m128ishufloepi16_42, offset _m128ishufloepi16_43, offset _m128ishufloepi16_44, \
										offset _m128ishufloepi16_45, offset _m128ishufloepi16_46, offset _m128ishufloepi16_47, offset _m128ishufloepi16_48, offset _m128ishufloepi16_49, \
										offset _m128ishufloepi16_50, offset _m128ishufloepi16_51, offset _m128ishufloepi16_52, offset _m128ishufloepi16_53, offset _m128ishufloepi16_54, \
										offset _m128ishufloepi16_55, offset _m128ishufloepi16_56, offset _m128ishufloepi16_57, offset _m128ishufloepi16_58, offset _m128ishufloepi16_59, \
										offset _m128ishufloepi16_60, offset _m128ishufloepi16_61, offset _m128ishufloepi16_62, offset _m128ishufloepi16_63, offset _m128ishufloepi16_64, \
										offset _m128ishufloepi16_65, offset _m128ishufloepi16_66, offset _m128ishufloepi16_67, offset _m128ishufloepi16_68, offset _m128ishufloepi16_69, \
										offset _m128ishufloepi16_70, offset _m128ishufloepi16_71, offset _m128ishufloepi16_72, offset _m128ishufloepi16_73, offset _m128ishufloepi16_74, \
										offset _m128ishufloepi16_75, offset _m128ishufloepi16_76, offset _m128ishufloepi16_77, offset _m128ishufloepi16_78, offset _m128ishufloepi16_79, \
										offset _m128ishufloepi16_80, offset _m128ishufloepi16_81, offset _m128ishufloepi16_82, offset _m128ishufloepi16_83, offset _m128ishufloepi16_84, \
										offset _m128ishufloepi16_85, offset _m128ishufloepi16_86, offset _m128ishufloepi16_87, offset _m128ishufloepi16_88, offset _m128ishufloepi16_89, \
										offset _m128ishufloepi16_90, offset _m128ishufloepi16_91, offset _m128ishufloepi16_92, offset _m128ishufloepi16_93, offset _m128ishufloepi16_94, \
										offset _m128ishufloepi16_95, offset _m128ishufloepi16_96, offset _m128ishufloepi16_97, offset _m128ishufloepi16_98, offset _m128ishufloepi16_99, \
										offset _m128ishufloepi16_100, offset _m128ishufloepi16_101, offset _m128ishufloepi16_102, offset _m128ishufloepi16_103, offset _m128ishufloepi16_104, \
										offset _m128ishufloepi16_105, offset _m128ishufloepi16_106, offset _m128ishufloepi16_107, offset _m128ishufloepi16_108, offset _m128ishufloepi16_109, \
										offset _m128ishufloepi16_110, offset _m128ishufloepi16_111, offset _m128ishufloepi16_112, offset _m128ishufloepi16_113, offset _m128ishufloepi16_114, \
										offset _m128ishufloepi16_115, offset _m128ishufloepi16_116, offset _m128ishufloepi16_117, offset _m128ishufloepi16_118, offset _m128ishufloepi16_119, \
										offset _m128ishufloepi16_120, offset _m128ishufloepi16_121, offset _m128ishufloepi16_122, offset _m128ishufloepi16_123, offset _m128ishufloepi16_124, \
										offset _m128ishufloepi16_125, offset _m128ishufloepi16_126, offset _m128ishufloepi16_127, offset _m128ishufloepi16_128, offset _m128ishufloepi16_129, \
										offset _m128ishufloepi16_130, offset _m128ishufloepi16_131, offset _m128ishufloepi16_132, offset _m128ishufloepi16_133, offset _m128ishufloepi16_134, \
										offset _m128ishufloepi16_135, offset _m128ishufloepi16_136, offset _m128ishufloepi16_137, offset _m128ishufloepi16_138, offset _m128ishufloepi16_139, \
										offset _m128ishufloepi16_140, offset _m128ishufloepi16_141, offset _m128ishufloepi16_142, offset _m128ishufloepi16_143, offset _m128ishufloepi16_144, \
										offset _m128ishufloepi16_145, offset _m128ishufloepi16_146, offset _m128ishufloepi16_147, offset _m128ishufloepi16_148, offset _m128ishufloepi16_149, \
										offset _m128ishufloepi16_150, offset _m128ishufloepi16_151, offset _m128ishufloepi16_152, offset _m128ishufloepi16_153, offset _m128ishufloepi16_154, \
										offset _m128ishufloepi16_155, offset _m128ishufloepi16_156, offset _m128ishufloepi16_157, offset _m128ishufloepi16_158, offset _m128ishufloepi16_159, \
										offset _m128ishufloepi16_160, offset _m128ishufloepi16_161, offset _m128ishufloepi16_162, offset _m128ishufloepi16_163, offset _m128ishufloepi16_164, \
										offset _m128ishufloepi16_165, offset _m128ishufloepi16_166, offset _m128ishufloepi16_167, offset _m128ishufloepi16_168, offset _m128ishufloepi16_169, \
										offset _m128ishufloepi16_170, offset _m128ishufloepi16_171, offset _m128ishufloepi16_172, offset _m128ishufloepi16_173, offset _m128ishufloepi16_174, \
										offset _m128ishufloepi16_175, offset _m128ishufloepi16_176, offset _m128ishufloepi16_177, offset _m128ishufloepi16_178, offset _m128ishufloepi16_179, \
										offset _m128ishufloepi16_180, offset _m128ishufloepi16_181, offset _m128ishufloepi16_182, offset _m128ishufloepi16_183, offset _m128ishufloepi16_184, \
										offset _m128ishufloepi16_185, offset _m128ishufloepi16_186, offset _m128ishufloepi16_187, offset _m128ishufloepi16_188, offset _m128ishufloepi16_189, \
										offset _m128ishufloepi16_190, offset _m128ishufloepi16_191, offset _m128ishufloepi16_192, offset _m128ishufloepi16_193, offset _m128ishufloepi16_194, \
										offset _m128ishufloepi16_195, offset _m128ishufloepi16_196, offset _m128ishufloepi16_197, offset _m128ishufloepi16_198, offset _m128ishufloepi16_199, \
										offset _m128ishufloepi16_200, offset _m128ishufloepi16_201, offset _m128ishufloepi16_202, offset _m128ishufloepi16_203, offset _m128ishufloepi16_204, \
										offset _m128ishufloepi16_205, offset _m128ishufloepi16_206, offset _m128ishufloepi16_207, offset _m128ishufloepi16_208, offset _m128ishufloepi16_209, \
										offset _m128ishufloepi16_210, offset _m128ishufloepi16_211, offset _m128ishufloepi16_212, offset _m128ishufloepi16_213, offset _m128ishufloepi16_214, \
										offset _m128ishufloepi16_215, offset _m128ishufloepi16_216, offset _m128ishufloepi16_217, offset _m128ishufloepi16_218, offset _m128ishufloepi16_219, \
										offset _m128ishufloepi16_220, offset _m128ishufloepi16_221, offset _m128ishufloepi16_222, offset _m128ishufloepi16_223, offset _m128ishufloepi16_224, \
										offset _m128ishufloepi16_225, offset _m128ishufloepi16_226, offset _m128ishufloepi16_227, offset _m128ishufloepi16_228, offset _m128ishufloepi16_229, \
										offset _m128ishufloepi16_230, offset _m128ishufloepi16_231, offset _m128ishufloepi16_232, offset _m128ishufloepi16_233, offset _m128ishufloepi16_234, \
										offset _m128ishufloepi16_235, offset _m128ishufloepi16_236, offset _m128ishufloepi16_237, offset _m128ishufloepi16_238, offset _m128ishufloepi16_239, \
										offset _m128ishufloepi16_240, offset _m128ishufloepi16_241, offset _m128ishufloepi16_242, offset _m128ishufloepi16_243, offset _m128ishufloepi16_244, \
										offset _m128ishufloepi16_245, offset _m128ishufloepi16_246, offset _m128ishufloepi16_247, offset _m128ishufloepi16_248, offset _m128ishufloepi16_249, \
										offset _m128ishufloepi16_250, offset _m128ishufloepi16_251, offset _m128ishufloepi16_252, offset _m128ishufloepi16_253, offset _m128ishufloepi16_254, \
										offset _m128ishufloepi16_255

	__align_xmm_fp_opt
							
	.code
	
_uXm_func_start _uXm_mm_shuffle_epi64_00, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi64_01, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,2,3)
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi64_10, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,0,1)
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi64_11, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,2,3)
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi64, xmmword, < > ;InXmm_A:xmmword, _Imm8:dword
				
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128ishufepi64jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128ishufepi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128ishufepi64_0 label size_t
			pshufd				xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)
			ret
		_m128ishufepi64_1 label size_t
			pshufd				xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,2,3)
			ret
		_m128ishufepi64_2 label size_t
			pshufd				xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,0,1)
			ret
		_m128ishufepi64_3 label size_t
			pshufd				xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,2,3)
			ret
		;.endif
		
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0000, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0001, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0002, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0003, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0010, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0011, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0012, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0013, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0020, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0021, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0022, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0023, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0030, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0031, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0032, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0033, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0100, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			16
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0101, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			17
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0102, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			18
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0103, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			19
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0110, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			20
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0111, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			21
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0112, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			22
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0113, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			23
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0120, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			24
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0121, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			25
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0122, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			26
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0123, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			27
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0130, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			28
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0131, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			29
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0132, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			30
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0133, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			31
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0200, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			32
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0201, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			33
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0202, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			34
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0203, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			35
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0210, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			36
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0211, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			37
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0212, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			38
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0213, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			39
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0220, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			40
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0221, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			41
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0222, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			42
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0223, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			43
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0230, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			44
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0231, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			45
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0232, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			46
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0233, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			47
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0300, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			48
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0301, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			49
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0302, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			50
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0303, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			51
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0310, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			52
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0311, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			53
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0312, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			54
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0313, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			55
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0320, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			56
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0321, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			57
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0322, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			58
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0323, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			59
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0330, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			60
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0331, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			61
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0332, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			62
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_0333, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			63
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1000, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			64
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1001, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			65
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1002, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			66
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1003, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			67
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1010, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			68
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1011, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			69
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1012, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			70
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1013, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			71
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1020, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			72
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1021, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			73
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1022, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			74
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1023, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			75
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1030, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			76
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1031, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			77
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1032, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			78
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1033, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			79
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1100, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			80
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1101, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			81
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1102, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			82
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1103, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			83
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1110, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			84
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1111, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			85
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1112, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			86
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1113, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			87
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1120, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			88
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1121, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			89
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1122, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			90
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1123, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			91
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1130, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			92
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1131, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			93
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1132, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			94
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1133, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			95
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1200, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			96
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1201, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			97
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1202, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			98
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1203, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			99
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1210, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			100
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1211, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			101
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1212, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			102
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1213, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			103
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1220, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			104
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1221, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			105
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1222, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			106
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1223, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			107
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1230, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			108
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1231, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			109
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1232, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			110
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1233, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			111
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1300, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			112
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1301, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			113
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1302, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			114
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1303, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			115
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1310, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			116
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1311, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			117
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1312, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			118
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1313, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			119
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1320, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			120
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1321, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			121
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1322, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			122
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1323, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			123
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1330, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			124
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1331, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			125
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1332, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			126
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_1333, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			127
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2000, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			128
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2001, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			129
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2002, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			130
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2003, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			131
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2010, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			132
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2011, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			133
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2012, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			134
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2013, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			135
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2020, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			136
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2021, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			137
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2022, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			138
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2023, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			139
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2030, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			140
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2031, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			141
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2032, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			142
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2033, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			143
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2100, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			144
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2101, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			145
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2102, xmmword, < > ;InXmm_A:xmmword 
			pshufd				xmm0,			xmm0,			146
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2103, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			147
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2110, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			148
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2111, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			149
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2112, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			150
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2113, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			151
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2120, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			152
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2121, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			153
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2122, xmmword, < > ;InXmm_A:xmmword 
			pshufd				xmm0,			xmm0,			154
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2123, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			155
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2130, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			156
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2131, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			157
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2132, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			158
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2133, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			159
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2200, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			160
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2201, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			161
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2202, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			162
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2203, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			163
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2210, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			164
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2211, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			165
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2212, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			166
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2213, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			167
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2220, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			168
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2221, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			169
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2222, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			170
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2223, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			171
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2230, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			172
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2231, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			173
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2232, xmmword, < > ;InXmm_A:xmmword 
			pshufd				xmm0,			xmm0,			174
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2233, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			175
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2300, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			176
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2301, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			177
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2302, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			178
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2303, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			179
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2310, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			180
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2311, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			181
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2312, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			182
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2313, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			183
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2320, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			184
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2321, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			185
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2322, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			186
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2323, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			187
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2330, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			188
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2331, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			189
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2332, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			190
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_2333, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			191
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3000, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			192
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3001, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			193
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3002, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			194
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3003, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			195
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3010, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			196
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3011, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			197
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3012, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			198
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3013, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			199
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3020, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			200
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3021, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			201
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3022, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			202
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3023, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			203
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3030, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			204
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3031, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			205
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3032, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			206
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3033, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			207
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3100, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			208
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3101, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			209
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3102, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			210
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3103, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			211
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3110, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			212
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3111, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			213
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3112, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			214
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3113, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			215
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3120, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			216
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3121, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			217
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3122, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			218
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3123, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			219
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3130, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			220
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3131, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			221
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3132, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			222
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3133, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			223
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3200, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			224
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3201, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			225
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3202, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			226
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3203, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			227
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3210, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			228
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3211, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			229
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3212, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			230
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3213, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			231
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3220, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			232
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3221, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			233
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3222, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			234
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3223, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			235
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3230, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			236
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3231, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			237
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3232, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			238
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3233, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			239
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3300, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			240
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3301, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			241
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3302, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			242
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3303, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			243
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3310, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			244
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3311, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			245
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3312, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			246
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3313, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			247
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3320, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			248
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3321, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			249
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3322, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			250
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3323, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			251
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3330, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			252
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3331, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			253
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3332, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			254
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32_3333, xmmword, < > ;InXmm_A:xmmword
			pshufd				xmm0,			xmm0,			255
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_epi32, xmmword, < > ;InXmm_A:xmmword, _Imm8:dword
				
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128ishufepi32jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128ishufepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128ishufepi32_0 label size_t
			pshufd				xmm0,			xmm0,			0
			ret
		_m128ishufepi32_1 label size_t
			pshufd				xmm0,			xmm0,			1
			ret
		_m128ishufepi32_2 label size_t
			pshufd				xmm0,			xmm0,			2
			ret
		_m128ishufepi32_3 label size_t
			pshufd				xmm0,			xmm0,			3
			ret
		_m128ishufepi32_4 label size_t
			pshufd				xmm0,			xmm0,			4
			ret
		_m128ishufepi32_5 label size_t
			pshufd				xmm0,			xmm0,			5
			ret
		_m128ishufepi32_6 label size_t
			pshufd				xmm0,			xmm0,			6
			ret
		_m128ishufepi32_7 label size_t
			pshufd				xmm0,			xmm0,			7
			ret
		_m128ishufepi32_8 label size_t
			pshufd				xmm0,			xmm0,			8
			ret
		_m128ishufepi32_9 label size_t
			pshufd				xmm0,			xmm0,			9
			ret
		_m128ishufepi32_10 label size_t
			pshufd				xmm0,			xmm0,			10
			ret
		_m128ishufepi32_11 label size_t
			pshufd				xmm0,			xmm0,			11
			ret
		_m128ishufepi32_12 label size_t
			pshufd				xmm0,			xmm0,			12
			ret
		_m128ishufepi32_13 label size_t
			pshufd				xmm0,			xmm0,			13
			ret
		_m128ishufepi32_14 label size_t
			pshufd				xmm0,			xmm0,			14
			ret
		_m128ishufepi32_15 label size_t
			pshufd				xmm0,			xmm0,			15
			ret
		_m128ishufepi32_16 label size_t
			pshufd				xmm0,			xmm0,			16
			ret
		_m128ishufepi32_17 label size_t
			pshufd				xmm0,			xmm0,			17
			ret
		_m128ishufepi32_18 label size_t
			pshufd				xmm0,			xmm0,			18
			ret
		_m128ishufepi32_19 label size_t
			pshufd				xmm0,			xmm0,			19
			ret
		_m128ishufepi32_20 label size_t
			pshufd				xmm0,			xmm0,			20
			ret
		_m128ishufepi32_21 label size_t
			pshufd				xmm0,			xmm0,			21
			ret
		_m128ishufepi32_22 label size_t
			pshufd				xmm0,			xmm0,			22
			ret
		_m128ishufepi32_23 label size_t
			pshufd				xmm0,			xmm0,			23
			ret
		_m128ishufepi32_24 label size_t
			pshufd				xmm0,			xmm0,			24
			ret
		_m128ishufepi32_25 label size_t
			pshufd				xmm0,			xmm0,			25
			ret
		_m128ishufepi32_26 label size_t
			pshufd				xmm0,			xmm0,			26
			ret
		_m128ishufepi32_27 label size_t
			pshufd				xmm0,			xmm0,			27
			ret
		_m128ishufepi32_28 label size_t
			pshufd				xmm0,			xmm0,			28
			ret
		_m128ishufepi32_29 label size_t
			pshufd				xmm0,			xmm0,			29
			ret
		_m128ishufepi32_30 label size_t
			pshufd				xmm0,			xmm0,			30
			ret
		_m128ishufepi32_31 label size_t
			pshufd				xmm0,			xmm0,			31
			ret
		_m128ishufepi32_32 label size_t
			pshufd				xmm0,			xmm0,			32
			ret
		_m128ishufepi32_33 label size_t
			pshufd				xmm0,			xmm0,			33
			ret
		_m128ishufepi32_34 label size_t
			pshufd				xmm0,			xmm0,			34
			ret
		_m128ishufepi32_35 label size_t
			pshufd				xmm0,			xmm0,			35
			ret
		_m128ishufepi32_36 label size_t
			pshufd				xmm0,			xmm0,			36
			ret
		_m128ishufepi32_37 label size_t
			pshufd				xmm0,			xmm0,			37
			ret
		_m128ishufepi32_38 label size_t
			pshufd				xmm0,			xmm0,			38
			ret
		_m128ishufepi32_39 label size_t
			pshufd				xmm0,			xmm0,			39
			ret
		_m128ishufepi32_40 label size_t
			pshufd				xmm0,			xmm0,			40
			ret
		_m128ishufepi32_41 label size_t
			pshufd				xmm0,			xmm0,			41
			ret
		_m128ishufepi32_42 label size_t
			pshufd				xmm0,			xmm0,			42
			ret
		_m128ishufepi32_43 label size_t
			pshufd				xmm0,			xmm0,			43
			ret
		_m128ishufepi32_44 label size_t
			pshufd				xmm0,			xmm0,			44
			ret
		_m128ishufepi32_45 label size_t
			pshufd				xmm0,			xmm0,			45
			ret
		_m128ishufepi32_46 label size_t
			pshufd				xmm0,			xmm0,			46
			ret
		_m128ishufepi32_47 label size_t
			pshufd				xmm0,			xmm0,			47
			ret
		_m128ishufepi32_48 label size_t
			pshufd				xmm0,			xmm0,			48
			ret
		_m128ishufepi32_49 label size_t
			pshufd				xmm0,			xmm0,			49
			ret
		_m128ishufepi32_50 label size_t
			pshufd				xmm0,			xmm0,			50
			ret
		_m128ishufepi32_51 label size_t
			pshufd				xmm0,			xmm0,			51
			ret
		_m128ishufepi32_52 label size_t
			pshufd				xmm0,			xmm0,			52
			ret
		_m128ishufepi32_53 label size_t
			pshufd				xmm0,			xmm0,			53
			ret
		_m128ishufepi32_54 label size_t
			pshufd				xmm0,			xmm0,			54
			ret
		_m128ishufepi32_55 label size_t
			pshufd				xmm0,			xmm0,			55
			ret
		_m128ishufepi32_56 label size_t
			pshufd				xmm0,			xmm0,			56
			ret
		_m128ishufepi32_57 label size_t
			pshufd				xmm0,			xmm0,			57
			ret
		_m128ishufepi32_58 label size_t
			pshufd				xmm0,			xmm0,			58
			ret
		_m128ishufepi32_59 label size_t
			pshufd				xmm0,			xmm0,			59
			ret
		_m128ishufepi32_60 label size_t
			pshufd				xmm0,			xmm0,			60
			ret
		_m128ishufepi32_61 label size_t
			pshufd				xmm0,			xmm0,			61
			ret
		_m128ishufepi32_62 label size_t
			pshufd				xmm0,			xmm0,			62
			ret
		_m128ishufepi32_63 label size_t
			pshufd				xmm0,			xmm0,			63
			ret
		_m128ishufepi32_64 label size_t
			pshufd				xmm0,			xmm0,			64
			ret
		_m128ishufepi32_65 label size_t
			pshufd				xmm0,			xmm0,			65
			ret
		_m128ishufepi32_66 label size_t
			pshufd				xmm0,			xmm0,			66
			ret
		_m128ishufepi32_67 label size_t
			pshufd				xmm0,			xmm0,			67
			ret
		_m128ishufepi32_68 label size_t
			pshufd				xmm0,			xmm0,			68
			ret
		_m128ishufepi32_69 label size_t
			pshufd				xmm0,			xmm0,			69
			ret
		_m128ishufepi32_70 label size_t
			pshufd				xmm0,			xmm0,			70
			ret
		_m128ishufepi32_71 label size_t
			pshufd				xmm0,			xmm0,			71
			ret
		_m128ishufepi32_72 label size_t
			pshufd				xmm0,			xmm0,			72
			ret
		_m128ishufepi32_73 label size_t
			pshufd				xmm0,			xmm0,			73
			ret
		_m128ishufepi32_74 label size_t
			pshufd				xmm0,			xmm0,			74
			ret
		_m128ishufepi32_75 label size_t
			pshufd				xmm0,			xmm0,			75
			ret
		_m128ishufepi32_76 label size_t
			pshufd				xmm0,			xmm0,			76
			ret
		_m128ishufepi32_77 label size_t
			pshufd				xmm0,			xmm0,			77
			ret
		_m128ishufepi32_78 label size_t
			pshufd				xmm0,			xmm0,			78
			ret
		_m128ishufepi32_79 label size_t
			pshufd				xmm0,			xmm0,			79
			ret
		_m128ishufepi32_80 label size_t
			pshufd				xmm0,			xmm0,			80
			ret
		_m128ishufepi32_81 label size_t
			pshufd				xmm0,			xmm0,			81
			ret
		_m128ishufepi32_82 label size_t
			pshufd				xmm0,			xmm0,			82
			ret
		_m128ishufepi32_83 label size_t
			pshufd				xmm0,			xmm0,			83
			ret
		_m128ishufepi32_84 label size_t
			pshufd				xmm0,			xmm0,			84
			ret
		_m128ishufepi32_85 label size_t
			pshufd				xmm0,			xmm0,			85
			ret
		_m128ishufepi32_86 label size_t
			pshufd				xmm0,			xmm0,			86
			ret
		_m128ishufepi32_87 label size_t
			pshufd				xmm0,			xmm0,			87
			ret
		_m128ishufepi32_88 label size_t
			pshufd				xmm0,			xmm0,			88
			ret
		_m128ishufepi32_89 label size_t
			pshufd				xmm0,			xmm0,			89
			ret
		_m128ishufepi32_90 label size_t
			pshufd				xmm0,			xmm0,			90
			ret
		_m128ishufepi32_91 label size_t
			pshufd				xmm0,			xmm0,			91
			ret
		_m128ishufepi32_92 label size_t
			pshufd				xmm0,			xmm0,			92
			ret
		_m128ishufepi32_93 label size_t
			pshufd				xmm0,			xmm0,			93
			ret
		_m128ishufepi32_94 label size_t
			pshufd				xmm0,			xmm0,			94
			ret
		_m128ishufepi32_95 label size_t
			pshufd				xmm0,			xmm0,			95
			ret
		_m128ishufepi32_96 label size_t
			pshufd				xmm0,			xmm0,			96
			ret
		_m128ishufepi32_97 label size_t
			pshufd				xmm0,			xmm0,			97
			ret
		_m128ishufepi32_98 label size_t
			pshufd				xmm0,			xmm0,			98
			ret
		_m128ishufepi32_99 label size_t
			pshufd				xmm0,			xmm0,			99
			ret
		_m128ishufepi32_100 label size_t
			pshufd				xmm0,			xmm0,			100
			ret
		_m128ishufepi32_101 label size_t
			pshufd				xmm0,			xmm0,			101
			ret
		_m128ishufepi32_102 label size_t
			pshufd				xmm0,			xmm0,			102
			ret
		_m128ishufepi32_103 label size_t
			pshufd				xmm0,			xmm0,			103
			ret
		_m128ishufepi32_104 label size_t
			pshufd				xmm0,			xmm0,			104
			ret
		_m128ishufepi32_105 label size_t
			pshufd				xmm0,			xmm0,			105
			ret
		_m128ishufepi32_106 label size_t
			pshufd				xmm0,			xmm0,			106
			ret
		_m128ishufepi32_107 label size_t
			pshufd				xmm0,			xmm0,			107
			ret
		_m128ishufepi32_108 label size_t
			pshufd				xmm0,			xmm0,			108
			ret
		_m128ishufepi32_109 label size_t
			pshufd				xmm0,			xmm0,			109
			ret
		_m128ishufepi32_110 label size_t
			pshufd				xmm0,			xmm0,			110
			ret
		_m128ishufepi32_111 label size_t
			pshufd				xmm0,			xmm0,			111
			ret
		_m128ishufepi32_112 label size_t
			pshufd				xmm0,			xmm0,			112
			ret
		_m128ishufepi32_113 label size_t
			pshufd				xmm0,			xmm0,			113
			ret
		_m128ishufepi32_114 label size_t
			pshufd				xmm0,			xmm0,			114
			ret
		_m128ishufepi32_115 label size_t
			pshufd				xmm0,			xmm0,			115
			ret
		_m128ishufepi32_116 label size_t
			pshufd				xmm0,			xmm0,			116
			ret
		_m128ishufepi32_117 label size_t
			pshufd				xmm0,			xmm0,			117
			ret
		_m128ishufepi32_118 label size_t
			pshufd				xmm0,			xmm0,			118
			ret
		_m128ishufepi32_119 label size_t
			pshufd				xmm0,			xmm0,			119
			ret
		_m128ishufepi32_120 label size_t
			pshufd				xmm0,			xmm0,			120
			ret
		_m128ishufepi32_121 label size_t
			pshufd				xmm0,			xmm0,			121
			ret
		_m128ishufepi32_122 label size_t
			pshufd				xmm0,			xmm0,			122
			ret
		_m128ishufepi32_123 label size_t
			pshufd				xmm0,			xmm0,			123
			ret
		_m128ishufepi32_124 label size_t
			pshufd				xmm0,			xmm0,			124
			ret
		_m128ishufepi32_125 label size_t
			pshufd				xmm0,			xmm0,			125
			ret
		_m128ishufepi32_126 label size_t
			pshufd				xmm0,			xmm0,			126
			ret
		_m128ishufepi32_127 label size_t
			pshufd				xmm0,			xmm0,			127
			ret
		_m128ishufepi32_128 label size_t
			pshufd				xmm0,			xmm0,			128
			ret
		_m128ishufepi32_129 label size_t
			pshufd				xmm0,			xmm0,			129
			ret
		_m128ishufepi32_130 label size_t
			pshufd				xmm0,			xmm0,			130
			ret
		_m128ishufepi32_131 label size_t
			pshufd				xmm0,			xmm0,			131
			ret
		_m128ishufepi32_132 label size_t
			pshufd				xmm0,			xmm0,			132
			ret
		_m128ishufepi32_133 label size_t
			pshufd				xmm0,			xmm0,			133
			ret
		_m128ishufepi32_134 label size_t
			pshufd				xmm0,			xmm0,			134
			ret
		_m128ishufepi32_135 label size_t
			pshufd				xmm0,			xmm0,			135
			ret
		_m128ishufepi32_136 label size_t
			pshufd				xmm0,			xmm0,			136
			ret
		_m128ishufepi32_137 label size_t
			pshufd				xmm0,			xmm0,			137
			ret
		_m128ishufepi32_138 label size_t
			pshufd				xmm0,			xmm0,			138
			ret
		_m128ishufepi32_139 label size_t
			pshufd				xmm0,			xmm0,			139
			ret
		_m128ishufepi32_140 label size_t
			pshufd				xmm0,			xmm0,			140
			ret
		_m128ishufepi32_141 label size_t
			pshufd				xmm0,			xmm0,			141
			ret
		_m128ishufepi32_142 label size_t
			pshufd				xmm0,			xmm0,			142
			ret
		_m128ishufepi32_143 label size_t
			pshufd				xmm0,			xmm0,			143
			ret
		_m128ishufepi32_144 label size_t
			pshufd				xmm0,			xmm0,			144
			ret
		_m128ishufepi32_145 label size_t
			pshufd				xmm0,			xmm0,			145
			ret
		_m128ishufepi32_146 label size_t
			pshufd				xmm0,			xmm0,			146
			ret
		_m128ishufepi32_147 label size_t
			pshufd				xmm0,			xmm0,			147
			ret
		_m128ishufepi32_148 label size_t
			pshufd				xmm0,			xmm0,			148
			ret
		_m128ishufepi32_149 label size_t
			pshufd				xmm0,			xmm0,			149
			ret
		_m128ishufepi32_150 label size_t
			pshufd				xmm0,			xmm0,			150
			ret
		_m128ishufepi32_151 label size_t
			pshufd				xmm0,			xmm0,			151
			ret
		_m128ishufepi32_152 label size_t
			pshufd				xmm0,			xmm0,			152
			ret
		_m128ishufepi32_153 label size_t
			pshufd				xmm0,			xmm0,			153
			ret
		_m128ishufepi32_154 label size_t
			pshufd				xmm0,			xmm0,			154
			ret
		_m128ishufepi32_155 label size_t
			pshufd				xmm0,			xmm0,			155
			ret
		_m128ishufepi32_156 label size_t
			pshufd				xmm0,			xmm0,			156
			ret
		_m128ishufepi32_157 label size_t
			pshufd				xmm0,			xmm0,			157
			ret
		_m128ishufepi32_158 label size_t
			pshufd				xmm0,			xmm0,			158
			ret
		_m128ishufepi32_159 label size_t
			pshufd				xmm0,			xmm0,			159
			ret
		_m128ishufepi32_160 label size_t
			pshufd				xmm0,			xmm0,			160
			ret
		_m128ishufepi32_161 label size_t
			pshufd				xmm0,			xmm0,			161
			ret
		_m128ishufepi32_162 label size_t
			pshufd				xmm0,			xmm0,			162
			ret
		_m128ishufepi32_163 label size_t
			pshufd				xmm0,			xmm0,			163
			ret
		_m128ishufepi32_164 label size_t
			pshufd				xmm0,			xmm0,			164
			ret
		_m128ishufepi32_165 label size_t
			pshufd				xmm0,			xmm0,			165
			ret
		_m128ishufepi32_166 label size_t
			pshufd				xmm0,			xmm0,			166
			ret
		_m128ishufepi32_167 label size_t
			pshufd				xmm0,			xmm0,			167
			ret
		_m128ishufepi32_168 label size_t
			pshufd				xmm0,			xmm0,			168
			ret
		_m128ishufepi32_169 label size_t
			pshufd				xmm0,			xmm0,			169
			ret
		_m128ishufepi32_170 label size_t
			pshufd				xmm0,			xmm0,			170
			ret
		_m128ishufepi32_171 label size_t
			pshufd				xmm0,			xmm0,			171
			ret
		_m128ishufepi32_172 label size_t
			pshufd				xmm0,			xmm0,			172
			ret
		_m128ishufepi32_173 label size_t
			pshufd				xmm0,			xmm0,			173
			ret
		_m128ishufepi32_174 label size_t
			pshufd				xmm0,			xmm0,			174
			ret
		_m128ishufepi32_175 label size_t
			pshufd				xmm0,			xmm0,			175
			ret
		_m128ishufepi32_176 label size_t
			pshufd				xmm0,			xmm0,			176
			ret
		_m128ishufepi32_177 label size_t
			pshufd				xmm0,			xmm0,			177
			ret
		_m128ishufepi32_178 label size_t
			pshufd				xmm0,			xmm0,			178
			ret
		_m128ishufepi32_179 label size_t
			pshufd				xmm0,			xmm0,			179
			ret
		_m128ishufepi32_180 label size_t
			pshufd				xmm0,			xmm0,			180
			ret
		_m128ishufepi32_181 label size_t
			pshufd				xmm0,			xmm0,			181
			ret
		_m128ishufepi32_182 label size_t
			pshufd				xmm0,			xmm0,			182
			ret
		_m128ishufepi32_183 label size_t
			pshufd				xmm0,			xmm0,			183
			ret
		_m128ishufepi32_184 label size_t
			pshufd				xmm0,			xmm0,			184
			ret
		_m128ishufepi32_185 label size_t
			pshufd				xmm0,			xmm0,			185
			ret
		_m128ishufepi32_186 label size_t
			pshufd				xmm0,			xmm0,			186
			ret
		_m128ishufepi32_187 label size_t
			pshufd				xmm0,			xmm0,			187
			ret
		_m128ishufepi32_188 label size_t
			pshufd				xmm0,			xmm0,			188
			ret
		_m128ishufepi32_189 label size_t
			pshufd				xmm0,			xmm0,			189
			ret
		_m128ishufepi32_190 label size_t
			pshufd				xmm0,			xmm0,			190
			ret
		_m128ishufepi32_191 label size_t
			pshufd				xmm0,			xmm0,			191
			ret
		_m128ishufepi32_192 label size_t
			pshufd				xmm0,			xmm0,			192
			ret
		_m128ishufepi32_193 label size_t
			pshufd				xmm0,			xmm0,			193
			ret
		_m128ishufepi32_194 label size_t
			pshufd				xmm0,			xmm0,			194
			ret
		_m128ishufepi32_195 label size_t
			pshufd				xmm0,			xmm0,			195
			ret
		_m128ishufepi32_196 label size_t
			pshufd				xmm0,			xmm0,			196
			ret
		_m128ishufepi32_197 label size_t
			pshufd				xmm0,			xmm0,			197
			ret
		_m128ishufepi32_198 label size_t
			pshufd				xmm0,			xmm0,			198
			ret
		_m128ishufepi32_199 label size_t
			pshufd				xmm0,			xmm0,			199
			ret
		_m128ishufepi32_200 label size_t
			pshufd				xmm0,			xmm0,			200
			ret
		_m128ishufepi32_201 label size_t
			pshufd				xmm0,			xmm0,			201
			ret
		_m128ishufepi32_202 label size_t
			pshufd				xmm0,			xmm0,			202
			ret
		_m128ishufepi32_203 label size_t
			pshufd				xmm0,			xmm0,			203
			ret
		_m128ishufepi32_204 label size_t
			pshufd				xmm0,			xmm0,			204
			ret
		_m128ishufepi32_205 label size_t
			pshufd				xmm0,			xmm0,			205
			ret
		_m128ishufepi32_206 label size_t
			pshufd				xmm0,			xmm0,			206
			ret
		_m128ishufepi32_207 label size_t
			pshufd				xmm0,			xmm0,			207
			ret
		_m128ishufepi32_208 label size_t
			pshufd				xmm0,			xmm0,			208
			ret
		_m128ishufepi32_209 label size_t
			pshufd				xmm0,			xmm0,			209
			ret
		_m128ishufepi32_210 label size_t
			pshufd				xmm0,			xmm0,			210
			ret
		_m128ishufepi32_211 label size_t
			pshufd				xmm0,			xmm0,			211
			ret
		_m128ishufepi32_212 label size_t
			pshufd				xmm0,			xmm0,			212
			ret
		_m128ishufepi32_213 label size_t
			pshufd				xmm0,			xmm0,			213
			ret
		_m128ishufepi32_214 label size_t
			pshufd				xmm0,			xmm0,			214
			ret
		_m128ishufepi32_215 label size_t
			pshufd				xmm0,			xmm0,			215
			ret
		_m128ishufepi32_216 label size_t
			pshufd				xmm0,			xmm0,			216
			ret
		_m128ishufepi32_217 label size_t
			pshufd				xmm0,			xmm0,			217
			ret
		_m128ishufepi32_218 label size_t
			pshufd				xmm0,			xmm0,			218
			ret
		_m128ishufepi32_219 label size_t
			pshufd				xmm0,			xmm0,			219
			ret
		_m128ishufepi32_220 label size_t
			pshufd				xmm0,			xmm0,			220
			ret
		_m128ishufepi32_221 label size_t
			pshufd				xmm0,			xmm0,			221
			ret
		_m128ishufepi32_222 label size_t
			pshufd				xmm0,			xmm0,			222
			ret
		_m128ishufepi32_223 label size_t
			pshufd				xmm0,			xmm0,			223
			ret
		_m128ishufepi32_224 label size_t
			pshufd				xmm0,			xmm0,			224
			ret
		_m128ishufepi32_225 label size_t
			pshufd				xmm0,			xmm0,			225
			ret
		_m128ishufepi32_226 label size_t
			pshufd				xmm0,			xmm0,			226
			ret
		_m128ishufepi32_227 label size_t
			pshufd				xmm0,			xmm0,			227
			ret
		_m128ishufepi32_228 label size_t
			pshufd				xmm0,			xmm0,			228
			ret
		_m128ishufepi32_229 label size_t
			pshufd				xmm0,			xmm0,			229
			ret
		_m128ishufepi32_230 label size_t
			pshufd				xmm0,			xmm0,			230
			ret
		_m128ishufepi32_231 label size_t
			pshufd				xmm0,			xmm0,			231
			ret
		_m128ishufepi32_232 label size_t
			pshufd				xmm0,			xmm0,			232
			ret
		_m128ishufepi32_233 label size_t
			pshufd				xmm0,			xmm0,			233
			ret
		_m128ishufepi32_234 label size_t
			pshufd				xmm0,			xmm0,			234
			ret
		_m128ishufepi32_235 label size_t
			pshufd				xmm0,			xmm0,			235
			ret
		_m128ishufepi32_236 label size_t
			pshufd				xmm0,			xmm0,			236
			ret
		_m128ishufepi32_237 label size_t
			pshufd				xmm0,			xmm0,			237
			ret
		_m128ishufepi32_238 label size_t
			pshufd				xmm0,			xmm0,			238
			ret
		_m128ishufepi32_239 label size_t
			pshufd				xmm0,			xmm0,			239
			ret
		_m128ishufepi32_240 label size_t
			pshufd				xmm0,			xmm0,			240
			ret
		_m128ishufepi32_241 label size_t
			pshufd				xmm0,			xmm0,			241
			ret
		_m128ishufepi32_242 label size_t
			pshufd				xmm0,			xmm0,			242
			ret
		_m128ishufepi32_243 label size_t
			pshufd				xmm0,			xmm0,			243
			ret
		_m128ishufepi32_244 label size_t
			pshufd				xmm0,			xmm0,			244
			ret
		_m128ishufepi32_245 label size_t
			pshufd				xmm0,			xmm0,			245
			ret
		_m128ishufepi32_246 label size_t
			pshufd				xmm0,			xmm0,			246
			ret
		_m128ishufepi32_247 label size_t
			pshufd				xmm0,			xmm0,			247
			ret
		_m128ishufepi32_248 label size_t
			pshufd				xmm0,			xmm0,			248
			ret
		_m128ishufepi32_249 label size_t
			pshufd				xmm0,			xmm0,			249
			ret
		_m128ishufepi32_250 label size_t
			pshufd				xmm0,			xmm0,			250
			ret
		_m128ishufepi32_251 label size_t
			pshufd				xmm0,			xmm0,			251
			ret
		_m128ishufepi32_252 label size_t
			pshufd				xmm0,			xmm0,			252
			ret
		_m128ishufepi32_253 label size_t
			pshufd				xmm0,			xmm0,			253
			ret
		_m128ishufepi32_254 label size_t
			pshufd				xmm0,			xmm0,			254
			ret
		_m128ishufepi32_255 label size_t
			pshufd				xmm0,			xmm0,			255
			ret
		;.endif
		
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0000, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0001, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0002, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0003, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0010, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0011, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0012, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0013, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0020, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0021, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0022, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0023, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0030, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0031, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0032, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0033, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0100, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			16
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0101, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			17
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0102, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			18
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0103, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			19
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0110, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			20
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0111, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			21
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0112, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			22
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0113, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			23
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0120, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			24
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0121, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			25
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0122, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			26
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0123, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			27
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0130, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			28
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0131, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			29
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0132, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			30
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0133, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			31
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0200, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			32
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0201, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			33
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0202, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			34
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0203, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			35
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0210, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			36
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0211, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			37
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0212, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			38
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0213, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			39
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0220, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			40
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0221, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			41
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0222, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			42
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0223, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			43
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0230, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			44
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0231, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			45
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0232, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			46
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0233, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			47
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0300, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			48
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0301, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			49
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0302, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			50
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0303, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			51
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0310, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			52
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0311, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			53
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0312, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			54
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0313, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			55
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0320, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			56
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0321, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			57
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0322, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			58
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0323, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			59
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0330, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			60
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0331, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			61
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0332, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			62
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_0333, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			63
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1000, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			64
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1001, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			65
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1002, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			66
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1003, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			67
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1010, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			68
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1011, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			69
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1012, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			70
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1013, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			71
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1020, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			72
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1021, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			73
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1022, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			74
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1023, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			75
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1030, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			76
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1031, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			77
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1032, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			78
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1033, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			79
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1100, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			80
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1101, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			81
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1102, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			82
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1103, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			83
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1110, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			84
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1111, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			85
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1112, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			86
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1113, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			87
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1120, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			88
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1121, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			89
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1122, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			90
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1123, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			91
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1130, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			92
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1131, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			93
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1132, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			94
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1133, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			95
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1200, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			96
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1201, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			97
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1202, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			98
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1203, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			99
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1210, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			100
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1211, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			101
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1212, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			102
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1213, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			103
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1220, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			104
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1221, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			105
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1222, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			106
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1223, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			107
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1230, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			108
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1231, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			109
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1232, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			110
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1233, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			111
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1300, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			112
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1301, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			113
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1302, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			114
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1303, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			115
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1310, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			116
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1311, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			117
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1312, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			118
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1313, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			119
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1320, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			120
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1321, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			121
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1322, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			122
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1323, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			123
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1330, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			124
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1331, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			125
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1332, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			126
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_1333, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			127
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2000, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			128
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2001, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			129
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2002, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			130
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2003, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			131
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2010, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			132
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2011, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			133
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2012, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			134
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2013, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			135
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2020, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			136
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2021, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			137
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2022, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			138
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2023, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			139
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2030, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			140
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2031, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			141
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2032, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			142
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2033, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			143
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2100, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			144
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2101, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			145
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2102, xmmword, < > ;InXmm_A:xmmword 
			pshufhw				xmm0,			xmm0,			146
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2103, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			147
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2110, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			148
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2111, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			149
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2112, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			150
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2113, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			151
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2120, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			152
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2121, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			153
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2122, xmmword, < > ;InXmm_A:xmmword 
			pshufhw				xmm0,			xmm0,			154
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2123, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			155
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2130, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			156
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2131, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			157
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2132, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			158
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2133, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			159
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2200, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			160
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2201, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			161
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2202, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			162
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2203, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			163
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2210, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			164
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2211, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			165
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2212, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			166
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2213, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			167
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2220, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			168
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2221, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			169
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2222, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			170
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2223, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			171
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2230, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			172
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2231, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			173
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2232, xmmword, < > ;InXmm_A:xmmword 
			pshufhw				xmm0,			xmm0,			174
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2233, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			175
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2300, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			176
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2301, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			177
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2302, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			178
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2303, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			179
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2310, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			180
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2311, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			181
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2312, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			182
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2313, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			183
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2320, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			184
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2321, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			185
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2322, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			186
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2323, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			187
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2330, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			188
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2331, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			189
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2332, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			190
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_2333, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			191
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3000, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			192
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3001, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			193
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3002, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			194
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3003, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			195
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3010, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			196
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3011, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			197
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3012, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			198
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3013, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			199
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3020, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			200
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3021, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			201
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3022, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			202
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3023, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			203
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3030, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			204
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3031, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			205
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3032, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			206
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3033, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			207
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3100, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			208
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3101, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			209
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3102, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			210
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3103, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			211
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3110, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			212
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3111, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			213
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3112, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			214
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3113, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			215
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3120, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			216
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3121, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			217
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3122, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			218
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3123, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			219
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3130, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			220
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3131, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			221
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3132, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			222
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3133, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			223
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3200, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			224
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3201, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			225
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3202, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			226
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3203, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			227
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3210, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			228
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3211, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			229
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3212, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			230
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3213, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			231
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3220, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			232
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3221, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			233
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3222, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			234
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3223, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			235
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3230, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			236
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3231, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			237
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3232, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			238
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3233, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			239
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3300, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			240
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3301, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			241
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3302, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			242
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3303, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			243
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3310, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			244
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3311, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			245
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3312, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			246
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3313, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			247
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3320, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			248
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3321, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			249
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3322, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			250
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3323, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			251
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3330, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			252
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3331, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			253
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3332, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			254
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16_3333, xmmword, < > ;InXmm_A:xmmword
			pshufhw				xmm0,			xmm0,			255
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflehi_epi16, xmmword, < > ;InXmm_A:xmmword, _Imm8:dword
				
		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128ishufhiepi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128ishufhiepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128ishufhiepi16_0 label size_t
			pshufhw				xmm0,			xmm0,			0
			ret
		_m128ishufhiepi16_1 label size_t
			pshufhw				xmm0,			xmm0,			1
			ret
		_m128ishufhiepi16_2 label size_t
			pshufhw				xmm0,			xmm0,			2
			ret
		_m128ishufhiepi16_3 label size_t
			pshufhw				xmm0,			xmm0,			3
			ret
		_m128ishufhiepi16_4 label size_t
			pshufhw				xmm0,			xmm0,			4
			ret
		_m128ishufhiepi16_5 label size_t
			pshufhw				xmm0,			xmm0,			5
			ret
		_m128ishufhiepi16_6 label size_t
			pshufhw				xmm0,			xmm0,			6
			ret
		_m128ishufhiepi16_7 label size_t
			pshufhw				xmm0,			xmm0,			7
			ret
		_m128ishufhiepi16_8 label size_t
			pshufhw				xmm0,			xmm0,			8
			ret
		_m128ishufhiepi16_9 label size_t
			pshufhw				xmm0,			xmm0,			9
			ret
		_m128ishufhiepi16_10 label size_t
			pshufhw				xmm0,			xmm0,			10
			ret
		_m128ishufhiepi16_11 label size_t
			pshufhw				xmm0,			xmm0,			11
			ret
		_m128ishufhiepi16_12 label size_t
			pshufhw				xmm0,			xmm0,			12
			ret
		_m128ishufhiepi16_13 label size_t
			pshufhw				xmm0,			xmm0,			13
			ret
		_m128ishufhiepi16_14 label size_t
			pshufhw				xmm0,			xmm0,			14
			ret
		_m128ishufhiepi16_15 label size_t
			pshufhw				xmm0,			xmm0,			15
			ret
		_m128ishufhiepi16_16 label size_t
			pshufhw				xmm0,			xmm0,			16
			ret
		_m128ishufhiepi16_17 label size_t
			pshufhw				xmm0,			xmm0,			17
			ret
		_m128ishufhiepi16_18 label size_t
			pshufhw				xmm0,			xmm0,			18
			ret
		_m128ishufhiepi16_19 label size_t
			pshufhw				xmm0,			xmm0,			19
			ret
		_m128ishufhiepi16_20 label size_t
			pshufhw				xmm0,			xmm0,			20
			ret
		_m128ishufhiepi16_21 label size_t
			pshufhw				xmm0,			xmm0,			21
			ret
		_m128ishufhiepi16_22 label size_t
			pshufhw				xmm0,			xmm0,			22
			ret
		_m128ishufhiepi16_23 label size_t
			pshufhw				xmm0,			xmm0,			23
			ret
		_m128ishufhiepi16_24 label size_t
			pshufhw				xmm0,			xmm0,			24
			ret
		_m128ishufhiepi16_25 label size_t
			pshufhw				xmm0,			xmm0,			25
			ret
		_m128ishufhiepi16_26 label size_t
			pshufhw				xmm0,			xmm0,			26
			ret
		_m128ishufhiepi16_27 label size_t
			pshufhw				xmm0,			xmm0,			27
			ret
		_m128ishufhiepi16_28 label size_t
			pshufhw				xmm0,			xmm0,			28
			ret
		_m128ishufhiepi16_29 label size_t
			pshufhw				xmm0,			xmm0,			29
			ret
		_m128ishufhiepi16_30 label size_t
			pshufhw				xmm0,			xmm0,			30
			ret
		_m128ishufhiepi16_31 label size_t
			pshufhw				xmm0,			xmm0,			31
			ret
		_m128ishufhiepi16_32 label size_t
			pshufhw				xmm0,			xmm0,			32
			ret
		_m128ishufhiepi16_33 label size_t
			pshufhw				xmm0,			xmm0,			33
			ret
		_m128ishufhiepi16_34 label size_t
			pshufhw				xmm0,			xmm0,			34
			ret
		_m128ishufhiepi16_35 label size_t
			pshufhw				xmm0,			xmm0,			35
			ret
		_m128ishufhiepi16_36 label size_t
			pshufhw				xmm0,			xmm0,			36
			ret
		_m128ishufhiepi16_37 label size_t
			pshufhw				xmm0,			xmm0,			37
			ret
		_m128ishufhiepi16_38 label size_t
			pshufhw				xmm0,			xmm0,			38
			ret
		_m128ishufhiepi16_39 label size_t
			pshufhw				xmm0,			xmm0,			39
			ret
		_m128ishufhiepi16_40 label size_t
			pshufhw				xmm0,			xmm0,			40
			ret
		_m128ishufhiepi16_41 label size_t
			pshufhw				xmm0,			xmm0,			41
			ret
		_m128ishufhiepi16_42 label size_t
			pshufhw				xmm0,			xmm0,			42
			ret
		_m128ishufhiepi16_43 label size_t
			pshufhw				xmm0,			xmm0,			43
			ret
		_m128ishufhiepi16_44 label size_t
			pshufhw				xmm0,			xmm0,			44
			ret
		_m128ishufhiepi16_45 label size_t
			pshufhw				xmm0,			xmm0,			45
			ret
		_m128ishufhiepi16_46 label size_t
			pshufhw				xmm0,			xmm0,			46
			ret
		_m128ishufhiepi16_47 label size_t
			pshufhw				xmm0,			xmm0,			47
			ret
		_m128ishufhiepi16_48 label size_t
			pshufhw				xmm0,			xmm0,			48
			ret
		_m128ishufhiepi16_49 label size_t
			pshufhw				xmm0,			xmm0,			49
			ret
		_m128ishufhiepi16_50 label size_t
			pshufhw				xmm0,			xmm0,			50
			ret
		_m128ishufhiepi16_51 label size_t
			pshufhw				xmm0,			xmm0,			51
			ret
		_m128ishufhiepi16_52 label size_t
			pshufhw				xmm0,			xmm0,			52
			ret
		_m128ishufhiepi16_53 label size_t
			pshufhw				xmm0,			xmm0,			53
			ret
		_m128ishufhiepi16_54 label size_t
			pshufhw				xmm0,			xmm0,			54
			ret
		_m128ishufhiepi16_55 label size_t
			pshufhw				xmm0,			xmm0,			55
			ret
		_m128ishufhiepi16_56 label size_t
			pshufhw				xmm0,			xmm0,			56
			ret
		_m128ishufhiepi16_57 label size_t
			pshufhw				xmm0,			xmm0,			57
			ret
		_m128ishufhiepi16_58 label size_t
			pshufhw				xmm0,			xmm0,			58
			ret
		_m128ishufhiepi16_59 label size_t
			pshufhw				xmm0,			xmm0,			59
			ret
		_m128ishufhiepi16_60 label size_t
			pshufhw				xmm0,			xmm0,			60
			ret
		_m128ishufhiepi16_61 label size_t
			pshufhw				xmm0,			xmm0,			61
			ret
		_m128ishufhiepi16_62 label size_t
			pshufhw				xmm0,			xmm0,			62
			ret
		_m128ishufhiepi16_63 label size_t
			pshufhw				xmm0,			xmm0,			63
			ret
		_m128ishufhiepi16_64 label size_t
			pshufhw				xmm0,			xmm0,			64
			ret
		_m128ishufhiepi16_65 label size_t
			pshufhw				xmm0,			xmm0,			65
			ret
		_m128ishufhiepi16_66 label size_t
			pshufhw				xmm0,			xmm0,			66
			ret
		_m128ishufhiepi16_67 label size_t
			pshufhw				xmm0,			xmm0,			67
			ret
		_m128ishufhiepi16_68 label size_t
			pshufhw				xmm0,			xmm0,			68
			ret
		_m128ishufhiepi16_69 label size_t
			pshufhw				xmm0,			xmm0,			69
			ret
		_m128ishufhiepi16_70 label size_t
			pshufhw				xmm0,			xmm0,			70
			ret
		_m128ishufhiepi16_71 label size_t
			pshufhw				xmm0,			xmm0,			71
			ret
		_m128ishufhiepi16_72 label size_t
			pshufhw				xmm0,			xmm0,			72
			ret
		_m128ishufhiepi16_73 label size_t
			pshufhw				xmm0,			xmm0,			73
			ret
		_m128ishufhiepi16_74 label size_t
			pshufhw				xmm0,			xmm0,			74
			ret
		_m128ishufhiepi16_75 label size_t
			pshufhw				xmm0,			xmm0,			75
			ret
		_m128ishufhiepi16_76 label size_t
			pshufhw				xmm0,			xmm0,			76
			ret
		_m128ishufhiepi16_77 label size_t
			pshufhw				xmm0,			xmm0,			77
			ret
		_m128ishufhiepi16_78 label size_t
			pshufhw				xmm0,			xmm0,			78
			ret
		_m128ishufhiepi16_79 label size_t
			pshufhw				xmm0,			xmm0,			79
			ret
		_m128ishufhiepi16_80 label size_t
			pshufhw				xmm0,			xmm0,			80
			ret
		_m128ishufhiepi16_81 label size_t
			pshufhw				xmm0,			xmm0,			81
			ret
		_m128ishufhiepi16_82 label size_t
			pshufhw				xmm0,			xmm0,			82
			ret
		_m128ishufhiepi16_83 label size_t
			pshufhw				xmm0,			xmm0,			83
			ret
		_m128ishufhiepi16_84 label size_t
			pshufhw				xmm0,			xmm0,			84
			ret
		_m128ishufhiepi16_85 label size_t
			pshufhw				xmm0,			xmm0,			85
			ret
		_m128ishufhiepi16_86 label size_t
			pshufhw				xmm0,			xmm0,			86
			ret
		_m128ishufhiepi16_87 label size_t
			pshufhw				xmm0,			xmm0,			87
			ret
		_m128ishufhiepi16_88 label size_t
			pshufhw				xmm0,			xmm0,			88
			ret
		_m128ishufhiepi16_89 label size_t
			pshufhw				xmm0,			xmm0,			89
			ret
		_m128ishufhiepi16_90 label size_t
			pshufhw				xmm0,			xmm0,			90
			ret
		_m128ishufhiepi16_91 label size_t
			pshufhw				xmm0,			xmm0,			91
			ret
		_m128ishufhiepi16_92 label size_t
			pshufhw				xmm0,			xmm0,			92
			ret
		_m128ishufhiepi16_93 label size_t
			pshufhw				xmm0,			xmm0,			93
			ret
		_m128ishufhiepi16_94 label size_t
			pshufhw				xmm0,			xmm0,			94
			ret
		_m128ishufhiepi16_95 label size_t
			pshufhw				xmm0,			xmm0,			95
			ret
		_m128ishufhiepi16_96 label size_t
			pshufhw				xmm0,			xmm0,			96
			ret
		_m128ishufhiepi16_97 label size_t
			pshufhw				xmm0,			xmm0,			97
			ret
		_m128ishufhiepi16_98 label size_t
			pshufhw				xmm0,			xmm0,			98
			ret
		_m128ishufhiepi16_99 label size_t
			pshufhw				xmm0,			xmm0,			99
			ret
		_m128ishufhiepi16_100 label size_t
			pshufhw				xmm0,			xmm0,			100
			ret
		_m128ishufhiepi16_101 label size_t
			pshufhw				xmm0,			xmm0,			101
			ret
		_m128ishufhiepi16_102 label size_t
			pshufhw				xmm0,			xmm0,			102
			ret
		_m128ishufhiepi16_103 label size_t
			pshufhw				xmm0,			xmm0,			103
			ret
		_m128ishufhiepi16_104 label size_t
			pshufhw				xmm0,			xmm0,			104
			ret
		_m128ishufhiepi16_105 label size_t
			pshufhw				xmm0,			xmm0,			105
			ret
		_m128ishufhiepi16_106 label size_t
			pshufhw				xmm0,			xmm0,			106
			ret
		_m128ishufhiepi16_107 label size_t
			pshufhw				xmm0,			xmm0,			107
			ret
		_m128ishufhiepi16_108 label size_t
			pshufhw				xmm0,			xmm0,			108
			ret
		_m128ishufhiepi16_109 label size_t
			pshufhw				xmm0,			xmm0,			109
			ret
		_m128ishufhiepi16_110 label size_t
			pshufhw				xmm0,			xmm0,			110
			ret
		_m128ishufhiepi16_111 label size_t
			pshufhw				xmm0,			xmm0,			111
			ret
		_m128ishufhiepi16_112 label size_t
			pshufhw				xmm0,			xmm0,			112
			ret
		_m128ishufhiepi16_113 label size_t
			pshufhw				xmm0,			xmm0,			113
			ret
		_m128ishufhiepi16_114 label size_t
			pshufhw				xmm0,			xmm0,			114
			ret
		_m128ishufhiepi16_115 label size_t
			pshufhw				xmm0,			xmm0,			115
			ret
		_m128ishufhiepi16_116 label size_t
			pshufhw				xmm0,			xmm0,			116
			ret
		_m128ishufhiepi16_117 label size_t
			pshufhw				xmm0,			xmm0,			117
			ret
		_m128ishufhiepi16_118 label size_t
			pshufhw				xmm0,			xmm0,			118
			ret
		_m128ishufhiepi16_119 label size_t
			pshufhw				xmm0,			xmm0,			119
			ret
		_m128ishufhiepi16_120 label size_t
			pshufhw				xmm0,			xmm0,			120
			ret
		_m128ishufhiepi16_121 label size_t
			pshufhw				xmm0,			xmm0,			121
			ret
		_m128ishufhiepi16_122 label size_t
			pshufhw				xmm0,			xmm0,			122
			ret
		_m128ishufhiepi16_123 label size_t
			pshufhw				xmm0,			xmm0,			123
			ret
		_m128ishufhiepi16_124 label size_t
			pshufhw				xmm0,			xmm0,			124
			ret
		_m128ishufhiepi16_125 label size_t
			pshufhw				xmm0,			xmm0,			125
			ret
		_m128ishufhiepi16_126 label size_t
			pshufhw				xmm0,			xmm0,			126
			ret
		_m128ishufhiepi16_127 label size_t
			pshufhw				xmm0,			xmm0,			127
			ret
		_m128ishufhiepi16_128 label size_t
			pshufhw				xmm0,			xmm0,			128
			ret
		_m128ishufhiepi16_129 label size_t
			pshufhw				xmm0,			xmm0,			129
			ret
		_m128ishufhiepi16_130 label size_t
			pshufhw				xmm0,			xmm0,			130
			ret
		_m128ishufhiepi16_131 label size_t
			pshufhw				xmm0,			xmm0,			131
			ret
		_m128ishufhiepi16_132 label size_t
			pshufhw				xmm0,			xmm0,			132
			ret
		_m128ishufhiepi16_133 label size_t
			pshufhw				xmm0,			xmm0,			133
			ret
		_m128ishufhiepi16_134 label size_t
			pshufhw				xmm0,			xmm0,			134
			ret
		_m128ishufhiepi16_135 label size_t
			pshufhw				xmm0,			xmm0,			135
			ret
		_m128ishufhiepi16_136 label size_t
			pshufhw				xmm0,			xmm0,			136
			ret
		_m128ishufhiepi16_137 label size_t
			pshufhw				xmm0,			xmm0,			137
			ret
		_m128ishufhiepi16_138 label size_t
			pshufhw				xmm0,			xmm0,			138
			ret
		_m128ishufhiepi16_139 label size_t
			pshufhw				xmm0,			xmm0,			139
			ret
		_m128ishufhiepi16_140 label size_t
			pshufhw				xmm0,			xmm0,			140
			ret
		_m128ishufhiepi16_141 label size_t
			pshufhw				xmm0,			xmm0,			141
			ret
		_m128ishufhiepi16_142 label size_t
			pshufhw				xmm0,			xmm0,			142
			ret
		_m128ishufhiepi16_143 label size_t
			pshufhw				xmm0,			xmm0,			143
			ret
		_m128ishufhiepi16_144 label size_t
			pshufhw				xmm0,			xmm0,			144
			ret
		_m128ishufhiepi16_145 label size_t
			pshufhw				xmm0,			xmm0,			145
			ret
		_m128ishufhiepi16_146 label size_t
			pshufhw				xmm0,			xmm0,			146
			ret
		_m128ishufhiepi16_147 label size_t
			pshufhw				xmm0,			xmm0,			147
			ret
		_m128ishufhiepi16_148 label size_t
			pshufhw				xmm0,			xmm0,			148
			ret
		_m128ishufhiepi16_149 label size_t
			pshufhw				xmm0,			xmm0,			149
			ret
		_m128ishufhiepi16_150 label size_t
			pshufhw				xmm0,			xmm0,			150
			ret
		_m128ishufhiepi16_151 label size_t
			pshufhw				xmm0,			xmm0,			151
			ret
		_m128ishufhiepi16_152 label size_t
			pshufhw				xmm0,			xmm0,			152
			ret
		_m128ishufhiepi16_153 label size_t
			pshufhw				xmm0,			xmm0,			153
			ret
		_m128ishufhiepi16_154 label size_t
			pshufhw				xmm0,			xmm0,			154
			ret
		_m128ishufhiepi16_155 label size_t
			pshufhw				xmm0,			xmm0,			155
			ret
		_m128ishufhiepi16_156 label size_t
			pshufhw				xmm0,			xmm0,			156
			ret
		_m128ishufhiepi16_157 label size_t
			pshufhw				xmm0,			xmm0,			157
			ret
		_m128ishufhiepi16_158 label size_t
			pshufhw				xmm0,			xmm0,			158
			ret
		_m128ishufhiepi16_159 label size_t
			pshufhw				xmm0,			xmm0,			159
			ret
		_m128ishufhiepi16_160 label size_t
			pshufhw				xmm0,			xmm0,			160
			ret
		_m128ishufhiepi16_161 label size_t
			pshufhw				xmm0,			xmm0,			161
			ret
		_m128ishufhiepi16_162 label size_t
			pshufhw				xmm0,			xmm0,			162
			ret
		_m128ishufhiepi16_163 label size_t
			pshufhw				xmm0,			xmm0,			163
			ret
		_m128ishufhiepi16_164 label size_t
			pshufhw				xmm0,			xmm0,			164
			ret
		_m128ishufhiepi16_165 label size_t
			pshufhw				xmm0,			xmm0,			165
			ret
		_m128ishufhiepi16_166 label size_t
			pshufhw				xmm0,			xmm0,			166
			ret
		_m128ishufhiepi16_167 label size_t
			pshufhw				xmm0,			xmm0,			167
			ret
		_m128ishufhiepi16_168 label size_t
			pshufhw				xmm0,			xmm0,			168
			ret
		_m128ishufhiepi16_169 label size_t
			pshufhw				xmm0,			xmm0,			169
			ret
		_m128ishufhiepi16_170 label size_t
			pshufhw				xmm0,			xmm0,			170
			ret
		_m128ishufhiepi16_171 label size_t
			pshufhw				xmm0,			xmm0,			171
			ret
		_m128ishufhiepi16_172 label size_t
			pshufhw				xmm0,			xmm0,			172
			ret
		_m128ishufhiepi16_173 label size_t
			pshufhw				xmm0,			xmm0,			173
			ret
		_m128ishufhiepi16_174 label size_t
			pshufhw				xmm0,			xmm0,			174
			ret
		_m128ishufhiepi16_175 label size_t
			pshufhw				xmm0,			xmm0,			175
			ret
		_m128ishufhiepi16_176 label size_t
			pshufhw				xmm0,			xmm0,			176
			ret
		_m128ishufhiepi16_177 label size_t
			pshufhw				xmm0,			xmm0,			177
			ret
		_m128ishufhiepi16_178 label size_t
			pshufhw				xmm0,			xmm0,			178
			ret
		_m128ishufhiepi16_179 label size_t
			pshufhw				xmm0,			xmm0,			179
			ret
		_m128ishufhiepi16_180 label size_t
			pshufhw				xmm0,			xmm0,			180
			ret
		_m128ishufhiepi16_181 label size_t
			pshufhw				xmm0,			xmm0,			181
			ret
		_m128ishufhiepi16_182 label size_t
			pshufhw				xmm0,			xmm0,			182
			ret
		_m128ishufhiepi16_183 label size_t
			pshufhw				xmm0,			xmm0,			183
			ret
		_m128ishufhiepi16_184 label size_t
			pshufhw				xmm0,			xmm0,			184
			ret
		_m128ishufhiepi16_185 label size_t
			pshufhw				xmm0,			xmm0,			185
			ret
		_m128ishufhiepi16_186 label size_t
			pshufhw				xmm0,			xmm0,			186
			ret
		_m128ishufhiepi16_187 label size_t
			pshufhw				xmm0,			xmm0,			187
			ret
		_m128ishufhiepi16_188 label size_t
			pshufhw				xmm0,			xmm0,			188
			ret
		_m128ishufhiepi16_189 label size_t
			pshufhw				xmm0,			xmm0,			189
			ret
		_m128ishufhiepi16_190 label size_t
			pshufhw				xmm0,			xmm0,			190
			ret
		_m128ishufhiepi16_191 label size_t
			pshufhw				xmm0,			xmm0,			191
			ret
		_m128ishufhiepi16_192 label size_t
			pshufhw				xmm0,			xmm0,			192
			ret
		_m128ishufhiepi16_193 label size_t
			pshufhw				xmm0,			xmm0,			193
			ret
		_m128ishufhiepi16_194 label size_t
			pshufhw				xmm0,			xmm0,			194
			ret
		_m128ishufhiepi16_195 label size_t
			pshufhw				xmm0,			xmm0,			195
			ret
		_m128ishufhiepi16_196 label size_t
			pshufhw				xmm0,			xmm0,			196
			ret
		_m128ishufhiepi16_197 label size_t
			pshufhw				xmm0,			xmm0,			197
			ret
		_m128ishufhiepi16_198 label size_t
			pshufhw				xmm0,			xmm0,			198
			ret
		_m128ishufhiepi16_199 label size_t
			pshufhw				xmm0,			xmm0,			199
			ret
		_m128ishufhiepi16_200 label size_t
			pshufhw				xmm0,			xmm0,			200
			ret
		_m128ishufhiepi16_201 label size_t
			pshufhw				xmm0,			xmm0,			201
			ret
		_m128ishufhiepi16_202 label size_t
			pshufhw				xmm0,			xmm0,			202
			ret
		_m128ishufhiepi16_203 label size_t
			pshufhw				xmm0,			xmm0,			203
			ret
		_m128ishufhiepi16_204 label size_t
			pshufhw				xmm0,			xmm0,			204
			ret
		_m128ishufhiepi16_205 label size_t
			pshufhw				xmm0,			xmm0,			205
			ret
		_m128ishufhiepi16_206 label size_t
			pshufhw				xmm0,			xmm0,			206
			ret
		_m128ishufhiepi16_207 label size_t
			pshufhw				xmm0,			xmm0,			207
			ret
		_m128ishufhiepi16_208 label size_t
			pshufhw				xmm0,			xmm0,			208
			ret
		_m128ishufhiepi16_209 label size_t
			pshufhw				xmm0,			xmm0,			209
			ret
		_m128ishufhiepi16_210 label size_t
			pshufhw				xmm0,			xmm0,			210
			ret
		_m128ishufhiepi16_211 label size_t
			pshufhw				xmm0,			xmm0,			211
			ret
		_m128ishufhiepi16_212 label size_t
			pshufhw				xmm0,			xmm0,			212
			ret
		_m128ishufhiepi16_213 label size_t
			pshufhw				xmm0,			xmm0,			213
			ret
		_m128ishufhiepi16_214 label size_t
			pshufhw				xmm0,			xmm0,			214
			ret
		_m128ishufhiepi16_215 label size_t
			pshufhw				xmm0,			xmm0,			215
			ret
		_m128ishufhiepi16_216 label size_t
			pshufhw				xmm0,			xmm0,			216
			ret
		_m128ishufhiepi16_217 label size_t
			pshufhw				xmm0,			xmm0,			217
			ret
		_m128ishufhiepi16_218 label size_t
			pshufhw				xmm0,			xmm0,			218
			ret
		_m128ishufhiepi16_219 label size_t
			pshufhw				xmm0,			xmm0,			219
			ret
		_m128ishufhiepi16_220 label size_t
			pshufhw				xmm0,			xmm0,			220
			ret
		_m128ishufhiepi16_221 label size_t
			pshufhw				xmm0,			xmm0,			221
			ret
		_m128ishufhiepi16_222 label size_t
			pshufhw				xmm0,			xmm0,			222
			ret
		_m128ishufhiepi16_223 label size_t
			pshufhw				xmm0,			xmm0,			223
			ret
		_m128ishufhiepi16_224 label size_t
			pshufhw				xmm0,			xmm0,			224
			ret
		_m128ishufhiepi16_225 label size_t
			pshufhw				xmm0,			xmm0,			225
			ret
		_m128ishufhiepi16_226 label size_t
			pshufhw				xmm0,			xmm0,			226
			ret
		_m128ishufhiepi16_227 label size_t
			pshufhw				xmm0,			xmm0,			227
			ret
		_m128ishufhiepi16_228 label size_t
			pshufhw				xmm0,			xmm0,			228
			ret
		_m128ishufhiepi16_229 label size_t
			pshufhw				xmm0,			xmm0,			229
			ret
		_m128ishufhiepi16_230 label size_t
			pshufhw				xmm0,			xmm0,			230
			ret
		_m128ishufhiepi16_231 label size_t
			pshufhw				xmm0,			xmm0,			231
			ret
		_m128ishufhiepi16_232 label size_t
			pshufhw				xmm0,			xmm0,			232
			ret
		_m128ishufhiepi16_233 label size_t
			pshufhw				xmm0,			xmm0,			233
			ret
		_m128ishufhiepi16_234 label size_t
			pshufhw				xmm0,			xmm0,			234
			ret
		_m128ishufhiepi16_235 label size_t
			pshufhw				xmm0,			xmm0,			235
			ret
		_m128ishufhiepi16_236 label size_t
			pshufhw				xmm0,			xmm0,			236
			ret
		_m128ishufhiepi16_237 label size_t
			pshufhw				xmm0,			xmm0,			237
			ret
		_m128ishufhiepi16_238 label size_t
			pshufhw				xmm0,			xmm0,			238
			ret
		_m128ishufhiepi16_239 label size_t
			pshufhw				xmm0,			xmm0,			239
			ret
		_m128ishufhiepi16_240 label size_t
			pshufhw				xmm0,			xmm0,			240
			ret
		_m128ishufhiepi16_241 label size_t
			pshufhw				xmm0,			xmm0,			241
			ret
		_m128ishufhiepi16_242 label size_t
			pshufhw				xmm0,			xmm0,			242
			ret
		_m128ishufhiepi16_243 label size_t
			pshufhw				xmm0,			xmm0,			243
			ret
		_m128ishufhiepi16_244 label size_t
			pshufhw				xmm0,			xmm0,			244
			ret
		_m128ishufhiepi16_245 label size_t
			pshufhw				xmm0,			xmm0,			245
			ret
		_m128ishufhiepi16_246 label size_t
			pshufhw				xmm0,			xmm0,			246
			ret
		_m128ishufhiepi16_247 label size_t
			pshufhw				xmm0,			xmm0,			247
			ret
		_m128ishufhiepi16_248 label size_t
			pshufhw				xmm0,			xmm0,			248
			ret
		_m128ishufhiepi16_249 label size_t
			pshufhw				xmm0,			xmm0,			249
			ret
		_m128ishufhiepi16_250 label size_t
			pshufhw				xmm0,			xmm0,			250
			ret
		_m128ishufhiepi16_251 label size_t
			pshufhw				xmm0,			xmm0,			251
			ret
		_m128ishufhiepi16_252 label size_t
			pshufhw				xmm0,			xmm0,			252
			ret
		_m128ishufhiepi16_253 label size_t
			pshufhw				xmm0,			xmm0,			253
			ret
		_m128ishufhiepi16_254 label size_t
			pshufhw				xmm0,			xmm0,			254
			ret
		_m128ishufhiepi16_255 label size_t
			pshufhw				xmm0,			xmm0,			255
			ret
		;.endif
		
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0000, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0001, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0002, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0003, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0010, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0011, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0012, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0013, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0020, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0021, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0022, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0023, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0030, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0031, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0032, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0033, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0100, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			16
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0101, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			17
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0102, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			18
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0103, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			19
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0110, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			20
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0111, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			21
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0112, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			22
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0113, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			23
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0120, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			24
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0121, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			25
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0122, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			26
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0123, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			27
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0130, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			28
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0131, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			29
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0132, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			30
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0133, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			31
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0200, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			32
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0201, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			33
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0202, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			34
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0203, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			35
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0210, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			36
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0211, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			37
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0212, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			38
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0213, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			39
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0220, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			40
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0221, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			41
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0222, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			42
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0223, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			43
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0230, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			44
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0231, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			45
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0232, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			46
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0233, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			47
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0300, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			48
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0301, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			49
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0302, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			50
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0303, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			51
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0310, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			52
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0311, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			53
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0312, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			54
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0313, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			55
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0320, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			56
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0321, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			57
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0322, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			58
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0323, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			59
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0330, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			60
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0331, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			61
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0332, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			62
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_0333, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			63
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1000, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			64
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1001, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			65
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1002, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			66
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1003, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			67
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1010, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			68
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1011, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			69
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1012, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			70
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1013, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			71
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1020, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			72
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1021, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			73
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1022, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			74
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1023, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			75
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1030, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			76
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1031, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			77
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1032, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			78
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1033, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			79
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1100, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			80
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1101, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			81
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1102, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			82
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1103, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			83
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1110, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			84
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1111, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			85
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1112, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			86
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1113, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			87
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1120, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			88
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1121, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			89
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1122, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			90
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1123, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			91
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1130, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			92
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1131, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			93
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1132, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			94
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1133, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			95
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1200, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			96
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1201, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			97
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1202, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			98
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1203, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			99
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1210, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			100
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1211, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			101
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1212, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			102
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1213, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			103
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1220, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			104
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1221, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			105
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1222, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			106
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1223, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			107
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1230, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			108
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1231, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			109
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1232, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			110
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1233, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			111
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1300, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			112
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1301, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			113
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1302, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			114
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1303, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			115
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1310, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			116
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1311, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			117
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1312, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			118
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1313, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			119
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1320, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			120
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1321, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			121
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1322, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			122
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1323, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			123
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1330, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			124
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1331, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			125
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1332, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			126
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_1333, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			127
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2000, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			128
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2001, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			129
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2002, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			130
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2003, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			131
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2010, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			132
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2011, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			133
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2012, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			134
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2013, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			135
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2020, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			136
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2021, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			137
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2022, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			138
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2023, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			139
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2030, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			140
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2031, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			141
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2032, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			142
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2033, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			143
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2100, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			144
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2101, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			145
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2102, xmmword, < > ;InXmm_A:xmmword 
			pshuflw				xmm0,			xmm0,			146
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2103, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			147
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2110, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			148
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2111, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			149
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2112, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			150
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2113, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			151
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2120, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			152
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2121, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			153
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2122, xmmword, < > ;InXmm_A:xmmword 
			pshuflw				xmm0,			xmm0,			154
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2123, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			155
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2130, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			156
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2131, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			157
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2132, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			158
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2133, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			159
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2200, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			160
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2201, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			161
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2202, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			162
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2203, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			163
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2210, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			164
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2211, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			165
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2212, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			166
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2213, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			167
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2220, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			168
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2221, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			169
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2222, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			170
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2223, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			171
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2230, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			172
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2231, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			173
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2232, xmmword, < > ;InXmm_A:xmmword 
			pshuflw				xmm0,			xmm0,			174
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2233, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			175
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2300, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			176
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2301, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			177
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2302, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			178
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2303, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			179
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2310, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			180
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2311, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			181
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2312, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			182
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2313, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			183
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2320, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			184
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2321, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			185
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2322, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			186
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2323, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			187
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2330, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			188
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2331, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			189
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2332, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			190
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_2333, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			191
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3000, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			192
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3001, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			193
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3002, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			194
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3003, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			195
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3010, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			196
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3011, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			197
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3012, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			198
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3013, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			199
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3020, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			200
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3021, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			201
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3022, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			202
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3023, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			203
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3030, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			204
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3031, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			205
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3032, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			206
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3033, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			207
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3100, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			208
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3101, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			209
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3102, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			210
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3103, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			211
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3110, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			212
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3111, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			213
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3112, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			214
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3113, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			215
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3120, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			216
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3121, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			217
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3122, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			218
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3123, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			219
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3130, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			220
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3131, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			221
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3132, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			222
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3133, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			223
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3200, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			224
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3201, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			225
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3202, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			226
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3203, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			227
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3210, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			228
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3211, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			229
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3212, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			230
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3213, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			231
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3220, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			232
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3221, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			233
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3222, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			234
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3223, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			235
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3230, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			236
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3231, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			237
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3232, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			238
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3233, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			239
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3300, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			240
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3301, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			241
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3302, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			242
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3303, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			243
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3310, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			244
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3311, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			245
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3312, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			246
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3313, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			247
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3320, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			248
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3321, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			249
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3322, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			250
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3323, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			251
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3330, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			252
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3331, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			253
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3332, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			254
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16_3333, xmmword, < > ;InXmm_A:xmmword
			pshuflw				xmm0,			xmm0,			255
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shufflelo_epi16, xmmword, < > ;InXmm_A:xmmword, _Imm8:dword
				
		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128ishufloepi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128ishufloepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128ishufloepi16_0 label size_t
			pshuflw				xmm0,			xmm0,			0
			ret
		_m128ishufloepi16_1 label size_t
			pshuflw				xmm0,			xmm0,			1
			ret
		_m128ishufloepi16_2 label size_t
			pshuflw				xmm0,			xmm0,			2
			ret
		_m128ishufloepi16_3 label size_t
			pshuflw				xmm0,			xmm0,			3
			ret
		_m128ishufloepi16_4 label size_t
			pshuflw				xmm0,			xmm0,			4
			ret
		_m128ishufloepi16_5 label size_t
			pshuflw				xmm0,			xmm0,			5
			ret
		_m128ishufloepi16_6 label size_t
			pshuflw				xmm0,			xmm0,			6
			ret
		_m128ishufloepi16_7 label size_t
			pshuflw				xmm0,			xmm0,			7
			ret
		_m128ishufloepi16_8 label size_t
			pshuflw				xmm0,			xmm0,			8
			ret
		_m128ishufloepi16_9 label size_t
			pshuflw				xmm0,			xmm0,			9
			ret
		_m128ishufloepi16_10 label size_t
			pshuflw				xmm0,			xmm0,			10
			ret
		_m128ishufloepi16_11 label size_t
			pshuflw				xmm0,			xmm0,			11
			ret
		_m128ishufloepi16_12 label size_t
			pshuflw				xmm0,			xmm0,			12
			ret
		_m128ishufloepi16_13 label size_t
			pshuflw				xmm0,			xmm0,			13
			ret
		_m128ishufloepi16_14 label size_t
			pshuflw				xmm0,			xmm0,			14
			ret
		_m128ishufloepi16_15 label size_t
			pshuflw				xmm0,			xmm0,			15
			ret
		_m128ishufloepi16_16 label size_t
			pshuflw				xmm0,			xmm0,			16
			ret
		_m128ishufloepi16_17 label size_t
			pshuflw				xmm0,			xmm0,			17
			ret
		_m128ishufloepi16_18 label size_t
			pshuflw				xmm0,			xmm0,			18
			ret
		_m128ishufloepi16_19 label size_t
			pshuflw				xmm0,			xmm0,			19
			ret
		_m128ishufloepi16_20 label size_t
			pshuflw				xmm0,			xmm0,			20
			ret
		_m128ishufloepi16_21 label size_t
			pshuflw				xmm0,			xmm0,			21
			ret
		_m128ishufloepi16_22 label size_t
			pshuflw				xmm0,			xmm0,			22
			ret
		_m128ishufloepi16_23 label size_t
			pshuflw				xmm0,			xmm0,			23
			ret
		_m128ishufloepi16_24 label size_t
			pshuflw				xmm0,			xmm0,			24
			ret
		_m128ishufloepi16_25 label size_t
			pshuflw				xmm0,			xmm0,			25
			ret
		_m128ishufloepi16_26 label size_t
			pshuflw				xmm0,			xmm0,			26
			ret
		_m128ishufloepi16_27 label size_t
			pshuflw				xmm0,			xmm0,			27
			ret
		_m128ishufloepi16_28 label size_t
			pshuflw				xmm0,			xmm0,			28
			ret
		_m128ishufloepi16_29 label size_t
			pshuflw				xmm0,			xmm0,			29
			ret
		_m128ishufloepi16_30 label size_t
			pshuflw				xmm0,			xmm0,			30
			ret
		_m128ishufloepi16_31 label size_t
			pshuflw				xmm0,			xmm0,			31
			ret
		_m128ishufloepi16_32 label size_t
			pshuflw				xmm0,			xmm0,			32
			ret
		_m128ishufloepi16_33 label size_t
			pshuflw				xmm0,			xmm0,			33
			ret
		_m128ishufloepi16_34 label size_t
			pshuflw				xmm0,			xmm0,			34
			ret
		_m128ishufloepi16_35 label size_t
			pshuflw				xmm0,			xmm0,			35
			ret
		_m128ishufloepi16_36 label size_t
			pshuflw				xmm0,			xmm0,			36
			ret
		_m128ishufloepi16_37 label size_t
			pshuflw				xmm0,			xmm0,			37
			ret
		_m128ishufloepi16_38 label size_t
			pshuflw				xmm0,			xmm0,			38
			ret
		_m128ishufloepi16_39 label size_t
			pshuflw				xmm0,			xmm0,			39
			ret
		_m128ishufloepi16_40 label size_t
			pshuflw				xmm0,			xmm0,			40
			ret
		_m128ishufloepi16_41 label size_t
			pshuflw				xmm0,			xmm0,			41
			ret
		_m128ishufloepi16_42 label size_t
			pshuflw				xmm0,			xmm0,			42
			ret
		_m128ishufloepi16_43 label size_t
			pshuflw				xmm0,			xmm0,			43
			ret
		_m128ishufloepi16_44 label size_t
			pshuflw				xmm0,			xmm0,			44
			ret
		_m128ishufloepi16_45 label size_t
			pshuflw				xmm0,			xmm0,			45
			ret
		_m128ishufloepi16_46 label size_t
			pshuflw				xmm0,			xmm0,			46
			ret
		_m128ishufloepi16_47 label size_t
			pshuflw				xmm0,			xmm0,			47
			ret
		_m128ishufloepi16_48 label size_t
			pshuflw				xmm0,			xmm0,			48
			ret
		_m128ishufloepi16_49 label size_t
			pshuflw				xmm0,			xmm0,			49
			ret
		_m128ishufloepi16_50 label size_t
			pshuflw				xmm0,			xmm0,			50
			ret
		_m128ishufloepi16_51 label size_t
			pshuflw				xmm0,			xmm0,			51
			ret
		_m128ishufloepi16_52 label size_t
			pshuflw				xmm0,			xmm0,			52
			ret
		_m128ishufloepi16_53 label size_t
			pshuflw				xmm0,			xmm0,			53
			ret
		_m128ishufloepi16_54 label size_t
			pshuflw				xmm0,			xmm0,			54
			ret
		_m128ishufloepi16_55 label size_t
			pshuflw				xmm0,			xmm0,			55
			ret
		_m128ishufloepi16_56 label size_t
			pshuflw				xmm0,			xmm0,			56
			ret
		_m128ishufloepi16_57 label size_t
			pshuflw				xmm0,			xmm0,			57
			ret
		_m128ishufloepi16_58 label size_t
			pshuflw				xmm0,			xmm0,			58
			ret
		_m128ishufloepi16_59 label size_t
			pshuflw				xmm0,			xmm0,			59
			ret
		_m128ishufloepi16_60 label size_t
			pshuflw				xmm0,			xmm0,			60
			ret
		_m128ishufloepi16_61 label size_t
			pshuflw				xmm0,			xmm0,			61
			ret
		_m128ishufloepi16_62 label size_t
			pshuflw				xmm0,			xmm0,			62
			ret
		_m128ishufloepi16_63 label size_t
			pshuflw				xmm0,			xmm0,			63
			ret
		_m128ishufloepi16_64 label size_t
			pshuflw				xmm0,			xmm0,			64
			ret
		_m128ishufloepi16_65 label size_t
			pshuflw				xmm0,			xmm0,			65
			ret
		_m128ishufloepi16_66 label size_t
			pshuflw				xmm0,			xmm0,			66
			ret
		_m128ishufloepi16_67 label size_t
			pshuflw				xmm0,			xmm0,			67
			ret
		_m128ishufloepi16_68 label size_t
			pshuflw				xmm0,			xmm0,			68
			ret
		_m128ishufloepi16_69 label size_t
			pshuflw				xmm0,			xmm0,			69
			ret
		_m128ishufloepi16_70 label size_t
			pshuflw				xmm0,			xmm0,			70
			ret
		_m128ishufloepi16_71 label size_t
			pshuflw				xmm0,			xmm0,			71
			ret
		_m128ishufloepi16_72 label size_t
			pshuflw				xmm0,			xmm0,			72
			ret
		_m128ishufloepi16_73 label size_t
			pshuflw				xmm0,			xmm0,			73
			ret
		_m128ishufloepi16_74 label size_t
			pshuflw				xmm0,			xmm0,			74
			ret
		_m128ishufloepi16_75 label size_t
			pshuflw				xmm0,			xmm0,			75
			ret
		_m128ishufloepi16_76 label size_t
			pshuflw				xmm0,			xmm0,			76
			ret
		_m128ishufloepi16_77 label size_t
			pshuflw				xmm0,			xmm0,			77
			ret
		_m128ishufloepi16_78 label size_t
			pshuflw				xmm0,			xmm0,			78
			ret
		_m128ishufloepi16_79 label size_t
			pshuflw				xmm0,			xmm0,			79
			ret
		_m128ishufloepi16_80 label size_t
			pshuflw				xmm0,			xmm0,			80
			ret
		_m128ishufloepi16_81 label size_t
			pshuflw				xmm0,			xmm0,			81
			ret
		_m128ishufloepi16_82 label size_t
			pshuflw				xmm0,			xmm0,			82
			ret
		_m128ishufloepi16_83 label size_t
			pshuflw				xmm0,			xmm0,			83
			ret
		_m128ishufloepi16_84 label size_t
			pshuflw				xmm0,			xmm0,			84
			ret
		_m128ishufloepi16_85 label size_t
			pshuflw				xmm0,			xmm0,			85
			ret
		_m128ishufloepi16_86 label size_t
			pshuflw				xmm0,			xmm0,			86
			ret
		_m128ishufloepi16_87 label size_t
			pshuflw				xmm0,			xmm0,			87
			ret
		_m128ishufloepi16_88 label size_t
			pshuflw				xmm0,			xmm0,			88
			ret
		_m128ishufloepi16_89 label size_t
			pshuflw				xmm0,			xmm0,			89
			ret
		_m128ishufloepi16_90 label size_t
			pshuflw				xmm0,			xmm0,			90
			ret
		_m128ishufloepi16_91 label size_t
			pshuflw				xmm0,			xmm0,			91
			ret
		_m128ishufloepi16_92 label size_t
			pshuflw				xmm0,			xmm0,			92
			ret
		_m128ishufloepi16_93 label size_t
			pshuflw				xmm0,			xmm0,			93
			ret
		_m128ishufloepi16_94 label size_t
			pshuflw				xmm0,			xmm0,			94
			ret
		_m128ishufloepi16_95 label size_t
			pshuflw				xmm0,			xmm0,			95
			ret
		_m128ishufloepi16_96 label size_t
			pshuflw				xmm0,			xmm0,			96
			ret
		_m128ishufloepi16_97 label size_t
			pshuflw				xmm0,			xmm0,			97
			ret
		_m128ishufloepi16_98 label size_t
			pshuflw				xmm0,			xmm0,			98
			ret
		_m128ishufloepi16_99 label size_t
			pshuflw				xmm0,			xmm0,			99
			ret
		_m128ishufloepi16_100 label size_t
			pshuflw				xmm0,			xmm0,			100
			ret
		_m128ishufloepi16_101 label size_t
			pshuflw				xmm0,			xmm0,			101
			ret
		_m128ishufloepi16_102 label size_t
			pshuflw				xmm0,			xmm0,			102
			ret
		_m128ishufloepi16_103 label size_t
			pshuflw				xmm0,			xmm0,			103
			ret
		_m128ishufloepi16_104 label size_t
			pshuflw				xmm0,			xmm0,			104
			ret
		_m128ishufloepi16_105 label size_t
			pshuflw				xmm0,			xmm0,			105
			ret
		_m128ishufloepi16_106 label size_t
			pshuflw				xmm0,			xmm0,			106
			ret
		_m128ishufloepi16_107 label size_t
			pshuflw				xmm0,			xmm0,			107
			ret
		_m128ishufloepi16_108 label size_t
			pshuflw				xmm0,			xmm0,			108
			ret
		_m128ishufloepi16_109 label size_t
			pshuflw				xmm0,			xmm0,			109
			ret
		_m128ishufloepi16_110 label size_t
			pshuflw				xmm0,			xmm0,			110
			ret
		_m128ishufloepi16_111 label size_t
			pshuflw				xmm0,			xmm0,			111
			ret
		_m128ishufloepi16_112 label size_t
			pshuflw				xmm0,			xmm0,			112
			ret
		_m128ishufloepi16_113 label size_t
			pshuflw				xmm0,			xmm0,			113
			ret
		_m128ishufloepi16_114 label size_t
			pshuflw				xmm0,			xmm0,			114
			ret
		_m128ishufloepi16_115 label size_t
			pshuflw				xmm0,			xmm0,			115
			ret
		_m128ishufloepi16_116 label size_t
			pshuflw				xmm0,			xmm0,			116
			ret
		_m128ishufloepi16_117 label size_t
			pshuflw				xmm0,			xmm0,			117
			ret
		_m128ishufloepi16_118 label size_t
			pshuflw				xmm0,			xmm0,			118
			ret
		_m128ishufloepi16_119 label size_t
			pshuflw				xmm0,			xmm0,			119
			ret
		_m128ishufloepi16_120 label size_t
			pshuflw				xmm0,			xmm0,			120
			ret
		_m128ishufloepi16_121 label size_t
			pshuflw				xmm0,			xmm0,			121
			ret
		_m128ishufloepi16_122 label size_t
			pshuflw				xmm0,			xmm0,			122
			ret
		_m128ishufloepi16_123 label size_t
			pshuflw				xmm0,			xmm0,			123
			ret
		_m128ishufloepi16_124 label size_t
			pshuflw				xmm0,			xmm0,			124
			ret
		_m128ishufloepi16_125 label size_t
			pshuflw				xmm0,			xmm0,			125
			ret
		_m128ishufloepi16_126 label size_t
			pshuflw				xmm0,			xmm0,			126
			ret
		_m128ishufloepi16_127 label size_t
			pshuflw				xmm0,			xmm0,			127
			ret
		_m128ishufloepi16_128 label size_t
			pshuflw				xmm0,			xmm0,			128
			ret
		_m128ishufloepi16_129 label size_t
			pshuflw				xmm0,			xmm0,			129
			ret
		_m128ishufloepi16_130 label size_t
			pshuflw				xmm0,			xmm0,			130
			ret
		_m128ishufloepi16_131 label size_t
			pshuflw				xmm0,			xmm0,			131
			ret
		_m128ishufloepi16_132 label size_t
			pshuflw				xmm0,			xmm0,			132
			ret
		_m128ishufloepi16_133 label size_t
			pshuflw				xmm0,			xmm0,			133
			ret
		_m128ishufloepi16_134 label size_t
			pshuflw				xmm0,			xmm0,			134
			ret
		_m128ishufloepi16_135 label size_t
			pshuflw				xmm0,			xmm0,			135
			ret
		_m128ishufloepi16_136 label size_t
			pshuflw				xmm0,			xmm0,			136
			ret
		_m128ishufloepi16_137 label size_t
			pshuflw				xmm0,			xmm0,			137
			ret
		_m128ishufloepi16_138 label size_t
			pshuflw				xmm0,			xmm0,			138
			ret
		_m128ishufloepi16_139 label size_t
			pshuflw				xmm0,			xmm0,			139
			ret
		_m128ishufloepi16_140 label size_t
			pshuflw				xmm0,			xmm0,			140
			ret
		_m128ishufloepi16_141 label size_t
			pshuflw				xmm0,			xmm0,			141
			ret
		_m128ishufloepi16_142 label size_t
			pshuflw				xmm0,			xmm0,			142
			ret
		_m128ishufloepi16_143 label size_t
			pshuflw				xmm0,			xmm0,			143
			ret
		_m128ishufloepi16_144 label size_t
			pshuflw				xmm0,			xmm0,			144
			ret
		_m128ishufloepi16_145 label size_t
			pshuflw				xmm0,			xmm0,			145
			ret
		_m128ishufloepi16_146 label size_t
			pshuflw				xmm0,			xmm0,			146
			ret
		_m128ishufloepi16_147 label size_t
			pshuflw				xmm0,			xmm0,			147
			ret
		_m128ishufloepi16_148 label size_t
			pshuflw				xmm0,			xmm0,			148
			ret
		_m128ishufloepi16_149 label size_t
			pshuflw				xmm0,			xmm0,			149
			ret
		_m128ishufloepi16_150 label size_t
			pshuflw				xmm0,			xmm0,			150
			ret
		_m128ishufloepi16_151 label size_t
			pshuflw				xmm0,			xmm0,			151
			ret
		_m128ishufloepi16_152 label size_t
			pshuflw				xmm0,			xmm0,			152
			ret
		_m128ishufloepi16_153 label size_t
			pshuflw				xmm0,			xmm0,			153
			ret
		_m128ishufloepi16_154 label size_t
			pshuflw				xmm0,			xmm0,			154
			ret
		_m128ishufloepi16_155 label size_t
			pshuflw				xmm0,			xmm0,			155
			ret
		_m128ishufloepi16_156 label size_t
			pshuflw				xmm0,			xmm0,			156
			ret
		_m128ishufloepi16_157 label size_t
			pshuflw				xmm0,			xmm0,			157
			ret
		_m128ishufloepi16_158 label size_t
			pshuflw				xmm0,			xmm0,			158
			ret
		_m128ishufloepi16_159 label size_t
			pshuflw				xmm0,			xmm0,			159
			ret
		_m128ishufloepi16_160 label size_t
			pshuflw				xmm0,			xmm0,			160
			ret
		_m128ishufloepi16_161 label size_t
			pshuflw				xmm0,			xmm0,			161
			ret
		_m128ishufloepi16_162 label size_t
			pshuflw				xmm0,			xmm0,			162
			ret
		_m128ishufloepi16_163 label size_t
			pshuflw				xmm0,			xmm0,			163
			ret
		_m128ishufloepi16_164 label size_t
			pshuflw				xmm0,			xmm0,			164
			ret
		_m128ishufloepi16_165 label size_t
			pshuflw				xmm0,			xmm0,			165
			ret
		_m128ishufloepi16_166 label size_t
			pshuflw				xmm0,			xmm0,			166
			ret
		_m128ishufloepi16_167 label size_t
			pshuflw				xmm0,			xmm0,			167
			ret
		_m128ishufloepi16_168 label size_t
			pshuflw				xmm0,			xmm0,			168
			ret
		_m128ishufloepi16_169 label size_t
			pshuflw				xmm0,			xmm0,			169
			ret
		_m128ishufloepi16_170 label size_t
			pshuflw				xmm0,			xmm0,			170
			ret
		_m128ishufloepi16_171 label size_t
			pshuflw				xmm0,			xmm0,			171
			ret
		_m128ishufloepi16_172 label size_t
			pshuflw				xmm0,			xmm0,			172
			ret
		_m128ishufloepi16_173 label size_t
			pshuflw				xmm0,			xmm0,			173
			ret
		_m128ishufloepi16_174 label size_t
			pshuflw				xmm0,			xmm0,			174
			ret
		_m128ishufloepi16_175 label size_t
			pshuflw				xmm0,			xmm0,			175
			ret
		_m128ishufloepi16_176 label size_t
			pshuflw				xmm0,			xmm0,			176
			ret
		_m128ishufloepi16_177 label size_t
			pshuflw				xmm0,			xmm0,			177
			ret
		_m128ishufloepi16_178 label size_t
			pshuflw				xmm0,			xmm0,			178
			ret
		_m128ishufloepi16_179 label size_t
			pshuflw				xmm0,			xmm0,			179
			ret
		_m128ishufloepi16_180 label size_t
			pshuflw				xmm0,			xmm0,			180
			ret
		_m128ishufloepi16_181 label size_t
			pshuflw				xmm0,			xmm0,			181
			ret
		_m128ishufloepi16_182 label size_t
			pshuflw				xmm0,			xmm0,			182
			ret
		_m128ishufloepi16_183 label size_t
			pshuflw				xmm0,			xmm0,			183
			ret
		_m128ishufloepi16_184 label size_t
			pshuflw				xmm0,			xmm0,			184
			ret
		_m128ishufloepi16_185 label size_t
			pshuflw				xmm0,			xmm0,			185
			ret
		_m128ishufloepi16_186 label size_t
			pshuflw				xmm0,			xmm0,			186
			ret
		_m128ishufloepi16_187 label size_t
			pshuflw				xmm0,			xmm0,			187
			ret
		_m128ishufloepi16_188 label size_t
			pshuflw				xmm0,			xmm0,			188
			ret
		_m128ishufloepi16_189 label size_t
			pshuflw				xmm0,			xmm0,			189
			ret
		_m128ishufloepi16_190 label size_t
			pshuflw				xmm0,			xmm0,			190
			ret
		_m128ishufloepi16_191 label size_t
			pshuflw				xmm0,			xmm0,			191
			ret
		_m128ishufloepi16_192 label size_t
			pshuflw				xmm0,			xmm0,			192
			ret
		_m128ishufloepi16_193 label size_t
			pshuflw				xmm0,			xmm0,			193
			ret
		_m128ishufloepi16_194 label size_t
			pshuflw				xmm0,			xmm0,			194
			ret
		_m128ishufloepi16_195 label size_t
			pshuflw				xmm0,			xmm0,			195
			ret
		_m128ishufloepi16_196 label size_t
			pshuflw				xmm0,			xmm0,			196
			ret
		_m128ishufloepi16_197 label size_t
			pshuflw				xmm0,			xmm0,			197
			ret
		_m128ishufloepi16_198 label size_t
			pshuflw				xmm0,			xmm0,			198
			ret
		_m128ishufloepi16_199 label size_t
			pshuflw				xmm0,			xmm0,			199
			ret
		_m128ishufloepi16_200 label size_t
			pshuflw				xmm0,			xmm0,			200
			ret
		_m128ishufloepi16_201 label size_t
			pshuflw				xmm0,			xmm0,			201
			ret
		_m128ishufloepi16_202 label size_t
			pshuflw				xmm0,			xmm0,			202
			ret
		_m128ishufloepi16_203 label size_t
			pshuflw				xmm0,			xmm0,			203
			ret
		_m128ishufloepi16_204 label size_t
			pshuflw				xmm0,			xmm0,			204
			ret
		_m128ishufloepi16_205 label size_t
			pshuflw				xmm0,			xmm0,			205
			ret
		_m128ishufloepi16_206 label size_t
			pshuflw				xmm0,			xmm0,			206
			ret
		_m128ishufloepi16_207 label size_t
			pshuflw				xmm0,			xmm0,			207
			ret
		_m128ishufloepi16_208 label size_t
			pshuflw				xmm0,			xmm0,			208
			ret
		_m128ishufloepi16_209 label size_t
			pshuflw				xmm0,			xmm0,			209
			ret
		_m128ishufloepi16_210 label size_t
			pshuflw				xmm0,			xmm0,			210
			ret
		_m128ishufloepi16_211 label size_t
			pshuflw				xmm0,			xmm0,			211
			ret
		_m128ishufloepi16_212 label size_t
			pshuflw				xmm0,			xmm0,			212
			ret
		_m128ishufloepi16_213 label size_t
			pshuflw				xmm0,			xmm0,			213
			ret
		_m128ishufloepi16_214 label size_t
			pshuflw				xmm0,			xmm0,			214
			ret
		_m128ishufloepi16_215 label size_t
			pshuflw				xmm0,			xmm0,			215
			ret
		_m128ishufloepi16_216 label size_t
			pshuflw				xmm0,			xmm0,			216
			ret
		_m128ishufloepi16_217 label size_t
			pshuflw				xmm0,			xmm0,			217
			ret
		_m128ishufloepi16_218 label size_t
			pshuflw				xmm0,			xmm0,			218
			ret
		_m128ishufloepi16_219 label size_t
			pshuflw				xmm0,			xmm0,			219
			ret
		_m128ishufloepi16_220 label size_t
			pshuflw				xmm0,			xmm0,			220
			ret
		_m128ishufloepi16_221 label size_t
			pshuflw				xmm0,			xmm0,			221
			ret
		_m128ishufloepi16_222 label size_t
			pshuflw				xmm0,			xmm0,			222
			ret
		_m128ishufloepi16_223 label size_t
			pshuflw				xmm0,			xmm0,			223
			ret
		_m128ishufloepi16_224 label size_t
			pshuflw				xmm0,			xmm0,			224
			ret
		_m128ishufloepi16_225 label size_t
			pshuflw				xmm0,			xmm0,			225
			ret
		_m128ishufloepi16_226 label size_t
			pshuflw				xmm0,			xmm0,			226
			ret
		_m128ishufloepi16_227 label size_t
			pshuflw				xmm0,			xmm0,			227
			ret
		_m128ishufloepi16_228 label size_t
			pshuflw				xmm0,			xmm0,			228
			ret
		_m128ishufloepi16_229 label size_t
			pshuflw				xmm0,			xmm0,			229
			ret
		_m128ishufloepi16_230 label size_t
			pshuflw				xmm0,			xmm0,			230
			ret
		_m128ishufloepi16_231 label size_t
			pshuflw				xmm0,			xmm0,			231
			ret
		_m128ishufloepi16_232 label size_t
			pshuflw				xmm0,			xmm0,			232
			ret
		_m128ishufloepi16_233 label size_t
			pshuflw				xmm0,			xmm0,			233
			ret
		_m128ishufloepi16_234 label size_t
			pshuflw				xmm0,			xmm0,			234
			ret
		_m128ishufloepi16_235 label size_t
			pshuflw				xmm0,			xmm0,			235
			ret
		_m128ishufloepi16_236 label size_t
			pshuflw				xmm0,			xmm0,			236
			ret
		_m128ishufloepi16_237 label size_t
			pshuflw				xmm0,			xmm0,			237
			ret
		_m128ishufloepi16_238 label size_t
			pshuflw				xmm0,			xmm0,			238
			ret
		_m128ishufloepi16_239 label size_t
			pshuflw				xmm0,			xmm0,			239
			ret
		_m128ishufloepi16_240 label size_t
			pshuflw				xmm0,			xmm0,			240
			ret
		_m128ishufloepi16_241 label size_t
			pshuflw				xmm0,			xmm0,			241
			ret
		_m128ishufloepi16_242 label size_t
			pshuflw				xmm0,			xmm0,			242
			ret
		_m128ishufloepi16_243 label size_t
			pshuflw				xmm0,			xmm0,			243
			ret
		_m128ishufloepi16_244 label size_t
			pshuflw				xmm0,			xmm0,			244
			ret
		_m128ishufloepi16_245 label size_t
			pshuflw				xmm0,			xmm0,			245
			ret
		_m128ishufloepi16_246 label size_t
			pshuflw				xmm0,			xmm0,			246
			ret
		_m128ishufloepi16_247 label size_t
			pshuflw				xmm0,			xmm0,			247
			ret
		_m128ishufloepi16_248 label size_t
			pshuflw				xmm0,			xmm0,			248
			ret
		_m128ishufloepi16_249 label size_t
			pshuflw				xmm0,			xmm0,			249
			ret
		_m128ishufloepi16_250 label size_t
			pshuflw				xmm0,			xmm0,			250
			ret
		_m128ishufloepi16_251 label size_t
			pshuflw				xmm0,			xmm0,			251
			ret
		_m128ishufloepi16_252 label size_t
			pshuflw				xmm0,			xmm0,			252
			ret
		_m128ishufloepi16_253 label size_t
			pshuflw				xmm0,			xmm0,			253
			ret
		_m128ishufloepi16_254 label size_t
			pshuflw				xmm0,			xmm0,			254
			ret
		_m128ishufloepi16_255 label size_t
			pshuflw				xmm0,			xmm0,			255
			ret
		;.endif
		
_uXm_func_end

endif ;__MIC__

	end
