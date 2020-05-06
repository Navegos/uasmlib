
ifndef __MIC__

    include uXx86asm.inc

    .xmm
    option arch:sse
    option evex:0

    .data?

    .data

    .const

        alignsize_t
        _m128iextepi16jmptable isize_t offset _m128iextepi16_0, offset _m128iextepi16_1, offset _m128iextepi16_2, offset _m128iextepi16_3, offset _m128iextepi16_4, offset _m128iextepi16_5, \
                                       offset _m128iextepi16_6, offset _m128iextepi16_7

        alignsize_t
        _m128iinsepi16jmptable isize_t offset _m128iinsepi16_0, offset _m128iinsepi16_1, offset _m128iinsepi16_2, offset _m128iinsepi16_3, offset _m128iinsepi16_4, offset _m128iinsepi16_5, \
                                       offset _m128iinsepi16_6, offset _m128iinsepi16_7

        alignsize_t
        _m128icvtelts128epi64jmptable isize_t offset _m128icvtelts128epi64_0, offset _m128icvtelts128epi64_1

        alignsize_t
        _m128icvtelts128epi64xjmptable isize_t offset _m128icvtelts128epi64x_0, offset _m128icvtelts128epi64x_1

        alignsize_t
        _m128icvtelts128epi32jmptable isize_t offset _m128icvtelts128epi32_0, offset _m128icvtelts128epi32_1, offset _m128icvtelts128epi32_2, offset _m128icvtelts128epi32_3

        alignsize_t
        _m128icvtelts128epi16jmptable isize_t offset _m128icvtelts128epi16_0, offset _m128icvtelts128epi16_1, offset _m128icvtelts128epi16_2, offset _m128icvtelts128epi16_3, offset _m128icvtelts128epi16_4, \
                                              offset _m128icvtelts128epi16_5, offset _m128icvtelts128epi16_6, offset _m128icvtelts128epi16_7

        alignsize_t
        _m128icvtelts128epi8jmptable isize_t offset _m128icvtelts128epi8_0, offset _m128icvtelts128epi8_1, offset _m128icvtelts128epi8_2, offset _m128icvtelts128epi8_3, offset _m128icvtelts128epi8_4, \
                                             offset _m128icvtelts128epi8_5, offset _m128icvtelts128epi8_6, offset _m128icvtelts128epi8_7, offset _m128icvtelts128epi8_8, offset _m128icvtelts128epi8_9, \
                                             offset _m128icvtelts128epi8_10, offset _m128icvtelts128epi8_11, offset _m128icvtelts128epi8_12, offset _m128icvtelts128epi8_13, offset _m128icvtelts128epi8_14, \
                                             offset _m128icvtelts128epi8_15

        alignsize_t
        _m128icvteltsepi64s128jmptable isize_t offset _m128icvteltsepi64s128_0, offset _m128icvteltsepi64s128_1

        alignsize_t
        _m128icvteltsepi64xs128jmptable isize_t offset _m128icvteltsepi64xs128_0, offset _m128icvteltsepi64xs128_1

        alignsize_t
        _m128icvteltsepi32s128jmptable isize_t offset _m128icvteltsepi32s128_0, offset _m128icvteltsepi32s128_1, offset _m128icvteltsepi32s128_2, offset _m128icvteltsepi32s128_3

        alignsize_t
        _m128icvteltsepi16s128jmptable isize_t offset _m128icvteltsepi16s128_0, offset _m128icvteltsepi16s128_1, offset _m128icvteltsepi16s128_2, offset _m128icvteltsepi16s128_3, \
                                               offset _m128icvteltsepi16s128_4, offset _m128icvteltsepi16s128_5, offset _m128icvteltsepi16s128_6, offset _m128icvteltsepi16s128_7

        alignsize_t
        _m128icvteltsepi8s128jmptable isize_t offset _m128icvteltsepi8s128_0, offset _m128icvteltsepi8s128_1, offset _m128icvteltsepi8s128_2, offset _m128icvteltsepi8s128_3, offset _m128icvteltsepi8s128_4, \
                                             offset _m128icvteltsepi8s128_5, offset _m128icvteltsepi8s128_6, offset _m128icvteltsepi8s128_7, offset _m128icvteltsepi8s128_8, offset _m128icvteltsepi8s128_9, \
                                             offset _m128icvteltsepi8s128_10, offset _m128icvteltsepi8s128_11, offset _m128icvteltsepi8s128_12, offset _m128icvteltsepi8s128_13, offset _m128icvteltsepi8s128_14, \
                                             offset _m128icvteltsepi8s128_15

    externdef __uX_CPUFeatures_SSE41:dword


    .code

    _uX_CPUFeatures_has_SSE41 proto callconv (dword)

    callconvopt
    alignxmmfieldproc

procstart _uX_mm_extract_epi16_0, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        0
        ret
procend

procstart _uX_mm_extract_epi16_1, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        1
        ret
procend

procstart _uX_mm_extract_epi16_2, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        2
        ret
procend

procstart _uX_mm_extract_epi16_3, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        3
        ret
procend

procstart _uX_mm_extract_epi16_4, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        4
        ret
procend

procstart _uX_mm_extract_epi16_5, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        5
        ret
procend

procstart _uX_mm_extract_epi16_6, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        6
        ret
procend

procstart _uX_mm_extract_epi16_7, callconv, dword, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        7
        ret
procend

procstart _uX_mm_extract_epi16, callconv, dword, < >, < >, Inxmm_A:xmmword, _Imm8:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 7))
        jmp         _m128iextepi16_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam1
        jmp     dword ptr [_m128iextepi16jmptable+rbase*size_t_size]
        else
        lea          rbase,        qword ptr [_m128iextepi16jmptable]
        mov          rbase,        qword ptr [rbase+rparam1*size_t_size]
        jmp          rbx
        endif

        _m128iextepi16_0 label size_t
        pextrw       dret,         xmm0,        0
        jmp         _m128iextepi16_end
        _m128iextepi16_1 label size_t
        pextrw       dret,         xmm0,        1
        jmp         _m128iextepi16_end
        _m128iextepi16_2 label size_t
        pextrw       dret,         xmm0,        2
        jmp         _m128iextepi16_end
        _m128iextepi16_3 label size_t
        pextrw       dret,         xmm0,        3
        jmp         _m128iextepi16_end
        _m128iextepi16_4 label size_t
        pextrw       dret,         xmm0,        4
        jmp         _m128iextepi16_end
        _m128iextepi16_5 label size_t
        pextrw       dret,         xmm0,        5
        jmp         _m128iextepi16_end
        _m128iextepi16_6 label size_t
        pextrw       dret,         xmm0,        6
        jmp         _m128iextepi16_end
        _m128iextepi16_7 label size_t
        pextrw       dret,         xmm0,        7
        ;jmp         _m128iextepi16_end

        _m128iextepi16_end:
        pop         rbase
        ret
procend

procstart _uX_mm_insert_epi16_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_Bword
        pinsrw       xmm0,        dparam1,         0
        ret
procend

procstart _uX_mm_insert_epi16_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_Bword
        pinsrw       xmm0,        dparam1,         1
        ret
procend

procstart _uX_mm_insert_epi16_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_Bword
        pinsrw       xmm0,        dparam1,         2
        ret
procend

procstart _uX_mm_insert_epi16_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_Bword
        pinsrw       xmm0,        dparam1,         3
        ret
procend

procstart _uX_mm_insert_epi16_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_Bword
        pinsrw       xmm0,        dparam1,         4
        ret
procend

procstart _uX_mm_insert_epi16_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_Bword
        pinsrw       xmm0,        dparam1,         5
        ret
procend

procstart _uX_mm_insert_epi16_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_Bword
        pinsrw       xmm0,        dparam1,         6
        ret
procend

procstart _uX_mm_insert_epi16_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_Bword
        pinsrw       xmm0,        dparam1,         7
        ret
procend

procstart _uX_mm_insert_epi16, callconv, xmmword, < >, < >, Inxmm_A:xmmword, InInt_B:word, _Imm8:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 7))
        jmp         _m128iinsepi16_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam2
        jmp     dword ptr [_m128iinsepi16jmptable+rbase*size_t_size]
        else
        lea          rbase,    qword ptr [_m128iinsepi16jmptable]
        mov          rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp          rbx
        endif

        _m128iinsepi16_0 label size_t
        pinsrw       xmm0,        dparam1,         0
        jmp         _m128iinsepi16_end
        _m128iinsepi16_1 label size_t
        pinsrw       xmm0,        dparam1,         1
        jmp         _m128iinsepi16_end
        _m128iinsepi16_2 label size_t
        pinsrw       xmm0,        dparam1,         2
        jmp         _m128iinsepi16_end
        _m128iinsepi16_3 label size_t
        pinsrw       xmm0,        dparam1,         3
        jmp         _m128iinsepi16_end
        _m128iinsepi16_4 label size_t
        pinsrw       xmm0,        dparam1,         4
        jmp         _m128iinsepi16_end
        _m128iinsepi16_5 label size_t
        pinsrw       xmm0,        dparam1,         5
        jmp         _m128iinsepi16_end
        _m128iinsepi16_6 label size_t
        pinsrw       xmm0,        dparam1,         6
        jmp         _m128iinsepi16_end
        _m128iinsepi16_7 label size_t
        pinsrw       xmm0,        dparam1,         7
        ;jmp         _m128iinsepi16_end

        _m128iinsepi16_end:
        pop         rbase
        ret
procend

procstart _uX_mm_cvtsi128_epi64_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        movq         xmm0,         xmm0
        ret
procend

procstart _uX_mm_cvtsi128_epi64_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        pshufd       xmm0,         xmm0,         shuffler4(2,3,0,1)
        movq         xmm0,         xmm0
        ret
procend

procstart _uX_mm_cvtsi128_epi64, callconv, xmmword, < >, < >, Inxmm_A:xmmword, _Imm8:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 1))
        jmp         _m128icvtelts128epi64_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam1
        jmp     dword ptr [_m128icvtelts128epi64jmptable+rbase*size_t_size]
        else
        lea          rbase,    qword ptr [_m128icvtelts128epi64jmptable]
        mov          rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp          rbx
        endif

        _m128icvtelts128epi64_0 label size_t
        movq         xmm0,         xmm0
        jmp         _m128icvtelts128epi64_end
        _m128icvtelts128epi64_1 label size_t
        pshufd       xmm0,         xmm0,         shuffler4(2,3,0,1)
        movq         xmm0,         xmm0
        ;jmp         _m128icvtelts128epi64_end

        _m128icvtelts128epi64_end:
        pop         rbase
        ret
procend

ifdef __X64__
procstart _uX_mm_cvtsi128_epi64x_0, callconv, qword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrq       rret,         xmm0,        0
        .else
        movq         rret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi64x_1, callconv, qword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrq        rret,         xmm0,        1
        .else
        pshufd        xmm0,         xmm0,         shuffler4(2,3,0,1)
        movq          rret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi64x, callconv, qword, < >, < >, Inxmm_A:xmmword, _Imm8:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 1))
        jmp         _m128icvtelts128epi64x_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam1
        jmp     dword ptr [_m128icvtelts128epi64xjmptable+rbase*size_t_size]
        else
        lea          rbase,    qword ptr [_m128icvtelts128epi64xjmptable]
        mov          rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp          rbx
        endif

        _m128icvtelts128epi64x_0 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrq       rret,         xmm0,        0
        .else
        movq         rret,         xmm0
        .endif
        jmp        _m128icvtelts128epi64x_end
        _m128icvtelts128epi64x_1 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrq       rret,         xmm0,        1
        .else
        pshufd       xmm0,         xmm0,         shuffler4(2,3,0,1)
        movq         rret,         xmm0
        .endif
        ;jmp        _m128icvtelts128epi64x_end

        _m128icvtelts128epi64x_end:
        pop         rbase
        ret
procend
endif

procstart _uX_mm_cvtsi128_epi32_0, callconv, dword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrd       dret,         xmm0,        0
        .else
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi32_1, callconv, dword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrd       dret,         xmm0,        1
        .else
        pshufd       xmm0,         xmm0,         shuffler4(1,0,2,3)
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi32_2, callconv, dword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrd       dret,         xmm0,        2
        .else
        pshufd       xmm0,         xmm0,         shuffler4(2,1,0,3)
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi32_3, callconv, dword, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrd       dret,         xmm0,        3
        .else
        pshufd       xmm0,         xmm0,         shuffler4(3,1,2,0)
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi32, callconv, dword, < >, < >, Inxmm_A:xmmword, _Imm8:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 3))
        jmp         _m128icvtelts128epi32_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam1
        jmp     dword ptr [_m128icvtelts128epi32jmptable+rbase*size_t_size]
        else
        lea          rbase,    qword ptr [_m128icvtelts128epi32jmptable]
        mov          rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp          rbx
        endif

        _m128icvtelts128epi32_0 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrd       dret,         xmm0,        0
        .else
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi32_end
        _m128icvtelts128epi32_1 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrd       dret,         xmm0,        1
        .else
        pshufd       xmm0,         xmm0,         shuffler4(1,0,2,3)
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi32_end
        _m128icvtelts128epi32_2 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrd       dret,         xmm0,        2
        .else
        pshufd       xmm0,         xmm0,         shuffler4(2,1,0,3)
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi32_end
        _m128icvtelts128epi32_3 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrd       dret,         xmm0,        3
        .else
        pshufd       xmm0,         xmm0,         shuffler4(3,1,2,0)
        movd         dret,         xmm0
        .endif
        ;jmp        _m128icvtelts128epi32_end

        _m128icvtelts128epi32_end:
        pop         rbase
        ret
procend

procstart _uX_mm_cvtsi128_epi16_0, callconv, word, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        0
        ret
procend

procstart _uX_mm_cvtsi128_epi16_1, callconv, word, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        1
        ret
procend

procstart _uX_mm_cvtsi128_epi16_2, callconv, word, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        2
        ret
procend

procstart _uX_mm_cvtsi128_epi16_3, callconv, word, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        3
        ret
procend

procstart _uX_mm_cvtsi128_epi16_4, callconv, word, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        4
        ret
procend

procstart _uX_mm_cvtsi128_epi16_5, callconv, word, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        5
        ret
procend

procstart _uX_mm_cvtsi128_epi16_6, callconv, word, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        6
        ret
procend

procstart _uX_mm_cvtsi128_epi16_7, callconv, word, < >, < >, Inxmm_A:xmmword
        pextrw       dret,         xmm0,        7
        ret
procend

procstart _uX_mm_cvtsi128_epi16, callconv, word, < >, < >, Inxmm_A:xmmword, Inint_BSelect:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 7))
        jmp         _m128icvtelts128epi16_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam1
        jmp     dword ptr [_m128icvtelts128epi16jmptable+rbase*size_t_size]
        else
        lea          rbase,    qword ptr [_m128icvtelts128epi16jmptable]
        mov          rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp          rbx
        endif

        _m128icvtelts128epi16_0 label size_t
        pextrw       dret,         xmm0,        0
        jmp        _m128icvtelts128epi16_end
        _m128icvtelts128epi16_1 label size_t
        pextrw       dret,         xmm0,        1
        jmp        _m128icvtelts128epi16_end
        _m128icvtelts128epi16_2 label size_t
        pextrw       dret,         xmm0,        2
        jmp        _m128icvtelts128epi16_end
        _m128icvtelts128epi16_3 label size_t
        pextrw       dret,         xmm0,        3
        jmp        _m128icvtelts128epi16_end
        _m128icvtelts128epi16_4 label size_t
        pextrw       dret,         xmm0,        4
        jmp        _m128icvtelts128epi16_end
        _m128icvtelts128epi16_5 label size_t
        pextrw       dret,         xmm0,        5
        jmp        _m128icvtelts128epi16_end
        _m128icvtelts128epi16_6 label size_t
        pextrw       dret,         xmm0,        6
        jmp        _m128icvtelts128epi16_end
        _m128icvtelts128epi16_7 label size_t
        pextrw       dret,         xmm0,        7
        ;jmp        _m128icvtelts128epi16_end

        _m128icvtelts128epi16_end:
        pop         rbase
        ret
procend

procstart _uX_mm_cvtsi128_epi8_0, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        0
        .else
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_1, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        1
        .else
        psrldq       xmm0,         1
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_2, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        2
        .else
        psrldq       xmm0,         2
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_3, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        3
        .else
        psrldq       xmm0,         3
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_4, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        4
        .else
        psrldq       xmm0,         4
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_5, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        5
        .else
        psrldq       xmm0,         5
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_6, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        6
        .else
        psrldq       xmm0,         6
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_7, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        7
        .else
        psrldq       xmm0,         7
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_8, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        8
        .else
        psrldq       xmm0,         8
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_9, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        9
        .else
        psrldq       xmm0,         9
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_10, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        10
        .else
        psrldq       xmm0,         10
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_11, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        11
        .else
        psrldq       xmm0,         11
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_12, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        12
        .else
        psrldq       xmm0,         12
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_13, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        13
        .else
        psrldq       xmm0,         13
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_14, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        14
        .else
        psrldq       xmm0,         14
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8_15, callconv, byte, < >, < >, Inxmm_A:xmmword
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        15
        .else
        psrldq       xmm0,         15
        movd         dret,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtsi128_epi8, callconv, byte, < >, < >, Inxmm_A:xmmword, Inint_BSelect:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 15))
        jmp         _m128icvtelts128epi8_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam1
        jmp     dword ptr [_m128icvtelts128epi8jmptable+rbase*size_t_size]
        else
        lea          rbase,    qword ptr [_m128icvtelts128epi8jmptable]
        mov          rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp          rbx
        endif

        _m128icvtelts128epi8_0 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        0
        .else
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_1 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        1
        .else
        psrldq       xmm0,         1
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_2 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        2
        .else
        psrldq       xmm0,         2
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_3 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        3
        .else
        psrldq       xmm0,         3
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_4 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        4
        .else
        psrldq       xmm0,         4
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_5 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        5
        .else
        psrldq       xmm0,         5
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_6 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        6
        .else
        psrldq       xmm0,         6
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_7 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        7
        .else
        psrldq       xmm0,         7
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_8 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        8
        .else
        psrldq       xmm0,         8
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_9 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        9
        .else
        psrldq       xmm0,         9
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_10 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        10
        .else
        psrldq       xmm0,         10
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_11 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        11
        .else
        psrldq       xmm0,         11
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_12 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        12
        .else
        psrldq       xmm0,         12
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_13 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        13
        .else
        psrldq       xmm0,         13
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_14 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        14
        .else
        psrldq       xmm0,         14
        movd         dret,         xmm0
        .endif
        jmp        _m128icvtelts128epi8_end
        _m128icvtelts128epi8_15 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        15
        .else
        psrldq       xmm0,         15
        movd         dret,         xmm0
        .endif
        ;jmp        _m128icvtelts128epi8_end

        _m128icvtelts128epi8_end:
        pop         rbase
        ret
procend

procstart _uX_mm_cvtepi64_si128_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        movsd         xmm0,         xmm1
        movdqa        xmm0,         xmm0
        ret
procend

procstart _uX_mm_cvtepi64_si128_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        pshufd        xmm0,         xmm0,         shuffler4(0,1,0,1)
        movsd         xmm0,         xmm1
        pshufd        xmm0,         xmm0,         shuffler4(2,3,0,1)
        ret
procend

procstart _uX_mm_cvtepi64_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, _Imm8:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 1))
        jmp         _m128icvteltsepi64s128_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam2
        jmp     dword ptr [_m128icvteltsepi64s128jmptable+rbase*size_t_size]
        else
        lea          rbase,    qword ptr [_m128icvteltsepi64s128jmptable]
        mov          rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp          rbx
        endif

        _m128icvteltsepi64s128_0 label size_t
        movsd        xmm0,         xmm1
        movdqa       xmm0,         xmm0
        jmp       _m128icvteltsepi64s128_end
        _m128icvteltsepi64s128_1 label size_t
        pshufd       xmm0,         xmm0,         shuffler4(0,1,0,1)
        movsd        xmm0,         xmm1
        pshufd       xmm0,         xmm0,         shuffler4(2,3,0,1)
        ;jmp       _m128icvteltsepi64s128_end

        _m128icvteltsepi64s128_end:
        pop         rbase
        ret
procend

ifdef __X64__
procstart _uX_mm_cvtepi64x_si128_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Q:qword
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrq       xmm0,         rparam1,        0
        .else
        movq         xmm1,         rparam1
        movsd        xmm0,         xmm1
        movdqa       xmm0,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtepi64x_si128_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Q:qword
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrq       xmm0,         rparam1,        1
        .else
        movq         xmm1,         rparam1
        pshufd       xmm0,         xmm0,         shuffler4(0,1,0,1)
        movsd        xmm0,         xmm1
        pshufd       xmm0,         xmm0,         shuffler4(2,3,0,1)
        .endif
        ret
procend

procstart _uX_mm_cvtepi64x_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Q:qword, _Imm8:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 1))
        jmp         _m128icvteltsepi64xs128_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam2
        jmp     dword ptr [_m128icvteltsepi64xs128jmptable+rbase*size_t_size]
        else
        lea          rbase,    qword ptr [_m128icvteltsepi64xs128jmptable]
        mov          rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp          rbx
        endif

        _m128icvteltsepi64xs128_0 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrq       xmm0,         rparam1,        0
        .else
        movq         xmm1,         rparam1
        movsd        xmm0,         xmm1
        movdqa       xmm0,         xmm0
        .endif
        jmp       _m128icvteltsepi64xs128_end
        _m128icvteltsepi64xs128_1 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrq       xmm0,         rparam1,        1
        .else
        movq         xmm1,         rparam1
        pshufd       xmm0,         xmm0,         shuffler4(0,1,0,1)
        movsd        xmm0,         xmm1
        pshufd       xmm0,         xmm0,         shuffler4(2,3,0,1)
        .endif
        ;jmp       _m128icvteltsepi64xs128_end

        _m128icvteltsepi64xs128_end:
        pop         rbase
        ret
procend
endif

procstart _uX_mm_cvtepi32_si128_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_D:dword
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrd       xmm0,         dparam1,        0
        .else
        movd         xmm1,         dparam1
        movss        xmm0,         xmm1
        movdqa       xmm0,         xmm0
        .endif
        ret
procend

procstart _uX_mm_cvtepi32_si128_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_D:dword
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrd       xmm0,         dparam1,        1
        .else
        movd         xmm1,         dparam1
        pshufd       xmm0,         xmm0,         shuffler4(1,0,2,3)
        movss        xmm0,         xmm1
        pshufd       xmm0,         xmm0,         shuffler4(1,0,2,3)
        .endif
        ret
procend

procstart _uX_mm_cvtepi32_si128_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_D:dword
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrd       xmm0,         dparam1,        2
        .else
        movd         xmm1,         dparam1
        pshufd       xmm0,         xmm0,         shuffler4(2,1,0,3)
        movss        xmm0,         xmm1
        pshufd       xmm0,         xmm0,         shuffler4(2,1,0,3)
        .endif
        ret
procend

procstart _uX_mm_cvtepi32_si128_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_D:dword
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrd       xmm0,         dparam1,        3
        .else
        movd         xmm1,         dparam1
        pshufd       xmm0,         xmm0,         shuffler4(3,1,2,0)
        movss        xmm0,         xmm1
        pshufd       xmm0,         xmm0,         shuffler4(3,1,2,0)
        .endif
        ret
procend

procstart _uX_mm_cvtepi32_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_D:dword, _Imm8:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 3))
        jmp         _m128icvteltsepi32s128_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam2
        jmp     dword ptr [_m128icvteltsepi32s128jmptable+rbase*size_t_size]
        else
        lea          rbase,    qword ptr [_m128icvteltsepi32s128jmptable]
        mov          rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp          rbx
        endif

        _m128icvteltsepi32s128_0 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrd       xmm0,         dparam1,        0
        .else
        movd         xmm1,         dparam1
        movss        xmm0,         xmm1
        movdqa       xmm0,         xmm0
        .endif
        jmp       _m128icvteltsepi32s128_end
        _m128icvteltsepi32s128_1 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrd       xmm0,         dparam1,        1
        .else
        movd         xmm1,         dparam1
        pshufd       xmm0,         xmm0,         shuffler4(1,0,2,3)
        movss        xmm0,         xmm1
        pshufd       xmm0,         xmm0,         shuffler4(1,0,2,3)
        .endif
        jmp       _m128icvteltsepi32s128_end
        _m128icvteltsepi32s128_2 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrd       xmm0,         dparam1,        2
        .else
        movd         xmm1,         dparam1
        pshufd       xmm0,         xmm0,         shuffler4(2,1,0,3)
        movss        xmm0,         xmm1
        pshufd       xmm0,         xmm0,         shuffler4(2,1,0,3)
        .endif
        jmp       _m128icvteltsepi32s128_end
        _m128icvteltsepi32s128_3 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrd       xmm0,         dparam1,        3
        .else
        movd         xmm1,         dparam1
        pshufd       xmm0,         xmm0,         shuffler4(3,1,2,0)
        movss        xmm0,         xmm1
        pshufd       xmm0,         xmm0,         shuffler4(3,1,2,0)
        .endif
        ;jmp       _m128icvteltsepi32s128_end

        _m128icvteltsepi32s128_end:
        pop         rbase
        ret
procend

procstart _uX_mm_cvtepi16_si128_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_W:word
        pinsrw       xmm0,         dparam1,        0
        ret
procend

procstart _uX_mm_cvtepi16_si128_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_W:word
        pinsrw       xmm0,         dparam1,        1
        ret
procend

procstart _uX_mm_cvtepi16_si128_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_W:word
        pinsrw       xmm0,         dparam1,        2
        ret
procend

procstart _uX_mm_cvtepi16_si128_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_W:word
        pinsrw       xmm0,         dparam1,        3
        ret
procend

procstart _uX_mm_cvtepi16_si128_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_W:word
        pinsrw       xmm0,         dparam1,        4
        ret
procend

procstart _uX_mm_cvtepi16_si128_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_W:word
        pinsrw       xmm0,         dparam1,        5
        ret
procend

procstart _uX_mm_cvtepi16_si128_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_W:word
        pinsrw       xmm0,         dparam1,        6
        ret
procend

procstart _uX_mm_cvtepi16_si128_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_W:word
        pinsrw       xmm0,         dparam1,        7
        ret
procend

procstart _uX_mm_cvtepi16_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_W:word, Inint_BSelect:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 7))
        jmp         _m128icvteltsepi16s128_end
        .endif

        ifdef __X32__
        movzx        rbase,         bparam2
        jmp     dword ptr [_m128icvteltsepi16s128jmptable+rbase*size_t_size]
        else
        lea          rbase,    qword ptr [_m128icvteltsepi16s128jmptable]
        mov          rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp          rbx
        endif

        _m128icvteltsepi16s128_0 label size_t
        pinsrw       xmm0,         dparam1,        0
        jmp       _m128icvteltsepi16s128_end
        _m128icvteltsepi16s128_1 label size_t
        pinsrw       xmm0,         dparam1,        1
        jmp       _m128icvteltsepi16s128_end
        _m128icvteltsepi16s128_2 label size_t
        pinsrw       xmm0,         dparam1,        2
        jmp       _m128icvteltsepi16s128_end
        _m128icvteltsepi16s128_3 label size_t
        pinsrw       xmm0,         dparam1,        3
        jmp       _m128icvteltsepi16s128_end
        _m128icvteltsepi16s128_4 label size_t
        pinsrw       xmm0,         dparam1,        4
        jmp       _m128icvteltsepi16s128_end
        _m128icvteltsepi16s128_5 label size_t
        pinsrw       xmm0,         dparam1,        5
        jmp       _m128icvteltsepi16s128_end
        _m128icvteltsepi16s128_6 label size_t
        pinsrw       xmm0,         dparam1,        6
        jmp       _m128icvteltsepi16s128_end
        _m128icvteltsepi16s128_7 label size_t
        pinsrw       xmm0,         dparam1,        7
        ;jmp       _m128icvteltsepi16s128_end

        _m128icvteltsepi16s128_end:
        pop         rbase
        ret
procend

procstart _uX_mm_cvtepi8_si128_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        0
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        1
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         1
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        2
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         2
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        3
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         3
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        4
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         4
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        5
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         5
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        6
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         6
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        7
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         7
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        8
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         8
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_9, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        9
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         9
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_10, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        10
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         10
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_11, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        11
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         11
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_12, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        12
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         12
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_13, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        13
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         13
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_14, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        14
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         14
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128_15, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        15
        .else
        movzx        dparam1,      bparam1
        movd         xmm0,         dparam1
        pslldq       xmm0,         15
        .endif
        ret
procend

procstart _uX_mm_cvtepi8_si128, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_B:byte, Inint_BSelect:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 15))
        jmp         _m128icvteltsepi8s128_end
        .endif

        ifdef __X32__
        movzx       rbase,         bparam2
        jmp     dword ptr [_m128icvteltsepi8s128jmptable+rbase*size_t_size]
        else
        lea         rbase,    qword ptr [_m128icvteltsepi8s128jmptable]
        mov         rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp         rbx
        endif

        _m128icvteltsepi8s128_0 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        0
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_1 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        1
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      1
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_2 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        2
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      2
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_3 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        3
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      3
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_4 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        4
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      4
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_5 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        5
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      5
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_6 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        6
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      6
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_7 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        7
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      7
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_8 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        8
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      8
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_9 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        9
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      9
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_10 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        10
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      10
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_11 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        11
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      11
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_12 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        12
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      12
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_13 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        13
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      13
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_14 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        14
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      14
        .endif
        jmp        _m128icvteltsepi8s128_end
        _m128icvteltsepi8s128_15 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pinsrb       xmm0,         dparam1,        15
        .else
        movzx        dparam1,   bparam1
        movd         xmm0,      dparam1
        pslldq       xmm0,      15
        .endif
        ;jmp        _m128icvteltsepi8s128_end

        _m128icvteltsepi8s128_end:
        pop         rbase
        ret
procend

        alignsize_t
        _m128islliepi8j0jmptable isize_t offset _m128islliepi8j0_0, offset _m128islliepi8j0_1, offset _m128islliepi8j0_2, offset _m128islliepi8j0_3, offset _m128islliepi8j0_4, \
                                         offset _m128islliepi8j0_5, offset _m128islliepi8j0_6, offset _m128islliepi8j0_7, offset _m128islliepi8j0_8, offset _m128islliepi8j0_9, \
                                         offset _m128islliepi8j0_10, offset _m128islliepi8j0_11, offset _m128islliepi8j0_12, offset _m128islliepi8j0_13, offset _m128islliepi8j0_14, \
                                         offset _m128islliepi8j0_15


procstart _uX_mm_slli_epi8_0, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        push         rbase
        .for (rparam1 = 0: rparam1 < 16: ++rparam1)
        .if((rparam1 < 0) || (rparam1 > 15))
        jmp         _m128islliepi8j0_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m128islliepi8j0jmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128islliepi8j0jmptable]
        mov             rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp             rbx
        endif

        _m128islliepi8j0_0 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        0
        shl          bret,         0
        pinsrb       xmm0,         dret,        0
        .else
        movd         dret,         xmm0
        shl          bret,         0
        movzx        dret,         bret
        movd         xmm0,         dret
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_1 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        pextrb       dret,         xmm0,        1
        shl          bret,         0
        pinsrb       xmm0,         dret,        1
        .else
        psrldq       xmm0,         1
        movd         dret,         xmm0
        shl          bret,         0
        movzx        dret,         bret
        movd         xmm0,         dret
        pslldq       xmm0,         1
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_2 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_3 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_4 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_5 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_6 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_7 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_8 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_9 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_10 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_11 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_12 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_13 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_14 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        jmp         _m128islliepi8j0_end
        _m128islliepi8j0_15 label size_t
        .if (__uX_CPUFeatures_SSE41 == true)
        .else
        .endif
        ;jmp         _m128islliepi8j0_end

        _m128islliepi8j0_end:
        .endf
        pop         rbase
        ret
procend

procstart _uX_mm_slli_epi8_1, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           1
        ret
procend

procstart _uX_mm_slli_epi8_2, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           2
        ret
procend

procstart _uX_mm_slli_epi8_3, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           3
        ret
procend

procstart _uX_mm_slli_epi8_4, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           4
        ret
procend

procstart _uX_mm_slli_epi8_5, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           5
        ret
procend

procstart _uX_mm_slli_epi8_6, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           6
        ret
procend

procstart _uX_mm_slli_epi8_7, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        psllw           xmm0,           7
        ret
procend

procstart _uX_mm_slli_epi8, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase
        .if(rparam1 < 0)
        jmp         _m128islliepi8_end
        .endif

        .if(rparam1 > 15)
        pxor          xmm0,           xmm0
        jmp         _m128islliepi8_end
        .endif

        ifdef __X32__
        movzx           rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m128islliepi8jmptable+rbase*size_t_size]
        else
        lea             rbase,    qword ptr [_m128islliepi8jmptable]
        mov             rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp             rbx
        endif

        _m128islliepi8_0 label size_t
        psllw           xmm0,           0
        jmp         _m128islliepi8_end
        _m128islliepi8_1 label size_t
        psllw           xmm0,           1
        jmp         _m128islliepi8_end
        _m128islliepi8_2 label size_t
        psllw           xmm0,           2
        jmp         _m128islliepi8_end
        _m128islliepi8_3 label size_t
        psllw           xmm0,           3
        jmp         _m128islliepi8_end
        _m128islliepi8_4 label size_t
        psllw           xmm0,           4
        jmp         _m128islliepi8_end
        _m128islliepi8_5 label size_t
        psllw           xmm0,           5
        jmp         _m128islliepi8_end
        _m128islliepi8_6 label size_t
        psllw           xmm0,           6
        jmp         _m128islliepi8_end
        _m128islliepi8_7 label size_t
        psllw           xmm0,           7
        ;jmp         _m128islliepi8_end

        _m128islliepi8_end:
        pop         rbase
        ret
procend

endif ;__MIC__

    end