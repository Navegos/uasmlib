
ifndef __MIC__

    include uXx86asm.inc

    .xmm
    option arch:sse
    option evex:0

    .data?

    .data

    alignxmmfieldproc

        v4ci m128_sincostmpps_x1,                  __m128f, flt_false
        v4ci m128_sincostmpps_xa,                  __m128f, flt_false
        v4ci m128_sincostmpps_y,                   __m128f, flt_false
        v4ci m128_sincostmpps_q,                   __m128i, flt_false
        v4ci m128_sincostmpps_x2,                  __m128f, flt_false
        v4ci m128_sincostmpps_s,                   __m128f, flt_false
        v4ci m128_sincostmpps_c,                   __m128f, flt_false
        v4ci m128_sincostmpps_swap,                __m128f, flt_false
        v4ci m128_sincostmpps_overflow,            __m128f, flt_false
        v4ci m128_sincostmpps_sin1,                __m128f, flt_false
        v4ci m128_sincostmpps_cos1,                __m128f, flt_false

    .const

    alignxmmfieldproc

    externdef __m128_true:__m128i
    externdef __m128_false:__m128i
    externdef __m128_sign:__m128i
    externdef __m128_inf:__m128i
    externdef __m128_fin:__m128i
    externdef __m128_qnan:__m128i
    externdef __m128_abs:__m128i
    externdef __m128_2divpi:__m128f
    externdef __m128_DP1F:__m128f
    externdef __m128_DP2F:__m128f
    externdef __m128_DP3F:__m128f
    externdef __m128_P0sinf:__m128f
    externdef __m128_P1sinf:__m128f
    externdef __m128_P2sinf:__m128f
    externdef __m128_P0cosf:__m128f
    externdef __m128_P1cosf:__m128f
    externdef __m128_P2cosf:__m128f
    externdef __m128_0:__m128f
    externdef __m128_0d5:__m128f
    externdef __m128_1:__m128f

    externdef __m128i_flt_bigoverflow:__m128i
    externdef __m128i_flt_bytevtbl:__m128i

    externdef __m128_0e_sign:__m128i
    externdef __m128_0e_inf:__m128i
    externdef __m128_0e_fin:__m128i
    externdef __m128_0e_qnan:__m128i
    externdef __m128_0e_abs:__m128i
    externdef __m128_0e_1:__m128f
    externdef __m128_0e_2divpi:__m128f
    externdef __m128_0e_DP1F:__m128f
    externdef __m128_0e_DP2F:__m128f
    externdef __m128_0e_DP3F:__m128f
    externdef __m128_0e_P0sinf:__m128f
    externdef __m128_0e_P1sinf:__m128f
    externdef __m128_0e_P2sinf:__m128f
    externdef __m128_0e_P0cosf:__m128f
    externdef __m128_0e_P1cosf:__m128f
    externdef __m128_0e_P2cosf:__m128f
    externdef __m128_0e_0:__m128f
    externdef __m128_0e_0d5:__m128f
    externdef __m128_0e_1:__m128f
    
    externdef __m128i_flt_0e_bigoverflow:__m128i

    externdef __m128i_i8_true:__m128b
    externdef __m128i_i8_false:__m128b
    externdef __m128i_flt_maxu8:__m128b

    externdef __m128i_i16_true:__m128w
    externdef __m128i_i16_false:__m128w

    externdef __m128i_i32_true:__m128i
    externdef __m128i_i32_false:__m128i
    externdef __m128i_i32_0:__m128i
    externdef __m128i_i32_1:__m128i
    externdef __m128i_i32_2:__m128i
    
    externdef __m128i_i32_0e_true:__m128i
    externdef __m128i_i32_0e_0:__m128i
    externdef __m128i_i32_0e_1:__m128i
    externdef __m128i_i32_0e_2:__m128i

    externdef __m128i_i64_true:__m128q
    externdef __m128i_i64_false:__m128q

    externdef __m128d_true:__m128q
    externdef __m128d_false:__m128q
    externdef __m128d_1:__m128d
    externdef __m128d_0e_1:__m128d

    alignymmfieldproc
    externdef __m128i_flt_cutoffmask:__m256i

    .code

;******************
; Externs
;******************
    ;extern _uX_CPUFeatures_is_inited:proc
    ;extern _uX_CPUFeatures_init:proc

    ;externdef callconv _uX_CPUFeatures_has_SSE41:proc
    ;externdef callconv _uX_CPUFeatures_has_SSE42:proc
    ;externdef callconv _uX_CPUFeatures_has_XOP:proc

    _uX_CPUFeatures_has_SSE3 proto callconv (dword)
    _uX_CPUFeatures_has_SSE41 proto callconv (dword)
    _uX_CPUFeatures_has_SSE42 proto callconv (dword)
    _uX_CPUFeatures_has_XOP proto callconv (dword)
    _uX_CPUFeatures_has_FMA proto callconv (dword)

    callconvopt
    alignxmmfieldproc
    
;******************
; Integer Division
;******************

procstart _uX_mm_div_epi8, callconv, xmmword, < >, <uses xmm11 xmm13 xmm14 xmm15>, Inxmm_A:xmmword, Inxmm_B:xmmword
        movdqa          xmm5,           xmm0
        movdqa          xmm14,          xmm1
        movdqa          xmm4,           xmm14
        movdqa          xmm0,           xmm14
        movdqa          xmm13,          xmm14
        pslld           xmm4,           18h
        pslld           xmm0,           10h
        pslld           xmm13,          8
        movdqa          xmm15,          xmm14
        psrad           xmm4,           18h
        psrad           xmm0,           18h
        psrad           xmm13,          18h
        psrad           xmm15,          18h
        cvtdq2ps        xmm4,           xmm4
        cvtdq2ps        xmm1,           xmm0
        cvtdq2ps        xmm2,           xmm13
        cvtdq2ps        xmm3,           xmm15
        rcpps           xmm4,           xmm4
        rcpps           xmm1,           xmm1
        rcpps           xmm15,          xmm2
        rcpps           xmm3,           xmm3
        movdqa          xmm0,           xmm5
        movdqa          xmm13,          xmm5
        movdqa          xmm11,          xmm5
        pslld           xmm0,           18h
        pslld           xmm13,          10h
        pslld           xmm11,          8
        psrad           xmm0,           18h
        psrad           xmm13,          18h
        psrad           xmm11,          18h
        psrad           xmm5,           18h
        movups          xmm2,           __m128i_flt_bytevtbl
        cvtdq2ps        xmm0,           xmm0
        cvtdq2ps        xmm13,          xmm13
        cvtdq2ps        xmm11,          xmm11
        cvtdq2ps        xmm5,           xmm5
        mulps           xmm4,           xmm2
        mulps           xmm1,           xmm2
        mulps           xmm15,          xmm2
        mulps           xmm3,           xmm2
        mulps           xmm0,           xmm4
        mulps           xmm13,          xmm1
        mulps           xmm11,          xmm15
        mulps           xmm5,           xmm3
        pcmpeqb         xmm14,          __m128i_i8_false
        pmovmskb        eax,            xmm14
        test            eax,            eax
        jz              short _B1_3
        B1_2:
        mov             eax,            0
        div             al
        _B1_3:
        cvttps2dq       xmm13,          xmm13
        cvttps2dq       xmm0,           xmm0
        cvttps2dq       xmm11,          xmm11
        cvttps2dq       xmm5,           xmm5
        movdqu          xmm1,           __m128i_flt_maxu8
        pslld           xmm5,           18h
        pand            xmm13,          xmm1
        pand            xmm0,           xmm1
        pslld           xmm13,          8
        pand            xmm11,          xmm1
        por             xmm0,           xmm13
        pslld           xmm11,          10h
        por             xmm0,           xmm11
        por             xmm0,           xmm5
        ret
procend

procstart _uX_mm_div_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

procstart _uX_mm_div_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

procstart _uX_mm_div_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

procstart _uX_mm_div_epu8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

procstart _uX_mm_div_epu16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

procstart _uX_mm_div_epu32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

procstart _uX_mm_div_epu64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ret
procend

;******************
; FLT Arithmetic
;******************
procstart _uX_mm_cutoff_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_N:dword
        .if((rparam1 < 4) && (rparam1 >= 0))
        mov             rparam2,        4
        sub             rparam2,        rparam1
        ifdef __X32__
        mov             rret,    dword ptr [__m128i_flt_cutoffmask+rparam2]
        else
        lea             rret,    qword ptr [__m128i_flt_cutoffmask]
        mov             rret,    qword ptr [rret+rparam2]
        endif
        movups          xmm1,       xmmword ptr [rret]
        andps           xmm0,           xmm1
        .endif
        ret
procend

procstart _uX_mm_signbit_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm0,           xmm0
        psrad           xmm0,           31
        movaps          xmm0,           xmm0
        ret
procend

procstart _uX_mm_signcombine_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        andps           xmm1,           __m128_sign
        xorps           xmm0,           xmm1
        ret
procend

procstart _uX_mm_signbit_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movss           xmm0,           xmm0
        movdqa          xmm0,           xmm0
        psrad           xmm0,           31
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_signcombine_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movss           xmm0,           xmm0
        andps           xmm1,           __m128_0e_sign
        xorps           xmm0,           xmm1
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_isfinite_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm0,           xmm0
        pslld           xmm0,           1
        pand            xmm0,           __m128_fin
        pcmpeqd         xmm0,           __m128_fin
        pxor            xmm0,           __m128i_i32_true
        movaps          xmm0,           xmm0
        ret
procend

procstart _uX_mm_isinf_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm0,           xmm0
        pslld           xmm0,           1
        pcmpeqd         xmm0,           __m128_fin
        movaps          xmm0,           xmm0
        ret
procend

procstart _uX_mm_isnan_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        cmpps           xmm0,           xmm0,           CMPP_NEQ
        ret
procend

procstart _uX_mm_issubnormal_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm0,           xmm0
        pslld           xmm0,           1
        movdqa          xmm2,           xmm0
        movdqa          xmm1,           __m128_fin
        pand            xmm0,           xmm1
        pandn           xmm1,           xmm2
        pcmpeqd         xmm0,           __m128i_i32_0
        pcmpeqd         xmm1,           __m128i_i32_0
        pxor            xmm1,           __m128i_i32_true
        pand            xmm0,           xmm1
        movaps          xmm0,           xmm0
        ret
procend

procstart _uX_mm_iszeroorsubnormal_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movdqa          xmm0,           xmm0
        pand            xmm0,           __m128_inf
        pcmpeqd         xmm0,           __m128i_i32_0
        movaps          xmm0,           xmm0
        ret
procend

procstart _uX_mm_isfinite_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movss           xmm0,           xmm0
        movdqa          xmm0,           xmm0
        pslld           xmm0,           1
        pand            xmm0,           __m128_0e_fin
        pcmpeqd         xmm0,           __m128_0e_fin
        pxor            xmm0,           __m128i_i32_0e_true
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_isinf_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movss           xmm0,           xmm0
        movdqa          xmm0,           xmm0
        pslld           xmm0,           1
        movdqa          xmm1,           __m128_0e_fin
        pcmpeqd         xmm0,           xmm1
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_isnan_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movss           xmm0,           xmm0
        cmpss           xmm0,           xmm0,           CMPP_NEQ
        ret
procend

procstart _uX_mm_issubnormal_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movss           xmm0,           xmm0
        movdqa          xmm0,           xmm0
        pslld           xmm0,           1
        movdqa          xmm2,           xmm0
        movdqa          xmm1,           __m128_0e_fin
        pand            xmm0,           xmm1
        pandn           xmm1,           xmm2
        pcmpeqd         xmm0,           __m128i_i32_0e_0
        pcmpeqd         xmm1,           __m128i_i32_0e_0
        pxor            xmm1,           __m128i_i32_0e_true
        pand            xmm0,           xmm1
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_iszeroorsubnormal_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movss           xmm0,           xmm0
        movdqa          xmm0,           xmm0
        pand            xmm0,           __m128_0e_inf
        pcmpeqd         xmm0,           __m128i_i32_0e_0
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_infinite_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inf
        ret
procend

procstart _uX_mm_nan_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_qnan
        ret
procend

procstart _uX_mm_infinite_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inf
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_nan_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_qnan
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_abs_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        andps           xmm0,           __m128_abs
        ret
procend

procstart _uX_mm_abs_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        andps           xmm0,           __m128_0e_abs
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_horizontaladd_ps, callconv, real4, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           xmm0
        movhlps         xmm1,           xmm1
        addps           xmm0,           xmm1
        movaps          xmm1,           xmm0
        shufps          xmm1,           xmm1,           shuffle4(0,0,0,1)
        addss           xmm0,           xmm1
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_horizontalsub_ps, callconv, real4, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           xmm0
        movhlps         xmm1,           xmm1
        subps           xmm0,           xmm1
        movaps          xmm1,           xmm0
        shufps          xmm1,           xmm1,           shuffle4(0,0,0,1)
        subss           xmm0,           xmm1
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_horizontalmul_ps, callconv, real4, < >, < >, Inxmm_A:xmmword
        movaps          xmm1,           xmm0
        movhlps         xmm1,           xmm1
        mulps           xmm0,           xmm1
        movaps          xmm1,           xmm0
        shufps          xmm1,           xmm1,           shuffle4(0,0,0,1)
        mulss           xmm0,           xmm1
        movss           xmm0,           xmm0
        ret
procend

procstart _uX_mm_powtemplate_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_N:dword
            mov          rret,          rparam1
            movaps       xmm1,           __m128_1
            movaps       xmm2,           xmm0
        .if(rret >= 0)
            .while(rret >= 0)
                .if(rret and 1)
                    mulps          xmm1,          xmm2
                .endif
                shr          rret,          1
                .if(rret == 0)
                    movaps          xmm0,          xmm1
                    jmp             _uX_mm_powtemplatei_ps_end
                .endif
                mulps          xmm2,          xmm2
            .endw
        .else
            .if(rret == flt_sign)
                movaps          xmm0,          __m128_qnan
                jmp            _uX_mm_powtemplatei_ps_end
            .endif
            divps           xmm1,          xmm2
            movaps          xmm0,          xmm1
        .endif
        _uX_mm_powtemplatei_ps_end:
        ret
procend

procstart _uX_mm_pown_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_N:dword
        push        rbase
        push        rdidx
        push        rsidx
        mov         rret,          rparam1
        .if(rret == flt_sign)
            movaps        xmm0,        __m128_qnan
            jmp           _uX_mm_pown_ps_end
        .endif
        movaps       xmm1,        __m128_1
        movaps       xmm2,        xmm0
        .if(rret < 0)
            divps        xmm1,        xmm2
            movaps       xmm0,        xmm1
            jmp          _uX_mm_pown_ps_end
        .endif
        .if(rret == 0)
            movaps       xmm0,        xmm1
            jmp          _uX_mm_pown_ps_end
        .endif
        .if(rret >= 256)
            .while(rret >= 0)
                .if(rret and 1)
                    mulps        xmm1,        xmm2
                .endif
                shr        rret,        1
                .if(rret == 0)
                    movaps        xmm0,        xmm1
                    jmp           _uX_mm_pown_ps_end
                .endif
                mulps        xmm2,        xmm2
            .endw
        .endif
        mov        rsidx,        rret
        mov        rdidx,        rret
        mov        rbase,        rret
        sub        rsidx,        1
        and        rdidx,        rsidx
        sub        rbase,        rdidx
        .if(rret and 1)
            movaps        xmm3,        xmm2
        .endif
        .if(rret < 2)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret and 2)
            .if(rret == 2)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        .if(rret < 4)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret and 4)
            .if(rret == 4)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        .if(rret < 8)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret and 8)
            .if(rret == 8)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        .if(rret < 16)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret and 16)
            .if(rret == 16)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        .if(rret < 32)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret and 64)
            .if(rret == 64)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        .if(rret < 128)
            movaps        xmm0,        xmm3
            jmp           _uX_mm_pown_ps_end
        .endif
        mulps        xmm2,        xmm2
        .if(rret and 128)
            .if(rret == 128)
                movaps        xmm3,        xmm2
            .else
                mulps         xmm3,        xmm2
            .endif
        .endif
        movaps        xmm0,        xmm3
        _uX_mm_pown_ps_end:
        pop        rsidx
        pop        rsidx
        pop        rbase
        ret
procend

procstart _uX_mm_powtemplate_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_N:dword
            mov          rret,          rparam1
            movaps       xmm1,           __m128_0e_1
            movss        xmm2,           xmm0
        .if(rret >= 0)
            .while(rret >= 0)
                .if(rret and 1)
                    mulss          xmm1,          xmm2
                .endif
                shr          rret,          1
                .if(rret == 0)
                    movss           xmm0,          xmm1
                    jmp             _uX_mm_powtemplatei_ss_end
                .endif
                mulss          xmm2,          xmm2
            .endw
        .else
            .if(rret == flt_sign)
                movaps          xmm0,          __m128_0e_qnan
                jmp            _uX_mm_powtemplatei_ss_end
            .endif
            divss           xmm1,          xmm2
            movss           xmm0,          xmm1
        .endif
        _uX_mm_powtemplatei_ss_end:
        ret
procend

procstart _uX_mm_pown_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_N:dword
        push        rbase
        push        rdidx
        push        rsidx
        mov         rret,          rparam1
        .if(rret == flt_sign)
            movaps        xmm0,        __m128_0e_qnan
            jmp           _uX_mm_pown_ss_end
        .endif
        movaps       xmm1,        __m128_0e_1
        movss        xmm2,        xmm0
        .if(rret < 0)
            divss        xmm1,        xmm2
            movss        xmm0,        xmm1
            jmp          _uX_mm_pown_ss_end
        .endif
        .if(rret == 0)
            movss        xmm0,        xmm1
            jmp          _uX_mm_pown_ss_end
        .endif
        .if(rret >= 256)
            .while(rret >= 0)
                .if(rret and 1)
                    mulss        xmm1,        xmm2
                .endif
                shr        rret,        1
                .if(rret == 0)
                    movss         xmm0,        xmm1
                    jmp           _uX_mm_pown_ss_end
                .endif
                mulss        xmm2,        xmm2
            .endw
        .endif
        mov        rsidx,        rret
        mov        rdidx,        rret
        mov        rbase,        rret
        sub        rsidx,        1
        and        rdidx,        rsidx
        sub        rbase,        rdidx
        .if(rret and 1)
            movss         xmm3,        xmm2
        .endif
        .if(rret < 2)
            movss         xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret and 2)
            .if(rret == 2)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        .if(rret < 4)
            movss         xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret and 4)
            .if(rret == 4)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        .if(rret < 8)
            movss        xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret and 8)
            .if(rret == 8)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        .if(rret < 16)
            movss        xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret and 16)
            .if(rret == 16)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        .if(rret < 32)
            movss         xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret and 64)
            .if(rret == 64)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        .if(rret < 128)
            movss         xmm0,        xmm3
            jmp           _uX_mm_pown_ss_end
        .endif
        mulss        xmm2,        xmm2
        .if(rret and 128)
            .if(rret == 128)
                movss         xmm3,        xmm2
            .else
                mulss         xmm3,        xmm2
            .endif
        .endif
        movss         xmm0,        xmm3
        _uX_mm_pown_ss_end:
        pop        rsidx
        pop        rsidx
        pop        rbase
        ret
procend

procstart _uX_mm_svml_round_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        roundps         xmm0,           xmm0,        8
        .else
        movaps          xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movaps          xmm0,           xmm3
        cmpps           xmm0,           __m128_sign,           CMPP_NEQ
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        ret
procend

procstart _uX_mm_svml_floor_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        roundps         xmm0,           xmm0,        9
        .else
        movaps          xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movaps          xmm0,           xmm3
        cmpps           xmm0,           __m128_sign,           CMPP_NEQ
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movaps          xmm3,           xmm0
        movaps          xmm4,           __m128_1
        cmpps           xmm3,           xmm2,           CMPP_NLE
        andps           xmm4,           xmm3
        subps           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_svml_ceil_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        roundps         xmm0,           xmm0,        10
        .else
        movaps          xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movaps          xmm0,           xmm3
        cmpps           xmm0,           __m128_sign,           CMPP_NEQ
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movaps          xmm3,           xmm0
        movaps          xmm4,           __m128_1
        cmpps           xmm3,           xmm2,           CMPP_LT
        andps           xmm4,           xmm3
        addps           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_svml_trunc_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        roundps         xmm0,           xmm0,        11
        .else
        movaps          xmm2,           xmm0
        cvttps2dq       xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movaps          xmm0,           xmm3
        cmpps           xmm0,           __m128_sign,           CMPP_NEQ
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        ret
procend

procstart _uX_mm_svml_round_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        roundss         xmm0,           xmm0,        8
        .else
        movss           xmm0,           xmm0
        movss           xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movss           xmm0,           xmm3
        movaps          xmm4,           __m128_0e_sign
        cmpss           xmm0,           xmm4,           CMPP_NEQ
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movss           xmm0,           xmm0
        .endif
        ret
procend

procstart _uX_mm_svml_floor_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        roundss         xmm0,           xmm0,        9
        .else
        movss           xmm0,           xmm0
        movss           xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movss           xmm0,           xmm3
        movaps          xmm4,           __m128_0e_sign
        cmpss           xmm0,           xmm4,           CMPP_NEQ
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movss           xmm3,           xmm0
        movaps          xmm4,           __m128_0e_1
        cmpss           xmm3,           xmm2,           CMPP_NLE
        andps           xmm4,           xmm3
        subss           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_svml_ceil_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        roundss         xmm0,           xmm0,        10
        .else
        movss           xmm0,           xmm0
        movss           xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movss           xmm0,           xmm3
        movaps          xmm4,           __m128_0e_sign
        cmpss           xmm0,           xmm4,           CMPP_NEQ
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movss           xmm3,           xmm0
        movaps          xmm4,           __m128_0e_1
        cmpss           xmm3,           xmm2,           CMPP_LT
        andps           xmm4,           xmm3
        addss           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_svml_trunc_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        roundss         xmm0,           xmm0,        11
        .else
        movss           xmm0,           xmm0
        movss           xmm2,           xmm0
        cvttps2dq       xmm3,           xmm0                     ; convert to integer
        cvtdq2ps        xmm1,           xmm3                     ; convert back to float
        movss           xmm0,           xmm3
        movaps          xmm4,           __m128_0e_sign
        cmpss           xmm0,           xmm4,           CMPP_NEQ
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        movss           xmm0,           xmm0
        .endif
        ret
procend

procstart _uX_mm_madd_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        vfmadd213ps     xmm0,           xmm1,           xmm2
        .else
        mulps           xmm0,           xmm1
        addps           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_msub_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        vfmsub213ps     xmm0,           xmm1,           xmm2
        .else
        mulps           xmm0,           xmm1
        subps           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_nmadd_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        vfnmadd213ps    xmm0,           xmm1,           xmm2
        .else
        mulps           xmm0,           xmm1
        xorps           xmm0,           __m128_sign
        addps           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_nmsub_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        vfnmsub213ps    xmm0,           xmm1,           xmm2
        .else
        mulps           xmm0,           xmm1
        xorps           xmm0,           __m128_sign
        subps           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_madd_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        vfmadd213ss     xmm0,           xmm1,           xmm2
        .else
        mulss           xmm0,           xmm1
        addss           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_msub_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        vfmsub213ss     xmm0,           xmm1,           xmm2
        .else
        mulss           xmm0,           xmm1
        subss           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_nmadd_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        vfnmadd213ss    xmm0,           xmm1,           xmm2
        .else
        mulss           xmm0,           xmm1
        xorps           xmm0,           __m128_0e_sign
        addss           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_nmsub_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        vfnmsub213ss    xmm0,           xmm1,           xmm2
        .else
        mulss           xmm0,           xmm1
        xorps           xmm0,           __m128_0e_sign
        subss           xmm0,           xmm2
        .endif
        ret
procend

procstart _uX_mm_polynomial2_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword, Inxmm_D:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        movaps          xmm4,           xmm0
        mulps           xmm0,           xmm0
        vfmadd213ps     xmm4,           xmm2,           xmm1
        vfmadd213ps     xmm0,           xmm3,           xmm4
        .else
        movaps          xmm4,           xmm0
        mulps           xmm0,           xmm0
        mulps           xmm4,           xmm2
        addps           xmm4,           xmm1
        mulps           xmm0,           xmm3
        addps           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_polynomial2_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_C:xmmword, Inxmm_D:xmmword
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        movss           xmm4,           xmm0
        mulss           xmm0,           xmm0
        vfmadd213ss     xmm4,           xmm2,           xmm1
        vfmadd213ss     xmm0,           xmm3,           xmm4
        .else
        movss           xmm4,           xmm0
        mulss           xmm0,           xmm0
        mulss           xmm4,           xmm2
        addss           xmm4,           xmm1
        mulss           xmm0,           xmm3
        addss           xmm0,           xmm4
        .endif
        ret
procend

procstart _uX_mm_sincostemplate_ps, callconv, xmmword, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword, Intint_SC:dword
        movaps    m128_sincostmpps_x1,  xmm1
        movaps          xmm0,           xmm1
        andps           xmm0,           __m128_abs
        movaps    m128_sincostmpps_xa,  xmm0                ; xa
        ;// Find quadrant
        mulps           xmm0,           __m128_2divpi                ; // quadrant, as float
        xor           rret,            rret
        call           _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        roundps         xmm0,           xmm0,        8
        .else
        movaps          xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                ; convert to integer
        cvtdq2ps        xmm1,           xmm3                ; convert back to float
        movaps          xmm0,           xmm3
        cmpps           xmm0,           __m128_sign,           CMPP_NEQ
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_y,    xmm0            ;    y
        cvtps2dq        xmm1,           xmm0
        movdqa   m128_sincostmpps_q,    xmm1            ;    q
        ;// Reduce by extended precision modular arithmetic
        ;// x = ((xa - y * DP1F) - y * DP2F) - y * DP3F;
        movaps          xmm1,           m128_sincostmpps_y
        movaps          xmm0,           m128_sincostmpps_xa
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        vfmsub231ps     xmm0,           xmm1,           __m128_DP1F
        movaps          xmm1,           m128_sincostmpps_y
        vfmsub231ps     xmm0,           xmm1,           __m128_DP2F
        movaps          xmm0,           m128_sincostmpps_y
        vfmsub231ps     xmm0,           xmm1,           __m128_DP3F
        .else
        mulps           xmm1,           __m128_DP1F
        subps           xmm0,           xmm1
        movaps          xmm1,           m128_sincostmpps_y
        mulps           xmm1,           __m128_DP2F
        subps           xmm0,           xmm1
        movaps          xmm0,           m128_sincostmpps_y
        mulps           xmm1,           __m128_DP3F
        subps           xmm0,           xmm1
        .endif
        movaps          xmm3,           xmm0            ;    x
        ;// Taylor expansion of sin and cos, valid for -pi/4 <= x <= pi/4
        mulps           xmm0,           xmm0
        movaps  m128_sincostmpps_x2,    xmm0            ;    x2
        movaps          xmm2,           m128_sincostmpps_x2            ;    x2
        movaps          xmm1,           xmm0
        mulps           xmm1,           xmm1
        mulps           xmm2,           xmm3
        .if (rret == true)
        movaps          xmm4,           __m128_P1sinf
        vfmadd213ps     xmm0,           xmm4,           __m128_P0sinf
        vfmadd231ps     xmm0,           xmm1,           __m128_P2sinf
        vfmadd213ps     xmm0,           xmm2,           xmm3
        .else
        mulps           xmm0,           __m128_P1sinf
        addps           xmm0,           __m128_P0sinf
        mulps           xmm1,           __m128_P2sinf
        addps           xmm0,           xmm1
        mulps           xmm0,           xmm2
        addps           xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_s,    xmm0
        movaps          xmm0,           m128_sincostmpps_x2
        movaps          xmm3,           xmm0
        movaps          xmm2,           xmm0
        movaps          xmm1,           xmm0
        mulps           xmm1,           xmm1
        mulps           xmm2,           xmm2
        .if (rret == true)
        movaps          xmm4,           __m128_P1cosf
        vfmadd213ps     xmm0,           xmm4,           __m128_P0cosf
        vfmadd231ps     xmm0,           xmm1,           __m128_P2cosf
        movaps          xmm5,           __m128_0d5
        vfmsub213ps     xmm3,           xmm5,           __m128_1
        vfmadd213ps     xmm0,           xmm2,           xmm3
        .else
        mulps           xmm0,           __m128_P1cosf
        addps           xmm0,           __m128_P0cosf
        mulps           xmm1,           __m128_P2cosf
        addps           xmm0,           xmm1
        mulps           xmm3,           __m128_0d5
        subps           xmm3,           __m128_1
        mulps           xmm0,           xmm2
        addps           xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_c,    xmm0
        ;// swap sin and cos if odd quadrant
        movdqa          xmm0,           m128_sincostmpps_q
        pand            xmm0,           __m128i_i32_1
        pcmpeqd         xmm0,           __m128i_i32_0
        pxor            xmm0,           __m128i_i32_true
        movaps   m128_sincostmpps_swap, xmm0
        ;// check for overflow
        movdqa          xmm0,           m128_sincostmpps_q
        pcmpgtd         xmm0,           __m128i_flt_bigoverflow        
        movdqa          xmm1,           m128_sincostmpps_xa
        pslld           xmm1,           1
        pand            xmm1,           __m128_fin
        pcmpeqd         xmm1,           __m128_fin
        pxor            xmm1,           __m128i_i32_true
        pand            xmm0,           xmm1
        movaps  m128_sincostmpps_overflow,    xmm0
        movaps          xmm2,           m128_sincostmpps_s
        movaps          xmm1,           __m128_0
        xor            rret,            rret
        call                _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        blendvps        xmm2,           xmm1,           xmm0
        .else
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps  m128_sincostmpps_s,     xmm0
        movaps          xmm0,           m128_sincostmpps_overflow
        movaps          xmm2,           m128_sincostmpps_c
        movaps          xmm1,           __m128_1
        .if (rret == true)
        blendvps        xmm2,           xmm1,           xmm0
        .else
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps  m128_sincostmpps_c,     xmm0
        ;// calculate sin
        .if ((rparam2 and 5) != 0)
        movaps          xmm0,           m128_sincostmpps_swap
        movaps          xmm1,           m128_sincostmpps_c
        movaps          xmm2,           m128_sincostmpps_s
        .if (rret == true)
        blendvps        xmm2,           xmm1,           xmm0
        .else
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movdqa          xmm2,           m128_sincostmpps_q
        movdqa          xmm1,           m128_sincostmpps_x1
        pslld           xmm2,           30
        pxor            xmm2,           xmm1
        movaps          xmm2,           xmm2
        andps           xmm2,           __m128_sign
        xorps           xmm0,           xmm2
        movaps   m128_sincostmpps_sin1, xmm0
        .endif
        ;// calculate cos
        .if ((rparam2 and 6) != 0)
        movaps          xmm0,           m128_sincostmpps_swap
        movaps          xmm1,           m128_sincostmpps_s
        movaps          xmm2,           m128_sincostmpps_c
        .if (rret == true)
        blendvps        xmm2,           xmm1,           xmm0
        .else
        movaps          xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movdqa          xmm2,           m128_sincostmpps_q
        paddd           xmm2,           __m128i_i32_1
        pand            xmm2,           __m128i_i32_2
        pslld           xmm2,           30
        xorps           xmm0,           xmm2
        movaps   m128_sincostmpps_cos1, xmm0
        .endif
        .if (rparam2 == 1)
        movaps          xmm0,           m128_sincostmpps_sin1
        jmp     _uX_mm_sincostemplate_ps_end
        .elseif (rparam2 == 2)
        movaps          xmm0,           m128_sincostmpps_cos1
        jmp     _uX_mm_sincostemplate_ps_end
        .elseif (rparam2 == 3)
        movaps          xmm0,           m128_sincostmpps_sin1
        movups  xmmword ptr [rparam0],  m128_sincostmpps_cos1
        jmp     _uX_mm_sincostemplate_ps_end
        .else
        movaps          xmm0,           m128_sincostmpps_sin1
        movaps          xmm2,           m128_sincostmpps_cos1
        divps           xmm0,           xmm2
        jmp     _uX_mm_sincostemplate_ps_end
        .endif
        _uX_mm_sincostemplate_ps_end:
        pxor            xmm2,           xmm2
        movaps m128_sincostmpps_x1,       xmm2
        movaps m128_sincostmpps_xa,       xmm2
        movaps m128_sincostmpps_y,        xmm2
        movdqa m128_sincostmpps_q,        xmm2
        movaps m128_sincostmpps_x2,       xmm2
        movaps m128_sincostmpps_s,        xmm2
        movaps m128_sincostmpps_c,        xmm2
        movaps m128_sincostmpps_swap,     xmm2
        movaps m128_sincostmpps_overflow, xmm2
        movaps m128_sincostmpps_sin1,     xmm2
        movaps m128_sincostmpps_cos1,     xmm2
        ret
procend

procstart _uX_mm_sincostemplate_ss, callconv, xmmword, < >, < >, OutPxmm_A:ptr xmmword, Inxmm_B:xmmword, Intint_SC:dword
        movaps    m128_sincostmpps_x1,  xmm1
        movss           xmm0,           xmm1
        andps           xmm0,           __m128_0e_abs
        movaps    m128_sincostmpps_xa,  xmm0                ; xa
        ;// Find quadrant
        mulss           xmm0,           __m128_0e_2divpi                ; // quadrant, as float
        xor           rret,            rret
        call           _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        roundss         xmm0,           xmm0,        8
        .else
        movss           xmm2,           xmm0
        cvtps2dq        xmm3,           xmm0                ; convert to integer
        cvtdq2ps        xmm1,           xmm3                ; convert back to float
        movss           xmm0,           xmm3
        movaps          xmm4,           __m128_0e_sign
        cmpss           xmm0,           xmm4,           CMPP_NEQ
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_y,    xmm0            ;    y
        cvtps2dq        xmm1,           xmm0
        movdqa   m128_sincostmpps_q,    xmm1            ;    q
        ;// Reduce by extended precision modular arithmetic
        ;// x = ((xa - y * DP1F) - y * DP2F) - y * DP3F;
        movaps          xmm1,           m128_sincostmpps_y
        movaps          xmm0,           m128_sincostmpps_xa
        xor           rret,            rret
        call           _uX_CPUFeatures_has_FMA
        .if (rret == true)
        vfmsub231ss     xmm0,           xmm1,           __m128_0e_DP1F
        movaps          xmm1,           m128_sincostmpps_y
        vfmsub231ss     xmm0,           xmm1,           __m128_0e_DP2F
        movaps          xmm0,           m128_sincostmpps_y
        vfmsub231ss     xmm0,           xmm1,           __m128_0e_DP3F
        .else
        mulss           xmm1,           __m128_0e_DP1F
        subss           xmm0,           xmm1
        movaps          xmm1,           m128_sincostmpps_y
        mulss           xmm1,           __m128_0e_DP2F
        subss           xmm0,           xmm1
        movaps          xmm0,           m128_sincostmpps_y
        mulss           xmm1,           __m128_0e_DP3F
        subss           xmm0,           xmm1
        .endif
        movss           xmm3,           xmm0            ;    x
        ;// Taylor expansion of sin and cos, valid for -pi/4 <= x <= pi/4
        mulss           xmm0,           xmm0
        movaps  m128_sincostmpps_x2,    xmm0            ;    x2
        movaps          xmm2,           m128_sincostmpps_x2            ;    x2
        movss           xmm1,           xmm0
        mulss           xmm1,           xmm1
        mulss           xmm2,           xmm3
        .if (rret == true)
        movaps          xmm4,           __m128_0e_P1sinf
        vfmadd213ss     xmm0,           xmm4,           __m128_0e_P0sinf
        vfmadd231ss     xmm0,           xmm1,           __m128_0e_P2sinf
        vfmadd213ss     xmm0,           xmm2,           xmm3
        .else
        mulss           xmm0,           __m128_0e_P1sinf
        addss           xmm0,           __m128_0e_P0sinf
        mulss           xmm1,           __m128_0e_P2sinf
        addss           xmm0,           xmm1
        mulss           xmm0,           xmm2
        addss           xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_s,    xmm0
        movaps          xmm0,           m128_sincostmpps_x2
        movss           xmm3,           xmm0
        movss           xmm2,           xmm0
        movss           xmm1,           xmm0
        mulss           xmm1,           xmm1
        mulss           xmm2,           xmm2
        .if (rret == true)
        movaps          xmm4,           __m128_0e_P1cosf
        vfmadd213ss     xmm0,           xmm4,           __m128_0e_P0cosf
        vfmadd231ss     xmm0,           xmm1,           __m128_0e_P2cosf
        movaps          xmm5,           __m128_0e_0d5
        vfmsub213ss     xmm3,           xmm5,           __m128_0e_1
        vfmadd213ss     xmm0,           xmm2,           xmm3
        .else
        mulss           xmm0,           __m128_0e_P1cosf
        addss           xmm0,           __m128_0e_P0cosf
        mulss           xmm1,           __m128_0e_P2cosf
        addss           xmm0,           xmm1
        mulss           xmm3,           __m128_0e_0d5
        subss           xmm3,           __m128_0e_1
        mulss           xmm0,           xmm2
        addss           xmm0,           xmm3
        .endif
        movaps   m128_sincostmpps_c,    xmm0
        ;// swap sin and cos if odd quadrant
        movdqa          xmm0,           m128_sincostmpps_q
        pand            xmm0,           __m128i_i32_0e_1
        pcmpeqd         xmm0,           __m128i_i32_0e_0
        pxor            xmm0,           __m128i_i32_0e_true
        movaps   m128_sincostmpps_swap, xmm0
        ;// check for overflow
        movdqa          xmm0,           m128_sincostmpps_q
        pcmpgtd         xmm0,           __m128i_flt_0e_bigoverflow
        movdqa          xmm1,           m128_sincostmpps_xa
        pslld           xmm1,           1
        pand            xmm1,           __m128_0e_fin
        pcmpeqd         xmm1,           __m128_0e_fin
        pxor            xmm1,           __m128i_i32_0e_true
        pand            xmm0,           xmm1
        movaps  m128_sincostmpps_overflow,    xmm0
        movaps          xmm2,           m128_sincostmpps_s
        movaps          xmm1,           __m128_0e_0
        xor            rret,            rret
        call                _uX_CPUFeatures_has_SSE41
        .if (rret == true)
        blendvps        xmm2,           xmm1,           xmm0
        .else
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps  m128_sincostmpps_s,     xmm0
        movaps          xmm0,           m128_sincostmpps_overflow
        movaps          xmm2,           m128_sincostmpps_c
        movaps          xmm1,           __m128_0e_1
        .if (rret == true)
        blendvps        xmm2,           xmm1,           xmm0
        .else
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movaps  m128_sincostmpps_c,     xmm0
        ;// calculate sin
        .if ((rparam2 and 5) != 0)
        movaps          xmm0,           m128_sincostmpps_swap
        movaps          xmm1,           m128_sincostmpps_c
        movaps          xmm2,           m128_sincostmpps_s
        .if (rret == true)
        blendvps        xmm2,           xmm1,           xmm0
        .else
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movdqa          xmm2,           m128_sincostmpps_q
        movdqa          xmm1,           m128_sincostmpps_x1
        pslld           xmm2,           30
        pxor            xmm2,           xmm1
        movaps          xmm2,           xmm2
        andps           xmm2,           __m128_0e_sign
        xorps           xmm0,           xmm2
        movaps   m128_sincostmpps_sin1, xmm0
        .endif
        ;// calculate cos
        .if ((rparam2 and 6) != 0)
        movaps          xmm0,           m128_sincostmpps_swap
        movaps          xmm1,           m128_sincostmpps_s
        movaps          xmm2,           m128_sincostmpps_c
        .if (rret == true)
        blendvps        xmm2,           xmm1,           xmm0
        .else
        movss           xmm3,           xmm0
        andnps          xmm3,           xmm2
        andps           xmm0,           xmm1
        orps            xmm0,           xmm3
        .endif
        movdqa          xmm2,           m128_sincostmpps_q
        paddd           xmm2,           __m128i_i32_0e_1
        pand            xmm2,           __m128i_i32_0e_2
        pslld           xmm2,           30
        xorps           xmm0,           xmm2
        movaps   m128_sincostmpps_cos1, xmm0
        .endif
        .if (rparam2 == 1)
        movaps          xmm0,           m128_sincostmpps_sin1
        jmp     _uX_mm_sincostemplate_ss_end
        .elseif (rparam2 == 2)
        movaps          xmm0,           m128_sincostmpps_cos1
        jmp     _uX_mm_sincostemplate_ss_end
        .elseif (rparam2 == 3)
        movaps          xmm0,           m128_sincostmpps_sin1
        movups  xmmword ptr [rparam0],  m128_sincostmpps_cos1
        jmp     _uX_mm_sincostemplate_ss_end
        .else
        movaps          xmm0,           m128_sincostmpps_sin1
        movaps          xmm2,           m128_sincostmpps_cos1
        divss           xmm0,           xmm2
        jmp     _uX_mm_sincostemplate_ss_end
        .endif
        _uX_mm_sincostemplate_ss_end:
        pxor            xmm2,           xmm2
        movaps m128_sincostmpps_x1,       xmm2
        movaps m128_sincostmpps_xa,       xmm2
        movaps m128_sincostmpps_y,        xmm2
        movdqa m128_sincostmpps_q,        xmm2
        movaps m128_sincostmpps_x2,       xmm2
        movaps m128_sincostmpps_s,        xmm2
        movaps m128_sincostmpps_c,        xmm2
        movaps m128_sincostmpps_swap,     xmm2
        movaps m128_sincostmpps_overflow, xmm2
        movaps m128_sincostmpps_sin1,     xmm2
        movaps m128_sincostmpps_cos1,     xmm2
        ret
procend

endif ;__MIC__

    end