
ifndef __MIC__

    include uXx86asm.inc

    .xmm
    option arch:sse
    option evex:0

    .data?

    .data

    .const
    
    alignsize_t
    _m128extractpsjmptable isize_t  offset _m128extractps_0, offset _m128extractps_1, offset _m128extractps_2, offset _m128extractps_3
    
    alignsize_t
    _m128iinsertepi8jmptable isize_t    offset _m128iinsertepi8_0, offset _m128iinsertepi8_1, offset _m128iinsertepi8_2, offset _m128iinsertepi8_3, offset _m128iinsertepi8_4, \
                                        offset _m128iinsertepi8_5, offset _m128iinsertepi8_6, offset _m128iinsertepi8_7, offset _m128iinsertepi8_8, offset _m128iinsertepi8_9, \
                                        offset _m128iinsertepi8_10, offset _m128iinsertepi8_11, offset _m128iinsertepi8_12, offset _m128iinsertepi8_13, offset _m128iinsertepi8_14, \
                                        offset _m128iinsertepi8_15

    alignsize_t
    _m128iinsertepi32jmptable isize_t   offset _m128iinsertepi32_0, offset _m128iinsertepi32_1, offset _m128iinsertepi32_2, offset _m128iinsertepi32_3
    
    alignsize_t
    _m128iinsertepi64jmptable isize_t   offset _m128iinsertepi64_0, offset _m128iinsertepi64_1
    
    alignsize_t
    _m128iextractepi8jmptable isize_t   offset _m128iextractepi8_0, offset _m128iextractepi8_1, offset _m128iextractepi8_2, offset _m128iextractepi8_3, offset _m128iextractepi8_4, \
                                        offset _m128iextractepi8_5, offset _m128iextractepi8_6, offset _m128iextractepi8_7, offset _m128iextractepi8_8, offset _m128iextractepi8_9, \
                                        offset _m128iextractepi8_10, offset _m128iextractepi8_11, offset _m128iextractepi8_12, offset _m128iextractepi8_13, offset _m128iextractepi8_14, \
                                        offset _m128iextractepi8_15

    alignsize_t
    _m128iextractepi32jmptable isize_t  offset _m128iextractepi32_0, offset _m128iextractepi32_1, offset _m128iextractepi32_2, offset _m128iextractepi32_3
    
    alignsize_t
    _m128iextractepi64jmptable isize_t  offset _m128iextractepi64_0, offset _m128iextractepi64_1
    
    alignsize_t
    _m128droundpdjmptable isize_t   offset _m128droundpd_0, offset _m128droundpd_1, offset _m128droundpd_2, offset _m128droundpd_3, offset _m128droundpd_4, \
                                    offset _m128droundpd_5, offset _m128droundpd_6, offset _m128droundpd_7, offset _m128droundpd_8, offset _m128droundpd_9, \
                                    offset _m128droundpd_10, offset _m128droundpd_11, offset _m128droundpd_12

    alignsize_t
    _m128droundsdjmptable isize_t   offset _m128droundsd_0, offset _m128droundsd_1, offset _m128droundsd_2, offset _m128droundsd_3, offset _m128droundsd_4, \
                                    offset _m128droundsd_5, offset _m128droundsd_6, offset _m128droundsd_7, offset _m128droundsd_8, offset _m128droundsd_9, \
                                    offset _m128droundsd_10, offset _m128droundsd_11, offset _m128droundsd_12

    alignsize_t
    _m128roundpsjmptable isize_t    offset _m128roundps_0, offset _m128roundps_1, offset _m128roundps_2, offset _m128roundps_3, offset _m128roundps_4, \
                                    offset _m128roundps_5, offset _m128roundps_6, offset _m128roundps_7, offset _m128roundps_8, offset _m128roundps_9, \
                                    offset _m128roundps_10, offset _m128roundps_11, offset _m128roundps_12

    alignsize_t
    _m128roundssjmptable isize_t    offset _m128roundss_0, offset _m128roundss_1, offset _m128roundss_2, offset _m128roundss_3, offset _m128roundss_4, \
                                    offset _m128roundss_5, offset _m128roundss_6, offset _m128roundss_7, offset _m128roundss_8, offset _m128roundss_9, \
                                    offset _m128roundss_10, offset _m128roundss_11, offset _m128roundss_12

    externdef __m128i_flt_byte_even:__m128i
    externdef __m128i_i64_0:__m128q

    .code

    callconvopt
    alignxmmfieldproc

;******************
; Externs
;******************
    ;extern _uX_CPUFeatures_is_inited:proc
    ;extern _uX_CPUFeatures_init:proc

    ;extern _uX_CPUFeatures_has_SSE41:proc
    ;extern _uX_CPUFeatures_has_AVX512DQ_VL:proc

    _uX_CPUFeatures_has_SSE41 proto callconv (dword)
    _uX_CPUFeatures_has_AVX512DQ_VL proto callconv (dword)

;************************************
; blend instructions
;************************************
procstart _uX_mm_blendv_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_mask:xmmword
        movdqa              xmm3,           xmm0
        movdqa              xmm0,           xmm2
        pblendvb            xmm3,           xmm1,           xmm0
        movdqa              xmm0,           xmm3
        ret
procend
    
procstart _uX_mm_blendv_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_mask:xmmword
        movaps              xmm3,           xmm0
        movaps              xmm0,           xmm2
        blendvps            xmm3,           xmm1,           xmm0
        movaps              xmm0,           xmm3
        ret
procend

procstart _uX_mm_blendv_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_mask:xmmword
        movapd              xmm3,           xmm0
        movapd              xmm0,           xmm2
        blendvpd            xmm3,           xmm1,           xmm0
        movapd              xmm0,           xmm3
        ret
procend

procstart _uX_mm_select_si128, callconv, xmmword, < >, < >, Inxmm_S:xmmword, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor                 rreturn,            rreturn
        call                _uX_CPUFeatures_has_SSE41
        .if (rreturn == true)
        pblendvb            xmm2,           xmm1,           xmm0
        .else
        movdqa              xmm3,           xmm0
        pandn               xmm3,           xmm2
        pand                xmm0,           xmm1
        por                 xmm0,           xmm3
        .endif
        ret
procend

procstart _uX_mm_select_ps, callconv, xmmword, < >, < >, Inxmm_S:xmmword, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor                 rreturn,            rreturn
        call                _uX_CPUFeatures_has_SSE41
        .if (rreturn == true)
        blendvps            xmm2,           xmm1,           xmm0
        .else
        movaps              xmm3,           xmm0
        andnps              xmm3,           xmm2
        andps               xmm0,           xmm1
        orps                xmm0,           xmm3
        .endif
        ret
procend

procstart _uX_mm_select_pd, callconv, xmmword, < >, < >, Inxmm_S:xmmword, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor                 rreturn,            rreturn
        call                _uX_CPUFeatures_has_SSE41
        .if (rreturn == true)
        blendvpd            xmm2,           xmm1,           xmm0
        .else
        movapd              xmm3,           xmm0
        andnpd              xmm3,           xmm2
        andpd               xmm0,           xmm1
        orpd                xmm0,           xmm3
        .endif
        ret
procend

;************************************
; Min/max packed integer instructions
;************************************
procstart _uX_mm_min_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pminsb          xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_max_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmaxsb          xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_min_epu16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pminuw          xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_max_epu16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmaxuw          xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_min_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pminsd          xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_max_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmaxsd          xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_min_epu32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pminud          xmm0,           xmm1
        ret
procend
    
procstart _uX_mm_max_epu32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmaxud          xmm0,           xmm1
        ret
procend

;************************************
; Packed integer 8-bit multiplication
;************************************
procstart _uX_mm_mule_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movdqa              xmm2,           xmm0
        movdqa              xmm3,           xmm1
        psrlw               xmm2,           8                           ;       // odd numbered elements of a
        psrlw               xmm3,           8                           ;       // odd numbered elements of b
        pmullw              xmm0,           xmm1                        ;       // product of even numbered elements
        movdqa              xmm1,           xmm0
        pmullw              xmm2,           xmm3                        ;       // product of odd  numbered elements
        psllw               xmm2,           8                           ;       // put odd numbered elements back in place
        movdqa              xmm0,           __m128i_flt_byte_even       ;       // mask for even positions
        ;mov                rparam0,        0x00ff00ff
        ;pshufd             xmm0,           xmm0,           0
        xor                 rreturn,            rreturn
        call                _uX_CPUFeatures_has_SSE41
        .if (rreturn == true)
        pblendvb            xmm2,           xmm1,           xmm0        ;       // interleave even and odd
        .else
        movdqa              xmm3,           xmm0
        pandn               xmm3,           xmm2
        pand                xmm0,           xmm1
        por                 xmm0,           xmm3
        .endif
        ret
procend

;************************************
; Packed integer 32-bit multiplication
;************************************
procstart _uX_mm_mullo_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmulld          xmm0,           xmm1
        ret
procend

procstart _uX_mm_mul_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pmuldq          xmm0,           xmm1
        ret
procend

procstart _uX_mm_mule_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor                 rreturn,            rreturn
        call                _uX_CPUFeatures_has_SSE41
        .if (rreturn == true)
        pmulld              xmm0,           xmm1
        .else
        movdqa              xmm2,           xmm0
        movdqa              xmm3,           xmm1
        pshufd              xmm2,           xmm2,           shuffle4(3,3,1,1)       ;    __m128i a13 = _mm_shuffle_epi32(a, 0xF5);              // (-,a3,-,a1)
        pshufd              xmm3,           xmm3,           shuffle4(3,3,1,1)       ;    __m128i b13 = _mm_shuffle_epi32(b, 0xF5);              // (-,b3,-,b1)
        pmuludq             xmm0,           xmm1                                    ;    __m128i prod02 = _mm_mul_epu32(a, b);                  // (-,a2*b2,-,a0*b0)
        pmuludq             xmm2,           xmm3                                    ;    __m128i prod13 = _mm_mul_epu32(a13, b13);              // (-,a3*b3,-,a1*b1)
        movdqa              xmm3,           xmm0
        punpckldq           xmm0,           xmm2                                    ;    __m128i prod01 = _mm_unpacklo_epi32(prod02, prod13);   // (-,-,a1*b1,a0*b0)
        punpckhdq           xmm3,           xmm2                                    ;    __m128i prod23 = _mm_unpackhi_epi32(prod02, prod13);   // (-,-,a3*b3,a2*b2)
        punpcklqdq          xmm0,           xmm3                                    ;                     _mm_unpacklo_epi64(prod01, prod23);   // (ab3,ab2,ab1,ab0)
        .endif
        ret
procend

;************************************
; Packed integer 64-bit multiplication
;************************************
procstart _uX_mm_mule_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        xor                 rreturn,            rreturn
        call                _uX_CPUFeatures_has_AVX512DQ_VL
        .if (rreturn == true)
        vpmullq              xmm0,           xmm1
        jmp         _m128imuleepi64_end
        .endif
        call                _uX_CPUFeatures_has_SSE41
        .if (rreturn == true)
        movdqa              xmm2,           xmm0
        movdqa              xmm3,           xmm1                                    ;    // Split into 32-bit multiplies
        pshufd              xmm3,           xmm3,           shuffle4(2,3,0,1)       ;    __m128i bswap = _mm_shuffle_epi32(b, 0xB1);            // b0H,b0L,b1H,b1L (swap H<->L)
        pmulld              xmm2,           xmm3                                    ;    __m128i prodlh = _mm_mullo_epi32(a, bswap);            // a0Lb0H,a0Hb0L,a1Lb1H,a1Hb1L, 32 bit L*H products
        pxor                xmm3,           xmm3                                    ;    __m128i zero = _mm_setzero_si128();                    // 0
        phaddd              xmm2,           xmm3                                    ;    __m128i prodlh2 = _mm_hadd_epi32(prodlh, zero);        // a0Lb0H+a0Hb0L,a1Lb1H+a1Hb1L,0,0
        pshufd              xmm2,           xmm2,           shuffle4(1,3,0,3)       ;    __m128i prodlh3 = _mm_shuffle_epi32(prodlh2, 0x73);    // 0, a0Lb0H+a0Hb0L, 0, a1Lb1H+a1Hb1L
        pmuludq             xmm0,           xmm1                                    ;    __m128i prodll = _mm_mul_epu32(a, b);                  // a0Lb0L,a1Lb1L, 64 bit unsigned products
        paddq               xmm0,           xmm2                                    ;    __m128i prod = _mm_add_epi64(prodll, prodlh3);         // a0Lb0L+(a0Lb0H+a0Hb0L)<<32, a1Lb1L+(a1Lb1H+a1Hb1L)<<32
        .else
        movdqa              xmm2,           xmm0
        movdqa              xmm3,           xmm1
        movdqa              xmm4,           xmm0
        movdqa              xmm5,           xmm1                                    ;    // Split into 32-bit multiplies
        pshufd              xmm3,           xmm3,           shuffle4(2,3,0,1)       ;    __m128i bswap = _mm_shuffle_epi32(b, 0xB1);            // b0H,b0L,b1H,b1L (swap H<->L)
        pshufd              xmm2,           xmm2,           shuffle4(3,3,1,1)       ;    __m128i a13 = _mm_shuffle_epi32(a, 0xF5);              // (-,a3,-,a1)

        pshufd              xmm3,           xmm3,           shuffle4(3,3,1,1)       ;    __m128i b13 = _mm_shuffle_epi32(b, 0xF5);              // (-,b3,-,b1)
        pmuludq             xmm4,           xmm5                                    ;    __m128i prod02 = _mm_mul_epu32(a, b);                  // (-,a2*b2,-,a0*b0)
        pmuludq             xmm2,           xmm3                                    ;    __m128i prod13 = _mm_mul_epu32(a13, b13);              // (-,a3*b3,-,a1*b1)
        movdqa              xmm3,           xmm4
        punpckldq           xmm4,           xmm2                                    ;    __m128i prod01 = _mm_unpacklo_epi32(prod02, prod13);   // (-,-,a1*b1,a0*b0)
        punpckhdq           xmm3,           xmm2                                    ;    __m128i prod23 = _mm_unpackhi_epi32(prod02, prod13);   // (-,-,a3*b3,a2*b2)
        punpcklqdq          xmm4,           xmm3                                    ;                     _mm_unpacklo_epi64(prod01, prod23);   // (ab3,ab2,ab1,ab0) __m128i prodlh = _mm_mullo_epi32(a, bswap);            // a0Lb0H,a0Hb0L,a1Lb1H,a1Hb1L, 32 bit L*H products

        pxor                xmm3,           xmm3                                    ;    __m128i zero = _mm_setzero_si128();                    // 0
        phaddd              xmm4,           xmm3                                    ;    __m128i prodlh2 = _mm_hadd_epi32(prodlh, zero);        // a0Lb0H+a0Hb0L,a1Lb1H+a1Hb1L,0,0
        pshufd              xmm4,           xmm4,           shuffle4(1,3,0,3)       ;    __m128i prodlh3 = _mm_shuffle_epi32(prodlh2, 0x73);    // 0, a0Lb0H+a0Hb0L, 0, a1Lb1H+a1Hb1L
        pmuludq             xmm0,           xmm1                                    ;    __m128i prodll = _mm_mul_epu32(a, b);                  // a0Lb0L,a1Lb1L, 64 bit unsigned products
        paddq               xmm0,           xmm2                                    ;    __m128i prod = _mm_add_epi64(prodll, prodlh3);         // a0Lb0L+(a0Lb0H+a0Hb0L)<<32, a1Lb1L+(a1Lb1H+a1Hb1L)<<32
        .endif
        _m128imuleepi64_end:
        ret
procend

;************************************
; Packed integer 128-bit bitwise comparison
;************************************
procstart _uX_mm_testz_si128, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ptest           xmm0,           xmm1
        mov             ecx,            1
        mov             eax,            0
        cmovz           eax,            ecx
        ret
procend
    
procstart _uX_mm_testc_si128, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ptest           xmm0,           xmm1
        mov             ecx,            1
        mov             eax,            0
        cmovb           ecx,            eax
        ret
procend
    
procstart _uX_mm_testnzc_si128, callconv, dword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        ptest           xmm0,           xmm1
        mov             ecx,            1
        mov             eax,            0
        cmova           ecx,            eax
        ret
procend

;************************************
; Extract binary representation of single precision float
;************************************
procstart _uX_mm_extract_ps_0, callconv, dword, < >, < >, Inxmm_A:xmmword
        extractps           dreturn,            xmm0,           0
        ret
procend

procstart _uX_mm_extract_ps_1, callconv, dword, < >, < >, Inxmm_A:xmmword
        extractps           dreturn,            xmm0,           1
        ret
procend

procstart _uX_mm_extract_ps_2, callconv, dword, < >, < >, Inxmm_A:xmmword
        extractps           dreturn,            xmm0,           2
        ret
procend

procstart _uX_mm_extract_ps_3, callconv, dword, < >, < >, Inxmm_A:xmmword
        extractps           dreturn,            xmm0,           3
        ret
procend

procstart _uX_mm_extract_ps, callconv, dword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 3))
        jmp         _m128extractps_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m128extractpsjmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128extractpsjmptable]
        mov             rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp             rbx
        endif

        _m128extractps_0 label size_t
        extractps           dreturn,            xmm0,           0
        jmp         _m128extractps_end
        _m128extractps_1 label size_t
        extractps           dreturn,            xmm0,           1
        jmp         _m128extractps_end
        _m128extractps_2 label size_t
        extractps           dreturn,            xmm0,           2
        jmp         _m128extractps_end
        _m128extractps_3 label size_t
        extractps           dreturn,            xmm0,           3
        ;jmp         _m128extractps_end

        _m128extractps_end:
        pop         rbase
        ret
procend
    
;************************************
; Insert integer
;************************************
procstart _uX_mm_insert_epi8_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            0
        ret
procend

procstart _uX_mm_insert_epi8_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            1
        ret
procend

procstart _uX_mm_insert_epi8_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            2
        ret
procend

procstart _uX_mm_insert_epi8_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            3
        ret
procend

procstart _uX_mm_insert_epi8_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            4
        ret
procend

procstart _uX_mm_insert_epi8_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            5
        ret
procend

procstart _uX_mm_insert_epi8_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            6
        ret
procend

procstart _uX_mm_insert_epi8_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            7
        ret
procend

procstart _uX_mm_insert_epi8_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            8
        ret
procend

procstart _uX_mm_insert_epi8_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            9
        ret
procend

procstart _uX_mm_insert_epi8_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            10
        ret
procend

procstart _uX_mm_insert_epi8_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            11
        ret
procend

procstart _uX_mm_insert_epi8_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            12
        ret
procend

procstart _uX_mm_insert_epi8_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            13
        ret
procend

procstart _uX_mm_insert_epi8_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            14
        ret
procend

procstart _uX_mm_insert_epi8_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrb          xmm0,           dparam1,            15
        ret
procend
    
procstart _uX_mm_insert_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword, _Imm8:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 15))
        jmp         _m128iinsertepi8_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam2]
        jmp     dword ptr [_m128iinsertepi8jmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128iinsertepi8jmptable]
        mov             rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp             rbx
        endif

        _m128iinsertepi8_0 label size_t
        pinsrb          xmm0,           dparam1,            0
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_1 label size_t
        pinsrb          xmm0,           dparam1,            1
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_2 label size_t
        pinsrb          xmm0,           dparam1,            2
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_3 label size_t
        pinsrb          xmm0,           dparam1,            3
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_4 label size_t
        pinsrb          xmm0,           dparam1,            4
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_5 label size_t
        pinsrb          xmm0,           dparam1,            5
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_6 label size_t
        pinsrb          xmm0,           dparam1,            6
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_7 label size_t
        pinsrb          xmm0,           dparam1,            7
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_8 label size_t
        pinsrb          xmm0,           dparam1,            8
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_9 label size_t
        pinsrb          xmm0,           dparam1,            9
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_10 label size_t
        pinsrb          xmm0,           dparam1,            10
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_11 label size_t
        pinsrb          xmm0,           dparam1,            11
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_12 label size_t
        pinsrb          xmm0,           dparam1,            12
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_13 label size_t
        pinsrb          xmm0,           dparam1,            13
        jmp         _m128iinsertepi8_end
        _m128iinsertepi8_14 label size_t
        pinsrb          xmm0,           dparam1,            14
        jmp         _m128iinsertepi8_end         
        _m128iinsertepi8_15 label size_t
        pinsrb          xmm0,           dparam1,            15
        ;jmp         _m128iinsertepi8_end     

        _m128iinsertepi8_end:
        pop         rbase
        ret
procend
    
procstart _uX_mm_insert_epi32_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrd          xmm0,           dparam1,            0
        ret
procend

procstart _uX_mm_insert_epi32_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrd          xmm0,           dparam1,            1
        ret
procend

procstart _uX_mm_insert_epi32_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrd          xmm0,           dparam1,            2
        ret
procend

procstart _uX_mm_insert_epi32_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword
        pinsrd          xmm0,           dparam1,            3
        ret
procend

procstart _uX_mm_insert_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:dword, _Imm8:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 3))
        jmp         _m128iinsertepi32_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam2]
        jmp     dword ptr [_m128iinsertepi32jmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128iinsertepi32jmptable]
        mov             rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp             rbx
        endif
        
        _m128iinsertepi32_0 label size_t
        pinsrd          xmm0,           dparam1,            0
        jmp         _m128iinsertepi32_end
        _m128iinsertepi32_1 label size_t
        pinsrd          xmm0,           dparam1,            1
        jmp         _m128iinsertepi32_end
        _m128iinsertepi32_2 label size_t
        pinsrd          xmm0,           dparam1,            2
        jmp         _m128iinsertepi32_end
        _m128iinsertepi32_3 label size_t
        pinsrd          xmm0,           dparam1,            3
        ;jmp         _m128iinsertepi32_end

        _m128iinsertepi32_end:
        pop         rbase
        ret
procend
    
ifdef __X64__
procstart _uX_mm_insert_epi64_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:qword
        pinsrq          xmm0,           rparam1,            0
        ret
procend

procstart _uX_mm_insert_epi64_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:qword
        pinsrq          xmm0,           rparam1,            1
        ret
procend

procstart _uX_mm_insert_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:qword, _Imm8:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 1))
        jmp         _m128iinsertepi64_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam2]
        jmp     dword ptr [_m128iinsertepi64jmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128iinsertepi64jmptable]
        mov             rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp             rbx
        endif
        
        _m128iinsertepi64_0 label size_t
        pinsrq          xmm0,           rparam1,            0
        jmp         _m128iinsertepi64_end
        _m128iinsertepi64_1 label size_t
        pinsrq          xmm0,           rparam1,            1
        ;jmp         _m128iinsertepi64_end

        _m128iinsertepi64_end:
        pop         rbase
        ret
procend
endif ;__X64__
    
;************************************
; Extract integer
;************************************
procstart _uX_mm_extract_epi8_0, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           0
        ret
procend

procstart _uX_mm_extract_epi8_1, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           1
        ret
procend

procstart _uX_mm_extract_epi8_2, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           2
        ret
procend

procstart _uX_mm_extract_epi8_3, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           3
        ret
procend

procstart _uX_mm_extract_epi8_4, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           4
        ret
procend

procstart _uX_mm_extract_epi8_5, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           5
        ret
procend

procstart _uX_mm_extract_epi8_6, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           6
        ret
procend

procstart _uX_mm_extract_epi8_7, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           7
        ret
procend

procstart _uX_mm_extract_epi8_8, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           8
        ret
procend

procstart _uX_mm_extract_epi8_9, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           9
        ret
procend

procstart _uX_mm_extract_epi8_10, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           10
        ret
procend

procstart _uX_mm_extract_epi8_11, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           11
        ret
procend

procstart _uX_mm_extract_epi8_12, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           12
        ret
procend

procstart _uX_mm_extract_epi8_13, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           13
        ret
procend

procstart _uX_mm_extract_epi8_14, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           14
        ret
procend

procstart _uX_mm_extract_epi8_15, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrb          dreturn,            xmm0,           15
        ret
procend
    
procstart _uX_mm_extract_epi8, callconv, dword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 15))
        jmp         _m128iextractepi8_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m128iextractepi8jmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128iextractepi8jmptable]
        mov             rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp             rbx
        endif

        _m128iextractepi8_0 label size_t
        pextrb          dreturn,            xmm0,           0
        jmp         _m128iextractepi8_end
        _m128iextractepi8_1 label size_t
        pextrb          dreturn,            xmm0,           1
        jmp         _m128iextractepi8_end
        _m128iextractepi8_2 label size_t
        pextrb          dreturn,            xmm0,           2
        jmp         _m128iextractepi8_end
        _m128iextractepi8_3 label size_t
        pextrb          dreturn,            xmm0,           3
        jmp         _m128iextractepi8_end
        _m128iextractepi8_4 label size_t
        pextrb          dreturn,            xmm0,           4
        jmp         _m128iextractepi8_end
        _m128iextractepi8_5 label size_t
        pextrb          dreturn,            xmm0,           5
        jmp         _m128iextractepi8_end
        _m128iextractepi8_6 label size_t
        pextrb          dreturn,            xmm0,           6
        jmp         _m128iextractepi8_end
        _m128iextractepi8_7 label size_t
        pextrb          dreturn,            xmm0,           7
        jmp         _m128iextractepi8_end
        _m128iextractepi8_8 label size_t
        pextrb          dreturn,            xmm0,           8
        jmp         _m128iextractepi8_end
        _m128iextractepi8_9 label size_t
        pextrb          dreturn,            xmm0,           9
        jmp         _m128iextractepi8_end
        _m128iextractepi8_10 label size_t
        pextrb          dreturn,            xmm0,           10
        jmp         _m128iextractepi8_end
        _m128iextractepi8_11 label size_t
        pextrb          dreturn,            xmm0,           11
        jmp         _m128iextractepi8_end
        _m128iextractepi8_12 label size_t
        pextrb          dreturn,            xmm0,           12
        jmp         _m128iextractepi8_end
        _m128iextractepi8_13 label size_t
        pextrb          dreturn,            xmm0,           13
        jmp         _m128iextractepi8_end
        _m128iextractepi8_14 label size_t
        pextrb          dreturn,            xmm0,           14
        jmp         _m128iextractepi8_end         
        _m128iextractepi8_15 label size_t
        pextrb          dreturn,            xmm0,           15
        ;jmp         _m128iextractepi8_end     

        _m128iextractepi8_end:
        pop         rbase
        ret
procend

procstart _uX_mm_extract_epi32_0, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrd          dreturn,            xmm0,           0
        ret
procend

procstart _uX_mm_extract_epi32_1, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrd          dreturn,            xmm0,           1
        ret
procend

procstart _uX_mm_extract_epi32_2, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrd          dreturn,            xmm0,           2
        ret
procend

procstart _uX_mm_extract_epi32_3, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrd          dreturn,            xmm0,           3
        ret
procend

procstart _uX_mm_extract_epi32, callconv, dword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 3))
        jmp         _m128iextractepi32_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m128iextractepi32jmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128iextractepi32jmptable]
        mov             rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp             rbx
        endif

        _m128iextractepi32_0 label size_t
        pextrd          dreturn,            xmm0,           0
        jmp         _m128iextractepi32_end
        _m128iextractepi32_1 label size_t
        pextrd          dreturn,            xmm0,           1
        jmp         _m128iextractepi32_end
        _m128iextractepi32_2 label size_t
        pextrd          dreturn,            xmm0,           2
        jmp         _m128iextractepi32_end
        _m128iextractepi32_3 label size_t
        pextrd          dreturn,            xmm0,           3
        ;jmp         _m128iextractepi32_end

        _m128iextractepi32_end:
        pop         rbase
        ret
procend
    
ifdef __X64__
procstart _uX_mm_extract_epi64_0, qword, < >, < >, Inxmm_A:xmmword
        pextrq          rreturn,            xmm0,           0
        ret
procend

procstart _uX_mm_extract_epi64_1, qword, < >, < >, Inxmm_A:xmmword
        pextrq          rreturn,            xmm0,           1
        ret
procend

procstart _uX_mm_extract_epi64, qword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 1))
        jmp         _m128iextractepi64_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m128iextractepi64jmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128iextractepi64jmptable]
        mov             rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp             rbx
        endif
        
        _m128iextractepi64_0 label size_t
        pextrq          rreturn,            xmm0,           0
        jmp         _m128iextractepi64_end
        _m128iextractepi64_1 label size_t
        pextrq          rreturn,            xmm0,           1
        ;jmp         _m128iextractepi64_end

        _m128iextractepi64_end:
        pop         rbase
        ret
procend
endif ;__X64__
    
;************************************
; Horizontal packed word minimum
;************************************
procstart _uX_mm_minpos_epu16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        phminposuw          xmm0,           xmm0
        ret
procend

;************************************
; Packed/single float double precision rounding
;************************************
procstart _uX_mm_round_pd_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_round_pd_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           1
        ret
procend

procstart _uX_mm_round_pd_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           2
        ret
procend

procstart _uX_mm_round_pd_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           3
        ret
procend

procstart _uX_mm_round_pd_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           4
        ret
procend

procstart _uX_mm_round_pd_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           5
        ret
procend

procstart _uX_mm_round_pd_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           6
        ret
procend

procstart _uX_mm_round_pd_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           7
        ret
procend

procstart _uX_mm_round_pd_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           8
        ret
procend

procstart _uX_mm_round_pd_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           9
        ret
procend

procstart _uX_mm_round_pd_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           10
        ret
procend

procstart _uX_mm_round_pd_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           11
        ret
procend

procstart _uX_mm_round_pd_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           12
        ret
procend

procstart _uX_mm_round_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_RoundMode:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 12))
        jmp         _m128droundpd_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m128droundpdjmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128droundpdjmptable]
        mov             rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp             rbx
        endif

        _m128droundpd_0 label size_t
        roundpd             xmm0,           xmm0,           0
        jmp         _m128droundpd_end
        _m128droundpd_1 label size_t
        roundpd             xmm0,           xmm0,           1
        jmp         _m128droundpd_end
        _m128droundpd_2 label size_t
        roundpd             xmm0,           xmm0,           2
        jmp         _m128droundpd_end
        _m128droundpd_3 label size_t
        roundpd             xmm0,           xmm0,           3
        jmp         _m128droundpd_end
        _m128droundpd_4 label size_t
        roundpd             xmm0,           xmm0,           4
        jmp         _m128droundpd_end
        _m128droundpd_5 label size_t
        roundpd             xmm0,           xmm0,           5
        jmp         _m128droundpd_end
        _m128droundpd_6 label size_t
        roundpd             xmm0,           xmm0,           6
        jmp         _m128droundpd_end
        _m128droundpd_7 label size_t
        roundpd             xmm0,           xmm0,           7
        jmp         _m128droundpd_end
        _m128droundpd_8 label size_t
        roundpd             xmm0,           xmm0,           8
        jmp         _m128droundpd_end
        _m128droundpd_9 label size_t
        roundpd             xmm0,           xmm0,           9
        jmp         _m128droundpd_end
        _m128droundpd_10 label size_t
        roundpd             xmm0,           xmm0,           10
        jmp         _m128droundpd_end
        _m128droundpd_11 label size_t
        roundpd             xmm0,           xmm0,           11
        jmp         _m128droundpd_end
        _m128droundpd_12 label size_t
        roundpd             xmm0,           xmm0,           12
        ;jmp         _m128droundpd_end

        _m128droundpd_end:
        pop         rbase
        ret
procend

procstart _uX_mm_round_sd_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_round_sd_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_round_sd_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_round_sd_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_round_sd_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           4
        ret
procend

procstart _uX_mm_round_sd_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           5
        ret
procend

procstart _uX_mm_round_sd_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           6
        ret
procend

procstart _uX_mm_round_sd_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           7
        ret
procend

procstart _uX_mm_round_sd_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           8
        ret
procend

procstart _uX_mm_round_sd_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           9
        ret
procend

procstart _uX_mm_round_sd_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           10
        ret
procend

procstart _uX_mm_round_sd_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           11
        ret
procend

procstart _uX_mm_round_sd_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           12
        ret
procend

procstart _uX_mm_round_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_RoundMode:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 12))
        jmp         _m128droundsd_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam2]
        jmp     dword ptr [_m128droundsdjmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128droundsdjmptable]
        mov             rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp             rbx
        endif

        _m128droundsd_0 label size_t
        roundsd             xmm0,           xmm1,           0
        jmp         _m128droundsd_end
        _m128droundsd_1 label size_t
        roundsd             xmm0,           xmm1,           1
        jmp         _m128droundsd_end
        _m128droundsd_2 label size_t
        roundsd             xmm0,           xmm1,           2
        jmp         _m128droundsd_end
        _m128droundsd_3 label size_t
        roundsd             xmm0,           xmm1,           3
        jmp         _m128droundsd_end
        _m128droundsd_4 label size_t
        roundsd             xmm0,           xmm1,           4
        jmp         _m128droundsd_end
        _m128droundsd_5 label size_t
        roundsd             xmm0,           xmm1,           5
        jmp         _m128droundsd_end
        _m128droundsd_6 label size_t
        roundsd             xmm0,           xmm1,           6
        jmp         _m128droundsd_end
        _m128droundsd_7 label size_t
        roundsd             xmm0,           xmm1,           7
        jmp         _m128droundsd_end
        _m128droundsd_8 label size_t
        roundsd             xmm0,           xmm1,           8
        jmp         _m128droundsd_end
        _m128droundsd_9 label size_t
        roundsd             xmm0,           xmm1,           9
        jmp         _m128droundsd_end
        _m128droundsd_10 label size_t
        roundsd             xmm0,           xmm1,           10
        jmp         _m128droundsd_end
        _m128droundsd_11 label size_t
        roundsd             xmm0,           xmm1,           11
        jmp         _m128droundsd_end
        _m128droundsd_12 label size_t
        roundsd             xmm0,           xmm1,           12
        ;jmp         _m128droundsd_end

        _m128droundsd_end:
        pop         rbase
        ret
procend

procstart _uX_mm_round_ps_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_round_ps_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           1
        ret
procend

procstart _uX_mm_round_ps_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           2
        ret
procend

procstart _uX_mm_round_ps_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           3
        ret
procend

procstart _uX_mm_round_ps_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           4
        ret
procend

procstart _uX_mm_round_ps_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           5
        ret
procend

procstart _uX_mm_round_ps_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           6
        ret
procend

procstart _uX_mm_round_ps_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           7
        ret
procend

procstart _uX_mm_round_ps_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           8
        ret
procend

procstart _uX_mm_round_ps_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           9
        ret
procend

procstart _uX_mm_round_ps_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           10
        ret
procend

procstart _uX_mm_round_ps_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           11
        ret
procend

procstart _uX_mm_round_ps_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           12
        ret
procend

procstart _uX_mm_round_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_RoundMode:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 12))
        jmp         _m128roundps_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m128roundpsjmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128roundpsjmptable]
        mov             rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp             rbx
        endif
        
        _m128roundps_0 label size_t
        roundps             xmm0,           xmm0,           0
        jmp         _m128roundps_end
        _m128roundps_1 label size_t
        roundps             xmm0,           xmm0,           1
        jmp         _m128roundps_end
        _m128roundps_2 label size_t
        roundps             xmm0,           xmm0,           2
        jmp         _m128roundps_end
        _m128roundps_3 label size_t
        roundps             xmm0,           xmm0,           3
        jmp         _m128roundps_end
        _m128roundps_4 label size_t
        roundps             xmm0,           xmm0,           4
        jmp         _m128roundps_end
        _m128roundps_5 label size_t
        roundps             xmm0,           xmm0,           5
        jmp         _m128roundps_end
        _m128roundps_6 label size_t
        roundps             xmm0,           xmm0,           6
        jmp         _m128roundps_end
        _m128roundps_7 label size_t
        roundps             xmm0,           xmm0,           7
        jmp         _m128roundps_end
        _m128roundps_8 label size_t
        roundps             xmm0,           xmm0,           8
        jmp         _m128roundps_end
        _m128roundps_9 label size_t
        roundps             xmm0,           xmm0,           9
        jmp         _m128roundps_end
        _m128roundps_10 label size_t
        roundps             xmm0,           xmm0,           10
        jmp         _m128roundps_end
        _m128roundps_11 label size_t
        roundps             xmm0,           xmm0,           11
        jmp         _m128roundps_end
        _m128roundps_12 label size_t
        roundps             xmm0,           xmm0,           12
        ;jmp         _m128roundps_end

        _m128roundps_end:
        pop         rbase
        ret
procend

procstart _uX_mm_round_ss_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_round_ss_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_round_ss_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_round_ss_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_round_ss_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           4
        ret
procend

procstart _uX_mm_round_ss_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           5
        ret
procend

procstart _uX_mm_round_ss_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           6
        ret
procend

procstart _uX_mm_round_ss_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           7
        ret
procend

procstart _uX_mm_round_ss_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           8
        ret
procend

procstart _uX_mm_round_ss_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           9
        ret
procend

procstart _uX_mm_round_ss_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           10
        ret
procend

procstart _uX_mm_round_ss_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           11
        ret
procend

procstart _uX_mm_round_ss_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           12
        ret
procend

procstart _uX_mm_round_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_RoundMode:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 12))
        jmp         _m128roundss_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam2]
        jmp     dword ptr [_m128roundssjmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128roundssjmptable]
        mov             rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp             rbx
        endif

        _m128roundss_0 label size_t
        roundss             xmm0,           xmm1,           0
        jmp         _m128roundss_end
        _m128roundss_1 label size_t
        roundss             xmm0,           xmm1,           1
        jmp         _m128roundss_end
        _m128roundss_2 label size_t
        roundss             xmm0,           xmm1,           2
        jmp         _m128roundss_end
        _m128roundss_3 label size_t
        roundss             xmm0,           xmm1,           3
        jmp         _m128roundss_end
        _m128roundss_4 label size_t
        roundss             xmm0,           xmm1,           4
        jmp         _m128roundss_end
        _m128roundss_5 label size_t
        roundss             xmm0,           xmm1,           5
        jmp         _m128roundss_end
        _m128roundss_6 label size_t
        roundss             xmm0,           xmm1,           6
        jmp         _m128roundss_end
        _m128roundss_7 label size_t
        roundss             xmm0,           xmm1,           7
        jmp         _m128roundss_end
        _m128roundss_8 label size_t
        roundss             xmm0,           xmm1,           8
        jmp         _m128roundss_end
        _m128roundss_9 label size_t
        roundss             xmm0,           xmm1,           9
        jmp         _m128roundss_end
        _m128roundss_10 label size_t
        roundss             xmm0,           xmm1,           10
        jmp         _m128roundss_end
        _m128roundss_11 label size_t
        roundss             xmm0,           xmm1,           11
        jmp         _m128roundss_end
        _m128roundss_12 label size_t
        roundss             xmm0,           xmm1,           12
        ;jmp         _m128roundss_end

        _m128roundss_end:
        pop         rbase
        ret
procend

;************************************
; ceil/floor intrinsics
;************************************
procstart _uX_mm_floor_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           1
        ret
procend

procstart _uX_mm_ceil_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           2
        ret
procend

procstart _uX_mm_trunc_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundpd             xmm0,           xmm0,           3
        ret
procend

procstart _uX_mm_floor_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_ceil_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_trunc_sd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundsd             xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_floor_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           1
        ret
procend

procstart _uX_mm_ceil_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           2
        ret
procend

procstart _uX_mm_trunc_ps, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        roundps             xmm0,           xmm0,           3
        ret
procend

procstart _uX_mm_floor_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_ceil_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_trunc_ss, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        roundss             xmm0,           xmm1,           3
        ret
procend

;************************************
; Packed integer sign-extension
;************************************
procstart _uX_mm_cvtepi8_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovsxbd            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepi16_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovsxwd            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepi8_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovsxbq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepi32_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovsxdq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepi16_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovsxwq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepi8_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovsxbw            xmm0,           xmm0
        ret
procend

;************************************
; Packed integer zero-extension
;************************************
procstart _uX_mm_cvtepu8_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovzxbd            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepu16_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovzxwd            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepu8_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovzxbq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepu32_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovzxdq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepu16_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovzxwq            xmm0,           xmm0
        ret
procend

procstart _uX_mm_cvtepu8_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pmovzxbw            xmm0,           xmm0
        ret
procend

;************************************
; Pack 8 double words from 2 operands into 8 words
;************************************
procstart _uX_mm_packus_epi32, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        packusdw            xmm0,           xmm1
        ret
procend

;************************************
; Load double quadword using non-temporal aligned hint
;************************************
procstart _uX_mm_stream_load_si128, callconv, xmmword, < >, < >, InXPmm_A:ptr xmmword
        movntdqa            xmm0,       xmmword ptr [rparam0]
        ret
procend

endif ;__MIC__

    end