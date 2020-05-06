
ifndef __MIC__

    include uXx86asm.inc

    .xmm
    option arch:sse
    option evex:0
    
    .data?

    .data

    .const
    
        alignsize_t
        _m128dpermpdjmptable isize_t offset _m128dpermpd_0, offset _m128dpermpd_1, offset _m128dpermpd_2, offset _m128dpermpd_3

    .code
    
    callconvopt
    alignxmmfieldproc
    
procstart _uX_mm_permute_00_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           0
        ret
procend

procstart _uX_mm_permute_01_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           1
        ret
procend

procstart _uX_mm_permute_10_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           2
        ret
procend

procstart _uX_mm_permute_11_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword
        shufpd          xmm0,           xmm0,           3
        ret
procend

procstart _uX_mm_permute_pd, callconv, xmmword, < >, < >, Inxmm_A:xmmword, Inint_Imm:dword
        push         rbase
        .if((rparam1 < 0) || (rparam1 > 3))
        jmp         _m128dpermpd_end
        .endif

        ifdef __X32__
        movzx       rbase,    byte ptr [rparam1]
        jmp     dword ptr [_m128dpermpdjmptable+rbase*size_t_size]
        else
        lea         rbase,    qword ptr [_m128dpermpdjmptable]
        mov         rbase,    qword ptr [rbase+rparam1*size_t_size]
        jmp         rbx
        endif

        _m128dpermpd_0 label size_t
        shufpd          xmm0,           xmm0,           0
        jmp         _m128dpermpd_end
        _m128dpermpd_1 label size_t
        shufpd          xmm0,           xmm0,           1
        jmp         _m128dpermpd_end
        _m128dpermpd_2 label size_t
        shufpd          xmm0,           xmm0,           2
        jmp         _m128dpermpd_end
        _m128dpermpd_3 label size_t
        shufpd          xmm0,           xmm0,           3
        ;jmp         _m128dpermpd_end

        _m128dpermpd_end:
        pop         rbase
        ret
procend

endif ;__MIC__

    end