
	include uXmx86asm.inc
	
	.mmx
	;option arch:mmx
	option evex:0

ifdef __X32__
	.data
		;xmm_has_SSE2			db 0
	
	;CPU_Rep0 puXmCPUFeatures 0		; A global variable to hold a reference to a Person type.
	
	.code

;******************
; Externs
;******************
	;extern __veccall _uXmCPUFeatures_Is_Inited:proc
	;extern __veccall _uXmCPUFeatures_Init:proc
	;extern __veccall _uXmCPUFeatures_has_SSE2:proc
	
;******************
; Proto
;******************
_uXm_mm_empty proto __veccall (voidarg)

_uXm_m64_from_int proto __veccall (mmword) ;_I:dword
_uXm_m64_from_int64 proto __veccall (mmword) ;_I:qword
_uXm_m64_to_int proto __veccall (dword) ;_M:mmword
_uXm_m64_to_int64 proto __veccall (qword) ;_M:mmword
_uXm_m64_packsswb proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_packssdw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_packuswb proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpckhbw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpckhwd proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpckhdq proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpcklbw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpcklwd proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpckldq proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword

_uXm_m64_paddb proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddd proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddsb proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddsw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddusb proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddusw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubb proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubd proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubsb proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubsw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubusb proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubusw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pmaddwd proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pmulhw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pmullw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword

_uXm_m64_psllw proto __veccall (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_pslld proto __veccall (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psllq proto __veccall (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psraw proto __veccall (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psrad proto __veccall (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psrlw proto __veccall (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psrld proto __veccall (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psrlq proto __veccall (mmword) ;_MM1:mmword, _Count:mmword

_uXm_m64_pand proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pandn proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_por proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pxor proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword

_uXm_m64_pcmpeqb proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pcmpeqw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pcmpeqd proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pcmpgtb proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pcmpgtw proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pcmpgtd proto __veccall (mmword) ;_MM1:mmword, _MM2:mmword

_uXm_m64_setzero_si64 proto __veccall (mmword)

;******************
; Proc
;******************

_uXm_mm_empty proc __veccall (voidarg)

			emms

			ret
_uXm_mm_empty endp

_uXm_m64_from_int proc __veccall (mmword) ;_I:dword

			movd			mm0,			dparam1

			ret
_uXm_m64_from_int endp

_uXm_m64_from_int64 proc __veccall (mmword) ;_I:qword

			movq			mm0,			dparam1

			ret
_uXm_m64_from_int64 endp

_uXm_m64_to_int proc __veccall (dword) ;_M:mmword

			movd			rreturn,			mm0

			ret
_uXm_m64_to_int endp

_uXm_m64_to_int64 proc __veccall (qword) ;_M:mmword

			movq			rreturn,			mm0

			ret
_uXm_m64_to_int64 endp

_uXm_m64_packsswb proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			packsswb			mm0,			mm1

			ret
_uXm_m64_packsswb endp

_uXm_m64_packssdw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			packssdw			mm0,			mm1

			ret
_uXm_m64_packssdw endp

_uXm_m64_packuswb proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			packuswb			mm0,			mm1

			ret
_uXm_m64_packuswb endp

_uXm_m64_punpckhbw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			punpckhbw			mm0,			mm1

			ret
_uXm_m64_punpckhbw endp

_uXm_m64_punpckhwd proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			punpckhwd			mm0,			mm1

			ret
_uXm_m64_punpckhwd endp

_uXm_m64_punpckhdq proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			punpckhdq			mm0,			mm1

			ret
_uXm_m64_punpckhdq endp

_uXm_m64_punpcklbw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			punpcklbw			mm0,			mm1

			ret
_uXm_m64_punpcklbw endp

_uXm_m64_punpcklwd proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			punpcklwd			mm0,			mm1

			ret
_uXm_m64_punpcklwd endp

_uXm_m64_punpckldq proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			punpckldq			mm0,			mm1

			ret
_uXm_m64_punpckldq endp

_uXm_m64_paddb proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			paddb			mm0,			mm1

			ret
_uXm_m64_paddb endp

_uXm_m64_paddw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			paddw			mm0,			mm1

			ret
_uXm_m64_paddw endp

_uXm_m64_paddd proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			paddd			mm0,			mm1

			ret
_uXm_m64_paddd endp

_uXm_m64_paddsb proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			paddsb			mm0,			mm1

			ret
_uXm_m64_paddsb endp

_uXm_m64_paddsw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			paddsw			mm0,			mm1

			ret
_uXm_m64_paddsw endp

_uXm_m64_paddusb proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			paddusb			mm0,			mm1

			ret
_uXm_m64_paddusb endp

_uXm_m64_paddusw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			paddusw			mm0,			mm1

			ret
_uXm_m64_paddusw endp

_uXm_m64_psubb proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			psubb			mm0,			mm1

			ret
_uXm_m64_psubb endp

_uXm_m64_psubw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			psubw			mm0,			mm1

			ret
_uXm_m64_psubw endp

_uXm_m64_psubd proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			psubd			mm0,			mm1

			ret
_uXm_m64_psubd endp

_uXm_m64_psubsb proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			psubsb			mm0,			mm1

			ret
_uXm_m64_psubsb endp

_uXm_m64_psubsw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			psubsw			mm0,			mm1

			ret
_uXm_m64_psubsw endp

_uXm_m64_psubusb proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			psubusb			mm0,			mm1

			ret
_uXm_m64_psubusb endp

_uXm_m64_psubusw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			psubusw			mm0,			mm1

			ret
_uXm_m64_psubusw endp

_uXm_m64_pmaddwd proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pmaddwd			mm0,			mm1

			ret
_uXm_m64_pmaddwd endp

_uXm_m64_pmulhw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pmulhw			mm0,			mm1

			ret
_uXm_m64_pmulhw endp

_uXm_m64_pmullw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pmullw			mm0,			mm1

			ret
_uXm_m64_pmullw endp

_uXm_m64_psllw proc __veccall (mmword) ;_MM1:mmword, _Count:mmword

			psllw			mm0,			mm1

			ret
_uXm_m64_psllw endp

_uXm_m64_pslld proc __veccall (mmword) ;_MM1:mmword, _Count:mmword

			pslld			mm0,			mm1

			ret
_uXm_m64_pslld endp

_uXm_m64_psllq proc __veccall (mmword) ;_MM1:mmword, _Count:mmword

			psllq			mm0,			mm1

			ret
_uXm_m64_psllq endp

_uXm_m64_psraw proc __veccall (mmword) ;_MM1:mmword, _Count:mmword

			psraw			mm0,			mm1

			ret
_uXm_m64_psraw endp

_uXm_m64_psrad proc __veccall (mmword) ;_MM1:mmword, _Count:mmword

			psrad			mm0,			mm1

			ret
_uXm_m64_psrad endp

_uXm_m64_psrlw proc __veccall (mmword) ;_MM1:mmword, _Count:mmword

			psrlw			mm0,			mm1

			ret
_uXm_m64_psrlw endp

_uXm_m64_psrld proc __veccall (mmword) ;_MM1:mmword, _Count:mmword

			psrld			mm0,			mm1

			ret
_uXm_m64_psrld endp

_uXm_m64_psrlq proc __veccall (mmword) ;_MM1:mmword, _Count:mmword

			psrlq			mm0,			mm1

			ret
_uXm_m64_psrlq endp

_uXm_m64_pand proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pand			mm0,			mm1

			ret
_uXm_m64_pand endp

_uXm_m64_pandn proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pandn			mm0,			mm1

			ret
_uXm_m64_pandn endp

_uXm_m64_por proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			por			mm0,			mm1

			ret
_uXm_m64_por endp

_uXm_m64_pxor proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pxor			mm0,			mm1

			ret
_uXm_m64_pxor endp

_uXm_m64_pcmpeqb proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpeqb			mm0,			mm1

			ret
_uXm_m64_pcmpeqb endp

_uXm_m64_pcmpeqw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpeqw			mm0,			mm1

			ret
_uXm_m64_pcmpeqw endp

_uXm_m64_pcmpeqd proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpeqd			mm0,			mm1

			ret
_uXm_m64_pcmpeqd endp

_uXm_m64_pcmpgtb proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpgtb			mm0,			mm1

			ret
_uXm_m64_pcmpgtb endp

_uXm_m64_pcmpgtw proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpgtw			mm0,			mm1

			ret
_uXm_m64_pcmpgtw endp

_uXm_m64_pcmpgtd proc __veccall (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpgtd			mm0,			mm1

			ret
_uXm_m64_pcmpgtd endp

_uXm_m64_setzero_si64 proc __veccall (mmword)

			pxor			mm0,			mm1

			ret
_uXm_m64_setzero_si64 endp

endif ;__X32__

	end
