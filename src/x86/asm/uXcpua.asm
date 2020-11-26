
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
    
    input_datacachelevel                dword ?
    
    cpu_data_layout struct
        ok     dword 2 dup(?)
        level1 sise_t 1 dup(?)
        level2 sise_t 1 dup(?)
        level3 sise_t 1 dup(?)
        level4 sise_t 1 dup(?)
        descriptortable dword 60 dup(?)
    cpu_data_layout ends

    cpu_descriptor_record struct            ; record for table of cache descriptors
        d_key   dword 1 dup(?)          ; key from cpuid instruction
        d_level dword 1 dup(?)          ; cache level
        d_sizem dword 1 dup(?)          ; size multiplier
        d_2pow  dword 1 dup(?)          ; power of 2. size = d_sizem << d_2pow
    cpu_descriptor_record ends
        
.data
            ;align 16
            
    cpu_dataref label ptr sise_t                              ; reference point
        cpu_ok_       dd           0, 0                ; 1 when values are determined
        cpu_level1_   isise_t      0                   ; level 1 data cache size
        cpu_level2_   isise_t      0                   ; level 2 data cache size
        cpu_level3_   isise_t      0                   ; level 3 data cache size
        cpu_level4_   isise_t      0                   ; level 4 data cache size
    cpu_numlevels   equ            4                   ; max level

        ; From "Intel Processor Identification and the CPUID Instruction, Application note 485
        ; table of Intel cache descriptors
    cpu_descriptortable_ label byte
        db 0Ah, 1, 1, 13                       ; 8 kb L1 data cache
        db 0Ch, 1, 1, 14                       ; 16 kb L1 data cache
        db 0Dh, 1, 1, 14                       ; 16 kb L1 data cache
        db 21h, 2, 1, 18                       ; 256 kb L2 data cache
        db 22h, 3, 1, 19                       ; 512 kb L3 data cache
        db 23h, 3, 1, 20                       ; 1 Mb L3 data cache
        db 25h, 3, 1, 21                       ; 2 Mb L3 data cache
        db 29h, 3, 1, 22                       ; 4 Mb L3 data cache
        db 2Ch, 1, 1, 15                       ; 32 kb L1 data cache
        db 39h, 2, 1, 17                       ; 128 kb L2 data cache
        db 3Ah, 2, 3, 16                       ; 192 kb L2 data cache
        db 3Bh, 2, 1, 17                       ; 128 kb L1 data cache
        db 3Ch, 2, 1, 18                       ; 256 kb L1 data cache
        db 3Dh, 2, 3, 17                       ; 384 kb L2 data cache
        db 3Eh, 2, 1, 19                       ; 512 kb L2 data cache
        db 41h, 2, 1, 17                       ; 128 kb L2 data cache
        db 42h, 2, 1, 18                       ; 256 kb L2 data cache
        db 43h, 2, 1, 19                       ; 512 kb L2 data cache
        db 44h, 2, 1, 20                       ; 1 Mb L2 data cache
        db 45h, 2, 1, 21                       ; 2 Mb L2 data cache
        db 46h, 3, 1, 22                       ; 4 Mb L3 data cache
        db 47h, 3, 1, 23                       ; 8 Mb L3 data cache
        db 48h, 2, 3, 20                       ; 3 Mb L2 data cache
        db 49h, 2, 1, 22                       ; 4 Mb L2 or 3 data cache
        db 4Ah, 3, 3, 21                       ; 6 Mb L3 data cache
        db 4Bh, 3, 1, 23                       ; 8 Mb L3 data cache
        db 4Ch, 3, 3, 22                       ; 12 Mb L3 data cache
        db 4Dh, 3, 1, 24                       ; 16 Mb L3 data cache
        db 4Eh, 2, 3, 21                       ; 6 Mb L2 data cache
        db 60h, 1, 1, 14                       ; 16 kb L1 data cache
        db 66h, 1, 1, 13                       ; 8 kb L1 data cache
        db 67h, 1, 1, 14                       ; 16 kb L1 data cache
        db 68h, 1, 1, 15                       ; 32 kb L1 data cache
        db 78h, 2, 1, 20                       ; 1 Mb L2 data cache
        db 79h, 2, 1, 17                       ; 128 kb L2 data cache
        db 7Ah, 2, 1, 18                       ; 256 kb L2 data cache
        db 7Bh, 2, 1, 19                       ; 512 kb L2 data cache
        db 7Ch, 2, 1, 20                       ; 1 Mb L2 data cache
        db 7Dh, 2, 1, 21                       ; 2 Mb L2 data cache
        db 7Fh, 2, 1, 19                       ; 512 kb L2 data cache
        db 82h, 2, 1, 18                       ; 256 kb L2 data cache
        db 83h, 2, 1, 19                       ; 512 kb L2 data cache
        db 84h, 2, 1, 20                       ; 1 Mb L2 data cache
        db 85h, 2, 1, 21                       ; 2 Mb L2 data cache
        db 86h, 2, 1, 19                       ; 512 kb L2 data cache
        db 87h, 2, 1, 20                       ; 1 Mb L2 data cache
        db 0D0h, 3, 1, 19                      ; 512 kb L3 data cache
        db 0D1h, 3, 1, 20                      ; 1 Mb L3 data cache
        db 0D2h, 3, 1, 21                      ; 2 Mb L3 data cache
        db 0D6h, 3, 1, 20                      ; 1 Mb L3 data cache
        db 0D7h, 3, 1, 21                      ; 2 Mb L3 data cache
        db 0D8h, 3, 1, 22                      ; 4 Mb L3 data cache
        db 0DCh, 3, 3, 19                      ; 1.5 Mb L3 data cache
        db 0DDh, 3, 3, 20                      ; 3 Mb L3 data cache
        db 0DEh, 3, 3, 21                      ; 6 Mb L3 data cache
        db 0E2h, 3, 1, 21                      ; 2 Mb L3 data cache
        db 0E3h, 3, 1, 22                      ; 4 Mb L3 data cache
        db 0E4h, 3, 1, 23                      ; 8 Mb L3 data cache
        db 0EAh, 3, 3, 22                      ; 12 Mb L3 data cache
        db 0EBh, 3, 9, 21                      ; 18 Mb L3 data cache
        db 0ECh, 3, 3, 23                      ; 24 Mb L3 data cache
    cpu_descriptortablelength equ ($ - cpu_descriptortable_) / sizeof cpu_descriptor_record

        ;dlayout data_layout < >
        ;drecord descriptor_record < >
    
    ;.data
    ;       align 16

    ;_bss segment 'BSS'
    ;       align 16
            ;NameBuffer db 50H dup(0)             ; Static buffer to contain name
    ;_bss ends
    
    ;/* find supported instruction set
    ;return value:
    ;0           = 80386 instruction set
    ;8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
    ;9  or above = CMOV supported by CPU
    ;10  or above = SSE (XMM) supported by CPU and operating system
    ;20  or above = SSE2
    ;30  or above = SSE3
    ;31  or above = Supplementary SSE3 (SSSE3)
    ;41  or above = SSE4.1
    ;42  or above = SSE4.2 & POPCNT
    ;50  or above = AVX (YMM) supported by CPU and operating system
    ;51  or above = PCLMUL & AES
    ;52  or above = AVX2
    ;57 or above = FMA3, F16C, BMI1, BMI2, LZCNT
    ;60  or above = AVX512F (ZMM) supported by CPU and operating system
    ;61  or above = AVX512DQ
    ;62  or above = AVX512BW
    ;63  or above = AVX512VL
    ;*/
    v1ci __uX_CPUFeatures_intrinset,                    dd, 0
    
    ; /* EFLAGS %eax=00H, %ebx=00H */
    v1ci __uX_CPUFeatures_CPUID,                        dd, 0

    ; /* %eax=00H, %ecx */
    v1ci __uX_CPUFeatures_ntel,                         dd, 0   ; 'GenuineIntel'
    v1ci __uX_CPUFeatures_cAMD,                         dd, 0   ; 'AuthenticAMD'
    
    ; /* %eax=00H, %ebx */
    v1ci __uX_CPUFeatures_Cent,                         dd, 0   ; 'CentaurHauls'
    v1ci __uX_CPUFeatures_VIA,                          dd, 0   ; 'VIA VIA VIA'
    v1ci __uX_CPUFeatures_Cyri,                         dd, 0   ; 'CyrixInstead'
    v1ci __uX_CPUFeatures_NexG,                         dd, 0   ; 'NexGenDriven'

    ;/* %eax=01H, %ecx */
    v1ci __uX_CPUFeatures_SSE3,                         dd, 0
    v1ci __uX_CPUFeatures_PCLMULQDQ,                    dd, 0
    v1ci __uX_CPUFeatures_MONITOR,                      dd, 0
    v1ci __uX_CPUFeatures_SSSE3,                        dd, 0
    v1ci __uX_CPUFeatures_FMA,                          dd, 0
    v1ci __uX_CPUFeatures_CMPXCHG16B,                   dd, 0
    v1ci __uX_CPUFeatures_SSE41,                        dd, 0
    v1ci __uX_CPUFeatures_SSE42,                        dd, 0
    v1ci __uX_CPUFeatures_MOVBE,                        dd, 0
    v1ci __uX_CPUFeatures_POPCNT,                       dd, 0
    v1ci __uX_CPUFeatures_AES,                          dd, 0
    v1ci __uX_CPUFeatures_XSAVE,                        dd, 0
    v1ci __uX_CPUFeatures_OSXSAVE,                      dd, 0
    v1ci __uX_CPUFeatures_AVX,                          dd, 0
    v1ci __uX_CPUFeatures_F16C,                         dd, 0
    v1ci __uX_CPUFeatures_RDRAND,                       dd, 0

    ;/* %eax=01H, %edx */
    v1ci __uX_CPUFeatures_FPU,                          dd, 0
    v1ci __uX_CPUFeatures_TSC,                          dd, 0
    v1ci __uX_CPUFeatures_MSR,                          dd, 0
    v1ci __uX_CPUFeatures_CMPXCHG8B,                    dd, 0
    v1ci __uX_CPUFeatures_SEP,                          dd, 0
    v1ci __uX_CPUFeatures_CMOV,                         dd, 0
    v1ci __uX_CPUFeatures_CLFSH,                        dd, 0
    v1ci __uX_CPUFeatures_MMX,                          dd, 0
    v1ci __uX_CPUFeatures_FXSR,                         dd, 0
    v1ci __uX_CPUFeatures_SSE,                          dd, 0
    v1ci __uX_CPUFeatures_SSE2,                         dd, 0

    ;/* %eax=07H, %ebx */
    v1ci __uX_CPUFeatures_FSGSBASE,                     dd, 0
    v1ci __uX_CPUFeatures_SGX,                          dd, 0
    v1ci __uX_CPUFeatures_BMI1,                         dd, 0
    v1ci __uX_CPUFeatures_HLE,                          dd, 0
    v1ci __uX_CPUFeatures_AVX2,                         dd, 0
    v1ci __uX_CPUFeatures_SMEP,                         dd, 0
    v1ci __uX_CPUFeatures_BMI2,                         dd, 0
    v1ci __uX_CPUFeatures_ERMS,                         dd, 0
    v1ci __uX_CPUFeatures_INVPCID,                      dd, 0
    v1ci __uX_CPUFeatures_RTM,                          dd, 0
    v1ci __uX_CPUFeatures_MPX,                          dd, 0
    v1ci __uX_CPUFeatures_AVX512F,                      dd, 0
    v1ci __uX_CPUFeatures_AVX512DQ,                     dd, 0
    v1ci __uX_CPUFeatures_RDSEED,                       dd, 0
    v1ci __uX_CPUFeatures_ADX,                          dd, 0
    v1ci __uX_CPUFeatures_SMAP,                         dd, 0
    v1ci __uX_CPUFeatures_AVX512_IFMA,                  dd, 0
    v1ci __uX_CPUFeatures_CLFLUSHOPT,                   dd, 0
    v1ci __uX_CPUFeatures_CLWB,                         dd, 0
    v1ci __uX_CPUFeatures_AVX512PF,                     dd, 0
    v1ci __uX_CPUFeatures_AVX512ER,                     dd, 0
    v1ci __uX_CPUFeatures_AVX512CD,                     dd, 0
    v1ci __uX_CPUFeatures_SHA,                          dd, 0
    v1ci __uX_CPUFeatures_AVX512BW,                     dd, 0
    v1ci __uX_CPUFeatures_AVX512VL,                     dd, 0

    ;/* %eax=07H, %ecx */
    v1ci __uX_CPUFeatures_PREFETCHWT1,                  dd, 0
    v1ci __uX_CPUFeatures_AVX512_VBMI,                  dd, 0
    v1ci __uX_CPUFeatures_UMIP,                         dd, 0
    v1ci __uX_CPUFeatures_PKU,                          dd, 0
    v1ci __uX_CPUFeatures_OSPKE,                        dd, 0
    v1ci __uX_CPUFeatures_AVX512_VBMI2,                 dd, 0
    v1ci __uX_CPUFeatures_GFNI,                         dd, 0
    v1ci __uX_CPUFeatures_VAES,                         dd, 0
    v1ci __uX_CPUFeatures_VPCLMULQDQ,                   dd, 0
    v1ci __uX_CPUFeatures_AVX512_VNNI,                  dd, 0
    v1ci __uX_CPUFeatures_AVX512_BITALG,                dd, 0
    v1ci __uX_CPUFeatures_AVX512_VPOPCNTDQ,             dd, 0
    v1ci __uX_CPUFeatures_RDPID,                        dd, 0

    ;/* %eax=07H, %edx */
    v1ci __uX_CPUFeatures_AVX512_4VNNIW,                dd, 0
    v1ci __uX_CPUFeatures_AVX512_4FMAPS,                dd, 0

    ;/* %eax=80000001H, %ecx */
    v1ci __uX_CPUFeatures_LAHF,                         dd, 0
    v1ci __uX_CPUFeatures_LZCNT,                        dd, 0
    v1ci __uX_CPUFeatures_ABM,                          dd, 0
    v1ci __uX_CPUFeatures_SSE4a,                        dd, 0
    v1ci __uX_CPUFeatures_PREFETCHW,                    dd, 0
    v1ci __uX_CPUFeatures_XOP,                          dd, 0
    v1ci __uX_CPUFeatures_LWP,                          dd, 0
    v1ci __uX_CPUFeatures_FMA4,                         dd, 0
    v1ci __uX_CPUFeatures_TBM,                          dd, 0
    v1ci __uX_CPUFeatures_MWAITX,                       dd, 0

    ;/* %eax=80000001H, %edx */
    v1ci __uX_CPUFeatures_SYSCALL,                      dd, 0
    v1ci __uX_CPUFeatures_MMXEXT,                       dd, 0
    v1ci __uX_CPUFeatures_RDTSCP,                       dd, 0
    v1ci __uX_CPUFeatures_3DNOWEXT,                     dd, 0
    v1ci __uX_CPUFeatures_3DNOW,                        dd, 0

    ;/* %eax=07H, %ebx, %ecx */
    v1ci __uX_CPUFeatures_AVX512_GFNI,                  dd, 0
    v1ci __uX_CPUFeatures_AVX512_GFNI_VL,               dd, 0
    v1ci __uX_CPUFeatures_AVX512_VAES,                  dd, 0
    v1ci __uX_CPUFeatures_AVX512_VAES_VL,               dd, 0
    v1ci __uX_CPUFeatures_AVX512_VPCLMULQDQ,            dd, 0
    v1ci __uX_CPUFeatures_AVX512_VPCLMULQDQ_VL,         dd, 0

    v1ci __uX_CPUFeatures_AVX512_IFMA_VL,               dd, 0
    v1ci __uX_CPUFeatures_AVX512_VBMI_VL,               dd, 0
    v1ci __uX_CPUFeatures_AVX512_VBMI2_VL,              dd, 0
    v1ci __uX_CPUFeatures_AVX512_VNNI_VL,               dd, 0
    v1ci __uX_CPUFeatures_AVX512_BITALG_VL,             dd, 0
    v1ci __uX_CPUFeatures_AVX512_VPOPCNTDQ_VL,          dd, 0

    v1ci __uX_CPUFeatures_AVX512BW_GFNI,                dd, 0
    v1ci __uX_CPUFeatures_AVX512BW_GFNI_VL,             dd, 0
    v1ci __uX_CPUFeatures_AVX512BW_VAES,                dd, 0
    v1ci __uX_CPUFeatures_AVX512BW_VAES_VL,             dd, 0
    v1ci __uX_CPUFeatures_AVX512BW_VPCLMULQDQ,          dd, 0
    v1ci __uX_CPUFeatures_AVX512BW_VPCLMULQDQ_VL,       dd, 0
    v1ci __uX_CPUFeatures_AVX512BW_VL,                  dd, 0

    v1ci __uX_CPUFeatures_AVX512DQ_GFNI,                dd, 0
    v1ci __uX_CPUFeatures_AVX512DQ_GFNI_VL,             dd, 0
    v1ci __uX_CPUFeatures_AVX512DQ_VAES,                dd, 0
    v1ci __uX_CPUFeatures_AVX512DQ_VAES_VL,             dd, 0
    v1ci __uX_CPUFeatures_AVX512DQ_VPCLMULQDQ,          dd, 0
    v1ci __uX_CPUFeatures_AVX512DQ_VPCLMULQDQ_VL,       dd, 0
    v1ci __uX_CPUFeatures_AVX512DQ_VL,                  dd, 0

    v1ci __uX_CPUFeatures_AVX512CD_VL,                  dd, 0

    ;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
    v1ci __uX_CPUFeatures_SSE_AES,                      dd, 0
    v1ci __uX_CPUFeatures_SSE_GFNI,                     dd, 0
    v1ci __uX_CPUFeatures_SSE_PCLMULQDQ,                dd, 0
    v1ci __uX_CPUFeatures_SSE2_AES,                     dd, 0
    v1ci __uX_CPUFeatures_SSE2_GFNI,                    dd, 0
    v1ci __uX_CPUFeatures_SSE2_PCLMULQDQ,               dd, 0
    v1ci __uX_CPUFeatures_SSE3_AES,                     dd, 0
    v1ci __uX_CPUFeatures_SSE3_GFNI,                    dd, 0
    v1ci __uX_CPUFeatures_SSE3_PCLMULQDQ,               dd, 0
    v1ci __uX_CPUFeatures_SSSE3_AES,                    dd, 0
    v1ci __uX_CPUFeatures_SSSE3_GFNI,                   dd, 0
    v1ci __uX_CPUFeatures_SSSE3_PCLMULQDQ,              dd, 0
    v1ci __uX_CPUFeatures_SSE41_AES,                    dd, 0
    v1ci __uX_CPUFeatures_SSE41_GFNI,                   dd, 0
    v1ci __uX_CPUFeatures_SSE41_PCLMULQDQ,              dd, 0
    v1ci __uX_CPUFeatures_SSE42_AES,                    dd, 0
    v1ci __uX_CPUFeatures_SSE42_GFNI,                   dd, 0
    v1ci __uX_CPUFeatures_SSE42_PCLMULQDQ,              dd, 0
    v1ci __uX_CPUFeatures_AVX_AES,                      dd, 0
    v1ci __uX_CPUFeatures_AVX_GFNI,                     dd, 0
    v1ci __uX_CPUFeatures_AVX_PCLMULQDQ,                dd, 0
    v1ci __uX_CPUFeatures_AVX_VAES,                     dd, 0
    v1ci __uX_CPUFeatures_AVX_VPCLMULQDQ,               dd, 0
    v1ci __uX_CPUFeatures_AVX2_AES,                     dd, 0
    v1ci __uX_CPUFeatures_AVX2_GFNI,                    dd, 0
    v1ci __uX_CPUFeatures_AVX2_PCLMULQDQ,               dd, 0
    v1ci __uX_CPUFeatures_AVX2_VAES,                    dd, 0
    v1ci __uX_CPUFeatures_AVX2_VPCLMULQDQ,              dd, 0

    v1ci __uX_CPUFeatures_enabled_XMM,                  dd, 0
    v1ci __uX_CPUFeatures_enabled_YMM,                  dd, 0
    v1ci __uX_CPUFeatures_enabled_ZMM,                  dd, 0
    
    v1ci __uX_CPUFeatures_inited,                       dd, 0
        
    v1ci __uX_CPUFeatures_vendor,                       dd, 0
    v1ci __uX_CPUFeatures_family,                       dd, 0
    v1ci __uX_CPUFeatures_model,                        dd, 0
    
    v1ci __uX_CPUFeatures_ProcessorName,                db, 50H dup(0)
    
    v1ci __uX_CPUFeatures_infolevel,                    dd, 0
        
    v1ci __uX_CPUFeatures_DataCacheSize,                isize_t, 0
        
    v1ci __uX_CPUFeatures_0H_EBX,                       dd, 0
    v1ci __uX_CPUFeatures_0H_ECX,                       dd, 0
    v1ci __uX_CPUFeatures_1H_ECX,                       dd, 0
    v1ci __uX_CPUFeatures_1H_EDX,                       dd, 0
    v1ci __uX_CPUFeatures_7H_EBX,                       dd, 0
    v1ci __uX_CPUFeatures_7H_ECX,                       dd, 0
    v1ci __uX_CPUFeatures_7H_EDX,                       dd, 0
    v1ci __uX_CPUFeatures_80000001H_ECX,                dd, 0
    v1ci __uX_CPUFeatures_80000001H_EDX,                dd, 0
    
.const
    
.code
    
callconvopt
;alignsize_tfieldproc
    
ifndef _CLASS_uXCPUFEATURES
_CLASS_uXCPUFEATURES equ 1

; Constructor
procstart _uX_CPUFeatures_init, callconv, void, < >, uses rbase(), infolevel:dword
    ifdef __x32__
            push                edi
            push                esi
            define r00ecx, edi, text
            define r01edx, esi, text
            define r07ebx, edi, text
            define r01ecx, esi, text
            define r07ecx, edi, text
            define r81ecx, esi, text
            define r81edx, edi, text
            define r07edx, esi, text
    endif
    ifdef __x64__
        ifdef __windows__
            push                rdi
            push                rsi
            define r00ecx, edi, text
        else            
            define r00ecx, r8d, text
        endif
            push                r11
            push                r12
            push                r14
            push                r15
            define r01edx, esi, text
            define r07ebx, r8d, text
            define r01ecx, r9d, text
            define r07ecx, r11d, text
            define r81ecx, r12d, text
            define r81edx, r14d, text
            define r07edx, r15d, text
    endif
    
    ifdef __x32__
        ifdef __windows__
            mov     __uX_CPUFeatures_infolevel,       dp0()
            xor             dp0(),                    dp0()
        endif
        ifdef __unix__
            mov     __uX_CPUFeatures_infolevel,       infolevel
            ;mov             [dp0()+4],                null
        endif
    endif
    ifdef __x64__
            mov     __uX_CPUFeatures_infolevel,       dp0()
            xor             dp0(),                    dp0()
    endif

    ifdef __x32__
            push                ebx
            ; detect if cpuidinstruction supported by microprocessor:
            pushfd
            pop                 eax
            btc                 eax,                    21                  ; check if cpuidbit can toggle
            push                eax
            popfd
            pushfd
            pop                 ebx
            xor                 eax,                    ebx
            bt                  eax,                    21
            jc                  not_supported                               ; cpuidnot supported
            xor                 eax,                    eax                 ; 0
            ; /* %eax=00H, %ecx %ebx */
            mov     __uX_CPUFeatures_CPUID,             true

            cpuid                                                           ; get number of cpuidfunctions
            test                eax,                    eax
            jz                  not_supported                               ; function 1 not supported
            pop                 eax
    endif
    ifdef __x64__
            ; /* %eax=00H, %ecx %ebx */
            mov     __uX_CPUFeatures_CPUID,             true
    endif

            mov     __uX_CPUFeatures_inited,            true

    ifdef __x32__
            push                eax
            push                ebx
            push                ecx
            push                edx
    endif
    ifdef __x64__
            push                rax
            push                rbx
            push                rcx
            push                rdx
    endif
            mov                 eax,                    0H
            cpuid
            mov     __uX_CPUFeatures_0H_EBX,            ebx
            mov     __uX_CPUFeatures_0H_ECX,            ecx
    ifdef __x32__
            pop                 edx
            pop                 ecx
            pop                 ebx
            pop                 eax
    endif
    ifdef __x64__
            pop                 rdx
            pop                 rcx
            pop                 rbx
            pop                 rax
    endif
            
    ifdef __x32__
            push                eax
            push                ebx
            push                ecx
            push                edx
    endif
    ifdef __x64__
            push                rax
            push                rbx
            push                rcx
            push                rdx
    endif
            mov                 eax,                    1H
            cpuid
            mov     __uX_CPUFeatures_1H_ECX,            ecx
            mov     __uX_CPUFeatures_1H_EDX,            edx
    ifdef __x32__
            pop                 edx
            pop                 ecx
            pop                 ebx
            pop                 eax
    endif
    ifdef __x64__
            pop                 rdx
            pop                 rcx
            pop                 rbx
            pop                 rax
    endif

    ifdef __x32__
            push                eax
            push                ebx
            push                ecx
            push                edx
    endif
    ifdef __x64__
            push                rax
            push                rbx
            push                rcx
            push                rdx
    endif
            mov                 eax,                    7H
            xor                 ecx,                    ecx
            cpuid
            mov     __uX_CPUFeatures_7H_EBX,            ebx
            mov     __uX_CPUFeatures_7H_ECX,            ecx
            mov     __uX_CPUFeatures_7H_EDX,            edx
    ifdef __x32__
            pop                 edx
            pop                 ecx
            pop                 ebx
            pop                 eax
    endif
    ifdef __x64__
            pop                 rdx
            pop                 rcx
            pop                 rbx
            pop                 rax
    endif
    
    ifdef __x32__
            push                eax
            push                ebx
            push                ecx
            push                edx
    endif
    ifdef __x64__
            push                rax
            push                rbx
            push                rcx
            push                rdx
    endif
            mov                 eax,                    80000001H
            cpuid
            mov     __uX_CPUFeatures_80000001H_ECX,     ecx
            mov     __uX_CPUFeatures_80000001H_EDX,     edx
    ifdef __x32__
            pop                 edx
            pop                 ecx
            pop                 ebx
            pop                 eax
    endif
    ifdef __x64__
            pop                 rdx
            pop                 rcx
            pop                 rbx
            pop                 rax
    endif
    
            mov                 r00ecx,     __uX_CPUFeatures_0H_ECX

            cmp                 r00ecx,                 BIT_NTEL            ; 'GenuineIntel'
            .if (EQUAL?)
            mov     __uX_CPUFeatures_ntel,              true
            je                  bvendor
            .endif
        
            cmp                 r00ecx,                 BIT_CAMD            ; 'AuthenticAMD'
            .if (EQUAL?)
            mov     __uX_CPUFeatures_cAMD,              true
            je                  bvendor
            .endif
            
            mov                 r00ecx,     __uX_CPUFeatures_0H_EBX
            cmp                 r00ecx,                 BIT_CENT            ; 'CentaurHauls'
            .if (EQUAL?)
            mov     __uX_CPUFeatures_Cent,              true
            je                  bvendor
            .endif
        
            cmp                 r00ecx,                 BIT_VIA             ; 'VIA VIA VIA'
            .if (EQUAL?)
            mov     __uX_CPUFeatures_VIA,               true
            je                  bvendor
            .endif
        
            cmp                 r00ecx,                 BIT_CYRI            ; 'CyrixInstead'
            .if (EQUAL?)
            mov     __uX_CPUFeatures_Cyri,              true
            je                  bvendor
            .endif
        
            cmp                 r00ecx,                 BIT_NEXG            ; 'NexGenDriven'
            .if (EQUAL?)
            mov     __uX_CPUFeatures_NexG,              true
            ;je                 bvendor
            .endif

    bvendor:
            .if (__uX_CPUFeatures_infolevel >= 1) ;infolevel >= 1
    ifdef __x32__
                define efamily, edi, text
                define emodel, ebx, text
    endif
    ifdef __x64__
                define efamily, r8d, text
                define emodel, r9d, text
    endif

                .if (__uX_CPUFeatures_ntel == true)
                mov     __uX_CPUFeatures_vendor,            1
                .endif

                .if (__uX_CPUFeatures_cAMD == true)
                mov     __uX_CPUFeatures_vendor,            2
                .endif

                .if (__uX_CPUFeatures_Cent == true)
                mov     __uX_CPUFeatures_vendor,            3
                .endif

                .if (__uX_CPUFeatures_VIA == true)
                mov     __uX_CPUFeatures_vendor,            3
                .endif

                .if (__uX_CPUFeatures_Cyri == true)
                mov     __uX_CPUFeatures_vendor,            4
                .endif

                .if (__uX_CPUFeatures_NexG == true)
                mov     __uX_CPUFeatures_vendor,            5
                .endif

    ifdef __x32__
                push                eax
                push                ebx
                push                ecx
                push                edx
    endif
    ifdef __x64__
                push                rax
                push                rbx
                push                rcx
                push                rdx
    endif

                ; Get family and model
                mov                 eax,                    1H
                cpuid
                mov                 ebx,                    eax

                mov                 efamily,                eax

                shr                 ebx,                    8
                and                 ebx,                    0FH               ; Family
            
                shr                 efamily,                20
                and                 efamily,                0FFH             ; Extended family
                add                 efamily,                ebx              ; Family + extended family
        
                mov                 emodel,                 eax
                shr                 emodel,                 4
                and                 emodel,                 0FH              ; Model

    ifdef __x32__
                mov                 ecx,                    eax
                shr                 ecx,                    12
                and                 ecx,                    0F0H             ; Extended model
                or                  emodel,                 ecx              ; extended model | Model
    endif
    ifdef __x64__
                shr                 eax,                    12
                and                 eax,                    0F0H              ; Extended model
                or                  emodel,                 eax              ; extended model | Model
    endif ;__x64__
    
                mov     __uX_CPUFeatures_family,            efamily
                mov     __uX_CPUFeatures_model,             emodel
                
                xor                 eax,                    eax
                xor                 ebx,                    ebx
                xor                 ecx,                    ecx

    ifdef __x32__
                pop                 edx
                pop                 ecx
                pop                 ebx
                pop                 eax
    endif
    ifdef __x64__
                pop                 rdx
                pop                 rcx
                pop                 rbx
                pop                 rax
    endif

    ifdef __x32__
                push                eax
                push                ebx
                push                ecx
                push                edx
                push                edi
                define rdest, edi, text
    endif
    ifdef __x64__
                push                rax
                push                rbx
                push                rcx
                push                rdx
                push                rdi
                define rdest, rdi, text
    endif
    
    ifdef __x32__
                mov                 rdest,                  __uX_CPUFeatures_ProcessorName        ; Pointer to result
    endif
    ifdef __x64__
                lea                 rdest,                  [__uX_CPUFeatures_ProcessorName]      ; text pointer
    endif

    ifdef __x32__
                .if (__uX_CPUFeatures_CPUID == false)
        ; processor has no CPUID
                mov     dword ptr [rdest],                  '8038'    ; Write text '80386 or 80486'
                mov     dword ptr [rdest+4],                '6 or'
                mov     dword ptr [rdest+8],                ' 804'
                mov     dword ptr [rdest+12],               '86'   ; End with 0
                jmp         PNEND
                .endif
    endif

                mov                 eax,                    80000000H
                cpuid
                cmp                 eax,                    80000004H         ; text if extended vendor string available
                jb                  no_ext_vendor_string

            ; Has extended vendor string
                mov                 eax,                    80000002H
                cpuid
                mov                 [rdest],                eax             ; store 16 bytes of extended vendor string
                mov                 [rdest+4],              ebx
                mov                 [rdest+8],              ecx
                mov                 [rdest+0CH],            edx
                mov                 eax,                    80000003H
                cpuid
                mov                 [rdest+10H],            eax         ; next 16 bytes
                mov                 [rdest+14H],            ebx
                mov                 [rdest+18H],            ecx
                mov                 [rdest+1CH],            edx
                mov                 eax,                    80000004H
                cpuid
                mov                 [rdest+20H],            eax         ; next 16 bytes
                mov                 [rdest+24H],            ebx
                mov                 [rdest+28H],            ecx
                mov                 [rdest+2CH],            edx
                jmp                 get_family_and_model

no_ext_vendor_string:
        ; No extended vendor string. Get short vendor string
                xor                 eax,                    eax
                cpuid
                mov                 [rdest],                ebx              ; store short vendor string
                mov                 [rdest+4],              edx
                mov                 [rdest+8],              ecx
                mov         byte ptr [rdest+12],            0    ; terminate string
        
get_family_and_model:
    ifdef __x32__
                push                rdest                   ; Save string address
    endif
                xor                 eax,                    eax
                mov                 ecx,                    30H
                cld
                repne               scasb                  ; find end of text
                dec                 rdest
        
                mov     dword ptr [rdest],                  ' Fam'   ; Append text " Family "
                mov     dword ptr [rdest+4],                'ily '
                add                 rdest,                  8

                mov                 eax,                    1
                cpuid                          ; Get family and model
                mov                 ebx,                    eax
                mov                 ecx,                    eax
                shr                 eax,                    8
                and                 eax,                    0FH               ; Family
                shr                 ecx,                    20
                and                 ecx,                    0FFH              ; Extended family
                add                 eax,                    ecx               ; Family + extended family
                call                _uX_CPUFeatures_WriteHex               ; Write as hexadecimal

                mov     dword ptr [rdest],                  'H Mo' ; Write text "H Model "
                mov     dword ptr [rdest+4],                'del '
                add                 rdest,                  8
        
                mov                 eax,                    ebx
                shr                 eax,                    4
                and                 eax,                    0FH               ; Model
                mov                 ecx,                    ebx
                shr                 ecx,                    12
                and                 ecx,                    0F0H              ; Extended model
                or                  eax,                    ecx               ; Model | extended model
                call                _uX_CPUFeatures_WriteHex               ; Write as hexadecimal

                mov     dword ptr [rdest],                  'H'       ; Write text "H"
        
    ifdef __x32__
                pop                 rdest                    ; Restore string address
    endif
    
    ifdef __x32__
                mov     __uX_CPUFeatures_ProcessorName,     rdest        ; Pointer to result
    endif
    
PNEND:  ; finished
                xor                 eax,                    eax
                xor                 ebx,                    ebx
                xor                 ecx,                    ecx

                pop                 rdest

    ifdef __x32__
                pop                 edx
                pop                 ecx
                pop                 ebx
                pop                 eax
    endif
    ifdef __x64__
                pop                 rdx
                pop                 rcx
                pop                 rbx
                pop                 rax
    endif

    ifdef __x32__
                push                eax
                push                ebx
                push                ecx
                push                edx
                push                edi
                push                esi
                push                ebp
                push                esp
    endif
    ifdef __x64__
                push                rax
                push                rbx
                push                rcx
                push                rdx
                push                rdi
                push                rsi
                push                rbp
                push                rsp
    endif
    
    ;ifdef __x32__
                ;rret()        textequ     <eax>
                ;rsidx()      textequ     <esi>
                ;rlevel     textequ     <ebp>
    ;else   
        ;ifdef __windows__
    ; -> The proc arguments conform to vectorcall calling convention: rcx=thisPtr, rdx=level
          ;      rcpup1 textequ     <rcx>
          ;      rcpup2 textequ     <rdx>
          ;      rcpup3 textequ     <r8>                
                
        ;else ;UNIX

    ; -> The proc arguments conform to systemv calling convention: rdi=thisPtr, rsi=level
        ;        rcpup1 textequ     <rdi>
        ;        rcpup2 textequ     <rsi>
        ;        rcpup3 textequ     <rdx>
                
       ; endif ;__windows__ 
        
                ;rret()        textequ     <rax>
                ;rsidx()      textequ     <rsi>
                ;rlevel     textequ     <rbp>
    ;endif ;__x64__
    
                ;elevel     textequ     <ebp>

                mov                 ddidx(),              input_datacachelevel              ; level               

        ; check if called before
    ifdef __x32__
                mov                 rsidx(),              cpu_dataref      ; point to dataref
    endif
    ifdef __x64__
                lea                 rsidx(),              [cpu_dataref]      ; point to dataref
    endif ;__x64__
                cmp dword ptr [rsidx()+cpu_data_layout.ok], 1       ; ok
                je                  D800
        
        ; find cpu vendor
                push                0
    ifdef __x32__
                mov                 eax,                    esp
                push                0
                push                0
                push                eax
    endif
    ifdef __x64__
                mov                 rp0(),                rsp
                xor                 rp1(),            rp1()
                xor                 rp2(),            rp2()
    endif ;__x64__
            
    ; -> The proc arguments conform to vectorcall calling convention: rcx=thisPtr, rdx=vendor, r8=family, r9=model
    ; -> The proc arguments conform to systemv calling convention: rdi=thisPtr, rsi=vendor, rdx=family, rcx=mode
                call                _uX_CPUFeatures_CpuType
    ifdef __x32__
                mov                 rsidx(),              cpu_dataref      ; point to dataref
                add                 esp,                    12
    endif
    ifdef __x64__
                lea                 rsidx(),              [cpu_dataref]
    endif ;__x64__
                pop                 rret()                    ; eax = vendor
                dec                 eax
                jz                  Intel
                dec                 eax
                jz                  AMD
                dec                 eax
                jz                  VIA
        ; unknown vendor, try all methods
                call                _uX_CPUFeatures_IntelNewMethod
                jnc                 D800                   ; not carry = success
                call                _uX_CPUFeatures_AMDMethod
                jnc                 D800                   ; not carry = success
                call                _uX_CPUFeatures_IntelOldMethod
                jmp                 D800                   ; return whether success or not
        
Intel:  
                call                _uX_CPUFeatures_IntelNewMethod
                jnc                 D800                   ; not carry = success
                call                _uX_CPUFeatures_IntelOldMethod
                jmp                 D800                   ; return whether success or not

AMD:    ; AMD and VIA use same method
VIA:    
                call                _uX_CPUFeatures_AMDMethod
        
D800:   ; cache data known, get desired return value
                xor                 eax,                    eax
                cmp                 ddidx(),                  cpu_numlevels
                ja                  D900
                cmp                 ddidx(),                  0
                je                  D820
        ; level = 1 .. numlevels
                mov                 rret(),                [rsidx() + rdidx()*reg_size]            ; size of selected cache
                jmp                 D850
D820:   ; level = 0. Get size of largest level cache
                mov                 rret(),                [rsidx() + cpu_data_layout.level3]     ; level3
                test                rret(),                rret()
                jnz                 D850
                mov                 rret(),                [rsidx() + cpu_data_layout.level2]     ; level2
                test                rret(),                rret()
                jnz                 D850
                mov                 rret(),                [rsidx() + cpu_data_layout.level1]     ; level1
D850:       
                mov     dword ptr [rsidx() + cpu_data_layout.ok],     1     ; remember called, whether success or not
                mov     __uX_CPUFeatures_DataCacheSize,     rret()
D900:   

    ifdef __x32__
                pop                 esp
                pop                 ebp
                pop                 esi
                pop                 edi
                pop                 edx
                pop                 ecx
                pop                 ebx
                pop                 eax
    endif
    ifdef __x64__
                pop                 rsp
                pop                 rbp
                pop                 rsi
                pop                 rdi
                pop                 rdx
                pop                 rcx
                pop                 rbx
                pop                 rax
    endif

            .endif ;infolevel >= 1

            mov                 r01edx,     __uX_CPUFeatures_1H_EDX

    ifdef __x64__           
            mov                 r07ebx,     __uX_CPUFeatures_7H_EBX
            mov                 r01ecx,     __uX_CPUFeatures_1H_ECX
            mov                 r07ecx,     __uX_CPUFeatures_7H_ECX
            mov                 r81ecx,     __uX_CPUFeatures_80000001H_ECX
            mov                 r81edx,     __uX_CPUFeatures_80000001H_EDX
            mov                 r07edx,     __uX_CPUFeatures_7H_EDX
    endif

    ifdef __x32__
            ;/* %eax=01H, %edx */
            test                r01edx,                 1                   ; FPU support by microprocessor
            jz                  not_supported
            mov     __uX_CPUFeatures_FPU,               true
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 4                   ; TSC READTSC support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_TSC,               true
            .endif
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 5                   ; MSR support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_MSR,               true
            .endif
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 8                   ; CMPXCHG8B support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_CMPXCHG8B,         true
            .endif
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 23                  ; MMX support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         8                   ; 8
            mov     __uX_CPUFeatures_MMX,               true
            
            .if (__uX_CPUFeatures_cAMD == true)
            mov                 r00ecx,     __uX_CPUFeatures_80000001H_EDX
            ; /* %eax=80000001H, %edx */
            bt                  r00ecx,                 22                  ; MMXEXT support by microprocessor          
            .if (CARRY?)
            mov     __uX_CPUFeatures_MMXEXT,            true
            .endif
            
            ; /* %eax=80000001H, %edx */
            bt                  r00ecx,                 31                  ; 3DNOW support by microprocessor           
            .if (CARRY?)
            mov     __uX_CPUFeatures_3DNOW,             true
            .endif
            
            ; /* %eax=80000001H, %edx */
            bt                  r00ecx,                 30                  ; 3DNOWEXT support by microprocessor            
            .if (CARRY?)
            mov     __uX_CPUFeatures_3DNOWEXT,          true
            .endif
            .endif ;cAMD
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 15                  ; CMOV support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         9                   ; 9
            mov     __uX_CPUFeatures_CMOV,              true
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 24                  ; FXSR support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_FXSR,              true
            
            push                ebx
            push                ecx
            push                edx
            mov                 ebx,                    esp                 ; save stack pointer
            sub                 esp,                    200H                ; allocate space for FXSAVE
            and                 esp,                    -10H                ; align by 16
TESTDATA EQU 0D95A34BEH                                                     ; random test value
TESTPS   EQU 10CH                                                           ; position to write TESTDATA = upper part of XMM6 image
            fxsave              [esp]                                       ; save FP/MMX and XMM registers
            mov                 ecx,                    [esp+TESTPS]        ; read part of XMM6 register
            xor                 DWORD [esp+TESTPS],     TESTDATA            ; change value
            fxrstor             [esp]                                       ; load changed value into XMM6
            mov                 [esp+TESTPS],           ecx                 ; restore old value in buffer
            fxsave              [esp]                                       ; save again
            mov                 edx,                    [esp+TESTPS]        ; read changed XMM6 register
            mov                 [esp+TESTPS],           ecx                 ; restore old value
            fxrstor             [esp]                                       ; load old value into XMM6
            xor                 ecx,                    edx                 ; get difference between old and new value
            mov                 esp,                    ebx                 ; restore stack pointer
            cmp                 ecx,                    TESTDATA            ; test if XMM6 was changed correctly
            pop                 edx
            pop                 ecx
            pop                 ebx
            jne                 not_supported
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 25                  ; SSE support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         10                  ; 10
            mov     __uX_CPUFeatures_SSE,               true
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 11                   ; SEP support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_SEP,               true
            .endif

            ;/* %eax=01H, %edx */
            bt                  r01edx,                 26                   ; SSE2 support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         20                  ; 20
            mov     __uX_CPUFeatures_SSE2,              true
    endif
    ifdef __x64__
            mov     __uX_CPUFeatures_intrinset,         20                   ; at least SSE2 supported in 64 bit mode
            mov     __uX_CPUFeatures_FPU,               true
            .if (__uX_CPUFeatures_cAMD == true)
            mov     __uX_CPUFeatures_3DNOW,             true
            mov     __uX_CPUFeatures_MMXEXT,            true
            mov     __uX_CPUFeatures_3DNOWEXT,          true
            .endif
            mov     __uX_CPUFeatures_CMPXCHG8B,         true
            mov     __uX_CPUFeatures_CMOV,              true
            mov     __uX_CPUFeatures_MMX,               true
            mov     __uX_CPUFeatures_FXSR,              true
            mov     __uX_CPUFeatures_enabled_XMM,       true
            mov     __uX_CPUFeatures_SSE,               true
            mov     __uX_CPUFeatures_SSE2,              true
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 4                    ; TSC READTSC support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_TSC,               true
            .endif
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 5                    ; MSR support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_MSR,               true
            .endif
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 11                  ; SEP support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_SEP,               true
            .endif
    endif ;__x64__

            ;/* %eax=01H, %edx */
            bt                  r01edx,                 19                 ; CLFSH support by microprocessor (SSE2)
            .if (CARRY?)
            mov     __uX_CPUFeatures_CLFSH,             true
            .endif

    ifdef __x32__      
            mov                 r07ebx,     __uX_CPUFeatures_7H_EBX
            mov                 r01ecx,     __uX_CPUFeatures_1H_ECX
    endif ;__x64__

            ;/* %eax=07H, %ebx */
            test                r07ebx,                 1                   ; FSGSBASE support by microprocessor
            .if (!ZERO?)
            mov     __uX_CPUFeatures_FSGSBASE,          true
            .endif

            ;/* %eax=01H, %ecx */
            test                r01ecx,                 1                   ; SSE3 support by microprocessor
            jz                  not_supported
            mov     __uX_CPUFeatures_intrinset,         30                  ; 30
            mov     __uX_CPUFeatures_SSE3,              true
        
            ;/* %eax=01H, %ecx */   
            bt                  r01ecx,                 3                   ; MONITOR support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_MONITOR,           true
            .endif
        
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 9                   ; Supplementary SSE3 (SSSE3) support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         31                  ; 31
            mov     __uX_CPUFeatures_SSSE3,             true
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 13                  ; CMPXCHG16B support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_CMPXCHG16B,        true
            .endif          
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 19                  ; SSE4.1 support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         41                  ; 41
            mov     __uX_CPUFeatures_SSE41,             true
        
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 23                  ; POPCNT support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_POPCNT,            true
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 20                  ; SSE4.2 support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         42                  ; 42
            mov     __uX_CPUFeatures_SSE42,             true
        
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 1                   ; PCLMUL support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_PCLMULQDQ,         true 
            .endif     
        
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 22                  ; MOVBE support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_MOVBE,             true
            .endif
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 25                  ; AES support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AES,               true
            .endif
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 30                  ; RDRAND support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_RDRAND,            true
            .endif
            
            ;/* %eax=07H, %ebx */
            .if (__uX_CPUFeatures_ntel == true)
            bt                  r07ebx,                 2                   ; SGX support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_SGX,               true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 4                   ; HLE support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_HLE,               true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 7                   ; SMEP support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_SMEP,              true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 9                   ; ERMS support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_ERMS,              true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 10                  ; INVPCID support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_INVPCID,           true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 11                  ; RTM support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_RTM,               true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 14                  ; MPX support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_MPX,               true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 18                  ; RDSEED support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_RDSEED,            true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 19                  ; ADX support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_ADX,               true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 20                  ; SMAP support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_SMAP,              true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 23                  ; CLFLUSHOPT support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_CLFLUSHOPT,        true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 24                  ; CLWB support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_CLWB,              true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 29                  ; SHA support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_SHA,               true
            .endif

    ifdef __x32__
            mov                 r07ecx,     __uX_CPUFeatures_7H_ECX
    endif ;__x64__

            ;/* %eax=07H, %ecx */
            test                r07ecx,                 1                   ; PREFETCHWT1 support by microprocessor
            .if (!ZERO?)
            mov     __uX_CPUFeatures_PREFETCHWT1,       true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 2                   ; UMIP support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_UMIP,              true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 3                   ; PKU support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_PKU,               true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 4                   ; OSPKE support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_OSPKE,             true
            .endif
            
            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 8                   ; GFNI support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_GFNI,              true
            .endif
            
            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 22                  ; RDPID support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_RDPID,             true
            .endif
            .endif ;ntel

    ifdef __x32__
            mov                 r81ecx,     __uX_CPUFeatures_80000001H_ECX
    endif ;__x64__

            ;/* %eax=80000001H, %ecx */
            test                r81ecx,                 1                   ; LAHF/SAHF available in 64-bit mode only support by microprocessor
            .if (!ZERO?)
            mov     __uX_CPUFeatures_LAHF,              true
            .endif

            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 8                   ; PREFETCHW support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_PREFETCHW,         true
            .endif
            
            .if (__uX_CPUFeatures_cAMD == true)
            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 6                   ; SSE4a support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_SSE4a,             true
            .endif
            
            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 15                  ; LWP support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_LWP,               true
            .endif
            
            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 21                  ; TBM support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_TBM,               true
            .endif
            
            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 29                  ; MWAITX support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_MWAITX,            true
            .endif
            .endif ;cAMD

    ifdef __x32__
            mov                 r81edx,     __uX_CPUFeatures_80000001H_EDX
    endif ;__x64__

            ;/* %eax=80000001H, %edx */
            bt                  r81edx,                 11                  ; SYSCALL support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_SYSCALL,           true
            .endif
            
            ;/* %eax=80000001H, %edx */
            bt                  r81edx,                 27                  ; RDTSCP support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_RDTSCP,            true
            .endif
            
            .if (__uX_CPUFeatures_AES == true)
            mov     __uX_CPUFeatures_SSE_AES,           true
            mov     __uX_CPUFeatures_SSE2_AES,          true
            mov     __uX_CPUFeatures_SSE3_AES,          true
            mov     __uX_CPUFeatures_SSSE3_AES,         true
            mov     __uX_CPUFeatures_SSE41_AES,         true
            mov     __uX_CPUFeatures_SSE42_AES,         true
            .endif

            .if (__uX_CPUFeatures_GFNI == true)
            mov     __uX_CPUFeatures_SSE_GFNI,          true
            mov     __uX_CPUFeatures_SSE2_GFNI,         true
            mov     __uX_CPUFeatures_SSE3_GFNI,         true
            mov     __uX_CPUFeatures_SSSE3_GFNI,        true
            mov     __uX_CPUFeatures_SSE41_GFNI,        true
            mov     __uX_CPUFeatures_SSE42_GFNI,        true
            .endif

            .if (__uX_CPUFeatures_PCLMULQDQ == true)
            mov     __uX_CPUFeatures_SSE_PCLMULQDQ,     true
            mov     __uX_CPUFeatures_SSE2_PCLMULQDQ,    true
            mov     __uX_CPUFeatures_SSE3_PCLMULQDQ,    true
            mov     __uX_CPUFeatures_SSSE3_PCLMULQDQ,   true
            mov     __uX_CPUFeatures_SSE41_PCLMULQDQ,   true
            mov     __uX_CPUFeatures_SSE42_PCLMULQDQ,   true
            .endif

    ifdef __x32__
            mov                 r01ecx,     __uX_CPUFeatures_1H_ECX
    endif ;__x64__

            ; check OS support for YMM registers (AVX)
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 27                  ; OSXSAVE: XSAVE/XRSTOR, XSETBV/XGETBV supported
            jnc                 not_supported
            mov     __uX_CPUFeatures_OSXSAVE,           true
            mov     __uX_CPUFeatures_XSAVE,             true
            
    ifdef __x32__
            push                eax
            push                ebx
            push                ecx
            push                edx
    endif
    ifdef __x64__
            push                rax
            push                rbx
            push                rcx
            push                rdx
    endif
            xor                 ecx,                    ecx
            ;db                 0FH, 01H, 0D0H                              ; XGETBV
            xgetbv
            and                 eax,                    06h
            cmp                 eax,                    06h                 ; check OS has enabled both XMM and YMM XCR0[2:1] XCR0[1:1] state support
    ifdef __x32__
            pop                 edx
            pop                 ecx
            pop                 ebx
            pop                 eax
    endif
    ifdef __x64__
            pop                 rdx
            pop                 rcx
            pop                 rbx
            pop                 rax
    endif
            jne                 not_supported
            mov     __uX_CPUFeatures_enabled_YMM,       true
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 28                  ; AVX support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         50                  ; 50
            mov     __uX_CPUFeatures_AVX,               true
            
            .if (__uX_CPUFeatures_AES == true)
            mov     __uX_CPUFeatures_AVX_AES,           true
            .endif

            .if (__uX_CPUFeatures_GFNI == true)
            mov     __uX_CPUFeatures_AVX_GFNI,          true
            .endif

            .if (__uX_CPUFeatures_PCLMULQDQ == true)
            mov     __uX_CPUFeatures_AVX_PCLMULQDQ,     true
            .endif

            .if (__uX_CPUFeatures_cAMD == true)
    ifdef __x32__
            mov                 r81ecx,     __uX_CPUFeatures_80000001H_ECX
    endif ;

            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 11                  ; XOP support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_XOP,               true
            .endif

            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 16                  ; FMA4 support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_FMA4,              true
            .endif
            .endif ;cAMD

            .if (__uX_CPUFeatures_PCLMULQDQ == true && __uX_CPUFeatures_AES == true)
            mov     __uX_CPUFeatures_intrinset,         51                  ; 51
            .endif

    ifdef __x32__
            mov                 r07ebx,     __uX_CPUFeatures_7H_EBX
    endif ;__x64__

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 5                   ; AVX2 support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         52                  ; 52
            mov     __uX_CPUFeatures_AVX2,              true

    ifdef __x32__
            mov                 r07ecx,     __uX_CPUFeatures_7H_ECX
    endif ;__x64__

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 9                   ; VAES support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_VAES,              true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 10                  ; VPCLMULQDQ support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_VPCLMULQDQ,        true
            .endif
            
            .if (__uX_CPUFeatures_AES == true)
            mov     __uX_CPUFeatures_AVX2_AES,          true
            .endif

            .if (__uX_CPUFeatures_GFNI == true)
            mov     __uX_CPUFeatures_AVX2_GFNI,         true
            .endif

            .if (__uX_CPUFeatures_PCLMULQDQ == true)
            mov     __uX_CPUFeatures_AVX2_PCLMULQDQ,    true
            .endif
        
            .if (__uX_CPUFeatures_VAES == true)
            mov     __uX_CPUFeatures_AVX_VAES,          true
            mov     __uX_CPUFeatures_AVX2_VAES,         true
            .endif

            .if (__uX_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_CPUFeatures_AVX_VPCLMULQDQ,    true
            mov     __uX_CPUFeatures_AVX2_VPCLMULQDQ,   true
            .endif
            
            ; 57 or above = FMA3, F16C, BMI1, BMI2, LZCNT
    ifdef __x32__
            mov                 r01ecx,     __uX_CPUFeatures_1H_ECX
    endif ;

            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 12                  ; FMA3 support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_FMA,               true
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 29                  ; F16C support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_F16C,              true
            
    ifdef __x32__
            mov                 r07ebx,     __uX_CPUFeatures_7H_EBX
    endif ;

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 3                   ; BMI1 support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_BMI1,              true
            
            ;/* %eax=07H, %ebx */
            by                  r07ebx,                 8                   ; BMI2 support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_BMI2,              true
        
    ifdef __x32__
            mov                 r81ecx,     __uX_CPUFeatures_80000001H_ECX
    endif ;

            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 5                   ; LZCNT support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         57                  ; 57
            mov     __uX_CPUFeatures_LZCNT,             true
            mov     __uX_CPUFeatures_ABM,               true
            
            .if (__uX_CPUFeatures_ntel == true)
    ifdef __x32__
            push                eax
            push                ebx
            push                ecx
            push                edx
    endif
    ifdef __x64__
            push                rax
            push                rbx
            push                rcx
            push                rdx
    endif
            xor                 ecx,                    ecx
            ;db                 0FH, 01H, 0D0H                              ; XGETBV
            xgetbv
            and                 eax,                    0E6h
            cmp                 eax,                    0E6h                ; check OS has enabled both XMM and YMM and ZMM XCR0[7:5] XCR0[2:1] XCR0[1:1] state support
    ifdef __x32__
            pop                 edx
            pop                 ecx
            pop                 ebx
            pop                 eax
    endif
    ifdef __x64__
            pop                 rdx
            pop                 rcx
            pop                 rbx
            pop                 rax
    endif
            jne                 not_supported
            mov     __uX_CPUFeatures_enabled_ZMM,       true
            
    ifdef __x32__
            mov                 r07ebx,     __uX_CPUFeatures_7H_EBX
    endif ;

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 16                  ; AVX512F support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         60                  ; 60
            mov     __uX_CPUFeatures_AVX512F,           true
            
            .if (__uX_CPUFeatures_GFNI == true)
            mov     __uX_CPUFeatures_AVX512_GFNI,       true
            .endif
            
            .if (__uX_CPUFeatures_VAES == true)
            mov     __uX_CPUFeatures_AVX512_VAES,       true
            .endif
            
            .if (__uX_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_CPUFeatures_AVX512_VPCLMULQDQ, true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 17                  ; AVX512DQ support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         61                  ; 61
            mov     __uX_CPUFeatures_AVX512DQ,          true

            .if (__uX_CPUFeatures_GFNI == true)
            mov     __uX_CPUFeatures_AVX512DQ_GFNI,     true
            .endif
        
            .if (__uX_CPUFeatures_VAES == true)
            mov     __uX_CPUFeatures_AVX512DQ_VAES,     true
            .endif

            .if (__uX_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_CPUFeatures_AVX512DQ_VPCLMULQDQ,   true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 30                  ; AVX512BW support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         62                  ; 62
            mov     __uX_CPUFeatures_AVX512BW,          true

            .if (__uX_CPUFeatures_GFNI == true)
            mov     __uX_CPUFeatures_AVX512BW_GFNI,     true
            .endif

            .if (__uX_CPUFeatures_VAES == true)
            mov     __uX_CPUFeatures_AVX512BW_VAES,     true
            .endif

            .if (__uX_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_CPUFeatures_AVX512BW_VPCLMULQDQ,   true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 31                  ; AVX512VL support by microprocessor
            jnc                 not_supported
            mov     __uX_CPUFeatures_intrinset,         63                  ; 63
            mov     __uX_CPUFeatures_AVX512VL,          true

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 26                  ; AVX512PF support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512PF,          true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 27                  ; AVX512ER support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512ER,          true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 28                  ; AVX512CD support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512CD,          true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 21                  ; AVX512_IFMA support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512_IFMA,       true
            .endif
            
    ifdef __x32__
            mov                 r07ecx,     __uX_CPUFeatures_7H_ECX
    endif ;

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 1                   ; AVX512_VBMI support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512_VBMI,       true
            .endif
            
            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 6                   ; AVX512_VBMI2 support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512_VBMI2,      true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 11                  ; AVX512_VNNI support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512_VNNI,       true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 12                  ; AVX512_BITALG support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512_BITALG,     true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 14                  ; AVX512_VPOPCNTDQ support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512_VPOPCNTDQ,  true
            .endif

    ifdef __x32__
            mov                 r07edx,     __uX_CPUFeatures_7H_EDX
    endif ;

            ;/* %eax=07H, %edx */
            bt                  r07edx,                 2                   ; AVX512_4VNNIW support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512_4VNNIW,     true
            .endif
            
            ;/* %eax=07H, %edx */   
            bt                  r07edx,                 3                   ; AVX512_4FMAPS support by microprocessor
            .if (CARRY?)
            mov     __uX_CPUFeatures_AVX512_4FMAPS,     true
            .endif
            
            .if (__uX_CPUFeatures_GFNI == true)
            mov     __uX_CPUFeatures_AVX512_GFNI_VL,    true
            .endif

            .if (__uX_CPUFeatures_VAES == true)
            mov     __uX_CPUFeatures_AVX512_VAES_VL,    true
            .endif

            .if (__uX_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_CPUFeatures_AVX512_VPCLMULQDQ_VL,  true
            .endif

            .if (__uX_CPUFeatures_AVX512_IFMA == true)
            mov     __uX_CPUFeatures_AVX512_IFMA_VL,    true
            .endif

            .if (__uX_CPUFeatures_AVX512_VBMI == true)
            mov     __uX_CPUFeatures_AVX512_VBMI_VL,    true
            .endif

            .if (__uX_CPUFeatures_AVX512_VBMI2 == true)
            mov     __uX_CPUFeatures_AVX512_VBMI2_VL,   true
            .endif

            .if (__uX_CPUFeatures_AVX512_VNNI == true)
            mov     __uX_CPUFeatures_AVX512_VNNI_VL,    true
            .endif

            .if (__uX_CPUFeatures_AVX512_BITALG == true)
            mov     __uX_CPUFeatures_AVX512_BITALG_VL,  true
            .endif

            .if (__uX_CPUFeatures_AVX512_VPOPCNTDQ == true)
            mov     __uX_CPUFeatures_AVX512_VPOPCNTDQ_VL,   true
            .endif

            .if (__uX_CPUFeatures_GFNI == true)
            mov     __uX_CPUFeatures_AVX512BW_GFNI_VL,  true
            .endif

            .if (__uX_CPUFeatures_VAES == true)
            mov     __uX_CPUFeatures_AVX512BW_VAES_VL,  true
            .endif

            .if (__uX_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_CPUFeatures_AVX512BW_VPCLMULQDQ_VL,    true
            .endif

            .if (__uX_CPUFeatures_AVX512BW == true)
            mov     __uX_CPUFeatures_AVX512BW_VL,   true
            .endif

            .if (__uX_CPUFeatures_GFNI == true)
            mov     __uX_CPUFeatures_AVX512DQ_GFNI_VL,  true
            .endif

            .if (__uX_CPUFeatures_VAES == true)
            mov     __uX_CPUFeatures_AVX512DQ_VAES_VL,  true
            .endif

            .if (__uX_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_CPUFeatures_AVX512DQ_VPCLMULQDQ_VL,    true
            .endif

            .if (__uX_CPUFeatures_AVX512DQ == true)
            mov     __uX_CPUFeatures_AVX512DQ_VL,   true
            .endif

            .if (__uX_CPUFeatures_AVX512CD == true)
            mov     __uX_CPUFeatures_AVX512CD_VL,   true
            .endif

            .endif ;Intel

not_supported:

    ifdef __x32__
            pop                 edi
            pop                 esi
            ;pop                    ebx

            ; The constructor MUST return it's this pointer in RAX.
            ;mov                    eax,                    thisPtr     
    endif
    ifdef __x64__
            pop                 r15
            pop                 r14
            pop                 r12
            pop                 r11
        ifdef __windows__
            pop                 rsi
            pop                 rdi
        endif

            ; The constructor MUST return it's this pointer in RAX.
            ;mov                    rax,                    thisPtr     
    endif

            ret
procend

; Destructor
procstart _uX_CPUFeatures_destroy, callconv, void, < >, < >, < >
    
            xor             rret(),                    rret()

            mov     __uX_CPUFeatures_DataCacheSize,         rret()
            mov     __uX_CPUFeatures_infolevel,             dret()
            mov     __uX_CPUFeatures_ProcessorName,         rret()
            mov     __uX_CPUFeatures_model,                 dret()
            mov     __uX_CPUFeatures_family,                dret()
            mov     __uX_CPUFeatures_vendor,                dret()
            mov     __uX_CPUFeatures_inited,                dret()
            mov     __uX_CPUFeatures_intrinset,             dret()

            mov     __uX_CPUFeatures_enabled_ZMM,           dret()
            mov     __uX_CPUFeatures_enabled_YMM,           dret()
            mov     __uX_CPUFeatures_enabled_XMM,           dret()
            
    ;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
            mov     __uX_CPUFeatures_AVX2_VPCLMULQDQ,       dret()
            mov     __uX_CPUFeatures_AVX2_VAES,             dret()
            mov     __uX_CPUFeatures_AVX2_PCLMULQDQ,        dret()
            mov     __uX_CPUFeatures_AVX2_GFNI,             dret()
            mov     __uX_CPUFeatures_AVX2_AES,              dret()
            mov     __uX_CPUFeatures_AVX_VPCLMULQDQ,        dret()
            mov     __uX_CPUFeatures_AVX_VAES,              dret()
            mov     __uX_CPUFeatures_AVX_PCLMULQDQ,         dret()
            mov     __uX_CPUFeatures_AVX_GFNI,              dret()
            mov     __uX_CPUFeatures_AVX_AES,               dret()
            mov     __uX_CPUFeatures_SSE42_PCLMULQDQ,       dret()
            mov     __uX_CPUFeatures_SSE42_GFNI,            dret()
            mov     __uX_CPUFeatures_SSE42_AES,             dret()
            mov     __uX_CPUFeatures_SSE41_PCLMULQDQ,       dret()
            mov     __uX_CPUFeatures_SSE41_GFNI,            dret()
            mov     __uX_CPUFeatures_SSE41_AES,             dret()
            mov     __uX_CPUFeatures_SSSE3_PCLMULQDQ,       dret()
            mov     __uX_CPUFeatures_SSSE3_GFNI,            dret()
            mov     __uX_CPUFeatures_SSSE3_AES,             dret()
            mov     __uX_CPUFeatures_SSE3_PCLMULQDQ,        dret()
            mov     __uX_CPUFeatures_SSE3_GFNI,             dret()
            mov     __uX_CPUFeatures_SSE3_AES,              dret()
            mov     __uX_CPUFeatures_SSE2_PCLMULQDQ,        dret()
            mov     __uX_CPUFeatures_SSE2_GFNI,             dret()
            mov     __uX_CPUFeatures_SSE2_AES,              dret()
            mov     __uX_CPUFeatures_SSE_PCLMULQDQ,         dret()
            mov     __uX_CPUFeatures_SSE_GFNI,              dret()
            mov     __uX_CPUFeatures_SSE_AES,               dret()
            
    ;/* %eax=07H, %ebx, %ecx */
            mov     __uX_CPUFeatures_AVX512CD_VL,           dret()
            mov     __uX_CPUFeatures_AVX512DQ_VL,           dret()
            mov     __uX_CPUFeatures_AVX512DQ_VPCLMULQDQ_VL,dret()
            mov     __uX_CPUFeatures_AVX512DQ_VPCLMULQDQ,   dret()
            mov     __uX_CPUFeatures_AVX512DQ_VAES_VL,      dret()
            mov     __uX_CPUFeatures_AVX512DQ_VAES,         dret()
            mov     __uX_CPUFeatures_AVX512DQ_GFNI_VL,      dret()
            mov     __uX_CPUFeatures_AVX512DQ_GFNI,         dret()
            mov     __uX_CPUFeatures_AVX512BW_VL,           dret()
            mov     __uX_CPUFeatures_AVX512BW_VPCLMULQDQ_VL,dret()
            mov     __uX_CPUFeatures_AVX512BW_VPCLMULQDQ,   dret()
            mov     __uX_CPUFeatures_AVX512BW_VAES_VL,      dret()
            mov     __uX_CPUFeatures_AVX512BW_VAES,         dret()
            mov     __uX_CPUFeatures_AVX512BW_GFNI_VL,      dret()
            mov     __uX_CPUFeatures_AVX512BW_GFNI,         dret()
            mov     __uX_CPUFeatures_AVX512_VPOPCNTDQ_VL,   dret()
            mov     __uX_CPUFeatures_AVX512_BITALG_VL,      dret()
            mov     __uX_CPUFeatures_AVX512_VNNI_VL,        dret()
            mov     __uX_CPUFeatures_AVX512_VBMI2_VL,       dret()
            mov     __uX_CPUFeatures_AVX512_VBMI_VL,        dret()
            mov     __uX_CPUFeatures_AVX512_IFMA_VL,        dret()
            mov     __uX_CPUFeatures_AVX512_VPCLMULQDQ_VL,  dret()
            mov     __uX_CPUFeatures_AVX512_VPCLMULQDQ,     dret()
            mov     __uX_CPUFeatures_AVX512_VAES_VL,        dret()
            mov     __uX_CPUFeatures_AVX512_VAES,           dret()
            mov     __uX_CPUFeatures_AVX512_GFNI_VL,        dret()
            mov     __uX_CPUFeatures_AVX512_GFNI,           dret()

    ;/* %eax=80000001H, %edx */
            mov     __uX_CPUFeatures_3DNOW,                 dret()
            mov     __uX_CPUFeatures_3DNOWEXT,              dret()
            mov     __uX_CPUFeatures_RDTSCP,                dret()
            mov     __uX_CPUFeatures_MMXEXT,                dret()
            mov     __uX_CPUFeatures_SYSCALL,               dret()

    ;/* %eax=80000001H, %ecx */
            mov     __uX_CPUFeatures_MWAITX,                dret()
            mov     __uX_CPUFeatures_TBM,                   dret()
            mov     __uX_CPUFeatures_FMA4,                  dret()
            mov     __uX_CPUFeatures_LWP,                   dret()
            mov     __uX_CPUFeatures_XOP,                   dret()
            mov     __uX_CPUFeatures_PREFETCHW,             dret()
            mov     __uX_CPUFeatures_SSE4a,                 dret()
            mov     __uX_CPUFeatures_ABM,                   dret()
            mov     __uX_CPUFeatures_LZCNT,                 dret()
            mov     __uX_CPUFeatures_LAHF,                  dret()

    ;/* %eax=07H, %edx */
            mov     __uX_CPUFeatures_AVX512_4FMAPS,         dret()
            mov     __uX_CPUFeatures_AVX512_4VNNIW,         dret()

    ;/* %eax=07H, %ecx */
            mov     __uX_CPUFeatures_RDPID,                 dret()
            mov     __uX_CPUFeatures_AVX512_VPOPCNTDQ,      dret()
            mov     __uX_CPUFeatures_AVX512_BITALG,         dret()
            mov     __uX_CPUFeatures_AVX512_VNNI,           dret()
            mov     __uX_CPUFeatures_VPCLMULQDQ,            dret()
            mov     __uX_CPUFeatures_VAES,                  dret()
            mov     __uX_CPUFeatures_GFNI,                  dret()
            mov     __uX_CPUFeatures_AVX512_VBMI2,          dret()
            mov     __uX_CPUFeatures_OSPKE,                 dret()
            mov     __uX_CPUFeatures_PKU,                   dret()
            mov     __uX_CPUFeatures_UMIP,                  dret()
            mov     __uX_CPUFeatures_AVX512_VBMI,           dret()
            mov     __uX_CPUFeatures_PREFETCHWT1,           dret()

    ;/* %eax=07H, %ebx */
            mov     __uX_CPUFeatures_AVX512VL,              dret()
            mov     __uX_CPUFeatures_AVX512BW,              dret()
            mov     __uX_CPUFeatures_SHA,                   dret()
            mov     __uX_CPUFeatures_AVX512CD,              dret()
            mov     __uX_CPUFeatures_AVX512ER,              dret()
            mov     __uX_CPUFeatures_AVX512PF,              dret()
            mov     __uX_CPUFeatures_CLWB,                  dret()
            mov     __uX_CPUFeatures_CLFLUSHOPT,            dret()
            mov     __uX_CPUFeatures_AVX512_IFMA,           dret()
            mov     __uX_CPUFeatures_SMAP,                  dret()
            mov     __uX_CPUFeatures_ADX,                   dret()
            mov     __uX_CPUFeatures_RDSEED,                dret()
            mov     __uX_CPUFeatures_AVX512DQ,              dret()
            mov     __uX_CPUFeatures_AVX512F,               dret()
            mov     __uX_CPUFeatures_MPX,                   dret()
            mov     __uX_CPUFeatures_RTM,                   dret()
            mov     __uX_CPUFeatures_INVPCID,               dret()
            mov     __uX_CPUFeatures_ERMS,                  dret()
            mov     __uX_CPUFeatures_BMI2,                  dret()
            mov     __uX_CPUFeatures_SMEP,                  dret()
            mov     __uX_CPUFeatures_AVX2,                  dret()
            mov     __uX_CPUFeatures_HLE,                   dret()
            mov     __uX_CPUFeatures_BMI1,                  dret()
            mov     __uX_CPUFeatures_SGX,                   dret()
            mov     __uX_CPUFeatures_FSGSBASE,              dret()

    ;/* %eax=01H, %edx */
            mov     __uX_CPUFeatures_SSE2,                  dret()
            mov     __uX_CPUFeatures_SSE,                   dret()
            mov     __uX_CPUFeatures_FXSR,                  dret()
            mov     __uX_CPUFeatures_MMX,                   dret()
            mov     __uX_CPUFeatures_CLFSH,                 dret()
            mov     __uX_CPUFeatures_CMOV,                  dret()
            mov     __uX_CPUFeatures_SEP,                   dret()
            mov     __uX_CPUFeatures_CMPXCHG8B,             dret()
            mov     __uX_CPUFeatures_MSR,                   dret()
            mov     __uX_CPUFeatures_TSC,                   dret()
            mov     __uX_CPUFeatures_FPU,                   dret()

    ;/* %eax=01H, %ecx */
            mov     __uX_CPUFeatures_RDRAND,                dret()
            mov     __uX_CPUFeatures_F16C,                  dret()
            mov     __uX_CPUFeatures_AVX,                   dret()
            mov     __uX_CPUFeatures_OSXSAVE,               dret()
            mov     __uX_CPUFeatures_XSAVE,                 dret()
            mov     __uX_CPUFeatures_AES,                   dret()
            mov     __uX_CPUFeatures_POPCNT,                dret()
            mov     __uX_CPUFeatures_MOVBE,                 dret()
            mov     __uX_CPUFeatures_SSE42,                 dret()
            mov     __uX_CPUFeatures_SSE41,                 dret()
            mov     __uX_CPUFeatures_CMPXCHG16B,            dret()
            mov     __uX_CPUFeatures_FMA,                   dret()
            mov     __uX_CPUFeatures_SSSE3,                 dret()
            mov     __uX_CPUFeatures_MONITOR,               dret()
            mov     __uX_CPUFeatures_PCLMULQDQ,             dret()
            mov     __uX_CPUFeatures_SSE3,                  dret()
    
    ; /* %eax=00H, %ebx */
            mov     __uX_CPUFeatures_NexG,                  dret()
            mov     __uX_CPUFeatures_Cyri,                  dret()
            mov     __uX_CPUFeatures_VIA,                   dret()
            mov     __uX_CPUFeatures_Cent,                  dret()

    ; /* %eax=00H, %ecx */
            mov     __uX_CPUFeatures_cAMD,                  dret()
            mov     __uX_CPUFeatures_ntel,                  dret()
    
    ; /* EFLAGS %eax=00H, %ebx=00H */
            mov     __uX_CPUFeatures_CPUID,                 dret()

            ret
procend

;alignptrfieldproc

procstart _uX_CPUFeatures_CpuType, callconv, void, < >, < >, vendor:ptr dword, family:ptr dword, model:ptr dword

    ;ifdef __x32__
    ;            evendor    textequ     <esp+16>
    ;            efamily    textequ     <esp+20>
    ;            emodel textequ     <esp+24>
    ;else
    ;    ifdef __windows__
    ; -> The proc arguments conform to vectorcall calling convention: rcx=thisPtr, rdx=vendor, r8=family, r9=model
    ;            evendor    textequ     <edx>
    ;            efamily    textequ     <r8d>
    ;            emodel textequ     <r9d>
    ;    else ;UNIX
    ; -> The proc arguments conform to systemv calling convention: rdi=thisPtr, rsi=vendor, rdx=family, rcx=model
    ;            evendor    textequ     <esi>
    ;            efamily    textequ     <edx>
    ;            emodel textequ     <ecx>
    ;    endif
    ;endif ;__x64__
    ifdef __x32__
        ifdef __unix__
                push edi
                push esi
                push eax
                mov     eax,     vendor
                mov     esi,     family
                mov     edi,     model
                define evendor, eax, text
                define efamily, esi, text
                define emodel, edi, text
        else
                define evendor, dp0(), text
                define efamily, dp1(), text
                push eax
                mov     eax,     model
                define emodel, eax, text
        endif
    endif
    ifdef __x64__
                define evendor, dp0(), text
                define efamily, dp1(), text
                define emodel, dp2(), text
    endif

C300:   ; return r9d = vendor, r10d = family, r11d = model
            test            evendor,                evendor
            jz              C310
            mov             evendor,             __uX_CPUFeatures_vendor
    ifdef __x32__
        ifdef __unix__
            mov             vendor,              evendor
        endif
    endif
C310:   
            test            efamily,                efamily
            jz              C320
            mov             efamily,             __uX_CPUFeatures_family
    ifdef __x32__
        ifdef __unix__
            mov             family,              efamily
        endif
    endif
C320:   
            test            emodel,                 emodel
            jz              C330
            mov             emodel,                 __uX_CPUFeatures_model
    ifdef __x32__
        ifdef __unix__
            mov             model,              emodel
        else
            mov             model,              emodel
        endif
    endif
C330:   

    ifdef __x32__
        ifdef __unix__
                pop eax
                pop esi
                pop edi
        else
                pop eax
        endif
    endif
            ret
procend

procstart _uX_CPUFeatures_ProcessorName, callconv, ptr, < >, < >, < >
    ifdef __x32__
            mov             rret(),             __uX_CPUFeatures_ProcessorName        ; Pointer to result
    endif
    ifdef __x64__
            lea             rret(),             [__uX_CPUFeatures_ProcessorName]      ; Pointer to result
    endif
            ret
procend

    ;alignsize_tfieldproc

procstart _uX_CPUFeatures_DataCacheSize, callconv, size_t, < >, < >, level:dword
    ifdef __x32__
        ifdef __windows__
            define drlevel, dp0(), text
        endif
        ifdef __unix__
            define drlevel, level, text
        endif
    endif
    ifdef __x64__
            define drlevel, dp0(), text
    endif
            mov     input_datacachelevel,   drlevel
            mov                 rret(),                    __uX_CPUFeatures_DataCacheSize        ; Pointer to result
            ret
procend

procstart _uX_CPUFeatures_WriteHex, callconv, void, < >, < >, < >

;WriteHex:                              ; Local function: Write 2 hexadecimal digits
        ; Parameters: AL = number to write, RDI = text destination
    
    ifdef __x32__
            push                eax
            push                ecx
            push                edi
            define rdest, edi, text
    endif
    ifdef __x64__
            push                rax
            push                rcx
            push                rdi
            define rdest, rdi, text
    endif
    
            mov                 ecx,                    eax
            shr                 ecx,                    4
            and                 ecx,                    0FH               ; most significant digit first
            cmp                 ecx,                    10
            jnb                 W1
            ; 0 - 9
            add                 ecx,                    '0'
            jmp                 W2
W1:         ; A - F
            add                 ecx,                    'A' - 10
W2:         mov                 [rdest],                cl              ; write digit
                
            mov                 ecx,                    eax
            and                 ecx,                    0FH               ; next digit
            cmp                 ecx,                    10
            jnb                 W3
            ; 0 - 9
            add                 ecx,                    '0'
            jmp                 W4
W3:         ; A - F
            add                 ecx,                    'A' - 10
W4:         mov                 [rdest+1],              cl            ; write digit
            add                 rdest,                  2                 ; advance string pointer
            
            pop                 rdest
            
    ifdef __x32__
            pop                 ecx
            pop                 eax
    endif
    ifdef __x64__
            pop                 rcx
            pop                 rax
    endif
    
            ret
procend

; Determine cache sizes by CPUID function 4
; input: esi = pointer to dataref
; output: values returned in dataref + level1, level2, level3
; carry flag = 0 on succes
procstart _uX_CPUFeatures_IntelNewMethod, callconv, void, < >, < >, < >; level:dword

;IntelNewMethod:

    ifdef __x32__
            push                eax
            push                ebx
            push                ecx
            push                edx
            push                edi
            push                esi
    endif
    ifdef __x64__
            push                rax
            push                rbx
            push                rcx
            push                rdx
            push                rdi
            push                rsi
    endif

    ifdef __x32__
            ;rret()        textequ     <eax>
            ;rsidx()      textequ     <esi>
            define rbreg, ebx, text
            define rcreg, ecx, text
    endif
    ifdef __x64__
            define rbreg, rbx, text
            define rcreg, rcx, text
            ;rret()        textequ     <rax>
            ;rsidx()      textequ     <rsi>
    endif ;__x64__

            define eloopcount, edi, text

            xor                 eax,                    eax
            cpuid                          ; get number of CPUID functions
            cmp                 eax,                    4
            jb                  I900                   ; fail
            xor                 eloopcount,             eloopcount               ; loop counter
I100:   
            mov                 eax,                    4
            mov                 ecx,                    eloopcount
            cpuid                          ; get cache peters
            mov                 edx,                    eax
            and                 edx,                    11111b            ; cache type
            jz                  I500                   ; no more caches
            cmp                 edx,                    2
            je                  I200                   ; code cache, ignore
            inc                 ecx                    ; sets
            mov                 edx,                    ebx
            shr                 edx,                    22
            inc                 edx                    ; ways
            imul                ecx,                    edx
            mov                 edx,                    ebx
            shr                 edx,                    12
            and                 edx,                    1111111111b
            inc                 edx                    ; partitions
            imul                ecx,                    edx
            and                 ebx,                    111111111111b        
            inc                 ebx                    ; line size
            imul                rcreg,                  rbreg               ; calculated cache size (64 bit)
            shr                 eax,                    5
            and                 eax,                    111b                ; cache level
            cmp                 eax,                    cpu_numlevels
            jna                 I180
            mov                 eax,                    cpu_numlevels       ; limit higher levels
I180:   
            mov     [rsidx()+rret()*reg_size],           rcreg               ; store size of data cache level eax
I200:   
            inc                 eloopcount
            cmp                 eloopcount,             100h                ; avoid infinite loop
            jb                  I100                   ; next cache
I500:   ; loop finished
        ; check if OK
        
            mov                 rret(),                [rsidx()+cpu_data_layout.level1]       ; level1
            cmp                 rret(),                1024
I900:  

    ifdef __x32__
            pop                 esi
            pop                 edi
            pop                 edx
            pop                 ecx
            pop                 ebx
            pop                 eax
    endif
    ifdef __x64__
            pop                 rsi
            pop                 rdi
            pop                 rdx
            pop                 rcx
            pop                 rbx
            pop                 rax
    endif

            ret                            ; carry flag set if fail
procend

; Determine cache sizes by CPUID function 2
; input: esi = pointer to dataref
; output: values returned in dataref + level1, level2, level3
; carry flag = 0 on succes
procstart _uX_CPUFeatures_IntelOldMethod, callconv, void, < >, < >, < >; level:dword

;IntelOldMethod:

    ifdef __x32__
            push                eax
            push                ebx
            push                ecx
            push                edx
            push                esi
            push                esp
    endif
    ifdef __x64__
            push                rax
            push                rbx
            push                rcx
            push                rdx
            push                rsi
            push                rsp
    endif

    ifdef __x32__
            ;rret()        textequ     <eax>
            ;rsidx()      textequ     <esi>
            define rbreg, ebx, text
            define rcreg, ecx, text
            define rdreg, edx, text
            define rspreg, esp, text
    endif
    ifdef __x64__
            ;rret()        textequ     <rax>
            ;rsidx()      textequ     <rsi>
            define rbreg, rbx, text
            define rcreg, rcx, text
            define rdreg, rdx, text
            define rspreg, rsp, text
    endif ;__x64__
    
            xor                 eax,                    eax
            cpuid                          ; get number of CPUID functions
            cmp                 eax,                    2
            jb                  J900                   ; fail
            mov                 eax,                    2
            xor                 ecx,                    ecx
            cpuid                          ; get 16 descriptor bytes in eax, ebx, ecx, edx
            mov                 al,                     0                  ; al does not contain a descriptor
    ifdef __x32__
            push                eax                    ; save all descriptors
            push                ebx
            push                ecx
            push                edx                    ; now esp points to descriptors
    endif
    ifdef __x64__
            sub                 rsp,                    16
            mov                 [rsp],                  eax          ; save all descriptors
            mov                 [rsp+4],                ebx
            mov                 [rsp+8],                ecx
            mov                 [rsp+12],               edx
    endif ;__x64__
            mov                 edx, 15                ; loop counter
        ; loop to read 16 descriptor bytes
J100:   
            mov                 al,             byte ptr [rspreg+rdreg]
        ; find in table
            mov                 ebx,                    cpu_descriptortablelength-1  ; loop counter
        ; loop to search in descriptortable
J200:   
            cmp                 eax,                    [rsidx() + cpu_data_layout.descriptortable + rbreg*4 + cpu_descriptor_record.d_key]
            jne                 J300
        ; descriptor found
            movzx               eax,            byte ptr [rsidx() + cpu_data_layout.descriptortable + rbreg*4 + cpu_descriptor_record.d_sizem]
            mov                 ecx,                    [rsidx() + cpu_data_layout.descriptortable + rbreg*4 + cpu_descriptor_record.d_2pow]
            shl                 eax,                    cl                ; compute size
            movzx               ecx,            byte ptr [rsidx() + cpu_data_layout.descriptortable + rbreg*4 + cpu_descriptor_record.d_level]
        ; check that level = 1-3
            cmp                 ecx,                    3
            ja                  J300
            mov     [rsidx()+rcreg*reg_size],         rret()        ; store size eax of data cache level ecx
J300:   
            dec                 ebx
            jns                 J200                   ; inner loop
            dec                 edx
            jns                 J100                   ; outer loop
            add                 rspreg,                 16                ; remove from stack
        ; check if OK
            mov                 rret(),                [rsidx() + cpu_data_layout.level1]
            cmp                 rret(),                1024
J900:   

    ifdef __x32__
            pop                 esp
            pop                 esi
            pop                 edx
            pop                 ecx
            pop                 ebx
            pop                 eax
    endif
    ifdef __x64__
            pop                 rsp
            pop                 rsi
            pop                 rdx
            pop                 rcx
            pop                 rbx
            pop                 rax
    endif

            ret                            ; carry flag set if fail
procend

; Determine cache sizes by CPUID function 80000005H - 80000006H
; input: esi = pointer to dataref
; output: values returned in dataref
; carry flag = 0 on succes
procstart _uX_CPUFeatures_AMDMethod, callconv, void, < >, < >, < >; level:dword

;AMDMethod:

    ifdef __x32__
            push                eax
            push                ebx
            push                ecx
            push                edx
            push                esi
    endif
    ifdef __x64__
            push                rax
            push                rbx
            push                rcx
            push                rdx
            push                rsi
    endif

    ifdef __x32__
            ;rret()        textequ     <eax>
            ;rsidx()      textequ     <esi>
            define rcreg, ecx, text
    endif
    ifdef __x64__
            ;rret()        textequ     <rax>
            ;rsidx()      textequ     <rsi>
            define rcreg, rcx, text
    endif ;__x64__

            mov                 eax,                    80000000H
            cpuid                          ; get number of CPUID functions
            cmp                 eax,                    6
            jb                  K900                   ; fail
            mov                 eax,                    80000005H
            cpuid                          ; get L1 cache size
            shr                 ecx,                    24                ; L1 data cache size in kbytes
            shl                 ecx,                    10                ; L1 data cache size in bytes
            mov             [rsidx() + cpu_data_layout.level1], rcreg     ; store L1 data cache size
            mov                 eax,                    80000006H
            cpuid                          ; get L2 and L3 cache sizes
            shr                 ecx,                    16                ; L2 data cache size in kbytes
            shl                 ecx,                    10                ; L2 data cache size in bytes
            mov             [rsidx() + cpu_data_layout.level2], rcreg     ; store L2 data cache size
            mov                 ecx,                    edx
            shr                 ecx,                    18                ; L3 data cache size / 512 kbytes
            shl                 rcreg,                  19                ; L3 data cache size in bytes
if 0   ; AMD manual is unclear: 
        ; do we have to increase the value if the number of ways is not a power or 2?
            shr                 edx,                    12
            and                 edx,                    1111b             ; L3 associativity
            cmp                 edx,                    3
            jb                  K100
            test                edx,                    1
            jz                  K100
            ; number of ways is not a power of 2, multiply by 1.5 ?
            mov                 rret(),                rcreg
            shr                 rret(),                1
            add                 rcreg,                  rret()
endif
K100:   
            mov     [rsidx() + cpu_data_layout.level3], rcreg     ; store L3 data cache size
        ; check if OK
            mov                 rret(),                [rsidx() + cpu_data_layout.level1]
            cmp                 rret(),                1024
K900:   

    ifdef __x32__
            pop                 esi
            pop                 edx
            pop                 ecx
            pop                 ebx
            pop                 eax
    endif
    ifdef __x64__
            pop                 rsi
            pop                 rdx
            pop                 rcx
            pop                 rbx
            pop                 rax
    endif

            ret                            ; carry flag set if fail
procend

;alignsize_tfieldproc

    ;/* find supported instruction set
    ;return value:
    ;0           = 80386 instruction set
    ;8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
    ;9  or above = CMOV supported by CPU
    ;10  or above = SSE (XMM) supported by CPU and operating system
    ;20  or above = SSE2
    ;30  or above = SSE3
    ;31  or above = Supplementary SSE3 (SSSE3)
    ;41  or above = SSE4.1
    ;42  or above = SSE4.2 & POPCNT
    ;50  or above = AVX (YMM) supported by CPU and operating system
    ;51  or above = PCLMUL & AES
    ;52  or above = AVX2
    ;57 or above = FMA3, F16C, BMI1, BMI2, LZCNT
    ;60  or above = AVX512F (ZMM) supported by CPU and operating system
    ;61  or above = AVX512DQ
    ;62  or above = AVX512BW
    ;63  or above = AVX512VL
    ;*/
procstart _uX_CPUFeatures_intrinset, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_intrinset
        ret
procend
    
    ; /* %eax=00H, %ecx */
procstart _uX_CPUFeatures_is_Intel, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_ntel
        ret
procend

procstart _uX_CPUFeatures_is_AMD, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_cAMD
        ret
procend

    ;/* %eax=01H, %ecx */
procstart _uX_CPUFeatures_has_SSE3, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE3
        ret
procend

procstart _uX_CPUFeatures_has_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_MONITOR, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_MONITOR
        ret
procend

procstart _uX_CPUFeatures_has_SSSE3, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSSE3
        ret
procend

procstart _uX_CPUFeatures_has_FMA, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_FMA
        ret
procend

procstart _uX_CPUFeatures_has_CMPXCHG16B, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_CMPXCHG16B
        ret
procend

procstart _uX_CPUFeatures_has_SSE41, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE41
        ret
procend

procstart _uX_CPUFeatures_has_SSE42, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE42
        ret
procend

procstart _uX_CPUFeatures_has_MOVBE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_MOVBE
        ret
procend

procstart _uX_CPUFeatures_has_POPCNT, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_POPCNT
        ret
procend

procstart _uX_CPUFeatures_has_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AES
        ret
procend

procstart _uX_CPUFeatures_has_XSAVE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_XSAVE
        ret
procend

procstart _uX_CPUFeatures_has_OSXSAVE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_OSXSAVE
        ret
procend

procstart _uX_CPUFeatures_has_AVX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX
        ret
procend

procstart _uX_CPUFeatures_has_F16C, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_F16C
        ret
procend

procstart _uX_CPUFeatures_has_RDRAND, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_RDRAND
        ret
procend

    ;/* %eax=01H, %edx */
procstart _uX_CPUFeatures_has_FPU, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_FPU
        ret
procend

procstart _uX_CPUFeatures_has_TSC, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_TSC
        ret
procend

procstart _uX_CPUFeatures_has_MSR, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_MSR
        ret
procend

procstart _uX_CPUFeatures_has_CMPXCHG8B, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_CMPXCHG8B
        ret
procend

procstart _uX_CPUFeatures_has_SEP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SEP
        ret
procend

procstart _uX_CPUFeatures_has_CMOV, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_CMOV
        ret
procend

procstart _uX_CPUFeatures_has_CLFSH, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_CLFSH
        ret
procend

procstart _uX_CPUFeatures_has_MMX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_MMX
        ret
procend

procstart _uX_CPUFeatures_has_FXSR, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_FXSR
        ret
procend

procstart _uX_CPUFeatures_has_SSE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE
        ret
procend

procstart _uX_CPUFeatures_has_SSE2, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE2
        ret
procend

    ;/* %eax=07H, %ebx */
procstart _uX_CPUFeatures_has_FSGSBASE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_FSGSBASE
        ret
procend

procstart _uX_CPUFeatures_has_SGX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SGX
        ret
procend

procstart _uX_CPUFeatures_has_BMI1, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_BMI1
        ret
procend

procstart _uX_CPUFeatures_has_HLE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_HLE
        ret
procend

procstart _uX_CPUFeatures_has_AVX2, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX2
        ret
procend

procstart _uX_CPUFeatures_has_SMEP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SMEP
        ret
procend

procstart _uX_CPUFeatures_has_BMI2, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_BMI2
        ret
procend

procstart _uX_CPUFeatures_has_ERMS, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_ERMS
        ret
procend

procstart _uX_CPUFeatures_has_INVPCID, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_INVPCID
        ret
procend

procstart _uX_CPUFeatures_has_RTM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_RTM
        ret
procend

procstart _uX_CPUFeatures_has_MPX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_MPX
        ret
procend

procstart _uX_CPUFeatures_has_AVX512F, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512F
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512DQ
        ret
procend

procstart _uX_CPUFeatures_has_RDSEED, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_RDSEED
        ret
procend

procstart _uX_CPUFeatures_has_ADX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_ADX
        ret
procend

procstart _uX_CPUFeatures_has_SMAP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SMAP
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_IFMA, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_IFMA
        ret
procend

procstart _uX_CPUFeatures_has_CLFLUSHOPT, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_CLFLUSHOPT
        ret
procend

procstart _uX_CPUFeatures_has_CLWB, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_CLWB
        ret
procend

procstart _uX_CPUFeatures_has_AVX512PF, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512PF
        ret
procend

procstart _uX_CPUFeatures_has_AVX512ER, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512ER
        ret
procend

procstart _uX_CPUFeatures_has_AVX512CD, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512CD
        ret
procend

procstart _uX_CPUFeatures_has_SHA, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SHA
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512BW
        ret
procend

procstart _uX_CPUFeatures_has_AVX512VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512VL
        ret
procend


    ;/* %eax=07H, %ecx */
procstart _uX_CPUFeatures_has_PREFETCHWT1, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_PREFETCHWT1
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VBMI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VBMI
        ret
procend

procstart _uX_CPUFeatures_has_UMIP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_UMIP
        ret
procend

procstart _uX_CPUFeatures_has_PKU, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_PKU
        ret
procend

procstart _uX_CPUFeatures_has_OSPKE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_OSPKE
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VBMI2, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VBMI2
        ret
procend

procstart _uX_CPUFeatures_has_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_VAES
        ret
procend

procstart _uX_CPUFeatures_has_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VNNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VNNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_BITALG, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_BITALG
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VPOPCNTDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VPOPCNTDQ
        ret
procend

procstart _uX_CPUFeatures_has_RDPID, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_RDPID
        ret
procend

    ;/* %eax=07H, %edx */
procstart _uX_CPUFeatures_has_AVX512_4VNNIW, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_4VNNIW
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_4FMAPS, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_4FMAPS
        ret
procend

    ;/* %eax=80000001H, %ecx */
procstart _uX_CPUFeatures_has_LAHF, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_LAHF
        ret
procend

procstart _uX_CPUFeatures_has_LZCNT, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_LZCNT
        ret
procend

procstart _uX_CPUFeatures_has_ABM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_ABM
        ret
procend

procstart _uX_CPUFeatures_has_SSE4a, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE4a
        ret
procend

procstart _uX_CPUFeatures_has_PREFETCHW, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_PREFETCHW
        ret
procend

procstart _uX_CPUFeatures_has_XOP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_XOP
        ret
procend

procstart _uX_CPUFeatures_has_LWP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_LWP
        ret
procend

procstart _uX_CPUFeatures_has_FMA4, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_FMA4
        ret
procend

procstart _uX_CPUFeatures_has_TBM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_TBM
        ret
procend

procstart _uX_CPUFeatures_has_MWAITX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_MWAITX
        ret
procend

    ;/* %eax=80000001H, %edx */
procstart _uX_CPUFeatures_has_SYSCALL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SYSCALL
        ret
procend

procstart _uX_CPUFeatures_has_MMXEXT, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_MMXEXT
        ret
procend

procstart _uX_CPUFeatures_has_RDTSCP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_RDTSCP
        ret
procend

procstart _uX_CPUFeatures_has_3DNOWEXT, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_3DNOWEXT
        ret
procend

procstart _uX_CPUFeatures_has_3DNOW, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_3DNOW
        ret
procend

    ;/* %eax=07H, %ebx, %ecx */
procstart _uX_CPUFeatures_has_AVX512_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_GFNI_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_GFNI_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VAES
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VAES_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VAES_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VPCLMULQDQ_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VPCLMULQDQ_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_IFMA_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_IFMA_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VBMI_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VBMI_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VBMI2_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VBMI2_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VNNI_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VNNI_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_BITALG_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_BITALG_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VPOPCNTDQ_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512_VPOPCNTDQ_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512BW_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_GFNI_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512BW_GFNI_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512BW_VAES
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_VAES_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512BW_VAES_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512BW_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512BW_VPCLMULQDQ_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512BW_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512DQ_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_GFNI_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512DQ_GFNI_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512DQ_VAES
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_VAES_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512DQ_VAES_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512DQ_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512DQ_VPCLMULQDQ_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512DQ_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512CD_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX512CD_VL
        ret
procend

    ;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
procstart _uX_CPUFeatures_has_SSE_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSE_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSE_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_SSE2_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE2_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSE2_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE2_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSE2_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE2_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_SSE3_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE3_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSE3_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE3_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSE3_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE3_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_SSSE3_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSSE3_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSSE3_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSSE3_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSSE3_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSSE3_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_SSE41_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE41_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSE41_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE41_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSE41_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE41_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_SSE42_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE42_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSE42_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE42_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSE42_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_SSE42_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX_AES
        ret
procend

procstart _uX_CPUFeatures_has_AVX_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX_VAES
        ret
procend

procstart _uX_CPUFeatures_has_AVX_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX2_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX2_AES
        ret
procend

procstart _uX_CPUFeatures_has_AVX2_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX2_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX2_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX2_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX2_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX2_VAES
        ret
procend

procstart _uX_CPUFeatures_has_AVX2_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_AVX2_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_enabled_XMM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_enabled_XMM
        ret
procend

procstart _uX_CPUFeatures_has_enabled_YMM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_enabled_YMM
        ret
procend

procstart _uX_CPUFeatures_has_enabled_ZMM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_enabled_ZMM
        ret
procend

procstart _uX_CPUFeatures_is_inited, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_CPUFeatures_inited
        ret
procend

endif ;_CLASS_uXCPUFEATURES

endif ;__MIC__

    end
