
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


	.code
			align 16
uXm_xsetbv proto VECCALL

			align 16
uXm_xsetbv proc VECCALL

	ifndef __X64__
			xsetbv
	else
			mov				rax,			rdx
			shr				rdx,			32					; 00000020H
			xsetbv
	endif ;__X64__

			ret

uXm_xsetbv endp

	end ;.code