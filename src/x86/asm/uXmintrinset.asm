
	include uXmx86asm.inc

			option	casemap:none
	ifndef __X64__
			.686P
			.xmm
			.model	flat, c
	else
			.X64P
			.xmm
			option	win64:11
			option	stackbase:rsp
	endif
			option	frame:auto


	.data
			align 16
IInstrSet  dd   -1 


	.code
			align 16
uXm_intrinset proto VECCALL (dword)


ifndef __X64__
ifdef POSITIONINDEPENDENT

; Local function for reading instruction pointer into edi
GetThunkEDX:
			mov					edx,				[esp]
			ret

endif  ; POSITIONINDEPENDENT
endif ;__X64__

			align 16
uXm_intrinset proc VECCALL (dword)

	ifndef __X64__
		ifdef POSITIONINDEPENDENT
			; Position-independent code for ELF and Mach-O shared objects:
			call				GetThunkEDX
			add					edx,				IInstrSet - $
			mov					eax,				[edx]
		else
			mov					eax,				[IInstrSet]
		endif
			
			; Check if this function has been called before
			test				eax,				eax
			js					FirstTime								; Negative means first time
			ret															; Early return. Has been called before

FirstTime:																; Function has not been called before
			push				ebx

		ifdef POSITIONINDEPENDENT
			mov					edx,				IInstrSet			; make edx point to IInstrSet
		endif
			push				edx										; save address of IInstrSet
            
			; detect if cpuidinstruction supported by microprocessor:
			pushfd
			pop					eax
			btc					eax,				21					; check if cpuidbit can toggle
			push				eax
			popfd
			pushfd
			pop					ebx
			xor					ebx,				eax
			xor					eax,				eax					; 0
			bt					ebx,				21
			jc					ISEND									; cpuidnot supported
            
			cpuid														; get number of cpuidfunctions
			test				eax,				eax
			jz					ISEND									; function 1 not supported
			mov					eax,				1
			cpuid														; get features
			xor					eax,				eax					; 0
        
			test				edx,				1				    ; floating point support
			jz					ISEND
			bt					edx,				23					; MMX support        
			jnc					ISEND
			mov					al,					8					; 8
        
			bt					edx,				15					; conditional move support
			jnc					ISEND
			inc					eax										; 9
			
			; check OS support for XMM registers (SSE)
			bt					edx,				24					; FXSAVE support by microprocessor
			jnc					ISEND
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
			pop					edx										; address of IInstrSet
			mov					[edx],				eax					; save value in public variable IInstrSet
			pop					ebx

	else	;__X64__
	
			; Check if this function has been called before
			mov					eax,				[IInstrSet]
			test				eax,				eax
			js					xFirstTime								; Negative means first time
			; Early return. Has been called before
			ret															; Return value is in eax

xFirstTime:
			push				rbx

			mov					eax,				1
			cpuid														; get features into edx and ecx
        
			mov					al,					20					; at least SSE2 supported in 64 bit mode
			test				ecx,				1					; SSE3 support by microprocessor
			jz					xISEND
			mov					al,					30					; 30
        
			bt					ecx,				9					; Suppl-SSE3 support by microprocessor
			jnc					xISEND
			inc					eax										; 31
        
			bt					ecx,				19					; SSE4.1 support by microprocessor
			jnc					xISEND
			mov					al,					41					; 41        
        
			bt					ecx,				23					; POPCNT support by microprocessor
			jnc					xISEND
			;inc					eax										; 9
        
			bt					ecx,				20					; SSE4.2 support by microprocessor
			jnc					xISEND
			inc					eax										; 42

			; check OS support for YMM registers (AVX)
			bt					ecx,				27					; OSXSAVE: XGETBV supported
			jnc					xISEND
			push				rax
			push				rcx
			push				rdx
			xor					ecx,				ecx
			db					0FH, 01H, 0D0H							; XGETBV
			and					eax,				6
			cmp					eax,				6					; AVX support by OS
			pop					rdx
			pop					rcx
			pop					rax
			jne					xISEND

			bt					ecx,				28					; AVX support by microprocessor
			jnc					xISEND
			mov					al,					50					; 50
        
			bt					ecx,				1					; PCLMUL support
			jnc					xISEND
			bt					ecx,				25					; AES support
			jnc					xISEND
			inc					eax										; 51
        
			push				rax
			push				rcx
			mov					eax,				7
			xor					ecx,				ecx
			cpuid														; check for AVX2
			bt					ebx,				5
			pop					rcx
			pop					rax
			jnc					xISEND
			inc					eax										; 52
        
			; 14 or above = FMA3, F16C, BMI1, BMI2, LZCNT
			bt					ecx,				12					; FMA3
			jnc					xISEND
			bt					ecx,				29					; F16C
			jnc					xISEND
			bt					ebx,				3					; BMI1
			jnc					xISEND
			bt					ebx,				8					; BMI2
			jnc					xISEND
        
			push				rax
			push				rbx
			push				rcx
			mov					eax,				80000001H
			cpuid
			bt					ecx,				5					; LZCNT
			pop					rcx
			pop					rbx
			pop					rax
			jnc					xISEND
			mov					al,					57					; 57

			bt					ebx,				16					; AVX512f
			jnc					xISEND
			mov					al,					60					; 60

			bt					ebx,				17					; AVX512DQ
			jnc					xISEND
			inc					eax										; 61
			bt					ebx,				30					; AVX512BW
			jnc					xISEND
			inc					eax										; 62
			bt					ebx,				31					; AVX512VL
			jnc					xISEND
			inc					eax										; 63
			;bt					ebx,				28					; AVX512CD
			;jnc					ISEND
			;mov					al,					64					; 64
       
xISEND:		
			mov					[IInstrSet],		eax					; save value in global variable

			pop					rbx
	endif ;__X64__

			ret                            ; return value is in eax

uXm_intrinset endp

	end ;.code