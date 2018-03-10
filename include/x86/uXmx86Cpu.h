
#pragma once

#ifndef uXm_SIMD_DETECT_H
#define uXm_SIMD_DETECT_H

#include "uXmTypes.h"

#if defined(uXm_X86_OR_X64_CPU)

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// Features

/* Features in %ecx for level 1 */
#define bit_SSE3		0x00000001
#define bit_PCLMUL		0x00000002
#define bit_DTES64      0x00000004
#define bit_MONITOR     0x00000008
#define bit_DSCPL       0x00000010
#define bit_VMX         0x00000020
#define bit_LZCNT		0x00000020
#define bit_SMX         0x00000040
#define bit_EIST        0x00000080
#define bit_TM2         0x00000100
#define bit_SSSE3		0x00000200
#define bit_CNXTID      0x00000400
#define bit_FMA			0x00001000
#define bit_CMPXCHG16B	0x00002000
#define bit_xTPR        0x00004000
#define bit_PDCM        0x00008000
#define bit_PCID        0x00020000
#define bit_DCA         0x00040000
#define bit_SSE41		0x00080000
#define bit_SSE42		0x00100000
#define bit_x2APIC      0x00200000
#define bit_MOVBE		0x00400000
#define bit_POPCNT		0x00800000
#define bit_TSCDeadline 0x01000000
#define bit_AESNI       0x02000000
#define bit_AES			0x02000000
#define bit_XSAVE		0x04000000
#define bit_OSXSAVE		0x08000000
#define bit_AVX			0x10000000
#define bit_F16C		0x20000000
#define bit_RDRAND      0x40000000
#define bit_RDRND		0x40000000

/* Features in %edx for level 1 */
#define bit_FPU         0x00000001
#define bit_VME         0x00000002
#define bit_DE          0x00000004
#define bit_PSE         0x00000008
#define bit_TSC         0x00000010
#define bit_MSR         0x00000020
#define bit_PAE         0x00000040
#define bit_MCE         0x00000080
#define bit_CX8         0x00000100
#define bit_CMPXCHG8B	0x00000100
#define bit_APIC        0x00000200
#define bit_SEP         0x00000800
#define bit_MTRR        0x00001000
#define bit_PGE         0x00002000
#define bit_MCA         0x00004000
#define bit_CMOV		0x00008000
#define bit_PAT         0x00010000
#define bit_PSE36       0x00020000
#define bit_PSN         0x00040000
#define bit_CLFSH       0x00080000
#define bit_DS          0x00200000
#define bit_ACPI        0x00400000
#define bit_MMX			0x00800000
#define bit_FXSR        0x01000000
#define bit_FXSAVE      0x01000000
#define bit_SSE			0x02000000
#define bit_SSE2		0x04000000
#define bit_SS          0x08000000
#define bit_HTT         0x10000000
#define bit_TM          0x20000000
#define bit_PBE         0x80000000

/* Extended Features */
/* %ecx */
#define bit_LAHF_LM		0x00000001
#define bit_ABM			0x00000020
#define bit_SSE4A		0x00000040
#define bit_PRFCHW		0x00000100
#define bit_XOP         0x00000800
#define bit_LWP 		0x00008000
#define bit_FMA4        0x00010000
#define bit_TBM         0x00200000

/* %edx */
#define bit_MMXEXT		0x00400000
#define bit_LM			0x20000000
#define bit_3DNOWP		0x40000000
#define bit_3DNOW		0x80000000

/* Extended Features (%eax == 7) */
/* %ebx level 7 sub-leaf 0 */
#define bit_FSGSBASE	0x00000001
#define bit_BMI			0x00000008
#define bit_HLE			0x00000010
#define bit_AVX2		0x00000020
#define bit_SMEP        0x00000080
#define bit_BMI2		0x00000100
#define bit_ENH_MOVSB   0x00000200
#define bit_RTM			0x00000800
#define bit_AVX512F		0x00010000
#define bit_AVX512DQ	0x00020000
#define bit_RDSEED		0x00040000
#define bit_ADX			0x00080000
#define bit_CLFLUSHOPT	0x00800000
#define bit_AVX512PF	0x04000000
#define bit_AVX512ER	0x08000000
#define bit_AVX512CD	0x10000000
#define bit_SHA			0x20000000
#define bit_AVX512BW	0x40000000
#define bit_AVX512VL	0x80000000

/* %ecx */
#define bit_PREFETCHWT1	  0x00000001

/* Extended State Enumeration Sub-leaf (%eax == 13, %ecx == 1) */
#define bit_XSAVEOPT	0x00000001
#define bit_XSAVEC		0x00000002
#define bit_XSAVES		0x00000008
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* Signatures for different CPU implementations as returned in uses
of cpuid with level 0.  */

// AMD vendor strings: "AuthenticAMD", "AMDisbetter!", "AMD ISBETTER"
#define sign_Auth_AMD_ebx	0x68747541 /* h t u A */
#define sign_cAMD_AMD_ecx	0x444d4163 /* D M A c */
#define sign_enti_AMD_edx	0x69746e65 /* i t n e */

#define sign_AMDi_AMD_ebx	0x69444d41 /* i D M A */
#define sign_ter__AMD_ecx	0x21726574 /* ! r e t */
#define sign_sbet_AMD_edx	0x74656273 /* t e b s */

#define sign_AMD__AMD_ebx	0x20444d41 /*   D M A */
#define sign_TTER_AMD_ecx	0x45425349 /* R E T T */
#define sign_ISBE_AMD_edx	0x52455454 /* E B S I */

// VIA (Centaur) vendor strings: "CentaurHauls", "VIA VIA VIA "
#define sign_Cent_CENTAUR_ebx	0x746e6543 /* t n e C */
#define sign_auls_CENTAUR_ecx	0x736c7561 /* s l u a */
#define sign_aurH_CENTAUR_edx	0x48727561 /* H r u a */

#define sign_VIA_ebx	0x20414956 /* A I V */
#define sign_VIA_ecx	0x20414956 /* A I V */
#define sign_VIA_edx	0x20414956 /* A I V */

// Cyrix vendor string: "CyrixInstead"
#define sign_Cyri_CYRIX_ebx	0x69727943 /* i r y C */
#define sign_tead_CYRIX_ecx	0x64616574 /* d a e t */
#define sign_xIns_CYRIX_edx	0x736e4978 /* s n I x */

// Intel vendor string: "GenuineIntel"
#define sign_Genu_INTEL_ebx	0x756e6547 /* u n e G */
#define sign_ntel_INTEL_ecx	0x6c65746e /* l e t n */
#define sign_ineI_INTEL_edx	0x49656e69 /* I e n i */

// Transmeta vendor strings: "GenuineTMx86", "TransmetaCPU"
#define sign_Tran_TM1_ebx	0x6e617254 /* n a r T */
#define sign_aCPU_TM1_ecx	0x55504361 /* U P C a */
#define sign_smet_TM1_edx	0x74656d73 /* t e m s */

#define sign_Genu_TM2_ebx	0x756e6547 /* u n e G */
#define sign_Mx86_TM2_ecx	0x3638784d /* 6 8 x M */
#define sign_ineT_TM2_edx	0x54656e69 /* T e n i */

// NSC vendor string: "Geode by NSC"
#define sign_Geod_NSC_ebx	0x646f6547 /* d o e G */
#define sign_NSC__NSC_ecx	0x43534e20 /*   C S N */
#define sign_e_by_NSC_edx	0x79622065 /* y b   e */

// NexGen vendor string: "NexGenDriven"
#define sign_NexG_NEXGEN_ebx	0x4778654e /* G x e N */
#define sign_iven_NEXGEN_ecx	0x6e657669 /* n e v i */
#define sign_enDr_NEXGEN_edx	0x72446e65 /* r D n e */

// Rise vendor string: "RiseRiseRise"
#define sign_Rise_RISE_ebx	0x65736952 /* e s i R */
#define sign_Rise_RISE_ecx	0x65736952 /* e s i R */
#define sign_Rise_RISE_edx	0x65736952 /* e s i R */

// SiS vendor string: "SiS SiS SiS "
#define sign_Sis_SIS_ebx	0x20536953 /* S i S */
#define sign_Sis_SIS_ecx	0x20536953 /* S i S */
#define sign_Sis_SIS_edx	0x20536953 /* S i S */

// UMC vendor string: "UMC UMC UMC "
#define sign_UMC_ebx	0x20434d55 /* C M U */
#define sign_UMC_ecx	0x20434d55 /* C M U */
#define sign_UMC_edx	0x20434d55 /* C M U */

// D&MP vendor string: "Vortex86 SoC"
#define sign_Vort_VORTuXm_ebx	0x74726f56 /* t r O V */
#define sign_SoC__VORTuXm_ecx	0x436f5320 /*   C o S */
#define sign_ex86_VORTuXm_edx	0x36387865 /* 6 8 x e */

// RDC vendor string: "Genuine  RDC"
#define sign_Genu_RDC_ebx	0x756e6547 /* u n e G */
#define sign__RDC_RDC_ecx	0x43445220 /*   C D R */
#define sign_ine__RDC_edx	0x20656e69 /*   e n i */

#endif // defined(uXm_X86_OR_X64_CPU)

#if defined(uXm_X86_OR_X64_CPU)

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

#ifndef _CLASS_CPUFEATURES
#define _CLASS_CPUFEATURES 1

class uXmCPUFeatures
{
public:
	uXmCPUFeatures(void);
	~uXmCPUFeatures(void);

	/* find supported instruction set
	return value:
	0           = 80386 instruction set
	8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
	9  or above = CMOV supported by CPU
	10  or above = SSE (XMM) supported by CPU and operating system
	20  or above = SSE2
	30  or above = SSE3
	31  or above = Supplementary SSE3 (SSSE3)
	41  or above = SSE4.1
	42  or above = SSE4.2 & POPCNT
	50  or above = AVX (YMM) supported by CPU and operating system
	51  or above = PCLMUL & AES
	52  or above = AVX2
	57 or above = FMA3, F16C, BMI1, BMI2, LZCNT
	60  or above = AVX512F (ZMM) supported by CPU and operating system
	61  or above = AVX512DQ
	62  or above = AVX512BW
	63  or above = AVX512VL
	*/
	static int intrinset(void);

	/* %eax=00H, %ecx */
	static bool is_Intel(void);
	static bool is_AMD(void);

	/* %eax=01H, %ecx */
	static bool has_SSE3(void);
	static bool has_PCLMULQDQ(void);
	static bool has_MONITOR(void);
	static bool has_SSSE3(void);
	static bool has_FMA(void);
	static bool has_CMPXCHG16B(void);
	static bool has_SSE41(void);
	static bool has_SSE42(void);
	static bool has_MOVBE(void);
	static bool has_POPCNT(void);
	static bool has_AES(void);
	static bool has_XSAVE(void);
	static bool has_OSXSAVE(void);
	static bool has_AVX(void);
	static bool has_F16C(void);
	static bool has_RDRAND(void);

	/* %eax=01H, %edx */
	static bool has_FPU(void);
	static bool has_TSC(void);
	static bool has_MSR(void);
	static bool has_CMPXCHG8B(void);
	static bool has_SEP(void);
	static bool has_CMOV(void);
	static bool has_CLFSH(void);
	static bool has_MMX(void);
	static bool has_FXSR(void);
	static bool has_SSE(void);
	static bool has_SSE2(void);

	/* %eax=07H, %ebx */
	static bool has_FSGSBASE(void);
	static bool has_SGX(void);
	static bool has_BMI1(void);
	static bool has_HLE(void);
	static bool has_AVX2(void);
	static bool has_SMEP(void);
	static bool has_BMI2(void);
	static bool has_ERMS(void);
	static bool has_INVPCID(void);
	static bool has_RTM(void);
	static bool has_MPX(void);
	static bool has_AVX512F(void);
	static bool has_AVX512DQ(void);
	static bool has_RDSEED(void);
	static bool has_ADX(void);
	static bool has_SMAP(void);
	static bool has_AVX512_IFMA(void);
	static bool has_CLFLUSHOPT(void);
	static bool has_CLWB(void);
	static bool has_AVX512PF(void);
	static bool has_AVX512ER(void);
	static bool has_AVX512CD(void);
	static bool has_SHA(void);
	static bool has_AVX512BW(void);
	static bool has_AVX512VL(void);

	/* %eax=07H, %ecx */
	static bool has_PREFETCHWT1(void);
	static bool has_AVX512_VBMI(void);
	static bool has_UMIP(void);
	static bool has_PKU(void);
	static bool has_OSPKE(void);
	static bool has_AVX512_VBMI2(void);
	static bool has_GFNI(void);
	static bool has_VAES(void);
	static bool has_VPCLMULQDQ(void);
	static bool has_AVX512_VNNI(void);
	static bool has_AVX512_BITALG(void);
	static bool has_AVX512_VPOPCNTDQ(void);
	static bool has_RDPID(void);

	/* %eax=07H, %edx */
	static bool has_AVX512_4VNNIW(void);
	static bool has_AVX512_4FMAPS(void);

	/* %eax=80000001H, %ecx */
	static bool has_LAHF(void);
	static bool has_LZCNT(void);
	static bool has_ABM(void);
	static bool has_SSE4a(void);
	static bool has_PREFETCHW(void);
	static bool has_XOP(void);
	static bool has_LWP(void);
	static bool has_FMA4(void);
	static bool has_TBM(void);
	static bool has_MWAITX(void);

	/* %eax=80000001H, %edx */
	static bool has_SYSCALL(void);
	static bool has_MMXEXT(void);
	static bool has_RDTSCP(void);
	static bool has_3DNOWEXT(void);
	static bool has_3DNOW(void);

	/* %eax=07H, %ebx, %ecx */
	static bool has_AVX512_GFNI(void);
	static bool has_AVX512_GFNI_VL(void);
	static bool has_AVX512_VAES(void);
	static bool has_AVX512_VAES_VL(void);
	static bool has_AVX512_VPCLMULQDQ(void);
	static bool has_AVX512_VPCLMULQDQ_VL(void);

	static bool has_AVX512_IFMA_VL(void);
	static bool has_AVX512_VBMI_VL(void);
	static bool has_AVX512_VBMI2_VL(void);
	static bool has_AVX512_VNNI_VL(void);
	static bool has_AVX512_BITALG_VL(void);
	static bool has_AVX512_VPOPCNTDQ_VL(void);

	static bool has_AVX512BW_GFNI(void);
	static bool has_AVX512BW_GFNI_VL(void);
	static bool has_AVX512BW_VAES(void);
	static bool has_AVX512BW_VAES_VL(void);
	static bool has_AVX512BW_VPCLMULQDQ(void);
	static bool has_AVX512BW_VPCLMULQDQ_VL(void);
	static bool has_AVX512BW_VL(void);

	static bool has_AVX512DQ_GFNI(void);
	static bool has_AVX512DQ_GFNI_VL(void);
	static bool has_AVX512DQ_VAES(void);
	static bool has_AVX512DQ_VAES_VL(void);
	static bool has_AVX512DQ_VPCLMULQDQ(void);
	static bool has_AVX512DQ_VPCLMULQDQ_VL(void);
	static bool has_AVX512DQ_VL(void);

	static bool has_AVX512CD_VL(void);

	/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
	static bool has_SSE_AES(void);
	static bool has_SSE_GFNI(void);
	static bool has_SSE_PCLMULQDQ(void);
	static bool has_SSE2_AES(void);
	static bool has_SSE2_GFNI(void);
	static bool has_SSE2_PCLMULQDQ(void);
	static bool has_SSE3_AES(void);
	static bool has_SSE3_GFNI(void);
	static bool has_SSE3_PCLMULQDQ(void);
	static bool has_SSSE3_AES(void);
	static bool has_SSSE3_GFNI(void);
	static bool has_SSSE3_PCLMULQDQ(void);
	static bool has_SSE41_AES(void);
	static bool has_SSE41_GFNI(void);
	static bool has_SSE41_PCLMULQDQ(void);
	static bool has_SSE42_AES(void);
	static bool has_SSE42_GFNI(void);
	static bool has_SSE42_PCLMULQDQ(void);
	static bool has_AVX_AES(void);
	static bool has_AVX_GFNI(void);
	static bool has_AVX_PCLMULQDQ(void);
	static bool has_AVX_VAES(void);
	static bool has_AVX_VPCLMULQDQ(void);
	static bool has_AVX2_AES(void);
	static bool has_AVX2_GFNI(void);
	static bool has_AVX2_PCLMULQDQ(void);
	static bool has_AVX2_VAES(void);
	static bool has_AVX2_VPCLMULQDQ(void);

	static bool has_enabled_XMM(void);
	static bool has_enabled_YMM(void);
	static bool has_enabled_ZMM(void);

	static void CpuType(int * vendor, int * family, int * model);

	static char* ProcessorName(void);

};

typedef uXmCPUFeatures puXmCPUFeatures;

/* Assembly externals */
extern void _uXmCPUFeatures_Init(void);
extern void _uXmCPUFeatures_Destroy(void);

/* find supported instruction set
;return value:
;0           = 80386 instruction set
;8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
;9  or above = CMOV supported by CPU
;10  or above = SSE (XMM) supported by CPU and operating system
;20  or above = SSE2
;30  or above = SSE3
;31  or above = Supplementary SSE3 (SSSE3)
;41  or above = SSE4.1
;42  or above = SSE4.2 & POPCNT
;50  or above = AVX (YMM) supported by CPU and operating system
;51  or above = PCLMUL & AES
;52  or above = AVX2
;57 or above = FMA3, F16C, BMI1, BMI2, LZCNT
;60  or above = AVX512F (ZMM) supported by CPU and operating system
;61  or above = AVX512DQ
;62  or above = AVX512BW
;63  or above = AVX512VL
;*/
extern int _uXmCPUFeatures_intrinset(void);

/* %eax=00H, %ecx */
extern bool _uXmCPUFeatures_is_Intel(void);
extern bool _uXmCPUFeatures_is_AMD(void);

/* %eax=01H, %ecx */
extern bool _uXmCPUFeatures_has_SSE3(void);
extern bool _uXmCPUFeatures_has_PCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_MONITOR(void);
extern bool _uXmCPUFeatures_has_SSSE3(void);
extern bool _uXmCPUFeatures_has_FMA(void);
extern bool _uXmCPUFeatures_has_CMPXCHG16B(void);
extern bool _uXmCPUFeatures_has_SSE41(void);
extern bool _uXmCPUFeatures_has_SSE42(void);
extern bool _uXmCPUFeatures_has_MOVBE(void);
extern bool _uXmCPUFeatures_has_POPCNT(void);
extern bool _uXmCPUFeatures_has_AES(void);
extern bool _uXmCPUFeatures_has_XSAVE(void);
extern bool _uXmCPUFeatures_has_OSXSAVE(void);
extern bool _uXmCPUFeatures_has_AVX(void);
extern bool _uXmCPUFeatures_has_F16C(void);
extern bool _uXmCPUFeatures_has_RDRAND(void);

/* %eax=01H, %edx */
extern bool _uXmCPUFeatures_has_FPU(void);
extern bool _uXmCPUFeatures_has_TSC(void);
extern bool _uXmCPUFeatures_has_MSR(void);
extern bool _uXmCPUFeatures_has_CMPXCHG8B(void);
extern bool _uXmCPUFeatures_has_SEP(void);
extern bool _uXmCPUFeatures_has_CMOV(void);
extern bool _uXmCPUFeatures_has_CLFSH(void);
extern bool _uXmCPUFeatures_has_MMX(void);
extern bool _uXmCPUFeatures_has_FXSR(void);
extern bool _uXmCPUFeatures_has_SSE(void);
extern bool _uXmCPUFeatures_has_SSE2(void);

/* %eax=07H, %ebx */
extern bool _uXmCPUFeatures_has_FSGSBASE(void);
extern bool _uXmCPUFeatures_has_SGX(void);
extern bool _uXmCPUFeatures_has_BMI1(void);
extern bool _uXmCPUFeatures_has_HLE(void);
extern bool _uXmCPUFeatures_has_AVX2(void);
extern bool _uXmCPUFeatures_has_SMEP(void);
extern bool _uXmCPUFeatures_has_BMI2(void);
extern bool _uXmCPUFeatures_has_ERMS(void);
extern bool _uXmCPUFeatures_has_INVPCID(void);
extern bool _uXmCPUFeatures_has_RTM(void);
extern bool _uXmCPUFeatures_has_MPX(void);
extern bool _uXmCPUFeatures_has_AVX512F(void);
extern bool _uXmCPUFeatures_has_AVX512DQ(void);
extern bool _uXmCPUFeatures_has_RDSEED(void);
extern bool _uXmCPUFeatures_has_ADX(void);
extern bool _uXmCPUFeatures_has_SMAP(void);
extern bool _uXmCPUFeatures_has_AVX512_IFMA(void);
extern bool _uXmCPUFeatures_has_CLFLUSHOPT(void);
extern bool _uXmCPUFeatures_has_CLWB(void);
extern bool _uXmCPUFeatures_has_AVX512PF(void);
extern bool _uXmCPUFeatures_has_AVX512ER(void);
extern bool _uXmCPUFeatures_has_AVX512CD(void);
extern bool _uXmCPUFeatures_has_SHA(void);
extern bool _uXmCPUFeatures_has_AVX512BW(void);
extern bool _uXmCPUFeatures_has_AVX512VL(void);

/* %eax=07H, %ecx */
extern bool _uXmCPUFeatures_has_PREFETCHWT1(void);
extern bool _uXmCPUFeatures_has_AVX512_VBMI(void);
extern bool _uXmCPUFeatures_has_UMIP(void);
extern bool _uXmCPUFeatures_has_PKU(void);
extern bool _uXmCPUFeatures_has_OSPKE(void);
extern bool _uXmCPUFeatures_has_AVX512_VBMI2(void);
extern bool _uXmCPUFeatures_has_GFNI(void);
extern bool _uXmCPUFeatures_has_VAES(void);
extern bool _uXmCPUFeatures_has_VPCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_AVX512_VNNI(void);
extern bool _uXmCPUFeatures_has_AVX512_BITALG(void);
extern bool _uXmCPUFeatures_has_AVX512_VPOPCNTDQ(void);
extern bool _uXmCPUFeatures_has_RDPID(void);

/* %eax=07H, %edx */
extern bool _uXmCPUFeatures_has_AVX512_4VNNIW(void);
extern bool _uXmCPUFeatures_has_AVX512_4FMAPS(void);

/* %eax=80000001H, %ecx */
extern bool _uXmCPUFeatures_has_LAHF(void);
extern bool _uXmCPUFeatures_has_LZCNT(void);
extern bool _uXmCPUFeatures_has_ABM(void);
extern bool _uXmCPUFeatures_has_SSE4a(void);
extern bool _uXmCPUFeatures_has_PREFETCHW(void);
extern bool _uXmCPUFeatures_has_XOP(void);
extern bool _uXmCPUFeatures_has_LWP(void);
extern bool _uXmCPUFeatures_has_FMA4(void);
extern bool _uXmCPUFeatures_has_TBM(void);
extern bool _uXmCPUFeatures_has_MWAITX(void);

/* %eax=80000001H, %edx */
extern bool _uXmCPUFeatures_has_SYSCALL(void);
extern bool _uXmCPUFeatures_has_MMXEXT(void);
extern bool _uXmCPUFeatures_has_RDTSCP(void);
extern bool _uXmCPUFeatures_has_3DNOWEXT(void);
extern bool _uXmCPUFeatures_has_3DNOW(void);

/* %eax=07H, %ebx, %ecx */
extern bool _uXmCPUFeatures_has_AVX512_GFNI(void);
extern bool _uXmCPUFeatures_has_AVX512_GFNI_VL(void);
extern bool _uXmCPUFeatures_has_AVX512_VAES(void);
extern bool _uXmCPUFeatures_has_AVX512_VAES_VL(void);
extern bool _uXmCPUFeatures_has_AVX512_VPCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_AVX512_VPCLMULQDQ_VL(void);

extern bool _uXmCPUFeatures_has_AVX512_IFMA_VL(void);
extern bool _uXmCPUFeatures_has_AVX512_VBMI_VL(void);
extern bool _uXmCPUFeatures_has_AVX512_VBMI2_VL(void);
extern bool _uXmCPUFeatures_has_AVX512_VNNI_VL(void);
extern bool _uXmCPUFeatures_has_AVX512_BITALG_VL(void);
extern bool _uXmCPUFeatures_has_AVX512_VPOPCNTDQ_VL(void);

extern bool _uXmCPUFeatures_has_AVX512BW_GFNI(void);
extern bool _uXmCPUFeatures_has_AVX512BW_GFNI_VL(void);
extern bool _uXmCPUFeatures_has_AVX512BW_VAES(void);
extern bool _uXmCPUFeatures_has_AVX512BW_VAES_VL(void);
extern bool _uXmCPUFeatures_has_AVX512BW_VPCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_AVX512BW_VPCLMULQDQ_VL(void);
extern bool _uXmCPUFeatures_has_AVX512BW_VL(void);

extern bool _uXmCPUFeatures_has_AVX512DQ_GFNI(void);
extern bool _uXmCPUFeatures_has_AVX512DQ_GFNI_VL(void);
extern bool _uXmCPUFeatures_has_AVX512DQ_VAES(void);
extern bool _uXmCPUFeatures_has_AVX512DQ_VAES_VL(void);
extern bool _uXmCPUFeatures_has_AVX512DQ_VPCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_AVX512DQ_VPCLMULQDQ_VL(void);
extern bool _uXmCPUFeatures_has_AVX512DQ_VL(void);

extern bool _uXmCPUFeatures_has_AVX512CD_VL(void);

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
extern bool _uXmCPUFeatures_has_SSE_AES(void);
extern bool _uXmCPUFeatures_has_SSE_GFNI(void);
extern bool _uXmCPUFeatures_has_SSE_PCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_SSE2_AES(void);
extern bool _uXmCPUFeatures_has_SSE2_GFNI(void);
extern bool _uXmCPUFeatures_has_SSE2_PCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_SSE3_AES(void);
extern bool _uXmCPUFeatures_has_SSE3_GFNI(void);
extern bool _uXmCPUFeatures_has_SSE3_PCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_SSSE3_AES(void);
extern bool _uXmCPUFeatures_has_SSSE3_GFNI(void);
extern bool _uXmCPUFeatures_has_SSSE3_PCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_SSE41_AES(void);
extern bool _uXmCPUFeatures_has_SSE41_GFNI(void);
extern bool _uXmCPUFeatures_has_SSE41_PCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_SSE42_AES(void);
extern bool _uXmCPUFeatures_has_SSE42_GFNI(void);
extern bool _uXmCPUFeatures_has_SSE42_PCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_AVX_AES(void);
extern bool _uXmCPUFeatures_has_AVX_GFNI(void);
extern bool _uXmCPUFeatures_has_AVX_PCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_AVX_VAES(void);
extern bool _uXmCPUFeatures_has_AVX_VPCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_AVX2_AES(void);
extern bool _uXmCPUFeatures_has_AVX2_GFNI(void);
extern bool _uXmCPUFeatures_has_AVX2_PCLMULQDQ(void);
extern bool _uXmCPUFeatures_has_AVX2_VAES(void);
extern bool _uXmCPUFeatures_has_AVX2_VPCLMULQDQ(void);

extern bool _uXmCPUFeatures_has_enabled_XMM(void);
extern bool _uXmCPUFeatures_has_enabled_YMM(void);
extern bool _uXmCPUFeatures_has_enabled_ZMM(void);

extern void _uXmCPUFeatures_CpuType(int * vendor, int * family, int * model);

extern char* _uXmCPUFeatures_ProcessorName(void);

#endif /*_CLASS_CPUFEATURES*/

uXm_PACK_POP

uXm_EXTERNC_END

#endif

/*
class CPUFeatures
{
	CPUFeatures();

private:

#if uXm_X86_OR_X64_CPU

	static unsigned __int32c eax = 0;
	static unsigned __int32c ebx = 1;
	static unsigned __int32c ecx = 2;
	static unsigned __int32c edx = 3;
	static unsigned __int32c alx = 4;
	static __int32 CPUInfo[alx];

	// Vendors

	// Intel vendor string: "GenuineIntel"
	static __int32 Genu_ebx;
	static __int32 ineI_edx;
	static __int32 ntel_ecx;
	// AMD vendor strings: "AuthenticAMD", "AMDisbetter!", "AMD ISBETTER"
	static __int32 Auth_ebx;
	static __int32 enti_edx;
	static __int32 cAMD_ecx;
	static __int32 AMDi_ebx;
	static __int32 sbet_edx;
	static __int32 ter_ecx;
	static __int32 AMD_ebx;
	static __int32 ISBE_edx;
	static __int32 TTER_ecx;
	// VIA (Centaur) vendor strings: "CentaurHauls", "VIA VIA VIA "
	static __int32 Cent_ebx;
	static __int32 aurH_edx;
	static __int32 auls_ecx;
	static __int32 VIA_alx;
	// Transmeta vendor strings: "GenuineTMx86", "TransmetaCPU"
	static __int32 ineT_edx;
	static __int32 Mx86_ecx;
	static __int32 Tran_ebx;
	static __int32 smet_ecx;
	static __int32 aCPU_edx;
	// Cyrix vendor string: "CyrixInstead"
	static __int32 Cyri_ebx;
	static __int32 xIns_edx;
	static __int32 tead_ecx;
	// Rise vendor string: "RiseRiseRise"
	static __int32 Rise_alx;
	// NSC vendor string: "Geode by NSC"
	static __int32 Geod_ebx;
	static __int32 e_by_edx;
	static __int32 NSC_ecx;
	// SiS vendor string: "SiS SiS SiS "
	static __int32 SiS_alx;
	// NexGen vendor string: "NexGenDriven"
	static __int32 NexG_ebx;
	static __int32 enDr_edx;
	static __int32 iven_ecx;
	// UMC vendor string: "UMC UMC UMC "
	static __int32 UMC_alx;
	// RDC vendor string: "Genuine  RDC"
	static __int32 ine_edx;
	static __int32 RDC_ecx;
	// D&MP vendor string: "Vortex86 SoC"
	static __int32 Vort_ebx;
	static __int32 ex86_edx;
	static __int32 SoC_ecx;
	

	
	// Features

	// Features in %ecx for level 1 
	static __int32 ecx_SSE3;
	static __int32 ecx_PCLMUL;
	static __int32 ecx_DTES64;
	static __int32 ecx_MONITOR;
	static __int32 ecx_DSCPL;
	static __int32 ecx_VMX;
	static __int32 ecx_LZCNT;
	static __int32 ecx_SMX;
	static __int32 ecx_EIST;
	static __int32 ecx_TM2;
	static __int32 ecx_SSSE3;
	static __int32 ecx_CNXTID;
	static __int32 ecx_FMA;
	static __int32 ecx_CMPXCHG16B;
	static __int32 ecx_xTPR;
	static __int32 ecx_PDCM;
	static __int32 ecx_PCID;
	static __int32 ecx_DCA;
	static __int32 ecx_SSE41;
	static __int32 ecx_SSE42;
	static __int32 ecx_x2APIC;
	static __int32 ecx_MOVBE;
	static __int32 ecx_POPCNT;
	static __int32 ecx_TSCDeadline;
	static __int32 ecx_AES;
	static __int32 ecx_XSAVE;
	static __int32 ecx_OSXSAVE;
	static __int32 ecx_AVX;
	static __int32 ecx_F16C;
	static __int32 ecx_RDRAND;

	// Features in %edx for level 1 /
	static __int32 edx_FPU;
	static __int32 edx_VME;
	static __int32 edx_DE;
	static __int32 edx_PSE;
	static __int32 edx_TSC;
	static __int32 edx_MSR;
	static __int32 edx_PAE;
	static __int32 edx_MCE;
	static __int32 edx_CX8;
	static __int32 edx_APIC;
	static __int32 edx_SEP;
	static __int32 edx_MTRR;
	static __int32 edx_PGE;
	static __int32 edx_MCA;
	static __int32 edx_CMOV;
	static __int32 edx_PAT;
	static __int32 edx_PSE36;
	static __int32 edx_PSN;
	static __int32 edx_CLFSH;
	static __int32 edx_DS;
	static __int32 edx_ACPI;
	static __int32 edx_MMX;
	static __int32 edx_FXSR;
	static __int32 edx_FXSAVE;
	static __int32 edx_SSE;
	static __int32 edx_SSE2;
	static __int32 edx_SS;
	static __int32 edx_HTT;
	static __int32 edx_TM;
	static __int32 edx_PBE;

	// Extended Features 

	// %ecx 
	static __int32 ecx_LAHF;
	static __int32 ecx_ABM;
	static __int32 ecx_SSE4A;
	static __int32 ecx_PRFCHW;
	static __int32 ecx_XOP;
	static __int32 ecx_LWP;
	static __int32 ecx_FMA4;
	static __int32 ecx_TBM;

	// %edx 
	static __int32 edx_MMXEXT;
	static __int32 edx_LM;
	static __int32 edx_3DNOWP;
	static __int32 edx_3DNOWP;

	// Extended Features (%eax == 7) 

	// %ebx level 7 sub-leaf 0 
	static __int32 ebx_FSGSBASE;
	static __int32 ebx_BMI;
	static __int32 ebx_HLE;
	static __int32 ebx_AVX2;
	static __int32 ebx_SMEP;
	static __int32 ebx_BMI2;
	static __int32 ebx_MOVSB;
	static __int32 ebx_RTM;
	static __int32 ebx_AVX512F;
	static __int32 ebx_AVX512DQ;
	static __int32 ebx_RDSEED;
	static __int32 ebx_ADX;
	static __int32 ebx_CLFLUSHOPT;
	static __int32 ebx_AVX512PF;
	static __int32 ebx_AVX512ER;
	static __int32 ebx_AVX512CD;
	static __int32 ebx_SHA;
	static __int32 ebx_AVX512BW;
	static __int32 ebx_AVX512VL;

	// %ecx 
	static __int32 ecx_PREFETCHWT1;

	// Extended State Enumeration Sub-leaf (%eax == 13, %ecx == 1) 
	static __int32 ecx_XSAVEOPT;
	static __int32 ecx_XSAVEC;
	static __int32 ecx_XSAVES;

public:

	// detect if CPU Is AMD
	static bool is_AMD();

	// detect if CPU Is Intel
	static bool is_Intel();

	// detect if CPU supports the MMX instruction set
	static bool has_MMX();

	// detect if CPU supports the SSE1 instruction set
	static bool has_SSE();

	// detect if CPU supports the SSE2 instruction set
	static bool has_SSE2();

	// detect if CPU supports the SSE3 instruction set
	static bool has_SSE3();

	// detect if CPU supports the SSSE3 instruction set
	static bool has_SSSE3();

	// detect if CPU supports the SSE4.1 instruction set
	static bool has_SSE41();

	// detect if CPU supports the SSE4.2 instruction set
	static bool has_SSE42();

	// detect if CPU supports the OSXSAVE instruction set
	static bool has_OSXSAVE();

	// detect if CPU supports the XGETBV_YMM instruction set
	static bool has_XGETBV_YMM();

	// detect if CPU supports the AVX instruction set
	static bool has_AVX();

	// detect if CPU supports the AVX2 instruction set
	static bool has_AVX2();

	// detect if CPU supports the F16C instruction set
	static bool has_F16C();

	// detect if CPU supports the FMA3 instruction set
	static bool has_FMA3();

	// detect if CPU supports the FMA4 instruction set
	static bool has_FMA4();

	// detect if CPU supports the XOP instruction set
	static bool has_XOP();

	// detect if CPU supports the XGETBV_YMM instruction set
	static bool has_XGETBV_ZMM();

	// detect if CPU supports the AVX-512 instruction set
	static bool has_AVX512F();
#endif // uXm_X86_OR_X64_CPU
};*/

/*
class CPUFeatures
{
	// forward declarations
	class CPUFeatures_Internal;

public:
#if defined(uXm_X86_OR_X64_CPU)
	// getters
	static std::string Vendor();
	static std::string Brand();

	/ * find supported instruction set
	return value:
	0           = 80386 instruction set
	8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
	10  or above = SSE (XMM) supported by CPU and operating system
	20  or above = SSE2
	30  or above = SSE3
	31  or above = Supplementary SSE3 (SSSE3)
	41  or above = SSE4.1
	42  or above = SSE4.2
	50  or above = AVX (YMM) supported by CPU and operating system
	52  or above = AVX2
	60  or above = AVX512 (ZMM) supported by CPU and operating system
	* /
	static __int32 available_simd();

	static bool has_SSE3();
	static bool has_PCLMULQDQ();
	static bool has_MONITOR();
	static bool has_SSSE3();
	static bool has_FMA();
	static bool has_CMPXCHG16B();
	static bool has_SSE41();
	static bool has_SSE42();
	static bool has_MOVBE();
	static bool has_POPCNT();
	static bool has_AES();
	static bool has_XSAVE();
	static bool has_OSXSAVE();
	static bool has_AVX();
	static bool has_F16C();
	static bool has_RDRAND();
	static bool has_FPU();
	static bool has_MSR();
	static bool has_CMPXCHG8B();
	static bool has_SEP();
	static bool has_CMOV();
	static bool has_CLFSH();
	static bool has_MMX();
	static bool has_FXSR();
	static bool has_SSE();
	static bool has_SSE2();
	static bool has_FSGSBASE();
	static bool has_BMI1();
	static bool has_HLE();
	static bool has_AVX2();
	static bool has_BMI2();
	static bool has_ERMS();
	static bool has_INVPCID();
	static bool has_RTM();
	static bool has_AVX512F();
	static bool has_AVX512DQ();
	static bool has_RDSEED();
	static bool has_ADX();
	static bool has_AVX512IFMA();
	static bool has_CLFLUSHOPT();
	static bool has_AVX512PF();
	static bool has_AVX512ER();
	static bool has_AVX512CD();
	static bool has_AVX512BW();
	static bool has_AVX512VL();
	static bool has_SHA();
	static bool has_PREFETCHWT1();
	static bool has_AVX512VBMI();
	static bool has_AVX512_VPOPCNTDQ();
	static bool has_AVX512_4VNNIW();
	static bool has_AVX512_4FMAPS();
	static bool has_LAHF();
	static bool has_LZCNT();
	static bool has_ABM();
	static bool has_SSE4a();
	static bool has_XOP();
	static bool has_FMA4();
	static bool has_TBM();
	static bool has_SYSCALL();
	static bool has_MMXEXT();
	static bool has_RDTSCP();
	static bool has_3DNOWEXT();
	static bool has_3DNOW();

	static bool has_enabled_XMM();
	static bool has_enabled_YMM();
	static bool has_enabled_ZMM();


    / * find supported instruction set
    return value:
    0           = 80386 instruction set
    8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
    10  or above = SSE (XMM) supported by CPU and operating system
    20  or above = SSE2
    30  or above = SSE3
    31  or above = Supplementary SSE3 (SSSE3)
    41  or above = SSE4.1
    42  or above = SSE4.2
    50  or above = AVX (YMM) supported by CPU and operating system
    52  or above = AVX2
    60  or above = AVX512 (ZMM) supported by CPU and operating system
    * /
    / *extern __int32 uXm_available_SIMD();

    bool has_SSE3();
    bool has_PCLMULQDQ();
    bool has_MONITOR();
    bool has_SSSE3();
    bool has_FMA();
    bool has_CMPXCHG16B();
    bool has_SSE41();
    bool has_SSE42();
    bool has_MOVBE();
    bool has_POPCNT();
    bool has_AES();
    bool has_XSAVE();
    bool has_OSXSAVE();
    bool has_AVX();
    bool has_F16C();
    bool has_RDRAND();
    bool has_FPU();
    bool has_MSR();
    bool has_CMPXCHG8B();
    bool has_SEP();
    bool has_CMOV();
    bool has_CLFSH();
    bool has_MMX();
    bool has_FXSR();
    bool has_SSE();
    bool has_SSE2();
    bool has_FSGSBASE();
    bool has_BMI1();
    bool has_HLE();
    bool has_AVX2();
    bool has_BMI2();
    bool has_ERMS();
    bool has_INVPCID();
    bool has_RTM();
    bool has_AVX512F();
    bool has_AVX512DQ();
    bool has_RDSEED();
    bool has_ADX();
    bool has_AVX512IFMA();
    bool has_CLFLUSHOPT();
    bool has_AVX512PF();
    bool has_AVX512ER();
    bool has_AVX512CD();
    bool has_AVX512BW();
    bool has_AVX512VL();
    bool has_SHA();
    bool has_PREFETCHWT1();
    bool has_AVX512VBMI();
    bool has_AVX512_VPOPCNTDQ();
    bool has_AVX512_4VNNIW();
    bool has_AVX512_4FMAPS();
    bool has_LAHF();
    bool has_LZCNT();
    bool has_ABM();
    bool has_SSE4a();
    bool has_XOP();
    bool has_FMA4();
    bool has_TBM();
    bool has_SYSCALL();
    bool has_MMXEXT();
    bool has_RDTSCP();
    bool has_3DNOWEXT();
    bool has_3DNOW();

    bool has_enabled_XMM();
    bool has_enabled_YMM();
    bool has_enabled_ZMM();* /
#endif 

private:
	static const CPUFeatures_Internal CPU_Rep;

	class CPUFeatures_Internal
	{
	public:
		CPUFeatures_Internal();
	#if defined(uXm_X86_OR_X64_CPU)
		__int32 nIds_;
		__int32 nExIds_;
		std::string vendor_;
		std::string brand_;
		bool isIntel_;
		bool isAMD_;
		bool hasXMM_;
		bool hasYMM_;
		bool hasZMM_;
		__int32 nIntrinVers_;
		std::bitset<32> f_1_ECX_;
		std::bitset<32> f_1_EDX_;
		std::bitset<32> f_7_EBX_;
		std::bitset<32> f_7_ECX_;
		std::bitset<32> f_7_EDX_;
		std::bitset<32> f_81_ECX_;
		std::bitset<32> f_81_EDX_;
		std::vector<std::array<__int32, 4>> data_;
		std::vector<std::array<__int32, 4>> extdata_;
	#endif
	};
};*/

/*#if defined(uXm_X86_OR_X64_CPU)
/ * find supported instruction set
return value:
0           = 80386 instruction set
8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
10  or above = SSE (XMM) supported by CPU and operating system
20  or above = SSE2
30  or above = SSE3
31  or above = Supplementary SSE3 (SSSE3)
41  or above = SSE4.1
42  or above = SSE4.2
50  or above = AVX (YMM) supported by CPU and operating system
52  or above = AVX2
60  or above = AVX512 (ZMM) supported by CPU and operating system
* /

extern __int32 uXm_available_SIMD();

bool has_SSE3();
bool has_PCLMULQDQ();
bool has_MONITOR();
bool has_SSSE3();
bool has_FMA();
bool has_CMPXCHG16B();
bool has_SSE41();
bool has_SSE42();
bool has_MOVBE();
bool has_POPCNT();
bool has_AES();
bool has_XSAVE();
bool has_OSXSAVE();
bool has_AVX();
bool has_F16C();
bool has_RDRAND();
bool has_FPU();
bool has_MSR();
bool has_CMPXCHG8B();
bool has_SEP();
bool has_CMOV();
bool has_CLFSH();
bool has_MMX();
bool has_FXSR();
bool has_SSE();
bool has_SSE2();
bool has_FSGSBASE();
bool has_BMI1();
bool has_HLE();
bool has_AVX2();
bool has_BMI2();
bool has_ERMS();
bool has_INVPCID();
bool has_RTM();
bool has_AVX512F();
bool has_AVX512DQ();
bool has_RDSEED();
bool has_ADX();
bool has_AVX512IFMA();
bool has_CLFLUSHOPT();
bool has_AVX512PF();
bool has_AVX512ER();
bool has_AVX512CD();
bool has_AVX512BW();
bool has_AVX512VL();
bool has_SHA();
bool has_PREFETCHWT1();
bool has_AVX512VBMI();
bool has_AVX512_VPOPCNTDQ();
bool has_AVX512_4VNNIW();
bool has_AVX512_4FMAPS();
bool has_LAHF();
bool has_LZCNT();
bool has_ABM();
bool has_SSE4a();
bool has_XOP();
bool has_FMA4();
bool has_TBM();
bool has_SYSCALL();
bool has_MMXEXT();
bool has_RDTSCP();
bool has_3DNOWEXT();
bool has_3DNOW();

bool has_enabled_XMM();
bool has_enabled_YMM();
bool has_enabled_ZMM();
#endif 

// Initialize static member data
const CPUFeatures::CPUFeatures_Internal CPUFeatures::CPU_Rep;*/

//namespace_eXOAMP_end

#endif // uXm_SIMD_DETECT_H
