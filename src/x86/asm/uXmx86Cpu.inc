

ifndef _INC_CLASS_uXmCPUFEATURES
_INC_CLASS_uXmCPUFEATURES equ 1

	cpu_data_layout struct
		ok     dword 2 dup(?)
		level1 qword 1 dup(?)
		level2 qword 1 dup(?)
		level3 qword 1 dup(?)
		level4 qword 1 dup(?)
		descriptortable dword 60 dup(?)
	cpu_data_layout ends

	cpu_descriptor_record struct			; record for table of cache descriptors
		d_key	dword 1 dup(?)			; key from cpuid instruction
		d_level	dword 1 dup(?)			; cache level
		d_sizem	dword 1 dup(?)			; size multiplier
		d_2pow	dword 1 dup(?)			; power of 2. size = d_sizem << d_2pow
	cpu_descriptor_record ends
		
			;align 16
UX_CLASS uXmCPUFeatures
;	CMETHOD PrintName
;	CMETHOD SetName
;	CMETHOD Calc
;	CMETHOD Calc2
;	CMETHOD DoAdd

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
	UX_CSTATIC intrinset
	
	; /* %eax=00H, %ecx */	
	UX_CSTATIC is_Intel
	UX_CSTATIC is_AMD

	;/* %eax=01H, %ecx */
	UX_CSTATIC has_SSE3
	UX_CSTATIC has_PCLMULQDQ
	UX_CSTATIC has_MONITOR
	UX_CSTATIC has_SSSE3
	UX_CSTATIC has_FMA
	UX_CSTATIC has_CMPXCHG16B
	UX_CSTATIC has_SSE41
	UX_CSTATIC has_SSE42
	UX_CSTATIC has_MOVBE
	UX_CSTATIC has_POPCNT
	UX_CSTATIC has_AES
	UX_CSTATIC has_XSAVE
	UX_CSTATIC has_OSXSAVE
	UX_CSTATIC has_AVX
	UX_CSTATIC has_F16C
	UX_CSTATIC has_RDRAND

	;/* %eax=01H, %edx */
	UX_CSTATIC has_FPU
	UX_CSTATIC has_TSC
	UX_CSTATIC has_MSR
	UX_CSTATIC has_CMPXCHG8B
	UX_CSTATIC has_SEP
	UX_CSTATIC has_CMOV
	UX_CSTATIC has_CLFSH
	UX_CSTATIC has_MMX
	UX_CSTATIC has_FXSR
	UX_CSTATIC has_SSE
	UX_CSTATIC has_SSE2

	;/* %eax=07H, %ebx */
	UX_CSTATIC has_FSGSBASE
	UX_CSTATIC has_SGX
	UX_CSTATIC has_BMI1
	UX_CSTATIC has_HLE
	UX_CSTATIC has_AVX2
	UX_CSTATIC has_SMEP
	UX_CSTATIC has_BMI2
	UX_CSTATIC has_ERMS
	UX_CSTATIC has_INVPCID
	UX_CSTATIC has_RTM
	UX_CSTATIC has_MPX
	UX_CSTATIC has_AVX512F
	UX_CSTATIC has_AVX512DQ
	UX_CSTATIC has_RDSEED
	UX_CSTATIC has_ADX
	UX_CSTATIC has_SMAP
	UX_CSTATIC has_AVX512_IFMA
	UX_CSTATIC has_CLFLUSHOPT
	UX_CSTATIC has_CLWB
	UX_CSTATIC has_AVX512PF
	UX_CSTATIC has_AVX512ER
	UX_CSTATIC has_AVX512CD
	UX_CSTATIC has_SHA
	UX_CSTATIC has_AVX512BW
	UX_CSTATIC has_AVX512VL

	;/* %eax=07H, %ecx */
	UX_CSTATIC has_PREFETCHWT1
	UX_CSTATIC has_AVX512_VBMI
	UX_CSTATIC has_UMIP
	UX_CSTATIC has_PKU
	UX_CSTATIC has_OSPKE
	UX_CSTATIC has_AVX512_VBMI2
	UX_CSTATIC has_GFNI
	UX_CSTATIC has_VAES
	UX_CSTATIC has_VPCLMULQDQ
	UX_CSTATIC has_AVX512_VNNI
	UX_CSTATIC has_AVX512_BITALG
	UX_CSTATIC has_AVX512_VPOPCNTDQ
	UX_CSTATIC has_RDPID

	;/* %eax=07H, %edx */
	UX_CSTATIC has_AVX512_4VNNIW
	UX_CSTATIC has_AVX512_4FMAPS

	;/* %eax=80000001H, %ecx */
	UX_CSTATIC has_LAHF
	UX_CSTATIC has_LZCNT
	UX_CSTATIC has_ABM
	UX_CSTATIC has_SSE4a
	UX_CSTATIC has_PREFETCHW
	UX_CSTATIC has_XOP
	UX_CSTATIC has_LWP
	UX_CSTATIC has_FMA4
	UX_CSTATIC has_TBM
	UX_CSTATIC has_MWAITX

	;/* %eax=80000001H, %edx */
	UX_CSTATIC has_SYSCALL
	UX_CSTATIC has_MMXEXT
	UX_CSTATIC has_RDTSCP
	UX_CSTATIC has_3DNOWEXT
	UX_CSTATIC has_3DNOW

	;/* %eax=07H, %ebx, %ecx */
	UX_CSTATIC has_AVX512_GFNI
	UX_CSTATIC has_AVX512_GFNI_VL
	UX_CSTATIC has_AVX512_VAES
	UX_CSTATIC has_AVX512_VAES_VL
	UX_CSTATIC has_AVX512_VPCLMULQDQ
	UX_CSTATIC has_AVX512_VPCLMULQDQ_VL

	UX_CSTATIC has_AVX512_IFMA_VL
	UX_CSTATIC has_AVX512_VBMI_VL
	UX_CSTATIC has_AVX512_VBMI2_VL
	UX_CSTATIC has_AVX512_VNNI_VL
	UX_CSTATIC has_AVX512_BITALG_VL
	UX_CSTATIC has_AVX512_VPOPCNTDQ_VL

	UX_CSTATIC has_AVX512BW_GFNI
	UX_CSTATIC has_AVX512BW_GFNI_VL
	UX_CSTATIC has_AVX512BW_VAES
	UX_CSTATIC has_AVX512BW_VAES_VL
	UX_CSTATIC has_AVX512BW_VPCLMULQDQ
	UX_CSTATIC has_AVX512BW_VPCLMULQDQ_VL
	UX_CSTATIC has_AVX512BW_VL

	UX_CSTATIC has_AVX512DQ_GFNI
	UX_CSTATIC has_AVX512DQ_GFNI_VL
	UX_CSTATIC has_AVX512DQ_VAES
	UX_CSTATIC has_AVX512DQ_VAES_VL
	UX_CSTATIC has_AVX512DQ_VPCLMULQDQ
	UX_CSTATIC has_AVX512DQ_VPCLMULQDQ_VL
	UX_CSTATIC has_AVX512DQ_VL

	UX_CSTATIC has_AVX512CD_VL

	;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
	UX_CSTATIC has_SSE_AES
	UX_CSTATIC has_SSE_GFNI
	UX_CSTATIC has_SSE_PCLMULQDQ
	UX_CSTATIC has_SSE2_AES
	UX_CSTATIC has_SSE2_GFNI
	UX_CSTATIC has_SSE2_PCLMULQDQ
	UX_CSTATIC has_SSE3_AES
	UX_CSTATIC has_SSE3_GFNI
	UX_CSTATIC has_SSE3_PCLMULQDQ
	UX_CSTATIC has_SSSE3_AES
	UX_CSTATIC has_SSSE3_GFNI
	UX_CSTATIC has_SSSE3_PCLMULQDQ
	UX_CSTATIC has_SSE41_AES
	UX_CSTATIC has_SSE41_GFNI
	UX_CSTATIC has_SSE41_PCLMULQDQ
	UX_CSTATIC has_SSE42_AES
	UX_CSTATIC has_SSE42_GFNI
	UX_CSTATIC has_SSE42_PCLMULQDQ
	UX_CSTATIC has_AVX_AES
	UX_CSTATIC has_AVX_GFNI
	UX_CSTATIC has_AVX_PCLMULQDQ
	UX_CSTATIC has_AVX_VAES
	UX_CSTATIC has_AVX_VPCLMULQDQ
	UX_CSTATIC has_AVX2_AES
	UX_CSTATIC has_AVX2_GFNI
	UX_CSTATIC has_AVX2_PCLMULQDQ
	UX_CSTATIC has_AVX2_VAES
	UX_CSTATIC has_AVX2_VPCLMULQDQ

	UX_CSTATIC has_enabled_XMM
	UX_CSTATIC has_enabled_YMM
	UX_CSTATIC has_enabled_ZMM
	
	UX_CSTATIC CpuType
	
	UX_CSTATIC ProcessorName
	
	UX_CSTATIC DataCacheSize

	UX_CSTATIC WriteHex

	UX_CSTATIC IntelNewMethod
	UX_CSTATIC IntelOldMethod
	UX_CSTATIC AMDMethod

UX_ENDMETHODS

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
	var_intrinset						dd 0
	
	; /* EFLAGS %eax=00H, %ebx=00H */
	var_CPUID 							dd 0

	; /* %eax=00H, %ecx */
	var_ntel							db 0	; 'GenuineIntel'
	var_cAMD							db 0	; 'AuthenticAMD'
	
	; /* %eax=00H, %ebx */
	var_Cent							db 0	; 'CentaurHauls'
	var_VIA								db 0	; 'VIA VIA VIA'
	var_Cyri							db 0	; 'CyrixInstead'
	var_NexG							db 0	; 'NexGenDriven'

	;/* %eax=01H, %ecx */
	var_SSE3							db 0
	var_PCLMULQDQ						db 0
	var_MONITOR							db 0
	var_SSSE3							db 0
	var_FMA								db 0
	var_CMPXCHG16B						db 0
	var_SSE41							db 0
	var_SSE42							db 0
	var_MOVBE							db 0
	var_POPCNT							db 0
	var_AES								db 0
	var_XSAVE							db 0
	var_OSXSAVE							db 0
	var_AVX								db 0
	var_F16C							db 0
	var_RDRAND							db 0

	;/* %eax=01H, %edx */
	var_FPU								db 0
	var_TSC								db 0
	var_MSR								db 0
	var_CMPXCHG8B						db 0
	var_SEP								db 0
	var_CMOV							db 0
	var_CLFSH							db 0
	var_MMX								db 0
	var_FXSR							db 0
	var_SSE   							db 0
	var_SSE2							db 0

	;/* %eax=07H, %ebx */
	var_FSGSBASE						db 0
	var_SGX								db 0
	var_BMI1							db 0
	var_HLE								db 0
	var_AVX2							db 0
	var_SMEP							db 0
	var_BMI2							db 0
	var_ERMS							db 0
	var_INVPCID							db 0
	var_RTM								db 0
	var_MPX								db 0
	var_AVX512F							db 0
	var_AVX512DQ						db 0
	var_RDSEED							db 0
	var_ADX								db 0
	var_SMAP							db 0
	var_AVX512_IFMA						db 0
	var_CLFLUSHOPT						db 0
	var_CLWB							db 0
	var_AVX512PF						db 0
	var_AVX512ER						db 0
	var_AVX512CD						db 0
	var_SHA								db 0
	var_AVX512BW						db 0
	var_AVX512VL						db 0

	;/* %eax=07H, %ecx */
	var_PREFETCHWT1						db 0
	var_AVX512_VBMI						db 0
	var_UMIP							db 0
	var_PKU								db 0
	var_OSPKE							db 0
	var_AVX512_VBMI2					db 0
	var_GFNI							db 0
	var_VAES							db 0
	var_VPCLMULQDQ						db 0
	var_AVX512_VNNI						db 0
	var_AVX512_BITALG					db 0
	var_AVX512_VPOPCNTDQ				db 0
	var_RDPID							db 0

	;/* %eax=07H, %edx */
	var_AVX512_4VNNIW					db 0
	var_AVX512_4FMAPS					db 0

	;/* %eax=80000001H, %ecx */
	var_LAHF							db 0
	var_LZCNT							db 0
	var_ABM								db 0
	var_SSE4a							db 0
	var_PREFETCHW						db 0
	var_XOP								db 0
	var_LWP								db 0
	var_FMA4							db 0
	var_TBM								db 0
	var_MWAITX							db 0

	;/* %eax=80000001H, %edx */
	var_SYSCALL							db 0
	var_MMXEXT							db 0
	var_RDTSCP							db 0
	var_3DNOWEXT						db 0
	var_3DNOW							db 0

	;/* %eax=07H, %ebx, %ecx */
	var_AVX512_GFNI						db 0
	var_AVX512_GFNI_VL					db 0
	var_AVX512_VAES						db 0
	var_AVX512_VAES_VL					db 0
	var_AVX512_VPCLMULQDQ				db 0
	var_AVX512_VPCLMULQDQ_VL			db 0

	var_AVX512_IFMA_VL					db 0
	var_AVX512_VBMI_VL					db 0
	var_AVX512_VBMI2_VL					db 0
	var_AVX512_VNNI_VL					db 0
	var_AVX512_BITALG_VL				db 0
	var_AVX512_VPOPCNTDQ_VL				db 0

	var_AVX512BW_GFNI					db 0
	var_AVX512BW_GFNI_VL				db 0
	var_AVX512BW_VAES					db 0
	var_AVX512BW_VAES_VL				db 0
	var_AVX512BW_VPCLMULQDQ				db 0
	var_AVX512BW_VPCLMULQDQ_VL			db 0
	var_AVX512BW_VL						db 0

	var_AVX512DQ_GFNI					db 0
	var_AVX512DQ_GFNI_VL				db 0
	var_AVX512DQ_VAES					db 0
	var_AVX512DQ_VAES_VL				db 0
	var_AVX512DQ_VPCLMULQDQ				db 0
	var_AVX512DQ_VPCLMULQDQ_VL			db 0
	var_AVX512DQ_VL						db 0

	var_AVX512CD_VL						db 0

	;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
	var_SSE_AES							db 0
	var_SSE_GFNI						db 0
	var_SSE_PCLMULQDQ					db 0
	var_SSE2_AES						db 0
	var_SSE2_GFNI						db 0
	var_SSE2_PCLMULQDQ					db 0
	var_SSE3_AES						db 0
	var_SSE3_GFNI						db 0
	var_SSE3_PCLMULQDQ					db 0
	var_SSSE3_AES						db 0
	var_SSSE3_GFNI						db 0
	var_SSSE3_PCLMULQDQ					db 0
	var_SSE41_AES						db 0
	var_SSE41_GFNI						db 0
	var_SSE41_PCLMULQDQ					db 0
	var_SSE42_AES						db 0
	var_SSE42_GFNI						db 0
	var_SSE42_PCLMULQDQ					db 0
	var_AVX_GFNI						db 0
	var_AVX_VAES						db 0
	var_AVX_VPCLMULQDQ					db 0
	var_AVX2_GFNI						db 0
	var_AVX2_VAES						db 0
	var_AVX2_VPCLMULQDQ					db 0

	var_enabled_XMM						db 0
	var_enabled_YMM						db 0
	var_enabled_ZMM						db 0
	
	;var_vendor							dd 0
	;var_family							dd 0
	;var_model							dd 0
	
	var_ProcessorName					db 50H dup(0)

	var_0H_EBX							dd 0
	var_0H_ECX							dd 0
	var_1H_ECX							dd 0
	var_1H_EDX							dd 0
	var_7H_EBX							dd 0
	var_7H_ECX							dd 0
	var_7H_EDX							dd 0
	var_80000001H_ECX					dd 0
	var_80000001H_EDX					dd 0
		
UX_ENDCLASS

; A Pointer to Object type.
puXmCPUFeatures typedef ptr uXmCPUFeatures

	;_DATA segment 'DATA?'
			;align 16
	;_DATA ends

	_DATA segment '.data'
			align 16

	cpu_dataref label ptr qword                              ; reference point
		cpu_ok_       dd      0, 0                ; 1 when values are determined
		cpu_level1_   dq      0                   ; level 1 data cache size
		cpu_level2_   dq      0                   ; level 2 data cache size
		cpu_level3_   dq      0                   ; level 3 data cache size
		cpu_level4_   dq      0                   ; level 4 data cache size
	cpu_numlevels  equ     4                   ; max level

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

		;dlayout data_layout <>
		;drecord descriptor_record <>
	_DATA ends
	
endif ;_CLASS_uXmCPUFEATURES
