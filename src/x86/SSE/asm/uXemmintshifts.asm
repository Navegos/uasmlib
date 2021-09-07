
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

    _m128isllisi128jmptable label size_t
    isize_t _m128isllisi128_0, _m128isllisi128_1, _m128isllisi128_2, _m128isllisi128_3
    isize_t _m128isllisi128_4, _m128isllisi128_5, _m128isllisi128_6, _m128isllisi128_7
    isize_t _m128isllisi128_8, _m128isllisi128_9, _m128isllisi128_10, _m128isllisi128_11
    isize_t _m128isllisi128_12, _m128isllisi128_13, _m128isllisi128_14, _m128isllisi128_15

    _m128islliepi16jmptable label size_t
    isize_t _m128islliepi16_0, _m128islliepi16_1, _m128islliepi16_2, _m128islliepi16_3
    isize_t _m128islliepi16_4, _m128islliepi16_5, _m128islliepi16_6, _m128islliepi16_7
    isize_t _m128islliepi16_8, _m128islliepi16_9, _m128islliepi16_10, _m128islliepi16_11
    isize_t _m128islliepi16_12, _m128islliepi16_13, _m128islliepi16_14, _m128islliepi16_15

    _m128islliepi32jmptable label size_t
    isize_t _m128islliepi32_0, _m128islliepi32_1, _m128islliepi32_2, _m128islliepi32_3
    isize_t _m128islliepi32_4, _m128islliepi32_5, _m128islliepi32_6, _m128islliepi32_7
    isize_t _m128islliepi32_8, _m128islliepi32_9, _m128islliepi32_10, _m128islliepi32_11
    isize_t _m128islliepi32_12, _m128islliepi32_13, _m128islliepi32_14, _m128islliepi32_15
    isize_t _m128islliepi32_16, _m128islliepi32_17, _m128islliepi32_18, _m128islliepi32_19
    isize_t _m128islliepi32_20, _m128islliepi32_21, _m128islliepi32_22, _m128islliepi32_23
    isize_t _m128islliepi32_24, _m128islliepi32_25, _m128islliepi32_26, _m128islliepi32_27
    isize_t _m128islliepi32_28, _m128islliepi32_29, _m128islliepi32_30, _m128islliepi32_31

    _m128islliepi64jmptable label size_t
    isize_t _m128islliepi64_0, _m128islliepi64_1, _m128islliepi64_2, _m128islliepi64_3
    isize_t _m128islliepi64_4, _m128islliepi64_5, _m128islliepi64_6, _m128islliepi64_7
    isize_t _m128islliepi64_8, _m128islliepi64_9, _m128islliepi64_10, _m128islliepi64_11
    isize_t _m128islliepi64_12, _m128islliepi64_13, _m128islliepi64_14, _m128islliepi64_15
    isize_t _m128islliepi64_16, _m128islliepi64_17, _m128islliepi64_18, _m128islliepi64_19
    isize_t _m128islliepi64_20, _m128islliepi64_21, _m128islliepi64_22, _m128islliepi64_23
    isize_t _m128islliepi64_24, _m128islliepi64_25, _m128islliepi64_26, _m128islliepi64_27
    isize_t _m128islliepi64_28, _m128islliepi64_29, _m128islliepi64_30, _m128islliepi64_31
    isize_t _m128islliepi64_32, _m128islliepi64_33, _m128islliepi64_34, _m128islliepi64_35
    isize_t _m128islliepi64_36, _m128islliepi64_37, _m128islliepi64_38, _m128islliepi64_39
    isize_t _m128islliepi64_40, _m128islliepi64_41, _m128islliepi64_42, _m128islliepi64_43
    isize_t _m128islliepi64_44, _m128islliepi64_45, _m128islliepi64_46, _m128islliepi64_47
    isize_t _m128islliepi64_48, _m128islliepi64_49, _m128islliepi64_50, _m128islliepi64_51
    isize_t _m128islliepi64_52, _m128islliepi64_53, _m128islliepi64_54, _m128islliepi64_55
    isize_t _m128islliepi64_56, _m128islliepi64_57, _m128islliepi64_58, _m128islliepi64_59
    isize_t _m128islliepi64_60, _m128islliepi64_61, _m128islliepi64_62, _m128islliepi64_63

    _m128israiepi16jmptable label size_t
    isize_t _m128israiepi16_0, _m128israiepi16_1, _m128israiepi16_2, _m128israiepi16_3
    isize_t _m128israiepi16_4, _m128israiepi16_5, _m128israiepi16_6, _m128israiepi16_7
    isize_t _m128israiepi16_8, _m128israiepi16_9, _m128israiepi16_10, _m128israiepi16_11
    isize_t _m128israiepi16_12, _m128israiepi16_13, _m128israiepi16_14, _m128israiepi16_15

    _m128israiepi32jmptable label size_t
    isize_t _m128israiepi32_0, _m128israiepi32_1, _m128israiepi32_2, _m128israiepi32_3
    isize_t _m128israiepi32_4, _m128israiepi32_5, _m128israiepi32_6, _m128israiepi32_7
    isize_t _m128israiepi32_8, _m128israiepi32_9, _m128israiepi32_10, _m128israiepi32_11
    isize_t _m128israiepi32_12, _m128israiepi32_13, _m128israiepi32_14, _m128israiepi32_15
    isize_t _m128israiepi32_16, _m128israiepi32_17, _m128israiepi32_18, _m128israiepi32_19
    isize_t _m128israiepi32_20, _m128israiepi32_21, _m128israiepi32_22, _m128israiepi32_23
    isize_t _m128israiepi32_24, _m128israiepi32_25, _m128israiepi32_26, _m128israiepi32_27
    isize_t _m128israiepi32_28, _m128israiepi32_29, _m128israiepi32_30, _m128israiepi32_31

    _m128israiepi64jmptable label size_t
    isize_t _m128israiepi64_0, _m128israiepi64_1, _m128israiepi64_2, _m128israiepi64_3
    isize_t _m128israiepi64_4, _m128israiepi64_5, _m128israiepi64_6, _m128israiepi64_7
    isize_t _m128israiepi64_8, _m128israiepi64_9, _m128israiepi64_10, _m128israiepi64_11
    isize_t _m128israiepi64_12, _m128israiepi64_13, _m128israiepi64_14, _m128israiepi64_15
    isize_t _m128israiepi64_16, _m128israiepi64_17, _m128israiepi64_18, _m128israiepi64_19
    isize_t _m128israiepi64_20, _m128israiepi64_21, _m128israiepi64_22, _m128israiepi64_23
    isize_t _m128israiepi64_24, _m128israiepi64_25, _m128israiepi64_26, _m128israiepi64_27
    isize_t _m128israiepi64_28, _m128israiepi64_29, _m128israiepi64_30, _m128israiepi64_31
    isize_t _m128israiepi64_32, _m128israiepi64_33, _m128israiepi64_34, _m128israiepi64_35
    isize_t _m128israiepi64_36, _m128israiepi64_37, _m128israiepi64_38, _m128israiepi64_39
    isize_t _m128israiepi64_40, _m128israiepi64_41, _m128israiepi64_42, _m128israiepi64_43
    isize_t _m128israiepi64_44, _m128israiepi64_45, _m128israiepi64_46, _m128israiepi64_47
    isize_t _m128israiepi64_48, _m128israiepi64_49, _m128israiepi64_50, _m128israiepi64_51
    isize_t _m128israiepi64_52, _m128israiepi64_53, _m128israiepi64_54, _m128israiepi64_55
    isize_t _m128israiepi64_56, _m128israiepi64_57, _m128israiepi64_58, _m128israiepi64_59
    isize_t _m128israiepi64_60, _m128israiepi64_61, _m128israiepi64_62, _m128israiepi64_63

    _m128isrlisi128jmptable label size_t
    isize_t _m128isrlisi128_0, _m128isrlisi128_1, _m128isrlisi128_2, _m128isrlisi128_3
    isize_t _m128isrlisi128_4, _m128isrlisi128_5, _m128isrlisi128_6, _m128isrlisi128_7
    isize_t _m128isrlisi128_8, _m128isrlisi128_9, _m128isrlisi128_10, _m128isrlisi128_11
    isize_t _m128isrlisi128_12, _m128isrlisi128_13, _m128isrlisi128_14, _m128isrlisi128_15

    _m128isrliepi16jmptable label size_t
    isize_t _m128isrliepi16_0, _m128isrliepi16_1, _m128isrliepi16_2, _m128isrliepi16_3
    isize_t _m128isrliepi16_4, _m128isrliepi16_5, _m128isrliepi16_6, _m128isrliepi16_7
    isize_t _m128isrliepi16_8, _m128isrliepi16_9, _m128isrliepi16_10, _m128isrliepi16_11
    isize_t _m128isrliepi16_12, _m128isrliepi16_13, _m128isrliepi16_14, _m128isrliepi16_15

    _m128isrliepi32jmptable label size_t
    isize_t _m128isrliepi32_0, _m128isrliepi32_1, _m128isrliepi32_2, _m128isrliepi32_3
    isize_t _m128isrliepi32_4, _m128isrliepi32_5, _m128isrliepi32_6, _m128isrliepi32_7
    isize_t _m128isrliepi32_8, _m128isrliepi32_9, _m128isrliepi32_10, _m128isrliepi32_11
    isize_t _m128isrliepi32_12, _m128isrliepi32_13, _m128isrliepi32_14, _m128isrliepi32_15
    isize_t _m128isrliepi32_16, _m128isrliepi32_17, _m128isrliepi32_18, _m128isrliepi32_19
    isize_t _m128isrliepi32_20, _m128isrliepi32_21, _m128isrliepi32_22, _m128isrliepi32_23
    isize_t _m128isrliepi32_24, _m128isrliepi32_25, _m128isrliepi32_26, _m128isrliepi32_27
    isize_t _m128isrliepi32_28, _m128isrliepi32_29, _m128isrliepi32_30, _m128isrliepi32_31

    _m128isrliepi64jmptable label size_t
    isize_t _m128isrliepi64_0, _m128isrliepi64_1, _m128isrliepi64_2, _m128isrliepi64_3
    isize_t _m128isrliepi64_4, _m128isrliepi64_5, _m128isrliepi64_6, _m128isrliepi64_7
    isize_t _m128isrliepi64_8, _m128isrliepi64_9, _m128isrliepi64_10, _m128isrliepi64_11
    isize_t _m128isrliepi64_12, _m128isrliepi64_13, _m128isrliepi64_14, _m128isrliepi64_15
    isize_t _m128isrliepi64_16, _m128isrliepi64_17, _m128isrliepi64_18, _m128isrliepi64_19
    isize_t _m128isrliepi64_20, _m128isrliepi64_21, _m128isrliepi64_22, _m128isrliepi64_23
    isize_t _m128isrliepi64_24, _m128isrliepi64_25, _m128isrliepi64_26, _m128isrliepi64_27
    isize_t _m128isrliepi64_28, _m128isrliepi64_29, _m128isrliepi64_30, _m128isrliepi64_31
    isize_t _m128isrliepi64_32, _m128isrliepi64_33, _m128isrliepi64_34, _m128isrliepi64_35
    isize_t _m128isrliepi64_36, _m128isrliepi64_37, _m128isrliepi64_38, _m128isrliepi64_39
    isize_t _m128isrliepi64_40, _m128isrliepi64_41, _m128isrliepi64_42, _m128isrliepi64_43
    isize_t _m128isrliepi64_44, _m128isrliepi64_45, _m128isrliepi64_46, _m128isrliepi64_47
    isize_t _m128isrliepi64_48, _m128isrliepi64_49, _m128isrliepi64_50, _m128isrliepi64_51
    isize_t _m128isrliepi64_52, _m128isrliepi64_53, _m128isrliepi64_54, _m128isrliepi64_55
    isize_t _m128isrliepi64_56, _m128isrliepi64_57, _m128isrliepi64_58, _m128isrliepi64_59
    isize_t _m128isrliepi64_60, _m128isrliepi64_61, _m128isrliepi64_62, _m128isrliepi64_63

externdef __uX_CPUFeatures_SSE41:dword
externdef __uX_CPUFeatures_AVX512VL:dword

externdef __m128i_flt_byte_even:__m128i
externdef __m128i_flt_select0101:__m128i
externdef __m128i_i32_select0101:__m128i

.code

callconvopt
alignxmmfieldproc

procstart _uX_mm_slli_si128_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           0
        ret
procend

procstart _uX_mm_slli_si128_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           1
        ret
procend

procstart _uX_mm_slli_si128_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           2
        ret
procend

procstart _uX_mm_slli_si128_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           3
        ret
procend

procstart _uX_mm_slli_si128_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           4
        ret
procend

procstart _uX_mm_slli_si128_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           5
        ret
procend

procstart _uX_mm_slli_si128_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           6
        ret
procend

procstart _uX_mm_slli_si128_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           7
        ret
procend

procstart _uX_mm_slli_si128_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           8
        ret
procend

procstart _uX_mm_slli_si128_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           9
        ret
procend

procstart _uX_mm_slli_si128_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           10
        ret
procend

procstart _uX_mm_slli_si128_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           11
        ret
procend

procstart _uX_mm_slli_si128_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           12
        ret
procend

procstart _uX_mm_slli_si128_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           13
        ret
procend

procstart _uX_mm_slli_si128_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           14
        ret
procend

procstart _uX_mm_slli_si128_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslldq          xmm0,           15
        ret
procend

procstart _uX_mm_slli_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
    .if(rp1() < 0)
        jmp         _m128isllisi128_end
    .endif
    .if(rp1() > 15)
        pxor          xmm0,           xmm0
        jmp         _m128isllisi128_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bp1()
        jmp     dword ptr [_m128isllisi128jmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128isllisi128jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
    endif

        _m128isllisi128_0 label size_t
        pslldq          xmm0,           0
        jmp         _m128isllisi128_end
        _m128isllisi128_1 label size_t
        pslldq          xmm0,           1
        jmp         _m128isllisi128_end
        _m128isllisi128_2 label size_t
        pslldq          xmm0,           2
        jmp         _m128isllisi128_end
        _m128isllisi128_3 label size_t
        pslldq          xmm0,           3
        jmp         _m128isllisi128_end
        _m128isllisi128_4 label size_t
        pslldq          xmm0,           4
        jmp         _m128isllisi128_end
        _m128isllisi128_5 label size_t
        pslldq          xmm0,           5
        jmp         _m128isllisi128_end
        _m128isllisi128_6 label size_t
        pslldq          xmm0,           6
        jmp         _m128isllisi128_end
        _m128isllisi128_7 label size_t
        pslldq          xmm0,           7
        jmp         _m128isllisi128_end
        _m128isllisi128_8 label size_t
        pslldq          xmm0,           8
        jmp         _m128isllisi128_end
        _m128isllisi128_9 label size_t
        pslldq          xmm0,           9
        jmp         _m128isllisi128_end
        _m128isllisi128_10 label size_t
        pslldq          xmm0,           10
        jmp         _m128isllisi128_end
        _m128isllisi128_11 label size_t
        pslldq          xmm0,           11
        jmp         _m128isllisi128_end
        _m128isllisi128_12 label size_t
        pslldq          xmm0,           12
        jmp         _m128isllisi128_end
        _m128isllisi128_13 label size_t
        pslldq          xmm0,           13
        jmp         _m128isllisi128_end
        _m128isllisi128_14 label size_t
        pslldq          xmm0,           14
        jmp         _m128isllisi128_end
        _m128isllisi128_15 label size_t
        pslldq          xmm0,           15
        ;jmp         _m128isllisi128_end

        _m128isllisi128_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_slli_epi8_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         ecx,        0
        movd        xmm1,       ecx
        mov         eax,        0FFh
        shr         eax,        cl
        movsx       eax,        al
        movd        xmm2,       eax
        punpcklbw   xmm2,       xmm2
        punpcklwd   xmm2,       xmm2
        pshufd      xmm2,       xmm2,       0
        pand        xmm0,       xmm2
        psllw       xmm0,       xmm1
        ret
procend

procstart _uX_mm_slli_epi8_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         ecx,        1
        movd        xmm1,       ecx
        mov         eax,        0FFh
        shr         eax,        cl
        movsx       eax,        al
        movd        xmm2,       eax
        punpcklbw   xmm2,       xmm2
        punpcklwd   xmm2,       xmm2
        pshufd      xmm2,       xmm2,       0
        pand        xmm0,       xmm2
        psllw       xmm0,       xmm1
        ret
procend

procstart _uX_mm_slli_epi8_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         ecx,        2
        movd        xmm1,       ecx
        mov         eax,        0FFh
        shr         eax,        cl
        movsx       eax,        al
        movd        xmm2,       eax
        punpcklbw   xmm2,       xmm2
        punpcklwd   xmm2,       xmm2
        pshufd      xmm2,       xmm2,       0
        pand        xmm0,       xmm2
        psllw       xmm0,       xmm1
        ret
procend

procstart _uX_mm_slli_epi8_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         ecx,        3
        movd        xmm1,       ecx
        mov         eax,        0FFh
        shr         eax,        cl
        movsx       eax,        al
        movd        xmm2,       eax
        punpcklbw   xmm2,       xmm2
        punpcklwd   xmm2,       xmm2
        pshufd      xmm2,       xmm2,       0
        pand        xmm0,       xmm2
        psllw       xmm0,       xmm1
        ret
procend

procstart _uX_mm_slli_epi8_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         ecx,        4
        movd        xmm1,       ecx
        mov         eax,        0FFh
        shr         eax,        cl
        movsx       eax,        al
        movd        xmm2,       eax
        punpcklbw   xmm2,       xmm2
        punpcklwd   xmm2,       xmm2
        pshufd      xmm2,       xmm2,       0
        pand        xmm0,       xmm2
        psllw       xmm0,       xmm1
        ret
procend

procstart _uX_mm_slli_epi8_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         ecx,        5
        movd        xmm1,       ecx
        mov         eax,        0FFh
        shr         eax,        cl
        movsx       eax,        al
        movd        xmm2,       eax
        punpcklbw   xmm2,       xmm2
        punpcklwd   xmm2,       xmm2
        pshufd      xmm2,       xmm2,       0
        pand        xmm0,       xmm2
        psllw       xmm0,       xmm1
        ret
procend

procstart _uX_mm_slli_epi8_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         ecx,        6
        movd        xmm1,       ecx
        mov         eax,        0FFh
        shr         eax,        cl
        movsx       eax,        al
        movd        xmm2,       eax
        punpcklbw   xmm2,       xmm2
        punpcklwd   xmm2,       xmm2
        pshufd      xmm2,       xmm2,       0
        pand        xmm0,       xmm2
        psllw       xmm0,       xmm1
        ret
procend

procstart _uX_mm_slli_epi8_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         ecx,        7
        movd        xmm1,       ecx
        mov         eax,        0FFh
        shr         eax,        cl
        movsx       eax,        al
        movd        xmm2,       eax
        punpcklbw   xmm2,       xmm2
        punpcklwd   xmm2,       xmm2
        pshufd      xmm2,       xmm2,       0
        pand        xmm0,       xmm2
        psllw       xmm0,       xmm1
        ret
procend

procstart _uX_mm_slli_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        .if(dp1() < 0)
        jmp         _m128islliepi8_end
        .endif
        .if(dp1() > 7)
        pxor          xmm0,           xmm0
        jmp         _m128islliepi8_end
        .endif
        mov         ecx,        dp1()
        movd        xmm1,       dp1()
        mov         eax,        0FFh
        shr         eax,        cl
        movsx       eax,        al
        movd        xmm2,       eax
        punpcklbw   xmm2,       xmm2
        punpcklwd   xmm2,       xmm2
        pshufd      xmm2,       xmm2,       0
        pand        xmm0,       xmm2
        psllw       xmm0,       xmm1
        _m128islliepi8_end:
        ret
procend

procstart _uX_mm_slli_epi16_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           0
        ret
procend

procstart _uX_mm_slli_epi16_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           1
        ret
procend

procstart _uX_mm_slli_epi16_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           2
        ret
procend

procstart _uX_mm_slli_epi16_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           3
        ret
procend

procstart _uX_mm_slli_epi16_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           4
        ret
procend

procstart _uX_mm_slli_epi16_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           5
        ret
procend

procstart _uX_mm_slli_epi16_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           6
        ret
procend

procstart _uX_mm_slli_epi16_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           7
        ret
procend

procstart _uX_mm_slli_epi16_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           8
        ret
procend

procstart _uX_mm_slli_epi16_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           9
        ret
procend

procstart _uX_mm_slli_epi16_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           10
        ret
procend

procstart _uX_mm_slli_epi16_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           11
        ret
procend

procstart _uX_mm_slli_epi16_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           12
        ret
procend

procstart _uX_mm_slli_epi16_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           13
        ret
procend

procstart _uX_mm_slli_epi16_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           14
        ret
procend

procstart _uX_mm_slli_epi16_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           15
        ret
procend

procstart _uX_mm_slli_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
    .if(rp1() < 0)
        jmp         _m128islliepi16_end
    .endif
    .if(rp1() > 15)
        pxor          xmm0,           xmm0
        jmp         _m128islliepi16_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bp1()
        jmp     dword ptr [_m128islliepi16jmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128islliepi16jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
    endif

        _m128islliepi16_0 label size_t
        psllw           xmm0,           0
        jmp         _m128islliepi16_end
        _m128islliepi16_1 label size_t
        psllw           xmm0,           1
        jmp         _m128islliepi16_end
        _m128islliepi16_2 label size_t
        psllw           xmm0,           2
        jmp         _m128islliepi16_end
        _m128islliepi16_3 label size_t
        psllw           xmm0,           3
        jmp         _m128islliepi16_end
        _m128islliepi16_4 label size_t
        psllw           xmm0,           4
        jmp         _m128islliepi16_end
        _m128islliepi16_5 label size_t
        psllw           xmm0,           5
        jmp         _m128islliepi16_end
        _m128islliepi16_6 label size_t
        psllw           xmm0,           6
        jmp         _m128islliepi16_end
        _m128islliepi16_7 label size_t
        psllw           xmm0,           7
        jmp         _m128islliepi16_end
        _m128islliepi16_8 label size_t
        psllw           xmm0,           8
        jmp         _m128islliepi16_end
        _m128islliepi16_9 label size_t
        psllw           xmm0,           9
        jmp         _m128islliepi16_end
        _m128islliepi16_10 label size_t
        psllw           xmm0,           10
        jmp         _m128islliepi16_end
        _m128islliepi16_11 label size_t
        psllw           xmm0,           11
        jmp         _m128islliepi16_end
        _m128islliepi16_12 label size_t
        psllw           xmm0,           12
        jmp         _m128islliepi16_end
        _m128islliepi16_13 label size_t
        psllw           xmm0,           13
        jmp         _m128islliepi16_end
        _m128islliepi16_14 label size_t
        psllw           xmm0,           14
        jmp         _m128islliepi16_end
        _m128islliepi16_15 label size_t
        psllw           xmm0,           15
        ;jmp         _m128islliepi16_end

        _m128islliepi16_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_slli_epi32_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           0
        ret
procend

procstart _uX_mm_slli_epi32_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           1
        ret
procend

procstart _uX_mm_slli_epi32_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           2
        ret
procend

procstart _uX_mm_slli_epi32_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           3
        ret
procend

procstart _uX_mm_slli_epi32_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           4
        ret
procend

procstart _uX_mm_slli_epi32_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           5
        ret
procend

procstart _uX_mm_slli_epi32_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           6
        ret
procend

procstart _uX_mm_slli_epi32_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           7
        ret
procend

procstart _uX_mm_slli_epi32_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           8
        ret
procend

procstart _uX_mm_slli_epi32_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           9
        ret
procend

procstart _uX_mm_slli_epi32_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           10
        ret
procend

procstart _uX_mm_slli_epi32_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           11
        ret
procend

procstart _uX_mm_slli_epi32_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           12
        ret
procend

procstart _uX_mm_slli_epi32_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           13
        ret
procend

procstart _uX_mm_slli_epi32_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           14
        ret
procend

procstart _uX_mm_slli_epi32_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           15
        ret
procend

procstart _uX_mm_slli_epi32_16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           16
        ret
procend

procstart _uX_mm_slli_epi32_17, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           17
        ret
procend

procstart _uX_mm_slli_epi32_18, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           18
        ret
procend

procstart _uX_mm_slli_epi32_19, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           19
        ret
procend

procstart _uX_mm_slli_epi32_20, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           20
        ret
procend

procstart _uX_mm_slli_epi32_21, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           21
        ret
procend

procstart _uX_mm_slli_epi32_22, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           22
        ret
procend

procstart _uX_mm_slli_epi32_23, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           23
        ret
procend

procstart _uX_mm_slli_epi32_24, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           24
        ret
procend

procstart _uX_mm_slli_epi32_25, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           25
        ret
procend

procstart _uX_mm_slli_epi32_26, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           26
        ret
procend

procstart _uX_mm_slli_epi32_27, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           27
        ret
procend

procstart _uX_mm_slli_epi32_28, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           28
        ret
procend

procstart _uX_mm_slli_epi32_29, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           29
        ret
procend

procstart _uX_mm_slli_epi32_30, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           30
        ret
procend

procstart _uX_mm_slli_epi32_31, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pslld           xmm0,           31
        ret
procend

procstart _uX_mm_slli_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
    .if(rp1() < 0)
        jmp         _m128islliepi32_end
    .endif
    .if(rp1() > 31)
        pxor          xmm0,           xmm0
        jmp         _m128islliepi32_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bp1()
        jmp     dword ptr [_m128islliepi32jmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128islliepi32jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
    endif

        _m128islliepi32_0 label size_t
        pslld           xmm0,           0
        jmp         _m128islliepi32_end
        _m128islliepi32_1 label size_t
        pslld           xmm0,           1
        jmp         _m128islliepi32_end
        _m128islliepi32_2 label size_t
        pslld           xmm0,           2
        jmp         _m128islliepi32_end
        _m128islliepi32_3 label size_t
        pslld           xmm0,           3
        jmp         _m128islliepi32_end
        _m128islliepi32_4 label size_t
        pslld           xmm0,           4
        jmp         _m128islliepi32_end
        _m128islliepi32_5 label size_t
        pslld           xmm0,           5
        jmp         _m128islliepi32_end
        _m128islliepi32_6 label size_t
        pslld           xmm0,           6
        jmp         _m128islliepi32_end
        _m128islliepi32_7 label size_t
        pslld           xmm0,           7
        jmp         _m128islliepi32_end
        _m128islliepi32_8 label size_t
        pslld           xmm0,           8
        jmp         _m128islliepi32_end
        _m128islliepi32_9 label size_t
        pslld           xmm0,           9
        jmp         _m128islliepi32_end
        _m128islliepi32_10 label size_t
        pslld           xmm0,           10
        jmp         _m128islliepi32_end
        _m128islliepi32_11 label size_t
        pslld           xmm0,           11
        jmp         _m128islliepi32_end
        _m128islliepi32_12 label size_t
        pslld           xmm0,           12
        jmp         _m128islliepi32_end
        _m128islliepi32_13 label size_t
        pslld           xmm0,           13
        jmp         _m128islliepi32_end
        _m128islliepi32_14 label size_t
        pslld           xmm0,           14
        jmp         _m128islliepi32_end
        _m128islliepi32_15 label size_t
        pslld           xmm0,           15
        jmp         _m128islliepi32_end
        _m128islliepi32_16 label size_t
        pslld           xmm0,           16
        jmp         _m128islliepi32_end
        _m128islliepi32_17 label size_t
        pslld           xmm0,           17
        jmp         _m128islliepi32_end
        _m128islliepi32_18 label size_t
        pslld           xmm0,           18
        jmp         _m128islliepi32_end
        _m128islliepi32_19 label size_t
        pslld           xmm0,           19
        jmp         _m128islliepi32_end
        _m128islliepi32_20 label size_t
        pslld           xmm0,           20
        jmp         _m128islliepi32_end
        _m128islliepi32_21 label size_t
        pslld           xmm0,           21
        jmp         _m128islliepi32_end
        _m128islliepi32_22 label size_t
        pslld           xmm0,           22
        jmp         _m128islliepi32_end
        _m128islliepi32_23 label size_t
        pslld           xmm0,           23
        jmp         _m128islliepi32_end
        _m128islliepi32_24 label size_t
        pslld           xmm0,           24
        jmp         _m128islliepi32_end
        _m128islliepi32_25 label size_t
        pslld           xmm0,           25
        jmp         _m128islliepi32_end
        _m128islliepi32_26 label size_t
        pslld           xmm0,           26
        jmp         _m128islliepi32_end
        _m128islliepi32_27 label size_t
        pslld           xmm0,           27
        jmp         _m128islliepi32_end
        _m128islliepi32_28 label size_t
        pslld           xmm0,           28
        jmp         _m128islliepi32_end
        _m128islliepi32_29 label size_t
        pslld           xmm0,           29
        jmp         _m128islliepi32_end
        _m128islliepi32_30 label size_t
        pslld           xmm0,           30
        jmp         _m128islliepi32_end
        _m128islliepi32_31 label size_t
        pslld           xmm0,           31
        ;jmp         _m128islliepi32_end

        _m128islliepi32_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_slli_epi64_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           0
        ret
procend

procstart _uX_mm_slli_epi64_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           1
        ret
procend

procstart _uX_mm_slli_epi64_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           2
        ret
procend

procstart _uX_mm_slli_epi64_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           3
        ret
procend

procstart _uX_mm_slli_epi64_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           4
        ret
procend

procstart _uX_mm_slli_epi64_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           5
        ret
procend

procstart _uX_mm_slli_epi64_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           6
        ret
procend

procstart _uX_mm_slli_epi64_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           7
        ret
procend

procstart _uX_mm_slli_epi64_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           8
        ret
procend

procstart _uX_mm_slli_epi64_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           9
        ret
procend

procstart _uX_mm_slli_epi64_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           10
        ret
procend

procstart _uX_mm_slli_epi64_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           11
        ret
procend

procstart _uX_mm_slli_epi64_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           12
        ret
procend

procstart _uX_mm_slli_epi64_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           13
        ret
procend

procstart _uX_mm_slli_epi64_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           14
        ret
procend

procstart _uX_mm_slli_epi64_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           15
        ret
procend

procstart _uX_mm_slli_epi64_16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           16
        ret
procend

procstart _uX_mm_slli_epi64_17, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           17
        ret
procend

procstart _uX_mm_slli_epi64_18, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           18
        ret
procend

procstart _uX_mm_slli_epi64_19, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           19
        ret
procend

procstart _uX_mm_slli_epi64_20, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           20
        ret
procend

procstart _uX_mm_slli_epi64_21, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           21
        ret
procend

procstart _uX_mm_slli_epi64_22, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           22
        ret
procend

procstart _uX_mm_slli_epi64_23, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           23
        ret
procend

procstart _uX_mm_slli_epi64_24, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           24
        ret
procend

procstart _uX_mm_slli_epi64_25, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           25
        ret
procend

procstart _uX_mm_slli_epi64_26, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           26
        ret
procend

procstart _uX_mm_slli_epi64_27, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           27
        ret
procend

procstart _uX_mm_slli_epi64_28, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           28
        ret
procend

procstart _uX_mm_slli_epi64_29, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           29
        ret
procend

procstart _uX_mm_slli_epi64_30, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           30
        ret
procend

procstart _uX_mm_slli_epi64_31, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           31
        ret
procend

procstart _uX_mm_slli_epi64_32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           32
        ret
procend

procstart _uX_mm_slli_epi64_33, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           33
        ret
procend

procstart _uX_mm_slli_epi64_34, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           34
        ret
procend

procstart _uX_mm_slli_epi64_35, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           35
        ret
procend

procstart _uX_mm_slli_epi64_36, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           36
        ret
procend

procstart _uX_mm_slli_epi64_37, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           37
        ret
procend

procstart _uX_mm_slli_epi64_38, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           38
        ret
procend

procstart _uX_mm_slli_epi64_39, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           39
        ret
procend

procstart _uX_mm_slli_epi64_40, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           40
        ret
procend

procstart _uX_mm_slli_epi64_41, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           41
        ret
procend

procstart _uX_mm_slli_epi64_42, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           42
        ret
procend

procstart _uX_mm_slli_epi64_43, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           43
        ret
procend

procstart _uX_mm_slli_epi64_44, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           44
        ret
procend

procstart _uX_mm_slli_epi64_45, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           45
        ret
procend

procstart _uX_mm_slli_epi64_46, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           46
        ret
procend

procstart _uX_mm_slli_epi64_47, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           47
        ret
procend

procstart _uX_mm_slli_epi64_48, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           48
        ret
procend

procstart _uX_mm_slli_epi64_49, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           49
        ret
procend

procstart _uX_mm_slli_epi64_50, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           50
        ret
procend

procstart _uX_mm_slli_epi64_51, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           51
        ret
procend

procstart _uX_mm_slli_epi64_52, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           52
        ret
procend

procstart _uX_mm_slli_epi64_53, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           53
        ret
procend

procstart _uX_mm_slli_epi64_54, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           54
        ret
procend

procstart _uX_mm_slli_epi64_55, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           55
        ret
procend

procstart _uX_mm_slli_epi64_56, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           56
        ret
procend

procstart _uX_mm_slli_epi64_57, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           57
        ret
procend

procstart _uX_mm_slli_epi64_58, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           58
        ret
procend

procstart _uX_mm_slli_epi64_59, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           59
        ret
procend

procstart _uX_mm_slli_epi64_60, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           60
        ret
procend

procstart _uX_mm_slli_epi64_61, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           61
        ret
procend

procstart _uX_mm_slli_epi64_62, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           62
        ret
procend

procstart _uX_mm_slli_epi64_63, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllq           xmm0,           63
        ret
procend

procstart _uX_mm_slli_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
    .if(rp1() < 0)
        jmp         _m128islliepi64_end
    .endif
    .if(rp1() > 63)
        pxor          xmm0,           xmm0
        jmp         _m128islliepi64_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bp1()
        jmp     dword ptr [_m128islliepi64jmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128islliepi64jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
    endif

        _m128islliepi64_0 label size_t
        psllq           xmm0,           0
        jmp         _m128islliepi64_end
        _m128islliepi64_1 label size_t
        psllq           xmm0,           1
        jmp         _m128islliepi64_end
        _m128islliepi64_2 label size_t
        psllq           xmm0,           2
        jmp         _m128islliepi64_end
        _m128islliepi64_3 label size_t
        psllq           xmm0,           3
        jmp         _m128islliepi64_end
        _m128islliepi64_4 label size_t
        psllq           xmm0,           4
        jmp         _m128islliepi64_end
        _m128islliepi64_5 label size_t
        psllq           xmm0,           5
        jmp         _m128islliepi64_end
        _m128islliepi64_6 label size_t
        psllq           xmm0,           6
        jmp         _m128islliepi64_end
        _m128islliepi64_7 label size_t
        psllq           xmm0,           7
        jmp         _m128islliepi64_end
        _m128islliepi64_8 label size_t
        psllq           xmm0,           8
        jmp         _m128islliepi64_end
        _m128islliepi64_9 label size_t
        psllq           xmm0,           9
        jmp         _m128islliepi64_end
        _m128islliepi64_10 label size_t
        psllq           xmm0,           10
        jmp         _m128islliepi64_end
        _m128islliepi64_11 label size_t
        psllq           xmm0,           11
        jmp         _m128islliepi64_end
        _m128islliepi64_12 label size_t
        psllq           xmm0,           12
        jmp         _m128islliepi64_end
        _m128islliepi64_13 label size_t
        psllq           xmm0,           13
        jmp         _m128islliepi64_end
        _m128islliepi64_14 label size_t
        psllq           xmm0,           14
        jmp         _m128islliepi64_end
        _m128islliepi64_15 label size_t
        psllq           xmm0,           15
        jmp         _m128islliepi64_end
        _m128islliepi64_16 label size_t
        psllq           xmm0,           16
        jmp         _m128islliepi64_end
        _m128islliepi64_17 label size_t
        psllq           xmm0,           17
        jmp         _m128islliepi64_end
        _m128islliepi64_18 label size_t
        psllq           xmm0,           18
        jmp         _m128islliepi64_end
        _m128islliepi64_19 label size_t
        psllq           xmm0,           19
        jmp         _m128islliepi64_end
        _m128islliepi64_20 label size_t
        psllq           xmm0,           20
        jmp         _m128islliepi64_end
        _m128islliepi64_21 label size_t
        psllq           xmm0,           21
        jmp         _m128islliepi64_end
        _m128islliepi64_22 label size_t
        psllq           xmm0,           22
        jmp         _m128islliepi64_end
        _m128islliepi64_23 label size_t
        psllq           xmm0,           23
        jmp         _m128islliepi64_end
        _m128islliepi64_24 label size_t
        psllq           xmm0,           24
        jmp         _m128islliepi64_end
        _m128islliepi64_25 label size_t
        psllq           xmm0,           25
        jmp         _m128islliepi64_end
        _m128islliepi64_26 label size_t
        psllq           xmm0,           26
        jmp         _m128islliepi64_end
        _m128islliepi64_27 label size_t
        psllq           xmm0,           27
        jmp         _m128islliepi64_end
        _m128islliepi64_28 label size_t
        psllq           xmm0,           28
        jmp         _m128islliepi64_end
        _m128islliepi64_29 label size_t
        psllq           xmm0,           29
        jmp         _m128islliepi64_end
        _m128islliepi64_30 label size_t
        psllq           xmm0,           30
        jmp         _m128islliepi64_end
        _m128islliepi64_31 label size_t
        psllq           xmm0,           31
        jmp         _m128islliepi64_end
        _m128islliepi64_32 label size_t
        psllq           xmm0,           32
        jmp         _m128islliepi64_end
        _m128islliepi64_33 label size_t
        psllq           xmm0,           33
        jmp         _m128islliepi64_end
        _m128islliepi64_34 label size_t
        psllq           xmm0,           34
        jmp         _m128islliepi64_end
        _m128islliepi64_35 label size_t
        psllq           xmm0,           35
        jmp         _m128islliepi64_end
        _m128islliepi64_36 label size_t
        psllq           xmm0,           36
        jmp         _m128islliepi64_end
        _m128islliepi64_37 label size_t
        psllq           xmm0,           37
        jmp         _m128islliepi64_end
        _m128islliepi64_38 label size_t
        psllq           xmm0,           38
        jmp         _m128islliepi64_end
        _m128islliepi64_39 label size_t
        psllq           xmm0,           39
        jmp         _m128islliepi64_end
        _m128islliepi64_40 label size_t
        psllq           xmm0,           40
        jmp         _m128islliepi64_end
        _m128islliepi64_41 label size_t
        psllq           xmm0,           41
        jmp         _m128islliepi64_end
        _m128islliepi64_42 label size_t
        psllq           xmm0,           42
        jmp         _m128islliepi64_end
        _m128islliepi64_43 label size_t
        psllq           xmm0,           43
        jmp         _m128islliepi64_end
        _m128islliepi64_44 label size_t
        psllq           xmm0,           44
        jmp         _m128islliepi64_end
        _m128islliepi64_45 label size_t
        psllq           xmm0,           45
        jmp         _m128islliepi64_end
        _m128islliepi64_46 label size_t
        psllq           xmm0,           46
        jmp         _m128islliepi64_end
        _m128islliepi64_47 label size_t
        psllq           xmm0,           47
        jmp         _m128islliepi64_end
        _m128islliepi64_48 label size_t
        psllq           xmm0,           48
        jmp         _m128islliepi64_end
        _m128islliepi64_49 label size_t
        psllq           xmm0,           49
        jmp         _m128islliepi64_end
        _m128islliepi64_50 label size_t
        psllq           xmm0,           50
        jmp         _m128islliepi64_end
        _m128islliepi64_51 label size_t
        psllq           xmm0,           51
        jmp         _m128islliepi64_end
        _m128islliepi64_52 label size_t
        psllq           xmm0,           52
        jmp         _m128islliepi64_end
        _m128islliepi64_53 label size_t
        psllq           xmm0,           53
        jmp         _m128islliepi64_end
        _m128islliepi64_54 label size_t
        psllq           xmm0,           54
        jmp         _m128islliepi64_end
        _m128islliepi64_55 label size_t
        psllq           xmm0,           55
        jmp         _m128islliepi64_end
        _m128islliepi64_56 label size_t
        psllq           xmm0,           56
        jmp         _m128islliepi64_end
        _m128islliepi64_57 label size_t
        psllq           xmm0,           57
        jmp         _m128islliepi64_end
        _m128islliepi64_58 label size_t
        psllq           xmm0,           58
        jmp         _m128islliepi64_end
        _m128islliepi64_59 label size_t
        psllq           xmm0,           59
        jmp         _m128islliepi64_end
        _m128islliepi64_60 label size_t
        psllq           xmm0,           60
        jmp         _m128islliepi64_end
        _m128islliepi64_61 label size_t
        psllq           xmm0,           61
        jmp         _m128islliepi64_end
        _m128islliepi64_62 label size_t
        psllq           xmm0,           62
        jmp         _m128islliepi64_end
        _m128islliepi64_63 label size_t
        psllq           xmm0,           63
        ;jmp         _m128islliepi64_end

        _m128islliepi64_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_srai_epi8_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp0(),       0
        mov          eax,       rp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psraw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psraw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srai_epi8_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp0(),       1
        mov          eax,       rp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psraw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psraw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srai_epi8_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp0(),       2
        mov          eax,       rp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psraw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psraw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srai_epi8_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp0(),       3
        mov          eax,       rp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psraw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psraw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srai_epi8_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp0(),       4
        mov          eax,       rp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psraw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psraw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srai_epi8_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp0(),       5
        mov          eax,       rp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psraw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psraw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srai_epi8_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp0(),       6
        mov          eax,       rp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psraw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psraw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srai_epi8_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp0(),       7
        mov          eax,       rp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psraw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psraw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srai_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        .if(rp1() < 0)
        jmp         _m128israiepi8_end
        .endif
        .if(rp1() > 7)
        pxor          xmm0,           xmm0
        jmp         _m128israiepi8_end
        .endif
        mov          eax,       rp1()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psraw       xmm0,       xmm3
        movd        xmm3,       dp1()
        psraw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        _m128israiepi8_end:
        ret
procend

procstart _uX_mm_srai_epi16_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           0
        ret
procend

procstart _uX_mm_srai_epi16_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           1
        ret
procend

procstart _uX_mm_srai_epi16_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           2
        ret
procend

procstart _uX_mm_srai_epi16_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           3
        ret
procend

procstart _uX_mm_srai_epi16_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           4
        ret
procend

procstart _uX_mm_srai_epi16_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           5
        ret
procend

procstart _uX_mm_srai_epi16_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           6
        ret
procend

procstart _uX_mm_srai_epi16_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           7
        ret
procend

procstart _uX_mm_srai_epi16_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           8
        ret
procend

procstart _uX_mm_srai_epi16_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           9
        ret
procend

procstart _uX_mm_srai_epi16_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           10
        ret
procend

procstart _uX_mm_srai_epi16_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           11
        ret
procend

procstart _uX_mm_srai_epi16_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           12
        ret
procend

procstart _uX_mm_srai_epi16_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           13
        ret
procend

procstart _uX_mm_srai_epi16_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           14
        ret
procend

procstart _uX_mm_srai_epi16_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psraw           xmm0,           15
        ret
procend

procstart _uX_mm_srai_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
    .if(rp1() < 0)
        jmp         _m128israiepi16_end
    .endif
    .if(rp1() > 15)
        psraw           xmm0,           15
        jmp         _m128israiepi16_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bp1()
        jmp     dword ptr [_m128israiepi16jmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128israiepi16jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
    endif

        _m128israiepi16_0 label size_t
        psraw           xmm0,           0
        jmp         _m128israiepi16_end
        _m128israiepi16_1 label size_t
        psraw           xmm0,           1
        jmp         _m128israiepi16_end
        _m128israiepi16_2 label size_t
        psraw           xmm0,           2
        jmp         _m128israiepi16_end
        _m128israiepi16_3 label size_t
        psraw           xmm0,           3
        jmp         _m128israiepi16_end
        _m128israiepi16_4 label size_t
        psraw           xmm0,           4
        jmp         _m128israiepi16_end
        _m128israiepi16_5 label size_t
        psraw           xmm0,           5
        jmp         _m128israiepi16_end
        _m128israiepi16_6 label size_t
        psraw           xmm0,           6
        jmp         _m128israiepi16_end
        _m128israiepi16_7 label size_t
        psraw           xmm0,           7
        jmp         _m128israiepi16_end
        _m128israiepi16_8 label size_t
        psraw           xmm0,           8
        jmp         _m128israiepi16_end
        _m128israiepi16_9 label size_t
        psraw           xmm0,           9
        jmp         _m128israiepi16_end
        _m128israiepi16_10 label size_t
        psraw           xmm0,           10
        jmp         _m128israiepi16_end
        _m128israiepi16_11 label size_t
        psraw           xmm0,           11
        jmp         _m128israiepi16_end
        _m128israiepi16_12 label size_t
        psraw           xmm0,           12
        jmp         _m128israiepi16_end
        _m128israiepi16_13 label size_t
        psraw           xmm0,           13
        jmp         _m128israiepi16_end
        _m128israiepi16_14 label size_t
        psraw           xmm0,           14
        jmp         _m128israiepi16_end
        _m128israiepi16_15 label size_t
        psraw           xmm0,           15
        ;jmp         _m128israiepi16_end

        _m128israiepi16_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_srai_epi32_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           0
        ret
procend

procstart _uX_mm_srai_epi32_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           1
        ret
procend

procstart _uX_mm_srai_epi32_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           2
        ret
procend

procstart _uX_mm_srai_epi32_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           3
        ret
procend

procstart _uX_mm_srai_epi32_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           4
        ret
procend

procstart _uX_mm_srai_epi32_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           5
        ret
procend

procstart _uX_mm_srai_epi32_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           6
        ret
procend

procstart _uX_mm_srai_epi32_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           7
        ret
procend

procstart _uX_mm_srai_epi32_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           8
        ret
procend

procstart _uX_mm_srai_epi32_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           9
        ret
procend

procstart _uX_mm_srai_epi32_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           10
        ret
procend

procstart _uX_mm_srai_epi32_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           11
        ret
procend

procstart _uX_mm_srai_epi32_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           12
        ret
procend

procstart _uX_mm_srai_epi32_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           13
        ret
procend

procstart _uX_mm_srai_epi32_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           14
        ret
procend

procstart _uX_mm_srai_epi32_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           15
        ret
procend

procstart _uX_mm_srai_epi32_16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           16
        ret
procend

procstart _uX_mm_srai_epi32_17, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           17
        ret
procend

procstart _uX_mm_srai_epi32_18, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           18
        ret
procend

procstart _uX_mm_srai_epi32_19, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           19
        ret
procend

procstart _uX_mm_srai_epi32_20, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           20
        ret
procend

procstart _uX_mm_srai_epi32_21, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           21
        ret
procend

procstart _uX_mm_srai_epi32_22, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           22
        ret
procend

procstart _uX_mm_srai_epi32_23, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           23
        ret
procend

procstart _uX_mm_srai_epi32_24, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           24
        ret
procend

procstart _uX_mm_srai_epi32_25, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           25
        ret
procend

procstart _uX_mm_srai_epi32_26, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           26
        ret
procend

procstart _uX_mm_srai_epi32_27, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           27
        ret
procend

procstart _uX_mm_srai_epi32_28, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           28
        ret
procend

procstart _uX_mm_srai_epi32_29, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           29
        ret
procend

procstart _uX_mm_srai_epi32_30, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           30
        ret
procend

procstart _uX_mm_srai_epi32_31, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrad           xmm0,           31
        ret
procend

procstart _uX_mm_srai_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
    .if(rp1() < 0)
        jmp         _m128israiepi32_end
    .endif
    .if(rp1() > 31)
        psrad           xmm0,           31
        jmp         _m128israiepi32_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bp1()
        jmp     dword ptr [_m128israiepi32jmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128israiepi32jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
    endif

        _m128israiepi32_0 label size_t
        psrad           xmm0,           0
        jmp         _m128israiepi32_end
        _m128israiepi32_1 label size_t
        psrad           xmm0,           1
        jmp         _m128israiepi32_end
        _m128israiepi32_2 label size_t
        psrad           xmm0,           2
        jmp         _m128israiepi32_end
        _m128israiepi32_3 label size_t
        psrad           xmm0,           3
        jmp         _m128israiepi32_end
        _m128israiepi32_4 label size_t
        psrad           xmm0,           4
        jmp         _m128israiepi32_end
        _m128israiepi32_5 label size_t
        psrad           xmm0,           5
        jmp         _m128israiepi32_end
        _m128israiepi32_6 label size_t
        psrad           xmm0,           6
        jmp         _m128israiepi32_end
        _m128israiepi32_7 label size_t
        psrad           xmm0,           7
        jmp         _m128israiepi32_end
        _m128israiepi32_8 label size_t
        psrad           xmm0,           8
        jmp         _m128israiepi32_end
        _m128israiepi32_9 label size_t
        psrad           xmm0,           9
        jmp         _m128israiepi32_end
        _m128israiepi32_10 label size_t
        psrad           xmm0,           10
        jmp         _m128israiepi32_end
        _m128israiepi32_11 label size_t
        psrad           xmm0,           11
        jmp         _m128israiepi32_end
        _m128israiepi32_12 label size_t
        psrad           xmm0,           12
        jmp         _m128israiepi32_end
        _m128israiepi32_13 label size_t
        psrad           xmm0,           13
        jmp         _m128israiepi32_end
        _m128israiepi32_14 label size_t
        psrad           xmm0,           14
        jmp         _m128israiepi32_end
        _m128israiepi32_15 label size_t
        psrad           xmm0,           15
        jmp         _m128israiepi32_end
        _m128israiepi32_16 label size_t
        psrad           xmm0,           16
        jmp         _m128israiepi32_end
        _m128israiepi32_17 label size_t
        psrad           xmm0,           17
        jmp         _m128israiepi32_end
        _m128israiepi32_18 label size_t
        psrad           xmm0,           18
        jmp         _m128israiepi32_end
        _m128israiepi32_19 label size_t
        psrad           xmm0,           19
        jmp         _m128israiepi32_end
        _m128israiepi32_20 label size_t
        psrad           xmm0,           20
        jmp         _m128israiepi32_end
        _m128israiepi32_21 label size_t
        psrad           xmm0,           21
        jmp         _m128israiepi32_end
        _m128israiepi32_22 label size_t
        psrad           xmm0,           22
        jmp         _m128israiepi32_end
        _m128israiepi32_23 label size_t
        psrad           xmm0,           23
        jmp         _m128israiepi32_end
        _m128israiepi32_24 label size_t
        psrad           xmm0,           24
        jmp         _m128israiepi32_end
        _m128israiepi32_25 label size_t
        psrad           xmm0,           25
        jmp         _m128israiepi32_end
        _m128israiepi32_26 label size_t
        psrad           xmm0,           26
        jmp         _m128israiepi32_end
        _m128israiepi32_27 label size_t
        psrad           xmm0,           27
        jmp         _m128israiepi32_end
        _m128israiepi32_28 label size_t
        psrad           xmm0,           28
        jmp         _m128israiepi32_end
        _m128israiepi32_29 label size_t
        psrad           xmm0,           29
        jmp         _m128israiepi32_end
        _m128israiepi32_30 label size_t
        psrad           xmm0,           30
        jmp         _m128israiepi32_end
        _m128israiepi32_31 label size_t
        psrad           xmm0,           31
        ;jmp         _m128israiepi32_end

        _m128israiepi32_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_srai_epi64_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       0
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       1
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       2
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       3
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       4
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       5
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       6
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       7
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       8
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       9
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       10
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       11
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       12
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       13
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       14
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       15
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       16
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_17, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       17
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_18, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       18
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_19, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       19
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_20, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       20
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_21, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       21
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_22, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       22
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_23, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       23
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_24, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       24
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_25, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       25
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_26, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       26
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_27, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       27
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_28, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       28
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_29, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       29
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_30, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       30
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_31, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       31
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       32
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_33, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       33
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_34, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       34
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_35, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       35
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_36, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       36
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_37, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       37
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_38, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       38
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_39, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       39
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_40, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       40
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_41, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       41
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_42, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       42
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_43, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       43
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_44, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       44
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_45, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       45
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_46, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       46
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_47, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       47
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_48, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       48
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_49, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       49
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_50, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       50
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_51, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       51
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_52, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       52
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_53, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       53
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_54, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       54
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_55, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       55
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_56, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       56
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_57, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       57
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_58, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       58
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_59, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       59
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_60, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       60
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_61, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       61
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_62, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       62
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64_63, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov        rp1(),       63
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
        ret
procend

procstart _uX_mm_srai_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
    .if(rp1() < 0)
        jmp         _m128israiepi64_end
    .endif
    .if(rp1() > 63)
        pxor        xmm0,       xmm0
        jmp         _m128israiepi64_end
    .endif
    .if(rp1() <= 32)
        movdqa      xmm1,       xmm0
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b);               // b
        psrad       xmm1,       xmm2        ;shi = _mm_sra_epi32(a, bb);              // a >> b signed dwords
        psrlq       xmm0,       xmm2        ;slo = _mm_srl_epi64(a, bb);              // a >> b unsigned qwords
    .else
        movdqa      xmm1,       xmm0
        sub        rp1(),       32
        movd        xmm2,       rp1()       ;bb = _mm_cvtsi32_si128(b - 32);          // b - 32
        psrad       xmm1,       31          ;shi = _mm_srai_epi32(a, 31);             // sign of a
        psrad       xmm0,       xmm2        ;sra2 = _mm_sra_epi32(a, bb);             // a >> (b-32) signed dwords
        psrlq       xmm0,       32          ;slo = _mm_srli_epi64(sra2, 32);          // a >> (b-32) >> 32 (second shift unsigned qword)
    .endif
    .if(__uX_CPUFeatures_SSE41 == true)
        pblendw     xmm0,       xmm1,       0xcc
    .else
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_i32_select0101
        movdqa      xmm3,       __m128i_i32_select0101
        pandn       xmm3,       xmm2
        pand        xmm0,       xmm1
        por         xmm0,       xmm3
    .endif
    _m128israiepi64_end:
        ret
procend

procstart _uX_mm_srli_si128_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           0
        ret
procend

procstart _uX_mm_srli_si128_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           1
        ret
procend

procstart _uX_mm_srli_si128_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           2
        ret
procend

procstart _uX_mm_srli_si128_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           3
        ret
procend

procstart _uX_mm_srli_si128_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           4
        ret
procend

procstart _uX_mm_srli_si128_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           5
        ret
procend

procstart _uX_mm_srli_si128_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           6
        ret
procend

procstart _uX_mm_srli_si128_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           7
        ret
procend

procstart _uX_mm_srli_si128_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           8
        ret
procend

procstart _uX_mm_srli_si128_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           9
        ret
procend

procstart _uX_mm_srli_si128_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           10
        ret
procend

procstart _uX_mm_srli_si128_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           11
        ret
procend

procstart _uX_mm_srli_si128_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           12
        ret
procend

procstart _uX_mm_srli_si128_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           13
        ret
procend

procstart _uX_mm_srli_si128_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           14
        ret
procend

procstart _uX_mm_srli_si128_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrldq          xmm0,           15
        ret
procend

procstart _uX_mm_srli_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
    .if(rp1() < 0)
        jmp         _m128isrlisi128_end
    .endif
    .if(rp1() > 15)
        pxor          xmm0,           xmm0
        jmp         _m128isrlisi128_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bp1()
        jmp     dword ptr [_m128isrlisi128jmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128isrlisi128jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
    endif

        _m128isrlisi128_0 label size_t
        psrldq          xmm0,           0
        jmp         _m128isrlisi128_end
        _m128isrlisi128_1 label size_t
        psrldq          xmm0,           1
        jmp         _m128isrlisi128_end
        _m128isrlisi128_2 label size_t
        psrldq          xmm0,           2
        jmp         _m128isrlisi128_end
        _m128isrlisi128_3 label size_t
        psrldq          xmm0,           3
        jmp         _m128isrlisi128_end
        _m128isrlisi128_4 label size_t
        psrldq          xmm0,           4
        jmp         _m128isrlisi128_end
        _m128isrlisi128_5 label size_t
        psrldq          xmm0,           5
        jmp         _m128isrlisi128_end
        _m128isrlisi128_6 label size_t
        psrldq          xmm0,           6
        jmp         _m128isrlisi128_end
        _m128isrlisi128_7 label size_t
        psrldq          xmm0,           7
        jmp         _m128isrlisi128_end
        _m128isrlisi128_8 label size_t
        psrldq          xmm0,           8
        jmp         _m128isrlisi128_end
        _m128isrlisi128_9 label size_t
        psrldq          xmm0,           9
        jmp         _m128isrlisi128_end
        _m128isrlisi128_10 label size_t
        psrldq          xmm0,           10
        jmp         _m128isrlisi128_end
        _m128isrlisi128_11 label size_t
        psrldq          xmm0,           11
        jmp         _m128isrlisi128_end
        _m128isrlisi128_12 label size_t
        psrldq          xmm0,           12
        jmp         _m128isrlisi128_end
        _m128isrlisi128_13 label size_t
        psrldq          xmm0,           13
        jmp         _m128isrlisi128_end
        _m128isrlisi128_14 label size_t
        psrldq          xmm0,           14
        jmp         _m128isrlisi128_end
        _m128isrlisi128_15 label size_t
        psrldq          xmm0,           15
        ;jmp         _m128isrlisi128_end

        _m128isrlisi128_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_srli_epi8_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         rp0(),      0
        mov          eax,       dp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psrlw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psrlw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srli_epi8_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         rp0(),      1
        mov          eax,       dp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psrlw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psrlw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srli_epi8_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         rp0(),      2
        mov          eax,       dp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psrlw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psrlw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srli_epi8_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         rp0(),      3
        mov          eax,       dp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psrlw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psrlw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srli_epi8_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         rp0(),      4
        mov          eax,       dp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psrlw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psrlw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srli_epi8_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         rp0(),      5
        mov          eax,       dp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psrlw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psrlw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srli_epi8_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         rp0(),      6
        mov          eax,       dp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psrlw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psrlw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srli_epi8_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        mov         rp0(),      7
        mov          eax,       dp0()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psrlw       xmm0,       xmm3
        movd        xmm3,       dp0()
        psrlw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        ret
procend

procstart _uX_mm_srli_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
    .if(rp1() < 0)
        jmp         _m128isrliepi8_end
    .endif
    .if(rp1() > 7)
        pxor          xmm0,           xmm0
        jmp         _m128isrliepi8_end
    .endif
        mov          eax,       dp1()
        add          eax,       8
        movdqa      xmm1,       xmm0
        movd        xmm3,       eax
        psllw       xmm0,       8
        psrlw       xmm0,       xmm3
        movd        xmm3,       dp1()
        psrlw       xmm1,       xmm3
        movdqa      xmm2,       xmm0
        movdqa      xmm0,       __m128i_flt_byte_even
        .if (__uX_CPUFeatures_SSE41 == true)
        pblendvb    xmm2,       xmm1,       xmm0
        movdqa      xmm0,       xmm2
        .else
        movdqa      xmm3,       xmm0
        pandn       xmm3,       xmm1
        pand        xmm0,       xmm2
        por         xmm0,       xmm3
        .endif
        _m128isrliepi8_end:
        ret
procend

procstart _uX_mm_srli_epi16_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           0
        ret
procend

procstart _uX_mm_srli_epi16_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           1
        ret
procend

procstart _uX_mm_srli_epi16_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           2
        ret
procend

procstart _uX_mm_srli_epi16_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           3
        ret
procend

procstart _uX_mm_srli_epi16_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           4
        ret
procend

procstart _uX_mm_srli_epi16_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           5
        ret
procend

procstart _uX_mm_srli_epi16_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           6
        ret
procend

procstart _uX_mm_srli_epi16_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           7
        ret
procend

procstart _uX_mm_srli_epi16_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           8
        ret
procend

procstart _uX_mm_srli_epi16_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           9
        ret
procend

procstart _uX_mm_srli_epi16_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           10
        ret
procend

procstart _uX_mm_srli_epi16_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           11
        ret
procend

procstart _uX_mm_srli_epi16_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           12
        ret
procend

procstart _uX_mm_srli_epi16_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           13
        ret
procend

procstart _uX_mm_srli_epi16_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           14
        ret
procend

procstart _uX_mm_srli_epi16_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlw           xmm0,           15
        ret
procend

procstart _uX_mm_srli_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
    .if(rp1() < 0)
        jmp         _m128isrliepi16_end
    .endif
    .if(rp1() > 15)
        pxor          xmm0,           xmm0
        jmp         _m128isrliepi16_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bp1()
        jmp     dword ptr [_m128isrliepi16jmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128isrliepi16jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
    endif
        
        _m128isrliepi16_0 label size_t
        psrlw           xmm0,           0
        jmp         _m128isrliepi16_end
        _m128isrliepi16_1 label size_t
        psrlw           xmm0,           1
        jmp         _m128isrliepi16_end
        _m128isrliepi16_2 label size_t
        psrlw           xmm0,           2
        jmp         _m128isrliepi16_end
        _m128isrliepi16_3 label size_t
        psrlw           xmm0,           3
        jmp         _m128isrliepi16_end
        _m128isrliepi16_4 label size_t
        psrlw           xmm0,           4
        jmp         _m128isrliepi16_end
        _m128isrliepi16_5 label size_t
        psrlw           xmm0,           5
        jmp         _m128isrliepi16_end
        _m128isrliepi16_6 label size_t
        psrlw           xmm0,           6
        jmp         _m128isrliepi16_end
        _m128isrliepi16_7 label size_t
        psrlw           xmm0,           7
        jmp         _m128isrliepi16_end
        _m128isrliepi16_8 label size_t
        psrlw           xmm0,           8
        jmp         _m128isrliepi16_end
        _m128isrliepi16_9 label size_t
        psrlw           xmm0,           9
        jmp         _m128isrliepi16_end
        _m128isrliepi16_10 label size_t
        psrlw           xmm0,           10
        jmp         _m128isrliepi16_end
        _m128isrliepi16_11 label size_t
        psrlw           xmm0,           11
        jmp         _m128isrliepi16_end
        _m128isrliepi16_12 label size_t
        psrlw           xmm0,           12
        jmp         _m128isrliepi16_end
        _m128isrliepi16_13 label size_t
        psrlw           xmm0,           13
        jmp         _m128isrliepi16_end
        _m128isrliepi16_14 label size_t
        psrlw           xmm0,           14
        jmp         _m128isrliepi16_end
        _m128isrliepi16_15 label size_t
        psrlw           xmm0,           15
        ;jmp         _m128isrliepi16_end

        _m128isrliepi16_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_srli_epi32_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           0
        ret
procend

procstart _uX_mm_srli_epi32_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           1
        ret
procend

procstart _uX_mm_srli_epi32_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           2
        ret
procend

procstart _uX_mm_srli_epi32_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           3
        ret
procend

procstart _uX_mm_srli_epi32_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           4
        ret
procend

procstart _uX_mm_srli_epi32_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           5
        ret
procend

procstart _uX_mm_srli_epi32_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           6
        ret
procend

procstart _uX_mm_srli_epi32_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           7
        ret
procend

procstart _uX_mm_srli_epi32_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           8
        ret
procend

procstart _uX_mm_srli_epi32_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           9
        ret
procend

procstart _uX_mm_srli_epi32_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           10
        ret
procend

procstart _uX_mm_srli_epi32_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           11
        ret
procend

procstart _uX_mm_srli_epi32_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           12
        ret
procend

procstart _uX_mm_srli_epi32_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           13
        ret
procend

procstart _uX_mm_srli_epi32_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           14
        ret
procend

procstart _uX_mm_srli_epi32_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           15
        ret
procend

procstart _uX_mm_srli_epi32_16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           16
        ret
procend

procstart _uX_mm_srli_epi32_17, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           17
        ret
procend

procstart _uX_mm_srli_epi32_18, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           18
        ret
procend

procstart _uX_mm_srli_epi32_19, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           19
        ret
procend

procstart _uX_mm_srli_epi32_20, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           20
        ret
procend

procstart _uX_mm_srli_epi32_21, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           21
        ret
procend

procstart _uX_mm_srli_epi32_22, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           22
        ret
procend

procstart _uX_mm_srli_epi32_23, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           23
        ret
procend

procstart _uX_mm_srli_epi32_24, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           24
        ret
procend

procstart _uX_mm_srli_epi32_25, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           25
        ret
procend

procstart _uX_mm_srli_epi32_26, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           26
        ret
procend

procstart _uX_mm_srli_epi32_27, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           27
        ret
procend

procstart _uX_mm_srli_epi32_28, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           28
        ret
procend

procstart _uX_mm_srli_epi32_29, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           29
        ret
procend

procstart _uX_mm_srli_epi32_30, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           30
        ret
procend

procstart _uX_mm_srli_epi32_31, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrld           xmm0,           31
        ret
procend

procstart _uX_mm_srli_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
    .if(rp1() < 0)
        jmp         _m128isrliepi32_end
    .endif
    .if(rp1() > 31)
        pxor          xmm0,           xmm0
        jmp         _m128isrliepi32_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bp1()
        jmp     dword ptr [_m128isrliepi32jmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128isrliepi32jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
    endif

        _m128isrliepi32_0 label size_t
        psrld           xmm0,           0
        jmp         _m128isrliepi32_end
        _m128isrliepi32_1 label size_t
        psrld           xmm0,           1
        jmp         _m128isrliepi32_end
        _m128isrliepi32_2 label size_t
        psrld           xmm0,           2
        jmp         _m128isrliepi32_end
        _m128isrliepi32_3 label size_t
        psrld           xmm0,           3
        jmp         _m128isrliepi32_end
        _m128isrliepi32_4 label size_t
        psrld           xmm0,           4
        jmp         _m128isrliepi32_end
        _m128isrliepi32_5 label size_t
        psrld           xmm0,           5
        jmp         _m128isrliepi32_end
        _m128isrliepi32_6 label size_t
        psrld           xmm0,           6
        jmp         _m128isrliepi32_end
        _m128isrliepi32_7 label size_t
        psrld           xmm0,           7
        jmp         _m128isrliepi32_end
        _m128isrliepi32_8 label size_t
        psrld           xmm0,           8
        jmp         _m128isrliepi32_end
        _m128isrliepi32_9 label size_t
        psrld           xmm0,           9
        jmp         _m128isrliepi32_end
        _m128isrliepi32_10 label size_t
        psrld           xmm0,           10
        jmp         _m128isrliepi32_end
        _m128isrliepi32_11 label size_t
        psrld           xmm0,           11
        jmp         _m128isrliepi32_end
        _m128isrliepi32_12 label size_t
        psrld           xmm0,           12
        jmp         _m128isrliepi32_end
        _m128isrliepi32_13 label size_t
        psrld           xmm0,           13
        jmp         _m128isrliepi32_end
        _m128isrliepi32_14 label size_t
        psrld           xmm0,           14
        jmp         _m128isrliepi32_end
        _m128isrliepi32_15 label size_t
        psrld           xmm0,           15
        jmp         _m128isrliepi32_end
        _m128isrliepi32_16 label size_t
        psrld           xmm0,           16
        jmp         _m128isrliepi32_end
        _m128isrliepi32_17 label size_t
        psrld           xmm0,           17
        jmp         _m128isrliepi32_end
        _m128isrliepi32_18 label size_t
        psrld           xmm0,           18
        jmp         _m128isrliepi32_end
        _m128isrliepi32_19 label size_t
        psrld           xmm0,           19
        jmp         _m128isrliepi32_end
        _m128isrliepi32_20 label size_t
        psrld           xmm0,           20
        jmp         _m128isrliepi32_end
        _m128isrliepi32_21 label size_t
        psrld           xmm0,           21
        jmp         _m128isrliepi32_end
        _m128isrliepi32_22 label size_t
        psrld           xmm0,           22
        jmp         _m128isrliepi32_end
        _m128isrliepi32_23 label size_t
        psrld           xmm0,           23
        jmp         _m128isrliepi32_end
        _m128isrliepi32_24 label size_t
        psrld           xmm0,           24
        jmp         _m128isrliepi32_end
        _m128isrliepi32_25 label size_t
        psrld           xmm0,           25
        jmp         _m128isrliepi32_end
        _m128isrliepi32_26 label size_t
        psrld           xmm0,           26
        jmp         _m128isrliepi32_end
        _m128isrliepi32_27 label size_t
        psrld           xmm0,           27
        jmp         _m128isrliepi32_end
        _m128isrliepi32_28 label size_t
        psrld           xmm0,           28
        jmp         _m128isrliepi32_end
        _m128isrliepi32_29 label size_t
        psrld           xmm0,           29
        jmp         _m128isrliepi32_end
        _m128isrliepi32_30 label size_t
        psrld           xmm0,           30
        jmp         _m128isrliepi32_end
        _m128isrliepi32_31 label size_t
        psrld           xmm0,           31
        ;jmp         _m128isrliepi32_end

        _m128isrliepi32_end:
        pop         rbase()
        ret
procend

procstart _uX_mm_srli_epi64_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           0
        ret
procend

procstart _uX_mm_srli_epi64_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           1
        ret
procend

procstart _uX_mm_srli_epi64_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           2
        ret
procend

procstart _uX_mm_srli_epi64_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           3
        ret
procend

procstart _uX_mm_srli_epi64_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           4
        ret
procend

procstart _uX_mm_srli_epi64_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           5
        ret
procend

procstart _uX_mm_srli_epi64_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           6
        ret
procend

procstart _uX_mm_srli_epi64_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           7
        ret
procend

procstart _uX_mm_srli_epi64_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           8
        ret
procend

procstart _uX_mm_srli_epi64_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           9
        ret
procend

procstart _uX_mm_srli_epi64_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           10
        ret
procend

procstart _uX_mm_srli_epi64_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           11
        ret
procend

procstart _uX_mm_srli_epi64_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           12
        ret
procend

procstart _uX_mm_srli_epi64_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           13
        ret
procend

procstart _uX_mm_srli_epi64_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           14
        ret
procend

procstart _uX_mm_srli_epi64_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           15
        ret
procend

procstart _uX_mm_srli_epi64_16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           16
        ret
procend

procstart _uX_mm_srli_epi64_17, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           17
        ret
procend

procstart _uX_mm_srli_epi64_18, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           18
        ret
procend

procstart _uX_mm_srli_epi64_19, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           19
        ret
procend

procstart _uX_mm_srli_epi64_20, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           20
        ret
procend

procstart _uX_mm_srli_epi64_21, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           21
        ret
procend

procstart _uX_mm_srli_epi64_22, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           22
        ret
procend

procstart _uX_mm_srli_epi64_23, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           23
        ret
procend

procstart _uX_mm_srli_epi64_24, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           24
        ret
procend

procstart _uX_mm_srli_epi64_25, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           25
        ret
procend

procstart _uX_mm_srli_epi64_26, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           26
        ret
procend

procstart _uX_mm_srli_epi64_27, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           27
        ret
procend

procstart _uX_mm_srli_epi64_28, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           28
        ret
procend

procstart _uX_mm_srli_epi64_29, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           29
        ret
procend

procstart _uX_mm_srli_epi64_30, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           30
        ret
procend

procstart _uX_mm_srli_epi64_31, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           31
        ret
procend

procstart _uX_mm_srli_epi64_32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           32
        ret
procend

procstart _uX_mm_srli_epi64_33, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           33
        ret
procend

procstart _uX_mm_srli_epi64_34, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           34
        ret
procend

procstart _uX_mm_srli_epi64_35, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           35
        ret
procend

procstart _uX_mm_srli_epi64_36, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           36
        ret
procend

procstart _uX_mm_srli_epi64_37, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           37
        ret
procend

procstart _uX_mm_srli_epi64_38, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           38
        ret
procend

procstart _uX_mm_srli_epi64_39, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           39
        ret
procend

procstart _uX_mm_srli_epi64_40, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           40
        ret
procend

procstart _uX_mm_srli_epi64_41, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           41
        ret
procend

procstart _uX_mm_srli_epi64_42, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           42
        ret
procend

procstart _uX_mm_srli_epi64_43, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           43
        ret
procend

procstart _uX_mm_srli_epi64_44, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           44
        ret
procend

procstart _uX_mm_srli_epi64_45, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           45
        ret
procend

procstart _uX_mm_srli_epi64_46, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           46
        ret
procend

procstart _uX_mm_srli_epi64_47, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           47
        ret
procend

procstart _uX_mm_srli_epi64_48, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           48
        ret
procend

procstart _uX_mm_srli_epi64_49, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           49
        ret
procend

procstart _uX_mm_srli_epi64_50, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           50
        ret
procend

procstart _uX_mm_srli_epi64_51, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           51
        ret
procend

procstart _uX_mm_srli_epi64_52, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           52
        ret
procend

procstart _uX_mm_srli_epi64_53, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           53
        ret
procend

procstart _uX_mm_srli_epi64_54, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           54
        ret
procend

procstart _uX_mm_srli_epi64_55, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           55
        ret
procend

procstart _uX_mm_srli_epi64_56, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           56
        ret
procend

procstart _uX_mm_srli_epi64_57, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           57
        ret
procend

procstart _uX_mm_srli_epi64_58, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           58
        ret
procend

procstart _uX_mm_srli_epi64_59, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           59
        ret
procend

procstart _uX_mm_srli_epi64_60, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           60
        ret
procend

procstart _uX_mm_srli_epi64_61, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           61
        ret
procend

procstart _uX_mm_srli_epi64_62, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           62
        ret
procend

procstart _uX_mm_srli_epi64_63, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psrlq           xmm0,           63
        ret
procend

procstart _uX_mm_srli_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
    .if(rp1() < 0)
        jmp         _m128isrliepi64_end
    .endif
    .if(rp1() > 63)
        pxor          xmm0,           xmm0
        jmp         _m128isrliepi64_end
    .endif
    ifdef __x32__
        movzx           rbase(),        bp1()
        jmp     dword ptr [_m128isrliepi64jmptable+rbase()*size_t_size]
    endif
    ifdef __x64__
        lea             rbase(),    qword ptr [_m128isrliepi64jmptable]
        mov             rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp             rbx
    endif

        _m128isrliepi64_0 label size_t
        psrlq           xmm0,           0
        jmp         _m128isrliepi64_end
        _m128isrliepi64_1 label size_t
        psrlq           xmm0,           1
        jmp         _m128isrliepi64_end
        _m128isrliepi64_2 label size_t
        psrlq           xmm0,           2
        jmp         _m128isrliepi64_end
        _m128isrliepi64_3 label size_t
        psrlq           xmm0,           3
        jmp         _m128isrliepi64_end
        _m128isrliepi64_4 label size_t
        psrlq           xmm0,           4
        jmp         _m128isrliepi64_end
        _m128isrliepi64_5 label size_t
        psrlq           xmm0,           5
        jmp         _m128isrliepi64_end
        _m128isrliepi64_6 label size_t
        psrlq           xmm0,           6
        jmp         _m128isrliepi64_end
        _m128isrliepi64_7 label size_t
        psrlq           xmm0,           7
        jmp         _m128isrliepi64_end
        _m128isrliepi64_8 label size_t
        psrlq           xmm0,           8
        jmp         _m128isrliepi64_end
        _m128isrliepi64_9 label size_t
        psrlq           xmm0,           9
        jmp         _m128isrliepi64_end
        _m128isrliepi64_10 label size_t
        psrlq           xmm0,           10
        jmp         _m128isrliepi64_end
        _m128isrliepi64_11 label size_t
        psrlq           xmm0,           11
        jmp         _m128isrliepi64_end
        _m128isrliepi64_12 label size_t
        psrlq           xmm0,           12
        jmp         _m128isrliepi64_end
        _m128isrliepi64_13 label size_t
        psrlq           xmm0,           13
        jmp         _m128isrliepi64_end
        _m128isrliepi64_14 label size_t
        psrlq           xmm0,           14
        jmp         _m128isrliepi64_end
        _m128isrliepi64_15 label size_t
        psrlq           xmm0,           15
        jmp         _m128isrliepi64_end
        _m128isrliepi64_16 label size_t
        psrlq           xmm0,           16
        jmp         _m128isrliepi64_end
        _m128isrliepi64_17 label size_t
        psrlq           xmm0,           17
        jmp         _m128isrliepi64_end
        _m128isrliepi64_18 label size_t
        psrlq           xmm0,           18
        jmp         _m128isrliepi64_end
        _m128isrliepi64_19 label size_t
        psrlq           xmm0,           19
        jmp         _m128isrliepi64_end
        _m128isrliepi64_20 label size_t
        psrlq           xmm0,           20
        jmp         _m128isrliepi64_end
        _m128isrliepi64_21 label size_t
        psrlq           xmm0,           21
        jmp         _m128isrliepi64_end
        _m128isrliepi64_22 label size_t
        psrlq           xmm0,           22
        jmp         _m128isrliepi64_end
        _m128isrliepi64_23 label size_t
        psrlq           xmm0,           23
        jmp         _m128isrliepi64_end
        _m128isrliepi64_24 label size_t
        psrlq           xmm0,           24
        jmp         _m128isrliepi64_end
        _m128isrliepi64_25 label size_t
        psrlq           xmm0,           25
        jmp         _m128isrliepi64_end
        _m128isrliepi64_26 label size_t
        psrlq           xmm0,           26
        jmp         _m128isrliepi64_end
        _m128isrliepi64_27 label size_t
        psrlq           xmm0,           27
        jmp         _m128isrliepi64_end
        _m128isrliepi64_28 label size_t
        psrlq           xmm0,           28
        jmp         _m128isrliepi64_end
        _m128isrliepi64_29 label size_t
        psrlq           xmm0,           29
        jmp         _m128isrliepi64_end
        _m128isrliepi64_30 label size_t
        psrlq           xmm0,           30
        jmp         _m128isrliepi64_end
        _m128isrliepi64_31 label size_t
        psrlq           xmm0,           31
        jmp         _m128isrliepi64_end
        _m128isrliepi64_32 label size_t
        psrlq           xmm0,           32
        jmp         _m128isrliepi64_end
        _m128isrliepi64_33 label size_t
        psrlq           xmm0,           33
        jmp         _m128isrliepi64_end
        _m128isrliepi64_34 label size_t
        psrlq           xmm0,           34
        jmp         _m128isrliepi64_end
        _m128isrliepi64_35 label size_t
        psrlq           xmm0,           35
        jmp         _m128isrliepi64_end
        _m128isrliepi64_36 label size_t
        psrlq           xmm0,           36
        jmp         _m128isrliepi64_end
        _m128isrliepi64_37 label size_t
        psrlq           xmm0,           37
        jmp         _m128isrliepi64_end
        _m128isrliepi64_38 label size_t
        psrlq           xmm0,           38
        jmp         _m128isrliepi64_end
        _m128isrliepi64_39 label size_t
        psrlq           xmm0,           39
        jmp         _m128isrliepi64_end
        _m128isrliepi64_40 label size_t
        psrlq           xmm0,           40
        jmp         _m128isrliepi64_end
        _m128isrliepi64_41 label size_t
        psrlq           xmm0,           41
        jmp         _m128isrliepi64_end
        _m128isrliepi64_42 label size_t
        psrlq           xmm0,           42
        jmp         _m128isrliepi64_end
        _m128isrliepi64_43 label size_t
        psrlq           xmm0,           43
        jmp         _m128isrliepi64_end
        _m128isrliepi64_44 label size_t
        psrlq           xmm0,           44
        jmp         _m128isrliepi64_end
        _m128isrliepi64_45 label size_t
        psrlq           xmm0,           45
        jmp         _m128isrliepi64_end
        _m128isrliepi64_46 label size_t
        psrlq           xmm0,           46
        jmp         _m128isrliepi64_end
        _m128isrliepi64_47 label size_t
        psrlq           xmm0,           47
        jmp         _m128isrliepi64_end
        _m128isrliepi64_48 label size_t
        psrlq           xmm0,           48
        jmp         _m128isrliepi64_end
        _m128isrliepi64_49 label size_t
        psrlq           xmm0,           49
        jmp         _m128isrliepi64_end
        _m128isrliepi64_50 label size_t
        psrlq           xmm0,           50
        jmp         _m128isrliepi64_end
        _m128isrliepi64_51 label size_t
        psrlq           xmm0,           51
        jmp         _m128isrliepi64_end
        _m128isrliepi64_52 label size_t
        psrlq           xmm0,           52
        jmp         _m128isrliepi64_end
        _m128isrliepi64_53 label size_t
        psrlq           xmm0,           53
        jmp         _m128isrliepi64_end
        _m128isrliepi64_54 label size_t
        psrlq           xmm0,           54
        jmp         _m128isrliepi64_end
        _m128isrliepi64_55 label size_t
        psrlq           xmm0,           55
        jmp         _m128isrliepi64_end
        _m128isrliepi64_56 label size_t
        psrlq           xmm0,           56
        jmp         _m128isrliepi64_end
        _m128isrliepi64_57 label size_t
        psrlq           xmm0,           57
        jmp         _m128isrliepi64_end
        _m128isrliepi64_58 label size_t
        psrlq           xmm0,           58
        jmp         _m128isrliepi64_end
        _m128isrliepi64_59 label size_t
        psrlq           xmm0,           59
        jmp         _m128isrliepi64_end
        _m128isrliepi64_60 label size_t
        psrlq           xmm0,           60
        jmp         _m128isrliepi64_end
        _m128isrliepi64_61 label size_t
        psrlq           xmm0,           61
        jmp         _m128isrliepi64_end
        _m128isrliepi64_62 label size_t
        psrlq           xmm0,           62
        jmp         _m128isrliepi64_end
        _m128isrliepi64_63 label size_t
        psrlq           xmm0,           63
        ;jmp         _m128isrliepi64_end

        _m128isrliepi64_end:
        pop         rbase()
        ret
procend

endif ;__MIC__

end
