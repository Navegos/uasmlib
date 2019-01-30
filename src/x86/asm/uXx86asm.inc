
ifdef WINDOWS
	ifdef __X64__
			UX_USESRBX			textequ		<uses rbx>
			UX_USESRBXSIDI		textequ		<uses rbx rsi rdi>
			UX_INSTPTR			textequ		<rcx>
			;UX_VECMETHOD		textequ		<VECMETHOD>
			;UX_STATICVECMETHOD	textequ		<STATICVECMETHOD>
	else
			UX_USESRBX			textequ		<uses ebx>
			UX_USESRBXSIDI		textequ		<uses ebx>
			UX_INSTPTR			textequ		<ecx>
			;UX_VECMETHOD		textequ		<METHOD>
			;UX_STATICVECMETHOD	textequ		<STATICMETHOD>
	endif ;__X64__
else
	ifdef __X64__
			UX_USESRBX			textequ		<uses rbx>
			UX_USESRBXSIDI		textequ		<uses rbx rsi rdi>
			UX_INSTPTR			textequ		<rdi>
	else
			UX_USESRBX			textequ		<uses ebx>
			UX_USESRBXSIDI		textequ		<uses ebx>
			UX_INSTPTR			textequ		<ecx>
	endif ;__X64__
			;UX_VECMETHOD		textequ		<METHOD>
			;UX_STATICVECMETHOD	textequ		<STATICMETHOD>
endif ;WINDOWS

ifdef __X64__
	;ptr_t_size			equ		8
	;reg_t_size			equ		8
	;size_t				textequ		<qword>
	;psize_t				textequ		<ptr qword>
	;size_tp				textequ		<qword ptr>
	;isize_t				textequ		<dq>
	;size_t_size			equ		8

else
	;ptr_t_size			equ		4
	;reg_t_size			equ		4
	;size_t				textequ		<dword>
	;psize_t				textequ		<ptr dword>
	;size_tp				textequ		<dword ptr>
	;isize_t				textequ		<dd>
	;size_t_size			equ		4
	
endif ;__X64__

;byte_size		equ		1
;char_size		equ		1
;int8_size		equ		1
;word_size		equ		2
;int16_size		equ		2
;dword_size		equ		4
;int_size		equ		4
;int32_size		equ		4
;qword_size		equ		8
;int64_size		equ		8

;real4_size		equ		4
;float_size		equ		4
;real8_size		equ		8
;double_size		equ		8

ifdef __X64__
;ptr_size		equ		8
;reg_size		equ		8
else
;ptr_size		equ		4
;reg_size		equ		4
endif ;__X64__

;mm_size			equ		8
;xmm_size		equ		16
;ymm_size		equ		32
;zmm_size		equ		64

uXstrvalue macro V0
    exitm %((V0) or (0))
endm

uXalign macro AlignSize
  		uXalignment textequ <align AlignSize>
  	uXalignment
endm
	
uXalignmm macro
  		__mmalignment textequ <align mm_size>
  	__mmalignment
endm

uXalignxmm macro
  		__xmmalignment textequ <align xmm_size>
  	__xmmalignment
endm
	
uXalignymm macro
  		__ymmalignment textequ <align ymm_size>
  	__ymmalignment
endm
	
uXalignzmm macro
  		__zmmalignment textequ <align zmm_size>
  	__zmmalignment
endm

uXalignfield macro AlignSize
  		field_option_alignment textequ <option fieldalign:AlignSize>
  	field_option_alignment
endm
	
uXalignmmfield macro
  		mm_field_option_alignment textequ <option fieldalign:mm_size>
  	mm_field_option_alignment
endm

uXalignxmmfield macro
  		xmm_field_option_alignment textequ <option fieldalign:xmm_size>
  	xmm_field_option_alignment
endm
	
uXalignymmfield macro
  		ymm_field_option_alignment textequ <option fieldalign:ymm_size>
  	ymm_field_option_alignment
endm
	
uXalignzmmfield macro
  		zmm_field_option_alignment textequ <option fieldalign:zmm_size>
  	zmm_field_option_alignment
endm

uXalignproc macro AlignSize
  		proc_option_alignment textequ <option procalign:AlignSize>
	proc_option_alignment
endm
	
uXalignmmproc macro
  		mm_proc_option_alignment textequ <option procalign:mm_size>
	mm_proc_option_alignment
endm

uXalignxmmproc macro
  		xmm_proc_option_alignment textequ <option procalign:xmm_size>
	xmm_proc_option_alignment
endm
	
uXalignymmproc macro
  		ymm_proc_option_alignment textequ <option procalign:ymm_size>
	ymm_proc_option_alignment
endm
	
uXalignzmmproc macro
  		zmm_proc_option_alignment textequ <option procalign:zmm_size>
	zmm_proc_option_alignment
endm

uXalignFPopt macro AlignSize
  		field_option_alignment textequ <option fieldalign:AlignSize>
  		proc_option_alignment textequ <option procalign:AlignSize>
  	field_option_alignment
	proc_option_alignment
endm
	
uXalignmmFPopt macro
  		mm_field_option_alignment textequ <option fieldalign:mm_size>
  		mm_proc_option_alignment textequ <option procalign:mm_size>
  	mm_field_option_alignment
	mm_proc_option_alignment
endm

uXalignxmmFPopt macro
  		xmm_field_option_alignment textequ <option fieldalign:xmm_size>
  		xmm_proc_option_alignment textequ <option procalign:xmm_size>
  	xmm_field_option_alignment
	xmm_proc_option_alignment
endm
	
uXalignymmFPopt macro
  		ymm_field_option_alignment textequ <option fieldalign:ymm_size>
  		ymm_proc_option_alignment textequ <option procalign:ymm_size>
  	ymm_field_option_alignment
	ymm_proc_option_alignment
endm
	
uXalignzmmFPopt macro
  		zmm_field_option_alignment textequ <option fieldalign:zmm_size>
  		zmm_proc_option_alignment textequ <option procalign:zmm_size>
  	zmm_field_option_alignment
	zmm_proc_option_alignment
endm

ifdef DEFINED_VECTORCALL	
	uXveccallopt	textequ <option language:vectorcall>
endif
ifdef DEFINED_SYSTEMV
	uXveccallopt	textequ <option language:systemv>
endif
ifndef uXveccallopt
	uXveccallopt	textequ < >
endif	

;; function proc macro start
;; name, return type, uses, parameter's size
uXfuncstart macro functionName:REQ, retType:REQ, usesStr:REQ, args:VARARG
	;ifdef WINDOWS
	;	curfunctionName textequ <functionName>
	;  ifdef EXTERNC_VECCALL
	;	curfunctionName catstr curfunctionName, <@@>, uXstrvalue(parameterSize)
	;  endif
	;	_curfunctionName_ textequ <curfunctionName>
	;else
		_curfunctionName_ textequ <functionName>
	;endif

		fnexproto textequ <>
		fnexproto catstr fnexproto, <&functionName&>
	;ifdef WINDOWS
	  ;ifdef EXTERNC_VECCALL
		;fnexproto catstr fnexproto, <@@>, uXstrvalue(parameterSize)
	  ;endif
	;else
	;endif
		fnexproto catstr fnexproto, < proto uXveccall >, <(&retType&)>, < >, <&args&>
		fnexproto

		fnexproc textequ <>
		fnexproc catstr fnexproc, <&functionName&>
	;ifdef WINDOWS
	  ;ifdef EXTERNC_VECCALL
		;fnexproc catstr fnexproc, <@@>, uXstrvalue(parameterSize)
	  ;endif
	;else
	;endif
		fnexproc catstr fnexproc, < proc uXveccall >, <(&retType&)>, < >, <frame>, < >, <&usesStr&>, < >, <&args&>

		fnexproc
endm

;; function proc macro end
uXfuncend macro
		fnexfuncend textequ <>
		fnexfuncend catstr fnexfuncend, _curfunctionName_
		fnexfuncend catstr fnexfuncend, < endp>
		fnexfuncend
endm

;; mmword param macro
mmwordparam1 macro fnName:REQ
		fnexmmpara1 textequ <fnName>
		ifdef __X64__
		fnexmmpara1 catstr fnexmmpara1, <_mmpara1A:dword,>
		else
		fnexmmpara1 catstr fnexmmpara1, <_mmpara1A:dword,>
		fnexmmpara1 catstr fnexmmpara1, <_mmpara1B:dword,>
		endif
		exitm fnexmmpara1
endm

mmwordparam2 macro fnName:REQ
		fnexmmpara2 textequ <fnName>
		ifdef __X64__
		fnexmmpara2 catstr fnexmmpara2, <_mmpara2A:dword,>
		else
		fnexmmpara2 catstr fnexmmpara2, <_mmpara2A:dword,>
		fnexmmpara2 catstr fnexmmpara2, <_mmpara2B:dword,>
		endif
		exitm fnexmmpara2
endm

mmwordparam3 macro fnName:REQ
		fnexmmpara3 textequ <fnName>
		ifdef __X64__
		fnexmmpara3 catstr fnexmmpara3, <_mmpara3A:dword,>
		else
		fnexmmpara3 catstr fnexmmpara3, <_mmpara3A:dword,>
		fnexmmpara3 catstr fnexmmpara3, <_mmpara3B:dword,>
		endif
		exitm fnexmmpara3
endm

mmwordparam4 macro fnName:REQ
		fnexmmpara4 textequ <fnName>
		ifdef __X64__
		fnexmmpara4 catstr fnexmmpara4, <_mmpara4A:dword,>
		else
		fnexmmpara4 catstr fnexmmpara4, <_mmpara4A:dword,>
		fnexmmpara4 catstr fnexmmpara4, <_mmpara4B:dword,>
		endif
		exitm fnexmmpara4
endm

mmwordparam5 macro fnName:REQ
		fnexmmpara5 textequ <fnName>
		ifdef __X64__
		fnexmmpara5 catstr fnexmmpara5, <_mmpara5A:dword,>
		else
		fnexmmpara5 catstr fnexmmpara5, <_mmpara5A:dword,>
		fnexmmpara5 catstr fnexmmpara5, <_mmpara5B:dword,>
		endif
		exitm fnexmmpara5
endm

mmwordparam6 macro fnName:REQ
		fnexmmpara6 textequ <fnName>
		ifdef __X64__
		fnexmmpara6 catstr fnexmmpara6, <_mmpara6A:dword,>
		else
		fnexmmpara6 catstr fnexmmpara6, <_mmpara6A:dword,>
		fnexmmpara6 catstr fnexmmpara6, <_mmpara6B:dword,>
		endif
		exitm fnexmmpara6
endm

;; xmmword param macro
xmmwordparam1 macro fnName:REQ
		fnexxmmpara1 textequ <fnName>
		ifdef __X64__
		fnexxmmpara1 catstr fnexxmmpara1, <_xmmpara1A:dword,>
		fnexxmmpara1 catstr fnexxmmpara1, <_xmmpara1B:dword >
		else
		fnexxmmpara1 catstr fnexxmmpara1, <_xmmpara1A:dword,>
		fnexxmmpara1 catstr fnexxmmpara1, <_xmmpara1B:dword,>
		fnexxmmpara1 catstr fnexxmmpara1, <_xmmpara1C:dword,>
		fnexxmmpara1 catstr fnexxmmpara1, <_xmmpara1D:dword >
		endif
		exitm fnexxmmpara1
endm

xmmwordparam2 macro fnName:REQ
		fnexxmmpara2 textequ <fnName>
		ifdef __X64__
		fnexxmmpara2 catstr fnexxmmpara2, <_xmmpara2A:dword,>
		fnexxmmpara2 catstr fnexxmmpara2, <_xmmpara2B:dword >
		else
		fnexxmmpara2 catstr fnexxmmpara2, <_xmmpara2A:dword,>
		fnexxmmpara2 catstr fnexxmmpara2, <_xmmpara2B:dword,>
		fnexxmmpara2 catstr fnexxmmpara2, <_xmmpara2C:dword,>
		fnexxmmpara2 catstr fnexxmmpara2, <_xmmpara2D:dword >
		endif
		exitm fnexxmmpara2
endm

xmmwordparam3 macro fnName:REQ
		fnexxmmpara3 textequ <fnName>
		ifdef __X64__
		fnexxmmpara3 catstr fnexxmmpara3, <_xmmpara3A:dword,>
		fnexxmmpara3 catstr fnexxmmpara3, <_xmmpara3B:dword >
		else
		fnexxmmpara3 catstr fnexxmmpara3, <_xmmpara3A:dword,>
		fnexxmmpara3 catstr fnexxmmpara3, <_xmmpara3B:dword,>
		fnexxmmpara3 catstr fnexxmmpara3, <_xmmpara3C:dword,>
		fnexxmmpara3 catstr fnexxmmpara3, <_xmmpara3D:dword >
		endif
		exitm fnexxmmpara3
endm

xmmwordparam4 macro fnName:REQ
		fnexxmmpara4 textequ <fnName>
		ifdef __X64__
		fnexxmmpara4 catstr fnexxmmpara4, <_xmmpara4A:dword,>
		fnexxmmpara4 catstr fnexxmmpara4, <_xmmpara4B:dword >
		else
		fnexxmmpara4 catstr fnexxmmpara4, <_xmmpara4A:dword,>
		fnexxmmpara4 catstr fnexxmmpara4, <_xmmpara4B:dword,>
		fnexxmmpara4 catstr fnexxmmpara4, <_xmmpara4C:dword,>
		fnexxmmpara4 catstr fnexxmmpara4, <_xmmpara4D:dword >
		endif
		exitm fnexxmmpara4
endm

xmmwordparam5 macro fnName:REQ
		fnexxmmpara5 textequ <fnName>
		ifdef __X64__
		fnexxmmpara5 catstr fnexxmmpara5, <_xmmpara5A:dword,>
		fnexxmmpara5 catstr fnexxmmpara5, <_xmmpara5B:dword >
		else
		fnexxmmpara5 catstr fnexxmmpara5, <_xmmpara5A:dword,>
		fnexxmmpara5 catstr fnexxmmpara5, <_xmmpara5B:dword,>
		fnexxmmpara5 catstr fnexxmmpara5, <_xmmpara5C:dword,>
		fnexxmmpara5 catstr fnexxmmpara5, <_xmmpara5D:dword >
		endif
		exitm fnexxmmpara5
endm

xmmwordparam6 macro fnName:REQ
		fnexxmmpara6 textequ <fnName>
		ifdef __X64__
		fnexxmmpara6 catstr fnexxmmpara6, <_xmmpara6A:dword,>
		fnexxmmpara6 catstr fnexxmmpara6, <_xmmpara6B:dword >
		else
		fnexxmmpara6 catstr fnexxmmpara6, <_xmmpara6A:dword,>
		fnexxmmpara6 catstr fnexxmmpara6, <_xmmpara6B:dword,>
		fnexxmmpara6 catstr fnexxmmpara6, <_xmmpara6C:dword,>
		fnexxmmpara6 catstr fnexxmmpara6, <_xmmpara6D:dword >
		endif
		exitm fnexxmmpara6
endm

;; ymmword param macro
ymmwordparam1 macro fnName:REQ
		fnexymmpara1 textequ <fnName>
		ifdef __X64__
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1A:dword,>
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1B:dword,>
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1C:dword,>
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1D:dword >
		else
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1A:dword,>
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1B:dword,>
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1C:dword,>
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1D:dword >
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1E:dword,>
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1F:dword,>
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1G:dword,>
		fnexymmpara1 catstr fnexymmpara1, <_ymmpara1H:dword >
		endif
		exitm fnexymmpara1
endm

ymmwordparam2 macro fnName:REQ
		fnexymmpara2 textequ <fnName>
		ifdef __X64__
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2A:dword,>
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2B:dword,>
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2C:dword,>
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2D:dword >
		else
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2A:dword,>
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2B:dword,>
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2C:dword,>
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2D:dword >
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2E:dword,>
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2F:dword,>
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2G:dword,>
		fnexymmpara2 catstr fnexymmpara2, <_ymmpara2H:dword >
		endif
		exitm fnexymmpara2
endm

ymmwordparam3 macro fnName:REQ
		fnexymmpara3 textequ <fnName>
		ifdef __X64__
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3A:dword,>
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3B:dword,>
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3C:dword,>
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3D:dword >
		else
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3A:dword,>
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3B:dword,>
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3C:dword,>
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3D:dword >
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3E:dword,>
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3F:dword,>
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3G:dword,>
		fnexymmpara3 catstr fnexymmpara3, <_ymmpara3H:dword >
		endif
		exitm fnexymmpara3
endm

ymmwordparam4 macro fnName:REQ
		fnexymmpara4 textequ <fnName>
		ifdef __X64__
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4A:dword,>
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4B:dword,>
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4C:dword,>
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4D:dword >
		else
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4A:dword,>
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4B:dword,>
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4C:dword,>
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4D:dword >
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4E:dword,>
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4F:dword,>
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4G:dword,>
		fnexymmpara4 catstr fnexymmpara4, <_ymmpara4H:dword >
		endif
		exitm fnexymmpara4
endm

ymmwordparam5 macro fnName:REQ
		fnexymmpara5 textequ <fnName>
		ifdef __X64__
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5A:dword,>
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5B:dword,>
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5C:dword,>
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5D:dword >
		else
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5A:dword,>
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5B:dword,>
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5C:dword,>
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5D:dword >
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5E:dword,>
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5F:dword,>
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5G:dword,>
		fnexymmpara5 catstr fnexymmpara5, <_ymmpara5H:dword >
		endif
		exitm fnexymmpara5
endm

ymmwordparam6 macro fnName:REQ
		fnexymmpara6 textequ <fnName>
		ifdef __X64__
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6A:dword,>
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6B:dword,>
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6C:dword,>
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6D:dword >
		else
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6A:dword,>
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6B:dword,>
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6C:dword,>
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6D:dword >
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6E:dword,>
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6F:dword,>
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6G:dword,>
		fnexymmpara6 catstr fnexymmpara6, <_ymmpara6H:dword >
		endif
		exitm fnexymmpara6
endm

;; zmmword param macro
zmmwordparam1 macro fnName:REQ
		fnexzmmpara1 textequ <fnName>
		ifdef __X64__
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1A:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1B:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1C:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1D:dword >
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1E:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1F:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1G:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1H:dword >
		else
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1A:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1B:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1C:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1D:dword >
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1E:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1F:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1G:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1H:dword >
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1I:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1J:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1K:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1L:dword >
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1M:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1N:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1O:dword,>
		fnexzmmpara1 catstr fnexzmmpara1, <_zmmpara1P:dword >
		endif
		exitm fnexzmmpara1
endm

zmmwordparam2 macro fnName:REQ
		fnexzmmpara2 textequ <fnName>
		ifdef __X64__
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2A:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2B:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2C:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2D:dword >
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2E:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2F:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2G:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2H:dword >
		else
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2A:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2B:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2C:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2D:dword >
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2E:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2F:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2G:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2H:dword >
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2I:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2J:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2K:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2L:dword >
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2M:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2N:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2O:dword,>
		fnexzmmpara2 catstr fnexzmmpara2, <_zmmpara2P:dword >
		endif
		exitm fnexzmmpara2
endm

zmmwordparam3 macro fnName:REQ
		fnexzmmpara3 textequ <fnName>
		ifdef __X64__
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3A:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3B:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3C:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3D:dword >
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3E:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3F:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3G:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3H:dword >
		else
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3A:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3B:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3C:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3D:dword >
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3E:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3F:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3G:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3H:dword >
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3I:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3J:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3K:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3L:dword >
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3M:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3N:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3O:dword,>
		fnexzmmpara3 catstr fnexzmmpara3, <_zmmpara3P:dword >
		endif
		exitm fnexzmmpara3
endm

zmmwordparam4 macro fnName:REQ
		fnexzmmpara4 textequ <fnName>
		ifdef __X64__
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4A:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4B:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4C:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4D:dword >
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4E:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4F:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4G:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4H:dword >
		else
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4A:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4B:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4C:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4D:dword >
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4E:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4F:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4G:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4H:dword >
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4I:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4J:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4K:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4L:dword >
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4M:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4N:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4O:dword,>
		fnexzmmpara4 catstr fnexzmmpara4, <_zmmpara4P:dword >
		endif
		exitm fnexzmmpara4
endm

zmmwordparam5 macro fnName:REQ
		fnexzmmpara5 textequ <fnName>
		ifdef __X64__
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5A:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5B:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5C:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5D:dword >
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5E:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5F:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5G:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5H:dword >
		else
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5A:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5B:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5C:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5D:dword >
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5E:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5F:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5G:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5H:dword >
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5I:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5J:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5K:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5L:dword >
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5M:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5N:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5O:dword,>
		fnexzmmpara5 catstr fnexzmmpara5, <_zmmpara5P:dword >
		endif
		exitm fnexzmmpara5
endm

zmmwordparam6 macro fnName:REQ
		fnexzmmpara6 textequ <fnName>
		ifdef __X64__
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6A:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6B:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6C:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6D:dword >
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6E:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6F:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6G:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6H:dword >
		else
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6A:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6B:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6C:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6D:dword >
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6E:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6F:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6G:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6H:dword >
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6I:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6J:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6K:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6L:dword >
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6M:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6N:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6O:dword,>
		fnexzmmpara6 catstr fnexzmmpara6, <_zmmpara6P:dword >
		endif
		exitm fnexzmmpara6
endm

uXShuffle4 macro V3, V2, V1, V0
    exitm %((V3 shl 6) or (V2 shl 4) or (V1 shl 2) or (V0))
endm

uXShuffler4 macro V0, V1, V2, V3
    exitm %((V0) or (V1 shl 2) or (V2 shl 4) or (V3 shl 6))
endm

uXShuffle2 macro V1, V0
    exitm %((V1 shl 1) or (V0))
endm

uXShuffler2 macro V0, V1
    exitm %((V0) or (V1 shl 1))
endm

uX64Const macro functionName:REQ, vectorType:REQ, V1:REQ
		mm64fnex textequ <>
		mm64fnex catstr mm64fnex, <&functionName&>
		public mm64fnex
		mm64fnex catstr mm64fnex, < vectorType>,  < { V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1 } >
		mm64fnex
endm

uX64Const64 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ, V3:REQ, V4:REQ, V5:REQ, V6:REQ, V7:REQ, V8:REQ, V9:REQ, V10:REQ, V11:REQ, V12:REQ, V13:REQ, V14:REQ, V15:REQ, V16:REQ, V17:REQ, V18:REQ, V19:REQ, V20:REQ, V21:REQ, V22:REQ, V23:REQ, V24:REQ, V25:REQ, V26:REQ, V27:REQ, V28:REQ, V29:REQ, V30:REQ, V31:REQ, V32:REQ, V33:REQ, V34:REQ, V35:REQ, V36:REQ, V37:REQ, V38:REQ, V39:REQ, V40:REQ, V41:REQ, V42:REQ, V43:REQ, V44:REQ, V45:REQ, V46:REQ, V47:REQ, V48:REQ, V49:REQ, V50:REQ, V51:REQ, V52:REQ, V53:REQ, V54:REQ, V55:REQ, V56:REQ, V57:REQ, V58:REQ, V59:REQ, V60:REQ, V61:REQ, V62:REQ, V63:REQ, V64:REQ
		mm64fnex64 textequ <>
		mm64fnex64 catstr mm64fnex64, <&functionName&>
		public mm64fnex64
		mm64fnex64 catstr mm64fnex64, < vectorType>, < { V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32, V33, V34, V35, V36, V37, V38, V39, V40, V41, V42, V43, V44, V45, V46, V47, V48, V49, V50, V51, V52, V53, V54, V55, V56, V57, V58, V59, V60, V61, V62, V63, V64 } >
		mm64fnex64
endm

uX32Const macro functionName:REQ, vectorType:REQ, V1:REQ
		mm32fnex textequ <>
		mm32fnex catstr mm32fnex, <&functionName&>
		public mm32fnex
		mm32fnex catstr mm32fnex, < vectorType>,  < { V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1 } >
		mm32fnex
endm

uX32Const32 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ, V3:REQ, V4:REQ, V5:REQ, V6:REQ, V7:REQ, V8:REQ, V9:REQ, V10:REQ, V11:REQ, V12:REQ, V13:REQ, V14:REQ, V15:REQ, V16:REQ, V17:REQ, V18:REQ, V19:REQ, V20:REQ, V21:REQ, V22:REQ, V23:REQ, V24:REQ, V25:REQ, V26:REQ, V27:REQ, V28:REQ, V29:REQ, V30:REQ, V31:REQ, V32:REQ
		mm32fnex32 textequ <>
		mm32fnex32 catstr mm32fnex32, <&functionName&>
		public mm32fnex32
		mm32fnex32 catstr mm32fnex32, < vectorType>, < { V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16, V17, V18, V19, V20, V21, V22, V23, V24, V25, V26, V27, V28, V29, V30, V31, V32 } >
		mm32fnex32
endm

uX16Const macro functionName:REQ, vectorType:REQ, V1:REQ
		mm16fnex textequ <>
		mm16fnex catstr mm16fnex, <&functionName&>
		public mm16fnex
		mm16fnex catstr mm16fnex, < vectorType>,  < { V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1, V1 } >
		mm16fnex
endm

uX16Const16 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ, V3:REQ, V4:REQ, V5:REQ, V6:REQ, V7:REQ, V8:REQ, V9:REQ, V10:REQ, V11:REQ, V12:REQ, V13:REQ, V14:REQ, V15:REQ, V16:REQ
		mm16fnex16 textequ <>
		mm16fnex16 catstr mm16fnex16, <&functionName&>
		public mm16fnex16
		mm16fnex16 catstr mm16fnex16, < vectorType>, < { V1, V2, V3, V4, V5, V6, V7, V8, V9, V10, V11, V12, V13, V14, V15, V16 } >
		mm16fnex16
endm

uX8Const macro functionName:REQ, vectorType:REQ, V1:REQ
		mm8fnex textequ <>
		mm8fnex catstr mm8fnex, <&functionName&>
		public mm8fnex
		mm8fnex catstr mm8fnex, < vectorType>,  < { V1, V1, V1, V1, V1, V1, V1, V1 } >
		mm8fnex
endm

uX8Const8 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ, V3:REQ, V4:REQ, V5:REQ, V6:REQ, V7:REQ, V8:REQ
		mm8fnex8 textequ <>
		mm8fnex8 catstr mm8fnex8, <&functionName&>
		public mm8fnex8
		mm8fnex8 catstr mm8fnex8, < vectorType>, < { V1, V2, V3, V4, V5, V6, V7, V8 } >
		mm8fnex8
endm

uX4Const macro functionName:REQ, vectorType:REQ, V1:REQ
		mm4fnex textequ <>
		mm4fnex catstr mm4fnex, <&functionName&>
		public mm4fnex
		mm4fnex catstr mm4fnex, < vectorType>,  < { V1, V1, V1, V1 } >
		mm4fnex
endm

uX4Const4 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ, V3:REQ, V4:REQ
		mm4fnex4 textequ <>
		mm4fnex4 catstr mm4fnex4, <&functionName&>
		public mm4fnex4
		mm4fnex4 catstr mm4fnex4, < vectorType>, < { V1, V2, V3, V4 } >
		mm4fnex4
endm

uX2Const macro functionName:REQ, vectorType:REQ, V1:REQ
		mm2fnex textequ <>
		mm2fnex catstr mm2fnex, <&functionName&>
		public mm2fnex
		mm2fnex catstr mm2fnex, < vectorType>,  < { V1, V1 } >
		mm2fnex
endm

uX2Const2 macro functionName:REQ, vectorType:REQ, V1:REQ, V2:REQ
		mm2fnex2 textequ <>
		mm2fnex2 catstr mm2fnex2, <&functionName&>
		public mm2fnex2
		mm2fnex2 catstr mm2fnex2, < vectorType>, < { V1, V2 } >
		mm2fnex2
endm

;false	equ		0x0
;true	equ		0x1

; byte
;m8_false		equ		0x00
;m8_true			equ		0xff

; word
;m16_false		equ		0x0000
;m16_true		equ		0xffff

; dword
;m32_false		equ		0x00000000
;m32_true		equ		0xffffffff

; qword
;m64_false		equ		0x0000000000000000
;m64_true		equ		0xffffffffffffffff

; /* EFLAGS %eax=00H, %ebx=00H */
;bit_CPUID 					equ		0x00200000	; 1 << 21

; /* %eax=00H, %ecx %ebx */
;bit_ntel					equ		0x6c65746e	; 'GenuineIntel'
;bit_cAMD					equ		0x444d4163	; 'AuthenticAMD'

; /* %eax=00H, %ebx */
;bit_Cent					equ		0x746e6543	; 'CentaurHauls'
;bit_VIA						equ		0x20414956	; 'VIA VIA VIA'
;bit_Cyri					equ		0x69727943	; 'CyrixInstead'
;bit_NexG					equ		0x4778654e	; 'NexGenDriven'

; /* %eax=01H, %ecx */
;bit_SSE3					equ		0x00000001	; 1 << 0
;bit_PCLMULQDQ				equ		0x00000002	; 1 << 1
;bit_MONITOR 				equ		0x00000008	; 1 << 3
;bit_SSSE3 					equ		0x00000200	; 1 << 9
;bit_FMA 					equ		0x00001000	; 1 << 12
;bit_CMPXCHG16B 				equ		0x00002000	; 1 << 13
;bit_SSE41 					equ		0x00080000	; 1 << 19
;bit_SSE42 					equ		0x00100000	; 1 << 20
;bit_MOVBE 					equ		0x00400000	; 1 << 22
;bit_POPCNT 					equ		0x00800000	; 1 << 23
;bit_AES 					equ		0x02000000	; 1 << 25
;bit_XSAVE 					equ		0x04000000	; 1 << 26
;bit_OSXSAVE 				equ		0x08000000	; 1 << 27
;bit_AVX 					equ		0x10000000	; 1 << 28
;bit_F16C 					equ		0x20000000	; 1 << 29
;bit_RDRAND 					equ		0x40000000	; 1 << 30

;bit_AVX_FMA					equ		0x18001000	; 1 << 12 | 1 << 27 | 1 << 28
;bit_OSXS_AVX				equ		0x18000000	; 1 << 27 | 1 << 28
;bit_AVX_F16C				equ		0x38000000	; 1 << 27 | 1 << 28 | 1 << 29

;bit_SSE3_AES 				equ		0x02000001	; 1 << 0 | 1 << 25
;bit_SSSE3_AES 				equ		0x02000200	; 1 << 9 | 1 << 25
;bit_SSE41_AES 				equ		0x02080000	; 1 << 19 | 1 << 25
;bit_SSE42_AES 				equ		0x02100000	; 1 << 20 | 1 << 25

;bit_SSE3_PCLMULQDQ			equ		0x00000003	; 1 << 1 | 1 << 1
;bit_SSSE3_PCLMULQDQ			equ		0x00000202	; 1 << 1 | 1 << 9
;bit_SSE41_PCLMULQDQ			equ		0x00080002	; 1 << 1 | 1 << 19
;bit_SSE42_PCLMULQDQ			equ		0x00100002	; 1 << 1 | 1 << 20

; /* %eax=01H, %edx */
;bit_FPU						equ		0x00000001	; 1 << 0
;bit_TSC						equ		0x00000010	; 1 << 4
;bit_MSR						equ		0x00000020	; 1 << 5
;bit_CMPXCHG8B				equ		0x00000100	; 1 << 8
;bit_SEP						equ		0x00000800	; 1 << 11
;bit_CMOV					equ		0x00008000	; 1 << 15
;bit_CLFSH					equ		0x00080000	; 1 << 19
;bit_MMX						equ		0x00800000	; 1 << 23
;bit_FXSR					equ		0x01000000	; 1 << 24
;bit_SSE						equ		0x02000000	; 1 << 25
;bit_SSE2					equ		0x04000000	; 1 << 26

; /* %eax=07H, %ebx */
;bit_FSGSBASE				equ		0x00000001	; 1 << 0
;bit_SGX						equ		0x00000004	; 1 << 2
;bit_BMI1					equ		0x00000008	; 1 << 3
;bit_HLE						equ		0x00000010	; 1 << 4
;bit_AVX2					equ		0x00000020	; 1 << 5
;bit_SMEP					equ		0x00000080	; 1 << 7
;bit_BMI2					equ		0x00000100	; 1 << 8
;bit_ERMS					equ		0x00000200	; 1 << 9
;bit_INVPCID					equ		0x00000400	; 1 << 10
;bit_RTM						equ		0x00000800	; 1 << 11
;bit_MPX						equ		0x00004000	; 1 << 14
;bit_AVX512F					equ		0x00010000	; 1 << 16
;bit_AVX512DQ				equ		0x00020000	; 1 << 17
;bit_RDSEED					equ		0x00040000	; 1 << 18
;bit_ADX						equ		0x00080000	; 1 << 19
;bit_SMAP					equ		0x00100000	; 1 << 20
;bit_AVX512_IFMA				equ		0x00200000	; 1 << 21
;bit_CLFLUSHOPT				equ		0x00800000	; 1 << 23
;bit_CLWB					equ		0x01000000	; 1 << 24
;bit_AVX512PF				equ		0x04000000	; 1 << 26
;bit_AVX512ER				equ		0x08000000	; 1 << 27
;bit_AVX512CD				equ		0x10000000	; 1 << 28
;bit_SHA						equ		0x20000000	; 1 << 29
;bit_AVX512BW				equ		0x40000000	; 1 << 30
;bit_AVX512VL				equ		0x80000000	; 1 << 31

;bit_AVX512F_DQ				equ		0x00030000	; 1 << 16 | 1 << 17
;bit_AVX512F_DQ_VL			equ		0x80030000	; 1 << 16 | 1 << 17 | 1 << 31
;bit_AVX512F_IFMA			equ		0x00210000	; 1 << 16 | 1 << 21
;bit_AVX512F_IFMA_VL			equ		0x80210000	; 1 << 16 | 1 << 21 | 1 << 31
;bit_AVX512F_PF				equ		0x04010000	; 1 << 16 | 1 << 26
;bit_AVX512F_ER				equ		0x08010000	; 1 << 16 | 1 << 27
;bit_AVX512F_CD				equ		0x10010000	; 1 << 16 | 1 << 28
;bit_AVX512F_CD_VL			equ		0x90010000	; 1 << 16 | 1 << 28 | 1 << 31
;bit_AVX512F_BW				equ		0x40010000	; 1 << 16 | 1 << 30
;bit_AVX512F_BW_VL			equ		0xC0010000	; 1 << 16 | 1 << 30 | 1 << 31
;bit_AVX512F_VL				equ		0x80010000	; 1 << 16 | 1 << 31

; /* %eax=07H, %ecx */
;bit_PREFETCHWT1				equ		0x00000001	; 1 << 0
;bit_AVX512_VBMI				equ		0x00000002	; 1 << 1
;bit_UMIP					equ		0x00000004	; 1 << 2
;bit_PKU						equ		0x00000008	; 1 << 3
;bit_OSPKE					equ		0x00000010	; 1 << 4
;bit_AVX512_VBMI2			equ		0x00000040	; 1 << 6
;bit_GFNI					equ		0x00000100	; 1 << 8
;bit_VAES					equ		0x00000200	; 1 << 9
;bit_VPCLMULQDQ				equ		0x00000400	; 1 << 10
;bit_AVX512_VNNI				equ		0x00000800	; 1 << 11
;bit_AVX512_BITALG			equ		0x00001000	; 1 << 12
;bit_AVX512_VPOPCNTDQ		equ		0x00004000	; 1 << 14
;bit_RDPID					equ		0x00400000	; 1 << 22

; /* %eax=07H, %edx */
;bit_AVX512_4VNNIW			equ		0x00000004	; 1 << 2
;bit_AVX512_4FMAPS			equ		0x00000008	; 1 << 3

; /* %eax=80000001H, %ecx */
;bit_LAHF					equ		0x00000001	; 1 << 0
;bit_LZCNT					equ		0x00000020	; 1 << 5
;bit_ABM						equ		0x00000020	; 1 << 5
;bit_SSE4a					equ		0x00000040	; 1 << 6
;bit_PREFETCHW				equ		0x00000100	; 1 << 8
;bit_XOP						equ		0x00000800	; 1 << 11
;bit_LWP						equ		0x00008000	; 1 << 15
;bit_FMA4					equ		0x00010000	; 1 << 16
;bit_TBM						equ		0x00200000	; 1 << 21
;bit_MWAITX					equ		0x20000000	; 1 << 29

; /* %eax=80000001H, %edx */
;bit_SYSCALL					equ		0x00000800	; 1 << 11
;bit_MMXEXT					equ		0x00400000	; 1 << 22
;bit_RDTSCP					equ		0x08000000	; 1 << 27
;bit_3DNOWEXT				equ		0x40000000	; 1 << 30
;bit_3DNOW					equ		0x80000000	; 1 << 31

; /* supported instruction set return values */

intrinset_80386				equ		0x0		;0            = 80386 instruction set
intrinset_MMX				equ		0x8		;8   or above = MMX (MMX) supported by CPU (not testing for O.S. support)
intrinset_CMOV				equ		0x9		;9   or above = CMOV supported by CPU
intrinset_SSE				equ		0x0a	;10  or above = SSE (XMM) supported by CPU and operating system
intrinset_SSE2				equ		0x14	;20  or above = SSE2
intrinset_SSE3				equ		0x1e	;30  or above = SSE3
intrinset_SSSE3				equ		0x1f	;31  or above = Supplementary SSE3 (SSSE3)
intrinset_SSE41				equ		0x29	;41  or above = SSE4.1
intrinset_SSE42				equ		0x2a	;42  or above = SSE4.2 & POPCNT
intrinset_AVX				equ		0x32	;50  or above = AVX (YMM) supported by CPU and operating system
intrinset_PCLMULAES			equ		0x33	;51  or above = PCLMUL & AES
intrinset_AVX2				equ		0x34	;52  or above = AVX2
intrinset_FMATOLZCNT		equ		0x39	;57  or above = FMA3, F16C, BMI1, BMI2, LZCNT
intrinset_AVX512F			equ		0x3c	;60  or above = AVX512F (ZMM) supported by CPU and operating system
intrinset_AVX512DQ			equ		0x3d	;61  or above = AVX512DQ
intrinset_AVX512BW			equ		0x3e	;62  or above = AVX512BW
intrinset_AVX512VL			equ		0x3f	;63  or above = AVX512VL

; /* CMP S/P S/D Opcodes Condition Predicate */
;CMPP_EQ						equ		0x0
;CMPP_LT						equ		0x1
;CMPP_LE						equ		0x2
;CMPP_UNORD					equ		0x3
;CMPP_NEQ					equ		0x4
;CMPP_NLT					equ		0x5
;CMPP_NLE					equ		0x6
;CMPP_ORD					equ		0x7

;/*
; * Compare predicates for scalar and packed compare intrinsic functions
; */
;CMP_EQ_OQ		equ		0x00  ;/* Equal (ordered, nonsignaling)               */
;CMP_LT_OS		equ		0x01  ;/* Less-than (ordered, signaling)              */
;CMP_LE_OS		equ		0x02  ;/* Less-than-or-equal (ordered, signaling)     */
;CMP_UNORD_Q		equ		0x03  ;/* Unordered (nonsignaling)                    */
;CMP_NEQ_UQ		equ		0x04  ;/* Not-equal (unordered, nonsignaling)         */
;CMP_NLT_US		equ		0x05  ;/* Not-less-than (unordered, signaling)        */
;CMP_NLE_US		equ		0x06  ;/* Not-less-than-or-equal (unordered, signaling) */
;CMP_ORD_Q		equ		0x07  ;/* Ordered (nonsignaling)                      */
;CMP_EQ_UQ		equ		0x08  ;/* Equal (unordered, non-signaling)            */
;CMP_NGE_US		equ		0x09  ;/* Not-greater-than-or-equal (unordered, signaling) */
;CMP_NGT_US		equ		0x0A  ;/* Not-greater-than (unordered, signaling)     */
;CMP_FALSE_OQ	equ		0x0B  ;/* False (ordered, nonsignaling)               */
;CMP_NEQ_OQ		equ		0x0C  ;/* Not-equal (ordered, non-signaling)          */
;CMP_GE_OS		equ		0x0D  ;/* Greater-than-or-equal (ordered, signaling)  */
;CMP_GT_OS		equ		0x0E  ;/* Greater-than (ordered, signaling)           */
;CMP_TRUE_UQ		equ		0x0F  ;/* True (unordered, non-signaling)             */
;CMP_EQ_OS		equ		0x10  ;/* Equal (ordered, signaling)                  */
;CMP_LT_OQ		equ		0x11  ;/* Less-than (ordered, nonsignaling)           */
;CMP_LE_OQ		equ		0x12  ;/* Less-than-or-equal (ordered, nonsignaling)  */
;CMP_UNORD_S		equ		0x13  ;/* Unordered (signaling)                       */
;CMP_NEQ_US		equ		0x14  ;/* Not-equal (unordered, signaling)            */
;CMP_NLT_UQ		equ		0x15  ;/* Not-less-than (unordered, nonsignaling)     */
;CMP_NLE_UQ		equ		0x16  ;/* Not-less-than-or-equal (unordered, nonsignaling) */
;CMP_ORD_S		equ		0x17  ;/* Ordered (signaling)                         */
;CMP_EQ_US		equ		0x18  ;/* Equal (unordered, signaling)                */
;CMP_NGE_UQ		equ		0x19  ;/* Not-greater-than-or-equal (unordered, nonsignaling) */
;CMP_NGT_UQ		equ		0x1A  ;/* Not-greater-than (unordered, nonsignaling)  */
;CMP_FALSE_OS	equ		0x1B  ;/* False (ordered, signaling)                  */
;CMP_NEQ_OS		equ		0x1C  ;/* Not-equal (ordered, signaling)              */
;CMP_GE_OQ		equ		0x1D  ;/* Greater-than-or-equal (ordered, nonsignaling) */
;CMP_GT_OQ		equ		0x1E  ;/* Greater-than (ordered, nonsignaling)        */
;CMP_TRUE_US		equ		0x1F  ;/* True (unordered, signaling)                 */

; byte machine opcodes
OP_xmm0_xmm0				equ		0xc0
OP_xmm0_xmm1				equ		0xc1
OP_xmm1_xmm0				equ		0xc8
OP_xmm1_xmm1				equ		0xc9


; imediates
OP_Ib_MMX_PSLLW				textequ <0x0f,0x71>
OP_Ib_SSE2_PSLLW			textequ <0x66,0x0f,0x71>
OP_Ib_MMX_PSLLD				textequ <0x0f,0x71>
OP_Ib_SSE2_PSLLD			textequ <0x66,0x0f,0x71>

; regs
OP_MMX_PSLLW				textequ <0x0f,0xf1>
OP_SSE2_PSLLW				textequ <0x66,0x0f,0xf1>
OP_MMX_PSLLD				textequ <0x0f,0xf2>
OP_SSE2_PSLLD				textequ <0x66,0x0f,0xf2>

UX_MOP macro args
	mopex textequ <byte args>
	exitm 
endm


include uXmacros.inc

			option	casemap:none
	ifndef __X64__
			.686P
			.model	flat
			option	stackbase:esp		; RSP or RBP are supported options for the stackbase.
	else
			.X64P
			option	stackbase:rsp		; RSP or RBP are supported options for the stackbase.
	endif
			option	win64:15			; 11/15 for RSP and 1-7 for RBP.
			option	frame:auto
