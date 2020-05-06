
ifndef __MIC__

    include uXx86asm.inc
    
    .mmx
    ;option arch:mmx
    option evex:0

ifdef __X32__

    .data?

    .data

    .const

    .code

    callconvopt
    alignmmfieldproc

procstart _uX_m_empty, callconv, voidarg, < >, < >, < >
        emms
        ret
procend

procstart _uX_m_from_int, callconv, mmword, < >, < >, _I:dword
        movd            mm0,            rparam0
        ret
procend

;procstart _uX_m_from_int64, callconv, mmword, < >, < >, _I:qword
;        movq            mm0,            rparam0
;        ret
;procend

procstart _uX_m_to_int, callconv, dword, < >, < >, _M:mmword
        movd            rreturn,            mm0
        ret
procend

;procstart _uX_m_to_int64, callconv, qword, < >, < >,  _M:mmword
;        movq            rreturn,            mm0
;        ret
;procend

procstart _uX_m_packsswb, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        packsswb            mm0,            mm1
        ret
procend

procstart _uX_m_packssdw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        packssdw            mm0,            mm1
        ret
procend

procstart _uX_m_packuswb, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        packuswb            mm0,            mm1
        ret
procend

procstart _uX_m_punpckhbw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        punpckhbw           mm0,            mm1
        ret
procend

procstart _uX_m_punpckhwd, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        punpckhwd           mm0,            mm1
        ret
procend

procstart _uX_m_punpckhdq, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        punpckhdq           mm0,            mm1
        ret
procend

procstart _uX_m_punpcklbw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        punpcklbw           mm0,            mm1
        ret
procend

procstart _uX_m_punpcklwd, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        punpcklwd           mm0,            mm1
        ret
procend

procstart _uX_m_punpckldq, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        punpckldq           mm0,            mm1
        ret
procend

procstart _uX_m_paddb, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        paddb           mm0,            mm1
        ret
procend

procstart _uX_m_paddw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        paddw           mm0,            mm1
        ret
procend

procstart _uX_m_paddd, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        paddd           mm0,            mm1
        ret
procend

procstart _uX_m_paddsb, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        paddsb          mm0,            mm1
        ret
procend

procstart _uX_m_paddsw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        paddsw          mm0,            mm1
        ret
procend

procstart _uX_m_paddusb, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        paddusb         mm0,            mm1
        ret
procend

procstart _uX_m_paddusw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        paddusw         mm0,            mm1
        ret
procend

procstart _uX_m_psubb, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        psubb           mm0,            mm1
        ret
procend

procstart _uX_m_psubw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        psubw           mm0,            mm1
        ret
procend

procstart _uX_m_psubd, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        psubd           mm0,            mm1
        ret
procend

procstart _uX_m_psubsb, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        psubsb          mm0,            mm1
        ret
procend

procstart _uX_m_psubsw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        psubsw          mm0,            mm1
        ret
procend

procstart _uX_m_psubusb, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        psubusb         mm0,            mm1
        ret
procend

procstart _uX_m_psubusw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        psubusw         mm0,            mm1
        ret
procend

procstart _uX_m_pmaddwd, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pmaddwd         mm0,            mm1
        ret
procend

procstart _uX_m_pmulhw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pmulhw          mm0,            mm1
        ret
procend

procstart _uX_m_pmullw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pmullw          mm0,            mm1
        ret
procend

procstart _uX_m_psllw, callconv, mmword, < >, < >, _MM1:mmword, _Count:mmword
        psllw           mm0,            mm1
        ret
procend

procstart _uX_m_pslld, callconv, mmword, < >, < >, _MM1:mmword, _Count:mmword
        pslld           mm0,            mm1
        ret
procend

procstart _uX_m_psllq, callconv, mmword, < >, < >, _MM1:mmword, _Count:mmword
        psllq           mm0,            mm1
        ret
procend

procstart _uX_m_psraw, callconv, mmword, < >, < >, _MM1:mmword, _Count:mmword
        psraw           mm0,            mm1
        ret
procend

procstart _uX_m_psrad, callconv, mmword, < >, < >, _MM1:mmword, _Count:mmword
        psrad           mm0,            mm1
        ret
procend

procstart _uX_m_psrlw, callconv, mmword, < >, < >, _MM1:mmword, _Count:mmword
        psrlw           mm0,            mm1
        ret
procend

procstart _uX_m_psrld, callconv, mmword, < >, < >, _MM1:mmword, _Count:mmword
        psrld           mm0,            mm1
        ret
procend

procstart _uX_m_psrlq, callconv, mmword, < >, < >, _MM1:mmword, _Count:mmword
        psrlq           mm0,            mm1
        ret
procend

procstart _uX_m_pand, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pand            mm0,            mm1
        ret
procend

procstart _uX_m_pandn, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pandn           mm0,            mm1
        ret
procend

procstart _uX_m_por, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        por         mm0,            mm1
        ret
procend

procstart _uX_m_pxor, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pxor            mm0,            mm1
        ret
procend

procstart _uX_m_pcmpeqb, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pcmpeqb         mm0,            mm1
        ret
procend

procstart _uX_m_pcmpeqw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pcmpeqw         mm0,            mm1
        ret
procend

procstart _uX_m_pcmpeqd, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pcmpeqd         mm0,            mm1
        ret
procend

procstart _uX_m_pcmpgtb, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pcmpgtb         mm0,            mm1
        ret
procend

procstart _uX_m_pcmpgtw, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pcmpgtw         mm0,            mm1
        ret
procend

procstart _uX_m_pcmpgtd, callconv, mmword, < >, < >, _MM1:mmword, _MM2:mmword
        pcmpgtd         mm0,            mm1
        ret
procend

procstart _uX_m_setzero_si64, callconv, mmword, < >, < >, < >
        pxor            mm0,            mm1
        ret
procend

endif ;__X32__

endif ;__MIC__

    end