
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

_uXm_xmm16_const macro functionName:REQ, vectorType:REQ, V1:REQ
		xmm16fnex textequ <>
		xmm16fnex catstr xmm16fnex, <&functionName&>
		public xmm16fnex
		xmm16fnex catstr xmm16fnex, < vectorType>,  < { V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1 } >
		
		xmm16fnex
endm

_uXm_xmm16_const16 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ, V3:REQ, V4:REQ, V5:REQ, V6:REQ, V7:REQ, V8:REQ, V9:REQ, V10:REQ, V11:REQ, V12:REQ, V13:REQ, V14:REQ, V15:REQ, V16:REQ
		xmm16fnex16 textequ <>
		xmm16fnex16 catstr xmm16fnex16, <&functionName&>
		public xmm16fnex16
		xmm16fnex16 catstr xmm16fnex16, < vectorType>, < { V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16 } >
		
		xmm16fnex16
endm

_uXm_xmm8_const macro functionName:REQ, vectorType:REQ, V1:REQ
		xmm8fnex textequ <>
		xmm8fnex catstr xmm8fnex, <&functionName&>
		public xmm8fnex
		xmm8fnex catstr xmm8fnex, < vectorType>,  < { V1, V1, V1, V1, V1, V1, V1, V1 } >
		
		xmm8fnex
endm

_uXm_xmm8_const8 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ, V3:REQ, V4:REQ, V5:REQ, V6:REQ, V7:REQ, V8:REQ
		xmm8fnex8 textequ <>
		xmm8fnex8 catstr xmm8fnex8, <&functionName&>
		public xmm8fnex8
		xmm8fnex8 catstr xmm8fnex8, < vectorType>, < { V1, V2, V3, V4, V5, V6, V7, V8 } >
		
		xmm8fnex8
endm

_uXm_xmm4_const macro functionName:REQ, vectorType:REQ, V1:REQ
		xmm4fnex textequ <>
		xmm4fnex catstr xmm4fnex, <&functionName&>
		public xmm4fnex
		xmm4fnex catstr xmm4fnex, < vectorType>,  < { V1, V1, V1, V1 } >
		
		xmm4fnex
endm

_uXm_xmm4_const4 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ, V3:REQ, V4:REQ
		xmm4fnex4 textequ <>
		xmm4fnex4 catstr xmm4fnex4, <&functionName&>
		public xmm4fnex4
		xmm4fnex4 catstr xmm4fnex4, < vectorType>, < { V1, V2, V3, V4 } >
		
		xmm4fnex4
endm

_uXm_xmm2_const macro functionName:REQ, vectorType:REQ, V1:REQ
		xmm2fnex textequ <>
		xmm2fnex catstr xmm2fnex, <&functionName&>
		public xmm2fnex
		xmm2fnex catstr xmm2fnex, < vectorType>,  < { V1, V1 } >
		
		xmm2fnex
endm

_uXm_xmm2_const2 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ
		xmm2fnex2 textequ <>
		xmm2fnex2 catstr xmm2fnex2, <&functionName&>
		public xmm2fnex2
		xmm2fnex2 catstr xmm2fnex2, < vectorType>, < { V1, V2 } >
		
		xmm2fnex2
endm
