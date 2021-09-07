
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

    _m128dshufpdjmptable label size_t
    isize_t _m128dshufpd_0, _m128dshufpd_1, _m128dshufpd_2, _m128dshufpd_3

.code

callconvopt
alignxmmfieldproc

procstart _uX_mm_shuffle_00_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufpd          xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_shuffle_01_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufpd          xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_shuffle_10_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufpd          xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_shuffle_11_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufpd          xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_shuffle_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp2() < 0) || (rp2() > 3))
        jmp         _m128dshufpd_end
        .endif

        ifdef __X32__
        movzx       rbase(),    byte ptr [rp2()]
        jmp     dword ptr [_m128dshufpdjmptable+rbase()*size_t_size]
        else
        lea         rbase(),    qword ptr [_m128dshufpdjmptable]
        mov         rbase(),    qword ptr [rbase()+rp2()*size_t_size]
        jmp         rbx
        endif

        _m128dshufpd_0 label size_t
        shufpd          xmm0,           xmm1,           0
        jmp         _m128dshufpd_end
        _m128dshufpd_1 label size_t
        shufpd          xmm0,           xmm1,           1
        jmp         _m128dshufpd_end
        _m128dshufpd_2 label size_t
        shufpd          xmm0,           xmm1,           2
        jmp         _m128dshufpd_end
        _m128dshufpd_3 label size_t
        shufpd          xmm0,           xmm1,           3
        ;jmp         _m128dshufpd_end

        _m128dshufpd_end:
        pop         rbase()
        ret
procend

endif ;__MIC__

end
