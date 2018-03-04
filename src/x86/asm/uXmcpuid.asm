
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

; ********** cpuid function **********
; C++ prototype:
; extern "C" void cpuid(int abcd[4], int a);
; Input: a = eax, c = ecx
; Output: abcd[0] = eax, abcd[1] = ebx, abcd[2] = ecx, abcd[3] = edx

	.code
			align 16
uXm_cpuid proto VECCALL

uXm_cpuidex proto VECCALL
			;extrn VECCALL uXm_cpuidex:proc

			align 16
uXm_cpuid proc VECCALL

			;CPUInfo$ = 8
			;CPUInfoType$ = 16

	ifndef __X64__
			xor			ecx,			ecx
	else
			xor			r8d,			r8d
	endif
			jmp			uXm_cpuidex

uXm_cpuid endp

	end ;.code