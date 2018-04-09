
	include uXmx86asm.inc

; ********** cpuid_ex function **********
; C++ prototype:
; extern "C" void cpuid_ex (int abcd[4], int a, int c);
; Input: a = eax, c = ecx
; Output: abcd[0] = eax, abcd[1] = ebx, abcd[2] = ecx, abcd[3] = edx

	.code
			align ptr_t_size
uXm_cpuidex proto UX_VECCALL

			align ptr_t_size
uXm_cpuidex proc UX_VECCALL

		;CPUInfo$ = 8
		;CPUInfoType$ = 16
		;ECXValue$ = 24

	ifndef __X64__
			push		ebx
			push		edi
			mov			edi,			[esp+12]		; CPUInfo out
			mov			eax,			[esp+16]		; eax in
			mov			ecx,			[esp+20]		; ecx in
			cpuid										; input eax, ecx, output eax, ebx ecx, edx
			mov			[edi],			eax
			mov			[edi+4],		ebx
			mov			[edi+8],		ecx
			mov			[edi+12],		edx
			pop			edi
			pop			ebx
	else
	ifdef WINDOWS
			; parameters: rcx = CPUInfo, edx = CPUInfoType, r8d = ECXValue
			push		rbx
			xchg		rcx,			r8
			mov			eax,			edx
			cpuid
			mov			[r8],			eax
			mov			[r8+4],			ebx
			mov			[r8+8],			ecx
			mov			[r8+12],		edx
			pop			rbx
	else	; parameters: rdi = CPUInfo, esi = CPUInfoType, edx = ECXValue
			push		rbx
			mov			eax,			esi
			mov			ecx,			edx
			cpuid										; input eax, ecx, output eax, ebx ecx, edx
			mov			[rdi],			eax
			mov			[rdi+4],		ebx
			mov			[rdi+8],		ecx
			mov			[rdi+12],		edx
			pop			rbx
	endif ;WINDOWS
	endif ;__X64__
			ret
		
uXm_cpuidex endp

	end