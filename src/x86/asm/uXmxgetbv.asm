
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


	.code
			align 8
uXm_xgetbv proto UX_VECCALL

			align 8
uXm_xgetbv proc UX_VECCALL

	ifndef __X64__
			;mov				ecx,			esp
			xgetbv
			;db				0FH,			01H,			0D0H         ; XGETBV
	else
			xgetbv
			shl				rdx,			32					; 00000020H
			or				rax,			rdx
	endif ;__X64__

			ret

uXm_xgetbv endp

	end