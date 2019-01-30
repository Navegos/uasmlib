
	include uXx86asm.inc
	
	alignptrfieldproc
	callconvopt

; ********** cpuid_ex function **********
; C++ prototype:
; extern "C" void cpuid_ex (int abcd[4], int a, int c);
; Input: a = eax, c = ecx
; Output: abcd[0] = eax, abcd[1] = ebx, abcd[2] = ecx, abcd[3] = edx

	.code

funcstart _uX_cpuidex, callconv, voidarg, < >, CPUInfo:ptr dword, CPUInfoType:dword, ECXValue:dword

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
			xchg		rcx,			rparam2
			mov			eax,			dparam1
			cpuid
			mov		dword ptr[rparam2],		eax
			mov		dword ptr[rparam2+4],	ebx
			mov		dword ptr[rparam2+8],	ecx
			mov		dword ptr[rparam2+12],	edx
			pop			rbx
	else	; parameters: rdi = CPUInfo, esi = CPUInfoType, edx = ECXValue
			push		rbx
			mov			eax,			dparam1
			mov			ecx,			dparam2
			cpuid								; input eax, ecx, output eax, ebx ecx, edx
			mov		dword ptr[rparam0],		eax
			mov		dword ptr[rparam0+4],	ebx
			mov		dword ptr[rparam0+8],	ecx
			mov		dword ptr[rparam0+12],	edx
			pop			rbx
	endif ;WINDOWS
	endif ;__X64__

			ret		
funcend

	end