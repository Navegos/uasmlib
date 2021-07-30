
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - optimized library                 / /
; / /                                                                               / /
; / /    Licensed under the Apache License, Version 2.0 (the "License");            / /
; / /    you may not use this file except in compliance with the License.           / /
; / /    You may obtain a copy of the License at                                    / /
; / /                                                                               / /
; / /        http://www.apache.org/licenses/LICENSE-2.0                             / /
; / /                                                                               / /
; / /    Unless required by applicable law or agreed to in writing, software        / /
; / /    distributed under the License is distributed on an "AS IS" BASIS,          / /
; / /    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   / /
; / /    See the License for the specific language governing permissions and        / /
; / /    limitations under the License.                                             / /
; / /                                                                               / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#include "uXcpu.h"

#if defined(uX_X86_OR_X64_CPU)

/*
namespace_uX
namespace_internal
uX_EXTERNC_BEGIN
uX_PACK_PUSH_STACK

CPUFeatures::CPUFeatures(int infolevel)
{
    _uX_CPUFeatures_init(infolevel);
}

CPUFeatures::~CPUFeatures(void)
{
    _uX_CPUFeatures_destroy();
}

uX_PACK_SIZE_T

const int uX_ABI CPUFeatures::intrinset(void)
{
    return _uX_CPUFeatures_intrinset();
}

/ * %eax=00H, %ecx * /
bool_t const uX_ABI CPUFeatures::is_Intel(void)
{   
    return _uX_CPUFeatures_is_Intel();
}

bool_t const uX_ABI CPUFeatures::is_AMD(void)
{
    return _uX_CPUFeatures_is_AMD();
}

/ * %eax=01H, %ecx * /
bool_t const uX_ABI CPUFeatures::has_SSE3(void)
{
    return _uX_CPUFeatures_has_SSE3();
}

bool_t const uX_ABI CPUFeatures::has_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_PCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_MONITOR(void)
{
    return _uX_CPUFeatures_has_MONITOR();
}

bool_t const uX_ABI CPUFeatures::has_SSSE3(void)
{
    return _uX_CPUFeatures_has_SSSE3();
}

bool_t const uX_ABI CPUFeatures::has_FMA(void)
{
    return _uX_CPUFeatures_has_FMA();
}

bool_t const uX_ABI CPUFeatures::has_CMPXCHG16B(void)
{
    return _uX_CPUFeatures_has_CMPXCHG16B();
}

bool_t const uX_ABI CPUFeatures::has_SSE41(void)
{
    return _uX_CPUFeatures_has_SSE41();
}

bool_t const uX_ABI CPUFeatures::has_SSE42(void)
{
    return _uX_CPUFeatures_has_SSE42();
}

bool_t const uX_ABI CPUFeatures::has_MOVBE(void)
{
    return _uX_CPUFeatures_has_MOVBE();
}

bool_t const uX_ABI CPUFeatures::has_POPCNT(void)
{
    return _uX_CPUFeatures_has_POPCNT();
}

bool_t const uX_ABI CPUFeatures::has_AES(void)
{
    return _uX_CPUFeatures_has_AES();
}

bool_t const uX_ABI CPUFeatures::has_XSAVE(void)
{
    return _uX_CPUFeatures_has_XSAVE();
}

bool_t const uX_ABI CPUFeatures::has_OSXSAVE(void)
{
    return _uX_CPUFeatures_has_OSXSAVE();
}

bool_t const uX_ABI CPUFeatures::has_AVX(void)
{
    return _uX_CPUFeatures_has_AVX();
}

bool_t const uX_ABI CPUFeatures::has_F16C(void)
{
    return _uX_CPUFeatures_has_F16C();
}

bool_t const uX_ABI CPUFeatures::has_RDRAND(void)
{
    return _uX_CPUFeatures_has_RDRAND();
}

/ * %eax=01H, %edx * /
bool_t const uX_ABI CPUFeatures::has_FPU(void)
{
    return _uX_CPUFeatures_has_FPU();
}

bool_t const uX_ABI CPUFeatures::has_TSC(void)
{
    return _uX_CPUFeatures_has_TSC();
}

bool_t const uX_ABI CPUFeatures::has_MSR(void)
{
    return _uX_CPUFeatures_has_MSR();
}

bool_t const uX_ABI CPUFeatures::has_CMPXCHG8B(void)
{
    return _uX_CPUFeatures_has_CMPXCHG8B();
}

bool_t const uX_ABI CPUFeatures::has_SEP(void)
{
    return _uX_CPUFeatures_has_SEP();
}

bool_t const uX_ABI CPUFeatures::has_CMOV(void)
{
    return _uX_CPUFeatures_has_CMOV();
}

bool_t const uX_ABI CPUFeatures::has_CLFSH(void)
{
    return _uX_CPUFeatures_has_CLFSH();
}

bool_t const uX_ABI CPUFeatures::has_MMX(void)
{
    return _uX_CPUFeatures_has_MMX();
}

bool_t const uX_ABI CPUFeatures::has_FXSR(void)
{
    return _uX_CPUFeatures_has_FXSR();
}

bool_t const uX_ABI CPUFeatures::has_SSE(void)
{
    return _uX_CPUFeatures_has_SSE();
}

bool_t const uX_ABI CPUFeatures::has_SSE2(void)
{
    return _uX_CPUFeatures_has_SSE2();
}

/ * %eax=07H, %ebx * /
bool_t const uX_ABI CPUFeatures::has_FSGSBASE(void)
{
    return _uX_CPUFeatures_has_FSGSBASE();
}

bool_t const uX_ABI CPUFeatures::has_SGX(void)
{
    return _uX_CPUFeatures_has_SGX();
}

bool_t const uX_ABI CPUFeatures::has_BMI1(void)
{
    return _uX_CPUFeatures_has_BMI1();
}

bool_t const uX_ABI CPUFeatures::has_HLE(void)
{
    return _uX_CPUFeatures_has_HLE();
}

bool_t const uX_ABI CPUFeatures::has_AVX2(void)
{
    return _uX_CPUFeatures_has_AVX2();
}

bool_t const uX_ABI CPUFeatures::has_SMEP(void)
{
    return _uX_CPUFeatures_has_SMEP();
}

bool_t const uX_ABI CPUFeatures::has_BMI2(void)
{
    return _uX_CPUFeatures_has_BMI2();
}

bool_t const uX_ABI CPUFeatures::has_ERMS(void)
{
    return _uX_CPUFeatures_has_ERMS();
}

bool_t const uX_ABI CPUFeatures::has_INVPCID(void)
{
    return _uX_CPUFeatures_has_INVPCID();
}

bool_t const uX_ABI CPUFeatures::has_RTM(void)
{
    return _uX_CPUFeatures_has_RTM();
}

bool_t const uX_ABI CPUFeatures::has_MPX(void)
{
    return _uX_CPUFeatures_has_MPX();
}

bool_t const uX_ABI CPUFeatures::has_AVX512F(void)
{
    return _uX_CPUFeatures_has_AVX512F();
}

bool_t const uX_ABI CPUFeatures::has_AVX512DQ(void)
{
    return _uX_CPUFeatures_has_AVX512DQ();
}

bool_t const uX_ABI CPUFeatures::has_RDSEED(void)
{
    return _uX_CPUFeatures_has_RDSEED();
}

bool_t const uX_ABI CPUFeatures::has_ADX(void)
{
    return _uX_CPUFeatures_has_ADX();
}

bool_t const uX_ABI CPUFeatures::has_SMAP(void)
{
    return _uX_CPUFeatures_has_SMAP();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_IFMA(void)
{
    return _uX_CPUFeatures_has_AVX512_IFMA();
}

bool_t const uX_ABI CPUFeatures::has_CLFLUSHOPT(void)
{
    return _uX_CPUFeatures_has_CLFLUSHOPT();
}

bool_t const uX_ABI CPUFeatures::has_CLWB(void)
{
    return _uX_CPUFeatures_has_CLWB();
}

bool_t const uX_ABI CPUFeatures::has_AVX512PF(void)
{
    return _uX_CPUFeatures_has_AVX512PF();
}

bool_t const uX_ABI CPUFeatures::has_AVX512ER(void)
{
    return _uX_CPUFeatures_has_AVX512ER();
}

bool_t const uX_ABI CPUFeatures::has_AVX512CD(void)
{
    return _uX_CPUFeatures_has_AVX512CD();
}

bool_t const uX_ABI CPUFeatures::has_SHA(void)
{
    return _uX_CPUFeatures_has_SHA();
}

bool_t const uX_ABI CPUFeatures::has_AVX512BW(void)
{
    return _uX_CPUFeatures_has_AVX512BW();
}

bool_t const uX_ABI CPUFeatures::has_AVX512VL(void)
{
    return _uX_CPUFeatures_has_AVX512VL();
}

/ * %eax=07H, %ecx * /
bool_t const uX_ABI CPUFeatures::has_PREFETCHWT1(void)
{
    return _uX_CPUFeatures_has_PREFETCHWT1();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VBMI(void)
{
    return _uX_CPUFeatures_has_AVX512_VBMI();
}

bool_t const uX_ABI CPUFeatures::has_UMIP(void)
{
    return _uX_CPUFeatures_has_UMIP();
}

bool_t const uX_ABI CPUFeatures::has_PKU(void)
{
    return _uX_CPUFeatures_has_PKU();
}

bool_t const uX_ABI CPUFeatures::has_OSPKE(void)
{
    return _uX_CPUFeatures_has_OSPKE();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VBMI2(void)
{
    return _uX_CPUFeatures_has_AVX512_VBMI2();
}

bool_t const uX_ABI CPUFeatures::has_GFNI(void)
{
    return _uX_CPUFeatures_has_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_VAES(void)
{
    return _uX_CPUFeatures_has_VAES();
}

bool_t const uX_ABI CPUFeatures::has_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_VPCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VNNI(void)
{
    return _uX_CPUFeatures_has_AVX512_VNNI();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_BITALG(void)
{
    return _uX_CPUFeatures_has_AVX512_BITALG();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VPOPCNTDQ(void)
{
    return _uX_CPUFeatures_has_AVX512_VPOPCNTDQ();
}

bool_t const uX_ABI CPUFeatures::has_RDPID(void)
{
    return _uX_CPUFeatures_has_RDPID();
}

/ * %eax=07H, %edx * /
bool_t const uX_ABI CPUFeatures::has_AVX512_4VNNIW(void)
{
    return _uX_CPUFeatures_has_AVX512_4VNNIW();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_4FMAPS(void)
{
    return _uX_CPUFeatures_has_AVX512_4FMAPS();
}

/ * %eax=80000001H, %ecx * /
bool_t const uX_ABI CPUFeatures::has_LAHF(void)
{
    return _uX_CPUFeatures_has_LAHF();
}

bool_t const uX_ABI CPUFeatures::has_LZCNT(void)
{
    return _uX_CPUFeatures_has_LZCNT();
}

bool_t const uX_ABI CPUFeatures::has_ABM(void)
{
    return _uX_CPUFeatures_has_ABM();
}

bool_t const uX_ABI CPUFeatures::has_SSE4a(void)
{
    return _uX_CPUFeatures_has_SSE4a();
}

bool_t const uX_ABI CPUFeatures::has_PREFETCHW(void)
{
    return _uX_CPUFeatures_has_PREFETCHW();
}

bool_t const uX_ABI CPUFeatures::has_XOP(void)
{
    return _uX_CPUFeatures_has_XOP();
}

bool_t const uX_ABI CPUFeatures::has_LWP(void)
{
    return _uX_CPUFeatures_has_LWP();
}

bool_t const uX_ABI CPUFeatures::has_FMA4(void)
{
    return _uX_CPUFeatures_has_FMA4();
}

bool_t const uX_ABI CPUFeatures::has_TBM(void)
{
    return _uX_CPUFeatures_has_TBM();
}

bool_t const uX_ABI CPUFeatures::has_MWAITX(void)
{
    return _uX_CPUFeatures_has_MWAITX();
}

/ * %eax=80000001H, %edx * /
bool_t const uX_ABI CPUFeatures::has_SYSCALL(void)
{
    return _uX_CPUFeatures_has_SYSCALL();
}

bool_t const uX_ABI CPUFeatures::has_MMXEXT(void)
{
    return _uX_CPUFeatures_has_MMXEXT();
}

bool_t const uX_ABI CPUFeatures::has_RDTSCP(void)
{
    return _uX_CPUFeatures_has_RDTSCP();
}

bool_t const uX_ABI CPUFeatures::has_3DNOWEXT(void)
{
    return _uX_CPUFeatures_has_3DNOWEXT();
}

bool_t const uX_ABI CPUFeatures::has_3DNOW(void)
{
    return _uX_CPUFeatures_has_3DNOW();
}

/ * %eax=07H, %ebx, %ecx * /
bool_t const uX_ABI CPUFeatures::has_AVX512_GFNI(void)
{
    return _uX_CPUFeatures_has_AVX512_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_GFNI_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_GFNI_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VAES(void)
{
    return _uX_CPUFeatures_has_AVX512_VAES();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VAES_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VAES_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX512_VPCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VPCLMULQDQ_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VPCLMULQDQ_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_IFMA_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_IFMA_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VBMI_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VBMI_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VBMI2_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VBMI2_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VNNI_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VNNI_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_BITALG_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_BITALG_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512_VPOPCNTDQ_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VPOPCNTDQ_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512BW_GFNI(void)
{
    return _uX_CPUFeatures_has_AVX512BW_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_AVX512BW_GFNI_VL(void)
{
    return _uX_CPUFeatures_has_AVX512BW_GFNI_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512BW_VAES(void)
{
    return _uX_CPUFeatures_has_AVX512BW_VAES();
}

bool_t const uX_ABI CPUFeatures::has_AVX512BW_VAES_VL(void)
{
    return _uX_CPUFeatures_has_AVX512BW_VAES_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512BW_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_AVX512BW_VPCLMULQDQ_VL(void)
{
    return _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512BW_VL(void)
{
    return _uX_CPUFeatures_has_AVX512BW_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512DQ_GFNI(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_AVX512DQ_GFNI_VL(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_GFNI_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512DQ_VAES(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_VAES();
}

bool_t const uX_ABI CPUFeatures::has_AVX512DQ_VAES_VL(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_VAES_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512DQ_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_AVX512DQ_VPCLMULQDQ_VL(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512DQ_VL(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_VL();
}

bool_t const uX_ABI CPUFeatures::has_AVX512CD_VL(void)
{
    return _uX_CPUFeatures_has_AVX512CD_VL();
}

/ * %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx * /
bool_t const uX_ABI CPUFeatures::has_SSE_AES(void)
{
    return _uX_CPUFeatures_has_SSE_AES();
}

bool_t const uX_ABI CPUFeatures::has_SSE_GFNI(void)
{
    return _uX_CPUFeatures_has_SSE_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_SSE_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSE_PCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_SSE2_AES(void)
{
    return _uX_CPUFeatures_has_SSE2_AES();
}

bool_t const uX_ABI CPUFeatures::has_SSE2_GFNI(void)
{
    return _uX_CPUFeatures_has_SSE2_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_SSE2_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSE2_PCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_SSE3_AES(void)
{
    return _uX_CPUFeatures_has_SSE3_AES();
}

bool_t const uX_ABI CPUFeatures::has_SSE3_GFNI(void)
{
    return _uX_CPUFeatures_has_SSE3_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_SSE3_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSE3_PCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_SSSE3_AES(void)
{
    return _uX_CPUFeatures_has_SSSE3_AES();
}

bool_t const uX_ABI CPUFeatures::has_SSSE3_GFNI(void)
{
    return _uX_CPUFeatures_has_SSSE3_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_SSSE3_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSSE3_PCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_SSE41_AES(void)
{
    return _uX_CPUFeatures_has_SSE41_AES();
}

bool_t const uX_ABI CPUFeatures::has_SSE41_GFNI(void)
{
    return _uX_CPUFeatures_has_SSE41_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_SSE41_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSE41_PCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_SSE42_AES(void)
{
    return _uX_CPUFeatures_has_SSE42_AES();
}

bool_t const uX_ABI CPUFeatures::has_SSE42_GFNI(void)
{
    return _uX_CPUFeatures_has_SSE42_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_SSE42_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSE42_PCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_AVX_AES(void)
{
    return _uX_CPUFeatures_has_AVX_AES();
}

bool_t const uX_ABI CPUFeatures::has_AVX_GFNI(void)
{
    return _uX_CPUFeatures_has_AVX_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_AVX_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX_PCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_AVX_VAES(void)
{
    return _uX_CPUFeatures_has_AVX_VAES();
}

bool_t const uX_ABI CPUFeatures::has_AVX_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX_VPCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_AVX2_AES(void)
{
    return _uX_CPUFeatures_has_AVX2_AES();
}

bool_t const uX_ABI CPUFeatures::has_AVX2_GFNI(void)
{
    return _uX_CPUFeatures_has_AVX2_GFNI();
}

bool_t const uX_ABI CPUFeatures::has_AVX2_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX2_PCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_AVX2_VAES(void)
{
    return _uX_CPUFeatures_has_AVX2_VAES();
}

bool_t const uX_ABI CPUFeatures::has_AVX2_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX2_VPCLMULQDQ();
}

bool_t const uX_ABI CPUFeatures::has_enabled_XMM(void)
{
    return _uX_CPUFeatures_has_enabled_XMM();
}

bool_t const uX_ABI CPUFeatures::has_enabled_YMM(void)
{
    return _uX_CPUFeatures_has_enabled_YMM();
}

bool_t const uX_ABI CPUFeatures::has_enabled_ZMM(void)
{
    return _uX_CPUFeatures_has_enabled_ZMM();
}

bool_t const uX_ABI CPUFeatures::is_inited(void)
{
    return _uX_CPUFeatures_is_inited();
}

uX_PACK_STACK

void uX_ABI CPUFeatures::CpuType(int* vendor, int* family, int* model)
{
    _uX_CPUFeatures_CpuType(vendor, family, model);
}

char* uX_ABI CPUFeatures::ProcessorName(void)
{
    return _uX_CPUFeatures_ProcessorName();
}

size_t uX_ABI CPUFeatures::DataCacheSize(int level)
{
    return _uX_CPUFeatures_DataCacheSize(level);
}

uX_PACK_POP
uX_EXTERNC_END
namespace_internal_end
namespace_uX_end*/

/* Assembly externals *!!!DONT TOUCH!!!* */

uX_EXTERNC_BEGIN
uX_PACK_PUSH_STACK

/* Initiate the CPUFeatures
 * Parameter int initiate the output info: 0 basic info, 1 extra info*/
extern void uX_ABI _uX_CPUFeatures_Init(int /*info*/);
extern void uX_ABI _uX_CPUFeatures_Fin(void);

/* Basic info functions*/

uX_PACK_SIZE_T

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
extern count_t const uX_ABI _uX_CPUFeatures_IntrinSet(void);

/* EFLAGS %eax=00H, %ebx=00H */
extern intbool_t const uX_ABI _uX_CPUFeatures_has_CPUID(void);

/* %eax=00H, %ecx */
extern intbool_t const uX_ABI _uX_CPUFeatures_is_Intel(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_is_AMD(void);

/* %eax=01H, %ecx */
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE3(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_PCLMULQDQ(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_MONITOR(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSSE3(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_FMA(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_CMPXCHG16B(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE41(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE42(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_MOVBE(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_POPCNT(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_XSAVE(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_OSXSAVE(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_F16C(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_RDRAND(void);

/* %eax=01H, %edx */
extern intbool_t const uX_ABI _uX_CPUFeatures_has_FPU(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_TSC(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_MSR(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_CMPXCHG8B(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SEP(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_CMOV(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_CLFSH(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_MMX(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_FXSR(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE2(void);

/* %eax=07H, %ebx */
extern intbool_t const uX_ABI _uX_CPUFeatures_has_FSGSBASE(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SGX(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_BMI1(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_HLE(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX2(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SMEP(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_BMI2(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_ERMS(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_INVPCID(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_RTM(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_MPX(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512F(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512DQ(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_RDSEED(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_ADX(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SMAP(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_IFMA(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_CLFLUSHOPT(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_CLWB(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512PF(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512ER(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512CD(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SHA(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512BW(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512VL(void);

/* %eax=07H, %ecx */
extern intbool_t const uX_ABI _uX_CPUFeatures_has_PREFETCHWT1(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VBMI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_UMIP(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_PKU(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_OSPKE(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VBMI2(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_VAES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_VPCLMULQDQ(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VNNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_BITALG(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VPOPCNTDQ(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_RDPID(void);

/* %eax=07H, %edx */
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_4VNNIW(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_4FMAPS(void);

/* %eax=80000001H, %ecx */
extern intbool_t const uX_ABI _uX_CPUFeatures_has_LAHF(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_LZCNT(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_ABM(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE4a(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_PREFETCHW(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_XOP(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_LWP(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_FMA4(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_TBM(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_MWAITX(void);

/* %eax=80000001H, %edx */
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SYSCALL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_MMXEXT(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_RDTSCP(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_3DNOWEXT(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_3DNOW(void);

/* %eax=07H, %ebx, %ecx */
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_GFNI_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VAES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VAES_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VPCLMULQDQ(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VPCLMULQDQ_VL(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_IFMA_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VBMI_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VBMI2_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VNNI_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_BITALG_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512_VPOPCNTDQ_VL(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512BW_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512BW_GFNI_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512BW_VAES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512BW_VAES_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512BW_VL(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512DQ_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512DQ_GFNI_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512DQ_VAES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512DQ_VAES_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ_VL(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512DQ_VL(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX512CD_VL(void);

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE_AES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE_PCLMULQDQ(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE2_AES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE2_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE2_PCLMULQDQ(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE3_AES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE3_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE3_PCLMULQDQ(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSSE3_AES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSSE3_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSSE3_PCLMULQDQ(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE41_AES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE41_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE41_PCLMULQDQ(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE42_AES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE42_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_SSE42_PCLMULQDQ(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX_AES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX_PCLMULQDQ(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX_VAES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX_VPCLMULQDQ(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX2_AES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX2_GFNI(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX2_PCLMULQDQ(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX2_VAES(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_AVX2_VPCLMULQDQ(void);

extern intbool_t const uX_ABI _uX_CPUFeatures_has_enabled_XMM(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_enabled_YMM(void);
extern intbool_t const uX_ABI _uX_CPUFeatures_has_enabled_ZMM(void);

/* Check if CPUFeatures is initiated */
extern intbool_t const uX_ABI _uX_CPUFeatures_is_Inited(void);

/* Extra info functions*/

uX_PACK_STACK

extern void const uX_ABI _uX_CPUFeatures_CpuType(int* /*vendor*/, int* /*family*/, int* /*model*/);

extern char const* const uX_ABI _uX_CPUFeatures_ProcessorName(void);

uX_PACK_SIZE_T

extern size_t const uX_ABI _uX_CPUFeatures_DataCacheSize(int /*level*/);
extern size_t const uX_ABI _uX_CPUFeatures_L1DataCacheSize(void);
extern size_t const uX_ABI _uX_CPUFeatures_L2DataCacheSize(void);
extern size_t const uX_ABI _uX_CPUFeatures_L3DataCacheSize(void);

extern count_t const uX_ABI _uX_CPUFeatures_UnalignedIsFaster(void);
extern count_t const uX_ABI _uX_CPUFeatures_Store256BitIsFaster(void);

uX_PACK_POP
uX_EXTERNC_END

#ifndef _CLASS_CPUFEATURES
#define _CLASS_CPUFEATURES 1

namespace_uX
namespace_internal
uX_EXTERNCC_BEGIN
uX_PACK_PUSH_STACK

typedef class CPUFeatures
{
public:
    /* Initiate the CPUFeatures
     * Parameter int initiate the output info: 0 basic info, 1 extra info, 2 additional extra info
     */
    CPUFeatures(int infolevel) { if (!_uX_CPUFeatures_is_Inited()) {_uX_CPUFeatures_Init(infolevel);} }
    /* Destroy the CPUFeatures */
    ~CPUFeatures(void) { if (_uX_CPUFeatures_is_Inited()) {_uX_CPUFeatures_Fin();} }

uX_PACK_SIZE_T
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
    uX_constexpr count_t const uX_ABI IntrinSet(void) const { return _uX_CPUFeatures_IntrinSet(); }

    /* EFLAGS %eax=00H, %ebx=00H */
    uX_constexpr bool_t const uX_ABI has_CPUID(void) const { return _uX_CPUFeatures_has_CPUID(); }

    /* %eax=00H, %ecx */
    uX_constexpr bool_t const uX_ABI is_Intel(void) const { return _uX_CPUFeatures_is_Intel(); }
    uX_constexpr bool_t const uX_ABI is_AMD(void) const { return _uX_CPUFeatures_is_AMD(); }

    /* %eax=01H, %ecx */
    uX_constexpr bool_t const uX_ABI has_SSE3(void) const { return _uX_CPUFeatures_has_SSE3(); }
    uX_constexpr bool_t const uX_ABI has_PCLMULQDQ(void) const { return _uX_CPUFeatures_has_PCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_MONITOR(void) const { return _uX_CPUFeatures_has_MONITOR(); }
    uX_constexpr bool_t const uX_ABI has_SSSE3(void) const { return _uX_CPUFeatures_has_SSSE3(); }
    uX_constexpr bool_t const uX_ABI has_FMA(void) const { return _uX_CPUFeatures_has_FMA(); }
    uX_constexpr bool_t const uX_ABI has_CMPXCHG16B(void) const { return _uX_CPUFeatures_has_CMPXCHG16B(); }
    uX_constexpr bool_t const uX_ABI has_SSE41(void) const { return _uX_CPUFeatures_has_SSE41(); }
    uX_constexpr bool_t const uX_ABI has_SSE42(void) const { return _uX_CPUFeatures_has_SSE42(); }
    uX_constexpr bool_t const uX_ABI has_MOVBE(void) const { return _uX_CPUFeatures_has_MOVBE(); }
    uX_constexpr bool_t const uX_ABI has_POPCNT(void) const { return _uX_CPUFeatures_has_POPCNT(); }
    uX_constexpr bool_t const uX_ABI has_AES(void) const { return _uX_CPUFeatures_has_AES(); }
    uX_constexpr bool_t const uX_ABI has_XSAVE(void) const { return _uX_CPUFeatures_has_XSAVE(); }
    uX_constexpr bool_t const uX_ABI has_OSXSAVE(void) const { return _uX_CPUFeatures_has_OSXSAVE(); }
    uX_constexpr bool_t const uX_ABI has_AVX(void) const { return _uX_CPUFeatures_has_AVX(); }
    uX_constexpr bool_t const uX_ABI has_F16C(void) const { return _uX_CPUFeatures_has_F16C(); }
    uX_constexpr bool_t const uX_ABI has_RDRAND(void) const { return _uX_CPUFeatures_has_RDRAND(); }

    /* %eax=01H, %edx */
    uX_constexpr bool_t const uX_ABI has_FPU(void) const { return _uX_CPUFeatures_has_FPU(); }
    uX_constexpr bool_t const uX_ABI has_TSC(void) const { return _uX_CPUFeatures_has_TSC(); }
    uX_constexpr bool_t const uX_ABI has_MSR(void) const { return _uX_CPUFeatures_has_MSR(); }
    uX_constexpr bool_t const uX_ABI has_CMPXCHG8B(void) const { return _uX_CPUFeatures_has_CMPXCHG8B(); }
    uX_constexpr bool_t const uX_ABI has_SEP(void) const { return _uX_CPUFeatures_has_SEP(); }
    uX_constexpr bool_t const uX_ABI has_CMOV(void) const { return _uX_CPUFeatures_has_CMOV(); }
    uX_constexpr bool_t const uX_ABI has_CLFSH(void) const { return _uX_CPUFeatures_has_CLFSH(); }
    uX_constexpr bool_t const uX_ABI has_MMX(void) const { return _uX_CPUFeatures_has_MMX(); }
    uX_constexpr bool_t const uX_ABI has_FXSR(void) const { return _uX_CPUFeatures_has_FXSR(); }
    uX_constexpr bool_t const uX_ABI has_SSE(void) const { return _uX_CPUFeatures_has_SSE(); }
    uX_constexpr bool_t const uX_ABI has_SSE2(void) const { return _uX_CPUFeatures_has_SSE2(); }

    /* %eax=07H, %ebx */
    uX_constexpr bool_t const uX_ABI has_FSGSBASE(void) const { return _uX_CPUFeatures_has_FSGSBASE(); }
    uX_constexpr bool_t const uX_ABI has_SGX(void) const { return _uX_CPUFeatures_has_SGX(); }
    uX_constexpr bool_t const uX_ABI has_BMI1(void) const { return _uX_CPUFeatures_has_BMI1(); }
    uX_constexpr bool_t const uX_ABI has_HLE(void) const { return _uX_CPUFeatures_has_HLE(); }
    uX_constexpr bool_t const uX_ABI has_AVX2(void) const { return _uX_CPUFeatures_has_AVX2(); }
    uX_constexpr bool_t const uX_ABI has_SMEP(void) const { return _uX_CPUFeatures_has_SMEP(); }
    uX_constexpr bool_t const uX_ABI has_BMI2(void) const { return _uX_CPUFeatures_has_BMI2(); }
    uX_constexpr bool_t const uX_ABI has_ERMS(void) const { return _uX_CPUFeatures_has_ERMS(); }
    uX_constexpr bool_t const uX_ABI has_INVPCID(void) const { return _uX_CPUFeatures_has_INVPCID(); }
    uX_constexpr bool_t const uX_ABI has_RTM(void) const { return _uX_CPUFeatures_has_RTM(); }
    uX_constexpr bool_t const uX_ABI has_MPX(void) const { return _uX_CPUFeatures_has_MPX(); }
    uX_constexpr bool_t const uX_ABI has_AVX512F(void) const { return _uX_CPUFeatures_has_AVX512F(); }
    uX_constexpr bool_t const uX_ABI has_AVX512DQ(void) const { return _uX_CPUFeatures_has_AVX512DQ(); }
    uX_constexpr bool_t const uX_ABI has_RDSEED(void) const { return _uX_CPUFeatures_has_RDSEED(); }
    uX_constexpr bool_t const uX_ABI has_ADX(void) const { return _uX_CPUFeatures_has_ADX(); }
    uX_constexpr bool_t const uX_ABI has_SMAP(void) const { return _uX_CPUFeatures_has_SMAP(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_IFMA(void) const { return _uX_CPUFeatures_has_AVX512_IFMA(); }
    uX_constexpr bool_t const uX_ABI has_CLFLUSHOPT(void) const { return _uX_CPUFeatures_has_CLFLUSHOPT(); }
    uX_constexpr bool_t const uX_ABI has_CLWB(void) const { return _uX_CPUFeatures_has_CLWB(); }
    uX_constexpr bool_t const uX_ABI has_AVX512PF(void) const { return _uX_CPUFeatures_has_AVX512PF(); }
    uX_constexpr bool_t const uX_ABI has_AVX512ER(void) const { return _uX_CPUFeatures_has_AVX512ER(); }
    uX_constexpr bool_t const uX_ABI has_AVX512CD(void) const { return _uX_CPUFeatures_has_AVX512CD(); }
    uX_constexpr bool_t const uX_ABI has_SHA(void) const { return _uX_CPUFeatures_has_SHA(); }
    uX_constexpr bool_t const uX_ABI has_AVX512BW(void) const { return _uX_CPUFeatures_has_AVX512BW(); }
    uX_constexpr bool_t const uX_ABI has_AVX512VL(void) const { return _uX_CPUFeatures_has_AVX512VL(); }

    /* %eax=07H, %ecx */
    uX_constexpr bool_t const uX_ABI has_PREFETCHWT1(void) const { return _uX_CPUFeatures_has_PREFETCHWT1(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VBMI(void) const { return _uX_CPUFeatures_has_AVX512_VBMI(); }
    uX_constexpr bool_t const uX_ABI has_UMIP(void) const { return _uX_CPUFeatures_has_UMIP(); }
    uX_constexpr bool_t const uX_ABI has_PKU(void) const { return _uX_CPUFeatures_has_PKU(); }
    uX_constexpr bool_t const uX_ABI has_OSPKE(void) const { return _uX_CPUFeatures_has_OSPKE(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VBMI2(void) const { return _uX_CPUFeatures_has_AVX512_VBMI2(); }
    uX_constexpr bool_t const uX_ABI has_GFNI(void) const { return _uX_CPUFeatures_has_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_VAES(void) const { return _uX_CPUFeatures_has_VAES(); }
    uX_constexpr bool_t const uX_ABI has_VPCLMULQDQ(void) const { return _uX_CPUFeatures_has_VPCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VNNI(void) const { return _uX_CPUFeatures_has_AVX512_VNNI(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_BITALG(void) const { return _uX_CPUFeatures_has_AVX512_BITALG(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VPOPCNTDQ(void) const { return _uX_CPUFeatures_has_AVX512_VPOPCNTDQ(); }
    uX_constexpr bool_t const uX_ABI has_RDPID(void) const { return _uX_CPUFeatures_has_RDPID(); }

    /* %eax=07H, %edx */
    uX_constexpr bool_t const uX_ABI has_AVX512_4VNNIW(void) const { return _uX_CPUFeatures_has_AVX512_4VNNIW(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_4FMAPS(void) const { return _uX_CPUFeatures_has_AVX512_4FMAPS(); }

    /* %eax=80000001H, %ecx */
    uX_constexpr bool_t const uX_ABI has_LAHF(void) const { return _uX_CPUFeatures_has_LAHF(); }
    uX_constexpr bool_t const uX_ABI has_LZCNT(void) const { return _uX_CPUFeatures_has_LZCNT(); }
    uX_constexpr bool_t const uX_ABI has_ABM(void) const { return _uX_CPUFeatures_has_ABM(); }
    uX_constexpr bool_t const uX_ABI has_SSE4a(void) const { return _uX_CPUFeatures_has_SSE4a(); }
    uX_constexpr bool_t const uX_ABI has_PREFETCHW(void) const { return _uX_CPUFeatures_has_PREFETCHW(); }
    uX_constexpr bool_t const uX_ABI has_XOP(void) const { return _uX_CPUFeatures_has_XOP(); }
    uX_constexpr bool_t const uX_ABI has_LWP(void) const { return _uX_CPUFeatures_has_LWP(); }
    uX_constexpr bool_t const uX_ABI has_FMA4(void) const { return _uX_CPUFeatures_has_FMA4(); }
    uX_constexpr bool_t const uX_ABI has_TBM(void) const { return _uX_CPUFeatures_has_TBM(); }
    uX_constexpr bool_t const uX_ABI has_MWAITX(void) const { return _uX_CPUFeatures_has_MWAITX(); }

    /* %eax=80000001H, %edx */
    uX_constexpr bool_t const uX_ABI has_SYSCALL(void) const { return _uX_CPUFeatures_has_SYSCALL(); }
    uX_constexpr bool_t const uX_ABI has_MMXEXT(void) const { return _uX_CPUFeatures_has_MMXEXT(); }
    uX_constexpr bool_t const uX_ABI has_RDTSCP(void) const { return _uX_CPUFeatures_has_RDTSCP(); }
    uX_constexpr bool_t const uX_ABI has_3DNOWEXT(void) const { return _uX_CPUFeatures_has_3DNOWEXT(); }
    uX_constexpr bool_t const uX_ABI has_3DNOW(void) const { return _uX_CPUFeatures_has_3DNOW(); }

    /* %eax=07H, %ebx, %ecx */
    uX_constexpr bool_t const uX_ABI has_AVX512_GFNI(void) const { return _uX_CPUFeatures_has_AVX512_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_GFNI_VL(void) const { return _uX_CPUFeatures_has_AVX512_GFNI_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VAES(void) const { return _uX_CPUFeatures_has_AVX512_VAES(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VAES_VL(void) const { return _uX_CPUFeatures_has_AVX512_VAES_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VPCLMULQDQ(void) const { return _uX_CPUFeatures_has_AVX512_VPCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VPCLMULQDQ_VL(void) const { return _uX_CPUFeatures_has_AVX512_VPCLMULQDQ_VL(); }

    uX_constexpr bool_t const uX_ABI has_AVX512_IFMA_VL(void) const { return _uX_CPUFeatures_has_AVX512_IFMA_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VBMI_VL(void) const { return _uX_CPUFeatures_has_AVX512_VBMI_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VBMI2_VL(void) const { return _uX_CPUFeatures_has_AVX512_VBMI2_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VNNI_VL(void) const { return _uX_CPUFeatures_has_AVX512_VNNI_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_BITALG_VL(void) const { return _uX_CPUFeatures_has_AVX512_BITALG_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512_VPOPCNTDQ_VL(void) const { return _uX_CPUFeatures_has_AVX512_VPOPCNTDQ_VL(); }

    uX_constexpr bool_t const uX_ABI has_AVX512BW_GFNI(void) const { return _uX_CPUFeatures_has_AVX512BW_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_AVX512BW_GFNI_VL(void) const { return _uX_CPUFeatures_has_AVX512BW_GFNI_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512BW_VAES(void) const { return _uX_CPUFeatures_has_AVX512BW_VAES(); }
    uX_constexpr bool_t const uX_ABI has_AVX512BW_VAES_VL(void) const { return _uX_CPUFeatures_has_AVX512BW_VAES_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512BW_VPCLMULQDQ(void) const { return _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_AVX512BW_VPCLMULQDQ_VL(void) const { return _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512BW_VL(void) const { return _uX_CPUFeatures_has_AVX512BW_VL(); }

    uX_constexpr bool_t const uX_ABI has_AVX512DQ_GFNI(void) const { return _uX_CPUFeatures_has_AVX512DQ_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_AVX512DQ_GFNI_VL(void) const { return _uX_CPUFeatures_has_AVX512DQ_GFNI_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512DQ_VAES(void) const { return _uX_CPUFeatures_has_AVX512DQ_VAES(); }
    uX_constexpr bool_t const uX_ABI has_AVX512DQ_VAES_VL(void) const { return _uX_CPUFeatures_has_AVX512DQ_VAES_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512DQ_VPCLMULQDQ(void) const { return _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_AVX512DQ_VPCLMULQDQ_VL(void) const { return _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ_VL(); }
    uX_constexpr bool_t const uX_ABI has_AVX512DQ_VL(void) const { return _uX_CPUFeatures_has_AVX512DQ_VL(); }

    uX_constexpr bool_t const uX_ABI has_AVX512CD_VL(void) const { return _uX_CPUFeatures_has_AVX512CD_VL(); }

    /* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
    uX_constexpr bool_t const uX_ABI has_SSE_AES(void) const { return _uX_CPUFeatures_has_SSE_AES(); }
    uX_constexpr bool_t const uX_ABI has_SSE_GFNI(void) const { return _uX_CPUFeatures_has_SSE_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_SSE_PCLMULQDQ(void) const { return _uX_CPUFeatures_has_SSE_PCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_SSE2_AES(void) const { return _uX_CPUFeatures_has_SSE2_AES(); }
    uX_constexpr bool_t const uX_ABI has_SSE2_GFNI(void) const { return _uX_CPUFeatures_has_SSE2_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_SSE2_PCLMULQDQ(void) const { return _uX_CPUFeatures_has_SSE2_PCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_SSE3_AES(void) const { return _uX_CPUFeatures_has_SSE3_AES(); }
    uX_constexpr bool_t const uX_ABI has_SSE3_GFNI(void) const { return _uX_CPUFeatures_has_SSE3_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_SSE3_PCLMULQDQ(void) const { return _uX_CPUFeatures_has_SSE3_PCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_SSSE3_AES(void) const { return _uX_CPUFeatures_has_SSSE3_AES(); }
    uX_constexpr bool_t const uX_ABI has_SSSE3_GFNI(void) const { return _uX_CPUFeatures_has_SSSE3_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_SSSE3_PCLMULQDQ(void) const { return _uX_CPUFeatures_has_SSSE3_PCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_SSE41_AES(void) const { return _uX_CPUFeatures_has_SSE41_AES(); }
    uX_constexpr bool_t const uX_ABI has_SSE41_GFNI(void) const { return _uX_CPUFeatures_has_SSE41_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_SSE41_PCLMULQDQ(void) const { return _uX_CPUFeatures_has_SSE41_PCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_SSE42_AES(void) const { return _uX_CPUFeatures_has_SSE42_AES(); }
    uX_constexpr bool_t const uX_ABI has_SSE42_GFNI(void) const { return _uX_CPUFeatures_has_SSE42_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_SSE42_PCLMULQDQ(void) const { return _uX_CPUFeatures_has_SSE42_PCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_AVX_AES(void) const { return _uX_CPUFeatures_has_AVX_AES(); }
    uX_constexpr bool_t const uX_ABI has_AVX_GFNI(void) const { return _uX_CPUFeatures_has_AVX_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_AVX_PCLMULQDQ(void) const { return _uX_CPUFeatures_has_AVX_PCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_AVX_VAES(void) const { return _uX_CPUFeatures_has_AVX_VAES(); }
    uX_constexpr bool_t const uX_ABI has_AVX_VPCLMULQDQ(void) const { return _uX_CPUFeatures_has_AVX_VPCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_AVX2_AES(void) const { return _uX_CPUFeatures_has_AVX2_AES(); }
    uX_constexpr bool_t const uX_ABI has_AVX2_GFNI(void) const { return _uX_CPUFeatures_has_AVX2_GFNI(); }
    uX_constexpr bool_t const uX_ABI has_AVX2_PCLMULQDQ(void) const { return _uX_CPUFeatures_has_AVX2_PCLMULQDQ(); }
    uX_constexpr bool_t const uX_ABI has_AVX2_VAES(void) const { return _uX_CPUFeatures_has_AVX2_VAES(); }
    uX_constexpr bool_t const uX_ABI has_AVX2_VPCLMULQDQ(void) const { return _uX_CPUFeatures_has_AVX2_VPCLMULQDQ(); }

    uX_constexpr bool_t const uX_ABI has_enabled_XMM(void) const { return _uX_CPUFeatures_has_enabled_XMM(); }
    uX_constexpr bool_t const uX_ABI has_enabled_YMM(void) const { return _uX_CPUFeatures_has_enabled_YMM(); }
    uX_constexpr bool_t const uX_ABI has_enabled_ZMM(void) const { return _uX_CPUFeatures_has_enabled_ZMM(); }

    /* Check if CPUFeatures is initiated */
    uX_constexpr bool_t const uX_ABI is_Inited(void) const { return _uX_CPUFeatures_is_Inited(); }

    uX_PACK_STACK

    uX_constexpr void const uX_ABI CpuType(int* vendor, int* family, int* model) const { _uX_CPUFeatures_CpuType(vendor, family, model); }

    uX_constexpr char const* const uX_ABI ProcessorName(void) const { return _uX_CPUFeatures_ProcessorName(); }

uX_PACK_SIZE_T

    uX_constexpr size_t const uX_ABI DataCacheSize(int level) const { return _uX_CPUFeatures_DataCacheSize(level); }
    uX_constexpr size_t const uX_ABI L1DataCacheSize(void) const { return _uX_CPUFeatures_L1DataCacheSize(); }
    uX_constexpr size_t const uX_ABI L2DataCacheSize(void) const { return _uX_CPUFeatures_L2DataCacheSize(); }
    uX_constexpr size_t const uX_ABI L3DataCacheSize(void) const { return _uX_CPUFeatures_L3DataCacheSize(); }
    
    uX_constexpr count_t const uX_ABI UnalignedIsFaster(void) const { return _uX_CPUFeatures_UnalignedIsFaster(); }
    uX_constexpr count_t const uX_ABI Store256BitIsFaster(void) const { return _uX_CPUFeatures_Store256BitIsFaster(); }

} CPUFeatures_t;

typedef CPUFeatures* pCPUFeatures_t;
uX_PACK_POP
uX_EXTERNCC_END
namespace_internal_end
namespace_uX_end
#endif /*_CLASS_CPUFEATURES*/

namespace_uX
namespace_CPU
uX_EXTERNCC_BEGIN
uX_PACK_PUSH_STACK

static _internal::CPUFeatures const CPU_Rep0(0);

uX_PACK_SIZE_T

count_t const uX_ABI IntrinSet(void)
{
    return CPU_Rep0.IntrinSet();
}

/* EFLAGS %eax=00H, %ebx=00H */
bool_t const uX_ABI has_CPUID(void)
{
    return CPU_Rep0.has_CPUID();
}

/* %eax=00H, %ecx */
bool_t const uX_ABI is_Intel(void)
{
    return CPU_Rep0.is_Intel();
}

bool_t const uX_ABI is_AMD(void)
{
    return CPU_Rep0.is_AMD();
}

/* %eax=01H, %ecx */
bool_t const uX_ABI has_SSE3(void)
{
    return CPU_Rep0.has_SSE3();
}

bool_t const uX_ABI has_PCLMULQDQ(void)
{
    return CPU_Rep0.has_PCLMULQDQ();
}

bool_t const uX_ABI has_MONITOR(void)
{
    return CPU_Rep0.has_MONITOR();
}

bool_t const uX_ABI has_SSSE3(void)
{
    return CPU_Rep0.has_SSSE3();
}

bool_t const uX_ABI has_FMA(void)
{
    return CPU_Rep0.has_FMA();
}

bool_t const uX_ABI has_CMPXCHG16B(void)
{
    return CPU_Rep0.has_CMPXCHG16B();
}

bool_t const uX_ABI has_SSE41(void)
{
    return CPU_Rep0.has_SSE41();
}

bool_t const uX_ABI has_SSE42(void)
{
    return CPU_Rep0.has_SSE42();
}

bool_t const uX_ABI has_MOVBE(void)
{
    return CPU_Rep0.has_MOVBE();
}

bool_t const uX_ABI has_POPCNT(void)
{
    return CPU_Rep0.has_POPCNT();
}

bool_t const uX_ABI has_AES(void)
{
    return CPU_Rep0.has_AES();
}

bool_t const uX_ABI has_XSAVE(void)
{
    return CPU_Rep0.has_XSAVE();
}

bool_t const uX_ABI has_OSXSAVE(void)
{
    return CPU_Rep0.has_OSXSAVE();
}

bool_t const uX_ABI has_AVX(void)
{
    return CPU_Rep0.has_AVX();
}

bool_t const uX_ABI has_F16C(void)
{
    return CPU_Rep0.has_F16C();
}

bool_t const uX_ABI has_RDRAND(void)
{
    return CPU_Rep0.has_RDRAND();
}

/* %eax=01H, %edx */
bool_t const uX_ABI has_FPU(void)
{
    return CPU_Rep0.has_FPU();
}

bool_t const uX_ABI has_TSC(void)
{
    return CPU_Rep0.has_TSC();
}

bool_t const uX_ABI has_MSR(void)
{
    return CPU_Rep0.has_MSR();
}

bool_t const uX_ABI has_CMPXCHG8B(void)
{
    return CPU_Rep0.has_CMPXCHG8B();
}

bool_t const uX_ABI has_SEP(void)
{
    return CPU_Rep0.has_SEP();
}

bool_t const uX_ABI has_CMOV(void)
{
    return CPU_Rep0.has_CMOV();
}

bool_t const uX_ABI has_CLFSH(void)
{
    return CPU_Rep0.has_CLFSH();
}

bool_t const uX_ABI has_MMX(void)
{
    return CPU_Rep0.has_MMX();
}

bool_t const uX_ABI has_FXSR(void)
{
    return CPU_Rep0.has_FXSR();
}

bool_t const uX_ABI has_SSE(void)
{
    return CPU_Rep0.has_SSE();
}

bool_t const uX_ABI has_SSE2(void)
{
    return CPU_Rep0.has_SSE2();
}

/* %eax=07H, %ebx */
bool_t const uX_ABI has_FSGSBASE(void)
{
    return CPU_Rep0.has_FSGSBASE();
}

bool_t const uX_ABI has_SGX(void)
{
    return CPU_Rep0.has_SGX();
}

bool_t const uX_ABI has_BMI1(void)
{
    return CPU_Rep0.has_BMI1();
}

bool_t const uX_ABI has_HLE(void)
{
    return CPU_Rep0.has_HLE();
}

bool_t const uX_ABI has_AVX2(void)
{
    return CPU_Rep0.has_AVX2();
}

bool_t const uX_ABI has_SMEP(void)
{
    return CPU_Rep0.has_SMEP();
}

bool_t const uX_ABI has_BMI2(void)
{
    return CPU_Rep0.has_BMI2();
}

bool_t const uX_ABI has_ERMS(void)
{
    return CPU_Rep0.has_ERMS();
}

bool_t const uX_ABI has_INVPCID(void)
{
    return CPU_Rep0.has_INVPCID();
}

bool_t const uX_ABI has_RTM(void)
{
    return CPU_Rep0.has_RTM();
}

bool_t const uX_ABI has_MPX(void)
{
    return CPU_Rep0.has_MPX();
}

bool_t const uX_ABI has_AVX512F(void)
{
    return CPU_Rep0.has_AVX512F();
}

bool_t const uX_ABI has_AVX512DQ(void)
{
    return CPU_Rep0.has_AVX512DQ();
}

bool_t const uX_ABI has_RDSEED(void)
{
    return CPU_Rep0.has_RDSEED();
}

bool_t const uX_ABI has_ADX(void)
{
    return CPU_Rep0.has_ADX();
}

bool_t const uX_ABI has_SMAP(void)
{
    return CPU_Rep0.has_SMAP();
}

bool_t const uX_ABI has_AVX512_IFMA(void)
{
    return CPU_Rep0.has_AVX512_IFMA();
}

bool_t const uX_ABI has_CLFLUSHOPT(void)
{
    return CPU_Rep0.has_CLFLUSHOPT();
}

bool_t const uX_ABI has_CLWB(void)
{
    return CPU_Rep0.has_CLWB();
}

bool_t const uX_ABI has_AVX512PF(void)
{
    return CPU_Rep0.has_AVX512PF();
}

bool_t const uX_ABI has_AVX512ER(void)
{
    return CPU_Rep0.has_AVX512ER();
}

bool_t const uX_ABI has_AVX512CD(void)
{
    return CPU_Rep0.has_AVX512CD();
}

bool_t const uX_ABI has_SHA(void)
{
    return CPU_Rep0.has_SHA();
}

bool_t const uX_ABI has_AVX512BW(void)
{
    return CPU_Rep0.has_AVX512BW();
}

bool_t const uX_ABI has_AVX512VL(void)
{
    return CPU_Rep0.has_AVX512VL();
}

/* %eax=07H, %ecx */
bool_t const uX_ABI has_PREFETCHWT1(void)
{
    return CPU_Rep0.has_PREFETCHWT1();
}

bool_t const uX_ABI has_AVX512_VBMI(void)
{
    return CPU_Rep0.has_AVX512_VBMI();
}

bool_t const uX_ABI has_UMIP(void)
{
    return CPU_Rep0.has_UMIP();
}

bool_t const uX_ABI has_PKU(void)
{
    return CPU_Rep0.has_PKU();
}

bool_t const uX_ABI has_OSPKE(void)
{
    return CPU_Rep0.has_OSPKE();
}

bool_t const uX_ABI has_AVX512_VBMI2(void)
{
    return CPU_Rep0.has_AVX512_VBMI2();
}

bool_t const uX_ABI has_GFNI(void)
{
    return CPU_Rep0.has_GFNI();
}

bool_t const uX_ABI has_VAES(void)
{
    return CPU_Rep0.has_VAES();
}

bool_t const uX_ABI has_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_VPCLMULQDQ();
}

bool_t const uX_ABI has_AVX512_VNNI(void)
{
    return CPU_Rep0.has_AVX512_VNNI();
}

bool_t const uX_ABI has_AVX512_BITALG(void)
{
    return CPU_Rep0.has_AVX512_BITALG();
}

bool_t const uX_ABI has_AVX512_VPOPCNTDQ(void)
{
    return CPU_Rep0.has_AVX512_VPOPCNTDQ();
}

bool_t const uX_ABI has_RDPID(void)
{
    return CPU_Rep0.has_RDPID();
}

/* %eax=07H, %edx */
bool_t const uX_ABI has_AVX512_4VNNIW(void)
{
    return CPU_Rep0.has_AVX512_4VNNIW();
}

bool_t const uX_ABI has_AVX512_4FMAPS(void)
{
    return CPU_Rep0.has_AVX512_4FMAPS();
}

/* %eax=80000001H, %ecx */
bool_t const uX_ABI has_LAHF(void)
{
    return CPU_Rep0.has_LAHF();
}

bool_t const uX_ABI has_LZCNT(void)
{
    return CPU_Rep0.has_LZCNT();
}

bool_t const uX_ABI has_ABM(void)
{
    return CPU_Rep0.has_ABM();
}

bool_t const uX_ABI has_SSE4a(void)
{
    return CPU_Rep0.has_SSE4a();
}

bool_t const uX_ABI has_PREFETCHW(void)
{
    return CPU_Rep0.has_PREFETCHW();
}

bool_t const uX_ABI has_XOP(void)
{
    return CPU_Rep0.has_XOP();
}

bool_t const uX_ABI has_LWP(void)
{
    return CPU_Rep0.has_LWP();
}

bool_t const uX_ABI has_FMA4(void)
{
    return CPU_Rep0.has_FMA4();
}

bool_t const uX_ABI has_TBM(void)
{
    return CPU_Rep0.has_TBM();
}

bool_t const uX_ABI has_MWAITX(void)
{
    return CPU_Rep0.has_MWAITX();
}

/* %eax=80000001H, %edx */
bool_t const uX_ABI has_SYSCALL(void)
{
    return CPU_Rep0.has_SYSCALL();
}

bool_t const uX_ABI has_MMXEXT(void)
{
    return CPU_Rep0.has_MMXEXT();
}

bool_t const uX_ABI has_RDTSCP(void)
{
    return CPU_Rep0.has_RDTSCP();
}

bool_t const uX_ABI has_3DNOWEXT(void)
{
    return CPU_Rep0.has_3DNOWEXT();
}

bool_t const uX_ABI has_3DNOW(void)
{
    return CPU_Rep0.has_3DNOW();
}

/* %eax=07H, %ebx, %ecx */
bool_t const uX_ABI has_AVX512_GFNI(void)
{
    return CPU_Rep0.has_AVX512_GFNI();
}

bool_t const uX_ABI has_AVX512_GFNI_VL(void)
{
    return CPU_Rep0.has_AVX512_GFNI_VL();
}

bool_t const uX_ABI has_AVX512_VAES(void)
{
    return CPU_Rep0.has_AVX512_VAES();
}

bool_t const uX_ABI has_AVX512_VAES_VL(void)
{
    return CPU_Rep0.has_AVX512_VAES_VL();
}

bool_t const uX_ABI has_AVX512_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX512_VPCLMULQDQ();
}

bool_t const uX_ABI has_AVX512_VPCLMULQDQ_VL(void)
{
    return CPU_Rep0.has_AVX512_VPCLMULQDQ_VL();
}

bool_t const uX_ABI has_AVX512_IFMA_VL(void)
{
    return CPU_Rep0.has_AVX512_IFMA_VL();
}

bool_t const uX_ABI has_AVX512_VBMI_VL(void)
{
    return CPU_Rep0.has_AVX512_VBMI_VL();
}

bool_t const uX_ABI has_AVX512_VBMI2_VL(void)
{
    return CPU_Rep0.has_AVX512_VBMI2_VL();
}

bool_t const uX_ABI has_AVX512_VNNI_VL(void)
{
    return CPU_Rep0.has_AVX512_VNNI_VL();
}

bool_t const uX_ABI has_AVX512_BITALG_VL(void)
{
    return CPU_Rep0.has_AVX512_BITALG_VL();
}

bool_t const uX_ABI has_AVX512_VPOPCNTDQ_VL(void)
{
    return CPU_Rep0.has_AVX512_VPOPCNTDQ_VL();
}

bool_t const uX_ABI has_AVX512BW_GFNI(void)
{
    return CPU_Rep0.has_AVX512BW_GFNI();
}

bool_t const uX_ABI has_AVX512BW_GFNI_VL(void)
{
    return CPU_Rep0.has_AVX512BW_GFNI_VL();
}

bool_t const uX_ABI has_AVX512BW_VAES(void)
{
    return CPU_Rep0.has_AVX512BW_VAES();
}

bool_t const uX_ABI has_AVX512BW_VAES_VL(void)
{
    return CPU_Rep0.has_AVX512BW_VAES_VL();
}

bool_t const uX_ABI has_AVX512BW_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX512BW_VPCLMULQDQ();
}

bool_t const uX_ABI has_AVX512BW_VPCLMULQDQ_VL(void)
{
    return CPU_Rep0.has_AVX512BW_VPCLMULQDQ_VL();
}

bool_t const uX_ABI has_AVX512BW_VL(void)
{
    return CPU_Rep0.has_AVX512BW_VL();
}

bool_t const uX_ABI has_AVX512DQ_GFNI(void)
{
    return CPU_Rep0.has_AVX512DQ_GFNI();
}

bool_t const uX_ABI has_AVX512DQ_GFNI_VL(void)
{
    return CPU_Rep0.has_AVX512DQ_GFNI_VL();
}

bool_t const uX_ABI has_AVX512DQ_VAES(void)
{
    return CPU_Rep0.has_AVX512DQ_VAES();
}

bool_t const uX_ABI has_AVX512DQ_VAES_VL(void)
{
    return CPU_Rep0.has_AVX512DQ_VAES_VL();
}

bool_t const uX_ABI has_AVX512DQ_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX512DQ_VPCLMULQDQ();
}

bool_t const uX_ABI has_AVX512DQ_VPCLMULQDQ_VL(void)
{
    return CPU_Rep0.has_AVX512DQ_VPCLMULQDQ_VL();
}

bool_t const uX_ABI has_AVX512DQ_VL(void)
{
    return CPU_Rep0.has_AVX512DQ_VL();
}

bool_t const uX_ABI has_AVX512CD_VL(void)
{
    return CPU_Rep0.has_AVX512CD_VL();
}

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
bool_t const uX_ABI has_SSE_AES(void)
{
    return CPU_Rep0.has_SSE_AES();
}

bool_t const uX_ABI has_SSE_GFNI(void)
{
    return CPU_Rep0.has_SSE_GFNI();
}

bool_t const uX_ABI has_SSE_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSE_PCLMULQDQ();
}

bool_t const uX_ABI has_SSE2_AES(void)
{
    return CPU_Rep0.has_SSE2_AES();
}

bool_t const uX_ABI has_SSE2_GFNI(void)
{
    return CPU_Rep0.has_SSE2_GFNI();
}

bool_t const uX_ABI has_SSE2_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSE2_PCLMULQDQ();
}

bool_t const uX_ABI has_SSE3_AES(void)
{
    return CPU_Rep0.has_SSE3_AES();
}

bool_t const uX_ABI has_SSE3_GFNI(void)
{
    return CPU_Rep0.has_SSE3_GFNI();
}

bool_t const uX_ABI has_SSE3_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSE3_PCLMULQDQ();
}

bool_t const uX_ABI has_SSSE3_AES(void)
{
    return CPU_Rep0.has_SSSE3_AES();
}

bool_t const uX_ABI has_SSSE3_GFNI(void)
{
    return CPU_Rep0.has_SSSE3_GFNI();
}

bool_t const uX_ABI has_SSSE3_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSSE3_PCLMULQDQ();
}

bool_t const uX_ABI has_SSE41_AES(void)
{
    return CPU_Rep0.has_SSE41_AES();
}

bool_t const uX_ABI has_SSE41_GFNI(void)
{
    return CPU_Rep0.has_SSE41_GFNI();
}

bool_t const uX_ABI has_SSE41_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSE41_PCLMULQDQ();
}

bool_t const uX_ABI has_SSE42_AES(void)
{
    return CPU_Rep0.has_SSE42_AES();
}

bool_t const uX_ABI has_SSE42_GFNI(void)
{
    return CPU_Rep0.has_SSE42_GFNI();
}

bool_t const uX_ABI has_SSE42_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSE42_PCLMULQDQ();
}

bool_t const uX_ABI has_AVX_AES(void)
{
    return CPU_Rep0.has_AVX_AES();
}

bool_t const uX_ABI has_AVX_GFNI(void)
{
    return CPU_Rep0.has_AVX_GFNI();
}

bool_t const uX_ABI has_AVX_PCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX_PCLMULQDQ();
}

bool_t const uX_ABI has_AVX_VAES(void)
{
    return CPU_Rep0.has_AVX_VAES();
}

bool_t const uX_ABI has_AVX_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX_VPCLMULQDQ();
}

bool_t const uX_ABI has_AVX2_AES(void)
{
    return CPU_Rep0.has_AVX2_AES();
}

bool_t const uX_ABI has_AVX2_GFNI(void)
{
    return CPU_Rep0.has_AVX2_GFNI();
}

bool_t const uX_ABI has_AVX2_PCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX2_PCLMULQDQ();
}

bool_t const uX_ABI has_AVX2_VAES(void)
{
    return CPU_Rep0.has_AVX2_VAES();
}

bool_t const uX_ABI has_AVX2_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX2_VPCLMULQDQ();
}

bool_t const uX_ABI has_enabled_XMM(void)
{
    return CPU_Rep0.has_enabled_XMM();
}

bool_t const uX_ABI has_enabled_YMM(void)
{
    return CPU_Rep0.has_enabled_YMM();
}

bool_t const uX_ABI has_enabled_ZMM(void)
{
    return CPU_Rep0.has_enabled_ZMM();
}

bool_t const uX_ABI CPUFeatures_is_Inited(void)
{
    return CPU_Rep0.is_Inited();
}

uX_PACK_STACK

static _internal::CPUFeatures const CPU_Rep1(1);

void const uX_ABI CpuType(int* vendor, int* family, int* model)
{
    CPU_Rep1.CpuType(vendor, family, model);
}

char const* const uX_ABI ProcessorName(void)
{
    return CPU_Rep1.ProcessorName();
}

uX_PACK_SIZE_T

size_t const uX_ABI DataCacheSize(int level)
{
    return CPU_Rep1.DataCacheSize(level);
}

size_t const uX_ABI L1DataCacheSize(void)
{
    return CPU_Rep1.L1DataCacheSize();
}

size_t const uX_ABI L2DataCacheSize(void)
{
    return CPU_Rep1.L2DataCacheSize();
}

size_t const uX_ABI L3DataCacheSize(void)
{
    return CPU_Rep1.L3DataCacheSize();
}

static _internal::CPUFeatures const CPU_Rep2(2);

count_t const uX_ABI UnalignedIsFaster(void)
{
    return CPU_Rep2.UnalignedIsFaster();
}

count_t const uX_ABI Store256BitIsFaster(void)
{
    return CPU_Rep2.Store256BitIsFaster();
}

/*
char const* const wet = uX_Stringer(_uX_MM_BLEND_EPI16_IM(a, b, 255));
*/

uX_PACK_POP
uX_EXTERNCC_END
namespace_CPU_end
namespace_uX_end

#endif // defined(uX_X86_OR_X64_CPU)
