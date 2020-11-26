
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
;alignptrfieldproc

; ********** cpuid_ex function **********
; C++ prototype:
; extern "C" void cpuid_ex (int abcd[4], int a, int c);
; Input: a = eax, c = ecx
; Output: abcd[0] = eax, abcd[1] = ebx, abcd[2] = ecx, abcd[3] = edx

procstart _uX_cpuidex, callconv, void, < >, < >, CPUInfo:ptr dword, CPUInfoType:dword, ECXValue:dword
            push        rbase()
    ifdef __x32__
        ifdef __windows__
            mov         eax,            dp1()        ; eax in ecx
            mov         ecx,            dp2()        ; ecx in edx
            cpuid                                       ; input eax, ecx, output eax, ebx ecx, edx
            mov         [dp0()+12],       edx
            mov         [dp0()+8],        ecx
            mov         [dp0()+4],        ebx
            mov         [dp0()],          eax
        endif ;__x32__
        ifdef __unix__
            push        edi
            mov         edi,            CPUInfo        ; CPUInfo out
            mov         eax,            CPUInfoType         ; eax in
            mov         ecx,            ECXValue        ; ecx in
            cpuid                                         ; input eax, ecx, output eax, ebx ecx, edx
            mov         [edi+12],       edx
            mov         [edi+8],        ecx
            mov         [edi+4],        ebx
            mov         [edi],          eax
            mov         CPUInfo,        edi
            pop         edi
        endif ;__x32__
    endif ;__x32__
    ifdef __x64__
            ; parameters: rcx = CPUInfo, edx = CPUInfoType, r8d = ECXValue (Windows)
            ; parameters: rdi = CPUInfo, esi = CPUInfoType, edx = ECXValue (Unix)
            mov         eax,            dp1()
            mov         ecx,            dp2()
            cpuid
            mov     dword ptr[dp0()+12],  edx
            mov     dword ptr[dp0()+8],   ecx
            mov     dword ptr[dp0()+4],   ebx
            mov     dword ptr[dp0()],     eax
    endif ;__x64__
            pop        rbase()
            ret
procend

endif ;__MIC__

end
