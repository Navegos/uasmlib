
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

    _m128dpermpdjmptable label size_t
    isize_t _m128dpermpd_0, _m128dpermpd_1, _m128dpermpd_2, _m128dpermpd_3

.code

callconvopt
alignxmmfieldproc

procstart _uX_mm_permute_00_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_permute_01_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           1
        ret
procend

procstart _uX_mm_permute_10_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           2
        ret
procend

procstart _uX_mm_permute_11_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           3
        ret
procend

procstart _uX_mm_permute_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase()
        .if((rp1() < 0) || (rp1() > 3))
        jmp         _m128dpermpd_end
        .endif

        ifdef __X32__
        movzx       rbase(),    byte ptr [rp1()]
        jmp     dword ptr [_m128dpermpdjmptable+rbase()*size_t_size]
        else
        lea         rbase(),    qword ptr [_m128dpermpdjmptable]
        mov         rbase(),    qword ptr [rbase()+rp1()*size_t_size]
        jmp         rbx
        endif

        _m128dpermpd_0 label size_t
        shufpd          xmm0,           xmm0,           0
        jmp         _m128dpermpd_end
        _m128dpermpd_1 label size_t
        shufpd          xmm0,           xmm0,           1
        jmp         _m128dpermpd_end
        _m128dpermpd_2 label size_t
        shufpd          xmm0,           xmm0,           2
        jmp         _m128dpermpd_end
        _m128dpermpd_3 label size_t
        shufpd          xmm0,           xmm0,           3
        ;jmp         _m128dpermpd_end

        _m128dpermpd_end:
        pop         rbase()
        ret
procend

endif ;__MIC__

end
