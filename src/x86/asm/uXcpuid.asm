
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
    alignptrfieldproc
    
; ********** cpuid function **********
; C++ prototype:
; extern "C" void cpuid(int abcd[4], int a);
; Input: a = eax, c = ecx
; Output: abcd[0] = eax, abcd[1] = ebx, abcd[2] = ecx, abcd[3] = edx

;_uX_cpuidex proto uXveccall
;extern callconv _uX_cpuidex:proc

_uX_cpuidex proto callconv (void) CPUInfo:ptr dword, CPUInfoType:dword, ECXValue:dword

procstart _uX_cpuid, callconv, void, < >, < >, CPUInfo:ptr dword, CPUInfoType:dword

    ifdef __x32__
        ifdef __windows__
            xor         rp2(),            rp2()
        endif
        ifdef __unix__
            mov         [rp2()+12],            null
        endif
            call        _uX_cpuidex
    endif
    ifdef __x64__
            xor         rp2(),            rp2()
            call        _uX_cpuidex
    endif
            ret
procend

endif ;__MIC__

    end
