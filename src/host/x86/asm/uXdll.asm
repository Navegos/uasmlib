
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
ifdef __windows__

alignstackfieldproc

.data?

.data

.const

.code
 
 .err <"TODO-KRAD move this to a proper system thread dynamic link">

;DllMain proto stdcall (dword) ;hModule:ptr, dwReason:dword, dwReserved:ptr

ifdef __x64__
    ifndef WINAPI
        define WINAPI, callconv, text
    endif
    ifndef WINAPIOPT
        define WINAPIOPT, callconvopt, text
    endif
endif

ifdef __x32__
    ifndef WINAPI
        define WINAPI, stdcall, text
    endif
    ifndef WINAPIOPT
        define WINAPIOPT, stdcallopt, text
    endif
endif

ifndef HINSTANCE
        define HINSTANCE, ptr size_t, text
endif

ifndef HMODULE
        define HMODULE, ptr size_t, text
endif

ifndef LPVOID
        define LPVOID, ptr, text
endif

ifndef DLL_PROCESS_ATTACH
    define DLL_PROCESS_ATTACH, 1
endif
ifndef DLL_THREAD_ATTACH
    define DLL_THREAD_ATTACH, 2
endif
ifndef DLL_THREAD_DETACH
    define DLL_THREAD_DETACH, 3
endif
ifndef DLL_PROCESS_DETACH
    define DLL_PROCESS_DETACH, 0
endif

OPTION SWITCHSTYLE:ASMSTYLE

ifdef __x64__
    define hinstDLL, rp0(), text
    define fdwReason, rp1(), text
    define lpReserved, rp2(), text
endif

ifdef __x32__
    define hinstDLL, [rp0()+4], text
    define fdwReason, [rp1()+8], text
    define lpReserved, [rp1()+12], text
endif

ifndef DisableThreadLibraryCalls
    DisableThreadLibraryCalls proto WINAPI (BOOL) :HMODULE
endif

ifndef __uX_CPUFeatures_inited
    externdef __uX_CPUFeatures_inited:dword
endif

ifndef _uX_CPUFeatures_init
    _uX_CPUFeatures_init proto callconv (void) :dword
endif

ifndef _uX_CPUFeatures_destroy
    _uX_CPUFeatures_destroy proto callconv (void)
endif

WINAPIOPT
;alignptrfieldproc

procstart DllMain, WINAPI, BOOL, < >, < >, _hinstDLL:HINSTANCE, _fdwReason:DWORD, _lpReserved:LPVOID
        ;// Perform actions based on the reason for calling.
        .switch fdwReason

            .case DLL_PROCESS_ATTACH
            ;// Initialize once for each new process.
            ;// Return FALSE to fail DLL load.
                ;//  For optimization.
                invoke DisableThreadLibraryCalls, hinstDLL
                ;.if(__uX_CPUFeatures_inited != true)
                ;    invoke _uX_CPUFeatures_init, 1
                ;.endif

            ;.case DLL_THREAD_ATTACH
            ;// Do thread-specific initialization.

            ;.case DLL_THREAD_DETACH
            ;// Do thread-specific cleanup.

            .case DLL_PROCESS_DETACH
            ;// Perform any necessary cleanup.
                ;.if(__uX_CPUFeatures_inited == true)
                ;    invoke _uX_CPUFeatures_destroy
                ;.endif
        .endsw

        mov         rret(),        true ;  // Successful DLL_PROCESS_ATTACH
        ret
procend

endif ;__windows__
endif ;__MIC__

end
