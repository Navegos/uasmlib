
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

ifndef _CLASS_uXCPUFEATURES
_CLASS_uXCPUFEATURES equ 1

ifndef __MIC__

.xmm

alignstackfieldproc

.data?

    ;input_datacachelevel                dword ?
    
    cpu_data_layout struct
        ok     dword 2 dup(?)
        level1 size_t 1 dup(?)
        level2 size_t 1 dup(?)
        level3 size_t 1 dup(?)
        level4 size_t 1 dup(?)
        descriptortable dword 60 dup(?)
    cpu_data_layout ends

    cpu_descriptor_record struct                ; record for table of cache descriptors
        d_key   dword 1 dup(?)                  ; key from cpuid instruction
        d_level dword 1 dup(?)                  ; cache level
        d_sizem dword 1 dup(?)                  ; size multiplier
        d_2pow  dword 1 dup(?)                  ; power of 2. size = d_sizem << d_2pow
    cpu_descriptor_record ends

.data
    ;align 16
    cpu_dataref label ptr size_t                ; reference point
        cpu_ok_       dd           0, 0         ; 1 when values are determined
        cpu_level1_   isize_t      0            ; level 1 data cache size
        cpu_level2_   isize_t      0            ; level 2 data cache size
        cpu_level3_   isize_t      0            ; level 3 data cache size
        cpu_level4_   isize_t      0            ; level 4 data cache size
    cpu_numlevels   equ            4            ; max level

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
    v1ci __uX_dt_CPUFeatures_IntrinSet,                    dd, 0
    
    ; /* EFLAGS %eax=00H, %ebx=00H */
    v1ci __uX_dt_CPUFeatures_CPUID,                        dd, 0

    ; /* %eax=00H, %ecx */
    v1ci __uX_dt_CPUFeatures_ntel,                         dd, 0   ; 'GenuineIntel'
    v1ci __uX_dt_CPUFeatures_cAMD,                         dd, 0   ; 'AuthenticAMD'
    
    ; /* %eax=00H, %ebx */
    v1ci __uX_dt_CPUFeatures_Cent,                         dd, 0   ; 'CentaurHauls'
    v1ci __uX_dt_CPUFeatures_VIA,                          dd, 0   ; 'VIA VIA VIA'
    v1ci __uX_dt_CPUFeatures_Cyri,                         dd, 0   ; 'CyrixInstead'
    v1ci __uX_dt_CPUFeatures_NexG,                         dd, 0   ; 'NexGenDriven'

    ;/* %eax=01H, %ecx */
    v1ci __uX_dt_CPUFeatures_SSE3,                         dd, 0
    v1ci __uX_dt_CPUFeatures_PCLMULQDQ,                    dd, 0
    v1ci __uX_dt_CPUFeatures_MONITOR,                      dd, 0
    v1ci __uX_dt_CPUFeatures_SSSE3,                        dd, 0
    v1ci __uX_dt_CPUFeatures_FMA,                          dd, 0
    v1ci __uX_dt_CPUFeatures_CMPXCHG16B,                   dd, 0
    v1ci __uX_dt_CPUFeatures_SSE41,                        dd, 0
    v1ci __uX_dt_CPUFeatures_SSE42,                        dd, 0
    v1ci __uX_dt_CPUFeatures_MOVBE,                        dd, 0
    v1ci __uX_dt_CPUFeatures_POPCNT,                       dd, 0
    v1ci __uX_dt_CPUFeatures_AES,                          dd, 0
    v1ci __uX_dt_CPUFeatures_XSAVE,                        dd, 0
    v1ci __uX_dt_CPUFeatures_OSXSAVE,                      dd, 0
    v1ci __uX_dt_CPUFeatures_AVX,                          dd, 0
    v1ci __uX_dt_CPUFeatures_F16C,                         dd, 0
    v1ci __uX_dt_CPUFeatures_RDRAND,                       dd, 0

    ;/* %eax=01H, %edx */
    v1ci __uX_dt_CPUFeatures_FPU,                          dd, 0
    v1ci __uX_dt_CPUFeatures_TSC,                          dd, 0
    v1ci __uX_dt_CPUFeatures_MSR,                          dd, 0
    v1ci __uX_dt_CPUFeatures_CMPXCHG8B,                    dd, 0
    v1ci __uX_dt_CPUFeatures_SEP,                          dd, 0
    v1ci __uX_dt_CPUFeatures_CMOV,                         dd, 0
    v1ci __uX_dt_CPUFeatures_CLFSH,                        dd, 0
    v1ci __uX_dt_CPUFeatures_MMX,                          dd, 0
    v1ci __uX_dt_CPUFeatures_FXSR,                         dd, 0
    v1ci __uX_dt_CPUFeatures_SSE,                          dd, 0
    v1ci __uX_dt_CPUFeatures_SSE2,                         dd, 0

    ;/* %eax=07H, %ebx */
    v1ci __uX_dt_CPUFeatures_FSGSBASE,                     dd, 0
    v1ci __uX_dt_CPUFeatures_SGX,                          dd, 0
    v1ci __uX_dt_CPUFeatures_BMI1,                         dd, 0
    v1ci __uX_dt_CPUFeatures_HLE,                          dd, 0
    v1ci __uX_dt_CPUFeatures_AVX2,                         dd, 0
    v1ci __uX_dt_CPUFeatures_SMEP,                         dd, 0
    v1ci __uX_dt_CPUFeatures_BMI2,                         dd, 0
    v1ci __uX_dt_CPUFeatures_ERMS,                         dd, 0
    v1ci __uX_dt_CPUFeatures_INVPCID,                      dd, 0
    v1ci __uX_dt_CPUFeatures_RTM,                          dd, 0
    v1ci __uX_dt_CPUFeatures_MPX,                          dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512F,                      dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512DQ,                     dd, 0
    v1ci __uX_dt_CPUFeatures_RDSEED,                       dd, 0
    v1ci __uX_dt_CPUFeatures_ADX,                          dd, 0
    v1ci __uX_dt_CPUFeatures_SMAP,                         dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_IFMA,                  dd, 0
    v1ci __uX_dt_CPUFeatures_CLFLUSHOPT,                   dd, 0
    v1ci __uX_dt_CPUFeatures_CLWB,                         dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512PF,                     dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512ER,                     dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512CD,                     dd, 0
    v1ci __uX_dt_CPUFeatures_SHA,                          dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512BW,                     dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512VL,                     dd, 0

    ;/* %eax=07H, %ecx */
    v1ci __uX_dt_CPUFeatures_PREFETCHWT1,                  dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VBMI,                  dd, 0
    v1ci __uX_dt_CPUFeatures_UMIP,                         dd, 0
    v1ci __uX_dt_CPUFeatures_PKU,                          dd, 0
    v1ci __uX_dt_CPUFeatures_OSPKE,                        dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VBMI2,                 dd, 0
    v1ci __uX_dt_CPUFeatures_GFNI,                         dd, 0
    v1ci __uX_dt_CPUFeatures_VAES,                         dd, 0
    v1ci __uX_dt_CPUFeatures_VPCLMULQDQ,                   dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VNNI,                  dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_BITALG,                dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VPOPCNTDQ,             dd, 0
    v1ci __uX_dt_CPUFeatures_RDPID,                        dd, 0

    ;/* %eax=07H, %edx */
    v1ci __uX_dt_CPUFeatures_AVX512_4VNNIW,                dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_4FMAPS,                dd, 0

    ;/* %eax=80000001H, %ecx */
    v1ci __uX_dt_CPUFeatures_LAHF,                         dd, 0
    v1ci __uX_dt_CPUFeatures_LZCNT,                        dd, 0
    v1ci __uX_dt_CPUFeatures_ABM,                          dd, 0
    v1ci __uX_dt_CPUFeatures_SSE4a,                        dd, 0
    v1ci __uX_dt_CPUFeatures_PREFETCHW,                    dd, 0
    v1ci __uX_dt_CPUFeatures_XOP,                          dd, 0
    v1ci __uX_dt_CPUFeatures_LWP,                          dd, 0
    v1ci __uX_dt_CPUFeatures_FMA4,                         dd, 0
    v1ci __uX_dt_CPUFeatures_TBM,                          dd, 0
    v1ci __uX_dt_CPUFeatures_MWAITX,                       dd, 0

    ;/* %eax=80000001H, %edx */
    v1ci __uX_dt_CPUFeatures_SYSCALL,                      dd, 0
    v1ci __uX_dt_CPUFeatures_MMXEXT,                       dd, 0
    v1ci __uX_dt_CPUFeatures_RDTSCP,                       dd, 0
    v1ci __uX_dt_CPUFeatures_3DNOWEXT,                     dd, 0
    v1ci __uX_dt_CPUFeatures_3DNOW,                        dd, 0

    ;/* %eax=07H, %ebx, %ecx */
    v1ci __uX_dt_CPUFeatures_AVX512_GFNI,                  dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_GFNI_VL,               dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VAES,                  dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VAES_VL,               dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VPCLMULQDQ,            dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VPCLMULQDQ_VL,         dd, 0

    v1ci __uX_dt_CPUFeatures_AVX512_IFMA_VL,               dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VBMI_VL,               dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VBMI2_VL,              dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VNNI_VL,               dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_BITALG_VL,             dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512_VPOPCNTDQ_VL,          dd, 0

    v1ci __uX_dt_CPUFeatures_AVX512BW_GFNI,                dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512BW_GFNI_VL,             dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512BW_VAES,                dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512BW_VAES_VL,             dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512BW_VPCLMULQDQ,          dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512BW_VPCLMULQDQ_VL,       dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512BW_VL,                  dd, 0

    v1ci __uX_dt_CPUFeatures_AVX512DQ_GFNI,                dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512DQ_GFNI_VL,             dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512DQ_VAES,                dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512DQ_VAES_VL,             dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512DQ_VPCLMULQDQ,          dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512DQ_VPCLMULQDQ_VL,       dd, 0
    v1ci __uX_dt_CPUFeatures_AVX512DQ_VL,                  dd, 0

    v1ci __uX_dt_CPUFeatures_AVX512CD_VL,                  dd, 0

    ;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
    v1ci __uX_dt_CPUFeatures_SSE_AES,                      dd, 0
    v1ci __uX_dt_CPUFeatures_SSE_GFNI,                     dd, 0
    v1ci __uX_dt_CPUFeatures_SSE_PCLMULQDQ,                dd, 0
    v1ci __uX_dt_CPUFeatures_SSE2_AES,                     dd, 0
    v1ci __uX_dt_CPUFeatures_SSE2_GFNI,                    dd, 0
    v1ci __uX_dt_CPUFeatures_SSE2_PCLMULQDQ,               dd, 0
    v1ci __uX_dt_CPUFeatures_SSE3_AES,                     dd, 0
    v1ci __uX_dt_CPUFeatures_SSE3_GFNI,                    dd, 0
    v1ci __uX_dt_CPUFeatures_SSE3_PCLMULQDQ,               dd, 0
    v1ci __uX_dt_CPUFeatures_SSSE3_AES,                    dd, 0
    v1ci __uX_dt_CPUFeatures_SSSE3_GFNI,                   dd, 0
    v1ci __uX_dt_CPUFeatures_SSSE3_PCLMULQDQ,              dd, 0
    v1ci __uX_dt_CPUFeatures_SSE41_AES,                    dd, 0
    v1ci __uX_dt_CPUFeatures_SSE41_GFNI,                   dd, 0
    v1ci __uX_dt_CPUFeatures_SSE41_PCLMULQDQ,              dd, 0
    v1ci __uX_dt_CPUFeatures_SSE42_AES,                    dd, 0
    v1ci __uX_dt_CPUFeatures_SSE42_GFNI,                   dd, 0
    v1ci __uX_dt_CPUFeatures_SSE42_PCLMULQDQ,              dd, 0
    v1ci __uX_dt_CPUFeatures_AVX_AES,                      dd, 0
    v1ci __uX_dt_CPUFeatures_AVX_GFNI,                     dd, 0
    v1ci __uX_dt_CPUFeatures_AVX_PCLMULQDQ,                dd, 0
    v1ci __uX_dt_CPUFeatures_AVX_VAES,                     dd, 0
    v1ci __uX_dt_CPUFeatures_AVX_VPCLMULQDQ,               dd, 0
    v1ci __uX_dt_CPUFeatures_AVX2_AES,                     dd, 0
    v1ci __uX_dt_CPUFeatures_AVX2_GFNI,                    dd, 0
    v1ci __uX_dt_CPUFeatures_AVX2_PCLMULQDQ,               dd, 0
    v1ci __uX_dt_CPUFeatures_AVX2_VAES,                    dd, 0
    v1ci __uX_dt_CPUFeatures_AVX2_VPCLMULQDQ,              dd, 0

    v1ci __uX_dt_CPUFeatures_enabled_XMM,                  dd, 0
    v1ci __uX_dt_CPUFeatures_enabled_YMM,                  dd, 0
    v1ci __uX_dt_CPUFeatures_enabled_ZMM,                  dd, 0
    
    v1ci __uX_dt_CPUFeatures_Inited,                       dd, 0
        
    v1ci __uX_dt_CPUFeatures_vendor,                       dd, 0
    v1ci __uX_dt_CPUFeatures_family,                       dd, 0
    v1ci __uX_dt_CPUFeatures_model,                        dd, 0
    
    v1ci __uX_dt_CPUFeatures_ProcessorName,                db, 50H dup(0)
    
    v1ci __uX_dt_CPUFeatures_infolevel,                    dd, 0

    v1ci __uX_dt_CPUFeatures_UnalignedIsFaster,            dd, 0
    v1ci __uX_dt_CPUFeatures_Store256BitIsFaster,          dd, 0

    v1ci __uX_dt_CPUFeatures_DataCacheSize,                isize_t, 0
    v1ci __uX_dt_CPUFeatures_L1DataCacheSize,              isize_t, 0
    v1ci __uX_dt_CPUFeatures_L2DataCacheSize,              isize_t, 0
    v1ci __uX_dt_CPUFeatures_L3DataCacheSize,              isize_t, 0

    v1ci __uX_dt_CPUFeatures_0H_EBX,                       dd, 0
    v1ci __uX_dt_CPUFeatures_0H_ECX,                       dd, 0
    v1ci __uX_dt_CPUFeatures_1H_ECX,                       dd, 0
    v1ci __uX_dt_CPUFeatures_1H_EDX,                       dd, 0
    v1ci __uX_dt_CPUFeatures_7H_EBX,                       dd, 0
    v1ci __uX_dt_CPUFeatures_7H_ECX,                       dd, 0
    v1ci __uX_dt_CPUFeatures_7H_EDX,                       dd, 0
    v1ci __uX_dt_CPUFeatures_80000001H_ECX,                dd, 0
    v1ci __uX_dt_CPUFeatures_80000001H_EDX,                dd, 0

.const

.code

callconvopt
;alignsize_tfieldproc

_uX_CPUFeatures_WriteHex proto callconv (void)
_uX_CPUFeatures_CpuType proto callconv (void) :ptr_t, :ptr_t, :ptr_t
_uX_CPUFeatures_IntelNewMethod proto callconv (void)
_uX_CPUFeatures_IntelOldMethod proto callconv (void)
_uX_CPUFeatures_AMDMethod proto callconv (void)

    ifdef __x32__
            r00ecx      textequ     <edi>
            r01edx      textequ     <esi>
            r07ebx      textequ     <edi>
            r01ecx      textequ     <esi>
            r07ecx      textequ     <edi>
            r81ecx      textequ     <esi>
            r81edx      textequ     <edi>
            r07edx      textequ     <esi>
            rbreg       textequ     <ebx>
            rcreg       textequ     <ecx>
            rdreg       textequ     <edx>
            rlevel      textequ     <esi>
            dlevel      textequ     <esi>
            rnumlevel   textequ     <edi>
            dnumlevel   textequ     <edi>
            rspreg      textequ     <esp>
            rdest       textequ     <edi>
            dvendor     textequ     <ebx>
            dfamily     textequ     <edi>
            dmodel      textequ     <esi>
    endif ;__x32__
    ifdef __x64__
        ifdef __windows__
            r00ecx      textequ     <edi>
        else
            r00ecx      textequ     <r8d>
        endif
            r01edx      textequ     <esi>
            r07ebx      textequ     <r8d>
            r01ecx      textequ     <r9d>
            r07ecx      textequ     <r11d>
            r81ecx      textequ     <r12d>
            r81edx      textequ     <r14d>
            r07edx      textequ     <r15d>
            rbreg       textequ     <rbx>
            rcreg       textequ     <rcx>
            rdreg       textequ     <rdx>
            rlevel      textequ     <r9>
            dlevel      textequ     <r9d>
            rnumlevel   textequ     <r8>
            dnumlevel   textequ     <r8d>
            rspreg      textequ     <rsp>
            rdest       textequ     <rdi>
            dvendor     textequ     <edi>
            dfamily     textequ     <r8d>
            dmodel      textequ     <r9d>
    endif ;__x64__

; Constructor
procstart _uX_CPUFeatures_Init, callconv, void, < >, < >, infolevel:dword
    ifdef __x32__
        ifdef __windows__
            mov     __uX_dt_CPUFeatures_infolevel,       dp0()
            xor             dp0(),                    dp0()
        endif
        ifdef __unix__
            mov     __uX_dt_CPUFeatures_infolevel,       infolevel
            ;mov             [dp0()+4],                null
        endif
    endif ;__x32__
    ifdef __x64__
            mov     __uX_dt_CPUFeatures_infolevel,       dp0()
            xor             dp0(),                    dp0()
    endif ;__x64__

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
            xor                 ebx,                    eax
            bt                  ebx,                    21
            jc                  CPUInitNoID                                 ; cpuidnot supported
            xor                 eax,                    eax                 ; 0
            ; /* %eax=00H, %ecx %ebx */
            mov     __uX_dt_CPUFeatures_CPUID,             true

            cpuid                                                           ; get number of cpuidfunctions
            test                eax,                    eax
            jnz                 CPUInitIdentificable                        ; function 1 not supported
    CPUInitNoID:
            .if (__uX_dt_CPUFeatures_infolevel >= 1) ;infolevel >= 1
            push                edi
            ; processor has no CPUID
            mov      dword ptr [edi],                   '8038'              ; Write text '80386 or 80486'
            mov      dword ptr [edi+4],                 '6 or'
            mov      dword ptr [edi+8],                 ' 804'
            mov      dword ptr [edi+12],                '86'                ; End with 0

            mov     dword ptr [__uX_dt_CPUFeatures_ProcessorName],     edi            ; Pointer to result
            pop                 edi
            .endif
            pop                 ebx
            jmp                 CPUInitEND
    endif ;__x32__

    ifdef __x32__
            pop                 ebx
    CPUInitIdentificable:
            push                ebp
            mov                 ebp,                esp
            sub                 esp,                16          ; 3*4=12+4 Align 8
            ;mov                [esp],               esp
            mov                [esp],               ebx
            mov                [esp+4],             esi
            mov                [esp+8],             edi
            ;push                esp
            ;push                ebp
            ;push                ebx
            ;push                esi
            ;push                edi
    endif ;__x32__
    ifdef __x64__
            ;push                rbp
            ;mov                 rbp,                rsp
        ifdef __windows__
            sub                 rsp,                64          ; 7*8=56+8 Align 16
        else
            sub                 rsp,                48          ; 5*8=40+8 Align 16
        endif
            ;mov                [rsp],               rsp
            mov                [rsp],               rbx
        ifdef __windows__
            mov                [rsp+8],             rsi
            mov                [rsp+16],            rdi
            mov                [rsp+24],            r11
            mov                [rsp+32],            r12
            mov                [rsp+40],            r14
            mov                [rsp+48],            r15
        else
            mov                [rsp+8],             r11
            mov                [rsp+16],            r12
            mov                [rsp+24],            r14
            mov                [rsp+32],            r15
        endif
            ;push                rbx
        ;ifdef __windows__
            ;push                rsi
            ;push                rdi
        ;endif
            ;push                rsp
            ;push                rbp
            ;push                r11
            ;push                r12
            ;push                r14
            ;push                r15
    endif ;__x64__

    ifdef __x64__
            ; /* %eax=00H, %ecx %ebx */
            mov     __uX_dt_CPUFeatures_CPUID,             true
    endif

            mov     __uX_dt_CPUFeatures_Inited,            true

            mov                 eax,                    0H
            xor                 ecx,                    ecx
            cpuid
            mov     __uX_dt_CPUFeatures_0H_EBX,            ebx
            mov     __uX_dt_CPUFeatures_0H_ECX,            ecx

            mov                 eax,                    1H
            xor                 ecx,                    ecx
            cpuid
            mov     __uX_dt_CPUFeatures_1H_ECX,            ecx
            mov     __uX_dt_CPUFeatures_1H_EDX,            edx

            mov                 eax,                    7H
            xor                 ecx,                    ecx
            cpuid
            mov     __uX_dt_CPUFeatures_7H_EBX,            ebx
            mov     __uX_dt_CPUFeatures_7H_ECX,            ecx
            mov     __uX_dt_CPUFeatures_7H_EDX,            edx

            mov                 eax,                    80000001H
            xor                 ecx,                    ecx
            cpuid
            mov     __uX_dt_CPUFeatures_80000001H_ECX,     ecx
            mov     __uX_dt_CPUFeatures_80000001H_EDX,     edx

            mov                 r00ecx,     __uX_dt_CPUFeatures_0H_ECX

            cmp                 r00ecx,                 BIT_NTEL            ; 'GenuineIntel'
            .if (EQUAL?)
            mov     __uX_dt_CPUFeatures_ntel,              true
            mov     __uX_dt_CPUFeatures_vendor,            1
            je                  bvendor
            .endif

            cmp                 r00ecx,                 BIT_CAMD            ; 'AuthenticAMD'
            .if (EQUAL?)
            mov     __uX_dt_CPUFeatures_cAMD,              true
            mov     __uX_dt_CPUFeatures_vendor,            2
            je                  bvendor
            .endif

            mov                 r00ecx,     __uX_dt_CPUFeatures_0H_EBX
            cmp                 r00ecx,                 BIT_CENT            ; 'CentaurHauls'
            .if (EQUAL?)
            mov     __uX_dt_CPUFeatures_Cent,              true
            mov     __uX_dt_CPUFeatures_vendor,            3
            je                  bvendor
            .endif

            cmp                 r00ecx,                 BIT_VIA             ; 'VIA VIA VIA'
            .if (EQUAL?)
            mov     __uX_dt_CPUFeatures_VIA,               true
            mov     __uX_dt_CPUFeatures_vendor,            3
            je                  bvendor
            .endif

            cmp                 r00ecx,                 BIT_CYRI            ; 'CyrixInstead'
            .if (EQUAL?)
            mov     __uX_dt_CPUFeatures_Cyri,              true
            mov     __uX_dt_CPUFeatures_vendor,            4
            je                  bvendor
            .endif

            cmp                 r00ecx,                 BIT_NEXG            ; 'NexGenDriven'
            .if (EQUAL?)
            mov     __uX_dt_CPUFeatures_NexG,              true
            mov     __uX_dt_CPUFeatures_vendor,            5
            ;je                 bvendor
            .endif

    bvendor:
            .if (__uX_dt_CPUFeatures_infolevel >= 1) ;__uX_dt_CPUFeatures_infolevel >= 1
                ; Get family and model
                mov                 eax,                    1H
                xor                 ecx,                    ecx
                cpuid
                mov                 dmodel,                 eax
                mov                 dfamily,                eax

                shr                 dmodel,                 8
                and                 dmodel,                 0FH             ; Family
            
                shr                 dfamily,                20
                and                 dfamily,                0FFH            ; Extended family
                add                 dfamily,                dmodel          ; Family + extended family
        
                mov                 dmodel,                 eax
                shr                 dmodel,                 4
                and                 dmodel,                 0FH             ; Model

    ifdef __x32__
                mov                 ecx,                    eax
                shr                 ecx,                    12
                and                 ecx,                    0F0H            ; Extended model
                or                  dmodel,                 ecx             ; extended model | Model
    endif ;__x32__
    ifdef __x64__
                shr                 eax,                    12
                and                 eax,                    0F0H            ; Extended model
                or                  dmodel,                 eax             ; extended model | Model
    endif ;__x64__

                mov     __uX_dt_CPUFeatures_family,            dfamily
                mov     __uX_dt_CPUFeatures_model,             dmodel

    ifdef __x32__
                xor                 rdest,                  rdest
                mov                 rdest,  dword ptr [__uX_dt_CPUFeatures_ProcessorName]        ; Pointer to result
    endif
    ifdef __x64__
                xor                 rdest,                  rdest
                lea                 rdest,  [__uX_dt_CPUFeatures_ProcessorName]      ; text pointer
    endif

                xor                 ecx,                    ecx
                mov                 eax,                    80000000H
                cpuid
                cmp                 eax,                    80000004H       ; text if extended vendor string available
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
                mov                 [rdest+10H],            eax             ; next 16 bytes
                mov                 [rdest+14H],            ebx
                mov                 [rdest+18H],            ecx
                mov                 [rdest+1CH],            edx
                mov                 eax,                    80000004H
                cpuid
                mov                 [rdest+20H],            eax             ; next 16 bytes
                mov                 [rdest+24H],            ebx
                mov                 [rdest+28H],            ecx
                mov                 [rdest+2CH],            edx
                jmp                 get_family_and_model

        no_ext_vendor_string:
        ; No extended vendor string. Get short vendor string
                xor                 eax,                    eax
                cpuid
                mov                 [rdest],                ebx             ; store short vendor string
                mov                 [rdest+4],              edx
                mov                 [rdest+8],              ecx
                mov        byte ptr [rdest+12],             0               ; terminate string

        get_family_and_model:
    ifdef __x32__
                mov                [esp+20],                rdest           ; Save string address
    endif
                xor                 eax,                    eax
                mov                 ecx,                    30H
                cld
                repne               scasb                                   ; find end of text
                dec                 rdest

                                                                            ; Append text " Family "
                mov      dword ptr [rdest],                 'maF '
                mov      dword ptr [rdest+4],               ' yli'
                add                 rdest,                  8

                mov                 eax,                    1
                cpuid                                                       ; Get family and model
                mov                 ebx,                    eax
                mov                 ecx,                    eax
                shr                 eax,                    8
                and                 eax,                    0FH             ; Family
                shr                 ecx,                    20
                and                 ecx,                    0FFH            ; Extended family
                add                 eax,                    ecx             ; Family + extended family
                call                _uX_CPUFeatures_WriteHex              ; Write as hexadecimal

                mov      dword ptr [rdest],                 'oM H'          ; Write text "H Model "
                mov      dword ptr [rdest+4],               ' led'
                add                 rdest,                  8

                mov                 eax,                    ebx
                shr                 eax,                    4
                and                 eax,                    0FH             ; Model
                mov                 ecx,                    ebx
                shr                 ecx,                    12
                and                 ecx,                    0F0H            ; Extended model
                or                  eax,                    ecx             ; Model | extended model
                call                _uX_CPUFeatures_WriteHex              ; Write as hexadecimal

                mov      dword ptr [rdest],                 'H'             ; Write text "H"

    ifdef __x32__
                mov                 rdest,                 [esp+20]         ; Restore string address
                mov     dword ptr [__uX_dt_CPUFeatures_ProcessorName],     rdest      ; Pointer to result
    endif

                xor                 eax,                    eax
                xor                 ebx,                    ebx
                xor                 ecx,                    ecx
                xor                 edx,                    edx

        ; check if called before
    ifdef __x32__
                mov                 rlevel,                 cpu_dataref      ; point to dataref
    endif
    ifdef __x64__
                lea                 rlevel,                [cpu_dataref]      ; point to dataref
    endif ;__x64__
                cmp dword ptr [rlevel+cpu_data_layout.ok],      1       ; ok
                je                  D800

        ; find cpu vendor

    ; -> The proc arguments conform to vectorcall calling convention: rcx=thisPtr, rdx=vendor, r8=family, r9=model
    ; -> The proc arguments conform to systemv calling convention: rdi=thisPtr, rsi=vendor, rdx=family, rcx=mode
                ;call                _uX_CPUFeatures_CpuType
    ifdef __x32__
                mov                 rlevel,                 cpu_dataref      ; point to dataref
    endif
    ifdef __x64__
                lea                 rlevel,                [cpu_dataref]
    endif ;__x64__
                mov                 eax,                    __uX_dt_CPUFeatures_vendor
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
                xor                 rret(),                     rret()
                mov                 dnumlevel,                  cpu_numlevels
                ;.for (dnumlevel = cpu_numlevels: dnumlevel > 0: --dnumlevel)
            fordatacachesize:
                dec                 dnumlevel
                .if (dnumlevel == 3)
                    mov                 rret(),                 [rlevel+rnumlevel*reg_size]
                    mov     __uX_dt_CPUFeatures_L3DataCacheSize,   rret()
                .elseif (dnumlevel == 2)
                    mov                 rret(),                 [rlevel+rnumlevel*reg_size]
                    mov     __uX_dt_CPUFeatures_L2DataCacheSize,   rret()
                .elseif (dnumlevel == 1)
                    mov                 rret(),                 [rlevel+rnumlevel*reg_size]
                    mov     __uX_dt_CPUFeatures_L1DataCacheSize,   rret()
                .elseif (dnumlevel == 0)                                                                ; level = 0. Get size of largest level cache
                    mov                 rret(),                 [rlevel+cpu_data_layout.level3]         ; level3
                    test                rret(),                 rret()
                    jnz                 D850
                    mov                 rret(),                 [rlevel+cpu_data_layout.level2]         ; level2
                    test                rret(),                 rret()
                    jnz                 D850
                    mov                 rret(),                 [rlevel+cpu_data_layout.level1]         ; level1
                    mov     __uX_dt_CPUFeatures_DataCacheSize,     rret()
                .endif
                cmp                 dnumlevel,              0
                jne                 fordatacachesize
                ;.endf
                ;cmp                 dnumlevel,                cpu_numlevels
                ;ja                  D900
                ;cmp                 dnumlevel,                0
                ;je                  D820
                ; level = 1 .. numlevels
                ;mov                 rret(),                [rlevel + rnumlevel*reg_size]            ; size of selected cache
                ;jmp                 D850
            ;D820:   ; level = 0. Get size of largest level cache
                ;mov                 rret(),                [rlevel + cpu_data_layout.level3]     ; level3
                ;test                rret(),                rret()
                ;jnz                 D850
                ;mov                 rret(),                [rlevel + cpu_data_layout.level2]     ; level2
                ;test                rret(),                rret()
                ;jnz                 D850
                ;mov                 rret(),                [rlevel + cpu_data_layout.level1]     ; level1
            D850:
                xor                 eax,                    eax
                mov     dword ptr [rlevel+cpu_data_layout.ok],     1     ; remember called, whether success or not
                ;mov     __uX_dt_CPUFeatures_DataCacheSize,     rret()
            ;D900:
            .endif ;__uX_dt_CPUFeatures_infolevel >= 1

            mov                 r01edx,     __uX_dt_CPUFeatures_1H_EDX

    ifdef __x64__           
            mov                 r07ebx,     __uX_dt_CPUFeatures_7H_EBX
            mov                 r01ecx,     __uX_dt_CPUFeatures_1H_ECX
            mov                 r07ecx,     __uX_dt_CPUFeatures_7H_ECX
            mov                 r81ecx,     __uX_dt_CPUFeatures_80000001H_ECX
            mov                 r81edx,     __uX_dt_CPUFeatures_80000001H_EDX
            mov                 r07edx,     __uX_dt_CPUFeatures_7H_EDX
    endif
    ifdef __x32__
            ;/* %eax=01H, %edx */
            test                r01edx,                 1                   ; FPU support by microprocessor
            jz                  not_supported
            mov     __uX_dt_CPUFeatures_FPU,               true
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 4                   ; TSC READTSC support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_TSC,               true
            .endif
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 5                   ; MSR support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_MSR,               true
            .endif
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 8                   ; CMPXCHG8B support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_CMPXCHG8B,         true
            .endif
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 23                  ; MMX support by microprocessor
            jnc                 not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         8                   ; 8
            mov     __uX_dt_CPUFeatures_MMX,               true
            
            .if (__uX_dt_CPUFeatures_cAMD == true)
            mov                 r00ecx,     __uX_dt_CPUFeatures_80000001H_EDX
            ; /* %eax=80000001H, %edx */
            bt                  r00ecx,                 22                  ; MMXEXT support by microprocessor          
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_MMXEXT,            true
            .endif
            
            ; /* %eax=80000001H, %edx */
            bt                  r00ecx,                 31                  ; 3DNOW support by microprocessor           
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_3DNOW,             true
            .endif
            
            ; /* %eax=80000001H, %edx */
            bt                  r00ecx,                 30                  ; 3DNOWEXT support by microprocessor            
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_3DNOWEXT,          true
            .endif
            .endif ;cAMD
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 15                  ; CMOV support by microprocessor
            jnc                 not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         9                   ; 9
            mov     __uX_dt_CPUFeatures_CMOV,              true
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 24                  ; FXSR support by microprocessor
            jnc                 not_supported
            mov     __uX_dt_CPUFeatures_FXSR,              true

            sub                 esp,                16
            mov                [esp],               ebx
            mov                [esp+4],             ecx
            mov                [esp+8],             edx
            ;push                ebx
            ;push                ecx
            ;push                edx
            mov                 ebx,                esp                 ; save stack pointer
            sub                 esp,                200H                ; allocate space for FXSAVE
            and                 esp,               (-10H)               ; align by 16
            TESTDATA EQU 0D95A34BEH                                     ; random test value
            TESTPS   EQU 10CH                                           ; position to write TESTDATA = upper part of XMM6 image
            fxsave             [esp]                                    ; save FP/MMX and XMM registers
            mov                 ecx,               [esp+TESTPS]         ; read part of XMM6 register
            xor      dword ptr [esp+TESTPS],        TESTDATA            ; change value
            fxrstor            [esp]                                    ; load changed value into XMM6
            mov                [esp+TESTPS],        ecx                 ; restore old value in buffer
            fxsave             [esp]                                    ; save again
            mov                 edx,               [esp+TESTPS]         ; read changed XMM6 register
            mov                [esp+TESTPS],        ecx                 ; restore old value
            fxrstor            [esp]                                    ; load old value into XMM6
            xor                 ecx,                edx                 ; get difference between old and new value
            mov                 esp,                ebx                 ; restore stack pointer
            cmp                 ecx,                TESTDATA            ; test if XMM6 was changed correctly
            mov                 edx,               [esp+8]
            mov                 ecx,               [esp+4]
            mov                 ebx,               [esp]
            add                 esp,                16
            ;pop                 edx
            ;pop                 ecx
            ;pop                 ebx
            jne                 not_supported

            xor                 ebx,                    ebx
            xor                 ecx,                    ecx
            xor                 edx,                    edx

            ;/* %eax=01H, %edx */
            bt                  r01edx,                 25                  ; SSE support by microprocessor
            jnc                 sse_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         10                  ; 10
            mov     __uX_dt_CPUFeatures_SSE,               true
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 11                   ; SEP support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_SEP,               true
            .endif

            ;/* %eax=01H, %edx */
            bt                  r01edx,                 26                   ; SSE2 support by microprocessor
            jnc                 sse_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         20                  ; 20
            mov     __uX_dt_CPUFeatures_SSE2,              true
    endif ;__x32__

    ifdef __x64__
            mov     __uX_dt_CPUFeatures_IntrinSet,         20                   ; at least SSE2 supported in 64 bit mode
            mov     __uX_dt_CPUFeatures_FPU,               true
            .if (__uX_dt_CPUFeatures_cAMD == true)
            mov     __uX_dt_CPUFeatures_3DNOW,             true
            mov     __uX_dt_CPUFeatures_MMXEXT,            true
            mov     __uX_dt_CPUFeatures_3DNOWEXT,          true
            .endif
            mov     __uX_dt_CPUFeatures_CMPXCHG8B,         true
            mov     __uX_dt_CPUFeatures_CMOV,              true
            mov     __uX_dt_CPUFeatures_MMX,               true
            mov     __uX_dt_CPUFeatures_FXSR,              true
            mov     __uX_dt_CPUFeatures_enabled_XMM,       true
            mov     __uX_dt_CPUFeatures_SSE,               true
            mov     __uX_dt_CPUFeatures_SSE2,              true
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 4                    ; TSC READTSC support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_TSC,               true
            .endif
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 5                    ; MSR support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_MSR,               true
            .endif
            
            ;/* %eax=01H, %edx */
            bt                  r01edx,                 11                  ; SEP support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_SEP,               true
            .endif
    endif ;__x64__

            ;/* %eax=01H, %edx */
            bt                  r01edx,                 19                 ; CLFSH support by microprocessor (SSE2)
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_CLFSH,             true
            .endif

    ifdef __x32__      
            mov                 r07ebx,     __uX_dt_CPUFeatures_7H_EBX
            mov                 r01ecx,     __uX_dt_CPUFeatures_1H_ECX
    endif ;__x64__

            ;/* %eax=07H, %ebx */
            test                r07ebx,                 1                   ; FSGSBASE support by microprocessor
            .if (!ZERO?)
            mov     __uX_dt_CPUFeatures_FSGSBASE,          true
            .endif

            ;/* %eax=01H, %ecx */
            test                r01ecx,                 1                   ; SSE3 support by microprocessor
            jz                  sse_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         30                  ; 30
            mov     __uX_dt_CPUFeatures_SSE3,              true
        
            ;/* %eax=01H, %ecx */   
            bt                  r01ecx,                 3                   ; MONITOR support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_MONITOR,           true
            .endif
        
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 9                   ; Supplementary SSE3 (SSSE3) support by microprocessor
            jnc                 sse_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         31                  ; 31
            mov     __uX_dt_CPUFeatures_SSSE3,             true
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 13                  ; CMPXCHG16B support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_CMPXCHG16B,        true
            .endif          
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 19                  ; SSE4.1 support by microprocessor
            jnc                 sse_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         41                  ; 41
            mov     __uX_dt_CPUFeatures_SSE41,             true
        
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 23                  ; POPCNT support by microprocessor
            jnc                 sse_not_supported
            mov     __uX_dt_CPUFeatures_POPCNT,            true
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 20                  ; SSE4.2 support by microprocessor
            jnc                 sse_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         42                  ; 42
            mov     __uX_dt_CPUFeatures_SSE42,             true

            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 1                   ; PCLMUL support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_PCLMULQDQ,         true 
            .endif     

            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 22                  ; MOVBE support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_MOVBE,             true
            .endif
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 25                  ; AES support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AES,               true
            .endif
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 30                  ; RDRAND support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_RDRAND,            true
            .endif
            
            ;/* %eax=07H, %ebx */
        .if (__uX_dt_CPUFeatures_ntel == true)
            bt                  r07ebx,                 2                   ; SGX support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_SGX,               true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 4                   ; HLE support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_HLE,               true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 7                   ; SMEP support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_SMEP,              true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 9                   ; ERMS support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_ERMS,              true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 10                  ; INVPCID support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_INVPCID,           true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 11                  ; RTM support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_RTM,               true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 14                  ; MPX support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_MPX,               true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 18                  ; RDSEED support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_RDSEED,            true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 19                  ; ADX support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_ADX,               true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 20                  ; SMAP support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_SMAP,              true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 23                  ; CLFLUSHOPT support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_CLFLUSHOPT,        true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 24                  ; CLWB support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_CLWB,              true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 29                  ; SHA support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_SHA,               true
            .endif

    ifdef __x32__
            mov                 r07ecx,     __uX_dt_CPUFeatures_7H_ECX
    endif ;__x64__

            ;/* %eax=07H, %ecx */
            test                r07ecx,                 1                   ; PREFETCHWT1 support by microprocessor
            .if (!ZERO?)
            mov     __uX_dt_CPUFeatures_PREFETCHWT1,       true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 2                   ; UMIP support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_UMIP,              true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 3                   ; PKU support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_PKU,               true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 4                   ; OSPKE support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_OSPKE,             true
            .endif
            
            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 8                   ; GFNI support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_GFNI,              true
            .endif
            
            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 22                  ; RDPID support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_RDPID,             true
            .endif
        .endif ;__uX_dt_CPUFeatures_ntel == true

    ifdef __x32__
            mov                 r81ecx,     __uX_dt_CPUFeatures_80000001H_ECX
    endif ;__x32__

            ;/* %eax=80000001H, %ecx */
            test                r81ecx,                 1                   ; LAHF/SAHF available in 64-bit mode only support by microprocessor
            .if (!ZERO?)
            mov     __uX_dt_CPUFeatures_LAHF,              true
            .endif

            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 8                   ; PREFETCHW support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_PREFETCHW,         true
            .endif
            
            .if (__uX_dt_CPUFeatures_cAMD == true)
            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 6                   ; SSE4a support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_SSE4a,             true
            .endif
            
            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 15                  ; LWP support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_LWP,               true
            .endif
            
            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 21                  ; TBM support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_TBM,               true
            .endif
            
            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 29                  ; MWAITX support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_MWAITX,            true
            .endif
            .endif ;cAMD

    ifdef __x32__
            mov                 r81edx,     __uX_dt_CPUFeatures_80000001H_EDX
    endif ;__x32__

            ;/* %eax=80000001H, %edx */
            bt                  r81edx,                 11                  ; SYSCALL support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_SYSCALL,           true
            .endif
            
            ;/* %eax=80000001H, %edx */
            bt                  r81edx,                 27                  ; RDTSCP support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_RDTSCP,            true
            .endif
            
            .if (__uX_dt_CPUFeatures_AES == true)
            mov     __uX_dt_CPUFeatures_SSE_AES,           true
            mov     __uX_dt_CPUFeatures_SSE2_AES,          true
            mov     __uX_dt_CPUFeatures_SSE3_AES,          true
            mov     __uX_dt_CPUFeatures_SSSE3_AES,         true
            mov     __uX_dt_CPUFeatures_SSE41_AES,         true
            mov     __uX_dt_CPUFeatures_SSE42_AES,         true
            .endif

            .if (__uX_dt_CPUFeatures_GFNI == true)
            mov     __uX_dt_CPUFeatures_SSE_GFNI,          true
            mov     __uX_dt_CPUFeatures_SSE2_GFNI,         true
            mov     __uX_dt_CPUFeatures_SSE3_GFNI,         true
            mov     __uX_dt_CPUFeatures_SSSE3_GFNI,        true
            mov     __uX_dt_CPUFeatures_SSE41_GFNI,        true
            mov     __uX_dt_CPUFeatures_SSE42_GFNI,        true
            .endif

            .if (__uX_dt_CPUFeatures_PCLMULQDQ == true)
            mov     __uX_dt_CPUFeatures_SSE_PCLMULQDQ,     true
            mov     __uX_dt_CPUFeatures_SSE2_PCLMULQDQ,    true
            mov     __uX_dt_CPUFeatures_SSE3_PCLMULQDQ,    true
            mov     __uX_dt_CPUFeatures_SSSE3_PCLMULQDQ,   true
            mov     __uX_dt_CPUFeatures_SSE41_PCLMULQDQ,   true
            mov     __uX_dt_CPUFeatures_SSE42_PCLMULQDQ,   true
            .endif

    ifdef __x32__
            mov                 r01ecx,     __uX_dt_CPUFeatures_1H_ECX
    endif ;__x32__

            ; check OS support for YMM registers (AVX)
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 27                  ; OSXSAVE: XSAVE/XRSTOR, XSETBV/XGETBV supported
            jnc                 avx_not_supported
            mov     __uX_dt_CPUFeatures_OSXSAVE,           true
            mov     __uX_dt_CPUFeatures_XSAVE,             true

    ifdef __x32__
            sub                 esp,                    16
            mov                [esp],                   eax
            mov                [esp+4],                 ebx
            mov                [esp+8],                 ecx
            mov                [esp+12],                edx
            ;push                eax
            ;push                ebx
            ;push                ecx
            ;push                edx
    endif ;__x32__
    ifdef __x64__
            sub                 rsp,                    32
            mov                [rsp],                   rax
            mov                [rsp+8],                 rbx
            mov                [rsp+16],                rcx
            mov                [rsp+24],                rdx
            ;push                rax
            ;push                rbx
            ;push                rcx
            ;push                rdx
    endif ;__x64__
            xor                 eax,                    eax
            xor                 ecx,                    ecx
            ;db                 0FH, 01H, 0D0H                              ; XGETBV
            xgetbv
            and                 eax,                    06h
            cmp                 eax,                    06h                 ; check OS has enabled both XMM and YMM XCR0[2:1] XCR0[1:1] state support
    ifdef __x32__
            mov                 edx,                   [esp+12]
            mov                 ecx,                   [esp+8]
            mov                 ebx,                   [esp+4]
            mov                 eax,                   [esp]
            add                 esp,                    16
            ;pop                 edx
            ;pop                 ecx
            ;pop                 ebx
            ;pop                 eax
    endif ;__x32__
    ifdef __x64__
            mov                 rdx,                   [rsp+24]
            mov                 rcx,                   [rsp+16]
            mov                 rbx,                   [rsp+8]
            mov                 rax,                   [rsp]
            add                 rsp,                    32
            ;pop                 rdx
            ;pop                 rcx
            ;pop                 rbx
            ;pop                 rax
    endif ;__x64__
            jne                 avx_not_supported
            mov     __uX_dt_CPUFeatures_enabled_YMM,       true
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 28                  ; AVX support by microprocessor
            jnc                 avx_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         50                  ; 50
            mov     __uX_dt_CPUFeatures_AVX,               true
            
            .if (__uX_dt_CPUFeatures_AES == true)
            mov     __uX_dt_CPUFeatures_AVX_AES,           true
            .endif

            .if (__uX_dt_CPUFeatures_GFNI == true)
            mov     __uX_dt_CPUFeatures_AVX_GFNI,          true
            .endif

            .if (__uX_dt_CPUFeatures_PCLMULQDQ == true)
            mov     __uX_dt_CPUFeatures_AVX_PCLMULQDQ,     true
            .endif

            .if (__uX_dt_CPUFeatures_cAMD == true)
    ifdef __x32__
            mov                 r81ecx,     __uX_dt_CPUFeatures_80000001H_ECX
    endif ;__x32__

            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 11                  ; XOP support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_XOP,               true
            .endif

            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 16                  ; FMA4 support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_FMA4,              true
            .endif
            .endif ;cAMD

            .if (__uX_dt_CPUFeatures_PCLMULQDQ == true && __uX_dt_CPUFeatures_AES == true)
            mov     __uX_dt_CPUFeatures_IntrinSet,         51                  ; 51
            .endif

    ifdef __x32__
            mov                 r07ebx,     __uX_dt_CPUFeatures_7H_EBX
    endif ;__x32__

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 5                   ; AVX2 support by microprocessor
            jnc                 avx_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         52                  ; 52
            mov     __uX_dt_CPUFeatures_AVX2,              true

    ifdef __x32__
            mov                 r07ecx,     __uX_dt_CPUFeatures_7H_ECX
    endif ;__x32__

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 9                   ; VAES support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_VAES,              true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 10                  ; VPCLMULQDQ support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_VPCLMULQDQ,        true
            .endif
            
            .if (__uX_dt_CPUFeatures_AES == true)
            mov     __uX_dt_CPUFeatures_AVX2_AES,          true
            .endif

            .if (__uX_dt_CPUFeatures_GFNI == true)
            mov     __uX_dt_CPUFeatures_AVX2_GFNI,         true
            .endif

            .if (__uX_dt_CPUFeatures_PCLMULQDQ == true)
            mov     __uX_dt_CPUFeatures_AVX2_PCLMULQDQ,    true
            .endif
        
            .if (__uX_dt_CPUFeatures_VAES == true)
            mov     __uX_dt_CPUFeatures_AVX_VAES,          true
            mov     __uX_dt_CPUFeatures_AVX2_VAES,         true
            .endif

            .if (__uX_dt_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_dt_CPUFeatures_AVX_VPCLMULQDQ,    true
            mov     __uX_dt_CPUFeatures_AVX2_VPCLMULQDQ,   true
            .endif
            
            ; 57 or above = FMA3, F16C, BMI1, BMI2, LZCNT
    ifdef __x32__
            mov                 r01ecx,     __uX_dt_CPUFeatures_1H_ECX
    endif ;__x32__

            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 12                  ; FMA3 support by microprocessor
            jnc                 avx_not_supported
            mov     __uX_dt_CPUFeatures_FMA,               true
            
            ;/* %eax=01H, %ecx */
            bt                  r01ecx,                 29                  ; F16C support by microprocessor
            jnc                 avx_not_supported
            mov     __uX_dt_CPUFeatures_F16C,              true
            
    ifdef __x32__
            mov                 r07ebx,     __uX_dt_CPUFeatures_7H_EBX
    endif ;__x32__

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 3                   ; BMI1 support by microprocessor
            jnc                 avx_not_supported
            mov     __uX_dt_CPUFeatures_BMI1,              true
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 8                   ; BMI2 support by microprocessor
            jnc                 avx_not_supported
            mov     __uX_dt_CPUFeatures_BMI2,              true
        
    ifdef __x32__
            mov                 r81ecx,     __uX_dt_CPUFeatures_80000001H_ECX
    endif ;__x32__

            ;/* %eax=80000001H, %ecx */
            bt                  r81ecx,                 5                   ; LZCNT support by microprocessor
            jnc                 avx_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         57                  ; 57
            mov     __uX_dt_CPUFeatures_LZCNT,             true
            mov     __uX_dt_CPUFeatures_ABM,               true

        .if (__uX_dt_CPUFeatures_ntel == true)
    ifdef __x32__
            sub                 esp,                    16
            mov                [esp],                   eax
            mov                [esp+4],                 ebx
            mov                [esp+8],                 ecx
            mov                [esp+12],                edx
            ;push                eax
            ;push                ebx
            ;push                ecx
            ;push                edx
    endif ;__x32__
    ifdef __x64__
            sub                 rsp,                    32
            mov                [rsp],                   rax
            mov                [rsp+8],                 rbx
            mov                [rsp+16],                rcx
            mov                [rsp+24],                rdx
            ;push                rax
            ;push                rbx
            ;push                rcx
            ;push                rdx
    endif ;__x64__
            xor                 ecx,                    ecx
            ;db                 0FH, 01H, 0D0H                              ; XGETBV
            xgetbv
            and                 eax,                    0E6h
            cmp                 eax,                    0E6h                ; check OS has enabled both XMM and YMM and ZMM XCR0[7:5] XCR0[2:1] XCR0[1:1] state support
    ifdef __x32__
            mov                 edx,                   [esp+12]
            mov                 ecx,                   [esp+8]
            mov                 ebx,                   [esp+4]
            mov                 eax,                   [esp]
            add                 esp,                    16
            ;pop                 edx
            ;pop                 ecx
            ;pop                 ebx
            ;pop                 eax
    endif ;__x32__
    ifdef __x64__
            mov                 rdx,                   [rsp+24]
            mov                 rcx,                   [rsp+16]
            mov                 rbx,                   [rsp+8]
            mov                 rax,                   [rsp]
            add                 rsp,                    32
            ;pop                 rdx
            ;pop                 rcx
            ;pop                 rbx
            ;pop                 rax
    endif ;__x64__
            jne                 avx512_not_supported
            mov     __uX_dt_CPUFeatures_enabled_ZMM,       true

    ifdef __x32__
            mov                 r07ebx,     __uX_dt_CPUFeatures_7H_EBX
    endif ;__x32__

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 16                  ; AVX512F support by microprocessor
            jnc                 avx512_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         60                  ; 60
            mov     __uX_dt_CPUFeatures_AVX512F,           true
            
            .if (__uX_dt_CPUFeatures_GFNI == true)
            mov     __uX_dt_CPUFeatures_AVX512_GFNI,       true
            .endif
            
            .if (__uX_dt_CPUFeatures_VAES == true)
            mov     __uX_dt_CPUFeatures_AVX512_VAES,       true
            .endif
            
            .if (__uX_dt_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_dt_CPUFeatures_AVX512_VPCLMULQDQ, true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 17                  ; AVX512DQ support by microprocessor
            jnc                 avx512_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         61                  ; 61
            mov     __uX_dt_CPUFeatures_AVX512DQ,          true

            .if (__uX_dt_CPUFeatures_GFNI == true)
            mov     __uX_dt_CPUFeatures_AVX512DQ_GFNI,     true
            .endif
        
            .if (__uX_dt_CPUFeatures_VAES == true)
            mov     __uX_dt_CPUFeatures_AVX512DQ_VAES,     true
            .endif

            .if (__uX_dt_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_dt_CPUFeatures_AVX512DQ_VPCLMULQDQ,   true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 30                  ; AVX512BW support by microprocessor
            jnc                 avx512_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         62                  ; 62
            mov     __uX_dt_CPUFeatures_AVX512BW,          true

            .if (__uX_dt_CPUFeatures_GFNI == true)
            mov     __uX_dt_CPUFeatures_AVX512BW_GFNI,     true
            .endif

            .if (__uX_dt_CPUFeatures_VAES == true)
            mov     __uX_dt_CPUFeatures_AVX512BW_VAES,     true
            .endif

            .if (__uX_dt_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_dt_CPUFeatures_AVX512BW_VPCLMULQDQ,   true
            .endif

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 31                  ; AVX512VL support by microprocessor
            jnc                 avx512_not_supported
            mov     __uX_dt_CPUFeatures_IntrinSet,         63                  ; 63
            mov     __uX_dt_CPUFeatures_AVX512VL,          true

            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 26                  ; AVX512PF support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512PF,          true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 27                  ; AVX512ER support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512ER,          true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 28                  ; AVX512CD support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512CD,          true
            .endif
            
            ;/* %eax=07H, %ebx */
            bt                  r07ebx,                 21                  ; AVX512_IFMA support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512_IFMA,       true
            .endif
            
    ifdef __x32__
            mov                 r07ecx,     __uX_dt_CPUFeatures_7H_ECX
    endif ;__x32__

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 1                   ; AVX512_VBMI support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512_VBMI,       true
            .endif
            
            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 6                   ; AVX512_VBMI2 support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512_VBMI2,      true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 11                  ; AVX512_VNNI support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512_VNNI,       true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 12                  ; AVX512_BITALG support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512_BITALG,     true
            .endif

            ;/* %eax=07H, %ecx */
            bt                  r07ecx,                 14                  ; AVX512_VPOPCNTDQ support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512_VPOPCNTDQ,  true
            .endif

    ifdef __x32__
            mov                 r07edx,     __uX_dt_CPUFeatures_7H_EDX
    endif ;__x32__

            ;/* %eax=07H, %edx */
            bt                  r07edx,                 2                   ; AVX512_4VNNIW support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512_4VNNIW,     true
            .endif
            
            ;/* %eax=07H, %edx */   
            bt                  r07edx,                 3                   ; AVX512_4FMAPS support by microprocessor
            .if (CARRY?)
            mov     __uX_dt_CPUFeatures_AVX512_4FMAPS,     true
            .endif
            
            .if (__uX_dt_CPUFeatures_GFNI == true)
            mov     __uX_dt_CPUFeatures_AVX512_GFNI_VL,    true
            .endif

            .if (__uX_dt_CPUFeatures_VAES == true)
            mov     __uX_dt_CPUFeatures_AVX512_VAES_VL,    true
            .endif

            .if (__uX_dt_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_dt_CPUFeatures_AVX512_VPCLMULQDQ_VL,  true
            .endif

            .if (__uX_dt_CPUFeatures_AVX512_IFMA == true)
            mov     __uX_dt_CPUFeatures_AVX512_IFMA_VL,    true
            .endif

            .if (__uX_dt_CPUFeatures_AVX512_VBMI == true)
            mov     __uX_dt_CPUFeatures_AVX512_VBMI_VL,    true
            .endif

            .if (__uX_dt_CPUFeatures_AVX512_VBMI2 == true)
            mov     __uX_dt_CPUFeatures_AVX512_VBMI2_VL,   true
            .endif

            .if (__uX_dt_CPUFeatures_AVX512_VNNI == true)
            mov     __uX_dt_CPUFeatures_AVX512_VNNI_VL,    true
            .endif

            .if (__uX_dt_CPUFeatures_AVX512_BITALG == true)
            mov     __uX_dt_CPUFeatures_AVX512_BITALG_VL,  true
            .endif

            .if (__uX_dt_CPUFeatures_AVX512_VPOPCNTDQ == true)
            mov     __uX_dt_CPUFeatures_AVX512_VPOPCNTDQ_VL,   true
            .endif

            .if (__uX_dt_CPUFeatures_GFNI == true)
            mov     __uX_dt_CPUFeatures_AVX512BW_GFNI_VL,  true
            .endif

            .if (__uX_dt_CPUFeatures_VAES == true)
            mov     __uX_dt_CPUFeatures_AVX512BW_VAES_VL,  true
            .endif

            .if (__uX_dt_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_dt_CPUFeatures_AVX512BW_VPCLMULQDQ_VL,    true
            .endif

            .if (__uX_dt_CPUFeatures_AVX512BW == true)
            mov     __uX_dt_CPUFeatures_AVX512BW_VL,   true
            .endif

            .if (__uX_dt_CPUFeatures_GFNI == true)
            mov     __uX_dt_CPUFeatures_AVX512DQ_GFNI_VL,  true
            .endif

            .if (__uX_dt_CPUFeatures_VAES == true)
            mov     __uX_dt_CPUFeatures_AVX512DQ_VAES_VL,  true
            .endif

            .if (__uX_dt_CPUFeatures_VPCLMULQDQ == true)
            mov     __uX_dt_CPUFeatures_AVX512DQ_VPCLMULQDQ_VL,    true
            .endif

            .if (__uX_dt_CPUFeatures_AVX512DQ == true)
            mov     __uX_dt_CPUFeatures_AVX512DQ_VL,   true
            .endif

            .if (__uX_dt_CPUFeatures_AVX512CD == true)
            mov     __uX_dt_CPUFeatures_AVX512CD_VL,   true
            .endif
        .endif ;__uX_dt_CPUFeatures_ntel == true

avx512_not_supported:
avx_not_supported:
sse_not_supported:

        .if (__uX_dt_CPUFeatures_infolevel >= 2) ;__uX_dt_CPUFeatures_infolevel >= 2
                mov             dvendor,            __uX_dt_CPUFeatures_vendor
                mov             dfamily,            __uX_dt_CPUFeatures_family
                mov             dmodel,             __uX_dt_CPUFeatures_model

                xor             eax,                eax             ; return value
                dec             dvendor
                jz              UIntel
                dec             dvendor
                jz              UAMD
                dec             dvendor
                jz              UVIA
                ; unknown vendor
                inc             eax
                jmp             Uend

            UIntel: ; Unaligned read is faster on Intel Nehalem and later, but not Atom
                ; Nehalem  = family 6, model 1AH
                ; Atom     = family 6, model 1CH
                ; Silvermont = family 6, model 37H (palignr may be slightly faster than unaligned read in some cases. no big difference)
                ; Netburst = family 0FH
                ; Future models are likely to be family 6, mayby > 6, model > 1C
                cmp             dfamily,            6
                jb              Uend                                ; old Pentium 1, etc
                cmp             dfamily,            0FH
                je              Uend                                ; old Netburst architecture
                cmp             dmodel,             1AH
                jb              Uend                                ; earlier than Nehalem
                cmp             dmodel,             1CH
                je              Uend                                ; Intel Atom
                or              eax,                2               ; Intel Nehalem and later, except Atom
                jmp             Uend

            UAMD:           ; AMD processors:
                ; The PALIGNR instruction is slow on AMD Bobcat but fast on Jaguar
                ; K10/Opteron = family 10H     ; Use unaligned
                ; Bobcat = family 14H          ; PALIGNR is very slow. Use unaligned
                ; Piledriver = family 15H      ; Use unaligned
                ; Jaguar = family 16H          ; PALIGNR is fast. Use aligned (aligned is faster in most cases, but not all)
                cmp             dfamily,            10H             ; AMD K8 or earlier: use aligned
                jb              Uend    
                cmp             dfamily,            16H             ; Jaguar: use aligned
                je              Uend
                or              eax,                2               ; AMD K10 or later: use unaligned
                jmp             Uend

            UVIA:           ; Unaligned read is not faster than PALIGNR on VIA Nano 2000 and 3000                
                cmp             dfamily,            0FH
                jna             Uend                                ; VIA Nano
                inc             eax                                 ; Future versions: unknown
                ;jmp             Uend
                mov     __uX_dt_CPUFeatures_UnalignedIsFaster,         eax

            Uend:
                xor             eax,                eax
                .if (__uX_dt_CPUFeatures_AVX == true)
                ;call           _uX_CPUFeatures_IntrinSet
                ;cmp            eax, 11                ; AVX supported
                ;jb             S90

                ;call           _uX_CPUFeatures_CpuType                ; get vendor, family, model
                ;pop            rdx                     ; model
                ;pop            rcx                     ; family
                ;pop            rax                     ; vendor

                cmp             dvendor,            1                   ; Intel
                je              SIntel
                cmp             dvendor,            2                   ; AMD
                je              SAMD
                cmp             dvendor,            3
                je              SVIA        
                jmp             S91                                     ; other vendor, not known
            SIntel:
                cmp             dfamily,            6
                jne             S92                                     ; unknown family. possibly future model
                                                                        ; model 2AH Sandy Bridge
                                                                        ; model 3AH Ivy Bridge
                                                                        ; model 3CH Haswell
                                                                        ; Sandy Bridge and Ivy Bridge are slightly faster with 128 than with 256 bit moves on large data blocks
                                                                        ; Haswell is much faster with 256 bit moves
                cmp             dmodel,             3AH
                jbe             S90
                jmp             S92
            SAMD:                                                       ; AMD
                cmp             dfamily,            15H                 ; family 15h = Bulldozer, Piledriver
                ja              S92                                     ; assume future AMD families are faster
                                                                        ; family 16H = Jaguar. 256 bit write is slightly faster
                                                                        ; model 1 = Bulldozer is a little slower on 256 bit write
                                                                        ; model 2 = Piledriver is terribly slow on 256 bit write
                                                                        ; model 30h = Steamroller is reasonable on 256 bit write
                cmp             dmodel,             30h
                jb              S90
                jmp             S91                                     ; Steamroller: moderate
            SVIA:
                jmp             S91                                     ; don't know
            S90:
                jmp             Send
            S91:
                mov             eax,                1                   ; return 1
                jmp             Send
            S92:
                mov             eax,                2                   ; return 2
            Send:
                mov     __uX_dt_CPUFeatures_Store256BitIsFaster,      eax
            .endif ;__uX_dt_CPUFeatures_AVX == true

        .endif ;__uX_dt_CPUFeatures_infolevel >= 2

not_supported:
    ifdef __x32__
            mov                 edi,               [esp+8]
            mov                 esi,               [esp+4]
            mov                 ebx,               [esp]
            ;mov                 esp,               [esp]
            add                 esp,                16
            mov                 esp,                ebp
            pop                 ebp
            ;pop                edi
            ;pop                esi
            ;pop                ebx
            ;pop                ebp
            ;pop                esp
    endif ;__x32__
    ifdef __x64__
        ifdef __windows__
            mov                 r15,               [rsp+48]
            mov                 r14,               [rsp+40]
            mov                 r12,               [rsp+32]
            mov                 r11,               [rsp+24]
            mov                 rdi,               [rsp+16]
            mov                 rsi,               [rsp+8]
        else
            mov                 r15,               [rsp+32]
            mov                 r14,               [rsp+24]
            mov                 r12,               [rsp+16]
            mov                 r11,               [rsp+8]
        endif
            mov                 rbx,               [rsp]
            ;mov                 rsp,               [rsp]
        ifdef __windows__
            add                 rsp,                64
        else
            add                 rsp,                48
        endif
            ;mov                 rsp,                rbp
            ;pop                 rbp
            ;pop                r15
            ;pop                r14
            ;pop                r12
            ;pop                r11
        ;ifdef __windows__
            ;pop                rdi
            ;pop                rsi
        ;endif
            ;pop                rbx
            ;pop                rbp
            ;pop                rsp
    endif ;__x64__
    CPUInitEND:  ; finished
            ret
procend

; Destructor
procstart _uX_CPUFeatures_Fin, callconv, void, < >, < >, < >
            xor             rret(),                    rret()

            mov     __uX_dt_CPUFeatures_80000001H_EDX,         dret()
            mov     __uX_dt_CPUFeatures_80000001H_ECX,         dret()
            mov     __uX_dt_CPUFeatures_7H_EDX,                dret()
            mov     __uX_dt_CPUFeatures_7H_ECX,                dret()
            mov     __uX_dt_CPUFeatures_7H_EBX,                dret()
            mov     __uX_dt_CPUFeatures_1H_EDX,                dret()
            mov     __uX_dt_CPUFeatures_1H_ECX,                dret()
            mov     __uX_dt_CPUFeatures_0H_ECX,                dret()
            mov     __uX_dt_CPUFeatures_0H_EBX,                dret()

            mov     __uX_dt_CPUFeatures_L3DataCacheSize,       rret()
            mov     __uX_dt_CPUFeatures_L2DataCacheSize,       rret()
            mov     __uX_dt_CPUFeatures_L1DataCacheSize,       rret()
            mov     __uX_dt_CPUFeatures_DataCacheSize,         rret()

            mov     __uX_dt_CPUFeatures_Store256BitIsFaster,   dret()
            mov     __uX_dt_CPUFeatures_UnalignedIsFaster,     dret()

            mov     __uX_dt_CPUFeatures_infolevel,             dret()

            mov     __uX_dt_CPUFeatures_ProcessorName,         bret()

            mov     __uX_dt_CPUFeatures_model,                 dret()
            mov     __uX_dt_CPUFeatures_family,                dret()
            mov     __uX_dt_CPUFeatures_vendor,                dret()

            mov     __uX_dt_CPUFeatures_Inited,                dret()

            mov     __uX_dt_CPUFeatures_enabled_ZMM,           dret()
            mov     __uX_dt_CPUFeatures_enabled_YMM,           dret()
            mov     __uX_dt_CPUFeatures_enabled_XMM,           dret()

    ;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
            mov     __uX_dt_CPUFeatures_AVX2_VPCLMULQDQ,       dret()
            mov     __uX_dt_CPUFeatures_AVX2_VAES,             dret()
            mov     __uX_dt_CPUFeatures_AVX2_PCLMULQDQ,        dret()
            mov     __uX_dt_CPUFeatures_AVX2_GFNI,             dret()
            mov     __uX_dt_CPUFeatures_AVX2_AES,              dret()
            mov     __uX_dt_CPUFeatures_AVX_VPCLMULQDQ,        dret()
            mov     __uX_dt_CPUFeatures_AVX_VAES,              dret()
            mov     __uX_dt_CPUFeatures_AVX_PCLMULQDQ,         dret()
            mov     __uX_dt_CPUFeatures_AVX_GFNI,              dret()
            mov     __uX_dt_CPUFeatures_AVX_AES,               dret()
            mov     __uX_dt_CPUFeatures_SSE42_PCLMULQDQ,       dret()
            mov     __uX_dt_CPUFeatures_SSE42_GFNI,            dret()
            mov     __uX_dt_CPUFeatures_SSE42_AES,             dret()
            mov     __uX_dt_CPUFeatures_SSE41_PCLMULQDQ,       dret()
            mov     __uX_dt_CPUFeatures_SSE41_GFNI,            dret()
            mov     __uX_dt_CPUFeatures_SSE41_AES,             dret()
            mov     __uX_dt_CPUFeatures_SSSE3_PCLMULQDQ,       dret()
            mov     __uX_dt_CPUFeatures_SSSE3_GFNI,            dret()
            mov     __uX_dt_CPUFeatures_SSSE3_AES,             dret()
            mov     __uX_dt_CPUFeatures_SSE3_PCLMULQDQ,        dret()
            mov     __uX_dt_CPUFeatures_SSE3_GFNI,             dret()
            mov     __uX_dt_CPUFeatures_SSE3_AES,              dret()
            mov     __uX_dt_CPUFeatures_SSE2_PCLMULQDQ,        dret()
            mov     __uX_dt_CPUFeatures_SSE2_GFNI,             dret()
            mov     __uX_dt_CPUFeatures_SSE2_AES,              dret()
            mov     __uX_dt_CPUFeatures_SSE_PCLMULQDQ,         dret()
            mov     __uX_dt_CPUFeatures_SSE_GFNI,              dret()
            mov     __uX_dt_CPUFeatures_SSE_AES,               dret()
            
    ;/* %eax=07H, %ebx, %ecx */
            mov     __uX_dt_CPUFeatures_AVX512CD_VL,           dret()
            mov     __uX_dt_CPUFeatures_AVX512DQ_VL,           dret()
            mov     __uX_dt_CPUFeatures_AVX512DQ_VPCLMULQDQ_VL,dret()
            mov     __uX_dt_CPUFeatures_AVX512DQ_VPCLMULQDQ,   dret()
            mov     __uX_dt_CPUFeatures_AVX512DQ_VAES_VL,      dret()
            mov     __uX_dt_CPUFeatures_AVX512DQ_VAES,         dret()
            mov     __uX_dt_CPUFeatures_AVX512DQ_GFNI_VL,      dret()
            mov     __uX_dt_CPUFeatures_AVX512DQ_GFNI,         dret()
            mov     __uX_dt_CPUFeatures_AVX512BW_VL,           dret()
            mov     __uX_dt_CPUFeatures_AVX512BW_VPCLMULQDQ_VL,dret()
            mov     __uX_dt_CPUFeatures_AVX512BW_VPCLMULQDQ,   dret()
            mov     __uX_dt_CPUFeatures_AVX512BW_VAES_VL,      dret()
            mov     __uX_dt_CPUFeatures_AVX512BW_VAES,         dret()
            mov     __uX_dt_CPUFeatures_AVX512BW_GFNI_VL,      dret()
            mov     __uX_dt_CPUFeatures_AVX512BW_GFNI,         dret()
            mov     __uX_dt_CPUFeatures_AVX512_VPOPCNTDQ_VL,   dret()
            mov     __uX_dt_CPUFeatures_AVX512_BITALG_VL,      dret()
            mov     __uX_dt_CPUFeatures_AVX512_VNNI_VL,        dret()
            mov     __uX_dt_CPUFeatures_AVX512_VBMI2_VL,       dret()
            mov     __uX_dt_CPUFeatures_AVX512_VBMI_VL,        dret()
            mov     __uX_dt_CPUFeatures_AVX512_IFMA_VL,        dret()
            mov     __uX_dt_CPUFeatures_AVX512_VPCLMULQDQ_VL,  dret()
            mov     __uX_dt_CPUFeatures_AVX512_VPCLMULQDQ,     dret()
            mov     __uX_dt_CPUFeatures_AVX512_VAES_VL,        dret()
            mov     __uX_dt_CPUFeatures_AVX512_VAES,           dret()
            mov     __uX_dt_CPUFeatures_AVX512_GFNI_VL,        dret()
            mov     __uX_dt_CPUFeatures_AVX512_GFNI,           dret()

    ;/* %eax=80000001H, %edx */
            mov     __uX_dt_CPUFeatures_3DNOW,                 dret()
            mov     __uX_dt_CPUFeatures_3DNOWEXT,              dret()
            mov     __uX_dt_CPUFeatures_RDTSCP,                dret()
            mov     __uX_dt_CPUFeatures_MMXEXT,                dret()
            mov     __uX_dt_CPUFeatures_SYSCALL,               dret()

    ;/* %eax=80000001H, %ecx */
            mov     __uX_dt_CPUFeatures_MWAITX,                dret()
            mov     __uX_dt_CPUFeatures_TBM,                   dret()
            mov     __uX_dt_CPUFeatures_FMA4,                  dret()
            mov     __uX_dt_CPUFeatures_LWP,                   dret()
            mov     __uX_dt_CPUFeatures_XOP,                   dret()
            mov     __uX_dt_CPUFeatures_PREFETCHW,             dret()
            mov     __uX_dt_CPUFeatures_SSE4a,                 dret()
            mov     __uX_dt_CPUFeatures_ABM,                   dret()
            mov     __uX_dt_CPUFeatures_LZCNT,                 dret()
            mov     __uX_dt_CPUFeatures_LAHF,                  dret()

    ;/* %eax=07H, %edx */
            mov     __uX_dt_CPUFeatures_AVX512_4FMAPS,         dret()
            mov     __uX_dt_CPUFeatures_AVX512_4VNNIW,         dret()

    ;/* %eax=07H, %ecx */
            mov     __uX_dt_CPUFeatures_RDPID,                 dret()
            mov     __uX_dt_CPUFeatures_AVX512_VPOPCNTDQ,      dret()
            mov     __uX_dt_CPUFeatures_AVX512_BITALG,         dret()
            mov     __uX_dt_CPUFeatures_AVX512_VNNI,           dret()
            mov     __uX_dt_CPUFeatures_VPCLMULQDQ,            dret()
            mov     __uX_dt_CPUFeatures_VAES,                  dret()
            mov     __uX_dt_CPUFeatures_GFNI,                  dret()
            mov     __uX_dt_CPUFeatures_AVX512_VBMI2,          dret()
            mov     __uX_dt_CPUFeatures_OSPKE,                 dret()
            mov     __uX_dt_CPUFeatures_PKU,                   dret()
            mov     __uX_dt_CPUFeatures_UMIP,                  dret()
            mov     __uX_dt_CPUFeatures_AVX512_VBMI,           dret()
            mov     __uX_dt_CPUFeatures_PREFETCHWT1,           dret()

    ;/* %eax=07H, %ebx */
            mov     __uX_dt_CPUFeatures_AVX512VL,              dret()
            mov     __uX_dt_CPUFeatures_AVX512BW,              dret()
            mov     __uX_dt_CPUFeatures_SHA,                   dret()
            mov     __uX_dt_CPUFeatures_AVX512CD,              dret()
            mov     __uX_dt_CPUFeatures_AVX512ER,              dret()
            mov     __uX_dt_CPUFeatures_AVX512PF,              dret()
            mov     __uX_dt_CPUFeatures_CLWB,                  dret()
            mov     __uX_dt_CPUFeatures_CLFLUSHOPT,            dret()
            mov     __uX_dt_CPUFeatures_AVX512_IFMA,           dret()
            mov     __uX_dt_CPUFeatures_SMAP,                  dret()
            mov     __uX_dt_CPUFeatures_ADX,                   dret()
            mov     __uX_dt_CPUFeatures_RDSEED,                dret()
            mov     __uX_dt_CPUFeatures_AVX512DQ,              dret()
            mov     __uX_dt_CPUFeatures_AVX512F,               dret()
            mov     __uX_dt_CPUFeatures_MPX,                   dret()
            mov     __uX_dt_CPUFeatures_RTM,                   dret()
            mov     __uX_dt_CPUFeatures_INVPCID,               dret()
            mov     __uX_dt_CPUFeatures_ERMS,                  dret()
            mov     __uX_dt_CPUFeatures_BMI2,                  dret()
            mov     __uX_dt_CPUFeatures_SMEP,                  dret()
            mov     __uX_dt_CPUFeatures_AVX2,                  dret()
            mov     __uX_dt_CPUFeatures_HLE,                   dret()
            mov     __uX_dt_CPUFeatures_BMI1,                  dret()
            mov     __uX_dt_CPUFeatures_SGX,                   dret()
            mov     __uX_dt_CPUFeatures_FSGSBASE,              dret()

    ;/* %eax=01H, %edx */
            mov     __uX_dt_CPUFeatures_SSE2,                  dret()
            mov     __uX_dt_CPUFeatures_SSE,                   dret()
            mov     __uX_dt_CPUFeatures_FXSR,                  dret()
            mov     __uX_dt_CPUFeatures_MMX,                   dret()
            mov     __uX_dt_CPUFeatures_CLFSH,                 dret()
            mov     __uX_dt_CPUFeatures_CMOV,                  dret()
            mov     __uX_dt_CPUFeatures_SEP,                   dret()
            mov     __uX_dt_CPUFeatures_CMPXCHG8B,             dret()
            mov     __uX_dt_CPUFeatures_MSR,                   dret()
            mov     __uX_dt_CPUFeatures_TSC,                   dret()
            mov     __uX_dt_CPUFeatures_FPU,                   dret()

    ;/* %eax=01H, %ecx */
            mov     __uX_dt_CPUFeatures_RDRAND,                dret()
            mov     __uX_dt_CPUFeatures_F16C,                  dret()
            mov     __uX_dt_CPUFeatures_AVX,                   dret()
            mov     __uX_dt_CPUFeatures_OSXSAVE,               dret()
            mov     __uX_dt_CPUFeatures_XSAVE,                 dret()
            mov     __uX_dt_CPUFeatures_AES,                   dret()
            mov     __uX_dt_CPUFeatures_POPCNT,                dret()
            mov     __uX_dt_CPUFeatures_MOVBE,                 dret()
            mov     __uX_dt_CPUFeatures_SSE42,                 dret()
            mov     __uX_dt_CPUFeatures_SSE41,                 dret()
            mov     __uX_dt_CPUFeatures_CMPXCHG16B,            dret()
            mov     __uX_dt_CPUFeatures_FMA,                   dret()
            mov     __uX_dt_CPUFeatures_SSSE3,                 dret()
            mov     __uX_dt_CPUFeatures_MONITOR,               dret()
            mov     __uX_dt_CPUFeatures_PCLMULQDQ,             dret()
            mov     __uX_dt_CPUFeatures_SSE3,                  dret()
    
    ; /* %eax=00H, %ebx */
            mov     __uX_dt_CPUFeatures_NexG,                  dret()
            mov     __uX_dt_CPUFeatures_Cyri,                  dret()
            mov     __uX_dt_CPUFeatures_VIA,                   dret()
            mov     __uX_dt_CPUFeatures_Cent,                  dret()

    ; /* %eax=00H, %ecx */
            mov     __uX_dt_CPUFeatures_cAMD,                  dret()
            mov     __uX_dt_CPUFeatures_ntel,                  dret()
    
    ; /* EFLAGS %eax=00H, %ebx=00H */
            mov     __uX_dt_CPUFeatures_CPUID,                 dret()

            mov     __uX_dt_CPUFeatures_IntrinSet,             dret()

            ret
procend

;alignptrfieldproc

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
            evendor     textequ     <ecx>
            efamily     textequ     <edx>
        else
            evendor     textequ     <dp0()>
            efamily     textequ     <dp1()>
        endif
            emodel      textequ     <esi>
    endif
    ifdef __x64__
            evendor     textequ     <dp0()>
            efamily     textequ     <dp1()>
            emodel      textequ     <dp2()>
    endif

; extern "C" void CpuType(int * vendor, int * family, int * model);
procstart _uX_CPUFeatures_CpuType, callconv, void, < >, < >, vendor:ptr_t, family:ptr_t, model:ptr_t
    ifdef __x32__
            ;push            ebp
            ;mov             ebp,                esp
        ifdef __unix__
            sub             esp,                16
            mov            [esp],               evendor
            mov            [esp+4],             efamily
            mov            [esp+8],             emodel
        else
            sub             esp,                8
            mov            [esp],               emodel
        endif
    endif ;__x32__
;C300:   ; return r9d = vendor, r10d = family, r11d = model
            test            evendor,            evendor
            jz              C310
            mov             evendor,            __uX_dt_CPUFeatures_vendor
    ifdef __x32__
        ifdef __unix__
            mov             vendor,             evendor
        endif
    endif
C310:   
            test            efamily,            efamily
            jz              C320
            mov             efamily,            __uX_dt_CPUFeatures_family
    ifdef __x32__
        ifdef __unix__
            mov             family,             efamily
        endif
    endif
C320:
            test            emodel,             emodel
            jz              C330
            mov             emodel,             __uX_dt_CPUFeatures_model
    ifdef __x32__
            mov             model,              emodel
    endif
C330:   
    ifdef __x32__
        ifdef __unix__
            mov             emodel,            [esp+8]
            mov             efamily,           [esp+4]
            mov             evendor,           [esp]
            add             esp,                16
        else
            mov             emodel,            [esp]
            add             esp,                8
        endif
            ;mov             esp,                ebp
            ;pop             ebp
    endif ;__x32__
            ret
procend

procstart _uX_CPUFeatures_ProcessorName, callconv, ptr, < >, < >, < >
    ifdef __x32__
            mov             rret(),             dword ptr [__uX_dt_CPUFeatures_ProcessorName]        ; Pointer to result
    endif
    ifdef __x64__
            lea             rret(),             [__uX_dt_CPUFeatures_ProcessorName]      ; Pointer to result
    endif
            ret
procend

    ;alignsize_tfieldproc

    ifdef __x32__
        ifdef __windows__
            dchlevel     textequ     <dp0()>
        endif
        ifdef __unix__
            dchlevel     textequ     <level>
        endif
    endif
    ifdef __x64__
            dchlevel     textequ     <dp0()>
    endif

procstart _uX_CPUFeatures_DataCacheSize, callconv, size_t, < >, < >, level:dword
            xor             rret(),             rret()
            .if (dchlevel == 3)
                    mov                 rret(),             __uX_dt_CPUFeatures_L3DataCacheSize        ; Pointer to result
            .elseif (dchlevel == 2)
                    mov                 rret(),             __uX_dt_CPUFeatures_L2DataCacheSize        ; Pointer to result
            .elseif (dchlevel == 1)
                    mov                 rret(),             __uX_dt_CPUFeatures_L1DataCacheSize        ; Pointer to result
            .elseif (dchlevel == 0)
                    mov                 rret(),             __uX_dt_CPUFeatures_DataCacheSize        ; Pointer to result
            .endif
            ret
procend

procstart _uX_CPUFeatures_L1DataCacheSize, callconv, size_t, < >, < >, level:dword
            xor             rret(),             rret()
            mov             rret(),             __uX_dt_CPUFeatures_L1DataCacheSize        ; Pointer to result
            ret
procend

procstart _uX_CPUFeatures_L2DataCacheSize, callconv, size_t, < >, < >, level:dword
            xor             rret(),             rret()
            mov             rret(),             __uX_dt_CPUFeatures_L2DataCacheSize        ; Pointer to result
            ret
procend

procstart _uX_CPUFeatures_L3DataCacheSize, callconv, size_t, < >, < >, level:dword
            xor             rret(),             rret()
            mov             rret(),             __uX_dt_CPUFeatures_L3DataCacheSize        ; Pointer to result
            ret
procend

;WriteHex:                              ; Local function: Write 2 hexadecimal digits
        ; Parameters: AL = number to write, RDI = text destination
procstart _uX_CPUFeatures_WriteHex, callconv, void, < >, < >, < >
            mov                 ecx,                    eax
            shr                 ecx,                    4
            and                 ecx,                    0FH             ; most significant digit first
            cmp                 ecx,                    10
            jnb                 W1
            ; 0 - 9
            add                 ecx,                    '0'
            jmp                 W2
W1:         ; A - F
            add                 ecx,                    'A' - 10
W2:   
            mov                [rdest],                 cl              ; write digit
                
            mov                 ecx,                    eax
            and                 ecx,                    0FH             ; next digit
            cmp                 ecx,                    10
            jnb                 W3
            ; 0 - 9
            add                 ecx,                    '0'
            jmp                 W4
W3:         ; A - F
            add                 ecx,                    'A' - 10
W4:   
            mov                [rdest+1],               cl              ; write digit
            add                 rdest,                  2               ; advance string pointer
            ret
procend

; Determine cache sizes by CPUID function 4
; input: esi = pointer to dataref
; output: values returned in dataref + level1, level2, level3
; carry flag = 0 on succes
procstart _uX_CPUFeatures_IntelNewMethod, callconv, void, < >, < >, < >; level:dword
    ifdef __x32__
            sub                 esp,                16
            mov                [esp],               ebx
            mov                [esp+4],             rlevel
            mov                [esp+8],             dnumlevel
    endif ;__x32__
    ifdef __x64__
            sub                 rsp,                16
            mov                [rsp],               rbx
    endif ;__x64__
            xor                 ecx,                ecx
            xor                 eax,                eax
            cpuid                                                       ; get number of CPUID functions
            cmp                 eax,                4
            jb                  I900                                        ; fail
            xor                 dnumlevel,          dnumlevel           ; loop counter
I100:   
            mov                 eax,                4
            mov                 ecx,                dnumlevel
            cpuid                                                       ; get cache peters
            mov                 edx,                eax
            and                 edx,                11111b              ; cache type
            jz                  I500                                    ; no more caches
            cmp                 edx,                2
            je                  I200                                    ; code cache, ignore
            inc                 ecx                                     ; sets
            mov                 edx,                ebx
            shr                 edx,                22
            inc                 edx                                     ; ways
            imul                ecx,                edx
            mov                 edx,                ebx
            shr                 edx,                12
            and                 edx,                1111111111b
            inc                 edx                                     ; partitions
            imul                ecx,                edx
            and                 ebx,                111111111111b        
            inc                 ebx                                     ; line size
            imul                rcreg,              rbreg               ; calculated cache size (64 bit)
            shr                 eax,                5
            and                 eax,                111b                ; cache level
            cmp                 eax,                cpu_numlevels
            jna                 I180
            mov                 eax,                cpu_numlevels       ; limit higher levels
I180:   
            mov     [rlevel+rret()*reg_size],       rcreg               ; store size of data cache level eax
I200:   
            inc                 dnumlevel
            cmp                 dnumlevel,          100h                ; avoid infinite loop
            jb                  I100                                    ; next cache
I500:                                                                   ; loop finished
                                                                        ; check if OK
            mov                 rret(),   [rlevel+cpu_data_layout.level1]   ; level1
            cmp                 rret(),                 1024
I900:  
    ifdef __x32__
            mov                 dnumlevel,         [esp+8]
            mov                 rlevel,            [esp+4]
            mov                 ebx,               [esp]
            add                 esp,                16
    endif ;__x32__
    ifdef __x64__
            mov                 rbx,               [rsp]
            add                 rsp,                16
    endif ;__x64__
            ret                                                         ; carry flag set if fail
procend

; Determine cache sizes by CPUID function 2
; input: esi = pointer to dataref
; output: values returned in dataref + level1, level2, level3
; carry flag = 0 on succes
procstart _uX_CPUFeatures_IntelOldMethod, callconv, void, < >, < >, < >; level:dword
    ifdef __x32__
            sub                 esp,                8
            mov                [esp],               ebx
            mov                [esp+4],             rlevel
    endif ;__x32__
    ifdef __x64__
            sub                 rsp,                16
            mov                [rsp],               rbx
    endif ;__x64__

            xor                 eax,                eax
            cpuid                                                               ; get number of CPUID functions
            cmp                 eax,                2
            jb                  J900                                            ; fail
            mov                 eax,                2
            xor                 ecx,                ecx
            cpuid                                                               ; get 16 descriptor bytes in eax, ebx, ecx, edx
            mov                 al,                 0                           ; al does not contain a descriptor
    ifdef __x32__
            sub                 esp,                16
            mov                [esp],               eax
            mov                [esp+4],             ebx
            mov                [esp+8],             ecx
            mov                [esp+12],            edx
            ;push                eax                                             ; save all descriptors
            ;push                ebx
            ;push                ecx
            ;push                edx                                             ; now esp points to descriptors

    endif
    ifdef __x64__
            sub                 rsp,                16
            mov                [rsp],               eax                         ; save all descriptors
            mov                [rsp+4],             ebx
            mov                [rsp+8],             ecx
            mov                [rsp+12],            edx
    endif ;__x64__
            mov                 edx,                15                          ; loop counter
                                                                                ; loop to read 16 descriptor bytes
J100:   
            mov                  al,    byte ptr [rspreg+rdreg]
                                                                                ; find in table
            mov                 ebx,    cpu_descriptortablelength-1             ; loop counter
                                                                                ; loop to search in descriptortable
J200:   
            cmp                 eax,    [rlevel+cpu_data_layout.descriptortable+rbreg*4+cpu_descriptor_record.d_key]
            jne                 J300
                                                                                ; descriptor found
            movzx               eax,    byte ptr [rlevel+cpu_data_layout.descriptortable+rbreg*4+cpu_descriptor_record.d_sizem]
            mov                 ecx,    [rlevel+cpu_data_layout.descriptortable+rbreg*4+cpu_descriptor_record.d_2pow]
            shl                 eax,    cl                                      ; compute size
            movzx               ecx,    byte ptr [rlevel+cpu_data_layout.descriptortable+rbreg*4+cpu_descriptor_record.d_level]
                                                                                ; check that level = 1-3
            cmp                 ecx,                    3
            ja                  J300
            mov     [rlevel+rcreg*reg_size],           rret()                  ; store size eax of data cache level ecx
J300:   
            dec                 ebx
            jns                 J200                                            ; inner loop
            dec                 edx
            jns                 J100                                            ; outer loop
            add                 rspreg,                 16                      ; remove from stack
                                                                                ; check if OK
            mov                 rret(),     [rlevel+cpu_data_layout.level1]
            cmp                 rret(),                1024
J900:   
    ifdef __x32__
            mov                 rlevel,            [esp+4]
            mov                 ebx,               [esp]
            add                 esp,                8
    endif ;__x32__
    ifdef __x64__
            mov                 rbx,               [rsp]
            add                 rsp,                16
    endif ;__x64__
            ret                                                                 ; carry flag set if fail
procend

; Determine cache sizes by CPUID function 80000005H - 80000006H
; input: esi = pointer to dataref
; output: values returned in dataref
; carry flag = 0 on succes
procstart _uX_CPUFeatures_AMDMethod, callconv, void, < >, < >, < >; level:dword
    ifdef __x32__
            sub                 esp,                8
            mov                [esp],               ebx
            mov                [esp+4],             rlevel
    endif ;__x32__
    ifdef __x64__
            sub                 rsp,                16
            mov                [rsp],               rbx
    endif ;__x64__
            mov                 eax,                    80000000H
            cpuid                                                           ; get number of CPUID functions
            cmp                 eax,                    6
            jb                  K900                                        ; fail
            mov                 eax,                    80000005H
            cpuid                                                           ; get L1 cache size
            shr                 ecx,                    24                  ; L1 data cache size in kbytes
            shl                 ecx,                    10                  ; L1 data cache size in bytes
            mov     [rlevel+cpu_data_layout.level1],    rcreg               ; store L1 data cache size
            mov                 eax,                    80000006H
            cpuid                                                           ; get L2 and L3 cache sizes
            shr                 ecx,                    16                  ; L2 data cache size in kbytes
            shl                 ecx,                    10                  ; L2 data cache size in bytes
            mov     [rlevel+cpu_data_layout.level2],    rcreg               ; store L2 data cache size
            mov                 ecx,                    edx
            shr                 ecx,                    18                  ; L3 data cache size / 512 kbytes
            shl                 rcreg,                  19                  ; L3 data cache size in bytes
if 0                                                                        ; AMD manual is unclear: 
                                                                            ; do we have to increase the value if the number of ways is not a power or 2?
            shr                 edx,                    12
            and                 edx,                    1111b               ; L3 associativity
            cmp                 edx,                    3
            jb                  K100
            test                edx,                    1
            jz                  K100
                                                                            ; number of ways is not a power of 2, multiply by 1.5 ?
            mov                 rret(),                 rcreg
            shr                 rret(),                 1
            add                 rcreg,                  rret()
endif
K100:   
            mov     [rlevel+cpu_data_layout.level3],    rcreg               ; store L3 data cache size
        ; check if OK
            mov                 rret(),     [rlevel+cpu_data_layout.level1]
            cmp                 rret(),                 1024
K900:   
    ifdef __x32__
            mov                 rlevel,            [esp+4]
            mov                 ebx,               [esp]
            add                 esp,                8
    endif ;__x32__
    ifdef __x64__
            mov                 rbx,               [rsp]
            add                 rsp,                16
    endif ;__x64__
            ret                                                             ; carry flag set if fail
procend

procstart _uX_CPUFeatures_UnalignedIsFaster, callconv, dword, < >, < >, < >
            mov                 dret(),             __uX_dt_CPUFeatures_UnalignedIsFaster
            ret
procend

procstart _uX_CPUFeatures_Store256BitIsFaster, callconv, dword, < >, < >, < >
            mov                 dret(),             __uX_dt_CPUFeatures_Store256BitIsFaster
            ret
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
procstart _uX_CPUFeatures_IntrinSet, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_IntrinSet
        ret
procend

    ; /* EFLAGS %eax=00H, %ebx=00H */
procstart _uX_CPUFeatures_has_CPUID, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_CPUID
        ret
procend

    ; /* %eax=00H, %ecx */
procstart _uX_CPUFeatures_is_Intel, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_ntel
        ret
procend

procstart _uX_CPUFeatures_is_AMD, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_cAMD
        ret
procend

    ;/* %eax=01H, %ecx */
procstart _uX_CPUFeatures_has_SSE3, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE3
        ret
procend

procstart _uX_CPUFeatures_has_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_MONITOR, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_MONITOR
        ret
procend

procstart _uX_CPUFeatures_has_SSSE3, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSSE3
        ret
procend

procstart _uX_CPUFeatures_has_FMA, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_FMA
        ret
procend

procstart _uX_CPUFeatures_has_CMPXCHG16B, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_CMPXCHG16B
        ret
procend

procstart _uX_CPUFeatures_has_SSE41, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE41
        ret
procend

procstart _uX_CPUFeatures_has_SSE42, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE42
        ret
procend

procstart _uX_CPUFeatures_has_MOVBE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_MOVBE
        ret
procend

procstart _uX_CPUFeatures_has_POPCNT, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_POPCNT
        ret
procend

procstart _uX_CPUFeatures_has_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AES
        ret
procend

procstart _uX_CPUFeatures_has_XSAVE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_XSAVE
        ret
procend

procstart _uX_CPUFeatures_has_OSXSAVE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_OSXSAVE
        ret
procend

procstart _uX_CPUFeatures_has_AVX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX
        ret
procend

procstart _uX_CPUFeatures_has_F16C, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_F16C
        ret
procend

procstart _uX_CPUFeatures_has_RDRAND, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_RDRAND
        ret
procend

    ;/* %eax=01H, %edx */
procstart _uX_CPUFeatures_has_FPU, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_FPU
        ret
procend

procstart _uX_CPUFeatures_has_TSC, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_TSC
        ret
procend

procstart _uX_CPUFeatures_has_MSR, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_MSR
        ret
procend

procstart _uX_CPUFeatures_has_CMPXCHG8B, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_CMPXCHG8B
        ret
procend

procstart _uX_CPUFeatures_has_SEP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SEP
        ret
procend

procstart _uX_CPUFeatures_has_CMOV, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_CMOV
        ret
procend

procstart _uX_CPUFeatures_has_CLFSH, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_CLFSH
        ret
procend

procstart _uX_CPUFeatures_has_MMX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_MMX
        ret
procend

procstart _uX_CPUFeatures_has_FXSR, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_FXSR
        ret
procend

procstart _uX_CPUFeatures_has_SSE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE
        ret
procend

procstart _uX_CPUFeatures_has_SSE2, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE2
        ret
procend

    ;/* %eax=07H, %ebx */
procstart _uX_CPUFeatures_has_FSGSBASE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_FSGSBASE
        ret
procend

procstart _uX_CPUFeatures_has_SGX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SGX
        ret
procend

procstart _uX_CPUFeatures_has_BMI1, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_BMI1
        ret
procend

procstart _uX_CPUFeatures_has_HLE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_HLE
        ret
procend

procstart _uX_CPUFeatures_has_AVX2, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX2
        ret
procend

procstart _uX_CPUFeatures_has_SMEP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SMEP
        ret
procend

procstart _uX_CPUFeatures_has_BMI2, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_BMI2
        ret
procend

procstart _uX_CPUFeatures_has_ERMS, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_ERMS
        ret
procend

procstart _uX_CPUFeatures_has_INVPCID, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_INVPCID
        ret
procend

procstart _uX_CPUFeatures_has_RTM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_RTM
        ret
procend

procstart _uX_CPUFeatures_has_MPX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_MPX
        ret
procend

procstart _uX_CPUFeatures_has_AVX512F, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512F
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512DQ
        ret
procend

procstart _uX_CPUFeatures_has_RDSEED, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_RDSEED
        ret
procend

procstart _uX_CPUFeatures_has_ADX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_ADX
        ret
procend

procstart _uX_CPUFeatures_has_SMAP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SMAP
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_IFMA, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_IFMA
        ret
procend

procstart _uX_CPUFeatures_has_CLFLUSHOPT, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_CLFLUSHOPT
        ret
procend

procstart _uX_CPUFeatures_has_CLWB, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_CLWB
        ret
procend

procstart _uX_CPUFeatures_has_AVX512PF, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512PF
        ret
procend

procstart _uX_CPUFeatures_has_AVX512ER, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512ER
        ret
procend

procstart _uX_CPUFeatures_has_AVX512CD, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512CD
        ret
procend

procstart _uX_CPUFeatures_has_SHA, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SHA
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512BW
        ret
procend

procstart _uX_CPUFeatures_has_AVX512VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512VL
        ret
procend


    ;/* %eax=07H, %ecx */
procstart _uX_CPUFeatures_has_PREFETCHWT1, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_PREFETCHWT1
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VBMI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VBMI
        ret
procend

procstart _uX_CPUFeatures_has_UMIP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_UMIP
        ret
procend

procstart _uX_CPUFeatures_has_PKU, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_PKU
        ret
procend

procstart _uX_CPUFeatures_has_OSPKE, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_OSPKE
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VBMI2, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VBMI2
        ret
procend

procstart _uX_CPUFeatures_has_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_VAES
        ret
procend

procstart _uX_CPUFeatures_has_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VNNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VNNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_BITALG, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_BITALG
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VPOPCNTDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VPOPCNTDQ
        ret
procend

procstart _uX_CPUFeatures_has_RDPID, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_RDPID
        ret
procend

    ;/* %eax=07H, %edx */
procstart _uX_CPUFeatures_has_AVX512_4VNNIW, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_4VNNIW
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_4FMAPS, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_4FMAPS
        ret
procend

    ;/* %eax=80000001H, %ecx */
procstart _uX_CPUFeatures_has_LAHF, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_LAHF
        ret
procend

procstart _uX_CPUFeatures_has_LZCNT, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_LZCNT
        ret
procend

procstart _uX_CPUFeatures_has_ABM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_ABM
        ret
procend

procstart _uX_CPUFeatures_has_SSE4a, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE4a
        ret
procend

procstart _uX_CPUFeatures_has_PREFETCHW, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_PREFETCHW
        ret
procend

procstart _uX_CPUFeatures_has_XOP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_XOP
        ret
procend

procstart _uX_CPUFeatures_has_LWP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_LWP
        ret
procend

procstart _uX_CPUFeatures_has_FMA4, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_FMA4
        ret
procend

procstart _uX_CPUFeatures_has_TBM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_TBM
        ret
procend

procstart _uX_CPUFeatures_has_MWAITX, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_MWAITX
        ret
procend

    ;/* %eax=80000001H, %edx */
procstart _uX_CPUFeatures_has_SYSCALL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SYSCALL
        ret
procend

procstart _uX_CPUFeatures_has_MMXEXT, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_MMXEXT
        ret
procend

procstart _uX_CPUFeatures_has_RDTSCP, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_RDTSCP
        ret
procend

procstart _uX_CPUFeatures_has_3DNOWEXT, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_3DNOWEXT
        ret
procend

procstart _uX_CPUFeatures_has_3DNOW, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_3DNOW
        ret
procend

    ;/* %eax=07H, %ebx, %ecx */
procstart _uX_CPUFeatures_has_AVX512_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_GFNI_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_GFNI_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VAES
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VAES_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VAES_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VPCLMULQDQ_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VPCLMULQDQ_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_IFMA_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_IFMA_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VBMI_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VBMI_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VBMI2_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VBMI2_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VNNI_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VNNI_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_BITALG_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_BITALG_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512_VPOPCNTDQ_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512_VPOPCNTDQ_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512BW_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_GFNI_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512BW_GFNI_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512BW_VAES
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_VAES_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512BW_VAES_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512BW_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512BW_VPCLMULQDQ_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512BW_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512BW_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512DQ_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_GFNI_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512DQ_GFNI_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512DQ_VAES
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_VAES_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512DQ_VAES_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512DQ_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512DQ_VPCLMULQDQ_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512DQ_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512DQ_VL
        ret
procend

procstart _uX_CPUFeatures_has_AVX512CD_VL, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX512CD_VL
        ret
procend

    ;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
procstart _uX_CPUFeatures_has_SSE_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSE_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSE_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_SSE2_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE2_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSE2_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE2_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSE2_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE2_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_SSE3_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE3_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSE3_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE3_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSE3_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE3_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_SSSE3_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSSE3_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSSE3_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSSE3_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSSE3_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSSE3_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_SSE41_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE41_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSE41_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE41_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSE41_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE41_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_SSE42_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE42_AES
        ret
procend

procstart _uX_CPUFeatures_has_SSE42_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE42_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_SSE42_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_SSE42_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX_AES
        ret
procend

procstart _uX_CPUFeatures_has_AVX_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX_VAES
        ret
procend

procstart _uX_CPUFeatures_has_AVX_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX2_AES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX2_AES
        ret
procend

procstart _uX_CPUFeatures_has_AVX2_GFNI, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX2_GFNI
        ret
procend

procstart _uX_CPUFeatures_has_AVX2_PCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX2_PCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_AVX2_VAES, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX2_VAES
        ret
procend

procstart _uX_CPUFeatures_has_AVX2_VPCLMULQDQ, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_AVX2_VPCLMULQDQ
        ret
procend

procstart _uX_CPUFeatures_has_enabled_XMM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_enabled_XMM
        ret
procend

procstart _uX_CPUFeatures_has_enabled_YMM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_enabled_YMM
        ret
procend

procstart _uX_CPUFeatures_has_enabled_ZMM, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_enabled_ZMM
        ret
procend

procstart _uX_CPUFeatures_is_Inited, callconv, dword, < >, < >, < >
        mov             dret(),             __uX_dt_CPUFeatures_Inited
        ret
procend

endif ;__MIC__

endif ;_CLASS_uXCPUFEATURES

end
