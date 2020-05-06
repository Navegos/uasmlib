
ifndef __MIC__

    include uXx86asm.inc

    .xmm
    option arch:sse
    option evex:0

    .data?

    .data

    .const

        alignsize_t
        _m128permpsjmptable isize_t offset _m128permps_0, offset _m128permps_1, offset _m128permps_2, offset _m128permps_3, offset _m128permps_4, offset _m128permps_5, \
                                    offset _m128permps_6, offset _m128permps_7, offset _m128permps_8, offset _m128permps_9, offset _m128permps_10, offset _m128permps_11, \
                                    offset _m128permps_12, offset _m128permps_13, offset _m128permps_14, offset _m128permps_15, offset _m128permps_16, offset _m128permps_17, \
                                    offset _m128permps_18, offset _m128permps_19, offset _m128permps_20, offset _m128permps_21, offset _m128permps_22, offset _m128permps_23, \
                                    offset _m128permps_24, offset _m128permps_25, offset _m128permps_26, offset _m128permps_27, offset _m128permps_28, offset _m128permps_29, \
                                    offset _m128permps_30, offset _m128permps_31, offset _m128permps_32, offset _m128permps_33, offset _m128permps_34, offset _m128permps_35, \
                                    offset _m128permps_36, offset _m128permps_37, offset _m128permps_38, offset _m128permps_39, offset _m128permps_40, offset _m128permps_41, \
                                    offset _m128permps_42, offset _m128permps_43, offset _m128permps_44, offset _m128permps_45, offset _m128permps_46, offset _m128permps_47, \
                                    offset _m128permps_48, offset _m128permps_49, offset _m128permps_50, offset _m128permps_51, offset _m128permps_52, offset _m128permps_53, \
                                    offset _m128permps_54, offset _m128permps_55, offset _m128permps_56, offset _m128permps_57, offset _m128permps_58, offset _m128permps_59, \
                                    offset _m128permps_60, offset _m128permps_61, offset _m128permps_62, offset _m128permps_63, offset _m128permps_64, offset _m128permps_65, \
                                    offset _m128permps_66, offset _m128permps_67, offset _m128permps_68, offset _m128permps_69, offset _m128permps_70, offset _m128permps_71, \
                                    offset _m128permps_72, offset _m128permps_73, offset _m128permps_74, offset _m128permps_75, offset _m128permps_76, offset _m128permps_77, \
                                    offset _m128permps_78, offset _m128permps_79, offset _m128permps_80, offset _m128permps_81, offset _m128permps_82, offset _m128permps_83, \
                                    offset _m128permps_84, offset _m128permps_85, offset _m128permps_86, offset _m128permps_87, offset _m128permps_88, offset _m128permps_89, \
                                    offset _m128permps_90, offset _m128permps_91, offset _m128permps_92, offset _m128permps_93, offset _m128permps_94, offset _m128permps_95, \
                                    offset _m128permps_96, offset _m128permps_97, offset _m128permps_98, offset _m128permps_99, offset _m128permps_100, offset _m128permps_101, \
                                    offset _m128permps_102, offset _m128permps_103, offset _m128permps_104, offset _m128permps_105, offset _m128permps_106, offset _m128permps_107, \
                                    offset _m128permps_108, offset _m128permps_109, offset _m128permps_110, offset _m128permps_111, offset _m128permps_112, offset _m128permps_113, \
                                    offset _m128permps_114, offset _m128permps_115, offset _m128permps_116, offset _m128permps_117, offset _m128permps_118, offset _m128permps_119, \
                                    offset _m128permps_120, offset _m128permps_121, offset _m128permps_122, offset _m128permps_123, offset _m128permps_124, offset _m128permps_125, \
                                    offset _m128permps_126, offset _m128permps_127, offset _m128permps_128, offset _m128permps_129, offset _m128permps_130, offset _m128permps_131, \
                                    offset _m128permps_132, offset _m128permps_133, offset _m128permps_134, offset _m128permps_135, offset _m128permps_136, offset _m128permps_137, \
                                    offset _m128permps_138, offset _m128permps_139, offset _m128permps_140, offset _m128permps_141, offset _m128permps_142, offset _m128permps_143, \
                                    offset _m128permps_144, offset _m128permps_145, offset _m128permps_146, offset _m128permps_147, offset _m128permps_148, offset _m128permps_149, \
                                    offset _m128permps_150, offset _m128permps_151, offset _m128permps_152, offset _m128permps_153, offset _m128permps_154, offset _m128permps_155, \
                                    offset _m128permps_156, offset _m128permps_157, offset _m128permps_158, offset _m128permps_159, offset _m128permps_160, offset _m128permps_161, \
                                    offset _m128permps_162, offset _m128permps_163, offset _m128permps_164, offset _m128permps_165, offset _m128permps_166, offset _m128permps_167, \
                                    offset _m128permps_168, offset _m128permps_169, offset _m128permps_170, offset _m128permps_171, offset _m128permps_172, offset _m128permps_173, \
                                    offset _m128permps_174, offset _m128permps_175, offset _m128permps_176, offset _m128permps_177, offset _m128permps_178, offset _m128permps_179, \
                                    offset _m128permps_180, offset _m128permps_181, offset _m128permps_182, offset _m128permps_183, offset _m128permps_184, offset _m128permps_185, \
                                    offset _m128permps_186, offset _m128permps_187, offset _m128permps_188, offset _m128permps_189, offset _m128permps_190, offset _m128permps_191, \
                                    offset _m128permps_192, offset _m128permps_193, offset _m128permps_194, offset _m128permps_195, offset _m128permps_196, offset _m128permps_197, \
                                    offset _m128permps_198, offset _m128permps_199, offset _m128permps_200, offset _m128permps_201, offset _m128permps_202, offset _m128permps_203, \
                                    offset _m128permps_204, offset _m128permps_205, offset _m128permps_206, offset _m128permps_207, offset _m128permps_208, offset _m128permps_209, \
                                    offset _m128permps_210, offset _m128permps_211, offset _m128permps_212, offset _m128permps_213, offset _m128permps_214, offset _m128permps_215, \
                                    offset _m128permps_216, offset _m128permps_217, offset _m128permps_218, offset _m128permps_219, offset _m128permps_220, offset _m128permps_221, \
                                    offset _m128permps_222, offset _m128permps_223, offset _m128permps_224, offset _m128permps_225, offset _m128permps_226, offset _m128permps_227, \
                                    offset _m128permps_228, offset _m128permps_229, offset _m128permps_230, offset _m128permps_231, offset _m128permps_232, offset _m128permps_233, \
                                    offset _m128permps_234, offset _m128permps_235, offset _m128permps_236, offset _m128permps_237, offset _m128permps_238, offset _m128permps_239, \
                                    offset _m128permps_240, offset _m128permps_241, offset _m128permps_242, offset _m128permps_243, offset _m128permps_244, offset _m128permps_245, \
                                    offset _m128permps_246, offset _m128permps_247, offset _m128permps_248, offset _m128permps_249, offset _m128permps_250, offset _m128permps_251, \
                                    offset _m128permps_252, offset _m128permps_253, offset _m128permps_254, offset _m128permps_255              

    .code

    callconvopt
    alignxmmfieldproc

procstart _uX_mm_permute_0000_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_permute_0001_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           1
        ret
procend

procstart _uX_mm_permute_0002_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           2
        ret
procend

procstart _uX_mm_permute_0003_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           3
        ret
procend

procstart _uX_mm_permute_0010_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           4
        ret
procend

procstart _uX_mm_permute_0011_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           5
        ret
procend

procstart _uX_mm_permute_0012_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           6
        ret
procend

procstart _uX_mm_permute_0013_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           7
        ret
procend

procstart _uX_mm_permute_0020_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           8
        ret
procend

procstart _uX_mm_permute_0021_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           9
        ret
procend

procstart _uX_mm_permute_0022_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           10
        ret
procend

procstart _uX_mm_permute_0023_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           11
        ret
procend

procstart _uX_mm_permute_0030_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           12
        ret
procend

procstart _uX_mm_permute_0031_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           13
        ret
procend

procstart _uX_mm_permute_0032_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           14
        ret
procend

procstart _uX_mm_permute_0033_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           15
        ret
procend

procstart _uX_mm_permute_0100_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           16
        ret
procend

procstart _uX_mm_permute_0101_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           17
        ret
procend

procstart _uX_mm_permute_0102_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           18
        ret
procend

procstart _uX_mm_permute_0103_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           19
        ret
procend

procstart _uX_mm_permute_0110_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           20
        ret
procend

procstart _uX_mm_permute_0111_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           21
        ret
procend

procstart _uX_mm_permute_0112_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           22
        ret
procend

procstart _uX_mm_permute_0113_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           23
        ret
procend

procstart _uX_mm_permute_0120_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           24
        ret
procend

procstart _uX_mm_permute_0121_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           25
        ret
procend

procstart _uX_mm_permute_0122_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           26
        ret
procend

procstart _uX_mm_permute_0123_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           27
        ret
procend

procstart _uX_mm_permute_0130_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           28
        ret
procend

procstart _uX_mm_permute_0131_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           29
        ret
procend

procstart _uX_mm_permute_0132_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           30
        ret
procend

procstart _uX_mm_permute_0133_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           31
        ret
procend

procstart _uX_mm_permute_0200_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           32
        ret
procend

procstart _uX_mm_permute_0201_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           33
        ret
procend

procstart _uX_mm_permute_0202_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           34
        ret
procend

procstart _uX_mm_permute_0203_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           35
        ret
procend

procstart _uX_mm_permute_0210_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           36
        ret
procend

procstart _uX_mm_permute_0211_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           37
        ret
procend

procstart _uX_mm_permute_0212_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           38
        ret
procend

procstart _uX_mm_permute_0213_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           39
        ret
procend

procstart _uX_mm_permute_0220_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           40
        ret
procend

procstart _uX_mm_permute_0221_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           41
        ret
procend

procstart _uX_mm_permute_0222_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           42
        ret
procend

procstart _uX_mm_permute_0223_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           43
        ret
procend

procstart _uX_mm_permute_0230_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           44
        ret
procend

procstart _uX_mm_permute_0231_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           45
        ret
procend

procstart _uX_mm_permute_0232_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           46
        ret
procend

procstart _uX_mm_permute_0233_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           47
        ret
procend

procstart _uX_mm_permute_0300_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           48
        ret
procend

procstart _uX_mm_permute_0301_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           49
        ret
procend

procstart _uX_mm_permute_0302_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           50
        ret
procend

procstart _uX_mm_permute_0303_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           51
        ret
procend

procstart _uX_mm_permute_0310_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           52
        ret
procend

procstart _uX_mm_permute_0311_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           53
        ret
procend

procstart _uX_mm_permute_0312_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           54
        ret
procend

procstart _uX_mm_permute_0313_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           55
        ret
procend

procstart _uX_mm_permute_0320_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           56
        ret
procend

procstart _uX_mm_permute_0321_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           57
        ret
procend

procstart _uX_mm_permute_0322_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           58
        ret
procend

procstart _uX_mm_permute_0323_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           59
        ret
procend

procstart _uX_mm_permute_0330_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           60
        ret
procend

procstart _uX_mm_permute_0331_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           61
        ret
procend

procstart _uX_mm_permute_0332_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           62
        ret
procend

procstart _uX_mm_permute_0333_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           63
        ret
procend

procstart _uX_mm_permute_1000_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           64
        ret
procend

procstart _uX_mm_permute_1001_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           65
        ret
procend

procstart _uX_mm_permute_1002_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           66
        ret
procend

procstart _uX_mm_permute_1003_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           67
        ret
procend

procstart _uX_mm_permute_1010_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           68
        ret
procend

procstart _uX_mm_permute_1011_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           69
        ret
procend

procstart _uX_mm_permute_1012_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           70
        ret
procend

procstart _uX_mm_permute_1013_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           71
        ret
procend

procstart _uX_mm_permute_1020_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           72
        ret
procend

procstart _uX_mm_permute_1021_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           73
        ret
procend

procstart _uX_mm_permute_1022_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           74
        ret
procend

procstart _uX_mm_permute_1023_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           75
        ret
procend

procstart _uX_mm_permute_1030_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           76
        ret
procend

procstart _uX_mm_permute_1031_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           77
        ret
procend

procstart _uX_mm_permute_1032_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           78
        ret
procend

procstart _uX_mm_permute_1033_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           79
        ret
procend

procstart _uX_mm_permute_1100_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           80
        ret
procend

procstart _uX_mm_permute_1101_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           81
        ret
procend

procstart _uX_mm_permute_1102_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           82
        ret
procend

procstart _uX_mm_permute_1103_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           83
        ret
procend

procstart _uX_mm_permute_1110_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           84
        ret
procend

procstart _uX_mm_permute_1111_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           85
        ret
procend

procstart _uX_mm_permute_1112_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           86
        ret
procend

procstart _uX_mm_permute_1113_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           87
        ret
procend

procstart _uX_mm_permute_1120_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           88
        ret
procend

procstart _uX_mm_permute_1121_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           89
        ret
procend

procstart _uX_mm_permute_1122_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           90
        ret
procend

procstart _uX_mm_permute_1123_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           91
        ret
procend

procstart _uX_mm_permute_1130_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           92
        ret
procend

procstart _uX_mm_permute_1131_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           93
        ret
procend

procstart _uX_mm_permute_1132_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           94
        ret
procend

procstart _uX_mm_permute_1133_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           95
        ret
procend

procstart _uX_mm_permute_1200_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           96
        ret
procend

procstart _uX_mm_permute_1201_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           97
        ret
procend

procstart _uX_mm_permute_1202_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           98
        ret
procend

procstart _uX_mm_permute_1203_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           99
        ret
procend

procstart _uX_mm_permute_1210_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           100
        ret
procend

procstart _uX_mm_permute_1211_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           101
        ret
procend

procstart _uX_mm_permute_1212_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           102
        ret
procend

procstart _uX_mm_permute_1213_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           103
        ret
procend

procstart _uX_mm_permute_1220_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           104
        ret
procend

procstart _uX_mm_permute_1221_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           105
        ret
procend

procstart _uX_mm_permute_1222_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           106
        ret
procend

procstart _uX_mm_permute_1223_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           107
        ret
procend

procstart _uX_mm_permute_1230_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           108
        ret
procend

procstart _uX_mm_permute_1231_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           109
        ret
procend

procstart _uX_mm_permute_1232_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           110
        ret
procend

procstart _uX_mm_permute_1233_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           111
        ret
procend

procstart _uX_mm_permute_1300_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           112
        ret
procend

procstart _uX_mm_permute_1301_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           113
        ret
procend

procstart _uX_mm_permute_1302_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           114
        ret
procend

procstart _uX_mm_permute_1303_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           115
        ret
procend

procstart _uX_mm_permute_1310_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           116
        ret
procend

procstart _uX_mm_permute_1311_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           117
        ret
procend

procstart _uX_mm_permute_1312_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           118
        ret
procend

procstart _uX_mm_permute_1313_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           119
        ret
procend

procstart _uX_mm_permute_1320_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           120
        ret
procend

procstart _uX_mm_permute_1321_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           121
        ret
procend

procstart _uX_mm_permute_1322_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           122
        ret
procend

procstart _uX_mm_permute_1323_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           123
        ret
procend

procstart _uX_mm_permute_1330_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           124
        ret
procend

procstart _uX_mm_permute_1331_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           125
        ret
procend

procstart _uX_mm_permute_1332_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           126
        ret
procend

procstart _uX_mm_permute_1333_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           127
        ret
procend

procstart _uX_mm_permute_2000_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           128
        ret
procend

procstart _uX_mm_permute_2001_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           129
        ret
procend

procstart _uX_mm_permute_2002_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           130
        ret
procend

procstart _uX_mm_permute_2003_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           131
        ret
procend

procstart _uX_mm_permute_2010_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           132
        ret
procend

procstart _uX_mm_permute_2011_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           133
        ret
procend

procstart _uX_mm_permute_2012_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           134
        ret
procend

procstart _uX_mm_permute_2013_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           135
        ret
procend

procstart _uX_mm_permute_2020_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           136
        ret
procend

procstart _uX_mm_permute_2021_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           137
        ret
procend

procstart _uX_mm_permute_2022_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           138
        ret
procend

procstart _uX_mm_permute_2023_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           139
        ret
procend

procstart _uX_mm_permute_2030_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           140
        ret
procend

procstart _uX_mm_permute_2031_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           141
        ret
procend

procstart _uX_mm_permute_2032_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           142
        ret
procend

procstart _uX_mm_permute_2033_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           143
        ret
procend

procstart _uX_mm_permute_2100_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           144
        ret
procend

procstart _uX_mm_permute_2101_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           145
        ret
procend

procstart _uX_mm_permute_2102_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        shufps          xmm0,           xmm0,           146
        ret
procend

procstart _uX_mm_permute_2103_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           147
        ret
procend

procstart _uX_mm_permute_2110_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           148
        ret
procend

procstart _uX_mm_permute_2111_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           149
        ret
procend

procstart _uX_mm_permute_2112_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           150
        ret
procend

procstart _uX_mm_permute_2113_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           151
        ret
procend

procstart _uX_mm_permute_2120_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           152
        ret
procend

procstart _uX_mm_permute_2121_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           153
        ret
procend

procstart _uX_mm_permute_2122_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        shufps          xmm0,           xmm0,           154
        ret
procend

procstart _uX_mm_permute_2123_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           155
        ret
procend

procstart _uX_mm_permute_2130_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           156
        ret
procend

procstart _uX_mm_permute_2131_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           157
        ret
procend

procstart _uX_mm_permute_2132_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           158
        ret
procend

procstart _uX_mm_permute_2133_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           159
        ret
procend

procstart _uX_mm_permute_2200_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           160
        ret
procend

procstart _uX_mm_permute_2201_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           161
        ret
procend

procstart _uX_mm_permute_2202_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           162
        ret
procend

procstart _uX_mm_permute_2203_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           163
        ret
procend

procstart _uX_mm_permute_2210_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           164
        ret
procend

procstart _uX_mm_permute_2211_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           165
        ret
procend

procstart _uX_mm_permute_2212_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           166
        ret
procend

procstart _uX_mm_permute_2213_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           167
        ret
procend

procstart _uX_mm_permute_2220_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           168
        ret
procend

procstart _uX_mm_permute_2221_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           169
        ret
procend

procstart _uX_mm_permute_2222_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           170
        ret
procend

procstart _uX_mm_permute_2223_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           171
        ret
procend

procstart _uX_mm_permute_2230_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           172
        ret
procend

procstart _uX_mm_permute_2231_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           173
        ret
procend

procstart _uX_mm_permute_2232_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        shufps          xmm0,           xmm0,           174
        ret
procend

procstart _uX_mm_permute_2233_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           175
        ret
procend

procstart _uX_mm_permute_2300_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           176
        ret
procend

procstart _uX_mm_permute_2301_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           177
        ret
procend

procstart _uX_mm_permute_2302_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           178
        ret
procend

procstart _uX_mm_permute_2303_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           179
        ret
procend

procstart _uX_mm_permute_2310_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           180
        ret
procend

procstart _uX_mm_permute_2311_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           181
        ret
procend

procstart _uX_mm_permute_2312_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           182
        ret
procend

procstart _uX_mm_permute_2313_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           183
        ret
procend

procstart _uX_mm_permute_2320_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           184
        ret
procend

procstart _uX_mm_permute_2321_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           185
        ret
procend

procstart _uX_mm_permute_2322_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           186
        ret
procend

procstart _uX_mm_permute_2323_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           187
        ret
procend

procstart _uX_mm_permute_2330_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           188
        ret
procend

procstart _uX_mm_permute_2331_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           189
        ret
procend

procstart _uX_mm_permute_2332_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           190
        ret
procend

procstart _uX_mm_permute_2333_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           191
        ret
procend

procstart _uX_mm_permute_3000_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           192
        ret
procend

procstart _uX_mm_permute_3001_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           193
        ret
procend

procstart _uX_mm_permute_3002_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           194
        ret
procend

procstart _uX_mm_permute_3003_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           195
        ret
procend

procstart _uX_mm_permute_3010_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           196
        ret
procend

procstart _uX_mm_permute_3011_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           197
        ret
procend

procstart _uX_mm_permute_3012_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           198
        ret
procend

procstart _uX_mm_permute_3013_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           199
        ret
procend

procstart _uX_mm_permute_3020_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           200
        ret
procend

procstart _uX_mm_permute_3021_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           201
        ret
procend

procstart _uX_mm_permute_3022_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           202
        ret
procend

procstart _uX_mm_permute_3023_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           203
        ret
procend

procstart _uX_mm_permute_3030_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           204
        ret
procend

procstart _uX_mm_permute_3031_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           205
        ret
procend

procstart _uX_mm_permute_3032_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           206
        ret
procend

procstart _uX_mm_permute_3033_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           207
        ret
procend

procstart _uX_mm_permute_3100_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           208
        ret
procend

procstart _uX_mm_permute_3101_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           209
        ret
procend

procstart _uX_mm_permute_3102_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           210
        ret
procend

procstart _uX_mm_permute_3103_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           211
        ret
procend

procstart _uX_mm_permute_3110_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           212
        ret
procend

procstart _uX_mm_permute_3111_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           213
        ret
procend

procstart _uX_mm_permute_3112_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           214
        ret
procend

procstart _uX_mm_permute_3113_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           215
        ret
procend

procstart _uX_mm_permute_3120_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           216
        ret
procend

procstart _uX_mm_permute_3121_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           217
        ret
procend

procstart _uX_mm_permute_3122_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           218
        ret
procend

procstart _uX_mm_permute_3123_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           219
        ret
procend

procstart _uX_mm_permute_3130_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           220
        ret
procend

procstart _uX_mm_permute_3131_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           221
        ret
procend

procstart _uX_mm_permute_3132_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           222
        ret
procend

procstart _uX_mm_permute_3133_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           223
        ret
procend

procstart _uX_mm_permute_3200_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           224
        ret
procend

procstart _uX_mm_permute_3201_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           225
        ret
procend

procstart _uX_mm_permute_3202_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           226
        ret
procend

procstart _uX_mm_permute_3203_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           227
        ret
procend

procstart _uX_mm_permute_3210_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           228
        ret
procend

procstart _uX_mm_permute_3211_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           229
        ret
procend

procstart _uX_mm_permute_3212_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           230
        ret
procend

procstart _uX_mm_permute_3213_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           231
        ret
procend

procstart _uX_mm_permute_3220_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           232
        ret
procend

procstart _uX_mm_permute_3221_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           233
        ret
procend

procstart _uX_mm_permute_3222_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           234
        ret
procend

procstart _uX_mm_permute_3223_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           235
        ret
procend

procstart _uX_mm_permute_3230_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           236
        ret
procend

procstart _uX_mm_permute_3231_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           237
        ret
procend

procstart _uX_mm_permute_3232_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           238
        ret
procend

procstart _uX_mm_permute_3233_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           239
        ret
procend

procstart _uX_mm_permute_3300_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           240
        ret
procend

procstart _uX_mm_permute_3301_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           241
        ret
procend

procstart _uX_mm_permute_3302_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           242
        ret
procend

procstart _uX_mm_permute_3303_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           243
        ret
procend

procstart _uX_mm_permute_3310_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           244
        ret
procend

procstart _uX_mm_permute_3311_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           245
        ret
procend

procstart _uX_mm_permute_3312_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           246
        ret
procend

procstart _uX_mm_permute_3313_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           247
        ret
procend

procstart _uX_mm_permute_3320_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           248
        ret
procend

procstart _uX_mm_permute_3321_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           249
        ret
procend

procstart _uX_mm_permute_3322_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           250
        ret
procend

procstart _uX_mm_permute_3323_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           251
        ret
procend

procstart _uX_mm_permute_3330_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           252
        ret
procend

procstart _uX_mm_permute_3331_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           253
        ret
procend

procstart _uX_mm_permute_3332_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           254
        ret
procend

procstart _uX_mm_permute_3333_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufps          xmm0,           xmm0,           255
        ret
procend

procstart _uX_mm_permute_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, _Imm8:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 255))
        jmp         _m128permps_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m128permpsjmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128permpsjmptable]
        mov             rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp             rbx
        endif

        _m128permps_0 label size_t
        shufps          xmm0,           xmm0,           0
        jmp         _m128permps_end
        _m128permps_1 label size_t
        shufps          xmm0,           xmm0,           1
        jmp         _m128permps_end
        _m128permps_2 label size_t
        shufps          xmm0,           xmm0,           2
        jmp         _m128permps_end
        _m128permps_3 label size_t
        shufps          xmm0,           xmm0,           3
        jmp         _m128permps_end
        _m128permps_4 label size_t
        shufps          xmm0,           xmm0,           4
        jmp         _m128permps_end
        _m128permps_5 label size_t
        shufps          xmm0,           xmm0,           5
        jmp         _m128permps_end
        _m128permps_6 label size_t
        shufps          xmm0,           xmm0,           6
        jmp         _m128permps_end
        _m128permps_7 label size_t
        shufps          xmm0,           xmm0,           7
        jmp         _m128permps_end
        _m128permps_8 label size_t
        shufps          xmm0,           xmm0,           8
        jmp         _m128permps_end
        _m128permps_9 label size_t
        shufps          xmm0,           xmm0,           9
        jmp         _m128permps_end
        _m128permps_10 label size_t
        shufps          xmm0,           xmm0,           10
        jmp         _m128permps_end
        _m128permps_11 label size_t
        shufps          xmm0,           xmm0,           11
        jmp         _m128permps_end
        _m128permps_12 label size_t
        shufps          xmm0,           xmm0,           12
        jmp         _m128permps_end
        _m128permps_13 label size_t
        shufps          xmm0,           xmm0,           13
        jmp         _m128permps_end
        _m128permps_14 label size_t
        shufps          xmm0,           xmm0,           14
        jmp         _m128permps_end
        _m128permps_15 label size_t
        shufps          xmm0,           xmm0,           15
        jmp         _m128permps_end
        _m128permps_16 label size_t
        shufps          xmm0,           xmm0,           16
        jmp         _m128permps_end
        _m128permps_17 label size_t
        shufps          xmm0,           xmm0,           17
        jmp         _m128permps_end
        _m128permps_18 label size_t
        shufps          xmm0,           xmm0,           18
        jmp         _m128permps_end
        _m128permps_19 label size_t
        shufps          xmm0,           xmm0,           19
        jmp         _m128permps_end
        _m128permps_20 label size_t
        shufps          xmm0,           xmm0,           20
        jmp         _m128permps_end
        _m128permps_21 label size_t
        shufps          xmm0,           xmm0,           21
        jmp         _m128permps_end
        _m128permps_22 label size_t
        shufps          xmm0,           xmm0,           22
        jmp         _m128permps_end
        _m128permps_23 label size_t
        shufps          xmm0,           xmm0,           23
        jmp         _m128permps_end
        _m128permps_24 label size_t
        shufps          xmm0,           xmm0,           24
        jmp         _m128permps_end
        _m128permps_25 label size_t
        shufps          xmm0,           xmm0,           25
        jmp         _m128permps_end
        _m128permps_26 label size_t
        shufps          xmm0,           xmm0,           26
        jmp         _m128permps_end
        _m128permps_27 label size_t
        shufps          xmm0,           xmm0,           27
        jmp         _m128permps_end
        _m128permps_28 label size_t
        shufps          xmm0,           xmm0,           28
        jmp         _m128permps_end
        _m128permps_29 label size_t
        shufps          xmm0,           xmm0,           29
        jmp         _m128permps_end
        _m128permps_30 label size_t
        shufps          xmm0,           xmm0,           30
        jmp         _m128permps_end
        _m128permps_31 label size_t
        shufps          xmm0,           xmm0,           31
        jmp         _m128permps_end
        _m128permps_32 label size_t
        shufps          xmm0,           xmm0,           32
        jmp         _m128permps_end
        _m128permps_33 label size_t
        shufps          xmm0,           xmm0,           33
        jmp         _m128permps_end
        _m128permps_34 label size_t
        shufps          xmm0,           xmm0,           34
        jmp         _m128permps_end
        _m128permps_35 label size_t
        shufps          xmm0,           xmm0,           35
        jmp         _m128permps_end
        _m128permps_36 label size_t
        shufps          xmm0,           xmm0,           36
        jmp         _m128permps_end
        _m128permps_37 label size_t
        shufps          xmm0,           xmm0,           37
        jmp         _m128permps_end
        _m128permps_38 label size_t
        shufps          xmm0,           xmm0,           38
        jmp         _m128permps_end
        _m128permps_39 label size_t
        shufps          xmm0,           xmm0,           39
        jmp         _m128permps_end
        _m128permps_40 label size_t
        shufps          xmm0,           xmm0,           40
        jmp         _m128permps_end
        _m128permps_41 label size_t
        shufps          xmm0,           xmm0,           41
        jmp         _m128permps_end
        _m128permps_42 label size_t
        shufps          xmm0,           xmm0,           42
        jmp         _m128permps_end
        _m128permps_43 label size_t
        shufps          xmm0,           xmm0,           43
        jmp         _m128permps_end
        _m128permps_44 label size_t
        shufps          xmm0,           xmm0,           44
        jmp         _m128permps_end
        _m128permps_45 label size_t
        shufps          xmm0,           xmm0,           45
        jmp         _m128permps_end
        _m128permps_46 label size_t
        shufps          xmm0,           xmm0,           46
        jmp         _m128permps_end
        _m128permps_47 label size_t
        shufps          xmm0,           xmm0,           47
        jmp         _m128permps_end
        _m128permps_48 label size_t
        shufps          xmm0,           xmm0,           48
        jmp         _m128permps_end
        _m128permps_49 label size_t
        shufps          xmm0,           xmm0,           49
        jmp         _m128permps_end
        _m128permps_50 label size_t
        shufps          xmm0,           xmm0,           50
        jmp         _m128permps_end
        _m128permps_51 label size_t
        shufps          xmm0,           xmm0,           51
        jmp         _m128permps_end
        _m128permps_52 label size_t
        shufps          xmm0,           xmm0,           52
        jmp         _m128permps_end
        _m128permps_53 label size_t
        shufps          xmm0,           xmm0,           53
        jmp         _m128permps_end
        _m128permps_54 label size_t
        shufps          xmm0,           xmm0,           54
        jmp         _m128permps_end
        _m128permps_55 label size_t
        shufps          xmm0,           xmm0,           55
        jmp         _m128permps_end
        _m128permps_56 label size_t
        shufps          xmm0,           xmm0,           56
        jmp         _m128permps_end
        _m128permps_57 label size_t
        shufps          xmm0,           xmm0,           57
        jmp         _m128permps_end
        _m128permps_58 label size_t
        shufps          xmm0,           xmm0,           58
        jmp         _m128permps_end
        _m128permps_59 label size_t
        shufps          xmm0,           xmm0,           59
        jmp         _m128permps_end
        _m128permps_60 label size_t
        shufps          xmm0,           xmm0,           60
        jmp         _m128permps_end
        _m128permps_61 label size_t
        shufps          xmm0,           xmm0,           61
        jmp         _m128permps_end
        _m128permps_62 label size_t
        shufps          xmm0,           xmm0,           62
        jmp         _m128permps_end
        _m128permps_63 label size_t
        shufps          xmm0,           xmm0,           63
        jmp         _m128permps_end
        _m128permps_64 label size_t
        shufps          xmm0,           xmm0,           64
        jmp         _m128permps_end
        _m128permps_65 label size_t
        shufps          xmm0,           xmm0,           65
        jmp         _m128permps_end
        _m128permps_66 label size_t
        shufps          xmm0,           xmm0,           66
        jmp         _m128permps_end
        _m128permps_67 label size_t
        shufps          xmm0,           xmm0,           67
        jmp         _m128permps_end
        _m128permps_68 label size_t
        shufps          xmm0,           xmm0,           68
        jmp         _m128permps_end
        _m128permps_69 label size_t
        shufps          xmm0,           xmm0,           69
        jmp         _m128permps_end
        _m128permps_70 label size_t
        shufps          xmm0,           xmm0,           70
        jmp         _m128permps_end
        _m128permps_71 label size_t
        shufps          xmm0,           xmm0,           71
        jmp         _m128permps_end
        _m128permps_72 label size_t
        shufps          xmm0,           xmm0,           72
        jmp         _m128permps_end
        _m128permps_73 label size_t
        shufps          xmm0,           xmm0,           73
        jmp         _m128permps_end
        _m128permps_74 label size_t
        shufps          xmm0,           xmm0,           74
        jmp         _m128permps_end
        _m128permps_75 label size_t
        shufps          xmm0,           xmm0,           75
        jmp         _m128permps_end
        _m128permps_76 label size_t
        shufps          xmm0,           xmm0,           76
        jmp         _m128permps_end
        _m128permps_77 label size_t
        shufps          xmm0,           xmm0,           77
        jmp         _m128permps_end
        _m128permps_78 label size_t
        shufps          xmm0,           xmm0,           78
        jmp         _m128permps_end
        _m128permps_79 label size_t
        shufps          xmm0,           xmm0,           79
        jmp         _m128permps_end
        _m128permps_80 label size_t
        shufps          xmm0,           xmm0,           80
        jmp         _m128permps_end
        _m128permps_81 label size_t
        shufps          xmm0,           xmm0,           81
        jmp         _m128permps_end
        _m128permps_82 label size_t
        shufps          xmm0,           xmm0,           82
        jmp         _m128permps_end
        _m128permps_83 label size_t
        shufps          xmm0,           xmm0,           83
        jmp         _m128permps_end
        _m128permps_84 label size_t
        shufps          xmm0,           xmm0,           84
        jmp         _m128permps_end
        _m128permps_85 label size_t
        shufps          xmm0,           xmm0,           85
        jmp         _m128permps_end
        _m128permps_86 label size_t
        shufps          xmm0,           xmm0,           86
        jmp         _m128permps_end
        _m128permps_87 label size_t
        shufps          xmm0,           xmm0,           87
        jmp         _m128permps_end
        _m128permps_88 label size_t
        shufps          xmm0,           xmm0,           88
        jmp         _m128permps_end
        _m128permps_89 label size_t
        shufps          xmm0,           xmm0,           89
        jmp         _m128permps_end
        _m128permps_90 label size_t
        shufps          xmm0,           xmm0,           90
        jmp         _m128permps_end
        _m128permps_91 label size_t
        shufps          xmm0,           xmm0,           91
        jmp         _m128permps_end
        _m128permps_92 label size_t
        shufps          xmm0,           xmm0,           92
        jmp         _m128permps_end
        _m128permps_93 label size_t
        shufps          xmm0,           xmm0,           93
        jmp         _m128permps_end
        _m128permps_94 label size_t
        shufps          xmm0,           xmm0,           94
        jmp         _m128permps_end
        _m128permps_95 label size_t
        shufps          xmm0,           xmm0,           95
        jmp         _m128permps_end
        _m128permps_96 label size_t
        shufps          xmm0,           xmm0,           96
        jmp         _m128permps_end
        _m128permps_97 label size_t
        shufps          xmm0,           xmm0,           97
        jmp         _m128permps_end
        _m128permps_98 label size_t
        shufps          xmm0,           xmm0,           98
        jmp         _m128permps_end
        _m128permps_99 label size_t
        shufps          xmm0,           xmm0,           99
        jmp         _m128permps_end
        _m128permps_100 label size_t
        shufps          xmm0,           xmm0,           100
        jmp         _m128permps_end
        _m128permps_101 label size_t
        shufps          xmm0,           xmm0,           101
        jmp         _m128permps_end
        _m128permps_102 label size_t
        shufps          xmm0,           xmm0,           102
        jmp         _m128permps_end
        _m128permps_103 label size_t
        shufps          xmm0,           xmm0,           103
        jmp         _m128permps_end
        _m128permps_104 label size_t
        shufps          xmm0,           xmm0,           104
        jmp         _m128permps_end
        _m128permps_105 label size_t
        shufps          xmm0,           xmm0,           105
        jmp         _m128permps_end
        _m128permps_106 label size_t
        shufps          xmm0,           xmm0,           106
        jmp         _m128permps_end
        _m128permps_107 label size_t
        shufps          xmm0,           xmm0,           107
        jmp         _m128permps_end
        _m128permps_108 label size_t
        shufps          xmm0,           xmm0,           108
        jmp         _m128permps_end
        _m128permps_109 label size_t
        shufps          xmm0,           xmm0,           109
        jmp         _m128permps_end
        _m128permps_110 label size_t
        shufps          xmm0,           xmm0,           110
        jmp         _m128permps_end
        _m128permps_111 label size_t
        shufps          xmm0,           xmm0,           111
        jmp         _m128permps_end
        _m128permps_112 label size_t
        shufps          xmm0,           xmm0,           112
        jmp         _m128permps_end
        _m128permps_113 label size_t
        shufps          xmm0,           xmm0,           113
        jmp         _m128permps_end
        _m128permps_114 label size_t
        shufps          xmm0,           xmm0,           114
        jmp         _m128permps_end
        _m128permps_115 label size_t
        shufps          xmm0,           xmm0,           115
        jmp         _m128permps_end
        _m128permps_116 label size_t
        shufps          xmm0,           xmm0,           116
        jmp         _m128permps_end
        _m128permps_117 label size_t
        shufps          xmm0,           xmm0,           117
        jmp         _m128permps_end
        _m128permps_118 label size_t
        shufps          xmm0,           xmm0,           118
        jmp         _m128permps_end
        _m128permps_119 label size_t
        shufps          xmm0,           xmm0,           119
        jmp         _m128permps_end
        _m128permps_120 label size_t
        shufps          xmm0,           xmm0,           120
        jmp         _m128permps_end
        _m128permps_121 label size_t
        shufps          xmm0,           xmm0,           121
        jmp         _m128permps_end
        _m128permps_122 label size_t
        shufps          xmm0,           xmm0,           122
        jmp         _m128permps_end
        _m128permps_123 label size_t
        shufps          xmm0,           xmm0,           123
        jmp         _m128permps_end
        _m128permps_124 label size_t
        shufps          xmm0,           xmm0,           124
        jmp         _m128permps_end
        _m128permps_125 label size_t
        shufps          xmm0,           xmm0,           125
        jmp         _m128permps_end
        _m128permps_126 label size_t
        shufps          xmm0,           xmm0,           126
        jmp         _m128permps_end
        _m128permps_127 label size_t
        shufps          xmm0,           xmm0,           127
        jmp         _m128permps_end
        _m128permps_128 label size_t
        shufps          xmm0,           xmm0,           128
        jmp         _m128permps_end
        _m128permps_129 label size_t
        shufps          xmm0,           xmm0,           129
        jmp         _m128permps_end
        _m128permps_130 label size_t
        shufps          xmm0,           xmm0,           130
        jmp         _m128permps_end
        _m128permps_131 label size_t
        shufps          xmm0,           xmm0,           131
        jmp         _m128permps_end
        _m128permps_132 label size_t
        shufps          xmm0,           xmm0,           132
        jmp         _m128permps_end
        _m128permps_133 label size_t
        shufps          xmm0,           xmm0,           133
        jmp         _m128permps_end
        _m128permps_134 label size_t
        shufps          xmm0,           xmm0,           134
        jmp         _m128permps_end
        _m128permps_135 label size_t
        shufps          xmm0,           xmm0,           135
        jmp         _m128permps_end
        _m128permps_136 label size_t
        shufps          xmm0,           xmm0,           136
        jmp         _m128permps_end
        _m128permps_137 label size_t
        shufps          xmm0,           xmm0,           137
        jmp         _m128permps_end
        _m128permps_138 label size_t
        shufps          xmm0,           xmm0,           138
        jmp         _m128permps_end
        _m128permps_139 label size_t
        shufps          xmm0,           xmm0,           139
        jmp         _m128permps_end
        _m128permps_140 label size_t
        shufps          xmm0,           xmm0,           140
        jmp         _m128permps_end
        _m128permps_141 label size_t
        shufps          xmm0,           xmm0,           141
        jmp         _m128permps_end
        _m128permps_142 label size_t
        shufps          xmm0,           xmm0,           142
        jmp         _m128permps_end
        _m128permps_143 label size_t
        shufps          xmm0,           xmm0,           143
        jmp         _m128permps_end
        _m128permps_144 label size_t
        shufps          xmm0,           xmm0,           144
        jmp         _m128permps_end
        _m128permps_145 label size_t
        shufps          xmm0,           xmm0,           145
        jmp         _m128permps_end
        _m128permps_146 label size_t
        shufps          xmm0,           xmm0,           146
        jmp         _m128permps_end
        _m128permps_147 label size_t
        shufps          xmm0,           xmm0,           147
        jmp         _m128permps_end
        _m128permps_148 label size_t
        shufps          xmm0,           xmm0,           148
        jmp         _m128permps_end
        _m128permps_149 label size_t
        shufps          xmm0,           xmm0,           149
        jmp         _m128permps_end
        _m128permps_150 label size_t
        shufps          xmm0,           xmm0,           150
        jmp         _m128permps_end
        _m128permps_151 label size_t
        shufps          xmm0,           xmm0,           151
        jmp         _m128permps_end
        _m128permps_152 label size_t
        shufps          xmm0,           xmm0,           152
        jmp         _m128permps_end
        _m128permps_153 label size_t
        shufps          xmm0,           xmm0,           153
        jmp         _m128permps_end
        _m128permps_154 label size_t
        shufps          xmm0,           xmm0,           154
        jmp         _m128permps_end
        _m128permps_155 label size_t
        shufps          xmm0,           xmm0,           155
        jmp         _m128permps_end
        _m128permps_156 label size_t
        shufps          xmm0,           xmm0,           156
        jmp         _m128permps_end
        _m128permps_157 label size_t
        shufps          xmm0,           xmm0,           157
        jmp         _m128permps_end
        _m128permps_158 label size_t
        shufps          xmm0,           xmm0,           158
        jmp         _m128permps_end
        _m128permps_159 label size_t
        shufps          xmm0,           xmm0,           159
        jmp         _m128permps_end
        _m128permps_160 label size_t
        shufps          xmm0,           xmm0,           160
        jmp         _m128permps_end
        _m128permps_161 label size_t
        shufps          xmm0,           xmm0,           161
        jmp         _m128permps_end
        _m128permps_162 label size_t
        shufps          xmm0,           xmm0,           162
        jmp         _m128permps_end
        _m128permps_163 label size_t
        shufps          xmm0,           xmm0,           163
        jmp         _m128permps_end
        _m128permps_164 label size_t
        shufps          xmm0,           xmm0,           164
        jmp         _m128permps_end
        _m128permps_165 label size_t
        shufps          xmm0,           xmm0,           165
        jmp         _m128permps_end
        _m128permps_166 label size_t
        shufps          xmm0,           xmm0,           166
        jmp         _m128permps_end
        _m128permps_167 label size_t
        shufps          xmm0,           xmm0,           167
        jmp         _m128permps_end
        _m128permps_168 label size_t
        shufps          xmm0,           xmm0,           168
        jmp         _m128permps_end
        _m128permps_169 label size_t
        shufps          xmm0,           xmm0,           169
        jmp         _m128permps_end
        _m128permps_170 label size_t
        shufps          xmm0,           xmm0,           170
        jmp         _m128permps_end
        _m128permps_171 label size_t
        shufps          xmm0,           xmm0,           171
        jmp         _m128permps_end
        _m128permps_172 label size_t
        shufps          xmm0,           xmm0,           172
        jmp         _m128permps_end
        _m128permps_173 label size_t
        shufps          xmm0,           xmm0,           173
        jmp         _m128permps_end
        _m128permps_174 label size_t
        shufps          xmm0,           xmm0,           174
        jmp         _m128permps_end
        _m128permps_175 label size_t
        shufps          xmm0,           xmm0,           175
        jmp         _m128permps_end
        _m128permps_176 label size_t
        shufps          xmm0,           xmm0,           176
        jmp         _m128permps_end
        _m128permps_177 label size_t
        shufps          xmm0,           xmm0,           177
        jmp         _m128permps_end
        _m128permps_178 label size_t
        shufps          xmm0,           xmm0,           178
        jmp         _m128permps_end
        _m128permps_179 label size_t
        shufps          xmm0,           xmm0,           179
        jmp         _m128permps_end
        _m128permps_180 label size_t
        shufps          xmm0,           xmm0,           180
        jmp         _m128permps_end
        _m128permps_181 label size_t
        shufps          xmm0,           xmm0,           181
        jmp         _m128permps_end
        _m128permps_182 label size_t
        shufps          xmm0,           xmm0,           182
        jmp         _m128permps_end
        _m128permps_183 label size_t
        shufps          xmm0,           xmm0,           183
        jmp         _m128permps_end
        _m128permps_184 label size_t
        shufps          xmm0,           xmm0,           184
        jmp         _m128permps_end
        _m128permps_185 label size_t
        shufps          xmm0,           xmm0,           185
        jmp         _m128permps_end
        _m128permps_186 label size_t
        shufps          xmm0,           xmm0,           186
        jmp         _m128permps_end
        _m128permps_187 label size_t
        shufps          xmm0,           xmm0,           187
        jmp         _m128permps_end
        _m128permps_188 label size_t
        shufps          xmm0,           xmm0,           188
        jmp         _m128permps_end
        _m128permps_189 label size_t
        shufps          xmm0,           xmm0,           189
        jmp         _m128permps_end
        _m128permps_190 label size_t
        shufps          xmm0,           xmm0,           190
        jmp         _m128permps_end
        _m128permps_191 label size_t
        shufps          xmm0,           xmm0,           191
        jmp         _m128permps_end
        _m128permps_192 label size_t
        shufps          xmm0,           xmm0,           192
        jmp         _m128permps_end
        _m128permps_193 label size_t
        shufps          xmm0,           xmm0,           193
        jmp         _m128permps_end
        _m128permps_194 label size_t
        shufps          xmm0,           xmm0,           194
        jmp         _m128permps_end
        _m128permps_195 label size_t
        shufps          xmm0,           xmm0,           195
        jmp         _m128permps_end
        _m128permps_196 label size_t
        shufps          xmm0,           xmm0,           196
        jmp         _m128permps_end
        _m128permps_197 label size_t
        shufps          xmm0,           xmm0,           197
        jmp         _m128permps_end
        _m128permps_198 label size_t
        shufps          xmm0,           xmm0,           198
        jmp         _m128permps_end
        _m128permps_199 label size_t
        shufps          xmm0,           xmm0,           199
        jmp         _m128permps_end
        _m128permps_200 label size_t
        shufps          xmm0,           xmm0,           200
        jmp         _m128permps_end
        _m128permps_201 label size_t
        shufps          xmm0,           xmm0,           201
        jmp         _m128permps_end
        _m128permps_202 label size_t
        shufps          xmm0,           xmm0,           202
        jmp         _m128permps_end
        _m128permps_203 label size_t
        shufps          xmm0,           xmm0,           203
        jmp         _m128permps_end
        _m128permps_204 label size_t
        shufps          xmm0,           xmm0,           204
        jmp         _m128permps_end
        _m128permps_205 label size_t
        shufps          xmm0,           xmm0,           205
        jmp         _m128permps_end
        _m128permps_206 label size_t
        shufps          xmm0,           xmm0,           206
        jmp         _m128permps_end
        _m128permps_207 label size_t
        shufps          xmm0,           xmm0,           207
        jmp         _m128permps_end
        _m128permps_208 label size_t
        shufps          xmm0,           xmm0,           208
        jmp         _m128permps_end
        _m128permps_209 label size_t
        shufps          xmm0,           xmm0,           209
        jmp         _m128permps_end
        _m128permps_210 label size_t
        shufps          xmm0,           xmm0,           210
        jmp         _m128permps_end
        _m128permps_211 label size_t
        shufps          xmm0,           xmm0,           211
        jmp         _m128permps_end
        _m128permps_212 label size_t
        shufps          xmm0,           xmm0,           212
        jmp         _m128permps_end
        _m128permps_213 label size_t
        shufps          xmm0,           xmm0,           213
        jmp         _m128permps_end
        _m128permps_214 label size_t
        shufps          xmm0,           xmm0,           214
        jmp         _m128permps_end
        _m128permps_215 label size_t
        shufps          xmm0,           xmm0,           215
        jmp         _m128permps_end
        _m128permps_216 label size_t
        shufps          xmm0,           xmm0,           216
        jmp         _m128permps_end
        _m128permps_217 label size_t
        shufps          xmm0,           xmm0,           217
        jmp         _m128permps_end
        _m128permps_218 label size_t
        shufps          xmm0,           xmm0,           218
        jmp         _m128permps_end
        _m128permps_219 label size_t
        shufps          xmm0,           xmm0,           219
        jmp         _m128permps_end
        _m128permps_220 label size_t
        shufps          xmm0,           xmm0,           220
        jmp         _m128permps_end
        _m128permps_221 label size_t
        shufps          xmm0,           xmm0,           221
        jmp         _m128permps_end
        _m128permps_222 label size_t
        shufps          xmm0,           xmm0,           222
        jmp         _m128permps_end
        _m128permps_223 label size_t
        shufps          xmm0,           xmm0,           223
        jmp         _m128permps_end
        _m128permps_224 label size_t
        shufps          xmm0,           xmm0,           224
        jmp         _m128permps_end
        _m128permps_225 label size_t
        shufps          xmm0,           xmm0,           225
        jmp         _m128permps_end
        _m128permps_226 label size_t
        shufps          xmm0,           xmm0,           226
        jmp         _m128permps_end
        _m128permps_227 label size_t
        shufps          xmm0,           xmm0,           227
        jmp         _m128permps_end
        _m128permps_228 label size_t
        shufps          xmm0,           xmm0,           228
        jmp         _m128permps_end
        _m128permps_229 label size_t
        shufps          xmm0,           xmm0,           229
        jmp         _m128permps_end
        _m128permps_230 label size_t
        shufps          xmm0,           xmm0,           230
        jmp         _m128permps_end
        _m128permps_231 label size_t
        shufps          xmm0,           xmm0,           231
        jmp         _m128permps_end
        _m128permps_232 label size_t
        shufps          xmm0,           xmm0,           232
        jmp         _m128permps_end
        _m128permps_233 label size_t
        shufps          xmm0,           xmm0,           233
        jmp         _m128permps_end
        _m128permps_234 label size_t
        shufps          xmm0,           xmm0,           234
        jmp         _m128permps_end
        _m128permps_235 label size_t
        shufps          xmm0,           xmm0,           235
        jmp         _m128permps_end
        _m128permps_236 label size_t
        shufps          xmm0,           xmm0,           236
        jmp         _m128permps_end
        _m128permps_237 label size_t
        shufps          xmm0,           xmm0,           237
        jmp         _m128permps_end
        _m128permps_238 label size_t
        shufps          xmm0,           xmm0,           238
        jmp         _m128permps_end
        _m128permps_239 label size_t
        shufps          xmm0,           xmm0,           239
        jmp         _m128permps_end
        _m128permps_240 label size_t
        shufps          xmm0,           xmm0,           240
        jmp         _m128permps_end
        _m128permps_241 label size_t
        shufps          xmm0,           xmm0,           241
        jmp         _m128permps_end
        _m128permps_242 label size_t
        shufps          xmm0,           xmm0,           242
        jmp         _m128permps_end
        _m128permps_243 label size_t
        shufps          xmm0,           xmm0,           243
        jmp         _m128permps_end
        _m128permps_244 label size_t
        shufps          xmm0,           xmm0,           244
        jmp         _m128permps_end
        _m128permps_245 label size_t
        shufps          xmm0,           xmm0,           245
        jmp         _m128permps_end
        _m128permps_246 label size_t
        shufps          xmm0,           xmm0,           246
        jmp         _m128permps_end
        _m128permps_247 label size_t
        shufps          xmm0,           xmm0,           247
        jmp         _m128permps_end
        _m128permps_248 label size_t
        shufps          xmm0,           xmm0,           248
        jmp         _m128permps_end
        _m128permps_249 label size_t
        shufps          xmm0,           xmm0,           249
        jmp         _m128permps_end
        _m128permps_250 label size_t
        shufps          xmm0,           xmm0,           250
        jmp         _m128permps_end
        _m128permps_251 label size_t
        shufps          xmm0,           xmm0,           251
        jmp         _m128permps_end
        _m128permps_252 label size_t
        shufps          xmm0,           xmm0,           252
        jmp         _m128permps_end
        _m128permps_253 label size_t
        shufps          xmm0,           xmm0,           253
        jmp         _m128permps_end
        _m128permps_254 label size_t
        shufps          xmm0,           xmm0,           254
        jmp         _m128permps_end
        _m128permps_255 label size_t
        shufps          xmm0,           xmm0,           255
        ;jmp         _m128permps_end

        _m128permps_end:
        pop         rbase
        ret
procend

endif ;__MIC__

    end