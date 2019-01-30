
	include uXx86asm.inc
	
	alignptrfieldproc
	callconvopt

; ********** cpuid function **********
; C++ prototype:
; extern "C" void cpuid(int abcd[4], int a);
; Input: a = eax, c = ecx
; Output: abcd[0] = eax, abcd[1] = ebx, abcd[2] = ecx, abcd[3] = edx

	.code

;uX_cpuidex proto uXveccall
extern callconv _uX_cpuidex:proc

funcstart _uX_cpuid, callconv, voidarg, < >, CPUInfo:ptr dword, CPUInfoType:dword

			;CPUInfo$ = 8
			;CPUInfoType$ = 16

			xor			rparam2,			rparam2
			jmp			_uX_cpuidex

			;ret
funcend

	end