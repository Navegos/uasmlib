
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
			;align 16			
UXVECMETHOD uXmCPUFeatures, Init, <VOIDARG>, <UXUSESBX>
	
	ifndef __X64__
	
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
			test				ebx,					bit_CPUID
			jz					ISEND										; cpuidnot supported
            
			cpuid															; get number of cpuidfunctions
			test				eax,					eax
			jz					ISEND										; function 1 not supported
			mov					eax,					1
			cpuid															; get features
			xor					eax,					eax					; 0
        
			test				edx,					bit_FPU			    ; floating point support
			jz					ISEND
			mov		[UXINSTPTR].var_FPU,				true
			
			and					edx,					bit_MMX
			UXTEST(edx, bit_MMX)											; MMX support by microprocessor    
			jne					ISEND			
			mov		[UXINSTPTR].var_intrinset,			8					; 8
			mov		[UXINSTPTR].var_MMX,				true
        
			test				edx,					bit_CMOV			; conditional move support
			jz					ISEND
			mov		[UXINSTPTR].var_intrinset,			9					; 9
			mov		[UXINSTPTR].var_CMOV,				true
			
			; check OS support for XMM registers (SSE)
			test				edx,					bit_FXSR			; FXSAVE support by microprocessor
			jz					ISEND
			mov		[UXINSTPTR].var_FXSR,				true

			push				ecx
			push				edx
			mov					ebx,				esp					; save stack pointer
			sub					esp,				200H				; allocate space for FXSAVE
			and					esp,				-10H				; align by 16
			
TESTDATA equ 0D95A34BEH                ; random test value
TESTPS   equ 10CH                      ; position to write TESTDATA = upper part of XMM6 image

			fxsave				[esp]									; save FP/MMX and XMM registers
			mov					ecx,				[esp+TESTPS]		; read part of XMM6 register
			xor		dword ptr	[esp+TESTPS],		TESTDATA			; change value
			fxrstor				[esp]									; load changed value into XMM6
			mov					[esp+TESTPS],		ecx					; restore old value in buffer
			fxsave				[esp]									; save again
			mov					edx,				[esp+TESTPS]		; read changed XMM6 register
			mov					[esp+TESTPS],		ecx					; restore old value
			fxrstor				[esp]									; load old value into XMM6
			xor					ecx,				edx					; get difference between old and new value
			mov					esp,				ebx					; restore stack pointer
			cmp					ecx,				TESTDATA			; test if XMM6 was changed correctly
			pop					edx
			pop					ecx
			jne					ISEND
        
			bt					edx,				25					; SSE support by microprocessor
			jnc					ISEND
			mov					al,					10					; 10
        
			bt					edx,				26					; SSE2 support by microprocessor
			jnc					ISEND
			mov					al,					20					; 20
        
			test				ecx,				1					; SSE3 support by microprocessor
			jz					ISEND
			mov					al,					30					; 30
        
			bt					ecx,				9					; Suppl-SSE3 support by microprocessor
			jnc					ISEND
			inc					eax										; 31
        
			bt					ecx,				19					; SSE4.1 support by microprocessor
			jnc					ISEND
			mov					al,					41					; 41
        
			bt					ecx,				23					; POPCNT support by microprocessor
			jnc					ISEND
			;inc					eax										; 9
        
			bt					ecx,				20					; SSE4.2 support by microprocessor
			jnc					ISEND
			inc					eax										; 42

			; check OS support for YMM registers (AVX)
			bt					ecx,				27					; OSXSAVE: XGETBV supported
			jnc					ISEND
			pushad
			xor					ecx,				ecx
			db					0FH,01H, 0D0H							; XGETBV
			and					eax,				6
			cmp					eax,				6					; AVX support by OS
			popad
			jne					ISEND
        
			bt					ecx,				28					; AVX support by microprocessor
			jnc					ISEND
			mov					al,					50					; 50
        
			bt					ecx,				1					; PCLMUL support
			jnc					ISEND
			bt					ecx,				25					; AES support
			jnc					ISEND
			inc					eax										; 51
        
			push				eax
			push				ecx
			mov					eax,				7
			xor					ecx,				ecx
			cpuid														; check for AVX2
			bt					ebx,				5
			pop					ecx
			pop					eax
			jnc					ISEND
			inc					eax										; 52
        
			; 14 or above = FMA3, F16C, BMI1, BMI2, LZCNT
			bt					ecx,				12					; FMA3
			jnc					ISEND
			bt					ecx,				29					; F16C
			jnc					ISEND
			bt					ebx,				3					; BMI1
			jnc					ISEND
			bt					ebx,				8					; BMI2
			jnc					ISEND
                
			push				eax
			push				ebx
			push				ecx
			mov					eax,				80000001H
			cpuid
			bt					ecx,				5					; LZCNT
			pop					ecx
			pop					ebx
			pop					eax
			jnc					ISEND				
			mov					al,					57					; 57

			bt					ebx,				16					; AVX512f
			jnc					ISEND
			mov					al,					60					; 60
        
			bt					ebx,				17					; AVX512DQ
			jnc					ISEND
			inc					eax										; 61
			bt					ebx,				30					; AVX512BW
			jnc					ISEND
			inc					eax										; 62
			bt					ebx,				31					; AVX512VL
			jnc					ISEND
			inc					eax										; 63
			;bt					ebx,				28					; AVX512CD
			;jnc					ISEND
			;mov					al,					64					; 64

ISEND:		
			;pop					edx										; address of IInstrSet
			;mov					[edx],				eax					; save value in public variable IInstrSet
			;pop					ebx

	else	;__X64__
	
			push				rax
			push				rbx
			push				rcx
			push				rdx
			mov					eax,					0H
			cpuid
			mov		[UXINSTPTR].var_0H_ECX,				ecx
			pop					rdx
			pop					rcx
			pop					rbx
			pop					rax
			
			push				rax
			push				rbx
			push				rcx
			push				rdx
			mov					eax,					1H
			cpuid
			mov		[UXINSTPTR].var_1H_ECX,				ecx
			mov		[UXINSTPTR].var_1H_EDX,				edx
			pop					rdx
			pop					rcx
			pop					rbx
			pop					rax

			push				rax
			push				rbx
			push				rcx
			push				rdx
			mov					eax,					7H
			xor					ecx, 					ecx
			cpuid
			mov		[UXINSTPTR].var_7H_EBX,				ebx
			mov		[UXINSTPTR].var_7H_ECX,				ecx
			mov		[UXINSTPTR].var_7H_EDX,				edx
			pop					rdx
			pop					rcx
			pop					rbx
			pop					rax
			
			push				rax
			push				rbx
			push				rcx
			push				rdx
			mov					eax,					80000001H
			cpuid
			mov		[UXINSTPTR].var_80000001H_ECX,		ecx
			mov		[UXINSTPTR].var_80000001H_EDX,		edx
			pop					rdx
			pop					rcx
			pop					rbx
			pop					rax

			push				rdi
			mov					edi,		[UXINSTPTR].var_0H_ECX
			and					edi,					bit_ntel
			cmp					edi,					bit_ntel			; 'GenuineIntel'
			.if(EQUAL?)
			mov		[UXINSTPTR].var_ntel,				true
			je					xntel
			.endif
        
			and					edi,					bit_cAMD
			cmp					edi,					bit_cAMD			; 'AuthenticAMD'
			.if(EQUAL?)
			mov		[UXINSTPTR].var_cAMD,				true
			.endif

	xntel:

			mov		[UXINSTPTR].var_intrinset,			20					; at least SSE2 supported in 64 bit mode
			mov		[UXINSTPTR].var_FPU,				true
			.if([UXINSTPTR].var_cAMD == true)
			mov		[UXINSTPTR].var_3DNOW,				true
			mov		[UXINSTPTR].var_MMXEXT,				true
			mov		[UXINSTPTR].var_3DNOWEXT,			true
			.endif
			mov		[UXINSTPTR].var_CMPXCHG8B,			true
			mov		[UXINSTPTR].var_CMOV,				true
			mov		[UXINSTPTR].var_MMX,				true
			mov		[UXINSTPTR].var_FXSR,				true
			mov		[UXINSTPTR].var_enabled_XMM,		true
			mov		[UXINSTPTR].var_SSE,				true
			mov		[UXINSTPTR].var_SSE2,				true
			
			mov					edi,		[UXINSTPTR].var_1H_EDX
			;/* %eax=01H, %edx */
			and					edi,					bit_TSC
			cmp					edi,					bit_TSC             ; TSC support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_TSC,				true
			.endif

			;/* %eax=01H, %edx */
			and					edi,					bit_MSR
			cmp					edi,					bit_MSR             ; MSR support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_MSR,				true
			.endif

			;/* %eax=01H, %edx */
			and					edi,					bit_SEP
			cmp					edi,					bit_SEP             ; SEP support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_SEP,				true
			.endif

			;/* %eax=01H, %edx */
			and					edi,					bit_CLFSH
			cmp					edi,					bit_CLFSH           ; CLFSH support by microprocessor (SSE2)
			.if(EQUAL?)
			mov		[UXINSTPTR].var_CLFSH,				true
			.endif
			
			mov					edi,		[UXINSTPTR].var_7H_EBX
			;/* %eax=07H, %ebx */
			;and					ebx,					bit_FSGSBASE
			test				edi,					1					; FSGSBASE support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_FSGSBASE,			true
			.endif
			
			mov					edi,		[UXINSTPTR].var_1H_ECX
			;/* %eax=01H, %ecx */
			test				edi,					1					; SSE3 support by microprocessor
			jz					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			30					; 30
			mov		[UXINSTPTR].var_SSE3,				true
        
			;/* %eax=01H, %ecx */
			and					edi,					bit_MONITOR			
			cmp					edi,					bit_MONITOR			; MONITOR support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_MONITOR,			true
			.endif
        
			;/* %eax=01H, %ecx */
			and					edi,					bit_SSSE3			
			cmp					edi,					bit_SSSE3			; Supplementary SSE3 (SSSE3) support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			31					; 31
			mov		[UXINSTPTR].var_SSSE3,				true
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_CMPXCHG16B			
			cmp					edi,					bit_CMPXCHG16B		; CMPXCHG16B support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_CMPXCHG16B,			true
			.endif			
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_SSE41			
			cmp					edi,					bit_SSE41			; SSE4.1 support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			41					; 41
			mov		[UXINSTPTR].var_SSE41,				true
        
			;/* %eax=01H, %ecx */
			and					edi,					bit_POPCNT			
			cmp					edi,					bit_POPCNT			; POPCNT support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_POPCNT,				true
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_SSE42			
			cmp					edi,					bit_SSE42			; SSE4.2 support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			42					; 42
			mov		[UXINSTPTR].var_SSE42,				true
        
			;/* %eax=01H, %ecx */
			and					edi,					bit_PCLMULQDQ			
			cmp					edi,					bit_PCLMULQDQ		; PCLMUL support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_PCLMULQDQ,			true 
			.endif     
		
			;/* %eax=01H, %ecx */
			and					edi,					bit_MOVBE			
			cmp					edi,					bit_MOVBE			; MOVBE support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_MOVBE,				true
			.endif
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_AES			
			cmp					edi,					bit_AES				; AES support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AES,				true
			.endif
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_RDRAND			
			cmp					edi,					bit_RDRAND			; RDRAND support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_RDRAND,				true
			.endif
			
			mov					edi,		[UXINSTPTR].var_7H_EBX
			;/* %eax=07H, %ebx */
			.if([UXINSTPTR].var_ntel == true)
			and					edi,					bit_SGX			
			cmp					edi,					bit_SGX				; SGX support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_SGX,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_HLE			
			cmp					edi,					bit_HLE				; HLE support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_HLE,				true
			.endif

			;/* %eax=07H, %ebx */
			and					edi,					bit_SMEP			
			cmp					edi,					bit_SMEP			; SMEP support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_SMEP,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_ERMS			
			cmp					edi,					bit_ERMS			; ERMS support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_ERMS,				true
			.endif

			;/* %eax=07H, %ebx */
			and					edi,					bit_INVPCID			
			cmp					edi,					bit_INVPCID			; INVPCID support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_INVPCID,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_RTM			
			cmp					edi,					bit_RTM				; RTM support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_RTM,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_MPX			
			cmp					edi,					bit_MPX				; MPX support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_MPX,				true
			.endif

			;/* %eax=07H, %ebx */
			and					edi,					bit_RDSEED			
			cmp					edi,					bit_RDSEED			; RDSEED support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_RDSEED,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_ADX			
			cmp					edi,					bit_ADX				; ADX support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_ADX,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_SMAP			
			cmp					edi,					bit_SMAP			; SMAP support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_SMAP,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_CLFLUSHOPT			
			cmp					edi,					bit_CLFLUSHOPT		; CLFLUSHOPT support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_CLFLUSHOPT,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_CLWB			
			cmp					edi,					bit_CLWB			; CLWB support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_CLWB,				true
			.endif

			;/* %eax=07H, %ebx */
			and					edi,					bit_SHA			
			cmp					edi,					bit_SHA				; SHA support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_SHA,				true
			.endif
			
			mov					edi,		[UXINSTPTR].var_7H_ECX
			;/* %eax=07H, %ecx */
			and					edi,					bit_PREFETCHWT1			
			cmp					edi,					bit_PREFETCHWT1		; PREFETCHWT1 support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_PREFETCHWT1,		true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_UMIP			
			cmp					edi,					bit_UMIP			; UMIP support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_UMIP,				true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_PKU			
			cmp					edi,					bit_PKU				; PKU support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_PKU,				true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_OSPKE			
			cmp					edi,					bit_OSPKE			; OSPKE support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_OSPKE,				true
			.endif
			
			;/* %eax=07H, %ecx */
			and					edi,					bit_GFNI			
			cmp					edi,					bit_GFNI			; GFNI support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_GFNI,				true
			.endif
			
			;/* %eax=07H, %ecx */
			and					edi,					bit_RDPID			
			cmp					edi,					bit_RDPID			; RDPID support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_RDPID,				true
			.endif
			.endif ;ntel
			
			mov					edi,		[UXINSTPTR].var_80000001H_ECX
			;/* %eax=80000001H, %ecx */
			;and					ecx,					bit_LAHF
			test				edi,					1					; LAHF/SAHF available in 64-bit mode only support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_LAHF,				true
			.endif

			;/* %eax=80000001H, %ecx */
			and					edi,					bit_PREFETCHW
			cmp					edi,					bit_PREFETCHW		; PREFETCHW support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_PREFETCHW,			true
			.endif
			
			.if([UXINSTPTR].var_cAMD == true)
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_SSE4a
			cmp					edi,					bit_SSE4a			; SSE4a support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_SSE4a,				true
			.endif
			
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_LWP
			cmp					edi,					bit_LWP				; LWP support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_LWP,				true
			.endif
			
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_TBM
			cmp					edi,					bit_TBM				; TBM support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_TBM,				true
			.endif
			
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_MWAITX
			cmp					edi,					bit_MWAITX			; MWAITX support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_MWAITX,				true
			.endif
			.endif ;cAMD
			
			mov					edi,		[UXINSTPTR].var_80000001H_EDX
			;/* %eax=80000001H, %edx */
			;and					edx,					bit_SYSCALL
			test				edi,					1					; SYSCALL support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_SYSCALL,			true
			.endif
			
			;/* %eax=80000001H, %edx */
			and					edi,					bit_RDTSCP
			cmp					edi,					bit_RDTSCP			; SYSCALL support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_RDTSCP,				true
			.endif

			mov					edi,		[UXINSTPTR].var_1H_ECX
			; check OS support for YMM registers (AVX)
			;/* %eax=01H, %ecx */
			and					edi,					bit_OSXSAVE			
			cmp					edi,					bit_OSXSAVE			; OSXSAVE: XSAVE/XRSTOR, XSETBV/XGETBV supported
			jne					x64_not_supported
			mov		[UXINSTPTR].var_OSXSAVE,			true
			mov		[UXINSTPTR].var_XSAVE,				true

			push				rax
			push				rcx
			push				rdx
			xor					ecx,					ecx
			;db					0FH, 01H, 0D0H								; XGETBV
			xgetbv
			and					eax,					06h
			cmp					eax,					06h					; check OS has enabled both XMM and YMM XCR0[2:1] XCR0[1:1] state support
			pop					rdx
			pop					rcx
			pop					rax
			jne					x64_not_supported
			mov		[UXINSTPTR].var_enabled_YMM,		true
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_AVX			
			cmp					edi,					bit_AVX				; AVX support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			50					; 50
			mov		[UXINSTPTR].var_AVX,				true
			
			.if([UXINSTPTR].var_cAMD == true)
			mov					edi,		[UXINSTPTR].var_80000001H_ECX
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_XOP
			cmp					edi,					bit_XOP				; XOP support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_XOP,				true
			.endif

			;/* %eax=80000001H, %ecx */
			and					edi,					bit_FMA4
			cmp					edi,					bit_FMA4			; FMA4 support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_FMA4,				true
			.endif
			.endif ;cAMD

			.if([UXINSTPTR].var_PCLMULQDQ == true && [UXINSTPTR].var_AES == true )
			mov		[UXINSTPTR].var_intrinset,			51					; 51
			.endif
		
			mov					edi,		[UXINSTPTR].var_7H_EBX
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX2			
			cmp					edi,					bit_AVX2			; AVX2 support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			52					; 52
			mov		[UXINSTPTR].var_AVX2,				true
        
			mov					edi,		[UXINSTPTR].var_7H_ECX
			;/* %eax=07H, %ecx */
			and					edi,					bit_VAES			
			cmp					edi,					bit_VAES			; VAES support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_VAES,				true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_VPCLMULQDQ			
			cmp					edi,					bit_VPCLMULQDQ		; VPCLMULQDQ support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_VPCLMULQDQ,			true
			.endif

			; 57 or above = FMA3, F16C, BMI1, BMI2, LZCNT
			mov					edi,		[UXINSTPTR].var_1H_ECX
			;/* %eax=01H, %ecx */
			and					edi,					bit_FMA			
			cmp					edi,					bit_FMA				; FMA3 support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_FMA,				true
			
			;/* %eax=01H, %ecx */
			and					edi,					bit_F16C			
			cmp					edi,					bit_F16C			; F16C support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_F16C,				true
			
			mov					edi,		[UXINSTPTR].var_7H_EBX
			;/* %eax=07H, %ebx */
			and					edi,					bit_BMI1			
			cmp					edi,					bit_BMI1			; BMI1 support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_BMI1,				true
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_BMI2			
			cmp					edi,					bit_BMI2			; BMI2 support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_BMI2,				true
        
			mov					edi,		[UXINSTPTR].var_80000001H_ECX
			;/* %eax=80000001H, %ecx */
			and					edi,					bit_LZCNT			
			cmp					edi,					bit_LZCNT			; LZCNT support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			57					; 57
			mov		[UXINSTPTR].var_LZCNT,				true
			mov		[UXINSTPTR].var_ABM,				true
			
			.if([UXINSTPTR].var_ntel == true)
			push				rax
			push				rcx
			push				rdx
			xor					ecx,					ecx
			xor					edx,					edx
			;db					0FH, 01H, 0D0H								; XGETBV
			xgetbv
			and					eax,					0E6h
			cmp					eax,					0E6h				; check OS has enabled both XMM and YMM and ZMM XCR0[7:5] XCR0[2:1] XCR0[1:1] state support
			pop					rdx
			pop					rcx
			pop					rax
			jne					x64_not_supported
			mov		[UXINSTPTR].var_enabled_ZMM,		true
			
			mov					edi,		[UXINSTPTR].var_7H_EBX
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512F			
			cmp					edi,					bit_AVX512F			; AVX512F support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			60					; 60
			mov		[UXINSTPTR].var_AVX512F,			true
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512DQ			
			cmp					edi,					bit_AVX512DQ		; AVX512DQ support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			61					; 61
			mov		[UXINSTPTR].var_AVX512DQ,			true
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512BW			
			cmp					edi,					bit_AVX512BW		; AVX512BW support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			62					; 62
			mov		[UXINSTPTR].var_AVX512BW,			true
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512VL			
			cmp					edi,					bit_AVX512VL		; AVX512VL support by microprocessor
			jne					x64_not_supported
			mov		[UXINSTPTR].var_intrinset,			63					; 63
			mov		[UXINSTPTR].var_AVX512VL,			true
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512PF			
			cmp					edi,					bit_AVX512PF		; AVX512PF support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512PF,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512ER			
			cmp					edi,					bit_AVX512ER		; AVX512ER support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512ER,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512CD			
			cmp					edi,					bit_AVX512CD		; AVX512CD support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512CD,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					edi,					bit_AVX512_IFMA			
			cmp					edi,					bit_AVX512_IFMA		; AVX512_IFMA support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512_IFMA,		true
			.endif
			
			mov					edi,		[UXINSTPTR].var_7H_ECX
			;/* %eax=07H, %ecx */
			and					edi,					bit_AVX512_VBMI			
			cmp					edi,					bit_AVX512_VBMI		; AVX512_VBMI support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512_VBMI,		true
			.endif
			
			;/* %eax=07H, %ecx */
			and					edi,					bit_AVX512_VBMI2			
			cmp					edi,					bit_AVX512_VBMI2	; AVX512_VBMI2 support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512_VBMI2,		true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_AVX512_VNNI			
			cmp					edi,					bit_AVX512_VNNI		; AVX512_VNNI support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512_VNNI,		true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_AVX512_BITALG			
			cmp					edi,					bit_AVX512_BITALG	; AVX512_BITALG support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512_BITALG,		true
			.endif

			;/* %eax=07H, %ecx */
			and					edi,					bit_AVX512_VPOPCNTDQ			
			cmp					edi,					bit_AVX512_VPOPCNTDQ	; AVX512_VPOPCNTDQ support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512_VPOPCNTDQ,	true
			.endif
			
			mov					edi,		[UXINSTPTR].var_7H_EDX
			;/* %eax=07H, %edx */
			and					edi,					bit_AVX512_4VNNIW			
			cmp					edi,					bit_AVX512_4VNNIW	; AVX512_4VNNIW support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512_4VNNIW,		true
			.endif
			
			;/* %eax=07H, %edx */
			and					edi,					bit_AVX512_4FMAPS			
			cmp					edi,					bit_AVX512_4FMAPS	; AVX512_4FMAPS support by microprocessor
			.if(EQUAL?)
			mov		[UXINSTPTR].var_AVX512_4FMAPS,		true
			.endif
			.endif ;ntel

x64_not_supported:		
			;mov					[IInstrSet],		eax					; save value in global variable

			pop						rdi
			;pop					rbx
	endif ;__X64__

		; The constructor MUST return it's this pointer in RAX.
		mov				rax,				thisPtr
		
		ret
ENDMETHOD

; Destructor
			;align 16	
UXVECMETHOD uXmCPUFeatures, Destroy, <VOIDARG>, <>

		; warning A4268: Procedure argument or local not referenced: thisPtr
		xor				rax,				rax
		mov				[UXINSTPTR],		rax

		ret
ENDMETHOD


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
			;align 16	
STATICVECMETHOD uXmCPUFeatures, intrinset, <dword>, <UXUSESBX>

		mov				eax,				[UXINSTPTR].var_intrinset

		ret
ENDMETHOD
	
	; /* %eax=00H, %ecx */	
			;align 16	
STATICVECMETHOD uXmCPUFeatures, is_Intel, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_ntel

		ret
ENDMETHOD

			;align 16	
STATICVECMETHOD uXmCPUFeatures, is_AMD, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_cAMD

		ret
ENDMETHOD

	;/* %eax=01H, %ecx */
			;align 16	
STATICVECMETHOD uXmCPUFeatures, has_SSE3, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SSE3

		ret
ENDMETHOD

			;align 16	
STATICVECMETHOD uXmCPUFeatures, has_PCLMULQDQ, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_PCLMULQDQ

		ret
ENDMETHOD

			;align 16	
STATICVECMETHOD uXmCPUFeatures, has_MONITOR, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_MONITOR

		ret
ENDMETHOD

			;align 16	
STATICVECMETHOD uXmCPUFeatures, has_SSSE3, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SSSE3

		ret
ENDMETHOD

			;align 16	
STATICVECMETHOD uXmCPUFeatures, has_FMA, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_FMA

		ret
ENDMETHOD

			;align 16	
STATICVECMETHOD uXmCPUFeatures, has_CMPXCHG16B, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_CMPXCHG16B

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE41, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SSE41

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE42, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SSE42

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_MOVBE, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_MOVBE

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_POPCNT, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_POPCNT

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AES, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AES

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_XSAVE, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_XSAVE

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_OSXSAVE, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_OSXSAVE

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_F16C, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_F16C

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_RDRAND, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_RDRAND

		ret
ENDMETHOD


	;/* %eax=01H, %edx */
STATICVECMETHOD uXmCPUFeatures, has_FPU, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_FPU

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_TSC, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_TSC

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_MSR, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_MSR

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_CMPXCHG8B, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_CMPXCHG8B

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SEP, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SEP

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_CMOV, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_CMOV

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_CLFSH, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_CLFSH

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_MMX, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_MMX

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_FXSR, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_FXSR

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SSE

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE2, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SSE2

		ret
ENDMETHOD


	;/* %eax=07H, %ebx */
STATICVECMETHOD uXmCPUFeatures, has_FSGSBASE, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_FSGSBASE

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SGX, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SGX

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_BMI1, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_BMI1

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_HLE, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_HLE

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX2, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX2

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SMEP, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SMEP

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_BMI2, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_BMI2

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_ERMS, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_ERMS

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_INVPCID, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_INVPCID

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_RTM, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_RTM

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_MPX, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_MPX

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512F, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512F

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512DQ

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_RDSEED, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_RDSEED

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_ADX, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_ADX

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SMAP, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SMAP

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_IFMA, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512_IFMA

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_CLFLUSHOPT, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_CLFLUSHOPT

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_CLWB, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_CLWB

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512PF, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512PF

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512ER, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512ER

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512CD, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512CD

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SHA, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SHA

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512BW, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512BW

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512VL, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512VL

		ret
ENDMETHOD


	;/* %eax=07H, %ecx */
STATICVECMETHOD uXmCPUFeatures, has_PREFETCHWT1, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_PREFETCHWT1

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512_VBMI

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_UMIP, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_UMIP

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_PKU, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_PKU

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_OSPKE, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_OSPKE

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI2, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512_VBMI2

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_GFNI, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_GFNI

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_VAES, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_VAES

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_VPCLMULQDQ, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_VPCLMULQDQ

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VNNI, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512_VNNI

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_BITALG, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512_BITALG

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPOPCNTDQ, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512_VPOPCNTDQ

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_RDPID, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_RDPID

		ret
ENDMETHOD


	;/* %eax=07H, %edx */
STATICVECMETHOD uXmCPUFeatures, has_AVX512_4VNNIW, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512_4VNNIW

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_4FMAPS, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_AVX512_4FMAPS

		ret
ENDMETHOD


	;/* %eax=80000001H, %ecx */
STATICVECMETHOD uXmCPUFeatures, has_LAHF, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_LAHF

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_LZCNT, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_LZCNT

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_ABM, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_ABM

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE4a, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SSE4a

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_PREFETCHW, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_PREFETCHW

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_XOP, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_XOP

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_LWP, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_LWP

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_FMA4, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_FMA4

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_TBM, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_TBM

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_MWAITX, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_MWAITX

		ret
ENDMETHOD


	;/* %eax=80000001H, %edx */
STATICVECMETHOD uXmCPUFeatures, has_SYSCALL, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_SYSCALL

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_MMXEXT, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_MMXEXT

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_RDTSCP, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_RDTSCP

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_3DNOWEXT, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_3DNOWEXT

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_3DNOW, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_3DNOW

		ret
ENDMETHOD


	;/* %eax=07H, %ebx, %ecx */
STATICVECMETHOD uXmCPUFeatures, has_AVX512_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512F == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_GFNI_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512F == true && [UXINSTPTR].var_GFNI == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VAES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512F == true && [UXINSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VAES_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512F == true && [UXINSTPTR].var_VAES == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512F == true && [UXINSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPCLMULQDQ_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512F == true && [UXINSTPTR].var_VPCLMULQDQ == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD


STATICVECMETHOD uXmCPUFeatures, has_AVX512_IFMA_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512_IFMA == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512_VBMI == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI2_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512_VBMI2 == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VNNI_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512_VNNI == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_BITALG_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512_BITALG == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPOPCNTDQ_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512_VPOPCNTDQ == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD


STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512BW == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_GFNI_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512BW == true && [UXINSTPTR].var_GFNI == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VAES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512BW == true && [UXINSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VAES_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512BW == true && [UXINSTPTR].var_VAES == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VPCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512BW == true && [UXINSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VPCLMULQDQ_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512BW == true && [UXINSTPTR].var_VPCLMULQDQ == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512BW == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD


STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512DQ == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_GFNI_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512DQ == true && [UXINSTPTR].var_GFNI == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VAES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512DQ == true && [UXINSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VAES_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512DQ == true && [UXINSTPTR].var_VAES == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VPCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512DQ == true && [UXINSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VPCLMULQDQ_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512DQ == true && [UXINSTPTR].var_VPCLMULQDQ == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512DQ == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD


STATICVECMETHOD uXmCPUFeatures, has_AVX512CD_VL, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX512CD == true && [UXINSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD


	;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
STATICVECMETHOD uXmCPUFeatures, has_SSE_AES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE == true && [UXINSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE_PCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE == true && [UXINSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE2_AES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE2 == true && [UXINSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE2_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE2 == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE2_PCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE2 == true && [UXINSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE3_AES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE3 == true && [UXINSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE3_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE3 == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE3_PCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE3 == true && [UXINSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSSE3_AES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSSE3 == true && [UXINSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSSE3_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSSE3 == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSSE3_PCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSSE3 == true && [UXINSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE41_AES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE41 == true && [UXINSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE41_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE41 == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE41_PCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE41 == true && [UXINSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE42_AES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE42 == true && [UXINSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE42_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE42 == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_SSE42_PCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_SSE42 == true && [UXINSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX_AES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX == true && [UXINSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX_PCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX == true && [UXINSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX_VAES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX == true && [UXINSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX_VPCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX == true && [UXINSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX2_AES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX2 == true && [UXINSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX2_GFNI, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX2 == true && [UXINSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX2_PCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX2 == true && [UXINSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX2_VAES, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX2 == true && [UXINSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_AVX2_VPCLMULQDQ, <byte>, <UXUSESBX>

		.if([UXINSTPTR].var_AVX2 == true && [UXINSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_enabled_XMM, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_enabled_XMM

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_enabled_YMM, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_enabled_YMM

		ret
ENDMETHOD

STATICVECMETHOD uXmCPUFeatures, has_enabled_ZMM, <byte>, <UXUSESBX>

		mov				al,				[UXINSTPTR].var_enabled_ZMM

		ret
ENDMETHOD


endif

	end ;.code
