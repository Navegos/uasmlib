	
	include uXx86asm.inc

ifndef __MIC__

	.ymm
	option arch:avx
	option evex:0

	;include uXavx256intrin.inc
	
	include uXymmconstdata.inc
	
	.const
	
	uXalignsize_t
	_mmvcmppsjmptable isize_t	offset _mmvcmpps_0, offset _mmvcmpps_1, offset _mmvcmpps_2, offset _mmvcmpps_3, offset _mmvcmpps_4, \
								offset _mmvcmpps_5, offset _mmvcmpps_6, offset _mmvcmpps_7, offset _mmvcmpps_8, offset _mmvcmpps_9, \
								offset _mmvcmpps_10, offset _mmvcmpps_11, offset _mmvcmpps_12, offset _mmvcmpps_13, offset _mmvcmpps_14, \
								offset _mmvcmpps_15, offset _mmvcmpps_16, offset _mmvcmpps_17, offset _mmvcmpps_18, offset _mmvcmpps_19, \
								offset _mmvcmpps_20, offset _mmvcmpps_21, offset _mmvcmpps_22, offset _mmvcmpps_23, offset _mmvcmpps_24, \
								offset _mmvcmpps_25, offset _mmvcmpps_26, offset _mmvcmpps_27, offset _mmvcmpps_28, offset _mmvcmpps_29, \
								offset _mmvcmpps_30, offset _mmvcmpps_31

	uXalignsize_t
	_mmvcmpssjmptable isize_t	offset _mmvcmpss_0, offset _mmvcmpss_1, offset _mmvcmpss_2, offset _mmvcmpss_3, offset _mmvcmpss_4, \
								offset _mmvcmpss_5, offset _mmvcmpss_6, offset _mmvcmpss_7, offset _mmvcmpss_8, offset _mmvcmpss_9, \
								offset _mmvcmpss_10, offset _mmvcmpss_11, offset _mmvcmpss_12, offset _mmvcmpss_13, offset _mmvcmpss_14, \
								offset _mmvcmpss_15, offset _mmvcmpss_16, offset _mmvcmpss_17, offset _mmvcmpss_18, offset _mmvcmpss_19, \
								offset _mmvcmpss_20, offset _mmvcmpss_21, offset _mmvcmpss_22, offset _mmvcmpss_23, offset _mmvcmpss_24, \
								offset _mmvcmpss_25, offset _mmvcmpss_26, offset _mmvcmpss_27, offset _mmvcmpss_28, offset _mmvcmpss_29, \
								offset _mmvcmpss_30, offset _mmvcmpss_31

	uXalignsize_t
	_mmvcomissjmptable isize_t	offset _mmvcomiss_0, offset _mmvcomiss_1, offset _mmvcomiss_2, offset _mmvcomiss_3, offset _mmvcomiss_4, \
								offset _mmvcomiss_5, offset _mmvcomiss_6, offset _mmvcomiss_7, offset _mmvcomiss_8, offset _mmvcomiss_9, \
								offset _mmvcomiss_10, offset _mmvcomiss_11, offset _mmvcomiss_12, offset _mmvcomiss_13, offset _mmvcomiss_14, \
								offset _mmvcomiss_15, offset _mmvcomiss_16, offset _mmvcomiss_17, offset _mmvcomiss_18, offset _mmvcomiss_19, \
								offset _mmvcomiss_20, offset _mmvcomiss_21, offset _mmvcomiss_22, offset _mmvcomiss_23, offset _mmvcomiss_24, \
								offset _mmvcomiss_25, offset _mmvcomiss_26, offset _mmvcomiss_27, offset _mmvcomiss_28, offset _mmvcomiss_29, \
								offset _mmvcomiss_30, offset _mmvcomiss_31

	uXalignsize_t
	_mmvcmppdjmptable isize_t	offset _mmvcmppd_0, offset _mmvcmppd_1, offset _mmvcmppd_2, offset _mmvcmppd_3, offset _mmvcmppd_4, \
								offset _mmvcmppd_5, offset _mmvcmppd_6, offset _mmvcmppd_7, offset _mmvcmppd_8, offset _mmvcmppd_9, \
								offset _mmvcmppd_10, offset _mmvcmppd_11, offset _mmvcmppd_12, offset _mmvcmppd_13, offset _mmvcmppd_14, \
								offset _mmvcmppd_15, offset _mmvcmppd_16, offset _mmvcmppd_17, offset _mmvcmppd_18, offset _mmvcmppd_19, \
								offset _mmvcmppd_20, offset _mmvcmppd_21, offset _mmvcmppd_22, offset _mmvcmppd_23, offset _mmvcmppd_24, \
								offset _mmvcmppd_25, offset _mmvcmppd_26, offset _mmvcmppd_27, offset _mmvcmppd_28, offset _mmvcmppd_29, \
								offset _mmvcmppd_30, offset _mmvcmppd_31

	uXalignsize_t
	_mmvcmpsdjmptable isize_t	offset _mmvcmpsd_0, offset _mmvcmpsd_1, offset _mmvcmpsd_2, offset _mmvcmpsd_3, offset _mmvcmpsd_4, \
								offset _mmvcmpsd_5, offset _mmvcmpsd_6, offset _mmvcmpsd_7, offset _mmvcmpsd_8, offset _mmvcmpsd_9, \
								offset _mmvcmpsd_10, offset _mmvcmpsd_11, offset _mmvcmpsd_12, offset _mmvcmpsd_13, offset _mmvcmpsd_14, \
								offset _mmvcmpsd_15, offset _mmvcmpsd_16, offset _mmvcmpsd_17, offset _mmvcmpsd_18, offset _mmvcmpsd_19, \
								offset _mmvcmpsd_20, offset _mmvcmpsd_21, offset _mmvcmpsd_22, offset _mmvcmpsd_23, offset _mmvcmpsd_24, \
								offset _mmvcmpsd_25, offset _mmvcmpsd_26, offset _mmvcmpsd_27, offset _mmvcmpsd_28, offset _mmvcmpsd_29, \
								offset _mmvcmpsd_30, offset _mmvcmpsd_31

	uXalignsize_t
	_mmvcomisdjmptable isize_t	offset _mmvcomisd_0, offset _mmvcomisd_1, offset _mmvcomisd_2, offset _mmvcomisd_3, offset _mmvcomisd_4, \
								offset _mmvcomisd_5, offset _mmvcomisd_6, offset _mmvcomisd_7, offset _mmvcomisd_8, offset _mmvcomisd_9, \
								offset _mmvcomisd_10, offset _mmvcomisd_11, offset _mmvcomisd_12, offset _mmvcomisd_13, offset _mmvcomisd_14, \
								offset _mmvcomisd_15, offset _mmvcomisd_16, offset _mmvcomisd_17, offset _mmvcomisd_18, offset _mmvcomisd_19, \
								offset _mmvcomisd_20, offset _mmvcomisd_21, offset _mmvcomisd_22, offset _mmvcomisd_23, offset _mmvcomisd_24, \
								offset _mmvcomisd_25, offset _mmvcomisd_26, offset _mmvcomisd_27, offset _mmvcomisd_28, offset _mmvcomisd_29, \
								offset _mmvcomisd_30, offset _mmvcomisd_31

uXalignxmmFPopt
uXveccallopt

	.code
	
;******************
; Externs
;******************
	;extern uXveccall _uX_intrin_CPUFeatures:proc
	
;******************
; FP, comparison
;******************
uXfuncstart _uX_mm_cmp_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_mmvcmppsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_mmvcmppsjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_mmvcmpps_0 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			0
			ret
		_mmvcmpps_1 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			1
			ret
		_mmvcmpps_2 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			2
			ret
		_mmvcmpps_3 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			3
			ret
		_mmvcmpps_4 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			4
			ret
		_mmvcmpps_5 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			5
			ret
		_mmvcmpps_6 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			6
			ret
		_mmvcmpps_7 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			7
			ret
		_mmvcmpps_8 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			8
			ret
		_mmvcmpps_9 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			9
			ret
		_mmvcmpps_10 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			10
			ret
		_mmvcmpps_11 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			11
			ret
		_mmvcmpps_12 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			12
			ret
		_mmvcmpps_13 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			13
			ret
		_mmvcmpps_14 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			14
			ret
		_mmvcmpps_15 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			15
			ret
		_mmvcmpps_16 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			16
			ret
		_mmvcmpps_17 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			17
			ret
		_mmvcmpps_18 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			18
			ret
		_mmvcmpps_19 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			19
			ret
		_mmvcmpps_20 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			20
			ret
		_mmvcmpps_21 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			21
			ret
		_mmvcmpps_22 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			22
			ret
		_mmvcmpps_23 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			23
			ret
		_mmvcmpps_24 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			24
			ret
		_mmvcmpps_25 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			25
			ret
		_mmvcmpps_26 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			26
			ret
		_mmvcmpps_27 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			27
			ret
		_mmvcmpps_28 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			28
			ret
		_mmvcmpps_29 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			29
			ret
		_mmvcmpps_30 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			30
			ret
		_mmvcmpps_31 label size_t
			vcmpps				xmm0,			xmm0,			xmm1,			31
			ret
		;.endif
		
uXfuncend

uXfuncstart _uX_mm_cmpeqoq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			0
			ret
uXfuncend

uXfuncstart _uX_mm_cmpltos_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm_cmpleos_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			2
			ret
uXfuncend

uXfuncstart _uX_mm_cmpunordq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			3
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnequq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			4
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnltus_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			5
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnleus_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			6
			ret
uXfuncend

uXfuncstart _uX_mm_cmpordq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			7
			ret
uXfuncend

uXfuncstart _uX_mm_cmpequq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			8
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngeus_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			9
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngtus_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			10
			ret
uXfuncend

uXfuncstart _uX_mm_cmpfalseoq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			11
			ret
uXfuncend

uXfuncstart _uX_mm_cmpneqoq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			12
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgeos_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			13
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgtos_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			14
			ret
uXfuncend

uXfuncstart _uX_mm_cmptrueuq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			15
			ret
uXfuncend

uXfuncstart _uX_mm_cmpeqos_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			16
			ret
uXfuncend

uXfuncstart _uX_mm_cmpltoq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			17
			ret
uXfuncend

uXfuncstart _uX_mm_cmpleoq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			18
			ret
uXfuncend

uXfuncstart _uX_mm_cmpunords_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			19
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnequs_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			20
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnltuq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			21
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnleuq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			22
			ret
uXfuncend

uXfuncstart _uX_mm_cmpords_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			23
			ret
uXfuncend

uXfuncstart _uX_mm_cmpequs_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			24
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngeuq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			25
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngtuq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			26
			ret
uXfuncend

uXfuncstart _uX_mm_cmpfalseos_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			27
			ret
uXfuncend

uXfuncstart _uX_mm_cmpneqos_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			28
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgeoq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			29
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgtoq_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			30
			ret
uXfuncend

uXfuncstart _uX_mm_cmptrueus_ps, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpps				xmm0,			xmm0,			xmm1,			31
			ret
uXfuncend

uXfuncstart _uX_mm_cmp_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_mmvcmpssjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_mmvcmpssjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_mmvcmpss_0 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			0
			ret
		_mmvcmpss_1 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			1
			ret
		_mmvcmpss_2 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			2
			ret
		_mmvcmpss_3 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			3
			ret
		_mmvcmpss_4 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			4
			ret
		_mmvcmpss_5 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			5
			ret
		_mmvcmpss_6 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			6
			ret
		_mmvcmpss_7 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			7
			ret
		_mmvcmpss_8 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			8
			ret
		_mmvcmpss_9 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			9
			ret
		_mmvcmpss_10 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			10
			ret
		_mmvcmpss_11 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			11
			ret
		_mmvcmpss_12 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			12
			ret
		_mmvcmpss_13 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			13
			ret
		_mmvcmpss_14 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			14
			ret
		_mmvcmpss_15 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			15
			ret
		_mmvcmpss_16 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			16
			ret
		_mmvcmpss_17 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			17
			ret
		_mmvcmpss_18 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			18
			ret
		_mmvcmpss_19 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			19
			ret
		_mmvcmpss_20 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			20
			ret
		_mmvcmpss_21 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			21
			ret
		_mmvcmpss_22 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			22
			ret
		_mmvcmpss_23 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			23
			ret
		_mmvcmpss_24 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			24
			ret
		_mmvcmpss_25 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			25
			ret
		_mmvcmpss_26 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			26
			ret
		_mmvcmpss_27 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			27
			ret
		_mmvcmpss_28 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			28
			ret
		_mmvcmpss_29 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			29
			ret
		_mmvcmpss_30 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			30
			ret
		_mmvcmpss_31 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			31
			ret
		;.endif
		
uXfuncend

uXfuncstart _uX_mm_cmpeqoq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			0
			ret
uXfuncend

uXfuncstart _uX_mm_cmpltos_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm_cmpleos_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			2
			ret
uXfuncend

uXfuncstart _uX_mm_cmpunordq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			3
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnequq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			4
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnltus_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			5
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnleus_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			6
			ret
uXfuncend

uXfuncstart _uX_mm_cmpordq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			7
			ret
uXfuncend

uXfuncstart _uX_mm_cmpequq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			8
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngeus_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			9
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngtus_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			10
			ret
uXfuncend

uXfuncstart _uX_mm_cmpfalseoq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			11
			ret
uXfuncend

uXfuncstart _uX_mm_cmpneqoq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			12
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgeos_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			13
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgtos_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			14
			ret
uXfuncend

uXfuncstart _uX_mm_cmptrueuq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			15
			ret
uXfuncend

uXfuncstart _uX_mm_cmpeqos_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			16
			ret
uXfuncend

uXfuncstart _uX_mm_cmpltoq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			17
			ret
uXfuncend

uXfuncstart _uX_mm_cmpleoq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			18
			ret
uXfuncend

uXfuncstart _uX_mm_cmpunords_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			19
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnequs_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			20
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnltuq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			21
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnleuq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			22
			ret
uXfuncend

uXfuncstart _uX_mm_cmpords_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			23
			ret
uXfuncend

uXfuncstart _uX_mm_cmpequs_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			24
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngeuq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			25
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngtuq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			26
			ret
uXfuncend

uXfuncstart _uX_mm_cmpfalseos_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			27
			ret
uXfuncend

uXfuncstart _uX_mm_cmpneqos_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			28
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgeoq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			29
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgtoq_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			30
			ret
uXfuncend

uXfuncstart _uX_mm_cmptrueus_ss, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpss				xmm0,			xmm0,			xmm1,			31
			ret
uXfuncend

;******************
; FP, comparison return int
;******************
uXfuncstart _uX_mm_comi_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_mmvcomissjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_mmvcomissjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_mmvcomiss_0 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			0
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_1 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			1
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_2 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			2
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_3 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			3
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_4 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			4
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_5 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			5
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_6 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			6
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_7 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			7
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_8 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			8
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_9 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			9
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_10 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			10
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_11 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			11
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_12 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			12
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_13 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			13
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_14 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			14
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_15 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			15
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_16 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			16
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_17 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			17
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_18 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			18
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_19 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			19
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_20 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			20
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_21 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			21
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_22 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			22
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_23 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			23
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_24 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			24
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_25 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			25
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_26 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			26
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_27 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			27
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_28 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			28
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_29 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			29
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_30 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			30
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomiss_31 label size_t
			vcmpss				xmm0,			xmm0,			xmm1,			31
			movd				eax,			xmm0
			and					eax,			true
			ret
		;.endif
		
uXfuncend

uXfuncstart _uX_mm_comieqoq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			0
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiltos_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			1
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comileos_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			2
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiunordq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			3
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominequq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			4
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominltus_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			5
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominleus_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			6
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiordq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			7
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiequq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			8
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comingeus_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			9
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comingtus_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			10
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comifalseoq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			11
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comineqoq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			12
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comigeos_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			13
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comigtos_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			14
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comitrueuq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			15
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comieqos_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			16
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiltoq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			17
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comileoq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			18
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiunords_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			19
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominequs_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			20
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominltuq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			21
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominleuq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			22
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiords_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			23
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiequs_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			24
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comingeuq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			25
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comingtuq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			26
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comifalseos_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			27
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comineqos_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			28
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comigeoq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			29
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comigtoq_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			30
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comitrueus_ss, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpss				xmm0,			xmm0,			xmm1,			31
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend
	
;******************
; DP, comparison
;******************
uXfuncstart _uX_mm_cmp_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_mmvcmppdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_mmvcmppdjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_mmvcmppd_0 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			0
			ret
		_mmvcmppd_1 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			1
			ret
		_mmvcmppd_2 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			2
			ret
		_mmvcmppd_3 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			3
			ret
		_mmvcmppd_4 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			4
			ret
		_mmvcmppd_5 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			5
			ret
		_mmvcmppd_6 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			6
			ret
		_mmvcmppd_7 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			7
			ret
		_mmvcmppd_8 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			8
			ret
		_mmvcmppd_9 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			9
			ret
		_mmvcmppd_10 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			10
			ret
		_mmvcmppd_11 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			11
			ret
		_mmvcmppd_12 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			12
			ret
		_mmvcmppd_13 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			13
			ret
		_mmvcmppd_14 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			14
			ret
		_mmvcmppd_15 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			15
			ret
		_mmvcmppd_16 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			16
			ret
		_mmvcmppd_17 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			17
			ret
		_mmvcmppd_18 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			18
			ret
		_mmvcmppd_19 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			19
			ret
		_mmvcmppd_20 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			20
			ret
		_mmvcmppd_21 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			21
			ret
		_mmvcmppd_22 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			22
			ret
		_mmvcmppd_23 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			23
			ret
		_mmvcmppd_24 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			24
			ret
		_mmvcmppd_25 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			25
			ret
		_mmvcmppd_26 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			26
			ret
		_mmvcmppd_27 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			27
			ret
		_mmvcmppd_28 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			28
			ret
		_mmvcmppd_29 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			29
			ret
		_mmvcmppd_30 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			30
			ret
		_mmvcmppd_31 label size_t
			vcmppd				xmm0,			xmm0,			xmm1,			31
			ret
		;.endif
		
uXfuncend

uXfuncstart _uX_mm_cmpeqoq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			0
			ret
uXfuncend

uXfuncstart _uX_mm_cmpltos_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm_cmpleos_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			2
			ret
uXfuncend

uXfuncstart _uX_mm_cmpunordq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			3
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnequq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			4
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnltus_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			5
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnleus_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			6
			ret
uXfuncend

uXfuncstart _uX_mm_cmpordq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			7
			ret
uXfuncend

uXfuncstart _uX_mm_cmpequq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			8
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngeus_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			9
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngtus_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			10
			ret
uXfuncend

uXfuncstart _uX_mm_cmpfalseoq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			11
			ret
uXfuncend

uXfuncstart _uX_mm_cmpneqoq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			12
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgeos_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			13
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgtos_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			14
			ret
uXfuncend

uXfuncstart _uX_mm_cmptrueuq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			15
			ret
uXfuncend

uXfuncstart _uX_mm_cmpeqos_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			16
			ret
uXfuncend

uXfuncstart _uX_mm_cmpltoq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			17
			ret
uXfuncend

uXfuncstart _uX_mm_cmpleoq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			18
			ret
uXfuncend

uXfuncstart _uX_mm_cmpunords_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			19
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnequs_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			20
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnltuq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			21
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnleuq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			22
			ret
uXfuncend

uXfuncstart _uX_mm_cmpords_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			23
			ret
uXfuncend

uXfuncstart _uX_mm_cmpequs_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			24
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngeuq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			25
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngtuq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			26
			ret
uXfuncend

uXfuncstart _uX_mm_cmpfalseos_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			27
			ret
uXfuncend

uXfuncstart _uX_mm_cmpneqos_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			28
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgeoq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			29
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgtoq_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			30
			ret
uXfuncend

uXfuncstart _uX_mm_cmptrueus_pd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmppd				xmm0,			xmm0,			xmm1,			31
			ret
uXfuncend

uXfuncstart _uX_mm_cmp_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_mmvcmpsdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_mmvcmpsdjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_mmvcmpsd_0 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			0
			ret
		_mmvcmpsd_1 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			1
			ret
		_mmvcmpsd_2 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			2
			ret
		_mmvcmpsd_3 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			3
			ret
		_mmvcmpsd_4 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			4
			ret
		_mmvcmpsd_5 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			5
			ret
		_mmvcmpsd_6 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			6
			ret
		_mmvcmpsd_7 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			7
			ret
		_mmvcmpsd_8 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			8
			ret
		_mmvcmpsd_9 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			9
			ret
		_mmvcmpsd_10 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			10
			ret
		_mmvcmpsd_11 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			11
			ret
		_mmvcmpsd_12 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			12
			ret
		_mmvcmpsd_13 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			13
			ret
		_mmvcmpsd_14 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			14
			ret
		_mmvcmpsd_15 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			15
			ret
		_mmvcmpsd_16 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			16
			ret
		_mmvcmpsd_17 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			17
			ret
		_mmvcmpsd_18 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			18
			ret
		_mmvcmpsd_19 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			19
			ret
		_mmvcmpsd_20 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			20
			ret
		_mmvcmpsd_21 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			21
			ret
		_mmvcmpsd_22 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			22
			ret
		_mmvcmpsd_23 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			23
			ret
		_mmvcmpsd_24 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			24
			ret
		_mmvcmpsd_25 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			25
			ret
		_mmvcmpsd_26 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			26
			ret
		_mmvcmpsd_27 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			27
			ret
		_mmvcmpsd_28 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			28
			ret
		_mmvcmpsd_29 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			29
			ret
		_mmvcmpsd_30 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			30
			ret
		_mmvcmpsd_31 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			31
			ret
		;.endif
		
uXfuncend

uXfuncstart _uX_mm_cmpeqoq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			0
			ret
uXfuncend

uXfuncstart _uX_mm_cmpltos_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			1
			ret
uXfuncend

uXfuncstart _uX_mm_cmpleos_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			2
			ret
uXfuncend

uXfuncstart _uX_mm_cmpunordq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			3
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnequq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			4
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnltus_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			5
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnleus_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			6
			ret
uXfuncend

uXfuncstart _uX_mm_cmpordq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			7
			ret
uXfuncend

uXfuncstart _uX_mm_cmpequq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			8
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngeus_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			9
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngtus_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			10
			ret
uXfuncend

uXfuncstart _uX_mm_cmpfalseoq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			11
			ret
uXfuncend

uXfuncstart _uX_mm_cmpneqoq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			12
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgeos_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			13
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgtos_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			14
			ret
uXfuncend

uXfuncstart _uX_mm_cmptrueuq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			15
			ret
uXfuncend

uXfuncstart _uX_mm_cmpeqos_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			16
			ret
uXfuncend

uXfuncstart _uX_mm_cmpltoq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			17
			ret
uXfuncend

uXfuncstart _uX_mm_cmpleoq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			18
			ret
uXfuncend

uXfuncstart _uX_mm_cmpunords_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			19
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnequs_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			20
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnltuq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			21
			ret
uXfuncend

uXfuncstart _uX_mm_cmpnleuq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			22
			ret
uXfuncend

uXfuncstart _uX_mm_cmpords_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			23
			ret
uXfuncend

uXfuncstart _uX_mm_cmpequs_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			24
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngeuq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			25
			ret
uXfuncend

uXfuncstart _uX_mm_cmpngtuq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			26
			ret
uXfuncend

uXfuncstart _uX_mm_cmpfalseos_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			27
			ret
uXfuncend

uXfuncstart _uX_mm_cmpneqos_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			28
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgeoq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			29
			ret
uXfuncend

uXfuncstart _uX_mm_cmpgtoq_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			30
			ret
uXfuncend

uXfuncstart _uX_mm_cmptrueus_sd, xmmword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
			vcmpsd				xmm0,			xmm0,			xmm1,			31
			ret
uXfuncend

;******************
; DP, comparison return int
;******************
uXfuncstart _uX_mm_comi_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B), _Imm8:dword
	
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_mmvcomisdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_mmvcomisdjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_mmvcomisd_0 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			0
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_1 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			1
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_2 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			2
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_3 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			3
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_4 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			4
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_5 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			5
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_6 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			6
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_7 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			7
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_8 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			8
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_9 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			9
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_10 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			10
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_11 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			11
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_12 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			12
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_13 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			13
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_14 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			14
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_15 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			15
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_16 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			16
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_17 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			17
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_18 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			18
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_19 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			19
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_20 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			20
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_21 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			21
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_22 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			22
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_23 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			23
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_24 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			24
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_25 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			25
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_26 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			26
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_27 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			27
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_28 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			28
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_29 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			29
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_30 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			30
			movd				eax,			xmm0
			and					eax,			true
			ret
		_mmvcomisd_31 label size_t
			vcmpsd				xmm0,			xmm0,			xmm1,			31
			movd				eax,			xmm0
			and					eax,			true
			ret
		;.endif
		
uXfuncend

uXfuncstart _uX_mm_comieqoq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			0
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiltos_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			1
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comileos_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			2
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiunordq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			3
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominequq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			4
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominltus_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			5
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominleus_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			6
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiordq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			7
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiequq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			8
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comingeus_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			9
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comingtus_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			10
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comifalseoq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			11
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comineqoq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			12
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comigeos_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			13
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comigtos_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			14
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comitrueuq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			15
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comieqos_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			16
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiltoq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			17
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comileoq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			18
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiunords_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			19
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominequs_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			20
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominltuq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			21
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_cominleuq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			22
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiords_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			23
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comiequs_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			24
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comingeuq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			25
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comingtuq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			26
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comifalseos_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			27
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comineqos_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			28
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comigeoq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			29
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comigtoq_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			30
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend

uXfuncstart _uX_mm_comitrueus_sd, dword, < >, xmmwordparam1(Inxmm_A), xmmwordparam2(Inxmm_B)
			vcmpsd				xmm0,			xmm0,			xmm1,			31
			movd				eax,			xmm0
			and					eax,			true
			ret
uXfuncend
	
endif ;__MIC__

	end
