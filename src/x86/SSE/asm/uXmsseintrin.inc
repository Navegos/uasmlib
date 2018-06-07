
;__uXm128ib textequ <xmmword>
;__uXm128iw textequ <xmmword>
;__uXm128id textequ <xmmword>
;__uXm128iq textequ <xmmword>
;__uXm128i textequ <xmmword>
;__uXm128f textequ <xmmword>
;__uXm128 textequ <xmmword>
;__uXm128d textequ <xmmword>
;__uXm128fd textequ <xmmword>
;__uXm128fid textequ <xmmword>

_uXm_mm_shuffle4 macro V3, V2, V1, V0
    exitm %((V3 shl 6) or (V2 shl 4) or (V1 shl 2) or (V0))
endm

_uXm_mm_shuffler4 macro V0, V1, V2, V3
    exitm %((V0) or (V1 shl 2) or (V2 shl 4) or (V3 shl 6))
endm

_uXm_mm_shuffle2 macro V1, V0
    exitm %((V1 shl 1) or (V0))
endm

_uXm_mm_shuffler2 macro V0, V1
    exitm %((V0) or (V1 shl 1))
endm

_8WordToXmm MACRO par0, par1, par2, par3, par4, par5, par6, par7
Local xmmValue
  .data
  align 16
  xmmValue dw par0, par1, par2, par3, par4, par5, par6, par7
  .code
  EXITM <xmmValue>
ENDM

_uXm_xmm4_const macro functionName:REQ, vectorType:REQ, V1:REQ
		fnex textequ <>
		fnex catstr fnex, <&functionName&>
		public fnex
		fnex catstr fnex, < vectorType>,  < { V1, V1, V1, V1 } >
		
		fnex
endm

_uXm_xmm4_const4 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ, V3:REQ, V4:REQ
		fnex textequ <>
		fnex catstr fnex, <&functionName&>
		public fnex
		fnex catstr fnex, < vectorType>, < { V1, V2, V3, V4 } >
		
		fnex
endm

_uXm_xmm2_const macro functionName:REQ, vectorType:REQ, V1:REQ
		fnex textequ <>
		fnex catstr fnex, <&functionName&>
		public fnex
		fnex catstr fnex, < vectorType>,  < { V1, V1 } >
		
		fnex
endm

_uXm_xmm2_const4 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ
		fnex textequ <>
		fnex catstr fnex, <&functionName&>
		public fnex
		fnex catstr fnex, < vectorType>, < { V1, V2 } >
		
		fnex
endm
