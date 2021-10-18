
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

    _m128ishufepi64jmptable label size_t
    isize_t _m128ishufepi64_0, _m128ishufepi64_1, _m128ishufepi64_2, _m128ishufepi64_3

    _m128ishufepi32jmptable label size_t
    isize_t _m128ishufepi32_0, _m128ishufepi32_1, _m128ishufepi32_2, _m128ishufepi32_3, _m128ishufepi32_4
    isize_t _m128ishufepi32_5, _m128ishufepi32_6, _m128ishufepi32_7, _m128ishufepi32_8, _m128ishufepi32_9
    isize_t _m128ishufepi32_10, _m128ishufepi32_11, _m128ishufepi32_12, _m128ishufepi32_13, _m128ishufepi32_14
    isize_t _m128ishufepi32_15, _m128ishufepi32_16, _m128ishufepi32_17, _m128ishufepi32_18, _m128ishufepi32_19
    isize_t _m128ishufepi32_20, _m128ishufepi32_21, _m128ishufepi32_22, _m128ishufepi32_23, _m128ishufepi32_24
    isize_t _m128ishufepi32_25, _m128ishufepi32_26, _m128ishufepi32_27, _m128ishufepi32_28, _m128ishufepi32_29
    isize_t _m128ishufepi32_30, _m128ishufepi32_31, _m128ishufepi32_32, _m128ishufepi32_33, _m128ishufepi32_34
    isize_t _m128ishufepi32_35, _m128ishufepi32_36, _m128ishufepi32_37, _m128ishufepi32_38, _m128ishufepi32_39
    isize_t _m128ishufepi32_40, _m128ishufepi32_41, _m128ishufepi32_42, _m128ishufepi32_43, _m128ishufepi32_44
    isize_t _m128ishufepi32_45, _m128ishufepi32_46, _m128ishufepi32_47, _m128ishufepi32_48, _m128ishufepi32_49
    isize_t _m128ishufepi32_50, _m128ishufepi32_51, _m128ishufepi32_52, _m128ishufepi32_53, _m128ishufepi32_54
    isize_t _m128ishufepi32_55, _m128ishufepi32_56, _m128ishufepi32_57, _m128ishufepi32_58, _m128ishufepi32_59
    isize_t _m128ishufepi32_60, _m128ishufepi32_61, _m128ishufepi32_62, _m128ishufepi32_63, _m128ishufepi32_64
    isize_t _m128ishufepi32_65, _m128ishufepi32_66, _m128ishufepi32_67, _m128ishufepi32_68, _m128ishufepi32_69
    isize_t _m128ishufepi32_70, _m128ishufepi32_71, _m128ishufepi32_72, _m128ishufepi32_73, _m128ishufepi32_74
    isize_t _m128ishufepi32_75, _m128ishufepi32_76, _m128ishufepi32_77, _m128ishufepi32_78, _m128ishufepi32_79
    isize_t _m128ishufepi32_80, _m128ishufepi32_81, _m128ishufepi32_82, _m128ishufepi32_83, _m128ishufepi32_84
    isize_t _m128ishufepi32_85, _m128ishufepi32_86, _m128ishufepi32_87, _m128ishufepi32_88, _m128ishufepi32_89
    isize_t _m128ishufepi32_90, _m128ishufepi32_91, _m128ishufepi32_92, _m128ishufepi32_93, _m128ishufepi32_94
    isize_t _m128ishufepi32_95, _m128ishufepi32_96, _m128ishufepi32_97, _m128ishufepi32_98, _m128ishufepi32_99
    isize_t _m128ishufepi32_100, _m128ishufepi32_101, _m128ishufepi32_102, _m128ishufepi32_103, _m128ishufepi32_104
    isize_t _m128ishufepi32_105, _m128ishufepi32_106, _m128ishufepi32_107, _m128ishufepi32_108, _m128ishufepi32_109
    isize_t _m128ishufepi32_110, _m128ishufepi32_111, _m128ishufepi32_112, _m128ishufepi32_113, _m128ishufepi32_114
    isize_t _m128ishufepi32_115, _m128ishufepi32_116, _m128ishufepi32_117, _m128ishufepi32_118, _m128ishufepi32_119
    isize_t _m128ishufepi32_120, _m128ishufepi32_121, _m128ishufepi32_122, _m128ishufepi32_123, _m128ishufepi32_124
    isize_t _m128ishufepi32_125, _m128ishufepi32_126, _m128ishufepi32_127, _m128ishufepi32_128, _m128ishufepi32_129
    isize_t _m128ishufepi32_130, _m128ishufepi32_131, _m128ishufepi32_132, _m128ishufepi32_133, _m128ishufepi32_134
    isize_t _m128ishufepi32_135, _m128ishufepi32_136, _m128ishufepi32_137, _m128ishufepi32_138, _m128ishufepi32_139
    isize_t _m128ishufepi32_140, _m128ishufepi32_141, _m128ishufepi32_142, _m128ishufepi32_143, _m128ishufepi32_144
    isize_t _m128ishufepi32_145, _m128ishufepi32_146, _m128ishufepi32_147, _m128ishufepi32_148, _m128ishufepi32_149
    isize_t _m128ishufepi32_150, _m128ishufepi32_151, _m128ishufepi32_152, _m128ishufepi32_153, _m128ishufepi32_154
    isize_t _m128ishufepi32_155, _m128ishufepi32_156, _m128ishufepi32_157, _m128ishufepi32_158, _m128ishufepi32_159
    isize_t _m128ishufepi32_160, _m128ishufepi32_161, _m128ishufepi32_162, _m128ishufepi32_163, _m128ishufepi32_164
    isize_t _m128ishufepi32_165, _m128ishufepi32_166, _m128ishufepi32_167, _m128ishufepi32_168, _m128ishufepi32_169
    isize_t _m128ishufepi32_170, _m128ishufepi32_171, _m128ishufepi32_172, _m128ishufepi32_173, _m128ishufepi32_174
    isize_t _m128ishufepi32_175, _m128ishufepi32_176, _m128ishufepi32_177, _m128ishufepi32_178, _m128ishufepi32_179
    isize_t _m128ishufepi32_180, _m128ishufepi32_181, _m128ishufepi32_182, _m128ishufepi32_183, _m128ishufepi32_184
    isize_t _m128ishufepi32_185, _m128ishufepi32_186, _m128ishufepi32_187, _m128ishufepi32_188, _m128ishufepi32_189
    isize_t _m128ishufepi32_190, _m128ishufepi32_191, _m128ishufepi32_192, _m128ishufepi32_193, _m128ishufepi32_194
    isize_t _m128ishufepi32_195, _m128ishufepi32_196, _m128ishufepi32_197, _m128ishufepi32_198, _m128ishufepi32_199
    isize_t _m128ishufepi32_200, _m128ishufepi32_201, _m128ishufepi32_202, _m128ishufepi32_203, _m128ishufepi32_204
    isize_t _m128ishufepi32_205, _m128ishufepi32_206, _m128ishufepi32_207, _m128ishufepi32_208, _m128ishufepi32_209
    isize_t _m128ishufepi32_210, _m128ishufepi32_211, _m128ishufepi32_212, _m128ishufepi32_213, _m128ishufepi32_214
    isize_t _m128ishufepi32_215, _m128ishufepi32_216, _m128ishufepi32_217, _m128ishufepi32_218, _m128ishufepi32_219
    isize_t _m128ishufepi32_220, _m128ishufepi32_221, _m128ishufepi32_222, _m128ishufepi32_223, _m128ishufepi32_224
    isize_t _m128ishufepi32_225, _m128ishufepi32_226, _m128ishufepi32_227, _m128ishufepi32_228, _m128ishufepi32_229
    isize_t _m128ishufepi32_230, _m128ishufepi32_231, _m128ishufepi32_232, _m128ishufepi32_233, _m128ishufepi32_234
    isize_t _m128ishufepi32_235, _m128ishufepi32_236, _m128ishufepi32_237, _m128ishufepi32_238, _m128ishufepi32_239
    isize_t _m128ishufepi32_240, _m128ishufepi32_241, _m128ishufepi32_242, _m128ishufepi32_243, _m128ishufepi32_244
    isize_t _m128ishufepi32_245, _m128ishufepi32_246, _m128ishufepi32_247, _m128ishufepi32_248, _m128ishufepi32_249
    isize_t _m128ishufepi32_250, _m128ishufepi32_251, _m128ishufepi32_252, _m128ishufepi32_253, _m128ishufepi32_254
    isize_t _m128ishufepi32_255

    _m128ishufhiepi16jmptable label size_t
    isize_t _m128ishufhiepi16_0, _m128ishufhiepi16_1, _m128ishufhiepi16_2, _m128ishufhiepi16_3, _m128ishufhiepi16_4
    isize_t _m128ishufhiepi16_5, _m128ishufhiepi16_6, _m128ishufhiepi16_7, _m128ishufhiepi16_8, _m128ishufhiepi16_9
    isize_t _m128ishufhiepi16_10, _m128ishufhiepi16_11, _m128ishufhiepi16_12, _m128ishufhiepi16_13, _m128ishufhiepi16_14
    isize_t _m128ishufhiepi16_15, _m128ishufhiepi16_16, _m128ishufhiepi16_17, _m128ishufhiepi16_18, _m128ishufhiepi16_19
    isize_t _m128ishufhiepi16_20, _m128ishufhiepi16_21, _m128ishufhiepi16_22, _m128ishufhiepi16_23, _m128ishufhiepi16_24
    isize_t _m128ishufhiepi16_25, _m128ishufhiepi16_26, _m128ishufhiepi16_27, _m128ishufhiepi16_28, _m128ishufhiepi16_29
    isize_t _m128ishufhiepi16_30, _m128ishufhiepi16_31, _m128ishufhiepi16_32, _m128ishufhiepi16_33, _m128ishufhiepi16_34
    isize_t _m128ishufhiepi16_35, _m128ishufhiepi16_36, _m128ishufhiepi16_37, _m128ishufhiepi16_38, _m128ishufhiepi16_39
    isize_t _m128ishufhiepi16_40, _m128ishufhiepi16_41, _m128ishufhiepi16_42, _m128ishufhiepi16_43, _m128ishufhiepi16_44
    isize_t _m128ishufhiepi16_45, _m128ishufhiepi16_46, _m128ishufhiepi16_47, _m128ishufhiepi16_48, _m128ishufhiepi16_49
    isize_t _m128ishufhiepi16_50, _m128ishufhiepi16_51, _m128ishufhiepi16_52, _m128ishufhiepi16_53, _m128ishufhiepi16_54
    isize_t _m128ishufhiepi16_55, _m128ishufhiepi16_56, _m128ishufhiepi16_57, _m128ishufhiepi16_58, _m128ishufhiepi16_59
    isize_t _m128ishufhiepi16_60, _m128ishufhiepi16_61, _m128ishufhiepi16_62, _m128ishufhiepi16_63, _m128ishufhiepi16_64
    isize_t _m128ishufhiepi16_65, _m128ishufhiepi16_66, _m128ishufhiepi16_67, _m128ishufhiepi16_68, _m128ishufhiepi16_69
    isize_t _m128ishufhiepi16_70, _m128ishufhiepi16_71, _m128ishufhiepi16_72, _m128ishufhiepi16_73, _m128ishufhiepi16_74
    isize_t _m128ishufhiepi16_75, _m128ishufhiepi16_76, _m128ishufhiepi16_77, _m128ishufhiepi16_78, _m128ishufhiepi16_79
    isize_t _m128ishufhiepi16_80, _m128ishufhiepi16_81, _m128ishufhiepi16_82, _m128ishufhiepi16_83, _m128ishufhiepi16_84
    isize_t _m128ishufhiepi16_85, _m128ishufhiepi16_86, _m128ishufhiepi16_87, _m128ishufhiepi16_88, _m128ishufhiepi16_89
    isize_t _m128ishufhiepi16_90, _m128ishufhiepi16_91, _m128ishufhiepi16_92, _m128ishufhiepi16_93, _m128ishufhiepi16_94
    isize_t _m128ishufhiepi16_95, _m128ishufhiepi16_96, _m128ishufhiepi16_97, _m128ishufhiepi16_98, _m128ishufhiepi16_99
    isize_t _m128ishufhiepi16_100, _m128ishufhiepi16_101, _m128ishufhiepi16_102, _m128ishufhiepi16_103, _m128ishufhiepi16_104
    isize_t _m128ishufhiepi16_105, _m128ishufhiepi16_106, _m128ishufhiepi16_107, _m128ishufhiepi16_108, _m128ishufhiepi16_109
    isize_t _m128ishufhiepi16_110, _m128ishufhiepi16_111, _m128ishufhiepi16_112, _m128ishufhiepi16_113, _m128ishufhiepi16_114
    isize_t _m128ishufhiepi16_115, _m128ishufhiepi16_116, _m128ishufhiepi16_117, _m128ishufhiepi16_118, _m128ishufhiepi16_119
    isize_t _m128ishufhiepi16_120, _m128ishufhiepi16_121, _m128ishufhiepi16_122, _m128ishufhiepi16_123, _m128ishufhiepi16_124
    isize_t _m128ishufhiepi16_125, _m128ishufhiepi16_126, _m128ishufhiepi16_127, _m128ishufhiepi16_128, _m128ishufhiepi16_129
    isize_t _m128ishufhiepi16_130, _m128ishufhiepi16_131, _m128ishufhiepi16_132, _m128ishufhiepi16_133, _m128ishufhiepi16_134
    isize_t _m128ishufhiepi16_135, _m128ishufhiepi16_136, _m128ishufhiepi16_137, _m128ishufhiepi16_138, _m128ishufhiepi16_139
    isize_t _m128ishufhiepi16_140, _m128ishufhiepi16_141, _m128ishufhiepi16_142, _m128ishufhiepi16_143, _m128ishufhiepi16_144
    isize_t _m128ishufhiepi16_145, _m128ishufhiepi16_146, _m128ishufhiepi16_147, _m128ishufhiepi16_148, _m128ishufhiepi16_149
    isize_t _m128ishufhiepi16_150, _m128ishufhiepi16_151, _m128ishufhiepi16_152, _m128ishufhiepi16_153, _m128ishufhiepi16_154
    isize_t _m128ishufhiepi16_155, _m128ishufhiepi16_156, _m128ishufhiepi16_157, _m128ishufhiepi16_158, _m128ishufhiepi16_159
    isize_t _m128ishufhiepi16_160, _m128ishufhiepi16_161, _m128ishufhiepi16_162, _m128ishufhiepi16_163, _m128ishufhiepi16_164
    isize_t _m128ishufhiepi16_165, _m128ishufhiepi16_166, _m128ishufhiepi16_167, _m128ishufhiepi16_168, _m128ishufhiepi16_169
    isize_t _m128ishufhiepi16_170, _m128ishufhiepi16_171, _m128ishufhiepi16_172, _m128ishufhiepi16_173, _m128ishufhiepi16_174
    isize_t _m128ishufhiepi16_175, _m128ishufhiepi16_176, _m128ishufhiepi16_177, _m128ishufhiepi16_178, _m128ishufhiepi16_179
    isize_t _m128ishufhiepi16_180, _m128ishufhiepi16_181, _m128ishufhiepi16_182, _m128ishufhiepi16_183, _m128ishufhiepi16_184
    isize_t _m128ishufhiepi16_185, _m128ishufhiepi16_186, _m128ishufhiepi16_187, _m128ishufhiepi16_188, _m128ishufhiepi16_189
    isize_t _m128ishufhiepi16_190, _m128ishufhiepi16_191, _m128ishufhiepi16_192, _m128ishufhiepi16_193, _m128ishufhiepi16_194
    isize_t _m128ishufhiepi16_195, _m128ishufhiepi16_196, _m128ishufhiepi16_197, _m128ishufhiepi16_198, _m128ishufhiepi16_199
    isize_t _m128ishufhiepi16_200, _m128ishufhiepi16_201, _m128ishufhiepi16_202, _m128ishufhiepi16_203, _m128ishufhiepi16_204
    isize_t _m128ishufhiepi16_205, _m128ishufhiepi16_206, _m128ishufhiepi16_207, _m128ishufhiepi16_208, _m128ishufhiepi16_209
    isize_t _m128ishufhiepi16_210, _m128ishufhiepi16_211, _m128ishufhiepi16_212, _m128ishufhiepi16_213, _m128ishufhiepi16_214
    isize_t _m128ishufhiepi16_215, _m128ishufhiepi16_216, _m128ishufhiepi16_217, _m128ishufhiepi16_218, _m128ishufhiepi16_219
    isize_t _m128ishufhiepi16_220, _m128ishufhiepi16_221, _m128ishufhiepi16_222, _m128ishufhiepi16_223, _m128ishufhiepi16_224
    isize_t _m128ishufhiepi16_225, _m128ishufhiepi16_226, _m128ishufhiepi16_227, _m128ishufhiepi16_228, _m128ishufhiepi16_229
    isize_t _m128ishufhiepi16_230, _m128ishufhiepi16_231, _m128ishufhiepi16_232, _m128ishufhiepi16_233, _m128ishufhiepi16_234
    isize_t _m128ishufhiepi16_235, _m128ishufhiepi16_236, _m128ishufhiepi16_237, _m128ishufhiepi16_238, _m128ishufhiepi16_239
    isize_t _m128ishufhiepi16_240, _m128ishufhiepi16_241, _m128ishufhiepi16_242, _m128ishufhiepi16_243, _m128ishufhiepi16_244
    isize_t _m128ishufhiepi16_245, _m128ishufhiepi16_246, _m128ishufhiepi16_247, _m128ishufhiepi16_248, _m128ishufhiepi16_249
    isize_t _m128ishufhiepi16_250, _m128ishufhiepi16_251, _m128ishufhiepi16_252, _m128ishufhiepi16_253, _m128ishufhiepi16_254
    isize_t _m128ishufhiepi16_255

    _m128ishufloepi16jmptable label size_t
    isize_t _m128ishufloepi16_0, _m128ishufloepi16_1, _m128ishufloepi16_2, _m128ishufloepi16_3, _m128ishufloepi16_4
    isize_t _m128ishufloepi16_5, _m128ishufloepi16_6, _m128ishufloepi16_7, _m128ishufloepi16_8, _m128ishufloepi16_9
    isize_t _m128ishufloepi16_10, _m128ishufloepi16_11, _m128ishufloepi16_12, _m128ishufloepi16_13, _m128ishufloepi16_14
    isize_t _m128ishufloepi16_15, _m128ishufloepi16_16, _m128ishufloepi16_17, _m128ishufloepi16_18, _m128ishufloepi16_19
    isize_t _m128ishufloepi16_20, _m128ishufloepi16_21, _m128ishufloepi16_22, _m128ishufloepi16_23, _m128ishufloepi16_24
    isize_t _m128ishufloepi16_25, _m128ishufloepi16_26, _m128ishufloepi16_27, _m128ishufloepi16_28, _m128ishufloepi16_29
    isize_t _m128ishufloepi16_30, _m128ishufloepi16_31, _m128ishufloepi16_32, _m128ishufloepi16_33, _m128ishufloepi16_34
    isize_t _m128ishufloepi16_35, _m128ishufloepi16_36, _m128ishufloepi16_37, _m128ishufloepi16_38, _m128ishufloepi16_39
    isize_t _m128ishufloepi16_40, _m128ishufloepi16_41, _m128ishufloepi16_42, _m128ishufloepi16_43, _m128ishufloepi16_44
    isize_t _m128ishufloepi16_45, _m128ishufloepi16_46, _m128ishufloepi16_47, _m128ishufloepi16_48, _m128ishufloepi16_49
    isize_t _m128ishufloepi16_50, _m128ishufloepi16_51, _m128ishufloepi16_52, _m128ishufloepi16_53, _m128ishufloepi16_54
    isize_t _m128ishufloepi16_55, _m128ishufloepi16_56, _m128ishufloepi16_57, _m128ishufloepi16_58, _m128ishufloepi16_59
    isize_t _m128ishufloepi16_60, _m128ishufloepi16_61, _m128ishufloepi16_62, _m128ishufloepi16_63, _m128ishufloepi16_64
    isize_t _m128ishufloepi16_65, _m128ishufloepi16_66, _m128ishufloepi16_67, _m128ishufloepi16_68, _m128ishufloepi16_69
    isize_t _m128ishufloepi16_70, _m128ishufloepi16_71, _m128ishufloepi16_72, _m128ishufloepi16_73, _m128ishufloepi16_74
    isize_t _m128ishufloepi16_75, _m128ishufloepi16_76, _m128ishufloepi16_77, _m128ishufloepi16_78, _m128ishufloepi16_79
    isize_t _m128ishufloepi16_80, _m128ishufloepi16_81, _m128ishufloepi16_82, _m128ishufloepi16_83, _m128ishufloepi16_84
    isize_t _m128ishufloepi16_85, _m128ishufloepi16_86, _m128ishufloepi16_87, _m128ishufloepi16_88, _m128ishufloepi16_89
    isize_t _m128ishufloepi16_90, _m128ishufloepi16_91, _m128ishufloepi16_92, _m128ishufloepi16_93, _m128ishufloepi16_94
    isize_t _m128ishufloepi16_95, _m128ishufloepi16_96, _m128ishufloepi16_97, _m128ishufloepi16_98, _m128ishufloepi16_99
    isize_t _m128ishufloepi16_100, _m128ishufloepi16_101, _m128ishufloepi16_102, _m128ishufloepi16_103, _m128ishufloepi16_104
    isize_t _m128ishufloepi16_105, _m128ishufloepi16_106, _m128ishufloepi16_107, _m128ishufloepi16_108, _m128ishufloepi16_109
    isize_t _m128ishufloepi16_110, _m128ishufloepi16_111, _m128ishufloepi16_112, _m128ishufloepi16_113, _m128ishufloepi16_114
    isize_t _m128ishufloepi16_115, _m128ishufloepi16_116, _m128ishufloepi16_117, _m128ishufloepi16_118, _m128ishufloepi16_119
    isize_t _m128ishufloepi16_120, _m128ishufloepi16_121, _m128ishufloepi16_122, _m128ishufloepi16_123, _m128ishufloepi16_124
    isize_t _m128ishufloepi16_125, _m128ishufloepi16_126, _m128ishufloepi16_127, _m128ishufloepi16_128, _m128ishufloepi16_129
    isize_t _m128ishufloepi16_130, _m128ishufloepi16_131, _m128ishufloepi16_132, _m128ishufloepi16_133, _m128ishufloepi16_134
    isize_t _m128ishufloepi16_135, _m128ishufloepi16_136, _m128ishufloepi16_137, _m128ishufloepi16_138, _m128ishufloepi16_139
    isize_t _m128ishufloepi16_140, _m128ishufloepi16_141, _m128ishufloepi16_142, _m128ishufloepi16_143, _m128ishufloepi16_144
    isize_t _m128ishufloepi16_145, _m128ishufloepi16_146, _m128ishufloepi16_147, _m128ishufloepi16_148, _m128ishufloepi16_149
    isize_t _m128ishufloepi16_150, _m128ishufloepi16_151, _m128ishufloepi16_152, _m128ishufloepi16_153, _m128ishufloepi16_154
    isize_t _m128ishufloepi16_155, _m128ishufloepi16_156, _m128ishufloepi16_157, _m128ishufloepi16_158, _m128ishufloepi16_159
    isize_t _m128ishufloepi16_160, _m128ishufloepi16_161, _m128ishufloepi16_162, _m128ishufloepi16_163, _m128ishufloepi16_164
    isize_t _m128ishufloepi16_165, _m128ishufloepi16_166, _m128ishufloepi16_167, _m128ishufloepi16_168, _m128ishufloepi16_169
    isize_t _m128ishufloepi16_170, _m128ishufloepi16_171, _m128ishufloepi16_172, _m128ishufloepi16_173, _m128ishufloepi16_174
    isize_t _m128ishufloepi16_175, _m128ishufloepi16_176, _m128ishufloepi16_177, _m128ishufloepi16_178, _m128ishufloepi16_179
    isize_t _m128ishufloepi16_180, _m128ishufloepi16_181, _m128ishufloepi16_182, _m128ishufloepi16_183, _m128ishufloepi16_184
    isize_t _m128ishufloepi16_185, _m128ishufloepi16_186, _m128ishufloepi16_187, _m128ishufloepi16_188, _m128ishufloepi16_189
    isize_t _m128ishufloepi16_190, _m128ishufloepi16_191, _m128ishufloepi16_192, _m128ishufloepi16_193, _m128ishufloepi16_194
    isize_t _m128ishufloepi16_195, _m128ishufloepi16_196, _m128ishufloepi16_197, _m128ishufloepi16_198, _m128ishufloepi16_199
    isize_t _m128ishufloepi16_200, _m128ishufloepi16_201, _m128ishufloepi16_202, _m128ishufloepi16_203, _m128ishufloepi16_204
    isize_t _m128ishufloepi16_205, _m128ishufloepi16_206, _m128ishufloepi16_207, _m128ishufloepi16_208, _m128ishufloepi16_209
    isize_t _m128ishufloepi16_210, _m128ishufloepi16_211, _m128ishufloepi16_212, _m128ishufloepi16_213, _m128ishufloepi16_214
    isize_t _m128ishufloepi16_215, _m128ishufloepi16_216, _m128ishufloepi16_217, _m128ishufloepi16_218, _m128ishufloepi16_219
    isize_t _m128ishufloepi16_220, _m128ishufloepi16_221, _m128ishufloepi16_222, _m128ishufloepi16_223, _m128ishufloepi16_224
    isize_t _m128ishufloepi16_225, _m128ishufloepi16_226, _m128ishufloepi16_227, _m128ishufloepi16_228, _m128ishufloepi16_229
    isize_t _m128ishufloepi16_230, _m128ishufloepi16_231, _m128ishufloepi16_232, _m128ishufloepi16_233, _m128ishufloepi16_234
    isize_t _m128ishufloepi16_235, _m128ishufloepi16_236, _m128ishufloepi16_237, _m128ishufloepi16_238, _m128ishufloepi16_239
    isize_t _m128ishufloepi16_240, _m128ishufloepi16_241, _m128ishufloepi16_242, _m128ishufloepi16_243, _m128ishufloepi16_244
    isize_t _m128ishufloepi16_245, _m128ishufloepi16_246, _m128ishufloepi16_247, _m128ishufloepi16_248, _m128ishufloepi16_249
    isize_t _m128ishufloepi16_250, _m128ishufloepi16_251, _m128ishufloepi16_252, _m128ishufloepi16_253, _m128ishufloepi16_254
    isize_t _m128ishufloepi16_255

.code

callconvopt
alignxmmfieldproc

procstart _uX_mm_shuffle_epi64_00, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           shuffler4(0,1,0,1)
        ret
procend

procstart _uX_mm_shuffle_epi64_01, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           shuffler4(2,3,0,1)
        ret
procend

procstart _uX_mm_shuffle_epi64_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           shuffler4(0,1,2,3)
        ret
procend

procstart _uX_mm_shuffle_epi64_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           shuffler4(2,3,2,3)
        ret
procend

procstart _uX_mm_shuffle_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp1() < 0) || (rp1() > 3))
        jmp         _m128ishufepi64_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [_m128ishufepi64jmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128ishufepi64jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
        endif

        _m128ishufepi64_0 label size_t
        pshufd              xmm0,           xmm0,           shuffler4(0,1,0,1)
        jmp         _m128ishufepi64_end
        _m128ishufepi64_1 label size_t
        pshufd              xmm0,           xmm0,           shuffler4(0,1,2,3)
        jmp         _m128ishufepi64_end
        _m128ishufepi64_2 label size_t
        pshufd              xmm0,           xmm0,           shuffler4(2,3,0,1)
        jmp         _m128ishufepi64_end
        _m128ishufepi64_3 label size_t
        pshufd              xmm0,           xmm0,           shuffler4(2,3,2,3)
        ;jmp         _m128ishufepi64_end

        _m128ishufepi64_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_shuffle_epi32_0000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_shuffle_epi32_0001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           1
        ret
procend

procstart _uX_mm_shuffle_epi32_0002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           2
        ret
procend

procstart _uX_mm_shuffle_epi32_0003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           3
        ret
procend

procstart _uX_mm_shuffle_epi32_0010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           4
        ret
procend

procstart _uX_mm_shuffle_epi32_0011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           5
        ret
procend

procstart _uX_mm_shuffle_epi32_0012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           6
        ret
procend

procstart _uX_mm_shuffle_epi32_0013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           7
        ret
procend

procstart _uX_mm_shuffle_epi32_0020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           8
        ret
procend

procstart _uX_mm_shuffle_epi32_0021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           9
        ret
procend

procstart _uX_mm_shuffle_epi32_0022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           10
        ret
procend

procstart _uX_mm_shuffle_epi32_0023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           11
        ret
procend

procstart _uX_mm_shuffle_epi32_0030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           12
        ret
procend

procstart _uX_mm_shuffle_epi32_0031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           13
        ret
procend

procstart _uX_mm_shuffle_epi32_0032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           14
        ret
procend

procstart _uX_mm_shuffle_epi32_0033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           15
        ret
procend

procstart _uX_mm_shuffle_epi32_0100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           16
        ret
procend

procstart _uX_mm_shuffle_epi32_0101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           17
        ret
procend

procstart _uX_mm_shuffle_epi32_0102, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           18
        ret
procend

procstart _uX_mm_shuffle_epi32_0103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           19
        ret
procend

procstart _uX_mm_shuffle_epi32_0110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           20
        ret
procend

procstart _uX_mm_shuffle_epi32_0111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           21
        ret
procend

procstart _uX_mm_shuffle_epi32_0112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           22
        ret
procend

procstart _uX_mm_shuffle_epi32_0113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           23
        ret
procend

procstart _uX_mm_shuffle_epi32_0120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           24
        ret
procend

procstart _uX_mm_shuffle_epi32_0121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           25
        ret
procend

procstart _uX_mm_shuffle_epi32_0122, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           26
        ret
procend

procstart _uX_mm_shuffle_epi32_0123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           27
        ret
procend

procstart _uX_mm_shuffle_epi32_0130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           28
        ret
procend

procstart _uX_mm_shuffle_epi32_0131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           29
        ret
procend

procstart _uX_mm_shuffle_epi32_0132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           30
        ret
procend

procstart _uX_mm_shuffle_epi32_0133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           31
        ret
procend

procstart _uX_mm_shuffle_epi32_0200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           32
        ret
procend

procstart _uX_mm_shuffle_epi32_0201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           33
        ret
procend

procstart _uX_mm_shuffle_epi32_0202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           34
        ret
procend

procstart _uX_mm_shuffle_epi32_0203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           35
        ret
procend

procstart _uX_mm_shuffle_epi32_0210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           36
        ret
procend

procstart _uX_mm_shuffle_epi32_0211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           37
        ret
procend

procstart _uX_mm_shuffle_epi32_0212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           38
        ret
procend

procstart _uX_mm_shuffle_epi32_0213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           39
        ret
procend

procstart _uX_mm_shuffle_epi32_0220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           40
        ret
procend

procstart _uX_mm_shuffle_epi32_0221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           41
        ret
procend

procstart _uX_mm_shuffle_epi32_0222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           42
        ret
procend

procstart _uX_mm_shuffle_epi32_0223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           43
        ret
procend

procstart _uX_mm_shuffle_epi32_0230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           44
        ret
procend

procstart _uX_mm_shuffle_epi32_0231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           45
        ret
procend

procstart _uX_mm_shuffle_epi32_0232, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           46
        ret
procend

procstart _uX_mm_shuffle_epi32_0233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           47
        ret
procend

procstart _uX_mm_shuffle_epi32_0300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           48
        ret
procend

procstart _uX_mm_shuffle_epi32_0301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           49
        ret
procend

procstart _uX_mm_shuffle_epi32_0302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           50
        ret
procend

procstart _uX_mm_shuffle_epi32_0303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           51
        ret
procend

procstart _uX_mm_shuffle_epi32_0310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           52
        ret
procend

procstart _uX_mm_shuffle_epi32_0311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           53
        ret
procend

procstart _uX_mm_shuffle_epi32_0312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           54
        ret
procend

procstart _uX_mm_shuffle_epi32_0313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           55
        ret
procend

procstart _uX_mm_shuffle_epi32_0320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           56
        ret
procend

procstart _uX_mm_shuffle_epi32_0321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           57
        ret
procend

procstart _uX_mm_shuffle_epi32_0322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           58
        ret
procend

procstart _uX_mm_shuffle_epi32_0323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           59
        ret
procend

procstart _uX_mm_shuffle_epi32_0330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           60
        ret
procend

procstart _uX_mm_shuffle_epi32_0331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           61
        ret
procend

procstart _uX_mm_shuffle_epi32_0332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           62
        ret
procend

procstart _uX_mm_shuffle_epi32_0333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           63
        ret
procend

procstart _uX_mm_shuffle_epi32_1000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           64
        ret
procend

procstart _uX_mm_shuffle_epi32_1001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           65
        ret
procend

procstart _uX_mm_shuffle_epi32_1002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           66
        ret
procend

procstart _uX_mm_shuffle_epi32_1003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           67
        ret
procend

procstart _uX_mm_shuffle_epi32_1010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           68
        ret
procend

procstart _uX_mm_shuffle_epi32_1011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           69
        ret
procend

procstart _uX_mm_shuffle_epi32_1012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           70
        ret
procend

procstart _uX_mm_shuffle_epi32_1013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           71
        ret
procend

procstart _uX_mm_shuffle_epi32_1020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           72
        ret
procend

procstart _uX_mm_shuffle_epi32_1021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           73
        ret
procend

procstart _uX_mm_shuffle_epi32_1022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           74
        ret
procend

procstart _uX_mm_shuffle_epi32_1023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           75
        ret
procend

procstart _uX_mm_shuffle_epi32_1030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           76
        ret
procend

procstart _uX_mm_shuffle_epi32_1031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           77
        ret
procend

procstart _uX_mm_shuffle_epi32_1032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           78
        ret
procend

procstart _uX_mm_shuffle_epi32_1033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           79
        ret
procend

procstart _uX_mm_shuffle_epi32_1100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           80
        ret
procend

procstart _uX_mm_shuffle_epi32_1101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           81
        ret
procend

procstart _uX_mm_shuffle_epi32_1102, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           82
        ret
procend

procstart _uX_mm_shuffle_epi32_1103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           83
        ret
procend

procstart _uX_mm_shuffle_epi32_1110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           84
        ret
procend

procstart _uX_mm_shuffle_epi32_1111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           85
        ret
procend

procstart _uX_mm_shuffle_epi32_1112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           86
        ret
procend

procstart _uX_mm_shuffle_epi32_1113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           87
        ret
procend

procstart _uX_mm_shuffle_epi32_1120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           88
        ret
procend

procstart _uX_mm_shuffle_epi32_1121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           89
        ret
procend

procstart _uX_mm_shuffle_epi32_1122, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           90
        ret
procend

procstart _uX_mm_shuffle_epi32_1123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           91
        ret
procend

procstart _uX_mm_shuffle_epi32_1130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           92
        ret
procend

procstart _uX_mm_shuffle_epi32_1131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           93
        ret
procend

procstart _uX_mm_shuffle_epi32_1132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           94
        ret
procend

procstart _uX_mm_shuffle_epi32_1133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           95
        ret
procend

procstart _uX_mm_shuffle_epi32_1200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           96
        ret
procend

procstart _uX_mm_shuffle_epi32_1201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           97
        ret
procend

procstart _uX_mm_shuffle_epi32_1202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           98
        ret
procend

procstart _uX_mm_shuffle_epi32_1203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           99
        ret
procend

procstart _uX_mm_shuffle_epi32_1210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           100
        ret
procend

procstart _uX_mm_shuffle_epi32_1211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           101
        ret
procend

procstart _uX_mm_shuffle_epi32_1212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           102
        ret
procend

procstart _uX_mm_shuffle_epi32_1213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           103
        ret
procend

procstart _uX_mm_shuffle_epi32_1220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           104
        ret
procend

procstart _uX_mm_shuffle_epi32_1221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           105
        ret
procend

procstart _uX_mm_shuffle_epi32_1222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           106
        ret
procend

procstart _uX_mm_shuffle_epi32_1223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           107
        ret
procend

procstart _uX_mm_shuffle_epi32_1230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           108
        ret
procend

procstart _uX_mm_shuffle_epi32_1231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           109
        ret
procend

procstart _uX_mm_shuffle_epi32_1232, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           110
        ret
procend

procstart _uX_mm_shuffle_epi32_1233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           111
        ret
procend

procstart _uX_mm_shuffle_epi32_1300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           112
        ret
procend

procstart _uX_mm_shuffle_epi32_1301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           113
        ret
procend

procstart _uX_mm_shuffle_epi32_1302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           114
        ret
procend

procstart _uX_mm_shuffle_epi32_1303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           115
        ret
procend

procstart _uX_mm_shuffle_epi32_1310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           116
        ret
procend

procstart _uX_mm_shuffle_epi32_1311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           117
        ret
procend

procstart _uX_mm_shuffle_epi32_1312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           118
        ret
procend

procstart _uX_mm_shuffle_epi32_1313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           119
        ret
procend

procstart _uX_mm_shuffle_epi32_1320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           120
        ret
procend

procstart _uX_mm_shuffle_epi32_1321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           121
        ret
procend

procstart _uX_mm_shuffle_epi32_1322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           122
        ret
procend

procstart _uX_mm_shuffle_epi32_1323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           123
        ret
procend

procstart _uX_mm_shuffle_epi32_1330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           124
        ret
procend

procstart _uX_mm_shuffle_epi32_1331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           125
        ret
procend

procstart _uX_mm_shuffle_epi32_1332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           126
        ret
procend

procstart _uX_mm_shuffle_epi32_1333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           127
        ret
procend

procstart _uX_mm_shuffle_epi32_2000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           128
        ret
procend

procstart _uX_mm_shuffle_epi32_2001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           129
        ret
procend

procstart _uX_mm_shuffle_epi32_2002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           130
        ret
procend

procstart _uX_mm_shuffle_epi32_2003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           131
        ret
procend

procstart _uX_mm_shuffle_epi32_2010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           132
        ret
procend

procstart _uX_mm_shuffle_epi32_2011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           133
        ret
procend

procstart _uX_mm_shuffle_epi32_2012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           134
        ret
procend

procstart _uX_mm_shuffle_epi32_2013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           135
        ret
procend

procstart _uX_mm_shuffle_epi32_2020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           136
        ret
procend

procstart _uX_mm_shuffle_epi32_2021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           137
        ret
procend

procstart _uX_mm_shuffle_epi32_2022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           138
        ret
procend

procstart _uX_mm_shuffle_epi32_2023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           139
        ret
procend

procstart _uX_mm_shuffle_epi32_2030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           140
        ret
procend

procstart _uX_mm_shuffle_epi32_2031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           141
        ret
procend

procstart _uX_mm_shuffle_epi32_2032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           142
        ret
procend

procstart _uX_mm_shuffle_epi32_2033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           143
        ret
procend

procstart _uX_mm_shuffle_epi32_2100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           144
        ret
procend

procstart _uX_mm_shuffle_epi32_2101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           145
        ret
procend

procstart _uX_mm_shuffle_epi32_2102, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        pshufd              xmm0,           xmm0,           146
        ret
procend

procstart _uX_mm_shuffle_epi32_2103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           147
        ret
procend

procstart _uX_mm_shuffle_epi32_2110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           148
        ret
procend

procstart _uX_mm_shuffle_epi32_2111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           149
        ret
procend

procstart _uX_mm_shuffle_epi32_2112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           150
        ret
procend

procstart _uX_mm_shuffle_epi32_2113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           151
        ret
procend

procstart _uX_mm_shuffle_epi32_2120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           152
        ret
procend

procstart _uX_mm_shuffle_epi32_2121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           153
        ret
procend

procstart _uX_mm_shuffle_epi32_2122, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        pshufd              xmm0,           xmm0,           154
        ret
procend

procstart _uX_mm_shuffle_epi32_2123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           155
        ret
procend

procstart _uX_mm_shuffle_epi32_2130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           156
        ret
procend

procstart _uX_mm_shuffle_epi32_2131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           157
        ret
procend

procstart _uX_mm_shuffle_epi32_2132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           158
        ret
procend

procstart _uX_mm_shuffle_epi32_2133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           159
        ret
procend

procstart _uX_mm_shuffle_epi32_2200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           160
        ret
procend

procstart _uX_mm_shuffle_epi32_2201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           161
        ret
procend

procstart _uX_mm_shuffle_epi32_2202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           162
        ret
procend

procstart _uX_mm_shuffle_epi32_2203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           163
        ret
procend

procstart _uX_mm_shuffle_epi32_2210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           164
        ret
procend

procstart _uX_mm_shuffle_epi32_2211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           165
        ret
procend

procstart _uX_mm_shuffle_epi32_2212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           166
        ret
procend

procstart _uX_mm_shuffle_epi32_2213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           167
        ret
procend

procstart _uX_mm_shuffle_epi32_2220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           168
        ret
procend

procstart _uX_mm_shuffle_epi32_2221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           169
        ret
procend

procstart _uX_mm_shuffle_epi32_2222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           170
        ret
procend

procstart _uX_mm_shuffle_epi32_2223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           171
        ret
procend

procstart _uX_mm_shuffle_epi32_2230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           172
        ret
procend

procstart _uX_mm_shuffle_epi32_2231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           173
        ret
procend

procstart _uX_mm_shuffle_epi32_2232, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        pshufd              xmm0,           xmm0,           174
        ret
procend

procstart _uX_mm_shuffle_epi32_2233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           175
        ret
procend

procstart _uX_mm_shuffle_epi32_2300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           176
        ret
procend

procstart _uX_mm_shuffle_epi32_2301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           177
        ret
procend

procstart _uX_mm_shuffle_epi32_2302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           178
        ret
procend

procstart _uX_mm_shuffle_epi32_2303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           179
        ret
procend

procstart _uX_mm_shuffle_epi32_2310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           180
        ret
procend

procstart _uX_mm_shuffle_epi32_2311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           181
        ret
procend

procstart _uX_mm_shuffle_epi32_2312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           182
        ret
procend

procstart _uX_mm_shuffle_epi32_2313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           183
        ret
procend

procstart _uX_mm_shuffle_epi32_2320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           184
        ret
procend

procstart _uX_mm_shuffle_epi32_2321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           185
        ret
procend

procstart _uX_mm_shuffle_epi32_2322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           186
        ret
procend

procstart _uX_mm_shuffle_epi32_2323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           187
        ret
procend

procstart _uX_mm_shuffle_epi32_2330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           188
        ret
procend

procstart _uX_mm_shuffle_epi32_2331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           189
        ret
procend

procstart _uX_mm_shuffle_epi32_2332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           190
        ret
procend

procstart _uX_mm_shuffle_epi32_2333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           191
        ret
procend

procstart _uX_mm_shuffle_epi32_3000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           192
        ret
procend

procstart _uX_mm_shuffle_epi32_3001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           193
        ret
procend

procstart _uX_mm_shuffle_epi32_3002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           194
        ret
procend

procstart _uX_mm_shuffle_epi32_3003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           195
        ret
procend

procstart _uX_mm_shuffle_epi32_3010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           196
        ret
procend

procstart _uX_mm_shuffle_epi32_3011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           197
        ret
procend

procstart _uX_mm_shuffle_epi32_3012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           198
        ret
procend

procstart _uX_mm_shuffle_epi32_3013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           199
        ret
procend

procstart _uX_mm_shuffle_epi32_3020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           200
        ret
procend

procstart _uX_mm_shuffle_epi32_3021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           201
        ret
procend

procstart _uX_mm_shuffle_epi32_3022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           202
        ret
procend

procstart _uX_mm_shuffle_epi32_3023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           203
        ret
procend

procstart _uX_mm_shuffle_epi32_3030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           204
        ret
procend

procstart _uX_mm_shuffle_epi32_3031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           205
        ret
procend

procstart _uX_mm_shuffle_epi32_3032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           206
        ret
procend

procstart _uX_mm_shuffle_epi32_3033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           207
        ret
procend

procstart _uX_mm_shuffle_epi32_3100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           208
        ret
procend

procstart _uX_mm_shuffle_epi32_3101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           209
        ret
procend

procstart _uX_mm_shuffle_epi32_3102, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           210
        ret
procend

procstart _uX_mm_shuffle_epi32_3103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           211
        ret
procend

procstart _uX_mm_shuffle_epi32_3110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           212
        ret
procend

procstart _uX_mm_shuffle_epi32_3111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           213
        ret
procend

procstart _uX_mm_shuffle_epi32_3112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           214
        ret
procend

procstart _uX_mm_shuffle_epi32_3113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           215
        ret
procend

procstart _uX_mm_shuffle_epi32_3120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           216
        ret
procend

procstart _uX_mm_shuffle_epi32_3121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           217
        ret
procend

procstart _uX_mm_shuffle_epi32_3122, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           218
        ret
procend

procstart _uX_mm_shuffle_epi32_3123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           219
        ret
procend

procstart _uX_mm_shuffle_epi32_3130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           220
        ret
procend

procstart _uX_mm_shuffle_epi32_3131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           221
        ret
procend

procstart _uX_mm_shuffle_epi32_3132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           222
        ret
procend

procstart _uX_mm_shuffle_epi32_3133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           223
        ret
procend

procstart _uX_mm_shuffle_epi32_3200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           224
        ret
procend

procstart _uX_mm_shuffle_epi32_3201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           225
        ret
procend

procstart _uX_mm_shuffle_epi32_3202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           226
        ret
procend

procstart _uX_mm_shuffle_epi32_3203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           227
        ret
procend

procstart _uX_mm_shuffle_epi32_3210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           228
        ret
procend

procstart _uX_mm_shuffle_epi32_3211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           229
        ret
procend

procstart _uX_mm_shuffle_epi32_3212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           230
        ret
procend

procstart _uX_mm_shuffle_epi32_3213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           231
        ret
procend

procstart _uX_mm_shuffle_epi32_3220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           232
        ret
procend

procstart _uX_mm_shuffle_epi32_3221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           233
        ret
procend

procstart _uX_mm_shuffle_epi32_3222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           234
        ret
procend

procstart _uX_mm_shuffle_epi32_3223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           235
        ret
procend

procstart _uX_mm_shuffle_epi32_3230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           236
        ret
procend

procstart _uX_mm_shuffle_epi32_3231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           237
        ret
procend

procstart _uX_mm_shuffle_epi32_3232, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           238
        ret
procend

procstart _uX_mm_shuffle_epi32_3233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           239
        ret
procend

procstart _uX_mm_shuffle_epi32_3300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           240
        ret
procend

procstart _uX_mm_shuffle_epi32_3301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           241
        ret
procend

procstart _uX_mm_shuffle_epi32_3302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           242
        ret
procend

procstart _uX_mm_shuffle_epi32_3303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           243
        ret
procend

procstart _uX_mm_shuffle_epi32_3310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           244
        ret
procend

procstart _uX_mm_shuffle_epi32_3311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           245
        ret
procend

procstart _uX_mm_shuffle_epi32_3312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           246
        ret
procend

procstart _uX_mm_shuffle_epi32_3313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           247
        ret
procend

procstart _uX_mm_shuffle_epi32_3320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           248
        ret
procend

procstart _uX_mm_shuffle_epi32_3321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           249
        ret
procend

procstart _uX_mm_shuffle_epi32_3322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           250
        ret
procend

procstart _uX_mm_shuffle_epi32_3323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           251
        ret
procend

procstart _uX_mm_shuffle_epi32_3330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           252
        ret
procend

procstart _uX_mm_shuffle_epi32_3331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           253
        ret
procend

procstart _uX_mm_shuffle_epi32_3332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           254
        ret
procend

procstart _uX_mm_shuffle_epi32_3333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd              xmm0,           xmm0,           255
        ret
procend

procstart _uX_mm_shuffle_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp1() < 0) || (rp1() > 255))
        jmp         _m128ishufepi32_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [_m128ishufepi32jmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128ishufepi32jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
        endif

        _m128ishufepi32_0 label size_t
        pshufd              xmm0,           xmm0,           0
        jmp         _m128ishufepi32_end
        _m128ishufepi32_1 label size_t
        pshufd              xmm0,           xmm0,           1
        jmp         _m128ishufepi32_end
        _m128ishufepi32_2 label size_t
        pshufd              xmm0,           xmm0,           2
        jmp         _m128ishufepi32_end
        _m128ishufepi32_3 label size_t
        pshufd              xmm0,           xmm0,           3
        jmp         _m128ishufepi32_end
        _m128ishufepi32_4 label size_t
        pshufd              xmm0,           xmm0,           4
        jmp         _m128ishufepi32_end
        _m128ishufepi32_5 label size_t
        pshufd              xmm0,           xmm0,           5
        jmp         _m128ishufepi32_end
        _m128ishufepi32_6 label size_t
        pshufd              xmm0,           xmm0,           6
        jmp         _m128ishufepi32_end
        _m128ishufepi32_7 label size_t
        pshufd              xmm0,           xmm0,           7
        jmp         _m128ishufepi32_end
        _m128ishufepi32_8 label size_t
        pshufd              xmm0,           xmm0,           8
        jmp         _m128ishufepi32_end
        _m128ishufepi32_9 label size_t
        pshufd              xmm0,           xmm0,           9
        jmp         _m128ishufepi32_end
        _m128ishufepi32_10 label size_t
        pshufd              xmm0,           xmm0,           10
        jmp         _m128ishufepi32_end
        _m128ishufepi32_11 label size_t
        pshufd              xmm0,           xmm0,           11
        jmp         _m128ishufepi32_end
        _m128ishufepi32_12 label size_t
        pshufd              xmm0,           xmm0,           12
        jmp         _m128ishufepi32_end
        _m128ishufepi32_13 label size_t
        pshufd              xmm0,           xmm0,           13
        jmp         _m128ishufepi32_end
        _m128ishufepi32_14 label size_t
        pshufd              xmm0,           xmm0,           14
        jmp         _m128ishufepi32_end
        _m128ishufepi32_15 label size_t
        pshufd              xmm0,           xmm0,           15
        jmp         _m128ishufepi32_end
        _m128ishufepi32_16 label size_t
        pshufd              xmm0,           xmm0,           16
        jmp         _m128ishufepi32_end
        _m128ishufepi32_17 label size_t
        pshufd              xmm0,           xmm0,           17
        jmp         _m128ishufepi32_end
        _m128ishufepi32_18 label size_t
        pshufd              xmm0,           xmm0,           18
        jmp         _m128ishufepi32_end
        _m128ishufepi32_19 label size_t
        pshufd              xmm0,           xmm0,           19
        jmp         _m128ishufepi32_end
        _m128ishufepi32_20 label size_t
        pshufd              xmm0,           xmm0,           20
        jmp         _m128ishufepi32_end
        _m128ishufepi32_21 label size_t
        pshufd              xmm0,           xmm0,           21
        jmp         _m128ishufepi32_end
        _m128ishufepi32_22 label size_t
        pshufd              xmm0,           xmm0,           22
        jmp         _m128ishufepi32_end
        _m128ishufepi32_23 label size_t
        pshufd              xmm0,           xmm0,           23
        jmp         _m128ishufepi32_end
        _m128ishufepi32_24 label size_t
        pshufd              xmm0,           xmm0,           24
        jmp         _m128ishufepi32_end
        _m128ishufepi32_25 label size_t
        pshufd              xmm0,           xmm0,           25
        jmp         _m128ishufepi32_end
        _m128ishufepi32_26 label size_t
        pshufd              xmm0,           xmm0,           26
        jmp         _m128ishufepi32_end
        _m128ishufepi32_27 label size_t
        pshufd              xmm0,           xmm0,           27
        jmp         _m128ishufepi32_end
        _m128ishufepi32_28 label size_t
        pshufd              xmm0,           xmm0,           28
        jmp         _m128ishufepi32_end
        _m128ishufepi32_29 label size_t
        pshufd              xmm0,           xmm0,           29
        jmp         _m128ishufepi32_end
        _m128ishufepi32_30 label size_t
        pshufd              xmm0,           xmm0,           30
        jmp         _m128ishufepi32_end
        _m128ishufepi32_31 label size_t
        pshufd              xmm0,           xmm0,           31
        jmp         _m128ishufepi32_end
        _m128ishufepi32_32 label size_t
        pshufd              xmm0,           xmm0,           32
        jmp         _m128ishufepi32_end
        _m128ishufepi32_33 label size_t
        pshufd              xmm0,           xmm0,           33
        jmp         _m128ishufepi32_end
        _m128ishufepi32_34 label size_t
        pshufd              xmm0,           xmm0,           34
        jmp         _m128ishufepi32_end
        _m128ishufepi32_35 label size_t
        pshufd              xmm0,           xmm0,           35
        jmp         _m128ishufepi32_end
        _m128ishufepi32_36 label size_t
        pshufd              xmm0,           xmm0,           36
        jmp         _m128ishufepi32_end
        _m128ishufepi32_37 label size_t
        pshufd              xmm0,           xmm0,           37
        jmp         _m128ishufepi32_end
        _m128ishufepi32_38 label size_t
        pshufd              xmm0,           xmm0,           38
        jmp         _m128ishufepi32_end
        _m128ishufepi32_39 label size_t
        pshufd              xmm0,           xmm0,           39
        jmp         _m128ishufepi32_end
        _m128ishufepi32_40 label size_t
        pshufd              xmm0,           xmm0,           40
        jmp         _m128ishufepi32_end
        _m128ishufepi32_41 label size_t
        pshufd              xmm0,           xmm0,           41
        jmp         _m128ishufepi32_end
        _m128ishufepi32_42 label size_t
        pshufd              xmm0,           xmm0,           42
        jmp         _m128ishufepi32_end
        _m128ishufepi32_43 label size_t
        pshufd              xmm0,           xmm0,           43
        jmp         _m128ishufepi32_end
        _m128ishufepi32_44 label size_t
        pshufd              xmm0,           xmm0,           44
        jmp         _m128ishufepi32_end
        _m128ishufepi32_45 label size_t
        pshufd              xmm0,           xmm0,           45
        jmp         _m128ishufepi32_end
        _m128ishufepi32_46 label size_t
        pshufd              xmm0,           xmm0,           46
        jmp         _m128ishufepi32_end
        _m128ishufepi32_47 label size_t
        pshufd              xmm0,           xmm0,           47
        jmp         _m128ishufepi32_end
        _m128ishufepi32_48 label size_t
        pshufd              xmm0,           xmm0,           48
        jmp         _m128ishufepi32_end
        _m128ishufepi32_49 label size_t
        pshufd              xmm0,           xmm0,           49
        jmp         _m128ishufepi32_end
        _m128ishufepi32_50 label size_t
        pshufd              xmm0,           xmm0,           50
        jmp         _m128ishufepi32_end
        _m128ishufepi32_51 label size_t
        pshufd              xmm0,           xmm0,           51
        jmp         _m128ishufepi32_end
        _m128ishufepi32_52 label size_t
        pshufd              xmm0,           xmm0,           52
        jmp         _m128ishufepi32_end
        _m128ishufepi32_53 label size_t
        pshufd              xmm0,           xmm0,           53
        jmp         _m128ishufepi32_end
        _m128ishufepi32_54 label size_t
        pshufd              xmm0,           xmm0,           54
        jmp         _m128ishufepi32_end
        _m128ishufepi32_55 label size_t
        pshufd              xmm0,           xmm0,           55
        jmp         _m128ishufepi32_end
        _m128ishufepi32_56 label size_t
        pshufd              xmm0,           xmm0,           56
        jmp         _m128ishufepi32_end
        _m128ishufepi32_57 label size_t
        pshufd              xmm0,           xmm0,           57
        jmp         _m128ishufepi32_end
        _m128ishufepi32_58 label size_t
        pshufd              xmm0,           xmm0,           58
        jmp         _m128ishufepi32_end
        _m128ishufepi32_59 label size_t
        pshufd              xmm0,           xmm0,           59
        jmp         _m128ishufepi32_end
        _m128ishufepi32_60 label size_t
        pshufd              xmm0,           xmm0,           60
        jmp         _m128ishufepi32_end
        _m128ishufepi32_61 label size_t
        pshufd              xmm0,           xmm0,           61
        jmp         _m128ishufepi32_end
        _m128ishufepi32_62 label size_t
        pshufd              xmm0,           xmm0,           62
        jmp         _m128ishufepi32_end
        _m128ishufepi32_63 label size_t
        pshufd              xmm0,           xmm0,           63
        jmp         _m128ishufepi32_end
        _m128ishufepi32_64 label size_t
        pshufd              xmm0,           xmm0,           64
        jmp         _m128ishufepi32_end
        _m128ishufepi32_65 label size_t
        pshufd              xmm0,           xmm0,           65
        jmp         _m128ishufepi32_end
        _m128ishufepi32_66 label size_t
        pshufd              xmm0,           xmm0,           66
        jmp         _m128ishufepi32_end
        _m128ishufepi32_67 label size_t
        pshufd              xmm0,           xmm0,           67
        jmp         _m128ishufepi32_end
        _m128ishufepi32_68 label size_t
        pshufd              xmm0,           xmm0,           68
        jmp         _m128ishufepi32_end
        _m128ishufepi32_69 label size_t
        pshufd              xmm0,           xmm0,           69
        jmp         _m128ishufepi32_end
        _m128ishufepi32_70 label size_t
        pshufd              xmm0,           xmm0,           70
        jmp         _m128ishufepi32_end
        _m128ishufepi32_71 label size_t
        pshufd              xmm0,           xmm0,           71
        jmp         _m128ishufepi32_end
        _m128ishufepi32_72 label size_t
        pshufd              xmm0,           xmm0,           72
        jmp         _m128ishufepi32_end
        _m128ishufepi32_73 label size_t
        pshufd              xmm0,           xmm0,           73
        jmp         _m128ishufepi32_end
        _m128ishufepi32_74 label size_t
        pshufd              xmm0,           xmm0,           74
        jmp         _m128ishufepi32_end
        _m128ishufepi32_75 label size_t
        pshufd              xmm0,           xmm0,           75
        jmp         _m128ishufepi32_end
        _m128ishufepi32_76 label size_t
        pshufd              xmm0,           xmm0,           76
        jmp         _m128ishufepi32_end
        _m128ishufepi32_77 label size_t
        pshufd              xmm0,           xmm0,           77
        jmp         _m128ishufepi32_end
        _m128ishufepi32_78 label size_t
        pshufd              xmm0,           xmm0,           78
        jmp         _m128ishufepi32_end
        _m128ishufepi32_79 label size_t
        pshufd              xmm0,           xmm0,           79
        jmp         _m128ishufepi32_end
        _m128ishufepi32_80 label size_t
        pshufd              xmm0,           xmm0,           80
        jmp         _m128ishufepi32_end
        _m128ishufepi32_81 label size_t
        pshufd              xmm0,           xmm0,           81
        jmp         _m128ishufepi32_end
        _m128ishufepi32_82 label size_t
        pshufd              xmm0,           xmm0,           82
        jmp         _m128ishufepi32_end
        _m128ishufepi32_83 label size_t
        pshufd              xmm0,           xmm0,           83
        jmp         _m128ishufepi32_end
        _m128ishufepi32_84 label size_t
        pshufd              xmm0,           xmm0,           84
        jmp         _m128ishufepi32_end
        _m128ishufepi32_85 label size_t
        pshufd              xmm0,           xmm0,           85
        jmp         _m128ishufepi32_end
        _m128ishufepi32_86 label size_t
        pshufd              xmm0,           xmm0,           86
        jmp         _m128ishufepi32_end
        _m128ishufepi32_87 label size_t
        pshufd              xmm0,           xmm0,           87
        jmp         _m128ishufepi32_end
        _m128ishufepi32_88 label size_t
        pshufd              xmm0,           xmm0,           88
        jmp         _m128ishufepi32_end
        _m128ishufepi32_89 label size_t
        pshufd              xmm0,           xmm0,           89
        jmp         _m128ishufepi32_end
        _m128ishufepi32_90 label size_t
        pshufd              xmm0,           xmm0,           90
        jmp         _m128ishufepi32_end
        _m128ishufepi32_91 label size_t
        pshufd              xmm0,           xmm0,           91
        jmp         _m128ishufepi32_end
        _m128ishufepi32_92 label size_t
        pshufd              xmm0,           xmm0,           92
        jmp         _m128ishufepi32_end
        _m128ishufepi32_93 label size_t
        pshufd              xmm0,           xmm0,           93
        jmp         _m128ishufepi32_end
        _m128ishufepi32_94 label size_t
        pshufd              xmm0,           xmm0,           94
        jmp         _m128ishufepi32_end
        _m128ishufepi32_95 label size_t
        pshufd              xmm0,           xmm0,           95
        jmp         _m128ishufepi32_end
        _m128ishufepi32_96 label size_t
        pshufd              xmm0,           xmm0,           96
        jmp         _m128ishufepi32_end
        _m128ishufepi32_97 label size_t
        pshufd              xmm0,           xmm0,           97
        jmp         _m128ishufepi32_end
        _m128ishufepi32_98 label size_t
        pshufd              xmm0,           xmm0,           98
        jmp         _m128ishufepi32_end
        _m128ishufepi32_99 label size_t
        pshufd              xmm0,           xmm0,           99
        jmp         _m128ishufepi32_end
        _m128ishufepi32_100 label size_t
        pshufd              xmm0,           xmm0,           100
        jmp         _m128ishufepi32_end
        _m128ishufepi32_101 label size_t
        pshufd              xmm0,           xmm0,           101
        jmp         _m128ishufepi32_end
        _m128ishufepi32_102 label size_t
        pshufd              xmm0,           xmm0,           102
        jmp         _m128ishufepi32_end
        _m128ishufepi32_103 label size_t
        pshufd              xmm0,           xmm0,           103
        jmp         _m128ishufepi32_end
        _m128ishufepi32_104 label size_t
        pshufd              xmm0,           xmm0,           104
        jmp         _m128ishufepi32_end
        _m128ishufepi32_105 label size_t
        pshufd              xmm0,           xmm0,           105
        jmp         _m128ishufepi32_end
        _m128ishufepi32_106 label size_t
        pshufd              xmm0,           xmm0,           106
        jmp         _m128ishufepi32_end
        _m128ishufepi32_107 label size_t
        pshufd              xmm0,           xmm0,           107
        jmp         _m128ishufepi32_end
        _m128ishufepi32_108 label size_t
        pshufd              xmm0,           xmm0,           108
        jmp         _m128ishufepi32_end
        _m128ishufepi32_109 label size_t
        pshufd              xmm0,           xmm0,           109
        jmp         _m128ishufepi32_end
        _m128ishufepi32_110 label size_t
        pshufd              xmm0,           xmm0,           110
        jmp         _m128ishufepi32_end
        _m128ishufepi32_111 label size_t
        pshufd              xmm0,           xmm0,           111
        jmp         _m128ishufepi32_end
        _m128ishufepi32_112 label size_t
        pshufd              xmm0,           xmm0,           112
        jmp         _m128ishufepi32_end
        _m128ishufepi32_113 label size_t
        pshufd              xmm0,           xmm0,           113
        jmp         _m128ishufepi32_end
        _m128ishufepi32_114 label size_t
        pshufd              xmm0,           xmm0,           114
        jmp         _m128ishufepi32_end
        _m128ishufepi32_115 label size_t
        pshufd              xmm0,           xmm0,           115
        jmp         _m128ishufepi32_end
        _m128ishufepi32_116 label size_t
        pshufd              xmm0,           xmm0,           116
        jmp         _m128ishufepi32_end
        _m128ishufepi32_117 label size_t
        pshufd              xmm0,           xmm0,           117
        jmp         _m128ishufepi32_end
        _m128ishufepi32_118 label size_t
        pshufd              xmm0,           xmm0,           118
        jmp         _m128ishufepi32_end
        _m128ishufepi32_119 label size_t
        pshufd              xmm0,           xmm0,           119
        jmp         _m128ishufepi32_end
        _m128ishufepi32_120 label size_t
        pshufd              xmm0,           xmm0,           120
        jmp         _m128ishufepi32_end
        _m128ishufepi32_121 label size_t
        pshufd              xmm0,           xmm0,           121
        jmp         _m128ishufepi32_end
        _m128ishufepi32_122 label size_t
        pshufd              xmm0,           xmm0,           122
        jmp         _m128ishufepi32_end
        _m128ishufepi32_123 label size_t
        pshufd              xmm0,           xmm0,           123
        jmp         _m128ishufepi32_end
        _m128ishufepi32_124 label size_t
        pshufd              xmm0,           xmm0,           124
        jmp         _m128ishufepi32_end
        _m128ishufepi32_125 label size_t
        pshufd              xmm0,           xmm0,           125
        jmp         _m128ishufepi32_end
        _m128ishufepi32_126 label size_t
        pshufd              xmm0,           xmm0,           126
        jmp         _m128ishufepi32_end
        _m128ishufepi32_127 label size_t
        pshufd              xmm0,           xmm0,           127
        jmp         _m128ishufepi32_end
        _m128ishufepi32_128 label size_t
        pshufd              xmm0,           xmm0,           128
        jmp         _m128ishufepi32_end
        _m128ishufepi32_129 label size_t
        pshufd              xmm0,           xmm0,           129
        jmp         _m128ishufepi32_end
        _m128ishufepi32_130 label size_t
        pshufd              xmm0,           xmm0,           130
        jmp         _m128ishufepi32_end
        _m128ishufepi32_131 label size_t
        pshufd              xmm0,           xmm0,           131
        jmp         _m128ishufepi32_end
        _m128ishufepi32_132 label size_t
        pshufd              xmm0,           xmm0,           132
        jmp         _m128ishufepi32_end
        _m128ishufepi32_133 label size_t
        pshufd              xmm0,           xmm0,           133
        jmp         _m128ishufepi32_end
        _m128ishufepi32_134 label size_t
        pshufd              xmm0,           xmm0,           134
        jmp         _m128ishufepi32_end
        _m128ishufepi32_135 label size_t
        pshufd              xmm0,           xmm0,           135
        jmp         _m128ishufepi32_end
        _m128ishufepi32_136 label size_t
        pshufd              xmm0,           xmm0,           136
        jmp         _m128ishufepi32_end
        _m128ishufepi32_137 label size_t
        pshufd              xmm0,           xmm0,           137
        jmp         _m128ishufepi32_end
        _m128ishufepi32_138 label size_t
        pshufd              xmm0,           xmm0,           138
        jmp         _m128ishufepi32_end
        _m128ishufepi32_139 label size_t
        pshufd              xmm0,           xmm0,           139
        jmp         _m128ishufepi32_end
        _m128ishufepi32_140 label size_t
        pshufd              xmm0,           xmm0,           140
        jmp         _m128ishufepi32_end
        _m128ishufepi32_141 label size_t
        pshufd              xmm0,           xmm0,           141
        jmp         _m128ishufepi32_end
        _m128ishufepi32_142 label size_t
        pshufd              xmm0,           xmm0,           142
        jmp         _m128ishufepi32_end
        _m128ishufepi32_143 label size_t
        pshufd              xmm0,           xmm0,           143
        jmp         _m128ishufepi32_end
        _m128ishufepi32_144 label size_t
        pshufd              xmm0,           xmm0,           144
        jmp         _m128ishufepi32_end
        _m128ishufepi32_145 label size_t
        pshufd              xmm0,           xmm0,           145
        jmp         _m128ishufepi32_end
        _m128ishufepi32_146 label size_t
        pshufd              xmm0,           xmm0,           146
        jmp         _m128ishufepi32_end
        _m128ishufepi32_147 label size_t
        pshufd              xmm0,           xmm0,           147
        jmp         _m128ishufepi32_end
        _m128ishufepi32_148 label size_t
        pshufd              xmm0,           xmm0,           148
        jmp         _m128ishufepi32_end
        _m128ishufepi32_149 label size_t
        pshufd              xmm0,           xmm0,           149
        jmp         _m128ishufepi32_end
        _m128ishufepi32_150 label size_t
        pshufd              xmm0,           xmm0,           150
        jmp         _m128ishufepi32_end
        _m128ishufepi32_151 label size_t
        pshufd              xmm0,           xmm0,           151
        jmp         _m128ishufepi32_end
        _m128ishufepi32_152 label size_t
        pshufd              xmm0,           xmm0,           152
        jmp         _m128ishufepi32_end
        _m128ishufepi32_153 label size_t
        pshufd              xmm0,           xmm0,           153
        jmp         _m128ishufepi32_end
        _m128ishufepi32_154 label size_t
        pshufd              xmm0,           xmm0,           154
        jmp         _m128ishufepi32_end
        _m128ishufepi32_155 label size_t
        pshufd              xmm0,           xmm0,           155
        jmp         _m128ishufepi32_end
        _m128ishufepi32_156 label size_t
        pshufd              xmm0,           xmm0,           156
        jmp         _m128ishufepi32_end
        _m128ishufepi32_157 label size_t
        pshufd              xmm0,           xmm0,           157
        jmp         _m128ishufepi32_end
        _m128ishufepi32_158 label size_t
        pshufd              xmm0,           xmm0,           158
        jmp         _m128ishufepi32_end
        _m128ishufepi32_159 label size_t
        pshufd              xmm0,           xmm0,           159
        jmp         _m128ishufepi32_end
        _m128ishufepi32_160 label size_t
        pshufd              xmm0,           xmm0,           160
        jmp         _m128ishufepi32_end
        _m128ishufepi32_161 label size_t
        pshufd              xmm0,           xmm0,           161
        jmp         _m128ishufepi32_end
        _m128ishufepi32_162 label size_t
        pshufd              xmm0,           xmm0,           162
        jmp         _m128ishufepi32_end
        _m128ishufepi32_163 label size_t
        pshufd              xmm0,           xmm0,           163
        jmp         _m128ishufepi32_end
        _m128ishufepi32_164 label size_t
        pshufd              xmm0,           xmm0,           164
        jmp         _m128ishufepi32_end
        _m128ishufepi32_165 label size_t
        pshufd              xmm0,           xmm0,           165
        jmp         _m128ishufepi32_end
        _m128ishufepi32_166 label size_t
        pshufd              xmm0,           xmm0,           166
        jmp         _m128ishufepi32_end
        _m128ishufepi32_167 label size_t
        pshufd              xmm0,           xmm0,           167
        jmp         _m128ishufepi32_end
        _m128ishufepi32_168 label size_t
        pshufd              xmm0,           xmm0,           168
        jmp         _m128ishufepi32_end
        _m128ishufepi32_169 label size_t
        pshufd              xmm0,           xmm0,           169
        jmp         _m128ishufepi32_end
        _m128ishufepi32_170 label size_t
        pshufd              xmm0,           xmm0,           170
        jmp         _m128ishufepi32_end
        _m128ishufepi32_171 label size_t
        pshufd              xmm0,           xmm0,           171
        jmp         _m128ishufepi32_end
        _m128ishufepi32_172 label size_t
        pshufd              xmm0,           xmm0,           172
        jmp         _m128ishufepi32_end
        _m128ishufepi32_173 label size_t
        pshufd              xmm0,           xmm0,           173
        jmp         _m128ishufepi32_end
        _m128ishufepi32_174 label size_t
        pshufd              xmm0,           xmm0,           174
        jmp         _m128ishufepi32_end
        _m128ishufepi32_175 label size_t
        pshufd              xmm0,           xmm0,           175
        jmp         _m128ishufepi32_end
        _m128ishufepi32_176 label size_t
        pshufd              xmm0,           xmm0,           176
        jmp         _m128ishufepi32_end
        _m128ishufepi32_177 label size_t
        pshufd              xmm0,           xmm0,           177
        jmp         _m128ishufepi32_end
        _m128ishufepi32_178 label size_t
        pshufd              xmm0,           xmm0,           178
        jmp         _m128ishufepi32_end
        _m128ishufepi32_179 label size_t
        pshufd              xmm0,           xmm0,           179
        jmp         _m128ishufepi32_end
        _m128ishufepi32_180 label size_t
        pshufd              xmm0,           xmm0,           180
        jmp         _m128ishufepi32_end
        _m128ishufepi32_181 label size_t
        pshufd              xmm0,           xmm0,           181
        jmp         _m128ishufepi32_end
        _m128ishufepi32_182 label size_t
        pshufd              xmm0,           xmm0,           182
        jmp         _m128ishufepi32_end
        _m128ishufepi32_183 label size_t
        pshufd              xmm0,           xmm0,           183
        jmp         _m128ishufepi32_end
        _m128ishufepi32_184 label size_t
        pshufd              xmm0,           xmm0,           184
        jmp         _m128ishufepi32_end
        _m128ishufepi32_185 label size_t
        pshufd              xmm0,           xmm0,           185
        jmp         _m128ishufepi32_end
        _m128ishufepi32_186 label size_t
        pshufd              xmm0,           xmm0,           186
        jmp         _m128ishufepi32_end
        _m128ishufepi32_187 label size_t
        pshufd              xmm0,           xmm0,           187
        jmp         _m128ishufepi32_end
        _m128ishufepi32_188 label size_t
        pshufd              xmm0,           xmm0,           188
        jmp         _m128ishufepi32_end
        _m128ishufepi32_189 label size_t
        pshufd              xmm0,           xmm0,           189
        jmp         _m128ishufepi32_end
        _m128ishufepi32_190 label size_t
        pshufd              xmm0,           xmm0,           190
        jmp         _m128ishufepi32_end
        _m128ishufepi32_191 label size_t
        pshufd              xmm0,           xmm0,           191
        jmp         _m128ishufepi32_end
        _m128ishufepi32_192 label size_t
        pshufd              xmm0,           xmm0,           192
        jmp         _m128ishufepi32_end
        _m128ishufepi32_193 label size_t
        pshufd              xmm0,           xmm0,           193
        jmp         _m128ishufepi32_end
        _m128ishufepi32_194 label size_t
        pshufd              xmm0,           xmm0,           194
        jmp         _m128ishufepi32_end
        _m128ishufepi32_195 label size_t
        pshufd              xmm0,           xmm0,           195
        jmp         _m128ishufepi32_end
        _m128ishufepi32_196 label size_t
        pshufd              xmm0,           xmm0,           196
        jmp         _m128ishufepi32_end
        _m128ishufepi32_197 label size_t
        pshufd              xmm0,           xmm0,           197
        jmp         _m128ishufepi32_end
        _m128ishufepi32_198 label size_t
        pshufd              xmm0,           xmm0,           198
        jmp         _m128ishufepi32_end
        _m128ishufepi32_199 label size_t
        pshufd              xmm0,           xmm0,           199
        jmp         _m128ishufepi32_end
        _m128ishufepi32_200 label size_t
        pshufd              xmm0,           xmm0,           200
        jmp         _m128ishufepi32_end
        _m128ishufepi32_201 label size_t
        pshufd              xmm0,           xmm0,           201
        jmp         _m128ishufepi32_end
        _m128ishufepi32_202 label size_t
        pshufd              xmm0,           xmm0,           202
        jmp         _m128ishufepi32_end
        _m128ishufepi32_203 label size_t
        pshufd              xmm0,           xmm0,           203
        jmp         _m128ishufepi32_end
        _m128ishufepi32_204 label size_t
        pshufd              xmm0,           xmm0,           204
        jmp         _m128ishufepi32_end
        _m128ishufepi32_205 label size_t
        pshufd              xmm0,           xmm0,           205
        jmp         _m128ishufepi32_end
        _m128ishufepi32_206 label size_t
        pshufd              xmm0,           xmm0,           206
        jmp         _m128ishufepi32_end
        _m128ishufepi32_207 label size_t
        pshufd              xmm0,           xmm0,           207
        jmp         _m128ishufepi32_end
        _m128ishufepi32_208 label size_t
        pshufd              xmm0,           xmm0,           208
        jmp         _m128ishufepi32_end
        _m128ishufepi32_209 label size_t
        pshufd              xmm0,           xmm0,           209
        jmp         _m128ishufepi32_end
        _m128ishufepi32_210 label size_t
        pshufd              xmm0,           xmm0,           210
        jmp         _m128ishufepi32_end
        _m128ishufepi32_211 label size_t
        pshufd              xmm0,           xmm0,           211
        jmp         _m128ishufepi32_end
        _m128ishufepi32_212 label size_t
        pshufd              xmm0,           xmm0,           212
        jmp         _m128ishufepi32_end
        _m128ishufepi32_213 label size_t
        pshufd              xmm0,           xmm0,           213
        jmp         _m128ishufepi32_end
        _m128ishufepi32_214 label size_t
        pshufd              xmm0,           xmm0,           214
        jmp         _m128ishufepi32_end
        _m128ishufepi32_215 label size_t
        pshufd              xmm0,           xmm0,           215
        jmp         _m128ishufepi32_end
        _m128ishufepi32_216 label size_t
        pshufd              xmm0,           xmm0,           216
        jmp         _m128ishufepi32_end
        _m128ishufepi32_217 label size_t
        pshufd              xmm0,           xmm0,           217
        jmp         _m128ishufepi32_end
        _m128ishufepi32_218 label size_t
        pshufd              xmm0,           xmm0,           218
        jmp         _m128ishufepi32_end
        _m128ishufepi32_219 label size_t
        pshufd              xmm0,           xmm0,           219
        jmp         _m128ishufepi32_end
        _m128ishufepi32_220 label size_t
        pshufd              xmm0,           xmm0,           220
        jmp         _m128ishufepi32_end
        _m128ishufepi32_221 label size_t
        pshufd              xmm0,           xmm0,           221
        jmp         _m128ishufepi32_end
        _m128ishufepi32_222 label size_t
        pshufd              xmm0,           xmm0,           222
        jmp         _m128ishufepi32_end
        _m128ishufepi32_223 label size_t
        pshufd              xmm0,           xmm0,           223
        jmp         _m128ishufepi32_end
        _m128ishufepi32_224 label size_t
        pshufd              xmm0,           xmm0,           224
        jmp         _m128ishufepi32_end
        _m128ishufepi32_225 label size_t
        pshufd              xmm0,           xmm0,           225
        jmp         _m128ishufepi32_end
        _m128ishufepi32_226 label size_t
        pshufd              xmm0,           xmm0,           226
        jmp         _m128ishufepi32_end
        _m128ishufepi32_227 label size_t
        pshufd              xmm0,           xmm0,           227
        jmp         _m128ishufepi32_end
        _m128ishufepi32_228 label size_t
        pshufd              xmm0,           xmm0,           228
        jmp         _m128ishufepi32_end
        _m128ishufepi32_229 label size_t
        pshufd              xmm0,           xmm0,           229
        jmp         _m128ishufepi32_end
        _m128ishufepi32_230 label size_t
        pshufd              xmm0,           xmm0,           230
        jmp         _m128ishufepi32_end
        _m128ishufepi32_231 label size_t
        pshufd              xmm0,           xmm0,           231
        jmp         _m128ishufepi32_end
        _m128ishufepi32_232 label size_t
        pshufd              xmm0,           xmm0,           232
        jmp         _m128ishufepi32_end
        _m128ishufepi32_233 label size_t
        pshufd              xmm0,           xmm0,           233
        jmp         _m128ishufepi32_end
        _m128ishufepi32_234 label size_t
        pshufd              xmm0,           xmm0,           234
        jmp         _m128ishufepi32_end
        _m128ishufepi32_235 label size_t
        pshufd              xmm0,           xmm0,           235
        jmp         _m128ishufepi32_end
        _m128ishufepi32_236 label size_t
        pshufd              xmm0,           xmm0,           236
        jmp         _m128ishufepi32_end
        _m128ishufepi32_237 label size_t
        pshufd              xmm0,           xmm0,           237
        jmp         _m128ishufepi32_end
        _m128ishufepi32_238 label size_t
        pshufd              xmm0,           xmm0,           238
        jmp         _m128ishufepi32_end
        _m128ishufepi32_239 label size_t
        pshufd              xmm0,           xmm0,           239
        jmp         _m128ishufepi32_end
        _m128ishufepi32_240 label size_t
        pshufd              xmm0,           xmm0,           240
        jmp         _m128ishufepi32_end
        _m128ishufepi32_241 label size_t
        pshufd              xmm0,           xmm0,           241
        jmp         _m128ishufepi32_end
        _m128ishufepi32_242 label size_t
        pshufd              xmm0,           xmm0,           242
        jmp         _m128ishufepi32_end
        _m128ishufepi32_243 label size_t
        pshufd              xmm0,           xmm0,           243
        jmp         _m128ishufepi32_end
        _m128ishufepi32_244 label size_t
        pshufd              xmm0,           xmm0,           244
        jmp         _m128ishufepi32_end
        _m128ishufepi32_245 label size_t
        pshufd              xmm0,           xmm0,           245
        jmp         _m128ishufepi32_end
        _m128ishufepi32_246 label size_t
        pshufd              xmm0,           xmm0,           246
        jmp         _m128ishufepi32_end
        _m128ishufepi32_247 label size_t
        pshufd              xmm0,           xmm0,           247
        jmp         _m128ishufepi32_end
        _m128ishufepi32_248 label size_t
        pshufd              xmm0,           xmm0,           248
        jmp         _m128ishufepi32_end
        _m128ishufepi32_249 label size_t
        pshufd              xmm0,           xmm0,           249
        jmp         _m128ishufepi32_end
        _m128ishufepi32_250 label size_t
        pshufd              xmm0,           xmm0,           250
        jmp         _m128ishufepi32_end
        _m128ishufepi32_251 label size_t
        pshufd              xmm0,           xmm0,           251
        jmp         _m128ishufepi32_end
        _m128ishufepi32_252 label size_t
        pshufd              xmm0,           xmm0,           252
        jmp         _m128ishufepi32_end
        _m128ishufepi32_253 label size_t
        pshufd              xmm0,           xmm0,           253
        jmp         _m128ishufepi32_end
        _m128ishufepi32_254 label size_t
        pshufd              xmm0,           xmm0,           254
        jmp         _m128ishufepi32_end
        _m128ishufepi32_255 label size_t
        pshufd              xmm0,           xmm0,           255
        ;jmp         _m128ishufepi32_end

        _m128ishufepi32_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_shufflehi_epi16_0000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_shufflehi_epi16_0001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           1
        ret
procend

procstart _uX_mm_shufflehi_epi16_0002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           2
        ret
procend

procstart _uX_mm_shufflehi_epi16_0003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           3
        ret
procend

procstart _uX_mm_shufflehi_epi16_0010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           4
        ret
procend

procstart _uX_mm_shufflehi_epi16_0011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           5
        ret
procend

procstart _uX_mm_shufflehi_epi16_0012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           6
        ret
procend

procstart _uX_mm_shufflehi_epi16_0013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           7
        ret
procend

procstart _uX_mm_shufflehi_epi16_0020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           8
        ret
procend

procstart _uX_mm_shufflehi_epi16_0021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           9
        ret
procend

procstart _uX_mm_shufflehi_epi16_0022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           10
        ret
procend

procstart _uX_mm_shufflehi_epi16_0023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           11
        ret
procend

procstart _uX_mm_shufflehi_epi16_0030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           12
        ret
procend

procstart _uX_mm_shufflehi_epi16_0031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           13
        ret
procend

procstart _uX_mm_shufflehi_epi16_0032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           14
        ret
procend

procstart _uX_mm_shufflehi_epi16_0033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           15
        ret
procend

procstart _uX_mm_shufflehi_epi16_0100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           16
        ret
procend

procstart _uX_mm_shufflehi_epi16_0101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           17
        ret
procend

procstart _uX_mm_shufflehi_epi16_0102, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           18
        ret
procend

procstart _uX_mm_shufflehi_epi16_0103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           19
        ret
procend

procstart _uX_mm_shufflehi_epi16_0110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           20
        ret
procend

procstart _uX_mm_shufflehi_epi16_0111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           21
        ret
procend

procstart _uX_mm_shufflehi_epi16_0112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           22
        ret
procend

procstart _uX_mm_shufflehi_epi16_0113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           23
        ret
procend

procstart _uX_mm_shufflehi_epi16_0120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           24
        ret
procend

procstart _uX_mm_shufflehi_epi16_0121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           25
        ret
procend

procstart _uX_mm_shufflehi_epi16_0122, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           26
        ret
procend

procstart _uX_mm_shufflehi_epi16_0123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           27
        ret
procend

procstart _uX_mm_shufflehi_epi16_0130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           28
        ret
procend

procstart _uX_mm_shufflehi_epi16_0131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           29
        ret
procend

procstart _uX_mm_shufflehi_epi16_0132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           30
        ret
procend

procstart _uX_mm_shufflehi_epi16_0133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           31
        ret
procend

procstart _uX_mm_shufflehi_epi16_0200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           32
        ret
procend

procstart _uX_mm_shufflehi_epi16_0201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           33
        ret
procend

procstart _uX_mm_shufflehi_epi16_0202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           34
        ret
procend

procstart _uX_mm_shufflehi_epi16_0203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           35
        ret
procend

procstart _uX_mm_shufflehi_epi16_0210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           36
        ret
procend

procstart _uX_mm_shufflehi_epi16_0211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           37
        ret
procend

procstart _uX_mm_shufflehi_epi16_0212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           38
        ret
procend

procstart _uX_mm_shufflehi_epi16_0213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           39
        ret
procend

procstart _uX_mm_shufflehi_epi16_0220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           40
        ret
procend

procstart _uX_mm_shufflehi_epi16_0221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           41
        ret
procend

procstart _uX_mm_shufflehi_epi16_0222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           42
        ret
procend

procstart _uX_mm_shufflehi_epi16_0223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           43
        ret
procend

procstart _uX_mm_shufflehi_epi16_0230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           44
        ret
procend

procstart _uX_mm_shufflehi_epi16_0231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           45
        ret
procend

procstart _uX_mm_shufflehi_epi16_0232, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           46
        ret
procend

procstart _uX_mm_shufflehi_epi16_0233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           47
        ret
procend

procstart _uX_mm_shufflehi_epi16_0300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           48
        ret
procend

procstart _uX_mm_shufflehi_epi16_0301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           49
        ret
procend

procstart _uX_mm_shufflehi_epi16_0302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           50
        ret
procend

procstart _uX_mm_shufflehi_epi16_0303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           51
        ret
procend

procstart _uX_mm_shufflehi_epi16_0310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           52
        ret
procend

procstart _uX_mm_shufflehi_epi16_0311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           53
        ret
procend

procstart _uX_mm_shufflehi_epi16_0312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           54
        ret
procend

procstart _uX_mm_shufflehi_epi16_0313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           55
        ret
procend

procstart _uX_mm_shufflehi_epi16_0320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           56
        ret
procend

procstart _uX_mm_shufflehi_epi16_0321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           57
        ret
procend

procstart _uX_mm_shufflehi_epi16_0322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           58
        ret
procend

procstart _uX_mm_shufflehi_epi16_0323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           59
        ret
procend

procstart _uX_mm_shufflehi_epi16_0330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           60
        ret
procend

procstart _uX_mm_shufflehi_epi16_0331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           61
        ret
procend

procstart _uX_mm_shufflehi_epi16_0332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           62
        ret
procend

procstart _uX_mm_shufflehi_epi16_0333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           63
        ret
procend

procstart _uX_mm_shufflehi_epi16_1000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           64
        ret
procend

procstart _uX_mm_shufflehi_epi16_1001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           65
        ret
procend

procstart _uX_mm_shufflehi_epi16_1002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           66
        ret
procend

procstart _uX_mm_shufflehi_epi16_1003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           67
        ret
procend

procstart _uX_mm_shufflehi_epi16_1010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           68
        ret
procend

procstart _uX_mm_shufflehi_epi16_1011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           69
        ret
procend

procstart _uX_mm_shufflehi_epi16_1012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           70
        ret
procend

procstart _uX_mm_shufflehi_epi16_1013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           71
        ret
procend

procstart _uX_mm_shufflehi_epi16_1020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           72
        ret
procend

procstart _uX_mm_shufflehi_epi16_1021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           73
        ret
procend

procstart _uX_mm_shufflehi_epi16_1022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           74
        ret
procend

procstart _uX_mm_shufflehi_epi16_1023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           75
        ret
procend

procstart _uX_mm_shufflehi_epi16_1030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           76
        ret
procend

procstart _uX_mm_shufflehi_epi16_1031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           77
        ret
procend

procstart _uX_mm_shufflehi_epi16_1032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           78
        ret
procend

procstart _uX_mm_shufflehi_epi16_1033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           79
        ret
procend

procstart _uX_mm_shufflehi_epi16_1100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           80
        ret
procend

procstart _uX_mm_shufflehi_epi16_1101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           81
        ret
procend

procstart _uX_mm_shufflehi_epi16_1102, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           82
        ret
procend

procstart _uX_mm_shufflehi_epi16_1103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           83
        ret
procend

procstart _uX_mm_shufflehi_epi16_1110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           84
        ret
procend

procstart _uX_mm_shufflehi_epi16_1111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           85
        ret
procend

procstart _uX_mm_shufflehi_epi16_1112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           86
        ret
procend

procstart _uX_mm_shufflehi_epi16_1113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           87
        ret
procend

procstart _uX_mm_shufflehi_epi16_1120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           88
        ret
procend

procstart _uX_mm_shufflehi_epi16_1121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           89
        ret
procend

procstart _uX_mm_shufflehi_epi16_1122, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           90
        ret
procend

procstart _uX_mm_shufflehi_epi16_1123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           91
        ret
procend

procstart _uX_mm_shufflehi_epi16_1130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           92
        ret
procend

procstart _uX_mm_shufflehi_epi16_1131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           93
        ret
procend

procstart _uX_mm_shufflehi_epi16_1132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           94
        ret
procend

procstart _uX_mm_shufflehi_epi16_1133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           95
        ret
procend

procstart _uX_mm_shufflehi_epi16_1200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           96
        ret
procend

procstart _uX_mm_shufflehi_epi16_1201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           97
        ret
procend

procstart _uX_mm_shufflehi_epi16_1202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           98
        ret
procend

procstart _uX_mm_shufflehi_epi16_1203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           99
        ret
procend

procstart _uX_mm_shufflehi_epi16_1210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           100
        ret
procend

procstart _uX_mm_shufflehi_epi16_1211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           101
        ret
procend

procstart _uX_mm_shufflehi_epi16_1212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           102
        ret
procend

procstart _uX_mm_shufflehi_epi16_1213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           103
        ret
procend

procstart _uX_mm_shufflehi_epi16_1220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           104
        ret
procend

procstart _uX_mm_shufflehi_epi16_1221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           105
        ret
procend

procstart _uX_mm_shufflehi_epi16_1222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           106
        ret
procend

procstart _uX_mm_shufflehi_epi16_1223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           107
        ret
procend

procstart _uX_mm_shufflehi_epi16_1230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           108
        ret
procend

procstart _uX_mm_shufflehi_epi16_1231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           109
        ret
procend

procstart _uX_mm_shufflehi_epi16_1232, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           110
        ret
procend

procstart _uX_mm_shufflehi_epi16_1233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           111
        ret
procend

procstart _uX_mm_shufflehi_epi16_1300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           112
        ret
procend

procstart _uX_mm_shufflehi_epi16_1301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           113
        ret
procend

procstart _uX_mm_shufflehi_epi16_1302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           114
        ret
procend

procstart _uX_mm_shufflehi_epi16_1303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           115
        ret
procend

procstart _uX_mm_shufflehi_epi16_1310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           116
        ret
procend

procstart _uX_mm_shufflehi_epi16_1311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           117
        ret
procend

procstart _uX_mm_shufflehi_epi16_1312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           118
        ret
procend

procstart _uX_mm_shufflehi_epi16_1313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           119
        ret
procend

procstart _uX_mm_shufflehi_epi16_1320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           120
        ret
procend

procstart _uX_mm_shufflehi_epi16_1321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           121
        ret
procend

procstart _uX_mm_shufflehi_epi16_1322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           122
        ret
procend

procstart _uX_mm_shufflehi_epi16_1323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           123
        ret
procend

procstart _uX_mm_shufflehi_epi16_1330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           124
        ret
procend

procstart _uX_mm_shufflehi_epi16_1331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           125
        ret
procend

procstart _uX_mm_shufflehi_epi16_1332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           126
        ret
procend

procstart _uX_mm_shufflehi_epi16_1333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           127
        ret
procend

procstart _uX_mm_shufflehi_epi16_2000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           128
        ret
procend

procstart _uX_mm_shufflehi_epi16_2001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           129
        ret
procend

procstart _uX_mm_shufflehi_epi16_2002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           130
        ret
procend

procstart _uX_mm_shufflehi_epi16_2003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           131
        ret
procend

procstart _uX_mm_shufflehi_epi16_2010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           132
        ret
procend

procstart _uX_mm_shufflehi_epi16_2011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           133
        ret
procend

procstart _uX_mm_shufflehi_epi16_2012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           134
        ret
procend

procstart _uX_mm_shufflehi_epi16_2013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           135
        ret
procend

procstart _uX_mm_shufflehi_epi16_2020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           136
        ret
procend

procstart _uX_mm_shufflehi_epi16_2021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           137
        ret
procend

procstart _uX_mm_shufflehi_epi16_2022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           138
        ret
procend

procstart _uX_mm_shufflehi_epi16_2023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           139
        ret
procend

procstart _uX_mm_shufflehi_epi16_2030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           140
        ret
procend

procstart _uX_mm_shufflehi_epi16_2031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           141
        ret
procend

procstart _uX_mm_shufflehi_epi16_2032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           142
        ret
procend

procstart _uX_mm_shufflehi_epi16_2033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           143
        ret
procend

procstart _uX_mm_shufflehi_epi16_2100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           144
        ret
procend

procstart _uX_mm_shufflehi_epi16_2101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           145
        ret
procend

procstart _uX_mm_shufflehi_epi16_2102, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        pshufhw             xmm0,           xmm0,           146
        ret
procend

procstart _uX_mm_shufflehi_epi16_2103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           147
        ret
procend

procstart _uX_mm_shufflehi_epi16_2110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           148
        ret
procend

procstart _uX_mm_shufflehi_epi16_2111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           149
        ret
procend

procstart _uX_mm_shufflehi_epi16_2112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           150
        ret
procend

procstart _uX_mm_shufflehi_epi16_2113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           151
        ret
procend

procstart _uX_mm_shufflehi_epi16_2120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           152
        ret
procend

procstart _uX_mm_shufflehi_epi16_2121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           153
        ret
procend

procstart _uX_mm_shufflehi_epi16_2122, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        pshufhw             xmm0,           xmm0,           154
        ret
procend

procstart _uX_mm_shufflehi_epi16_2123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           155
        ret
procend

procstart _uX_mm_shufflehi_epi16_2130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           156
        ret
procend

procstart _uX_mm_shufflehi_epi16_2131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           157
        ret
procend

procstart _uX_mm_shufflehi_epi16_2132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           158
        ret
procend

procstart _uX_mm_shufflehi_epi16_2133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           159
        ret
procend

procstart _uX_mm_shufflehi_epi16_2200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           160
        ret
procend

procstart _uX_mm_shufflehi_epi16_2201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           161
        ret
procend

procstart _uX_mm_shufflehi_epi16_2202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           162
        ret
procend

procstart _uX_mm_shufflehi_epi16_2203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           163
        ret
procend

procstart _uX_mm_shufflehi_epi16_2210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           164
        ret
procend

procstart _uX_mm_shufflehi_epi16_2211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           165
        ret
procend

procstart _uX_mm_shufflehi_epi16_2212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           166
        ret
procend

procstart _uX_mm_shufflehi_epi16_2213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           167
        ret
procend

procstart _uX_mm_shufflehi_epi16_2220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           168
        ret
procend

procstart _uX_mm_shufflehi_epi16_2221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           169
        ret
procend

procstart _uX_mm_shufflehi_epi16_2222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           170
        ret
procend

procstart _uX_mm_shufflehi_epi16_2223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           171
        ret
procend

procstart _uX_mm_shufflehi_epi16_2230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           172
        ret
procend

procstart _uX_mm_shufflehi_epi16_2231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           173
        ret
procend

procstart _uX_mm_shufflehi_epi16_2232, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        pshufhw             xmm0,           xmm0,           174
        ret
procend

procstart _uX_mm_shufflehi_epi16_2233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           175
        ret
procend

procstart _uX_mm_shufflehi_epi16_2300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           176
        ret
procend

procstart _uX_mm_shufflehi_epi16_2301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           177
        ret
procend

procstart _uX_mm_shufflehi_epi16_2302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           178
        ret
procend

procstart _uX_mm_shufflehi_epi16_2303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           179
        ret
procend

procstart _uX_mm_shufflehi_epi16_2310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           180
        ret
procend

procstart _uX_mm_shufflehi_epi16_2311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           181
        ret
procend

procstart _uX_mm_shufflehi_epi16_2312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           182
        ret
procend

procstart _uX_mm_shufflehi_epi16_2313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           183
        ret
procend

procstart _uX_mm_shufflehi_epi16_2320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           184
        ret
procend

procstart _uX_mm_shufflehi_epi16_2321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           185
        ret
procend

procstart _uX_mm_shufflehi_epi16_2322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           186
        ret
procend

procstart _uX_mm_shufflehi_epi16_2323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           187
        ret
procend

procstart _uX_mm_shufflehi_epi16_2330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           188
        ret
procend

procstart _uX_mm_shufflehi_epi16_2331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           189
        ret
procend

procstart _uX_mm_shufflehi_epi16_2332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           190
        ret
procend

procstart _uX_mm_shufflehi_epi16_2333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           191
        ret
procend

procstart _uX_mm_shufflehi_epi16_3000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           192
        ret
procend

procstart _uX_mm_shufflehi_epi16_3001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           193
        ret
procend

procstart _uX_mm_shufflehi_epi16_3002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           194
        ret
procend

procstart _uX_mm_shufflehi_epi16_3003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           195
        ret
procend

procstart _uX_mm_shufflehi_epi16_3010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           196
        ret
procend

procstart _uX_mm_shufflehi_epi16_3011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           197
        ret
procend

procstart _uX_mm_shufflehi_epi16_3012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           198
        ret
procend

procstart _uX_mm_shufflehi_epi16_3013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           199
        ret
procend

procstart _uX_mm_shufflehi_epi16_3020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           200
        ret
procend

procstart _uX_mm_shufflehi_epi16_3021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           201
        ret
procend

procstart _uX_mm_shufflehi_epi16_3022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           202
        ret
procend

procstart _uX_mm_shufflehi_epi16_3023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           203
        ret
procend

procstart _uX_mm_shufflehi_epi16_3030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           204
        ret
procend

procstart _uX_mm_shufflehi_epi16_3031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           205
        ret
procend

procstart _uX_mm_shufflehi_epi16_3032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           206
        ret
procend

procstart _uX_mm_shufflehi_epi16_3033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           207
        ret
procend

procstart _uX_mm_shufflehi_epi16_3100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           208
        ret
procend

procstart _uX_mm_shufflehi_epi16_3101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           209
        ret
procend

procstart _uX_mm_shufflehi_epi16_3102, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           210
        ret
procend

procstart _uX_mm_shufflehi_epi16_3103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           211
        ret
procend

procstart _uX_mm_shufflehi_epi16_3110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           212
        ret
procend

procstart _uX_mm_shufflehi_epi16_3111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           213
        ret
procend

procstart _uX_mm_shufflehi_epi16_3112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           214
        ret
procend

procstart _uX_mm_shufflehi_epi16_3113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           215
        ret
procend

procstart _uX_mm_shufflehi_epi16_3120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           216
        ret
procend

procstart _uX_mm_shufflehi_epi16_3121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           217
        ret
procend

procstart _uX_mm_shufflehi_epi16_3122, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           218
        ret
procend

procstart _uX_mm_shufflehi_epi16_3123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           219
        ret
procend

procstart _uX_mm_shufflehi_epi16_3130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           220
        ret
procend

procstart _uX_mm_shufflehi_epi16_3131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           221
        ret
procend

procstart _uX_mm_shufflehi_epi16_3132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           222
        ret
procend

procstart _uX_mm_shufflehi_epi16_3133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           223
        ret
procend

procstart _uX_mm_shufflehi_epi16_3200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           224
        ret
procend

procstart _uX_mm_shufflehi_epi16_3201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           225
        ret
procend

procstart _uX_mm_shufflehi_epi16_3202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           226
        ret
procend

procstart _uX_mm_shufflehi_epi16_3203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           227
        ret
procend

procstart _uX_mm_shufflehi_epi16_3210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           228
        ret
procend

procstart _uX_mm_shufflehi_epi16_3211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           229
        ret
procend

procstart _uX_mm_shufflehi_epi16_3212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           230
        ret
procend

procstart _uX_mm_shufflehi_epi16_3213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           231
        ret
procend

procstart _uX_mm_shufflehi_epi16_3220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           232
        ret
procend

procstart _uX_mm_shufflehi_epi16_3221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           233
        ret
procend

procstart _uX_mm_shufflehi_epi16_3222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           234
        ret
procend

procstart _uX_mm_shufflehi_epi16_3223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           235
        ret
procend

procstart _uX_mm_shufflehi_epi16_3230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           236
        ret
procend

procstart _uX_mm_shufflehi_epi16_3231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           237
        ret
procend

procstart _uX_mm_shufflehi_epi16_3232, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           238
        ret
procend

procstart _uX_mm_shufflehi_epi16_3233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           239
        ret
procend

procstart _uX_mm_shufflehi_epi16_3300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           240
        ret
procend

procstart _uX_mm_shufflehi_epi16_3301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           241
        ret
procend

procstart _uX_mm_shufflehi_epi16_3302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           242
        ret
procend

procstart _uX_mm_shufflehi_epi16_3303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           243
        ret
procend

procstart _uX_mm_shufflehi_epi16_3310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           244
        ret
procend

procstart _uX_mm_shufflehi_epi16_3311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           245
        ret
procend

procstart _uX_mm_shufflehi_epi16_3312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           246
        ret
procend

procstart _uX_mm_shufflehi_epi16_3313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           247
        ret
procend

procstart _uX_mm_shufflehi_epi16_3320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           248
        ret
procend

procstart _uX_mm_shufflehi_epi16_3321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           249
        ret
procend

procstart _uX_mm_shufflehi_epi16_3322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           250
        ret
procend

procstart _uX_mm_shufflehi_epi16_3323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           251
        ret
procend

procstart _uX_mm_shufflehi_epi16_3330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           252
        ret
procend

procstart _uX_mm_shufflehi_epi16_3331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           253
        ret
procend

procstart _uX_mm_shufflehi_epi16_3332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           254
        ret
procend

procstart _uX_mm_shufflehi_epi16_3333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufhw             xmm0,           xmm0,           255
        ret
procend

procstart _uX_mm_shufflehi_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp1() < 0) || (rp1() > 255))
        jmp         _m128ishufhiepi16_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [_m128ishufhiepi16jmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128ishufhiepi16jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
        endif
        
        _m128ishufhiepi16_0 label size_t
        pshufhw             xmm0,           xmm0,           0
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_1 label size_t
        pshufhw             xmm0,           xmm0,           1
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_2 label size_t
        pshufhw             xmm0,           xmm0,           2
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_3 label size_t
        pshufhw             xmm0,           xmm0,           3
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_4 label size_t
        pshufhw             xmm0,           xmm0,           4
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_5 label size_t
        pshufhw             xmm0,           xmm0,           5
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_6 label size_t
        pshufhw             xmm0,           xmm0,           6
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_7 label size_t
        pshufhw             xmm0,           xmm0,           7
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_8 label size_t
        pshufhw             xmm0,           xmm0,           8
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_9 label size_t
        pshufhw             xmm0,           xmm0,           9
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_10 label size_t
        pshufhw             xmm0,           xmm0,           10
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_11 label size_t
        pshufhw             xmm0,           xmm0,           11
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_12 label size_t
        pshufhw             xmm0,           xmm0,           12
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_13 label size_t
        pshufhw             xmm0,           xmm0,           13
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_14 label size_t
        pshufhw             xmm0,           xmm0,           14
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_15 label size_t
        pshufhw             xmm0,           xmm0,           15
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_16 label size_t
        pshufhw             xmm0,           xmm0,           16
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_17 label size_t
        pshufhw             xmm0,           xmm0,           17
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_18 label size_t
        pshufhw             xmm0,           xmm0,           18
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_19 label size_t
        pshufhw             xmm0,           xmm0,           19
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_20 label size_t
        pshufhw             xmm0,           xmm0,           20
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_21 label size_t
        pshufhw             xmm0,           xmm0,           21
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_22 label size_t
        pshufhw             xmm0,           xmm0,           22
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_23 label size_t
        pshufhw             xmm0,           xmm0,           23
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_24 label size_t
        pshufhw             xmm0,           xmm0,           24
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_25 label size_t
        pshufhw             xmm0,           xmm0,           25
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_26 label size_t
        pshufhw             xmm0,           xmm0,           26
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_27 label size_t
        pshufhw             xmm0,           xmm0,           27
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_28 label size_t
        pshufhw             xmm0,           xmm0,           28
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_29 label size_t
        pshufhw             xmm0,           xmm0,           29
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_30 label size_t
        pshufhw             xmm0,           xmm0,           30
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_31 label size_t
        pshufhw             xmm0,           xmm0,           31
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_32 label size_t
        pshufhw             xmm0,           xmm0,           32
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_33 label size_t
        pshufhw             xmm0,           xmm0,           33
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_34 label size_t
        pshufhw             xmm0,           xmm0,           34
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_35 label size_t
        pshufhw             xmm0,           xmm0,           35
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_36 label size_t
        pshufhw             xmm0,           xmm0,           36
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_37 label size_t
        pshufhw             xmm0,           xmm0,           37
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_38 label size_t
        pshufhw             xmm0,           xmm0,           38
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_39 label size_t
        pshufhw             xmm0,           xmm0,           39
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_40 label size_t
        pshufhw             xmm0,           xmm0,           40
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_41 label size_t
        pshufhw             xmm0,           xmm0,           41
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_42 label size_t
        pshufhw             xmm0,           xmm0,           42
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_43 label size_t
        pshufhw             xmm0,           xmm0,           43
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_44 label size_t
        pshufhw             xmm0,           xmm0,           44
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_45 label size_t
        pshufhw             xmm0,           xmm0,           45
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_46 label size_t
        pshufhw             xmm0,           xmm0,           46
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_47 label size_t
        pshufhw             xmm0,           xmm0,           47
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_48 label size_t
        pshufhw             xmm0,           xmm0,           48
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_49 label size_t
        pshufhw             xmm0,           xmm0,           49
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_50 label size_t
        pshufhw             xmm0,           xmm0,           50
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_51 label size_t
        pshufhw             xmm0,           xmm0,           51
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_52 label size_t
        pshufhw             xmm0,           xmm0,           52
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_53 label size_t
        pshufhw             xmm0,           xmm0,           53
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_54 label size_t
        pshufhw             xmm0,           xmm0,           54
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_55 label size_t
        pshufhw             xmm0,           xmm0,           55
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_56 label size_t
        pshufhw             xmm0,           xmm0,           56
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_57 label size_t
        pshufhw             xmm0,           xmm0,           57
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_58 label size_t
        pshufhw             xmm0,           xmm0,           58
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_59 label size_t
        pshufhw             xmm0,           xmm0,           59
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_60 label size_t
        pshufhw             xmm0,           xmm0,           60
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_61 label size_t
        pshufhw             xmm0,           xmm0,           61
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_62 label size_t
        pshufhw             xmm0,           xmm0,           62
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_63 label size_t
        pshufhw             xmm0,           xmm0,           63
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_64 label size_t
        pshufhw             xmm0,           xmm0,           64
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_65 label size_t
        pshufhw             xmm0,           xmm0,           65
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_66 label size_t
        pshufhw             xmm0,           xmm0,           66
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_67 label size_t
        pshufhw             xmm0,           xmm0,           67
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_68 label size_t
        pshufhw             xmm0,           xmm0,           68
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_69 label size_t
        pshufhw             xmm0,           xmm0,           69
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_70 label size_t
        pshufhw             xmm0,           xmm0,           70
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_71 label size_t
        pshufhw             xmm0,           xmm0,           71
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_72 label size_t
        pshufhw             xmm0,           xmm0,           72
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_73 label size_t
        pshufhw             xmm0,           xmm0,           73
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_74 label size_t
        pshufhw             xmm0,           xmm0,           74
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_75 label size_t
        pshufhw             xmm0,           xmm0,           75
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_76 label size_t
        pshufhw             xmm0,           xmm0,           76
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_77 label size_t
        pshufhw             xmm0,           xmm0,           77
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_78 label size_t
        pshufhw             xmm0,           xmm0,           78
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_79 label size_t
        pshufhw             xmm0,           xmm0,           79
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_80 label size_t
        pshufhw             xmm0,           xmm0,           80
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_81 label size_t
        pshufhw             xmm0,           xmm0,           81
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_82 label size_t
        pshufhw             xmm0,           xmm0,           82
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_83 label size_t
        pshufhw             xmm0,           xmm0,           83
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_84 label size_t
        pshufhw             xmm0,           xmm0,           84
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_85 label size_t
        pshufhw             xmm0,           xmm0,           85
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_86 label size_t
        pshufhw             xmm0,           xmm0,           86
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_87 label size_t
        pshufhw             xmm0,           xmm0,           87
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_88 label size_t
        pshufhw             xmm0,           xmm0,           88
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_89 label size_t
        pshufhw             xmm0,           xmm0,           89
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_90 label size_t
        pshufhw             xmm0,           xmm0,           90
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_91 label size_t
        pshufhw             xmm0,           xmm0,           91
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_92 label size_t
        pshufhw             xmm0,           xmm0,           92
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_93 label size_t
        pshufhw             xmm0,           xmm0,           93
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_94 label size_t
        pshufhw             xmm0,           xmm0,           94
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_95 label size_t
        pshufhw             xmm0,           xmm0,           95
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_96 label size_t
        pshufhw             xmm0,           xmm0,           96
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_97 label size_t
        pshufhw             xmm0,           xmm0,           97
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_98 label size_t
        pshufhw             xmm0,           xmm0,           98
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_99 label size_t
        pshufhw             xmm0,           xmm0,           99
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_100 label size_t
        pshufhw             xmm0,           xmm0,           100
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_101 label size_t
        pshufhw             xmm0,           xmm0,           101
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_102 label size_t
        pshufhw             xmm0,           xmm0,           102
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_103 label size_t
        pshufhw             xmm0,           xmm0,           103
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_104 label size_t
        pshufhw             xmm0,           xmm0,           104
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_105 label size_t
        pshufhw             xmm0,           xmm0,           105
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_106 label size_t
        pshufhw             xmm0,           xmm0,           106
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_107 label size_t
        pshufhw             xmm0,           xmm0,           107
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_108 label size_t
        pshufhw             xmm0,           xmm0,           108
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_109 label size_t
        pshufhw             xmm0,           xmm0,           109
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_110 label size_t
        pshufhw             xmm0,           xmm0,           110
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_111 label size_t
        pshufhw             xmm0,           xmm0,           111
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_112 label size_t
        pshufhw             xmm0,           xmm0,           112
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_113 label size_t
        pshufhw             xmm0,           xmm0,           113
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_114 label size_t
        pshufhw             xmm0,           xmm0,           114
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_115 label size_t
        pshufhw             xmm0,           xmm0,           115
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_116 label size_t
        pshufhw             xmm0,           xmm0,           116
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_117 label size_t
        pshufhw             xmm0,           xmm0,           117
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_118 label size_t
        pshufhw             xmm0,           xmm0,           118
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_119 label size_t
        pshufhw             xmm0,           xmm0,           119
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_120 label size_t
        pshufhw             xmm0,           xmm0,           120
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_121 label size_t
        pshufhw             xmm0,           xmm0,           121
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_122 label size_t
        pshufhw             xmm0,           xmm0,           122
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_123 label size_t
        pshufhw             xmm0,           xmm0,           123
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_124 label size_t
        pshufhw             xmm0,           xmm0,           124
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_125 label size_t
        pshufhw             xmm0,           xmm0,           125
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_126 label size_t
        pshufhw             xmm0,           xmm0,           126
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_127 label size_t
        pshufhw             xmm0,           xmm0,           127
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_128 label size_t
        pshufhw             xmm0,           xmm0,           128
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_129 label size_t
        pshufhw             xmm0,           xmm0,           129
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_130 label size_t
        pshufhw             xmm0,           xmm0,           130
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_131 label size_t
        pshufhw             xmm0,           xmm0,           131
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_132 label size_t
        pshufhw             xmm0,           xmm0,           132
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_133 label size_t
        pshufhw             xmm0,           xmm0,           133
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_134 label size_t
        pshufhw             xmm0,           xmm0,           134
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_135 label size_t
        pshufhw             xmm0,           xmm0,           135
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_136 label size_t
        pshufhw             xmm0,           xmm0,           136
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_137 label size_t
        pshufhw             xmm0,           xmm0,           137
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_138 label size_t
        pshufhw             xmm0,           xmm0,           138
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_139 label size_t
        pshufhw             xmm0,           xmm0,           139
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_140 label size_t
        pshufhw             xmm0,           xmm0,           140
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_141 label size_t
        pshufhw             xmm0,           xmm0,           141
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_142 label size_t
        pshufhw             xmm0,           xmm0,           142
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_143 label size_t
        pshufhw             xmm0,           xmm0,           143
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_144 label size_t
        pshufhw             xmm0,           xmm0,           144
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_145 label size_t
        pshufhw             xmm0,           xmm0,           145
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_146 label size_t
        pshufhw             xmm0,           xmm0,           146
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_147 label size_t
        pshufhw             xmm0,           xmm0,           147
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_148 label size_t
        pshufhw             xmm0,           xmm0,           148
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_149 label size_t
        pshufhw             xmm0,           xmm0,           149
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_150 label size_t
        pshufhw             xmm0,           xmm0,           150
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_151 label size_t
        pshufhw             xmm0,           xmm0,           151
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_152 label size_t
        pshufhw             xmm0,           xmm0,           152
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_153 label size_t
        pshufhw             xmm0,           xmm0,           153
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_154 label size_t
        pshufhw             xmm0,           xmm0,           154
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_155 label size_t
        pshufhw             xmm0,           xmm0,           155
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_156 label size_t
        pshufhw             xmm0,           xmm0,           156
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_157 label size_t
        pshufhw             xmm0,           xmm0,           157
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_158 label size_t
        pshufhw             xmm0,           xmm0,           158
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_159 label size_t
        pshufhw             xmm0,           xmm0,           159
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_160 label size_t
        pshufhw             xmm0,           xmm0,           160
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_161 label size_t
        pshufhw             xmm0,           xmm0,           161
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_162 label size_t
        pshufhw             xmm0,           xmm0,           162
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_163 label size_t
        pshufhw             xmm0,           xmm0,           163
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_164 label size_t
        pshufhw             xmm0,           xmm0,           164
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_165 label size_t
        pshufhw             xmm0,           xmm0,           165
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_166 label size_t
        pshufhw             xmm0,           xmm0,           166
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_167 label size_t
        pshufhw             xmm0,           xmm0,           167
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_168 label size_t
        pshufhw             xmm0,           xmm0,           168
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_169 label size_t
        pshufhw             xmm0,           xmm0,           169
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_170 label size_t
        pshufhw             xmm0,           xmm0,           170
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_171 label size_t
        pshufhw             xmm0,           xmm0,           171
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_172 label size_t
        pshufhw             xmm0,           xmm0,           172
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_173 label size_t
        pshufhw             xmm0,           xmm0,           173
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_174 label size_t
        pshufhw             xmm0,           xmm0,           174
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_175 label size_t
        pshufhw             xmm0,           xmm0,           175
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_176 label size_t
        pshufhw             xmm0,           xmm0,           176
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_177 label size_t
        pshufhw             xmm0,           xmm0,           177
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_178 label size_t
        pshufhw             xmm0,           xmm0,           178
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_179 label size_t
        pshufhw             xmm0,           xmm0,           179
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_180 label size_t
        pshufhw             xmm0,           xmm0,           180
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_181 label size_t
        pshufhw             xmm0,           xmm0,           181
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_182 label size_t
        pshufhw             xmm0,           xmm0,           182
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_183 label size_t
        pshufhw             xmm0,           xmm0,           183
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_184 label size_t
        pshufhw             xmm0,           xmm0,           184
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_185 label size_t
        pshufhw             xmm0,           xmm0,           185
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_186 label size_t
        pshufhw             xmm0,           xmm0,           186
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_187 label size_t
        pshufhw             xmm0,           xmm0,           187
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_188 label size_t
        pshufhw             xmm0,           xmm0,           188
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_189 label size_t
        pshufhw             xmm0,           xmm0,           189
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_190 label size_t
        pshufhw             xmm0,           xmm0,           190
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_191 label size_t
        pshufhw             xmm0,           xmm0,           191
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_192 label size_t
        pshufhw             xmm0,           xmm0,           192
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_193 label size_t
        pshufhw             xmm0,           xmm0,           193
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_194 label size_t
        pshufhw             xmm0,           xmm0,           194
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_195 label size_t
        pshufhw             xmm0,           xmm0,           195
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_196 label size_t
        pshufhw             xmm0,           xmm0,           196
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_197 label size_t
        pshufhw             xmm0,           xmm0,           197
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_198 label size_t
        pshufhw             xmm0,           xmm0,           198
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_199 label size_t
        pshufhw             xmm0,           xmm0,           199
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_200 label size_t
        pshufhw             xmm0,           xmm0,           200
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_201 label size_t
        pshufhw             xmm0,           xmm0,           201
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_202 label size_t
        pshufhw             xmm0,           xmm0,           202
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_203 label size_t
        pshufhw             xmm0,           xmm0,           203
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_204 label size_t
        pshufhw             xmm0,           xmm0,           204
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_205 label size_t
        pshufhw             xmm0,           xmm0,           205
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_206 label size_t
        pshufhw             xmm0,           xmm0,           206
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_207 label size_t
        pshufhw             xmm0,           xmm0,           207
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_208 label size_t
        pshufhw             xmm0,           xmm0,           208
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_209 label size_t
        pshufhw             xmm0,           xmm0,           209
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_210 label size_t
        pshufhw             xmm0,           xmm0,           210
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_211 label size_t
        pshufhw             xmm0,           xmm0,           211
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_212 label size_t
        pshufhw             xmm0,           xmm0,           212
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_213 label size_t
        pshufhw             xmm0,           xmm0,           213
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_214 label size_t
        pshufhw             xmm0,           xmm0,           214
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_215 label size_t
        pshufhw             xmm0,           xmm0,           215
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_216 label size_t
        pshufhw             xmm0,           xmm0,           216
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_217 label size_t
        pshufhw             xmm0,           xmm0,           217
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_218 label size_t
        pshufhw             xmm0,           xmm0,           218
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_219 label size_t
        pshufhw             xmm0,           xmm0,           219
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_220 label size_t
        pshufhw             xmm0,           xmm0,           220
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_221 label size_t
        pshufhw             xmm0,           xmm0,           221
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_222 label size_t
        pshufhw             xmm0,           xmm0,           222
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_223 label size_t
        pshufhw             xmm0,           xmm0,           223
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_224 label size_t
        pshufhw             xmm0,           xmm0,           224
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_225 label size_t
        pshufhw             xmm0,           xmm0,           225
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_226 label size_t
        pshufhw             xmm0,           xmm0,           226
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_227 label size_t
        pshufhw             xmm0,           xmm0,           227
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_228 label size_t
        pshufhw             xmm0,           xmm0,           228
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_229 label size_t
        pshufhw             xmm0,           xmm0,           229
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_230 label size_t
        pshufhw             xmm0,           xmm0,           230
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_231 label size_t
        pshufhw             xmm0,           xmm0,           231
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_232 label size_t
        pshufhw             xmm0,           xmm0,           232
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_233 label size_t
        pshufhw             xmm0,           xmm0,           233
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_234 label size_t
        pshufhw             xmm0,           xmm0,           234
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_235 label size_t
        pshufhw             xmm0,           xmm0,           235
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_236 label size_t
        pshufhw             xmm0,           xmm0,           236
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_237 label size_t
        pshufhw             xmm0,           xmm0,           237
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_238 label size_t
        pshufhw             xmm0,           xmm0,           238
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_239 label size_t
        pshufhw             xmm0,           xmm0,           239
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_240 label size_t
        pshufhw             xmm0,           xmm0,           240
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_241 label size_t
        pshufhw             xmm0,           xmm0,           241
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_242 label size_t
        pshufhw             xmm0,           xmm0,           242
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_243 label size_t
        pshufhw             xmm0,           xmm0,           243
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_244 label size_t
        pshufhw             xmm0,           xmm0,           244
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_245 label size_t
        pshufhw             xmm0,           xmm0,           245
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_246 label size_t
        pshufhw             xmm0,           xmm0,           246
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_247 label size_t
        pshufhw             xmm0,           xmm0,           247
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_248 label size_t
        pshufhw             xmm0,           xmm0,           248
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_249 label size_t
        pshufhw             xmm0,           xmm0,           249
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_250 label size_t
        pshufhw             xmm0,           xmm0,           250
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_251 label size_t
        pshufhw             xmm0,           xmm0,           251
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_252 label size_t
        pshufhw             xmm0,           xmm0,           252
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_253 label size_t
        pshufhw             xmm0,           xmm0,           253
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_254 label size_t
        pshufhw             xmm0,           xmm0,           254
        jmp         _m128ishufhiepi16_end
        _m128ishufhiepi16_255 label size_t
        pshufhw             xmm0,           xmm0,           255
        ;jmp         _m128ishufhiepi16_end

        _m128ishufhiepi16_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_shufflelo_epi16_0000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_shufflelo_epi16_0001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           1
        ret
procend

procstart _uX_mm_shufflelo_epi16_0002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           2
        ret
procend

procstart _uX_mm_shufflelo_epi16_0003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           3
        ret
procend

procstart _uX_mm_shufflelo_epi16_0010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           4
        ret
procend

procstart _uX_mm_shufflelo_epi16_0011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           5
        ret
procend

procstart _uX_mm_shufflelo_epi16_0012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           6
        ret
procend

procstart _uX_mm_shufflelo_epi16_0013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           7
        ret
procend

procstart _uX_mm_shufflelo_epi16_0020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           8
        ret
procend

procstart _uX_mm_shufflelo_epi16_0021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           9
        ret
procend

procstart _uX_mm_shufflelo_epi16_0022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           10
        ret
procend

procstart _uX_mm_shufflelo_epi16_0023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           11
        ret
procend

procstart _uX_mm_shufflelo_epi16_0030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           12
        ret
procend

procstart _uX_mm_shufflelo_epi16_0031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           13
        ret
procend

procstart _uX_mm_shufflelo_epi16_0032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           14
        ret
procend

procstart _uX_mm_shufflelo_epi16_0033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           15
        ret
procend

procstart _uX_mm_shufflelo_epi16_0100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           16
        ret
procend

procstart _uX_mm_shufflelo_epi16_0101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           17
        ret
procend

procstart _uX_mm_shufflelo_epi16_0102, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           18
        ret
procend

procstart _uX_mm_shufflelo_epi16_0103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           19
        ret
procend

procstart _uX_mm_shufflelo_epi16_0110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           20
        ret
procend

procstart _uX_mm_shufflelo_epi16_0111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           21
        ret
procend

procstart _uX_mm_shufflelo_epi16_0112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           22
        ret
procend

procstart _uX_mm_shufflelo_epi16_0113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           23
        ret
procend

procstart _uX_mm_shufflelo_epi16_0120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           24
        ret
procend

procstart _uX_mm_shufflelo_epi16_0121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           25
        ret
procend

procstart _uX_mm_shufflelo_epi16_0122, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           26
        ret
procend

procstart _uX_mm_shufflelo_epi16_0123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           27
        ret
procend

procstart _uX_mm_shufflelo_epi16_0130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           28
        ret
procend

procstart _uX_mm_shufflelo_epi16_0131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           29
        ret
procend

procstart _uX_mm_shufflelo_epi16_0132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           30
        ret
procend

procstart _uX_mm_shufflelo_epi16_0133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           31
        ret
procend

procstart _uX_mm_shufflelo_epi16_0200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           32
        ret
procend

procstart _uX_mm_shufflelo_epi16_0201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           33
        ret
procend

procstart _uX_mm_shufflelo_epi16_0202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           34
        ret
procend

procstart _uX_mm_shufflelo_epi16_0203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           35
        ret
procend

procstart _uX_mm_shufflelo_epi16_0210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           36
        ret
procend

procstart _uX_mm_shufflelo_epi16_0211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           37
        ret
procend

procstart _uX_mm_shufflelo_epi16_0212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           38
        ret
procend

procstart _uX_mm_shufflelo_epi16_0213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           39
        ret
procend

procstart _uX_mm_shufflelo_epi16_0220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           40
        ret
procend

procstart _uX_mm_shufflelo_epi16_0221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           41
        ret
procend

procstart _uX_mm_shufflelo_epi16_0222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           42
        ret
procend

procstart _uX_mm_shufflelo_epi16_0223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           43
        ret
procend

procstart _uX_mm_shufflelo_epi16_0230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           44
        ret
procend

procstart _uX_mm_shufflelo_epi16_0231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           45
        ret
procend

procstart _uX_mm_shufflelo_epi16_0232, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           46
        ret
procend

procstart _uX_mm_shufflelo_epi16_0233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           47
        ret
procend

procstart _uX_mm_shufflelo_epi16_0300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           48
        ret
procend

procstart _uX_mm_shufflelo_epi16_0301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           49
        ret
procend

procstart _uX_mm_shufflelo_epi16_0302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           50
        ret
procend

procstart _uX_mm_shufflelo_epi16_0303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           51
        ret
procend

procstart _uX_mm_shufflelo_epi16_0310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           52
        ret
procend

procstart _uX_mm_shufflelo_epi16_0311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           53
        ret
procend

procstart _uX_mm_shufflelo_epi16_0312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           54
        ret
procend

procstart _uX_mm_shufflelo_epi16_0313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           55
        ret
procend

procstart _uX_mm_shufflelo_epi16_0320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           56
        ret
procend

procstart _uX_mm_shufflelo_epi16_0321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           57
        ret
procend

procstart _uX_mm_shufflelo_epi16_0322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           58
        ret
procend

procstart _uX_mm_shufflelo_epi16_0323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           59
        ret
procend

procstart _uX_mm_shufflelo_epi16_0330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           60
        ret
procend

procstart _uX_mm_shufflelo_epi16_0331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           61
        ret
procend

procstart _uX_mm_shufflelo_epi16_0332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           62
        ret
procend

procstart _uX_mm_shufflelo_epi16_0333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           63
        ret
procend

procstart _uX_mm_shufflelo_epi16_1000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           64
        ret
procend

procstart _uX_mm_shufflelo_epi16_1001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           65
        ret
procend

procstart _uX_mm_shufflelo_epi16_1002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           66
        ret
procend

procstart _uX_mm_shufflelo_epi16_1003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           67
        ret
procend

procstart _uX_mm_shufflelo_epi16_1010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           68
        ret
procend

procstart _uX_mm_shufflelo_epi16_1011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           69
        ret
procend

procstart _uX_mm_shufflelo_epi16_1012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           70
        ret
procend

procstart _uX_mm_shufflelo_epi16_1013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           71
        ret
procend

procstart _uX_mm_shufflelo_epi16_1020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           72
        ret
procend

procstart _uX_mm_shufflelo_epi16_1021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           73
        ret
procend

procstart _uX_mm_shufflelo_epi16_1022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           74
        ret
procend

procstart _uX_mm_shufflelo_epi16_1023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           75
        ret
procend

procstart _uX_mm_shufflelo_epi16_1030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           76
        ret
procend

procstart _uX_mm_shufflelo_epi16_1031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           77
        ret
procend

procstart _uX_mm_shufflelo_epi16_1032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           78
        ret
procend

procstart _uX_mm_shufflelo_epi16_1033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           79
        ret
procend

procstart _uX_mm_shufflelo_epi16_1100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           80
        ret
procend

procstart _uX_mm_shufflelo_epi16_1101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           81
        ret
procend

procstart _uX_mm_shufflelo_epi16_1102, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           82
        ret
procend

procstart _uX_mm_shufflelo_epi16_1103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           83
        ret
procend

procstart _uX_mm_shufflelo_epi16_1110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           84
        ret
procend

procstart _uX_mm_shufflelo_epi16_1111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           85
        ret
procend

procstart _uX_mm_shufflelo_epi16_1112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           86
        ret
procend

procstart _uX_mm_shufflelo_epi16_1113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           87
        ret
procend

procstart _uX_mm_shufflelo_epi16_1120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           88
        ret
procend

procstart _uX_mm_shufflelo_epi16_1121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           89
        ret
procend

procstart _uX_mm_shufflelo_epi16_1122, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           90
        ret
procend

procstart _uX_mm_shufflelo_epi16_1123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           91
        ret
procend

procstart _uX_mm_shufflelo_epi16_1130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           92
        ret
procend

procstart _uX_mm_shufflelo_epi16_1131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           93
        ret
procend

procstart _uX_mm_shufflelo_epi16_1132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           94
        ret
procend

procstart _uX_mm_shufflelo_epi16_1133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           95
        ret
procend

procstart _uX_mm_shufflelo_epi16_1200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           96
        ret
procend

procstart _uX_mm_shufflelo_epi16_1201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           97
        ret
procend

procstart _uX_mm_shufflelo_epi16_1202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           98
        ret
procend

procstart _uX_mm_shufflelo_epi16_1203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           99
        ret
procend

procstart _uX_mm_shufflelo_epi16_1210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           100
        ret
procend

procstart _uX_mm_shufflelo_epi16_1211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           101
        ret
procend

procstart _uX_mm_shufflelo_epi16_1212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           102
        ret
procend

procstart _uX_mm_shufflelo_epi16_1213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           103
        ret
procend

procstart _uX_mm_shufflelo_epi16_1220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           104
        ret
procend

procstart _uX_mm_shufflelo_epi16_1221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           105
        ret
procend

procstart _uX_mm_shufflelo_epi16_1222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           106
        ret
procend

procstart _uX_mm_shufflelo_epi16_1223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           107
        ret
procend

procstart _uX_mm_shufflelo_epi16_1230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           108
        ret
procend

procstart _uX_mm_shufflelo_epi16_1231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           109
        ret
procend

procstart _uX_mm_shufflelo_epi16_1232, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           110
        ret
procend

procstart _uX_mm_shufflelo_epi16_1233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           111
        ret
procend

procstart _uX_mm_shufflelo_epi16_1300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           112
        ret
procend

procstart _uX_mm_shufflelo_epi16_1301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           113
        ret
procend

procstart _uX_mm_shufflelo_epi16_1302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           114
        ret
procend

procstart _uX_mm_shufflelo_epi16_1303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           115
        ret
procend

procstart _uX_mm_shufflelo_epi16_1310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           116
        ret
procend

procstart _uX_mm_shufflelo_epi16_1311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           117
        ret
procend

procstart _uX_mm_shufflelo_epi16_1312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           118
        ret
procend

procstart _uX_mm_shufflelo_epi16_1313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           119
        ret
procend

procstart _uX_mm_shufflelo_epi16_1320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           120
        ret
procend

procstart _uX_mm_shufflelo_epi16_1321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           121
        ret
procend

procstart _uX_mm_shufflelo_epi16_1322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           122
        ret
procend

procstart _uX_mm_shufflelo_epi16_1323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           123
        ret
procend

procstart _uX_mm_shufflelo_epi16_1330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           124
        ret
procend

procstart _uX_mm_shufflelo_epi16_1331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           125
        ret
procend

procstart _uX_mm_shufflelo_epi16_1332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           126
        ret
procend

procstart _uX_mm_shufflelo_epi16_1333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           127
        ret
procend

procstart _uX_mm_shufflelo_epi16_2000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           128
        ret
procend

procstart _uX_mm_shufflelo_epi16_2001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           129
        ret
procend

procstart _uX_mm_shufflelo_epi16_2002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           130
        ret
procend

procstart _uX_mm_shufflelo_epi16_2003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           131
        ret
procend

procstart _uX_mm_shufflelo_epi16_2010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           132
        ret
procend

procstart _uX_mm_shufflelo_epi16_2011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           133
        ret
procend

procstart _uX_mm_shufflelo_epi16_2012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           134
        ret
procend

procstart _uX_mm_shufflelo_epi16_2013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           135
        ret
procend

procstart _uX_mm_shufflelo_epi16_2020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           136
        ret
procend

procstart _uX_mm_shufflelo_epi16_2021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           137
        ret
procend

procstart _uX_mm_shufflelo_epi16_2022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           138
        ret
procend

procstart _uX_mm_shufflelo_epi16_2023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           139
        ret
procend

procstart _uX_mm_shufflelo_epi16_2030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           140
        ret
procend

procstart _uX_mm_shufflelo_epi16_2031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           141
        ret
procend

procstart _uX_mm_shufflelo_epi16_2032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           142
        ret
procend

procstart _uX_mm_shufflelo_epi16_2033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           143
        ret
procend

procstart _uX_mm_shufflelo_epi16_2100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           144
        ret
procend

procstart _uX_mm_shufflelo_epi16_2101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           145
        ret
procend

procstart _uX_mm_shufflelo_epi16_2102, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        pshuflw             xmm0,           xmm0,           146
        ret
procend

procstart _uX_mm_shufflelo_epi16_2103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           147
        ret
procend

procstart _uX_mm_shufflelo_epi16_2110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           148
        ret
procend

procstart _uX_mm_shufflelo_epi16_2111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           149
        ret
procend

procstart _uX_mm_shufflelo_epi16_2112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           150
        ret
procend

procstart _uX_mm_shufflelo_epi16_2113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           151
        ret
procend

procstart _uX_mm_shufflelo_epi16_2120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           152
        ret
procend

procstart _uX_mm_shufflelo_epi16_2121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           153
        ret
procend

procstart _uX_mm_shufflelo_epi16_2122, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        pshuflw             xmm0,           xmm0,           154
        ret
procend

procstart _uX_mm_shufflelo_epi16_2123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           155
        ret
procend

procstart _uX_mm_shufflelo_epi16_2130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           156
        ret
procend

procstart _uX_mm_shufflelo_epi16_2131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           157
        ret
procend

procstart _uX_mm_shufflelo_epi16_2132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           158
        ret
procend

procstart _uX_mm_shufflelo_epi16_2133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           159
        ret
procend

procstart _uX_mm_shufflelo_epi16_2200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           160
        ret
procend

procstart _uX_mm_shufflelo_epi16_2201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           161
        ret
procend

procstart _uX_mm_shufflelo_epi16_2202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           162
        ret
procend

procstart _uX_mm_shufflelo_epi16_2203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           163
        ret
procend

procstart _uX_mm_shufflelo_epi16_2210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           164
        ret
procend

procstart _uX_mm_shufflelo_epi16_2211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           165
        ret
procend

procstart _uX_mm_shufflelo_epi16_2212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           166
        ret
procend

procstart _uX_mm_shufflelo_epi16_2213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           167
        ret
procend

procstart _uX_mm_shufflelo_epi16_2220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           168
        ret
procend

procstart _uX_mm_shufflelo_epi16_2221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           169
        ret
procend

procstart _uX_mm_shufflelo_epi16_2222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           170
        ret
procend

procstart _uX_mm_shufflelo_epi16_2223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           171
        ret
procend

procstart _uX_mm_shufflelo_epi16_2230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           172
        ret
procend

procstart _uX_mm_shufflelo_epi16_2231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           173
        ret
procend

procstart _uX_mm_shufflelo_epi16_2232, callconv, xmmword, < >, < >, Inxmm_A:xmmword 
        pshuflw             xmm0,           xmm0,           174
        ret
procend

procstart _uX_mm_shufflelo_epi16_2233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           175
        ret
procend

procstart _uX_mm_shufflelo_epi16_2300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           176
        ret
procend

procstart _uX_mm_shufflelo_epi16_2301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           177
        ret
procend

procstart _uX_mm_shufflelo_epi16_2302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           178
        ret
procend

procstart _uX_mm_shufflelo_epi16_2303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           179
        ret
procend

procstart _uX_mm_shufflelo_epi16_2310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           180
        ret
procend

procstart _uX_mm_shufflelo_epi16_2311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           181
        ret
procend

procstart _uX_mm_shufflelo_epi16_2312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           182
        ret
procend

procstart _uX_mm_shufflelo_epi16_2313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           183
        ret
procend

procstart _uX_mm_shufflelo_epi16_2320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           184
        ret
procend

procstart _uX_mm_shufflelo_epi16_2321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           185
        ret
procend

procstart _uX_mm_shufflelo_epi16_2322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           186
        ret
procend

procstart _uX_mm_shufflelo_epi16_2323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           187
        ret
procend

procstart _uX_mm_shufflelo_epi16_2330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           188
        ret
procend

procstart _uX_mm_shufflelo_epi16_2331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           189
        ret
procend

procstart _uX_mm_shufflelo_epi16_2332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           190
        ret
procend

procstart _uX_mm_shufflelo_epi16_2333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           191
        ret
procend

procstart _uX_mm_shufflelo_epi16_3000, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           192
        ret
procend

procstart _uX_mm_shufflelo_epi16_3001, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           193
        ret
procend

procstart _uX_mm_shufflelo_epi16_3002, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           194
        ret
procend

procstart _uX_mm_shufflelo_epi16_3003, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           195
        ret
procend

procstart _uX_mm_shufflelo_epi16_3010, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           196
        ret
procend

procstart _uX_mm_shufflelo_epi16_3011, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           197
        ret
procend

procstart _uX_mm_shufflelo_epi16_3012, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           198
        ret
procend

procstart _uX_mm_shufflelo_epi16_3013, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           199
        ret
procend

procstart _uX_mm_shufflelo_epi16_3020, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           200
        ret
procend

procstart _uX_mm_shufflelo_epi16_3021, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           201
        ret
procend

procstart _uX_mm_shufflelo_epi16_3022, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           202
        ret
procend

procstart _uX_mm_shufflelo_epi16_3023, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           203
        ret
procend

procstart _uX_mm_shufflelo_epi16_3030, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           204
        ret
procend

procstart _uX_mm_shufflelo_epi16_3031, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           205
        ret
procend

procstart _uX_mm_shufflelo_epi16_3032, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           206
        ret
procend

procstart _uX_mm_shufflelo_epi16_3033, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           207
        ret
procend

procstart _uX_mm_shufflelo_epi16_3100, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           208
        ret
procend

procstart _uX_mm_shufflelo_epi16_3101, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           209
        ret
procend

procstart _uX_mm_shufflelo_epi16_3102, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           210
        ret
procend

procstart _uX_mm_shufflelo_epi16_3103, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           211
        ret
procend

procstart _uX_mm_shufflelo_epi16_3110, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           212
        ret
procend

procstart _uX_mm_shufflelo_epi16_3111, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           213
        ret
procend

procstart _uX_mm_shufflelo_epi16_3112, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           214
        ret
procend

procstart _uX_mm_shufflelo_epi16_3113, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           215
        ret
procend

procstart _uX_mm_shufflelo_epi16_3120, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           216
        ret
procend

procstart _uX_mm_shufflelo_epi16_3121, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           217
        ret
procend

procstart _uX_mm_shufflelo_epi16_3122, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           218
        ret
procend

procstart _uX_mm_shufflelo_epi16_3123, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           219
        ret
procend

procstart _uX_mm_shufflelo_epi16_3130, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           220
        ret
procend

procstart _uX_mm_shufflelo_epi16_3131, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           221
        ret
procend

procstart _uX_mm_shufflelo_epi16_3132, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           222
        ret
procend

procstart _uX_mm_shufflelo_epi16_3133, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           223
        ret
procend

procstart _uX_mm_shufflelo_epi16_3200, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           224
        ret
procend

procstart _uX_mm_shufflelo_epi16_3201, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           225
        ret
procend

procstart _uX_mm_shufflelo_epi16_3202, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           226
        ret
procend

procstart _uX_mm_shufflelo_epi16_3203, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           227
        ret
procend

procstart _uX_mm_shufflelo_epi16_3210, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           228
        ret
procend

procstart _uX_mm_shufflelo_epi16_3211, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           229
        ret
procend

procstart _uX_mm_shufflelo_epi16_3212, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           230
        ret
procend

procstart _uX_mm_shufflelo_epi16_3213, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           231
        ret
procend

procstart _uX_mm_shufflelo_epi16_3220, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           232
        ret
procend

procstart _uX_mm_shufflelo_epi16_3221, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           233
        ret
procend

procstart _uX_mm_shufflelo_epi16_3222, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           234
        ret
procend

procstart _uX_mm_shufflelo_epi16_3223, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           235
        ret
procend

procstart _uX_mm_shufflelo_epi16_3230, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           236
        ret
procend

procstart _uX_mm_shufflelo_epi16_3231, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           237
        ret
procend

procstart _uX_mm_shufflelo_epi16_3232, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           238
        ret
procend

procstart _uX_mm_shufflelo_epi16_3233, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           239
        ret
procend

procstart _uX_mm_shufflelo_epi16_3300, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           240
        ret
procend

procstart _uX_mm_shufflelo_epi16_3301, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           241
        ret
procend

procstart _uX_mm_shufflelo_epi16_3302, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           242
        ret
procend

procstart _uX_mm_shufflelo_epi16_3303, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           243
        ret
procend

procstart _uX_mm_shufflelo_epi16_3310, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           244
        ret
procend

procstart _uX_mm_shufflelo_epi16_3311, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           245
        ret
procend

procstart _uX_mm_shufflelo_epi16_3312, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           246
        ret
procend

procstart _uX_mm_shufflelo_epi16_3313, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           247
        ret
procend

procstart _uX_mm_shufflelo_epi16_3320, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           248
        ret
procend

procstart _uX_mm_shufflelo_epi16_3321, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           249
        ret
procend

procstart _uX_mm_shufflelo_epi16_3322, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           250
        ret
procend

procstart _uX_mm_shufflelo_epi16_3323, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           251
        ret
procend

procstart _uX_mm_shufflelo_epi16_3330, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           252
        ret
procend

procstart _uX_mm_shufflelo_epi16_3331, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           253
        ret
procend

procstart _uX_mm_shufflelo_epi16_3332, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           254
        ret
procend

procstart _uX_mm_shufflelo_epi16_3333, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshuflw             xmm0,           xmm0,           255
        ret
procend

procstart _uX_mm_shufflelo_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp1() < 0) || (rp1() > 255))
        jmp         _m128ishufloepi16_end
        .endif

        ifdef __X32__
        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [_m128ishufloepi16jmptable+rbase()*size_t_size]
        else
        lea             rbase(),    qword ptr [_m128ishufloepi16jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
        endif

        _m128ishufloepi16_0 label size_t
        pshuflw             xmm0,           xmm0,           0
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_1 label size_t
        pshuflw             xmm0,           xmm0,           1
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_2 label size_t
        pshuflw             xmm0,           xmm0,           2
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_3 label size_t
        pshuflw             xmm0,           xmm0,           3
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_4 label size_t
        pshuflw             xmm0,           xmm0,           4
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_5 label size_t
        pshuflw             xmm0,           xmm0,           5
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_6 label size_t
        pshuflw             xmm0,           xmm0,           6
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_7 label size_t
        pshuflw             xmm0,           xmm0,           7
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_8 label size_t
        pshuflw             xmm0,           xmm0,           8
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_9 label size_t
        pshuflw             xmm0,           xmm0,           9
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_10 label size_t
        pshuflw             xmm0,           xmm0,           10
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_11 label size_t
        pshuflw             xmm0,           xmm0,           11
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_12 label size_t
        pshuflw             xmm0,           xmm0,           12
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_13 label size_t
        pshuflw             xmm0,           xmm0,           13
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_14 label size_t
        pshuflw             xmm0,           xmm0,           14
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_15 label size_t
        pshuflw             xmm0,           xmm0,           15
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_16 label size_t
        pshuflw             xmm0,           xmm0,           16
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_17 label size_t
        pshuflw             xmm0,           xmm0,           17
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_18 label size_t
        pshuflw             xmm0,           xmm0,           18
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_19 label size_t
        pshuflw             xmm0,           xmm0,           19
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_20 label size_t
        pshuflw             xmm0,           xmm0,           20
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_21 label size_t
        pshuflw             xmm0,           xmm0,           21
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_22 label size_t
        pshuflw             xmm0,           xmm0,           22
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_23 label size_t
        pshuflw             xmm0,           xmm0,           23
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_24 label size_t
        pshuflw             xmm0,           xmm0,           24
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_25 label size_t
        pshuflw             xmm0,           xmm0,           25
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_26 label size_t
        pshuflw             xmm0,           xmm0,           26
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_27 label size_t
        pshuflw             xmm0,           xmm0,           27
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_28 label size_t
        pshuflw             xmm0,           xmm0,           28
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_29 label size_t
        pshuflw             xmm0,           xmm0,           29
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_30 label size_t
        pshuflw             xmm0,           xmm0,           30
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_31 label size_t
        pshuflw             xmm0,           xmm0,           31
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_32 label size_t
        pshuflw             xmm0,           xmm0,           32
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_33 label size_t
        pshuflw             xmm0,           xmm0,           33
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_34 label size_t
        pshuflw             xmm0,           xmm0,           34
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_35 label size_t
        pshuflw             xmm0,           xmm0,           35
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_36 label size_t
        pshuflw             xmm0,           xmm0,           36
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_37 label size_t
        pshuflw             xmm0,           xmm0,           37
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_38 label size_t
        pshuflw             xmm0,           xmm0,           38
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_39 label size_t
        pshuflw             xmm0,           xmm0,           39
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_40 label size_t
        pshuflw             xmm0,           xmm0,           40
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_41 label size_t
        pshuflw             xmm0,           xmm0,           41
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_42 label size_t
        pshuflw             xmm0,           xmm0,           42
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_43 label size_t
        pshuflw             xmm0,           xmm0,           43
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_44 label size_t
        pshuflw             xmm0,           xmm0,           44
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_45 label size_t
        pshuflw             xmm0,           xmm0,           45
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_46 label size_t
        pshuflw             xmm0,           xmm0,           46
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_47 label size_t
        pshuflw             xmm0,           xmm0,           47
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_48 label size_t
        pshuflw             xmm0,           xmm0,           48
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_49 label size_t
        pshuflw             xmm0,           xmm0,           49
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_50 label size_t
        pshuflw             xmm0,           xmm0,           50
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_51 label size_t
        pshuflw             xmm0,           xmm0,           51
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_52 label size_t
        pshuflw             xmm0,           xmm0,           52
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_53 label size_t
        pshuflw             xmm0,           xmm0,           53
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_54 label size_t
        pshuflw             xmm0,           xmm0,           54
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_55 label size_t
        pshuflw             xmm0,           xmm0,           55
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_56 label size_t
        pshuflw             xmm0,           xmm0,           56
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_57 label size_t
        pshuflw             xmm0,           xmm0,           57
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_58 label size_t
        pshuflw             xmm0,           xmm0,           58
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_59 label size_t
        pshuflw             xmm0,           xmm0,           59
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_60 label size_t
        pshuflw             xmm0,           xmm0,           60
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_61 label size_t
        pshuflw             xmm0,           xmm0,           61
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_62 label size_t
        pshuflw             xmm0,           xmm0,           62
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_63 label size_t
        pshuflw             xmm0,           xmm0,           63
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_64 label size_t
        pshuflw             xmm0,           xmm0,           64
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_65 label size_t
        pshuflw             xmm0,           xmm0,           65
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_66 label size_t
        pshuflw             xmm0,           xmm0,           66
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_67 label size_t
        pshuflw             xmm0,           xmm0,           67
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_68 label size_t
        pshuflw             xmm0,           xmm0,           68
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_69 label size_t
        pshuflw             xmm0,           xmm0,           69
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_70 label size_t
        pshuflw             xmm0,           xmm0,           70
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_71 label size_t
        pshuflw             xmm0,           xmm0,           71
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_72 label size_t
        pshuflw             xmm0,           xmm0,           72
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_73 label size_t
        pshuflw             xmm0,           xmm0,           73
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_74 label size_t
        pshuflw             xmm0,           xmm0,           74
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_75 label size_t
        pshuflw             xmm0,           xmm0,           75
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_76 label size_t
        pshuflw             xmm0,           xmm0,           76
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_77 label size_t
        pshuflw             xmm0,           xmm0,           77
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_78 label size_t
        pshuflw             xmm0,           xmm0,           78
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_79 label size_t
        pshuflw             xmm0,           xmm0,           79
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_80 label size_t
        pshuflw             xmm0,           xmm0,           80
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_81 label size_t
        pshuflw             xmm0,           xmm0,           81
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_82 label size_t
        pshuflw             xmm0,           xmm0,           82
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_83 label size_t
        pshuflw             xmm0,           xmm0,           83
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_84 label size_t
        pshuflw             xmm0,           xmm0,           84
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_85 label size_t
        pshuflw             xmm0,           xmm0,           85
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_86 label size_t
        pshuflw             xmm0,           xmm0,           86
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_87 label size_t
        pshuflw             xmm0,           xmm0,           87
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_88 label size_t
        pshuflw             xmm0,           xmm0,           88
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_89 label size_t
        pshuflw             xmm0,           xmm0,           89
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_90 label size_t
        pshuflw             xmm0,           xmm0,           90
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_91 label size_t
        pshuflw             xmm0,           xmm0,           91
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_92 label size_t
        pshuflw             xmm0,           xmm0,           92
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_93 label size_t
        pshuflw             xmm0,           xmm0,           93
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_94 label size_t
        pshuflw             xmm0,           xmm0,           94
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_95 label size_t
        pshuflw             xmm0,           xmm0,           95
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_96 label size_t
        pshuflw             xmm0,           xmm0,           96
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_97 label size_t
        pshuflw             xmm0,           xmm0,           97
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_98 label size_t
        pshuflw             xmm0,           xmm0,           98
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_99 label size_t
        pshuflw             xmm0,           xmm0,           99
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_100 label size_t
        pshuflw             xmm0,           xmm0,           100
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_101 label size_t
        pshuflw             xmm0,           xmm0,           101
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_102 label size_t
        pshuflw             xmm0,           xmm0,           102
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_103 label size_t
        pshuflw             xmm0,           xmm0,           103
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_104 label size_t
        pshuflw             xmm0,           xmm0,           104
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_105 label size_t
        pshuflw             xmm0,           xmm0,           105
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_106 label size_t
        pshuflw             xmm0,           xmm0,           106
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_107 label size_t
        pshuflw             xmm0,           xmm0,           107
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_108 label size_t
        pshuflw             xmm0,           xmm0,           108
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_109 label size_t
        pshuflw             xmm0,           xmm0,           109
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_110 label size_t
        pshuflw             xmm0,           xmm0,           110
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_111 label size_t
        pshuflw             xmm0,           xmm0,           111
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_112 label size_t
        pshuflw             xmm0,           xmm0,           112
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_113 label size_t
        pshuflw             xmm0,           xmm0,           113
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_114 label size_t
        pshuflw             xmm0,           xmm0,           114
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_115 label size_t
        pshuflw             xmm0,           xmm0,           115
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_116 label size_t
        pshuflw             xmm0,           xmm0,           116
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_117 label size_t
        pshuflw             xmm0,           xmm0,           117
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_118 label size_t
        pshuflw             xmm0,           xmm0,           118
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_119 label size_t
        pshuflw             xmm0,           xmm0,           119
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_120 label size_t
        pshuflw             xmm0,           xmm0,           120
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_121 label size_t
        pshuflw             xmm0,           xmm0,           121
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_122 label size_t
        pshuflw             xmm0,           xmm0,           122
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_123 label size_t
        pshuflw             xmm0,           xmm0,           123
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_124 label size_t
        pshuflw             xmm0,           xmm0,           124
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_125 label size_t
        pshuflw             xmm0,           xmm0,           125
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_126 label size_t
        pshuflw             xmm0,           xmm0,           126
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_127 label size_t
        pshuflw             xmm0,           xmm0,           127
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_128 label size_t
        pshuflw             xmm0,           xmm0,           128
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_129 label size_t
        pshuflw             xmm0,           xmm0,           129
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_130 label size_t
        pshuflw             xmm0,           xmm0,           130
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_131 label size_t
        pshuflw             xmm0,           xmm0,           131
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_132 label size_t
        pshuflw             xmm0,           xmm0,           132
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_133 label size_t
        pshuflw             xmm0,           xmm0,           133
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_134 label size_t
        pshuflw             xmm0,           xmm0,           134
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_135 label size_t
        pshuflw             xmm0,           xmm0,           135
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_136 label size_t
        pshuflw             xmm0,           xmm0,           136
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_137 label size_t
        pshuflw             xmm0,           xmm0,           137
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_138 label size_t
        pshuflw             xmm0,           xmm0,           138
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_139 label size_t
        pshuflw             xmm0,           xmm0,           139
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_140 label size_t
        pshuflw             xmm0,           xmm0,           140
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_141 label size_t
        pshuflw             xmm0,           xmm0,           141
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_142 label size_t
        pshuflw             xmm0,           xmm0,           142
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_143 label size_t
        pshuflw             xmm0,           xmm0,           143
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_144 label size_t
        pshuflw             xmm0,           xmm0,           144
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_145 label size_t
        pshuflw             xmm0,           xmm0,           145
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_146 label size_t
        pshuflw             xmm0,           xmm0,           146
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_147 label size_t
        pshuflw             xmm0,           xmm0,           147
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_148 label size_t
        pshuflw             xmm0,           xmm0,           148
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_149 label size_t
        pshuflw             xmm0,           xmm0,           149
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_150 label size_t
        pshuflw             xmm0,           xmm0,           150
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_151 label size_t
        pshuflw             xmm0,           xmm0,           151
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_152 label size_t
        pshuflw             xmm0,           xmm0,           152
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_153 label size_t
        pshuflw             xmm0,           xmm0,           153
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_154 label size_t
        pshuflw             xmm0,           xmm0,           154
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_155 label size_t
        pshuflw             xmm0,           xmm0,           155
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_156 label size_t
        pshuflw             xmm0,           xmm0,           156
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_157 label size_t
        pshuflw             xmm0,           xmm0,           157
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_158 label size_t
        pshuflw             xmm0,           xmm0,           158
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_159 label size_t
        pshuflw             xmm0,           xmm0,           159
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_160 label size_t
        pshuflw             xmm0,           xmm0,           160
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_161 label size_t
        pshuflw             xmm0,           xmm0,           161
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_162 label size_t
        pshuflw             xmm0,           xmm0,           162
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_163 label size_t
        pshuflw             xmm0,           xmm0,           163
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_164 label size_t
        pshuflw             xmm0,           xmm0,           164
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_165 label size_t
        pshuflw             xmm0,           xmm0,           165
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_166 label size_t
        pshuflw             xmm0,           xmm0,           166
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_167 label size_t
        pshuflw             xmm0,           xmm0,           167
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_168 label size_t
        pshuflw             xmm0,           xmm0,           168
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_169 label size_t
        pshuflw             xmm0,           xmm0,           169
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_170 label size_t
        pshuflw             xmm0,           xmm0,           170
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_171 label size_t
        pshuflw             xmm0,           xmm0,           171
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_172 label size_t
        pshuflw             xmm0,           xmm0,           172
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_173 label size_t
        pshuflw             xmm0,           xmm0,           173
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_174 label size_t
        pshuflw             xmm0,           xmm0,           174
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_175 label size_t
        pshuflw             xmm0,           xmm0,           175
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_176 label size_t
        pshuflw             xmm0,           xmm0,           176
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_177 label size_t
        pshuflw             xmm0,           xmm0,           177
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_178 label size_t
        pshuflw             xmm0,           xmm0,           178
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_179 label size_t
        pshuflw             xmm0,           xmm0,           179
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_180 label size_t
        pshuflw             xmm0,           xmm0,           180
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_181 label size_t
        pshuflw             xmm0,           xmm0,           181
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_182 label size_t
        pshuflw             xmm0,           xmm0,           182
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_183 label size_t
        pshuflw             xmm0,           xmm0,           183
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_184 label size_t
        pshuflw             xmm0,           xmm0,           184
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_185 label size_t
        pshuflw             xmm0,           xmm0,           185
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_186 label size_t
        pshuflw             xmm0,           xmm0,           186
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_187 label size_t
        pshuflw             xmm0,           xmm0,           187
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_188 label size_t
        pshuflw             xmm0,           xmm0,           188
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_189 label size_t
        pshuflw             xmm0,           xmm0,           189
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_190 label size_t
        pshuflw             xmm0,           xmm0,           190
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_191 label size_t
        pshuflw             xmm0,           xmm0,           191
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_192 label size_t
        pshuflw             xmm0,           xmm0,           192
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_193 label size_t
        pshuflw             xmm0,           xmm0,           193
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_194 label size_t
        pshuflw             xmm0,           xmm0,           194
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_195 label size_t
        pshuflw             xmm0,           xmm0,           195
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_196 label size_t
        pshuflw             xmm0,           xmm0,           196
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_197 label size_t
        pshuflw             xmm0,           xmm0,           197
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_198 label size_t
        pshuflw             xmm0,           xmm0,           198
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_199 label size_t
        pshuflw             xmm0,           xmm0,           199
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_200 label size_t
        pshuflw             xmm0,           xmm0,           200
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_201 label size_t
        pshuflw             xmm0,           xmm0,           201
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_202 label size_t
        pshuflw             xmm0,           xmm0,           202
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_203 label size_t
        pshuflw             xmm0,           xmm0,           203
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_204 label size_t
        pshuflw             xmm0,           xmm0,           204
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_205 label size_t
        pshuflw             xmm0,           xmm0,           205
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_206 label size_t
        pshuflw             xmm0,           xmm0,           206
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_207 label size_t
        pshuflw             xmm0,           xmm0,           207
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_208 label size_t
        pshuflw             xmm0,           xmm0,           208
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_209 label size_t
        pshuflw             xmm0,           xmm0,           209
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_210 label size_t
        pshuflw             xmm0,           xmm0,           210
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_211 label size_t
        pshuflw             xmm0,           xmm0,           211
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_212 label size_t
        pshuflw             xmm0,           xmm0,           212
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_213 label size_t
        pshuflw             xmm0,           xmm0,           213
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_214 label size_t
        pshuflw             xmm0,           xmm0,           214
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_215 label size_t
        pshuflw             xmm0,           xmm0,           215
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_216 label size_t
        pshuflw             xmm0,           xmm0,           216
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_217 label size_t
        pshuflw             xmm0,           xmm0,           217
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_218 label size_t
        pshuflw             xmm0,           xmm0,           218
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_219 label size_t
        pshuflw             xmm0,           xmm0,           219
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_220 label size_t
        pshuflw             xmm0,           xmm0,           220
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_221 label size_t
        pshuflw             xmm0,           xmm0,           221
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_222 label size_t
        pshuflw             xmm0,           xmm0,           222
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_223 label size_t
        pshuflw             xmm0,           xmm0,           223
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_224 label size_t
        pshuflw             xmm0,           xmm0,           224
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_225 label size_t
        pshuflw             xmm0,           xmm0,           225
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_226 label size_t
        pshuflw             xmm0,           xmm0,           226
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_227 label size_t
        pshuflw             xmm0,           xmm0,           227
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_228 label size_t
        pshuflw             xmm0,           xmm0,           228
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_229 label size_t
        pshuflw             xmm0,           xmm0,           229
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_230 label size_t
        pshuflw             xmm0,           xmm0,           230
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_231 label size_t
        pshuflw             xmm0,           xmm0,           231
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_232 label size_t
        pshuflw             xmm0,           xmm0,           232
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_233 label size_t
        pshuflw             xmm0,           xmm0,           233
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_234 label size_t
        pshuflw             xmm0,           xmm0,           234
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_235 label size_t
        pshuflw             xmm0,           xmm0,           235
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_236 label size_t
        pshuflw             xmm0,           xmm0,           236
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_237 label size_t
        pshuflw             xmm0,           xmm0,           237
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_238 label size_t
        pshuflw             xmm0,           xmm0,           238
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_239 label size_t
        pshuflw             xmm0,           xmm0,           239
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_240 label size_t
        pshuflw             xmm0,           xmm0,           240
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_241 label size_t
        pshuflw             xmm0,           xmm0,           241
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_242 label size_t
        pshuflw             xmm0,           xmm0,           242
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_243 label size_t
        pshuflw             xmm0,           xmm0,           243
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_244 label size_t
        pshuflw             xmm0,           xmm0,           244
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_245 label size_t
        pshuflw             xmm0,           xmm0,           245
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_246 label size_t
        pshuflw             xmm0,           xmm0,           246
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_247 label size_t
        pshuflw             xmm0,           xmm0,           247
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_248 label size_t
        pshuflw             xmm0,           xmm0,           248
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_249 label size_t
        pshuflw             xmm0,           xmm0,           249
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_250 label size_t
        pshuflw             xmm0,           xmm0,           250
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_251 label size_t
        pshuflw             xmm0,           xmm0,           251
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_252 label size_t
        pshuflw             xmm0,           xmm0,           252
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_253 label size_t
        pshuflw             xmm0,           xmm0,           253
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_254 label size_t
        pshuflw             xmm0,           xmm0,           254
        jmp         _m128ishufloepi16_end
        _m128ishufloepi16_255 label size_t
        pshuflw             xmm0,           xmm0,           255
        ;jmp         _m128ishufloepi16_end

        _m128ishufloepi16_end:
        pop         rbase()
        ret
procend

endif ;__MIC__

end
