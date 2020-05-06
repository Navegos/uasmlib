
ifndef __MIC__  

ifdef __X32__
    include uXx86asm.inc

    .xmm
    option arch:sse
    option evex:0

    .data?

    .data

    .const

        alignsize_t
        _m64pshufwjmptable isize_t offset _m64pshufw_0, offset _m64pshufw_1, offset _m64pshufw_2, offset _m64pshufw_3, offset _m64pshufw_4, \
                                   offset _m64pshufw_5, offset _m64pshufw_6, offset _m64pshufw_7, offset _m64pshufw_8, offset _m64pshufw_9, \
                                   offset _m64pshufw_10, offset _m64pshufw_11, offset _m64pshufw_12, offset _m64pshufw_13, offset _m64pshufw_14, \
                                   offset _m64pshufw_15, offset _m64pshufw_16, offset _m64pshufw_17, offset _m64pshufw_18, offset _m64pshufw_19, \
                                   offset _m64pshufw_20, offset _m64pshufw_21, offset _m64pshufw_22, offset _m64pshufw_23, offset _m64pshufw_24, \
                                   offset _m64pshufw_25, offset _m64pshufw_26, offset _m64pshufw_27, offset _m64pshufw_28, offset _m64pshufw_29, \
                                   offset _m64pshufw_30, offset _m64pshufw_31, offset _m64pshufw_32, offset _m64pshufw_33, offset _m64pshufw_34, \
                                   offset _m64pshufw_35, offset _m64pshufw_36, offset _m64pshufw_37, offset _m64pshufw_38, offset _m64pshufw_39, \
                                   offset _m64pshufw_40, offset _m64pshufw_41, offset _m64pshufw_42, offset _m64pshufw_43, offset _m64pshufw_44, \
                                   offset _m64pshufw_45, offset _m64pshufw_46, offset _m64pshufw_47, offset _m64pshufw_48, offset _m64pshufw_49, \
                                   offset _m64pshufw_50, offset _m64pshufw_51, offset _m64pshufw_52, offset _m64pshufw_53, offset _m64pshufw_54, \
                                   offset _m64pshufw_55, offset _m64pshufw_56, offset _m64pshufw_57, offset _m64pshufw_58, offset _m64pshufw_59, \
                                   offset _m64pshufw_60, offset _m64pshufw_61, offset _m64pshufw_62, offset _m64pshufw_63, offset _m64pshufw_64, \
                                   offset _m64pshufw_65, offset _m64pshufw_66, offset _m64pshufw_67, offset _m64pshufw_68, offset _m64pshufw_69, \
                                   offset _m64pshufw_70, offset _m64pshufw_71, offset _m64pshufw_72, offset _m64pshufw_73, offset _m64pshufw_74, \
                                   offset _m64pshufw_75, offset _m64pshufw_76, offset _m64pshufw_77, offset _m64pshufw_78, offset _m64pshufw_79, \
                                   offset _m64pshufw_80, offset _m64pshufw_81, offset _m64pshufw_82, offset _m64pshufw_83, offset _m64pshufw_84, \
                                   offset _m64pshufw_85, offset _m64pshufw_86, offset _m64pshufw_87, offset _m64pshufw_88, offset _m64pshufw_89, \
                                   offset _m64pshufw_90, offset _m64pshufw_91, offset _m64pshufw_92, offset _m64pshufw_93, offset _m64pshufw_94, \
                                   offset _m64pshufw_95, offset _m64pshufw_96, offset _m64pshufw_97, offset _m64pshufw_98, offset _m64pshufw_99, \
                                   offset _m64pshufw_100, offset _m64pshufw_101, offset _m64pshufw_102, offset _m64pshufw_103, offset _m64pshufw_104, \
                                   offset _m64pshufw_105, offset _m64pshufw_106, offset _m64pshufw_107, offset _m64pshufw_108, offset _m64pshufw_109, \
                                   offset _m64pshufw_110, offset _m64pshufw_111, offset _m64pshufw_112, offset _m64pshufw_113, offset _m64pshufw_114, \
                                   offset _m64pshufw_115, offset _m64pshufw_116, offset _m64pshufw_117, offset _m64pshufw_118, offset _m64pshufw_119, \
                                   offset _m64pshufw_120, offset _m64pshufw_121, offset _m64pshufw_122, offset _m64pshufw_123, offset _m64pshufw_124, \
                                   offset _m64pshufw_125, offset _m64pshufw_126, offset _m64pshufw_127, offset _m64pshufw_128, offset _m64pshufw_129, \
                                   offset _m64pshufw_130, offset _m64pshufw_131, offset _m64pshufw_132, offset _m64pshufw_133, offset _m64pshufw_134, \
                                   offset _m64pshufw_135, offset _m64pshufw_136, offset _m64pshufw_137, offset _m64pshufw_138, offset _m64pshufw_139, \
                                   offset _m64pshufw_140, offset _m64pshufw_141, offset _m64pshufw_142, offset _m64pshufw_143, offset _m64pshufw_144, \
                                   offset _m64pshufw_145, offset _m64pshufw_146, offset _m64pshufw_147, offset _m64pshufw_148, offset _m64pshufw_149, \
                                   offset _m64pshufw_150, offset _m64pshufw_151, offset _m64pshufw_152, offset _m64pshufw_153, offset _m64pshufw_154, \
                                   offset _m64pshufw_155, offset _m64pshufw_156, offset _m64pshufw_157, offset _m64pshufw_158, offset _m64pshufw_159, \
                                   offset _m64pshufw_160, offset _m64pshufw_161, offset _m64pshufw_162, offset _m64pshufw_163, offset _m64pshufw_164, \
                                   offset _m64pshufw_165, offset _m64pshufw_166, offset _m64pshufw_167, offset _m64pshufw_168, offset _m64pshufw_169, \
                                   offset _m64pshufw_170, offset _m64pshufw_171, offset _m64pshufw_172, offset _m64pshufw_173, offset _m64pshufw_174, \
                                   offset _m64pshufw_175, offset _m64pshufw_176, offset _m64pshufw_177, offset _m64pshufw_178, offset _m64pshufw_179, \
                                   offset _m64pshufw_180, offset _m64pshufw_181, offset _m64pshufw_182, offset _m64pshufw_183, offset _m64pshufw_184, \
                                   offset _m64pshufw_185, offset _m64pshufw_186, offset _m64pshufw_187, offset _m64pshufw_188, offset _m64pshufw_189, \
                                   offset _m64pshufw_190, offset _m64pshufw_191, offset _m64pshufw_192, offset _m64pshufw_193, offset _m64pshufw_194, \
                                   offset _m64pshufw_195, offset _m64pshufw_196, offset _m64pshufw_197, offset _m64pshufw_198, offset _m64pshufw_199, \
                                   offset _m64pshufw_200, offset _m64pshufw_201, offset _m64pshufw_202, offset _m64pshufw_203, offset _m64pshufw_204, \
                                   offset _m64pshufw_205, offset _m64pshufw_206, offset _m64pshufw_207, offset _m64pshufw_208, offset _m64pshufw_209, \
                                   offset _m64pshufw_210, offset _m64pshufw_211, offset _m64pshufw_212, offset _m64pshufw_213, offset _m64pshufw_214, \
                                   offset _m64pshufw_215, offset _m64pshufw_216, offset _m64pshufw_217, offset _m64pshufw_218, offset _m64pshufw_219, \
                                   offset _m64pshufw_220, offset _m64pshufw_221, offset _m64pshufw_222, offset _m64pshufw_223, offset _m64pshufw_224, \
                                   offset _m64pshufw_225, offset _m64pshufw_226, offset _m64pshufw_227, offset _m64pshufw_228, offset _m64pshufw_229, \
                                   offset _m64pshufw_230, offset _m64pshufw_231, offset _m64pshufw_232, offset _m64pshufw_233, offset _m64pshufw_234, \
                                   offset _m64pshufw_235, offset _m64pshufw_236, offset _m64pshufw_237, offset _m64pshufw_238, offset _m64pshufw_239, \
                                   offset _m64pshufw_240, offset _m64pshufw_241, offset _m64pshufw_242, offset _m64pshufw_243, offset _m64pshufw_244, \
                                   offset _m64pshufw_245, offset _m64pshufw_246, offset _m64pshufw_247, offset _m64pshufw_248, offset _m64pshufw_249, \
                                   offset _m64pshufw_250, offset _m64pshufw_251, offset _m64pshufw_252, offset _m64pshufw_253, offset _m64pshufw_254, \
                                   offset _m64pshufw_255

    .code

    callconvopt
    alignmmfieldproc

procstart _uX_mm_pshufw_0000, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           0
        ret
procend

procstart _uX_mm_pshufw_0001, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           1
        ret
procend

procstart _uX_mm_pshufw_0002, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           2
        ret
procend

procstart _uX_mm_pshufw_0003, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           3
        ret
procend

procstart _uX_mm_pshufw_0010, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           4
        ret
procend

procstart _uX_mm_pshufw_0011, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           5
        ret
procend

procstart _uX_mm_pshufw_0012, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           6
        ret
procend

procstart _uX_mm_pshufw_0013, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           7
        ret
procend

procstart _uX_mm_pshufw_0020, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           8
        ret
procend

procstart _uX_mm_pshufw_0021, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           9
        ret
procend

procstart _uX_mm_pshufw_0022, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           10
        ret
procend

procstart _uX_mm_pshufw_0023, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           11
        ret
procend

procstart _uX_mm_pshufw_0030, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           12
        ret
procend

procstart _uX_mm_pshufw_0031, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           13
        ret
procend

procstart _uX_mm_pshufw_0032, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           14
        ret
procend

procstart _uX_mm_pshufw_0033, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           15
        ret
procend

procstart _uX_mm_pshufw_0100, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           16
        ret
procend

procstart _uX_mm_pshufw_0101, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           17
        ret
procend

procstart _uX_mm_pshufw_0102, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           18
        ret
procend

procstart _uX_mm_pshufw_0103, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           19
        ret
procend

procstart _uX_mm_pshufw_0110, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           20
        ret
procend

procstart _uX_mm_pshufw_0111, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           21
        ret
procend

procstart _uX_mm_pshufw_0112, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           22
        ret
procend

procstart _uX_mm_pshufw_0113, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           23
        ret
procend

procstart _uX_mm_pshufw_0120, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           24
        ret
procend

procstart _uX_mm_pshufw_0121, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           25
        ret
procend

procstart _uX_mm_pshufw_0122, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           26
        ret
procend

procstart _uX_mm_pshufw_0123, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           27
        ret
procend

procstart _uX_mm_pshufw_0130, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           28
        ret
procend

procstart _uX_mm_pshufw_0131, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           29
        ret
procend

procstart _uX_mm_pshufw_0132, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           30
        ret
procend

procstart _uX_mm_pshufw_0133, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           31
        ret
procend

procstart _uX_mm_pshufw_0200, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           32
        ret
procend

procstart _uX_mm_pshufw_0201, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           33
        ret
procend

procstart _uX_mm_pshufw_0202, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           34
        ret
procend

procstart _uX_mm_pshufw_0203, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           35
        ret
procend

procstart _uX_mm_pshufw_0210, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           36
        ret
procend

procstart _uX_mm_pshufw_0211, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           37
        ret
procend

procstart _uX_mm_pshufw_0212, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           38
        ret
procend

procstart _uX_mm_pshufw_0213, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           39
        ret
procend

procstart _uX_mm_pshufw_0220, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           40
        ret
procend

procstart _uX_mm_pshufw_0221, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           41
        ret
procend

procstart _uX_mm_pshufw_0222, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           42
        ret
procend

procstart _uX_mm_pshufw_0223, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           43
        ret
procend

procstart _uX_mm_pshufw_0230, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           44
        ret
procend

procstart _uX_mm_pshufw_0231, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           45
        ret
procend

procstart _uX_mm_pshufw_0232, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           46
        ret
procend

procstart _uX_mm_pshufw_0233, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           47
        ret
procend

procstart _uX_mm_pshufw_0300, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           48
        ret
procend

procstart _uX_mm_pshufw_0301, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           49
        ret
procend

procstart _uX_mm_pshufw_0302, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           50
        ret
procend

procstart _uX_mm_pshufw_0303, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           51
        ret
procend

procstart _uX_mm_pshufw_0310, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           52
        ret
procend

procstart _uX_mm_pshufw_0311, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           53
        ret
procend

procstart _uX_mm_pshufw_0312, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           54
        ret
procend

procstart _uX_mm_pshufw_0313, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           55
        ret
procend

procstart _uX_mm_pshufw_0320, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           56
        ret
procend

procstart _uX_mm_pshufw_0321, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           57
        ret
procend

procstart _uX_mm_pshufw_0322, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           58
        ret
procend

procstart _uX_mm_pshufw_0323, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           59
        ret
procend

procstart _uX_mm_pshufw_0330, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           60
        ret
procend

procstart _uX_mm_pshufw_0331, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           61
        ret
procend

procstart _uX_mm_pshufw_0332, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           62
        ret
procend

procstart _uX_mm_pshufw_0333, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           63
        ret
procend

procstart _uX_mm_pshufw_1000, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           64
        ret
procend

procstart _uX_mm_pshufw_1001, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           65
        ret
procend

procstart _uX_mm_pshufw_1002, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           66
        ret
procend

procstart _uX_mm_pshufw_1003, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           67
        ret
procend

procstart _uX_mm_pshufw_1010, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           68
        ret
procend

procstart _uX_mm_pshufw_1011, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           69
        ret
procend

procstart _uX_mm_pshufw_1012, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           70
        ret
procend

procstart _uX_mm_pshufw_1013, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           71
        ret
procend

procstart _uX_mm_pshufw_1020, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           72
        ret
procend

procstart _uX_mm_pshufw_1021, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           73
        ret
procend

procstart _uX_mm_pshufw_1022, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           74
        ret
procend

procstart _uX_mm_pshufw_1023, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           75
        ret
procend

procstart _uX_mm_pshufw_1030, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           76
        ret
procend

procstart _uX_mm_pshufw_1031, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           77
        ret
procend

procstart _uX_mm_pshufw_1032, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           78
        ret
procend

procstart _uX_mm_pshufw_1033, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           79
        ret
procend

procstart _uX_mm_pshufw_1100, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           80
        ret
procend

procstart _uX_mm_pshufw_1101, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           81
        ret
procend

procstart _uX_mm_pshufw_1102, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           82
        ret
procend

procstart _uX_mm_pshufw_1103, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           83
        ret
procend

procstart _uX_mm_pshufw_1110, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           84
        ret
procend

procstart _uX_mm_pshufw_1111, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           85
        ret
procend

procstart _uX_mm_pshufw_1112, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           86
        ret
procend

procstart _uX_mm_pshufw_1113, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           87
        ret
procend

procstart _uX_mm_pshufw_1120, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           88
        ret
procend

procstart _uX_mm_pshufw_1121, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           89
        ret
procend

procstart _uX_mm_pshufw_1122, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           90
        ret
procend

procstart _uX_mm_pshufw_1123, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           91
        ret
procend

procstart _uX_mm_pshufw_1130, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           92
        ret
procend

procstart _uX_mm_pshufw_1131, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           93
        ret
procend

procstart _uX_mm_pshufw_1132, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           94
        ret
procend

procstart _uX_mm_pshufw_1133, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           95
        ret
procend

procstart _uX_mm_pshufw_1200, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           96
        ret
procend

procstart _uX_mm_pshufw_1201, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           97
        ret
procend

procstart _uX_mm_pshufw_1202, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           98
        ret
procend

procstart _uX_mm_pshufw_1203, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           99
        ret
procend

procstart _uX_mm_pshufw_1210, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           100
        ret
procend

procstart _uX_mm_pshufw_1211, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           101
        ret
procend

procstart _uX_mm_pshufw_1212, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           102
        ret
procend

procstart _uX_mm_pshufw_1213, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           103
        ret
procend

procstart _uX_mm_pshufw_1220, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           104
        ret
procend

procstart _uX_mm_pshufw_1221, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           105
        ret
procend

procstart _uX_mm_pshufw_1222, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           106
        ret
procend

procstart _uX_mm_pshufw_1223, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           107
        ret
procend

procstart _uX_mm_pshufw_1230, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           108
        ret
procend

procstart _uX_mm_pshufw_1231, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           109
        ret
procend

procstart _uX_mm_pshufw_1232, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           110
        ret
procend

procstart _uX_mm_pshufw_1233, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           111
        ret
procend

procstart _uX_mm_pshufw_1300, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           112
        ret
procend

procstart _uX_mm_pshufw_1301, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           113
        ret
procend

procstart _uX_mm_pshufw_1302, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           114
        ret
procend

procstart _uX_mm_pshufw_1303, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           115
        ret
procend

procstart _uX_mm_pshufw_1310, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           116
        ret
procend

procstart _uX_mm_pshufw_1311, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           117
        ret
procend

procstart _uX_mm_pshufw_1312, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           118
        ret
procend

procstart _uX_mm_pshufw_1313, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           119
        ret
procend

procstart _uX_mm_pshufw_1320, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           120
        ret
procend

procstart _uX_mm_pshufw_1321, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           121
        ret
procend

procstart _uX_mm_pshufw_1322, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           122
        ret
procend

procstart _uX_mm_pshufw_1323, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           123
        ret
procend

procstart _uX_mm_pshufw_1330, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           124
        ret
procend

procstart _uX_mm_pshufw_1331, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           125
        ret
procend

procstart _uX_mm_pshufw_1332, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           126
        ret
procend

procstart _uX_mm_pshufw_1333, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           127
        ret
procend

procstart _uX_mm_pshufw_2000, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           128
        ret
procend

procstart _uX_mm_pshufw_2001, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           129
        ret
procend

procstart _uX_mm_pshufw_2002, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           130
        ret
procend

procstart _uX_mm_pshufw_2003, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           131
        ret
procend

procstart _uX_mm_pshufw_2010, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           132
        ret
procend

procstart _uX_mm_pshufw_2011, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           133
        ret
procend

procstart _uX_mm_pshufw_2012, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           134
        ret
procend

procstart _uX_mm_pshufw_2013, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           135
        ret
procend

procstart _uX_mm_pshufw_2020, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           136
        ret
procend

procstart _uX_mm_pshufw_2021, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           137
        ret
procend

procstart _uX_mm_pshufw_2022, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           138
        ret
procend

procstart _uX_mm_pshufw_2023, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           139
        ret
procend

procstart _uX_mm_pshufw_2030, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           140
        ret
procend

procstart _uX_mm_pshufw_2031, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           141
        ret
procend

procstart _uX_mm_pshufw_2032, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           142
        ret
procend

procstart _uX_mm_pshufw_2033, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           143
        ret
procend

procstart _uX_mm_pshufw_2100, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           144
        ret
procend

procstart _uX_mm_pshufw_2101, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           145
        ret
procend

procstart _uX_mm_pshufw_2102, callconv, mmword, < >, < >, Inmm_A:mmword 
        pshufw              mm0,           mm0,           146
        ret
procend

procstart _uX_mm_pshufw_2103, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           147
        ret
procend

procstart _uX_mm_pshufw_2110, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           148
        ret
procend

procstart _uX_mm_pshufw_2111, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           149
        ret
procend

procstart _uX_mm_pshufw_2112, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           150
        ret
procend

procstart _uX_mm_pshufw_2113, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           151
        ret
procend

procstart _uX_mm_pshufw_2120, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           152
        ret
procend

procstart _uX_mm_pshufw_2121, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           153
        ret
procend

procstart _uX_mm_pshufw_2122, callconv, mmword, < >, < >, Inmm_A:mmword 
        pshufw              mm0,           mm0,           154
        ret
procend

procstart _uX_mm_pshufw_2123, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           155
        ret
procend

procstart _uX_mm_pshufw_2130, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           156
        ret
procend

procstart _uX_mm_pshufw_2131, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           157
        ret
procend

procstart _uX_mm_pshufw_2132, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           158
        ret
procend

procstart _uX_mm_pshufw_2133, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           159
        ret
procend

procstart _uX_mm_pshufw_2200, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           160
        ret
procend

procstart _uX_mm_pshufw_2201, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           161
        ret
procend

procstart _uX_mm_pshufw_2202, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           162
        ret
procend

procstart _uX_mm_pshufw_2203, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           163
        ret
procend

procstart _uX_mm_pshufw_2210, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           164
        ret
procend

procstart _uX_mm_pshufw_2211, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           165
        ret
procend

procstart _uX_mm_pshufw_2212, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           166
        ret
procend

procstart _uX_mm_pshufw_2213, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           167
        ret
procend

procstart _uX_mm_pshufw_2220, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           168
        ret
procend

procstart _uX_mm_pshufw_2221, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           169
        ret
procend

procstart _uX_mm_pshufw_2222, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           170
        ret
procend

procstart _uX_mm_pshufw_2223, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           171
        ret
procend

procstart _uX_mm_pshufw_2230, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           172
        ret
procend

procstart _uX_mm_pshufw_2231, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           173
        ret
procend

procstart _uX_mm_pshufw_2232, callconv, mmword, < >, < >, Inmm_A:mmword 
        pshufw              mm0,           mm0,           174
        ret
procend

procstart _uX_mm_pshufw_2233, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           175
        ret
procend

procstart _uX_mm_pshufw_2300, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           176
        ret
procend

procstart _uX_mm_pshufw_2301, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           177
        ret
procend

procstart _uX_mm_pshufw_2302, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           178
        ret
procend

procstart _uX_mm_pshufw_2303, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           179
        ret
procend

procstart _uX_mm_pshufw_2310, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           180
        ret
procend

procstart _uX_mm_pshufw_2311, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           181
        ret
procend

procstart _uX_mm_pshufw_2312, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           182
        ret
procend

procstart _uX_mm_pshufw_2313, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           183
        ret
procend

procstart _uX_mm_pshufw_2320, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           184
        ret
procend

procstart _uX_mm_pshufw_2321, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           185
        ret
procend

procstart _uX_mm_pshufw_2322, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           186
        ret
procend

procstart _uX_mm_pshufw_2323, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           187
        ret
procend

procstart _uX_mm_pshufw_2330, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           188
        ret
procend

procstart _uX_mm_pshufw_2331, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           189
        ret
procend

procstart _uX_mm_pshufw_2332, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           190
        ret
procend

procstart _uX_mm_pshufw_2333, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           191
        ret
procend

procstart _uX_mm_pshufw_3000, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           192
        ret
procend

procstart _uX_mm_pshufw_3001, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           193
        ret
procend

procstart _uX_mm_pshufw_3002, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           194
        ret
procend

procstart _uX_mm_pshufw_3003, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           195
        ret
procend

procstart _uX_mm_pshufw_3010, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           196
        ret
procend

procstart _uX_mm_pshufw_3011, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           197
        ret
procend

procstart _uX_mm_pshufw_3012, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           198
        ret
procend

procstart _uX_mm_pshufw_3013, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           199
        ret
procend

procstart _uX_mm_pshufw_3020, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           200
        ret
procend

procstart _uX_mm_pshufw_3021, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           201
        ret
procend

procstart _uX_mm_pshufw_3022, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           202
        ret
procend

procstart _uX_mm_pshufw_3023, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           203
        ret
procend

procstart _uX_mm_pshufw_3030, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           204
        ret
procend

procstart _uX_mm_pshufw_3031, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           205
        ret
procend

procstart _uX_mm_pshufw_3032, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           206
        ret
procend

procstart _uX_mm_pshufw_3033, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           207
        ret
procend

procstart _uX_mm_pshufw_3100, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           208
        ret
procend

procstart _uX_mm_pshufw_3101, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           209
        ret
procend

procstart _uX_mm_pshufw_3102, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           210
        ret
procend

procstart _uX_mm_pshufw_3103, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           211
        ret
procend

procstart _uX_mm_pshufw_3110, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           212
        ret
procend

procstart _uX_mm_pshufw_3111, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           213
        ret
procend

procstart _uX_mm_pshufw_3112, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           214
        ret
procend

procstart _uX_mm_pshufw_3113, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           215
        ret
procend

procstart _uX_mm_pshufw_3120, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           216
        ret
procend

procstart _uX_mm_pshufw_3121, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           217
        ret
procend

procstart _uX_mm_pshufw_3122, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           218
        ret
procend

procstart _uX_mm_pshufw_3123, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           219
        ret
procend

procstart _uX_mm_pshufw_3130, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           220
        ret
procend

procstart _uX_mm_pshufw_3131, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           221
        ret
procend

procstart _uX_mm_pshufw_3132, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           222
        ret
procend

procstart _uX_mm_pshufw_3133, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           223
        ret
procend

procstart _uX_mm_pshufw_3200, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           224
        ret
procend

procstart _uX_mm_pshufw_3201, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           225
        ret
procend

procstart _uX_mm_pshufw_3202, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           226
        ret
procend

procstart _uX_mm_pshufw_3203, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           227
        ret
procend

procstart _uX_mm_pshufw_3210, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           228
        ret
procend

procstart _uX_mm_pshufw_3211, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           229
        ret
procend

procstart _uX_mm_pshufw_3212, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           230
        ret
procend

procstart _uX_mm_pshufw_3213, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           231
        ret
procend

procstart _uX_mm_pshufw_3220, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           232
        ret
procend

procstart _uX_mm_pshufw_3221, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           233
        ret
procend

procstart _uX_mm_pshufw_3222, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           234
        ret
procend

procstart _uX_mm_pshufw_3223, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           235
        ret
procend

procstart _uX_mm_pshufw_3230, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           236
        ret
procend

procstart _uX_mm_pshufw_3231, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           237
        ret
procend

procstart _uX_mm_pshufw_3232, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           238
        ret
procend

procstart _uX_mm_pshufw_3233, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           239
        ret
procend

procstart _uX_mm_pshufw_3300, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           240
        ret
procend

procstart _uX_mm_pshufw_3301, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           241
        ret
procend

procstart _uX_mm_pshufw_3302, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           242
        ret
procend

procstart _uX_mm_pshufw_3303, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           243
        ret
procend

procstart _uX_mm_pshufw_3310, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           244
        ret
procend

procstart _uX_mm_pshufw_3311, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           245
        ret
procend

procstart _uX_mm_pshufw_3312, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           246
        ret
procend

procstart _uX_mm_pshufw_3313, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           247
        ret
procend

procstart _uX_mm_pshufw_3320, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           248
        ret
procend

procstart _uX_mm_pshufw_3321, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           249
        ret
procend

procstart _uX_mm_pshufw_3322, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           250
        ret
procend

procstart _uX_mm_pshufw_3323, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           251
        ret
procend

procstart _uX_mm_pshufw_3330, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           252
        ret
procend

procstart _uX_mm_pshufw_3331, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           253
        ret
procend

procstart _uX_mm_pshufw_3332, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           254
        ret
procend

procstart _uX_mm_pshufw_3333, callconv, mmword, < >, < >, Inmm_A:mmword
        pshufw              mm0,           mm0,           255
        ret
procend

procstart _uX_mm_pshufw, callconv, mmword, < >, < >, Inmm_A:mmword, Inint_Imm:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 255))
        jmp         _m64pshufw_end
        .endif

        movzx           rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m64pshufwjmptable+rbase*size_t_size]

        _m64pshufw_0 label size_t
        pshufw              mm0,           mm0,           0
        jmp         _m64pshufw_end
        _m64pshufw_1 label size_t
        pshufw              mm0,           mm0,           1
        jmp         _m64pshufw_end
        _m64pshufw_2 label size_t
        pshufw              mm0,           mm0,           2
        jmp         _m64pshufw_end
        _m64pshufw_3 label size_t
        pshufw              mm0,           mm0,           3
        jmp         _m64pshufw_end
        _m64pshufw_4 label size_t
        pshufw              mm0,           mm0,           4
        jmp         _m64pshufw_end
        _m64pshufw_5 label size_t
        pshufw              mm0,           mm0,           5
        jmp         _m64pshufw_end
        _m64pshufw_6 label size_t
        pshufw              mm0,           mm0,           6
        jmp         _m64pshufw_end
        _m64pshufw_7 label size_t
        pshufw              mm0,           mm0,           7
        jmp         _m64pshufw_end
        _m64pshufw_8 label size_t
        pshufw              mm0,           mm0,           8
        jmp         _m64pshufw_end
        _m64pshufw_9 label size_t
        pshufw              mm0,           mm0,           9
        jmp         _m64pshufw_end
        _m64pshufw_10 label size_t
        pshufw              mm0,           mm0,           10
        jmp         _m64pshufw_end
        _m64pshufw_11 label size_t
        pshufw              mm0,           mm0,           11
        jmp         _m64pshufw_end
        _m64pshufw_12 label size_t
        pshufw              mm0,           mm0,           12
        jmp         _m64pshufw_end
        _m64pshufw_13 label size_t
        pshufw              mm0,           mm0,           13
        jmp         _m64pshufw_end
        _m64pshufw_14 label size_t
        pshufw              mm0,           mm0,           14
        jmp         _m64pshufw_end
        _m64pshufw_15 label size_t
        pshufw              mm0,           mm0,           15
        jmp         _m64pshufw_end
        _m64pshufw_16 label size_t
        pshufw              mm0,           mm0,           16
        jmp         _m64pshufw_end
        _m64pshufw_17 label size_t
        pshufw              mm0,           mm0,           17
        jmp         _m64pshufw_end
        _m64pshufw_18 label size_t
        pshufw              mm0,           mm0,           18
        jmp         _m64pshufw_end
        _m64pshufw_19 label size_t
        pshufw              mm0,           mm0,           19
        jmp         _m64pshufw_end
        _m64pshufw_20 label size_t
        pshufw              mm0,           mm0,           20
        jmp         _m64pshufw_end
        _m64pshufw_21 label size_t
        pshufw              mm0,           mm0,           21
        jmp         _m64pshufw_end
        _m64pshufw_22 label size_t
        pshufw              mm0,           mm0,           22
        jmp         _m64pshufw_end
        _m64pshufw_23 label size_t
        pshufw              mm0,           mm0,           23
        jmp         _m64pshufw_end
        _m64pshufw_24 label size_t
        pshufw              mm0,           mm0,           24
        jmp         _m64pshufw_end
        _m64pshufw_25 label size_t
        pshufw              mm0,           mm0,           25
        jmp         _m64pshufw_end
        _m64pshufw_26 label size_t
        pshufw              mm0,           mm0,           26
        jmp         _m64pshufw_end
        _m64pshufw_27 label size_t
        pshufw              mm0,           mm0,           27
        jmp         _m64pshufw_end
        _m64pshufw_28 label size_t
        pshufw              mm0,           mm0,           28
        jmp         _m64pshufw_end
        _m64pshufw_29 label size_t
        pshufw              mm0,           mm0,           29
        jmp         _m64pshufw_end
        _m64pshufw_30 label size_t
        pshufw              mm0,           mm0,           30
        jmp         _m64pshufw_end
        _m64pshufw_31 label size_t
        pshufw              mm0,           mm0,           31
        jmp         _m64pshufw_end
        _m64pshufw_32 label size_t
        pshufw              mm0,           mm0,           32
        jmp         _m64pshufw_end
        _m64pshufw_33 label size_t
        pshufw              mm0,           mm0,           33
        jmp         _m64pshufw_end
        _m64pshufw_34 label size_t
        pshufw              mm0,           mm0,           34
        jmp         _m64pshufw_end
        _m64pshufw_35 label size_t
        pshufw              mm0,           mm0,           35
        jmp         _m64pshufw_end
        _m64pshufw_36 label size_t
        pshufw              mm0,           mm0,           36
        jmp         _m64pshufw_end
        _m64pshufw_37 label size_t
        pshufw              mm0,           mm0,           37
        jmp         _m64pshufw_end
        _m64pshufw_38 label size_t
        pshufw              mm0,           mm0,           38
        jmp         _m64pshufw_end
        _m64pshufw_39 label size_t
        pshufw              mm0,           mm0,           39
        jmp         _m64pshufw_end
        _m64pshufw_40 label size_t
        pshufw              mm0,           mm0,           40
        jmp         _m64pshufw_end
        _m64pshufw_41 label size_t
        pshufw              mm0,           mm0,           41
        jmp         _m64pshufw_end
        _m64pshufw_42 label size_t
        pshufw              mm0,           mm0,           42
        jmp         _m64pshufw_end
        _m64pshufw_43 label size_t
        pshufw              mm0,           mm0,           43
        jmp         _m64pshufw_end
        _m64pshufw_44 label size_t
        pshufw              mm0,           mm0,           44
        jmp         _m64pshufw_end
        _m64pshufw_45 label size_t
        pshufw              mm0,           mm0,           45
        jmp         _m64pshufw_end
        _m64pshufw_46 label size_t
        pshufw              mm0,           mm0,           46
        jmp         _m64pshufw_end
        _m64pshufw_47 label size_t
        pshufw              mm0,           mm0,           47
        jmp         _m64pshufw_end
        _m64pshufw_48 label size_t
        pshufw              mm0,           mm0,           48
        jmp         _m64pshufw_end
        _m64pshufw_49 label size_t
        pshufw              mm0,           mm0,           49
        jmp         _m64pshufw_end
        _m64pshufw_50 label size_t
        pshufw              mm0,           mm0,           50
        jmp         _m64pshufw_end
        _m64pshufw_51 label size_t
        pshufw              mm0,           mm0,           51
        jmp         _m64pshufw_end
        _m64pshufw_52 label size_t
        pshufw              mm0,           mm0,           52
        jmp         _m64pshufw_end
        _m64pshufw_53 label size_t
        pshufw              mm0,           mm0,           53
        jmp         _m64pshufw_end
        _m64pshufw_54 label size_t
        pshufw              mm0,           mm0,           54
        jmp         _m64pshufw_end
        _m64pshufw_55 label size_t
        pshufw              mm0,           mm0,           55
        jmp         _m64pshufw_end
        _m64pshufw_56 label size_t
        pshufw              mm0,           mm0,           56
        jmp         _m64pshufw_end
        _m64pshufw_57 label size_t
        pshufw              mm0,           mm0,           57
        jmp         _m64pshufw_end
        _m64pshufw_58 label size_t
        pshufw              mm0,           mm0,           58
        jmp         _m64pshufw_end
        _m64pshufw_59 label size_t
        pshufw              mm0,           mm0,           59
        jmp         _m64pshufw_end
        _m64pshufw_60 label size_t
        pshufw              mm0,           mm0,           60
        jmp         _m64pshufw_end
        _m64pshufw_61 label size_t
        pshufw              mm0,           mm0,           61
        jmp         _m64pshufw_end
        _m64pshufw_62 label size_t
        pshufw              mm0,           mm0,           62
        jmp         _m64pshufw_end
        _m64pshufw_63 label size_t
        pshufw              mm0,           mm0,           63
        jmp         _m64pshufw_end
        _m64pshufw_64 label size_t
        pshufw              mm0,           mm0,           64
        jmp         _m64pshufw_end
        _m64pshufw_65 label size_t
        pshufw              mm0,           mm0,           65
        jmp         _m64pshufw_end
        _m64pshufw_66 label size_t
        pshufw              mm0,           mm0,           66
        jmp         _m64pshufw_end
        _m64pshufw_67 label size_t
        pshufw              mm0,           mm0,           67
        jmp         _m64pshufw_end
        _m64pshufw_68 label size_t
        pshufw              mm0,           mm0,           68
        jmp         _m64pshufw_end
        _m64pshufw_69 label size_t
        pshufw              mm0,           mm0,           69
        jmp         _m64pshufw_end
        _m64pshufw_70 label size_t
        pshufw              mm0,           mm0,           70
        jmp         _m64pshufw_end
        _m64pshufw_71 label size_t
        pshufw              mm0,           mm0,           71
        jmp         _m64pshufw_end
        _m64pshufw_72 label size_t
        pshufw              mm0,           mm0,           72
        jmp         _m64pshufw_end
        _m64pshufw_73 label size_t
        pshufw              mm0,           mm0,           73
        jmp         _m64pshufw_end
        _m64pshufw_74 label size_t
        pshufw              mm0,           mm0,           74
        jmp         _m64pshufw_end
        _m64pshufw_75 label size_t
        pshufw              mm0,           mm0,           75
        jmp         _m64pshufw_end
        _m64pshufw_76 label size_t
        pshufw              mm0,           mm0,           76
        jmp         _m64pshufw_end
        _m64pshufw_77 label size_t
        pshufw              mm0,           mm0,           77
        jmp         _m64pshufw_end
        _m64pshufw_78 label size_t
        pshufw              mm0,           mm0,           78
        jmp         _m64pshufw_end
        _m64pshufw_79 label size_t
        pshufw              mm0,           mm0,           79
        jmp         _m64pshufw_end
        _m64pshufw_80 label size_t
        pshufw              mm0,           mm0,           80
        jmp         _m64pshufw_end
        _m64pshufw_81 label size_t
        pshufw              mm0,           mm0,           81
        jmp         _m64pshufw_end
        _m64pshufw_82 label size_t
        pshufw              mm0,           mm0,           82
        jmp         _m64pshufw_end
        _m64pshufw_83 label size_t
        pshufw              mm0,           mm0,           83
        jmp         _m64pshufw_end
        _m64pshufw_84 label size_t
        pshufw              mm0,           mm0,           84
        jmp         _m64pshufw_end
        _m64pshufw_85 label size_t
        pshufw              mm0,           mm0,           85
        jmp         _m64pshufw_end
        _m64pshufw_86 label size_t
        pshufw              mm0,           mm0,           86
        jmp         _m64pshufw_end
        _m64pshufw_87 label size_t
        pshufw              mm0,           mm0,           87
        jmp         _m64pshufw_end
        _m64pshufw_88 label size_t
        pshufw              mm0,           mm0,           88
        jmp         _m64pshufw_end
        _m64pshufw_89 label size_t
        pshufw              mm0,           mm0,           89
        jmp         _m64pshufw_end
        _m64pshufw_90 label size_t
        pshufw              mm0,           mm0,           90
        jmp         _m64pshufw_end
        _m64pshufw_91 label size_t
        pshufw              mm0,           mm0,           91
        jmp         _m64pshufw_end
        _m64pshufw_92 label size_t
        pshufw              mm0,           mm0,           92
        jmp         _m64pshufw_end
        _m64pshufw_93 label size_t
        pshufw              mm0,           mm0,           93
        jmp         _m64pshufw_end
        _m64pshufw_94 label size_t
        pshufw              mm0,           mm0,           94
        jmp         _m64pshufw_end
        _m64pshufw_95 label size_t
        pshufw              mm0,           mm0,           95
        jmp         _m64pshufw_end
        _m64pshufw_96 label size_t
        pshufw              mm0,           mm0,           96
        jmp         _m64pshufw_end
        _m64pshufw_97 label size_t
        pshufw              mm0,           mm0,           97
        jmp         _m64pshufw_end
        _m64pshufw_98 label size_t
        pshufw              mm0,           mm0,           98
        jmp         _m64pshufw_end
        _m64pshufw_99 label size_t
        pshufw              mm0,           mm0,           99
        jmp         _m64pshufw_end
        _m64pshufw_100 label size_t
        pshufw              mm0,           mm0,           100
        jmp         _m64pshufw_end
        _m64pshufw_101 label size_t
        pshufw              mm0,           mm0,           101
        jmp         _m64pshufw_end
        _m64pshufw_102 label size_t
        pshufw              mm0,           mm0,           102
        jmp         _m64pshufw_end
        _m64pshufw_103 label size_t
        pshufw              mm0,           mm0,           103
        jmp         _m64pshufw_end
        _m64pshufw_104 label size_t
        pshufw              mm0,           mm0,           104
        jmp         _m64pshufw_end
        _m64pshufw_105 label size_t
        pshufw              mm0,           mm0,           105
        jmp         _m64pshufw_end
        _m64pshufw_106 label size_t
        pshufw              mm0,           mm0,           106
        jmp         _m64pshufw_end
        _m64pshufw_107 label size_t
        pshufw              mm0,           mm0,           107
        jmp         _m64pshufw_end
        _m64pshufw_108 label size_t
        pshufw              mm0,           mm0,           108
        jmp         _m64pshufw_end
        _m64pshufw_109 label size_t
        pshufw              mm0,           mm0,           109
        jmp         _m64pshufw_end
        _m64pshufw_110 label size_t
        pshufw              mm0,           mm0,           110
        jmp         _m64pshufw_end
        _m64pshufw_111 label size_t
        pshufw              mm0,           mm0,           111
        jmp         _m64pshufw_end
        _m64pshufw_112 label size_t
        pshufw              mm0,           mm0,           112
        jmp         _m64pshufw_end
        _m64pshufw_113 label size_t
        pshufw              mm0,           mm0,           113
        jmp         _m64pshufw_end
        _m64pshufw_114 label size_t
        pshufw              mm0,           mm0,           114
        jmp         _m64pshufw_end
        _m64pshufw_115 label size_t
        pshufw              mm0,           mm0,           115
        jmp         _m64pshufw_end
        _m64pshufw_116 label size_t
        pshufw              mm0,           mm0,           116
        jmp         _m64pshufw_end
        _m64pshufw_117 label size_t
        pshufw              mm0,           mm0,           117
        jmp         _m64pshufw_end
        _m64pshufw_118 label size_t
        pshufw              mm0,           mm0,           118
        jmp         _m64pshufw_end
        _m64pshufw_119 label size_t
        pshufw              mm0,           mm0,           119
        jmp         _m64pshufw_end
        _m64pshufw_120 label size_t
        pshufw              mm0,           mm0,           120
        jmp         _m64pshufw_end
        _m64pshufw_121 label size_t
        pshufw              mm0,           mm0,           121
        jmp         _m64pshufw_end
        _m64pshufw_122 label size_t
        pshufw              mm0,           mm0,           122
        jmp         _m64pshufw_end
        _m64pshufw_123 label size_t
        pshufw              mm0,           mm0,           123
        jmp         _m64pshufw_end
        _m64pshufw_124 label size_t
        pshufw              mm0,           mm0,           124
        jmp         _m64pshufw_end
        _m64pshufw_125 label size_t
        pshufw              mm0,           mm0,           125
        jmp         _m64pshufw_end
        _m64pshufw_126 label size_t
        pshufw              mm0,           mm0,           126
        jmp         _m64pshufw_end
        _m64pshufw_127 label size_t
        pshufw              mm0,           mm0,           127
        jmp         _m64pshufw_end
        _m64pshufw_128 label size_t
        pshufw              mm0,           mm0,           128
        jmp         _m64pshufw_end
        _m64pshufw_129 label size_t
        pshufw              mm0,           mm0,           129
        jmp         _m64pshufw_end
        _m64pshufw_130 label size_t
        pshufw              mm0,           mm0,           130
        jmp         _m64pshufw_end
        _m64pshufw_131 label size_t
        pshufw              mm0,           mm0,           131
        jmp         _m64pshufw_end
        _m64pshufw_132 label size_t
        pshufw              mm0,           mm0,           132
        jmp         _m64pshufw_end
        _m64pshufw_133 label size_t
        pshufw              mm0,           mm0,           133
        jmp         _m64pshufw_end
        _m64pshufw_134 label size_t
        pshufw              mm0,           mm0,           134
        jmp         _m64pshufw_end
        _m64pshufw_135 label size_t
        pshufw              mm0,           mm0,           135
        jmp         _m64pshufw_end
        _m64pshufw_136 label size_t
        pshufw              mm0,           mm0,           136
        jmp         _m64pshufw_end
        _m64pshufw_137 label size_t
        pshufw              mm0,           mm0,           137
        jmp         _m64pshufw_end
        _m64pshufw_138 label size_t
        pshufw              mm0,           mm0,           138
        jmp         _m64pshufw_end
        _m64pshufw_139 label size_t
        pshufw              mm0,           mm0,           139
        jmp         _m64pshufw_end
        _m64pshufw_140 label size_t
        pshufw              mm0,           mm0,           140
        jmp         _m64pshufw_end
        _m64pshufw_141 label size_t
        pshufw              mm0,           mm0,           141
        jmp         _m64pshufw_end
        _m64pshufw_142 label size_t
        pshufw              mm0,           mm0,           142
        jmp         _m64pshufw_end
        _m64pshufw_143 label size_t
        pshufw              mm0,           mm0,           143
        jmp         _m64pshufw_end
        _m64pshufw_144 label size_t
        pshufw              mm0,           mm0,           144
        jmp         _m64pshufw_end
        _m64pshufw_145 label size_t
        pshufw              mm0,           mm0,           145
        jmp         _m64pshufw_end
        _m64pshufw_146 label size_t
        pshufw              mm0,           mm0,           146
        jmp         _m64pshufw_end
        _m64pshufw_147 label size_t
        pshufw              mm0,           mm0,           147
        jmp         _m64pshufw_end
        _m64pshufw_148 label size_t
        pshufw              mm0,           mm0,           148
        jmp         _m64pshufw_end
        _m64pshufw_149 label size_t
        pshufw              mm0,           mm0,           149
        jmp         _m64pshufw_end
        _m64pshufw_150 label size_t
        pshufw              mm0,           mm0,           150
        jmp         _m64pshufw_end
        _m64pshufw_151 label size_t
        pshufw              mm0,           mm0,           151
        jmp         _m64pshufw_end
        _m64pshufw_152 label size_t
        pshufw              mm0,           mm0,           152
        jmp         _m64pshufw_end
        _m64pshufw_153 label size_t
        pshufw              mm0,           mm0,           153
        jmp         _m64pshufw_end
        _m64pshufw_154 label size_t
        pshufw              mm0,           mm0,           154
        jmp         _m64pshufw_end
        _m64pshufw_155 label size_t
        pshufw              mm0,           mm0,           155
        jmp         _m64pshufw_end
        _m64pshufw_156 label size_t
        pshufw              mm0,           mm0,           156
        jmp         _m64pshufw_end
        _m64pshufw_157 label size_t
        pshufw              mm0,           mm0,           157
        jmp         _m64pshufw_end
        _m64pshufw_158 label size_t
        pshufw              mm0,           mm0,           158
        jmp         _m64pshufw_end
        _m64pshufw_159 label size_t
        pshufw              mm0,           mm0,           159
        jmp         _m64pshufw_end
        _m64pshufw_160 label size_t
        pshufw              mm0,           mm0,           160
        jmp         _m64pshufw_end
        _m64pshufw_161 label size_t
        pshufw              mm0,           mm0,           161
        jmp         _m64pshufw_end
        _m64pshufw_162 label size_t
        pshufw              mm0,           mm0,           162
        jmp         _m64pshufw_end
        _m64pshufw_163 label size_t
        pshufw              mm0,           mm0,           163
        jmp         _m64pshufw_end
        _m64pshufw_164 label size_t
        pshufw              mm0,           mm0,           164
        jmp         _m64pshufw_end
        _m64pshufw_165 label size_t
        pshufw              mm0,           mm0,           165
        jmp         _m64pshufw_end
        _m64pshufw_166 label size_t
        pshufw              mm0,           mm0,           166
        jmp         _m64pshufw_end
        _m64pshufw_167 label size_t
        pshufw              mm0,           mm0,           167
        jmp         _m64pshufw_end
        _m64pshufw_168 label size_t
        pshufw              mm0,           mm0,           168
        jmp         _m64pshufw_end
        _m64pshufw_169 label size_t
        pshufw              mm0,           mm0,           169
        jmp         _m64pshufw_end
        _m64pshufw_170 label size_t
        pshufw              mm0,           mm0,           170
        jmp         _m64pshufw_end
        _m64pshufw_171 label size_t
        pshufw              mm0,           mm0,           171
        jmp         _m64pshufw_end
        _m64pshufw_172 label size_t
        pshufw              mm0,           mm0,           172
        jmp         _m64pshufw_end
        _m64pshufw_173 label size_t
        pshufw              mm0,           mm0,           173
        jmp         _m64pshufw_end
        _m64pshufw_174 label size_t
        pshufw              mm0,           mm0,           174
        jmp         _m64pshufw_end
        _m64pshufw_175 label size_t
        pshufw              mm0,           mm0,           175
        jmp         _m64pshufw_end
        _m64pshufw_176 label size_t
        pshufw              mm0,           mm0,           176
        jmp         _m64pshufw_end
        _m64pshufw_177 label size_t
        pshufw              mm0,           mm0,           177
        jmp         _m64pshufw_end
        _m64pshufw_178 label size_t
        pshufw              mm0,           mm0,           178
        jmp         _m64pshufw_end
        _m64pshufw_179 label size_t
        pshufw              mm0,           mm0,           179
        jmp         _m64pshufw_end
        _m64pshufw_180 label size_t
        pshufw              mm0,           mm0,           180
        jmp         _m64pshufw_end
        _m64pshufw_181 label size_t
        pshufw              mm0,           mm0,           181
        jmp         _m64pshufw_end
        _m64pshufw_182 label size_t
        pshufw              mm0,           mm0,           182
        jmp         _m64pshufw_end
        _m64pshufw_183 label size_t
        pshufw              mm0,           mm0,           183
        jmp         _m64pshufw_end
        _m64pshufw_184 label size_t
        pshufw              mm0,           mm0,           184
        jmp         _m64pshufw_end
        _m64pshufw_185 label size_t
        pshufw              mm0,           mm0,           185
        jmp         _m64pshufw_end
        _m64pshufw_186 label size_t
        pshufw              mm0,           mm0,           186
        jmp         _m64pshufw_end
        _m64pshufw_187 label size_t
        pshufw              mm0,           mm0,           187
        jmp         _m64pshufw_end
        _m64pshufw_188 label size_t
        pshufw              mm0,           mm0,           188
        jmp         _m64pshufw_end
        _m64pshufw_189 label size_t
        pshufw              mm0,           mm0,           189
        jmp         _m64pshufw_end
        _m64pshufw_190 label size_t
        pshufw              mm0,           mm0,           190
        jmp         _m64pshufw_end
        _m64pshufw_191 label size_t
        pshufw              mm0,           mm0,           191
        jmp         _m64pshufw_end
        _m64pshufw_192 label size_t
        pshufw              mm0,           mm0,           192
        jmp         _m64pshufw_end
        _m64pshufw_193 label size_t
        pshufw              mm0,           mm0,           193
        jmp         _m64pshufw_end
        _m64pshufw_194 label size_t
        pshufw              mm0,           mm0,           194
        jmp         _m64pshufw_end
        _m64pshufw_195 label size_t
        pshufw              mm0,           mm0,           195
        jmp         _m64pshufw_end
        _m64pshufw_196 label size_t
        pshufw              mm0,           mm0,           196
        jmp         _m64pshufw_end
        _m64pshufw_197 label size_t
        pshufw              mm0,           mm0,           197
        jmp         _m64pshufw_end
        _m64pshufw_198 label size_t
        pshufw              mm0,           mm0,           198
        jmp         _m64pshufw_end
        _m64pshufw_199 label size_t
        pshufw              mm0,           mm0,           199
        jmp         _m64pshufw_end
        _m64pshufw_200 label size_t
        pshufw              mm0,           mm0,           200
        jmp         _m64pshufw_end
        _m64pshufw_201 label size_t
        pshufw              mm0,           mm0,           201
        jmp         _m64pshufw_end
        _m64pshufw_202 label size_t
        pshufw              mm0,           mm0,           202
        jmp         _m64pshufw_end
        _m64pshufw_203 label size_t
        pshufw              mm0,           mm0,           203
        jmp         _m64pshufw_end
        _m64pshufw_204 label size_t
        pshufw              mm0,           mm0,           204
        jmp         _m64pshufw_end
        _m64pshufw_205 label size_t
        pshufw              mm0,           mm0,           205
        jmp         _m64pshufw_end
        _m64pshufw_206 label size_t
        pshufw              mm0,           mm0,           206
        jmp         _m64pshufw_end
        _m64pshufw_207 label size_t
        pshufw              mm0,           mm0,           207
        jmp         _m64pshufw_end
        _m64pshufw_208 label size_t
        pshufw              mm0,           mm0,           208
        jmp         _m64pshufw_end
        _m64pshufw_209 label size_t
        pshufw              mm0,           mm0,           209
        jmp         _m64pshufw_end
        _m64pshufw_210 label size_t
        pshufw              mm0,           mm0,           210
        jmp         _m64pshufw_end
        _m64pshufw_211 label size_t
        pshufw              mm0,           mm0,           211
        jmp         _m64pshufw_end
        _m64pshufw_212 label size_t
        pshufw              mm0,           mm0,           212
        jmp         _m64pshufw_end
        _m64pshufw_213 label size_t
        pshufw              mm0,           mm0,           213
        jmp         _m64pshufw_end
        _m64pshufw_214 label size_t
        pshufw              mm0,           mm0,           214
        jmp         _m64pshufw_end
        _m64pshufw_215 label size_t
        pshufw              mm0,           mm0,           215
        jmp         _m64pshufw_end
        _m64pshufw_216 label size_t
        pshufw              mm0,           mm0,           216
        jmp         _m64pshufw_end
        _m64pshufw_217 label size_t
        pshufw              mm0,           mm0,           217
        jmp         _m64pshufw_end
        _m64pshufw_218 label size_t
        pshufw              mm0,           mm0,           218
        jmp         _m64pshufw_end
        _m64pshufw_219 label size_t
        pshufw              mm0,           mm0,           219
        jmp         _m64pshufw_end
        _m64pshufw_220 label size_t
        pshufw              mm0,           mm0,           220
        jmp         _m64pshufw_end
        _m64pshufw_221 label size_t
        pshufw              mm0,           mm0,           221
        jmp         _m64pshufw_end
        _m64pshufw_222 label size_t
        pshufw              mm0,           mm0,           222
        jmp         _m64pshufw_end
        _m64pshufw_223 label size_t
        pshufw              mm0,           mm0,           223
        jmp         _m64pshufw_end
        _m64pshufw_224 label size_t
        pshufw              mm0,           mm0,           224
        jmp         _m64pshufw_end
        _m64pshufw_225 label size_t
        pshufw              mm0,           mm0,           225
        jmp         _m64pshufw_end
        _m64pshufw_226 label size_t
        pshufw              mm0,           mm0,           226
        jmp         _m64pshufw_end
        _m64pshufw_227 label size_t
        pshufw              mm0,           mm0,           227
        jmp         _m64pshufw_end
        _m64pshufw_228 label size_t
        pshufw              mm0,           mm0,           228
        jmp         _m64pshufw_end
        _m64pshufw_229 label size_t
        pshufw              mm0,           mm0,           229
        jmp         _m64pshufw_end
        _m64pshufw_230 label size_t
        pshufw              mm0,           mm0,           230
        jmp         _m64pshufw_end
        _m64pshufw_231 label size_t
        pshufw              mm0,           mm0,           231
        jmp         _m64pshufw_end
        _m64pshufw_232 label size_t
        pshufw              mm0,           mm0,           232
        jmp         _m64pshufw_end
        _m64pshufw_233 label size_t
        pshufw              mm0,           mm0,           233
        jmp         _m64pshufw_end
        _m64pshufw_234 label size_t
        pshufw              mm0,           mm0,           234
        jmp         _m64pshufw_end
        _m64pshufw_235 label size_t
        pshufw              mm0,           mm0,           235
        jmp         _m64pshufw_end
        _m64pshufw_236 label size_t
        pshufw              mm0,           mm0,           236
        jmp         _m64pshufw_end
        _m64pshufw_237 label size_t
        pshufw              mm0,           mm0,           237
        jmp         _m64pshufw_end
        _m64pshufw_238 label size_t
        pshufw              mm0,           mm0,           238
        jmp         _m64pshufw_end
        _m64pshufw_239 label size_t
        pshufw              mm0,           mm0,           239
        jmp         _m64pshufw_end
        _m64pshufw_240 label size_t
        pshufw              mm0,           mm0,           240
        jmp         _m64pshufw_end
        _m64pshufw_241 label size_t
        pshufw              mm0,           mm0,           241
        jmp         _m64pshufw_end
        _m64pshufw_242 label size_t
        pshufw              mm0,           mm0,           242
        jmp         _m64pshufw_end
        _m64pshufw_243 label size_t
        pshufw              mm0,           mm0,           243
        jmp         _m64pshufw_end
        _m64pshufw_244 label size_t
        pshufw              mm0,           mm0,           244
        jmp         _m64pshufw_end
        _m64pshufw_245 label size_t
        pshufw              mm0,           mm0,           245
        jmp         _m64pshufw_end
        _m64pshufw_246 label size_t
        pshufw              mm0,           mm0,           246
        jmp         _m64pshufw_end
        _m64pshufw_247 label size_t
        pshufw              mm0,           mm0,           247
        jmp         _m64pshufw_end
        _m64pshufw_248 label size_t
        pshufw              mm0,           mm0,           248
        jmp         _m64pshufw_end
        _m64pshufw_249 label size_t
        pshufw              mm0,           mm0,           249
        jmp         _m64pshufw_end
        _m64pshufw_250 label size_t
        pshufw              mm0,           mm0,           250
        jmp         _m64pshufw_end
        _m64pshufw_251 label size_t
        pshufw              mm0,           mm0,           251
        jmp         _m64pshufw_end
        _m64pshufw_252 label size_t
        pshufw              mm0,           mm0,           252
        jmp         _m64pshufw_end
        _m64pshufw_253 label size_t
        pshufw              mm0,           mm0,           253
        jmp         _m64pshufw_end
        _m64pshufw_254 label size_t
        pshufw              mm0,           mm0,           254
        jmp         _m64pshufw_end
        _m64pshufw_255 label size_t
        pshufw              mm0,           mm0,           255
        ;jmp         _m64pshufw_end

        _m64pshufw_end:
        pop         rbase
        ret
procend

endif ;__X32__

endif ;__MIC__

    end