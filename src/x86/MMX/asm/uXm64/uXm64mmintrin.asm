
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
	;extern UX_VECCALL _uXmCPUFeatures_Is_Inited:proc
	;extern UX_VECCALL _uXmCPUFeatures_Init:proc
	;extern UX_VECCALL _uXmCPUFeatures_has_SSE2:proc
	
;******************
; Proto
;******************
_uXm_mm_empty proto UX_VECCALL (voidarg)

_uXm_m64_from_int proto UX_VECCALL (mmword) ;_I:dword
_uXm_m64_from_int64 proto UX_VECCALL (mmword) ;_I:qword
_uXm_m64_to_int proto UX_VECCALL (dword) ;_M:mmword
_uXm_m64_to_int64 proto UX_VECCALL (qword) ;_M:mmword
_uXm_m64_packsswb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_packssdw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_packuswb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpckhbw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpckhwd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpckhdq proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpcklbw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpcklwd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_punpckldq proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

_uXm_m64_paddb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddsb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddsw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddusb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_paddusw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubsb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubsw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubusb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_psubusw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pmaddwd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pmulhw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pmullw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

_uXm_m64_psllw proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_pslld proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psllq proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psraw proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psrad proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psrlw proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psrld proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
_uXm_m64_psrlq proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

_uXm_m64_pand proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pandn proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_por proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pxor proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

_uXm_m64_pcmpeqb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pcmpeqw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pcmpeqd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pcmpgtb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pcmpgtw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
_uXm_m64_pcmpgtd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

_uXm_m64_setzero_si64 proto UX_VECCALL (mmword)

;******************
; Proc
;******************

_uXm_mm_empty proc UX_VECCALL (voidarg)

			emms

			ret
_uXm_mm_empty endp

_uXm_m64_from_int proc UX_VECCALL (mmword) ;_I:dword

			movd			mm0,			dparam1

			ret
_uXm_m64_from_int endp

_uXm_m64_from_int64 proc UX_VECCALL (mmword) ;_I:qword

			movq			mm0,			dparam1

			ret
_uXm_m64_from_int64 endp

_uXm_m64_to_int proc UX_VECCALL (dword) ;_M:mmword

			movd			rreturn,			mm0

			ret
_uXm_m64_to_int endp

_uXm_m64_to_int64 proc UX_VECCALL (qword) ;_M:mmword

			movq			rreturn,			mm0

			ret
_uXm_m64_to_int64 endp

_uXm_m64_packsswb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			packsswb			mm0,			mm1

			ret
_uXm_m64_packsswb endp

_uXm_m64_packssdw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			packssdw			mm0,			mm1

			ret
_uXm_m64_packssdw endp

_uXm_m64_packuswb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			packuswb			mm0,			mm1

			ret
_uXm_m64_packuswb endp

_uXm_m64_punpckhbw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpckhbw			mm0,			mm1

			ret
_uXm_m64_punpckhbw endp

_uXm_m64_punpckhwd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpckhwd			mm0,			mm1

			ret
_uXm_m64_punpckhwd endp

_uXm_m64_punpckhdq proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpckhdq			mm0,			mm1

			ret
_uXm_m64_punpckhdq endp

_uXm_m64_punpcklbw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpcklbw			mm0,			mm1

			ret
_uXm_m64_punpcklbw endp

_uXm_m64_punpcklwd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpcklwd			mm0,			mm1

			ret
_uXm_m64_punpcklwd endp

_uXm_m64_punpckldq proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpckldq			mm0,			mm1

			ret
_uXm_m64_punpckldq endp

_uXm_m64_paddb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddb			mm0,			mm1

			ret
_uXm_m64_paddb endp

_uXm_m64_paddw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddw			mm0,			mm1

			ret
_uXm_m64_paddw endp

_uXm_m64_paddd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddd			mm0,			mm1

			ret
_uXm_m64_paddd endp

_uXm_m64_paddsb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddsb			mm0,			mm1

			ret
_uXm_m64_paddsb endp

_uXm_m64_paddsw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddsw			mm0,			mm1

			ret
_uXm_m64_paddsw endp

_uXm_m64_paddusb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddusb			mm0,			mm1

			ret
_uXm_m64_paddusb endp

_uXm_m64_paddusw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddusw			mm0,			mm1

			ret
_uXm_m64_paddusw endp

_uXm_m64_psubb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubb			mm0,			mm1

			ret
_uXm_m64_psubb endp

_uXm_m64_psubw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubw			mm0,			mm1

			ret
_uXm_m64_psubw endp

_uXm_m64_psubd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubd			mm0,			mm1

			ret
_uXm_m64_psubd endp

_uXm_m64_psubsb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubsb			mm0,			mm1

			ret
_uXm_m64_psubsb endp

_uXm_m64_psubsw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubsw			mm0,			mm1

			ret
_uXm_m64_psubsw endp

_uXm_m64_psubusb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubusb			mm0,			mm1

			ret
_uXm_m64_psubusb endp

_uXm_m64_psubusw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubusw			mm0,			mm1

			ret
_uXm_m64_psubusw endp

_uXm_m64_pmaddwd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pmaddwd			mm0,			mm1

			ret
_uXm_m64_pmaddwd endp

_uXm_m64_pmulhw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pmulhw			mm0,			mm1

			ret
_uXm_m64_pmulhw endp

_uXm_m64_pmullw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pmullw			mm0,			mm1

			ret
_uXm_m64_pmullw endp

_uXm_m64_psllw proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psllw			mm0,			mm1

			ret
_uXm_m64_psllw endp

_uXm_m64_pslld proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			pslld			mm0,			mm1

			ret
_uXm_m64_pslld endp

_uXm_m64_psllq proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psllq			mm0,			mm1

			ret
_uXm_m64_psllq endp

_uXm_m64_psraw proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psraw			mm0,			mm1

			ret
_uXm_m64_psraw endp

_uXm_m64_psrad proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psrad			mm0,			mm1

			ret
_uXm_m64_psrad endp

_uXm_m64_psrlw proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psrlw			mm0,			mm1

			ret
_uXm_m64_psrlw endp

_uXm_m64_psrld proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psrld			mm0,			mm1

			ret
_uXm_m64_psrld endp

_uXm_m64_psrlq proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psrlq			mm0,			mm1

			ret
_uXm_m64_psrlq endp

_uXm_m64_pand proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pand			mm0,			mm1

			ret
_uXm_m64_pand endp

_uXm_m64_pandn proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pandn			mm0,			mm1

			ret
_uXm_m64_pandn endp

_uXm_m64_por proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			por			mm0,			mm1

			ret
_uXm_m64_por endp

_uXm_m64_pxor proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pxor			mm0,			mm1

			ret
_uXm_m64_pxor endp

_uXm_m64_pcmpeqb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpeqb			mm0,			mm1

			ret
_uXm_m64_pcmpeqb endp

_uXm_m64_pcmpeqw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpeqw			mm0,			mm1

			ret
_uXm_m64_pcmpeqw endp

_uXm_m64_pcmpeqd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpeqd			mm0,			mm1

			ret
_uXm_m64_pcmpeqd endp

_uXm_m64_pcmpgtb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpgtb			mm0,			mm1

			ret
_uXm_m64_pcmpgtb endp

_uXm_m64_pcmpgtw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpgtw			mm0,			mm1

			ret
_uXm_m64_pcmpgtw endp

_uXm_m64_pcmpgtd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpgtd			mm0,			mm1

			ret
_uXm_m64_pcmpgtd endp

_uXm_m64_setzero_si64 proc UX_VECCALL (mmword)

			pxor			mm0,			mm1

			ret
_uXm_m64_setzero_si64 endp

endif ;__X32__

	end
