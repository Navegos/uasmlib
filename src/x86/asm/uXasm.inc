
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

uXstrvalue macro V0
    exitm %((V0) or (0))
endm

;include uXmacros.inc

ifdef __x32__
    .686p
    .model flat, c
endif
ifdef __x64__
    ifdef __windows__
    .x64p
    ;.win64
    option stackbase:rsp        ; RSP or RBP are supported options for the stackbase.
    option frame:auto           ; Default
    option win64:15             ; 11-15 for RSP and 1-7 for RBP.
    else
    .x64p
    ;.sysv64
    option stackbase:rbp        ; Default and the only possible for SYSV64
    option frame:auto           ; Default
    option sysv64:7             ; The max possible for SYSV64
    endif
endif
