
	include uXx86asm.inc
	
	.data
	ifndef __X64__
		public intrin_has_SSE2
		intrin_has_SSE2			db 0
	endif
	
	;CPU_Rep0 puXCPUFeatures 0		; A global variable to hold a reference to a Person type.

	.code
	
;******************
; Externs
;******************
	extern uXveccall _uXCPUFeatures_Is_Inited:proc
	extern uXveccall _uXCPUFeatures_Init:proc
	extern uXveccall _uXCPUFeatures_has_SSE2:proc
	
;******************
; Proto
;******************
_uX_intrin_CPUFeatures proto uXveccall (voidarg)

;******************
; Proc
;******************

			align 16
_uX_intrin_CPUFeatures proc uXveccall (voidarg)
			
	ifndef __X64__
			xor				dreturn,			dreturn
			call			_uXCPUFeatures_Is_Inited
		.if(breturn < 1)
			xor				eparam1,			eparam1
			call			_uXCPUFeatures_Init
		.endif
			call			_uXCPUFeatures_has_SSE2
			mov			intrin_has_SSE2,			breturn
	else
			xor				qreturn,			qreturn
			call			_uXCPUFeatures_Is_Inited
		.if(breturn < 1)
			xor				qparam1,			qparam1
			call			_uXCPUFeatures_Init
		.endif
			;mov	intrin_has_SSE2,		1
	endif

			ret
_uX_intrin_CPUFeatures endp

	end
