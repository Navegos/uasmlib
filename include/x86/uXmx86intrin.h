
#pragma once

#ifndef uXm_INTRIN_H
#define uXm_INTRIN_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH_POINTER

	extern void uXm_cpuidex(int[4], int, int);
	extern void uXm_cpuid(int[4], int);

uXm_PACK_POP

uXm_PACK_PUSH8

	extern unsigned __int64 uXm_xgetbv(unsigned int);
	extern void uXm_xsetbv(unsigned int, unsigned __int64);

uXm_PACK_POP

/* Basic info functions*/

uXm_PACK_PUSH4

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
	extern const int uXm_callconv uXm_intrinset(void);

uXm_PACK_POP

uXm_PACK_PUSH1

/* %eax=00H, %ecx */
	extern const unsigned __int8 uXm_callconv uXm_is_Intel(void);
	extern const unsigned __int8 uXm_callconv uXm_is_AMD(void);

/* %eax=01H, %ecx */
	extern const unsigned __int8 uXm_callconv uXm_has_SSE3(void);
	extern const unsigned __int8 uXm_callconv uXm_has_PCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_MONITOR(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSSE3(void);
	extern const unsigned __int8 uXm_callconv uXm_has_FMA(void);
	extern const unsigned __int8 uXm_callconv uXm_has_CMPXCHG16B(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE41(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE42(void);
	extern const unsigned __int8 uXm_callconv uXm_has_MOVBE(void);
	extern const unsigned __int8 uXm_callconv uXm_has_POPCNT(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_XSAVE(void);
	extern const unsigned __int8 uXm_callconv uXm_has_OSXSAVE(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX(void);
	extern const unsigned __int8 uXm_callconv uXm_has_F16C(void);
	extern const unsigned __int8 uXm_callconv uXm_has_RDRAND(void);

/* %eax=01H, %edx */
	extern const unsigned __int8 uXm_callconv uXm_has_FPU(void);
	extern const unsigned __int8 uXm_callconv uXm_has_TSC(void);
	extern const unsigned __int8 uXm_callconv uXm_has_MSR(void);
	extern const unsigned __int8 uXm_callconv uXm_has_CMPXCHG8B(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SEP(void);
	extern const unsigned __int8 uXm_callconv uXm_has_CMOV(void);
	extern const unsigned __int8 uXm_callconv uXm_has_CLFSH(void);
	extern const unsigned __int8 uXm_callconv uXm_has_MMX(void);
	extern const unsigned __int8 uXm_callconv uXm_has_FXSR(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE2(void);

/* %eax=07H, %ebx */
	extern const unsigned __int8 uXm_callconv uXm_has_FSGSBASE(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SGX(void);
	extern const unsigned __int8 uXm_callconv uXm_has_BMI1(void);
	extern const unsigned __int8 uXm_callconv uXm_has_HLE(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX2(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SMEP(void);
	extern const unsigned __int8 uXm_callconv uXm_has_BMI2(void);
	extern const unsigned __int8 uXm_callconv uXm_has_ERMS(void);
	extern const unsigned __int8 uXm_callconv uXm_has_INVPCID(void);
	extern const unsigned __int8 uXm_callconv uXm_has_RTM(void);
	extern const unsigned __int8 uXm_callconv uXm_has_MPX(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512F(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512DQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_RDSEED(void);
	extern const unsigned __int8 uXm_callconv uXm_has_ADX(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SMAP(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_IFMA(void);
	extern const unsigned __int8 uXm_callconv uXm_has_CLFLUSHOPT(void);
	extern const unsigned __int8 uXm_callconv uXm_has_CLWB(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512PF(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512ER(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512CD(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SHA(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512BW(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512VL(void);

/* %eax=07H, %ecx */
	extern const unsigned __int8 uXm_callconv uXm_has_PREFETCHWT1(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VBMI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_UMIP(void);
	extern const unsigned __int8 uXm_callconv uXm_has_PKU(void);
	extern const unsigned __int8 uXm_callconv uXm_has_OSPKE(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VBMI2(void);
	extern const unsigned __int8 uXm_callconv uXm_has_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_VAES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_VPCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VNNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_BITALG(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VPOPCNTDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_RDPID(void);

/* %eax=07H, %edx */
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_4VNNIW(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_4FMAPS(void);

/* %eax=80000001H, %ecx */
	extern const unsigned __int8 uXm_callconv uXm_has_LAHF(void);
	extern const unsigned __int8 uXm_callconv uXm_has_LZCNT(void);
	extern const unsigned __int8 uXm_callconv uXm_has_ABM(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE4a(void);
	extern const unsigned __int8 uXm_callconv uXm_has_PREFETCHW(void);
	extern const unsigned __int8 uXm_callconv uXm_has_XOP(void);
	extern const unsigned __int8 uXm_callconv uXm_has_LWP(void);
	extern const unsigned __int8 uXm_callconv uXm_has_FMA4(void);
	extern const unsigned __int8 uXm_callconv uXm_has_TBM(void);
	extern const unsigned __int8 uXm_callconv uXm_has_MWAITX(void);

/* %eax=80000001H, %edx */
	extern const unsigned __int8 uXm_callconv uXm_has_SYSCALL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_MMXEXT(void);
	extern const unsigned __int8 uXm_callconv uXm_has_RDTSCP(void);
	extern const unsigned __int8 uXm_callconv uXm_has_3DNOWEXT(void);
	extern const unsigned __int8 uXm_callconv uXm_has_3DNOW(void);

/* %eax=07H, %ebx, %ecx */
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_GFNI_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VAES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VAES_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VPCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VPCLMULQDQ_VL(void);

	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_IFMA_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VBMI_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VBMI2_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VNNI_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_BITALG_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512_VPOPCNTDQ_VL(void);

	extern const unsigned __int8 uXm_callconv uXm_has_AVX512BW_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512BW_GFNI_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512BW_VAES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512BW_VAES_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512BW_VPCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512BW_VPCLMULQDQ_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512BW_VL(void);

	extern const unsigned __int8 uXm_callconv uXm_has_AVX512DQ_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512DQ_GFNI_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512DQ_VAES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512DQ_VAES_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512DQ_VPCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512DQ_VPCLMULQDQ_VL(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX512DQ_VL(void);

	extern const unsigned __int8 uXm_callconv uXm_has_AVX512CD_VL(void);

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
	extern const unsigned __int8 uXm_callconv uXm_has_SSE_AES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE_PCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE2_AES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE2_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE2_PCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE3_AES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE3_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE3_PCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSSE3_AES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSSE3_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSSE3_PCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE41_AES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE41_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE41_PCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE42_AES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE42_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_SSE42_PCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX_AES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX_PCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX_VAES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX_VPCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX2_AES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX2_GFNI(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX2_PCLMULQDQ(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX2_VAES(void);
	extern const unsigned __int8 uXm_callconv uXm_has_AVX2_VPCLMULQDQ(void);

	extern const unsigned __int8 uXm_callconv uXm_has_enabled_XMM(void);
	extern const unsigned __int8 uXm_callconv uXm_has_enabled_YMM(void);
	extern const unsigned __int8 uXm_callconv uXm_has_enabled_ZMM(void);

/* Check if CPUFeatures is initiated */
	extern const unsigned __int8 uXm_callconv uXm_CPUFeatures_Is_Inited(void);

uXm_PACK_POP

/* Extra info functions*/

uXm_PACK_PUSH_POINTER

	extern void uXm_callconv uXm_CpuType(int* vendor, int* family, int* model);

	extern char* uXm_callconv uXm_ProcessorName(void);

	extern size_t uXm_callconv uXm_DataCacheSize(int level);

uXm_PACK_POP

uXm_EXTERNC_END

#if defined(uXm_INTRINSET) && (uXm_INTRINSET >= uXm_ISET_MMX) && !defined(uXm_MIC)
#include "uxmMMXStructs.h"
#include "uXmmmintrin.h"
#endif

#if defined(uXm_INTRINSET) && (uXm_INTRINSET >= uXm_ISET_SSE) && !defined(uXm_MIC)
#include "uxmSSEStructs.h"
#include "uXmxmmintrin.h"
#endif

#if defined(uXm_INTRINSET) && (uXm_INTRINSET >= uXm_ISET_SSE2) && !defined(uXm_MIC)
#include "uXmemmintrin.h"
#endif

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_INTRIN_H
