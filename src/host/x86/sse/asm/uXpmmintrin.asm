
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

.code

callconvopt
alignxmmfieldproc

;************************************
; New Single precision vector instructions.
;************************************
procstart _uX_mm_addsub_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        addsubps        xmm0,           xmm1
        ret
procend

procstart _uX_mm_hadd_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        haddps          xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_hsub_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        hsubps          xmm0,           xmm1
        ret
procend

procstart _uX_mm_movehdup_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movshdup        xmm0,           xmm0
        ret
procend

procstart _uX_mm_moveldup_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movsldup        xmm0,           xmm0
        ret
procend

;************************************
; New double precision vector instructions.
;************************************
procstart _uX_mm_addsub_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        addsubpd        xmm0,           xmm1
        ret
procend

procstart _uX_mm_hadd_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        haddpd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_hsub_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        hsubpd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_loaddup_pd, callconv, xmmword, < >, < >, InPreal8_A:ptr real8
        movddup         xmm0,       real8 ptr [rp0()]
        ret
procend

procstart _uX_mm_movedup_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movddup         xmm0,           xmm0
        ret
procend

;************************************
; New unaligned integer vector load instruction.
;************************************
procstart _uX_mm_lddqu_si128, callconv, xmmword, < >, < >, InPxmm_A:ptr xmmword
        lddqu           xmm0,       xmmword ptr[rp0()]
        ret
procend

;************************************
; Miscellaneous new instructions.
;************************************

procstart _uX_mm_monitor, voidarg, < >, < >, InPvoid_A:ptr, Ext_B:dword, Hints_C:dword
        mov         rret(),        rp0()
        mov         ecx,        dp1()
        mov         edx,        dp2()
    ifdef __X32__
        monitor     eax,        ecx,        edx
    else
        monitor     rax,        rcx,        rdx
    endif
        ret
procend

procstart _uX_mm_mwait, voidarg, < >, < >, Ext_A:dword, Hints_C:dword
        mov         ecx,        dp0()
        mov         eax,        dp1()
    ifdef __X32__
        mwait       eax,        ecx
    else
        mwait       rax,        rcx
    endif
        ret
procend

endif ;__MIC__

end
