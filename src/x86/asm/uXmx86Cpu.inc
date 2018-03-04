

			;align 16
CLASS uXmCPUFeatures
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
	CSTATIC intrinset
	
	; /* %eax=00H, %ecx */	
	CSTATIC is_Intel
	CSTATIC is_AMD

	;/* %eax=01H, %ecx */
	CSTATIC has_SSE3
	CSTATIC has_PCLMULQDQ
	CSTATIC has_MONITOR
	CSTATIC has_SSSE3
	CSTATIC has_FMA
	CSTATIC has_CMPXCHG16B
	CSTATIC has_SSE41
	CSTATIC has_SSE42
	CSTATIC has_MOVBE
	CSTATIC has_POPCNT
	CSTATIC has_AES
	CSTATIC has_XSAVE
	CSTATIC has_OSXSAVE
	CSTATIC has_AVX
	CSTATIC has_F16C
	CSTATIC has_RDRAND

	;/* %eax=01H, %edx */
	CSTATIC has_FPU
	CSTATIC has_TSC
	CSTATIC has_MSR
	CSTATIC has_CMPXCHG8B
	CSTATIC has_SEP
	CSTATIC has_CMOV
	CSTATIC has_CLFSH
	CSTATIC has_MMX
	CSTATIC has_FXSR
	CSTATIC has_SSE
	CSTATIC has_SSE2

	;/* %eax=07H, %ebx */
	CSTATIC has_FSGSBASE
	CSTATIC has_SGX
	CSTATIC has_BMI1
	CSTATIC has_HLE
	CSTATIC has_AVX2
	CSTATIC has_SMEP
	CSTATIC has_BMI2
	CSTATIC has_ERMS
	CSTATIC has_INVPCID
	CSTATIC has_RTM
	CSTATIC has_MPX
	CSTATIC has_AVX512F
	CSTATIC has_AVX512DQ
	CSTATIC has_RDSEED
	CSTATIC has_ADX
	CSTATIC has_SMAP
	CSTATIC has_AVX512_IFMA
	CSTATIC has_CLFLUSHOPT
	CSTATIC has_CLWB
	CSTATIC has_AVX512PF
	CSTATIC has_AVX512ER
	CSTATIC has_AVX512CD
	CSTATIC has_SHA
	CSTATIC has_AVX512BW
	CSTATIC has_AVX512VL

	;/* %eax=07H, %ecx */
	CSTATIC has_PREFETCHWT1
	CSTATIC has_AVX512_VBMI
	CSTATIC has_UMIP
	CSTATIC has_PKU
	CSTATIC has_OSPKE
	CSTATIC has_AVX512_VBMI2
	CSTATIC has_GFNI
	CSTATIC has_VAES
	CSTATIC has_VPCLMULQDQ
	CSTATIC has_AVX512_VNNI
	CSTATIC has_AVX512_BITALG
	CSTATIC has_AVX512_VPOPCNTDQ
	CSTATIC has_RDPID

	;/* %eax=07H, %edx */
	CSTATIC has_AVX512_4VNNIW
	CSTATIC has_AVX512_4FMAPS

	;/* %eax=80000001H, %ecx */
	CSTATIC has_LAHF
	CSTATIC has_LZCNT
	CSTATIC has_ABM
	CSTATIC has_SSE4a
	CSTATIC has_PREFETCHW
	CSTATIC has_XOP
	CSTATIC has_LWP
	CSTATIC has_FMA4
	CSTATIC has_TBM
	CSTATIC has_MWAITX

	;/* %eax=80000001H, %edx */
	CSTATIC has_SYSCALL
	CSTATIC has_MMXEXT
	CSTATIC has_RDTSCP
	CSTATIC has_3DNOWEXT
	CSTATIC has_3DNOW

	;/* %eax=07H, %ebx, %ecx */
	CSTATIC has_AVX512_GFNI
	CSTATIC has_AVX512_GFNI_VL
	CSTATIC has_AVX512_VAES
	CSTATIC has_AVX512_VAES_VL
	CSTATIC has_AVX512_VPCLMULQDQ
	CSTATIC has_AVX512_VPCLMULQDQ_VL

	CSTATIC has_AVX512_IFMA_VL
	CSTATIC has_AVX512_VBMI_VL
	CSTATIC has_AVX512_VBMI2_VL
	CSTATIC has_AVX512_VNNI_VL
	CSTATIC has_AVX512_BITALG_VL
	CSTATIC has_AVX512_VPOPCNTDQ_VL

	CSTATIC has_AVX512BW_GFNI
	CSTATIC has_AVX512BW_GFNI_VL
	CSTATIC has_AVX512BW_VAES
	CSTATIC has_AVX512BW_VAES_VL
	CSTATIC has_AVX512BW_VPCLMULQDQ
	CSTATIC has_AVX512BW_VPCLMULQDQ_VL
	CSTATIC has_AVX512BW_VL

	CSTATIC has_AVX512DQ_GFNI
	CSTATIC has_AVX512DQ_GFNI_VL
	CSTATIC has_AVX512DQ_VAES
	CSTATIC has_AVX512DQ_VAES_VL
	CSTATIC has_AVX512DQ_VPCLMULQDQ
	CSTATIC has_AVX512DQ_VPCLMULQDQ_VL
	CSTATIC has_AVX512DQ_VL

	CSTATIC has_AVX512CD_VL

	;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
	CSTATIC has_SSE_AES
	CSTATIC has_SSE_GFNI
	CSTATIC has_SSE_PCLMULQDQ
	CSTATIC has_SSE2_AES
	CSTATIC has_SSE2_GFNI
	CSTATIC has_SSE2_PCLMULQDQ
	CSTATIC has_SSE3_AES
	CSTATIC has_SSE3_GFNI
	CSTATIC has_SSE3_PCLMULQDQ
	CSTATIC has_SSSE3_AES
	CSTATIC has_SSSE3_GFNI
	CSTATIC has_SSSE3_PCLMULQDQ
	CSTATIC has_SSE41_AES
	CSTATIC has_SSE41_GFNI
	CSTATIC has_SSE41_PCLMULQDQ
	CSTATIC has_SSE42_AES
	CSTATIC has_SSE42_GFNI
	CSTATIC has_SSE42_PCLMULQDQ
	CSTATIC has_AVX_AES
	CSTATIC has_AVX_GFNI
	CSTATIC has_AVX_PCLMULQDQ
	CSTATIC has_AVX_VAES
	CSTATIC has_AVX_VPCLMULQDQ
	CSTATIC has_AVX2_AES
	CSTATIC has_AVX2_GFNI
	CSTATIC has_AVX2_PCLMULQDQ
	CSTATIC has_AVX2_VAES
	CSTATIC has_AVX2_VPCLMULQDQ

	CSTATIC has_enabled_XMM
	CSTATIC has_enabled_YMM
	CSTATIC has_enabled_ZMM

ENDMETHODS

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
	
	; /* %eax=00H, %ecx */
	var_ntel							db 0	; 'GenuineIntel'
	var_cAMD							db 0	; 'AuthenticAMD'

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

	var_0H_ECX							dd 0
	var_1H_ECX							dd 0
	var_1H_EDX							dd 0
	var_7H_EBX							dd 0
	var_7H_ECX							dd 0
	var_7H_EDX							dd 0
	var_80000001H_ECX					dd 0
	var_80000001H_EDX					dd 0
ENDCLASS

; A Pointer to Object type.
puXmCPUFeatures typedef ptr uXmCPUFeatures
