
ifndef __MIC__

    include uXx86asm.inc

    .xmm
    option arch:sse
    option evex:0

    .data?

    .data

    .const

        alignsize_t
        _m128dshufpdjmptable isize_t offset _m128dshufpd_0, offset _m128dshufpd_1, offset _m128dshufpd_2, offset _m128dshufpd_3

    .code

    callconvopt 
    alignxmmfieldproc

procstart _uX_mm_shuffle_00_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufpd          xmm0,           xmm1,           0
        ret
procend

procstart _uX_mm_shuffle_01_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufpd          xmm0,           xmm1,           1
        ret
procend

procstart _uX_mm_shuffle_10_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufpd          xmm0,           xmm1,           2
        ret
procend

procstart _uX_mm_shuffle_11_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
        shufpd          xmm0,           xmm1,           3
        ret
procend

procstart _uX_mm_shuffle_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
        push         rbase
        .if((rparam2 < 0) || (rparam2 > 3))
        jmp         _m128dshufpd_end
        .endif

        ifdef __X32__
        movzx       rbase,    byte ptr [rparam2]
        jmp     dword ptr [_m128dshufpdjmptable+rbase*size_t_size]
        else
        lea         rbase,    qword ptr [_m128dshufpdjmptable]
        mov         rbase,    qword ptr [rbase+rparam2*size_t_size]
        jmp         rbx
        endif

        _m128dshufpd_0 label size_t
        shufpd          xmm0,           xmm1,           0
        jmp         _m128dshufpd_end
        _m128dshufpd_1 label size_t
        shufpd          xmm0,           xmm1,           1
        jmp         _m128dshufpd_end
        _m128dshufpd_2 label size_t
        shufpd          xmm0,           xmm1,           2
        jmp         _m128dshufpd_end
        _m128dshufpd_3 label size_t
        shufpd          xmm0,           xmm1,           3
        ;jmp         _m128dshufpd_end

        _m128dshufpd_end:
        pop         rbase
        ret
procend

endif ;__MIC__

    end