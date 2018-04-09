
__uXm128ib textequ <xmmword>
__uXm128iw textequ <xmmword>
__uXm128id textequ <xmmword>
__uXm128iq textequ <xmmword>
__uXm128i textequ <xmmword>
__uXm128f textequ <xmmword>
__uXm128 textequ <xmmword>
__uXm128d textequ <xmmword>
__uXm128fd textequ <xmmword>
__uXm128fed textequ <xmmword>

uXm_mm_shuffle4 macro V3, V2, V1, V0
    exitm %((V3 shl 6) or (V2 shl 4) or (V1 shl 2) or (V0))
endm

uXm_mm_shuffler4 macro V0, V1, V2, V3
    exitm %((V0) or (V1 shl 2) or (V2 shl 4) or (V3 shl 6))
endm

uXm_mm_shuffle2 macro V1, V0
    exitm %((V1 shl 1) or (V0))
endm

uXm_mm_shuffler2 macro V0, V1
    exitm %((V0) or (V1 shl 1))
endm
