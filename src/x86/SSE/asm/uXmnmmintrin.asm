
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	option switchstyle:asmstyle

	include uXmsseintrin.inc
	
	.data

	.const
	
	__align_size_t
	_m128icmpistrmjmptable isize_t	offset _m128icmpistrm_0, offset _m128icmpistrm_1, offset _m128icmpistrm_2, offset _m128icmpistrm_3, offset _m128icmpistrm_4, \
									offset _m128icmpistrm_5, offset _m128icmpistrm_6, offset _m128icmpistrm_7, offset _m128icmpistrm_8, offset _m128icmpistrm_9, \
									offset _m128icmpistrm_10, offset _m128icmpistrm_11, offset _m128icmpistrm_12, offset _m128icmpistrm_13, offset _m128icmpistrm_14, \
									offset _m128icmpistrm_15, offset _m128icmpistrm_16, offset _m128icmpistrm_17, offset _m128icmpistrm_18, offset _m128icmpistrm_19, \
									offset _m128icmpistrm_20, offset _m128icmpistrm_21, offset _m128icmpistrm_22, offset _m128icmpistrm_23, offset _m128icmpistrm_24, \
									offset _m128icmpistrm_25, offset _m128icmpistrm_26, offset _m128icmpistrm_27, offset _m128icmpistrm_28, offset _m128icmpistrm_29, \
									offset _m128icmpistrm_30, offset _m128icmpistrm_31, offset _m128icmpistrm_32, offset _m128icmpistrm_33, offset _m128icmpistrm_34, \
									offset _m128icmpistrm_35, offset _m128icmpistrm_36, offset _m128icmpistrm_37, offset _m128icmpistrm_38, offset _m128icmpistrm_39, \
									offset _m128icmpistrm_40, offset _m128icmpistrm_41, offset _m128icmpistrm_42, offset _m128icmpistrm_43, offset _m128icmpistrm_44, \
									offset _m128icmpistrm_45, offset _m128icmpistrm_46, offset _m128icmpistrm_47, offset _m128icmpistrm_48, offset _m128icmpistrm_49, \
									offset _m128icmpistrm_50, offset _m128icmpistrm_51, offset _m128icmpistrm_52, offset _m128icmpistrm_53, offset _m128icmpistrm_54, \
									offset _m128icmpistrm_55, offset _m128icmpistrm_56, offset _m128icmpistrm_57, offset _m128icmpistrm_58, offset _m128icmpistrm_59, \
									offset _m128icmpistrm_60, offset _m128icmpistrm_61, offset _m128icmpistrm_62, offset _m128icmpistrm_63, offset _m128icmpistrm_64, \
									offset _m128icmpistrm_65, offset _m128icmpistrm_66, offset _m128icmpistrm_67, offset _m128icmpistrm_68, offset _m128icmpistrm_69, \
									offset _m128icmpistrm_70, offset _m128icmpistrm_71, offset _m128icmpistrm_72, offset _m128icmpistrm_73, offset _m128icmpistrm_74, \
									offset _m128icmpistrm_75, offset _m128icmpistrm_76, offset _m128icmpistrm_77, offset _m128icmpistrm_78, offset _m128icmpistrm_79, \
									offset _m128icmpistrm_80, offset _m128icmpistrm_81, offset _m128icmpistrm_82, offset _m128icmpistrm_83, offset _m128icmpistrm_84, \
									offset _m128icmpistrm_85, offset _m128icmpistrm_86, offset _m128icmpistrm_87, offset _m128icmpistrm_88, offset _m128icmpistrm_89, \
									offset _m128icmpistrm_90, offset _m128icmpistrm_91, offset _m128icmpistrm_92, offset _m128icmpistrm_93, offset _m128icmpistrm_94, \
									offset _m128icmpistrm_95, offset _m128icmpistrm_96, offset _m128icmpistrm_97, offset _m128icmpistrm_98, offset _m128icmpistrm_99, \
									offset _m128icmpistrm_100, offset _m128icmpistrm_101, offset _m128icmpistrm_102, offset _m128icmpistrm_103, offset _m128icmpistrm_104, \
									offset _m128icmpistrm_105, offset _m128icmpistrm_106, offset _m128icmpistrm_107, offset _m128icmpistrm_108, offset _m128icmpistrm_109, \
									offset _m128icmpistrm_110, offset _m128icmpistrm_111, offset _m128icmpistrm_112, offset _m128icmpistrm_113, offset _m128icmpistrm_114, \
									offset _m128icmpistrm_115, offset _m128icmpistrm_116, offset _m128icmpistrm_117, offset _m128icmpistrm_118, offset _m128icmpistrm_119, \
									offset _m128icmpistrm_120, offset _m128icmpistrm_121, offset _m128icmpistrm_122, offset _m128icmpistrm_123, offset _m128icmpistrm_124, \
									offset _m128icmpistrm_125, offset _m128icmpistrm_126, offset _m128icmpistrm_127
						
	__align_size_t
	_m128icmpistrijmptable isize_t	offset _m128icmpistri_0, offset _m128icmpistri_1, offset _m128icmpistri_2, offset _m128icmpistri_3, offset _m128icmpistri_4, \
									offset _m128icmpistri_5, offset _m128icmpistri_6, offset _m128icmpistri_7, offset _m128icmpistri_8, offset _m128icmpistri_9, \
									offset _m128icmpistri_10, offset _m128icmpistri_11, offset _m128icmpistri_12, offset _m128icmpistri_13, offset _m128icmpistri_14, \
									offset _m128icmpistri_15, offset _m128icmpistri_16, offset _m128icmpistri_17, offset _m128icmpistri_18, offset _m128icmpistri_19, \
									offset _m128icmpistri_20, offset _m128icmpistri_21, offset _m128icmpistri_22, offset _m128icmpistri_23, offset _m128icmpistri_24, \
									offset _m128icmpistri_25, offset _m128icmpistri_26, offset _m128icmpistri_27, offset _m128icmpistri_28, offset _m128icmpistri_29, \
									offset _m128icmpistri_30, offset _m128icmpistri_31, offset _m128icmpistri_32, offset _m128icmpistri_33, offset _m128icmpistri_34, \
									offset _m128icmpistri_35, offset _m128icmpistri_36, offset _m128icmpistri_37, offset _m128icmpistri_38, offset _m128icmpistri_39, \
									offset _m128icmpistri_40, offset _m128icmpistri_41, offset _m128icmpistri_42, offset _m128icmpistri_43, offset _m128icmpistri_44, \
									offset _m128icmpistri_45, offset _m128icmpistri_46, offset _m128icmpistri_47, offset _m128icmpistri_48, offset _m128icmpistri_49, \
									offset _m128icmpistri_50, offset _m128icmpistri_51, offset _m128icmpistri_52, offset _m128icmpistri_53, offset _m128icmpistri_54, \
									offset _m128icmpistri_55, offset _m128icmpistri_56, offset _m128icmpistri_57, offset _m128icmpistri_58, offset _m128icmpistri_59, \
									offset _m128icmpistri_60, offset _m128icmpistri_61, offset _m128icmpistri_62, offset _m128icmpistri_63, offset _m128icmpistri_64, \
									offset _m128icmpistri_65, offset _m128icmpistri_66, offset _m128icmpistri_67, offset _m128icmpistri_68, offset _m128icmpistri_69, \
									offset _m128icmpistri_70, offset _m128icmpistri_71, offset _m128icmpistri_72, offset _m128icmpistri_73, offset _m128icmpistri_74, \
									offset _m128icmpistri_75, offset _m128icmpistri_76, offset _m128icmpistri_77, offset _m128icmpistri_78, offset _m128icmpistri_79, \
									offset _m128icmpistri_80, offset _m128icmpistri_81, offset _m128icmpistri_82, offset _m128icmpistri_83, offset _m128icmpistri_84, \
									offset _m128icmpistri_85, offset _m128icmpistri_86, offset _m128icmpistri_87, offset _m128icmpistri_88, offset _m128icmpistri_89, \
									offset _m128icmpistri_90, offset _m128icmpistri_91, offset _m128icmpistri_92, offset _m128icmpistri_93, offset _m128icmpistri_94, \
									offset _m128icmpistri_95, offset _m128icmpistri_96, offset _m128icmpistri_97, offset _m128icmpistri_98, offset _m128icmpistri_99, \
									offset _m128icmpistri_100, offset _m128icmpistri_101, offset _m128icmpistri_102, offset _m128icmpistri_103, offset _m128icmpistri_104, \
									offset _m128icmpistri_105, offset _m128icmpistri_106, offset _m128icmpistri_107, offset _m128icmpistri_108, offset _m128icmpistri_109, \
									offset _m128icmpistri_110, offset _m128icmpistri_111, offset _m128icmpistri_112, offset _m128icmpistri_113, offset _m128icmpistri_114, \
									offset _m128icmpistri_115, offset _m128icmpistri_116, offset _m128icmpistri_117, offset _m128icmpistri_118, offset _m128icmpistri_119, \
									offset _m128icmpistri_120, offset _m128icmpistri_121, offset _m128icmpistri_122, offset _m128icmpistri_123, offset _m128icmpistri_124, \
									offset _m128icmpistri_125, offset _m128icmpistri_126, offset _m128icmpistri_127

	__align_size_t
	_m128icmpestrmjmptable isize_t	offset _m128icmpestrm_0, offset _m128icmpestrm_1, offset _m128icmpestrm_2, offset _m128icmpestrm_3, offset _m128icmpestrm_4, \
									offset _m128icmpestrm_5, offset _m128icmpestrm_6, offset _m128icmpestrm_7, offset _m128icmpestrm_8, offset _m128icmpestrm_9, \
									offset _m128icmpestrm_10, offset _m128icmpestrm_11, offset _m128icmpestrm_12, offset _m128icmpestrm_13, offset _m128icmpestrm_14, \
									offset _m128icmpestrm_15, offset _m128icmpestrm_16, offset _m128icmpestrm_17, offset _m128icmpestrm_18, offset _m128icmpestrm_19, \
									offset _m128icmpestrm_20, offset _m128icmpestrm_21, offset _m128icmpestrm_22, offset _m128icmpestrm_23, offset _m128icmpestrm_24, \
									offset _m128icmpestrm_25, offset _m128icmpestrm_26, offset _m128icmpestrm_27, offset _m128icmpestrm_28, offset _m128icmpestrm_29, \
									offset _m128icmpestrm_30, offset _m128icmpestrm_31, offset _m128icmpestrm_32, offset _m128icmpestrm_33, offset _m128icmpestrm_34, \
									offset _m128icmpestrm_35, offset _m128icmpestrm_36, offset _m128icmpestrm_37, offset _m128icmpestrm_38, offset _m128icmpestrm_39, \
									offset _m128icmpestrm_40, offset _m128icmpestrm_41, offset _m128icmpestrm_42, offset _m128icmpestrm_43, offset _m128icmpestrm_44, \
									offset _m128icmpestrm_45, offset _m128icmpestrm_46, offset _m128icmpestrm_47, offset _m128icmpestrm_48, offset _m128icmpestrm_49, \
									offset _m128icmpestrm_50, offset _m128icmpestrm_51, offset _m128icmpestrm_52, offset _m128icmpestrm_53, offset _m128icmpestrm_54, \
									offset _m128icmpestrm_55, offset _m128icmpestrm_56, offset _m128icmpestrm_57, offset _m128icmpestrm_58, offset _m128icmpestrm_59, \
									offset _m128icmpestrm_60, offset _m128icmpestrm_61, offset _m128icmpestrm_62, offset _m128icmpestrm_63, offset _m128icmpestrm_64, \
									offset _m128icmpestrm_65, offset _m128icmpestrm_66, offset _m128icmpestrm_67, offset _m128icmpestrm_68, offset _m128icmpestrm_69, \
									offset _m128icmpestrm_70, offset _m128icmpestrm_71, offset _m128icmpestrm_72, offset _m128icmpestrm_73, offset _m128icmpestrm_74, \
									offset _m128icmpestrm_75, offset _m128icmpestrm_76, offset _m128icmpestrm_77, offset _m128icmpestrm_78, offset _m128icmpestrm_79, \
									offset _m128icmpestrm_80, offset _m128icmpestrm_81, offset _m128icmpestrm_82, offset _m128icmpestrm_83, offset _m128icmpestrm_84, \
									offset _m128icmpestrm_85, offset _m128icmpestrm_86, offset _m128icmpestrm_87, offset _m128icmpestrm_88, offset _m128icmpestrm_89, \
									offset _m128icmpestrm_90, offset _m128icmpestrm_91, offset _m128icmpestrm_92, offset _m128icmpestrm_93, offset _m128icmpestrm_94, \
									offset _m128icmpestrm_95, offset _m128icmpestrm_96, offset _m128icmpestrm_97, offset _m128icmpestrm_98, offset _m128icmpestrm_99, \
									offset _m128icmpestrm_100, offset _m128icmpestrm_101, offset _m128icmpestrm_102, offset _m128icmpestrm_103, offset _m128icmpestrm_104, \
									offset _m128icmpestrm_105, offset _m128icmpestrm_106, offset _m128icmpestrm_107, offset _m128icmpestrm_108, offset _m128icmpestrm_109, \
									offset _m128icmpestrm_110, offset _m128icmpestrm_111, offset _m128icmpestrm_112, offset _m128icmpestrm_113, offset _m128icmpestrm_114, \
									offset _m128icmpestrm_115, offset _m128icmpestrm_116, offset _m128icmpestrm_117, offset _m128icmpestrm_118, offset _m128icmpestrm_119, \
									offset _m128icmpestrm_120, offset _m128icmpestrm_121, offset _m128icmpestrm_122, offset _m128icmpestrm_123, offset _m128icmpestrm_124, \
									offset _m128icmpestrm_125, offset _m128icmpestrm_126, offset _m128icmpestrm_127
				
	__align_size_t
	_m128icmpestrijmptable isize_t	offset _m128icmpestri_0, offset _m128icmpestri_1, offset _m128icmpestri_2, offset _m128icmpestri_3, offset _m128icmpestri_4, \
									offset _m128icmpestri_5, offset _m128icmpestri_6, offset _m128icmpestri_7, offset _m128icmpestri_8, offset _m128icmpestri_9, \
									offset _m128icmpestri_10, offset _m128icmpestri_11, offset _m128icmpestri_12, offset _m128icmpestri_13, offset _m128icmpestri_14, \
									offset _m128icmpestri_15, offset _m128icmpestri_16, offset _m128icmpestri_17, offset _m128icmpestri_18, offset _m128icmpestri_19, \
									offset _m128icmpestri_20, offset _m128icmpestri_21, offset _m128icmpestri_22, offset _m128icmpestri_23, offset _m128icmpestri_24, \
									offset _m128icmpestri_25, offset _m128icmpestri_26, offset _m128icmpestri_27, offset _m128icmpestri_28, offset _m128icmpestri_29, \
									offset _m128icmpestri_30, offset _m128icmpestri_31, offset _m128icmpestri_32, offset _m128icmpestri_33, offset _m128icmpestri_34, \
									offset _m128icmpestri_35, offset _m128icmpestri_36, offset _m128icmpestri_37, offset _m128icmpestri_38, offset _m128icmpestri_39, \
									offset _m128icmpestri_40, offset _m128icmpestri_41, offset _m128icmpestri_42, offset _m128icmpestri_43, offset _m128icmpestri_44, \
									offset _m128icmpestri_45, offset _m128icmpestri_46, offset _m128icmpestri_47, offset _m128icmpestri_48, offset _m128icmpestri_49, \
									offset _m128icmpestri_50, offset _m128icmpestri_51, offset _m128icmpestri_52, offset _m128icmpestri_53, offset _m128icmpestri_54, \
									offset _m128icmpestri_55, offset _m128icmpestri_56, offset _m128icmpestri_57, offset _m128icmpestri_58, offset _m128icmpestri_59, \
									offset _m128icmpestri_60, offset _m128icmpestri_61, offset _m128icmpestri_62, offset _m128icmpestri_63, offset _m128icmpestri_64, \
									offset _m128icmpestri_65, offset _m128icmpestri_66, offset _m128icmpestri_67, offset _m128icmpestri_68, offset _m128icmpestri_69, \
									offset _m128icmpestri_70, offset _m128icmpestri_71, offset _m128icmpestri_72, offset _m128icmpestri_73, offset _m128icmpestri_74, \
									offset _m128icmpestri_75, offset _m128icmpestri_76, offset _m128icmpestri_77, offset _m128icmpestri_78, offset _m128icmpestri_79, \
									offset _m128icmpestri_80, offset _m128icmpestri_81, offset _m128icmpestri_82, offset _m128icmpestri_83, offset _m128icmpestri_84, \
									offset _m128icmpestri_85, offset _m128icmpestri_86, offset _m128icmpestri_87, offset _m128icmpestri_88, offset _m128icmpestri_89, \
									offset _m128icmpestri_90, offset _m128icmpestri_91, offset _m128icmpestri_92, offset _m128icmpestri_93, offset _m128icmpestri_94, \
									offset _m128icmpestri_95, offset _m128icmpestri_96, offset _m128icmpestri_97, offset _m128icmpestri_98, offset _m128icmpestri_99, \
									offset _m128icmpestri_100, offset _m128icmpestri_101, offset _m128icmpestri_102, offset _m128icmpestri_103, offset _m128icmpestri_104, \
									offset _m128icmpestri_105, offset _m128icmpestri_106, offset _m128icmpestri_107, offset _m128icmpestri_108, offset _m128icmpestri_109, \
									offset _m128icmpestri_110, offset _m128icmpestri_111, offset _m128icmpestri_112, offset _m128icmpestri_113, offset _m128icmpestri_114, \
									offset _m128icmpestri_115, offset _m128icmpestri_116, offset _m128icmpestri_117, offset _m128icmpestri_118, offset _m128icmpestri_119, \
									offset _m128icmpestri_120, offset _m128icmpestri_121, offset _m128icmpestri_122, offset _m128icmpestri_123, offset _m128icmpestri_124, \
									offset _m128icmpestri_125, offset _m128icmpestri_126, offset _m128icmpestri_127
						
	__align_size_t
	_m128icmpistrzjmptable isize_t	offset _m128icmpistrz_0, offset _m128icmpistrz_1, offset _m128icmpistrz_2, offset _m128icmpistrz_3, offset _m128icmpistrz_4, \
									offset _m128icmpistrz_5, offset _m128icmpistrz_6, offset _m128icmpistrz_7, offset _m128icmpistrz_8, offset _m128icmpistrz_9, \
									offset _m128icmpistrz_10, offset _m128icmpistrz_11, offset _m128icmpistrz_12, offset _m128icmpistrz_13, offset _m128icmpistrz_14, \
									offset _m128icmpistrz_15, offset _m128icmpistrz_16, offset _m128icmpistrz_17, offset _m128icmpistrz_18, offset _m128icmpistrz_19, \
									offset _m128icmpistrz_20, offset _m128icmpistrz_21, offset _m128icmpistrz_22, offset _m128icmpistrz_23, offset _m128icmpistrz_24, \
									offset _m128icmpistrz_25, offset _m128icmpistrz_26, offset _m128icmpistrz_27, offset _m128icmpistrz_28, offset _m128icmpistrz_29, \
									offset _m128icmpistrz_30, offset _m128icmpistrz_31, offset _m128icmpistrz_32, offset _m128icmpistrz_33, offset _m128icmpistrz_34, \
									offset _m128icmpistrz_35, offset _m128icmpistrz_36, offset _m128icmpistrz_37, offset _m128icmpistrz_38, offset _m128icmpistrz_39, \
									offset _m128icmpistrz_40, offset _m128icmpistrz_41, offset _m128icmpistrz_42, offset _m128icmpistrz_43, offset _m128icmpistrz_44, \
									offset _m128icmpistrz_45, offset _m128icmpistrz_46, offset _m128icmpistrz_47, offset _m128icmpistrz_48, offset _m128icmpistrz_49, \
									offset _m128icmpistrz_50, offset _m128icmpistrz_51, offset _m128icmpistrz_52, offset _m128icmpistrz_53, offset _m128icmpistrz_54, \
									offset _m128icmpistrz_55, offset _m128icmpistrz_56, offset _m128icmpistrz_57, offset _m128icmpistrz_58, offset _m128icmpistrz_59, \
									offset _m128icmpistrz_60, offset _m128icmpistrz_61, offset _m128icmpistrz_62, offset _m128icmpistrz_63, offset _m128icmpistrz_64, \
									offset _m128icmpistrz_65, offset _m128icmpistrz_66, offset _m128icmpistrz_67, offset _m128icmpistrz_68, offset _m128icmpistrz_69, \
									offset _m128icmpistrz_70, offset _m128icmpistrz_71, offset _m128icmpistrz_72, offset _m128icmpistrz_73, offset _m128icmpistrz_74, \
									offset _m128icmpistrz_75, offset _m128icmpistrz_76, offset _m128icmpistrz_77, offset _m128icmpistrz_78, offset _m128icmpistrz_79, \
									offset _m128icmpistrz_80, offset _m128icmpistrz_81, offset _m128icmpistrz_82, offset _m128icmpistrz_83, offset _m128icmpistrz_84, \
									offset _m128icmpistrz_85, offset _m128icmpistrz_86, offset _m128icmpistrz_87, offset _m128icmpistrz_88, offset _m128icmpistrz_89, \
									offset _m128icmpistrz_90, offset _m128icmpistrz_91, offset _m128icmpistrz_92, offset _m128icmpistrz_93, offset _m128icmpistrz_94, \
									offset _m128icmpistrz_95, offset _m128icmpistrz_96, offset _m128icmpistrz_97, offset _m128icmpistrz_98, offset _m128icmpistrz_99, \
									offset _m128icmpistrz_100, offset _m128icmpistrz_101, offset _m128icmpistrz_102, offset _m128icmpistrz_103, offset _m128icmpistrz_104, \
									offset _m128icmpistrz_105, offset _m128icmpistrz_106, offset _m128icmpistrz_107, offset _m128icmpistrz_108, offset _m128icmpistrz_109, \
									offset _m128icmpistrz_110, offset _m128icmpistrz_111, offset _m128icmpistrz_112, offset _m128icmpistrz_113, offset _m128icmpistrz_114, \
									offset _m128icmpistrz_115, offset _m128icmpistrz_116, offset _m128icmpistrz_117, offset _m128icmpistrz_118, offset _m128icmpistrz_119, \
									offset _m128icmpistrz_120, offset _m128icmpistrz_121, offset _m128icmpistrz_122, offset _m128icmpistrz_123, offset _m128icmpistrz_124, \
									offset _m128icmpistrz_125, offset _m128icmpistrz_126, offset _m128icmpistrz_127

	__align_size_t
	_m128icmpistrcjmptable isize_t	offset _m128icmpistrc_0, offset _m128icmpistrc_1, offset _m128icmpistrc_2, offset _m128icmpistrc_3, offset _m128icmpistrc_4, \
									offset _m128icmpistrc_5, offset _m128icmpistrc_6, offset _m128icmpistrc_7, offset _m128icmpistrc_8, offset _m128icmpistrc_9, \
									offset _m128icmpistrc_10, offset _m128icmpistrc_11, offset _m128icmpistrc_12, offset _m128icmpistrc_13, offset _m128icmpistrc_14, \
									offset _m128icmpistrc_15, offset _m128icmpistrc_16, offset _m128icmpistrc_17, offset _m128icmpistrc_18, offset _m128icmpistrc_19, \
									offset _m128icmpistrc_20, offset _m128icmpistrc_21, offset _m128icmpistrc_22, offset _m128icmpistrc_23, offset _m128icmpistrc_24, \
									offset _m128icmpistrc_25, offset _m128icmpistrc_26, offset _m128icmpistrc_27, offset _m128icmpistrc_28, offset _m128icmpistrc_29, \
									offset _m128icmpistrc_30, offset _m128icmpistrc_31, offset _m128icmpistrc_32, offset _m128icmpistrc_33, offset _m128icmpistrc_34, \
									offset _m128icmpistrc_35, offset _m128icmpistrc_36, offset _m128icmpistrc_37, offset _m128icmpistrc_38, offset _m128icmpistrc_39, \
									offset _m128icmpistrc_40, offset _m128icmpistrc_41, offset _m128icmpistrc_42, offset _m128icmpistrc_43, offset _m128icmpistrc_44, \
									offset _m128icmpistrc_45, offset _m128icmpistrc_46, offset _m128icmpistrc_47, offset _m128icmpistrc_48, offset _m128icmpistrc_49, \
									offset _m128icmpistrc_50, offset _m128icmpistrc_51, offset _m128icmpistrc_52, offset _m128icmpistrc_53, offset _m128icmpistrc_54, \
									offset _m128icmpistrc_55, offset _m128icmpistrc_56, offset _m128icmpistrc_57, offset _m128icmpistrc_58, offset _m128icmpistrc_59, \
									offset _m128icmpistrc_60, offset _m128icmpistrc_61, offset _m128icmpistrc_62, offset _m128icmpistrc_63, offset _m128icmpistrc_64, \
									offset _m128icmpistrc_65, offset _m128icmpistrc_66, offset _m128icmpistrc_67, offset _m128icmpistrc_68, offset _m128icmpistrc_69, \
									offset _m128icmpistrc_70, offset _m128icmpistrc_71, offset _m128icmpistrc_72, offset _m128icmpistrc_73, offset _m128icmpistrc_74, \
									offset _m128icmpistrc_75, offset _m128icmpistrc_76, offset _m128icmpistrc_77, offset _m128icmpistrc_78, offset _m128icmpistrc_79, \
									offset _m128icmpistrc_80, offset _m128icmpistrc_81, offset _m128icmpistrc_82, offset _m128icmpistrc_83, offset _m128icmpistrc_84, \
									offset _m128icmpistrc_85, offset _m128icmpistrc_86, offset _m128icmpistrc_87, offset _m128icmpistrc_88, offset _m128icmpistrc_89, \
									offset _m128icmpistrc_90, offset _m128icmpistrc_91, offset _m128icmpistrc_92, offset _m128icmpistrc_93, offset _m128icmpistrc_94, \
									offset _m128icmpistrc_95, offset _m128icmpistrc_96, offset _m128icmpistrc_97, offset _m128icmpistrc_98, offset _m128icmpistrc_99, \
									offset _m128icmpistrc_100, offset _m128icmpistrc_101, offset _m128icmpistrc_102, offset _m128icmpistrc_103, offset _m128icmpistrc_104, \
									offset _m128icmpistrc_105, offset _m128icmpistrc_106, offset _m128icmpistrc_107, offset _m128icmpistrc_108, offset _m128icmpistrc_109, \
									offset _m128icmpistrc_110, offset _m128icmpistrc_111, offset _m128icmpistrc_112, offset _m128icmpistrc_113, offset _m128icmpistrc_114, \
									offset _m128icmpistrc_115, offset _m128icmpistrc_116, offset _m128icmpistrc_117, offset _m128icmpistrc_118, offset _m128icmpistrc_119, \
									offset _m128icmpistrc_120, offset _m128icmpistrc_121, offset _m128icmpistrc_122, offset _m128icmpistrc_123, offset _m128icmpistrc_124, \
									offset _m128icmpistrc_125, offset _m128icmpistrc_126, offset _m128icmpistrc_127

	__align_size_t
	_m128icmpistrsjmptable isize_t	offset _m128icmpistrs_0, offset _m128icmpistrs_1, offset _m128icmpistrs_2, offset _m128icmpistrs_3, offset _m128icmpistrs_4, \
									offset _m128icmpistrs_5, offset _m128icmpistrs_6, offset _m128icmpistrs_7, offset _m128icmpistrs_8, offset _m128icmpistrs_9, \
									offset _m128icmpistrs_10, offset _m128icmpistrs_11, offset _m128icmpistrs_12, offset _m128icmpistrs_13, offset _m128icmpistrs_14, \
									offset _m128icmpistrs_15, offset _m128icmpistrs_16, offset _m128icmpistrs_17, offset _m128icmpistrs_18, offset _m128icmpistrs_19, \
									offset _m128icmpistrs_20, offset _m128icmpistrs_21, offset _m128icmpistrs_22, offset _m128icmpistrs_23, offset _m128icmpistrs_24, \
									offset _m128icmpistrs_25, offset _m128icmpistrs_26, offset _m128icmpistrs_27, offset _m128icmpistrs_28, offset _m128icmpistrs_29, \
									offset _m128icmpistrs_30, offset _m128icmpistrs_31, offset _m128icmpistrs_32, offset _m128icmpistrs_33, offset _m128icmpistrs_34, \
									offset _m128icmpistrs_35, offset _m128icmpistrs_36, offset _m128icmpistrs_37, offset _m128icmpistrs_38, offset _m128icmpistrs_39, \
									offset _m128icmpistrs_40, offset _m128icmpistrs_41, offset _m128icmpistrs_42, offset _m128icmpistrs_43, offset _m128icmpistrs_44, \
									offset _m128icmpistrs_45, offset _m128icmpistrs_46, offset _m128icmpistrs_47, offset _m128icmpistrs_48, offset _m128icmpistrs_49, \
									offset _m128icmpistrs_50, offset _m128icmpistrs_51, offset _m128icmpistrs_52, offset _m128icmpistrs_53, offset _m128icmpistrs_54, \
									offset _m128icmpistrs_55, offset _m128icmpistrs_56, offset _m128icmpistrs_57, offset _m128icmpistrs_58, offset _m128icmpistrs_59, \
									offset _m128icmpistrs_60, offset _m128icmpistrs_61, offset _m128icmpistrs_62, offset _m128icmpistrs_63, offset _m128icmpistrs_64, \
									offset _m128icmpistrs_65, offset _m128icmpistrs_66, offset _m128icmpistrs_67, offset _m128icmpistrs_68, offset _m128icmpistrs_69, \
									offset _m128icmpistrs_70, offset _m128icmpistrs_71, offset _m128icmpistrs_72, offset _m128icmpistrs_73, offset _m128icmpistrs_74, \
									offset _m128icmpistrs_75, offset _m128icmpistrs_76, offset _m128icmpistrs_77, offset _m128icmpistrs_78, offset _m128icmpistrs_79, \
									offset _m128icmpistrs_80, offset _m128icmpistrs_81, offset _m128icmpistrs_82, offset _m128icmpistrs_83, offset _m128icmpistrs_84, \
									offset _m128icmpistrs_85, offset _m128icmpistrs_86, offset _m128icmpistrs_87, offset _m128icmpistrs_88, offset _m128icmpistrs_89, \
									offset _m128icmpistrs_90, offset _m128icmpistrs_91, offset _m128icmpistrs_92, offset _m128icmpistrs_93, offset _m128icmpistrs_94, \
									offset _m128icmpistrs_95, offset _m128icmpistrs_96, offset _m128icmpistrs_97, offset _m128icmpistrs_98, offset _m128icmpistrs_99, \
									offset _m128icmpistrs_100, offset _m128icmpistrs_101, offset _m128icmpistrs_102, offset _m128icmpistrs_103, offset _m128icmpistrs_104, \
									offset _m128icmpistrs_105, offset _m128icmpistrs_106, offset _m128icmpistrs_107, offset _m128icmpistrs_108, offset _m128icmpistrs_109, \
									offset _m128icmpistrs_110, offset _m128icmpistrs_111, offset _m128icmpistrs_112, offset _m128icmpistrs_113, offset _m128icmpistrs_114, \
									offset _m128icmpistrs_115, offset _m128icmpistrs_116, offset _m128icmpistrs_117, offset _m128icmpistrs_118, offset _m128icmpistrs_119, \
									offset _m128icmpistrs_120, offset _m128icmpistrs_121, offset _m128icmpistrs_122, offset _m128icmpistrs_123, offset _m128icmpistrs_124, \
									offset _m128icmpistrs_125, offset _m128icmpistrs_126, offset _m128icmpistrs_127

	__align_size_t
	_m128icmpistrojmptable isize_t	offset _m128icmpistro_0, offset _m128icmpistro_1, offset _m128icmpistro_2, offset _m128icmpistro_3, offset _m128icmpistro_4, \
									offset _m128icmpistro_5, offset _m128icmpistro_6, offset _m128icmpistro_7, offset _m128icmpistro_8, offset _m128icmpistro_9, \
									offset _m128icmpistro_10, offset _m128icmpistro_11, offset _m128icmpistro_12, offset _m128icmpistro_13, offset _m128icmpistro_14, \
									offset _m128icmpistro_15, offset _m128icmpistro_16, offset _m128icmpistro_17, offset _m128icmpistro_18, offset _m128icmpistro_19, \
									offset _m128icmpistro_20, offset _m128icmpistro_21, offset _m128icmpistro_22, offset _m128icmpistro_23, offset _m128icmpistro_24, \
									offset _m128icmpistro_25, offset _m128icmpistro_26, offset _m128icmpistro_27, offset _m128icmpistro_28, offset _m128icmpistro_29, \
									offset _m128icmpistro_30, offset _m128icmpistro_31, offset _m128icmpistro_32, offset _m128icmpistro_33, offset _m128icmpistro_34, \
									offset _m128icmpistro_35, offset _m128icmpistro_36, offset _m128icmpistro_37, offset _m128icmpistro_38, offset _m128icmpistro_39, \
									offset _m128icmpistro_40, offset _m128icmpistro_41, offset _m128icmpistro_42, offset _m128icmpistro_43, offset _m128icmpistro_44, \
									offset _m128icmpistro_45, offset _m128icmpistro_46, offset _m128icmpistro_47, offset _m128icmpistro_48, offset _m128icmpistro_49, \
									offset _m128icmpistro_50, offset _m128icmpistro_51, offset _m128icmpistro_52, offset _m128icmpistro_53, offset _m128icmpistro_54, \
									offset _m128icmpistro_55, offset _m128icmpistro_56, offset _m128icmpistro_57, offset _m128icmpistro_58, offset _m128icmpistro_59, \
									offset _m128icmpistro_60, offset _m128icmpistro_61, offset _m128icmpistro_62, offset _m128icmpistro_63, offset _m128icmpistro_64, \
									offset _m128icmpistro_65, offset _m128icmpistro_66, offset _m128icmpistro_67, offset _m128icmpistro_68, offset _m128icmpistro_69, \
									offset _m128icmpistro_70, offset _m128icmpistro_71, offset _m128icmpistro_72, offset _m128icmpistro_73, offset _m128icmpistro_74, \
									offset _m128icmpistro_75, offset _m128icmpistro_76, offset _m128icmpistro_77, offset _m128icmpistro_78, offset _m128icmpistro_79, \
									offset _m128icmpistro_80, offset _m128icmpistro_81, offset _m128icmpistro_82, offset _m128icmpistro_83, offset _m128icmpistro_84, \
									offset _m128icmpistro_85, offset _m128icmpistro_86, offset _m128icmpistro_87, offset _m128icmpistro_88, offset _m128icmpistro_89, \
									offset _m128icmpistro_90, offset _m128icmpistro_91, offset _m128icmpistro_92, offset _m128icmpistro_93, offset _m128icmpistro_94, \
									offset _m128icmpistro_95, offset _m128icmpistro_96, offset _m128icmpistro_97, offset _m128icmpistro_98, offset _m128icmpistro_99, \
									offset _m128icmpistro_100, offset _m128icmpistro_101, offset _m128icmpistro_102, offset _m128icmpistro_103, offset _m128icmpistro_104, \
									offset _m128icmpistro_105, offset _m128icmpistro_106, offset _m128icmpistro_107, offset _m128icmpistro_108, offset _m128icmpistro_109, \
									offset _m128icmpistro_110, offset _m128icmpistro_111, offset _m128icmpistro_112, offset _m128icmpistro_113, offset _m128icmpistro_114, \
									offset _m128icmpistro_115, offset _m128icmpistro_116, offset _m128icmpistro_117, offset _m128icmpistro_118, offset _m128icmpistro_119, \
									offset _m128icmpistro_120, offset _m128icmpistro_121, offset _m128icmpistro_122, offset _m128icmpistro_123, offset _m128icmpistro_124, \
									offset _m128icmpistro_125, offset _m128icmpistro_126, offset _m128icmpistro_127

	__align_size_t
	_m128icmpistrajmptable isize_t	offset _m128icmpistra_0, offset _m128icmpistra_1, offset _m128icmpistra_2, offset _m128icmpistra_3, offset _m128icmpistra_4, \
									offset _m128icmpistra_5, offset _m128icmpistra_6, offset _m128icmpistra_7, offset _m128icmpistra_8, offset _m128icmpistra_9, \
									offset _m128icmpistra_10, offset _m128icmpistra_11, offset _m128icmpistra_12, offset _m128icmpistra_13, offset _m128icmpistra_14, \
									offset _m128icmpistra_15, offset _m128icmpistra_16, offset _m128icmpistra_17, offset _m128icmpistra_18, offset _m128icmpistra_19, \
									offset _m128icmpistra_20, offset _m128icmpistra_21, offset _m128icmpistra_22, offset _m128icmpistra_23, offset _m128icmpistra_24, \
									offset _m128icmpistra_25, offset _m128icmpistra_26, offset _m128icmpistra_27, offset _m128icmpistra_28, offset _m128icmpistra_29, \
									offset _m128icmpistra_30, offset _m128icmpistra_31, offset _m128icmpistra_32, offset _m128icmpistra_33, offset _m128icmpistra_34, \
									offset _m128icmpistra_35, offset _m128icmpistra_36, offset _m128icmpistra_37, offset _m128icmpistra_38, offset _m128icmpistra_39, \
									offset _m128icmpistra_40, offset _m128icmpistra_41, offset _m128icmpistra_42, offset _m128icmpistra_43, offset _m128icmpistra_44, \
									offset _m128icmpistra_45, offset _m128icmpistra_46, offset _m128icmpistra_47, offset _m128icmpistra_48, offset _m128icmpistra_49, \
									offset _m128icmpistra_50, offset _m128icmpistra_51, offset _m128icmpistra_52, offset _m128icmpistra_53, offset _m128icmpistra_54, \
									offset _m128icmpistra_55, offset _m128icmpistra_56, offset _m128icmpistra_57, offset _m128icmpistra_58, offset _m128icmpistra_59, \
									offset _m128icmpistra_60, offset _m128icmpistra_61, offset _m128icmpistra_62, offset _m128icmpistra_63, offset _m128icmpistra_64, \
									offset _m128icmpistra_65, offset _m128icmpistra_66, offset _m128icmpistra_67, offset _m128icmpistra_68, offset _m128icmpistra_69, \
									offset _m128icmpistra_70, offset _m128icmpistra_71, offset _m128icmpistra_72, offset _m128icmpistra_73, offset _m128icmpistra_74, \
									offset _m128icmpistra_75, offset _m128icmpistra_76, offset _m128icmpistra_77, offset _m128icmpistra_78, offset _m128icmpistra_79, \
									offset _m128icmpistra_80, offset _m128icmpistra_81, offset _m128icmpistra_82, offset _m128icmpistra_83, offset _m128icmpistra_84, \
									offset _m128icmpistra_85, offset _m128icmpistra_86, offset _m128icmpistra_87, offset _m128icmpistra_88, offset _m128icmpistra_89, \
									offset _m128icmpistra_90, offset _m128icmpistra_91, offset _m128icmpistra_92, offset _m128icmpistra_93, offset _m128icmpistra_94, \
									offset _m128icmpistra_95, offset _m128icmpistra_96, offset _m128icmpistra_97, offset _m128icmpistra_98, offset _m128icmpistra_99, \
									offset _m128icmpistra_100, offset _m128icmpistra_101, offset _m128icmpistra_102, offset _m128icmpistra_103, offset _m128icmpistra_104, \
									offset _m128icmpistra_105, offset _m128icmpistra_106, offset _m128icmpistra_107, offset _m128icmpistra_108, offset _m128icmpistra_109, \
									offset _m128icmpistra_110, offset _m128icmpistra_111, offset _m128icmpistra_112, offset _m128icmpistra_113, offset _m128icmpistra_114, \
									offset _m128icmpistra_115, offset _m128icmpistra_116, offset _m128icmpistra_117, offset _m128icmpistra_118, offset _m128icmpistra_119, \
									offset _m128icmpistra_120, offset _m128icmpistra_121, offset _m128icmpistra_122, offset _m128icmpistra_123, offset _m128icmpistra_124, \
									offset _m128icmpistra_125, offset _m128icmpistra_126, offset _m128icmpistra_127

	__align_size_t
	_m128icmpestrzjmptable isize_t	offset _m128icmpestrz_0, offset _m128icmpestrz_1, offset _m128icmpestrz_2, offset _m128icmpestrz_3, offset _m128icmpestrz_4, \
									offset _m128icmpestrz_5, offset _m128icmpestrz_6, offset _m128icmpestrz_7, offset _m128icmpestrz_8, offset _m128icmpestrz_9, \
									offset _m128icmpestrz_10, offset _m128icmpestrz_11, offset _m128icmpestrz_12, offset _m128icmpestrz_13, offset _m128icmpestrz_14, \
									offset _m128icmpestrz_15, offset _m128icmpestrz_16, offset _m128icmpestrz_17, offset _m128icmpestrz_18, offset _m128icmpestrz_19, \
									offset _m128icmpestrz_20, offset _m128icmpestrz_21, offset _m128icmpestrz_22, offset _m128icmpestrz_23, offset _m128icmpestrz_24, \
									offset _m128icmpestrz_25, offset _m128icmpestrz_26, offset _m128icmpestrz_27, offset _m128icmpestrz_28, offset _m128icmpestrz_29, \
									offset _m128icmpestrz_30, offset _m128icmpestrz_31, offset _m128icmpestrz_32, offset _m128icmpestrz_33, offset _m128icmpestrz_34, \
									offset _m128icmpestrz_35, offset _m128icmpestrz_36, offset _m128icmpestrz_37, offset _m128icmpestrz_38, offset _m128icmpestrz_39, \
									offset _m128icmpestrz_40, offset _m128icmpestrz_41, offset _m128icmpestrz_42, offset _m128icmpestrz_43, offset _m128icmpestrz_44, \
									offset _m128icmpestrz_45, offset _m128icmpestrz_46, offset _m128icmpestrz_47, offset _m128icmpestrz_48, offset _m128icmpestrz_49, \
									offset _m128icmpestrz_50, offset _m128icmpestrz_51, offset _m128icmpestrz_52, offset _m128icmpestrz_53, offset _m128icmpestrz_54, \
									offset _m128icmpestrz_55, offset _m128icmpestrz_56, offset _m128icmpestrz_57, offset _m128icmpestrz_58, offset _m128icmpestrz_59, \
									offset _m128icmpestrz_60, offset _m128icmpestrz_61, offset _m128icmpestrz_62, offset _m128icmpestrz_63, offset _m128icmpestrz_64, \
									offset _m128icmpestrz_65, offset _m128icmpestrz_66, offset _m128icmpestrz_67, offset _m128icmpestrz_68, offset _m128icmpestrz_69, \
									offset _m128icmpestrz_70, offset _m128icmpestrz_71, offset _m128icmpestrz_72, offset _m128icmpestrz_73, offset _m128icmpestrz_74, \
									offset _m128icmpestrz_75, offset _m128icmpestrz_76, offset _m128icmpestrz_77, offset _m128icmpestrz_78, offset _m128icmpestrz_79, \
									offset _m128icmpestrz_80, offset _m128icmpestrz_81, offset _m128icmpestrz_82, offset _m128icmpestrz_83, offset _m128icmpestrz_84, \
									offset _m128icmpestrz_85, offset _m128icmpestrz_86, offset _m128icmpestrz_87, offset _m128icmpestrz_88, offset _m128icmpestrz_89, \
									offset _m128icmpestrz_90, offset _m128icmpestrz_91, offset _m128icmpestrz_92, offset _m128icmpestrz_93, offset _m128icmpestrz_94, \
									offset _m128icmpestrz_95, offset _m128icmpestrz_96, offset _m128icmpestrz_97, offset _m128icmpestrz_98, offset _m128icmpestrz_99, \
									offset _m128icmpestrz_100, offset _m128icmpestrz_101, offset _m128icmpestrz_102, offset _m128icmpestrz_103, offset _m128icmpestrz_104, \
									offset _m128icmpestrz_105, offset _m128icmpestrz_106, offset _m128icmpestrz_107, offset _m128icmpestrz_108, offset _m128icmpestrz_109, \
									offset _m128icmpestrz_110, offset _m128icmpestrz_111, offset _m128icmpestrz_112, offset _m128icmpestrz_113, offset _m128icmpestrz_114, \
									offset _m128icmpestrz_115, offset _m128icmpestrz_116, offset _m128icmpestrz_117, offset _m128icmpestrz_118, offset _m128icmpestrz_119, \
									offset _m128icmpestrz_120, offset _m128icmpestrz_121, offset _m128icmpestrz_122, offset _m128icmpestrz_123, offset _m128icmpestrz_124, \
									offset _m128icmpestrz_125, offset _m128icmpestrz_126, offset _m128icmpestrz_127

	__align_size_t
	_m128icmpestrcjmptable isize_t	offset _m128icmpestrc_0, offset _m128icmpestrc_1, offset _m128icmpestrc_2, offset _m128icmpestrc_3, offset _m128icmpestrc_4, \
									offset _m128icmpestrc_5, offset _m128icmpestrc_6, offset _m128icmpestrc_7, offset _m128icmpestrc_8, offset _m128icmpestrc_9, \
									offset _m128icmpestrc_10, offset _m128icmpestrc_11, offset _m128icmpestrc_12, offset _m128icmpestrc_13, offset _m128icmpestrc_14, \
									offset _m128icmpestrc_15, offset _m128icmpestrc_16, offset _m128icmpestrc_17, offset _m128icmpestrc_18, offset _m128icmpestrc_19, \
									offset _m128icmpestrc_20, offset _m128icmpestrc_21, offset _m128icmpestrc_22, offset _m128icmpestrc_23, offset _m128icmpestrc_24, \
									offset _m128icmpestrc_25, offset _m128icmpestrc_26, offset _m128icmpestrc_27, offset _m128icmpestrc_28, offset _m128icmpestrc_29, \
									offset _m128icmpestrc_30, offset _m128icmpestrc_31, offset _m128icmpestrc_32, offset _m128icmpestrc_33, offset _m128icmpestrc_34, \
									offset _m128icmpestrc_35, offset _m128icmpestrc_36, offset _m128icmpestrc_37, offset _m128icmpestrc_38, offset _m128icmpestrc_39, \
									offset _m128icmpestrc_40, offset _m128icmpestrc_41, offset _m128icmpestrc_42, offset _m128icmpestrc_43, offset _m128icmpestrc_44, \
									offset _m128icmpestrc_45, offset _m128icmpestrc_46, offset _m128icmpestrc_47, offset _m128icmpestrc_48, offset _m128icmpestrc_49, \
									offset _m128icmpestrc_50, offset _m128icmpestrc_51, offset _m128icmpestrc_52, offset _m128icmpestrc_53, offset _m128icmpestrc_54, \
									offset _m128icmpestrc_55, offset _m128icmpestrc_56, offset _m128icmpestrc_57, offset _m128icmpestrc_58, offset _m128icmpestrc_59, \
									offset _m128icmpestrc_60, offset _m128icmpestrc_61, offset _m128icmpestrc_62, offset _m128icmpestrc_63, offset _m128icmpestrc_64, \
									offset _m128icmpestrc_65, offset _m128icmpestrc_66, offset _m128icmpestrc_67, offset _m128icmpestrc_68, offset _m128icmpestrc_69, \
									offset _m128icmpestrc_70, offset _m128icmpestrc_71, offset _m128icmpestrc_72, offset _m128icmpestrc_73, offset _m128icmpestrc_74, \
									offset _m128icmpestrc_75, offset _m128icmpestrc_76, offset _m128icmpestrc_77, offset _m128icmpestrc_78, offset _m128icmpestrc_79, \
									offset _m128icmpestrc_80, offset _m128icmpestrc_81, offset _m128icmpestrc_82, offset _m128icmpestrc_83, offset _m128icmpestrc_84, \
									offset _m128icmpestrc_85, offset _m128icmpestrc_86, offset _m128icmpestrc_87, offset _m128icmpestrc_88, offset _m128icmpestrc_89, \
									offset _m128icmpestrc_90, offset _m128icmpestrc_91, offset _m128icmpestrc_92, offset _m128icmpestrc_93, offset _m128icmpestrc_94, \
									offset _m128icmpestrc_95, offset _m128icmpestrc_96, offset _m128icmpestrc_97, offset _m128icmpestrc_98, offset _m128icmpestrc_99, \
									offset _m128icmpestrc_100, offset _m128icmpestrc_101, offset _m128icmpestrc_102, offset _m128icmpestrc_103, offset _m128icmpestrc_104, \
									offset _m128icmpestrc_105, offset _m128icmpestrc_106, offset _m128icmpestrc_107, offset _m128icmpestrc_108, offset _m128icmpestrc_109, \
									offset _m128icmpestrc_110, offset _m128icmpestrc_111, offset _m128icmpestrc_112, offset _m128icmpestrc_113, offset _m128icmpestrc_114, \
									offset _m128icmpestrc_115, offset _m128icmpestrc_116, offset _m128icmpestrc_117, offset _m128icmpestrc_118, offset _m128icmpestrc_119, \
									offset _m128icmpestrc_120, offset _m128icmpestrc_121, offset _m128icmpestrc_122, offset _m128icmpestrc_123, offset _m128icmpestrc_124, \
									offset _m128icmpestrc_125, offset _m128icmpestrc_126, offset _m128icmpestrc_127

	__align_size_t
	_m128icmpestrsjmptable isize_t	offset _m128icmpestrs_0, offset _m128icmpestrs_1, offset _m128icmpestrs_2, offset _m128icmpestrs_3, offset _m128icmpestrs_4, \
									offset _m128icmpestrs_5, offset _m128icmpestrs_6, offset _m128icmpestrs_7, offset _m128icmpestrs_8, offset _m128icmpestrs_9, \
									offset _m128icmpestrs_10, offset _m128icmpestrs_11, offset _m128icmpestrs_12, offset _m128icmpestrs_13, offset _m128icmpestrs_14, \
									offset _m128icmpestrs_15, offset _m128icmpestrs_16, offset _m128icmpestrs_17, offset _m128icmpestrs_18, offset _m128icmpestrs_19, \
									offset _m128icmpestrs_20, offset _m128icmpestrs_21, offset _m128icmpestrs_22, offset _m128icmpestrs_23, offset _m128icmpestrs_24, \
									offset _m128icmpestrs_25, offset _m128icmpestrs_26, offset _m128icmpestrs_27, offset _m128icmpestrs_28, offset _m128icmpestrs_29, \
									offset _m128icmpestrs_30, offset _m128icmpestrs_31, offset _m128icmpestrs_32, offset _m128icmpestrs_33, offset _m128icmpestrs_34, \
									offset _m128icmpestrs_35, offset _m128icmpestrs_36, offset _m128icmpestrs_37, offset _m128icmpestrs_38, offset _m128icmpestrs_39, \
									offset _m128icmpestrs_40, offset _m128icmpestrs_41, offset _m128icmpestrs_42, offset _m128icmpestrs_43, offset _m128icmpestrs_44, \
									offset _m128icmpestrs_45, offset _m128icmpestrs_46, offset _m128icmpestrs_47, offset _m128icmpestrs_48, offset _m128icmpestrs_49, \
									offset _m128icmpestrs_50, offset _m128icmpestrs_51, offset _m128icmpestrs_52, offset _m128icmpestrs_53, offset _m128icmpestrs_54, \
									offset _m128icmpestrs_55, offset _m128icmpestrs_56, offset _m128icmpestrs_57, offset _m128icmpestrs_58, offset _m128icmpestrs_59, \
									offset _m128icmpestrs_60, offset _m128icmpestrs_61, offset _m128icmpestrs_62, offset _m128icmpestrs_63, offset _m128icmpestrs_64, \
									offset _m128icmpestrs_65, offset _m128icmpestrs_66, offset _m128icmpestrs_67, offset _m128icmpestrs_68, offset _m128icmpestrs_69, \
									offset _m128icmpestrs_70, offset _m128icmpestrs_71, offset _m128icmpestrs_72, offset _m128icmpestrs_73, offset _m128icmpestrs_74, \
									offset _m128icmpestrs_75, offset _m128icmpestrs_76, offset _m128icmpestrs_77, offset _m128icmpestrs_78, offset _m128icmpestrs_79, \
									offset _m128icmpestrs_80, offset _m128icmpestrs_81, offset _m128icmpestrs_82, offset _m128icmpestrs_83, offset _m128icmpestrs_84, \
									offset _m128icmpestrs_85, offset _m128icmpestrs_86, offset _m128icmpestrs_87, offset _m128icmpestrs_88, offset _m128icmpestrs_89, \
									offset _m128icmpestrs_90, offset _m128icmpestrs_91, offset _m128icmpestrs_92, offset _m128icmpestrs_93, offset _m128icmpestrs_94, \
									offset _m128icmpestrs_95, offset _m128icmpestrs_96, offset _m128icmpestrs_97, offset _m128icmpestrs_98, offset _m128icmpestrs_99, \
									offset _m128icmpestrs_100, offset _m128icmpestrs_101, offset _m128icmpestrs_102, offset _m128icmpestrs_103, offset _m128icmpestrs_104, \
									offset _m128icmpestrs_105, offset _m128icmpestrs_106, offset _m128icmpestrs_107, offset _m128icmpestrs_108, offset _m128icmpestrs_109, \
									offset _m128icmpestrs_110, offset _m128icmpestrs_111, offset _m128icmpestrs_112, offset _m128icmpestrs_113, offset _m128icmpestrs_114, \
									offset _m128icmpestrs_115, offset _m128icmpestrs_116, offset _m128icmpestrs_117, offset _m128icmpestrs_118, offset _m128icmpestrs_119, \
									offset _m128icmpestrs_120, offset _m128icmpestrs_121, offset _m128icmpestrs_122, offset _m128icmpestrs_123, offset _m128icmpestrs_124, \
									offset _m128icmpestrs_125, offset _m128icmpestrs_126, offset _m128icmpestrs_127

	__align_size_t
	_m128icmpestrojmptable isize_t	offset _m128icmpestro_0, offset _m128icmpestro_1, offset _m128icmpestro_2, offset _m128icmpestro_3, offset _m128icmpestro_4, \
									offset _m128icmpestro_5, offset _m128icmpestro_6, offset _m128icmpestro_7, offset _m128icmpestro_8, offset _m128icmpestro_9, \
									offset _m128icmpestro_10, offset _m128icmpestro_11, offset _m128icmpestro_12, offset _m128icmpestro_13, offset _m128icmpestro_14, \
									offset _m128icmpestro_15, offset _m128icmpestro_16, offset _m128icmpestro_17, offset _m128icmpestro_18, offset _m128icmpestro_19, \
									offset _m128icmpestro_20, offset _m128icmpestro_21, offset _m128icmpestro_22, offset _m128icmpestro_23, offset _m128icmpestro_24, \
									offset _m128icmpestro_25, offset _m128icmpestro_26, offset _m128icmpestro_27, offset _m128icmpestro_28, offset _m128icmpestro_29, \
									offset _m128icmpestro_30, offset _m128icmpestro_31, offset _m128icmpestro_32, offset _m128icmpestro_33, offset _m128icmpestro_34, \
									offset _m128icmpestro_35, offset _m128icmpestro_36, offset _m128icmpestro_37, offset _m128icmpestro_38, offset _m128icmpestro_39, \
									offset _m128icmpestro_40, offset _m128icmpestro_41, offset _m128icmpestro_42, offset _m128icmpestro_43, offset _m128icmpestro_44, \
									offset _m128icmpestro_45, offset _m128icmpestro_46, offset _m128icmpestro_47, offset _m128icmpestro_48, offset _m128icmpestro_49, \
									offset _m128icmpestro_50, offset _m128icmpestro_51, offset _m128icmpestro_52, offset _m128icmpestro_53, offset _m128icmpestro_54, \
									offset _m128icmpestro_55, offset _m128icmpestro_56, offset _m128icmpestro_57, offset _m128icmpestro_58, offset _m128icmpestro_59, \
									offset _m128icmpestro_60, offset _m128icmpestro_61, offset _m128icmpestro_62, offset _m128icmpestro_63, offset _m128icmpestro_64, \
									offset _m128icmpestro_65, offset _m128icmpestro_66, offset _m128icmpestro_67, offset _m128icmpestro_68, offset _m128icmpestro_69, \
									offset _m128icmpestro_70, offset _m128icmpestro_71, offset _m128icmpestro_72, offset _m128icmpestro_73, offset _m128icmpestro_74, \
									offset _m128icmpestro_75, offset _m128icmpestro_76, offset _m128icmpestro_77, offset _m128icmpestro_78, offset _m128icmpestro_79, \
									offset _m128icmpestro_80, offset _m128icmpestro_81, offset _m128icmpestro_82, offset _m128icmpestro_83, offset _m128icmpestro_84, \
									offset _m128icmpestro_85, offset _m128icmpestro_86, offset _m128icmpestro_87, offset _m128icmpestro_88, offset _m128icmpestro_89, \
									offset _m128icmpestro_90, offset _m128icmpestro_91, offset _m128icmpestro_92, offset _m128icmpestro_93, offset _m128icmpestro_94, \
									offset _m128icmpestro_95, offset _m128icmpestro_96, offset _m128icmpestro_97, offset _m128icmpestro_98, offset _m128icmpestro_99, \
									offset _m128icmpestro_100, offset _m128icmpestro_101, offset _m128icmpestro_102, offset _m128icmpestro_103, offset _m128icmpestro_104, \
									offset _m128icmpestro_105, offset _m128icmpestro_106, offset _m128icmpestro_107, offset _m128icmpestro_108, offset _m128icmpestro_109, \
									offset _m128icmpestro_110, offset _m128icmpestro_111, offset _m128icmpestro_112, offset _m128icmpestro_113, offset _m128icmpestro_114, \
									offset _m128icmpestro_115, offset _m128icmpestro_116, offset _m128icmpestro_117, offset _m128icmpestro_118, offset _m128icmpestro_119, \
									offset _m128icmpestro_120, offset _m128icmpestro_121, offset _m128icmpestro_122, offset _m128icmpestro_123, offset _m128icmpestro_124, \
									offset _m128icmpestro_125, offset _m128icmpestro_126, offset _m128icmpestro_127

	__align_size_t
	_m128icmpestrajmptable isize_t	offset _m128icmpestra_0, offset _m128icmpestra_1, offset _m128icmpestra_2, offset _m128icmpestra_3, offset _m128icmpestra_4, \
									offset _m128icmpestra_5, offset _m128icmpestra_6, offset _m128icmpestra_7, offset _m128icmpestra_8, offset _m128icmpestra_9, \
									offset _m128icmpestra_10, offset _m128icmpestra_11, offset _m128icmpestra_12, offset _m128icmpestra_13, offset _m128icmpestra_14, \
									offset _m128icmpestra_15, offset _m128icmpestra_16, offset _m128icmpestra_17, offset _m128icmpestra_18, offset _m128icmpestra_19, \
									offset _m128icmpestra_20, offset _m128icmpestra_21, offset _m128icmpestra_22, offset _m128icmpestra_23, offset _m128icmpestra_24, \
									offset _m128icmpestra_25, offset _m128icmpestra_26, offset _m128icmpestra_27, offset _m128icmpestra_28, offset _m128icmpestra_29, \
									offset _m128icmpestra_30, offset _m128icmpestra_31, offset _m128icmpestra_32, offset _m128icmpestra_33, offset _m128icmpestra_34, \
									offset _m128icmpestra_35, offset _m128icmpestra_36, offset _m128icmpestra_37, offset _m128icmpestra_38, offset _m128icmpestra_39, \
									offset _m128icmpestra_40, offset _m128icmpestra_41, offset _m128icmpestra_42, offset _m128icmpestra_43, offset _m128icmpestra_44, \
									offset _m128icmpestra_45, offset _m128icmpestra_46, offset _m128icmpestra_47, offset _m128icmpestra_48, offset _m128icmpestra_49, \
									offset _m128icmpestra_50, offset _m128icmpestra_51, offset _m128icmpestra_52, offset _m128icmpestra_53, offset _m128icmpestra_54, \
									offset _m128icmpestra_55, offset _m128icmpestra_56, offset _m128icmpestra_57, offset _m128icmpestra_58, offset _m128icmpestra_59, \
									offset _m128icmpestra_60, offset _m128icmpestra_61, offset _m128icmpestra_62, offset _m128icmpestra_63, offset _m128icmpestra_64, \
									offset _m128icmpestra_65, offset _m128icmpestra_66, offset _m128icmpestra_67, offset _m128icmpestra_68, offset _m128icmpestra_69, \
									offset _m128icmpestra_70, offset _m128icmpestra_71, offset _m128icmpestra_72, offset _m128icmpestra_73, offset _m128icmpestra_74, \
									offset _m128icmpestra_75, offset _m128icmpestra_76, offset _m128icmpestra_77, offset _m128icmpestra_78, offset _m128icmpestra_79, \
									offset _m128icmpestra_80, offset _m128icmpestra_81, offset _m128icmpestra_82, offset _m128icmpestra_83, offset _m128icmpestra_84, \
									offset _m128icmpestra_85, offset _m128icmpestra_86, offset _m128icmpestra_87, offset _m128icmpestra_88, offset _m128icmpestra_89, \
									offset _m128icmpestra_90, offset _m128icmpestra_91, offset _m128icmpestra_92, offset _m128icmpestra_93, offset _m128icmpestra_94, \
									offset _m128icmpestra_95, offset _m128icmpestra_96, offset _m128icmpestra_97, offset _m128icmpestra_98, offset _m128icmpestra_99, \
									offset _m128icmpestra_100, offset _m128icmpestra_101, offset _m128icmpestra_102, offset _m128icmpestra_103, offset _m128icmpestra_104, \
									offset _m128icmpestra_105, offset _m128icmpestra_106, offset _m128icmpestra_107, offset _m128icmpestra_108, offset _m128icmpestra_109, \
									offset _m128icmpestra_110, offset _m128icmpestra_111, offset _m128icmpestra_112, offset _m128icmpestra_113, offset _m128icmpestra_114, \
									offset _m128icmpestra_115, offset _m128icmpestra_116, offset _m128icmpestra_117, offset _m128icmpestra_118, offset _m128icmpestra_119, \
									offset _m128icmpestra_120, offset _m128icmpestra_121, offset _m128icmpestra_122, offset _m128icmpestra_123, offset _m128icmpestra_124, \
									offset _m128icmpestra_125, offset _m128icmpestra_126, offset _m128icmpestra_127

	__align_xmm_fp_opt
	__veccall_opt

	include uXmxmmconstdata.inc
	
	.code
	
;************************************
;Intrinsics for text/string processing
;************************************
_uXm_func_start _uXm_mm_cmpistrm_0, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_1, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_2, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_3, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_4, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_5, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_6, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_7, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_9, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_10, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_11, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_12, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_13, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_14, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_15, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			16
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_17, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			17
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_18, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			18
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_19, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			19
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_20, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			20
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_21, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			21
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_22, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			22
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_23, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			23
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_24, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			24
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_25, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			25
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_26, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			26
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_27, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			27
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_28, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			28
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_29, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			29
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_30, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			30
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_31, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			31
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			32
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_33, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			33
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_34, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			34
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_35, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			35
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_36, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			36
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_37, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			37
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_38, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			38
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_39, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			39
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_40, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			40
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_41, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			41
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_42, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			42
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_43, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			43
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_44, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			44
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_45, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			45
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_46, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			46
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_47, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			47
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_48, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			48
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_49, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			49
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_50, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			50
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_51, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			51
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_52, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			52
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_53, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			53
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_54, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			54
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_55, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			55
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_56, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			56
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_57, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			57
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_58, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			58
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_59, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			59
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_60, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			60
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_61, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			61
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_62, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			62
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_63, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			63
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			64
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_65, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			65
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_66, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			66
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_67, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			67
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_68, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			68
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_69, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			69
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_70, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			70
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_71, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			71
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_72, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			72
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_73, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			73
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_74, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			74
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_75, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			75
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_76, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			76
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_77, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			77
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_78, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			78
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_79, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			79
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_80, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			80
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_81, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			81
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_82, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			82
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_83, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			83
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_84, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			84
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_85, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			85
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_86, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			86
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_87, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			87
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_88, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			88
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_89, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			89
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_90, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			90
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_91, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			91
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_92, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			92
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_93, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			93
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_94, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			94
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_95, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			95
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_96, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			96
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_97, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			97
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_98, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			98
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_99, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			99
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_100, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			100
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_101, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			101
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_102, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			102
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_103, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			103
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_104, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			104
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_105, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			105
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_106, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			106
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_107, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			107
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_108, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			108
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_109, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			109
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_110, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			110
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_111, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			111
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_112, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			112
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_113, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			113
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_114, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			114
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_115, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			115
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_116, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			116
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_117, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			117
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_118, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			118
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_119, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			119
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_120, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			120
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_121, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			121
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_122, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			122
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_123, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			123
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_124, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			124
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_125, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			125
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_126, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			126
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm_127, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			127
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrm, xmmword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpistrmjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpistrmjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpistrm_0 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			0
			ret
		_m128icmpistrm_1 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			1
			ret
		_m128icmpistrm_2 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			2
			ret
		_m128icmpistrm_3 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			3
			ret
		_m128icmpistrm_4 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			4
			ret
		_m128icmpistrm_5 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			5
			ret
		_m128icmpistrm_6 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			6
			ret
		_m128icmpistrm_7 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			7
			ret
		_m128icmpistrm_8 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			8
			ret
		_m128icmpistrm_9 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			9
			ret
		_m128icmpistrm_10 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			10
			ret
		_m128icmpistrm_11 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			11
			ret
		_m128icmpistrm_12 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			12
			ret
		_m128icmpistrm_13 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			13
			ret
		_m128icmpistrm_14 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			14
			ret
		_m128icmpistrm_15 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			15
			ret
		_m128icmpistrm_16 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			16
			ret
		_m128icmpistrm_17 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			17
			ret
		_m128icmpistrm_18 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			18
			ret
		_m128icmpistrm_19 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			19
			ret
		_m128icmpistrm_20 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			20
			ret
		_m128icmpistrm_21 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			21
			ret
		_m128icmpistrm_22 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			22
			ret
		_m128icmpistrm_23 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			23
			ret
		_m128icmpistrm_24 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			24
			ret
		_m128icmpistrm_25 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			25
			ret
		_m128icmpistrm_26 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			26
			ret
		_m128icmpistrm_27 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			27
			ret
		_m128icmpistrm_28 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			28
			ret
		_m128icmpistrm_29 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			29
			ret
		_m128icmpistrm_30 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			30
			ret
		_m128icmpistrm_31 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			31
			ret
		_m128icmpistrm_32 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			32
			ret
		_m128icmpistrm_33 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			33
			ret
		_m128icmpistrm_34 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			34
			ret
		_m128icmpistrm_35 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			35
			ret
		_m128icmpistrm_36 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			36
			ret
		_m128icmpistrm_37 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			37
			ret
		_m128icmpistrm_38 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			38
			ret
		_m128icmpistrm_39 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			39
			ret
		_m128icmpistrm_40 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			40
			ret
		_m128icmpistrm_41 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			41
			ret
		_m128icmpistrm_42 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			42
			ret
		_m128icmpistrm_43 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			43
			ret
		_m128icmpistrm_44 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			44
			ret
		_m128icmpistrm_45 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			45
			ret
		_m128icmpistrm_46 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			46
			ret
		_m128icmpistrm_47 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			47
			ret
		_m128icmpistrm_48 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			48
			ret
		_m128icmpistrm_49 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			49
			ret
		_m128icmpistrm_50 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			50
			ret
		_m128icmpistrm_51 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			51
			ret
		_m128icmpistrm_52 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			52
			ret
		_m128icmpistrm_53 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			53
			ret
		_m128icmpistrm_54 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			54
			ret
		_m128icmpistrm_55 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			55
			ret
		_m128icmpistrm_56 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			56
			ret
		_m128icmpistrm_57 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			57
			ret
		_m128icmpistrm_58 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			58
			ret
		_m128icmpistrm_59 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			59
			ret
		_m128icmpistrm_60 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			60
			ret
		_m128icmpistrm_61 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			61
			ret
		_m128icmpistrm_62 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			62
			ret
		_m128icmpistrm_63 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			63
			ret
		_m128icmpistrm_64 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			64
			ret
		_m128icmpistrm_65 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			65
			ret
		_m128icmpistrm_66 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			66
			ret
		_m128icmpistrm_67 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			67
			ret
		_m128icmpistrm_68 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			68
			ret
		_m128icmpistrm_69 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			69
			ret
		_m128icmpistrm_70 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			70
			ret
		_m128icmpistrm_71 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			71
			ret
		_m128icmpistrm_72 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			72
			ret
		_m128icmpistrm_73 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			73
			ret
		_m128icmpistrm_74 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			74
			ret
		_m128icmpistrm_75 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			75
			ret
		_m128icmpistrm_76 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			76
			ret
		_m128icmpistrm_77 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			77
			ret
		_m128icmpistrm_78 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			78
			ret
		_m128icmpistrm_79 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			79
			ret
		_m128icmpistrm_80 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			80
			ret
		_m128icmpistrm_81 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			81
			ret
		_m128icmpistrm_82 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			82
			ret
		_m128icmpistrm_83 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			83
			ret
		_m128icmpistrm_84 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			84
			ret
		_m128icmpistrm_85 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			85
			ret
		_m128icmpistrm_86 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			86
			ret
		_m128icmpistrm_87 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			87
			ret
		_m128icmpistrm_88 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			88
			ret
		_m128icmpistrm_89 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			89
			ret
		_m128icmpistrm_90 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			90
			ret
		_m128icmpistrm_91 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			91
			ret
		_m128icmpistrm_92 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			92
			ret
		_m128icmpistrm_93 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			93
			ret
		_m128icmpistrm_94 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			94
			ret
		_m128icmpistrm_95 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			95
			ret
		_m128icmpistrm_96 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			96
			ret
		_m128icmpistrm_97 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			97
			ret
		_m128icmpistrm_98 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			98
			ret
		_m128icmpistrm_99 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			99
			ret
		_m128icmpistrm_100 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			100
			ret
		_m128icmpistrm_101 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			101
			ret
		_m128icmpistrm_102 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			102
			ret
		_m128icmpistrm_103 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			103
			ret
		_m128icmpistrm_104 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			104
			ret
		_m128icmpistrm_105 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			105
			ret
		_m128icmpistrm_106 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			106
			ret
		_m128icmpistrm_107 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			107
			ret
		_m128icmpistrm_108 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			108
			ret
		_m128icmpistrm_109 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			109
			ret
		_m128icmpistrm_110 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			110
			ret
		_m128icmpistrm_111 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			111
			ret
		_m128icmpistrm_112 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			112
			ret
		_m128icmpistrm_113 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			113
			ret
		_m128icmpistrm_114 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			114
			ret
		_m128icmpistrm_115 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			115
			ret
		_m128icmpistrm_116 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			116
			ret
		_m128icmpistrm_117 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			117
			ret
		_m128icmpistrm_118 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			118
			ret
		_m128icmpistrm_119 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			119
			ret
		_m128icmpistrm_120 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			120
			ret
		_m128icmpistrm_121 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			121
			ret
		_m128icmpistrm_122 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			122
			ret
		_m128icmpistrm_123 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			123
			ret
		_m128icmpistrm_124 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			124
			ret
		_m128icmpistrm_125 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			125
			ret
		_m128icmpistrm_126 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			126
			ret
		_m128icmpistrm_127 label size_t
			mov						ecx, 			0x5a
			pcmpistrm				xmm0,			xmm1,			127
			ret
		;.endif
		
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_0, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_1, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_2, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_3, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_4, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_5, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_6, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_7, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_8, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_9, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_10, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_11, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_12, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_13, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_14, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_15, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_16, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_17, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_18, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_19, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_20, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_21, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_22, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_23, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_24, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_25, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_26, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_27, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_28, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_29, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_30, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_31, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_32, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_33, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_34, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_35, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_36, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_37, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_38, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_39, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_40, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_41, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_42, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_43, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_44, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_45, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_46, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_47, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_48, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_49, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_50, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_51, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_52, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_53, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_54, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_55, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_56, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_57, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_58, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_59, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_60, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_61, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_62, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_63, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_64, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_65, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_66, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_67, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_68, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_69, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_70, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_71, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_72, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_73, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_74, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_75, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_76, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_77, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_78, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_79, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_80, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_81, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_82, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_83, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_84, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_85, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_86, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_87, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_88, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_89, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_90, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_91, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_92, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_93, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_94, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_95, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_96, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_97, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_98, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_99, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_100, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_101, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_102, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_103, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_104, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_105, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_106, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_107, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_108, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_109, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_110, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_111, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_112, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_113, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_114, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_115, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_116, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_117, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_118, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_119, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_120, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_121, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_122, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_123, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_124, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_125, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_126, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri_127, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistri, dword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam3 > 3)
		; ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpistrijmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpistrijmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpistri_0 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov 					eax, 			ecx
			ret
		_m128icmpistri_1 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov 					eax, 			ecx
			ret
		_m128icmpistri_2 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov 					eax, 			ecx
			ret
		_m128icmpistri_3 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov 					eax, 			ecx
			ret
		_m128icmpistri_4 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov 					eax, 			ecx
			ret
		_m128icmpistri_5 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov 					eax, 			ecx
			ret
		_m128icmpistri_6 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov 					eax, 			ecx
			ret
		_m128icmpistri_7 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov 					eax, 			ecx
			ret
		_m128icmpistri_8 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov 					eax, 			ecx
			ret
		_m128icmpistri_9 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov 					eax, 			ecx
			ret
		_m128icmpistri_10 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov 					eax, 			ecx
			ret
		_m128icmpistri_11 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov 					eax, 			ecx
			ret
		_m128icmpistri_12 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov 					eax, 			ecx
			ret
		_m128icmpistri_13 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov 					eax, 			ecx
			ret
		_m128icmpistri_14 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov 					eax, 			ecx
			ret
		_m128icmpistri_15 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov 					eax, 			ecx
			ret
		_m128icmpistri_16 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov 					eax, 			ecx
			ret
		_m128icmpistri_17 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov 					eax, 			ecx
			ret
		_m128icmpistri_18 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov 					eax, 			ecx
			ret
		_m128icmpistri_19 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov 					eax, 			ecx
			ret
		_m128icmpistri_20 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov 					eax, 			ecx
			ret
		_m128icmpistri_21 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov 					eax, 			ecx
			ret
		_m128icmpistri_22 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov 					eax, 			ecx
			ret
		_m128icmpistri_23 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov 					eax, 			ecx
			ret
		_m128icmpistri_24 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov 					eax, 			ecx
			ret
		_m128icmpistri_25 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov 					eax, 			ecx
			ret
		_m128icmpistri_26 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov 					eax, 			ecx
			ret
		_m128icmpistri_27 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov 					eax, 			ecx
			ret
		_m128icmpistri_28 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov 					eax, 			ecx
			ret
		_m128icmpistri_29 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov 					eax, 			ecx
			ret
		_m128icmpistri_30 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov 					eax, 			ecx
			ret
		_m128icmpistri_31 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov 					eax, 			ecx
			ret
		_m128icmpistri_32 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov 					eax, 			ecx
			ret
		_m128icmpistri_33 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov 					eax, 			ecx
			ret
		_m128icmpistri_34 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov 					eax, 			ecx
			ret
		_m128icmpistri_35 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov 					eax, 			ecx
			ret
		_m128icmpistri_36 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov 					eax, 			ecx
			ret
		_m128icmpistri_37 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov 					eax, 			ecx
			ret
		_m128icmpistri_38 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov 					eax, 			ecx
			ret
		_m128icmpistri_39 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov 					eax, 			ecx
			ret
		_m128icmpistri_40 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov 					eax, 			ecx
			ret
		_m128icmpistri_41 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov 					eax, 			ecx
			ret
		_m128icmpistri_42 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov 					eax, 			ecx
			ret
		_m128icmpistri_43 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov 					eax, 			ecx
			ret
		_m128icmpistri_44 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov 					eax, 			ecx
			ret
		_m128icmpistri_45 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov 					eax, 			ecx
			ret
		_m128icmpistri_46 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov 					eax, 			ecx
			ret
		_m128icmpistri_47 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov 					eax, 			ecx
			ret
		_m128icmpistri_48 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov 					eax, 			ecx
			ret
		_m128icmpistri_49 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov 					eax, 			ecx
			ret
		_m128icmpistri_50 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov 					eax, 			ecx
			ret
		_m128icmpistri_51 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov 					eax, 			ecx
			ret
		_m128icmpistri_52 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov 					eax, 			ecx
			ret
		_m128icmpistri_53 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov 					eax, 			ecx
			ret
		_m128icmpistri_54 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov 					eax, 			ecx
			ret
		_m128icmpistri_55 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov 					eax, 			ecx
			ret
		_m128icmpistri_56 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov 					eax, 			ecx
			ret
		_m128icmpistri_57 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov 					eax, 			ecx
			ret
		_m128icmpistri_58 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov 					eax, 			ecx
			ret
		_m128icmpistri_59 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov 					eax, 			ecx
			ret
		_m128icmpistri_60 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov 					eax, 			ecx
			ret
		_m128icmpistri_61 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov 					eax, 			ecx
			ret
		_m128icmpistri_62 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov 					eax, 			ecx
			ret
		_m128icmpistri_63 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov 					eax, 			ecx
			ret
		_m128icmpistri_64 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov 					eax, 			ecx
			ret
		_m128icmpistri_65 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov 					eax, 			ecx
			ret
		_m128icmpistri_66 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov 					eax, 			ecx
			ret
		_m128icmpistri_67 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov 					eax, 			ecx
			ret
		_m128icmpistri_68 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov 					eax, 			ecx
			ret
		_m128icmpistri_69 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov 					eax, 			ecx
			ret
		_m128icmpistri_70 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov 					eax, 			ecx
			ret
		_m128icmpistri_71 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov 					eax, 			ecx
			ret
		_m128icmpistri_72 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov 					eax, 			ecx
			ret
		_m128icmpistri_73 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov 					eax, 			ecx
			ret
		_m128icmpistri_74 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov 					eax, 			ecx
			ret
		_m128icmpistri_75 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov 					eax, 			ecx
			ret
		_m128icmpistri_76 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov 					eax, 			ecx
			ret
		_m128icmpistri_77 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov 					eax, 			ecx
			ret
		_m128icmpistri_78 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov 					eax, 			ecx
			ret
		_m128icmpistri_79 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov 					eax, 			ecx
			ret
		_m128icmpistri_80 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov 					eax, 			ecx
			ret
		_m128icmpistri_81 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov 					eax, 			ecx
			ret
		_m128icmpistri_82 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov 					eax, 			ecx
			ret
		_m128icmpistri_83 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov 					eax, 			ecx
			ret
		_m128icmpistri_84 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov 					eax, 			ecx
			ret
		_m128icmpistri_85 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov 					eax, 			ecx
			ret
		_m128icmpistri_86 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov 					eax, 			ecx
			ret
		_m128icmpistri_87 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov 					eax, 			ecx
			ret
		_m128icmpistri_88 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov 					eax, 			ecx
			ret
		_m128icmpistri_89 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov 					eax, 			ecx
			ret
		_m128icmpistri_90 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov 					eax, 			ecx
			ret
		_m128icmpistri_91 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov 					eax, 			ecx
			ret
		_m128icmpistri_92 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov 					eax, 			ecx
			ret
		_m128icmpistri_93 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov 					eax, 			ecx
			ret
		_m128icmpistri_94 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov 					eax, 			ecx
			ret
		_m128icmpistri_95 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov 					eax, 			ecx
			ret
		_m128icmpistri_96 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov 					eax, 			ecx
			ret
		_m128icmpistri_97 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov 					eax, 			ecx
			ret
		_m128icmpistri_98 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov 					eax, 			ecx
			ret
		_m128icmpistri_99 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov 					eax, 			ecx
			ret
		_m128icmpistri_100 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov 					eax, 			ecx
			ret
		_m128icmpistri_101 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov 					eax, 			ecx
			ret
		_m128icmpistri_102 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov 					eax, 			ecx
			ret
		_m128icmpistri_103 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov 					eax, 			ecx
			ret
		_m128icmpistri_104 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov 					eax, 			ecx
			ret
		_m128icmpistri_105 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov 					eax, 			ecx
			ret
		_m128icmpistri_106 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov 					eax, 			ecx
			ret
		_m128icmpistri_107 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov 					eax, 			ecx
			ret
		_m128icmpistri_108 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108
			mov 					eax, 			ecx
			ret
		_m128icmpistri_109 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov 					eax, 			ecx
			ret
		_m128icmpistri_110 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov 					eax, 			ecx
			ret
		_m128icmpistri_111 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov 					eax, 			ecx
			ret
		_m128icmpistri_112 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov 					eax, 			ecx
			ret
		_m128icmpistri_113 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov 					eax, 			ecx
			ret
		_m128icmpistri_114 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov 					eax, 			ecx
			ret
		_m128icmpistri_115 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov 					eax, 			ecx
			ret
		_m128icmpistri_116 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov 					eax, 			ecx
			ret
		_m128icmpistri_117 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov 					eax, 			ecx
			ret
		_m128icmpistri_118 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov 					eax, 			ecx
			ret
		_m128icmpistri_119 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov 					eax, 			ecx
			ret
		_m128icmpistri_120 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov 					eax, 			ecx
			ret
		_m128icmpistri_121 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov 					eax, 			ecx
			ret
		_m128icmpistri_122 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov 					eax, 			ecx
			ret
		_m128icmpistri_123 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov 					eax, 			ecx
			ret
		_m128icmpistri_124 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov 					eax, 			ecx
			ret
		_m128icmpistri_125 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov 					eax, 			ecx
			ret
		_m128icmpistri_126 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov 					eax, 			ecx
			ret
		_m128icmpistri_127 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_0, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_1, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_2, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_3, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_4, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_5, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_6, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_7, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_8, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_9, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_10, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_11, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_12, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_13, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_14, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_15, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_16, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			16
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_17, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			17
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_18, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			18
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_19, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			19
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_20, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			20
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_21, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			21
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_22, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			22
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_23, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			23
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_24, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			24
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_25, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			25
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_26, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			26
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_27, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			27
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_28, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			28
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_29, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			29
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_30, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			30
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_31, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			31
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_32, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			32
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_33, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			33
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_34, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			34
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_35, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			35
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_36, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			36
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_37, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			37
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_38, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			38
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_39, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			39
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_40, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			40
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_41, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			41
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_42, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			42
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_43, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			43
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_44, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			44
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_45, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			45
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_46, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			46
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_47, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			47
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_48, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			48
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_49, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			49
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_50, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			50
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_51, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			51
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_52, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			52
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_53, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			53
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_54, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			54
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_55, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			55
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_56, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			56
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_57, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			57
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_58, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			58
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_59, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			59
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_60, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			60
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_61, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			61
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_62, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			62
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_63, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			63
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_64, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			64
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_65, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			65
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_66, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			66
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_67, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			67
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_68, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			68
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_69, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			69
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_70, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			70
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_71, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			71
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_72, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			72
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_73, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			73
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_74, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			74
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_75, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			75
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_76, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			76
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_77, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			77
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_78, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			78
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_79, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			79
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_80, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			80
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_81, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			81
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_82, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			82
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_83, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			83
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_84, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			84
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_85, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			85
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_86, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			86
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_87, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			87
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_88, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			88
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_89, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			89
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_90, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			90
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_91, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			91
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_92, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			92
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_93, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			93
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_94, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			94
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_95, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			95
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_96, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			96
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_97, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			97
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_98, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			98
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_99, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			99
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_100, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			100
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_101, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			101
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_102, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			102
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_103, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			103
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_104, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			104
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_105, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			105
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_106, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			106
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_107, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			107
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_108, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			108
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_109, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			109
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_110, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			110
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_111, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			111
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_112, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			112
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_113, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			113
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_114, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			114
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_115, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			115
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_116, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			116
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_117, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			117
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_118, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			118
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_119, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			119
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_120, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			120
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_121, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			121
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_122, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			122
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_123, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			123
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_124, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			124
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_125, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			125
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_126, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			126
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm_127, xmmword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			127
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrm, xmmword, < >, 2 * xmm_size + 3 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword, _Imm8:dword
	
			mov 			rparam3, 			rparam5
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpestrmjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpestrmjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpestrm_0 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			0
			ret
		_m128icmpestrm_1 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			1
			ret
		_m128icmpestrm_2 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			2
			ret
		_m128icmpestrm_3 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			3
			ret
		_m128icmpestrm_4 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			4
			ret
		_m128icmpestrm_5 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			5
			ret
		_m128icmpestrm_6 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			6
			ret
		_m128icmpestrm_7 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			7
			ret
		_m128icmpestrm_8 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			8
			ret
		_m128icmpestrm_9 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			9
			ret
		_m128icmpestrm_10 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			10
			ret
		_m128icmpestrm_11 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			11
			ret
		_m128icmpestrm_12 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			12
			ret
		_m128icmpestrm_13 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			13
			ret
		_m128icmpestrm_14 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			14
			ret
		_m128icmpestrm_15 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			15
			ret
		_m128icmpestrm_16 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			16
			ret
		_m128icmpestrm_17 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			17
			ret
		_m128icmpestrm_18 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			18
			ret
		_m128icmpestrm_19 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			19
			ret
		_m128icmpestrm_20 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			20
			ret
		_m128icmpestrm_21 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			21
			ret
		_m128icmpestrm_22 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			22
			ret
		_m128icmpestrm_23 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			23
			ret
		_m128icmpestrm_24 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			24
			ret
		_m128icmpestrm_25 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			25
			ret
		_m128icmpestrm_26 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			26
			ret
		_m128icmpestrm_27 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			27
			ret
		_m128icmpestrm_28 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			28
			ret
		_m128icmpestrm_29 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			29
			ret
		_m128icmpestrm_30 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			30
			ret
		_m128icmpestrm_31 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			31
			ret
		_m128icmpestrm_32 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			32
			ret
		_m128icmpestrm_33 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			33
			ret
		_m128icmpestrm_34 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			34
			ret
		_m128icmpestrm_35 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			35
			ret
		_m128icmpestrm_36 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			36
			ret
		_m128icmpestrm_37 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			37
			ret
		_m128icmpestrm_38 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			38
			ret
		_m128icmpestrm_39 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			39
			ret
		_m128icmpestrm_40 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			40
			ret
		_m128icmpestrm_41 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			41
			ret
		_m128icmpestrm_42 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			42
			ret
		_m128icmpestrm_43 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			43
			ret
		_m128icmpestrm_44 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			44
			ret
		_m128icmpestrm_45 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			45
			ret
		_m128icmpestrm_46 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			46
			ret
		_m128icmpestrm_47 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			47
			ret
		_m128icmpestrm_48 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			48
			ret
		_m128icmpestrm_49 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			49
			ret
		_m128icmpestrm_50 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			50
			ret
		_m128icmpestrm_51 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			51
			ret
		_m128icmpestrm_52 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			52
			ret
		_m128icmpestrm_53 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			53
			ret
		_m128icmpestrm_54 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			54
			ret
		_m128icmpestrm_55 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			55
			ret
		_m128icmpestrm_56 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			56
			ret
		_m128icmpestrm_57 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			57
			ret
		_m128icmpestrm_58 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			58
			ret
		_m128icmpestrm_59 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			59
			ret
		_m128icmpestrm_60 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			60
			ret
		_m128icmpestrm_61 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			61
			ret
		_m128icmpestrm_62 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			62
			ret
		_m128icmpestrm_63 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			63
			ret
		_m128icmpestrm_64 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			64
			ret
		_m128icmpestrm_65 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			65
			ret
		_m128icmpestrm_66 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			66
			ret
		_m128icmpestrm_67 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			67
			ret
		_m128icmpestrm_68 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			68
			ret
		_m128icmpestrm_69 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			69
			ret
		_m128icmpestrm_70 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			70
			ret
		_m128icmpestrm_71 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			71
			ret
		_m128icmpestrm_72 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			72
			ret
		_m128icmpestrm_73 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			73
			ret
		_m128icmpestrm_74 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			74
			ret
		_m128icmpestrm_75 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			75
			ret
		_m128icmpestrm_76 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			76
			ret
		_m128icmpestrm_77 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			77
			ret
		_m128icmpestrm_78 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			78
			ret
		_m128icmpestrm_79 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			79
			ret
		_m128icmpestrm_80 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			80
			ret
		_m128icmpestrm_81 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			81
			ret
		_m128icmpestrm_82 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			82
			ret
		_m128icmpestrm_83 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			83
			ret
		_m128icmpestrm_84 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			84
			ret
		_m128icmpestrm_85 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			85
			ret
		_m128icmpestrm_86 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			86
			ret
		_m128icmpestrm_87 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			87
			ret
		_m128icmpestrm_88 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			88
			ret
		_m128icmpestrm_89 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			89
			ret
		_m128icmpestrm_90 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			90
			ret
		_m128icmpestrm_91 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			91
			ret
		_m128icmpestrm_92 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			92
			ret
		_m128icmpestrm_93 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			93
			ret
		_m128icmpestrm_94 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			94
			ret
		_m128icmpestrm_95 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			95
			ret
		_m128icmpestrm_96 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			96
			ret
		_m128icmpestrm_97 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			97
			ret
		_m128icmpestrm_98 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			98
			ret
		_m128icmpestrm_99 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			99
			ret
		_m128icmpestrm_100 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			100
			ret
		_m128icmpestrm_101 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			101
			ret
		_m128icmpestrm_102 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			102
			ret
		_m128icmpestrm_103 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			103
			ret
		_m128icmpestrm_104 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			104
			ret
		_m128icmpestrm_105 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			105
			ret
		_m128icmpestrm_106 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			106
			ret
		_m128icmpestrm_107 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			107
			ret
		_m128icmpestrm_108 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			108
			ret
		_m128icmpestrm_109 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			109
			ret
		_m128icmpestrm_110 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			110
			ret
		_m128icmpestrm_111 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			111
			ret
		_m128icmpestrm_112 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			112
			ret
		_m128icmpestrm_113 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			113
			ret
		_m128icmpestrm_114 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			114
			ret
		_m128icmpestrm_115 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			115
			ret
		_m128icmpestrm_116 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			116
			ret
		_m128icmpestrm_117 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			117
			ret
		_m128icmpestrm_118 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			118
			ret
		_m128icmpestrm_119 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			119
			ret
		_m128icmpestrm_120 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			120
			ret
		_m128icmpestrm_121 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			121
			ret
		_m128icmpestrm_122 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			122
			ret
		_m128icmpestrm_123 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			123
			ret
		_m128icmpestrm_124 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			124
			ret
		_m128icmpestrm_125 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			125
			ret
		_m128icmpestrm_126 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			126
			ret
		_m128icmpestrm_127 label size_t
			mov						ecx, 			0x5a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestrm				xmm0,			xmm2,			127
			ret
		;.endif
		
_uXm_func_end
	
_uXm_func_start _uXm_mm_cmpestri_0, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_1, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_2, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_3, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_4, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_5, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_6, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_7, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_8, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_9, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_10, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_11, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_12, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_13, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_14, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_15, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_16, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_17, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_18, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_19, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_20, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_21, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_22, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_23, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_24, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_25, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_26, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_27, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_28, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_29, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_30, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_31, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_32, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_33, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_34, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_35, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_36, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_37, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_38, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_39, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_40, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_41, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_42, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_43, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_44, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_45, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_46, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_47, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_48, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_49, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_50, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_51, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_52, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_53, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_54, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_55, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_56, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_57, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_58, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_59, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_60, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_61, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_62, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_63, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_64, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_65, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_66, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_67, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_68, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_69, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_70, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_71, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_72, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_73, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_74, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_75, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_76, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_77, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_78, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_79, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_80, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_81, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_82, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_83, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_84, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_85, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_86, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_87, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_88, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_89, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_90, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_91, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_92, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_93, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_94, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_95, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_96, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_97, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_98, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_99, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_100, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_101, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_102, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_103, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_104, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_105, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_106, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_107, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_108, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_109, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_110, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_111, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_112, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_113, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_114, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_115, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_116, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_117, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_118, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_119, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_120, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_121, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_122, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_123, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_124, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_125, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_126, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri_127, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestri, dword, < >, 2 * xmm_size + 3 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword, _Imm8:dword
	
			mov 			rparam3, 			rparam5
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpestrijmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpestrijmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpestri_0 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			ecx
			ret
		_m128icmpestri_1 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			ecx
			ret
		_m128icmpestri_2 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			ecx
			ret
		_m128icmpestri_3 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			ecx
			ret
		_m128icmpestri_4 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			ecx
			ret
		_m128icmpestri_5 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			ecx
			ret
		_m128icmpestri_6 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			ecx
			ret
		_m128icmpestri_7 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			ecx
			ret
		_m128icmpestri_8 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			ecx
			ret
		_m128icmpestri_9 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			ecx
			ret
		_m128icmpestri_10 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			ecx
			ret
		_m128icmpestri_11 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			ecx
			ret
		_m128icmpestri_12 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			ecx
			ret
		_m128icmpestri_13 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			ecx
			ret
		_m128icmpestri_14 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			ecx
			ret
		_m128icmpestri_15 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			ecx
			ret
		_m128icmpestri_16 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			ecx
			ret
		_m128icmpestri_17 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			ecx
			ret
		_m128icmpestri_18 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			ecx
			ret
		_m128icmpestri_19 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			ecx
			ret
		_m128icmpestri_20 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			ecx
			ret
		_m128icmpestri_21 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			ecx
			ret
		_m128icmpestri_22 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			ecx
			ret
		_m128icmpestri_23 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			ecx
			ret
		_m128icmpestri_24 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			ecx
			ret
		_m128icmpestri_25 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			ecx
			ret
		_m128icmpestri_26 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			ecx
			ret
		_m128icmpestri_27 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			ecx
			ret
		_m128icmpestri_28 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			ecx
			ret
		_m128icmpestri_29 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			ecx
			ret
		_m128icmpestri_30 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			ecx
			ret
		_m128icmpestri_31 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			ecx
			ret
		_m128icmpestri_32 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			ecx
			ret
		_m128icmpestri_33 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			ecx
			ret
		_m128icmpestri_34 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			ecx
			ret
		_m128icmpestri_35 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			ecx
			ret
		_m128icmpestri_36 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			ecx
			ret
		_m128icmpestri_37 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			ecx
			ret
		_m128icmpestri_38 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			ecx
			ret
		_m128icmpestri_39 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			ecx
			ret
		_m128icmpestri_40 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			ecx
			ret
		_m128icmpestri_41 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			ecx
			ret
		_m128icmpestri_42 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			ecx
			ret
		_m128icmpestri_43 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			ecx
			ret
		_m128icmpestri_44 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			ecx
			ret
		_m128icmpestri_45 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			ecx
			ret
		_m128icmpestri_46 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			ecx
			ret
		_m128icmpestri_47 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			ecx
			ret
		_m128icmpestri_48 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			ecx
			ret
		_m128icmpestri_49 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			ecx
			ret
		_m128icmpestri_50 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			ecx
			ret
		_m128icmpestri_51 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			ecx
			ret
		_m128icmpestri_52 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			ecx
			ret
		_m128icmpestri_53 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			ecx
			ret
		_m128icmpestri_54 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			ecx
			ret
		_m128icmpestri_55 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			ecx
			ret
		_m128icmpestri_56 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			ecx
			ret
		_m128icmpestri_57 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			ecx
			ret
		_m128icmpestri_58 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			ecx
			ret
		_m128icmpestri_59 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			ecx
			ret
		_m128icmpestri_60 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			ecx
			ret
		_m128icmpestri_61 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			ecx
			ret
		_m128icmpestri_62 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			ecx
			ret
		_m128icmpestri_63 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			ecx
			ret
		_m128icmpestri_64 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			ecx
			ret
		_m128icmpestri_65 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			ecx
			ret
		_m128icmpestri_66 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			ecx
			ret
		_m128icmpestri_67 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			ecx
			ret
		_m128icmpestri_68 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			ecx
			ret
		_m128icmpestri_69 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			ecx
			ret
		_m128icmpestri_70 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			ecx
			ret
		_m128icmpestri_71 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			ecx
			ret
		_m128icmpestri_72 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			ecx
			ret
		_m128icmpestri_73 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			ecx
			ret
		_m128icmpestri_74 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			ecx
			ret
		_m128icmpestri_75 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			ecx
			ret
		_m128icmpestri_76 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			ecx
			ret
		_m128icmpestri_77 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			ecx
			ret
		_m128icmpestri_78 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			ecx
			ret
		_m128icmpestri_79 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			ecx
			ret
		_m128icmpestri_80 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			ecx
			ret
		_m128icmpestri_81 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			ecx
			ret
		_m128icmpestri_82 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			ecx
			ret
		_m128icmpestri_83 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			ecx
			ret
		_m128icmpestri_84 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			ecx
			ret
		_m128icmpestri_85 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			ecx
			ret
		_m128icmpestri_86 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			ecx
			ret
		_m128icmpestri_87 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			ecx
			ret
		_m128icmpestri_88 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			ecx
			ret
		_m128icmpestri_89 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			ecx
			ret
		_m128icmpestri_90 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			ecx
			ret
		_m128icmpestri_91 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			ecx
			ret
		_m128icmpestri_92 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			ecx
			ret
		_m128icmpestri_93 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			ecx
			ret
		_m128icmpestri_94 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			ecx
			ret
		_m128icmpestri_95 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			ecx
			ret
		_m128icmpestri_96 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			ecx
			ret
		_m128icmpestri_97 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			ecx
			ret
		_m128icmpestri_98 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			ecx
			ret
		_m128icmpestri_99 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			ecx
			ret
		_m128icmpestri_100 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			ecx
			ret
		_m128icmpestri_101 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			ecx
			ret
		_m128icmpestri_102 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			ecx
			ret
		_m128icmpestri_103 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			ecx
			ret
		_m128icmpestri_104 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			ecx
			ret
		_m128icmpestri_105 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			ecx
			ret
		_m128icmpestri_106 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			ecx
			ret
		_m128icmpestri_107 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			ecx
			ret
		_m128icmpestri_108 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			ecx
			ret
		_m128icmpestri_109 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			ecx
			ret
		_m128icmpestri_110 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			ecx
			ret
		_m128icmpestri_111 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			ecx
			ret
		_m128icmpestri_112 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			ecx
			ret
		_m128icmpestri_113 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			ecx
			ret
		_m128icmpestri_114 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			ecx
			ret
		_m128icmpestri_115 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			ecx
			ret
		_m128icmpestri_116 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			ecx
			ret
		_m128icmpestri_117 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			ecx
			ret
		_m128icmpestri_118 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			ecx
			ret
		_m128icmpestri_119 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			ecx
			ret
		_m128icmpestri_120 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			ecx
			ret
		_m128icmpestri_121 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			ecx
			ret
		_m128icmpestri_122 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			ecx
			ret
		_m128icmpestri_123 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			ecx
			ret
		_m128icmpestri_124 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			ecx
			ret
		_m128icmpestri_125 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			ecx
			ret
		_m128icmpestri_126 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			ecx
			ret
		_m128icmpestri_127 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
;************************************
;Intrinsics for text/string processing and reading values of EFlags
;************************************
_uXm_func_start _uXm_mm_cmpistrz_0, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_1, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_2, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_3, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_4, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_5, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_6, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_7, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_8, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_9, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_10, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_11, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_12, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_13, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_14, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_15, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_16, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_17, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_18, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_19, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_20, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_21, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_22, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_23, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_24, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_25, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_26, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_27, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_28, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_29, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_30, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_31, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_32, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_33, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_34, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_35, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_36, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_37, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_38, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_39, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_40, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_41, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_42, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_43, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_44, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_45, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_46, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_47, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_48, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_49, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_50, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_51, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_52, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_53, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_54, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_55, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_56, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_57, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_58, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_59, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_60, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_61, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_62, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_63, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_64, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_65, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_66, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_67, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_68, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_69, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_70, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_71, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_72, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_73, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_74, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_75, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_76, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_77, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_78, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_79, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_80, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_81, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_82, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_83, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_84, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_85, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_86, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_87, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_88, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_89, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_90, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_91, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_92, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_93, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_94, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_95, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_96, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_97, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_98, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_99, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_100, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_101, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_102, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_103, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_104, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_105, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_106, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_107, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_108, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_109, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_110, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_111, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_112, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_113, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_114, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_115, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_116, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_117, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_118, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_119, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_120, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_121, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_122, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_123, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_124, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_125, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_126, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz_127, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrz, dword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam3 > 3)
		; ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpistrzjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpistrzjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpistrz_0 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_1 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_2 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_3 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_4 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_5 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_6 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_7 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_8 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_9 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_10 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_11 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_12 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_13 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_14 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_15 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_16 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_17 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_18 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_19 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_20 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_21 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_22 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_23 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_24 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_25 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_26 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_27 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_28 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_29 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_30 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_31 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_32 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_33 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_34 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_35 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_36 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_37 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_38 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_39 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_40 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_41 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_42 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_43 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_44 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_45 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_46 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_47 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_48 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_49 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_50 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_51 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_52 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_53 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_54 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_55 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_56 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_57 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_58 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_59 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_60 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_61 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_62 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_63 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_64 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_65 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_66 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_67 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_68 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_69 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_70 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_71 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_72 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_73 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_74 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_75 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_76 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_77 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_78 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_79 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_80 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_81 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_82 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_83 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_84 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_85 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_86 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_87 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_88 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_89 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_90 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_91 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_92 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_93 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_94 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_95 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_96 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_97 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_98 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_99 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_100 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_101 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_102 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_103 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_104 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_105 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_106 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_107 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_108 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108

			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_109 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_110 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_111 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_112 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_113 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_114 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_115 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_116 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_117 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_118 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_119 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_120 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_121 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_122 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_123 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_124 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_125 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_126 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrz_127 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
_uXm_func_start _uXm_mm_cmpistrc_0, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_1, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_2, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_3, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_4, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_5, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_6, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_7, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_8, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_9, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_10, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_11, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_12, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_13, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_14, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_15, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_16, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_17, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_18, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_19, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_20, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_21, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_22, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_23, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_24, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_25, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_26, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_27, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_28, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_29, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_30, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_31, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_32, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_33, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_34, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_35, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_36, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_37, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_38, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_39, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_40, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_41, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_42, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_43, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_44, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_45, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_46, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_47, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_48, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_49, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_50, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_51, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_52, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_53, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_54, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_55, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_56, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_57, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_58, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_59, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_60, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_61, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_62, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_63, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_64, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_65, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_66, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_67, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_68, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_69, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_70, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_71, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_72, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_73, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_74, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_75, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_76, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_77, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_78, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_79, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_80, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_81, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_82, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_83, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_84, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_85, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_86, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_87, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_88, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_89, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_90, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_91, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_92, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_93, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_94, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_95, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_96, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_97, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_98, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_99, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_100, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_101, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_102, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_103, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_104, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_105, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_106, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_107, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_108, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_109, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_110, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_111, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_112, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_113, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_114, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_115, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_116, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_117, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_118, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_119, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_120, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_121, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_122, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_123, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_124, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_125, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_126, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc_127, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrc, dword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam3 > 3)
		; ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpistrcjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpistrcjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpistrc_0 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_1 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_2 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_3 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_4 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_5 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_6 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_7 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_8 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_9 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_10 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_11 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_12 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_13 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_14 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_15 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_16 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_17 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_18 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_19 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_20 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_21 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_22 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_23 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_24 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_25 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_26 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_27 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_28 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_29 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_30 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_31 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_32 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_33 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_34 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_35 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_36 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_37 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_38 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_39 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_40 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_41 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_42 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_43 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_44 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_45 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_46 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_47 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_48 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_49 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_50 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_51 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_52 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_53 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_54 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_55 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_56 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_57 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_58 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_59 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_60 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_61 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_62 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_63 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_64 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_65 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_66 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_67 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_68 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_69 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_70 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_71 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_72 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_73 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_74 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_75 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_76 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_77 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_78 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_79 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_80 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_81 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_82 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_83 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_84 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_85 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_86 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_87 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_88 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_89 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_90 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_91 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_92 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_93 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_94 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_95 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_96 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_97 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_98 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_99 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_100 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_101 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_102 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_103 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_104 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_105 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_106 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_107 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_108 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108

			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_109 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_110 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_111 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_112 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_113 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_114 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_115 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_116 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_117 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_118 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_119 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_120 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_121 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_122 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_123 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_124 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_125 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_126 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrc_127 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
_uXm_func_start _uXm_mm_cmpistrs_0, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_1, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_2, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_3, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_4, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_5, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_6, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_7, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_8, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_9, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_10, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_11, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_12, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_13, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_14, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_15, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_16, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_17, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_18, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_19, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_20, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_21, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_22, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_23, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_24, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_25, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_26, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_27, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_28, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_29, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_30, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_31, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_32, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_33, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_34, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_35, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_36, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_37, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_38, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_39, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_40, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_41, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_42, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_43, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_44, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_45, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_46, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_47, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_48, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_49, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_50, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_51, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_52, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_53, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_54, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_55, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_56, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_57, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_58, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_59, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_60, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_61, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_62, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_63, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_64, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_65, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_66, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_67, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_68, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_69, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_70, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_71, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_72, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_73, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_74, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_75, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_76, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_77, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_78, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_79, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_80, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_81, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_82, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_83, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_84, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_85, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_86, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_87, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_88, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_89, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_90, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_91, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_92, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_93, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_94, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_95, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_96, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_97, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_98, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_99, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_100, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_101, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_102, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_103, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_104, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_105, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_106, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_107, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_108, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_109, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_110, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_111, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_112, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_113, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_114, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_115, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_116, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_117, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_118, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_119, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_120, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_121, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_122, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_123, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_124, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_125, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_126, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs_127, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistrs, dword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam3 > 3)
		; ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpistrsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpistrsjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpistrs_0 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_1 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_2 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_3 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_4 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_5 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_6 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_7 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_8 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_9 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_10 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_11 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_12 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_13 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_14 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_15 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_16 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_17 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_18 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_19 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_20 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_21 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_22 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_23 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_24 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_25 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_26 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_27 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_28 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_29 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_30 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_31 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_32 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_33 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_34 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_35 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_36 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_37 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_38 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_39 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_40 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_41 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_42 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_43 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_44 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_45 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_46 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_47 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_48 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_49 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_50 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_51 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_52 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_53 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_54 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_55 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_56 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_57 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_58 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_59 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_60 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_61 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_62 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_63 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_64 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_65 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_66 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_67 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_68 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_69 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_70 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_71 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_72 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_73 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_74 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_75 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_76 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_77 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_78 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_79 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_80 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_81 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_82 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_83 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_84 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_85 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_86 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_87 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_88 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_89 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_90 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_91 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_92 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_93 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_94 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_95 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_96 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_97 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_98 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_99 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_100 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_101 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_102 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_103 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_104 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_105 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_106 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_107 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_108 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108

			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_109 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_110 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_111 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_112 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_113 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_114 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_115 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_116 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_117 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_118 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_119 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_120 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_121 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_122 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_123 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_124 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_125 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_126 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistrs_127 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
_uXm_func_start _uXm_mm_cmpistro_0, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_1, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_2, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_3, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_4, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_5, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_6, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_7, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_8, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_9, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_10, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_11, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_12, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_13, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_14, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_15, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_16, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_17, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_18, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_19, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_20, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_21, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_22, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_23, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_24, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_25, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_26, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_27, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_28, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_29, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_30, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_31, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_32, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_33, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_34, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_35, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_36, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_37, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_38, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_39, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_40, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_41, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_42, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_43, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_44, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_45, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_46, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_47, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_48, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_49, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_50, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_51, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_52, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_53, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_54, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_55, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_56, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_57, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_58, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_59, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_60, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_61, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_62, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_63, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_64, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_65, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_66, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_67, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_68, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_69, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_70, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_71, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_72, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_73, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_74, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_75, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_76, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_77, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_78, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_79, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_80, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_81, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_82, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_83, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_84, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_85, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_86, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_87, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_88, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_89, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_90, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_91, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_92, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_93, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_94, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_95, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_96, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_97, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_98, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_99, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_100, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_101, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_102, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_103, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_104, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_105, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_106, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_107, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_108, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_109, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_110, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_111, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_112, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_113, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_114, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_115, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_116, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_117, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_118, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_119, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_120, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_121, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_122, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_123, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_124, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_125, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_126, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro_127, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistro, dword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam3 > 3)
		; ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpistrojmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpistrojmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpistro_0 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_1 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_2 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_3 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_4 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_5 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_6 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_7 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_8 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_9 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_10 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_11 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_12 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_13 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_14 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_15 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_16 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_17 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_18 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_19 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_20 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_21 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_22 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_23 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_24 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_25 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_26 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_27 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_28 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_29 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_30 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_31 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_32 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_33 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_34 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_35 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_36 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_37 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_38 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_39 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_40 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_41 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_42 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_43 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_44 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_45 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_46 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_47 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_48 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_49 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_50 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_51 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_52 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_53 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_54 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_55 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_56 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_57 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_58 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_59 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_60 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_61 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_62 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_63 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_64 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_65 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_66 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_67 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_68 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_69 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_70 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_71 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_72 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_73 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_74 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_75 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_76 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_77 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_78 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_79 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_80 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_81 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_82 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_83 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_84 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_85 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_86 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_87 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_88 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_89 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_90 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_91 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_92 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_93 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_94 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_95 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_96 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_97 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_98 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_99 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_100 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_101 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_102 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_103 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_104 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_105 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_106 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_107 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_108 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108

			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_109 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_110 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_111 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_112 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_113 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_114 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_115 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_116 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_117 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_118 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_119 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_120 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_121 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_122 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_123 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_124 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_125 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_126 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistro_127 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov     				eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
_uXm_func_start _uXm_mm_cmpistra_0, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_1, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_2, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_3, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_4, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_5, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_6, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_7, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_8, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_9, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_10, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_11, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_12, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_13, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_14, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_15, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_16, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_17, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_18, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_19, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_20, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_21, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_22, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_23, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_24, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_25, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_26, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_27, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_28, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_29, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_30, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_31, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_32, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_33, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_34, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_35, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_36, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_37, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_38, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_39, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_40, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_41, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_42, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_43, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_44, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_45, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_46, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_47, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_48, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_49, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_50, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_51, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_52, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_53, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_54, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_55, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_56, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_57, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_58, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_59, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_60, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_61, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_62, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_63, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_64, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_65, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_66, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_67, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_68, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_69, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_70, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_71, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_72, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_73, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_74, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_75, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_76, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_77, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_78, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_79, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_80, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_81, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_82, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_83, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_84, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_85, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_86, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_87, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_88, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_89, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_90, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_91, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_92, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_93, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_94, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_95, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_96, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_97, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_98, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_99, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_100, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_101, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_102, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_103, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_104, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_105, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_106, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_107, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_108, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_109, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_110, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_111, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_112, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_113, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_114, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_115, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_116, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_117, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_118, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_119, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_120, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_121, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_122, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_123, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_124, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_125, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_126, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra_127, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpistra, dword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
	
		;.if(rparam3 > 3)
		; ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpistrajmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpistrajmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpistra_0 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			0
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_1 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			1
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_2 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			2
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_3 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			3
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_4 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			4
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_5 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			5
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_6 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			6
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_7 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			7
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_8 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			8
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_9 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			9
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_10 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			10
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_11 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			11
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_12 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			12
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_13 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			13
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_14 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			14
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_15 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			15
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_16 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			16
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_17 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			17
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_18 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			18
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_19 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			19
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_20 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			20
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_21 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			21
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_22 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			22
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_23 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			23
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_24 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			24
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_25 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			25
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_26 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			26
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_27 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			27
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_28 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			28
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_29 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			29
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_30 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			30
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_31 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			31
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_32 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			32
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_33 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			33
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_34 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			34
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_35 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			35
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_36 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			36
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_37 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			37
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_38 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			38
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_39 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			39
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_40 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			40
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_41 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			41
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_42 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			42
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_43 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			43
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_44 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			44
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_45 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			45
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_46 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			46
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_47 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			47
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_48 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			48
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_49 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			49
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_50 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			50
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_51 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			51
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_52 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			52
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_53 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			53
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_54 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			54
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_55 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			55
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_56 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			56
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_57 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			57
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_58 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			58
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_59 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			59
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_60 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			60
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_61 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			61
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_62 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			62
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_63 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			63
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_64 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			64
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_65 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			65
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_66 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			66
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_67 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			67
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_68 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			68
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_69 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			69
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_70 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			70
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_71 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			71
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_72 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			72
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_73 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			73
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_74 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			74
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_75 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			75
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_76 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			76
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_77 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			77
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_78 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			78
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_79 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			79
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_80 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			80
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_81 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			81
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_82 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			82
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_83 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			83
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_84 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			84
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_85 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			85
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_86 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			86
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_87 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			87
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_88 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			88
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_89 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			89
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_90 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			90
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_91 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			91
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_92 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			92
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_93 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			93
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_94 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			94
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_95 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			95
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_96 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			96
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_97 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			97
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_98 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			98
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_99 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			99
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_100 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			100
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_101 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			101
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_102 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			102
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_103 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			103
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_104 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			104
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_105 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			105
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_106 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			106
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_107 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			107
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_108 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			108

			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_109 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			109
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_110 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			110
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_111 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			111
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_112 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			112
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_113 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			113
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_114 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			114
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_115 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			115
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_116 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			116
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_117 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			117
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_118 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			118
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_119 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			119
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_120 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			120
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_121 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			121
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_122 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			122
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_123 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			123
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_124 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			124
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_125 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			125
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_126 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			126
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpistra_127 label size_t
			mov						ecx, 			0x4a
			pcmpistri 				xmm0, 			xmm1, 			127
			mov     				eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
_uXm_func_start _uXm_mm_cmpestrz_0, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_1, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_2, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_3, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_4, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_5, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_6, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_7, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_8, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_9, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_10, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_11, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_12, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_13, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_14, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_15, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_16, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_17, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_18, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_19, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_20, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_21, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_22, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_23, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_24, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_25, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_26, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_27, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_28, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_29, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_30, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_31, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_32, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_33, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_34, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_35, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_36, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_37, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_38, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_39, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_40, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_41, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_42, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_43, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_44, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_45, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_46, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_47, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_48, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_49, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_50, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_51, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_52, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_53, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_54, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_55, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_56, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_57, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_58, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_59, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_60, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_61, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_62, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_63, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_64, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_65, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_66, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_67, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_68, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_69, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_70, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_71, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_72, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_73, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_74, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_75, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_76, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_77, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_78, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_79, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_80, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_81, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_82, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_83, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_84, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_85, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_86, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_87, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_88, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_89, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_90, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_91, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_92, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_93, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_94, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_95, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_96, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_97, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_98, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_99, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_100, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_101, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_102, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_103, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_104, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_105, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_106, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_107, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_108, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_109, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_110, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_111, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_112, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_113, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_114, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_115, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_116, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_117, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_118, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_119, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_120, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_121, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_122, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_123, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_124, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_125, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_126, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz_127, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrz, dword, < >, 2 * xmm_size + 3 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword, _Imm8:dword
	
			mov 			rparam3, 			rparam5
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpestrzjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpestrzjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpestrz_0 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_1 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_2 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_3 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_4 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_5 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_6 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_7 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_8 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_9 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_10 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_11 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_12 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_13 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_14 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_15 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_16 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_17 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_18 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_19 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_20 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_21 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_22 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_23 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_24 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_25 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_26 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_27 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_28 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_29 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_30 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_31 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_32 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_33 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_34 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_35 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_36 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_37 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_38 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_39 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_40 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_41 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_42 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_43 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_44 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_45 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_46 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_47 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_48 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_49 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_50 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_51 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_52 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_53 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_54 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_55 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_56 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_57 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_58 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_59 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_60 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_61 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_62 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_63 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_64 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_65 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_66 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_67 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_68 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_69 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_70 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_71 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_72 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_73 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_74 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_75 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_76 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_77 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_78 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_79 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_80 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_81 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_82 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_83 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_84 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_85 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_86 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_87 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_88 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_89 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_90 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_91 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_92 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_93 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_94 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_95 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_96 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_97 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_98 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_99 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_100 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_101 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_102 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_103 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_104 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_105 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_106 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_107 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_108 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_109 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_110 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_111 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_112 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_113 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_114 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_115 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_116 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_117 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_118 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_119 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_120 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_121 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_122 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_123 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_124 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_125 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_126 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrz_127 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovz 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
_uXm_func_start _uXm_mm_cmpestrc_0, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_1, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_2, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_3, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_4, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_5, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_6, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_7, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_8, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_9, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_10, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_11, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_12, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_13, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_14, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_15, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_16, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_17, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_18, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_19, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_20, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_21, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_22, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_23, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_24, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_25, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_26, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_27, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_28, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_29, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_30, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_31, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_32, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_33, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_34, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_35, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_36, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_37, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_38, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_39, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_40, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_41, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_42, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_43, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_44, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_45, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_46, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_47, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_48, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_49, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_50, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_51, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_52, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_53, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_54, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_55, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_56, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_57, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_58, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_59, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_60, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_61, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_62, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_63, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_64, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_65, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_66, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_67, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_68, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_69, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_70, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_71, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_72, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_73, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_74, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_75, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_76, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_77, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_78, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_79, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_80, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_81, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_82, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_83, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_84, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_85, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_86, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_87, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_88, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_89, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_90, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_91, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_92, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_93, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_94, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_95, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_96, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_97, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_98, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_99, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_100, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_101, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_102, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_103, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_104, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_105, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_106, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_107, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_108, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_109, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_110, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_111, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_112, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_113, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_114, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_115, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_116, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_117, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_118, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_119, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_120, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_121, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_122, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_123, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_124, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_125, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_126, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc_127, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrc, dword, < >, 2 * xmm_size + 3 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword, _Imm8:dword
	
			mov 			rparam3, 			rparam5
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpestrcjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpestrcjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpestrc_0 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_1 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_2 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_3 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_4 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_5 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_6 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_7 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_8 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_9 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_10 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_11 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_12 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_13 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_14 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_15 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_16 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_17 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_18 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_19 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_20 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_21 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_22 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_23 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_24 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_25 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_26 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_27 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_28 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_29 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_30 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_31 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_32 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_33 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_34 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_35 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_36 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_37 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_38 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_39 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_40 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_41 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_42 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_43 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_44 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_45 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_46 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_47 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_48 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_49 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_50 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_51 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_52 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_53 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_54 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_55 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_56 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_57 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_58 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_59 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_60 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_61 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_62 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_63 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_64 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_65 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_66 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_67 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_68 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_69 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_70 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_71 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_72 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_73 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_74 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_75 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_76 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_77 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_78 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_79 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_80 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_81 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_82 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_83 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_84 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_85 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_86 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_87 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_88 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_89 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_90 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_91 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_92 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_93 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_94 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_95 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_96 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_97 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_98 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_99 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_100 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_101 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_102 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_103 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_104 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_105 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_106 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_107 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_108 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_109 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_110 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_111 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_112 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_113 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_114 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_115 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_116 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_117 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_118 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_119 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_120 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_121 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_122 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_123 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_124 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_125 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_126 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrc_127 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovb 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
_uXm_func_start _uXm_mm_cmpestrs_0, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_1, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_2, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_3, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_4, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_5, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_6, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_7, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_8, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_9, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_10, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_11, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_12, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_13, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_14, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_15, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_16, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_17, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_18, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_19, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_20, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_21, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_22, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_23, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_24, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_25, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_26, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_27, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_28, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_29, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_30, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_31, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_32, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_33, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_34, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_35, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_36, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_37, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_38, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_39, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_40, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_41, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_42, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_43, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_44, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_45, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_46, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_47, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_48, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_49, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_50, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_51, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_52, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_53, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_54, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_55, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_56, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_57, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_58, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_59, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_60, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_61, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_62, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_63, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_64, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_65, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_66, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_67, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_68, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_69, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_70, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_71, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_72, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_73, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_74, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_75, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_76, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_77, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_78, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_79, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_80, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_81, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_82, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_83, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_84, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_85, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_86, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_87, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_88, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_89, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_90, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_91, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_92, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_93, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_94, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_95, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_96, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_97, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_98, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_99, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_100, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_101, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_102, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_103, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_104, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_105, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_106, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_107, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_108, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_109, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_110, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_111, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_112, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_113, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_114, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_115, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_116, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_117, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_118, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_119, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_120, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_121, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_122, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_123, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_124, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_125, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_126, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs_127, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestrs, dword, < >, 2 * xmm_size + 3 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword, _Imm8:dword
	
			mov 			rparam3, 			rparam5
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpestrsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpestrsjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpestrs_0 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_1 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_2 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_3 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_4 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_5 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_6 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_7 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_8 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_9 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_10 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_11 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_12 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_13 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_14 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_15 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_16 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_17 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_18 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_19 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_20 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_21 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_22 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_23 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_24 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_25 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_26 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_27 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_28 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_29 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_30 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_31 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_32 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_33 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_34 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_35 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_36 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_37 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_38 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_39 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_40 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_41 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_42 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_43 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_44 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_45 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_46 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_47 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_48 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_49 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_50 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_51 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_52 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_53 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_54 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_55 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_56 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_57 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_58 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_59 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_60 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_61 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_62 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_63 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_64 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_65 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_66 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_67 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_68 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_69 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_70 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_71 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_72 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_73 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_74 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_75 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_76 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_77 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_78 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_79 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_80 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_81 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_82 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_83 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_84 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_85 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_86 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_87 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_88 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_89 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_90 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_91 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_92 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_93 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_94 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_95 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_96 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_97 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_98 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_99 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_100 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_101 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_102 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_103 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_104 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_105 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_106 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_107 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_108 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_109 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_110 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_111 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_112 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_113 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_114 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_115 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_116 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_117 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_118 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_119 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_120 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_121 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_122 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_123 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_124 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_125 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_126 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestrs_127 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovs 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
_uXm_func_start _uXm_mm_cmpestro_0, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_1, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_2, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_3, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_4, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_5, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_6, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_7, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_8, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_9, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_10, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_11, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_12, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_13, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_14, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_15, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_16, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_17, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_18, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_19, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_20, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_21, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_22, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_23, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_24, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_25, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_26, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_27, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_28, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_29, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_30, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_31, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_32, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_33, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_34, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_35, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_36, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_37, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_38, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_39, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_40, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_41, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_42, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_43, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_44, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_45, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_46, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_47, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_48, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_49, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_50, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_51, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_52, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_53, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_54, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_55, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_56, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_57, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_58, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_59, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_60, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_61, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_62, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_63, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_64, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_65, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_66, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_67, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_68, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_69, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_70, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_71, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_72, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_73, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_74, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_75, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_76, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_77, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_78, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_79, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_80, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_81, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_82, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_83, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_84, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_85, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_86, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_87, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_88, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_89, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_90, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_91, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_92, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_93, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_94, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_95, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_96, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_97, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_98, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_99, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_100, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_101, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_102, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_103, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_104, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_105, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_106, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_107, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_108, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_109, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_110, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_111, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_112, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_113, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_114, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_115, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_116, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_117, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_118, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_119, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_120, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_121, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_122, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_123, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_124, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_125, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_126, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro_127, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestro, dword, < >, 2 * xmm_size + 3 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword, _Imm8:dword
	
			mov 			rparam3, 			rparam5
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpestrojmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpestrojmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpestro_0 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_1 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_2 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_3 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_4 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_5 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_6 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_7 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_8 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_9 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_10 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_11 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_12 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_13 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_14 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_15 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_16 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_17 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_18 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_19 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_20 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_21 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_22 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_23 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_24 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_25 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_26 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_27 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_28 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_29 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_30 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_31 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_32 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_33 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_34 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_35 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_36 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_37 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_38 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_39 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_40 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_41 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_42 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_43 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_44 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_45 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_46 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_47 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_48 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_49 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_50 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_51 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_52 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_53 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_54 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_55 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_56 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_57 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_58 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_59 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_60 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_61 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_62 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_63 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_64 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_65 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_66 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_67 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_68 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_69 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_70 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_71 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_72 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_73 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_74 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_75 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_76 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_77 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_78 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_79 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_80 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_81 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_82 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_83 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_84 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_85 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_86 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_87 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_88 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_89 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_90 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_91 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_92 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_93 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_94 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_95 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_96 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_97 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_98 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_99 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_100 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_101 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_102 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_103 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_104 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_105 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_106 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_107 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_108 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_109 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_110 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_111 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_112 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_113 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_114 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_115 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_116 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_117 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_118 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_119 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_120 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_121 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_122 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_123 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_124 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_125 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_126 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestro_127 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			1
			mov 					ecx, 			0
			cmovo 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
_uXm_func_start _uXm_mm_cmpestra_0, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_1, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_2, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_3, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_4, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_5, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_6, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_7, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_8, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_9, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_10, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_11, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_12, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_13, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_14, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_15, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_16, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_17, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_18, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_19, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_20, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_21, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_22, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_23, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_24, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_25, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_26, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_27, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_28, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_29, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_30, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_31, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_32, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_33, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_34, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_35, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_36, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_37, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_38, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_39, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_40, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_41, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_42, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_43, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_44, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_45, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_46, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_47, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_48, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_49, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_50, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_51, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_52, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_53, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_54, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_55, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_56, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_57, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_58, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_59, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_60, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_61, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_62, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_63, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_64, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_65, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_66, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_67, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_68, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_69, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_70, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_71, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_72, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_73, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_74, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_75, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_76, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_77, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_78, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_79, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_80, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_81, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_82, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_83, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_84, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_85, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_86, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_87, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_88, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_89, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_90, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_91, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_92, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_93, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_94, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_95, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_96, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_97, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_98, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_99, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_100, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_101, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_102, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_103, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_104, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_105, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_106, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_107, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_108, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_109, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_110, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_111, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_112, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_113, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_114, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_115, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_116, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_117, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_118, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_119, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_120, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_121, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_122, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_123, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_124, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_125, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_126, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra_127, dword, < >, 2 * xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpestra, dword, < >, 2 * xmm_size + 3 * reg_size ;InXmm_A:xmmword, Inint_LA:dword, InXmm_B:xmmword, Inint_LB:dword, _Imm8:dword
	
			mov 			rparam3, 			rparam5
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128icmpestrajmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128icmpestrajmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128icmpestra_0 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			0
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_1 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			1
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_2 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			2
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_3 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			3
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_4 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			4
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_5 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			5
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_6 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			6
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_7 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			7
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_8 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			8
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_9 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			9
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_10 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			10
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_11 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			11
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_12 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			12
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_13 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			13
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_14 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			14
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_15 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			15
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_16 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			16
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_17 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			17
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_18 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			18
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_19 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			19
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_20 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			20
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_21 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			21
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_22 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			22
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_23 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			23
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_24 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			24
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_25 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			25
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_26 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			26
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_27 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			27
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_28 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			28
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_29 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			29
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_30 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			30
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_31 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			31
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_32 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			32
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_33 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			33
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_34 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			34
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_35 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			35
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_36 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			36
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_37 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			37
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_38 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			38
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_39 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			39
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_40 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			40
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_41 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			41
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_42 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			42
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_43 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			43
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_44 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			44
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_45 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			45
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_46 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			46
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_47 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			47
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_48 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			48
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_49 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			49
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_50 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			50
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_51 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			51
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_52 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			52
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_53 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			53
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_54 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			54
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_55 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			55
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_56 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			56
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_57 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			57
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_58 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			58
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_59 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			59
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_60 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			60
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_61 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			61
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_62 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			62
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_63 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			63
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_64 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			64
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_65 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			65
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_66 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			66
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_67 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			67
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_68 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			68
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_69 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			69
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_70 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			70
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_71 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			71
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_72 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			72
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_73 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			73
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_74 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			74
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_75 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			75
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_76 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			76
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_77 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			77
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_78 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			78
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_79 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			79
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_80 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			80
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_81 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			81
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_82 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			82
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_83 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			83
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_84 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			84
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_85 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			85
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_86 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			86
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_87 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			87
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_88 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			88
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_89 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			89
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_90 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			90
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_91 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			91
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_92 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			92
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_93 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			93
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_94 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			94
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_95 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			95
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_96 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			96
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_97 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			97
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_98 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			98
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_99 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			99
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_100 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			100
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_101 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			101
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_102 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			102
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_103 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			103
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_104 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			104
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_105 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			105
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_106 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			106
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_107 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			107
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_108 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			108
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_109 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			109
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_110 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			110
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_111 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			111
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_112 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			112
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_113 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			113
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_114 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			114
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_115 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			115
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_116 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			116
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_117 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			117
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_118 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			118
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_119 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			119
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_120 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			120
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_121 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			121
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_122 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			122
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_123 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			123
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_124 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			124
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_125 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			125
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_126 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			126
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		_m128icmpestra_127 label size_t
			mov						ecx, 			0x4a
			mov 					eax, 			dparam2
			mov 					edx, 			dparam4
			pcmpestri				xmm0,			xmm2,			127
			mov 					eax, 			1
			mov 					ecx, 			0
			cmova 					ecx, 			eax
			mov 					eax, 			ecx
			ret
		;.endif
		
_uXm_func_end
	
;************************************
; Packed integer 64-bit comparison, zeroing or filling with ones corresponding parts of result
;************************************
_uXm_func_start _uXm_mm_cmpgt_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pcmpgtq			xmm0,			xmm1

			ret
_uXm_func_end
	
;************************************
; Calculate a number of bits set to 1
;************************************
_uXm_func_start _uXm_mm_popcnt_u32, dword, < >, reg_size ;Inint_A:dword

			popcnt			dreturn,			dparam1

			ret
_uXm_func_end
	
ifdef __X64__
_uXm_func_start _uXm_mm_popcnt_u64, qword, < >, reg_size ;Inint_A:qword

			popcnt			rreturn,			rparam1

			ret
_uXm_func_end
endif ;__X64__
	
;************************************
; Accumulate CRC32(polynomial 0x11EDC6F41) value
;************************************
_uXm_func_start _uXm_mm_crc32_u8, dword, < >, 2 * reg_size ;Inint_A:dword, Inint_A:byte

			mov				rreturn,			rparam1
			crc32			dreturn,			bparam2

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_crc32_u16, dword, < >, 2 * reg_size ;Inint_A:dword, Inint_A:word

			mov				rreturn,			rparam1
			crc32			dreturn,			wparam2

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_crc32_u32, dword, < >, 2 * reg_size ;Inint_A:dword, Inint_A:dword

			mov				rreturn,			rparam1
			crc32			dreturn,			dparam2

			ret
_uXm_func_end

ifdef __X64__
_uXm_func_start _uXm_mm_crc32_u64, dword, < >, 2 * reg_size ;Inint_A:qword, Inint_A:qword

			mov				rreturn,			rparam1
			crc32			rreturn,			rparam2

			ret
_uXm_func_end
endif ;__X64__

endif ;__MIC__

	end
