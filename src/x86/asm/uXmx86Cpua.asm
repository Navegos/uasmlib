
	include uXmx86asm.inc

			option	casemap:none
	ifndef __X64__
			.686P
			.xmm
			.model	flat
	else
			.X64P
			.xmm
			option	win64:15			; 11/15 for RSP and 1-7 for RBP.
			option	stackbase:rsp		; RSP or RBP are supported options for the stackbase.
			option	vtable:off		; [ON/OFF] dictates whether c-style method invocations use the vtable (slower but method pointers can be modified) or the (faster but fixed) direct invocation.
	endif
			option	frame:auto

	.code

ifndef _CLASS_uXmCPUFEATURES
_CLASS_uXmCPUFEATURES equ 1

	include uXmx86Cpu.inc

; Constructor
			align 16		
UX_VECMETHOD uXmCPUFeatures, Init, <VOIDARG>;, <UX_USESBX>
		
	ifndef __X64__
			push				ebx
			; detect if cpuidinstruction supported by microprocessor:
			pushfd
			pop					eax
			btc					eax,					21					; check if cpuidbit can toggle
			push				eax
			popfd
			pushfd
			pop					ebx
			xor					ebx,					eax
			xor					eax,					eax					; 0
			and					ebx,					bit_CPUID
			cmp					ebx,					bit_CPUID
			jne					not_supported								; cpuidnot supported
			; /* %eax=00H, %ecx %ebx */
			mov		[UX_INSTPTR].var_CPUID,				true
            
			cpuid															; get number of cpuidfunctions
			test				eax,					eax
			jz					not_supported								; function 1 not supported
			pop					eax
	else
			; /* %eax=00H, %ecx %ebx */
			mov		[UX_INSTPTR].var_CPUID,				true
	endif
	
	ifndef __X64__
			push				eax
			push				ebx
			push				ecx
			push				edx
	else
			push				rax
			push				rbx
			push				rcx
			push				rdx
	endif
			mov					eax,					0H
			cpuid
			mov		[UX_INSTPTR].var_0H_EBX,				ebx
			mov		[UX_INSTPTR].var_0H_ECX,				ecx
	ifndef __X64__
			pop					edx
			pop					ecx
			pop					ebx
			pop					eax
	else
			pop					rdx
			pop					rcx
			pop					rbx
			pop					rax
	endif
			
	ifndef __X64__
			push				eax
			push				ebx
			push				ecx
			push				edx
	else
			push				rax
			push				rbx
			push				rcx
			push				rdx
	endif
			mov					eax,					1H
			cpuid
			mov		[UX_INSTPTR].var_1H_ECX,				ecx
			mov		[UX_INSTPTR].var_1H_EDX,				edx
	ifndef __X64__
			pop					edx
			pop					ecx
			pop					ebx
			pop					eax
	else
			pop					rdx
			pop					rcx
			pop					rbx
			pop					rax
	endif
			
	ifndef __X64__
			push				eax
			push				ebx
			push				ecx
			push				edx
	else
			push				rax
			push				rbx
			push				rcx
			push				rdx
	endif
			mov					eax,					7H
			xor					ecx, 					ecx
			cpuid
			mov		[UX_INSTPTR].var_7H_EBX,				ebx
			mov		[UX_INSTPTR].var_7H_ECX,				ecx
			mov		[UX_INSTPTR].var_7H_EDX,				edx
	ifndef __X64__
			pop					edx
			pop					ecx
			pop					ebx
			pop					eax
	else
			pop					rdx
			pop					rcx
			pop					rbx
			pop					rax
	endif
	
	ifndef __X64__
			push				eax
			push				ebx
			push				ecx
			push				edx
	else
			push				rax
			push				rbx
			push				rcx
			push				rdx
	endif
			mov					eax,					80000001H
			cpuid
			mov		[UX_INSTPTR].var_80000001H_ECX,		ecx
			mov		[UX_INSTPTR].var_80000001H_EDX,		edx
	ifndef __X64__
			pop					edx
			pop					ecx
			pop					ebx
			pop					eax
	else
			pop					rdx
			pop					rcx
			pop					rbx
			pop					rax
	endif
	
	ifndef __X64__
			push				edi
	else
			push				rdi
	endif

			mov					edi,		[UX_INSTPTR].var_0H_ECX
			and					edi,					bit_ntel
			cmp					edi,					bit_ntel			; 'GenuineIntel'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_ntel,				true
			je					bvendor
			.endif
        
			and					edi,					bit_cAMD
			cmp					edi,					bit_cAMD			; 'AuthenticAMD'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_cAMD,				true
			je					bvendor
			.endif
			
			mov					edi,		[UX_INSTPTR].var_0H_EBX
			and					edi,					bit_Cent
			cmp					edi,					bit_Cent			; 'CentaurHauls'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_Cent,				true
			je					bvendor
			.endif
        
			and					edi,					bit_VIA
			cmp					edi,					bit_VIA				; 'VIA VIA VIA'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_VIA,				true
			je					bvendor
			.endif
        
			and					edi,					bit_Cyri
			cmp					edi,					bit_Cyri			; 'CyrixInstead'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_Cyri,				true
			je					bvendor
			.endif
        
			and					edi,					bit_NexG
			cmp					edi,					bit_NexG			; 'NexGenDriven'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_NexG,				true
			;je					bvendor
			.endif
        
	bvendor:
	
	ifndef __X64__
			mov					edi,		[UX_INSTPTR].var_1H_EDX
			;/* %eax=01H, %edx */
			;and					edi,					bit_FPU
			test				edi,					1					; FPU support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_FPU,				true
			
			;/* %eax=01H, %edx */
			and					edi,					bit_TSC
			cmp					edi,					bit_TSC             ; TSC READTSC support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_TSC,				true
			.endif
			
			;/* %eax=01H, %edx */
			and					edi,					bit_MSR
			cmp					edi,					bit_MSR             ; MSR support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MSR,				true
			.endif
			
			;/* %eax=01H, %edx */
			and					edi,					bit_CMPXCHG8B
			cmp					edi,					bit_CMPXCHG8B		; CMPXCHG8B support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_CMPXCHG8B,			true
			.endif
			
			;/* %eax=01H, %edx */
			and					edi,					bit_MMX
			cmp					edi,					bit_MMX             ; MMX support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_intrinset,			8					; 8
			mov		[UX_INSTPTR].var_MMX,				true
			
			.if([UX_INSTPTR].var_cAMD == true)
			mov					edi,		[UX_INSTPTR].var_80000001H_EDX
			; /* %eax=80000001H, %edx */
			and					edi,					bit_MMXEXT
			cmp					edi,					bit_MMXEXT          ; MMXEXT support by microprocessor			
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MMXEXT,				true
			.endif
			
			; /* %eax=80000001H, %edx */
			and					edi,					bit_3DNOW
			cmp					edi,					bit_3DNOW           ; 3DNOW support by microprocessor			
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_3DNOW,				true
			.endif
			
			; /* %eax=80000001H, %edx */
			and					edi,					bit_3DNOWEXT
			cmp					edi,					bit_3DNOWEXT        ; 3DNOWEXT support by microprocessor			
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_3DNOWEXT,			true
			.endif
			.endif ;cAMD
			
			mov					edi,		[UX_INSTPTR].var_1H_EDX
			;/* %eax=01H, %edx */
			and					edi,					bit_CMOV
			cmp					edi,					bit_CMOV            ; CMOV support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_intrinset,			9					; 9
			mov		[UX_INSTPTR].var_CMOV,				true
			
			;/* %eax=01H, %edx */
			and					edi,					bit_FXSR
			cmp					edi,					bit_FXSR            ; FXSR support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_FXSR,				true
			
			push				ecx
			push				edx
			mov					ebx, 					esp					; save stack pointer
			sub					esp, 					200H				; allocate space for FXSAVE
			and					esp, 					-10H				; align by 16
TESTDATA EQU 0D95A34BEH														; random test value
TESTPS   EQU 10CH															; position to write TESTDATA = upper part of XMM6 image
			fxsave				[esp]										; save FP/MMX and XMM registers
			mov					ecx,					[esp+TESTPS]		; read part of XMM6 register
			xor					DWORD [esp+TESTPS],		TESTDATA			; change value
			fxrstor				[esp]										; load changed value into XMM6
			mov					[esp+TESTPS],			ecx					; restore old value in buffer
			fxsave 				[esp]										; save again
			mov					edx,					[esp+TESTPS]		; read changed XMM6 register
			mov					[esp+TESTPS],			ecx					; restore old value
			fxrstor 			[esp]										; load old value into XMM6
			xor					ecx, 					edx					; get difference between old and new value
			mov					esp, 					ebx					; restore stack pointer
			cmp     			ecx, 					TESTDATA			; test if XMM6 was changed correctly
			pop    				edx
			pop     			ecx
			jne     			not_supported
			
			;/* %eax=01H, %edx */
			and					edi,					bit_SSE
			cmp					edi,					bit_SSE				; SSE support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_intrinset,			10					; 10
			mov		[UX_INSTPTR].var_SSE,				true
			
			;/* %eax=01H, %edx */
			and					edi,					bit_SEP
			cmp					edi,					bit_SEP             ; SEP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SEP,				true
			.endif

			;/* %eax=01H, %edx */
			and					edi,					bit_SSE2
			cmp					edi,					bit_SSE2            ; SSE2 support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_intrinset,			20					; 20
			mov		[UX_INSTPTR].var_SSE2,				true
			
	else ;__X64__
			mov		[UX_INSTPTR].var_intrinset,			20					; at least SSE2 supported in 64 bit mode
			mov		[UX_INSTPTR].var_FPU,				true
			.if([UX_INSTPTR].var_cAMD == true)
			mov		[UX_INSTPTR].var_3DNOW,				true
			mov		[UX_INSTPTR].var_MMXEXT,				true
			mov		[UX_INSTPTR].var_3DNOWEXT,			true
			.endif
			mov		[UX_INSTPTR].var_CMPXCHG8B,			true
			mov		[UX_INSTPTR].var_CMOV,				true
			mov		[UX_INSTPTR].var_MMX,				true
			mov		[UX_INSTPTR].var_FXSR,				true
			mov		[UX_INSTPTR].var_enabled_XMM,		true
			mov		[UX_INSTPTR].var_SSE,				true
			mov		[UX_INSTPTR].var_SSE2,				true
			
			mov					edi,		[UX_INSTPTR].var_1H_EDX
			;/* %eax=01H, %edx */
			and					edi,					bit_TSC
			cmp					edi,					bit_TSC             ; TSC READTSC support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_TSC,				true
			.endif
			
			;/* %eax=01H, %edx */
			and					edi,					bit_MSR
			cmp					edi,					bit_MSR             ; MSR support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MSR,				true
			.endif
			
			;/* %eax=01H, %edx */
			and					edi,					bit_SEP
			cmp					edi,					bit_SEP             ; SEP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SEP,				true
			.endif

	endif ;__X64__
			
			;/* %eax=01H, %edx */
			and					edi,					bit_CLFSH
			cmp					edi,					bit_CLFSH           ; CLFSH support by microprocessor (SSE2)
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_CLFSH,				true
			.endif
			
			mov					edi,		[UX_INSTPTR].var_7H_EBX
			;/* %eax=07H, %ebx */
			;and					ebx,					bit_FSGSBASE
			test				edi,					1					; FSGSBASE support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_FSGSBASE,			true
			.endif
			
			mov					edi,		[UX_INSTPTR].var_1H_ECX
			;/* %eax=01H, %ecx */
			test				edi,					1					; SSE3 support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_intrinset,			30					; 30
			mov		[UX_INSTPTR].var_SSE3,				true
        
			;/* %eax=01H, %ecx */
			and					edi,					bit_MONITOR			
			cmp					edi,					bit_MONITOR			; MONITOR support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MONITOR,			true
			.endif
        
			;/* %eax=01H, %ecx */
			and					edi,					bit_SSSE3			
			cmp					edi,					bit_SSSE3			; Supplementary SSE3 (SSSE3) support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			31					; 31
			mov		[UX_INSTPTR].var_SSSE3,				true
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_CMPXCHG16B			
			cmp					edi,					bit_CMPXCHG16B		; CMPXCHG16B support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_CMPXCHG16B,			true
			.endif			
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_SSE41			
			cmp					edi,					bit_SSE41			; SSE4.1 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			41					; 41
			mov		[UX_INSTPTR].var_SSE41,				true
        
			;/* %eax=01H, %ecx */
			and					edi,					bit_POPCNT			
			cmp					edi,					bit_POPCNT			; POPCNT support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_POPCNT,				true
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_SSE42			
			cmp					edi,					bit_SSE42			; SSE4.2 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			42					; 42
			mov		[UX_INSTPTR].var_SSE42,				true
        
			;/* %eax=01H, %ecx */
			and					edi,					bit_PCLMULQDQ			
			cmp					edi,					bit_PCLMULQDQ		; PCLMUL support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_PCLMULQDQ,			true 
			.endif     
		
			;/* %eax=01H, %ecx */
			and					edi,					bit_MOVBE			
			cmp					edi,					bit_MOVBE			; MOVBE support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MOVBE,				true
			.endif
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_AES			
			cmp					edi,					bit_AES				; AES support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AES,				true
			.endif
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_RDRAND			
			cmp					edi,					bit_RDRAND			; RDRAND support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_RDRAND,				true
			.endif
			
			mov					edi,		[UX_INSTPTR].var_7H_EBX
			;/* %eax=07H, %ebx */
			.if([UX_INSTPTR].var_ntel == true)
			and					edi,					bit_SGX			
			cmp					edi,					bit_SGX				; SGX support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SGX,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_HLE			
			cmp					edi,					bit_HLE				; HLE support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_HLE,				true
			.endif

			;/* %eax=07H, %ebx */
			and					edi,					bit_SMEP			
			cmp					edi,					bit_SMEP			; SMEP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SMEP,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_ERMS			
			cmp					edi,					bit_ERMS			; ERMS support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_ERMS,				true
			.endif

			;/* %eax=07H, %ebx */
			and					edi,					bit_INVPCID			
			cmp					edi,					bit_INVPCID			; INVPCID support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_INVPCID,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_RTM			
			cmp					edi,					bit_RTM				; RTM support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_RTM,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_MPX			
			cmp					edi,					bit_MPX				; MPX support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MPX,				true
			.endif

			;/* %eax=07H, %ebx */
			and					edi,					bit_RDSEED			
			cmp					edi,					bit_RDSEED			; RDSEED support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_RDSEED,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_ADX			
			cmp					edi,					bit_ADX				; ADX support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_ADX,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_SMAP			
			cmp					edi,					bit_SMAP			; SMAP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SMAP,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_CLFLUSHOPT			
			cmp					edi,					bit_CLFLUSHOPT		; CLFLUSHOPT support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_CLFLUSHOPT,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_CLWB			
			cmp					edi,					bit_CLWB			; CLWB support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_CLWB,				true
			.endif

			;/* %eax=07H, %ebx */
			and					edi,					bit_SHA			
			cmp					edi,					bit_SHA				; SHA support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SHA,				true
			.endif
			
			mov					edi,		[UX_INSTPTR].var_7H_ECX
			;/* %eax=07H, %ecx */
			and					edi,					bit_PREFETCHWT1			
			cmp					edi,					bit_PREFETCHWT1		; PREFETCHWT1 support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_PREFETCHWT1,		true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_UMIP			
			cmp					edi,					bit_UMIP			; UMIP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_UMIP,				true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_PKU			
			cmp					edi,					bit_PKU				; PKU support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_PKU,				true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_OSPKE			
			cmp					edi,					bit_OSPKE			; OSPKE support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_OSPKE,				true
			.endif
			
			;/* %eax=07H, %ecx */
			and					edi,					bit_GFNI			
			cmp					edi,					bit_GFNI			; GFNI support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_GFNI,				true
			.endif
			
			;/* %eax=07H, %ecx */
			and					edi,					bit_RDPID			
			cmp					edi,					bit_RDPID			; RDPID support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_RDPID,				true
			.endif
			.endif ;ntel
			
			mov					edi,		[UX_INSTPTR].var_80000001H_ECX
			;/* %eax=80000001H, %ecx */
			;and					ecx,					bit_LAHF
			test				edi,					1					; LAHF/SAHF available in 64-bit mode only support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_LAHF,				true
			.endif

			;/* %eax=80000001H, %ecx */
			and					edi,					bit_PREFETCHW
			cmp					edi,					bit_PREFETCHW		; PREFETCHW support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_PREFETCHW,			true
			.endif
			
			.if([UX_INSTPTR].var_cAMD == true)
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_SSE4a
			cmp					edi,					bit_SSE4a			; SSE4a support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SSE4a,				true
			.endif
			
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_LWP
			cmp					edi,					bit_LWP				; LWP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_LWP,				true
			.endif
			
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_TBM
			cmp					edi,					bit_TBM				; TBM support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_TBM,				true
			.endif
			
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_MWAITX
			cmp					edi,					bit_MWAITX			; MWAITX support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MWAITX,				true
			.endif
			.endif ;cAMD
			
			mov					edi,		[UX_INSTPTR].var_80000001H_EDX
			;/* %eax=80000001H, %edx */
			;and					edx,					bit_SYSCALL
			test				edi,					1					; SYSCALL support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SYSCALL,			true
			.endif
			
			;/* %eax=80000001H, %edx */
			and					edi,					bit_RDTSCP
			cmp					edi,					bit_RDTSCP			; SYSCALL support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_RDTSCP,				true
			.endif

			mov					edi,		[UX_INSTPTR].var_1H_ECX
			; check OS support for YMM registers (AVX)
			;/* %eax=01H, %ecx */
			and					edi,					bit_OSXSAVE			
			cmp					edi,					bit_OSXSAVE			; OSXSAVE: XSAVE/XRSTOR, XSETBV/XGETBV supported
			jne					not_supported
			mov		[UX_INSTPTR].var_OSXSAVE,			true
			mov		[UX_INSTPTR].var_XSAVE,				true
			
	ifndef __X64__
			push				eax
			push				ecx
			push				edx
	else
			push				rax
			push				rcx
			push				rdx
	endif
			xor					ecx,					ecx
			;db					0FH, 01H, 0D0H								; XGETBV
			xgetbv
			and					eax,					06h
			cmp					eax,					06h					; check OS has enabled both XMM and YMM XCR0[2:1] XCR0[1:1] state support
	ifndef __X64__
			pop					edx
			pop					ecx
			pop					eax
	else
			pop					rdx
			pop					rcx
			pop					rax
	endif
			jne					not_supported
			mov		[UX_INSTPTR].var_enabled_YMM,		true
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_AVX			
			cmp					edi,					bit_AVX				; AVX support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			50					; 50
			mov		[UX_INSTPTR].var_AVX,				true
			
			.if([UX_INSTPTR].var_cAMD == true)
			mov					edi,		[UX_INSTPTR].var_80000001H_ECX
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_XOP
			cmp					edi,					bit_XOP				; XOP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_XOP,				true
			.endif

			;/* %eax=80000001H, %ecx */
			and					edi,					bit_FMA4
			cmp					edi,					bit_FMA4			; FMA4 support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_FMA4,				true
			.endif
			.endif ;cAMD

			.if([UX_INSTPTR].var_PCLMULQDQ == true && [UX_INSTPTR].var_AES == true )
			mov		[UX_INSTPTR].var_intrinset,			51					; 51
			.endif
		
			mov					edi,		[UX_INSTPTR].var_7H_EBX
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX2			
			cmp					edi,					bit_AVX2			; AVX2 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			52					; 52
			mov		[UX_INSTPTR].var_AVX2,				true
        
			mov					edi,		[UX_INSTPTR].var_7H_ECX
			;/* %eax=07H, %ecx */
			and					edi,					bit_VAES			
			cmp					edi,					bit_VAES			; VAES support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_VAES,				true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_VPCLMULQDQ			
			cmp					edi,					bit_VPCLMULQDQ		; VPCLMULQDQ support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_VPCLMULQDQ,			true
			.endif

			; 57 or above = FMA3, F16C, BMI1, BMI2, LZCNT
			mov					edi,		[UX_INSTPTR].var_1H_ECX
			;/* %eax=01H, %ecx */
			and					edi,					bit_FMA			
			cmp					edi,					bit_FMA				; FMA3 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_FMA,				true
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_F16C			
			cmp					edi,					bit_F16C			; F16C support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_F16C,				true
			
			mov					edi,		[UX_INSTPTR].var_7H_EBX
			;/* %eax=07H, %ebx */
			and					edi,					bit_BMI1			
			cmp					edi,					bit_BMI1			; BMI1 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_BMI1,				true
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_BMI2			
			cmp					edi,					bit_BMI2			; BMI2 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_BMI2,				true
        
			mov					edi,		[UX_INSTPTR].var_80000001H_ECX
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_LZCNT			
			cmp					edi,					bit_LZCNT			; LZCNT support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			57					; 57
			mov		[UX_INSTPTR].var_LZCNT,				true
			mov		[UX_INSTPTR].var_ABM,				true
			
			.if([UX_INSTPTR].var_ntel == true)
	ifndef __X64__
			push				eax
			push				ecx
			push				edx
	else
			push				rax
			push				rcx
			push				rdx
	endif
			xor					ecx,					ecx
			xor					edx,					edx
			;db					0FH, 01H, 0D0H								; XGETBV
			xgetbv
			and					eax,					0E6h
			cmp					eax,					0E6h				; check OS has enabled both XMM and YMM and ZMM XCR0[7:5] XCR0[2:1] XCR0[1:1] state support
	ifndef __X64__
			pop					edx
			pop					ecx
			pop					eax
	else
			pop					rdx
			pop					rcx
			pop					rax
	endif
			jne					not_supported
			mov		[UX_INSTPTR].var_enabled_ZMM,		true
			
			mov					edi,		[UX_INSTPTR].var_7H_EBX
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512F			
			cmp					edi,					bit_AVX512F			; AVX512F support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			60					; 60
			mov		[UX_INSTPTR].var_AVX512F,			true
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512DQ			
			cmp					edi,					bit_AVX512DQ		; AVX512DQ support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			61					; 61
			mov		[UX_INSTPTR].var_AVX512DQ,			true
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512BW			
			cmp					edi,					bit_AVX512BW		; AVX512BW support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			62					; 62
			mov		[UX_INSTPTR].var_AVX512BW,			true
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512VL			
			cmp					edi,					bit_AVX512VL		; AVX512VL support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			63					; 63
			mov		[UX_INSTPTR].var_AVX512VL,			true
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512PF			
			cmp					edi,					bit_AVX512PF		; AVX512PF support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512PF,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512ER			
			cmp					edi,					bit_AVX512ER		; AVX512ER support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512ER,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512CD			
			cmp					edi,					bit_AVX512CD		; AVX512CD support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512CD,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512_IFMA			
			cmp					edi,					bit_AVX512_IFMA		; AVX512_IFMA support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_IFMA,		true
			.endif
			
			mov					edi,		[UX_INSTPTR].var_7H_ECX
			;/* %eax=07H, %ecx */
			and					edi,					bit_AVX512_VBMI			
			cmp					edi,					bit_AVX512_VBMI		; AVX512_VBMI support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_VBMI,		true
			.endif
			
			;/* %eax=07H, %ecx */
			and					edi,					bit_AVX512_VBMI2			
			cmp					edi,					bit_AVX512_VBMI2	; AVX512_VBMI2 support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_VBMI2,		true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_AVX512_VNNI			
			cmp					edi,					bit_AVX512_VNNI		; AVX512_VNNI support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_VNNI,		true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_AVX512_BITALG			
			cmp					edi,					bit_AVX512_BITALG	; AVX512_BITALG support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_BITALG,		true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_AVX512_VPOPCNTDQ			
			cmp					edi,					bit_AVX512_VPOPCNTDQ	; AVX512_VPOPCNTDQ support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_VPOPCNTDQ,	true
			.endif
			
			mov					edi,		[UX_INSTPTR].var_7H_EDX
			;/* %eax=07H, %edx */
			and					edi,					bit_AVX512_4VNNIW			
			cmp					edi,					bit_AVX512_4VNNIW	; AVX512_4VNNIW support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_4VNNIW,		true
			.endif
			
			;/* %eax=07H, %edx */
			and					edi,					bit_AVX512_4FMAPS			
			cmp					edi,					bit_AVX512_4FMAPS	; AVX512_4FMAPS support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_4FMAPS,		true
			.endif
			.endif ;ntel

not_supported:		
			
	ifndef __X64__
			pop					edi
			;pop					ebx

			; The constructor MUST return it's this pointer in RAX.
			mov					eax,						thisPtr		
	else
			pop					rdi
			;pop					rbx

			; The constructor MUST return it's this pointer in RAX.
			mov					rax,						thisPtr		
	endif

			ret
UX_ENDMETHOD

; Destructor
			align 16
UX_VECMETHOD uXmCPUFeatures, Destroy, <VOIDARG>, <>
	
		; warning A4268: Procedure argument or local not referenced: thisPtr
	ifndef __X64__
		xor				eax,				eax
		;mov				[thisPtr],			eax
		mov				[UX_INSTPTR],		eax
	else
		xor				rax,				rax
		;mov				[thisPtr],			rax
		mov				[UX_INSTPTR],		rax
	endif

		ret
UX_ENDMETHOD


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
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, intrinset, <dword>;, <UX_USESBX>

		mov				eax,				[UX_INSTPTR].var_intrinset

		ret
UX_ENDMETHOD
	
	; /* %eax=00H, %ecx */	
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, is_Intel, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_ntel

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, is_AMD, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_cAMD

		ret
UX_ENDMETHOD

	;/* %eax=01H, %ecx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE3, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SSE3

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_PCLMULQDQ, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_PCLMULQDQ

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MONITOR, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_MONITOR

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSSE3, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SSSE3

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_FMA, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_FMA

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CMPXCHG16B, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_CMPXCHG16B

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE41, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SSE41

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE42, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SSE42

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MOVBE, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_MOVBE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_POPCNT, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_POPCNT

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AES, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AES

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_XSAVE, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_XSAVE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_OSXSAVE, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_OSXSAVE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_F16C, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_F16C

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_RDRAND, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_RDRAND

		ret
UX_ENDMETHOD


	;/* %eax=01H, %edx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_FPU, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_FPU

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_TSC, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_TSC

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MSR, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_MSR

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CMPXCHG8B, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_CMPXCHG8B

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SEP, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SEP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CMOV, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_CMOV

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CLFSH, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_CLFSH

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MMX, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_MMX

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_FXSR, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_FXSR

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SSE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE2, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SSE2

		ret
UX_ENDMETHOD


	;/* %eax=07H, %ebx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_FSGSBASE, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_FSGSBASE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SGX, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SGX

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_BMI1, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_BMI1

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_HLE, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_HLE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX2

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SMEP, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SMEP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_BMI2, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_BMI2

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_ERMS, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_ERMS

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_INVPCID, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_INVPCID

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_RTM, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_RTM

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MPX, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_MPX

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512F, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512F

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512DQ

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_RDSEED, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_RDSEED

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_ADX, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_ADX

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SMAP, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SMAP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_IFMA, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512_IFMA

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CLFLUSHOPT, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_CLFLUSHOPT

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CLWB, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_CLWB

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512PF, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512PF

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512ER, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512ER

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512CD, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512CD

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SHA, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SHA

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512BW

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512VL, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512VL

		ret
UX_ENDMETHOD


	;/* %eax=07H, %ecx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_PREFETCHWT1, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_PREFETCHWT1

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512_VBMI

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_UMIP, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_UMIP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_PKU, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_PKU

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_OSPKE, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_OSPKE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI2, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512_VBMI2

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_GFNI, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_GFNI

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_VAES, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_VAES

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_VPCLMULQDQ, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_VPCLMULQDQ

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VNNI, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512_VNNI

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_BITALG, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512_BITALG

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPOPCNTDQ, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512_VPOPCNTDQ

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_RDPID, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_RDPID

		ret
UX_ENDMETHOD


	;/* %eax=07H, %edx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_4VNNIW, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512_4VNNIW

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_4FMAPS, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_AVX512_4FMAPS

		ret
UX_ENDMETHOD


	;/* %eax=80000001H, %ecx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_LAHF, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_LAHF

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_LZCNT, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_LZCNT

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_ABM, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_ABM

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE4a, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SSE4a

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_PREFETCHW, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_PREFETCHW

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_XOP, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_XOP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_LWP, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_LWP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_FMA4, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_FMA4

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_TBM, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_TBM

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MWAITX, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_MWAITX

		ret
UX_ENDMETHOD


	;/* %eax=80000001H, %edx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SYSCALL, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_SYSCALL

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MMXEXT, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_MMXEXT

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_RDTSCP, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_RDTSCP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_3DNOWEXT, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_3DNOWEXT

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_3DNOW, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_3DNOW

		ret
UX_ENDMETHOD


	;/* %eax=07H, %ebx, %ecx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_GFNI_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_GFNI == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VAES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VAES_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_VAES == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPCLMULQDQ_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_VPCLMULQDQ == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD


			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_IFMA_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512_IFMA == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512_VBMI == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI2_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512_VBMI2 == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VNNI_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512_VNNI == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_BITALG_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512_BITALG == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPOPCNTDQ_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512_VPOPCNTDQ == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD


			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_GFNI_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_GFNI == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VAES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VAES_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_VAES == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VPCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VPCLMULQDQ_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_VPCLMULQDQ == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD


			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_GFNI_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_GFNI == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VAES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VAES_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_VAES == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VPCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VPCLMULQDQ_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_VPCLMULQDQ == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD


			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512CD_VL, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX512CD == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD


	;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE_AES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE_PCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE2_AES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE2 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE2_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE2 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE2_PCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE2 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE3_AES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE3 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE3_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE3 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE3_PCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE3 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSSE3_AES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSSE3 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSSE3_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSSE3 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSSE3_PCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSSE3 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE41_AES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE41 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE41_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE41 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE41_PCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE41 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE42_AES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE42 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE42_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE42 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE42_PCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_SSE42 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX_AES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX_PCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX_VAES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX == true && [UX_INSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX_VPCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX == true && [UX_INSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2_AES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX2 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2_GFNI, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX2 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2_PCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX2 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2_VAES, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX2 == true && [UX_INSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2_VPCLMULQDQ, <byte>;, <UX_USESBX>

		.if([UX_INSTPTR].var_AVX2 == true && [UX_INSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_enabled_XMM, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_enabled_XMM

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_enabled_YMM, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_enabled_YMM

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_enabled_ZMM, <byte>;, <UX_USESBX>

		mov				al,				[UX_INSTPTR].var_enabled_ZMM

		ret
UX_ENDMETHOD


			align 16
UX_STATICVECMETHOD uXmCPUFeatures, CpuType, <VOIDARG>;, <UX_USESBX>, vendor:ptr word, family:ptr word, model:ptr word

	ifndef __X64__
			push			ebx
			push			esi
			push			edi
	else
	ifdef UNIX
			mov				r8, 			rdx
	endif
	ifdef WINDOWS        
			push			rsi
			push			rdi
			mov				rdi, 			rcx
			mov				rsi,			rdx
	endif
	endif ;__X64__
    
	ifndef __X64__
			dvendor textequ <esp+16>
			dfamily textequ <esp+20>
			dmodel textequ <esp+24>

			xor				esi, 			esi               ; vendor
			xor				edi, 			edi               ; family
	else
; parameters
; vendor  rdi
; family  rsi
; model   r8

			xor				r9d,			r9d              ; vendor
			xor				r10d,			r10d             ; family
			xor				r11d, 			r11d             ; model
	endif ;__X64__

        ; ecx = last  4 characters of vendor string
        ; ebx = first 4 characters of vendor string
		
			.if([UX_INSTPTR].var_ntel == true)
	ifndef __X64__
			or				esi,			1
			je				C200
	else
			or				r9d,			1
			je				C200
	endif ;__X64__
			.endif
			
			.if([UX_INSTPTR].var_cAMD == true)
	ifndef __X64__
			or				esi,			2
			je				C200
	else
			or				r9d,			2
			je				C200
	endif ;__X64__
			.endif

			.if([UX_INSTPTR].var_Cent == true)
	ifndef __X64__
			or				esi,			3
			je				C200
	else
			or				r9d,			3
			je				C200
	endif ;__X64__
			.endif
			
			.if([UX_INSTPTR].var_VIA == true)
	ifndef __X64__
			or				esi,			3
			je				C200
	else
			or				r9d,			3
			je				C200
	endif ;__X64__
			.endif
			
			.if([UX_INSTPTR].var_Cyri == true)
	ifndef __X64__
			or				esi,			4
			je				C200
	else
			or				r9d,			4
			je				C200
	endif ;__X64__
			.endif
			
			.if([UX_INSTPTR].var_NexG == true)
	ifndef __X64__
			or				esi,			5
			je				C200
	else
			or				r9d,			5
			je				C200
	endif ;__X64__
			.endif
			
C200:   

	ifndef __X64__
			.if([UX_INSTPTR].var_CPUID == false)
			je				C900
			.endif
	endif ;__X64__

        ; Get family and model
			mov				eax,			1
			cpuid
			mov				ebx,			eax

	ifndef __X64__
			mov				edi,			eax
	else
			mov				r10d, 			eax
	endif ;__X64__

			shr				ebx, 			8
			and				ebx, 			0FH               ; Family
			
	ifndef __X64__
			shr				edi, 			20
			and				edi, 			0FFH             ; Extended family
			add				edi, 			ebx              ; Family + extended family
        
			mov				ebx, 			eax
			shr				ebx, 			4
			and				ebx, 			0FH              ; Model
			mov				ecx,  			eax
	else
			shr				r10d, 			20
			and				r10d, 			0FFH             ; Extended family
			add				r10d, 			ebx              ; Family + extended family
        
			mov				r11d, 			eax
			shr				r11d, 			4
			and				r11d, 			0FH              ; Model
	endif ;__X64__

			shr				eax, 			12
			and				eax, 			0F0H              ; Extended model
			
	ifndef __X64__
			or				ebx, 			ecx              ; extended model | Model
	else
			or				r11d, 			eax              ; extended model | Model
	endif ;__X64__
	        
C300:   ; return r9d = vendor, r10d = family, r11d = model
	ifndef __X64__
			mov				eax,  			[dvendor]
			test			eax,  			eax
			jz				C310
			mov				[eax],  		esi
	else
			test			rdi, 			rdi
			jz				C310
			mov				[rdi], 			r9d
	endif ;__X64__
	       
C310:   		
	ifndef __X64__
			mov				eax,  			[dfamily]
			test			eax,  			eax
			jz				C320
			mov				[eax],  		edi
	else
			test			rsi, 			rsi
			jz				C320
			mov				[rsi], 			r10d
	endif ;__X64__
	    
C320:   	
	ifndef __X64__
			mov				eax,   			[dmodel]
			test			eax,   			eax
			jz				C330
			mov				[eax],   		ebx
	else
			test			r8, 			r8
			jz				C330
			mov				[r8], 			r11d
	endif ;__X64__
	       
C330:   
			xor				eax, 			eax

        ; return
	ifndef __X64__
			pop				edi
			pop				esi
			pop				ebx
	else
	ifdef  WINDOWS 
			pop				rdi
			pop				rsi
	endif
	endif ;__X64__
	     
			ret

	ifndef __X64__
C900:   ; no cpuid
			xor				ebx, 			ebx
			jmp				C300
	endif ;__X64__	

UX_ENDMETHOD

;			align 16
;UX_STATICVECMETHOD uXmCPUFeatures, ProcessorName, <ptr>;, <UX_USESBX>

;		mov				al,				[UX_INSTPTR].var_enabled_ZMM

;		ret
;UX_ENDMETHOD

endif ;_CLASS_uXmCPUFEATURES

	end ;.code
