
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

alignstackfieldproc

.data?

.data

.const

.code

callconvopt
;alignfieldproc qword_size

procstart _uX_xgetbv, callconv, qword, < >, < >, EXCR:dword
    ifdef __x32__
        ifdef __unix__
            mov         ecx,         EXCR
        endif
            xgetbv
            ;db         0FH,         01H,         0D0H         ; XGETBV
    endif
    ifdef __x64__
        ifdef __unix__
            mov         ecx,         dp0()
        endif
            xgetbv
            shl         rdx,         32         ; 00000020H
            or          rax,         rdx
    endif ;__X64__
            ret
procend

endif ;__MIC__

end
