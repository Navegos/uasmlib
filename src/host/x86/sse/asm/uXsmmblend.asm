
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2021 (c) Navegos QA - optimized library                 / /
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
include macrolib.inc
include uXasm.inc

ifndef __MIC__

.xmm
option arch:sse
option evex:0

alignstackfieldproc

.data?

.data

.const

    _m128iblendepi16jmptable label size_t
    isize_t _m128iblendepi16_0, _m128iblendepi16_1, _m128iblendepi16_2, _m128iblendepi16_3, _m128iblendepi16_4
    isize_t _m128iblendepi16_5, _m128iblendepi16_6, _m128iblendepi16_7, _m128iblendepi16_8, _m128iblendepi16_9
    isize_t _m128iblendepi16_10, _m128iblendepi16_11, _m128iblendepi16_12, _m128iblendepi16_13, _m128iblendepi16_14
    isize_t _m128iblendepi16_15, _m128iblendepi16_16, _m128iblendepi16_17, _m128iblendepi16_18, _m128iblendepi16_19
    isize_t _m128iblendepi16_20, _m128iblendepi16_21, _m128iblendepi16_22, _m128iblendepi16_23, _m128iblendepi16_24
    isize_t _m128iblendepi16_25, _m128iblendepi16_26, _m128iblendepi16_27, _m128iblendepi16_28, _m128iblendepi16_29
    isize_t _m128iblendepi16_30, _m128iblendepi16_31, _m128iblendepi16_32, _m128iblendepi16_33, _m128iblendepi16_34
    isize_t _m128iblendepi16_35, _m128iblendepi16_36, _m128iblendepi16_37, _m128iblendepi16_38, _m128iblendepi16_39
    isize_t _m128iblendepi16_40, _m128iblendepi16_41, _m128iblendepi16_42, _m128iblendepi16_43, _m128iblendepi16_44
    isize_t _m128iblendepi16_45, _m128iblendepi16_46, _m128iblendepi16_47, _m128iblendepi16_48, _m128iblendepi16_49
    isize_t _m128iblendepi16_50, _m128iblendepi16_51, _m128iblendepi16_52, _m128iblendepi16_53, _m128iblendepi16_54
    isize_t _m128iblendepi16_55, _m128iblendepi16_56, _m128iblendepi16_57, _m128iblendepi16_58, _m128iblendepi16_59
    isize_t _m128iblendepi16_60, _m128iblendepi16_61, _m128iblendepi16_62, _m128iblendepi16_63, _m128iblendepi16_64
    isize_t _m128iblendepi16_65, _m128iblendepi16_66, _m128iblendepi16_67, _m128iblendepi16_68, _m128iblendepi16_69
    isize_t _m128iblendepi16_70, _m128iblendepi16_71, _m128iblendepi16_72, _m128iblendepi16_73, _m128iblendepi16_74
    isize_t _m128iblendepi16_75, _m128iblendepi16_76, _m128iblendepi16_77, _m128iblendepi16_78, _m128iblendepi16_79
    isize_t _m128iblendepi16_80, _m128iblendepi16_81, _m128iblendepi16_82, _m128iblendepi16_83, _m128iblendepi16_84
    isize_t _m128iblendepi16_85, _m128iblendepi16_86, _m128iblendepi16_87, _m128iblendepi16_88, _m128iblendepi16_89
    isize_t _m128iblendepi16_90, _m128iblendepi16_91, _m128iblendepi16_92, _m128iblendepi16_93, _m128iblendepi16_94
    isize_t _m128iblendepi16_95, _m128iblendepi16_96, _m128iblendepi16_97, _m128iblendepi16_98, _m128iblendepi16_99
    isize_t _m128iblendepi16_100, _m128iblendepi16_101, _m128iblendepi16_102, _m128iblendepi16_103, _m128iblendepi16_104
    isize_t _m128iblendepi16_105, _m128iblendepi16_106, _m128iblendepi16_107, _m128iblendepi16_108, _m128iblendepi16_109
    isize_t _m128iblendepi16_110, _m128iblendepi16_111, _m128iblendepi16_112, _m128iblendepi16_113, _m128iblendepi16_114
    isize_t _m128iblendepi16_115, _m128iblendepi16_116, _m128iblendepi16_117, _m128iblendepi16_118, _m128iblendepi16_119
    isize_t _m128iblendepi16_120, _m128iblendepi16_121, _m128iblendepi16_122, _m128iblendepi16_123, _m128iblendepi16_124
    isize_t _m128iblendepi16_125, _m128iblendepi16_126, _m128iblendepi16_127, _m128iblendepi16_128, _m128iblendepi16_129
    isize_t _m128iblendepi16_130, _m128iblendepi16_131, _m128iblendepi16_132, _m128iblendepi16_133, _m128iblendepi16_134
    isize_t _m128iblendepi16_135, _m128iblendepi16_136, _m128iblendepi16_137, _m128iblendepi16_138, _m128iblendepi16_139
    isize_t _m128iblendepi16_140, _m128iblendepi16_141, _m128iblendepi16_142, _m128iblendepi16_143, _m128iblendepi16_144
    isize_t _m128iblendepi16_145, _m128iblendepi16_146, _m128iblendepi16_147, _m128iblendepi16_148, _m128iblendepi16_149
    isize_t _m128iblendepi16_150, _m128iblendepi16_151, _m128iblendepi16_152, _m128iblendepi16_153, _m128iblendepi16_154
    isize_t _m128iblendepi16_155, _m128iblendepi16_156, _m128iblendepi16_157, _m128iblendepi16_158, _m128iblendepi16_159
    isize_t _m128iblendepi16_160, _m128iblendepi16_161, _m128iblendepi16_162, _m128iblendepi16_163, _m128iblendepi16_164
    isize_t _m128iblendepi16_165, _m128iblendepi16_166, _m128iblendepi16_167, _m128iblendepi16_168, _m128iblendepi16_169
    isize_t _m128iblendepi16_170, _m128iblendepi16_171, _m128iblendepi16_172, _m128iblendepi16_173, _m128iblendepi16_174
    isize_t _m128iblendepi16_175, _m128iblendepi16_176, _m128iblendepi16_177, _m128iblendepi16_178, _m128iblendepi16_179
    isize_t _m128iblendepi16_180, _m128iblendepi16_181, _m128iblendepi16_182, _m128iblendepi16_183, _m128iblendepi16_184
    isize_t _m128iblendepi16_185, _m128iblendepi16_186, _m128iblendepi16_187, _m128iblendepi16_188, _m128iblendepi16_189
    isize_t _m128iblendepi16_190, _m128iblendepi16_191, _m128iblendepi16_192, _m128iblendepi16_193, _m128iblendepi16_194
    isize_t _m128iblendepi16_195, _m128iblendepi16_196, _m128iblendepi16_197, _m128iblendepi16_198, _m128iblendepi16_199
    isize_t _m128iblendepi16_200, _m128iblendepi16_201, _m128iblendepi16_202, _m128iblendepi16_203, _m128iblendepi16_204
    isize_t _m128iblendepi16_205, _m128iblendepi16_206, _m128iblendepi16_207, _m128iblendepi16_208, _m128iblendepi16_209
    isize_t _m128iblendepi16_210, _m128iblendepi16_211, _m128iblendepi16_212, _m128iblendepi16_213, _m128iblendepi16_214
    isize_t _m128iblendepi16_215, _m128iblendepi16_216, _m128iblendepi16_217, _m128iblendepi16_218, _m128iblendepi16_219
    isize_t _m128iblendepi16_220, _m128iblendepi16_221, _m128iblendepi16_222, _m128iblendepi16_223, _m128iblendepi16_224
    isize_t _m128iblendepi16_225, _m128iblendepi16_226, _m128iblendepi16_227, _m128iblendepi16_228, _m128iblendepi16_229
    isize_t _m128iblendepi16_230, _m128iblendepi16_231, _m128iblendepi16_232, _m128iblendepi16_233, _m128iblendepi16_234
    isize_t _m128iblendepi16_235, _m128iblendepi16_236, _m128iblendepi16_237, _m128iblendepi16_238, _m128iblendepi16_239
    isize_t _m128iblendepi16_240, _m128iblendepi16_241, _m128iblendepi16_242, _m128iblendepi16_243, _m128iblendepi16_244
    isize_t _m128iblendepi16_245, _m128iblendepi16_246, _m128iblendepi16_247, _m128iblendepi16_248, _m128iblendepi16_249
    isize_t _m128iblendepi16_250, _m128iblendepi16_251, _m128iblendepi16_252, _m128iblendepi16_253, _m128iblendepi16_254
    isize_t _m128iblendepi16_255

    _m128blendpsjmptable label size_t
    isize_t _m128blendps_0, _m128blendps_1, _m128blendps_2, _m128blendps_3, _m128blendps_4
    isize_t _m128blendps_5, _m128blendps_6, _m128blendps_7, _m128blendps_8, _m128blendps_9
    isize_t _m128blendps_10, _m128blendps_11, _m128blendps_12, _m128blendps_13, _m128blendps_14
    isize_t _m128blendps_15

    _m128dblendpdjmptable label size_t
    isize_t _m128dblendpd_0, _m128dblendpd_1, _m128dblendpd_2, _m128dblendpd_3

    _m128dppsjmptable label size_t
    isize_t _m128dpps_0, _m128dpps_1, _m128dpps_2, _m128dpps_3, _m128dpps_4
    isize_t _m128dpps_5, _m128dpps_6, _m128dpps_7, _m128dpps_8, _m128dpps_9
    isize_t _m128dpps_10, _m128dpps_11, _m128dpps_12, _m128dpps_13, _m128dpps_14
    isize_t _m128dpps_15, _m128dpps_16, _m128dpps_17, _m128dpps_18, _m128dpps_19
    isize_t _m128dpps_20, _m128dpps_21, _m128dpps_22, _m128dpps_23, _m128dpps_24
    isize_t _m128dpps_25, _m128dpps_26, _m128dpps_27, _m128dpps_28, _m128dpps_29
    isize_t _m128dpps_30, _m128dpps_31, _m128dpps_32, _m128dpps_33, _m128dpps_34
    isize_t _m128dpps_35, _m128dpps_36, _m128dpps_37, _m128dpps_38, _m128dpps_39
    isize_t _m128dpps_40, _m128dpps_41, _m128dpps_42, _m128dpps_43, _m128dpps_44
    isize_t _m128dpps_45, _m128dpps_46, _m128dpps_47, _m128dpps_48, _m128dpps_49
    isize_t _m128dpps_50, _m128dpps_51, _m128dpps_52, _m128dpps_53, _m128dpps_54
    isize_t _m128dpps_55, _m128dpps_56, _m128dpps_57, _m128dpps_58, _m128dpps_59
    isize_t _m128dpps_60, _m128dpps_61, _m128dpps_62, _m128dpps_63, _m128dpps_64
    isize_t _m128dpps_65, _m128dpps_66, _m128dpps_67, _m128dpps_68, _m128dpps_69
    isize_t _m128dpps_70, _m128dpps_71, _m128dpps_72, _m128dpps_73, _m128dpps_74
    isize_t _m128dpps_75, _m128dpps_76, _m128dpps_77, _m128dpps_78, _m128dpps_79
    isize_t _m128dpps_80, _m128dpps_81, _m128dpps_82, _m128dpps_83, _m128dpps_84
    isize_t _m128dpps_85, _m128dpps_86, _m128dpps_87, _m128dpps_88, _m128dpps_89
    isize_t _m128dpps_90, _m128dpps_91, _m128dpps_92, _m128dpps_93, _m128dpps_94
    isize_t _m128dpps_95, _m128dpps_96, _m128dpps_97, _m128dpps_98, _m128dpps_99
    isize_t _m128dpps_100, _m128dpps_101, _m128dpps_102, _m128dpps_103, _m128dpps_104
    isize_t _m128dpps_105, _m128dpps_106, _m128dpps_107, _m128dpps_108, _m128dpps_109
    isize_t _m128dpps_110, _m128dpps_111, _m128dpps_112, _m128dpps_113, _m128dpps_114
    isize_t _m128dpps_115, _m128dpps_116, _m128dpps_117, _m128dpps_118, _m128dpps_119
    isize_t _m128dpps_120, _m128dpps_121, _m128dpps_122, _m128dpps_123, _m128dpps_124
    isize_t _m128dpps_125, _m128dpps_126, _m128dpps_127, _m128dpps_128, _m128dpps_129
    isize_t _m128dpps_130, _m128dpps_131, _m128dpps_132, _m128dpps_133, _m128dpps_134
    isize_t _m128dpps_135, _m128dpps_136, _m128dpps_137, _m128dpps_138, _m128dpps_139
    isize_t _m128dpps_140, _m128dpps_141, _m128dpps_142, _m128dpps_143, _m128dpps_144
    isize_t _m128dpps_145, _m128dpps_146, _m128dpps_147, _m128dpps_148, _m128dpps_149
    isize_t _m128dpps_150, _m128dpps_151, _m128dpps_152, _m128dpps_153, _m128dpps_154
    isize_t _m128dpps_155, _m128dpps_156, _m128dpps_157, _m128dpps_158, _m128dpps_159
    isize_t _m128dpps_160, _m128dpps_161, _m128dpps_162, _m128dpps_163, _m128dpps_164
    isize_t _m128dpps_165, _m128dpps_166, _m128dpps_167, _m128dpps_168, _m128dpps_169
    isize_t _m128dpps_170, _m128dpps_171, _m128dpps_172, _m128dpps_173, _m128dpps_174
    isize_t _m128dpps_175, _m128dpps_176, _m128dpps_177, _m128dpps_178, _m128dpps_179
    isize_t _m128dpps_180, _m128dpps_181, _m128dpps_182, _m128dpps_183, _m128dpps_184
    isize_t _m128dpps_185, _m128dpps_186, _m128dpps_187, _m128dpps_188, _m128dpps_189
    isize_t _m128dpps_190, _m128dpps_191, _m128dpps_192, _m128dpps_193, _m128dpps_194
    isize_t _m128dpps_195, _m128dpps_196, _m128dpps_197, _m128dpps_198, _m128dpps_199
    isize_t _m128dpps_200, _m128dpps_201, _m128dpps_202, _m128dpps_203, _m128dpps_204
    isize_t _m128dpps_205, _m128dpps_206, _m128dpps_207, _m128dpps_208, _m128dpps_209
    isize_t _m128dpps_210, _m128dpps_211, _m128dpps_212, _m128dpps_213, _m128dpps_214
    isize_t _m128dpps_215, _m128dpps_216, _m128dpps_217, _m128dpps_218, _m128dpps_219
    isize_t _m128dpps_220, _m128dpps_221, _m128dpps_222, _m128dpps_223, _m128dpps_224
    isize_t _m128dpps_225, _m128dpps_226, _m128dpps_227, _m128dpps_228, _m128dpps_229
    isize_t _m128dpps_230, _m128dpps_231, _m128dpps_232, _m128dpps_233, _m128dpps_234
    isize_t _m128dpps_235, _m128dpps_236, _m128dpps_237, _m128dpps_238, _m128dpps_239
    isize_t _m128dpps_240, _m128dpps_241, _m128dpps_242, _m128dpps_243, _m128dpps_244
    isize_t _m128dpps_245, _m128dpps_246, _m128dpps_247, _m128dpps_248, _m128dpps_249
    isize_t _m128dpps_250, _m128dpps_251, _m128dpps_252, _m128dpps_253, _m128dpps_254
    isize_t _m128dpps_255

    _m128ddppdjmptable label size_t
    isize_t _m128ddppd_0, _m128ddppd_1, _m128ddppd_2, _m128ddppd_3, _m128ddppd_4
    isize_t _m128ddppd_5, _m128ddppd_6, _m128ddppd_7, _m128ddppd_8, _m128ddppd_9
    isize_t _m128ddppd_10, _m128ddppd_11, _m128ddppd_12, _m128ddppd_13, _m128ddppd_14
    isize_t _m128ddppd_15, _m128ddppd_16, _m128ddppd_17, _m128ddppd_18, _m128ddppd_19
    isize_t _m128ddppd_20, _m128ddppd_21, _m128ddppd_22, _m128ddppd_23, _m128ddppd_24
    isize_t _m128ddppd_25, _m128ddppd_26, _m128ddppd_27, _m128ddppd_28, _m128ddppd_29
    isize_t _m128ddppd_30, _m128ddppd_31, _m128ddppd_32, _m128ddppd_33, _m128ddppd_34
    isize_t _m128ddppd_35, _m128ddppd_36, _m128ddppd_37, _m128ddppd_38, _m128ddppd_39
    isize_t _m128ddppd_40, _m128ddppd_41, _m128ddppd_42, _m128ddppd_43, _m128ddppd_44
    isize_t _m128ddppd_45, _m128ddppd_46, _m128ddppd_47, _m128ddppd_48, _m128ddppd_49
    isize_t _m128ddppd_50, _m128ddppd_51, _m128ddppd_52, _m128ddppd_53, _m128ddppd_54
    isize_t _m128ddppd_55, _m128ddppd_56, _m128ddppd_57, _m128ddppd_58, _m128ddppd_59
    isize_t _m128ddppd_60, _m128ddppd_61, _m128ddppd_62, _m128ddppd_63, _m128ddppd_64
    isize_t _m128ddppd_65, _m128ddppd_66, _m128ddppd_67, _m128ddppd_68, _m128ddppd_69
    isize_t _m128ddppd_70, _m128ddppd_71, _m128ddppd_72, _m128ddppd_73, _m128ddppd_74
    isize_t _m128ddppd_75, _m128ddppd_76, _m128ddppd_77, _m128ddppd_78, _m128ddppd_79
    isize_t _m128ddppd_80, _m128ddppd_81, _m128ddppd_82, _m128ddppd_83, _m128ddppd_84
    isize_t _m128ddppd_85, _m128ddppd_86, _m128ddppd_87, _m128ddppd_88, _m128ddppd_89
    isize_t _m128ddppd_90, _m128ddppd_91, _m128ddppd_92, _m128ddppd_93, _m128ddppd_94
    isize_t _m128ddppd_95, _m128ddppd_96, _m128ddppd_97, _m128ddppd_98, _m128ddppd_99
    isize_t _m128ddppd_100, _m128ddppd_101, _m128ddppd_102, _m128ddppd_103, _m128ddppd_104
    isize_t _m128ddppd_105, _m128ddppd_106, _m128ddppd_107, _m128ddppd_108, _m128ddppd_109
    isize_t _m128ddppd_110, _m128ddppd_111, _m128ddppd_112, _m128ddppd_113, _m128ddppd_114
    isize_t _m128ddppd_115, _m128ddppd_116, _m128ddppd_117, _m128ddppd_118, _m128ddppd_119
    isize_t _m128ddppd_120, _m128ddppd_121, _m128ddppd_122, _m128ddppd_123, _m128ddppd_124
    isize_t _m128ddppd_125, _m128ddppd_126, _m128ddppd_127, _m128ddppd_128, _m128ddppd_129
    isize_t _m128ddppd_130, _m128ddppd_131, _m128ddppd_132, _m128ddppd_133, _m128ddppd_134
    isize_t _m128ddppd_135, _m128ddppd_136, _m128ddppd_137, _m128ddppd_138, _m128ddppd_139
    isize_t _m128ddppd_140, _m128ddppd_141, _m128ddppd_142, _m128ddppd_143, _m128ddppd_144
    isize_t _m128ddppd_145, _m128ddppd_146, _m128ddppd_147, _m128ddppd_148, _m128ddppd_149
    isize_t _m128ddppd_150, _m128ddppd_151, _m128ddppd_152, _m128ddppd_153, _m128ddppd_154
    isize_t _m128ddppd_155, _m128ddppd_156, _m128ddppd_157, _m128ddppd_158, _m128ddppd_159
    isize_t _m128ddppd_160, _m128ddppd_161, _m128ddppd_162, _m128ddppd_163, _m128ddppd_164
    isize_t _m128ddppd_165, _m128ddppd_166, _m128ddppd_167, _m128ddppd_168, _m128ddppd_169
    isize_t _m128ddppd_170, _m128ddppd_171, _m128ddppd_172, _m128ddppd_173, _m128ddppd_174
    isize_t _m128ddppd_175, _m128ddppd_176, _m128ddppd_177, _m128ddppd_178, _m128ddppd_179
    isize_t _m128ddppd_180, _m128ddppd_181, _m128ddppd_182, _m128ddppd_183, _m128ddppd_184
    isize_t _m128ddppd_185, _m128ddppd_186, _m128ddppd_187, _m128ddppd_188, _m128ddppd_189
    isize_t _m128ddppd_190, _m128ddppd_191, _m128ddppd_192, _m128ddppd_193, _m128ddppd_194
    isize_t _m128ddppd_195, _m128ddppd_196, _m128ddppd_197, _m128ddppd_198, _m128ddppd_199
    isize_t _m128ddppd_200, _m128ddppd_201, _m128ddppd_202, _m128ddppd_203, _m128ddppd_204
    isize_t _m128ddppd_205, _m128ddppd_206, _m128ddppd_207, _m128ddppd_208, _m128ddppd_209
    isize_t _m128ddppd_210, _m128ddppd_211, _m128ddppd_212, _m128ddppd_213, _m128ddppd_214
    isize_t _m128ddppd_215, _m128ddppd_216, _m128ddppd_217, _m128ddppd_218, _m128ddppd_219
    isize_t _m128ddppd_220, _m128ddppd_221, _m128ddppd_222, _m128ddppd_223, _m128ddppd_224
    isize_t _m128ddppd_225, _m128ddppd_226, _m128ddppd_227, _m128ddppd_228, _m128ddppd_229
    isize_t _m128ddppd_230, _m128ddppd_231, _m128ddppd_232, _m128ddppd_233, _m128ddppd_234
    isize_t _m128ddppd_235, _m128ddppd_236, _m128ddppd_237, _m128ddppd_238, _m128ddppd_239
    isize_t _m128ddppd_240, _m128ddppd_241, _m128ddppd_242, _m128ddppd_243, _m128ddppd_244
    isize_t _m128ddppd_245, _m128ddppd_246, _m128ddppd_247, _m128ddppd_248, _m128ddppd_249
    isize_t _m128ddppd_250, _m128ddppd_251, _m128ddppd_252, _m128ddppd_253, _m128ddppd_254
    isize_t _m128ddppd_255

    _m128insertpsjmptable label size_t
    isize_t _m128insertps_0, _m128insertps_1, _m128insertps_2, _m128insertps_3, _m128insertps_4
    isize_t _m128insertps_5, _m128insertps_6, _m128insertps_7, _m128insertps_8, _m128insertps_9
    isize_t _m128insertps_10, _m128insertps_11, _m128insertps_12, _m128insertps_13, _m128insertps_14
    isize_t _m128insertps_15, _m128insertps_16, _m128insertps_17, _m128insertps_18, _m128insertps_19
    isize_t _m128insertps_20, _m128insertps_21, _m128insertps_22, _m128insertps_23, _m128insertps_24
    isize_t _m128insertps_25, _m128insertps_26, _m128insertps_27, _m128insertps_28, _m128insertps_29
    isize_t _m128insertps_30, _m128insertps_31, _m128insertps_32, _m128insertps_33, _m128insertps_34
    isize_t _m128insertps_35, _m128insertps_36, _m128insertps_37, _m128insertps_38, _m128insertps_39
    isize_t _m128insertps_40, _m128insertps_41, _m128insertps_42, _m128insertps_43, _m128insertps_44
    isize_t _m128insertps_45, _m128insertps_46, _m128insertps_47, _m128insertps_48, _m128insertps_49
    isize_t _m128insertps_50, _m128insertps_51, _m128insertps_52, _m128insertps_53, _m128insertps_54
    isize_t _m128insertps_55, _m128insertps_56, _m128insertps_57, _m128insertps_58, _m128insertps_59
    isize_t _m128insertps_60, _m128insertps_61, _m128insertps_62, _m128insertps_63, _m128insertps_64
    isize_t _m128insertps_65, _m128insertps_66, _m128insertps_67, _m128insertps_68, _m128insertps_69
    isize_t _m128insertps_70, _m128insertps_71, _m128insertps_72, _m128insertps_73, _m128insertps_74
    isize_t _m128insertps_75, _m128insertps_76, _m128insertps_77, _m128insertps_78, _m128insertps_79
    isize_t _m128insertps_80, _m128insertps_81, _m128insertps_82, _m128insertps_83, _m128insertps_84
    isize_t _m128insertps_85, _m128insertps_86, _m128insertps_87, _m128insertps_88, _m128insertps_89
    isize_t _m128insertps_90, _m128insertps_91, _m128insertps_92, _m128insertps_93, _m128insertps_94
    isize_t _m128insertps_95, _m128insertps_96, _m128insertps_97, _m128insertps_98, _m128insertps_99
    isize_t _m128insertps_100, _m128insertps_101, _m128insertps_102, _m128insertps_103, _m128insertps_104
    isize_t _m128insertps_105, _m128insertps_106, _m128insertps_107, _m128insertps_108, _m128insertps_109
    isize_t _m128insertps_110, _m128insertps_111, _m128insertps_112, _m128insertps_113, _m128insertps_114
    isize_t _m128insertps_115, _m128insertps_116, _m128insertps_117, _m128insertps_118, _m128insertps_119
    isize_t _m128insertps_120, _m128insertps_121, _m128insertps_122, _m128insertps_123, _m128insertps_124
    isize_t _m128insertps_125, _m128insertps_126, _m128insertps_127, _m128insertps_128, _m128insertps_129
    isize_t _m128insertps_130, _m128insertps_131, _m128insertps_132, _m128insertps_133, _m128insertps_134
    isize_t _m128insertps_135, _m128insertps_136, _m128insertps_137, _m128insertps_138, _m128insertps_139
    isize_t _m128insertps_140, _m128insertps_141, _m128insertps_142, _m128insertps_143, _m128insertps_144
    isize_t _m128insertps_145, _m128insertps_146, _m128insertps_147, _m128insertps_148, _m128insertps_149
    isize_t _m128insertps_150, _m128insertps_151, _m128insertps_152, _m128insertps_153, _m128insertps_154
    isize_t _m128insertps_155, _m128insertps_156, _m128insertps_157, _m128insertps_158, _m128insertps_159
    isize_t _m128insertps_160, _m128insertps_161, _m128insertps_162, _m128insertps_163, _m128insertps_164
    isize_t _m128insertps_165, _m128insertps_166, _m128insertps_167, _m128insertps_168, _m128insertps_169
    isize_t _m128insertps_170, _m128insertps_171, _m128insertps_172, _m128insertps_173, _m128insertps_174
    isize_t _m128insertps_175, _m128insertps_176, _m128insertps_177, _m128insertps_178, _m128insertps_179
    isize_t _m128insertps_180, _m128insertps_181, _m128insertps_182, _m128insertps_183, _m128insertps_184
    isize_t _m128insertps_185, _m128insertps_186, _m128insertps_187, _m128insertps_188, _m128insertps_189
    isize_t _m128insertps_190, _m128insertps_191, _m128insertps_192, _m128insertps_193, _m128insertps_194
    isize_t _m128insertps_195, _m128insertps_196, _m128insertps_197, _m128insertps_198, _m128insertps_199
    isize_t _m128insertps_200, _m128insertps_201, _m128insertps_202, _m128insertps_203, _m128insertps_204
    isize_t _m128insertps_205, _m128insertps_206, _m128insertps_207, _m128insertps_208, _m128insertps_209
    isize_t _m128insertps_210, _m128insertps_211, _m128insertps_212, _m128insertps_213, _m128insertps_214
    isize_t _m128insertps_215, _m128insertps_216, _m128insertps_217, _m128insertps_218, _m128insertps_219
    isize_t _m128insertps_220, _m128insertps_221, _m128insertps_222, _m128insertps_223, _m128insertps_224
    isize_t _m128insertps_225, _m128insertps_226, _m128insertps_227, _m128insertps_228, _m128insertps_229
    isize_t _m128insertps_230, _m128insertps_231, _m128insertps_232, _m128insertps_233, _m128insertps_234
    isize_t _m128insertps_235, _m128insertps_236, _m128insertps_237, _m128insertps_238, _m128insertps_239
    isize_t _m128insertps_240, _m128insertps_241, _m128insertps_242, _m128insertps_243, _m128insertps_244
    isize_t _m128insertps_245, _m128insertps_246, _m128insertps_247, _m128insertps_248, _m128insertps_249
    isize_t _m128insertps_250, _m128insertps_251, _m128insertps_252, _m128insertps_253, _m128insertps_254
    isize_t _m128insertps_255

    _m128impsadbwepu8jmptable label size_t
    isize_t _m128impsadbwepu8_0, _m128impsadbwepu8_1, _m128impsadbwepu8_2, _m128impsadbwepu8_3, _m128impsadbwepu8_4
    isize_t _m128impsadbwepu8_5, _m128impsadbwepu8_6, _m128impsadbwepu8_7, _m128impsadbwepu8_8, _m128impsadbwepu8_9
    isize_t _m128impsadbwepu8_10, _m128impsadbwepu8_11, _m128impsadbwepu8_12, _m128impsadbwepu8_13, _m128impsadbwepu8_14
    isize_t _m128impsadbwepu8_15, _m128impsadbwepu8_16, _m128impsadbwepu8_17, _m128impsadbwepu8_18, _m128impsadbwepu8_19
    isize_t _m128impsadbwepu8_20, _m128impsadbwepu8_21, _m128impsadbwepu8_22, _m128impsadbwepu8_23, _m128impsadbwepu8_24
    isize_t _m128impsadbwepu8_25, _m128impsadbwepu8_26, _m128impsadbwepu8_27, _m128impsadbwepu8_28, _m128impsadbwepu8_29
    isize_t _m128impsadbwepu8_30, _m128impsadbwepu8_31, _m128impsadbwepu8_32, _m128impsadbwepu8_33, _m128impsadbwepu8_34
    isize_t _m128impsadbwepu8_35, _m128impsadbwepu8_36, _m128impsadbwepu8_37, _m128impsadbwepu8_38, _m128impsadbwepu8_39
    isize_t _m128impsadbwepu8_40, _m128impsadbwepu8_41, _m128impsadbwepu8_42, _m128impsadbwepu8_43, _m128impsadbwepu8_44
    isize_t _m128impsadbwepu8_45, _m128impsadbwepu8_46, _m128impsadbwepu8_47, _m128impsadbwepu8_48, _m128impsadbwepu8_49
    isize_t _m128impsadbwepu8_50, _m128impsadbwepu8_51, _m128impsadbwepu8_52, _m128impsadbwepu8_53, _m128impsadbwepu8_54
    isize_t _m128impsadbwepu8_55, _m128impsadbwepu8_56, _m128impsadbwepu8_57, _m128impsadbwepu8_58, _m128impsadbwepu8_59
    isize_t _m128impsadbwepu8_60, _m128impsadbwepu8_61, _m128impsadbwepu8_62, _m128impsadbwepu8_63, _m128impsadbwepu8_64
    isize_t _m128impsadbwepu8_65, _m128impsadbwepu8_66, _m128impsadbwepu8_67, _m128impsadbwepu8_68, _m128impsadbwepu8_69
    isize_t _m128impsadbwepu8_70, _m128impsadbwepu8_71, _m128impsadbwepu8_72, _m128impsadbwepu8_73, _m128impsadbwepu8_74
    isize_t _m128impsadbwepu8_75, _m128impsadbwepu8_76, _m128impsadbwepu8_77, _m128impsadbwepu8_78, _m128impsadbwepu8_79
    isize_t _m128impsadbwepu8_80, _m128impsadbwepu8_81, _m128impsadbwepu8_82, _m128impsadbwepu8_83, _m128impsadbwepu8_84
    isize_t _m128impsadbwepu8_85, _m128impsadbwepu8_86, _m128impsadbwepu8_87, _m128impsadbwepu8_88, _m128impsadbwepu8_89
    isize_t _m128impsadbwepu8_90, _m128impsadbwepu8_91, _m128impsadbwepu8_92, _m128impsadbwepu8_93, _m128impsadbwepu8_94
    isize_t _m128impsadbwepu8_95, _m128impsadbwepu8_96, _m128impsadbwepu8_97, _m128impsadbwepu8_98, _m128impsadbwepu8_99
    isize_t _m128impsadbwepu8_100, _m128impsadbwepu8_101, _m128impsadbwepu8_102, _m128impsadbwepu8_103, _m128impsadbwepu8_104
    isize_t _m128impsadbwepu8_105, _m128impsadbwepu8_106, _m128impsadbwepu8_107, _m128impsadbwepu8_108, _m128impsadbwepu8_109
    isize_t _m128impsadbwepu8_110, _m128impsadbwepu8_111, _m128impsadbwepu8_112, _m128impsadbwepu8_113, _m128impsadbwepu8_114
    isize_t _m128impsadbwepu8_115, _m128impsadbwepu8_116, _m128impsadbwepu8_117, _m128impsadbwepu8_118, _m128impsadbwepu8_119
    isize_t _m128impsadbwepu8_120, _m128impsadbwepu8_121, _m128impsadbwepu8_122, _m128impsadbwepu8_123, _m128impsadbwepu8_124
    isize_t _m128impsadbwepu8_125, _m128impsadbwepu8_126, _m128impsadbwepu8_127, _m128impsadbwepu8_128, _m128impsadbwepu8_129
    isize_t _m128impsadbwepu8_130, _m128impsadbwepu8_131, _m128impsadbwepu8_132, _m128impsadbwepu8_133, _m128impsadbwepu8_134
    isize_t _m128impsadbwepu8_135, _m128impsadbwepu8_136, _m128impsadbwepu8_137, _m128impsadbwepu8_138, _m128impsadbwepu8_139
    isize_t _m128impsadbwepu8_140, _m128impsadbwepu8_141, _m128impsadbwepu8_142, _m128impsadbwepu8_143, _m128impsadbwepu8_144
    isize_t _m128impsadbwepu8_145, _m128impsadbwepu8_146, _m128impsadbwepu8_147, _m128impsadbwepu8_148, _m128impsadbwepu8_149
    isize_t _m128impsadbwepu8_150, _m128impsadbwepu8_151, _m128impsadbwepu8_152, _m128impsadbwepu8_153, _m128impsadbwepu8_154
    isize_t _m128impsadbwepu8_155, _m128impsadbwepu8_156, _m128impsadbwepu8_157, _m128impsadbwepu8_158, _m128impsadbwepu8_159
    isize_t _m128impsadbwepu8_160, _m128impsadbwepu8_161, _m128impsadbwepu8_162, _m128impsadbwepu8_163, _m128impsadbwepu8_164
    isize_t _m128impsadbwepu8_165, _m128impsadbwepu8_166, _m128impsadbwepu8_167, _m128impsadbwepu8_168, _m128impsadbwepu8_169
    isize_t _m128impsadbwepu8_170, _m128impsadbwepu8_171, _m128impsadbwepu8_172, _m128impsadbwepu8_173, _m128impsadbwepu8_174
    isize_t _m128impsadbwepu8_175, _m128impsadbwepu8_176, _m128impsadbwepu8_177, _m128impsadbwepu8_178, _m128impsadbwepu8_179
    isize_t _m128impsadbwepu8_180, _m128impsadbwepu8_181, _m128impsadbwepu8_182, _m128impsadbwepu8_183, _m128impsadbwepu8_184
    isize_t _m128impsadbwepu8_185, _m128impsadbwepu8_186, _m128impsadbwepu8_187, _m128impsadbwepu8_188, _m128impsadbwepu8_189
    isize_t _m128impsadbwepu8_190, _m128impsadbwepu8_191, _m128impsadbwepu8_192, _m128impsadbwepu8_193, _m128impsadbwepu8_194
    isize_t _m128impsadbwepu8_195, _m128impsadbwepu8_196, _m128impsadbwepu8_197, _m128impsadbwepu8_198, _m128impsadbwepu8_199
    isize_t _m128impsadbwepu8_200, _m128impsadbwepu8_201, _m128impsadbwepu8_202, _m128impsadbwepu8_203, _m128impsadbwepu8_204
    isize_t _m128impsadbwepu8_205, _m128impsadbwepu8_206, _m128impsadbwepu8_207, _m128impsadbwepu8_208, _m128impsadbwepu8_209
    isize_t _m128impsadbwepu8_210, _m128impsadbwepu8_211, _m128impsadbwepu8_212, _m128impsadbwepu8_213, _m128impsadbwepu8_214
    isize_t _m128impsadbwepu8_215, _m128impsadbwepu8_216, _m128impsadbwepu8_217, _m128impsadbwepu8_218, _m128impsadbwepu8_219
    isize_t _m128impsadbwepu8_220, _m128impsadbwepu8_221, _m128impsadbwepu8_222, _m128impsadbwepu8_223, _m128impsadbwepu8_224
    isize_t _m128impsadbwepu8_225, _m128impsadbwepu8_226, _m128impsadbwepu8_227, _m128impsadbwepu8_228, _m128impsadbwepu8_229
    isize_t _m128impsadbwepu8_230, _m128impsadbwepu8_231, _m128impsadbwepu8_232, _m128impsadbwepu8_233, _m128impsadbwepu8_234
    isize_t _m128impsadbwepu8_235, _m128impsadbwepu8_236, _m128impsadbwepu8_237, _m128impsadbwepu8_238, _m128impsadbwepu8_239
    isize_t _m128impsadbwepu8_240, _m128impsadbwepu8_241, _m128impsadbwepu8_242, _m128impsadbwepu8_243, _m128impsadbwepu8_244
    isize_t _m128impsadbwepu8_245, _m128impsadbwepu8_246, _m128impsadbwepu8_247, _m128impsadbwepu8_248, _m128impsadbwepu8_249
    isize_t _m128impsadbwepu8_250, _m128impsadbwepu8_251, _m128impsadbwepu8_252, _m128impsadbwepu8_253, _m128impsadbwepu8_254
    isize_t _m128impsadbwepu8_255

.code

callconvopt
alignxmmfieldproc

;************************************
; blend instructions
;************************************

procstart _uX_mm_blend_00000000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_blend_00000001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_blend_00000010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_blend_00000011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_blend_00000100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           4
        ret
procend

procstart _uX_mm_blend_00000101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           5
        ret
procend

procstart _uX_mm_blend_00000110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           6
        ret
procend

procstart _uX_mm_blend_00000111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           7
        ret
procend

procstart _uX_mm_blend_00001000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           8
        ret
procend

procstart _uX_mm_blend_00001001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           9
        ret
procend

procstart _uX_mm_blend_00001010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           10
        ret
procend

procstart _uX_mm_blend_00001011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           11
        ret
procend

procstart _uX_mm_blend_00001100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           12
        ret
procend

procstart _uX_mm_blend_00001101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           13
        ret
procend

procstart _uX_mm_blend_00001110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           14
        ret
procend

procstart _uX_mm_blend_00001111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           15
        ret
procend

procstart _uX_mm_blend_00010000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           16
        ret
procend

procstart _uX_mm_blend_00010001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           17
        ret
procend

procstart _uX_mm_blend_00010010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           18
        ret
procend

procstart _uX_mm_blend_00010011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           19
        ret
procend

procstart _uX_mm_blend_00010100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           20
        ret
procend

procstart _uX_mm_blend_00010101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           21
        ret
procend

procstart _uX_mm_blend_00010110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           22
        ret
procend

procstart _uX_mm_blend_00010111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           23
        ret
procend

procstart _uX_mm_blend_00011000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           24
        ret
procend

procstart _uX_mm_blend_00011001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           25
        ret
procend

procstart _uX_mm_blend_00011010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           26
        ret
procend

procstart _uX_mm_blend_00011011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           27
        ret
procend

procstart _uX_mm_blend_00011100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           28
        ret
procend

procstart _uX_mm_blend_00011101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           29
        ret
procend

procstart _uX_mm_blend_00011110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           30
        ret
procend

procstart _uX_mm_blend_00011111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           31
        ret
procend

procstart _uX_mm_blend_00100000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           32
        ret
procend

procstart _uX_mm_blend_00100001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           33
        ret
procend

procstart _uX_mm_blend_00100010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           34
        ret
procend

procstart _uX_mm_blend_00100011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           35
        ret
procend

procstart _uX_mm_blend_00100100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           36
        ret
procend

procstart _uX_mm_blend_00100101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           37
        ret
procend

procstart _uX_mm_blend_00100110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           38
        ret
procend

procstart _uX_mm_blend_00100111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           39
        ret
procend

procstart _uX_mm_blend_00101000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           40
        ret
procend

procstart _uX_mm_blend_00101001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           41
        ret
procend

procstart _uX_mm_blend_00101010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           42
        ret
procend

procstart _uX_mm_blend_00101011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           43
        ret
procend

procstart _uX_mm_blend_00101100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           44
        ret
procend

procstart _uX_mm_blend_00101101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           45
        ret
procend

procstart _uX_mm_blend_00101110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           46
        ret
procend

procstart _uX_mm_blend_00101111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           47
        ret
procend

procstart _uX_mm_blend_00110000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           48
        ret
procend

procstart _uX_mm_blend_00110001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           49
        ret
procend

procstart _uX_mm_blend_00110010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           50
        ret
procend

procstart _uX_mm_blend_00110011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           51
        ret
procend

procstart _uX_mm_blend_00110100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           52
        ret
procend

procstart _uX_mm_blend_00110101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           53
        ret
procend

procstart _uX_mm_blend_00110110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           54
        ret
procend

procstart _uX_mm_blend_00110111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           55
        ret
procend

procstart _uX_mm_blend_00111000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           56
        ret
procend

procstart _uX_mm_blend_00111001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           57
        ret
procend

procstart _uX_mm_blend_00111010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           58
        ret
procend

procstart _uX_mm_blend_00111011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           59
        ret
procend

procstart _uX_mm_blend_00111100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           60
        ret
procend

procstart _uX_mm_blend_00111101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           61
        ret
procend

procstart _uX_mm_blend_00111110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           62
        ret
procend

procstart _uX_mm_blend_00111111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           63
        ret
procend

procstart _uX_mm_blend_01000000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           64
        ret
procend

procstart _uX_mm_blend_01000001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           65
        ret
procend

procstart _uX_mm_blend_01000010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           66
        ret
procend

procstart _uX_mm_blend_01000011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           67
        ret
procend

procstart _uX_mm_blend_01000100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           68
        ret
procend

procstart _uX_mm_blend_01000101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           69
        ret
procend

procstart _uX_mm_blend_01000110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           70
        ret
procend

procstart _uX_mm_blend_01000111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           71
        ret
procend

procstart _uX_mm_blend_01001000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           72
        ret
procend

procstart _uX_mm_blend_01001001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           73
        ret
procend

procstart _uX_mm_blend_01001010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           74
        ret
procend

procstart _uX_mm_blend_01001011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           75
        ret
procend

procstart _uX_mm_blend_01001100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           76
        ret
procend

procstart _uX_mm_blend_01001101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           77
        ret
procend

procstart _uX_mm_blend_01001110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           78
        ret
procend

procstart _uX_mm_blend_01001111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           79
        ret
procend

procstart _uX_mm_blend_01010000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           80
        ret
procend

procstart _uX_mm_blend_01010001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           81
        ret
procend

procstart _uX_mm_blend_01010010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           82
        ret
procend

procstart _uX_mm_blend_01010011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           83
        ret
procend

procstart _uX_mm_blend_01010100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           84
        ret
procend

procstart _uX_mm_blend_01010101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           85
        ret
procend

procstart _uX_mm_blend_01010110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           86
        ret
procend

procstart _uX_mm_blend_01010111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           87
        ret
procend

procstart _uX_mm_blend_01011000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           88
        ret
procend

procstart _uX_mm_blend_01011001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           89
        ret
procend

procstart _uX_mm_blend_01011010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           90
        ret
procend

procstart _uX_mm_blend_01011011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           91
        ret
procend

procstart _uX_mm_blend_01011100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           92
        ret
procend

procstart _uX_mm_blend_01011101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           93
        ret
procend

procstart _uX_mm_blend_01011110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           94
        ret
procend

procstart _uX_mm_blend_01011111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           95
        ret
procend

procstart _uX_mm_blend_01100000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           96
        ret
procend

procstart _uX_mm_blend_01100001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           97
        ret
procend

procstart _uX_mm_blend_01100010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           98
        ret
procend

procstart _uX_mm_blend_01100011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           99
        ret
procend

procstart _uX_mm_blend_01100100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           100
        ret
procend

procstart _uX_mm_blend_01100101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           101
        ret
procend

procstart _uX_mm_blend_01100110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           102
        ret
procend

procstart _uX_mm_blend_01100111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           103
        ret
procend

procstart _uX_mm_blend_01101000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           104
        ret
procend

procstart _uX_mm_blend_01101001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           105
        ret
procend

procstart _uX_mm_blend_01101010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           106
        ret
procend

procstart _uX_mm_blend_01101011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           107
        ret
procend

procstart _uX_mm_blend_01101100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           108
        ret
procend

procstart _uX_mm_blend_01101101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           109
        ret
procend

procstart _uX_mm_blend_01101110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           110
        ret
procend

procstart _uX_mm_blend_01101111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           111
        ret
procend

procstart _uX_mm_blend_01110000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           112
        ret
procend

procstart _uX_mm_blend_01110001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           113
        ret
procend

procstart _uX_mm_blend_01110010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           114
        ret
procend

procstart _uX_mm_blend_01110011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           115
        ret
procend

procstart _uX_mm_blend_01110100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           116
        ret
procend

procstart _uX_mm_blend_01110101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           117
        ret
procend

procstart _uX_mm_blend_01110110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           118
        ret
procend

procstart _uX_mm_blend_01110111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           119
        ret
procend

procstart _uX_mm_blend_01111000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           120
        ret
procend

procstart _uX_mm_blend_01111001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           121
        ret
procend

procstart _uX_mm_blend_01111010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           122
        ret
procend

procstart _uX_mm_blend_01111011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           123
        ret
procend

procstart _uX_mm_blend_01111100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           124
        ret
procend

procstart _uX_mm_blend_01111101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           125
        ret
procend

procstart _uX_mm_blend_01111110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           126
        ret
procend

procstart _uX_mm_blend_01111111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           127
        ret
procend

procstart _uX_mm_blend_10000000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           128
        ret
procend

procstart _uX_mm_blend_10000001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           129
        ret
procend

procstart _uX_mm_blend_10000010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           130
        ret
procend

procstart _uX_mm_blend_10000011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           131
        ret
procend

procstart _uX_mm_blend_10000100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           132
        ret
procend

procstart _uX_mm_blend_10000101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           133
        ret
procend

procstart _uX_mm_blend_10000110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           134
        ret
procend

procstart _uX_mm_blend_10000111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           135
        ret
procend

procstart _uX_mm_blend_10001000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           136
        ret
procend

procstart _uX_mm_blend_10001001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           137
        ret
procend

procstart _uX_mm_blend_10001010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           138
        ret
procend

procstart _uX_mm_blend_10001011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           139
        ret
procend

procstart _uX_mm_blend_10001100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           140
        ret
procend

procstart _uX_mm_blend_10001101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           141
        ret
procend

procstart _uX_mm_blend_10001110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           142
        ret
procend

procstart _uX_mm_blend_10001111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           143
        ret
procend

procstart _uX_mm_blend_10010000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           144
        ret
procend

procstart _uX_mm_blend_10010001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           145
        ret
procend

procstart _uX_mm_blend_10010010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        pblendw             xmm0,           xmm1,           146
        ret
procend

procstart _uX_mm_blend_10010011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           147
        ret
procend

procstart _uX_mm_blend_10010100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           148
        ret
procend

procstart _uX_mm_blend_10010101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           149
        ret
procend

procstart _uX_mm_blend_10010110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           150
        ret
procend

procstart _uX_mm_blend_10010111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           151
        ret
procend

procstart _uX_mm_blend_10011000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           152
        ret
procend

procstart _uX_mm_blend_10011001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           153
        ret
procend

procstart _uX_mm_blend_10011010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        pblendw             xmm0,           xmm1,           154
        ret
procend

procstart _uX_mm_blend_10011011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           155
        ret
procend

procstart _uX_mm_blend_10011100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           156
        ret
procend

procstart _uX_mm_blend_10011101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           157
        ret
procend

procstart _uX_mm_blend_10011110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           158
        ret
procend

procstart _uX_mm_blend_10011111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           159
        ret
procend

procstart _uX_mm_blend_10100000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           160
        ret
procend

procstart _uX_mm_blend_10100001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           161
        ret
procend

procstart _uX_mm_blend_10100010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           162
        ret
procend

procstart _uX_mm_blend_10100011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           163
        ret
procend

procstart _uX_mm_blend_10100100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           164
        ret
procend

procstart _uX_mm_blend_10100101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           165
        ret
procend

procstart _uX_mm_blend_10100110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           166
        ret
procend

procstart _uX_mm_blend_10100111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           167
        ret
procend

procstart _uX_mm_blend_10101000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           168
        ret
procend

procstart _uX_mm_blend_10101001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           169
        ret
procend

procstart _uX_mm_blend_10101010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           170
        ret
procend

procstart _uX_mm_blend_10101011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           171
        ret
procend

procstart _uX_mm_blend_10101100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           172
        ret
procend

procstart _uX_mm_blend_10101101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           173
        ret
procend

procstart _uX_mm_blend_10101110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        pblendw             xmm0,           xmm1,           174
        ret
procend

procstart _uX_mm_blend_10101111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           175
        ret
procend

procstart _uX_mm_blend_10110000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           176
        ret
procend

procstart _uX_mm_blend_10110001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           177
        ret
procend

procstart _uX_mm_blend_10110010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           178
        ret
procend

procstart _uX_mm_blend_10110011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           179
        ret
procend

procstart _uX_mm_blend_10110100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           180
        ret
procend

procstart _uX_mm_blend_10110101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           181
        ret
procend

procstart _uX_mm_blend_10110110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           182
        ret
procend

procstart _uX_mm_blend_10110111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           183
        ret
procend

procstart _uX_mm_blend_10111000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           184
        ret
procend

procstart _uX_mm_blend_10111001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           185
        ret
procend

procstart _uX_mm_blend_10111010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           186
        ret
procend

procstart _uX_mm_blend_10111011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           187
        ret
procend

procstart _uX_mm_blend_10111100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           188
        ret
procend

procstart _uX_mm_blend_10111101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           189
        ret
procend

procstart _uX_mm_blend_10111110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           190
        ret
procend

procstart _uX_mm_blend_10111111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           191
        ret
procend

procstart _uX_mm_blend_11000000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           192
        ret
procend

procstart _uX_mm_blend_11000001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           193
        ret
procend

procstart _uX_mm_blend_11000010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           194
        ret
procend

procstart _uX_mm_blend_11000011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           195
        ret
procend

procstart _uX_mm_blend_11000100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           196
        ret
procend

procstart _uX_mm_blend_11000101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           197
        ret
procend

procstart _uX_mm_blend_11000110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           198
        ret
procend

procstart _uX_mm_blend_11000111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           199
        ret
procend

procstart _uX_mm_blend_11001000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           200
        ret
procend

procstart _uX_mm_blend_11001001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           201
        ret
procend

procstart _uX_mm_blend_11001010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           202
        ret
procend

procstart _uX_mm_blend_11001011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           203
        ret
procend

procstart _uX_mm_blend_11001100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           204
        ret
procend

procstart _uX_mm_blend_11001101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           205
        ret
procend

procstart _uX_mm_blend_11001110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           206
        ret
procend

procstart _uX_mm_blend_11001111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           207
        ret
procend

procstart _uX_mm_blend_11010000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           208
        ret
procend

procstart _uX_mm_blend_11010001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           209
        ret
procend

procstart _uX_mm_blend_11010010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           210
        ret
procend

procstart _uX_mm_blend_11010011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           211
        ret
procend

procstart _uX_mm_blend_11010100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           212
        ret
procend

procstart _uX_mm_blend_11010101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           213
        ret
procend

procstart _uX_mm_blend_11010110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           214
        ret
procend

procstart _uX_mm_blend_11010111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           215
        ret
procend

procstart _uX_mm_blend_11011000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           216
        ret
procend

procstart _uX_mm_blend_11011001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           217
        ret
procend

procstart _uX_mm_blend_11011010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           218
        ret
procend

procstart _uX_mm_blend_11011011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           219
        ret
procend

procstart _uX_mm_blend_11011100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           220
        ret
procend

procstart _uX_mm_blend_11011101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           221
        ret
procend

procstart _uX_mm_blend_11011110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           222
        ret
procend

procstart _uX_mm_blend_11011111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           223
        ret
procend

procstart _uX_mm_blend_11100000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           224
        ret
procend

procstart _uX_mm_blend_11100001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           225
        ret
procend

procstart _uX_mm_blend_11100010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           226
        ret
procend

procstart _uX_mm_blend_11100011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           227
        ret
procend

procstart _uX_mm_blend_11100100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           228
        ret
procend

procstart _uX_mm_blend_11100101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           229
        ret
procend

procstart _uX_mm_blend_11100110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           230
        ret
procend

procstart _uX_mm_blend_11100111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           231
        ret
procend

procstart _uX_mm_blend_11101000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           232
        ret
procend

procstart _uX_mm_blend_11101001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           233
        ret
procend

procstart _uX_mm_blend_11101010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           234
        ret
procend

procstart _uX_mm_blend_11101011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           235
        ret
procend

procstart _uX_mm_blend_11101100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           236
        ret
procend

procstart _uX_mm_blend_11101101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           237
        ret
procend

procstart _uX_mm_blend_11101110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           238
        ret
procend

procstart _uX_mm_blend_11101111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           239
        ret
procend

procstart _uX_mm_blend_11110000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           240
        ret
procend

procstart _uX_mm_blend_11110001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           241
        ret
procend

procstart _uX_mm_blend_11110010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           242
        ret
procend

procstart _uX_mm_blend_11110011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           243
        ret
procend

procstart _uX_mm_blend_11110100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           244
        ret
procend

procstart _uX_mm_blend_11110101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           245
        ret
procend

procstart _uX_mm_blend_11110110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           246
        ret
procend

procstart _uX_mm_blend_11110111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           247
        ret
procend

procstart _uX_mm_blend_11111000_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           248
        ret
procend

procstart _uX_mm_blend_11111001_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           249
        ret
procend

procstart _uX_mm_blend_11111010_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           250
        ret
procend

procstart _uX_mm_blend_11111011_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           251
        ret
procend

procstart _uX_mm_blend_11111100_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           252
        ret
procend

procstart _uX_mm_blend_11111101_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           253
        ret
procend

procstart _uX_mm_blend_11111110_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           254
        ret
procend

procstart _uX_mm_blend_11111111_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pblendw             xmm0,           xmm1,           255
        ret
procend

procstart _uX_mm_blend_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp2() < 0) || (rp2() > 255))
        jmp         _m128iblendepi16_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp2()]
        jmp     dword ptr [_m128iblendepi16jmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128iblendepi16jmptable]
        mov             rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp             rbx
        endif

        _m128iblendepi16_0 label size_t
        pblendw             xmm0,           xmm1,           0
        jmp         _m128iblendepi16_end
        _m128iblendepi16_1 label size_t
        pblendw             xmm0,           xmm1,           1
        jmp         _m128iblendepi16_end
        _m128iblendepi16_2 label size_t
        pblendw             xmm0,           xmm1,           2
        jmp         _m128iblendepi16_end
        _m128iblendepi16_3 label size_t
        pblendw             xmm0,           xmm1,           3
        jmp         _m128iblendepi16_end
        _m128iblendepi16_4 label size_t
        pblendw             xmm0,           xmm1,           4
        jmp         _m128iblendepi16_end
        _m128iblendepi16_5 label size_t
        pblendw             xmm0,           xmm1,           5
        jmp         _m128iblendepi16_end
        _m128iblendepi16_6 label size_t
        pblendw             xmm0,           xmm1,           6
        jmp         _m128iblendepi16_end
        _m128iblendepi16_7 label size_t
        pblendw             xmm0,           xmm1,           7
        jmp         _m128iblendepi16_end
        _m128iblendepi16_8 label size_t
        pblendw             xmm0,           xmm1,           8
        jmp         _m128iblendepi16_end
        _m128iblendepi16_9 label size_t
        pblendw             xmm0,           xmm1,           9
        jmp         _m128iblendepi16_end
        _m128iblendepi16_10 label size_t
        pblendw             xmm0,           xmm1,           10
        jmp         _m128iblendepi16_end
        _m128iblendepi16_11 label size_t
        pblendw             xmm0,           xmm1,           11
        jmp         _m128iblendepi16_end
        _m128iblendepi16_12 label size_t
        pblendw             xmm0,           xmm1,           12
        jmp         _m128iblendepi16_end
        _m128iblendepi16_13 label size_t
        pblendw             xmm0,           xmm1,           13
        jmp         _m128iblendepi16_end
        _m128iblendepi16_14 label size_t
        pblendw             xmm0,           xmm1,           14
        jmp         _m128iblendepi16_end
        _m128iblendepi16_15 label size_t
        pblendw             xmm0,           xmm1,           15
        jmp         _m128iblendepi16_end
        _m128iblendepi16_16 label size_t
        pblendw             xmm0,           xmm1,           16
        jmp         _m128iblendepi16_end
        _m128iblendepi16_17 label size_t
        pblendw             xmm0,           xmm1,           17
        jmp         _m128iblendepi16_end
        _m128iblendepi16_18 label size_t
        pblendw             xmm0,           xmm1,           18
        jmp         _m128iblendepi16_end
        _m128iblendepi16_19 label size_t
        pblendw             xmm0,           xmm1,           19
        jmp         _m128iblendepi16_end
        _m128iblendepi16_20 label size_t
        pblendw             xmm0,           xmm1,           20
        jmp         _m128iblendepi16_end
        _m128iblendepi16_21 label size_t
        pblendw             xmm0,           xmm1,           21
        jmp         _m128iblendepi16_end
        _m128iblendepi16_22 label size_t
        pblendw             xmm0,           xmm1,           22
        jmp         _m128iblendepi16_end
        _m128iblendepi16_23 label size_t
        pblendw             xmm0,           xmm1,           23
        jmp         _m128iblendepi16_end
        _m128iblendepi16_24 label size_t
        pblendw             xmm0,           xmm1,           24
        jmp         _m128iblendepi16_end
        _m128iblendepi16_25 label size_t
        pblendw             xmm0,           xmm1,           25
        jmp         _m128iblendepi16_end
        _m128iblendepi16_26 label size_t
        pblendw             xmm0,           xmm1,           26
        jmp         _m128iblendepi16_end
        _m128iblendepi16_27 label size_t
        pblendw             xmm0,           xmm1,           27
        jmp         _m128iblendepi16_end
        _m128iblendepi16_28 label size_t
        pblendw             xmm0,           xmm1,           28
        jmp         _m128iblendepi16_end
        _m128iblendepi16_29 label size_t
        pblendw             xmm0,           xmm1,           29
        jmp         _m128iblendepi16_end
        _m128iblendepi16_30 label size_t
        pblendw             xmm0,           xmm1,           30
        jmp         _m128iblendepi16_end
        _m128iblendepi16_31 label size_t
        pblendw             xmm0,           xmm1,           31
        jmp         _m128iblendepi16_end
        _m128iblendepi16_32 label size_t
        pblendw             xmm0,           xmm1,           32
        jmp         _m128iblendepi16_end
        _m128iblendepi16_33 label size_t
        pblendw             xmm0,           xmm1,           33
        jmp         _m128iblendepi16_end
        _m128iblendepi16_34 label size_t
        pblendw             xmm0,           xmm1,           34
        jmp         _m128iblendepi16_end
        _m128iblendepi16_35 label size_t
        pblendw             xmm0,           xmm1,           35
        jmp         _m128iblendepi16_end
        _m128iblendepi16_36 label size_t
        pblendw             xmm0,           xmm1,           36
        jmp         _m128iblendepi16_end
        _m128iblendepi16_37 label size_t
        pblendw             xmm0,           xmm1,           37
        jmp         _m128iblendepi16_end
        _m128iblendepi16_38 label size_t
        pblendw             xmm0,           xmm1,           38
        jmp         _m128iblendepi16_end
        _m128iblendepi16_39 label size_t
        pblendw             xmm0,           xmm1,           39
        jmp         _m128iblendepi16_end
        _m128iblendepi16_40 label size_t
        pblendw             xmm0,           xmm1,           40
        jmp         _m128iblendepi16_end
        _m128iblendepi16_41 label size_t
        pblendw             xmm0,           xmm1,           41
        jmp         _m128iblendepi16_end
        _m128iblendepi16_42 label size_t
        pblendw             xmm0,           xmm1,           42
        jmp         _m128iblendepi16_end
        _m128iblendepi16_43 label size_t
        pblendw             xmm0,           xmm1,           43
        jmp         _m128iblendepi16_end
        _m128iblendepi16_44 label size_t
        pblendw             xmm0,           xmm1,           44
        jmp         _m128iblendepi16_end
        _m128iblendepi16_45 label size_t
        pblendw             xmm0,           xmm1,           45
        jmp         _m128iblendepi16_end
        _m128iblendepi16_46 label size_t
        pblendw             xmm0,           xmm1,           46
        jmp         _m128iblendepi16_end
        _m128iblendepi16_47 label size_t
        pblendw             xmm0,           xmm1,           47
        jmp         _m128iblendepi16_end
        _m128iblendepi16_48 label size_t
        pblendw             xmm0,           xmm1,           48
        jmp         _m128iblendepi16_end
        _m128iblendepi16_49 label size_t
        pblendw             xmm0,           xmm1,           49
        jmp         _m128iblendepi16_end
        _m128iblendepi16_50 label size_t
        pblendw             xmm0,           xmm1,           50
        jmp         _m128iblendepi16_end
        _m128iblendepi16_51 label size_t
        pblendw             xmm0,           xmm1,           51
        jmp         _m128iblendepi16_end
        _m128iblendepi16_52 label size_t
        pblendw             xmm0,           xmm1,           52
        jmp         _m128iblendepi16_end
        _m128iblendepi16_53 label size_t
        pblendw             xmm0,           xmm1,           53
        jmp         _m128iblendepi16_end
        _m128iblendepi16_54 label size_t
        pblendw             xmm0,           xmm1,           54
        jmp         _m128iblendepi16_end
        _m128iblendepi16_55 label size_t
        pblendw             xmm0,           xmm1,           55
        jmp         _m128iblendepi16_end
        _m128iblendepi16_56 label size_t
        pblendw             xmm0,           xmm1,           56
        jmp         _m128iblendepi16_end
        _m128iblendepi16_57 label size_t
        pblendw             xmm0,           xmm1,           57
        jmp         _m128iblendepi16_end
        _m128iblendepi16_58 label size_t
        pblendw             xmm0,           xmm1,           58
        jmp         _m128iblendepi16_end
        _m128iblendepi16_59 label size_t
        pblendw             xmm0,           xmm1,           59
        jmp         _m128iblendepi16_end
        _m128iblendepi16_60 label size_t
        pblendw             xmm0,           xmm1,           60
        jmp         _m128iblendepi16_end
        _m128iblendepi16_61 label size_t
        pblendw             xmm0,           xmm1,           61
        jmp         _m128iblendepi16_end
        _m128iblendepi16_62 label size_t
        pblendw             xmm0,           xmm1,           62
        jmp         _m128iblendepi16_end
        _m128iblendepi16_63 label size_t
        pblendw             xmm0,           xmm1,           63
        jmp         _m128iblendepi16_end
        _m128iblendepi16_64 label size_t
        pblendw             xmm0,           xmm1,           64
        jmp         _m128iblendepi16_end
        _m128iblendepi16_65 label size_t
        pblendw             xmm0,           xmm1,           65
        jmp         _m128iblendepi16_end
        _m128iblendepi16_66 label size_t
        pblendw             xmm0,           xmm1,           66
        jmp         _m128iblendepi16_end
        _m128iblendepi16_67 label size_t
        pblendw             xmm0,           xmm1,           67
        jmp         _m128iblendepi16_end
        _m128iblendepi16_68 label size_t
        pblendw             xmm0,           xmm1,           68
        jmp         _m128iblendepi16_end
        _m128iblendepi16_69 label size_t
        pblendw             xmm0,           xmm1,           69
        jmp         _m128iblendepi16_end
        _m128iblendepi16_70 label size_t
        pblendw             xmm0,           xmm1,           70
        jmp         _m128iblendepi16_end
        _m128iblendepi16_71 label size_t
        pblendw             xmm0,           xmm1,           71
        jmp         _m128iblendepi16_end
        _m128iblendepi16_72 label size_t
        pblendw             xmm0,           xmm1,           72
        jmp         _m128iblendepi16_end
        _m128iblendepi16_73 label size_t
        pblendw             xmm0,           xmm1,           73
        jmp         _m128iblendepi16_end
        _m128iblendepi16_74 label size_t
        pblendw             xmm0,           xmm1,           74
        jmp         _m128iblendepi16_end
        _m128iblendepi16_75 label size_t
        pblendw             xmm0,           xmm1,           75
        jmp         _m128iblendepi16_end
        _m128iblendepi16_76 label size_t
        pblendw             xmm0,           xmm1,           76
        jmp         _m128iblendepi16_end
        _m128iblendepi16_77 label size_t
        pblendw             xmm0,           xmm1,           77
        jmp         _m128iblendepi16_end
        _m128iblendepi16_78 label size_t
        pblendw             xmm0,           xmm1,           78
        jmp         _m128iblendepi16_end
        _m128iblendepi16_79 label size_t
        pblendw             xmm0,           xmm1,           79
        jmp         _m128iblendepi16_end
        _m128iblendepi16_80 label size_t
        pblendw             xmm0,           xmm1,           80
        jmp         _m128iblendepi16_end
        _m128iblendepi16_81 label size_t
        pblendw             xmm0,           xmm1,           81
        jmp         _m128iblendepi16_end
        _m128iblendepi16_82 label size_t
        pblendw             xmm0,           xmm1,           82
        jmp         _m128iblendepi16_end
        _m128iblendepi16_83 label size_t
        pblendw             xmm0,           xmm1,           83
        jmp         _m128iblendepi16_end
        _m128iblendepi16_84 label size_t
        pblendw             xmm0,           xmm1,           84
        jmp         _m128iblendepi16_end
        _m128iblendepi16_85 label size_t
        pblendw             xmm0,           xmm1,           85
        jmp         _m128iblendepi16_end
        _m128iblendepi16_86 label size_t
        pblendw             xmm0,           xmm1,           86
        jmp         _m128iblendepi16_end
        _m128iblendepi16_87 label size_t
        pblendw             xmm0,           xmm1,           87
        jmp         _m128iblendepi16_end
        _m128iblendepi16_88 label size_t
        pblendw             xmm0,           xmm1,           88
        jmp         _m128iblendepi16_end
        _m128iblendepi16_89 label size_t
        pblendw             xmm0,           xmm1,           89
        jmp         _m128iblendepi16_end
        _m128iblendepi16_90 label size_t
        pblendw             xmm0,           xmm1,           90
        jmp         _m128iblendepi16_end
        _m128iblendepi16_91 label size_t
        pblendw             xmm0,           xmm1,           91
        jmp         _m128iblendepi16_end
        _m128iblendepi16_92 label size_t
        pblendw             xmm0,           xmm1,           92
        jmp         _m128iblendepi16_end
        _m128iblendepi16_93 label size_t
        pblendw             xmm0,           xmm1,           93
        jmp         _m128iblendepi16_end
        _m128iblendepi16_94 label size_t
        pblendw             xmm0,           xmm1,           94
        jmp         _m128iblendepi16_end
        _m128iblendepi16_95 label size_t
        pblendw             xmm0,           xmm1,           95
        jmp         _m128iblendepi16_end
        _m128iblendepi16_96 label size_t
        pblendw             xmm0,           xmm1,           96
        jmp         _m128iblendepi16_end
        _m128iblendepi16_97 label size_t
        pblendw             xmm0,           xmm1,           97
        jmp         _m128iblendepi16_end
        _m128iblendepi16_98 label size_t
        pblendw             xmm0,           xmm1,           98
        jmp         _m128iblendepi16_end
        _m128iblendepi16_99 label size_t
        pblendw             xmm0,           xmm1,           99
        jmp         _m128iblendepi16_end
        _m128iblendepi16_100 label size_t
        pblendw             xmm0,           xmm1,           100
        jmp         _m128iblendepi16_end
        _m128iblendepi16_101 label size_t
        pblendw             xmm0,           xmm1,           101
        jmp         _m128iblendepi16_end
        _m128iblendepi16_102 label size_t
        pblendw             xmm0,           xmm1,           102
        jmp         _m128iblendepi16_end
        _m128iblendepi16_103 label size_t
        pblendw             xmm0,           xmm1,           103
        jmp         _m128iblendepi16_end
        _m128iblendepi16_104 label size_t
        pblendw             xmm0,           xmm1,           104
        jmp         _m128iblendepi16_end
        _m128iblendepi16_105 label size_t
        pblendw             xmm0,           xmm1,           105
        jmp         _m128iblendepi16_end
        _m128iblendepi16_106 label size_t
        pblendw             xmm0,           xmm1,           106
        jmp         _m128iblendepi16_end
        _m128iblendepi16_107 label size_t
        pblendw             xmm0,           xmm1,           107
        jmp         _m128iblendepi16_end
        _m128iblendepi16_108 label size_t
        pblendw             xmm0,           xmm1,           108
        jmp         _m128iblendepi16_end
        _m128iblendepi16_109 label size_t
        pblendw             xmm0,           xmm1,           109
        jmp         _m128iblendepi16_end
        _m128iblendepi16_110 label size_t
        pblendw             xmm0,           xmm1,           110
        jmp         _m128iblendepi16_end
        _m128iblendepi16_111 label size_t
        pblendw             xmm0,           xmm1,           111
        jmp         _m128iblendepi16_end
        _m128iblendepi16_112 label size_t
        pblendw             xmm0,           xmm1,           112
        jmp         _m128iblendepi16_end
        _m128iblendepi16_113 label size_t
        pblendw             xmm0,           xmm1,           113
        jmp         _m128iblendepi16_end
        _m128iblendepi16_114 label size_t
        pblendw             xmm0,           xmm1,           114
        jmp         _m128iblendepi16_end
        _m128iblendepi16_115 label size_t
        pblendw             xmm0,           xmm1,           115
        jmp         _m128iblendepi16_end
        _m128iblendepi16_116 label size_t
        pblendw             xmm0,           xmm1,           116
        jmp         _m128iblendepi16_end
        _m128iblendepi16_117 label size_t
        pblendw             xmm0,           xmm1,           117
        jmp         _m128iblendepi16_end
        _m128iblendepi16_118 label size_t
        pblendw             xmm0,           xmm1,           118
        jmp         _m128iblendepi16_end
        _m128iblendepi16_119 label size_t
        pblendw             xmm0,           xmm1,           119
        jmp         _m128iblendepi16_end
        _m128iblendepi16_120 label size_t
        pblendw             xmm0,           xmm1,           120
        jmp         _m128iblendepi16_end
        _m128iblendepi16_121 label size_t
        pblendw             xmm0,           xmm1,           121
        jmp         _m128iblendepi16_end
        _m128iblendepi16_122 label size_t
        pblendw             xmm0,           xmm1,           122
        jmp         _m128iblendepi16_end
        _m128iblendepi16_123 label size_t
        pblendw             xmm0,           xmm1,           123
        jmp         _m128iblendepi16_end
        _m128iblendepi16_124 label size_t
        pblendw             xmm0,           xmm1,           124
        jmp         _m128iblendepi16_end
        _m128iblendepi16_125 label size_t
        pblendw             xmm0,           xmm1,           125
        jmp         _m128iblendepi16_end
        _m128iblendepi16_126 label size_t
        pblendw             xmm0,           xmm1,           126
        jmp         _m128iblendepi16_end
        _m128iblendepi16_127 label size_t
        pblendw             xmm0,           xmm1,           127
        jmp         _m128iblendepi16_end
        _m128iblendepi16_128 label size_t
        pblendw             xmm0,           xmm1,           128
        jmp         _m128iblendepi16_end
        _m128iblendepi16_129 label size_t
        pblendw             xmm0,           xmm1,           129
        jmp         _m128iblendepi16_end
        _m128iblendepi16_130 label size_t
        pblendw             xmm0,           xmm1,           130
        jmp         _m128iblendepi16_end
        _m128iblendepi16_131 label size_t
        pblendw             xmm0,           xmm1,           131
        jmp         _m128iblendepi16_end
        _m128iblendepi16_132 label size_t
        pblendw             xmm0,           xmm1,           132
        jmp         _m128iblendepi16_end
        _m128iblendepi16_133 label size_t
        pblendw             xmm0,           xmm1,           133
        jmp         _m128iblendepi16_end
        _m128iblendepi16_134 label size_t
        pblendw             xmm0,           xmm1,           134
        jmp         _m128iblendepi16_end
        _m128iblendepi16_135 label size_t
        pblendw             xmm0,           xmm1,           135
        jmp         _m128iblendepi16_end
        _m128iblendepi16_136 label size_t
        pblendw             xmm0,           xmm1,           136
        jmp         _m128iblendepi16_end
        _m128iblendepi16_137 label size_t
        pblendw             xmm0,           xmm1,           137
        jmp         _m128iblendepi16_end
        _m128iblendepi16_138 label size_t
        pblendw             xmm0,           xmm1,           138
        jmp         _m128iblendepi16_end
        _m128iblendepi16_139 label size_t
        pblendw             xmm0,           xmm1,           139
        jmp         _m128iblendepi16_end
        _m128iblendepi16_140 label size_t
        pblendw             xmm0,           xmm1,           140
        jmp         _m128iblendepi16_end
        _m128iblendepi16_141 label size_t
        pblendw             xmm0,           xmm1,           141
        jmp         _m128iblendepi16_end
        _m128iblendepi16_142 label size_t
        pblendw             xmm0,           xmm1,           142
        jmp         _m128iblendepi16_end
        _m128iblendepi16_143 label size_t
        pblendw             xmm0,           xmm1,           143
        jmp         _m128iblendepi16_end
        _m128iblendepi16_144 label size_t
        pblendw             xmm0,           xmm1,           144
        jmp         _m128iblendepi16_end
        _m128iblendepi16_145 label size_t
        pblendw             xmm0,           xmm1,           145
        jmp         _m128iblendepi16_end
        _m128iblendepi16_146 label size_t
        pblendw             xmm0,           xmm1,           146
        jmp         _m128iblendepi16_end
        _m128iblendepi16_147 label size_t
        pblendw             xmm0,           xmm1,           147
        jmp         _m128iblendepi16_end
        _m128iblendepi16_148 label size_t
        pblendw             xmm0,           xmm1,           148
        jmp         _m128iblendepi16_end
        _m128iblendepi16_149 label size_t
        pblendw             xmm0,           xmm1,           149
        jmp         _m128iblendepi16_end
        _m128iblendepi16_150 label size_t
        pblendw             xmm0,           xmm1,           150
        jmp         _m128iblendepi16_end
        _m128iblendepi16_151 label size_t
        pblendw             xmm0,           xmm1,           151
        jmp         _m128iblendepi16_end
        _m128iblendepi16_152 label size_t
        pblendw             xmm0,           xmm1,           152
        jmp         _m128iblendepi16_end
        _m128iblendepi16_153 label size_t
        pblendw             xmm0,           xmm1,           153
        jmp         _m128iblendepi16_end
        _m128iblendepi16_154 label size_t
        pblendw             xmm0,           xmm1,           154
        jmp         _m128iblendepi16_end
        _m128iblendepi16_155 label size_t
        pblendw             xmm0,           xmm1,           155
        jmp         _m128iblendepi16_end
        _m128iblendepi16_156 label size_t
        pblendw             xmm0,           xmm1,           156
        jmp         _m128iblendepi16_end
        _m128iblendepi16_157 label size_t
        pblendw             xmm0,           xmm1,           157
        jmp         _m128iblendepi16_end
        _m128iblendepi16_158 label size_t
        pblendw             xmm0,           xmm1,           158
        jmp         _m128iblendepi16_end
        _m128iblendepi16_159 label size_t
        pblendw             xmm0,           xmm1,           159
        jmp         _m128iblendepi16_end
        _m128iblendepi16_160 label size_t
        pblendw             xmm0,           xmm1,           160
        jmp         _m128iblendepi16_end
        _m128iblendepi16_161 label size_t
        pblendw             xmm0,           xmm1,           161
        jmp         _m128iblendepi16_end
        _m128iblendepi16_162 label size_t
        pblendw             xmm0,           xmm1,           162
        jmp         _m128iblendepi16_end
        _m128iblendepi16_163 label size_t
        pblendw             xmm0,           xmm1,           163
        jmp         _m128iblendepi16_end
        _m128iblendepi16_164 label size_t
        pblendw             xmm0,           xmm1,           164
        jmp         _m128iblendepi16_end
        _m128iblendepi16_165 label size_t
        pblendw             xmm0,           xmm1,           165
        jmp         _m128iblendepi16_end
        _m128iblendepi16_166 label size_t
        pblendw             xmm0,           xmm1,           166
        jmp         _m128iblendepi16_end
        _m128iblendepi16_167 label size_t
        pblendw             xmm0,           xmm1,           167
        jmp         _m128iblendepi16_end
        _m128iblendepi16_168 label size_t
        pblendw             xmm0,           xmm1,           168
        jmp         _m128iblendepi16_end
        _m128iblendepi16_169 label size_t
        pblendw             xmm0,           xmm1,           169
        jmp         _m128iblendepi16_end
        _m128iblendepi16_170 label size_t
        pblendw             xmm0,           xmm1,           170
        jmp         _m128iblendepi16_end
        _m128iblendepi16_171 label size_t
        pblendw             xmm0,           xmm1,           171
        jmp         _m128iblendepi16_end
        _m128iblendepi16_172 label size_t
        pblendw             xmm0,           xmm1,           172
        jmp         _m128iblendepi16_end
        _m128iblendepi16_173 label size_t
        pblendw             xmm0,           xmm1,           173
        jmp         _m128iblendepi16_end
        _m128iblendepi16_174 label size_t
        pblendw             xmm0,           xmm1,           174
        jmp         _m128iblendepi16_end
        _m128iblendepi16_175 label size_t
        pblendw             xmm0,           xmm1,           175
        jmp         _m128iblendepi16_end
        _m128iblendepi16_176 label size_t
        pblendw             xmm0,           xmm1,           176
        jmp         _m128iblendepi16_end
        _m128iblendepi16_177 label size_t
        pblendw             xmm0,           xmm1,           177
        jmp         _m128iblendepi16_end
        _m128iblendepi16_178 label size_t
        pblendw             xmm0,           xmm1,           178
        jmp         _m128iblendepi16_end
        _m128iblendepi16_179 label size_t
        pblendw             xmm0,           xmm1,           179
        jmp         _m128iblendepi16_end
        _m128iblendepi16_180 label size_t
        pblendw             xmm0,           xmm1,           180
        jmp         _m128iblendepi16_end
        _m128iblendepi16_181 label size_t
        pblendw             xmm0,           xmm1,           181
        jmp         _m128iblendepi16_end
        _m128iblendepi16_182 label size_t
        pblendw             xmm0,           xmm1,           182
        jmp         _m128iblendepi16_end
        _m128iblendepi16_183 label size_t
        pblendw             xmm0,           xmm1,           183
        jmp         _m128iblendepi16_end
        _m128iblendepi16_184 label size_t
        pblendw             xmm0,           xmm1,           184
        jmp         _m128iblendepi16_end
        _m128iblendepi16_185 label size_t
        pblendw             xmm0,           xmm1,           185
        jmp         _m128iblendepi16_end
        _m128iblendepi16_186 label size_t
        pblendw             xmm0,           xmm1,           186
        jmp         _m128iblendepi16_end
        _m128iblendepi16_187 label size_t
        pblendw             xmm0,           xmm1,           187
        jmp         _m128iblendepi16_end
        _m128iblendepi16_188 label size_t
        pblendw             xmm0,           xmm1,           188
        jmp         _m128iblendepi16_end
        _m128iblendepi16_189 label size_t
        pblendw             xmm0,           xmm1,           189
        jmp         _m128iblendepi16_end
        _m128iblendepi16_190 label size_t
        pblendw             xmm0,           xmm1,           190
        jmp         _m128iblendepi16_end
        _m128iblendepi16_191 label size_t
        pblendw             xmm0,           xmm1,           191
        jmp         _m128iblendepi16_end
        _m128iblendepi16_192 label size_t
        pblendw             xmm0,           xmm1,           192
        jmp         _m128iblendepi16_end
        _m128iblendepi16_193 label size_t
        pblendw             xmm0,           xmm1,           193
        jmp         _m128iblendepi16_end
        _m128iblendepi16_194 label size_t
        pblendw             xmm0,           xmm1,           194
        jmp         _m128iblendepi16_end
        _m128iblendepi16_195 label size_t
        pblendw             xmm0,           xmm1,           195
        jmp         _m128iblendepi16_end
        _m128iblendepi16_196 label size_t
        pblendw             xmm0,           xmm1,           196
        jmp         _m128iblendepi16_end
        _m128iblendepi16_197 label size_t
        pblendw             xmm0,           xmm1,           197
        jmp         _m128iblendepi16_end
        _m128iblendepi16_198 label size_t
        pblendw             xmm0,           xmm1,           198
        jmp         _m128iblendepi16_end
        _m128iblendepi16_199 label size_t
        pblendw             xmm0,           xmm1,           199
        jmp         _m128iblendepi16_end
        _m128iblendepi16_200 label size_t
        pblendw             xmm0,           xmm1,           200
        jmp         _m128iblendepi16_end
        _m128iblendepi16_201 label size_t
        pblendw             xmm0,           xmm1,           201
        jmp         _m128iblendepi16_end
        _m128iblendepi16_202 label size_t
        pblendw             xmm0,           xmm1,           202
        jmp         _m128iblendepi16_end
        _m128iblendepi16_203 label size_t
        pblendw             xmm0,           xmm1,           203
        jmp         _m128iblendepi16_end
        _m128iblendepi16_204 label size_t
        pblendw             xmm0,           xmm1,           204
        jmp         _m128iblendepi16_end
        _m128iblendepi16_205 label size_t
        pblendw             xmm0,           xmm1,           205
        jmp         _m128iblendepi16_end
        _m128iblendepi16_206 label size_t
        pblendw             xmm0,           xmm1,           206
        jmp         _m128iblendepi16_end
        _m128iblendepi16_207 label size_t
        pblendw             xmm0,           xmm1,           207
        jmp         _m128iblendepi16_end
        _m128iblendepi16_208 label size_t
        pblendw             xmm0,           xmm1,           208
        jmp         _m128iblendepi16_end
        _m128iblendepi16_209 label size_t
        pblendw             xmm0,           xmm1,           209
        jmp         _m128iblendepi16_end
        _m128iblendepi16_210 label size_t
        pblendw             xmm0,           xmm1,           210
        jmp         _m128iblendepi16_end
        _m128iblendepi16_211 label size_t
        pblendw             xmm0,           xmm1,           211
        jmp         _m128iblendepi16_end
        _m128iblendepi16_212 label size_t
        pblendw             xmm0,           xmm1,           212
        jmp         _m128iblendepi16_end
        _m128iblendepi16_213 label size_t
        pblendw             xmm0,           xmm1,           213
        jmp         _m128iblendepi16_end
        _m128iblendepi16_214 label size_t
        pblendw             xmm0,           xmm1,           214
        jmp         _m128iblendepi16_end
        _m128iblendepi16_215 label size_t
        pblendw             xmm0,           xmm1,           215
        jmp         _m128iblendepi16_end
        _m128iblendepi16_216 label size_t
        pblendw             xmm0,           xmm1,           216
        jmp         _m128iblendepi16_end
        _m128iblendepi16_217 label size_t
        pblendw             xmm0,           xmm1,           217
        jmp         _m128iblendepi16_end
        _m128iblendepi16_218 label size_t
        pblendw             xmm0,           xmm1,           218
        jmp         _m128iblendepi16_end
        _m128iblendepi16_219 label size_t
        pblendw             xmm0,           xmm1,           219
        jmp         _m128iblendepi16_end
        _m128iblendepi16_220 label size_t
        pblendw             xmm0,           xmm1,           220
        jmp         _m128iblendepi16_end
        _m128iblendepi16_221 label size_t
        pblendw             xmm0,           xmm1,           221
        jmp         _m128iblendepi16_end
        _m128iblendepi16_222 label size_t
        pblendw             xmm0,           xmm1,           222
        jmp         _m128iblendepi16_end
        _m128iblendepi16_223 label size_t
        pblendw             xmm0,           xmm1,           223
        jmp         _m128iblendepi16_end
        _m128iblendepi16_224 label size_t
        pblendw             xmm0,           xmm1,           224
        jmp         _m128iblendepi16_end
        _m128iblendepi16_225 label size_t
        pblendw             xmm0,           xmm1,           225
        jmp         _m128iblendepi16_end
        _m128iblendepi16_226 label size_t
        pblendw             xmm0,           xmm1,           226
        jmp         _m128iblendepi16_end
        _m128iblendepi16_227 label size_t
        pblendw             xmm0,           xmm1,           227
        jmp         _m128iblendepi16_end
        _m128iblendepi16_228 label size_t
        pblendw             xmm0,           xmm1,           228
        jmp         _m128iblendepi16_end
        _m128iblendepi16_229 label size_t
        pblendw             xmm0,           xmm1,           229
        jmp         _m128iblendepi16_end
        _m128iblendepi16_230 label size_t
        pblendw             xmm0,           xmm1,           230
        jmp         _m128iblendepi16_end
        _m128iblendepi16_231 label size_t
        pblendw             xmm0,           xmm1,           231
        jmp         _m128iblendepi16_end
        _m128iblendepi16_232 label size_t
        pblendw             xmm0,           xmm1,           232
        jmp         _m128iblendepi16_end
        _m128iblendepi16_233 label size_t
        pblendw             xmm0,           xmm1,           233
        jmp         _m128iblendepi16_end
        _m128iblendepi16_234 label size_t
        pblendw             xmm0,           xmm1,           234
        jmp         _m128iblendepi16_end
        _m128iblendepi16_235 label size_t
        pblendw             xmm0,           xmm1,           235
        jmp         _m128iblendepi16_end
        _m128iblendepi16_236 label size_t
        pblendw             xmm0,           xmm1,           236
        jmp         _m128iblendepi16_end
        _m128iblendepi16_237 label size_t
        pblendw             xmm0,           xmm1,           237
        jmp         _m128iblendepi16_end
        _m128iblendepi16_238 label size_t
        pblendw             xmm0,           xmm1,           238
        jmp         _m128iblendepi16_end
        _m128iblendepi16_239 label size_t
        pblendw             xmm0,           xmm1,           239
        jmp         _m128iblendepi16_end
        _m128iblendepi16_240 label size_t
        pblendw             xmm0,           xmm1,           240
        jmp         _m128iblendepi16_end
        _m128iblendepi16_241 label size_t
        pblendw             xmm0,           xmm1,           241
        jmp         _m128iblendepi16_end
        _m128iblendepi16_242 label size_t
        pblendw             xmm0,           xmm1,           242
        jmp         _m128iblendepi16_end
        _m128iblendepi16_243 label size_t
        pblendw             xmm0,           xmm1,           243
        jmp         _m128iblendepi16_end
        _m128iblendepi16_244 label size_t
        pblendw             xmm0,           xmm1,           244
        jmp         _m128iblendepi16_end
        _m128iblendepi16_245 label size_t
        pblendw             xmm0,           xmm1,           245
        jmp         _m128iblendepi16_end
        _m128iblendepi16_246 label size_t
        pblendw             xmm0,           xmm1,           246
        jmp         _m128iblendepi16_end
        _m128iblendepi16_247 label size_t
        pblendw             xmm0,           xmm1,           247
        jmp         _m128iblendepi16_end
        _m128iblendepi16_248 label size_t
        pblendw             xmm0,           xmm1,           248
        jmp         _m128iblendepi16_end
        _m128iblendepi16_249 label size_t
        pblendw             xmm0,           xmm1,           249
        jmp         _m128iblendepi16_end
        _m128iblendepi16_250 label size_t
        pblendw             xmm0,           xmm1,           250
        jmp         _m128iblendepi16_end
        _m128iblendepi16_251 label size_t
        pblendw             xmm0,           xmm1,           251
        jmp         _m128iblendepi16_end
        _m128iblendepi16_252 label size_t
        pblendw             xmm0,           xmm1,           252
        jmp         _m128iblendepi16_end
        _m128iblendepi16_253 label size_t
        pblendw             xmm0,           xmm1,           253
        jmp         _m128iblendepi16_end
        _m128iblendepi16_254 label size_t
        pblendw             xmm0,           xmm1,           254
        jmp         _m128iblendepi16_end
        _m128iblendepi16_255 label size_t
        pblendw             xmm0,           xmm1,           255
        ;jmp         _m128iblendepi16_end

        _m128iblendepi16_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_blend_0000_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_blend_0001_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_blend_0010_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_blend_0011_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_blend_0100_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           4
        ret
procend

procstart _uX_mm_blend_0101_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           5
        ret
procend

procstart _uX_mm_blend_0110_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           6
        ret
procend

procstart _uX_mm_blend_0111_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           7
        ret
procend

procstart _uX_mm_blend_1000_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           8
        ret
procend

procstart _uX_mm_blend_1001_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           9
        ret
procend

procstart _uX_mm_blend_1010_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           10
        ret
procend

procstart _uX_mm_blend_1011_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           11
        ret
procend

procstart _uX_mm_blend_1100_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           12
        ret
procend

procstart _uX_mm_blend_1101_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           13
        ret
procend

procstart _uX_mm_blend_1110_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           14
        ret
procend

procstart _uX_mm_blend_1111_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendps             xmm0,           xmm1,           15
        ret
procend

procstart _uX_mm_blend_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp2() < 0) || (rp2() > 15))
        jmp         _m128blendps_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp2()]
        jmp     dword ptr [_m128blendpsjmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128blendpsjmptable]
        mov             rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp             rbx
        endif
        
        _m128blendps_0 label size_t
        blendps             xmm0,           xmm1,           0
        jmp         _m128blendps_end
        _m128blendps_1 label size_t
        blendps             xmm0,           xmm1,           1
        jmp         _m128blendps_end
        _m128blendps_2 label size_t
        blendps             xmm0,           xmm1,           2
        jmp         _m128blendps_end
        _m128blendps_3 label size_t
        blendps             xmm0,           xmm1,           3
        jmp         _m128blendps_end
        _m128blendps_4 label size_t
        blendps             xmm0,           xmm1,           4
        jmp         _m128blendps_end
        _m128blendps_5 label size_t
        blendps             xmm0,           xmm1,           5
        jmp         _m128blendps_end
        _m128blendps_6 label size_t
        blendps             xmm0,           xmm1,           6
        jmp         _m128blendps_end
        _m128blendps_7 label size_t
        blendps             xmm0,           xmm1,           7
        jmp         _m128blendps_end
        _m128blendps_8 label size_t
        blendps             xmm0,           xmm1,           8
        jmp         _m128blendps_end
        _m128blendps_9 label size_t
        blendps             xmm0,           xmm1,           9
        jmp         _m128blendps_end
        _m128blendps_10 label size_t
        blendps             xmm0,           xmm1,           10
        jmp         _m128blendps_end
        _m128blendps_11 label size_t
        blendps             xmm0,           xmm1,           11
        jmp         _m128blendps_end
        _m128blendps_12 label size_t
        blendps             xmm0,           xmm1,           12
        jmp         _m128blendps_end
        _m128blendps_13 label size_t
        blendps             xmm0,           xmm1,           13
        jmp         _m128blendps_end
        _m128blendps_14 label size_t
        blendps             xmm0,           xmm1,           14
        jmp         _m128blendps_end
        _m128blendps_15 label size_t
        blendps             xmm0,           xmm1,           15
        ;jmp         _m128blendps_end

        _m128blendps_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_blend_00_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendpd             xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_blend_01_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendpd             xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_blend_10_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendpd             xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_blend_11_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        blendpd             xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_blend, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp2() < 0) || (rp2() > 3))
        jmp         _m128dblendpd_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp2()]
        jmp     dword ptr [_m128dblendpdjmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128dblendpdjmptable]
        mov             rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp             rbx
        endif

        _m128dblendpd_0 label size_t
        blendpd             xmm0,           xmm1,           0
        jmp         _m128dblendpd_end
        _m128dblendpd_1 label size_t
        blendpd             xmm0,           xmm1,           1
        jmp         _m128dblendpd_end
        _m128dblendpd_2 label size_t
        blendpd             xmm0,           xmm1,           2
        jmp         _m128dblendpd_end
        _m128dblendpd_3 label size_t
        blendpd             xmm0,           xmm1,           3
        ;jmp         _m128dblendpd_end

        _m128dblendpd_end:
        pop         rbase()
        ret
procend

;************************************
; Dot product instructions
;************************************

procstart _uX_mm_dp_ps_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_dp_ps_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_dp_ps_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_dp_ps_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_dp_ps_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           4
        ret
procend

procstart _uX_mm_dp_ps_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           5
        ret
procend

procstart _uX_mm_dp_ps_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           6
        ret
procend

procstart _uX_mm_dp_ps_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           7
        ret
procend

procstart _uX_mm_dp_ps_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           8
        ret
procend

procstart _uX_mm_dp_ps_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           9
        ret
procend

procstart _uX_mm_dp_ps_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           10
        ret
procend

procstart _uX_mm_dp_ps_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           11
        ret
procend

procstart _uX_mm_dp_ps_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           12
        ret
procend

procstart _uX_mm_dp_ps_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           13
        ret
procend

procstart _uX_mm_dp_ps_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           14
        ret
procend

procstart _uX_mm_dp_ps_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           15
        ret
procend

procstart _uX_mm_dp_ps_16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           16
        ret
procend

procstart _uX_mm_dp_ps_17, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           17
        ret
procend

procstart _uX_mm_dp_ps_18, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           18
        ret
procend

procstart _uX_mm_dp_ps_19, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           19
        ret
procend

procstart _uX_mm_dp_ps_20, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           20
        ret
procend

procstart _uX_mm_dp_ps_21, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           21
        ret
procend

procstart _uX_mm_dp_ps_22, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           22
        ret
procend

procstart _uX_mm_dp_ps_23, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           23
        ret
procend

procstart _uX_mm_dp_ps_24, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           24
        ret
procend

procstart _uX_mm_dp_ps_25, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           25
        ret
procend

procstart _uX_mm_dp_ps_26, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           26
        ret
procend

procstart _uX_mm_dp_ps_27, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           27
        ret
procend

procstart _uX_mm_dp_ps_28, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           28
        ret
procend

procstart _uX_mm_dp_ps_29, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           29
        ret
procend

procstart _uX_mm_dp_ps_30, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           30
        ret
procend

procstart _uX_mm_dp_ps_31, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           31
        ret
procend

procstart _uX_mm_dp_ps_32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           32
        ret
procend

procstart _uX_mm_dp_ps_33, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           33
        ret
procend

procstart _uX_mm_dp_ps_34, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           34
        ret
procend

procstart _uX_mm_dp_ps_35, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           35
        ret
procend

procstart _uX_mm_dp_ps_36, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           36
        ret
procend

procstart _uX_mm_dp_ps_37, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           37
        ret
procend

procstart _uX_mm_dp_ps_38, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           38
        ret
procend

procstart _uX_mm_dp_ps_39, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           39
        ret
procend

procstart _uX_mm_dp_ps_40, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           40
        ret
procend

procstart _uX_mm_dp_ps_41, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           41
        ret
procend

procstart _uX_mm_dp_ps_42, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           42
        ret
procend

procstart _uX_mm_dp_ps_43, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           43
        ret
procend

procstart _uX_mm_dp_ps_44, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           44
        ret
procend

procstart _uX_mm_dp_ps_45, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           45
        ret
procend

procstart _uX_mm_dp_ps_46, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           46
        ret
procend

procstart _uX_mm_dp_ps_47, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           47
        ret
procend

procstart _uX_mm_dp_ps_48, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           48
        ret
procend

procstart _uX_mm_dp_ps_49, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           49
        ret
procend

procstart _uX_mm_dp_ps_50, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           50
        ret
procend

procstart _uX_mm_dp_ps_51, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           51
        ret
procend

procstart _uX_mm_dp_ps_52, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           52
        ret
procend

procstart _uX_mm_dp_ps_53, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           53
        ret
procend

procstart _uX_mm_dp_ps_54, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           54
        ret
procend

procstart _uX_mm_dp_ps_55, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           55
        ret
procend

procstart _uX_mm_dp_ps_56, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           56
        ret
procend

procstart _uX_mm_dp_ps_57, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           57
        ret
procend

procstart _uX_mm_dp_ps_58, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           58
        ret
procend

procstart _uX_mm_dp_ps_59, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           59
        ret
procend

procstart _uX_mm_dp_ps_60, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           60
        ret
procend

procstart _uX_mm_dp_ps_61, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           61
        ret
procend

procstart _uX_mm_dp_ps_62, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           62
        ret
procend

procstart _uX_mm_dp_ps_63, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           63
        ret
procend

procstart _uX_mm_dp_ps_64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           64
        ret
procend

procstart _uX_mm_dp_ps_65, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           65
        ret
procend

procstart _uX_mm_dp_ps_66, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           66
        ret
procend

procstart _uX_mm_dp_ps_67, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           67
        ret
procend

procstart _uX_mm_dp_ps_68, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           68
        ret
procend

procstart _uX_mm_dp_ps_69, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           69
        ret
procend

procstart _uX_mm_dp_ps_70, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           70
        ret
procend

procstart _uX_mm_dp_ps_71, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           71
        ret
procend

procstart _uX_mm_dp_ps_72, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           72
        ret
procend

procstart _uX_mm_dp_ps_73, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           73
        ret
procend

procstart _uX_mm_dp_ps_74, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           74
        ret
procend

procstart _uX_mm_dp_ps_75, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           75
        ret
procend

procstart _uX_mm_dp_ps_76, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           76
        ret
procend

procstart _uX_mm_dp_ps_77, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           77
        ret
procend

procstart _uX_mm_dp_ps_78, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           78
        ret
procend

procstart _uX_mm_dp_ps_79, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           79
        ret
procend

procstart _uX_mm_dp_ps_80, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           80
        ret
procend

procstart _uX_mm_dp_ps_81, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           81
        ret
procend

procstart _uX_mm_dp_ps_82, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           82
        ret
procend

procstart _uX_mm_dp_ps_83, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           83
        ret
procend

procstart _uX_mm_dp_ps_84, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           84
        ret
procend

procstart _uX_mm_dp_ps_85, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           85
        ret
procend

procstart _uX_mm_dp_ps_86, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           86
        ret
procend

procstart _uX_mm_dp_ps_87, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           87
        ret
procend

procstart _uX_mm_dp_ps_88, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           88
        ret
procend

procstart _uX_mm_dp_ps_89, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           89
        ret
procend

procstart _uX_mm_dp_ps_90, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           90
        ret
procend

procstart _uX_mm_dp_ps_91, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           91
        ret
procend

procstart _uX_mm_dp_ps_92, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           92
        ret
procend

procstart _uX_mm_dp_ps_93, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           93
        ret
procend

procstart _uX_mm_dp_ps_94, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           94
        ret
procend

procstart _uX_mm_dp_ps_95, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           95
        ret
procend

procstart _uX_mm_dp_ps_96, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           96
        ret
procend

procstart _uX_mm_dp_ps_97, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           97
        ret
procend

procstart _uX_mm_dp_ps_98, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           98
        ret
procend

procstart _uX_mm_dp_ps_99, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           99
        ret
procend

procstart _uX_mm_dp_ps_100, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           100
        ret
procend

procstart _uX_mm_dp_ps_101, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           101
        ret
procend

procstart _uX_mm_dp_ps_102, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           102
        ret
procend

procstart _uX_mm_dp_ps_103, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           103
        ret
procend

procstart _uX_mm_dp_ps_104, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           104
        ret
procend

procstart _uX_mm_dp_ps_105, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           105
        ret
procend

procstart _uX_mm_dp_ps_106, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           106
        ret
procend

procstart _uX_mm_dp_ps_107, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           107
        ret
procend

procstart _uX_mm_dp_ps_108, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           108
        ret
procend

procstart _uX_mm_dp_ps_109, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           109
        ret
procend

procstart _uX_mm_dp_ps_110, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           110
        ret
procend

procstart _uX_mm_dp_ps_111, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           111
        ret
procend

procstart _uX_mm_dp_ps_112, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           112
        ret
procend

procstart _uX_mm_dp_ps_113, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           113
        ret
procend

procstart _uX_mm_dp_ps_114, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           114
        ret
procend

procstart _uX_mm_dp_ps_115, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           115
        ret
procend

procstart _uX_mm_dp_ps_116, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           116
        ret
procend

procstart _uX_mm_dp_ps_117, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           117
        ret
procend

procstart _uX_mm_dp_ps_118, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           118
        ret
procend

procstart _uX_mm_dp_ps_119, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           119
        ret
procend

procstart _uX_mm_dp_ps_120, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           120
        ret
procend

procstart _uX_mm_dp_ps_121, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           121
        ret
procend

procstart _uX_mm_dp_ps_122, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           122
        ret
procend

procstart _uX_mm_dp_ps_123, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           123
        ret
procend

procstart _uX_mm_dp_ps_124, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           124
        ret
procend

procstart _uX_mm_dp_ps_125, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           125
        ret
procend

procstart _uX_mm_dp_ps_126, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           126
        ret
procend

procstart _uX_mm_dp_ps_127, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           127
        ret
procend

procstart _uX_mm_dp_ps_128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           128
        ret
procend

procstart _uX_mm_dp_ps_129, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           129
        ret
procend

procstart _uX_mm_dp_ps_130, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           130
        ret
procend

procstart _uX_mm_dp_ps_131, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           131
        ret
procend

procstart _uX_mm_dp_ps_132, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           132
        ret
procend

procstart _uX_mm_dp_ps_133, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           133
        ret
procend

procstart _uX_mm_dp_ps_134, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           134
        ret
procend

procstart _uX_mm_dp_ps_135, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           135
        ret
procend

procstart _uX_mm_dp_ps_136, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           136
        ret
procend

procstart _uX_mm_dp_ps_137, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           137
        ret
procend

procstart _uX_mm_dp_ps_138, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           138
        ret
procend

procstart _uX_mm_dp_ps_139, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           139
        ret
procend

procstart _uX_mm_dp_ps_140, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           140
        ret
procend

procstart _uX_mm_dp_ps_141, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           141
        ret
procend

procstart _uX_mm_dp_ps_142, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           142
        ret
procend

procstart _uX_mm_dp_ps_143, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           143
        ret
procend

procstart _uX_mm_dp_ps_144, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           144
        ret
procend

procstart _uX_mm_dp_ps_145, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           145
        ret
procend

procstart _uX_mm_dp_ps_146, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        dpps                xmm0,           xmm1,           146
        ret
procend

procstart _uX_mm_dp_ps_147, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           147
        ret
procend

procstart _uX_mm_dp_ps_148, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           148
        ret
procend

procstart _uX_mm_dp_ps_149, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           149
        ret
procend

procstart _uX_mm_dp_ps_150, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           150
        ret
procend

procstart _uX_mm_dp_ps_151, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           151
        ret
procend

procstart _uX_mm_dp_ps_152, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           152
        ret
procend

procstart _uX_mm_dp_ps_153, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           153
        ret
procend

procstart _uX_mm_dp_ps_154, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        dpps                xmm0,           xmm1,           154
        ret
procend

procstart _uX_mm_dp_ps_155, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           155
        ret
procend

procstart _uX_mm_dp_ps_156, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           156
        ret
procend

procstart _uX_mm_dp_ps_157, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           157
        ret
procend

procstart _uX_mm_dp_ps_158, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           158
        ret
procend

procstart _uX_mm_dp_ps_159, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           159
        ret
procend

procstart _uX_mm_dp_ps_160, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           160
        ret
procend

procstart _uX_mm_dp_ps_161, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           161
        ret
procend

procstart _uX_mm_dp_ps_162, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           162
        ret
procend

procstart _uX_mm_dp_ps_163, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           163
        ret
procend

procstart _uX_mm_dp_ps_164, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           164
        ret
procend

procstart _uX_mm_dp_ps_165, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           165
        ret
procend

procstart _uX_mm_dp_ps_166, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           166
        ret
procend

procstart _uX_mm_dp_ps_167, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           167
        ret
procend

procstart _uX_mm_dp_ps_168, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           168
        ret
procend

procstart _uX_mm_dp_ps_169, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           169
        ret
procend

procstart _uX_mm_dp_ps_170, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           170
        ret
procend

procstart _uX_mm_dp_ps_171, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           171
        ret
procend

procstart _uX_mm_dp_ps_172, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           172
        ret
procend

procstart _uX_mm_dp_ps_173, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           173
        ret
procend

procstart _uX_mm_dp_ps_174, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        dpps                xmm0,           xmm1,           174
        ret
procend

procstart _uX_mm_dp_ps_175, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           175
        ret
procend

procstart _uX_mm_dp_ps_176, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           176
        ret
procend

procstart _uX_mm_dp_ps_177, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           177
        ret
procend

procstart _uX_mm_dp_ps_178, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           178
        ret
procend

procstart _uX_mm_dp_ps_179, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           179
        ret
procend

procstart _uX_mm_dp_ps_180, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           180
        ret
procend

procstart _uX_mm_dp_ps_181, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           181
        ret
procend

procstart _uX_mm_dp_ps_182, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           182
        ret
procend

procstart _uX_mm_dp_ps_183, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           183
        ret
procend

procstart _uX_mm_dp_ps_184, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           184
        ret
procend

procstart _uX_mm_dp_ps_185, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           185
        ret
procend

procstart _uX_mm_dp_ps_186, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           186
        ret
procend

procstart _uX_mm_dp_ps_187, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           187
        ret
procend

procstart _uX_mm_dp_ps_188, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           188
        ret
procend

procstart _uX_mm_dp_ps_189, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           189
        ret
procend

procstart _uX_mm_dp_ps_190, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           190
        ret
procend

procstart _uX_mm_dp_ps_191, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           191
        ret
procend

procstart _uX_mm_dp_ps_192, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           192
        ret
procend

procstart _uX_mm_dp_ps_193, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           193
        ret
procend

procstart _uX_mm_dp_ps_194, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           194
        ret
procend

procstart _uX_mm_dp_ps_195, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           195
        ret
procend

procstart _uX_mm_dp_ps_196, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           196
        ret
procend

procstart _uX_mm_dp_ps_197, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           197
        ret
procend

procstart _uX_mm_dp_ps_198, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           198
        ret
procend

procstart _uX_mm_dp_ps_199, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           199
        ret
procend

procstart _uX_mm_dp_ps_200, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           200
        ret
procend

procstart _uX_mm_dp_ps_201, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           201
        ret
procend

procstart _uX_mm_dp_ps_202, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           202
        ret
procend

procstart _uX_mm_dp_ps_203, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           203
        ret
procend

procstart _uX_mm_dp_ps_204, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           204
        ret
procend

procstart _uX_mm_dp_ps_205, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           205
        ret
procend

procstart _uX_mm_dp_ps_206, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           206
        ret
procend

procstart _uX_mm_dp_ps_207, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           207
        ret
procend

procstart _uX_mm_dp_ps_208, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           208
        ret
procend

procstart _uX_mm_dp_ps_209, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           209
        ret
procend

procstart _uX_mm_dp_ps_210, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           210
        ret
procend

procstart _uX_mm_dp_ps_211, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           211
        ret
procend

procstart _uX_mm_dp_ps_212, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           212
        ret
procend

procstart _uX_mm_dp_ps_213, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           213
        ret
procend

procstart _uX_mm_dp_ps_214, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           214
        ret
procend

procstart _uX_mm_dp_ps_215, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           215
        ret
procend

procstart _uX_mm_dp_ps_216, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           216
        ret
procend

procstart _uX_mm_dp_ps_217, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           217
        ret
procend

procstart _uX_mm_dp_ps_218, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           218
        ret
procend

procstart _uX_mm_dp_ps_219, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           219
        ret
procend

procstart _uX_mm_dp_ps_220, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           220
        ret
procend

procstart _uX_mm_dp_ps_221, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           221
        ret
procend

procstart _uX_mm_dp_ps_222, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           222
        ret
procend

procstart _uX_mm_dp_ps_223, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           223
        ret
procend

procstart _uX_mm_dp_ps_224, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           224
        ret
procend

procstart _uX_mm_dp_ps_225, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           225
        ret
procend

procstart _uX_mm_dp_ps_226, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           226
        ret
procend

procstart _uX_mm_dp_ps_227, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           227
        ret
procend

procstart _uX_mm_dp_ps_228, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           228
        ret
procend

procstart _uX_mm_dp_ps_229, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           229
        ret
procend

procstart _uX_mm_dp_ps_230, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           230
        ret
procend

procstart _uX_mm_dp_ps_231, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           231
        ret
procend

procstart _uX_mm_dp_ps_232, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           232
        ret
procend

procstart _uX_mm_dp_ps_233, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           233
        ret
procend

procstart _uX_mm_dp_ps_234, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           234
        ret
procend

procstart _uX_mm_dp_ps_235, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           235
        ret
procend

procstart _uX_mm_dp_ps_236, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           236
        ret
procend

procstart _uX_mm_dp_ps_237, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           237
        ret
procend

procstart _uX_mm_dp_ps_238, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           238
        ret
procend

procstart _uX_mm_dp_ps_239, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           239
        ret
procend

procstart _uX_mm_dp_ps_240, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           240
        ret
procend

procstart _uX_mm_dp_ps_241, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           241
        ret
procend

procstart _uX_mm_dp_ps_242, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           242
        ret
procend

procstart _uX_mm_dp_ps_243, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           243
        ret
procend

procstart _uX_mm_dp_ps_244, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           244
        ret
procend

procstart _uX_mm_dp_ps_245, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           245
        ret
procend

procstart _uX_mm_dp_ps_246, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           246
        ret
procend

procstart _uX_mm_dp_ps_247, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           247
        ret
procend

procstart _uX_mm_dp_ps_248, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           248
        ret
procend

procstart _uX_mm_dp_ps_249, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           249
        ret
procend

procstart _uX_mm_dp_ps_250, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           250
        ret
procend

procstart _uX_mm_dp_ps_251, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           251
        ret
procend

procstart _uX_mm_dp_ps_252, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           252
        ret
procend

procstart _uX_mm_dp_ps_253, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           253
        ret
procend

procstart _uX_mm_dp_ps_254, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           254
        ret
procend

procstart _uX_mm_dp_ps_255, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dpps                xmm0,           xmm1,           255
        ret
procend

procstart _uX_mm_dp_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp2() < 0) || (rp2() > 255))
        jmp         _m128dpps_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp2()]
        jmp     dword ptr [_m128dppsjmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128dppsjmptable]
        mov             rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp             rbx
        endif

        _m128dpps_0 label size_t
        dpps                xmm0,           xmm1,           0
        jmp         _m128dpps_end
        _m128dpps_1 label size_t
        dpps                xmm0,           xmm1,           1
        jmp         _m128dpps_end
        _m128dpps_2 label size_t
        dpps                xmm0,           xmm1,           2
        jmp         _m128dpps_end
        _m128dpps_3 label size_t
        dpps                xmm0,           xmm1,           3
        jmp         _m128dpps_end
        _m128dpps_4 label size_t
        dpps                xmm0,           xmm1,           4
        jmp         _m128dpps_end
        _m128dpps_5 label size_t
        dpps                xmm0,           xmm1,           5
        jmp         _m128dpps_end
        _m128dpps_6 label size_t
        dpps                xmm0,           xmm1,           6
        jmp         _m128dpps_end
        _m128dpps_7 label size_t
        dpps                xmm0,           xmm1,           7
        jmp         _m128dpps_end
        _m128dpps_8 label size_t
        dpps                xmm0,           xmm1,           8
        jmp         _m128dpps_end
        _m128dpps_9 label size_t
        dpps                xmm0,           xmm1,           9
        jmp         _m128dpps_end
        _m128dpps_10 label size_t
        dpps                xmm0,           xmm1,           10
        jmp         _m128dpps_end
        _m128dpps_11 label size_t
        dpps                xmm0,           xmm1,           11
        jmp         _m128dpps_end
        _m128dpps_12 label size_t
        dpps                xmm0,           xmm1,           12
        jmp         _m128dpps_end
        _m128dpps_13 label size_t
        dpps                xmm0,           xmm1,           13
        jmp         _m128dpps_end
        _m128dpps_14 label size_t
        dpps                xmm0,           xmm1,           14
        jmp         _m128dpps_end
        _m128dpps_15 label size_t
        dpps                xmm0,           xmm1,           15
        jmp         _m128dpps_end
        _m128dpps_16 label size_t
        dpps                xmm0,           xmm1,           16
        jmp         _m128dpps_end
        _m128dpps_17 label size_t
        dpps                xmm0,           xmm1,           17
        jmp         _m128dpps_end
        _m128dpps_18 label size_t
        dpps                xmm0,           xmm1,           18
        jmp         _m128dpps_end
        _m128dpps_19 label size_t
        dpps                xmm0,           xmm1,           19
        jmp         _m128dpps_end
        _m128dpps_20 label size_t
        dpps                xmm0,           xmm1,           20
        jmp         _m128dpps_end
        _m128dpps_21 label size_t
        dpps                xmm0,           xmm1,           21
        jmp         _m128dpps_end
        _m128dpps_22 label size_t
        dpps                xmm0,           xmm1,           22
        jmp         _m128dpps_end
        _m128dpps_23 label size_t
        dpps                xmm0,           xmm1,           23
        jmp         _m128dpps_end
        _m128dpps_24 label size_t
        dpps                xmm0,           xmm1,           24
        jmp         _m128dpps_end
        _m128dpps_25 label size_t
        dpps                xmm0,           xmm1,           25
        jmp         _m128dpps_end
        _m128dpps_26 label size_t
        dpps                xmm0,           xmm1,           26
        jmp         _m128dpps_end
        _m128dpps_27 label size_t
        dpps                xmm0,           xmm1,           27
        jmp         _m128dpps_end
        _m128dpps_28 label size_t
        dpps                xmm0,           xmm1,           28
        jmp         _m128dpps_end
        _m128dpps_29 label size_t
        dpps                xmm0,           xmm1,           29
        jmp         _m128dpps_end
        _m128dpps_30 label size_t
        dpps                xmm0,           xmm1,           30
        jmp         _m128dpps_end
        _m128dpps_31 label size_t
        dpps                xmm0,           xmm1,           31
        jmp         _m128dpps_end
        _m128dpps_32 label size_t
        dpps                xmm0,           xmm1,           32
        jmp         _m128dpps_end
        _m128dpps_33 label size_t
        dpps                xmm0,           xmm1,           33
        jmp         _m128dpps_end
        _m128dpps_34 label size_t
        dpps                xmm0,           xmm1,           34
        jmp         _m128dpps_end
        _m128dpps_35 label size_t
        dpps                xmm0,           xmm1,           35
        jmp         _m128dpps_end
        _m128dpps_36 label size_t
        dpps                xmm0,           xmm1,           36
        jmp         _m128dpps_end
        _m128dpps_37 label size_t
        dpps                xmm0,           xmm1,           37
        jmp         _m128dpps_end
        _m128dpps_38 label size_t
        dpps                xmm0,           xmm1,           38
        jmp         _m128dpps_end
        _m128dpps_39 label size_t
        dpps                xmm0,           xmm1,           39
        jmp         _m128dpps_end
        _m128dpps_40 label size_t
        dpps                xmm0,           xmm1,           40
        jmp         _m128dpps_end
        _m128dpps_41 label size_t
        dpps                xmm0,           xmm1,           41
        jmp         _m128dpps_end
        _m128dpps_42 label size_t
        dpps                xmm0,           xmm1,           42
        jmp         _m128dpps_end
        _m128dpps_43 label size_t
        dpps                xmm0,           xmm1,           43
        jmp         _m128dpps_end
        _m128dpps_44 label size_t
        dpps                xmm0,           xmm1,           44
        jmp         _m128dpps_end
        _m128dpps_45 label size_t
        dpps                xmm0,           xmm1,           45
        jmp         _m128dpps_end
        _m128dpps_46 label size_t
        dpps                xmm0,           xmm1,           46
        jmp         _m128dpps_end
        _m128dpps_47 label size_t
        dpps                xmm0,           xmm1,           47
        jmp         _m128dpps_end
        _m128dpps_48 label size_t
        dpps                xmm0,           xmm1,           48
        jmp         _m128dpps_end
        _m128dpps_49 label size_t
        dpps                xmm0,           xmm1,           49
        jmp         _m128dpps_end
        _m128dpps_50 label size_t
        dpps                xmm0,           xmm1,           50
        jmp         _m128dpps_end
        _m128dpps_51 label size_t
        dpps                xmm0,           xmm1,           51
        jmp         _m128dpps_end
        _m128dpps_52 label size_t
        dpps                xmm0,           xmm1,           52
        jmp         _m128dpps_end
        _m128dpps_53 label size_t
        dpps                xmm0,           xmm1,           53
        jmp         _m128dpps_end
        _m128dpps_54 label size_t
        dpps                xmm0,           xmm1,           54
        jmp         _m128dpps_end
        _m128dpps_55 label size_t
        dpps                xmm0,           xmm1,           55
        jmp         _m128dpps_end
        _m128dpps_56 label size_t
        dpps                xmm0,           xmm1,           56
        jmp         _m128dpps_end
        _m128dpps_57 label size_t
        dpps                xmm0,           xmm1,           57
        jmp         _m128dpps_end
        _m128dpps_58 label size_t
        dpps                xmm0,           xmm1,           58
        jmp         _m128dpps_end
        _m128dpps_59 label size_t
        dpps                xmm0,           xmm1,           59
        jmp         _m128dpps_end
        _m128dpps_60 label size_t
        dpps                xmm0,           xmm1,           60
        jmp         _m128dpps_end
        _m128dpps_61 label size_t
        dpps                xmm0,           xmm1,           61
        jmp         _m128dpps_end
        _m128dpps_62 label size_t
        dpps                xmm0,           xmm1,           62
        jmp         _m128dpps_end
        _m128dpps_63 label size_t
        dpps                xmm0,           xmm1,           63
        jmp         _m128dpps_end
        _m128dpps_64 label size_t
        dpps                xmm0,           xmm1,           64
        jmp         _m128dpps_end
        _m128dpps_65 label size_t
        dpps                xmm0,           xmm1,           65
        jmp         _m128dpps_end
        _m128dpps_66 label size_t
        dpps                xmm0,           xmm1,           66
        jmp         _m128dpps_end
        _m128dpps_67 label size_t
        dpps                xmm0,           xmm1,           67
        jmp         _m128dpps_end
        _m128dpps_68 label size_t
        dpps                xmm0,           xmm1,           68
        jmp         _m128dpps_end
        _m128dpps_69 label size_t
        dpps                xmm0,           xmm1,           69
        jmp         _m128dpps_end
        _m128dpps_70 label size_t
        dpps                xmm0,           xmm1,           70
        jmp         _m128dpps_end
        _m128dpps_71 label size_t
        dpps                xmm0,           xmm1,           71
        jmp         _m128dpps_end
        _m128dpps_72 label size_t
        dpps                xmm0,           xmm1,           72
        jmp         _m128dpps_end
        _m128dpps_73 label size_t
        dpps                xmm0,           xmm1,           73
        jmp         _m128dpps_end
        _m128dpps_74 label size_t
        dpps                xmm0,           xmm1,           74
        jmp         _m128dpps_end
        _m128dpps_75 label size_t
        dpps                xmm0,           xmm1,           75
        jmp         _m128dpps_end
        _m128dpps_76 label size_t
        dpps                xmm0,           xmm1,           76
        jmp         _m128dpps_end
        _m128dpps_77 label size_t
        dpps                xmm0,           xmm1,           77
        jmp         _m128dpps_end
        _m128dpps_78 label size_t
        dpps                xmm0,           xmm1,           78
        jmp         _m128dpps_end
        _m128dpps_79 label size_t
        dpps                xmm0,           xmm1,           79
        jmp         _m128dpps_end
        _m128dpps_80 label size_t
        dpps                xmm0,           xmm1,           80
        jmp         _m128dpps_end
        _m128dpps_81 label size_t
        dpps                xmm0,           xmm1,           81
        jmp         _m128dpps_end
        _m128dpps_82 label size_t
        dpps                xmm0,           xmm1,           82
        jmp         _m128dpps_end
        _m128dpps_83 label size_t
        dpps                xmm0,           xmm1,           83
        jmp         _m128dpps_end
        _m128dpps_84 label size_t
        dpps                xmm0,           xmm1,           84
        jmp         _m128dpps_end
        _m128dpps_85 label size_t
        dpps                xmm0,           xmm1,           85
        jmp         _m128dpps_end
        _m128dpps_86 label size_t
        dpps                xmm0,           xmm1,           86
        jmp         _m128dpps_end
        _m128dpps_87 label size_t
        dpps                xmm0,           xmm1,           87
        jmp         _m128dpps_end
        _m128dpps_88 label size_t
        dpps                xmm0,           xmm1,           88
        jmp         _m128dpps_end
        _m128dpps_89 label size_t
        dpps                xmm0,           xmm1,           89
        jmp         _m128dpps_end
        _m128dpps_90 label size_t
        dpps                xmm0,           xmm1,           90
        jmp         _m128dpps_end
        _m128dpps_91 label size_t
        dpps                xmm0,           xmm1,           91
        jmp         _m128dpps_end
        _m128dpps_92 label size_t
        dpps                xmm0,           xmm1,           92
        jmp         _m128dpps_end
        _m128dpps_93 label size_t
        dpps                xmm0,           xmm1,           93
        jmp         _m128dpps_end
        _m128dpps_94 label size_t
        dpps                xmm0,           xmm1,           94
        jmp         _m128dpps_end
        _m128dpps_95 label size_t
        dpps                xmm0,           xmm1,           95
        jmp         _m128dpps_end
        _m128dpps_96 label size_t
        dpps                xmm0,           xmm1,           96
        jmp         _m128dpps_end
        _m128dpps_97 label size_t
        dpps                xmm0,           xmm1,           97
        jmp         _m128dpps_end
        _m128dpps_98 label size_t
        dpps                xmm0,           xmm1,           98
        jmp         _m128dpps_end
        _m128dpps_99 label size_t
        dpps                xmm0,           xmm1,           99
        jmp         _m128dpps_end
        _m128dpps_100 label size_t
        dpps                xmm0,           xmm1,           100
        jmp         _m128dpps_end
        _m128dpps_101 label size_t
        dpps                xmm0,           xmm1,           101
        jmp         _m128dpps_end
        _m128dpps_102 label size_t
        dpps                xmm0,           xmm1,           102
        jmp         _m128dpps_end
        _m128dpps_103 label size_t
        dpps                xmm0,           xmm1,           103
        jmp         _m128dpps_end
        _m128dpps_104 label size_t
        dpps                xmm0,           xmm1,           104
        jmp         _m128dpps_end
        _m128dpps_105 label size_t
        dpps                xmm0,           xmm1,           105
        jmp         _m128dpps_end
        _m128dpps_106 label size_t
        dpps                xmm0,           xmm1,           106
        jmp         _m128dpps_end
        _m128dpps_107 label size_t
        dpps                xmm0,           xmm1,           107
        jmp         _m128dpps_end
        _m128dpps_108 label size_t
        dpps                xmm0,           xmm1,           108
        jmp         _m128dpps_end
        _m128dpps_109 label size_t
        dpps                xmm0,           xmm1,           109
        jmp         _m128dpps_end
        _m128dpps_110 label size_t
        dpps                xmm0,           xmm1,           110
        jmp         _m128dpps_end
        _m128dpps_111 label size_t
        dpps                xmm0,           xmm1,           111
        jmp         _m128dpps_end
        _m128dpps_112 label size_t
        dpps                xmm0,           xmm1,           112
        jmp         _m128dpps_end
        _m128dpps_113 label size_t
        dpps                xmm0,           xmm1,           113
        jmp         _m128dpps_end
        _m128dpps_114 label size_t
        dpps                xmm0,           xmm1,           114
        jmp         _m128dpps_end
        _m128dpps_115 label size_t
        dpps                xmm0,           xmm1,           115
        jmp         _m128dpps_end
        _m128dpps_116 label size_t
        dpps                xmm0,           xmm1,           116
        jmp         _m128dpps_end
        _m128dpps_117 label size_t
        dpps                xmm0,           xmm1,           117
        jmp         _m128dpps_end
        _m128dpps_118 label size_t
        dpps                xmm0,           xmm1,           118
        jmp         _m128dpps_end
        _m128dpps_119 label size_t
        dpps                xmm0,           xmm1,           119
        jmp         _m128dpps_end
        _m128dpps_120 label size_t
        dpps                xmm0,           xmm1,           120
        jmp         _m128dpps_end
        _m128dpps_121 label size_t
        dpps                xmm0,           xmm1,           121
        jmp         _m128dpps_end
        _m128dpps_122 label size_t
        dpps                xmm0,           xmm1,           122
        jmp         _m128dpps_end
        _m128dpps_123 label size_t
        dpps                xmm0,           xmm1,           123
        jmp         _m128dpps_end
        _m128dpps_124 label size_t
        dpps                xmm0,           xmm1,           124
        jmp         _m128dpps_end
        _m128dpps_125 label size_t
        dpps                xmm0,           xmm1,           125
        jmp         _m128dpps_end
        _m128dpps_126 label size_t
        dpps                xmm0,           xmm1,           126
        jmp         _m128dpps_end
        _m128dpps_127 label size_t
        dpps                xmm0,           xmm1,           127
        jmp         _m128dpps_end
        _m128dpps_128 label size_t
        dpps                xmm0,           xmm1,           128
        jmp         _m128dpps_end
        _m128dpps_129 label size_t
        dpps                xmm0,           xmm1,           129
        jmp         _m128dpps_end
        _m128dpps_130 label size_t
        dpps                xmm0,           xmm1,           130
        jmp         _m128dpps_end
        _m128dpps_131 label size_t
        dpps                xmm0,           xmm1,           131
        jmp         _m128dpps_end
        _m128dpps_132 label size_t
        dpps                xmm0,           xmm1,           132
        jmp         _m128dpps_end
        _m128dpps_133 label size_t
        dpps                xmm0,           xmm1,           133
        jmp         _m128dpps_end
        _m128dpps_134 label size_t
        dpps                xmm0,           xmm1,           134
        jmp         _m128dpps_end
        _m128dpps_135 label size_t
        dpps                xmm0,           xmm1,           135
        jmp         _m128dpps_end
        _m128dpps_136 label size_t
        dpps                xmm0,           xmm1,           136
        jmp         _m128dpps_end
        _m128dpps_137 label size_t
        dpps                xmm0,           xmm1,           137
        jmp         _m128dpps_end
        _m128dpps_138 label size_t
        dpps                xmm0,           xmm1,           138
        jmp         _m128dpps_end
        _m128dpps_139 label size_t
        dpps                xmm0,           xmm1,           139
        jmp         _m128dpps_end
        _m128dpps_140 label size_t
        dpps                xmm0,           xmm1,           140
        jmp         _m128dpps_end
        _m128dpps_141 label size_t
        dpps                xmm0,           xmm1,           141
        jmp         _m128dpps_end
        _m128dpps_142 label size_t
        dpps                xmm0,           xmm1,           142
        jmp         _m128dpps_end
        _m128dpps_143 label size_t
        dpps                xmm0,           xmm1,           143
        jmp         _m128dpps_end
        _m128dpps_144 label size_t
        dpps                xmm0,           xmm1,           144
        jmp         _m128dpps_end
        _m128dpps_145 label size_t
        dpps                xmm0,           xmm1,           145
        jmp         _m128dpps_end
        _m128dpps_146 label size_t
        dpps                xmm0,           xmm1,           146
        jmp         _m128dpps_end
        _m128dpps_147 label size_t
        dpps                xmm0,           xmm1,           147
        jmp         _m128dpps_end
        _m128dpps_148 label size_t
        dpps                xmm0,           xmm1,           148
        jmp         _m128dpps_end
        _m128dpps_149 label size_t
        dpps                xmm0,           xmm1,           149
        jmp         _m128dpps_end
        _m128dpps_150 label size_t
        dpps                xmm0,           xmm1,           150
        jmp         _m128dpps_end
        _m128dpps_151 label size_t
        dpps                xmm0,           xmm1,           151
        jmp         _m128dpps_end
        _m128dpps_152 label size_t
        dpps                xmm0,           xmm1,           152
        jmp         _m128dpps_end
        _m128dpps_153 label size_t
        dpps                xmm0,           xmm1,           153
        jmp         _m128dpps_end
        _m128dpps_154 label size_t
        dpps                xmm0,           xmm1,           154
        jmp         _m128dpps_end
        _m128dpps_155 label size_t
        dpps                xmm0,           xmm1,           155
        jmp         _m128dpps_end
        _m128dpps_156 label size_t
        dpps                xmm0,           xmm1,           156
        jmp         _m128dpps_end
        _m128dpps_157 label size_t
        dpps                xmm0,           xmm1,           157
        jmp         _m128dpps_end
        _m128dpps_158 label size_t
        dpps                xmm0,           xmm1,           158
        jmp         _m128dpps_end
        _m128dpps_159 label size_t
        dpps                xmm0,           xmm1,           159
        jmp         _m128dpps_end
        _m128dpps_160 label size_t
        dpps                xmm0,           xmm1,           160
        jmp         _m128dpps_end
        _m128dpps_161 label size_t
        dpps                xmm0,           xmm1,           161
        jmp         _m128dpps_end
        _m128dpps_162 label size_t
        dpps                xmm0,           xmm1,           162
        jmp         _m128dpps_end
        _m128dpps_163 label size_t
        dpps                xmm0,           xmm1,           163
        jmp         _m128dpps_end
        _m128dpps_164 label size_t
        dpps                xmm0,           xmm1,           164
        jmp         _m128dpps_end
        _m128dpps_165 label size_t
        dpps                xmm0,           xmm1,           165
        jmp         _m128dpps_end
        _m128dpps_166 label size_t
        dpps                xmm0,           xmm1,           166
        jmp         _m128dpps_end
        _m128dpps_167 label size_t
        dpps                xmm0,           xmm1,           167
        jmp         _m128dpps_end
        _m128dpps_168 label size_t
        dpps                xmm0,           xmm1,           168
        jmp         _m128dpps_end
        _m128dpps_169 label size_t
        dpps                xmm0,           xmm1,           169
        jmp         _m128dpps_end
        _m128dpps_170 label size_t
        dpps                xmm0,           xmm1,           170
        jmp         _m128dpps_end
        _m128dpps_171 label size_t
        dpps                xmm0,           xmm1,           171
        jmp         _m128dpps_end
        _m128dpps_172 label size_t
        dpps                xmm0,           xmm1,           172
        jmp         _m128dpps_end
        _m128dpps_173 label size_t
        dpps                xmm0,           xmm1,           173
        jmp         _m128dpps_end
        _m128dpps_174 label size_t
        dpps                xmm0,           xmm1,           174
        jmp         _m128dpps_end
        _m128dpps_175 label size_t
        dpps                xmm0,           xmm1,           175
        jmp         _m128dpps_end
        _m128dpps_176 label size_t
        dpps                xmm0,           xmm1,           176
        jmp         _m128dpps_end
        _m128dpps_177 label size_t
        dpps                xmm0,           xmm1,           177
        jmp         _m128dpps_end
        _m128dpps_178 label size_t
        dpps                xmm0,           xmm1,           178
        jmp         _m128dpps_end
        _m128dpps_179 label size_t
        dpps                xmm0,           xmm1,           179
        jmp         _m128dpps_end
        _m128dpps_180 label size_t
        dpps                xmm0,           xmm1,           180
        jmp         _m128dpps_end
        _m128dpps_181 label size_t
        dpps                xmm0,           xmm1,           181
        jmp         _m128dpps_end
        _m128dpps_182 label size_t
        dpps                xmm0,           xmm1,           182
        jmp         _m128dpps_end
        _m128dpps_183 label size_t
        dpps                xmm0,           xmm1,           183
        jmp         _m128dpps_end
        _m128dpps_184 label size_t
        dpps                xmm0,           xmm1,           184
        jmp         _m128dpps_end
        _m128dpps_185 label size_t
        dpps                xmm0,           xmm1,           185
        jmp         _m128dpps_end
        _m128dpps_186 label size_t
        dpps                xmm0,           xmm1,           186
        jmp         _m128dpps_end
        _m128dpps_187 label size_t
        dpps                xmm0,           xmm1,           187
        jmp         _m128dpps_end
        _m128dpps_188 label size_t
        dpps                xmm0,           xmm1,           188
        jmp         _m128dpps_end
        _m128dpps_189 label size_t
        dpps                xmm0,           xmm1,           189
        jmp         _m128dpps_end
        _m128dpps_190 label size_t
        dpps                xmm0,           xmm1,           190
        jmp         _m128dpps_end
        _m128dpps_191 label size_t
        dpps                xmm0,           xmm1,           191
        jmp         _m128dpps_end
        _m128dpps_192 label size_t
        dpps                xmm0,           xmm1,           192
        jmp         _m128dpps_end
        _m128dpps_193 label size_t
        dpps                xmm0,           xmm1,           193
        jmp         _m128dpps_end
        _m128dpps_194 label size_t
        dpps                xmm0,           xmm1,           194
        jmp         _m128dpps_end
        _m128dpps_195 label size_t
        dpps                xmm0,           xmm1,           195
        jmp         _m128dpps_end
        _m128dpps_196 label size_t
        dpps                xmm0,           xmm1,           196
        jmp         _m128dpps_end
        _m128dpps_197 label size_t
        dpps                xmm0,           xmm1,           197
        jmp         _m128dpps_end
        _m128dpps_198 label size_t
        dpps                xmm0,           xmm1,           198
        jmp         _m128dpps_end
        _m128dpps_199 label size_t
        dpps                xmm0,           xmm1,           199
        jmp         _m128dpps_end
        _m128dpps_200 label size_t
        dpps                xmm0,           xmm1,           200
        jmp         _m128dpps_end
        _m128dpps_201 label size_t
        dpps                xmm0,           xmm1,           201
        jmp         _m128dpps_end
        _m128dpps_202 label size_t
        dpps                xmm0,           xmm1,           202
        jmp         _m128dpps_end
        _m128dpps_203 label size_t
        dpps                xmm0,           xmm1,           203
        jmp         _m128dpps_end
        _m128dpps_204 label size_t
        dpps                xmm0,           xmm1,           204
        jmp         _m128dpps_end
        _m128dpps_205 label size_t
        dpps                xmm0,           xmm1,           205
        jmp         _m128dpps_end
        _m128dpps_206 label size_t
        dpps                xmm0,           xmm1,           206
        jmp         _m128dpps_end
        _m128dpps_207 label size_t
        dpps                xmm0,           xmm1,           207
        jmp         _m128dpps_end
        _m128dpps_208 label size_t
        dpps                xmm0,           xmm1,           208
        jmp         _m128dpps_end
        _m128dpps_209 label size_t
        dpps                xmm0,           xmm1,           209
        jmp         _m128dpps_end
        _m128dpps_210 label size_t
        dpps                xmm0,           xmm1,           210
        jmp         _m128dpps_end
        _m128dpps_211 label size_t
        dpps                xmm0,           xmm1,           211
        jmp         _m128dpps_end
        _m128dpps_212 label size_t
        dpps                xmm0,           xmm1,           212
        jmp         _m128dpps_end
        _m128dpps_213 label size_t
        dpps                xmm0,           xmm1,           213
        jmp         _m128dpps_end
        _m128dpps_214 label size_t
        dpps                xmm0,           xmm1,           214
        jmp         _m128dpps_end
        _m128dpps_215 label size_t
        dpps                xmm0,           xmm1,           215
        jmp         _m128dpps_end
        _m128dpps_216 label size_t
        dpps                xmm0,           xmm1,           216
        jmp         _m128dpps_end
        _m128dpps_217 label size_t
        dpps                xmm0,           xmm1,           217
        jmp         _m128dpps_end
        _m128dpps_218 label size_t
        dpps                xmm0,           xmm1,           218
        jmp         _m128dpps_end
        _m128dpps_219 label size_t
        dpps                xmm0,           xmm1,           219
        jmp         _m128dpps_end
        _m128dpps_220 label size_t
        dpps                xmm0,           xmm1,           220
        jmp         _m128dpps_end
        _m128dpps_221 label size_t
        dpps                xmm0,           xmm1,           221
        jmp         _m128dpps_end
        _m128dpps_222 label size_t
        dpps                xmm0,           xmm1,           222
        jmp         _m128dpps_end
        _m128dpps_223 label size_t
        dpps                xmm0,           xmm1,           223
        jmp         _m128dpps_end
        _m128dpps_224 label size_t
        dpps                xmm0,           xmm1,           224
        jmp         _m128dpps_end
        _m128dpps_225 label size_t
        dpps                xmm0,           xmm1,           225
        jmp         _m128dpps_end
        _m128dpps_226 label size_t
        dpps                xmm0,           xmm1,           226
        jmp         _m128dpps_end
        _m128dpps_227 label size_t
        dpps                xmm0,           xmm1,           227
        jmp         _m128dpps_end
        _m128dpps_228 label size_t
        dpps                xmm0,           xmm1,           228
        jmp         _m128dpps_end
        _m128dpps_229 label size_t
        dpps                xmm0,           xmm1,           229
        jmp         _m128dpps_end
        _m128dpps_230 label size_t
        dpps                xmm0,           xmm1,           230
        jmp         _m128dpps_end
        _m128dpps_231 label size_t
        dpps                xmm0,           xmm1,           231
        jmp         _m128dpps_end
        _m128dpps_232 label size_t
        dpps                xmm0,           xmm1,           232
        jmp         _m128dpps_end
        _m128dpps_233 label size_t
        dpps                xmm0,           xmm1,           233
        jmp         _m128dpps_end
        _m128dpps_234 label size_t
        dpps                xmm0,           xmm1,           234
        jmp         _m128dpps_end
        _m128dpps_235 label size_t
        dpps                xmm0,           xmm1,           235
        jmp         _m128dpps_end
        _m128dpps_236 label size_t
        dpps                xmm0,           xmm1,           236
        jmp         _m128dpps_end
        _m128dpps_237 label size_t
        dpps                xmm0,           xmm1,           237
        jmp         _m128dpps_end
        _m128dpps_238 label size_t
        dpps                xmm0,           xmm1,           238
        jmp         _m128dpps_end
        _m128dpps_239 label size_t
        dpps                xmm0,           xmm1,           239
        jmp         _m128dpps_end
        _m128dpps_240 label size_t
        dpps                xmm0,           xmm1,           240
        jmp         _m128dpps_end
        _m128dpps_241 label size_t
        dpps                xmm0,           xmm1,           241
        jmp         _m128dpps_end
        _m128dpps_242 label size_t
        dpps                xmm0,           xmm1,           242
        jmp         _m128dpps_end
        _m128dpps_243 label size_t
        dpps                xmm0,           xmm1,           243
        jmp         _m128dpps_end
        _m128dpps_244 label size_t
        dpps                xmm0,           xmm1,           244
        jmp         _m128dpps_end
        _m128dpps_245 label size_t
        dpps                xmm0,           xmm1,           245
        jmp         _m128dpps_end
        _m128dpps_246 label size_t
        dpps                xmm0,           xmm1,           246
        jmp         _m128dpps_end
        _m128dpps_247 label size_t
        dpps                xmm0,           xmm1,           247
        jmp         _m128dpps_end
        _m128dpps_248 label size_t
        dpps                xmm0,           xmm1,           248
        jmp         _m128dpps_end
        _m128dpps_249 label size_t
        dpps                xmm0,           xmm1,           249
        jmp         _m128dpps_end
        _m128dpps_250 label size_t
        dpps                xmm0,           xmm1,           250
        jmp         _m128dpps_end
        _m128dpps_251 label size_t
        dpps                xmm0,           xmm1,           251
        jmp         _m128dpps_end
        _m128dpps_252 label size_t
        dpps                xmm0,           xmm1,           252
        jmp         _m128dpps_end
        _m128dpps_253 label size_t
        dpps                xmm0,           xmm1,           253
        jmp         _m128dpps_end
        _m128dpps_254 label size_t
        dpps                xmm0,           xmm1,           254
        jmp         _m128dpps_end
        _m128dpps_255 label size_t
        dpps                xmm0,           xmm1,           255
        ;jmp         _m128dpps_end

        _m128dpps_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_dp_pd_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_dp_pd_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_dp_pd_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_dp_pd_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_dp_pd_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           4
        ret
procend

procstart _uX_mm_dp_pd_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           5
        ret
procend

procstart _uX_mm_dp_pd_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           6
        ret
procend

procstart _uX_mm_dp_pd_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           7
        ret
procend

procstart _uX_mm_dp_pd_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           8
        ret
procend

procstart _uX_mm_dp_pd_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           9
        ret
procend

procstart _uX_mm_dp_pd_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           10
        ret
procend

procstart _uX_mm_dp_pd_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           11
        ret
procend

procstart _uX_mm_dp_pd_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           12
        ret
procend

procstart _uX_mm_dp_pd_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           13
        ret
procend

procstart _uX_mm_dp_pd_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           14
        ret
procend

procstart _uX_mm_dp_pd_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           15
        ret
procend

procstart _uX_mm_dp_pd_16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           16
        ret
procend

procstart _uX_mm_dp_pd_17, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           17
        ret
procend

procstart _uX_mm_dp_pd_18, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           18
        ret
procend

procstart _uX_mm_dp_pd_19, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           19
        ret
procend

procstart _uX_mm_dp_pd_20, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           20
        ret
procend

procstart _uX_mm_dp_pd_21, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           21
        ret
procend

procstart _uX_mm_dp_pd_22, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           22
        ret
procend

procstart _uX_mm_dp_pd_23, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           23
        ret
procend

procstart _uX_mm_dp_pd_24, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           24
        ret
procend

procstart _uX_mm_dp_pd_25, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           25
        ret
procend

procstart _uX_mm_dp_pd_26, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           26
        ret
procend

procstart _uX_mm_dp_pd_27, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           27
        ret
procend

procstart _uX_mm_dp_pd_28, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           28
        ret
procend

procstart _uX_mm_dp_pd_29, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           29
        ret
procend

procstart _uX_mm_dp_pd_30, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           30
        ret
procend

procstart _uX_mm_dp_pd_31, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           31
        ret
procend

procstart _uX_mm_dp_pd_32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           32
        ret
procend

procstart _uX_mm_dp_pd_33, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           33
        ret
procend

procstart _uX_mm_dp_pd_34, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           34
        ret
procend

procstart _uX_mm_dp_pd_35, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           35
        ret
procend

procstart _uX_mm_dp_pd_36, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           36
        ret
procend

procstart _uX_mm_dp_pd_37, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           37
        ret
procend

procstart _uX_mm_dp_pd_38, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           38
        ret
procend

procstart _uX_mm_dp_pd_39, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           39
        ret
procend

procstart _uX_mm_dp_pd_40, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           40
        ret
procend

procstart _uX_mm_dp_pd_41, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           41
        ret
procend

procstart _uX_mm_dp_pd_42, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           42
        ret
procend

procstart _uX_mm_dp_pd_43, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           43
        ret
procend

procstart _uX_mm_dp_pd_44, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           44
        ret
procend

procstart _uX_mm_dp_pd_45, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           45
        ret
procend

procstart _uX_mm_dp_pd_46, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           46
        ret
procend

procstart _uX_mm_dp_pd_47, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           47
        ret
procend

procstart _uX_mm_dp_pd_48, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           48
        ret
procend

procstart _uX_mm_dp_pd_49, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           49
        ret
procend

procstart _uX_mm_dp_pd_50, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           50
        ret
procend

procstart _uX_mm_dp_pd_51, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           51
        ret
procend

procstart _uX_mm_dp_pd_52, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           52
        ret
procend

procstart _uX_mm_dp_pd_53, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           53
        ret
procend

procstart _uX_mm_dp_pd_54, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           54
        ret
procend

procstart _uX_mm_dp_pd_55, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           55
        ret
procend

procstart _uX_mm_dp_pd_56, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           56
        ret
procend

procstart _uX_mm_dp_pd_57, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           57
        ret
procend

procstart _uX_mm_dp_pd_58, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           58
        ret
procend

procstart _uX_mm_dp_pd_59, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           59
        ret
procend

procstart _uX_mm_dp_pd_60, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           60
        ret
procend

procstart _uX_mm_dp_pd_61, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           61
        ret
procend

procstart _uX_mm_dp_pd_62, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           62
        ret
procend

procstart _uX_mm_dp_pd_63, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        dppd                xmm0,           xmm1,           63
        ret
procend

procstart _uX_mm_dp_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp2() < 0) || (rp2() > 63))
        jmp         _m128ddppd_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp2()]
        jmp     dword ptr [_m128ddppdjmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128ddppdjmptable]
        mov             rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp             rbx
        endif

        _m128ddppd_0 label size_t
        dppd                xmm0,           xmm1,           0
        jmp         _m128ddppd_end
        _m128ddppd_1 label size_t
        dppd                xmm0,           xmm1,           1
        jmp         _m128ddppd_end
        _m128ddppd_2 label size_t
        dppd                xmm0,           xmm1,           2
        jmp         _m128ddppd_end
        _m128ddppd_3 label size_t
        dppd                xmm0,           xmm1,           3
        jmp         _m128ddppd_end
        _m128ddppd_4 label size_t
        dppd                xmm0,           xmm1,           4
        jmp         _m128ddppd_end
        _m128ddppd_5 label size_t
        dppd                xmm0,           xmm1,           5
        jmp         _m128ddppd_end
        _m128ddppd_6 label size_t
        dppd                xmm0,           xmm1,           6
        jmp         _m128ddppd_end
        _m128ddppd_7 label size_t
        dppd                xmm0,           xmm1,           7
        jmp         _m128ddppd_end
        _m128ddppd_8 label size_t
        dppd                xmm0,           xmm1,           8
        jmp         _m128ddppd_end
        _m128ddppd_9 label size_t
        dppd                xmm0,           xmm1,           9
        jmp         _m128ddppd_end
        _m128ddppd_10 label size_t
        dppd                xmm0,           xmm1,           10
        jmp         _m128ddppd_end
        _m128ddppd_11 label size_t
        dppd                xmm0,           xmm1,           11
        jmp         _m128ddppd_end
        _m128ddppd_12 label size_t
        dppd                xmm0,           xmm1,           12
        jmp         _m128ddppd_end
        _m128ddppd_13 label size_t
        dppd                xmm0,           xmm1,           13
        jmp         _m128ddppd_end
        _m128ddppd_14 label size_t
        dppd                xmm0,           xmm1,           14
        jmp         _m128ddppd_end
        _m128ddppd_15 label size_t
        dppd                xmm0,           xmm1,           15
        jmp         _m128ddppd_end
        _m128ddppd_16 label size_t
        dppd                xmm0,           xmm1,           16
        jmp         _m128ddppd_end
        _m128ddppd_17 label size_t
        dppd                xmm0,           xmm1,           17
        jmp         _m128ddppd_end
        _m128ddppd_18 label size_t
        dppd                xmm0,           xmm1,           18
        jmp         _m128ddppd_end
        _m128ddppd_19 label size_t
        dppd                xmm0,           xmm1,           19
        jmp         _m128ddppd_end
        _m128ddppd_20 label size_t
        dppd                xmm0,           xmm1,           20
        jmp         _m128ddppd_end
        _m128ddppd_21 label size_t
        dppd                xmm0,           xmm1,           21
        jmp         _m128ddppd_end
        _m128ddppd_22 label size_t
        dppd                xmm0,           xmm1,           22
        jmp         _m128ddppd_end
        _m128ddppd_23 label size_t
        dppd                xmm0,           xmm1,           23
        jmp         _m128ddppd_end
        _m128ddppd_24 label size_t
        dppd                xmm0,           xmm1,           24
        jmp         _m128ddppd_end
        _m128ddppd_25 label size_t
        dppd                xmm0,           xmm1,           25
        jmp         _m128ddppd_end
        _m128ddppd_26 label size_t
        dppd                xmm0,           xmm1,           26
        jmp         _m128ddppd_end
        _m128ddppd_27 label size_t
        dppd                xmm0,           xmm1,           27
        jmp         _m128ddppd_end
        _m128ddppd_28 label size_t
        dppd                xmm0,           xmm1,           28
        jmp         _m128ddppd_end
        _m128ddppd_29 label size_t
        dppd                xmm0,           xmm1,           29
        jmp         _m128ddppd_end
        _m128ddppd_30 label size_t
        dppd                xmm0,           xmm1,           30
        jmp         _m128ddppd_end
        _m128ddppd_31 label size_t
        dppd                xmm0,           xmm1,           31
        jmp         _m128ddppd_end
        _m128ddppd_32 label size_t
        dppd                xmm0,           xmm1,           32
        jmp         _m128ddppd_end
        _m128ddppd_33 label size_t
        dppd                xmm0,           xmm1,           33
        jmp         _m128ddppd_end
        _m128ddppd_34 label size_t
        dppd                xmm0,           xmm1,           34
        jmp         _m128ddppd_end
        _m128ddppd_35 label size_t
        dppd                xmm0,           xmm1,           35
        jmp         _m128ddppd_end
        _m128ddppd_36 label size_t
        dppd                xmm0,           xmm1,           36
        jmp         _m128ddppd_end
        _m128ddppd_37 label size_t
        dppd                xmm0,           xmm1,           37
        jmp         _m128ddppd_end
        _m128ddppd_38 label size_t
        dppd                xmm0,           xmm1,           38
        jmp         _m128ddppd_end
        _m128ddppd_39 label size_t
        dppd                xmm0,           xmm1,           39
        jmp         _m128ddppd_end
        _m128ddppd_40 label size_t
        dppd                xmm0,           xmm1,           40
        jmp         _m128ddppd_end
        _m128ddppd_41 label size_t
        dppd                xmm0,           xmm1,           41
        jmp         _m128ddppd_end
        _m128ddppd_42 label size_t
        dppd                xmm0,           xmm1,           42
        jmp         _m128ddppd_end
        _m128ddppd_43 label size_t
        dppd                xmm0,           xmm1,           43
        jmp         _m128ddppd_end
        _m128ddppd_44 label size_t
        dppd                xmm0,           xmm1,           44
        jmp         _m128ddppd_end
        _m128ddppd_45 label size_t
        dppd                xmm0,           xmm1,           45
        jmp         _m128ddppd_end
        _m128ddppd_46 label size_t
        dppd                xmm0,           xmm1,           46
        jmp         _m128ddppd_end
        _m128ddppd_47 label size_t
        dppd                xmm0,           xmm1,           47
        jmp         _m128ddppd_end
        _m128ddppd_48 label size_t
        dppd                xmm0,           xmm1,           48
        jmp         _m128ddppd_end
        _m128ddppd_49 label size_t
        dppd                xmm0,           xmm1,           49
        jmp         _m128ddppd_end
        _m128ddppd_50 label size_t
        dppd                xmm0,           xmm1,           50
        jmp         _m128ddppd_end
        _m128ddppd_51 label size_t
        dppd                xmm0,           xmm1,           51
        jmp         _m128ddppd_end
        _m128ddppd_52 label size_t
        dppd                xmm0,           xmm1,           52
        jmp         _m128ddppd_end
        _m128ddppd_53 label size_t
        dppd                xmm0,           xmm1,           53
        jmp         _m128ddppd_end
        _m128ddppd_54 label size_t
        dppd                xmm0,           xmm1,           54
        jmp         _m128ddppd_end
        _m128ddppd_55 label size_t
        dppd                xmm0,           xmm1,           55
        jmp         _m128ddppd_end
        _m128ddppd_56 label size_t
        dppd                xmm0,           xmm1,           56
        jmp         _m128ddppd_end
        _m128ddppd_57 label size_t
        dppd                xmm0,           xmm1,           57
        jmp         _m128ddppd_end
        _m128ddppd_58 label size_t
        dppd                xmm0,           xmm1,           58
        jmp         _m128ddppd_end
        _m128ddppd_59 label size_t
        dppd                xmm0,           xmm1,           59
        jmp         _m128ddppd_end
        _m128ddppd_60 label size_t
        dppd                xmm0,           xmm1,           60
        jmp         _m128ddppd_end
        _m128ddppd_61 label size_t
        dppd                xmm0,           xmm1,           61
        jmp         _m128ddppd_end
        _m128ddppd_62 label size_t
        dppd                xmm0,           xmm1,           62
        jmp         _m128ddppd_end
        _m128ddppd_63 label size_t
        dppd                xmm0,           xmm1,           63
        ;jmp         _m128ddppd_end

        _m128ddppd_end:
        pop         rbase()
        ret
procend

;************************************
; Insert single precision float
;************************************
procstart _uX_mm_insert_ps_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_insert_ps_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_insert_ps_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_insert_ps_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_insert_ps_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           4
        ret
procend

procstart _uX_mm_insert_ps_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           5
        ret
procend

procstart _uX_mm_insert_ps_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           6
        ret
procend

procstart _uX_mm_insert_ps_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           7
        ret
procend

procstart _uX_mm_insert_ps_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           8
        ret
procend

procstart _uX_mm_insert_ps_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           9
        ret
procend

procstart _uX_mm_insert_ps_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           10
        ret
procend

procstart _uX_mm_insert_ps_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           11
        ret
procend

procstart _uX_mm_insert_ps_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           12
        ret
procend

procstart _uX_mm_insert_ps_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           13
        ret
procend

procstart _uX_mm_insert_ps_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           14
        ret
procend

procstart _uX_mm_insert_ps_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           15
        ret
procend

procstart _uX_mm_insert_ps_16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           16
        ret
procend

procstart _uX_mm_insert_ps_17, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           17
        ret
procend

procstart _uX_mm_insert_ps_18, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           18
        ret
procend

procstart _uX_mm_insert_ps_19, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           19
        ret
procend

procstart _uX_mm_insert_ps_20, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           20
        ret
procend

procstart _uX_mm_insert_ps_21, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           21
        ret
procend

procstart _uX_mm_insert_ps_22, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           22
        ret
procend

procstart _uX_mm_insert_ps_23, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           23
        ret
procend

procstart _uX_mm_insert_ps_24, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           24
        ret
procend

procstart _uX_mm_insert_ps_25, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           25
        ret
procend

procstart _uX_mm_insert_ps_26, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           26
        ret
procend

procstart _uX_mm_insert_ps_27, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           27
        ret
procend

procstart _uX_mm_insert_ps_28, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           28
        ret
procend

procstart _uX_mm_insert_ps_29, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           29
        ret
procend

procstart _uX_mm_insert_ps_30, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           30
        ret
procend

procstart _uX_mm_insert_ps_31, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           31
        ret
procend

procstart _uX_mm_insert_ps_32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           32
        ret
procend

procstart _uX_mm_insert_ps_33, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           33
        ret
procend

procstart _uX_mm_insert_ps_34, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           34
        ret
procend

procstart _uX_mm_insert_ps_35, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           35
        ret
procend

procstart _uX_mm_insert_ps_36, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           36
        ret
procend

procstart _uX_mm_insert_ps_37, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           37
        ret
procend

procstart _uX_mm_insert_ps_38, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           38
        ret
procend

procstart _uX_mm_insert_ps_39, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           39
        ret
procend

procstart _uX_mm_insert_ps_40, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           40
        ret
procend

procstart _uX_mm_insert_ps_41, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           41
        ret
procend

procstart _uX_mm_insert_ps_42, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           42
        ret
procend

procstart _uX_mm_insert_ps_43, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           43
        ret
procend

procstart _uX_mm_insert_ps_44, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           44
        ret
procend

procstart _uX_mm_insert_ps_45, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           45
        ret
procend

procstart _uX_mm_insert_ps_46, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           46
        ret
procend

procstart _uX_mm_insert_ps_47, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           47
        ret
procend

procstart _uX_mm_insert_ps_48, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           48
        ret
procend

procstart _uX_mm_insert_ps_49, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           49
        ret
procend

procstart _uX_mm_insert_ps_50, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           50
        ret
procend

procstart _uX_mm_insert_ps_51, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           51
        ret
procend

procstart _uX_mm_insert_ps_52, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           52
        ret
procend

procstart _uX_mm_insert_ps_53, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           53
        ret
procend

procstart _uX_mm_insert_ps_54, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           54
        ret
procend

procstart _uX_mm_insert_ps_55, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           55
        ret
procend

procstart _uX_mm_insert_ps_56, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           56
        ret
procend

procstart _uX_mm_insert_ps_57, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           57
        ret
procend

procstart _uX_mm_insert_ps_58, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           58
        ret
procend

procstart _uX_mm_insert_ps_59, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           59
        ret
procend

procstart _uX_mm_insert_ps_60, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           60
        ret
procend

procstart _uX_mm_insert_ps_61, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           61
        ret
procend

procstart _uX_mm_insert_ps_62, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           62
        ret
procend

procstart _uX_mm_insert_ps_63, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           63
        ret
procend

procstart _uX_mm_insert_ps_64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           64
        ret
procend

procstart _uX_mm_insert_ps_65, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           65
        ret
procend

procstart _uX_mm_insert_ps_66, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           66
        ret
procend

procstart _uX_mm_insert_ps_67, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           67
        ret
procend

procstart _uX_mm_insert_ps_68, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           68
        ret
procend

procstart _uX_mm_insert_ps_69, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           69
        ret
procend

procstart _uX_mm_insert_ps_70, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           70
        ret
procend

procstart _uX_mm_insert_ps_71, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           71
        ret
procend

procstart _uX_mm_insert_ps_72, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           72
        ret
procend

procstart _uX_mm_insert_ps_73, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           73
        ret
procend

procstart _uX_mm_insert_ps_74, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           74
        ret
procend

procstart _uX_mm_insert_ps_75, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           75
        ret
procend

procstart _uX_mm_insert_ps_76, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           76
        ret
procend

procstart _uX_mm_insert_ps_77, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           77
        ret
procend

procstart _uX_mm_insert_ps_78, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           78
        ret
procend

procstart _uX_mm_insert_ps_79, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           79
        ret
procend

procstart _uX_mm_insert_ps_80, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           80
        ret
procend

procstart _uX_mm_insert_ps_81, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           81
        ret
procend

procstart _uX_mm_insert_ps_82, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           82
        ret
procend

procstart _uX_mm_insert_ps_83, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           83
        ret
procend

procstart _uX_mm_insert_ps_84, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           84
        ret
procend

procstart _uX_mm_insert_ps_85, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           85
        ret
procend

procstart _uX_mm_insert_ps_86, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           86
        ret
procend

procstart _uX_mm_insert_ps_87, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           87
        ret
procend

procstart _uX_mm_insert_ps_88, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           88
        ret
procend

procstart _uX_mm_insert_ps_89, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           89
        ret
procend

procstart _uX_mm_insert_ps_90, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           90
        ret
procend

procstart _uX_mm_insert_ps_91, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           91
        ret
procend

procstart _uX_mm_insert_ps_92, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           92
        ret
procend

procstart _uX_mm_insert_ps_93, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           93
        ret
procend

procstart _uX_mm_insert_ps_94, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           94
        ret
procend

procstart _uX_mm_insert_ps_95, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           95
        ret
procend

procstart _uX_mm_insert_ps_96, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           96
        ret
procend

procstart _uX_mm_insert_ps_97, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           97
        ret
procend

procstart _uX_mm_insert_ps_98, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           98
        ret
procend

procstart _uX_mm_insert_ps_99, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           99
        ret
procend

procstart _uX_mm_insert_ps_100, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           100
        ret
procend

procstart _uX_mm_insert_ps_101, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           101
        ret
procend

procstart _uX_mm_insert_ps_102, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           102
        ret
procend

procstart _uX_mm_insert_ps_103, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           103
        ret
procend

procstart _uX_mm_insert_ps_104, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           104
        ret
procend

procstart _uX_mm_insert_ps_105, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           105
        ret
procend

procstart _uX_mm_insert_ps_106, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           106
        ret
procend

procstart _uX_mm_insert_ps_107, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           107
        ret
procend

procstart _uX_mm_insert_ps_108, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           108
        ret
procend

procstart _uX_mm_insert_ps_109, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           109
        ret
procend

procstart _uX_mm_insert_ps_110, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           110
        ret
procend

procstart _uX_mm_insert_ps_111, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           111
        ret
procend

procstart _uX_mm_insert_ps_112, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           112
        ret
procend

procstart _uX_mm_insert_ps_113, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           113
        ret
procend

procstart _uX_mm_insert_ps_114, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           114
        ret
procend

procstart _uX_mm_insert_ps_115, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           115
        ret
procend

procstart _uX_mm_insert_ps_116, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           116
        ret
procend

procstart _uX_mm_insert_ps_117, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           117
        ret
procend

procstart _uX_mm_insert_ps_118, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           118
        ret
procend

procstart _uX_mm_insert_ps_119, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           119
        ret
procend

procstart _uX_mm_insert_ps_120, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           120
        ret
procend

procstart _uX_mm_insert_ps_121, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           121
        ret
procend

procstart _uX_mm_insert_ps_122, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           122
        ret
procend

procstart _uX_mm_insert_ps_123, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           123
        ret
procend

procstart _uX_mm_insert_ps_124, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           124
        ret
procend

procstart _uX_mm_insert_ps_125, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           125
        ret
procend

procstart _uX_mm_insert_ps_126, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           126
        ret
procend

procstart _uX_mm_insert_ps_127, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           127
        ret
procend

procstart _uX_mm_insert_ps_128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           128
        ret
procend

procstart _uX_mm_insert_ps_129, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           129
        ret
procend

procstart _uX_mm_insert_ps_130, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           130
        ret
procend

procstart _uX_mm_insert_ps_131, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           131
        ret
procend

procstart _uX_mm_insert_ps_132, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           132
        ret
procend

procstart _uX_mm_insert_ps_133, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           133
        ret
procend

procstart _uX_mm_insert_ps_134, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           134
        ret
procend

procstart _uX_mm_insert_ps_135, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           135
        ret
procend

procstart _uX_mm_insert_ps_136, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           136
        ret
procend

procstart _uX_mm_insert_ps_137, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           137
        ret
procend

procstart _uX_mm_insert_ps_138, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           138
        ret
procend

procstart _uX_mm_insert_ps_139, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           139
        ret
procend

procstart _uX_mm_insert_ps_140, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           140
        ret
procend

procstart _uX_mm_insert_ps_141, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           141
        ret
procend

procstart _uX_mm_insert_ps_142, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           142
        ret
procend

procstart _uX_mm_insert_ps_143, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           143
        ret
procend

procstart _uX_mm_insert_ps_144, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           144
        ret
procend

procstart _uX_mm_insert_ps_145, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           145
        ret
procend

procstart _uX_mm_insert_ps_146, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        insertps                xmm0,           xmm1,           146
        ret
procend

procstart _uX_mm_insert_ps_147, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           147
        ret
procend

procstart _uX_mm_insert_ps_148, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           148
        ret
procend

procstart _uX_mm_insert_ps_149, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           149
        ret
procend

procstart _uX_mm_insert_ps_150, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           150
        ret
procend

procstart _uX_mm_insert_ps_151, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           151
        ret
procend

procstart _uX_mm_insert_ps_152, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           152
        ret
procend

procstart _uX_mm_insert_ps_153, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           153
        ret
procend

procstart _uX_mm_insert_ps_154, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        insertps                xmm0,           xmm1,           154
        ret
procend

procstart _uX_mm_insert_ps_155, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           155
        ret
procend

procstart _uX_mm_insert_ps_156, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           156
        ret
procend

procstart _uX_mm_insert_ps_157, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           157
        ret
procend

procstart _uX_mm_insert_ps_158, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           158
        ret
procend

procstart _uX_mm_insert_ps_159, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           159
        ret
procend

procstart _uX_mm_insert_ps_160, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           160
        ret
procend

procstart _uX_mm_insert_ps_161, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           161
        ret
procend

procstart _uX_mm_insert_ps_162, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           162
        ret
procend

procstart _uX_mm_insert_ps_163, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           163
        ret
procend

procstart _uX_mm_insert_ps_164, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           164
        ret
procend

procstart _uX_mm_insert_ps_165, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           165
        ret
procend

procstart _uX_mm_insert_ps_166, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           166
        ret
procend

procstart _uX_mm_insert_ps_167, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           167
        ret
procend

procstart _uX_mm_insert_ps_168, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           168
        ret
procend

procstart _uX_mm_insert_ps_169, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           169
        ret
procend

procstart _uX_mm_insert_ps_170, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           170
        ret
procend

procstart _uX_mm_insert_ps_171, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           171
        ret
procend

procstart _uX_mm_insert_ps_172, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           172
        ret
procend

procstart _uX_mm_insert_ps_173, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           173
        ret
procend

procstart _uX_mm_insert_ps_174, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        insertps                xmm0,           xmm1,           174
        ret
procend

procstart _uX_mm_insert_ps_175, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           175
        ret
procend

procstart _uX_mm_insert_ps_176, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           176
        ret
procend

procstart _uX_mm_insert_ps_177, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           177
        ret
procend

procstart _uX_mm_insert_ps_178, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           178
        ret
procend

procstart _uX_mm_insert_ps_179, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           179
        ret
procend

procstart _uX_mm_insert_ps_180, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           180
        ret
procend

procstart _uX_mm_insert_ps_181, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           181
        ret
procend

procstart _uX_mm_insert_ps_182, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           182
        ret
procend

procstart _uX_mm_insert_ps_183, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           183
        ret
procend

procstart _uX_mm_insert_ps_184, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           184
        ret
procend

procstart _uX_mm_insert_ps_185, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           185
        ret
procend

procstart _uX_mm_insert_ps_186, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           186
        ret
procend

procstart _uX_mm_insert_ps_187, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           187
        ret
procend

procstart _uX_mm_insert_ps_188, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           188
        ret
procend

procstart _uX_mm_insert_ps_189, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           189
        ret
procend

procstart _uX_mm_insert_ps_190, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           190
        ret
procend

procstart _uX_mm_insert_ps_191, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           191
        ret
procend

procstart _uX_mm_insert_ps_192, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           192
        ret
procend

procstart _uX_mm_insert_ps_193, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           193
        ret
procend

procstart _uX_mm_insert_ps_194, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           194
        ret
procend

procstart _uX_mm_insert_ps_195, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           195
        ret
procend

procstart _uX_mm_insert_ps_196, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           196
        ret
procend

procstart _uX_mm_insert_ps_197, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           197
        ret
procend

procstart _uX_mm_insert_ps_198, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           198
        ret
procend

procstart _uX_mm_insert_ps_199, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           199
        ret
procend

procstart _uX_mm_insert_ps_200, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           200
        ret
procend

procstart _uX_mm_insert_ps_201, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           201
        ret
procend

procstart _uX_mm_insert_ps_202, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           202
        ret
procend

procstart _uX_mm_insert_ps_203, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           203
        ret
procend

procstart _uX_mm_insert_ps_204, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           204
        ret
procend

procstart _uX_mm_insert_ps_205, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           205
        ret
procend

procstart _uX_mm_insert_ps_206, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           206
        ret
procend

procstart _uX_mm_insert_ps_207, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           207
        ret
procend

procstart _uX_mm_insert_ps_208, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           208
        ret
procend

procstart _uX_mm_insert_ps_209, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           209
        ret
procend

procstart _uX_mm_insert_ps_210, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           210
        ret
procend

procstart _uX_mm_insert_ps_211, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           211
        ret
procend

procstart _uX_mm_insert_ps_212, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           212
        ret
procend

procstart _uX_mm_insert_ps_213, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           213
        ret
procend

procstart _uX_mm_insert_ps_214, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           214
        ret
procend

procstart _uX_mm_insert_ps_215, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           215
        ret
procend

procstart _uX_mm_insert_ps_216, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           216
        ret
procend

procstart _uX_mm_insert_ps_217, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           217
        ret
procend

procstart _uX_mm_insert_ps_218, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           218
        ret
procend

procstart _uX_mm_insert_ps_219, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           219
        ret
procend

procstart _uX_mm_insert_ps_220, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           220
        ret
procend

procstart _uX_mm_insert_ps_221, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           221
        ret
procend

procstart _uX_mm_insert_ps_222, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           222
        ret
procend

procstart _uX_mm_insert_ps_223, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           223
        ret
procend

procstart _uX_mm_insert_ps_224, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           224
        ret
procend

procstart _uX_mm_insert_ps_225, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           225
        ret
procend

procstart _uX_mm_insert_ps_226, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           226
        ret
procend

procstart _uX_mm_insert_ps_227, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           227
        ret
procend

procstart _uX_mm_insert_ps_228, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           228
        ret
procend

procstart _uX_mm_insert_ps_229, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           229
        ret
procend

procstart _uX_mm_insert_ps_230, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           230
        ret
procend

procstart _uX_mm_insert_ps_231, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           231
        ret
procend

procstart _uX_mm_insert_ps_232, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           232
        ret
procend

procstart _uX_mm_insert_ps_233, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           233
        ret
procend

procstart _uX_mm_insert_ps_234, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           234
        ret
procend

procstart _uX_mm_insert_ps_235, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           235
        ret
procend

procstart _uX_mm_insert_ps_236, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           236
        ret
procend

procstart _uX_mm_insert_ps_237, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           237
        ret
procend

procstart _uX_mm_insert_ps_238, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           238
        ret
procend

procstart _uX_mm_insert_ps_239, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           239
        ret
procend

procstart _uX_mm_insert_ps_240, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           240
        ret
procend

procstart _uX_mm_insert_ps_241, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           241
        ret
procend

procstart _uX_mm_insert_ps_242, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           242
        ret
procend

procstart _uX_mm_insert_ps_243, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           243
        ret
procend

procstart _uX_mm_insert_ps_244, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           244
        ret
procend

procstart _uX_mm_insert_ps_245, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           245
        ret
procend

procstart _uX_mm_insert_ps_246, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           246
        ret
procend

procstart _uX_mm_insert_ps_247, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           247
        ret
procend

procstart _uX_mm_insert_ps_248, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           248
        ret
procend

procstart _uX_mm_insert_ps_249, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           249
        ret
procend

procstart _uX_mm_insert_ps_250, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           250
        ret
procend

procstart _uX_mm_insert_ps_251, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           251
        ret
procend

procstart _uX_mm_insert_ps_252, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           252
        ret
procend

procstart _uX_mm_insert_ps_253, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           253
        ret
procend

procstart _uX_mm_insert_ps_254, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           254
        ret
procend

procstart _uX_mm_insert_ps_255, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        insertps                xmm0,           xmm1,           255
        ret
procend

procstart _uX_mm_insert_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp2() < 0) || (rp2() > 255))
        jmp         _m128insertps_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp2()]
        jmp     dword ptr [_m128insertpsjmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128insertpsjmptable]
        mov             rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp             rbx
        endif

        _m128insertps_0 label size_t
        insertps                xmm0,           xmm1,           0
        jmp         _m128insertps_end
        _m128insertps_1 label size_t
        insertps                xmm0,           xmm1,           1
        jmp         _m128insertps_end
        _m128insertps_2 label size_t
        insertps                xmm0,           xmm1,           2
        jmp         _m128insertps_end
        _m128insertps_3 label size_t
        insertps                xmm0,           xmm1,           3
        jmp         _m128insertps_end
        _m128insertps_4 label size_t
        insertps                xmm0,           xmm1,           4
        jmp         _m128insertps_end
        _m128insertps_5 label size_t
        insertps                xmm0,           xmm1,           5
        jmp         _m128insertps_end
        _m128insertps_6 label size_t
        insertps                xmm0,           xmm1,           6
        jmp         _m128insertps_end
        _m128insertps_7 label size_t
        insertps                xmm0,           xmm1,           7
        jmp         _m128insertps_end
        _m128insertps_8 label size_t
        insertps                xmm0,           xmm1,           8
        jmp         _m128insertps_end
        _m128insertps_9 label size_t
        insertps                xmm0,           xmm1,           9
        jmp         _m128insertps_end
        _m128insertps_10 label size_t
        insertps                xmm0,           xmm1,           10
        jmp         _m128insertps_end
        _m128insertps_11 label size_t
        insertps                xmm0,           xmm1,           11
        jmp         _m128insertps_end
        _m128insertps_12 label size_t
        insertps                xmm0,           xmm1,           12
        jmp         _m128insertps_end
        _m128insertps_13 label size_t
        insertps                xmm0,           xmm1,           13
        jmp         _m128insertps_end
        _m128insertps_14 label size_t
        insertps                xmm0,           xmm1,           14
        jmp         _m128insertps_end
        _m128insertps_15 label size_t
        insertps                xmm0,           xmm1,           15
        jmp         _m128insertps_end
        _m128insertps_16 label size_t
        insertps                xmm0,           xmm1,           16
        jmp         _m128insertps_end
        _m128insertps_17 label size_t
        insertps                xmm0,           xmm1,           17
        jmp         _m128insertps_end
        _m128insertps_18 label size_t
        insertps                xmm0,           xmm1,           18
        jmp         _m128insertps_end
        _m128insertps_19 label size_t
        insertps                xmm0,           xmm1,           19
        jmp         _m128insertps_end
        _m128insertps_20 label size_t
        insertps                xmm0,           xmm1,           20
        jmp         _m128insertps_end
        _m128insertps_21 label size_t
        insertps                xmm0,           xmm1,           21
        jmp         _m128insertps_end
        _m128insertps_22 label size_t
        insertps                xmm0,           xmm1,           22
        jmp         _m128insertps_end
        _m128insertps_23 label size_t
        insertps                xmm0,           xmm1,           23
        jmp         _m128insertps_end
        _m128insertps_24 label size_t
        insertps                xmm0,           xmm1,           24
        jmp         _m128insertps_end
        _m128insertps_25 label size_t
        insertps                xmm0,           xmm1,           25
        jmp         _m128insertps_end
        _m128insertps_26 label size_t
        insertps                xmm0,           xmm1,           26
        jmp         _m128insertps_end
        _m128insertps_27 label size_t
        insertps                xmm0,           xmm1,           27
        jmp         _m128insertps_end
        _m128insertps_28 label size_t
        insertps                xmm0,           xmm1,           28
        jmp         _m128insertps_end
        _m128insertps_29 label size_t
        insertps                xmm0,           xmm1,           29
        jmp         _m128insertps_end
        _m128insertps_30 label size_t
        insertps                xmm0,           xmm1,           30
        jmp         _m128insertps_end
        _m128insertps_31 label size_t
        insertps                xmm0,           xmm1,           31
        jmp         _m128insertps_end
        _m128insertps_32 label size_t
        insertps                xmm0,           xmm1,           32
        jmp         _m128insertps_end
        _m128insertps_33 label size_t
        insertps                xmm0,           xmm1,           33
        jmp         _m128insertps_end
        _m128insertps_34 label size_t
        insertps                xmm0,           xmm1,           34
        jmp         _m128insertps_end
        _m128insertps_35 label size_t
        insertps                xmm0,           xmm1,           35
        jmp         _m128insertps_end
        _m128insertps_36 label size_t
        insertps                xmm0,           xmm1,           36
        jmp         _m128insertps_end
        _m128insertps_37 label size_t
        insertps                xmm0,           xmm1,           37
        jmp         _m128insertps_end
        _m128insertps_38 label size_t
        insertps                xmm0,           xmm1,           38
        jmp         _m128insertps_end
        _m128insertps_39 label size_t
        insertps                xmm0,           xmm1,           39
        jmp         _m128insertps_end
        _m128insertps_40 label size_t
        insertps                xmm0,           xmm1,           40
        jmp         _m128insertps_end
        _m128insertps_41 label size_t
        insertps                xmm0,           xmm1,           41
        jmp         _m128insertps_end
        _m128insertps_42 label size_t
        insertps                xmm0,           xmm1,           42
        jmp         _m128insertps_end
        _m128insertps_43 label size_t
        insertps                xmm0,           xmm1,           43
        jmp         _m128insertps_end
        _m128insertps_44 label size_t
        insertps                xmm0,           xmm1,           44
        jmp         _m128insertps_end
        _m128insertps_45 label size_t
        insertps                xmm0,           xmm1,           45
        jmp         _m128insertps_end
        _m128insertps_46 label size_t
        insertps                xmm0,           xmm1,           46
        jmp         _m128insertps_end
        _m128insertps_47 label size_t
        insertps                xmm0,           xmm1,           47
        jmp         _m128insertps_end
        _m128insertps_48 label size_t
        insertps                xmm0,           xmm1,           48
        jmp         _m128insertps_end
        _m128insertps_49 label size_t
        insertps                xmm0,           xmm1,           49
        jmp         _m128insertps_end
        _m128insertps_50 label size_t
        insertps                xmm0,           xmm1,           50
        jmp         _m128insertps_end
        _m128insertps_51 label size_t
        insertps                xmm0,           xmm1,           51
        jmp         _m128insertps_end
        _m128insertps_52 label size_t
        insertps                xmm0,           xmm1,           52
        jmp         _m128insertps_end
        _m128insertps_53 label size_t
        insertps                xmm0,           xmm1,           53
        jmp         _m128insertps_end
        _m128insertps_54 label size_t
        insertps                xmm0,           xmm1,           54
        jmp         _m128insertps_end
        _m128insertps_55 label size_t
        insertps                xmm0,           xmm1,           55
        jmp         _m128insertps_end
        _m128insertps_56 label size_t
        insertps                xmm0,           xmm1,           56
        jmp         _m128insertps_end
        _m128insertps_57 label size_t
        insertps                xmm0,           xmm1,           57
        jmp         _m128insertps_end
        _m128insertps_58 label size_t
        insertps                xmm0,           xmm1,           58
        jmp         _m128insertps_end
        _m128insertps_59 label size_t
        insertps                xmm0,           xmm1,           59
        jmp         _m128insertps_end
        _m128insertps_60 label size_t
        insertps                xmm0,           xmm1,           60
        jmp         _m128insertps_end
        _m128insertps_61 label size_t
        insertps                xmm0,           xmm1,           61
        jmp         _m128insertps_end
        _m128insertps_62 label size_t
        insertps                xmm0,           xmm1,           62
        jmp         _m128insertps_end
        _m128insertps_63 label size_t
        insertps                xmm0,           xmm1,           63
        jmp         _m128insertps_end
        _m128insertps_64 label size_t
        insertps                xmm0,           xmm1,           64
        jmp         _m128insertps_end
        _m128insertps_65 label size_t
        insertps                xmm0,           xmm1,           65
        jmp         _m128insertps_end
        _m128insertps_66 label size_t
        insertps                xmm0,           xmm1,           66
        jmp         _m128insertps_end
        _m128insertps_67 label size_t
        insertps                xmm0,           xmm1,           67
        jmp         _m128insertps_end
        _m128insertps_68 label size_t
        insertps                xmm0,           xmm1,           68
        jmp         _m128insertps_end
        _m128insertps_69 label size_t
        insertps                xmm0,           xmm1,           69
        jmp         _m128insertps_end
        _m128insertps_70 label size_t
        insertps                xmm0,           xmm1,           70
        jmp         _m128insertps_end
        _m128insertps_71 label size_t
        insertps                xmm0,           xmm1,           71
        jmp         _m128insertps_end
        _m128insertps_72 label size_t
        insertps                xmm0,           xmm1,           72
        jmp         _m128insertps_end
        _m128insertps_73 label size_t
        insertps                xmm0,           xmm1,           73
        jmp         _m128insertps_end
        _m128insertps_74 label size_t
        insertps                xmm0,           xmm1,           74
        jmp         _m128insertps_end
        _m128insertps_75 label size_t
        insertps                xmm0,           xmm1,           75
        jmp         _m128insertps_end
        _m128insertps_76 label size_t
        insertps                xmm0,           xmm1,           76
        jmp         _m128insertps_end
        _m128insertps_77 label size_t
        insertps                xmm0,           xmm1,           77
        jmp         _m128insertps_end
        _m128insertps_78 label size_t
        insertps                xmm0,           xmm1,           78
        jmp         _m128insertps_end
        _m128insertps_79 label size_t
        insertps                xmm0,           xmm1,           79
        jmp         _m128insertps_end
        _m128insertps_80 label size_t
        insertps                xmm0,           xmm1,           80
        jmp         _m128insertps_end
        _m128insertps_81 label size_t
        insertps                xmm0,           xmm1,           81
        jmp         _m128insertps_end
        _m128insertps_82 label size_t
        insertps                xmm0,           xmm1,           82
        jmp         _m128insertps_end
        _m128insertps_83 label size_t
        insertps                xmm0,           xmm1,           83
        jmp         _m128insertps_end
        _m128insertps_84 label size_t
        insertps                xmm0,           xmm1,           84
        jmp         _m128insertps_end
        _m128insertps_85 label size_t
        insertps                xmm0,           xmm1,           85
        jmp         _m128insertps_end
        _m128insertps_86 label size_t
        insertps                xmm0,           xmm1,           86
        jmp         _m128insertps_end
        _m128insertps_87 label size_t
        insertps                xmm0,           xmm1,           87
        jmp         _m128insertps_end
        _m128insertps_88 label size_t
        insertps                xmm0,           xmm1,           88
        jmp         _m128insertps_end
        _m128insertps_89 label size_t
        insertps                xmm0,           xmm1,           89
        jmp         _m128insertps_end
        _m128insertps_90 label size_t
        insertps                xmm0,           xmm1,           90
        jmp         _m128insertps_end
        _m128insertps_91 label size_t
        insertps                xmm0,           xmm1,           91
        jmp         _m128insertps_end
        _m128insertps_92 label size_t
        insertps                xmm0,           xmm1,           92
        jmp         _m128insertps_end
        _m128insertps_93 label size_t
        insertps                xmm0,           xmm1,           93
        jmp         _m128insertps_end
        _m128insertps_94 label size_t
        insertps                xmm0,           xmm1,           94
        jmp         _m128insertps_end
        _m128insertps_95 label size_t
        insertps                xmm0,           xmm1,           95
        jmp         _m128insertps_end
        _m128insertps_96 label size_t
        insertps                xmm0,           xmm1,           96
        jmp         _m128insertps_end
        _m128insertps_97 label size_t
        insertps                xmm0,           xmm1,           97
        jmp         _m128insertps_end
        _m128insertps_98 label size_t
        insertps                xmm0,           xmm1,           98
        jmp         _m128insertps_end
        _m128insertps_99 label size_t
        insertps                xmm0,           xmm1,           99
        jmp         _m128insertps_end
        _m128insertps_100 label size_t
        insertps                xmm0,           xmm1,           100
        jmp         _m128insertps_end
        _m128insertps_101 label size_t
        insertps                xmm0,           xmm1,           101
        jmp         _m128insertps_end
        _m128insertps_102 label size_t
        insertps                xmm0,           xmm1,           102
        jmp         _m128insertps_end
        _m128insertps_103 label size_t
        insertps                xmm0,           xmm1,           103
        jmp         _m128insertps_end
        _m128insertps_104 label size_t
        insertps                xmm0,           xmm1,           104
        jmp         _m128insertps_end
        _m128insertps_105 label size_t
        insertps                xmm0,           xmm1,           105
        jmp         _m128insertps_end
        _m128insertps_106 label size_t
        insertps                xmm0,           xmm1,           106
        jmp         _m128insertps_end
        _m128insertps_107 label size_t
        insertps                xmm0,           xmm1,           107
        jmp         _m128insertps_end
        _m128insertps_108 label size_t
        insertps                xmm0,           xmm1,           108
        jmp         _m128insertps_end
        _m128insertps_109 label size_t
        insertps                xmm0,           xmm1,           109
        jmp         _m128insertps_end
        _m128insertps_110 label size_t
        insertps                xmm0,           xmm1,           110
        jmp         _m128insertps_end
        _m128insertps_111 label size_t
        insertps                xmm0,           xmm1,           111
        jmp         _m128insertps_end
        _m128insertps_112 label size_t
        insertps                xmm0,           xmm1,           112
        jmp         _m128insertps_end
        _m128insertps_113 label size_t
        insertps                xmm0,           xmm1,           113
        jmp         _m128insertps_end
        _m128insertps_114 label size_t
        insertps                xmm0,           xmm1,           114
        jmp         _m128insertps_end
        _m128insertps_115 label size_t
        insertps                xmm0,           xmm1,           115
        jmp         _m128insertps_end
        _m128insertps_116 label size_t
        insertps                xmm0,           xmm1,           116
        jmp         _m128insertps_end
        _m128insertps_117 label size_t
        insertps                xmm0,           xmm1,           117
        jmp         _m128insertps_end
        _m128insertps_118 label size_t
        insertps                xmm0,           xmm1,           118
        jmp         _m128insertps_end
        _m128insertps_119 label size_t
        insertps                xmm0,           xmm1,           119
        jmp         _m128insertps_end
        _m128insertps_120 label size_t
        insertps                xmm0,           xmm1,           120
        jmp         _m128insertps_end
        _m128insertps_121 label size_t
        insertps                xmm0,           xmm1,           121
        jmp         _m128insertps_end
        _m128insertps_122 label size_t
        insertps                xmm0,           xmm1,           122
        jmp         _m128insertps_end
        _m128insertps_123 label size_t
        insertps                xmm0,           xmm1,           123
        jmp         _m128insertps_end
        _m128insertps_124 label size_t
        insertps                xmm0,           xmm1,           124
        jmp         _m128insertps_end
        _m128insertps_125 label size_t
        insertps                xmm0,           xmm1,           125
        jmp         _m128insertps_end
        _m128insertps_126 label size_t
        insertps                xmm0,           xmm1,           126
        jmp         _m128insertps_end
        _m128insertps_127 label size_t
        insertps                xmm0,           xmm1,           127
        jmp         _m128insertps_end
        _m128insertps_128 label size_t
        insertps                xmm0,           xmm1,           128
        jmp         _m128insertps_end
        _m128insertps_129 label size_t
        insertps                xmm0,           xmm1,           129
        jmp         _m128insertps_end
        _m128insertps_130 label size_t
        insertps                xmm0,           xmm1,           130
        jmp         _m128insertps_end
        _m128insertps_131 label size_t
        insertps                xmm0,           xmm1,           131
        jmp         _m128insertps_end
        _m128insertps_132 label size_t
        insertps                xmm0,           xmm1,           132
        jmp         _m128insertps_end
        _m128insertps_133 label size_t
        insertps                xmm0,           xmm1,           133
        jmp         _m128insertps_end
        _m128insertps_134 label size_t
        insertps                xmm0,           xmm1,           134
        jmp         _m128insertps_end
        _m128insertps_135 label size_t
        insertps                xmm0,           xmm1,           135
        jmp         _m128insertps_end
        _m128insertps_136 label size_t
        insertps                xmm0,           xmm1,           136
        jmp         _m128insertps_end
        _m128insertps_137 label size_t
        insertps                xmm0,           xmm1,           137
        jmp         _m128insertps_end
        _m128insertps_138 label size_t
        insertps                xmm0,           xmm1,           138
        jmp         _m128insertps_end
        _m128insertps_139 label size_t
        insertps                xmm0,           xmm1,           139
        jmp         _m128insertps_end
        _m128insertps_140 label size_t
        insertps                xmm0,           xmm1,           140
        jmp         _m128insertps_end
        _m128insertps_141 label size_t
        insertps                xmm0,           xmm1,           141
        jmp         _m128insertps_end
        _m128insertps_142 label size_t
        insertps                xmm0,           xmm1,           142
        jmp         _m128insertps_end
        _m128insertps_143 label size_t
        insertps                xmm0,           xmm1,           143
        jmp         _m128insertps_end
        _m128insertps_144 label size_t
        insertps                xmm0,           xmm1,           144
        jmp         _m128insertps_end
        _m128insertps_145 label size_t
        insertps                xmm0,           xmm1,           145
        jmp         _m128insertps_end
        _m128insertps_146 label size_t
        insertps                xmm0,           xmm1,           146
        jmp         _m128insertps_end
        _m128insertps_147 label size_t
        insertps                xmm0,           xmm1,           147
        jmp         _m128insertps_end
        _m128insertps_148 label size_t
        insertps                xmm0,           xmm1,           148
        jmp         _m128insertps_end
        _m128insertps_149 label size_t
        insertps                xmm0,           xmm1,           149
        jmp         _m128insertps_end
        _m128insertps_150 label size_t
        insertps                xmm0,           xmm1,           150
        jmp         _m128insertps_end
        _m128insertps_151 label size_t
        insertps                xmm0,           xmm1,           151
        jmp         _m128insertps_end
        _m128insertps_152 label size_t
        insertps                xmm0,           xmm1,           152
        jmp         _m128insertps_end
        _m128insertps_153 label size_t
        insertps                xmm0,           xmm1,           153
        jmp         _m128insertps_end
        _m128insertps_154 label size_t
        insertps                xmm0,           xmm1,           154
        jmp         _m128insertps_end
        _m128insertps_155 label size_t
        insertps                xmm0,           xmm1,           155
        jmp         _m128insertps_end
        _m128insertps_156 label size_t
        insertps                xmm0,           xmm1,           156
        jmp         _m128insertps_end
        _m128insertps_157 label size_t
        insertps                xmm0,           xmm1,           157
        jmp         _m128insertps_end
        _m128insertps_158 label size_t
        insertps                xmm0,           xmm1,           158
        jmp         _m128insertps_end
        _m128insertps_159 label size_t
        insertps                xmm0,           xmm1,           159
        jmp         _m128insertps_end
        _m128insertps_160 label size_t
        insertps                xmm0,           xmm1,           160
        jmp         _m128insertps_end
        _m128insertps_161 label size_t
        insertps                xmm0,           xmm1,           161
        jmp         _m128insertps_end
        _m128insertps_162 label size_t
        insertps                xmm0,           xmm1,           162
        jmp         _m128insertps_end
        _m128insertps_163 label size_t
        insertps                xmm0,           xmm1,           163
        jmp         _m128insertps_end
        _m128insertps_164 label size_t
        insertps                xmm0,           xmm1,           164
        jmp         _m128insertps_end
        _m128insertps_165 label size_t
        insertps                xmm0,           xmm1,           165
        jmp         _m128insertps_end
        _m128insertps_166 label size_t
        insertps                xmm0,           xmm1,           166
        jmp         _m128insertps_end
        _m128insertps_167 label size_t
        insertps                xmm0,           xmm1,           167
        jmp         _m128insertps_end
        _m128insertps_168 label size_t
        insertps                xmm0,           xmm1,           168
        jmp         _m128insertps_end
        _m128insertps_169 label size_t
        insertps                xmm0,           xmm1,           169
        jmp         _m128insertps_end
        _m128insertps_170 label size_t
        insertps                xmm0,           xmm1,           170
        jmp         _m128insertps_end
        _m128insertps_171 label size_t
        insertps                xmm0,           xmm1,           171
        jmp         _m128insertps_end
        _m128insertps_172 label size_t
        insertps                xmm0,           xmm1,           172
        jmp         _m128insertps_end
        _m128insertps_173 label size_t
        insertps                xmm0,           xmm1,           173
        jmp         _m128insertps_end
        _m128insertps_174 label size_t
        insertps                xmm0,           xmm1,           174
        jmp         _m128insertps_end
        _m128insertps_175 label size_t
        insertps                xmm0,           xmm1,           175
        jmp         _m128insertps_end
        _m128insertps_176 label size_t
        insertps                xmm0,           xmm1,           176
        jmp         _m128insertps_end
        _m128insertps_177 label size_t
        insertps                xmm0,           xmm1,           177
        jmp         _m128insertps_end
        _m128insertps_178 label size_t
        insertps                xmm0,           xmm1,           178
        jmp         _m128insertps_end
        _m128insertps_179 label size_t
        insertps                xmm0,           xmm1,           179
        jmp         _m128insertps_end
        _m128insertps_180 label size_t
        insertps                xmm0,           xmm1,           180
        jmp         _m128insertps_end
        _m128insertps_181 label size_t
        insertps                xmm0,           xmm1,           181
        jmp         _m128insertps_end
        _m128insertps_182 label size_t
        insertps                xmm0,           xmm1,           182
        jmp         _m128insertps_end
        _m128insertps_183 label size_t
        insertps                xmm0,           xmm1,           183
        jmp         _m128insertps_end
        _m128insertps_184 label size_t
        insertps                xmm0,           xmm1,           184
        jmp         _m128insertps_end
        _m128insertps_185 label size_t
        insertps                xmm0,           xmm1,           185
        jmp         _m128insertps_end
        _m128insertps_186 label size_t
        insertps                xmm0,           xmm1,           186
        jmp         _m128insertps_end
        _m128insertps_187 label size_t
        insertps                xmm0,           xmm1,           187
        jmp         _m128insertps_end
        _m128insertps_188 label size_t
        insertps                xmm0,           xmm1,           188
        jmp         _m128insertps_end
        _m128insertps_189 label size_t
        insertps                xmm0,           xmm1,           189
        jmp         _m128insertps_end
        _m128insertps_190 label size_t
        insertps                xmm0,           xmm1,           190
        jmp         _m128insertps_end
        _m128insertps_191 label size_t
        insertps                xmm0,           xmm1,           191
        jmp         _m128insertps_end
        _m128insertps_192 label size_t
        insertps                xmm0,           xmm1,           192
        jmp         _m128insertps_end
        _m128insertps_193 label size_t
        insertps                xmm0,           xmm1,           193
        jmp         _m128insertps_end
        _m128insertps_194 label size_t
        insertps                xmm0,           xmm1,           194
        jmp         _m128insertps_end
        _m128insertps_195 label size_t
        insertps                xmm0,           xmm1,           195
        jmp         _m128insertps_end
        _m128insertps_196 label size_t
        insertps                xmm0,           xmm1,           196
        jmp         _m128insertps_end
        _m128insertps_197 label size_t
        insertps                xmm0,           xmm1,           197
        jmp         _m128insertps_end
        _m128insertps_198 label size_t
        insertps                xmm0,           xmm1,           198
        jmp         _m128insertps_end
        _m128insertps_199 label size_t
        insertps                xmm0,           xmm1,           199
        jmp         _m128insertps_end
        _m128insertps_200 label size_t
        insertps                xmm0,           xmm1,           200
        jmp         _m128insertps_end
        _m128insertps_201 label size_t
        insertps                xmm0,           xmm1,           201
        jmp         _m128insertps_end
        _m128insertps_202 label size_t
        insertps                xmm0,           xmm1,           202
        jmp         _m128insertps_end
        _m128insertps_203 label size_t
        insertps                xmm0,           xmm1,           203
        jmp         _m128insertps_end
        _m128insertps_204 label size_t
        insertps                xmm0,           xmm1,           204
        jmp         _m128insertps_end
        _m128insertps_205 label size_t
        insertps                xmm0,           xmm1,           205
        jmp         _m128insertps_end
        _m128insertps_206 label size_t
        insertps                xmm0,           xmm1,           206
        jmp         _m128insertps_end
        _m128insertps_207 label size_t
        insertps                xmm0,           xmm1,           207
        jmp         _m128insertps_end
        _m128insertps_208 label size_t
        insertps                xmm0,           xmm1,           208
        jmp         _m128insertps_end
        _m128insertps_209 label size_t
        insertps                xmm0,           xmm1,           209
        jmp         _m128insertps_end
        _m128insertps_210 label size_t
        insertps                xmm0,           xmm1,           210
        jmp         _m128insertps_end
        _m128insertps_211 label size_t
        insertps                xmm0,           xmm1,           211
        jmp         _m128insertps_end
        _m128insertps_212 label size_t
        insertps                xmm0,           xmm1,           212
        jmp         _m128insertps_end
        _m128insertps_213 label size_t
        insertps                xmm0,           xmm1,           213
        jmp         _m128insertps_end
        _m128insertps_214 label size_t
        insertps                xmm0,           xmm1,           214
        jmp         _m128insertps_end
        _m128insertps_215 label size_t
        insertps                xmm0,           xmm1,           215
        jmp         _m128insertps_end
        _m128insertps_216 label size_t
        insertps                xmm0,           xmm1,           216
        jmp         _m128insertps_end
        _m128insertps_217 label size_t
        insertps                xmm0,           xmm1,           217
        jmp         _m128insertps_end
        _m128insertps_218 label size_t
        insertps                xmm0,           xmm1,           218
        jmp         _m128insertps_end
        _m128insertps_219 label size_t
        insertps                xmm0,           xmm1,           219
        jmp         _m128insertps_end
        _m128insertps_220 label size_t
        insertps                xmm0,           xmm1,           220
        jmp         _m128insertps_end
        _m128insertps_221 label size_t
        insertps                xmm0,           xmm1,           221
        jmp         _m128insertps_end
        _m128insertps_222 label size_t
        insertps                xmm0,           xmm1,           222
        jmp         _m128insertps_end
        _m128insertps_223 label size_t
        insertps                xmm0,           xmm1,           223
        jmp         _m128insertps_end
        _m128insertps_224 label size_t
        insertps                xmm0,           xmm1,           224
        jmp         _m128insertps_end
        _m128insertps_225 label size_t
        insertps                xmm0,           xmm1,           225
        jmp         _m128insertps_end
        _m128insertps_226 label size_t
        insertps                xmm0,           xmm1,           226
        jmp         _m128insertps_end
        _m128insertps_227 label size_t
        insertps                xmm0,           xmm1,           227
        jmp         _m128insertps_end
        _m128insertps_228 label size_t
        insertps                xmm0,           xmm1,           228
        jmp         _m128insertps_end
        _m128insertps_229 label size_t
        insertps                xmm0,           xmm1,           229
        jmp         _m128insertps_end
        _m128insertps_230 label size_t
        insertps                xmm0,           xmm1,           230
        jmp         _m128insertps_end
        _m128insertps_231 label size_t
        insertps                xmm0,           xmm1,           231
        jmp         _m128insertps_end
        _m128insertps_232 label size_t
        insertps                xmm0,           xmm1,           232
        jmp         _m128insertps_end
        _m128insertps_233 label size_t
        insertps                xmm0,           xmm1,           233
        jmp         _m128insertps_end
        _m128insertps_234 label size_t
        insertps                xmm0,           xmm1,           234
        jmp         _m128insertps_end
        _m128insertps_235 label size_t
        insertps                xmm0,           xmm1,           235
        jmp         _m128insertps_end
        _m128insertps_236 label size_t
        insertps                xmm0,           xmm1,           236
        jmp         _m128insertps_end
        _m128insertps_237 label size_t
        insertps                xmm0,           xmm1,           237
        jmp         _m128insertps_end
        _m128insertps_238 label size_t
        insertps                xmm0,           xmm1,           238
        jmp         _m128insertps_end
        _m128insertps_239 label size_t
        insertps                xmm0,           xmm1,           239
        jmp         _m128insertps_end
        _m128insertps_240 label size_t
        insertps                xmm0,           xmm1,           240
        jmp         _m128insertps_end
        _m128insertps_241 label size_t
        insertps                xmm0,           xmm1,           241
        jmp         _m128insertps_end
        _m128insertps_242 label size_t
        insertps                xmm0,           xmm1,           242
        jmp         _m128insertps_end
        _m128insertps_243 label size_t
        insertps                xmm0,           xmm1,           243
        jmp         _m128insertps_end
        _m128insertps_244 label size_t
        insertps                xmm0,           xmm1,           244
        jmp         _m128insertps_end
        _m128insertps_245 label size_t
        insertps                xmm0,           xmm1,           245
        jmp         _m128insertps_end
        _m128insertps_246 label size_t
        insertps                xmm0,           xmm1,           246
        jmp         _m128insertps_end
        _m128insertps_247 label size_t
        insertps                xmm0,           xmm1,           247
        jmp         _m128insertps_end
        _m128insertps_248 label size_t
        insertps                xmm0,           xmm1,           248
        jmp         _m128insertps_end
        _m128insertps_249 label size_t
        insertps                xmm0,           xmm1,           249
        jmp         _m128insertps_end
        _m128insertps_250 label size_t
        insertps                xmm0,           xmm1,           250
        jmp         _m128insertps_end
        _m128insertps_251 label size_t
        insertps                xmm0,           xmm1,           251
        jmp         _m128insertps_end
        _m128insertps_252 label size_t
        insertps                xmm0,           xmm1,           252
        jmp         _m128insertps_end
        _m128insertps_253 label size_t
        insertps                xmm0,           xmm1,           253
        jmp         _m128insertps_end
        _m128insertps_254 label size_t
        insertps                xmm0,           xmm1,           254
        jmp         _m128insertps_end
        _m128insertps_255 label size_t
        insertps                xmm0,           xmm1,           255
        ;jmp         _m128insertps_end

        _m128insertps_end:
        pop         rbase()
        ret
procend

;************************************
; Sum absolute 8-bit integer difference of adjacent groups of 4 byte
;************************************
procstart _uX_mm_mpsadbw_epu8_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_mpsadbw_epu8_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_mpsadbw_epu8_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_mpsadbw_epu8_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_mpsadbw_epu8_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           4
        ret
procend

procstart _uX_mm_mpsadbw_epu8_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           5
        ret
procend

procstart _uX_mm_mpsadbw_epu8_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           6
        ret
procend

procstart _uX_mm_mpsadbw_epu8_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           7
        ret
procend

procstart _uX_mm_mpsadbw_epu8_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           8
        ret
procend

procstart _uX_mm_mpsadbw_epu8_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           9
        ret
procend

procstart _uX_mm_mpsadbw_epu8_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           10
        ret
procend

procstart _uX_mm_mpsadbw_epu8_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           11
        ret
procend

procstart _uX_mm_mpsadbw_epu8_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           12
        ret
procend

procstart _uX_mm_mpsadbw_epu8_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           13
        ret
procend

procstart _uX_mm_mpsadbw_epu8_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           14
        ret
procend

procstart _uX_mm_mpsadbw_epu8_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           15
        ret
procend

procstart _uX_mm_mpsadbw_epu8_16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           16
        ret
procend

procstart _uX_mm_mpsadbw_epu8_17, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           17
        ret
procend

procstart _uX_mm_mpsadbw_epu8_18, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           18
        ret
procend

procstart _uX_mm_mpsadbw_epu8_19, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           19
        ret
procend

procstart _uX_mm_mpsadbw_epu8_20, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           20
        ret
procend

procstart _uX_mm_mpsadbw_epu8_21, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           21
        ret
procend

procstart _uX_mm_mpsadbw_epu8_22, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           22
        ret
procend

procstart _uX_mm_mpsadbw_epu8_23, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           23
        ret
procend

procstart _uX_mm_mpsadbw_epu8_24, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           24
        ret
procend

procstart _uX_mm_mpsadbw_epu8_25, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           25
        ret
procend

procstart _uX_mm_mpsadbw_epu8_26, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           26
        ret
procend

procstart _uX_mm_mpsadbw_epu8_27, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           27
        ret
procend

procstart _uX_mm_mpsadbw_epu8_28, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           28
        ret
procend

procstart _uX_mm_mpsadbw_epu8_29, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           29
        ret
procend

procstart _uX_mm_mpsadbw_epu8_30, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           30
        ret
procend

procstart _uX_mm_mpsadbw_epu8_31, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           31
        ret
procend

procstart _uX_mm_mpsadbw_epu8_32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           32
        ret
procend

procstart _uX_mm_mpsadbw_epu8_33, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           33
        ret
procend

procstart _uX_mm_mpsadbw_epu8_34, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           34
        ret
procend

procstart _uX_mm_mpsadbw_epu8_35, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           35
        ret
procend

procstart _uX_mm_mpsadbw_epu8_36, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           36
        ret
procend

procstart _uX_mm_mpsadbw_epu8_37, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           37
        ret
procend

procstart _uX_mm_mpsadbw_epu8_38, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           38
        ret
procend

procstart _uX_mm_mpsadbw_epu8_39, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           39
        ret
procend

procstart _uX_mm_mpsadbw_epu8_40, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           40
        ret
procend

procstart _uX_mm_mpsadbw_epu8_41, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           41
        ret
procend

procstart _uX_mm_mpsadbw_epu8_42, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           42
        ret
procend

procstart _uX_mm_mpsadbw_epu8_43, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           43
        ret
procend

procstart _uX_mm_mpsadbw_epu8_44, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           44
        ret
procend

procstart _uX_mm_mpsadbw_epu8_45, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           45
        ret
procend

procstart _uX_mm_mpsadbw_epu8_46, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           46
        ret
procend

procstart _uX_mm_mpsadbw_epu8_47, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           47
        ret
procend

procstart _uX_mm_mpsadbw_epu8_48, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           48
        ret
procend

procstart _uX_mm_mpsadbw_epu8_49, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           49
        ret
procend

procstart _uX_mm_mpsadbw_epu8_50, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           50
        ret
procend

procstart _uX_mm_mpsadbw_epu8_51, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           51
        ret
procend

procstart _uX_mm_mpsadbw_epu8_52, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           52
        ret
procend

procstart _uX_mm_mpsadbw_epu8_53, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           53
        ret
procend

procstart _uX_mm_mpsadbw_epu8_54, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           54
        ret
procend

procstart _uX_mm_mpsadbw_epu8_55, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           55
        ret
procend

procstart _uX_mm_mpsadbw_epu8_56, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           56
        ret
procend

procstart _uX_mm_mpsadbw_epu8_57, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           57
        ret
procend

procstart _uX_mm_mpsadbw_epu8_58, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           58
        ret
procend

procstart _uX_mm_mpsadbw_epu8_59, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           59
        ret
procend

procstart _uX_mm_mpsadbw_epu8_60, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           60
        ret
procend

procstart _uX_mm_mpsadbw_epu8_61, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           61
        ret
procend

procstart _uX_mm_mpsadbw_epu8_62, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           62
        ret
procend

procstart _uX_mm_mpsadbw_epu8_63, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           63
        ret
procend

procstart _uX_mm_mpsadbw_epu8_64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           64
        ret
procend

procstart _uX_mm_mpsadbw_epu8_65, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           65
        ret
procend

procstart _uX_mm_mpsadbw_epu8_66, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           66
        ret
procend

procstart _uX_mm_mpsadbw_epu8_67, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           67
        ret
procend

procstart _uX_mm_mpsadbw_epu8_68, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           68
        ret
procend

procstart _uX_mm_mpsadbw_epu8_69, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           69
        ret
procend

procstart _uX_mm_mpsadbw_epu8_70, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           70
        ret
procend

procstart _uX_mm_mpsadbw_epu8_71, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           71
        ret
procend

procstart _uX_mm_mpsadbw_epu8_72, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           72
        ret
procend

procstart _uX_mm_mpsadbw_epu8_73, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           73
        ret
procend

procstart _uX_mm_mpsadbw_epu8_74, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           74
        ret
procend

procstart _uX_mm_mpsadbw_epu8_75, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           75
        ret
procend

procstart _uX_mm_mpsadbw_epu8_76, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           76
        ret
procend

procstart _uX_mm_mpsadbw_epu8_77, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           77
        ret
procend

procstart _uX_mm_mpsadbw_epu8_78, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           78
        ret
procend

procstart _uX_mm_mpsadbw_epu8_79, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           79
        ret
procend

procstart _uX_mm_mpsadbw_epu8_80, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           80
        ret
procend

procstart _uX_mm_mpsadbw_epu8_81, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           81
        ret
procend

procstart _uX_mm_mpsadbw_epu8_82, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           82
        ret
procend

procstart _uX_mm_mpsadbw_epu8_83, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           83
        ret
procend

procstart _uX_mm_mpsadbw_epu8_84, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           84
        ret
procend

procstart _uX_mm_mpsadbw_epu8_85, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           85
        ret
procend

procstart _uX_mm_mpsadbw_epu8_86, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           86
        ret
procend

procstart _uX_mm_mpsadbw_epu8_87, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           87
        ret
procend

procstart _uX_mm_mpsadbw_epu8_88, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           88
        ret
procend

procstart _uX_mm_mpsadbw_epu8_89, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           89
        ret
procend

procstart _uX_mm_mpsadbw_epu8_90, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           90
        ret
procend

procstart _uX_mm_mpsadbw_epu8_91, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           91
        ret
procend

procstart _uX_mm_mpsadbw_epu8_92, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           92
        ret
procend

procstart _uX_mm_mpsadbw_epu8_93, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           93
        ret
procend

procstart _uX_mm_mpsadbw_epu8_94, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           94
        ret
procend

procstart _uX_mm_mpsadbw_epu8_95, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           95
        ret
procend

procstart _uX_mm_mpsadbw_epu8_96, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           96
        ret
procend

procstart _uX_mm_mpsadbw_epu8_97, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           97
        ret
procend

procstart _uX_mm_mpsadbw_epu8_98, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           98
        ret
procend

procstart _uX_mm_mpsadbw_epu8_99, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           99
        ret
procend

procstart _uX_mm_mpsadbw_epu8_100, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           100
        ret
procend

procstart _uX_mm_mpsadbw_epu8_101, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           101
        ret
procend

procstart _uX_mm_mpsadbw_epu8_102, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           102
        ret
procend

procstart _uX_mm_mpsadbw_epu8_103, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           103
        ret
procend

procstart _uX_mm_mpsadbw_epu8_104, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           104
        ret
procend

procstart _uX_mm_mpsadbw_epu8_105, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           105
        ret
procend

procstart _uX_mm_mpsadbw_epu8_106, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           106
        ret
procend

procstart _uX_mm_mpsadbw_epu8_107, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           107
        ret
procend

procstart _uX_mm_mpsadbw_epu8_108, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           108
        ret
procend

procstart _uX_mm_mpsadbw_epu8_109, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           109
        ret
procend

procstart _uX_mm_mpsadbw_epu8_110, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           110
        ret
procend

procstart _uX_mm_mpsadbw_epu8_111, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           111
        ret
procend

procstart _uX_mm_mpsadbw_epu8_112, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           112
        ret
procend

procstart _uX_mm_mpsadbw_epu8_113, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           113
        ret
procend

procstart _uX_mm_mpsadbw_epu8_114, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           114
        ret
procend

procstart _uX_mm_mpsadbw_epu8_115, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           115
        ret
procend

procstart _uX_mm_mpsadbw_epu8_116, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           116
        ret
procend

procstart _uX_mm_mpsadbw_epu8_117, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           117
        ret
procend

procstart _uX_mm_mpsadbw_epu8_118, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           118
        ret
procend

procstart _uX_mm_mpsadbw_epu8_119, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           119
        ret
procend

procstart _uX_mm_mpsadbw_epu8_120, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           120
        ret
procend

procstart _uX_mm_mpsadbw_epu8_121, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           121
        ret
procend

procstart _uX_mm_mpsadbw_epu8_122, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           122
        ret
procend

procstart _uX_mm_mpsadbw_epu8_123, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           123
        ret
procend

procstart _uX_mm_mpsadbw_epu8_124, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           124
        ret
procend

procstart _uX_mm_mpsadbw_epu8_125, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           125
        ret
procend

procstart _uX_mm_mpsadbw_epu8_126, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           126
        ret
procend

procstart _uX_mm_mpsadbw_epu8_127, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           127
        ret
procend

procstart _uX_mm_mpsadbw_epu8_128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           128
        ret
procend

procstart _uX_mm_mpsadbw_epu8_129, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           129
        ret
procend

procstart _uX_mm_mpsadbw_epu8_130, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           130
        ret
procend

procstart _uX_mm_mpsadbw_epu8_131, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           131
        ret
procend

procstart _uX_mm_mpsadbw_epu8_132, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           132
        ret
procend

procstart _uX_mm_mpsadbw_epu8_133, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           133
        ret
procend

procstart _uX_mm_mpsadbw_epu8_134, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           134
        ret
procend

procstart _uX_mm_mpsadbw_epu8_135, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           135
        ret
procend

procstart _uX_mm_mpsadbw_epu8_136, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           136
        ret
procend

procstart _uX_mm_mpsadbw_epu8_137, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           137
        ret
procend

procstart _uX_mm_mpsadbw_epu8_138, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           138
        ret
procend

procstart _uX_mm_mpsadbw_epu8_139, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           139
        ret
procend

procstart _uX_mm_mpsadbw_epu8_140, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           140
        ret
procend

procstart _uX_mm_mpsadbw_epu8_141, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           141
        ret
procend

procstart _uX_mm_mpsadbw_epu8_142, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           142
        ret
procend

procstart _uX_mm_mpsadbw_epu8_143, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           143
        ret
procend

procstart _uX_mm_mpsadbw_epu8_144, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           144
        ret
procend

procstart _uX_mm_mpsadbw_epu8_145, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           145
        ret
procend

procstart _uX_mm_mpsadbw_epu8_146, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        mpsadbw             xmm0,           xmm1,           146
        ret
procend

procstart _uX_mm_mpsadbw_epu8_147, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           147
        ret
procend

procstart _uX_mm_mpsadbw_epu8_148, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           148
        ret
procend

procstart _uX_mm_mpsadbw_epu8_149, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           149
        ret
procend

procstart _uX_mm_mpsadbw_epu8_150, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           150
        ret
procend

procstart _uX_mm_mpsadbw_epu8_151, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           151
        ret
procend

procstart _uX_mm_mpsadbw_epu8_152, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           152
        ret
procend

procstart _uX_mm_mpsadbw_epu8_153, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           153
        ret
procend

procstart _uX_mm_mpsadbw_epu8_154, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        mpsadbw             xmm0,           xmm1,           154
        ret
procend

procstart _uX_mm_mpsadbw_epu8_155, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           155
        ret
procend

procstart _uX_mm_mpsadbw_epu8_156, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           156
        ret
procend

procstart _uX_mm_mpsadbw_epu8_157, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           157
        ret
procend

procstart _uX_mm_mpsadbw_epu8_158, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           158
        ret
procend

procstart _uX_mm_mpsadbw_epu8_159, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           159
        ret
procend

procstart _uX_mm_mpsadbw_epu8_160, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           160
        ret
procend

procstart _uX_mm_mpsadbw_epu8_161, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           161
        ret
procend

procstart _uX_mm_mpsadbw_epu8_162, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           162
        ret
procend

procstart _uX_mm_mpsadbw_epu8_163, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           163
        ret
procend

procstart _uX_mm_mpsadbw_epu8_164, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           164
        ret
procend

procstart _uX_mm_mpsadbw_epu8_165, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           165
        ret
procend

procstart _uX_mm_mpsadbw_epu8_166, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           166
        ret
procend

procstart _uX_mm_mpsadbw_epu8_167, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           167
        ret
procend

procstart _uX_mm_mpsadbw_epu8_168, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           168
        ret
procend

procstart _uX_mm_mpsadbw_epu8_169, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           169
        ret
procend

procstart _uX_mm_mpsadbw_epu8_170, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           170
        ret
procend

procstart _uX_mm_mpsadbw_epu8_171, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           171
        ret
procend

procstart _uX_mm_mpsadbw_epu8_172, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           172
        ret
procend

procstart _uX_mm_mpsadbw_epu8_173, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           173
        ret
procend

procstart _uX_mm_mpsadbw_epu8_174, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword 
        mpsadbw             xmm0,           xmm1,           174
        ret
procend

procstart _uX_mm_mpsadbw_epu8_175, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           175
        ret
procend

procstart _uX_mm_mpsadbw_epu8_176, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           176
        ret
procend

procstart _uX_mm_mpsadbw_epu8_177, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           177
        ret
procend

procstart _uX_mm_mpsadbw_epu8_178, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           178
        ret
procend

procstart _uX_mm_mpsadbw_epu8_179, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           179
        ret
procend

procstart _uX_mm_mpsadbw_epu8_180, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           180
        ret
procend

procstart _uX_mm_mpsadbw_epu8_181, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           181
        ret
procend

procstart _uX_mm_mpsadbw_epu8_182, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           182
        ret
procend

procstart _uX_mm_mpsadbw_epu8_183, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           183
        ret
procend

procstart _uX_mm_mpsadbw_epu8_184, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           184
        ret
procend

procstart _uX_mm_mpsadbw_epu8_185, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           185
        ret
procend

procstart _uX_mm_mpsadbw_epu8_186, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           186
        ret
procend

procstart _uX_mm_mpsadbw_epu8_187, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           187
        ret
procend

procstart _uX_mm_mpsadbw_epu8_188, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           188
        ret
procend

procstart _uX_mm_mpsadbw_epu8_189, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           189
        ret
procend

procstart _uX_mm_mpsadbw_epu8_190, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           190
        ret
procend

procstart _uX_mm_mpsadbw_epu8_191, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           191
        ret
procend

procstart _uX_mm_mpsadbw_epu8_192, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           192
        ret
procend

procstart _uX_mm_mpsadbw_epu8_193, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           193
        ret
procend

procstart _uX_mm_mpsadbw_epu8_194, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           194
        ret
procend

procstart _uX_mm_mpsadbw_epu8_195, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           195
        ret
procend

procstart _uX_mm_mpsadbw_epu8_196, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           196
        ret
procend

procstart _uX_mm_mpsadbw_epu8_197, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           197
        ret
procend

procstart _uX_mm_mpsadbw_epu8_198, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           198
        ret
procend

procstart _uX_mm_mpsadbw_epu8_199, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           199
        ret
procend

procstart _uX_mm_mpsadbw_epu8_200, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           200
        ret
procend

procstart _uX_mm_mpsadbw_epu8_201, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           201
        ret
procend

procstart _uX_mm_mpsadbw_epu8_202, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           202
        ret
procend

procstart _uX_mm_mpsadbw_epu8_203, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           203
        ret
procend

procstart _uX_mm_mpsadbw_epu8_204, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           204
        ret
procend

procstart _uX_mm_mpsadbw_epu8_205, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           205
        ret
procend

procstart _uX_mm_mpsadbw_epu8_206, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           206
        ret
procend

procstart _uX_mm_mpsadbw_epu8_207, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           207
        ret
procend

procstart _uX_mm_mpsadbw_epu8_208, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           208
        ret
procend

procstart _uX_mm_mpsadbw_epu8_209, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           209
        ret
procend

procstart _uX_mm_mpsadbw_epu8_210, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           210
        ret
procend

procstart _uX_mm_mpsadbw_epu8_211, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           211
        ret
procend

procstart _uX_mm_mpsadbw_epu8_212, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           212
        ret
procend

procstart _uX_mm_mpsadbw_epu8_213, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           213
        ret
procend

procstart _uX_mm_mpsadbw_epu8_214, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           214
        ret
procend

procstart _uX_mm_mpsadbw_epu8_215, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           215
        ret
procend

procstart _uX_mm_mpsadbw_epu8_216, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           216
        ret
procend

procstart _uX_mm_mpsadbw_epu8_217, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           217
        ret
procend

procstart _uX_mm_mpsadbw_epu8_218, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           218
        ret
procend

procstart _uX_mm_mpsadbw_epu8_219, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           219
        ret
procend

procstart _uX_mm_mpsadbw_epu8_220, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           220
        ret
procend

procstart _uX_mm_mpsadbw_epu8_221, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           221
        ret
procend

procstart _uX_mm_mpsadbw_epu8_222, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           222
        ret
procend

procstart _uX_mm_mpsadbw_epu8_223, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           223
        ret
procend

procstart _uX_mm_mpsadbw_epu8_224, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           224
        ret
procend

procstart _uX_mm_mpsadbw_epu8_225, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           225
        ret
procend

procstart _uX_mm_mpsadbw_epu8_226, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           226
        ret
procend

procstart _uX_mm_mpsadbw_epu8_227, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           227
        ret
procend

procstart _uX_mm_mpsadbw_epu8_228, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           228
        ret
procend

procstart _uX_mm_mpsadbw_epu8_229, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           229
        ret
procend

procstart _uX_mm_mpsadbw_epu8_230, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           230
        ret
procend

procstart _uX_mm_mpsadbw_epu8_231, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           231
        ret
procend

procstart _uX_mm_mpsadbw_epu8_232, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           232
        ret
procend

procstart _uX_mm_mpsadbw_epu8_233, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           233
        ret
procend

procstart _uX_mm_mpsadbw_epu8_234, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           234
        ret
procend

procstart _uX_mm_mpsadbw_epu8_235, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           235
        ret
procend

procstart _uX_mm_mpsadbw_epu8_236, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           236
        ret
procend

procstart _uX_mm_mpsadbw_epu8_237, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           237
        ret
procend

procstart _uX_mm_mpsadbw_epu8_238, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           238
        ret
procend

procstart _uX_mm_mpsadbw_epu8_239, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           239
        ret
procend

procstart _uX_mm_mpsadbw_epu8_240, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           240
        ret
procend

procstart _uX_mm_mpsadbw_epu8_241, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           241
        ret
procend

procstart _uX_mm_mpsadbw_epu8_242, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           242
        ret
procend

procstart _uX_mm_mpsadbw_epu8_243, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           243
        ret
procend

procstart _uX_mm_mpsadbw_epu8_244, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           244
        ret
procend

procstart _uX_mm_mpsadbw_epu8_245, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           245
        ret
procend

procstart _uX_mm_mpsadbw_epu8_246, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           246
        ret
procend

procstart _uX_mm_mpsadbw_epu8_247, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           247
        ret
procend

procstart _uX_mm_mpsadbw_epu8_248, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           248
        ret
procend

procstart _uX_mm_mpsadbw_epu8_249, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           249
        ret
procend

procstart _uX_mm_mpsadbw_epu8_250, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           250
        ret
procend

procstart _uX_mm_mpsadbw_epu8_251, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           251
        ret
procend

procstart _uX_mm_mpsadbw_epu8_252, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           252
        ret
procend

procstart _uX_mm_mpsadbw_epu8_253, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           253
        ret
procend

procstart _uX_mm_mpsadbw_epu8_254, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           254
        ret
procend

procstart _uX_mm_mpsadbw_epu8_255, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        mpsadbw             xmm0,           xmm1,           255
        ret
procend

procstart _uX_mm_mpsadbw_epu8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp2() < 0) || (rp2() > 255))
        jmp         _m128impsadbwepu8_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp2()]
        jmp     dword ptr [_m128impsadbwepu8jmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128impsadbwepu8jmptable]
        mov             rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp             rbx
        endif

        _m128impsadbwepu8_0 label size_t
        mpsadbw             xmm0,           xmm1,           0
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_1 label size_t
        mpsadbw             xmm0,           xmm1,           1
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_2 label size_t
        mpsadbw             xmm0,           xmm1,           2
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_3 label size_t
        mpsadbw             xmm0,           xmm1,           3
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_4 label size_t
        mpsadbw             xmm0,           xmm1,           4
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_5 label size_t
        mpsadbw             xmm0,           xmm1,           5
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_6 label size_t
        mpsadbw             xmm0,           xmm1,           6
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_7 label size_t
        mpsadbw             xmm0,           xmm1,           7
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_8 label size_t
        mpsadbw             xmm0,           xmm1,           8
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_9 label size_t
        mpsadbw             xmm0,           xmm1,           9
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_10 label size_t
        mpsadbw             xmm0,           xmm1,           10
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_11 label size_t
        mpsadbw             xmm0,           xmm1,           11
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_12 label size_t
        mpsadbw             xmm0,           xmm1,           12
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_13 label size_t
        mpsadbw             xmm0,           xmm1,           13
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_14 label size_t
        mpsadbw             xmm0,           xmm1,           14
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_15 label size_t
        mpsadbw             xmm0,           xmm1,           15
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_16 label size_t
        mpsadbw             xmm0,           xmm1,           16
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_17 label size_t
        mpsadbw             xmm0,           xmm1,           17
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_18 label size_t
        mpsadbw             xmm0,           xmm1,           18
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_19 label size_t
        mpsadbw             xmm0,           xmm1,           19
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_20 label size_t
        mpsadbw             xmm0,           xmm1,           20
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_21 label size_t
        mpsadbw             xmm0,           xmm1,           21
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_22 label size_t
        mpsadbw             xmm0,           xmm1,           22
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_23 label size_t
        mpsadbw             xmm0,           xmm1,           23
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_24 label size_t
        mpsadbw             xmm0,           xmm1,           24
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_25 label size_t
        mpsadbw             xmm0,           xmm1,           25
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_26 label size_t
        mpsadbw             xmm0,           xmm1,           26
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_27 label size_t
        mpsadbw             xmm0,           xmm1,           27
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_28 label size_t
        mpsadbw             xmm0,           xmm1,           28
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_29 label size_t
        mpsadbw             xmm0,           xmm1,           29
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_30 label size_t
        mpsadbw             xmm0,           xmm1,           30
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_31 label size_t
        mpsadbw             xmm0,           xmm1,           31
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_32 label size_t
        mpsadbw             xmm0,           xmm1,           32
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_33 label size_t
        mpsadbw             xmm0,           xmm1,           33
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_34 label size_t
        mpsadbw             xmm0,           xmm1,           34
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_35 label size_t
        mpsadbw             xmm0,           xmm1,           35
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_36 label size_t
        mpsadbw             xmm0,           xmm1,           36
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_37 label size_t
        mpsadbw             xmm0,           xmm1,           37
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_38 label size_t
        mpsadbw             xmm0,           xmm1,           38
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_39 label size_t
        mpsadbw             xmm0,           xmm1,           39
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_40 label size_t
        mpsadbw             xmm0,           xmm1,           40
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_41 label size_t
        mpsadbw             xmm0,           xmm1,           41
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_42 label size_t
        mpsadbw             xmm0,           xmm1,           42
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_43 label size_t
        mpsadbw             xmm0,           xmm1,           43
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_44 label size_t
        mpsadbw             xmm0,           xmm1,           44
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_45 label size_t
        mpsadbw             xmm0,           xmm1,           45
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_46 label size_t
        mpsadbw             xmm0,           xmm1,           46
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_47 label size_t
        mpsadbw             xmm0,           xmm1,           47
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_48 label size_t
        mpsadbw             xmm0,           xmm1,           48
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_49 label size_t
        mpsadbw             xmm0,           xmm1,           49
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_50 label size_t
        mpsadbw             xmm0,           xmm1,           50
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_51 label size_t
        mpsadbw             xmm0,           xmm1,           51
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_52 label size_t
        mpsadbw             xmm0,           xmm1,           52
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_53 label size_t
        mpsadbw             xmm0,           xmm1,           53
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_54 label size_t
        mpsadbw             xmm0,           xmm1,           54
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_55 label size_t
        mpsadbw             xmm0,           xmm1,           55
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_56 label size_t
        mpsadbw             xmm0,           xmm1,           56
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_57 label size_t
        mpsadbw             xmm0,           xmm1,           57
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_58 label size_t
        mpsadbw             xmm0,           xmm1,           58
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_59 label size_t
        mpsadbw             xmm0,           xmm1,           59
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_60 label size_t
        mpsadbw             xmm0,           xmm1,           60
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_61 label size_t
        mpsadbw             xmm0,           xmm1,           61
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_62 label size_t
        mpsadbw             xmm0,           xmm1,           62
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_63 label size_t
        mpsadbw             xmm0,           xmm1,           63
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_64 label size_t
        mpsadbw             xmm0,           xmm1,           64
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_65 label size_t
        mpsadbw             xmm0,           xmm1,           65
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_66 label size_t
        mpsadbw             xmm0,           xmm1,           66
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_67 label size_t
        mpsadbw             xmm0,           xmm1,           67
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_68 label size_t
        mpsadbw             xmm0,           xmm1,           68
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_69 label size_t
        mpsadbw             xmm0,           xmm1,           69
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_70 label size_t
        mpsadbw             xmm0,           xmm1,           70
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_71 label size_t
        mpsadbw             xmm0,           xmm1,           71
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_72 label size_t
        mpsadbw             xmm0,           xmm1,           72
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_73 label size_t
        mpsadbw             xmm0,           xmm1,           73
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_74 label size_t
        mpsadbw             xmm0,           xmm1,           74
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_75 label size_t
        mpsadbw             xmm0,           xmm1,           75
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_76 label size_t
        mpsadbw             xmm0,           xmm1,           76
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_77 label size_t
        mpsadbw             xmm0,           xmm1,           77
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_78 label size_t
        mpsadbw             xmm0,           xmm1,           78
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_79 label size_t
        mpsadbw             xmm0,           xmm1,           79
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_80 label size_t
        mpsadbw             xmm0,           xmm1,           80
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_81 label size_t
        mpsadbw             xmm0,           xmm1,           81
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_82 label size_t
        mpsadbw             xmm0,           xmm1,           82
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_83 label size_t
        mpsadbw             xmm0,           xmm1,           83
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_84 label size_t
        mpsadbw             xmm0,           xmm1,           84
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_85 label size_t
        mpsadbw             xmm0,           xmm1,           85
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_86 label size_t
        mpsadbw             xmm0,           xmm1,           86
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_87 label size_t
        mpsadbw             xmm0,           xmm1,           87
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_88 label size_t
        mpsadbw             xmm0,           xmm1,           88
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_89 label size_t
        mpsadbw             xmm0,           xmm1,           89
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_90 label size_t
        mpsadbw             xmm0,           xmm1,           90
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_91 label size_t
        mpsadbw             xmm0,           xmm1,           91
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_92 label size_t
        mpsadbw             xmm0,           xmm1,           92
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_93 label size_t
        mpsadbw             xmm0,           xmm1,           93
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_94 label size_t
        mpsadbw             xmm0,           xmm1,           94
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_95 label size_t
        mpsadbw             xmm0,           xmm1,           95
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_96 label size_t
        mpsadbw             xmm0,           xmm1,           96
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_97 label size_t
        mpsadbw             xmm0,           xmm1,           97
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_98 label size_t
        mpsadbw             xmm0,           xmm1,           98
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_99 label size_t
        mpsadbw             xmm0,           xmm1,           99
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_100 label size_t
        mpsadbw             xmm0,           xmm1,           100
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_101 label size_t
        mpsadbw             xmm0,           xmm1,           101
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_102 label size_t
        mpsadbw             xmm0,           xmm1,           102
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_103 label size_t
        mpsadbw             xmm0,           xmm1,           103
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_104 label size_t
        mpsadbw             xmm0,           xmm1,           104
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_105 label size_t
        mpsadbw             xmm0,           xmm1,           105
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_106 label size_t
        mpsadbw             xmm0,           xmm1,           106
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_107 label size_t
        mpsadbw             xmm0,           xmm1,           107
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_108 label size_t
        mpsadbw             xmm0,           xmm1,           108
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_109 label size_t
        mpsadbw             xmm0,           xmm1,           109
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_110 label size_t
        mpsadbw             xmm0,           xmm1,           110
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_111 label size_t
        mpsadbw             xmm0,           xmm1,           111
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_112 label size_t
        mpsadbw             xmm0,           xmm1,           112
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_113 label size_t
        mpsadbw             xmm0,           xmm1,           113
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_114 label size_t
        mpsadbw             xmm0,           xmm1,           114
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_115 label size_t
        mpsadbw             xmm0,           xmm1,           115
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_116 label size_t
        mpsadbw             xmm0,           xmm1,           116
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_117 label size_t
        mpsadbw             xmm0,           xmm1,           117
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_118 label size_t
        mpsadbw             xmm0,           xmm1,           118
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_119 label size_t
        mpsadbw             xmm0,           xmm1,           119
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_120 label size_t
        mpsadbw             xmm0,           xmm1,           120
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_121 label size_t
        mpsadbw             xmm0,           xmm1,           121
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_122 label size_t
        mpsadbw             xmm0,           xmm1,           122
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_123 label size_t
        mpsadbw             xmm0,           xmm1,           123
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_124 label size_t
        mpsadbw             xmm0,           xmm1,           124
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_125 label size_t
        mpsadbw             xmm0,           xmm1,           125
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_126 label size_t
        mpsadbw             xmm0,           xmm1,           126
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_127 label size_t
        mpsadbw             xmm0,           xmm1,           127
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_128 label size_t
        mpsadbw             xmm0,           xmm1,           128
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_129 label size_t
        mpsadbw             xmm0,           xmm1,           129
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_130 label size_t
        mpsadbw             xmm0,           xmm1,           130
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_131 label size_t
        mpsadbw             xmm0,           xmm1,           131
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_132 label size_t
        mpsadbw             xmm0,           xmm1,           132
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_133 label size_t
        mpsadbw             xmm0,           xmm1,           133
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_134 label size_t
        mpsadbw             xmm0,           xmm1,           134
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_135 label size_t
        mpsadbw             xmm0,           xmm1,           135
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_136 label size_t
        mpsadbw             xmm0,           xmm1,           136
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_137 label size_t
        mpsadbw             xmm0,           xmm1,           137
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_138 label size_t
        mpsadbw             xmm0,           xmm1,           138
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_139 label size_t
        mpsadbw             xmm0,           xmm1,           139
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_140 label size_t
        mpsadbw             xmm0,           xmm1,           140
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_141 label size_t
        mpsadbw             xmm0,           xmm1,           141
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_142 label size_t
        mpsadbw             xmm0,           xmm1,           142
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_143 label size_t
        mpsadbw             xmm0,           xmm1,           143
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_144 label size_t
        mpsadbw             xmm0,           xmm1,           144
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_145 label size_t
        mpsadbw             xmm0,           xmm1,           145
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_146 label size_t
        mpsadbw             xmm0,           xmm1,           146
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_147 label size_t
        mpsadbw             xmm0,           xmm1,           147
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_148 label size_t
        mpsadbw             xmm0,           xmm1,           148
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_149 label size_t
        mpsadbw             xmm0,           xmm1,           149
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_150 label size_t
        mpsadbw             xmm0,           xmm1,           150
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_151 label size_t
        mpsadbw             xmm0,           xmm1,           151
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_152 label size_t
        mpsadbw             xmm0,           xmm1,           152
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_153 label size_t
        mpsadbw             xmm0,           xmm1,           153
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_154 label size_t
        mpsadbw             xmm0,           xmm1,           154
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_155 label size_t
        mpsadbw             xmm0,           xmm1,           155
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_156 label size_t
        mpsadbw             xmm0,           xmm1,           156
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_157 label size_t
        mpsadbw             xmm0,           xmm1,           157
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_158 label size_t
        mpsadbw             xmm0,           xmm1,           158
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_159 label size_t
        mpsadbw             xmm0,           xmm1,           159
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_160 label size_t
        mpsadbw             xmm0,           xmm1,           160
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_161 label size_t
        mpsadbw             xmm0,           xmm1,           161
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_162 label size_t
        mpsadbw             xmm0,           xmm1,           162
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_163 label size_t
        mpsadbw             xmm0,           xmm1,           163
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_164 label size_t
        mpsadbw             xmm0,           xmm1,           164
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_165 label size_t
        mpsadbw             xmm0,           xmm1,           165
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_166 label size_t
        mpsadbw             xmm0,           xmm1,           166
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_167 label size_t
        mpsadbw             xmm0,           xmm1,           167
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_168 label size_t
        mpsadbw             xmm0,           xmm1,           168
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_169 label size_t
        mpsadbw             xmm0,           xmm1,           169
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_170 label size_t
        mpsadbw             xmm0,           xmm1,           170
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_171 label size_t
        mpsadbw             xmm0,           xmm1,           171
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_172 label size_t
        mpsadbw             xmm0,           xmm1,           172
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_173 label size_t
        mpsadbw             xmm0,           xmm1,           173
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_174 label size_t
        mpsadbw             xmm0,           xmm1,           174
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_175 label size_t
        mpsadbw             xmm0,           xmm1,           175
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_176 label size_t
        mpsadbw             xmm0,           xmm1,           176
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_177 label size_t
        mpsadbw             xmm0,           xmm1,           177
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_178 label size_t
        mpsadbw             xmm0,           xmm1,           178
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_179 label size_t
        mpsadbw             xmm0,           xmm1,           179
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_180 label size_t
        mpsadbw             xmm0,           xmm1,           180
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_181 label size_t
        mpsadbw             xmm0,           xmm1,           181
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_182 label size_t
        mpsadbw             xmm0,           xmm1,           182
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_183 label size_t
        mpsadbw             xmm0,           xmm1,           183
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_184 label size_t
        mpsadbw             xmm0,           xmm1,           184
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_185 label size_t
        mpsadbw             xmm0,           xmm1,           185
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_186 label size_t
        mpsadbw             xmm0,           xmm1,           186
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_187 label size_t
        mpsadbw             xmm0,           xmm1,           187
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_188 label size_t
        mpsadbw             xmm0,           xmm1,           188
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_189 label size_t
        mpsadbw             xmm0,           xmm1,           189
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_190 label size_t
        mpsadbw             xmm0,           xmm1,           190
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_191 label size_t
        mpsadbw             xmm0,           xmm1,           191
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_192 label size_t
        mpsadbw             xmm0,           xmm1,           192
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_193 label size_t
        mpsadbw             xmm0,           xmm1,           193
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_194 label size_t
        mpsadbw             xmm0,           xmm1,           194
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_195 label size_t
        mpsadbw             xmm0,           xmm1,           195
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_196 label size_t
        mpsadbw             xmm0,           xmm1,           196
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_197 label size_t
        mpsadbw             xmm0,           xmm1,           197
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_198 label size_t
        mpsadbw             xmm0,           xmm1,           198
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_199 label size_t
        mpsadbw             xmm0,           xmm1,           199
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_200 label size_t
        mpsadbw             xmm0,           xmm1,           200
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_201 label size_t
        mpsadbw             xmm0,           xmm1,           201
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_202 label size_t
        mpsadbw             xmm0,           xmm1,           202
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_203 label size_t
        mpsadbw             xmm0,           xmm1,           203
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_204 label size_t
        mpsadbw             xmm0,           xmm1,           204
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_205 label size_t
        mpsadbw             xmm0,           xmm1,           205
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_206 label size_t
        mpsadbw             xmm0,           xmm1,           206
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_207 label size_t
        mpsadbw             xmm0,           xmm1,           207
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_208 label size_t
        mpsadbw             xmm0,           xmm1,           208
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_209 label size_t
        mpsadbw             xmm0,           xmm1,           209
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_210 label size_t
        mpsadbw             xmm0,           xmm1,           210
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_211 label size_t
        mpsadbw             xmm0,           xmm1,           211
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_212 label size_t
        mpsadbw             xmm0,           xmm1,           212
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_213 label size_t
        mpsadbw             xmm0,           xmm1,           213
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_214 label size_t
        mpsadbw             xmm0,           xmm1,           214
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_215 label size_t
        mpsadbw             xmm0,           xmm1,           215
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_216 label size_t
        mpsadbw             xmm0,           xmm1,           216
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_217 label size_t
        mpsadbw             xmm0,           xmm1,           217
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_218 label size_t
        mpsadbw             xmm0,           xmm1,           218
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_219 label size_t
        mpsadbw             xmm0,           xmm1,           219
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_220 label size_t
        mpsadbw             xmm0,           xmm1,           220
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_221 label size_t
        mpsadbw             xmm0,           xmm1,           221
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_222 label size_t
        mpsadbw             xmm0,           xmm1,           222
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_223 label size_t
        mpsadbw             xmm0,           xmm1,           223
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_224 label size_t
        mpsadbw             xmm0,           xmm1,           224
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_225 label size_t
        mpsadbw             xmm0,           xmm1,           225
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_226 label size_t
        mpsadbw             xmm0,           xmm1,           226
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_227 label size_t
        mpsadbw             xmm0,           xmm1,           227
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_228 label size_t
        mpsadbw             xmm0,           xmm1,           228
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_229 label size_t
        mpsadbw             xmm0,           xmm1,           229
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_230 label size_t
        mpsadbw             xmm0,           xmm1,           230
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_231 label size_t
        mpsadbw             xmm0,           xmm1,           231
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_232 label size_t
        mpsadbw             xmm0,           xmm1,           232
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_233 label size_t
        mpsadbw             xmm0,           xmm1,           233
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_234 label size_t
        mpsadbw             xmm0,           xmm1,           234
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_235 label size_t
        mpsadbw             xmm0,           xmm1,           235
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_236 label size_t
        mpsadbw             xmm0,           xmm1,           236
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_237 label size_t
        mpsadbw             xmm0,           xmm1,           237
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_238 label size_t
        mpsadbw             xmm0,           xmm1,           238
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_239 label size_t
        mpsadbw             xmm0,           xmm1,           239
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_240 label size_t
        mpsadbw             xmm0,           xmm1,           240
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_241 label size_t
        mpsadbw             xmm0,           xmm1,           241
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_242 label size_t
        mpsadbw             xmm0,           xmm1,           242
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_243 label size_t
        mpsadbw             xmm0,           xmm1,           243
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_244 label size_t
        mpsadbw             xmm0,           xmm1,           244
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_245 label size_t
        mpsadbw             xmm0,           xmm1,           245
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_246 label size_t
        mpsadbw             xmm0,           xmm1,           246
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_247 label size_t
        mpsadbw             xmm0,           xmm1,           247
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_248 label size_t
        mpsadbw             xmm0,           xmm1,           248
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_249 label size_t
        mpsadbw             xmm0,           xmm1,           249
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_250 label size_t
        mpsadbw             xmm0,           xmm1,           250
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_251 label size_t
        mpsadbw             xmm0,           xmm1,           251
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_252 label size_t
        mpsadbw             xmm0,           xmm1,           252
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_253 label size_t
        mpsadbw             xmm0,           xmm1,           253
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_254 label size_t
        mpsadbw             xmm0,           xmm1,           254
        jmp         _m128impsadbwepu8_end
        _m128impsadbwepu8_255 label size_t
        mpsadbw             xmm0,           xmm1,           255
        jmp         _m128impsadbwepu8_end

        _m128impsadbwepu8_end:
        pop         rbase()
        ret
procend

endif ;__MIC__

end
