
#pragma once

#ifndef uX_INTRIN_H
#define uX_INTRIN_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)

uX_EXTERNC_BEGIN
uX_PACK_PUSH_PTR

    extern void uX_callconv _uX_cpuidex(int CPUInfo[4], int CPUInfoType, int ECXValue);
    extern void uX_callconv _uX_cpuid(int CPUInfo[4], int CPUInfoType);

uX_PACK_8

    extern unsigned __int64 uX_callconv _uX_xgetbv(unsigned int EXCR);
    extern void uX_callconv _uX_xsetbv(unsigned int EXCR, unsigned __int64 EXCRSet);

uX_PACK_POP
uX_EXTERNC_END

/* Basic info functions*/

namespace_uX
namespace_CPU
uX_EXTERNC_BEGIN
uX_PACK_PUSH_SIZE_T
uX_PACK_4

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
  57  or above = FMA3, F16C, BMI1, BMI2, LZCNT
  60  or above = AVX512F (ZMM) supported by CPU and operating system
  61  or above = AVX512DQ
  62  or above = AVX512BW
  63  or above = AVX512VL
*/
    extern const int uX_callconv intrinset(void);

/* %eax=00H, %ecx */
    extern const unsigned int uX_callconv is_Intel(void);
    extern const unsigned int uX_callconv is_AMD(void);

/* %eax=01H, %ecx */
    extern const unsigned int uX_callconv has_SSE3(void);
    extern const unsigned int uX_callconv has_PCLMULQDQ(void);
    extern const unsigned int uX_callconv has_MONITOR(void);
    extern const unsigned int uX_callconv has_SSSE3(void);
    extern const unsigned int uX_callconv has_FMA(void);
    extern const unsigned int uX_callconv has_CMPXCHG16B(void);
    extern const unsigned int uX_callconv has_SSE41(void);
    extern const unsigned int uX_callconv has_SSE42(void);
    extern const unsigned int uX_callconv has_MOVBE(void);
    extern const unsigned int uX_callconv has_POPCNT(void);
    extern const unsigned int uX_callconv has_AES(void);
    extern const unsigned int uX_callconv has_XSAVE(void);
    extern const unsigned int uX_callconv has_OSXSAVE(void);
    extern const unsigned int uX_callconv has_AVX(void);
    extern const unsigned int uX_callconv has_F16C(void);
    extern const unsigned int uX_callconv has_RDRAND(void);

/* %eax=01H, %edx */
    extern const unsigned int uX_callconv has_FPU(void);
    extern const unsigned int uX_callconv has_TSC(void);
    extern const unsigned int uX_callconv has_MSR(void);
    extern const unsigned int uX_callconv has_CMPXCHG8B(void);
    extern const unsigned int uX_callconv has_SEP(void);
    extern const unsigned int uX_callconv has_CMOV(void);
    extern const unsigned int uX_callconv has_CLFSH(void);
    extern const unsigned int uX_callconv has_MMX(void);
    extern const unsigned int uX_callconv has_FXSR(void);
    extern const unsigned int uX_callconv has_SSE(void);
    extern const unsigned int uX_callconv has_SSE2(void);

/* %eax=07H, %ebx */
    extern const unsigned int uX_callconv has_FSGSBASE(void);
    extern const unsigned int uX_callconv has_SGX(void);
    extern const unsigned int uX_callconv has_BMI1(void);
    extern const unsigned int uX_callconv has_HLE(void);
    extern const unsigned int uX_callconv has_AVX2(void);
    extern const unsigned int uX_callconv has_SMEP(void);
    extern const unsigned int uX_callconv has_BMI2(void);
    extern const unsigned int uX_callconv has_ERMS(void);
    extern const unsigned int uX_callconv has_INVPCID(void);
    extern const unsigned int uX_callconv has_RTM(void);
    extern const unsigned int uX_callconv has_MPX(void);
    extern const unsigned int uX_callconv has_AVX512F(void);
    extern const unsigned int uX_callconv has_AVX512DQ(void);
    extern const unsigned int uX_callconv has_RDSEED(void);
    extern const unsigned int uX_callconv has_ADX(void);
    extern const unsigned int uX_callconv has_SMAP(void);
    extern const unsigned int uX_callconv has_AVX512_IFMA(void);
    extern const unsigned int uX_callconv has_CLFLUSHOPT(void);
    extern const unsigned int uX_callconv has_CLWB(void);
    extern const unsigned int uX_callconv has_AVX512PF(void);
    extern const unsigned int uX_callconv has_AVX512ER(void);
    extern const unsigned int uX_callconv has_AVX512CD(void);
    extern const unsigned int uX_callconv has_SHA(void);
    extern const unsigned int uX_callconv has_AVX512BW(void);
    extern const unsigned int uX_callconv has_AVX512VL(void);

/* %eax=07H, %ecx */
    extern const unsigned int uX_callconv has_PREFETCHWT1(void);
    extern const unsigned int uX_callconv has_AVX512_VBMI(void);
    extern const unsigned int uX_callconv has_UMIP(void);
    extern const unsigned int uX_callconv has_PKU(void);
    extern const unsigned int uX_callconv has_OSPKE(void);
    extern const unsigned int uX_callconv has_AVX512_VBMI2(void);
    extern const unsigned int uX_callconv has_GFNI(void);
    extern const unsigned int uX_callconv has_VAES(void);
    extern const unsigned int uX_callconv has_VPCLMULQDQ(void);
    extern const unsigned int uX_callconv has_AVX512_VNNI(void);
    extern const unsigned int uX_callconv has_AVX512_BITALG(void);
    extern const unsigned int uX_callconv has_AVX512_VPOPCNTDQ(void);
    extern const unsigned int uX_callconv has_RDPID(void);

/* %eax=07H, %edx */
    extern const unsigned int uX_callconv has_AVX512_4VNNIW(void);
    extern const unsigned int uX_callconv has_AVX512_4FMAPS(void);

/* %eax=80000001H, %ecx */
    extern const unsigned int uX_callconv has_LAHF(void);
    extern const unsigned int uX_callconv has_LZCNT(void);
    extern const unsigned int uX_callconv has_ABM(void);
    extern const unsigned int uX_callconv has_SSE4a(void);
    extern const unsigned int uX_callconv has_PREFETCHW(void);
    extern const unsigned int uX_callconv has_XOP(void);
    extern const unsigned int uX_callconv has_LWP(void);
    extern const unsigned int uX_callconv has_FMA4(void);
    extern const unsigned int uX_callconv has_TBM(void);
    extern const unsigned int uX_callconv has_MWAITX(void);

/* %eax=80000001H, %edx */
    extern const unsigned int uX_callconv has_SYSCALL(void);
    extern const unsigned int uX_callconv has_MMXEXT(void);
    extern const unsigned int uX_callconv has_RDTSCP(void);
    extern const unsigned int uX_callconv has_3DNOWEXT(void);
    extern const unsigned int uX_callconv has_3DNOW(void);

/* %eax=07H, %ebx, %ecx */
    extern const unsigned int uX_callconv has_AVX512_GFNI(void);
    extern const unsigned int uX_callconv has_AVX512_GFNI_VL(void);
    extern const unsigned int uX_callconv has_AVX512_VAES(void);
    extern const unsigned int uX_callconv has_AVX512_VAES_VL(void);
    extern const unsigned int uX_callconv has_AVX512_VPCLMULQDQ(void);
    extern const unsigned int uX_callconv has_AVX512_VPCLMULQDQ_VL(void);

    extern const unsigned int uX_callconv has_AVX512_IFMA_VL(void);
    extern const unsigned int uX_callconv has_AVX512_VBMI_VL(void);
    extern const unsigned int uX_callconv has_AVX512_VBMI2_VL(void);
    extern const unsigned int uX_callconv has_AVX512_VNNI_VL(void);
    extern const unsigned int uX_callconv has_AVX512_BITALG_VL(void);
    extern const unsigned int uX_callconv has_AVX512_VPOPCNTDQ_VL(void);

    extern const unsigned int uX_callconv has_AVX512BW_GFNI(void);
    extern const unsigned int uX_callconv has_AVX512BW_GFNI_VL(void);
    extern const unsigned int uX_callconv has_AVX512BW_VAES(void);
    extern const unsigned int uX_callconv has_AVX512BW_VAES_VL(void);
    extern const unsigned int uX_callconv has_AVX512BW_VPCLMULQDQ(void);
    extern const unsigned int uX_callconv has_AVX512BW_VPCLMULQDQ_VL(void);
    extern const unsigned int uX_callconv has_AVX512BW_VL(void);

    extern const unsigned int uX_callconv has_AVX512DQ_GFNI(void);
    extern const unsigned int uX_callconv has_AVX512DQ_GFNI_VL(void);
    extern const unsigned int uX_callconv has_AVX512DQ_VAES(void);
    extern const unsigned int uX_callconv has_AVX512DQ_VAES_VL(void);
    extern const unsigned int uX_callconv has_AVX512DQ_VPCLMULQDQ(void);
    extern const unsigned int uX_callconv has_AVX512DQ_VPCLMULQDQ_VL(void);
    extern const unsigned int uX_callconv has_AVX512DQ_VL(void);

    extern const unsigned int uX_callconv has_AVX512CD_VL(void);

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
    extern const unsigned int uX_callconv has_SSE_AES(void);
    extern const unsigned int uX_callconv has_SSE_GFNI(void);
    extern const unsigned int uX_callconv has_SSE_PCLMULQDQ(void);
    extern const unsigned int uX_callconv has_SSE2_AES(void);
    extern const unsigned int uX_callconv has_SSE2_GFNI(void);
    extern const unsigned int uX_callconv has_SSE2_PCLMULQDQ(void);
    extern const unsigned int uX_callconv has_SSE3_AES(void);
    extern const unsigned int uX_callconv has_SSE3_GFNI(void);
    extern const unsigned int uX_callconv has_SSE3_PCLMULQDQ(void);
    extern const unsigned int uX_callconv has_SSSE3_AES(void);
    extern const unsigned int uX_callconv has_SSSE3_GFNI(void);
    extern const unsigned int uX_callconv has_SSSE3_PCLMULQDQ(void);
    extern const unsigned int uX_callconv has_SSE41_AES(void);
    extern const unsigned int uX_callconv has_SSE41_GFNI(void);
    extern const unsigned int uX_callconv has_SSE41_PCLMULQDQ(void);
    extern const unsigned int uX_callconv has_SSE42_AES(void);
    extern const unsigned int uX_callconv has_SSE42_GFNI(void);
    extern const unsigned int uX_callconv has_SSE42_PCLMULQDQ(void);
    extern const unsigned int uX_callconv has_AVX_AES(void);
    extern const unsigned int uX_callconv has_AVX_GFNI(void);
    extern const unsigned int uX_callconv has_AVX_PCLMULQDQ(void);
    extern const unsigned int uX_callconv has_AVX_VAES(void);
    extern const unsigned int uX_callconv has_AVX_VPCLMULQDQ(void);
    extern const unsigned int uX_callconv has_AVX2_AES(void);
    extern const unsigned int uX_callconv has_AVX2_GFNI(void);
    extern const unsigned int uX_callconv has_AVX2_PCLMULQDQ(void);
    extern const unsigned int uX_callconv has_AVX2_VAES(void);
    extern const unsigned int uX_callconv has_AVX2_VPCLMULQDQ(void);

    extern const unsigned int uX_callconv has_enabled_XMM(void);
    extern const unsigned int uX_callconv has_enabled_YMM(void);
    extern const unsigned int uX_callconv has_enabled_ZMM(void);

/* Check if CPUFeatures is initiated */
    extern const unsigned int uX_callconv CPUFeatures_is_inited(void);

/* Extra info functions*/

uX_PACK_PTR

    extern void uX_callconv CpuType(int* vendor, int* family, int* model);

    extern char* uX_callconv ProcessorName(void);

uX_PACK_SIZE_T

    extern size_t uX_callconv DataCacheSize(int level);

uX_PACK_POP
uX_EXTERNC_END
namespace_CPU_end
namespace_uX_end

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_MMX) && !defined(uX_MIC)
#include "uXMMXStructs.h"
#include "uxmmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSE) && !defined(uX_MIC)
#include "uXxmmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSE2) && !defined(uX_MIC)
#include "uXemmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSE3) && !defined(uX_MIC)
#include "uXpmmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSSE3) && !defined(uX_MIC)
#include "uXtmmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSE41) && !defined(uX_MIC)
#include "uXsmmintrin.h"
#endif

#if defined(uX_INTRINSET) && (uX_INTRINSET >= uX_ISET_SSE42) && !defined(uX_MIC)
#include "uXnmmintrin.h"
#include "uXwmmintrin.h"
#endif

/*
#if defined(uX_INTRINSET) && ((uX_INTRINSET >= uX_ISET_AVX) || (uX_INTRINSET >= uX_ISET_AVX2)) && !defined(uX_MIC)
#include "uXimmintrin.h"
#endif

#include "uXSSEStructs.h"*/

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_INTRIN_H
