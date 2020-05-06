
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /    Copyright 2020 UASM assembly library for the Open Source Initiative        / /
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

    OPTION CASEMAP:NONE
    include macrolib.inc
    
ifndef __MIC__

    include uXasm.inc

    .data?

    .data

    .const

    .code

    callconvopt
    alignfieldproc qword_size

procstart _uX_xsetbv, callconv, void, < >, < >, EXCR:dword, EXCRSet:qword

    ifdef __x32__
        ifdef __windows__
            mov         eax,        [dp1()]
            mov         edx,        [dp1()+4]
        endif
        ifdef __unix__
            mov         ecx,        [dp0()+4]
            mov         eax,        [dp1()+8]
            mov         edx,        [dp1()+12]
        endif
            xsetbv
    endif
    ifdef __x64__
        ifdef __unix__
            mov         ecx,        dp0()
            mov         rdx,        rp1()
        endif
            mov         rax,        rdx
            shr         rdx,        32      ; 00000020H
            xsetbv
    endif ;__X64__
            ret
procend

endif ;__MIC__

    end
