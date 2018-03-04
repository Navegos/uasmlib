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
		VECCALL		textequ		<VECTORCALL>
		;Parameters RCX/XMM0, RDX/XMM1, R8/XMM2, R9/XMM3 + XMM0-XMM5/YMM0-YMM5
		;Preserve RBX, RBP, RDI, RSI, RSP, R12, R13, R14, R15, XMM6:XMM15
		;Return EAX:EDX/XMM0:XMM3
	else	
		ifdef __X32_VECTORCALL__ ;not available with uasm macrolib
			ifndef DEFINED_VECTORCALL
				define DEFINED_VECTORCALL
			endif
			VECCALL		textequ		<VECTORCALL>
			;ECX,EDX, XMM0-XMM5/YMM0-YMM5
			;Preserve RBX, RBP, RDI, RSI, RSP, R12, R13, R14, R15, XMM6:XMM15
			;Return EAX:EDX/XMM0:XMM3
		else
			ifndef DEFINED_FASTCALL
				define DEFINED_FASTCALL
			endif
			VECCALL		textequ		<fastcall> 
			;Parameters ECX, EDX
			;Preserve EBX
			;Return EAX:EDX/XMM0:XMM3
		endif
	endif ;__X64__
else
	ifdef __X64__
		ifndef DEFINED_SYSTEMV
			define DEFINED_SYSTEMV
		endif
		VECCALL		textequ		<SYSTEMV>
		;Parameters RDI, RSI, RDX, RCX, R8, R9, XMM0–XMM7/YMM0–YMM7
		;Preserve RBX, RSP, RBP, R12, R13, R14, R15
		;Return EAX:EDX/XMM0:XMM3
	else
		ifdef __X32_SYSTEMV__
			ifndef DEFINED_SYSTEMV
				define DEFINED_SYSTEMV
			endif
			VECCALL		textequ		<SYSTEMV>
			;none?ECX,EDX, XMM0–XMM7/YMM0–YMM7
			;Preserve EBX, ESI, EDI, EBP, ESP
			;Return EAX:EDX/XMM0:XMM3
		else
			ifndef DEFINED_FASTCALL
				define DEFINED_FASTCALL
			endif
			VECCALL		textequ		<fastcall>
			;Parameters ECX, EDX
			;Preserve EBX
			;Return EAX:EDX/XMM0:XMM3
		endif
	endif ;__X64__
endif ;WINDOWS

ifdef WINDOWS
	ifdef __X64__
			UXUSESBX			textequ		<USES RBX>
			UXINSTPTR			textequ		<RCX>
			UXVECMETHOD			textequ		<VECMETHOD>
			UXSTATICVECMETHOD	textequ		<STATICVECMETHOD>
	else
			UXUSESBX			textequ		<USES EBX>
			UXINSTPTR			textequ		<ECX>
			UXVECMETHOD			textequ		<METHOD>
			UXSTATICVECMETHOD	textequ		<STATICMETHOD>
	endif ;__X64__
else
	ifdef __X64__
			UXUSESBX			textequ		<USES RBX>
			UXINSTPTR			textequ		<RDI>
	else
			UXUSESBX			textequ		<USES EBX>
			UXINSTPTR			textequ		<ECX>
	endif ;__X64__
			UXVECMETHOD			textequ		<METHOD>
			UXSTATICVECMETHOD	textequ		<STATICMETHOD>
endif ;WINDOWS


false	equ		0
true	equ		1

; /* EFLAGS %eax=00H, %ebx=00H */
bit_CPUID 					equ		00200000h	; 1 << 21

; /* %eax=00H, %ecx */
bit_ntel					equ		6c65746eh	; 'GenuineIntel'
bit_cAMD					equ		444d4163h	; 'AuthenticAMD'

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
