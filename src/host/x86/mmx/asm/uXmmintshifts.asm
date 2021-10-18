
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

.mmx
option arch:sse
option evex:0

ifdef __X32__

alignstackfieldproc

.data?

.data

.const

        m64sllipi16jmptable label size_t
        isize_t m64sllipi16_0, m64sllipi16_1, m64sllipi16_2, m64sllipi16_3, m64sllipi16_4
        isize_t m64sllipi16_5, m64sllipi16_6, m64sllipi16_7, m64sllipi16_8, m64sllipi16_9
        isize_t m64sllipi16_10, m64sllipi16_11, m64sllipi16_12, m64sllipi16_13, m64sllipi16_14
        isize_t m64sllipi16_15           

        m64sllipi32jmptable label size_t
        isize_t m64sllipi32_0, m64sllipi32_1, m64sllipi32_2, m64sllipi32_3, m64sllipi32_4
        isize_t m64sllipi32_5, m64sllipi32_6, m64sllipi32_7, m64sllipi32_8, m64sllipi32_9
        isize_t m64sllipi32_10, m64sllipi32_11, m64sllipi32_12, m64sllipi32_13, m64sllipi32_14
        isize_t m64sllipi32_15, m64sllipi32_16, m64sllipi32_17, m64sllipi32_18, m64sllipi32_19
        isize_t m64sllipi32_20, m64sllipi32_21, m64sllipi32_22, m64sllipi32_23, m64sllipi32_24
        isize_t m64sllipi32_25, m64sllipi32_26, m64sllipi32_27, m64sllipi32_28, m64sllipi32_29
        isize_t m64sllipi32_30, m64sllipi32_31

        m64sllipi64jmptable label size_t
        isize_t m64sllipi64_0, m64sllipi64_1, m64sllipi64_2, m64sllipi64_3, m64sllipi64_4
        isize_t m64sllipi64_5, m64sllipi64_6, m64sllipi64_7, m64sllipi64_8, m64sllipi64_9
        isize_t m64sllipi64_10, m64sllipi64_11, m64sllipi64_12, m64sllipi64_13, m64sllipi64_14
        isize_t m64sllipi64_15, m64sllipi64_16, m64sllipi64_17, m64sllipi64_18, m64sllipi64_19
        isize_t m64sllipi64_20, m64sllipi64_21, m64sllipi64_22, m64sllipi64_23, m64sllipi64_24
        isize_t m64sllipi64_25, m64sllipi64_26, m64sllipi64_27, m64sllipi64_28, m64sllipi64_29
        isize_t m64sllipi64_30, m64sllipi64_31, m64sllipi64_32, m64sllipi64_33, m64sllipi64_34
        isize_t m64sllipi64_35, m64sllipi64_36, m64sllipi64_37, m64sllipi64_38, m64sllipi64_39
        isize_t m64sllipi64_40, m64sllipi64_41, m64sllipi64_42, m64sllipi64_43, m64sllipi64_44
        isize_t m64sllipi64_45, m64sllipi64_46, m64sllipi64_47, m64sllipi64_48, m64sllipi64_49
        isize_t m64sllipi64_50, m64sllipi64_51, m64sllipi64_52, m64sllipi64_53, m64sllipi64_54
        isize_t m64sllipi64_55, m64sllipi64_56, m64sllipi64_57, m64sllipi64_58, m64sllipi64_59
        isize_t m64sllipi64_60, m64sllipi64_61, m64sllipi64_62, m64sllipi64_63

        m64sraipi16jmptable label size_t
        isize_t m64sraipi16_0, m64sraipi16_1, m64sraipi16_2, m64sraipi16_3, m64sraipi16_4
        isize_t m64sraipi16_5, m64sraipi16_6, m64sraipi16_7, m64sraipi16_8, m64sraipi16_9
        isize_t m64sraipi16_10, m64sraipi16_11, m64sraipi16_12, m64sraipi16_13, m64sraipi16_14
        isize_t m64sraipi16_15           

        m64sraipi32jmptable label size_t
        isize_t m64sraipi32_0, m64sraipi32_1, m64sraipi32_2, m64sraipi32_3, m64sraipi32_4
        isize_t m64sraipi32_5, m64sraipi32_6, m64sraipi32_7, m64sraipi32_8, m64sraipi32_9
        isize_t m64sraipi32_10, m64sraipi32_11, m64sraipi32_12, m64sraipi32_13, m64sraipi32_14
        isize_t m64sraipi32_15, m64sraipi32_16, m64sraipi32_17, m64sraipi32_18, m64sraipi32_19
        isize_t m64sraipi32_20, m64sraipi32_21, m64sraipi32_22, m64sraipi32_23, m64sraipi32_24
        isize_t m64sraipi32_25, m64sraipi32_26, m64sraipi32_27, m64sraipi32_28, m64sraipi32_29
        isize_t m64sraipi32_30, m64sraipi32_31

        m64srlisi128jmptable label size_t
        isize_tm64srlisi128_0, m64srlisi128_1, m64srlisi128_2, m64srlisi128_3, m64srlisi128_4
        isize_t m64srlisi128_5, m64srlisi128_6, m64srlisi128_7, m64srlisi128_8, m64srlisi128_9
        isize_t m64srlisi128_10, m64srlisi128_11, m64srlisi128_12, m64srlisi128_13, m64srlisi128_14
        isize_t m64srlisi128_15          

        m64srlipi16jmptable label size_t
        isize_t m64srlipi16_0, m64srlipi16_1, m64srlipi16_2, m64srlipi16_3, m64srlipi16_4
        isize_t m64srlipi16_5, m64srlipi16_6, m64srlipi16_7, m64srlipi16_8, m64srlipi16_9
        isize_t m64srlipi16_10, m64srlipi16_11, m64srlipi16_12, m64srlipi16_13, m64srlipi16_14
        isize_t m64srlipi16_15           

        m64srlipi32jmptable label size_t
        isize_t m64srlipi32_0, m64srlipi32_1, m64srlipi32_2, m64srlipi32_3, m64srlipi32_4
        isize_t m64srlipi32_5, m64srlipi32_6, m64srlipi32_7, m64srlipi32_8, m64srlipi32_9
        isize_t m64srlipi32_10, m64srlipi32_11, m64srlipi32_12, m64srlipi32_13, m64srlipi32_14
        isize_t m64srlipi32_15, m64srlipi32_16, m64srlipi32_17, m64srlipi32_18, m64srlipi32_19
        isize_t m64srlipi32_20, m64srlipi32_21, m64srlipi32_22, m64srlipi32_23, m64srlipi32_24
        isize_t m64srlipi32_25, m64srlipi32_26, m64srlipi32_27, m64srlipi32_28, m64srlipi32_29
        isize_t m64srlipi32_30, m64srlipi32_31

        m64srlipi64jmptable label size_t
        isize_t m64srlipi64_0, m64srlipi64_1, m64srlipi64_2, m64srlipi64_3, m64srlipi64_4
        isize_t m64srlipi64_5, m64srlipi64_6, m64srlipi64_7, m64srlipi64_8, m64srlipi64_9
        isize_t m64srlipi64_10, m64srlipi64_11, m64srlipi64_12, m64srlipi64_13, m64srlipi64_14
        isize_t m64srlipi64_15, m64srlipi64_16, m64srlipi64_17, m64srlipi64_18, m64srlipi64_19
        isize_t m64srlipi64_20, m64srlipi64_21, m64srlipi64_22, m64srlipi64_23, m64srlipi64_24
        isize_t m64srlipi64_25, m64srlipi64_26, m64srlipi64_27, m64srlipi64_28, m64srlipi64_29
        isize_t m64srlipi64_30, m64srlipi64_31, m64srlipi64_32, m64srlipi64_33, m64srlipi64_34
        isize_t m64srlipi64_35, m64srlipi64_36, m64srlipi64_37, m64srlipi64_38, m64srlipi64_39
        isize_t m64srlipi64_40, m64srlipi64_41, m64srlipi64_42, m64srlipi64_43, m64srlipi64_44
        isize_t m64srlipi64_45, m64srlipi64_46, m64srlipi64_47, m64srlipi64_48, m64srlipi64_49
        isize_t m64srlipi64_50, m64srlipi64_51, m64srlipi64_52, m64srlipi64_53, m64srlipi64_54
        isize_t m64srlipi64_55, m64srlipi64_56, m64srlipi64_57, m64srlipi64_58, m64srlipi64_59
        isize_t m64srlipi64_60, m64srlipi64_61, m64srlipi64_62, m64srlipi64_63

.code

callconvopt
alignmmfieldproc

procstart _uX_m_psllwi_0, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            0
        ret
procend

procstart _uX_m_psllwi_1, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            1
        ret
procend

procstart _uX_m_psllwi_2, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            2
        ret
procend

procstart _uX_m_psllwi_3, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            3
        ret
procend

procstart _uX_m_psllwi_4, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            4
        ret
procend

procstart _uX_m_psllwi_5, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            5
        ret
procend

procstart _uX_m_psllwi_6, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            6
        ret
procend

procstart _uX_m_psllwi_7, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            7
        ret
procend

procstart _uX_m_psllwi_8, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            8
        ret
procend

procstart _uX_m_psllwi_9, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            9
        ret
procend

procstart _uX_m_psllwi_10, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            10
        ret
procend

procstart _uX_m_psllwi_11, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            11
        ret
procend

procstart _uX_m_psllwi_12, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            12
        ret
procend

procstart _uX_m_psllwi_13, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            13
        ret
procend

procstart _uX_m_psllwi_14, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            14
        ret
procend

procstart _uX_m_psllwi_15, callconv, mmword, < >, < >, Inmm_A:mmword
        psllw           mm0,            15
        ret
procend

procstart _uX_m_psllwi, callconv, mmword, < >, < >, Inmm_A:mmword, Inint_Imm:dword
        push         rbase()
        .if(rp1() < 0)
        jmp         m64sllipi16_end
        .endif

        .if(rp1() > 15)
        pxor          mm0,           mm0
        jmp         m64sllipi16_end
        .endif

        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [m64sllipi16jmptable+rbase()*size_t_size]

        m64sllipi16_0 label size_t
        psllw           mm0,            0
        jmp         m64sllipi16_end
        m64sllipi16_1 label size_t
        psllw           mm0,            1
        jmp         m64sllipi16_end
        m64sllipi16_2 label size_t
        psllw           mm0,            2
        jmp         m64sllipi16_end
        m64sllipi16_3 label size_t
        psllw           mm0,            3
        jmp         m64sllipi16_end
        m64sllipi16_4 label size_t
        psllw           mm0,            4
        jmp         m64sllipi16_end
        m64sllipi16_5 label size_t
        psllw           mm0,            5
        jmp         m64sllipi16_end
        m64sllipi16_6 label size_t
        psllw           mm0,            6
        jmp         m64sllipi16_end
        m64sllipi16_7 label size_t
        psllw           mm0,            7
        jmp         m64sllipi16_end
        m64sllipi16_8 label size_t
        psllw           mm0,            8
        jmp         m64sllipi16_end
        m64sllipi16_9 label size_t
        psllw           mm0,            9
        jmp         m64sllipi16_end
        m64sllipi16_10 label size_t
        psllw           mm0,            10
        jmp         m64sllipi16_end
        m64sllipi16_11 label size_t
        psllw           mm0,            11
        jmp         m64sllipi16_end
        m64sllipi16_12 label size_t
        psllw           mm0,            12
        jmp         m64sllipi16_end
        m64sllipi16_13 label size_t
        psllw           mm0,            13
        jmp         m64sllipi16_end
        m64sllipi16_14 label size_t
        psllw           mm0,            14
        jmp         m64sllipi16_end
        m64sllipi16_15 label size_t
        psllw           mm0,            15
        ;jmp         m64sllipi16_end

        m64sllipi16_end:
        pop         rbase()
        ret
procend

procstart _uX_m_pslldi_0, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            0
        ret
procend

procstart _uX_m_pslldi_1, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            1
        ret
procend

procstart _uX_m_pslldi_2, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            2
        ret
procend

procstart _uX_m_pslldi_3, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            3
        ret
procend

procstart _uX_m_pslldi_4, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            4
        ret
procend

procstart _uX_m_pslldi_5, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            5
        ret
procend

procstart _uX_m_pslldi_6, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            6
        ret
procend

procstart _uX_m_pslldi_7, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            7
        ret
procend

procstart _uX_m_pslldi_8, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            8
        ret
procend

procstart _uX_m_pslldi_9, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            9
        ret
procend

procstart _uX_m_pslldi_10, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            10
        ret
procend

procstart _uX_m_pslldi_11, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            11
        ret
procend

procstart _uX_m_pslldi_12, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            12
        ret
procend

procstart _uX_m_pslldi_13, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            13
        ret
procend

procstart _uX_m_pslldi_14, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            14
        ret
procend

procstart _uX_m_pslldi_15, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            15
        ret
procend

procstart _uX_m_pslldi_16, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            16
        ret
procend

procstart _uX_m_pslldi_17, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            17
        ret
procend

procstart _uX_m_pslldi_18, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            18
        ret
procend

procstart _uX_m_pslldi_19, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            19
        ret
procend

procstart _uX_m_pslldi_20, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            20
        ret
procend

procstart _uX_m_pslldi_21, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            21
        ret
procend

procstart _uX_m_pslldi_22, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            22
        ret
procend

procstart _uX_m_pslldi_23, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            23
        ret
procend

procstart _uX_m_pslldi_24, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            24
        ret
procend

procstart _uX_m_pslldi_25, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            25
        ret
procend

procstart _uX_m_pslldi_26, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            26
        ret
procend

procstart _uX_m_pslldi_27, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            27
        ret
procend

procstart _uX_m_pslldi_28, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            28
        ret
procend

procstart _uX_m_pslldi_29, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            29
        ret
procend

procstart _uX_m_pslldi_30, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            30
        ret
procend

procstart _uX_m_pslldi_31, callconv, mmword, < >, < >, Inmm_A:mmword
        pslld           mm0,            31
        ret
procend

procstart _uX_m_pslldi, callconv, mmword, < >, < >, Inmm_A:mmword, Inint_Imm:dword
        push         rbase()
        .if(rp1() < 0)
        jmp         m64sllipi32_end
        .endif

        .if(rp1() > 31)
        pxor          mm0,           mm0
        jmp         m64sllipi32_end
        .endif

        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [m64sllipi32jmptable+rbase()*size_t_size]

        m64sllipi32_0 label size_t
        pslld           mm0,            0
        jmp         m64sllipi32_end
        m64sllipi32_1 label size_t
        pslld           mm0,            1
        jmp         m64sllipi32_end
        m64sllipi32_2 label size_t
        pslld           mm0,            2
        jmp         m64sllipi32_end
        m64sllipi32_3 label size_t
        pslld           mm0,            3
        jmp         m64sllipi32_end
        m64sllipi32_4 label size_t
        pslld           mm0,            4
        jmp         m64sllipi32_end
        m64sllipi32_5 label size_t
        pslld           mm0,            5
        jmp         m64sllipi32_end
        m64sllipi32_6 label size_t
        pslld           mm0,            6
        jmp         m64sllipi32_end
        m64sllipi32_7 label size_t
        pslld           mm0,            7
        jmp         m64sllipi32_end
        m64sllipi32_8 label size_t
        pslld           mm0,            8
        jmp         m64sllipi32_end
        m64sllipi32_9 label size_t
        pslld           mm0,            9
        jmp         m64sllipi32_end
        m64sllipi32_10 label size_t
        pslld           mm0,            10
        jmp         m64sllipi32_end
        m64sllipi32_11 label size_t
        pslld           mm0,            11
        jmp         m64sllipi32_end
        m64sllipi32_12 label size_t
        pslld           mm0,            12
        jmp         m64sllipi32_end
        m64sllipi32_13 label size_t
        pslld           mm0,            13
        jmp         m64sllipi32_end
        m64sllipi32_14 label size_t
        pslld           mm0,            14
        jmp         m64sllipi32_end
        m64sllipi32_15 label size_t
        pslld           mm0,            15
        jmp         m64sllipi32_end
        m64sllipi32_16 label size_t
        pslld           mm0,            16
        jmp         m64sllipi32_end
        m64sllipi32_17 label size_t
        pslld           mm0,            17
        jmp         m64sllipi32_end
        m64sllipi32_18 label size_t
        pslld           mm0,            18
        jmp         m64sllipi32_end
        m64sllipi32_19 label size_t
        pslld           mm0,            19
        jmp         m64sllipi32_end
        m64sllipi32_20 label size_t
        pslld           mm0,            20
        jmp         m64sllipi32_end
        m64sllipi32_21 label size_t
        pslld           mm0,            21
        jmp         m64sllipi32_end
        m64sllipi32_22 label size_t
        pslld           mm0,            22
        jmp         m64sllipi32_end
        m64sllipi32_23 label size_t
        pslld           mm0,            23
        jmp         m64sllipi32_end
        m64sllipi32_24 label size_t
        pslld           mm0,            24
        jmp         m64sllipi32_end
        m64sllipi32_25 label size_t
        pslld           mm0,            25
        jmp         m64sllipi32_end
        m64sllipi32_26 label size_t
        pslld           mm0,            26
        jmp         m64sllipi32_end
        m64sllipi32_27 label size_t
        pslld           mm0,            27
        jmp         m64sllipi32_end
        m64sllipi32_28 label size_t
        pslld           mm0,            28
        jmp         m64sllipi32_end
        m64sllipi32_29 label size_t
        pslld           mm0,            29
        jmp         m64sllipi32_end
        m64sllipi32_30 label size_t
        pslld           mm0,            30
        jmp         m64sllipi32_end
        m64sllipi32_31 label size_t
        pslld           mm0,            31
        ;jmp         m64sllipi32_end

        m64sllipi32_end:
        pop         rbase()
        ret
procend

procstart _uX_m_psllqi_0, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            0
        ret
procend

procstart _uX_m_psllqi_1, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            1
        ret
procend

procstart _uX_m_psllqi_2, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            2
        ret
procend

procstart _uX_m_psllqi_3, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            3
        ret
procend

procstart _uX_m_psllqi_4, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            4
        ret
procend

procstart _uX_m_psllqi_5, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            5
        ret
procend

procstart _uX_m_psllqi_6, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            6
        ret
procend

procstart _uX_m_psllqi_7, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            7
        ret
procend

procstart _uX_m_psllqi_8, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            8
        ret
procend

procstart _uX_m_psllqi_9, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            9
        ret
procend

procstart _uX_m_psllqi_10, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            10
        ret
procend

procstart _uX_m_psllqi_11, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            11
        ret
procend

procstart _uX_m_psllqi_12, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            12
        ret
procend

procstart _uX_m_psllqi_13, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            13
        ret
procend

procstart _uX_m_psllqi_14, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            14
        ret
procend

procstart _uX_m_psllqi_15, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            15
        ret
procend

procstart _uX_m_psllqi_16, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            16
        ret
procend

procstart _uX_m_psllqi_17, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            17
        ret
procend

procstart _uX_m_psllqi_18, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            18
        ret
procend

procstart _uX_m_psllqi_19, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            19
        ret
procend

procstart _uX_m_psllqi_20, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            20
        ret
procend

procstart _uX_m_psllqi_21, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            21
        ret
procend

procstart _uX_m_psllqi_22, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            22
        ret
procend

procstart _uX_m_psllqi_23, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            23
        ret
procend

procstart _uX_m_psllqi_24, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            24
        ret
procend

procstart _uX_m_psllqi_25, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            25
        ret
procend

procstart _uX_m_psllqi_26, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            26
        ret
procend

procstart _uX_m_psllqi_27, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            27
        ret
procend

procstart _uX_m_psllqi_28, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            28
        ret
procend

procstart _uX_m_psllqi_29, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            29
        ret
procend

procstart _uX_m_psllqi_30, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            30
        ret
procend

procstart _uX_m_psllqi_31, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            31
        ret
procend

procstart _uX_m_psllqi_32, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            32
        ret
procend

procstart _uX_m_psllqi_33, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            33
        ret
procend

procstart _uX_m_psllqi_34, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            34
        ret
procend

procstart _uX_m_psllqi_35, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            35
        ret
procend

procstart _uX_m_psllqi_36, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            36
        ret
procend

procstart _uX_m_psllqi_37, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            37
        ret
procend

procstart _uX_m_psllqi_38, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            38
        ret
procend

procstart _uX_m_psllqi_39, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            39
        ret
procend

procstart _uX_m_psllqi_40, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            40
        ret
procend

procstart _uX_m_psllqi_41, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            41
        ret
procend

procstart _uX_m_psllqi_42, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            42
        ret
procend

procstart _uX_m_psllqi_43, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            43
        ret
procend

procstart _uX_m_psllqi_44, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            44
        ret
procend

procstart _uX_m_psllqi_45, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            45
        ret
procend

procstart _uX_m_psllqi_46, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            46
        ret
procend

procstart _uX_m_psllqi_47, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            47
        ret
procend

procstart _uX_m_psllqi_48, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            48
        ret
procend

procstart _uX_m_psllqi_49, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            49
        ret
procend

procstart _uX_m_psllqi_50, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            50
        ret
procend

procstart _uX_m_psllqi_51, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            51
        ret
procend

procstart _uX_m_psllqi_52, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            52
        ret
procend

procstart _uX_m_psllqi_53, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            53
        ret
procend

procstart _uX_m_psllqi_54, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            54
        ret
procend

procstart _uX_m_psllqi_55, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            55
        ret
procend

procstart _uX_m_psllqi_56, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            56
        ret
procend

procstart _uX_m_psllqi_57, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            57
        ret
procend

procstart _uX_m_psllqi_58, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            58
        ret
procend

procstart _uX_m_psllqi_59, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            59
        ret
procend

procstart _uX_m_psllqi_60, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            60
        ret
procend

procstart _uX_m_psllqi_61, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            61
        ret
procend

procstart _uX_m_psllqi_62, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            62
        ret
procend

procstart _uX_m_psllqi_63, callconv, mmword, < >, < >, Inmm_A:mmword
        psllq           mm0,            63
        ret
procend

procstart _uX_m_psllqi, callconv, mmword, < >, < >, Inmm_A:mmword, Inint_Imm:dword
        push         rbase()
        .if(rp1() < 0)
        jmp         m64sllipi64_end
        .endif

        .if(rp1() > 63)
        pxor          mm0,           mm0
        jmp         m64sllipi64_end
        .endif

        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [m64sllipi64jmptable+rbase()*size_t_size]

        m64sllipi64_0 label size_t
        psllq           mm0,            0
        jmp         m64sllipi64_end
        m64sllipi64_1 label size_t
        psllq           mm0,            1
        jmp         m64sllipi64_end
        m64sllipi64_2 label size_t
        psllq           mm0,            2
        jmp         m64sllipi64_end
        m64sllipi64_3 label size_t
        psllq           mm0,            3
        jmp         m64sllipi64_end
        m64sllipi64_4 label size_t
        psllq           mm0,            4
        jmp         m64sllipi64_end
        m64sllipi64_5 label size_t
        psllq           mm0,            5
        jmp         m64sllipi64_end
        m64sllipi64_6 label size_t
        psllq           mm0,            6
        jmp         m64sllipi64_end
        m64sllipi64_7 label size_t
        psllq           mm0,            7
        jmp         m64sllipi64_end
        m64sllipi64_8 label size_t
        psllq           mm0,            8
        jmp         m64sllipi64_end
        m64sllipi64_9 label size_t
        psllq           mm0,            9
        jmp         m64sllipi64_end
        m64sllipi64_10 label size_t
        psllq           mm0,            10
        jmp         m64sllipi64_end
        m64sllipi64_11 label size_t
        psllq           mm0,            11
        jmp         m64sllipi64_end
        m64sllipi64_12 label size_t
        psllq           mm0,            12
        jmp         m64sllipi64_end
        m64sllipi64_13 label size_t
        psllq           mm0,            13
        jmp         m64sllipi64_end
        m64sllipi64_14 label size_t
        psllq           mm0,            14
        jmp         m64sllipi64_end
        m64sllipi64_15 label size_t
        psllq           mm0,            15
        jmp         m64sllipi64_end
        m64sllipi64_16 label size_t
        psllq           mm0,            16
        jmp         m64sllipi64_end
        m64sllipi64_17 label size_t
        psllq           mm0,            17
        jmp         m64sllipi64_end
        m64sllipi64_18 label size_t
        psllq           mm0,            18
        jmp         m64sllipi64_end
        m64sllipi64_19 label size_t
        psllq           mm0,            19
        jmp         m64sllipi64_end
        m64sllipi64_20 label size_t
        psllq           mm0,            20
        jmp         m64sllipi64_end
        m64sllipi64_21 label size_t
        psllq           mm0,            21
        jmp         m64sllipi64_end
        m64sllipi64_22 label size_t
        psllq           mm0,            22
        jmp         m64sllipi64_end
        m64sllipi64_23 label size_t
        psllq           mm0,            23
        jmp         m64sllipi64_end
        m64sllipi64_24 label size_t
        psllq           mm0,            24
        jmp         m64sllipi64_end
        m64sllipi64_25 label size_t
        psllq           mm0,            25
        jmp         m64sllipi64_end
        m64sllipi64_26 label size_t
        psllq           mm0,            26
        jmp         m64sllipi64_end
        m64sllipi64_27 label size_t
        psllq           mm0,            27
        jmp         m64sllipi64_end
        m64sllipi64_28 label size_t
        psllq           mm0,            28
        jmp         m64sllipi64_end
        m64sllipi64_29 label size_t
        psllq           mm0,            29
        jmp         m64sllipi64_end
        m64sllipi64_30 label size_t
        psllq           mm0,            30
        jmp         m64sllipi64_end
        m64sllipi64_31 label size_t
        psllq           mm0,            31
        jmp         m64sllipi64_end
        m64sllipi64_32 label size_t
        psllq           mm0,            32
        jmp         m64sllipi64_end
        m64sllipi64_33 label size_t
        psllq           mm0,            33
        jmp         m64sllipi64_end
        m64sllipi64_34 label size_t
        psllq           mm0,            34
        jmp         m64sllipi64_end
        m64sllipi64_35 label size_t
        psllq           mm0,            35
        jmp         m64sllipi64_end
        m64sllipi64_36 label size_t
        psllq           mm0,            36
        jmp         m64sllipi64_end
        m64sllipi64_37 label size_t
        psllq           mm0,            37
        jmp         m64sllipi64_end
        m64sllipi64_38 label size_t
        psllq           mm0,            38
        jmp         m64sllipi64_end
        m64sllipi64_39 label size_t
        psllq           mm0,            39
        jmp         m64sllipi64_end
        m64sllipi64_40 label size_t
        psllq           mm0,            40
        jmp         m64sllipi64_end
        m64sllipi64_41 label size_t
        psllq           mm0,            41
        jmp         m64sllipi64_end
        m64sllipi64_42 label size_t
        psllq           mm0,            42
        jmp         m64sllipi64_end
        m64sllipi64_43 label size_t
        psllq           mm0,            43
        jmp         m64sllipi64_end
        m64sllipi64_44 label size_t
        psllq           mm0,            44
        jmp         m64sllipi64_end
        m64sllipi64_45 label size_t
        psllq           mm0,            45
        jmp         m64sllipi64_end
        m64sllipi64_46 label size_t
        psllq           mm0,            46
        jmp         m64sllipi64_end
        m64sllipi64_47 label size_t
        psllq           mm0,            47
        jmp         m64sllipi64_end
        m64sllipi64_48 label size_t
        psllq           mm0,            48
        jmp         m64sllipi64_end
        m64sllipi64_49 label size_t
        psllq           mm0,            49
        jmp         m64sllipi64_end
        m64sllipi64_50 label size_t
        psllq           mm0,            50
        jmp         m64sllipi64_end
        m64sllipi64_51 label size_t
        psllq           mm0,            51
        jmp         m64sllipi64_end
        m64sllipi64_52 label size_t
        psllq           mm0,            52
        jmp         m64sllipi64_end
        m64sllipi64_53 label size_t
        psllq           mm0,            53
        jmp         m64sllipi64_end
        m64sllipi64_54 label size_t
        psllq           mm0,            54
        jmp         m64sllipi64_end
        m64sllipi64_55 label size_t
        psllq           mm0,            55
        jmp         m64sllipi64_end
        m64sllipi64_56 label size_t
        psllq           mm0,            56
        jmp         m64sllipi64_end
        m64sllipi64_57 label size_t
        psllq           mm0,            57
        jmp         m64sllipi64_end
        m64sllipi64_58 label size_t
        psllq           mm0,            58
        jmp         m64sllipi64_end
        m64sllipi64_59 label size_t
        psllq           mm0,            59
        jmp         m64sllipi64_end
        m64sllipi64_60 label size_t
        psllq           mm0,            60
        jmp         m64sllipi64_end
        m64sllipi64_61 label size_t
        psllq           mm0,            61
        jmp         m64sllipi64_end
        m64sllipi64_62 label size_t
        psllq           mm0,            62
        jmp         m64sllipi64_end
        m64sllipi64_63 label size_t
        psllq           mm0,            63
        ;jmp         m64sllipi64_end

        m64sllipi64_end:
        pop         rbase()
        ret
procend

procstart _uX_m_psrawi_0, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            0
        ret
procend

procstart _uX_m_psrawi_1, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            1
        ret
procend

procstart _uX_m_psrawi_2, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            2
        ret
procend

procstart _uX_m_psrawi_3, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            3
        ret
procend

procstart _uX_m_psrawi_4, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            4
        ret
procend

procstart _uX_m_psrawi_5, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            5
        ret
procend

procstart _uX_m_psrawi_6, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            6
        ret
procend

procstart _uX_m_psrawi_7, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            7
        ret
procend

procstart _uX_m_psrawi_8, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            8
        ret
procend

procstart _uX_m_psrawi_9, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            9
        ret
procend

procstart _uX_m_psrawi_10, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            10
        ret
procend

procstart _uX_m_psrawi_11, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            11
        ret
procend

procstart _uX_m_psrawi_12, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            12
        ret
procend

procstart _uX_m_psrawi_13, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            13
        ret
procend

procstart _uX_m_psrawi_14, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            14
        ret
procend

procstart _uX_m_psrawi_15, callconv, mmword, < >, < >, Inmm_A:mmword
        psraw           mm0,            15
        ret
procend

procstart _uX_m_psrawi, callconv, mmword, < >, < >, Inmm_A:mmword, Inint_Imm:dword
        push         rbase()
        .if(rp1() < 0)
        jmp         m64sraipi16_end
        .endif

        .if(rp1() > 15)
        psraw           mm0,            15
        jmp         m64sraipi16_end
        .endif

        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [m64sraipi16jmptable+rbase()*size_t_size]

        m64sraipi16_0 label size_t
        psraw           mm0,            0
        jmp         m64sraipi16_end
        m64sraipi16_1 label size_t
        psraw           mm0,            1
        jmp         m64sraipi16_end
        m64sraipi16_2 label size_t
        psraw           mm0,            2
        jmp         m64sraipi16_end
        m64sraipi16_3 label size_t
        psraw           mm0,            3
        jmp         m64sraipi16_end
        m64sraipi16_4 label size_t
        psraw           mm0,            4
        jmp         m64sraipi16_end
        m64sraipi16_5 label size_t
        psraw           mm0,            5
        jmp         m64sraipi16_end
        m64sraipi16_6 label size_t
        psraw           mm0,            6
        jmp         m64sraipi16_end
        m64sraipi16_7 label size_t
        psraw           mm0,            7
        jmp         m64sraipi16_end
        m64sraipi16_8 label size_t
        psraw           mm0,            8
        jmp         m64sraipi16_end
        m64sraipi16_9 label size_t
        psraw           mm0,            9
        jmp         m64sraipi16_end
        m64sraipi16_10 label size_t
        psraw           mm0,            10
        jmp         m64sraipi16_end
        m64sraipi16_11 label size_t
        psraw           mm0,            11
        jmp         m64sraipi16_end
        m64sraipi16_12 label size_t
        psraw           mm0,            12
        jmp         m64sraipi16_end
        m64sraipi16_13 label size_t
        psraw           mm0,            13
        jmp         m64sraipi16_end
        m64sraipi16_14 label size_t
        psraw           mm0,            14
        jmp         m64sraipi16_end
        m64sraipi16_15 label size_t
        psraw           mm0,            15
        ;jmp         m64sraipi16_end

        m64sraipi16_end:
        pop         rbase()
        ret
procend

procstart _uX_m_psradi_0, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            0
        ret
procend

procstart _uX_m_psradi_1, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            1
        ret
procend

procstart _uX_m_psradi_2, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            2
        ret
procend

procstart _uX_m_psradi_3, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            3
        ret
procend

procstart _uX_m_psradi_4, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            4
        ret
procend

procstart _uX_m_psradi_5, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            5
        ret
procend

procstart _uX_m_psradi_6, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            6
        ret
procend

procstart _uX_m_psradi_7, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            7
        ret
procend

procstart _uX_m_psradi_8, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            8
        ret
procend

procstart _uX_m_psradi_9, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            9
        ret
procend

procstart _uX_m_psradi_10, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            10
        ret
procend

procstart _uX_m_psradi_11, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            11
        ret
procend

procstart _uX_m_psradi_12, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            12
        ret
procend

procstart _uX_m_psradi_13, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            13
        ret
procend

procstart _uX_m_psradi_14, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            14
        ret
procend

procstart _uX_m_psradi_15, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            15
        ret
procend

procstart _uX_m_psradi_16, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            16
        ret
procend

procstart _uX_m_psradi_17, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            17
        ret
procend

procstart _uX_m_psradi_18, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            18
        ret
procend

procstart _uX_m_psradi_19, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            19
        ret
procend

procstart _uX_m_psradi_20, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            20
        ret
procend

procstart _uX_m_psradi_21, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            21
        ret
procend

procstart _uX_m_psradi_22, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            22
        ret
procend

procstart _uX_m_psradi_23, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            23
        ret
procend

procstart _uX_m_psradi_24, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            24
        ret
procend

procstart _uX_m_psradi_25, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            25
        ret
procend

procstart _uX_m_psradi_26, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            26
        ret
procend

procstart _uX_m_psradi_27, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            27
        ret
procend

procstart _uX_m_psradi_28, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            28
        ret
procend

procstart _uX_m_psradi_29, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            29
        ret
procend

procstart _uX_m_psradi_30, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            30
        ret
procend

procstart _uX_m_psradi_31, callconv, mmword, < >, < >, Inmm_A:mmword
        psrad           mm0,            31
        ret
procend

procstart _uX_m_psradi, callconv, mmword, < >, < >, Inmm_A:mmword, Inint_Imm:dword
        push         rbase()
        .if(rp1() < 0)
        jmp         m64sraipi32_end
        .endif

        .if(rp1() > 31)
        psrad           mm0,            31
        jmp         m64sraipi32_end
        .endif

        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [m64sraipi32jmptable+rbase()*size_t_size]

        m64sraipi32_0 label size_t
        psrad           mm0,            0
        jmp         m64sraipi32_end
        m64sraipi32_1 label size_t
        psrad           mm0,            1
        jmp         m64sraipi32_end
        m64sraipi32_2 label size_t
        psrad           mm0,            2
        jmp         m64sraipi32_end
        m64sraipi32_3 label size_t
        psrad           mm0,            3
        jmp         m64sraipi32_end
        m64sraipi32_4 label size_t
        psrad           mm0,            4
        jmp         m64sraipi32_end
        m64sraipi32_5 label size_t
        psrad           mm0,            5
        jmp         m64sraipi32_end
        m64sraipi32_6 label size_t
        psrad           mm0,            6
        jmp         m64sraipi32_end
        m64sraipi32_7 label size_t
        psrad           mm0,            7
        jmp         m64sraipi32_end
        m64sraipi32_8 label size_t
        psrad           mm0,            8
        jmp         m64sraipi32_end
        m64sraipi32_9 label size_t
        psrad           mm0,            9
        jmp         m64sraipi32_end
        m64sraipi32_10 label size_t
        psrad           mm0,            10
        jmp         m64sraipi32_end
        m64sraipi32_11 label size_t
        psrad           mm0,            11
        jmp         m64sraipi32_end
        m64sraipi32_12 label size_t
        psrad           mm0,            12
        jmp         m64sraipi32_end
        m64sraipi32_13 label size_t
        psrad           mm0,            13
        jmp         m64sraipi32_end
        m64sraipi32_14 label size_t
        psrad           mm0,            14
        jmp         m64sraipi32_end
        m64sraipi32_15 label size_t
        psrad           mm0,            15
        jmp         m64sraipi32_end
        m64sraipi32_16 label size_t
        psrad           mm0,            16
        jmp         m64sraipi32_end
        m64sraipi32_17 label size_t
        psrad           mm0,            17
        jmp         m64sraipi32_end
        m64sraipi32_18 label size_t
        psrad           mm0,            18
        jmp         m64sraipi32_end
        m64sraipi32_19 label size_t
        psrad           mm0,            19
        jmp         m64sraipi32_end
        m64sraipi32_20 label size_t
        psrad           mm0,            20
        jmp         m64sraipi32_end
        m64sraipi32_21 label size_t
        psrad           mm0,            21
        jmp         m64sraipi32_end
        m64sraipi32_22 label size_t
        psrad           mm0,            22
        jmp         m64sraipi32_end
        m64sraipi32_23 label size_t
        psrad           mm0,            23
        jmp         m64sraipi32_end
        m64sraipi32_24 label size_t
        psrad           mm0,            24
        jmp         m64sraipi32_end
        m64sraipi32_25 label size_t
        psrad           mm0,            25
        jmp         m64sraipi32_end
        m64sraipi32_26 label size_t
        psrad           mm0,            26
        jmp         m64sraipi32_end
        m64sraipi32_27 label size_t
        psrad           mm0,            27
        jmp         m64sraipi32_end
        m64sraipi32_28 label size_t
        psrad           mm0,            28
        jmp         m64sraipi32_end
        m64sraipi32_29 label size_t
        psrad           mm0,            29
        jmp         m64sraipi32_end
        m64sraipi32_30 label size_t
        psrad           mm0,            30
        jmp         m64sraipi32_end
        m64sraipi32_31 label size_t
        psrad           mm0,            31
        ;jmp         m64sraipi32_end

        m64sraipi32_end:
        pop         rbase()
        ret
procend

procstart _uX_m_psrlwi_0, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            0
        ret
procend

procstart _uX_m_psrlwi_1, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            1
        ret
procend

procstart _uX_m_psrlwi_2, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            2
        ret
procend

procstart _uX_m_psrlwi_3, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            3
        ret
procend

procstart _uX_m_psrlwi_4, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            4
        ret
procend

procstart _uX_m_psrlwi_5, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            5
        ret
procend

procstart _uX_m_psrlwi_6, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            6
        ret
procend

procstart _uX_m_psrlwi_7, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            7
        ret
procend

procstart _uX_m_psrlwi_8, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            8
        ret
procend

procstart _uX_m_psrlwi_9, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            9
        ret
procend

procstart _uX_m_psrlwi_10, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            10
        ret
procend

procstart _uX_m_psrlwi_11, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            11
        ret
procend

procstart _uX_m_psrlwi_12, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            12
        ret
procend

procstart _uX_m_psrlwi_13, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            13
        ret
procend

procstart _uX_m_psrlwi_14, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            14
        ret
procend

procstart _uX_m_psrlwi_15, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlw           mm0,            15
        ret
procend

procstart _uX_m_psrlwi, callconv, mmword, < >, < >, Inmm_A:mmword, Inint_Imm:dword
        push         rbase()
        .if(rp1() < 0)
        jmp         m64srlipi16_end
        .endif

        .if(rp1() > 15)
        pxor          mm0,           mm0
        jmp         m64srlipi16_end
        .endif

        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [m64srlipi16jmptable+rbase()*size_t_size]

        m64srlipi16_0 label size_t
        psrlw           mm0,            0
        jmp         m64srlipi16_end
        m64srlipi16_1 label size_t
        psrlw           mm0,            1
        jmp         m64srlipi16_end
        m64srlipi16_2 label size_t
        psrlw           mm0,            2
        jmp         m64srlipi16_end
        m64srlipi16_3 label size_t
        psrlw           mm0,            3
        jmp         m64srlipi16_end
        m64srlipi16_4 label size_t
        psrlw           mm0,            4
        jmp         m64srlipi16_end
        m64srlipi16_5 label size_t
        psrlw           mm0,            5
        jmp         m64srlipi16_end
        m64srlipi16_6 label size_t
        psrlw           mm0,            6
        jmp         m64srlipi16_end
        m64srlipi16_7 label size_t
        psrlw           mm0,            7
        jmp         m64srlipi16_end
        m64srlipi16_8 label size_t
        psrlw           mm0,            8
        jmp         m64srlipi16_end
        m64srlipi16_9 label size_t
        psrlw           mm0,            9
        jmp         m64srlipi16_end
        m64srlipi16_10 label size_t
        psrlw           mm0,            10
        jmp         m64srlipi16_end
        m64srlipi16_11 label size_t
        psrlw           mm0,            11
        jmp         m64srlipi16_end
        m64srlipi16_12 label size_t
        psrlw           mm0,            12
        jmp         m64srlipi16_end
        m64srlipi16_13 label size_t
        psrlw           mm0,            13
        jmp         m64srlipi16_end
        m64srlipi16_14 label size_t
        psrlw           mm0,            14
        jmp         m64srlipi16_end
        m64srlipi16_15 label size_t
        psrlw           mm0,            15
        ;jmp         m64srlipi16_end

        m64srlipi16_end:
        pop         rbase()
        ret
procend

procstart _uX_m_psrldi_0, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            0
        ret
procend

procstart _uX_m_psrldi_1, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            1
        ret
procend

procstart _uX_m_psrldi_2, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            2
        ret
procend

procstart _uX_m_psrldi_3, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            3
        ret
procend

procstart _uX_m_psrldi_4, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            4
        ret
procend

procstart _uX_m_psrldi_5, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            5
        ret
procend

procstart _uX_m_psrldi_6, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            6
        ret
procend

procstart _uX_m_psrldi_7, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            7
        ret
procend

procstart _uX_m_psrldi_8, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            8
        ret
procend

procstart _uX_m_psrldi_9, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            9
        ret
procend

procstart _uX_m_psrldi_10, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            10
        ret
procend

procstart _uX_m_psrldi_11, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            11
        ret
procend

procstart _uX_m_psrldi_12, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            12
        ret
procend

procstart _uX_m_psrldi_13, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            13
        ret
procend

procstart _uX_m_psrldi_14, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            14
        ret
procend

procstart _uX_m_psrldi_15, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            15
        ret
procend

procstart _uX_m_psrldi_16, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            16
        ret
procend

procstart _uX_m_psrldi_17, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            17
        ret
procend

procstart _uX_m_psrldi_18, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            18
        ret
procend

procstart _uX_m_psrldi_19, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            19
        ret
procend

procstart _uX_m_psrldi_20, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            20
        ret
procend

procstart _uX_m_psrldi_21, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            21
        ret
procend

procstart _uX_m_psrldi_22, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            22
        ret
procend

procstart _uX_m_psrldi_23, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            23
        ret
procend

procstart _uX_m_psrldi_24, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            24
        ret
procend

procstart _uX_m_psrldi_25, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            25
        ret
procend

procstart _uX_m_psrldi_26, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            26
        ret
procend

procstart _uX_m_psrldi_27, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            27
        ret
procend

procstart _uX_m_psrldi_28, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            28
        ret
procend

procstart _uX_m_psrldi_29, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            29
        ret
procend

procstart _uX_m_psrldi_30, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            30
        ret
procend

procstart _uX_m_psrldi_31, callconv, mmword, < >, < >, Inmm_A:mmword
        psrld           mm0,            31
        ret
procend

procstart _uX_m_psrldi, callconv, mmword, < >, < >, Inmm_A:mmword, Inint_Imm:dword
        push         rbase()
        .if(rp1() < 0)
        jmp         m64srlipi32_end
        .endif

        .if(rp1() > 31)
        pxor          mm0,           mm0
        jmp         m64srlipi32_end
        .endif

        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [m64srlipi32jmptable+rbase()*size_t_size]

        m64srlipi32_0 label size_t
        psrld           mm0,            0
        jmp         m64srlipi32_end
        m64srlipi32_1 label size_t
        psrld           mm0,            1
        jmp         m64srlipi32_end
        m64srlipi32_2 label size_t
        psrld           mm0,            2
        jmp         m64srlipi32_end
        m64srlipi32_3 label size_t
        psrld           mm0,            3
        jmp         m64srlipi32_end
        m64srlipi32_4 label size_t
        psrld           mm0,            4
        jmp         m64srlipi32_end
        m64srlipi32_5 label size_t
        psrld           mm0,            5
        jmp         m64srlipi32_end
        m64srlipi32_6 label size_t
        psrld           mm0,            6
        jmp         m64srlipi32_end
        m64srlipi32_7 label size_t
        psrld           mm0,            7
        jmp         m64srlipi32_end
        m64srlipi32_8 label size_t
        psrld           mm0,            8
        jmp         m64srlipi32_end
        m64srlipi32_9 label size_t
        psrld           mm0,            9
        jmp         m64srlipi32_end
        m64srlipi32_10 label size_t
        psrld           mm0,            10
        jmp         m64srlipi32_end
        m64srlipi32_11 label size_t
        psrld           mm0,            11
        jmp         m64srlipi32_end
        m64srlipi32_12 label size_t
        psrld           mm0,            12
        jmp         m64srlipi32_end
        m64srlipi32_13 label size_t
        psrld           mm0,            13
        jmp         m64srlipi32_end
        m64srlipi32_14 label size_t
        psrld           mm0,            14
        jmp         m64srlipi32_end
        m64srlipi32_15 label size_t
        psrld           mm0,            15
        jmp         m64srlipi32_end
        m64srlipi32_16 label size_t
        psrld           mm0,            16
        jmp         m64srlipi32_end
        m64srlipi32_17 label size_t
        psrld           mm0,            17
        jmp         m64srlipi32_end
        m64srlipi32_18 label size_t
        psrld           mm0,            18
        jmp         m64srlipi32_end
        m64srlipi32_19 label size_t
        psrld           mm0,            19
        jmp         m64srlipi32_end
        m64srlipi32_20 label size_t
        psrld           mm0,            20
        jmp         m64srlipi32_end
        m64srlipi32_21 label size_t
        psrld           mm0,            21
        jmp         m64srlipi32_end
        m64srlipi32_22 label size_t
        psrld           mm0,            22
        jmp         m64srlipi32_end
        m64srlipi32_23 label size_t
        psrld           mm0,            23
        jmp         m64srlipi32_end
        m64srlipi32_24 label size_t
        psrld           mm0,            24
        jmp         m64srlipi32_end
        m64srlipi32_25 label size_t
        psrld           mm0,            25
        jmp         m64srlipi32_end
        m64srlipi32_26 label size_t
        psrld           mm0,            26
        jmp         m64srlipi32_end
        m64srlipi32_27 label size_t
        psrld           mm0,            27
        jmp         m64srlipi32_end
        m64srlipi32_28 label size_t
        psrld           mm0,            28
        jmp         m64srlipi32_end
        m64srlipi32_29 label size_t
        psrld           mm0,            29
        jmp         m64srlipi32_end
        m64srlipi32_30 label size_t
        psrld           mm0,            30
        jmp         m64srlipi32_end
        m64srlipi32_31 label size_t
        psrld           mm0,            31
        ;jmp         m64srlipi32_end

        m64srlipi32_end:
        pop         rbase()
        ret
procend

procstart _uX_m_psrlqi_0, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            0
        ret
procend

procstart _uX_m_psrlqi_1, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            1
        ret
procend

procstart _uX_m_psrlqi_2, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            2
        ret
procend

procstart _uX_m_psrlqi_3, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            3
        ret
procend

procstart _uX_m_psrlqi_4, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            4
        ret
procend

procstart _uX_m_psrlqi_5, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            5
        ret
procend

procstart _uX_m_psrlqi_6, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            6
        ret
procend

procstart _uX_m_psrlqi_7, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            7
        ret
procend

procstart _uX_m_psrlqi_8, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            8
        ret
procend

procstart _uX_m_psrlqi_9, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            9
        ret
procend

procstart _uX_m_psrlqi_10, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            10
        ret
procend

procstart _uX_m_psrlqi_11, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            11
        ret
procend

procstart _uX_m_psrlqi_12, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            12
        ret
procend

procstart _uX_m_psrlqi_13, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            13
        ret
procend

procstart _uX_m_psrlqi_14, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            14
        ret
procend

procstart _uX_m_psrlqi_15, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            15
        ret
procend

procstart _uX_m_psrlqi_16, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            16
        ret
procend

procstart _uX_m_psrlqi_17, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            17
        ret
procend

procstart _uX_m_psrlqi_18, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            18
        ret
procend

procstart _uX_m_psrlqi_19, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            19
        ret
procend

procstart _uX_m_psrlqi_20, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            20
        ret
procend

procstart _uX_m_psrlqi_21, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            21
        ret
procend

procstart _uX_m_psrlqi_22, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            22
        ret
procend

procstart _uX_m_psrlqi_23, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            23
        ret
procend

procstart _uX_m_psrlqi_24, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            24
        ret
procend

procstart _uX_m_psrlqi_25, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            25
        ret
procend

procstart _uX_m_psrlqi_26, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            26
        ret
procend

procstart _uX_m_psrlqi_27, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            27
        ret
procend

procstart _uX_m_psrlqi_28, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            28
        ret
procend

procstart _uX_m_psrlqi_29, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            29
        ret
procend

procstart _uX_m_psrlqi_30, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            30
        ret
procend

procstart _uX_m_psrlqi_31, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            31
        ret
procend

procstart _uX_m_psrlqi_32, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            32
        ret
procend

procstart _uX_m_psrlqi_33, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            33
        ret
procend

procstart _uX_m_psrlqi_34, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            34
        ret
procend

procstart _uX_m_psrlqi_35, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            35
        ret
procend

procstart _uX_m_psrlqi_36, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            36
        ret
procend

procstart _uX_m_psrlqi_37, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            37
        ret
procend

procstart _uX_m_psrlqi_38, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            38
        ret
procend

procstart _uX_m_psrlqi_39, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            39
        ret
procend

procstart _uX_m_psrlqi_40, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            40
        ret
procend

procstart _uX_m_psrlqi_41, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            41
        ret
procend

procstart _uX_m_psrlqi_42, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            42
        ret
procend

procstart _uX_m_psrlqi_43, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            43
        ret
procend

procstart _uX_m_psrlqi_44, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            44
        ret
procend

procstart _uX_m_psrlqi_45, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            45
        ret
procend

procstart _uX_m_psrlqi_46, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            46
        ret
procend

procstart _uX_m_psrlqi_47, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            47
        ret
procend

procstart _uX_m_psrlqi_48, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            48
        ret
procend

procstart _uX_m_psrlqi_49, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            49
        ret
procend

procstart _uX_m_psrlqi_50, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            50
        ret
procend

procstart _uX_m_psrlqi_51, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            51
        ret
procend

procstart _uX_m_psrlqi_52, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            52
        ret
procend

procstart _uX_m_psrlqi_53, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            53
        ret
procend

procstart _uX_m_psrlqi_54, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            54
        ret
procend

procstart _uX_m_psrlqi_55, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            55
        ret
procend

procstart _uX_m_psrlqi_56, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            56
        ret
procend

procstart _uX_m_psrlqi_57, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            57
        ret
procend

procstart _uX_m_psrlqi_58, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            58
        ret
procend

procstart _uX_m_psrlqi_59, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            59
        ret
procend

procstart _uX_m_psrlqi_60, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            60
        ret
procend

procstart _uX_m_psrlqi_61, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            61
        ret
procend

procstart _uX_m_psrlqi_62, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            62
        ret
procend

procstart _uX_m_psrlqi_63, callconv, mmword, < >, < >, Inmm_A:mmword
        psrlq           mm0,            63
        ret
procend

procstart _uX_m_psrlqi, callconv, mmword, < >, < >, Inmm_A:mmword, Inint_Imm:dword
        push         rbase()
        .if(rp1() < 0)
        jmp         m64srlipi64_end
        .endif

        .if(rp1() > 63)
        pxor          mm0,           mm0
        jmp         m64srlipi64_end
        .endif

        movzx           rbase(),    byte ptr [rp1()]
        jmp     dword ptr [m64srlipi64jmptable+rbase()*size_t_size]

        m64srlipi64_0 label size_t
        psrlq           mm0,            0
        jmp         m64srlipi64_end
        m64srlipi64_1 label size_t
        psrlq           mm0,            1
        jmp         m64srlipi64_end
        m64srlipi64_2 label size_t
        psrlq           mm0,            2
        jmp         m64srlipi64_end
        m64srlipi64_3 label size_t
        psrlq           mm0,            3
        jmp         m64srlipi64_end
        m64srlipi64_4 label size_t
        psrlq           mm0,            4
        jmp         m64srlipi64_end
        m64srlipi64_5 label size_t
        psrlq           mm0,            5
        jmp         m64srlipi64_end
        m64srlipi64_6 label size_t
        psrlq           mm0,            6
        jmp         m64srlipi64_end
        m64srlipi64_7 label size_t
        psrlq           mm0,            7
        jmp         m64srlipi64_end
        m64srlipi64_8 label size_t
        psrlq           mm0,            8
        jmp         m64srlipi64_end
        m64srlipi64_9 label size_t
        psrlq           mm0,            9
        jmp         m64srlipi64_end
        m64srlipi64_10 label size_t
        psrlq           mm0,            10
        jmp         m64srlipi64_end
        m64srlipi64_11 label size_t
        psrlq           mm0,            11
        jmp         m64srlipi64_end
        m64srlipi64_12 label size_t
        psrlq           mm0,            12
        jmp         m64srlipi64_end
        m64srlipi64_13 label size_t
        psrlq           mm0,            13
        jmp         m64srlipi64_end
        m64srlipi64_14 label size_t
        psrlq           mm0,            14
        jmp         m64srlipi64_end
        m64srlipi64_15 label size_t
        psrlq           mm0,            15
        jmp         m64srlipi64_end
        m64srlipi64_16 label size_t
        psrlq           mm0,            16
        jmp         m64srlipi64_end
        m64srlipi64_17 label size_t
        psrlq           mm0,            17
        jmp         m64srlipi64_end
        m64srlipi64_18 label size_t
        psrlq           mm0,            18
        jmp         m64srlipi64_end
        m64srlipi64_19 label size_t
        psrlq           mm0,            19
        jmp         m64srlipi64_end
        m64srlipi64_20 label size_t
        psrlq           mm0,            20
        jmp         m64srlipi64_end
        m64srlipi64_21 label size_t
        psrlq           mm0,            21
        jmp         m64srlipi64_end
        m64srlipi64_22 label size_t
        psrlq           mm0,            22
        jmp         m64srlipi64_end
        m64srlipi64_23 label size_t
        psrlq           mm0,            23
        jmp         m64srlipi64_end
        m64srlipi64_24 label size_t
        psrlq           mm0,            24
        jmp         m64srlipi64_end
        m64srlipi64_25 label size_t
        psrlq           mm0,            25
        jmp         m64srlipi64_end
        m64srlipi64_26 label size_t
        psrlq           mm0,            26
        jmp         m64srlipi64_end
        m64srlipi64_27 label size_t
        psrlq           mm0,            27
        jmp         m64srlipi64_end
        m64srlipi64_28 label size_t
        psrlq           mm0,            28
        jmp         m64srlipi64_end
        m64srlipi64_29 label size_t
        psrlq           mm0,            29
        jmp         m64srlipi64_end
        m64srlipi64_30 label size_t
        psrlq           mm0,            30
        jmp         m64srlipi64_end
        m64srlipi64_31 label size_t
        psrlq           mm0,            31
        jmp         m64srlipi64_end
        m64srlipi64_32 label size_t
        psrlq           mm0,            32
        jmp         m64srlipi64_end
        m64srlipi64_33 label size_t
        psrlq           mm0,            33
        jmp         m64srlipi64_end
        m64srlipi64_34 label size_t
        psrlq           mm0,            34
        jmp         m64srlipi64_end
        m64srlipi64_35 label size_t
        psrlq           mm0,            35
        jmp         m64srlipi64_end
        m64srlipi64_36 label size_t
        psrlq           mm0,            36
        jmp         m64srlipi64_end
        m64srlipi64_37 label size_t
        psrlq           mm0,            37
        jmp         m64srlipi64_end
        m64srlipi64_38 label size_t
        psrlq           mm0,            38
        jmp         m64srlipi64_end
        m64srlipi64_39 label size_t
        psrlq           mm0,            39
        jmp         m64srlipi64_end
        m64srlipi64_40 label size_t
        psrlq           mm0,            40
        jmp         m64srlipi64_end
        m64srlipi64_41 label size_t
        psrlq           mm0,            41
        jmp         m64srlipi64_end
        m64srlipi64_42 label size_t
        psrlq           mm0,            42
        jmp         m64srlipi64_end
        m64srlipi64_43 label size_t
        psrlq           mm0,            43
        jmp         m64srlipi64_end
        m64srlipi64_44 label size_t
        psrlq           mm0,            44
        jmp         m64srlipi64_end
        m64srlipi64_45 label size_t
        psrlq           mm0,            45
        jmp         m64srlipi64_end
        m64srlipi64_46 label size_t
        psrlq           mm0,            46
        jmp         m64srlipi64_end
        m64srlipi64_47 label size_t
        psrlq           mm0,            47
        jmp         m64srlipi64_end
        m64srlipi64_48 label size_t
        psrlq           mm0,            48
        jmp         m64srlipi64_end
        m64srlipi64_49 label size_t
        psrlq           mm0,            49
        jmp         m64srlipi64_end
        m64srlipi64_50 label size_t
        psrlq           mm0,            50
        jmp         m64srlipi64_end
        m64srlipi64_51 label size_t
        psrlq           mm0,            51
        jmp         m64srlipi64_end
        m64srlipi64_52 label size_t
        psrlq           mm0,            52
        jmp         m64srlipi64_end
        m64srlipi64_53 label size_t
        psrlq           mm0,            53
        jmp         m64srlipi64_end
        m64srlipi64_54 label size_t
        psrlq           mm0,            54
        jmp         m64srlipi64_end
        m64srlipi64_55 label size_t
        psrlq           mm0,            55
        jmp         m64srlipi64_end
        m64srlipi64_56 label size_t
        psrlq           mm0,            56
        jmp         m64srlipi64_end
        m64srlipi64_57 label size_t
        psrlq           mm0,            57
        jmp         m64srlipi64_end
        m64srlipi64_58 label size_t
        psrlq           mm0,            58
        jmp         m64srlipi64_end
        m64srlipi64_59 label size_t
        psrlq           mm0,            59
        jmp         m64srlipi64_end
        m64srlipi64_60 label size_t
        psrlq           mm0,            60
        jmp         m64srlipi64_end
        m64srlipi64_61 label size_t
        psrlq           mm0,            61
        jmp         m64srlipi64_end
        m64srlipi64_62 label size_t
        psrlq           mm0,            62
        jmp         m64srlipi64_end
        m64srlipi64_63 label size_t
        psrlq           mm0,            63
        ;jmp         m64srlipi64_end

        m64srlipi64_end:
        pop         rbase()
        ret
procend
endif ;__X32__

endif ;__MIC__

end
