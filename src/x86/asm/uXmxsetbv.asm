
	include uXmx86asm.inc

	.code
			align 8
uXm_xsetbv proto __veccall

			align 8
uXm_xsetbv proc __veccall

	ifndef __X64__
			xsetbv
	else
			mov				rax,			rdx
			shr				rdx,			32					; 00000020H
			xsetbv
	endif ;__X64__

			ret

uXm_xsetbv endp

	end