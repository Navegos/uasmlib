
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

	.data
			align 16

	;_bss segment 'BSS'
	;		align 16
			;NameBuffer db 50H dup(0)             ; Static buffer to contain name
	;_bss ends

	.code

ifndef _CLASS_uXmCPUFEATURES
_CLASS_uXmCPUFEATURES equ 1

	include uXmx86Cpu.inc

; Constructor
			align 16		
UX_VECMETHOD uXmCPUFeatures, Init, <VOIDARG>, <UX_USESRBX>
		
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
			push				esi
			r00ecx	textequ		<edi>
			r01edx	textequ		<esi>
			r07ebx	textequ		<edi>
			r01ecx	textequ		<esi>
			r07ecx	textequ		<edi>
			r81ecx	textequ		<esi>
			r81edx	textequ		<edi>
			r07edx	textequ		<esi>
	else
		ifdef WINDOWS
			push				rdi
			push				rsi
			r00ecx	textequ		<edi>
		else			
			r00ecx	textequ		<r8d>
		endif
			push				r10
			push				r11
			push				r12
			push				r13
			;push				r14
			;push				r15
			r01edx	textequ		<esi>
			r07ebx	textequ		<r8d>
			r01ecx	textequ		<r9d>
			r07ecx	textequ		<r10d>
			r81ecx	textequ		<r11d>
			r81edx	textequ		<r12d>
			r07edx	textequ		<r13d>
			;mreg8	textequ		<r14d>
			;mreg9	textequ		<r15d>
	endif

			mov					r00ecx,		[UX_INSTPTR].var_0H_ECX
			mov					r01edx,		[UX_INSTPTR].var_1H_EDX

	ifdef __X64__			
			mov					r07ebx,		[UX_INSTPTR].var_7H_EBX
			mov					r01ecx,		[UX_INSTPTR].var_1H_ECX
			mov					r07ecx,		[UX_INSTPTR].var_7H_ECX
			mov					r81ecx,		[UX_INSTPTR].var_80000001H_ECX
			mov					r81edx,		[UX_INSTPTR].var_80000001H_EDX
			mov					r07edx,		[UX_INSTPTR].var_7H_EDX
	endif

			and					r00ecx,					bit_ntel
			cmp					r00ecx,					bit_ntel			; 'GenuineIntel'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_ntel,				true
			je					bvendor
			.endif
        
			and					r00ecx,					bit_cAMD
			cmp					r00ecx,					bit_cAMD			; 'AuthenticAMD'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_cAMD,				true
			je					bvendor
			.endif
			
			mov					r00ecx,		[UX_INSTPTR].var_0H_EBX
			and					r00ecx,					bit_Cent
			cmp					r00ecx,					bit_Cent			; 'CentaurHauls'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_Cent,				true
			je					bvendor
			.endif
        
			and					r00ecx,					bit_VIA
			cmp					r00ecx,					bit_VIA				; 'VIA VIA VIA'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_VIA,				true
			je					bvendor
			.endif
        
			and					r00ecx,					bit_Cyri
			cmp					r00ecx,					bit_Cyri			; 'CyrixInstead'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_Cyri,				true
			je					bvendor
			.endif
        
			and					r00ecx,					bit_NexG
			cmp					r00ecx,					bit_NexG			; 'NexGenDriven'
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_NexG,				true
			;je					bvendor
			.endif
        
	bvendor:
	
	ifndef __X64__

			;/* %eax=01H, %edx */
			;and					r01edx,					bit_FPU
			test				r01edx,					1					; FPU support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_FPU,				true
			
			;/* %eax=01H, %edx */
			and					r01edx,					bit_TSC
			cmp					r01edx,					bit_TSC             ; TSC READTSC support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_TSC,				true
			.endif
			
			;/* %eax=01H, %edx */
			and					r01edx,					bit_MSR
			cmp					r01edx,					bit_MSR             ; MSR support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MSR,				true
			.endif
			
			;/* %eax=01H, %edx */
			and					r01edx,					bit_CMPXCHG8B
			cmp					r01edx,					bit_CMPXCHG8B		; CMPXCHG8B support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_CMPXCHG8B,			true
			.endif
			
			;/* %eax=01H, %edx */
			and					r01edx,					bit_MMX
			cmp					r01edx,					bit_MMX             ; MMX support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_intrinset,			8					; 8
			mov		[UX_INSTPTR].var_MMX,				true
			
			.if([UX_INSTPTR].var_cAMD == true)
			mov					r00ecx,		[UX_INSTPTR].var_80000001H_EDX
			; /* %eax=80000001H, %edx */
			and					r00ecx,					bit_MMXEXT
			cmp					r00ecx,					bit_MMXEXT          ; MMXEXT support by microprocessor			
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MMXEXT,				true
			.endif
			
			; /* %eax=80000001H, %edx */
			and					r00ecx,					bit_3DNOW
			cmp					r00ecx,					bit_3DNOW           ; 3DNOW support by microprocessor			
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_3DNOW,				true
			.endif
			
			; /* %eax=80000001H, %edx */
			and					r00ecx,					bit_3DNOWEXT
			cmp					r00ecx,					bit_3DNOWEXT        ; 3DNOWEXT support by microprocessor			
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_3DNOWEXT,			true
			.endif
			.endif ;cAMD
			
			;mov					r01edx,		[UX_INSTPTR].var_1H_EDX
			;/* %eax=01H, %edx */
			and					r01edx,					bit_CMOV
			cmp					r01edx,					bit_CMOV            ; CMOV support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_intrinset,			9					; 9
			mov		[UX_INSTPTR].var_CMOV,				true
			
			;/* %eax=01H, %edx */
			and					r01edx,					bit_FXSR
			cmp					r01edx,					bit_FXSR            ; FXSR support by microprocessor
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
			and					r01edx,					bit_SSE
			cmp					r01edx,					bit_SSE				; SSE support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_intrinset,			10					; 10
			mov		[UX_INSTPTR].var_SSE,				true
			
			;/* %eax=01H, %edx */
			and					r01edx,					bit_SEP
			cmp					r01edx,					bit_SEP             ; SEP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SEP,				true
			.endif

			;/* %eax=01H, %edx */
			and					r01edx,					bit_SSE2
			cmp					r01edx,					bit_SSE2            ; SSE2 support by microprocessor
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
			
			;/* %eax=01H, %edx */
			and					r01edx,					bit_TSC
			cmp					r01edx,					bit_TSC             ; TSC READTSC support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_TSC,				true
			.endif
			
			;/* %eax=01H, %edx */
			and					r01edx,					bit_MSR
			cmp					r01edx,					bit_MSR             ; MSR support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MSR,				true
			.endif
			
			;/* %eax=01H, %edx */
			and					r01edx,					bit_SEP
			cmp					r01edx,					bit_SEP             ; SEP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SEP,				true
			.endif

	endif ;__X64__
			
			;/* %eax=01H, %edx */
			and					r01edx,					bit_CLFSH
			cmp					r01edx,					bit_CLFSH           ; CLFSH support by microprocessor (SSE2)
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_CLFSH,				true
			.endif
	
	ifndef __X64__		
			mov					r07ebx,		[UX_INSTPTR].var_7H_EBX
			mov					r01ecx,		[UX_INSTPTR].var_1H_ECX
	endif ;__X64__

			;/* %eax=07H, %ebx */
			;and					ebx,					bit_FSGSBASE
			test				r07ebx,					1					; FSGSBASE support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_FSGSBASE,			true
			.endif
			
			;/* %eax=01H, %ecx */
			test				r01ecx,					1					; SSE3 support by microprocessor
			jz					not_supported
			mov		[UX_INSTPTR].var_intrinset,			30					; 30
			mov		[UX_INSTPTR].var_SSE3,				true
        
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_MONITOR			
			cmp					r01ecx,					bit_MONITOR			; MONITOR support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MONITOR,			true
			.endif
        
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_SSSE3			
			cmp					r01ecx,					bit_SSSE3			; Supplementary SSE3 (SSSE3) support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			31					; 31
			mov		[UX_INSTPTR].var_SSSE3,				true
			
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_CMPXCHG16B			
			cmp					r01ecx,					bit_CMPXCHG16B		; CMPXCHG16B support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_CMPXCHG16B,			true
			.endif			
			
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_SSE41			
			cmp					r01ecx,					bit_SSE41			; SSE4.1 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			41					; 41
			mov		[UX_INSTPTR].var_SSE41,				true
        
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_POPCNT			
			cmp					r01ecx,					bit_POPCNT			; POPCNT support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_POPCNT,				true
			
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_SSE42			
			cmp					r01ecx,					bit_SSE42			; SSE4.2 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			42					; 42
			mov		[UX_INSTPTR].var_SSE42,				true
        
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_PCLMULQDQ			
			cmp					r01ecx,					bit_PCLMULQDQ		; PCLMUL support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_PCLMULQDQ,			true 
			.endif     
		
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_MOVBE			
			cmp					r01ecx,					bit_MOVBE			; MOVBE support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MOVBE,				true
			.endif
			
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_AES			
			cmp					r01ecx,					bit_AES				; AES support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AES,				true
			.endif
			
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_RDRAND			
			cmp					r01ecx,					bit_RDRAND			; RDRAND support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_RDRAND,				true
			.endif
			
			;/* %eax=07H, %ebx */
			.if([UX_INSTPTR].var_ntel == true)
			and					r07ebx,					bit_SGX			
			cmp					r07ebx,					bit_SGX				; SGX support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SGX,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_HLE			
			cmp					r07ebx,					bit_HLE				; HLE support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_HLE,				true
			.endif

			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_SMEP			
			cmp					r07ebx,					bit_SMEP			; SMEP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SMEP,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_ERMS			
			cmp					r07ebx,					bit_ERMS			; ERMS support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_ERMS,				true
			.endif

			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_INVPCID			
			cmp					r07ebx,					bit_INVPCID			; INVPCID support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_INVPCID,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_RTM			
			cmp					r07ebx,					bit_RTM				; RTM support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_RTM,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_MPX			
			cmp					r07ebx,					bit_MPX				; MPX support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MPX,				true
			.endif

			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_RDSEED			
			cmp					r07ebx,					bit_RDSEED			; RDSEED support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_RDSEED,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_ADX			
			cmp					r07ebx,					bit_ADX				; ADX support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_ADX,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_SMAP			
			cmp					r07ebx,					bit_SMAP			; SMAP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SMAP,				true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_CLFLUSHOPT			
			cmp					r07ebx,					bit_CLFLUSHOPT		; CLFLUSHOPT support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_CLFLUSHOPT,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_CLWB			
			cmp					r07ebx,					bit_CLWB			; CLWB support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_CLWB,				true
			.endif

			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_SHA			
			cmp					r07ebx,					bit_SHA				; SHA support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SHA,				true
			.endif
			
	ifndef __X64__
			mov					r07ecx,		[UX_INSTPTR].var_7H_ECX
	endif ;__X64__

			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_PREFETCHWT1			
			cmp					r07ecx,					bit_PREFETCHWT1		; PREFETCHWT1 support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_PREFETCHWT1,		true
			.endif

			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_UMIP			
			cmp					r07ecx,					bit_UMIP			; UMIP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_UMIP,				true
			.endif

			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_PKU			
			cmp					r07ecx,					bit_PKU				; PKU support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_PKU,				true
			.endif

			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_OSPKE			
			cmp					r07ecx,					bit_OSPKE			; OSPKE support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_OSPKE,				true
			.endif
			
			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_GFNI			
			cmp					r07ecx,					bit_GFNI			; GFNI support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_GFNI,				true
			.endif
			
			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_RDPID			
			cmp					r07ecx,					bit_RDPID			; RDPID support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_RDPID,				true
			.endif
			.endif ;ntel
			
	ifndef __X64__
			mov					r81ecx,		[UX_INSTPTR].var_80000001H_ECX
	endif ;__X64__

			;/* %eax=80000001H, %ecx */
			;and					ecx,					bit_LAHF
			test				r81ecx,					1					; LAHF/SAHF available in 64-bit mode only support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_LAHF,				true
			.endif

			;/* %eax=80000001H, %ecx */
			and					r81ecx,					bit_PREFETCHW
			cmp					r81ecx,					bit_PREFETCHW		; PREFETCHW support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_PREFETCHW,			true
			.endif
			
			.if([UX_INSTPTR].var_cAMD == true)
			;/* %eax=80000001H, %ecx */
			and					r81ecx,					bit_SSE4a
			cmp					r81ecx,					bit_SSE4a			; SSE4a support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SSE4a,				true
			.endif
			
			;/* %eax=80000001H, %ecx */
			and					r81ecx,					bit_LWP
			cmp					r81ecx,					bit_LWP				; LWP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_LWP,				true
			.endif
			
			;/* %eax=80000001H, %ecx */
			and					r81ecx,					bit_TBM
			cmp					r81ecx,					bit_TBM				; TBM support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_TBM,				true
			.endif
			
			;/* %eax=80000001H, %ecx */
			and					r81ecx,					bit_MWAITX
			cmp					r81ecx,					bit_MWAITX			; MWAITX support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_MWAITX,				true
			.endif
			.endif ;cAMD
			
	ifndef __X64__
			mov					r81edx,		[UX_INSTPTR].var_80000001H_EDX
	endif ;__X64__

			;/* %eax=80000001H, %edx */
			;and					edx,					bit_SYSCALL
			test				r81edx,					1					; SYSCALL support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_SYSCALL,			true
			.endif
			
			;/* %eax=80000001H, %edx */
			and					r81edx,					bit_RDTSCP
			cmp					r81edx,					bit_RDTSCP			; SYSCALL support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_RDTSCP,				true
			.endif
			
	ifndef __X64__
			mov					r01ecx,		[UX_INSTPTR].var_1H_ECX
	endif ;__X64__

			; check OS support for YMM registers (AVX)
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_OSXSAVE			
			cmp					r01ecx,					bit_OSXSAVE			; OSXSAVE: XSAVE/XRSTOR, XSETBV/XGETBV supported
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
			and					r01ecx,					bit_AVX			
			cmp					r01ecx,					bit_AVX				; AVX support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			50					; 50
			mov		[UX_INSTPTR].var_AVX,				true
			
			.if([UX_INSTPTR].var_cAMD == true)
	ifndef __X64__
			mov					r81ecx,		[UX_INSTPTR].var_80000001H_ECX
	endif ;__X64__

			;/* %eax=80000001H, %ecx */
			and					r81ecx,					bit_XOP
			cmp					r81ecx,					bit_XOP				; XOP support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_XOP,				true
			.endif

			;/* %eax=80000001H, %ecx */
			and					r81ecx,					bit_FMA4
			cmp					r81ecx,					bit_FMA4			; FMA4 support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_FMA4,				true
			.endif
			.endif ;cAMD

			.if([UX_INSTPTR].var_PCLMULQDQ == true && [UX_INSTPTR].var_AES == true)
			mov		[UX_INSTPTR].var_intrinset,			51					; 51
			.endif
		
	ifndef __X64__
			mov					r07ebx,		[UX_INSTPTR].var_7H_EBX
	endif ;__X64__

			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_AVX2			
			cmp					r07ebx,					bit_AVX2			; AVX2 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			52					; 52
			mov		[UX_INSTPTR].var_AVX2,				true
        
	ifndef __X64__
			mov					r07ecx,		[UX_INSTPTR].var_7H_ECX
	endif ;__X64__

			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_VAES			
			cmp					r07ecx,					bit_VAES			; VAES support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_VAES,				true
			.endif

			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_VPCLMULQDQ			
			cmp					r07ecx,					bit_VPCLMULQDQ		; VPCLMULQDQ support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_VPCLMULQDQ,			true
			.endif

			; 57 or above = FMA3, F16C, BMI1, BMI2, LZCNT
	ifndef __X64__
			mov					r01ecx,		[UX_INSTPTR].var_1H_ECX
	endif ;__X64__

			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_FMA			
			cmp					r01ecx,					bit_FMA				; FMA3 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_FMA,				true
			
			;/* %eax=01H, %ecx */
			and					r01ecx,					bit_F16C			
			cmp					r01ecx,					bit_F16C			; F16C support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_F16C,				true
			
	ifndef __X64__
			mov					r07ebx,		[UX_INSTPTR].var_7H_EBX
	endif ;__X64__

			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_BMI1			
			cmp					r07ebx,					bit_BMI1			; BMI1 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_BMI1,				true
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_BMI2			
			cmp					r07ebx,					bit_BMI2			; BMI2 support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_BMI2,				true
        
	ifndef __X64__
			mov					r81ecx,		[UX_INSTPTR].var_80000001H_ECX
	endif ;__X64__

			;/* %eax=80000001H, %ecx */
			and					r81ecx,					bit_LZCNT			
			cmp					r81ecx,					bit_LZCNT			; LZCNT support by microprocessor
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
			
	ifndef __X64__
			mov					r07ebx,		[UX_INSTPTR].var_7H_EBX
	endif ;__X64__

			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_AVX512F			
			cmp					r07ebx,					bit_AVX512F			; AVX512F support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			60					; 60
			mov		[UX_INSTPTR].var_AVX512F,			true
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_AVX512DQ			
			cmp					r07ebx,					bit_AVX512DQ		; AVX512DQ support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			61					; 61
			mov		[UX_INSTPTR].var_AVX512DQ,			true
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_AVX512BW			
			cmp					r07ebx,					bit_AVX512BW		; AVX512BW support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			62					; 62
			mov		[UX_INSTPTR].var_AVX512BW,			true
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_AVX512VL			
			cmp					r07ebx,					bit_AVX512VL		; AVX512VL support by microprocessor
			jne					not_supported
			mov		[UX_INSTPTR].var_intrinset,			63					; 63
			mov		[UX_INSTPTR].var_AVX512VL,			true
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_AVX512PF			
			cmp					r07ebx,					bit_AVX512PF		; AVX512PF support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512PF,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_AVX512ER			
			cmp					r07ebx,					bit_AVX512ER		; AVX512ER support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512ER,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_AVX512CD			
			cmp					r07ebx,					bit_AVX512CD		; AVX512CD support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512CD,			true
			.endif
			
			;/* %eax=07H, %ebx */
			and					r07ebx,					bit_AVX512_IFMA			
			cmp					r07ebx,					bit_AVX512_IFMA		; AVX512_IFMA support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_IFMA,		true
			.endif
			
	ifndef __X64__
			mov					r07ecx,		[UX_INSTPTR].var_7H_ECX
	endif ;__X64__

			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_AVX512_VBMI			
			cmp					r07ecx,					bit_AVX512_VBMI		; AVX512_VBMI support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_VBMI,		true
			.endif
			
			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_AVX512_VBMI2			
			cmp					r07ecx,					bit_AVX512_VBMI2	; AVX512_VBMI2 support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_VBMI2,		true
			.endif

			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_AVX512_VNNI			
			cmp					r07ecx,					bit_AVX512_VNNI		; AVX512_VNNI support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_VNNI,		true
			.endif

			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_AVX512_BITALG			
			cmp					r07ecx,					bit_AVX512_BITALG	; AVX512_BITALG support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_BITALG,		true
			.endif

			;/* %eax=07H, %ecx */
			and					r07ecx,					bit_AVX512_VPOPCNTDQ			
			cmp					r07ecx,					bit_AVX512_VPOPCNTDQ	; AVX512_VPOPCNTDQ support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_VPOPCNTDQ,	true
			.endif
			
	ifndef __X64__
			mov					r07edx,		[UX_INSTPTR].var_7H_EDX
	endif ;__X64__
	
			;/* %eax=07H, %edx */
			and					r07edx,					bit_AVX512_4VNNIW			
			cmp					r07edx,					bit_AVX512_4VNNIW	; AVX512_4VNNIW support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_4VNNIW,		true
			.endif
			
			;/* %eax=07H, %edx */
			and					r07edx,					bit_AVX512_4FMAPS			
			cmp					r07edx,					bit_AVX512_4FMAPS	; AVX512_4FMAPS support by microprocessor
			.if(EQUAL?)
			mov		[UX_INSTPTR].var_AVX512_4FMAPS,		true
			.endif
			.endif ;ntel

not_supported:		
			
	ifndef __X64__
			pop					edi
			pop					esi
			;pop					ebx

			; The constructor MUST return it's this pointer in RAX.
			mov					eax,					thisPtr		
	else	
			pop					r13
			pop					r12
			pop					r11
			pop					r10
		ifdef WINDOWS
			pop					rsi
			pop					rdi
		endif		

			; The constructor MUST return it's this pointer in RAX.
			mov					rax,					thisPtr		
	endif

			ret
UX_ENDMETHOD

; Destructor
			align 16
UX_VECMETHOD uXmCPUFeatures, Destroy, <VOIDARG>, <>
	
		; warning A4268: Procedure argument or local not referenced: thisPtr
	ifndef __X64__
			xor					eax,					eax
			;mov				[thisPtr],				eax
			mov					[UX_INSTPTR],			eax
	else
			xor					rax,					rax
			;mov				[thisPtr],				rax
			mov					[UX_INSTPTR],			rax
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
UX_STATICVECMETHOD uXmCPUFeatures, intrinset, <dword>, <UX_USESRBX>

		mov				eax,				[UX_INSTPTR].var_intrinset

		ret
UX_ENDMETHOD
	
	; /* %eax=00H, %ecx */	
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, is_Intel, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_ntel

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, is_AMD, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_cAMD

		ret
UX_ENDMETHOD

	;/* %eax=01H, %ecx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE3, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SSE3

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_PCLMULQDQ, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_PCLMULQDQ

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MONITOR, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_MONITOR

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSSE3, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SSSE3

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_FMA, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_FMA

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CMPXCHG16B, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_CMPXCHG16B

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE41, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SSE41

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE42, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SSE42

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MOVBE, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_MOVBE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_POPCNT, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_POPCNT

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AES, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AES

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_XSAVE, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_XSAVE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_OSXSAVE, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_OSXSAVE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_F16C, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_F16C

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_RDRAND, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_RDRAND

		ret
UX_ENDMETHOD


	;/* %eax=01H, %edx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_FPU, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_FPU

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_TSC, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_TSC

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MSR, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_MSR

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CMPXCHG8B, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_CMPXCHG8B

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SEP, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SEP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CMOV, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_CMOV

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CLFSH, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_CLFSH

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MMX, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_MMX

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_FXSR, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_FXSR

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SSE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE2, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SSE2

		ret
UX_ENDMETHOD


	;/* %eax=07H, %ebx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_FSGSBASE, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_FSGSBASE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SGX, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SGX

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_BMI1, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_BMI1

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_HLE, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_HLE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX2

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SMEP, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SMEP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_BMI2, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_BMI2

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_ERMS, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_ERMS

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_INVPCID, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_INVPCID

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_RTM, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_RTM

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MPX, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_MPX

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512F, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512F

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512DQ

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_RDSEED, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_RDSEED

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_ADX, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_ADX

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SMAP, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SMAP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_IFMA, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512_IFMA

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CLFLUSHOPT, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_CLFLUSHOPT

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_CLWB, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_CLWB

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512PF, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512PF

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512ER, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512ER

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512CD, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512CD

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SHA, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SHA

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512BW

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512VL, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512VL

		ret
UX_ENDMETHOD


	;/* %eax=07H, %ecx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_PREFETCHWT1, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_PREFETCHWT1

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512_VBMI

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_UMIP, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_UMIP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_PKU, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_PKU

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_OSPKE, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_OSPKE

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI2, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512_VBMI2

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_GFNI, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_GFNI

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_VAES, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_VAES

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_VPCLMULQDQ, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_VPCLMULQDQ

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VNNI, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512_VNNI

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_BITALG, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512_BITALG

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPOPCNTDQ, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512_VPOPCNTDQ

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_RDPID, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_RDPID

		ret
UX_ENDMETHOD


	;/* %eax=07H, %edx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_4VNNIW, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512_4VNNIW

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_4FMAPS, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_AVX512_4FMAPS

		ret
UX_ENDMETHOD


	;/* %eax=80000001H, %ecx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_LAHF, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_LAHF

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_LZCNT, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_LZCNT

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_ABM, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_ABM

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE4a, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SSE4a

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_PREFETCHW, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_PREFETCHW

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_XOP, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_XOP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_LWP, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_LWP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_FMA4, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_FMA4

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_TBM, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_TBM

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MWAITX, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_MWAITX

		ret
UX_ENDMETHOD


	;/* %eax=80000001H, %edx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SYSCALL, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_SYSCALL

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_MMXEXT, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_MMXEXT

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_RDTSCP, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_RDTSCP

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_3DNOWEXT, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_3DNOWEXT

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_3DNOW, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_3DNOW

		ret
UX_ENDMETHOD


	;/* %eax=07H, %ebx, %ecx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_GFNI_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_GFNI == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VAES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VAES_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_VAES == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPCLMULQDQ_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512F == true && [UX_INSTPTR].var_VPCLMULQDQ == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD


			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_IFMA_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512_IFMA == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512_VBMI == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VBMI2_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512_VBMI2 == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VNNI_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512_VNNI == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_BITALG_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512_BITALG == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512_VPOPCNTDQ_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512_VPOPCNTDQ == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD


			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_GFNI_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_GFNI == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VAES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VAES_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_VAES == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VPCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VPCLMULQDQ_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_VPCLMULQDQ == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512BW_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512BW == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD


			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_GFNI_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_GFNI == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VAES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VAES_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_VAES == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VPCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VPCLMULQDQ_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_VPCLMULQDQ == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512DQ_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512DQ == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD


			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX512CD_VL, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX512CD == true && [UX_INSTPTR].var_AVX512VL == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD


	;/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE_AES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE_PCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE2_AES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE2 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE2_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE2 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE2_PCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE2 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE3_AES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE3 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE3_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE3 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE3_PCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE3 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSSE3_AES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSSE3 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSSE3_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSSE3 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSSE3_PCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSSE3 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE41_AES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE41 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE41_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE41 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE41_PCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE41 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE42_AES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE42 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE42_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE42 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_SSE42_PCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_SSE42 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX_AES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX_PCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX_VAES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX == true && [UX_INSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX_VPCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX == true && [UX_INSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2_AES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX2 == true && [UX_INSTPTR].var_AES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2_GFNI, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX2 == true && [UX_INSTPTR].var_GFNI == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2_PCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX2 == true && [UX_INSTPTR].var_PCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2_VAES, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX2 == true && [UX_INSTPTR].var_VAES == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_AVX2_VPCLMULQDQ, <byte>, <UX_USESRBX>

		.if([UX_INSTPTR].var_AVX2 == true && [UX_INSTPTR].var_VPCLMULQDQ == true)
		mov				al,				true
		.endif

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_enabled_XMM, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_enabled_XMM

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_enabled_YMM, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_enabled_YMM

		ret
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, has_enabled_ZMM, <byte>, <UX_USESRBX>

		mov				al,				[UX_INSTPTR].var_enabled_ZMM

		ret
UX_ENDMETHOD


			align 16
UX_STATICVECMETHOD uXmCPUFeatures, CpuType, <VOIDARG>, <UX_USESRBX>;, vendor:ptr dword, family:ptr dword, model:ptr dword

	ifndef __X64__
			push				ebx
			push				edi
			push				esi
			evendor	textequ		<esp+16>
			efamily	textequ		<esp+20>
			emodel	textequ		<esp+24>
	else
		ifdef WINDOWS
			push				rdi
			push				rsi
			push				r10
			push				r11
	; -> The proc arguments conform to vectorcall calling convention: rcx=thisPtr, rdx=vendor, r8=family, r9=model
			rvendor	textequ		<rdi>
			rfamily	textequ		<r8>
			rmodel	textequ		<r9>
			mov					rvendor,				rdx ;family
			rdvendor textequ	<esi>
			rdfamily textequ	<r10d>
			rdmodel	textequ		<r11d>
		else
			push				r10
			push				r11
			push				r12
	; -> The proc arguments conform to systemv calling convention: rdi=thisPtr, rsi=vendor, rdx=family, rcx=model
			rvendor	textequ		<rsi>
			rfamily	textequ		<r8>
			rmodel	textequ		<r9>
			;mov					rvendor,				
			mov					rfamily,				rdx
			mov					rmodel,					rcx
			rdvendor textequ	<r10d>
			rdfamily textequ	<r11d>
			rdmodel	textequ		<r12d>
		endif
	endif ;__X64__
    
	ifndef __X64__
			;dvendor textequ <esp+16>
			;dfamily textequ <esp+20>
			;dmodel textequ <esp+24>

			xor					esi,					esi               ; vendor
			xor					edi,					edi               ; family
	else
; parameters
; vendor  rdi
; family  rsi
; model   r8

			xor					rdvendor,				rdvendor            ; vendor
			xor					rdfamily,				rdfamily            ; family
			xor					rdmodel,				rdmodel             ; model
	endif ;__X64__

        ; ecx = last  4 characters of vendor string
        ; ebx = first 4 characters of vendor string
		
			.if([UX_INSTPTR].var_ntel == true)
	ifndef __X64__
			or					esi,					1
			je					C200
	else
			or					rdvendor,				1
			je					C200
	endif ;__X64__
			.endif
			
			.if([UX_INSTPTR].var_cAMD == true)
	ifndef __X64__
			or					esi,					2
			je					C200
	else
			or					rdvendor,				2
			je					C200
	endif ;__X64__
			.endif

			.if([UX_INSTPTR].var_Cent == true)
	ifndef __X64__
			or					esi,					3
			je					C200
	else
			or					rdvendor,				3
			je					C200
	endif ;__X64__
			.endif
			
			.if([UX_INSTPTR].var_VIA == true)
	ifndef __X64__
			or					esi,					3
			je					C200
	else
			or					rdvendor,				3
			je					C200
	endif ;__X64__
			.endif
			
			.if([UX_INSTPTR].var_Cyri == true)
	ifndef __X64__
			or					esi,					4
			je					C200
	else
			or					rdvendor,				4
			je					C200
	endif ;__X64__
			.endif
			
			.if([UX_INSTPTR].var_NexG == true)
	ifndef __X64__
			or					esi,					5
			je					C200
	else
			or					rdvendor,				5
			je					C200
	endif ;__X64__
			.endif
			
C200:   

	ifndef __X64__
			.if([UX_INSTPTR].var_CPUID == false)
			je					C900
			.endif
	endif ;__X64__

        ; Get family and model
			mov					eax,					1
			cpuid
			mov					ebx,					eax

	ifndef __X64__
			mov					edi,					eax
	else
			mov					rdfamily,				eax
	endif ;__X64__

			shr					ebx,					8
			and					ebx,					0FH               ; Family
			
	ifndef __X64__
			shr					edi,					20
			and					edi,					0FFH             ; Extended family
			add					edi,					ebx              ; Family + extended family
        
			mov					ebx,					eax
			shr					ebx,					4
			and					ebx,					0FH              ; Model
			mov					ecx,					eax
	else
			shr					rdfamily,				20
			and					rdfamily,				0FFH             ; Extended family
			add					rdfamily,				ebx              ; Family + extended family
        
			mov					rdmodel,				eax
			shr					rdmodel,				4
			and					rdmodel,				0FH              ; Model
	endif ;__X64__

			shr					eax,					12
			and					eax,					0F0H              ; Extended model
			
	ifndef __X64__
			or					ebx,					ecx              ; extended model | Model
	else
			or					rdmodel,				eax              ; extended model | Model
	endif ;__X64__
	        
C300:   ; return rdvendor = vendor, rdfamily = family, rdmodel = model
	ifndef __X64__
			mov					eax,					[evendor]
			test				eax,					eax
			jz					C310
			mov					[eax],					esi
	else
			test				rvendor,				rvendor
			jz					C310
			;mov				[UX_INSTPTR].var_vendor,	rdvendor
			mov					[rvendor],				rdvendor
	endif ;__X64__
	       
C310:   		
	ifndef __X64__
			mov					eax,					[efamily]
			test				eax,					eax
			jz					C320
			mov					[eax],					edi
	else
			test				rfamily,				rfamily
			jz					C320
			;mov				[UX_INSTPTR].var_family,	rdfamily		
			mov					[rfamily],				rdfamily
	endif ;__X64__
	    
C320:   	
	ifndef __X64__
			mov					eax,					[emodel]
			test				eax,					eax
			jz					C330
			mov					[eax],					ebx
	else
			test				rmodel,					rmodel
			jz					C330
			;mov				[UX_INSTPTR].var_model,		rdmodel
			mov					[rmodel],				rdmodel
	endif ;__X64__
	       
C330:   

			;mov					[vendor],				rvendor
			;mov					[family],				rfamily
			;mov					[model],				rmodel
	    
			xor					eax,					eax

        ; return
	ifndef __X64__
			pop					esi
			pop					edi
			pop					ebx
	else
		ifdef  WINDOWS
			pop					r11
			pop					r10
			pop					rsi
			pop					rdi
		else		
			pop					r12
			pop					r11
			pop					r10
		endif
	endif ;__X64__
	     
			ret

	ifndef __X64__
C900:   ; no cpuid
			xor					ebx,					ebx
			jmp					C300
	endif ;__X64__	

UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, ProcessorName, <ptr>, <UX_USESRBX>
			
	;_DATA segment 'DATA'
	;		align 16
	;		NameBuffer db 50H dup(0)             ; Static buffer to contain name
	;_DATA ends

			;local NameBuffer db 50H dup(0)             ; Static buffer to contain name
			
			;push    rbx

	ifndef __X64__
				push				edi
			ifndef RDEST_DEFINED
				define RDEST_DEFINED
				rdest	textequ		<edi>
			endif
	else
		ifdef WINDOWS
				push				rdi
			ifndef RDEST_DEFINED
				define RDEST_DEFINED
				rdest	textequ		<rdi>
			endif
		else
				push				rsi
			ifndef RDEST_DEFINED
				define RDEST_DEFINED
				rdest	textequ		<rsi>
			endif
		endif
	endif
	
	ifndef __X64__
			mov					rdest, 					[UX_INSTPTR].var_ProcessorName        ; Pointer to result
	else
			lea					rdest,					[[UX_INSTPTR].var_ProcessorName]      ; text pointer
	endif
	        
	ifndef __X64__
			.if([UX_INSTPTR].var_CPUID == false)
        ; processor has no CPUID
			mov		dword ptr [rdest], 					'8038'    ; Write text '80386 or 80486'
			mov		dword ptr [rdest+4], 				'6 or'
			mov		dword ptr [rdest+8], 				' 804'
			mov		dword ptr [rdest+12],				'86'   ; End with 0
			jmp			PNEND        
			.endif
	endif

			mov					eax,					80000000H
			cpuid
			cmp					eax,					80000004H         ; text if extended vendor string available
			jb					no_ext_vendor_string

			; Has extended vendor string
			mov					eax,					80000002H
			cpuid
			mov					[rdest],				eax             ; store 16 bytes of extended vendor string
			mov					[rdest+4],				ebx
			mov					[rdest+8],				ecx
			mov					[rdest+0CH],			edx
			mov					eax,					80000003H
			cpuid
			mov					[rdest+10H],			eax         ; next 16 bytes
			mov					[rdest+14H],			ebx
			mov					[rdest+18H],			ecx
			mov					[rdest+1CH],			edx
			mov					eax,					80000004H
			cpuid
			mov					[rdest+20H],			eax         ; next 16 bytes
			mov					[rdest+24H],			ebx
			mov					[rdest+28H],			ecx
			mov					[rdest+2CH],			edx
			jmp					get_family_and_model
        
no_ext_vendor_string:
        ; No extended vendor string. Get short vendor string
			xor					eax,					eax
			cpuid
			mov					[rdest],				ebx              ; store short vendor string
			mov					[rdest+4],				edx
			mov					[rdest+8],				ecx
			mov			byte ptr [rdest+12],			0    ; terminate string
        
get_family_and_model:
	ifndef __X64__
			push				rdest                   ; Save string address
	endif
			xor					eax,					eax
			mov					ecx,					30H
			cld
			repne				scasb                  ; find end of text
			dec					rdest
        
			mov		dword ptr [rdest],					' Fam'   ; Append text " Family "
			mov		dword ptr [rdest+4],				'ily '
			add					rdest,					8

			mov					eax,					1
			cpuid                          ; Get family and model
			mov					ebx,					eax
			mov					ecx,					eax
			shr					eax,					8
			and					eax,					0FH               ; Family
			shr					ecx,					20
			and					ecx,					0FFH              ; Extended family
			add					eax,					ecx               ; Family + extended family
			call				WriteHex               ; Write as hexadecimal

			mov		dword ptr [rdest],					'H Mo' ; Write text "H Model "
			mov		dword ptr [rdest+4],				'del '
			add					rdest, 					8
        
			mov					eax,					ebx
			shr					eax,					4
			and					eax,					0FH               ; Model
			mov					ecx,					ebx
			shr					ecx,					12
			and					ecx,					0F0H              ; Extended model
			or					eax,					ecx               ; Model | extended model
			call				WriteHex               ; Write as hexadecimal

			mov		dword ptr [rdest],					'H'       ; Write text "H"
        
	ifndef __X64__
			pop					rdest                    ; Restore string address
	endif

PNEND:  ; finished
	ifndef __X64__
			mov					eax, 					rdest        ; Pointer to result
	else
			lea					rax,					[[UX_INSTPTR].var_ProcessorName]      ; Pointer to result
	endif

			pop					rdest
			;pop					rbx

			ret
		
UX_ENDMETHOD

			align 16
UX_STATICVECMETHOD uXmCPUFeatures, DataCacheSize, <UX_SIZET>, <UX_USESRBX>

	data_layout struct
		ok     dword 2 dup(?)
		level1 qword 1 dup(?)
		level2 qword 1 dup(?)
		level3 qword 1 dup(?)
		level4 qword 1 dup(?)
		descriptortable dword 60 dup(?)
	data_layout ends

	descriptor_record struct			; record for table of cache descriptors
		d_key	dword 1 dup(?)			; key from cpuid instruction
		d_level	dword 1 dup(?)			; cache level
		d_sizem	dword 1 dup(?)			; size multiplier
		d_2pow	dword 1 dup(?)			; power of 2. size = d_sizem << d_2pow
	descriptor_record ends
		
	;_DATA segment 'DATA?'
			;align 16
	;_DATA ends

	_DATA segment ' .data '
			;align 16

		dataref label ptr qword                              ; reference point
		ok_       dd      0, 0                ; 1 when values are determined
		level1_   dq      0                   ; level 1 data cache size
		level2_   dq      0                   ; level 2 data cache size
		level3_   dq      0                   ; level 3 data cache size
		level4_   dq      0                   ; level 4 data cache size
		numlevels  equ     4                   ; max level

		; From "Intel Processor Identification and the CPUID Instruction, Application note 485
		; table of Intel cache descriptors
descriptortable_ label byte
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
descriptortablelength equ ($ - descriptortable_) / sizeof descriptor_record

		;dlayout data_layout <>
		drecord descriptor_record <>
	_DATA ends

	        push				rbx
			push				r14
	ifdef  WINDOWS
			push				rsi
			push				rdi
			mov					r14d, ecx              ; level
	else   ; UNIX
			mov					r14d, edi              ; level
	endif
        ; check if called before
			lea					r9, [dataref]
			cmp			dword ptr [r9+data_layout.ok], 1       ; ok
			je					D800
        
        ; find cpu vendor
			push					0
	ifdef  WINDOWS
			mov					rcx, rsp
			xor					edx, edx
			xor					r8d, r8d
	else   ; UNIX
			mov					rdi, rsp
			xor					esi, esi
			xor					edx, edx
	endif        
			call				_uXmCPUFeatures_CpuType
			lea					r9, [dataref]
			pop					rax                    ; eax = vendor
			dec					eax
			jz      Intel
			dec     eax
			jz      AMD
			dec     eax
			jz      VIA
        ; unknown vendor, try all methods
			call    IntelNewMethod
			jnc     D800                   ; not carry = success
			call    AMDMethod
			jnc     D800                   ; not carry = success
			call    IntelOldMethod
			jmp     D800                   ; return whether success or not
        
Intel:  
			call    IntelNewMethod
			jnc     D800                   ; not carry = success
			call    IntelOldMethod
			jmp     D800                   ; return whether success or not

AMD:    ; AMD and VIA use same method
VIA:    
			call    AMDMethod
        
D800:   ; cache data known, get desired return value
			xor     eax, eax
			cmp     r14d, numlevels
			ja      D900
			cmp     r14d, 0
			je      D820
        ; level = 1 .. numlevels
			mov     rax, [r9 + r14*8]      ; size of selected cache
			jmp     D850
D820:   ; level = 0. Get size of largest level cache
			mov     rax, [r9 + data_layout.level3]     ; level3
			test    rax, rax
			jnz     D850
			mov     rax, [r9 + data_layout.level2]     ; level2
			test    rax, rax
			jnz     D850
			mov     rax, [r9 + data_layout.level1]     ; level1
D850:		
			mov     dword ptr [r9 + data_layout.ok], 1     ; remember called, whether success or not
D900:   
	ifdef  WINDOWS
			pop     rdi
			pop     rsi
	endif
			pop     r14
			pop     rbx

			ret
		
UX_ENDMETHOD
	
WriteHex:                              ; Local function: Write 2 hexadecimal digits
        ; Parameters: AL = number to write, RDI = text destination
	
	ifndef __X64__
			ifndef RDEST_DEFINED
				push				edi
				define RDEST_DEFINED
				rdest	textequ		<edi>
			endif
	else
		ifdef WINDOWS
			ifndef RDEST_DEFINED
				push				rdi
				define RDEST_DEFINED
				rdest	textequ		<rdi>
			endif
		else
			ifndef RDEST_DEFINED
				push				rsi
				define RDEST_DEFINED
				rdest	textequ		<rsi>
			endif
		endif
	endif

			mov					ecx, 					eax
			shr					ecx, 					4
			and					ecx, 					0FH               ; most significant digit first
			cmp					ecx, 					10
			jnb					W1
			; 0 - 9
			add					ecx, 					'0'
			jmp					W2
W1:			; A - F
			add					ecx, 					'A' - 10
W2:			mov					[rdest], 				cl              ; write digit
                
			mov					ecx, 					eax
			and					ecx, 					0FH               ; next digit
			cmp					ecx, 					10
			jnb					W3
			; 0 - 9
			add					ecx, 					'0'
			jmp					W4
W3:			; A - F
			add					ecx, 					'A' - 10
W4:			mov					[rdest+1], 				cl            ; write digit
			add					rdest, 					2                 ; advance string pointer
			
		ifndef RDEST_DEFINED
			pop					rdest
		endif

			ret

; Determine cache sizes by CPUID function 4
; input: esi = pointer to dataref
; output: values returned in dataref + level1, level2, level3
; carry flag = 0 on succes
IntelNewMethod:
			xor     eax, eax
			cpuid                          ; get number of CPUID functions
			cmp     eax, 4
			jb      I900                   ; fail
			xor     esi, esi               ; loop counter
I100:   
			mov     eax, 4
			mov     ecx, esi
			cpuid                          ; get cache parameters
			mov     edx, eax
			and     edx, 11111b            ; cache type
			jz      I500                   ; no more caches
			cmp     edx, 2
			je      I200                   ; code cache, ignore
			inc     ecx                    ; sets
			mov     edx, ebx
			shr     edx, 22
			inc     edx                    ; ways
			imul    ecx, edx
			mov     edx, ebx
			shr     edx, 12
			and     edx, 1111111111b
			inc     edx                    ; partitions
			imul    ecx, edx
			and     ebx, 111111111111b        
			inc     ebx                    ; line size
			imul    rcx, rbx               ; calculated cache size (64 bit)
			shr     eax, 5
			and     eax, 111b              ; cache level
			cmp     eax, numlevels
			jna     I180
			mov     eax, numlevels         ; limit higher levels
I180:   
			mov     [r9+rax*8], rcx        ; store size of data cache level eax
I200:   
			inc     esi
			cmp     esi, 100h              ; avoid infinite loop
			jb      I100                   ; next cache
I500:   ; loop finished
        ; check if OK
			mov     rax, [r9+data_layout.level1]       ; level1
			cmp     rax, 1024
I900:  
			ret                            ; carry flag set if fail

; Determine cache sizes by CPUID function 2
; input: esi = pointer to dataref
; output: values returned in dataref + level1, level2, level3
; carry flag = 0 on succes
IntelOldMethod:
			xor     eax, eax
			cpuid                          ; get number of CPUID functions
			cmp     eax, 2
			jb      J900                   ; fail
			mov     eax, 2
			xor     ecx, ecx
			cpuid                          ; get 16 descriptor bytes in eax, ebx, ecx, edx
			mov     al, 0                  ; al does not contain a descriptor
			sub     rsp, 16
			mov     [rsp],    eax          ; save all descriptors
			mov     [rsp+4],  ebx
			mov     [rsp+8],  ecx
			mov     [rsp+12], edx
			mov     edx, 15                ; loop counter
        ; loop to read 16 descriptor bytes
J100:   
			mov     al, byte ptr [rsp+rdx]
        ; find in table
			mov     ebx, descriptortablelength-1  ; loop counter
        ; loop to search in descriptortable
J200:   
			cmp     eax, [r9 + data_layout.descriptortable + rbx*4 + descriptor_record.d_key]
			jne     J300
        ; descriptor found
			movzx   eax, byte ptr [r9 + data_layout.descriptortable + rbx*4 + descriptor_record.d_sizem]
			mov     ecx,  [r9 + data_layout.descriptortable + rbx*4 + descriptor_record.d_2pow]
			shl     eax, cl                ; compute size
			movzx   ecx, byte ptr [r9 + data_layout.descriptortable + rbx*4 + descriptor_record.d_level]
        ; check that level = 1-3
			cmp     ecx, 3
			ja      J300
			mov     [r9+rcx*8], rax        ; store size eax of data cache level ecx
J300:   
			dec     ebx
			jns     J200                   ; inner loop
			dec     edx
			jns     J100                   ; outer loop
			add     rsp, 16                ; remove from stack
        ; check if OK
			mov     rax, [r9 + data_layout.level1]
			cmp     rax, 1024
J900:   
			ret                            ; carry flag set if fail


; Determine cache sizes by CPUID function 80000005H - 80000006H
; input: esi = pointer to dataref
; output: values returned in dataref
; carry flag = 0 on succes
AMDMethod:
			mov     eax, 80000000H
			cpuid                          ; get number of CPUID functions
			cmp     eax, 6
			jb      K900                   ; fail
			mov     eax, 80000005H
			cpuid                          ; get L1 cache size
			shr     ecx, 24                ; L1 data cache size in kbytes
			shl     ecx, 10                ; L1 data cache size in bytes
			mov     [r9 + data_layout.level1], rcx     ; store L1 data cache size
			mov     eax, 80000006H
			cpuid                          ; get L2 and L3 cache sizes
			shr     ecx, 16                ; L2 data cache size in kbytes
			shl     ecx, 10                ; L2 data cache size in bytes
			mov     [r9 + data_layout.level2], rcx     ; store L2 data cache size
			mov     ecx, edx
			shr     ecx, 18                ; L3 data cache size / 512 kbytes
			shl     rcx, 19                ; L3 data cache size in bytes
if 0   ; AMD manual is unclear: 
        ; do we have to increase the value if the number of ways is not a power or 2?
			shr     edx, 12
			and     edx, 1111b             ; L3 associativity
			cmp     edx, 3
			jb      K100
			test    edx, 1
			jz      K100
			; number of ways is not a power of 2, multiply by 1.5 ?
			mov     rax, rcx
			shr     rax, 1
			add     rcx, rax
endif
K100:   
			mov     [r9 + data_layout.level3], rcx     ; store L3 data cache size
        ; check if OK
			mov     rax, [r9 + data_layout.level1]
			cmp     rax, 1024
K900:   
			ret                            ; carry flag set if fail

endif ;_CLASS_uXmCPUFEATURES

	end ;.code
