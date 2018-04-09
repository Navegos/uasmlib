
	include uXmx86asm.inc

ifdef __X32__
	.data
		xmm_has_SSE2			db 0
	
	;CPU_Rep0 puXmCPUFeatures 0		; A global variable to hold a reference to a Person type.
	
	.code

;******************
; Externs
;******************
	extern UX_VECCALL _uXmCPUFeatures_Is_Inited:proc
	extern UX_VECCALL _uXmCPUFeatures_Init:proc
	extern UX_VECCALL _uXmCPUFeatures_has_SSE2:proc
	
;******************
; Proto
;******************
uXm_mm_empty proto UX_VECCALL (voidarg)
uXm_mm_from_int proto UX_VECCALL (mmword) ;_I:dword
uXm_mm_from_int64 proto UX_VECCALL (mmword) ;_I:qword
uXm_mm_to_int proto UX_VECCALL (dword) ;_M:mmword
uXm_mm_to_int64 proto UX_VECCALL (qword) ;_M:mmword
uXm_mm_packsswb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_packssdw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_packuswb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_punpckhbw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_punpckhwd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_punpckhdq proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_punpcklbw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_punpcklwd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_punpckldq proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_paddb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_paddw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_paddd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_paddsb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_paddsw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_paddusb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_paddusw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_psubb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_psubw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_psubd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_psubsb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_psubsw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_psubusb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_psubusw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pmaddwd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pmulhw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pmullw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_psllw proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
uXm_mm_psllwi proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword
uXm_mm_pslld proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
uXm_mm_pslldi proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword
uXm_mm_psllq proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
uXm_mm_psllqi proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword
uXm_mm_psraw proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
uXm_mm_psrawi proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword
uXm_mm_psrad proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
uXm_mm_psradi proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword
uXm_mm_psrlw proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
uXm_mm_psrlwi proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword
uXm_mm_psrld proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
uXm_mm_psrldi proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword
uXm_mm_psrlq proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword
uXm_mm_psrlqi proto UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword
uXm_mm_pand proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pandn proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_por proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pxor proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pcmpeqb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pcmpeqw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pcmpeqd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pcmpgtb proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pcmpgtw proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword
uXm_mm_pcmpgtd proto UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword


;******************
; Proc
;******************

			align 8
uXm_mm_empty proc UX_VECCALL (voidarg)

			emms

			ret
uXm_mm_empty endp

			align 8
uXm_mm_from_int proc UX_VECCALL (mmword) ;_I:dword

			movd			mm0,			dparam1

			ret
uXm_mm_from_int endp
	
			align 8
uXm_mm_from_int64 proc UX_VECCALL (mmword) ;_I:qword

			movq			mm0,			dparam1

			ret
uXm_mm_from_int64 endp

			align 8
uXm_mm_to_int proc UX_VECCALL (dword) ;_M:mmword

			movd			rreturn,			mm0

			ret
uXm_mm_to_int endp

			align 8
uXm_mm_to_int64 proc UX_VECCALL (qword) ;_M:mmword

			movq			rreturn,			mm0

			ret
uXm_mm_to_int64 endp

			align 8
uXm_mm_packsswb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			packsswb			mm0,			mm1

			ret
uXm_mm_packsswb endp

			align 8
uXm_mm_packssdw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			packssdw			mm0,			mm1

			ret
uXm_mm_packssdw endp

			align 8
uXm_mm_packuswb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			packuswb			mm0,			mm1

			ret
uXm_mm_packuswb endp

			align 8
uXm_mm_punpckhbw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpckhbw			mm0,			mm1

			ret
uXm_mm_punpckhbw endp

			align 8
uXm_mm_punpckhwd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpckhwd			mm0,			mm1

			ret
uXm_mm_punpckhwd endp

			align 8
uXm_mm_punpckhdq proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpckhdq			mm0,			mm1

			ret
uXm_mm_punpckhdq endp

			align 8
uXm_mm_punpcklbw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpcklbw			mm0,			mm1

			ret
uXm_mm_punpcklbw endp

			align 8
uXm_mm_punpcklwd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpcklwd			mm0,			mm1

			ret
uXm_mm_punpcklwd endp

			align 8
uXm_mm_punpckldq proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			punpckldq			mm0,			mm1

			ret
uXm_mm_punpckldq endp

			align 8
uXm_mm_paddb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddb			mm0,			mm1

			ret
uXm_mm_paddb endp

			align 8
uXm_mm_paddw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddw			mm0,			mm1

			ret
uXm_mm_paddw endp

			align 8
uXm_mm_paddd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddd			mm0,			mm1

			ret
uXm_mm_paddd endp

			align 8
uXm_mm_paddsb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddsb			mm0,			mm1

			ret
uXm_mm_paddsb endp

			align 8
uXm_mm_paddsw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddsw			mm0,			mm1

			ret
uXm_mm_paddsw endp

			align 8
uXm_mm_paddusb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddusb			mm0,			mm1

			ret
uXm_mm_paddusb endp

			align 8
uXm_mm_paddusw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			paddusw			mm0,			mm1

			ret
uXm_mm_paddusw endp

			align 8
uXm_mm_psubb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubb			mm0,			mm1

			ret
uXm_mm_psubb endp

			align 8
uXm_mm_psubw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubw			mm0,			mm1

			ret
uXm_mm_psubw endp

			align 8
uXm_mm_psubd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubd			mm0,			mm1

			ret
uXm_mm_psubd endp

			align 8
uXm_mm_psubsb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubsb			mm0,			mm1

			ret
uXm_mm_psubsb endp

			align 8
uXm_mm_psubsw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubsw			mm0,			mm1

			ret
uXm_mm_psubsw endp

			align 8
uXm_mm_psubusb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubusb			mm0,			mm1

			ret
uXm_mm_psubusb endp

			align 8
uXm_mm_psubusw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			psubusw			mm0,			mm1

			ret
uXm_mm_psubusw endp

			align 8
uXm_mm_pmaddwd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pmaddwd			mm0,			mm1

			ret
uXm_mm_pmaddwd endp

			align 8
uXm_mm_pmulhw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pmulhw			mm0,			mm1

			ret
uXm_mm_pmulhw endp

			align 8
uXm_mm_pmullw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pmullw			mm0,			mm1

			ret
uXm_mm_pmullw endp

			align 8
uXm_mm_psllw proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psllw			mm0,			mm1

			ret
uXm_mm_psllw endp

			align 8
uXm_mm_psllwi proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword

			psllw			mm0,			dparam1

			ret
uXm_mm_psllwi endp

			align 8
uXm_mm_pslld proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			pslld			mm0,			mm1

			ret
uXm_mm_pslld endp

			align 8
uXm_mm_pslldi proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword

			pslld			mm0,			dparam1

			ret
uXm_mm_pslldi endp

			align 8
uXm_mm_psllq proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psllq			mm0,			mm1

			ret
uXm_mm_psllq endp

			align 8
uXm_mm_psllqi proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword

			psllq			mm0,			dparam1

			ret
uXm_mm_psllqi endp

			align 8
uXm_mm_psraw proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psraw			mm0,			mm1

			ret
uXm_mm_psraw endp

			align 8
uXm_mm_psrawi proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword

			psraw			mm0,			dparam1

			ret
uXm_mm_psrawi endp

			align 8
uXm_mm_psrad proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psrad			mm0,			mm1

			ret
uXm_mm_psrad endp

			align 8
uXm_mm_psradi proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword

			psrad			mm0,			dparam1

			ret
uXm_mm_psradi endp

			align 8
uXm_mm_psrlw proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psrlw			mm0,			mm1

			ret
uXm_mm_psrlw endp

			align 8
uXm_mm_psrlwi proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword

			psrlw			mm0,			dparam1

			ret
uXm_mm_psrlwi endp

			align 8
uXm_mm_psrld proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psrld			mm0,			mm1

			ret
uXm_mm_psrld endp

			align 8
uXm_mm_psrldi proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword

			psrld			mm0,			dparam1

			ret
uXm_mm_psrldi endp

			align 8
uXm_mm_psrlq proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:mmword

			psrlq			mm0,			mm1

			ret
uXm_mm_psrlq endp

			align 8
uXm_mm_psrlqi proc UX_VECCALL (mmword) ;_MM1:mmword, _Count:dword

			psrlq			mm0,			dparam1

			ret
uXm_mm_psrlqi endp

			align 8
uXm_mm_pand proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pand			mm0,			mm1

			ret
uXm_mm_pand endp

			align 8
uXm_mm_pandn proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pandn			mm0,			mm1

			ret
uXm_mm_pandn endp

			align 8
uXm_mm_por proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			por			mm0,			mm1

			ret
uXm_mm_por endp

			align 8
uXm_mm_pxor proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pxor			mm0,			mm1

			ret
uXm_mm_pxor endp

			align 8
uXm_mm_pcmpeqb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpeqb			mm0,			mm1

			ret
uXm_mm_pcmpeqb endp

			align 8
uXm_mm_pcmpeqw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpeqw			mm0,			mm1

			ret
uXm_mm_pcmpeqw endp

			align 8
uXm_mm_pcmpeqd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpeqd			mm0,			mm1

			ret
uXm_mm_pcmpeqd endp

			align 8
uXm_mm_pcmpgtb proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpgtb			mm0,			mm1

			ret
uXm_mm_pcmpgtb endp

			align 8
uXm_mm_pcmpgtw proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpgtw			mm0,			mm1

			ret
uXm_mm_pcmpgtw endp

			align 8
uXm_mm_pcmpgtd proc UX_VECCALL (mmword) ;_MM1:mmword, _MM2:mmword

			pcmpgtd			mm0,			mm1

			ret
uXm_mm_pcmpgtd endp

			align 8
uXm_mm_setzero_si64 proc UX_VECCALL (mmword)

			pxor			mm0,			mm1

			ret
uXm_mm_setzero_si64 endp

endif ;__X32__

	end
