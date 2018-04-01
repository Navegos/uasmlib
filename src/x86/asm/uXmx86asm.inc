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
endif

ifdef WINDOWS
	ifdef __X64__
		ifndef DEFINED_VECTORCALL
			define DEFINED_VECTORCALL
		endif
		UX_VECCALL		textequ		<VECTORCALL>
		;Parameters RCX/XMM0, RDX/XMM1, R8/XMM2, R9/XMM3 + XMM0-XMM5/YMM0-YMM5
		;Preserve RBX, RBP, RDI, RSI, RSP, R12, R13, R14, R15, XMM6:XMM15
		;Return EAX:EDX/XMM0:XMM3

		;64bits
		rreturn		textequ		<rax>
		rparam1		textequ		<rcx>
		rparam2		textequ		<rdx>
		rparam3		textequ		<r8>
		rparam4		textequ		<r9>
		rsindex		textequ		<rsi>
		rdindex		textequ		<rdi>
		;32bits
		dreturn		textequ		<eax>
		dparam1		textequ		<ecx>
		dparam2		textequ		<edx>
		dparam3		textequ		<r8d>
		dparam4		textequ		<r9d>
		dsindex		textequ		<esi>
		ddindex		textequ		<ddi>
		;16bits
		wreturn		textequ		<ax>
		wparam1		textequ		<cx>
		wparam2		textequ		<dx>
		wparam3		textequ		<r8w>
		wparam4		textequ		<r9w>
		wsindex		textequ		<si>
		wdindex		textequ		<di>
		;8bits
		breturn		textequ		<al>
		bparam1		textequ		<cl>
		bparam2		textequ		<dl>
		bparam3		textequ		<r8b>
		bparam4		textequ		<r9b>
		bsindex		textequ		<sil>
		dindex		textequ		<dil>
	else ;__X64__
		ifdef __X32_VECTORCALL__ ;not available with uasm macrolib
			ifndef DEFINED_VECTORCALL
				define DEFINED_VECTORCALL
			endif
			UX_VECCALL		textequ		<VECTORCALL>
			;ECX,EDX, XMM0-XMM5/YMM0-YMM5
			;Preserve EBX, EBP, EDI, ESI, ESP, R12, R13, R14, R15, XMM6:XMM15
			;Return EAX:EDX/XMM0:XMM3
		else
			ifndef DEFINED_FASTCALL
				define DEFINED_FASTCALL
			endif
			UX_VECCALL		textequ		<FASTCALL> 
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
else ;WINDOWS
	ifdef __X64__
		ifndef DEFINED_SYSTEMV
			define DEFINED_SYSTEMV
		endif
		UX_VECCALL		textequ		<SYSTEMV>
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
			UX_VECCALL		textequ		<SYSTEMV>
			;none?ECX,EDX, XMM0–XMM7/YMM0–YMM7
			;Preserve EBX, ESI, EDI, EBP, ESP
			;Return EAX:EDX/XMM0:XMM3
		else
			ifndef DEFINED_FASTCALL
				define DEFINED_FASTCALL
			endif
			UX_VECCALL		textequ		<FASTCALL>
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
endif ;WINDOWS

ifdef WINDOWS
	ifdef __X64__
			UX_USESRBX			textequ		<USES rbx>
			UX_USESRBXSIDI		textequ		<USES rbx rsi rdi>
			UX_INSTPTR			textequ		<rcx>
			;UX_VECMETHOD		textequ		<VECMETHOD>
			;UX_STATICVECMETHOD	textequ		<STATICVECMETHOD>
	else
			UX_USESRBX			textequ		<USES ebx>
			UX_USESRBXSIDI		textequ		<USES ebx>
			UX_INSTPTR			textequ		<ecx>
			;UX_VECMETHOD		textequ		<METHOD>
			;UX_STATICVECMETHOD	textequ		<STATICMETHOD>
	endif ;__X64__
else
	ifdef __X64__
			UX_USESRBX			textequ		<USES rbx>
			UX_USESRBXSIDI		textequ		<USES rbx rsi rdi>
			UX_INSTPTR			textequ		<rdi>
	else
			UX_USESRBX			textequ		<USES ebx>
			UX_USESRBXSIDI		textequ		<USES ebx>
			UX_INSTPTR			textequ		<ecx>
	endif ;__X64__
			;UX_VECMETHOD		textequ		<METHOD>
			;UX_STATICVECMETHOD	textequ		<STATICMETHOD>
endif ;WINDOWS

ifdef __X64__
	ptr_t_size	equ		8
	reg_t_size	equ		8
	UX_SIZE_T textequ <qword>
	size_t_size	equ		8
else
	ptr_t_size	equ		4
	reg_t_size	equ		4
	UX_SIZE_T textequ <dword>
	size_t_size	equ		4
endif ;__X64__

false	equ		0h
true	equ		1h

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

; /* CMPPS Opcodes Condition Predicate */
CMPPS_EQ					equ		0h
CMPPS_LT					equ		1h
CMPPS_LE					equ		2h
CMPPS_UNORD					equ		3h
CMPPS_NEQ					equ		4h
CMPPS_NLT					equ		5h
CMPPS_NLE					equ		6h
CMPPS_ORD					equ		7h

include uXmmacros.inc
