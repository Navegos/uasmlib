if @Platform EQ 0
	ifndef WIN32
		define WIN32
	endif
	ifndef __X32__
		define __X32__
	endif
	ifndef WINDOWS
		define WINDOWS
	endif
	ifdef __KNC__
		error MIC not available in windows
	endif
	ifdef __MIC__
		error MIC not available in windows
	endif
endif

if @Platform EQ 1
	ifndef WIN64
		define WIN64
	endif
	ifndef __X64__
		define __X64__
	endif
	ifndef WINDOWS
		define WINDOWS
	endif
	ifdef __KNC__
		error MIC not available in windows
	endif
	ifdef __MIC__
		error MIC not available in windows
	endif
endif

if @Platform EQ 2
	ifndef ELF32
		define ELF32
	endif
	ifndef __X32__
		define __X32__
	endif
	ifndef UNIX
		define UNIX
	endif
	ifdef __KNC__
		error MIC not available in unix 32-bits
	endif
	ifdef __MIC__
		error MIC not available in unix 32-bits
	endif
endif

if @Platform EQ 3
	ifndef ELF64
		define ELF64
	endif
	ifndef __X64__
		define __X64__
	endif
	ifndef UNIX
		define UNIX
	endif
	ifdef __KNC__
		ifndef uXm_MIC
		define uXm_MIC
		endif
	endif
	ifdef __MIC__
		ifndef uXm_MIC
		define uXm_MIC
		endif
	endif
endif

if @Platform EQ 4
	ifndef MACHO64
		define MACHO64
	endif
	ifndef __X64__
		define __X64__
	endif
	ifndef UNIX
		define UNIX
	endif
	ifdef __KNC__
		error MIC not available in mac
	endif
	ifdef __MIC__
		error MIC not available in mac
	endif
endif

ifdef WINDOWS
	ifdef __X64__
		ifndef DEFINED_VECTORCALL
			define DEFINED_VECTORCALL
		endif
		__veccall		textequ		<VECTORCALL>
		;Parameters RCX/XMM0, RDX/XMM1, R8/XMM2, R9/XMM3 + XMM0-XMM5/YMM0-YMM5
		;Preserve RBX, RBP, RDI, RSI, RSP, R12, R13, R14, R15, XMM6:XMM15
		;Return EAX:EDX/XMM0:XMM3

		;64bits
		rreturn		textequ		<rax>
		rparam1		textequ		<rcx> ;8
		rparam2		textequ		<rdx> ;16
		rparam3		textequ		<r8> ;24
		rparam4		textequ		<r9> ;32
		rparam5		textequ		<[rsp+40]> ;40
		rparam6		textequ		<[rsp+48]> ;48
		rparam7		textequ		<[rsp+56]> ;56
		rparam8		textequ		<[rsp+64]> ;64
		rparam9		textequ		<[rsp+72]> ;72
		rparam10	textequ		<[rsp+80]> ;80
		rparam11	textequ		<[rsp+88]> ;88
		rparam12	textequ		<[rsp+96]> ;96
		rparam13	textequ		<[rsp+104]> ;104
		rparam14	textequ		<[rsp+112]> ;112
		rparam15	textequ		<[rsp+120]> ;120
		rparam16	textequ		<[rsp+128]> ;128
		rparam17	textequ		<[rsp+136]> ;136
		rsidx		textequ		<rsi>
		rdidx		textequ		<rdi>
		rbptr		textequ		<rbp>
		rsptr		textequ		<rsp>
		rbase		textequ		<rbx>
		;64bits
		qreturn		textequ		<rax>
		qparam1		textequ		<rcx> ;8
		qparam2		textequ		<rdx> ;16
		qparam3		textequ		<r8> ;24
		qparam4		textequ		<r9> ;32
		qparam5		textequ		<[rsp+40]> ;40
		qparam6		textequ		<[rsp+48]> ;48
		qparam7		textequ		<[rsp+56]> ;56
		qparam8		textequ		<[rsp+64]> ;64
		qparam9		textequ		<[rsp+72]> ;72
		qparam10	textequ		<[rsp+80]> ;80
		qparam11	textequ		<[rsp+88]> ;88
		qparam12	textequ		<[rsp+96]> ;96
		qparam13	textequ		<[rsp+104]> ;104
		qparam14	textequ		<[rsp+112]> ;112
		qparam15	textequ		<[rsp+120]> ;120
		qparam16	textequ		<[rsp+128]> ;128
		qparam17	textequ		<[rsp+136]> ;136
		qsidx		textequ		<rsi>
		qdidx		textequ		<rdi>
		;32bits
		dreturn		textequ		<eax>
		dparam1		textequ		<ecx> ;4
		dparam2		textequ		<edx> ;8
		dparam3		textequ		<r8d> ;12
		dparam4		textequ		<r9d> ;16
		dparam5		textequ		<[esp+20]> ;20
		dparam6		textequ		<[esp+24]> ;24
		dparam7		textequ		<[esp+28]> ;28
		dparam8		textequ		<[esp+32]> ;32
		dparam9		textequ		<[esp+36]> ;36
		dparam10	textequ		<[esp+40]> ;40
		dparam11	textequ		<[esp+44]> ;44
		dparam12	textequ		<[esp+48]> ;48
		dparam13	textequ		<[esp+52]> ;52
		dparam14	textequ		<[esp+56]> ;56
		dparam15	textequ		<[esp+60]> ;60
		dparam16	textequ		<[esp+64]> ;64
		dparam17	textequ		<[esp+68]> ;68
		dsidx		textequ		<esi>
		ddidx		textequ		<edi>
		;16bits
		wreturn		textequ		<ax>
		wparam1		textequ		<cx> ;2
		wparam2		textequ		<dx> ;4
		wparam3		textequ		<r8w> ;6
		wparam4		textequ		<r9w> ;8
		wparam5		textequ		<[sp+10]> ;10
		wparam6		textequ		<[sp+12]> ;12
		wparam7		textequ		<[sp+14]> ;14
		wparam8		textequ		<[sp+16]> ;16
		wparam9		textequ		<[sp+18]> ;18
		wparam10	textequ		<[sp+20]> ;20
		wparam11	textequ		<[sp+22]> ;22
		wparam12	textequ		<[sp+24]> ;24
		wparam13	textequ		<[sp+26]> ;26
		wparam14	textequ		<[sp+28]> ;28
		wparam15	textequ		<[sp+30]> ;30
		wparam16	textequ		<[sp+32]> ;32
		wparam17	textequ		<[sp+34]> ;34
		wsidx		textequ		<si>
		wdidx		textequ		<di>
		;8bits
		breturn		textequ		<al>
		bparam1		textequ		<cl> ;1
		bparam2		textequ		<dl> ;2
		bparam3		textequ		<r8b> ;3
		bparam4		textequ		<r9b> ;4
		bparam5		textequ		<[spl+5]> ;5
		bparam6		textequ		<[spl+6]> ;6
		bparam7		textequ		<[spl+7]> ;7
		bparam8		textequ		<[spl+8]> ;8		
		bparam9		textequ		<[spl+9]> ;9
		bparam10	textequ		<[spl+10]> ;10
		bparam11	textequ		<[spl+11]> ;11
		bparam12	textequ		<[spl+12]> ;12
		bparam13	textequ		<[spl+13]> ;13
		bparam14	textequ		<[spl+14]> ;14
		bparam15	textequ		<[spl+15]> ;15
		bparam16	textequ		<[spl+16]> ;16
		bparam17	textequ		<[spl+17]> ;17
		bsidx		textequ		<sil>
		bdidx		textequ		<dil>
	else ;__X64__
		ifdef __X32_VECTORCALL__ ;not available with uasm macrolib
			ifndef DEFINED_VECTORCALL
				define DEFINED_VECTORCALL
			endif
			__veccall		textequ		<VECTORCALL>
			;ECX,EDX, XMM0-XMM5/YMM0-YMM5
			;Preserve EBX, EBP, EDI, ESI, ESP, R12, R13, R14, R15, XMM6:XMM15
			;Return EAX:EDX/XMM0:XMM3
		else
			ifndef DEFINED_FASTCALL
				define DEFINED_FASTCALL
			endif
			__veccall		textequ		<FASTCALL> 
			;Parameters ECX, EDX
			;Preserve EBX
			;Return EAX:EDX/XMM0:XMM3
		endif
		;32bits
		rreturn		textequ		<eax>
		rparam1		textequ		<ecx> ;4
		rparam2		textequ		<edx> ;8
		rparam3		textequ		<[esp+12]> ;12
		rparam4		textequ		<[esp+16]> ;16
		rparam5		textequ		<[esp+20]> ;20
		rparam6		textequ		<[esp+24]> ;24
		rparam7		textequ		<[esp+28]> ;28
		rparam8		textequ		<[esp+32]> ;32
		rparam9		textequ		<[esp+36]> ;36
		rparam10	textequ		<[esp+40]> ;40
		rparam11	textequ		<[esp+44]> ;44
		rparam12	textequ		<[esp+48]> ;48
		rparam13	textequ		<[esp+52]> ;52
		rparam14	textequ		<[esp+56]> ;56
		rparam15	textequ		<[esp+60]> ;60
		rparam16	textequ		<[esp+64]> ;64
		rparam17	textequ		<[esp+68]> ;68
		rsidx		textequ		<esi>
		rdidx		textequ		<edi>
		rbptr		textequ		<ebp>
		rsptr		textequ		<esp>
		rbase		textequ		<ebx>
		;32bits
		dreturn		textequ		<eax>
		dparam1		textequ		<ecx> ;4
		dparam2		textequ		<edx> ;8
		dparam3		textequ		<[esp+12]> ;12
		dparam4		textequ		<[esp+16]> ;16
		dparam5		textequ		<[esp+20]> ;20
		dparam6		textequ		<[esp+24]> ;24
		dparam7		textequ		<[esp+28]> ;28
		dparam8		textequ		<[esp+32]> ;32
		dparam9		textequ		<[esp+36]> ;36
		dparam10	textequ		<[esp+40]> ;40
		dparam11	textequ		<[esp+44]> ;44
		dparam12	textequ		<[esp+48]> ;48
		dparam13	textequ		<[esp+52]> ;52
		dparam14	textequ		<[esp+56]> ;56
		dparam15	textequ		<[esp+60]> ;60
		dparam16	textequ		<[esp+64]> ;64
		dparam17	textequ		<[esp+68]> ;68
		dsidx		textequ		<esi>
		ddidx		textequ		<edi>
		;16bits
		wreturn		textequ		<ax>
		wparam1		textequ		<cx> ;2
		wparam2		textequ		<dx> ;4
		wparam3		textequ		<[sp+6]> ;6
		wparam4		textequ		<[sp+8]> ;8
		wparam5		textequ		<[sp+10]> ;10
		wparam6		textequ		<[sp+12]> ;12
		wparam7		textequ		<[sp+14]> ;14
		wparam8		textequ		<[sp+16]> ;16
		wparam9		textequ		<[sp+18]> ;18
		wparam10	textequ		<[sp+20]> ;20
		wparam11	textequ		<[sp+22]> ;22
		wparam12	textequ		<[sp+24]> ;24
		wparam13	textequ		<[sp+26]> ;26
		wparam14	textequ		<[sp+28]> ;28
		wparam15	textequ		<[sp+30]> ;30
		wparam16	textequ		<[sp+32]> ;32
		wparam17	textequ		<[sp+34]> ;34
		wsidx		textequ		<si>
		wdidx		textequ		<di>
		;8bits
		breturn		textequ		<al>
		bparam1		textequ		<cl> ;1
		bparam2		textequ		<dl> ;2
		bparam3		textequ		<[spl+3]> ;3
		bparam4		textequ		<[spl+4]> ;4
		bparam5		textequ		<[spl+5]> ;5
		bparam6		textequ		<[spl+6]> ;6
		bparam7		textequ		<[spl+7]> ;7
		bparam8		textequ		<[spl+8]> ;8		
		bparam9		textequ		<[spl+9]> ;9
		bparam10	textequ		<[spl+10]> ;10
		bparam11	textequ		<[spl+11]> ;11
		bparam12	textequ		<[spl+12]> ;12
		bparam13	textequ		<[spl+13]> ;13
		bparam14	textequ		<[spl+14]> ;14
		bparam15	textequ		<[spl+15]> ;15
		bparam16	textequ		<[spl+16]> ;16
		bparam17	textequ		<[spl+17]> ;17
	endif ;__X64__
else ;UNIX
	ifdef __X64__
		ifndef DEFINED_SYSTEMV
			define DEFINED_SYSTEMV
		endif
		__veccall		textequ		<SYSTEMV>
		;Parameters RDI, RSI, RDX, RCX, R8, R9, XMM0–XMM7/YMM0–YMM7
		;Preserve RBX, RSP, RBP, R12, R13, R14, R15
		;Return EAX:EDX/XMM0:XMM3
		ereturn		textequ		<eax>
		rreturn		textequ		<eax>
		eparam1		textequ		<edi>
		eparam2		textequ		<esi>
		rparam1		textequ		<rdi>
		rparam2		textequ		<rsi>
	else ;__X64__
		ifdef __X32_SYSTEMV__
			ifndef DEFINED_SYSTEMV
				define DEFINED_SYSTEMV
			endif
			__veccall		textequ		<SYSTEMV>
			;none?ECX,EDX, XMM0–XMM7/YMM0–YMM7
			;Preserve EBX, ESI, EDI, EBP, ESP
			;Return EAX:EDX/XMM0:XMM3
		else
			ifndef DEFINED_FASTCALL
				define DEFINED_FASTCALL
			endif
			__veccall		textequ		<FASTCALL>
			;Parameters ECX, EDX
			;Preserve EBX
			;Return EAX:EDX/XMM0:XMM3
		endif
		ereturn		textequ		<eax>
		rreturn		textequ		<eax>
		eparam1		textequ		<ecx>
		eparam2		textequ		<edx>
		rparam1		textequ		<ecx>
		rparam2		textequ		<edx>
	endif ;__X64__
endif ;UNIX

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
	ptr_t_size	equ		8
	reg_t_size	equ		8
	size_t		textequ		<qword>
	psize_t		textequ		<ptr qword>
	size_tp		textequ		<qword ptr>
	isize_t		textequ		<dq>
	size_t_size	equ		8

	__align_size_t macro
  		alignment textequ <align 8>
  	alignment
	endm

else
	ptr_t_size	equ		4
	reg_t_size	equ		4
	size_t		textequ		<dword>
	psize_t		textequ		<ptr dword>
	size_tp		textequ		<dword ptr>
	isize_t		textequ		<dd>
	size_t_size	equ		4
	
	__align_size_t macro
  		alignment textequ <align 4>
  	alignment
	endm

endif ;__X64__

	__align macro AlignSize
  		alignment textequ <align AlignSize>
  	alignment
	endm
	
	__align_field macro FieldAlignSize
  		field_option_alignment textequ <option fieldalign:FieldAlignSize>
  	field_option_alignment
	endm
	
	__align_proc macro FieldAlignSize, ProcAlignSize
  		proc_option_alignment textequ <option procalign:ProcAlignSize>
	proc_option_alignment
	endm

	__align_fp_opt macro FieldAlignSize, ProcAlignSize
  		field_option_alignment textequ <option fieldalign:FieldAlignSize>
  		proc_option_alignment textequ <option procalign:ProcAlignSize>
  	field_option_alignment
	proc_option_alignment
	endm

false	equ		0h
true	equ		1h

; dword
m32_false		equ		00000000h
m32_true		equ		0ffffffffh

; qword
m64_false		equ		0000000000000000h
m64_true		equ		0ffffffffffffffffh

; /* EFLAGS %eax=00H, %ebx=00H */
bit_CPUID 					equ		00200000h	; 1 << 21

; /* %eax=00H, %ecx %ebx */
bit_ntel					equ		6c65746eh	; 'GenuineIntel'
bit_cAMD					equ		444d4163h	; 'AuthenticAMD'

; /* %eax=00H, %ebx */
bit_Cent					equ		746e6543h	; 'CentaurHauls'
bit_VIA						equ		20414956h	; 'VIA VIA VIA'
bit_Cyri					equ		69727943h	; 'CyrixInstead'
bit_NexG					equ		4778654eh	; 'NexGenDriven'

; /* %eax=01H, %ecx */
bit_SSE3					equ		00000001h	; 1 << 0
bit_PCLMULQDQ				equ		00000002h	; 1 << 1
bit_MONITOR 				equ		00000008h	; 1 << 3
bit_SSSE3 					equ		00000200h	; 1 << 9
bit_FMA 					equ		00001000h	; 1 << 12
bit_CMPXCHG16B 				equ		00002000h	; 1 << 13
bit_SSE41 					equ		00080000h	; 1 << 19
bit_SSE42 					equ		00100000h	; 1 << 20
bit_MOVBE 					equ		00400000h	; 1 << 22
bit_POPCNT 					equ		00800000h	; 1 << 23
bit_AES 					equ		02000000h	; 1 << 25
bit_XSAVE 					equ		04000000h	; 1 << 26
bit_OSXSAVE 				equ		08000000h	; 1 << 27
bit_AVX 					equ		10000000h	; 1 << 28
bit_F16C 					equ		20000000h	; 1 << 29
bit_RDRAND 					equ		40000000h	; 1 << 30

bit_AVX_FMA					equ		18001000h	; 1 << 12 | 1 << 27 | 1 << 28
bit_OSXS_AVX				equ		18000000h	; 1 << 27 | 1 << 28
bit_AVX_F16C				equ		38000000h	; 1 << 27 | 1 << 28 | 1 << 29

bit_SSE3_AES 				equ		02000001h	; 1 << 0 | 1 << 25
bit_SSSE3_AES 				equ		02000200h	; 1 << 9 | 1 << 25
bit_SSE41_AES 				equ		02080000h	; 1 << 19 | 1 << 25
bit_SSE42_AES 				equ		02100000h	; 1 << 20 | 1 << 25

bit_SSE3_PCLMULQDQ			equ		00000003h	; 1 << 1 | 1 << 1
bit_SSSE3_PCLMULQDQ			equ		00000202h	; 1 << 1 | 1 << 9
bit_SSE41_PCLMULQDQ			equ		00080002h	; 1 << 1 | 1 << 19
bit_SSE42_PCLMULQDQ			equ		00100002h	; 1 << 1 | 1 << 20

; /* %eax=01H, %edx */
bit_FPU						equ		00000001h	; 1 << 0
bit_TSC						equ		00000010h	; 1 << 4
bit_MSR						equ		00000020h	; 1 << 5
bit_CMPXCHG8B				equ		00000100h	; 1 << 8
bit_SEP						equ		00000800h	; 1 << 11
bit_CMOV					equ		00008000h	; 1 << 15
bit_CLFSH					equ		00080000h	; 1 << 19
bit_MMX						equ		00800000h	; 1 << 23
bit_FXSR					equ		01000000h	; 1 << 24
bit_SSE						equ		02000000h	; 1 << 25
bit_SSE2					equ		04000000h	; 1 << 26

; /* %eax=07H, %ebx */
bit_FSGSBASE				equ		00000001h	; 1 << 0
bit_SGX						equ		00000004h	; 1 << 2
bit_BMI1					equ		00000008h	; 1 << 3
bit_HLE						equ		00000010h	; 1 << 4
bit_AVX2					equ		00000020h	; 1 << 5
bit_SMEP					equ		00000080h	; 1 << 7
bit_BMI2					equ		00000100h	; 1 << 8
bit_ERMS					equ		00000200h	; 1 << 9
bit_INVPCID					equ		00000400h	; 1 << 10
bit_RTM						equ		00000800h	; 1 << 11
bit_MPX						equ		00004000h	; 1 << 14
bit_AVX512F					equ		00010000h	; 1 << 16
bit_AVX512DQ				equ		00020000h	; 1 << 17
bit_RDSEED					equ		00040000h	; 1 << 18
bit_ADX						equ		00080000h	; 1 << 19
bit_SMAP					equ		00100000h	; 1 << 20
bit_AVX512_IFMA				equ		00200000h	; 1 << 21
bit_CLFLUSHOPT				equ		00800000h	; 1 << 23
bit_CLWB					equ		01000000h	; 1 << 24
bit_AVX512PF				equ		04000000h	; 1 << 26
bit_AVX512ER				equ		08000000h	; 1 << 27
bit_AVX512CD				equ		10000000h	; 1 << 28
bit_SHA						equ		20000000h	; 1 << 29
bit_AVX512BW				equ		40000000h	; 1 << 30
bit_AVX512VL				equ		80000000h	; 1 << 31

bit_AVX512F_DQ				equ		00030000h	; 1 << 16 | 1 << 17
bit_AVX512F_DQ_VL			equ		80030000h	; 1 << 16 | 1 << 17 | 1 << 31
bit_AVX512F_IFMA			equ		00210000h	; 1 << 16 | 1 << 21
bit_AVX512F_IFMA_VL			equ		80210000h	; 1 << 16 | 1 << 21 | 1 << 31
bit_AVX512F_PF				equ		04010000h	; 1 << 16 | 1 << 26
bit_AVX512F_ER				equ		08010000h	; 1 << 16 | 1 << 27
bit_AVX512F_CD				equ		10010000h	; 1 << 16 | 1 << 28
bit_AVX512F_CD_VL			equ		90010000h	; 1 << 16 | 1 << 28 | 1 << 31
bit_AVX512F_BW				equ		40010000h	; 1 << 16 | 1 << 30
bit_AVX512F_BW_VL			equ		0C0010000h	; 1 << 16 | 1 << 30 | 1 << 31
bit_AVX512F_VL				equ		80010000h	; 1 << 16 | 1 << 31

; /* %eax=07H, %ecx */
bit_PREFETCHWT1				equ		00000001h	; 1 << 0
bit_AVX512_VBMI				equ		00000002h	; 1 << 1
bit_UMIP					equ		00000004h	; 1 << 2
bit_PKU						equ		00000008h	; 1 << 3
bit_OSPKE					equ		00000010h	; 1 << 4
bit_AVX512_VBMI2			equ		00000040h	; 1 << 6
bit_GFNI					equ		00000100h	; 1 << 8
bit_VAES					equ		00000200h	; 1 << 9
bit_VPCLMULQDQ				equ		00000400h	; 1 << 10
bit_AVX512_VNNI				equ		00000800h	; 1 << 11
bit_AVX512_BITALG			equ		00001000h	; 1 << 12
bit_AVX512_VPOPCNTDQ		equ		00004000h	; 1 << 14
bit_RDPID					equ		00400000h	; 1 << 22

; /* %eax=07H, %edx */
bit_AVX512_4VNNIW			equ		00000004h	; 1 << 2
bit_AVX512_4FMAPS			equ		00000008h	; 1 << 3

; /* %eax=80000001H, %ecx */
bit_LAHF					equ		00000001h	; 1 << 0
bit_LZCNT					equ		00000020h	; 1 << 5
bit_ABM						equ		00000020h	; 1 << 5
bit_SSE4a					equ		00000040h	; 1 << 6
bit_PREFETCHW				equ		00000100h	; 1 << 8
bit_XOP						equ		00000800h	; 1 << 11
bit_LWP						equ		00008000h	; 1 << 15
bit_FMA4					equ		00010000h	; 1 << 16
bit_TBM						equ		00200000h	; 1 << 21
bit_MWAITX					equ		20000000h	; 1 << 29

; /* %eax=80000001H, %edx */
bit_SYSCALL					equ		00000800h	; 1 << 11
bit_MMXEXT					equ		00400000h	; 1 << 22
bit_RDTSCP					equ		08000000h	; 1 << 27
bit_3DNOWEXT				equ		40000000h	; 1 << 30
bit_3DNOW					equ		80000000h	; 1 << 31

; /* supported instruction set return values */

intrinset_80386				equ		0h	;0            = 80386 instruction set
intrinset_MMX				equ		8h	;8   or above = MMX (MMX) supported by CPU (not testing for O.S. support)
intrinset_CMOV				equ		9h	;9   or above = CMOV supported by CPU
intrinset_SSE				equ		0ah ;10  or above = SSE (XMM) supported by CPU and operating system
intrinset_SSE2				equ		14h ;20  or above = SSE2
intrinset_SSE3				equ		1eh ;30  or above = SSE3
intrinset_SSSE3				equ		1fh ;31  or above = Supplementary SSE3 (SSSE3)
intrinset_SSE41				equ		29h ;41  or above = SSE4.1
intrinset_SSE42				equ		2ah ;42  or above = SSE4.2 & POPCNT
intrinset_AVX				equ		32h ;50  or above = AVX (YMM) supported by CPU and operating system
intrinset_PCLMULAES			equ		33h ;51  or above = PCLMUL & AES
intrinset_AVX2				equ		34h ;52  or above = AVX2
intrinset_FMATOLZCNT		equ		39h ;57  or above = FMA3, F16C, BMI1, BMI2, LZCNT
intrinset_AVX512F			equ		3ch ;60  or above = AVX512F (ZMM) supported by CPU and operating system
intrinset_AVX512DQ			equ		3dh ;61  or above = AVX512DQ
intrinset_AVX512BW			equ		3eh ;62  or above = AVX512BW
intrinset_AVX512VL			equ		3fh ;63  or above = AVX512VL

; /* CMP S/P S/D Opcodes Condition Predicate */
CMPP_EQ						equ		0h
CMPP_LT						equ		1h
CMPP_LE						equ		2h
CMPP_UNORD					equ		3h
CMPP_NEQ					equ		4h
CMPP_NLT					equ		5h
CMPP_NLE					equ		6h
CMPP_ORD					equ		7h

; byte machine opcodes
OP_xmm0_xmm0				equ		0c0h
OP_xmm0_xmm1				equ		0c1h
OP_xmm1_xmm0				equ		0c8h
OP_xmm1_xmm1				equ		0c9h


; imediates
OP_Ib_MMX_PSLLW				textequ <0fh,71h>
OP_Ib_SSE2_PSLLW			textequ <66h,0fh,71h>
OP_Ib_MMX_PSLLD				textequ <0fh,71h>
OP_Ib_SSE2_PSLLD			textequ <66h,0fh,71h>

; regs
OP_MMX_PSLLW				textequ <0fh,f1h>
OP_SSE2_PSLLW				textequ <66h,0fh,f1h>
OP_MMX_PSLLD				textequ <0fh,f2h>
OP_SSE2_PSLLD				textequ <66h,0fh,f2h>

UX_MOP macro args
	mopex textequ <byte args>
	exitm 
endm


include uXmmacros.inc

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
