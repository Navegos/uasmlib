
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

.xmm
option arch:avx
option evex:1

alignstackfieldproc

.data?

.data

    v1ci CacheBypassLimit,                  isize_t, 0

.const

.code

callconvopt

; Define prolog for this function
PROLOGM macro
ifdef  __windows__
        push        rsi
        push        rdi
        mov         rdi,        rcx               ;; dest
        mov         r9,         rcx               ;; dest
        mov         rsi,        rdx               ;; src
        mov         rcx,        r8                ;; count
else  ;; Unix
        mov         rcx,        rdx               ;; count
        mov         r9,         rdi               ;; dest
endif
endm

; Define return from this function
EPILOGM  macro
ifdef  __windows__
        pop         rdi
        pop         rsi
endif
        mov         rax,        r9                ; Return value = dest
        ret
endm

; Function entry
; rdi = dest
; rsi = src
; rcx = count
; r9  = dest

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
; AVX512BW Version for processors with fast unaligned read and fast 512 bits write
; Requires AVX512BW, BMI2
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

procstart _uX_memcpyAVX512BW, callconv, ptr, < >, < >, dest:ptr size_t, src:ptr size_t, count:size_t
;memcpyAVX512BW:                        ; global label
;memcpyAVX512BW@:                       ; local label
ifdef  __windows__
        push        rsi
        push        rdi
        mov         rdi,        rcx             ; dest
        mov         r9,         rcx             ; dest
        mov         rsi,        rdx             ; src
        mov         rcx,        r8              ; count
else  ;; Unix
        mov         rcx,        rdx             ; count
        mov         r9,         rdi             ; dest
endif

        cmp         rcx,        040H
        ;jbe         L000
        .if (!GREATER?)
        align 8
        ; Version for size <= 40H. Requires AVX512BW and BMI2
;L000:   
        mov         rax,        (-1)
        bzhi        rax,        rax,        rcx ; set mask k1 to move rcx bytes, at most 40H
        kmovq       k1,         rax
        vmovdqu8    zmm16{k1}{z},   [rsi]
        vmovdqu8    [rdi]{k1},      zmm16
        ; vzeroupper not needed if we use zmm16?
        jmp         _uX_memcpyAVX512BW_end
        .endif

        cmp         rcx,        080H
        ;jbe         L010
        .if (!GREATER?)
        align 8
        ; Version for size = 40H - 80H
;L010:   ; make two partially overlapping blocks
        vmovdqu64   zmm16,      [rsi]
        vmovdqu64   zmm17,      [rsi+rcx-40H]
        vmovdqu64   [rdi],      zmm16
        vmovdqu64   [rdi+rcx-40H], zmm17
        ; vzeroupper not needed if we use zmm16?
        jmp         _uX_memcpyAVX512BW_end
        .endif

L100:   ; count > 80H                           ; Entry from memcpyAVX512F
        vmovdqu64   zmm17,      [rsi]           ; save first possibly unaligned block to after main loop
        vmovdqu64   zmm18,      [rsi+rcx-40H]   ; save last  possibly unaligned block to after main loop

        add         rdi,        rcx             ; end of destination
        and         rdi,        (-40H)          ; round down to align by 40H
        mov         rdx,        rdi
        sub         rdx,        r9
        add         rsi,        rdx             ; end of main blocks of source
        and         rdx,        (-40H)          ; size of aligned blocks to copy

        ; Check if count is huge
        cmp         rdx, [CacheBypassLimit]
        ja          L500                        ; Use non-temporal store if count > CacheBypassLimit

        neg         rdx                         ; negative index from end of aligned blocks        
        ; align ?
L200:   ; main loop. Move 40H bytes at a time
        vmovdqu64   zmm16,      [rsi+rdx]
        vmovdqa64   [rdi+rdx],  zmm16
        add         rdx,        40H
        jnz         L200

L210:   ; insert remaining bytes at beginning and end, possibly overlapping main blocks
        vmovdqu64   [r9],       zmm17
        vmovdqu64   [r9+rcx-40H], zmm18
        ;vzeroupper not needed if we use zmm16-18
        EPILOGM

        align   16
L500:   ; Move 40H bytes at a time, non-temporal
        neg         rdx
L510:   
        vmovdqu64   zmm16,      [rsi+rdx]
        vmovntdq    [rdi+rdx],  zmm16
        add         rdx,        40H
        jnz         L510
        sfence
        jmp         L210

        _uX_memcpyAVX512BW_end:
ifdef  __windows__
        pop         rdi
        pop         rsi
endif
        mov         rax,        r9                ; Return value = dest
        ret
procend

end
