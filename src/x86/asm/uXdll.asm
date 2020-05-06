
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

    ifdef __windows__
    include uXasm.inc

    .data?

    .data

    .const

    .code
    
;DllMain proto stdcall (dword) ;hModule:ptr, dwReason:dword, dwReserved:ptr

ifdef __x64__
    ifndef WINAPI
        WINAPI textequ <callconv>
        WINAPIOPT textequ <callconvopt>
    endif
    ifndef WINAPIOPT
        WINAPIOPT textequ <callconvopt>
    endif
endif

ifdef __x32__
    ifndef WINAPI
        WINAPI textequ <stdcall>
        WINAPIOPT textequ <stdcallopt>
    endif
    ifndef WINAPIOPT
        WINAPIOPT textequ <stdcallopt>
    endif
endif

ifndef HINSTANCE
        HINSTANCE textequ <ptr size_t>
endif

ifndef HMODULE
        HMODULE textequ <HINSTANCE>
endif

ifndef LPVOID
        LPVOID textequ <ptr>
endif

ifndef DLL_PROCESS_ATTACH
    DLL_PROCESS_ATTACH  equ 1
endif
ifndef DLL_THREAD_ATTACH
    DLL_THREAD_ATTACH   equ 2
endif
ifndef DLL_THREAD_DETACH
    DLL_THREAD_DETACH   equ 3
endif
ifndef DLL_PROCESS_DETACH
    DLL_PROCESS_DETACH  equ 0
endif

OPTION SWITCHSTYLE:ASMSTYLE

ifdef __x64__
hinstDLL textequ <rp0()>
fdwReason textequ <rp1()>
lpReserved textequ <rp2()>
endif

ifdef __x32__
hinstDLL textequ <[rp0()+4]>
fdwReason textequ <[rp1()+8]>
lpReserved textequ <[rp1()+12]>
endif

ifndef DisableThreadLibraryCalls
    DisableThreadLibraryCalls proto WINAPI (BOOL) :HMODULE
endif

ifndef __uX_CPUFeatures_inited
    externdef __uX_CPUFeatures_inited:word
endif

ifndef __uX_CPUFeatures_inited
    _uX_CPUFeatures_init proto callconv (void) :dword
endif

ifndef _uX_CPUFeatures_destroy
    _uX_CPUFeatures_destroy proto callconv (void)
endif

    WINAPIOPT
    alignptrfieldproc

procstart DllMain, WINAPI, BOOL, < >, < >, _hinstDLL:HINSTANCE, _fdwReason:DWORD, _lpReserved:LPVOID

        ;// Perform actions based on the reason for calling.
        .switch fdwReason

            .case DLL_PROCESS_ATTACH
            ;// Initialize once for each new process.
            ;// Return FALSE to fail DLL load.
                ;//  For optimization.
                invoke DisableThreadLibraryCalls, hinstDLL
                .if(__uX_CPUFeatures_inited == false)
                    invoke _uX_CPUFeatures_init, 1
                .endif

            ;.case DLL_THREAD_ATTACH
            ;// Do thread-specific initialization.

            ;.case DLL_THREAD_DETACH
            ;// Do thread-specific cleanup.

            .case DLL_PROCESS_DETACH
            ;// Perform any necessary cleanup.
                .if(__uX_CPUFeatures_inited == true)
                    invoke _uX_CPUFeatures_destroy
                .endif

        .endsw

        mov         rret(),        true;  // Successful DLL_PROCESS_ATTACH

        ret
procend

    endif ;__windows__
endif ;__MIC__

    end
