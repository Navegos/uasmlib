
	include uXmx86asm.inc

			option	casemap:none
	ifndef __X64__
			.686P
			.xmm
			.model	flat
	else
			.X64P
			.xmm
			option	win64:15
			option	stackbase:rsp
	endif
			option	frame:auto


	;.code
_TEXT segment
			align 8
uXm_xsetbv proto UX_VECCALL

			align 8
uXm_xsetbv proc UX_VECCALL

	ifndef __X64__
			xsetbv
	else
			mov				rax,			rdx
			shr				rdx,			32					; 00000020H
			xsetbv
	endif ;__X64__

			ret

uXm_xsetbv endp
_TEXT ends

	end