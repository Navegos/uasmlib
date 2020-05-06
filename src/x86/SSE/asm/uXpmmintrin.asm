
ifndef __MIC__

    include uXx86asm.inc

    .xmm
    option arch:sse
    option evex:0

    .data?

    .data

    .const

    .code

    callconvopt
    alignxmmfieldproc

;************************************
; New Single precision vector instructions.
;************************************
procstart _uX_mm_addsub_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        addsubps        xmm0,           xmm1
        ret
procend

procstart _uX_mm_hadd_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        haddps          xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_hsub_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        hsubps          xmm0,           xmm1
        ret
procend

procstart _uX_mm_movehdup_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movshdup        xmm0,           xmm0
        ret
procend

procstart _uX_mm_moveldup_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movsldup        xmm0,           xmm0
        ret
procend

;************************************
; New double precision vector instructions.
;************************************
procstart _uX_mm_addsub_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        addsubpd        xmm0,           xmm1
        ret
procend

procstart _uX_mm_hadd_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        haddpd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_hsub_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        hsubpd          xmm0,           xmm1
        ret
procend

procstart _uX_mm_loaddup_pd, callconv, xmmword, < >, < >, InPreal8_A:ptr real8
        movddup         xmm0,       real8 ptr [rparam0]
        ret
procend

procstart _uX_mm_movedup_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movddup         xmm0,           xmm0
        ret
procend

;************************************
; New unaligned integer vector load instruction.
;************************************
procstart _uX_mm_lddqu_si128, callconv, xmmword, < >, < >, InPxmm_A:ptr xmmword
        lddqu           xmm0,       xmmword ptr[rparam0]
        ret
procend

;************************************
; Miscellaneous new instructions.
;************************************

procstart _uX_mm_monitor, voidarg, < >, < >, InPvoid_A:ptr, Ext_B:dword, Hints_C:dword
        mov         rreturn,        rparam0
        mov         ecx,        dparam1
        mov         edx,        dparam2
    ifdef __X32__
        monitor     eax,        ecx,        edx
    else
        monitor     rax,        rcx,        rdx
    endif
        ret
procend

procstart _uX_mm_mwait, voidarg, < >, < >, Ext_A:dword, Hints_C:dword
        mov         ecx,        dparam0
        mov         eax,        dparam1
    ifdef __X32__
        mwait       eax,        ecx
    else
        mwait       rax,        rcx
    endif
        ret
procend

endif ;__MIC__

    end