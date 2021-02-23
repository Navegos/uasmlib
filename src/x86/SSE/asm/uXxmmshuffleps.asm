
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - optimized library                 / /
; / /                                                                               / /
; / /    Licensed under the Apache License, Version 2.0 (the "License");            / /
; / /    you may not use this file except in compliance with the License.           / /
; / /    You may obtain a copy of the License at                                    / /
; / /                                                                               / /
; / /        http://www.apache.org/licenses/LICENSE-2.0                             / /
; / /                                                                               / /
; / /    Unless required by applicable law or agreed to in writing, software        / /
; / /    distributed under the License is distributed on an "AS IS" BASIS,          / /
; / /    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   / /
; / /    See the License for the specific language governing permissions and        / /
; / /    limitations under the License.                                             / /
; / /                                                                               / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /

option casemap:none
include uXasm.inc
include macrolib.inc

ifndef __MIC__

.xmm
option arch:sse
option evex:0

alignstackfieldproc

.data?

.data

.const

    _m128shufpsjmptable label size_t
    isize_t _m128shufps_0, _m128shufps_1, _m128shufps_2, _m128shufps_3, _m128shufps_4, _m128shufps_5, _m128shufps_6, _m128shufps_7
    isize_t _m128shufps_8, _m128shufps_9, _m128shufps_10, _m128shufps_11, _m128shufps_12, _m128shufps_13, _m128shufps_14, _m128shufps_15
    isize_t _m128shufps_16, _m128shufps_17, _m128shufps_18, _m128shufps_19, _m128shufps_20, _m128shufps_21, _m128shufps_22, _m128shufps_23
    isize_t _m128shufps_24, _m128shufps_25, _m128shufps_26, _m128shufps_27, _m128shufps_28, _m128shufps_29, _m128shufps_30, _m128shufps_31
    isize_t _m128shufps_32, _m128shufps_33, _m128shufps_34, _m128shufps_35, _m128shufps_36, _m128shufps_37, _m128shufps_38, _m128shufps_39
    isize_t _m128shufps_40, _m128shufps_41, _m128shufps_42, _m128shufps_43, _m128shufps_44, _m128shufps_45, _m128shufps_46, _m128shufps_47
    isize_t _m128shufps_48, _m128shufps_49, _m128shufps_50, _m128shufps_51, _m128shufps_52, _m128shufps_53, _m128shufps_54, _m128shufps_55
    isize_t _m128shufps_56, _m128shufps_57, _m128shufps_58, _m128shufps_59, _m128shufps_60, _m128shufps_61, _m128shufps_62, _m128shufps_63
    isize_t _m128shufps_64, _m128shufps_65, _m128shufps_66, _m128shufps_67, _m128shufps_68, _m128shufps_69, _m128shufps_70, _m128shufps_71
    isize_t _m128shufps_72, _m128shufps_73, _m128shufps_74, _m128shufps_75, _m128shufps_76, _m128shufps_77, _m128shufps_78, _m128shufps_79
    isize_t _m128shufps_80, _m128shufps_81, _m128shufps_82, _m128shufps_83, _m128shufps_84, _m128shufps_85, _m128shufps_86, _m128shufps_87
    isize_t _m128shufps_88, _m128shufps_89, _m128shufps_90, _m128shufps_91, _m128shufps_92, _m128shufps_93, _m128shufps_94, _m128shufps_95
    isize_t _m128shufps_96, _m128shufps_97, _m128shufps_98, _m128shufps_99, _m128shufps_100, _m128shufps_101, _m128shufps_102, _m128shufps_103
    isize_t _m128shufps_104, _m128shufps_105, _m128shufps_106, _m128shufps_107, _m128shufps_108, _m128shufps_109, _m128shufps_110, _m128shufps_111
    isize_t _m128shufps_112, _m128shufps_113, _m128shufps_114, _m128shufps_115, _m128shufps_116, _m128shufps_117, _m128shufps_118, _m128shufps_119
    isize_t _m128shufps_120, _m128shufps_121, _m128shufps_122, _m128shufps_123, _m128shufps_124, _m128shufps_125, _m128shufps_126, _m128shufps_127
    isize_t _m128shufps_128, _m128shufps_129, _m128shufps_130, _m128shufps_131, _m128shufps_132, _m128shufps_133, _m128shufps_134, _m128shufps_135
    isize_t _m128shufps_136, _m128shufps_137, _m128shufps_138, _m128shufps_139, _m128shufps_140, _m128shufps_141, _m128shufps_142, _m128shufps_143
    isize_t _m128shufps_144, _m128shufps_145, _m128shufps_146, _m128shufps_147, _m128shufps_148, _m128shufps_149, _m128shufps_150, _m128shufps_151
    isize_t _m128shufps_152, _m128shufps_153, _m128shufps_154, _m128shufps_155, _m128shufps_156, _m128shufps_157, _m128shufps_158, _m128shufps_159
    isize_t _m128shufps_160, _m128shufps_161, _m128shufps_162, _m128shufps_163, _m128shufps_164, _m128shufps_165, _m128shufps_166, _m128shufps_167
    isize_t _m128shufps_168, _m128shufps_169, _m128shufps_170, _m128shufps_171, _m128shufps_172, _m128shufps_173, _m128shufps_174, _m128shufps_175
    isize_t _m128shufps_176, _m128shufps_177, _m128shufps_178, _m128shufps_179, _m128shufps_180, _m128shufps_181, _m128shufps_182, _m128shufps_183
    isize_t _m128shufps_184, _m128shufps_185, _m128shufps_186, _m128shufps_187, _m128shufps_188, _m128shufps_189, _m128shufps_190, _m128shufps_191
    isize_t _m128shufps_192, _m128shufps_193, _m128shufps_194, _m128shufps_195, _m128shufps_196, _m128shufps_197, _m128shufps_198, _m128shufps_199
    isize_t _m128shufps_200, _m128shufps_201, _m128shufps_202, _m128shufps_203, _m128shufps_204, _m128shufps_205, _m128shufps_206, _m128shufps_207
    isize_t _m128shufps_208, _m128shufps_209, _m128shufps_210, _m128shufps_211, _m128shufps_212, _m128shufps_213, _m128shufps_214, _m128shufps_215
    isize_t _m128shufps_216, _m128shufps_217, _m128shufps_218, _m128shufps_219, _m128shufps_220, _m128shufps_221, _m128shufps_222, _m128shufps_223
    isize_t _m128shufps_224, _m128shufps_225, _m128shufps_226, _m128shufps_227, _m128shufps_228, _m128shufps_229, _m128shufps_230, _m128shufps_231
    isize_t _m128shufps_232, _m128shufps_233, _m128shufps_234, _m128shufps_235, _m128shufps_236, _m128shufps_237, _m128shufps_238, _m128shufps_239
    isize_t _m128shufps_240, _m128shufps_241, _m128shufps_242, _m128shufps_243, _m128shufps_244, _m128shufps_245, _m128shufps_246, _m128shufps_247
    isize_t _m128shufps_248, _m128shufps_249, _m128shufps_250, _m128shufps_251, _m128shufps_252, _m128shufps_253, _m128shufps_254, _m128shufps_255

.code

callconvopt
alignxmmfieldproc

procstart _uX_mm_shuffle_0000_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_shuffle_0001_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_shuffle_0002_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_shuffle_0003_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_shuffle_0010_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           4
        ret
procend

procstart _uX_mm_shuffle_0011_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           5
        ret
procend

procstart _uX_mm_shuffle_0012_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           6
        ret
procend

procstart _uX_mm_shuffle_0013_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           7
        ret
procend

procstart _uX_mm_shuffle_0020_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           8
        ret
procend

procstart _uX_mm_shuffle_0021_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           9
        ret
procend

procstart _uX_mm_shuffle_0022_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           10
        ret
procend

procstart _uX_mm_shuffle_0023_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           11
        ret
procend

procstart _uX_mm_shuffle_0030_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           12
        ret
procend

procstart _uX_mm_shuffle_0031_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           13
        ret
procend

procstart _uX_mm_shuffle_0032_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           14
        ret
procend

procstart _uX_mm_shuffle_0033_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           15
        ret
procend

procstart _uX_mm_shuffle_0100_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           16
        ret
procend

procstart _uX_mm_shuffle_0101_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           17
        ret
procend

procstart _uX_mm_shuffle_0102_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           18
        ret
procend

procstart _uX_mm_shuffle_0103_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           19
        ret
procend

procstart _uX_mm_shuffle_0110_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           20
        ret
procend

procstart _uX_mm_shuffle_0111_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           21
        ret
procend

procstart _uX_mm_shuffle_0112_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           22
        ret
procend

procstart _uX_mm_shuffle_0113_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           23
        ret
procend

procstart _uX_mm_shuffle_0120_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           24
        ret
procend

procstart _uX_mm_shuffle_0121_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           25
        ret
procend

procstart _uX_mm_shuffle_0122_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           26
        ret
procend

procstart _uX_mm_shuffle_0123_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           27
        ret
procend

procstart _uX_mm_shuffle_0130_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           28
        ret
procend

procstart _uX_mm_shuffle_0131_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           29
        ret
procend

procstart _uX_mm_shuffle_0132_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           30
        ret
procend

procstart _uX_mm_shuffle_0133_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           31
        ret
procend

procstart _uX_mm_shuffle_0200_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           32
        ret
procend

procstart _uX_mm_shuffle_0201_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           33
        ret
procend

procstart _uX_mm_shuffle_0202_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           34
        ret
procend

procstart _uX_mm_shuffle_0203_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           35
        ret
procend

procstart _uX_mm_shuffle_0210_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           36
        ret
procend

procstart _uX_mm_shuffle_0211_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           37
        ret
procend

procstart _uX_mm_shuffle_0212_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           38
        ret
procend

procstart _uX_mm_shuffle_0213_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           39
        ret
procend

procstart _uX_mm_shuffle_0220_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           40
        ret
procend

procstart _uX_mm_shuffle_0221_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           41
        ret
procend

procstart _uX_mm_shuffle_0222_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           42
        ret
procend

procstart _uX_mm_shuffle_0223_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           43
        ret
procend

procstart _uX_mm_shuffle_0230_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           44
        ret
procend

procstart _uX_mm_shuffle_0231_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           45
        ret
procend

procstart _uX_mm_shuffle_0232_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           46
        ret
procend

procstart _uX_mm_shuffle_0233_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           47
        ret
procend

procstart _uX_mm_shuffle_0300_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           48
        ret
procend

procstart _uX_mm_shuffle_0301_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           49
        ret
procend

procstart _uX_mm_shuffle_0302_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           50
        ret
procend

procstart _uX_mm_shuffle_0303_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           51
        ret
procend

procstart _uX_mm_shuffle_0310_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           52
        ret
procend

procstart _uX_mm_shuffle_0311_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           53
        ret
procend

procstart _uX_mm_shuffle_0312_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           54
        ret
procend

procstart _uX_mm_shuffle_0313_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           55
        ret
procend

procstart _uX_mm_shuffle_0320_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           56
        ret
procend

procstart _uX_mm_shuffle_0321_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           57
        ret
procend

procstart _uX_mm_shuffle_0322_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           58
        ret
procend

procstart _uX_mm_shuffle_0323_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           59
        ret
procend

procstart _uX_mm_shuffle_0330_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           60
        ret
procend

procstart _uX_mm_shuffle_0331_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           61
        ret
procend

procstart _uX_mm_shuffle_0332_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           62
        ret
procend

procstart _uX_mm_shuffle_0333_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           63
        ret
procend

procstart _uX_mm_shuffle_1000_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           64
        ret
procend

procstart _uX_mm_shuffle_1001_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           65
        ret
procend

procstart _uX_mm_shuffle_1002_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           66
        ret
procend

procstart _uX_mm_shuffle_1003_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           67
        ret
procend

procstart _uX_mm_shuffle_1010_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           68
        ret
procend

procstart _uX_mm_shuffle_1011_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           69
        ret
procend

procstart _uX_mm_shuffle_1012_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           70
        ret
procend

procstart _uX_mm_shuffle_1013_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           71
        ret
procend

procstart _uX_mm_shuffle_1020_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           72
        ret
procend

procstart _uX_mm_shuffle_1021_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           73
        ret
procend

procstart _uX_mm_shuffle_1022_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           74
        ret
procend

procstart _uX_mm_shuffle_1023_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           75
        ret
procend

procstart _uX_mm_shuffle_1030_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           76
        ret
procend

procstart _uX_mm_shuffle_1031_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           77
        ret
procend

procstart _uX_mm_shuffle_1032_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           78
        ret
procend

procstart _uX_mm_shuffle_1033_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           79
        ret
procend

procstart _uX_mm_shuffle_1100_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           80
        ret
procend

procstart _uX_mm_shuffle_1101_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           81
        ret
procend

procstart _uX_mm_shuffle_1102_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           82
        ret
procend

procstart _uX_mm_shuffle_1103_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           83
        ret
procend

procstart _uX_mm_shuffle_1110_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           84
        ret
procend

procstart _uX_mm_shuffle_1111_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           85
        ret
procend

procstart _uX_mm_shuffle_1112_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           86
        ret
procend

procstart _uX_mm_shuffle_1113_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           87
        ret
procend

procstart _uX_mm_shuffle_1120_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           88
        ret
procend

procstart _uX_mm_shuffle_1121_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           89
        ret
procend

procstart _uX_mm_shuffle_1122_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           90
        ret
procend

procstart _uX_mm_shuffle_1123_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           91
        ret
procend

procstart _uX_mm_shuffle_1130_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           92
        ret
procend

procstart _uX_mm_shuffle_1131_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           93
        ret
procend

procstart _uX_mm_shuffle_1132_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           94
        ret
procend

procstart _uX_mm_shuffle_1133_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           95
        ret
procend

procstart _uX_mm_shuffle_1200_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           96
        ret
procend

procstart _uX_mm_shuffle_1201_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           97
        ret
procend

procstart _uX_mm_shuffle_1202_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           98
        ret
procend

procstart _uX_mm_shuffle_1203_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           99
        ret
procend

procstart _uX_mm_shuffle_1210_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           100
        ret
procend

procstart _uX_mm_shuffle_1211_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           101
        ret
procend

procstart _uX_mm_shuffle_1212_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           102
        ret
procend

procstart _uX_mm_shuffle_1213_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           103
        ret
procend

procstart _uX_mm_shuffle_1220_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           104
        ret
procend

procstart _uX_mm_shuffle_1221_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           105
        ret
procend

procstart _uX_mm_shuffle_1222_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           106
        ret
procend

procstart _uX_mm_shuffle_1223_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           107
        ret
procend

procstart _uX_mm_shuffle_1230_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           108
        ret
procend

procstart _uX_mm_shuffle_1231_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           109
        ret
procend

procstart _uX_mm_shuffle_1232_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           110
        ret
procend

procstart _uX_mm_shuffle_1233_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           111
        ret
procend

procstart _uX_mm_shuffle_1300_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           112
        ret
procend

procstart _uX_mm_shuffle_1301_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           113
        ret
procend

procstart _uX_mm_shuffle_1302_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           114
        ret
procend

procstart _uX_mm_shuffle_1303_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           115
        ret
procend

procstart _uX_mm_shuffle_1310_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           116
        ret
procend

procstart _uX_mm_shuffle_1311_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           117
        ret
procend

procstart _uX_mm_shuffle_1312_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           118
        ret
procend

procstart _uX_mm_shuffle_1313_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           119
        ret
procend

procstart _uX_mm_shuffle_1320_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           120
        ret
procend

procstart _uX_mm_shuffle_1321_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           121
        ret
procend

procstart _uX_mm_shuffle_1322_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           122
        ret
procend

procstart _uX_mm_shuffle_1323_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           123
        ret
procend

procstart _uX_mm_shuffle_1330_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           124
        ret
procend

procstart _uX_mm_shuffle_1331_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           125
        ret
procend

procstart _uX_mm_shuffle_1332_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           126
        ret
procend

procstart _uX_mm_shuffle_1333_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           127
        ret
procend

procstart _uX_mm_shuffle_2000_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           128
        ret
procend

procstart _uX_mm_shuffle_2001_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           129
        ret
procend

procstart _uX_mm_shuffle_2002_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           130
        ret
procend

procstart _uX_mm_shuffle_2003_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           131
        ret
procend

procstart _uX_mm_shuffle_2010_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           132
        ret
procend

procstart _uX_mm_shuffle_2011_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           133
        ret
procend

procstart _uX_mm_shuffle_2012_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           134
        ret
procend

procstart _uX_mm_shuffle_2013_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           135
        ret
procend

procstart _uX_mm_shuffle_2020_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           136
        ret
procend

procstart _uX_mm_shuffle_2021_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           137
        ret
procend

procstart _uX_mm_shuffle_2022_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           138
        ret
procend

procstart _uX_mm_shuffle_2023_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           139
        ret
procend

procstart _uX_mm_shuffle_2030_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           140
        ret
procend

procstart _uX_mm_shuffle_2031_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           141
        ret
procend

procstart _uX_mm_shuffle_2032_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           142
        ret
procend

procstart _uX_mm_shuffle_2033_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           143
        ret
procend

procstart _uX_mm_shuffle_2100_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           144
        ret
procend

procstart _uX_mm_shuffle_2101_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           145
        ret
procend

procstart _uX_mm_shuffle_2102_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        shufps          xmm0,           xmm1,           146
        ret
procend

procstart _uX_mm_shuffle_2103_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           147
        ret
procend

procstart _uX_mm_shuffle_2110_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           148
        ret
procend

procstart _uX_mm_shuffle_2111_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           149
        ret
procend

procstart _uX_mm_shuffle_2112_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           150
        ret
procend

procstart _uX_mm_shuffle_2113_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           151
        ret
procend

procstart _uX_mm_shuffle_2120_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           152
        ret
procend

procstart _uX_mm_shuffle_2121_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           153
        ret
procend

procstart _uX_mm_shuffle_2122_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        shufps          xmm0,           xmm1,           154
        ret
procend

procstart _uX_mm_shuffle_2123_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           155
        ret
procend

procstart _uX_mm_shuffle_2130_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           156
        ret
procend

procstart _uX_mm_shuffle_2131_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           157
        ret
procend

procstart _uX_mm_shuffle_2132_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           158
        ret
procend

procstart _uX_mm_shuffle_2133_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           159
        ret
procend

procstart _uX_mm_shuffle_2200_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           160
        ret
procend

procstart _uX_mm_shuffle_2201_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           161
        ret
procend

procstart _uX_mm_shuffle_2202_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           162
        ret
procend

procstart _uX_mm_shuffle_2203_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           163
        ret
procend

procstart _uX_mm_shuffle_2210_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           164
        ret
procend

procstart _uX_mm_shuffle_2211_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           165
        ret
procend

procstart _uX_mm_shuffle_2212_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           166
        ret
procend

procstart _uX_mm_shuffle_2213_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           167
        ret
procend

procstart _uX_mm_shuffle_2220_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           168
        ret
procend

procstart _uX_mm_shuffle_2221_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           169
        ret
procend

procstart _uX_mm_shuffle_2222_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           170
        ret
procend

procstart _uX_mm_shuffle_2223_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           171
        ret
procend

procstart _uX_mm_shuffle_2230_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           172
        ret
procend

procstart _uX_mm_shuffle_2231_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           173
        ret
procend

procstart _uX_mm_shuffle_2232_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        shufps          xmm0,           xmm1,           174
        ret
procend

procstart _uX_mm_shuffle_2233_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           175
        ret
procend

procstart _uX_mm_shuffle_2300_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           176
        ret
procend

procstart _uX_mm_shuffle_2301_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           177
        ret
procend

procstart _uX_mm_shuffle_2302_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           178
        ret
procend

procstart _uX_mm_shuffle_2303_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           179
        ret
procend

procstart _uX_mm_shuffle_2310_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           180
        ret
procend

procstart _uX_mm_shuffle_2311_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           181
        ret
procend

procstart _uX_mm_shuffle_2312_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           182
        ret
procend

procstart _uX_mm_shuffle_2313_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           183
        ret
procend

procstart _uX_mm_shuffle_2320_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           184
        ret
procend

procstart _uX_mm_shuffle_2321_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           185
        ret
procend

procstart _uX_mm_shuffle_2322_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           186
        ret
procend

procstart _uX_mm_shuffle_2323_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           187
        ret
procend

procstart _uX_mm_shuffle_2330_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           188
        ret
procend

procstart _uX_mm_shuffle_2331_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           189
        ret
procend

procstart _uX_mm_shuffle_2332_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           190
        ret
procend

procstart _uX_mm_shuffle_2333_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           191
        ret
procend

procstart _uX_mm_shuffle_3000_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           192
        ret
procend

procstart _uX_mm_shuffle_3001_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           193
        ret
procend

procstart _uX_mm_shuffle_3002_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           194
        ret
procend

procstart _uX_mm_shuffle_3003_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           195
        ret
procend

procstart _uX_mm_shuffle_3010_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           196
        ret
procend

procstart _uX_mm_shuffle_3011_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           197
        ret
procend

procstart _uX_mm_shuffle_3012_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           198
        ret
procend

procstart _uX_mm_shuffle_3013_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           199
        ret
procend

procstart _uX_mm_shuffle_3020_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           200
        ret
procend

procstart _uX_mm_shuffle_3021_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           201
        ret
procend

procstart _uX_mm_shuffle_3022_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           202
        ret
procend

procstart _uX_mm_shuffle_3023_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           203
        ret
procend

procstart _uX_mm_shuffle_3030_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           204
        ret
procend

procstart _uX_mm_shuffle_3031_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           205
        ret
procend

procstart _uX_mm_shuffle_3032_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           206
        ret
procend

procstart _uX_mm_shuffle_3033_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           207
        ret
procend

procstart _uX_mm_shuffle_3100_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           208
        ret
procend

procstart _uX_mm_shuffle_3101_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           209
        ret
procend

procstart _uX_mm_shuffle_3102_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           210
        ret
procend

procstart _uX_mm_shuffle_3103_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           211
        ret
procend

procstart _uX_mm_shuffle_3110_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           212
        ret
procend

procstart _uX_mm_shuffle_3111_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           213
        ret
procend

procstart _uX_mm_shuffle_3112_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           214
        ret
procend

procstart _uX_mm_shuffle_3113_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           215
        ret
procend

procstart _uX_mm_shuffle_3120_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           216
        ret
procend

procstart _uX_mm_shuffle_3121_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           217
        ret
procend

procstart _uX_mm_shuffle_3122_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           218
        ret
procend

procstart _uX_mm_shuffle_3123_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           219
        ret
procend

procstart _uX_mm_shuffle_3130_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           220
        ret
procend

procstart _uX_mm_shuffle_3131_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           221
        ret
procend

procstart _uX_mm_shuffle_3132_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           222
        ret
procend

procstart _uX_mm_shuffle_3133_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           223
        ret
procend

procstart _uX_mm_shuffle_3200_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           224
        ret
procend

procstart _uX_mm_shuffle_3201_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           225
        ret
procend

procstart _uX_mm_shuffle_3202_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           226
        ret
procend

procstart _uX_mm_shuffle_3203_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           227
        ret
procend

procstart _uX_mm_shuffle_3210_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           228
        ret
procend

procstart _uX_mm_shuffle_3211_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           229
        ret
procend

procstart _uX_mm_shuffle_3212_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           230
        ret
procend

procstart _uX_mm_shuffle_3213_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           231
        ret
procend

procstart _uX_mm_shuffle_3220_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           232
        ret
procend

procstart _uX_mm_shuffle_3221_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           233
        ret
procend

procstart _uX_mm_shuffle_3222_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           234
        ret
procend

procstart _uX_mm_shuffle_3223_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           235
        ret
procend

procstart _uX_mm_shuffle_3230_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           236
        ret
procend

procstart _uX_mm_shuffle_3231_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           237
        ret
procend

procstart _uX_mm_shuffle_3232_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           238
        ret
procend

procstart _uX_mm_shuffle_3233_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           239
        ret
procend

procstart _uX_mm_shuffle_3300_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           240
        ret
procend

procstart _uX_mm_shuffle_3301_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           241
        ret
procend

procstart _uX_mm_shuffle_3302_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           242
        ret
procend

procstart _uX_mm_shuffle_3303_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           243
        ret
procend

procstart _uX_mm_shuffle_3310_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           244
        ret
procend

procstart _uX_mm_shuffle_3311_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           245
        ret
procend

procstart _uX_mm_shuffle_3312_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           246
        ret
procend

procstart _uX_mm_shuffle_3313_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           247
        ret
procend

procstart _uX_mm_shuffle_3320_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           248
        ret
procend

procstart _uX_mm_shuffle_3321_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           249
        ret
procend

procstart _uX_mm_shuffle_3322_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           250
        ret
procend

procstart _uX_mm_shuffle_3323_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           251
        ret
procend

procstart _uX_mm_shuffle_3330_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           252
        ret
procend

procstart _uX_mm_shuffle_3331_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           253
        ret
procend

procstart _uX_mm_shuffle_3332_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           254
        ret
procend

procstart _uX_mm_shuffle_3333_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufps          xmm0,           xmm1,           255
        ret
procend

procstart _uX_mm_shuffle_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, _Imm8:count_t
        push         rbase()
    ifdef __unix32__
        rpdisp textequ <ecx>
        bpdisp textequ <cl>
        mov     rpdisp,    _Imm8
    else
        rpdisp textequ <rp2()>
        bpdisp textequ <bp2()>
    endif
    .if((rpdisp < 0) || (rpdisp > 255))
        jmp         _m128shufps_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bpdisp
        jmp     dword ptr [_m128shufpsjmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128shufpsjmptable]
        mov             rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp             rbase()
    endif

        _m128shufps_0 label size_t
        shufps          xmm0,           xmm1,           0
        jmp         _m128shufps_end
        _m128shufps_1 label size_t
        shufps          xmm0,           xmm1,           1
        jmp         _m128shufps_end
        _m128shufps_2 label size_t
        shufps          xmm0,           xmm1,           2
        jmp         _m128shufps_end
        _m128shufps_3 label size_t
        shufps          xmm0,           xmm1,           3
        jmp         _m128shufps_end
        _m128shufps_4 label size_t
        shufps          xmm0,           xmm1,           4
        jmp         _m128shufps_end
        _m128shufps_5 label size_t
        shufps          xmm0,           xmm1,           5
        jmp         _m128shufps_end
        _m128shufps_6 label size_t
        shufps          xmm0,           xmm1,           6
        jmp         _m128shufps_end
        _m128shufps_7 label size_t
        shufps          xmm0,           xmm1,           7
        jmp         _m128shufps_end
        _m128shufps_8 label size_t
        shufps          xmm0,           xmm1,           8
        jmp         _m128shufps_end
        _m128shufps_9 label size_t
        shufps          xmm0,           xmm1,           9
        jmp         _m128shufps_end
        _m128shufps_10 label size_t
        shufps          xmm0,           xmm1,           10
        jmp         _m128shufps_end
        _m128shufps_11 label size_t
        shufps          xmm0,           xmm1,           11
        jmp         _m128shufps_end
        _m128shufps_12 label size_t
        shufps          xmm0,           xmm1,           12
        jmp         _m128shufps_end
        _m128shufps_13 label size_t
        shufps          xmm0,           xmm1,           13
        jmp         _m128shufps_end
        _m128shufps_14 label size_t
        shufps          xmm0,           xmm1,           14
        jmp         _m128shufps_end
        _m128shufps_15 label size_t
        shufps          xmm0,           xmm1,           15
        jmp         _m128shufps_end
        _m128shufps_16 label size_t
        shufps          xmm0,           xmm1,           16
        jmp         _m128shufps_end
        _m128shufps_17 label size_t
        shufps          xmm0,           xmm1,           17
        jmp         _m128shufps_end
        _m128shufps_18 label size_t
        shufps          xmm0,           xmm1,           18
        jmp         _m128shufps_end
        _m128shufps_19 label size_t
        shufps          xmm0,           xmm1,           19
        jmp         _m128shufps_end
        _m128shufps_20 label size_t
        shufps          xmm0,           xmm1,           20
        jmp         _m128shufps_end
        _m128shufps_21 label size_t
        shufps          xmm0,           xmm1,           21
        jmp         _m128shufps_end
        _m128shufps_22 label size_t
        shufps          xmm0,           xmm1,           22
        jmp         _m128shufps_end
        _m128shufps_23 label size_t
        shufps          xmm0,           xmm1,           23
        jmp         _m128shufps_end
        _m128shufps_24 label size_t
        shufps          xmm0,           xmm1,           24
        jmp         _m128shufps_end
        _m128shufps_25 label size_t
        shufps          xmm0,           xmm1,           25
        jmp         _m128shufps_end
        _m128shufps_26 label size_t
        shufps          xmm0,           xmm1,           26
        jmp         _m128shufps_end
        _m128shufps_27 label size_t
        shufps          xmm0,           xmm1,           27
        jmp         _m128shufps_end
        _m128shufps_28 label size_t
        shufps          xmm0,           xmm1,           28
        jmp         _m128shufps_end
        _m128shufps_29 label size_t
        shufps          xmm0,           xmm1,           29
        jmp         _m128shufps_end
        _m128shufps_30 label size_t
        shufps          xmm0,           xmm1,           30
        jmp         _m128shufps_end
        _m128shufps_31 label size_t
        shufps          xmm0,           xmm1,           31
        jmp         _m128shufps_end
        _m128shufps_32 label size_t
        shufps          xmm0,           xmm1,           32
        jmp         _m128shufps_end
        _m128shufps_33 label size_t
        shufps          xmm0,           xmm1,           33
        jmp         _m128shufps_end
        _m128shufps_34 label size_t
        shufps          xmm0,           xmm1,           34
        jmp         _m128shufps_end
        _m128shufps_35 label size_t
        shufps          xmm0,           xmm1,           35
        jmp         _m128shufps_end
        _m128shufps_36 label size_t
        shufps          xmm0,           xmm1,           36
        jmp         _m128shufps_end
        _m128shufps_37 label size_t
        shufps          xmm0,           xmm1,           37
        jmp         _m128shufps_end
        _m128shufps_38 label size_t
        shufps          xmm0,           xmm1,           38
        jmp         _m128shufps_end
        _m128shufps_39 label size_t
        shufps          xmm0,           xmm1,           39
        jmp         _m128shufps_end
        _m128shufps_40 label size_t
        shufps          xmm0,           xmm1,           40
        jmp         _m128shufps_end
        _m128shufps_41 label size_t
        shufps          xmm0,           xmm1,           41
        jmp         _m128shufps_end
        _m128shufps_42 label size_t
        shufps          xmm0,           xmm1,           42
        jmp         _m128shufps_end
        _m128shufps_43 label size_t
        shufps          xmm0,           xmm1,           43
        jmp         _m128shufps_end
        _m128shufps_44 label size_t
        shufps          xmm0,           xmm1,           44
        jmp         _m128shufps_end
        _m128shufps_45 label size_t
        shufps          xmm0,           xmm1,           45
        jmp         _m128shufps_end
        _m128shufps_46 label size_t
        shufps          xmm0,           xmm1,           46
        jmp         _m128shufps_end
        _m128shufps_47 label size_t
        shufps          xmm0,           xmm1,           47
        jmp         _m128shufps_end
        _m128shufps_48 label size_t
        shufps          xmm0,           xmm1,           48
        jmp         _m128shufps_end
        _m128shufps_49 label size_t
        shufps          xmm0,           xmm1,           49
        jmp         _m128shufps_end
        _m128shufps_50 label size_t
        shufps          xmm0,           xmm1,           50
        jmp         _m128shufps_end
        _m128shufps_51 label size_t
        shufps          xmm0,           xmm1,           51
        jmp         _m128shufps_end
        _m128shufps_52 label size_t
        shufps          xmm0,           xmm1,           52
        jmp         _m128shufps_end
        _m128shufps_53 label size_t
        shufps          xmm0,           xmm1,           53
        jmp         _m128shufps_end
        _m128shufps_54 label size_t
        shufps          xmm0,           xmm1,           54
        jmp         _m128shufps_end
        _m128shufps_55 label size_t
        shufps          xmm0,           xmm1,           55
        jmp         _m128shufps_end
        _m128shufps_56 label size_t
        shufps          xmm0,           xmm1,           56
        jmp         _m128shufps_end
        _m128shufps_57 label size_t
        shufps          xmm0,           xmm1,           57
        jmp         _m128shufps_end
        _m128shufps_58 label size_t
        shufps          xmm0,           xmm1,           58
        jmp         _m128shufps_end
        _m128shufps_59 label size_t
        shufps          xmm0,           xmm1,           59
        jmp         _m128shufps_end
        _m128shufps_60 label size_t
        shufps          xmm0,           xmm1,           60
        jmp         _m128shufps_end
        _m128shufps_61 label size_t
        shufps          xmm0,           xmm1,           61
        jmp         _m128shufps_end
        _m128shufps_62 label size_t
        shufps          xmm0,           xmm1,           62
        jmp         _m128shufps_end
        _m128shufps_63 label size_t
        shufps          xmm0,           xmm1,           63
        jmp         _m128shufps_end
        _m128shufps_64 label size_t
        shufps          xmm0,           xmm1,           64
        jmp         _m128shufps_end
        _m128shufps_65 label size_t
        shufps          xmm0,           xmm1,           65
        jmp         _m128shufps_end
        _m128shufps_66 label size_t
        shufps          xmm0,           xmm1,           66
        jmp         _m128shufps_end
        _m128shufps_67 label size_t
        shufps          xmm0,           xmm1,           67
        jmp         _m128shufps_end
        _m128shufps_68 label size_t
        shufps          xmm0,           xmm1,           68
        jmp         _m128shufps_end
        _m128shufps_69 label size_t
        shufps          xmm0,           xmm1,           69
        jmp         _m128shufps_end
        _m128shufps_70 label size_t
        shufps          xmm0,           xmm1,           70
        jmp         _m128shufps_end
        _m128shufps_71 label size_t
        shufps          xmm0,           xmm1,           71
        jmp         _m128shufps_end
        _m128shufps_72 label size_t
        shufps          xmm0,           xmm1,           72
        jmp         _m128shufps_end
        _m128shufps_73 label size_t
        shufps          xmm0,           xmm1,           73
        jmp         _m128shufps_end
        _m128shufps_74 label size_t
        shufps          xmm0,           xmm1,           74
        jmp         _m128shufps_end
        _m128shufps_75 label size_t
        shufps          xmm0,           xmm1,           75
        jmp         _m128shufps_end
        _m128shufps_76 label size_t
        shufps          xmm0,           xmm1,           76
        jmp         _m128shufps_end
        _m128shufps_77 label size_t
        shufps          xmm0,           xmm1,           77
        jmp         _m128shufps_end
        _m128shufps_78 label size_t
        shufps          xmm0,           xmm1,           78
        jmp         _m128shufps_end
        _m128shufps_79 label size_t
        shufps          xmm0,           xmm1,           79
        jmp         _m128shufps_end
        _m128shufps_80 label size_t
        shufps          xmm0,           xmm1,           80
        jmp         _m128shufps_end
        _m128shufps_81 label size_t
        shufps          xmm0,           xmm1,           81
        jmp         _m128shufps_end
        _m128shufps_82 label size_t
        shufps          xmm0,           xmm1,           82
        jmp         _m128shufps_end
        _m128shufps_83 label size_t
        shufps          xmm0,           xmm1,           83
        jmp         _m128shufps_end
        _m128shufps_84 label size_t
        shufps          xmm0,           xmm1,           84
        jmp         _m128shufps_end
        _m128shufps_85 label size_t
        shufps          xmm0,           xmm1,           85
        jmp         _m128shufps_end
        _m128shufps_86 label size_t
        shufps          xmm0,           xmm1,           86
        jmp         _m128shufps_end
        _m128shufps_87 label size_t
        shufps          xmm0,           xmm1,           87
        jmp         _m128shufps_end
        _m128shufps_88 label size_t
        shufps          xmm0,           xmm1,           88
        jmp         _m128shufps_end
        _m128shufps_89 label size_t
        shufps          xmm0,           xmm1,           89
        jmp         _m128shufps_end
        _m128shufps_90 label size_t
        shufps          xmm0,           xmm1,           90
        jmp         _m128shufps_end
        _m128shufps_91 label size_t
        shufps          xmm0,           xmm1,           91
        jmp         _m128shufps_end
        _m128shufps_92 label size_t
        shufps          xmm0,           xmm1,           92
        jmp         _m128shufps_end
        _m128shufps_93 label size_t
        shufps          xmm0,           xmm1,           93
        jmp         _m128shufps_end
        _m128shufps_94 label size_t
        shufps          xmm0,           xmm1,           94
        jmp         _m128shufps_end
        _m128shufps_95 label size_t
        shufps          xmm0,           xmm1,           95
        jmp         _m128shufps_end
        _m128shufps_96 label size_t
        shufps          xmm0,           xmm1,           96
        jmp         _m128shufps_end
        _m128shufps_97 label size_t
        shufps          xmm0,           xmm1,           97
        jmp         _m128shufps_end
        _m128shufps_98 label size_t
        shufps          xmm0,           xmm1,           98
        jmp         _m128shufps_end
        _m128shufps_99 label size_t
        shufps          xmm0,           xmm1,           99
        jmp         _m128shufps_end
        _m128shufps_100 label size_t
        shufps          xmm0,           xmm1,           100
        jmp         _m128shufps_end
        _m128shufps_101 label size_t
        shufps          xmm0,           xmm1,           101
        jmp         _m128shufps_end
        _m128shufps_102 label size_t
        shufps          xmm0,           xmm1,           102
        jmp         _m128shufps_end
        _m128shufps_103 label size_t
        shufps          xmm0,           xmm1,           103
        jmp         _m128shufps_end
        _m128shufps_104 label size_t
        shufps          xmm0,           xmm1,           104
        jmp         _m128shufps_end
        _m128shufps_105 label size_t
        shufps          xmm0,           xmm1,           105
        jmp         _m128shufps_end
        _m128shufps_106 label size_t
        shufps          xmm0,           xmm1,           106
        jmp         _m128shufps_end
        _m128shufps_107 label size_t
        shufps          xmm0,           xmm1,           107
        jmp         _m128shufps_end
        _m128shufps_108 label size_t
        shufps          xmm0,           xmm1,           108
        jmp         _m128shufps_end
        _m128shufps_109 label size_t
        shufps          xmm0,           xmm1,           109
        jmp         _m128shufps_end
        _m128shufps_110 label size_t
        shufps          xmm0,           xmm1,           110
        jmp         _m128shufps_end
        _m128shufps_111 label size_t
        shufps          xmm0,           xmm1,           111
        jmp         _m128shufps_end
        _m128shufps_112 label size_t
        shufps          xmm0,           xmm1,           112
        jmp         _m128shufps_end
        _m128shufps_113 label size_t
        shufps          xmm0,           xmm1,           113
        jmp         _m128shufps_end
        _m128shufps_114 label size_t
        shufps          xmm0,           xmm1,           114
        jmp         _m128shufps_end
        _m128shufps_115 label size_t
        shufps          xmm0,           xmm1,           115
        jmp         _m128shufps_end
        _m128shufps_116 label size_t
        shufps          xmm0,           xmm1,           116
        jmp         _m128shufps_end
        _m128shufps_117 label size_t
        shufps          xmm0,           xmm1,           117
        jmp         _m128shufps_end
        _m128shufps_118 label size_t
        shufps          xmm0,           xmm1,           118
        jmp         _m128shufps_end
        _m128shufps_119 label size_t
        shufps          xmm0,           xmm1,           119
        jmp         _m128shufps_end
        _m128shufps_120 label size_t
        shufps          xmm0,           xmm1,           120
        jmp         _m128shufps_end
        _m128shufps_121 label size_t
        shufps          xmm0,           xmm1,           121
        jmp         _m128shufps_end
        _m128shufps_122 label size_t
        shufps          xmm0,           xmm1,           122
        jmp         _m128shufps_end
        _m128shufps_123 label size_t
        shufps          xmm0,           xmm1,           123
        jmp         _m128shufps_end
        _m128shufps_124 label size_t
        shufps          xmm0,           xmm1,           124
        jmp         _m128shufps_end
        _m128shufps_125 label size_t
        shufps          xmm0,           xmm1,           125
        jmp         _m128shufps_end
        _m128shufps_126 label size_t
        shufps          xmm0,           xmm1,           126
        jmp         _m128shufps_end
        _m128shufps_127 label size_t
        shufps          xmm0,           xmm1,           127
        jmp         _m128shufps_end
        _m128shufps_128 label size_t
        shufps          xmm0,           xmm1,           128
        jmp         _m128shufps_end
        _m128shufps_129 label size_t
        shufps          xmm0,           xmm1,           129
        jmp         _m128shufps_end
        _m128shufps_130 label size_t
        shufps          xmm0,           xmm1,           130
        jmp         _m128shufps_end
        _m128shufps_131 label size_t
        shufps          xmm0,           xmm1,           131
        jmp         _m128shufps_end
        _m128shufps_132 label size_t
        shufps          xmm0,           xmm1,           132
        jmp         _m128shufps_end
        _m128shufps_133 label size_t
        shufps          xmm0,           xmm1,           133
        jmp         _m128shufps_end
        _m128shufps_134 label size_t
        shufps          xmm0,           xmm1,           134
        jmp         _m128shufps_end
        _m128shufps_135 label size_t
        shufps          xmm0,           xmm1,           135
        jmp         _m128shufps_end
        _m128shufps_136 label size_t
        shufps          xmm0,           xmm1,           136
        jmp         _m128shufps_end
        _m128shufps_137 label size_t
        shufps          xmm0,           xmm1,           137
        jmp         _m128shufps_end
        _m128shufps_138 label size_t
        shufps          xmm0,           xmm1,           138
        jmp         _m128shufps_end
        _m128shufps_139 label size_t
        shufps          xmm0,           xmm1,           139
        jmp         _m128shufps_end
        _m128shufps_140 label size_t
        shufps          xmm0,           xmm1,           140
        jmp         _m128shufps_end
        _m128shufps_141 label size_t
        shufps          xmm0,           xmm1,           141
        jmp         _m128shufps_end
        _m128shufps_142 label size_t
        shufps          xmm0,           xmm1,           142
        jmp         _m128shufps_end
        _m128shufps_143 label size_t
        shufps          xmm0,           xmm1,           143
        jmp         _m128shufps_end
        _m128shufps_144 label size_t
        shufps          xmm0,           xmm1,           144
        jmp         _m128shufps_end
        _m128shufps_145 label size_t
        shufps          xmm0,           xmm1,           145
        jmp         _m128shufps_end
        _m128shufps_146 label size_t
        shufps          xmm0,           xmm1,           146
        jmp         _m128shufps_end
        _m128shufps_147 label size_t
        shufps          xmm0,           xmm1,           147
        jmp         _m128shufps_end
        _m128shufps_148 label size_t
        shufps          xmm0,           xmm1,           148
        jmp         _m128shufps_end
        _m128shufps_149 label size_t
        shufps          xmm0,           xmm1,           149
        jmp         _m128shufps_end
        _m128shufps_150 label size_t
        shufps          xmm0,           xmm1,           150
        jmp         _m128shufps_end
        _m128shufps_151 label size_t
        shufps          xmm0,           xmm1,           151
        jmp         _m128shufps_end
        _m128shufps_152 label size_t
        shufps          xmm0,           xmm1,           152
        jmp         _m128shufps_end
        _m128shufps_153 label size_t
        shufps          xmm0,           xmm1,           153
        jmp         _m128shufps_end
        _m128shufps_154 label size_t
        shufps          xmm0,           xmm1,           154
        jmp         _m128shufps_end
        _m128shufps_155 label size_t
        shufps          xmm0,           xmm1,           155
        jmp         _m128shufps_end
        _m128shufps_156 label size_t
        shufps          xmm0,           xmm1,           156
        jmp         _m128shufps_end
        _m128shufps_157 label size_t
        shufps          xmm0,           xmm1,           157
        jmp         _m128shufps_end
        _m128shufps_158 label size_t
        shufps          xmm0,           xmm1,           158
        jmp         _m128shufps_end
        _m128shufps_159 label size_t
        shufps          xmm0,           xmm1,           159
        jmp         _m128shufps_end
        _m128shufps_160 label size_t
        shufps          xmm0,           xmm1,           160
        jmp         _m128shufps_end
        _m128shufps_161 label size_t
        shufps          xmm0,           xmm1,           161
        jmp         _m128shufps_end
        _m128shufps_162 label size_t
        shufps          xmm0,           xmm1,           162
        jmp         _m128shufps_end
        _m128shufps_163 label size_t
        shufps          xmm0,           xmm1,           163
        jmp         _m128shufps_end
        _m128shufps_164 label size_t
        shufps          xmm0,           xmm1,           164
        jmp         _m128shufps_end
        _m128shufps_165 label size_t
        shufps          xmm0,           xmm1,           165
        jmp         _m128shufps_end
        _m128shufps_166 label size_t
        shufps          xmm0,           xmm1,           166
        jmp         _m128shufps_end
        _m128shufps_167 label size_t
        shufps          xmm0,           xmm1,           167
        jmp         _m128shufps_end
        _m128shufps_168 label size_t
        shufps          xmm0,           xmm1,           168
        jmp         _m128shufps_end
        _m128shufps_169 label size_t
        shufps          xmm0,           xmm1,           169
        jmp         _m128shufps_end
        _m128shufps_170 label size_t
        shufps          xmm0,           xmm1,           170
        jmp         _m128shufps_end
        _m128shufps_171 label size_t
        shufps          xmm0,           xmm1,           171
        jmp         _m128shufps_end
        _m128shufps_172 label size_t
        shufps          xmm0,           xmm1,           172
        jmp         _m128shufps_end
        _m128shufps_173 label size_t
        shufps          xmm0,           xmm1,           173
        jmp         _m128shufps_end
        _m128shufps_174 label size_t
        shufps          xmm0,           xmm1,           174
        jmp         _m128shufps_end
        _m128shufps_175 label size_t
        shufps          xmm0,           xmm1,           175
        jmp         _m128shufps_end
        _m128shufps_176 label size_t
        shufps          xmm0,           xmm1,           176
        jmp         _m128shufps_end
        _m128shufps_177 label size_t
        shufps          xmm0,           xmm1,           177
        jmp         _m128shufps_end
        _m128shufps_178 label size_t
        shufps          xmm0,           xmm1,           178
        jmp         _m128shufps_end
        _m128shufps_179 label size_t
        shufps          xmm0,           xmm1,           179
        jmp         _m128shufps_end
        _m128shufps_180 label size_t
        shufps          xmm0,           xmm1,           180
        jmp         _m128shufps_end
        _m128shufps_181 label size_t
        shufps          xmm0,           xmm1,           181
        jmp         _m128shufps_end
        _m128shufps_182 label size_t
        shufps          xmm0,           xmm1,           182
        jmp         _m128shufps_end
        _m128shufps_183 label size_t
        shufps          xmm0,           xmm1,           183
        jmp         _m128shufps_end
        _m128shufps_184 label size_t
        shufps          xmm0,           xmm1,           184
        jmp         _m128shufps_end
        _m128shufps_185 label size_t
        shufps          xmm0,           xmm1,           185
        jmp         _m128shufps_end
        _m128shufps_186 label size_t
        shufps          xmm0,           xmm1,           186
        jmp         _m128shufps_end
        _m128shufps_187 label size_t
        shufps          xmm0,           xmm1,           187
        jmp         _m128shufps_end
        _m128shufps_188 label size_t
        shufps          xmm0,           xmm1,           188
        jmp         _m128shufps_end
        _m128shufps_189 label size_t
        shufps          xmm0,           xmm1,           189
        jmp         _m128shufps_end
        _m128shufps_190 label size_t
        shufps          xmm0,           xmm1,           190
        jmp         _m128shufps_end
        _m128shufps_191 label size_t
        shufps          xmm0,           xmm1,           191
        jmp         _m128shufps_end
        _m128shufps_192 label size_t
        shufps          xmm0,           xmm1,           192
        jmp         _m128shufps_end
        _m128shufps_193 label size_t
        shufps          xmm0,           xmm1,           193
        jmp         _m128shufps_end
        _m128shufps_194 label size_t
        shufps          xmm0,           xmm1,           194
        jmp         _m128shufps_end
        _m128shufps_195 label size_t
        shufps          xmm0,           xmm1,           195
        jmp         _m128shufps_end
        _m128shufps_196 label size_t
        shufps          xmm0,           xmm1,           196
        jmp         _m128shufps_end
        _m128shufps_197 label size_t
        shufps          xmm0,           xmm1,           197
        jmp         _m128shufps_end
        _m128shufps_198 label size_t
        shufps          xmm0,           xmm1,           198
        jmp         _m128shufps_end
        _m128shufps_199 label size_t
        shufps          xmm0,           xmm1,           199
        jmp         _m128shufps_end
        _m128shufps_200 label size_t
        shufps          xmm0,           xmm1,           200
        jmp         _m128shufps_end
        _m128shufps_201 label size_t
        shufps          xmm0,           xmm1,           201
        jmp         _m128shufps_end
        _m128shufps_202 label size_t
        shufps          xmm0,           xmm1,           202
        jmp         _m128shufps_end
        _m128shufps_203 label size_t
        shufps          xmm0,           xmm1,           203
        jmp         _m128shufps_end
        _m128shufps_204 label size_t
        shufps          xmm0,           xmm1,           204
        jmp         _m128shufps_end
        _m128shufps_205 label size_t
        shufps          xmm0,           xmm1,           205
        jmp         _m128shufps_end
        _m128shufps_206 label size_t
        shufps          xmm0,           xmm1,           206
        jmp         _m128shufps_end
        _m128shufps_207 label size_t
        shufps          xmm0,           xmm1,           207
        jmp         _m128shufps_end
        _m128shufps_208 label size_t
        shufps          xmm0,           xmm1,           208
        jmp         _m128shufps_end
        _m128shufps_209 label size_t
        shufps          xmm0,           xmm1,           209
        jmp         _m128shufps_end
        _m128shufps_210 label size_t
        shufps          xmm0,           xmm1,           210
        jmp         _m128shufps_end
        _m128shufps_211 label size_t
        shufps          xmm0,           xmm1,           211
        jmp         _m128shufps_end
        _m128shufps_212 label size_t
        shufps          xmm0,           xmm1,           212
        jmp         _m128shufps_end
        _m128shufps_213 label size_t
        shufps          xmm0,           xmm1,           213
        jmp         _m128shufps_end
        _m128shufps_214 label size_t
        shufps          xmm0,           xmm1,           214
        jmp         _m128shufps_end
        _m128shufps_215 label size_t
        shufps          xmm0,           xmm1,           215
        jmp         _m128shufps_end
        _m128shufps_216 label size_t
        shufps          xmm0,           xmm1,           216
        jmp         _m128shufps_end
        _m128shufps_217 label size_t
        shufps          xmm0,           xmm1,           217
        jmp         _m128shufps_end
        _m128shufps_218 label size_t
        shufps          xmm0,           xmm1,           218
        jmp         _m128shufps_end
        _m128shufps_219 label size_t
        shufps          xmm0,           xmm1,           219
        jmp         _m128shufps_end
        _m128shufps_220 label size_t
        shufps          xmm0,           xmm1,           220
        jmp         _m128shufps_end
        _m128shufps_221 label size_t
        shufps          xmm0,           xmm1,           221
        jmp         _m128shufps_end
        _m128shufps_222 label size_t
        shufps          xmm0,           xmm1,           222
        jmp         _m128shufps_end
        _m128shufps_223 label size_t
        shufps          xmm0,           xmm1,           223
        jmp         _m128shufps_end
        _m128shufps_224 label size_t
        shufps          xmm0,           xmm1,           224
        jmp         _m128shufps_end
        _m128shufps_225 label size_t
        shufps          xmm0,           xmm1,           225
        jmp         _m128shufps_end
        _m128shufps_226 label size_t
        shufps          xmm0,           xmm1,           226
        jmp         _m128shufps_end
        _m128shufps_227 label size_t
        shufps          xmm0,           xmm1,           227
        jmp         _m128shufps_end
        _m128shufps_228 label size_t
        shufps          xmm0,           xmm1,           228
        jmp         _m128shufps_end
        _m128shufps_229 label size_t
        shufps          xmm0,           xmm1,           229
        jmp         _m128shufps_end
        _m128shufps_230 label size_t
        shufps          xmm0,           xmm1,           230
        jmp         _m128shufps_end
        _m128shufps_231 label size_t
        shufps          xmm0,           xmm1,           231
        jmp         _m128shufps_end
        _m128shufps_232 label size_t
        shufps          xmm0,           xmm1,           232
        jmp         _m128shufps_end
        _m128shufps_233 label size_t
        shufps          xmm0,           xmm1,           233
        jmp         _m128shufps_end
        _m128shufps_234 label size_t
        shufps          xmm0,           xmm1,           234
        jmp         _m128shufps_end
        _m128shufps_235 label size_t
        shufps          xmm0,           xmm1,           235
        jmp         _m128shufps_end
        _m128shufps_236 label size_t
        shufps          xmm0,           xmm1,           236
        jmp         _m128shufps_end
        _m128shufps_237 label size_t
        shufps          xmm0,           xmm1,           237
        jmp         _m128shufps_end
        _m128shufps_238 label size_t
        shufps          xmm0,           xmm1,           238
        jmp         _m128shufps_end
        _m128shufps_239 label size_t
        shufps          xmm0,           xmm1,           239
        jmp         _m128shufps_end
        _m128shufps_240 label size_t
        shufps          xmm0,           xmm1,           240
        jmp         _m128shufps_end
        _m128shufps_241 label size_t
        shufps          xmm0,           xmm1,           241
        jmp         _m128shufps_end
        _m128shufps_242 label size_t
        shufps          xmm0,           xmm1,           242
        jmp         _m128shufps_end
        _m128shufps_243 label size_t
        shufps          xmm0,           xmm1,           243
        jmp         _m128shufps_end
        _m128shufps_244 label size_t
        shufps          xmm0,           xmm1,           244
        jmp         _m128shufps_end
        _m128shufps_245 label size_t
        shufps          xmm0,           xmm1,           245
        jmp         _m128shufps_end
        _m128shufps_246 label size_t
        shufps          xmm0,           xmm1,           246
        jmp         _m128shufps_end
        _m128shufps_247 label size_t
        shufps          xmm0,           xmm1,           247
        jmp         _m128shufps_end
        _m128shufps_248 label size_t
        shufps          xmm0,           xmm1,           248
        jmp         _m128shufps_end
        _m128shufps_249 label size_t
        shufps          xmm0,           xmm1,           249
        jmp         _m128shufps_end
        _m128shufps_250 label size_t
        shufps          xmm0,           xmm1,           250
        jmp         _m128shufps_end
        _m128shufps_251 label size_t
        shufps          xmm0,           xmm1,           251
        jmp         _m128shufps_end
        _m128shufps_252 label size_t
        shufps          xmm0,           xmm1,           252
        jmp         _m128shufps_end
        _m128shufps_253 label size_t
        shufps          xmm0,           xmm1,           253
        jmp         _m128shufps_end
        _m128shufps_254 label size_t
        shufps          xmm0,           xmm1,           254
        jmp         _m128shufps_end
        _m128shufps_255 label size_t
        shufps          xmm0,           xmm1,           255
        ;jmp         _m128shufps_end

        _m128shufps_end:
        pop         rbase()
        ret
procend

endif ;__MIC__

end
