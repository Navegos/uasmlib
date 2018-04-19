
	include uXmx86asm.inc
	

; ********** cpuid function **********
; C++ prototype:
; extern "C" void cpuid(int abcd[4], int a);
; Input: a = eax, c = ecx
; Output: abcd[0] = eax, abcd[1] = ebx, abcd[2] = ecx, abcd[3] = edx

	.code
			align ptr_t_size
uXm_cpuid proto UX_VECCALL

;uXm_cpuidex proto UX_VECCALL
extern UX_VECCALL uXm_cpuidex:proc

			align ptr_t_size
uXm_cpuid proc UX_VECCALL

			;CPUInfo$ = 8
			;CPUInfoType$ = 16

	ifndef __X64__
			xor			ecx,			ecx
	else
			xor			r8d,			r8d
	endif
			jmp			uXm_cpuidex

			;ret

uXm_cpuid endp

	end