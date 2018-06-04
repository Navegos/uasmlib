
	include uXmx86asm.inc
	
	.data
	ifndef __X64__
		public intrin_has_SSE2
		intrin_has_SSE2			db 0
	endif
	
	;CPU_Rep0 puXmCPUFeatures 0		; A global variable to hold a reference to a Person type.

	.code
	
;******************
; Externs
;******************
	extern __veccall _uXmCPUFeatures_Is_Inited:proc
	extern __veccall _uXmCPUFeatures_Init:proc
	extern __veccall _uXmCPUFeatures_has_SSE2:proc
	
;******************
; Proto
;******************
_uXm_intrin_CPUFeatures proto __veccall (voidarg)

;******************
; Proc
;******************

			align 16
_uXm_intrin_CPUFeatures proc __veccall (voidarg)
			
	ifndef __X64__
			xor				dreturn,			dreturn
			call			_uXmCPUFeatures_Is_Inited
		.if(breturn < 1)
			xor				eparam1,			eparam1
			call			_uXmCPUFeatures_Init
		.endif
			call			_uXmCPUFeatures_has_SSE2
			mov			intrin_has_SSE2,			breturn
	else
			xor				qreturn,			qreturn
			call			_uXmCPUFeatures_Is_Inited
		.if(breturn < 1)
			xor				qparam1,			qparam1
			call			_uXmCPUFeatures_Init
		.endif
			;mov	intrin_has_SSE2,		1
	endif

			ret
_uXm_intrin_CPUFeatures endp

	end
