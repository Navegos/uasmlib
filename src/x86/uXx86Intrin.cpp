
#include "uXx86Cpu.h"
#include "uXx86Intrin.h"

namespace_uX
namespace_CPU
uX_EXTERNC_BEGIN

uX_PACK_PUSH_SIZE_T

static const _internal::CPUFeatures CPU_Rep0(0);

uX_PACK_4

const int uX_callconv intrinset(void)
{
    return CPU_Rep0.intrinset();
}

/* %eax=00H, %ecx */
const unsigned int uX_callconv is_Intel(void)
{
    return CPU_Rep0.is_Intel();
}

const unsigned int uX_callconv is_AMD(void)
{
    return CPU_Rep0.is_AMD();
}

/* %eax=01H, %ecx */
const unsigned int uX_callconv has_SSE3(void)
{
    return CPU_Rep0.has_SSE3();
}

const unsigned int uX_callconv has_PCLMULQDQ(void)
{
    return CPU_Rep0.has_PCLMULQDQ();
}

const unsigned int uX_callconv has_MONITOR(void)
{
    return CPU_Rep0.has_MONITOR();
}

const unsigned int uX_callconv has_SSSE3(void)
{
    return CPU_Rep0.has_SSSE3();
}

const unsigned int uX_callconv has_FMA(void)
{
    return CPU_Rep0.has_FMA();
}

const unsigned int uX_callconv has_CMPXCHG16B(void)
{
    return CPU_Rep0.has_CMPXCHG16B();
}

const unsigned int uX_callconv has_SSE41(void)
{
    return CPU_Rep0.has_SSE41();
}

const unsigned int uX_callconv has_SSE42(void)
{
    return CPU_Rep0.has_SSE42();
}

const unsigned int uX_callconv has_MOVBE(void)
{
    return CPU_Rep0.has_MOVBE();
}

const unsigned int uX_callconv has_POPCNT(void)
{
    return CPU_Rep0.has_POPCNT();
}

const unsigned int uX_callconv has_AES(void)
{
    return CPU_Rep0.has_AES();
}

const unsigned int uX_callconv has_XSAVE(void)
{
    return CPU_Rep0.has_XSAVE();
}

const unsigned int uX_callconv has_OSXSAVE(void)
{
    return CPU_Rep0.has_OSXSAVE();
}

const unsigned int uX_callconv has_AVX(void)
{
    return CPU_Rep0.has_AVX();
}

const unsigned int uX_callconv has_F16C(void)
{
    return CPU_Rep0.has_F16C();
}

const unsigned int uX_callconv has_RDRAND(void)
{
    return CPU_Rep0.has_RDRAND();
}

/* %eax=01H, %edx */
const unsigned int uX_callconv has_FPU(void)
{
    return CPU_Rep0.has_FPU();
}

const unsigned int uX_callconv has_TSC(void)
{
    return CPU_Rep0.has_TSC();
}

const unsigned int uX_callconv has_MSR(void)
{
    return CPU_Rep0.has_MSR();
}

const unsigned int uX_callconv has_CMPXCHG8B(void)
{
    return CPU_Rep0.has_CMPXCHG8B();
}

const unsigned int uX_callconv has_SEP(void)
{
    return CPU_Rep0.has_SEP();
}

const unsigned int uX_callconv has_CMOV(void)
{
    return CPU_Rep0.has_CMOV();
}

const unsigned int uX_callconv has_CLFSH(void)
{
    return CPU_Rep0.has_CLFSH();
}

const unsigned int uX_callconv has_MMX(void)
{
    return CPU_Rep0.has_MMX();
}

const unsigned int uX_callconv has_FXSR(void)
{
    return CPU_Rep0.has_FXSR();
}

const unsigned int uX_callconv has_SSE(void)
{
    return CPU_Rep0.has_SSE();
}

const unsigned int uX_callconv has_SSE2(void)
{
    return CPU_Rep0.has_SSE2();
}

/* %eax=07H, %ebx */
const unsigned int uX_callconv has_FSGSBASE(void)
{
    return CPU_Rep0.has_FSGSBASE();
}

const unsigned int uX_callconv has_SGX(void)
{
    return CPU_Rep0.has_SGX();
}

const unsigned int uX_callconv has_BMI1(void)
{
    return CPU_Rep0.has_BMI1();
}

const unsigned int uX_callconv has_HLE(void)
{
    return CPU_Rep0.has_HLE();
}

const unsigned int uX_callconv has_AVX2(void)
{
    return CPU_Rep0.has_AVX2();
}

const unsigned int uX_callconv has_SMEP(void)
{
    return CPU_Rep0.has_SMEP();
}

const unsigned int uX_callconv has_BMI2(void)
{
    return CPU_Rep0.has_BMI2();
}

const unsigned int uX_callconv has_ERMS(void)
{
    return CPU_Rep0.has_ERMS();
}

const unsigned int uX_callconv has_INVPCID(void)
{
    return CPU_Rep0.has_INVPCID();
}

const unsigned int uX_callconv has_RTM(void)
{
    return CPU_Rep0.has_RTM();
}

const unsigned int uX_callconv has_MPX(void)
{
    return CPU_Rep0.has_MPX();
}

const unsigned int uX_callconv has_AVX512F(void)
{
    return CPU_Rep0.has_AVX512F();
}

const unsigned int uX_callconv has_AVX512DQ(void)
{
    return CPU_Rep0.has_AVX512DQ();
}

const unsigned int uX_callconv has_RDSEED(void)
{
    return CPU_Rep0.has_RDSEED();
}

const unsigned int uX_callconv has_ADX(void)
{
    return CPU_Rep0.has_ADX();
}

const unsigned int uX_callconv has_SMAP(void)
{
    return CPU_Rep0.has_SMAP();
}

const unsigned int uX_callconv has_AVX512_IFMA(void)
{
    return CPU_Rep0.has_AVX512_IFMA();
}

const unsigned int uX_callconv has_CLFLUSHOPT(void)
{
    return CPU_Rep0.has_CLFLUSHOPT();
}

const unsigned int uX_callconv has_CLWB(void)
{
    return CPU_Rep0.has_CLWB();
}

const unsigned int uX_callconv has_AVX512PF(void)
{
    return CPU_Rep0.has_AVX512PF();
}

const unsigned int uX_callconv has_AVX512ER(void)
{
    return CPU_Rep0.has_AVX512ER();
}

const unsigned int uX_callconv has_AVX512CD(void)
{
    return CPU_Rep0.has_AVX512CD();
}

const unsigned int uX_callconv has_SHA(void)
{
    return CPU_Rep0.has_SHA();
}

const unsigned int uX_callconv has_AVX512BW(void)
{
    return CPU_Rep0.has_AVX512BW();
}

const unsigned int uX_callconv has_AVX512VL(void)
{
    return CPU_Rep0.has_AVX512VL();
}

/* %eax=07H, %ecx */
const unsigned int uX_callconv has_PREFETCHWT1(void)
{
    return CPU_Rep0.has_PREFETCHWT1();
}

const unsigned int uX_callconv has_AVX512_VBMI(void)
{
    return CPU_Rep0.has_AVX512_VBMI();
}

const unsigned int uX_callconv has_UMIP(void)
{
    return CPU_Rep0.has_UMIP();
}

const unsigned int uX_callconv has_PKU(void)
{
    return CPU_Rep0.has_PKU();
}

const unsigned int uX_callconv has_OSPKE(void)
{
    return CPU_Rep0.has_OSPKE();
}

const unsigned int uX_callconv has_AVX512_VBMI2(void)
{
    return CPU_Rep0.has_AVX512_VBMI2();
}

const unsigned int uX_callconv has_GFNI(void)
{
    return CPU_Rep0.has_GFNI();
}

const unsigned int uX_callconv has_VAES(void)
{
    return CPU_Rep0.has_VAES();
}

const unsigned int uX_callconv has_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_VPCLMULQDQ();
}

const unsigned int uX_callconv has_AVX512_VNNI(void)
{
    return CPU_Rep0.has_AVX512_VNNI();
}

const unsigned int uX_callconv has_AVX512_BITALG(void)
{
    return CPU_Rep0.has_AVX512_BITALG();
}

const unsigned int uX_callconv has_AVX512_VPOPCNTDQ(void)
{
    return CPU_Rep0.has_AVX512_VPOPCNTDQ();
}

const unsigned int uX_callconv has_RDPID(void)
{
    return CPU_Rep0.has_RDPID();
}

/* %eax=07H, %edx */
const unsigned int uX_callconv has_AVX512_4VNNIW(void)
{
    return CPU_Rep0.has_AVX512_4VNNIW();
}

const unsigned int uX_callconv has_AVX512_4FMAPS(void)
{
    return CPU_Rep0.has_AVX512_4FMAPS();
}

/* %eax=80000001H, %ecx */
const unsigned int uX_callconv has_LAHF(void)
{
    return CPU_Rep0.has_LAHF();
}

const unsigned int uX_callconv has_LZCNT(void)
{
    return CPU_Rep0.has_LZCNT();
}

const unsigned int uX_callconv has_ABM(void)
{
    return CPU_Rep0.has_ABM();
}

const unsigned int uX_callconv has_SSE4a(void)
{
    return CPU_Rep0.has_SSE4a();
}

const unsigned int uX_callconv has_PREFETCHW(void)
{
    return CPU_Rep0.has_PREFETCHW();
}

const unsigned int uX_callconv has_XOP(void)
{
    return CPU_Rep0.has_XOP();
}

const unsigned int uX_callconv has_LWP(void)
{
    return CPU_Rep0.has_LWP();
}

const unsigned int uX_callconv has_FMA4(void)
{
    return CPU_Rep0.has_FMA4();
}

const unsigned int uX_callconv has_TBM(void)
{
    return CPU_Rep0.has_TBM();
}

const unsigned int uX_callconv has_MWAITX(void)
{
    return CPU_Rep0.has_MWAITX();
}

/* %eax=80000001H, %edx */
const unsigned int uX_callconv has_SYSCALL(void)
{
    return CPU_Rep0.has_SYSCALL();
}

const unsigned int uX_callconv has_MMXEXT(void)
{
    return CPU_Rep0.has_MMXEXT();
}

const unsigned int uX_callconv has_RDTSCP(void)
{
    return CPU_Rep0.has_RDTSCP();
}

const unsigned int uX_callconv has_3DNOWEXT(void)
{
    return CPU_Rep0.has_3DNOWEXT();
}

const unsigned int uX_callconv has_3DNOW(void)
{
    return CPU_Rep0.has_3DNOW();
}

/* %eax=07H, %ebx, %ecx */
const unsigned int uX_callconv has_AVX512_GFNI(void)
{
    return CPU_Rep0.has_AVX512_GFNI();
}

const unsigned int uX_callconv has_AVX512_GFNI_VL(void)
{
    return CPU_Rep0.has_AVX512_GFNI_VL();
}

const unsigned int uX_callconv has_AVX512_VAES(void)
{
    return CPU_Rep0.has_AVX512_VAES();
}

const unsigned int uX_callconv has_AVX512_VAES_VL(void)
{
    return CPU_Rep0.has_AVX512_VAES_VL();
}

const unsigned int uX_callconv has_AVX512_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX512_VPCLMULQDQ();
}

const unsigned int uX_callconv has_AVX512_VPCLMULQDQ_VL(void)
{
    return CPU_Rep0.has_AVX512_VPCLMULQDQ_VL();
}

const unsigned int uX_callconv has_AVX512_IFMA_VL(void)
{
    return CPU_Rep0.has_AVX512_IFMA_VL();
}

const unsigned int uX_callconv has_AVX512_VBMI_VL(void)
{
    return CPU_Rep0.has_AVX512_VBMI_VL();
}

const unsigned int uX_callconv has_AVX512_VBMI2_VL(void)
{
    return CPU_Rep0.has_AVX512_VBMI2_VL();
}

const unsigned int uX_callconv has_AVX512_VNNI_VL(void)
{
    return CPU_Rep0.has_AVX512_VNNI_VL();
}

const unsigned int uX_callconv has_AVX512_BITALG_VL(void)
{
    return CPU_Rep0.has_AVX512_BITALG_VL();
}

const unsigned int uX_callconv has_AVX512_VPOPCNTDQ_VL(void)
{
    return CPU_Rep0.has_AVX512_VPOPCNTDQ_VL();
}

const unsigned int uX_callconv has_AVX512BW_GFNI(void)
{
    return CPU_Rep0.has_AVX512BW_GFNI();
}

const unsigned int uX_callconv has_AVX512BW_GFNI_VL(void)
{
    return CPU_Rep0.has_AVX512BW_GFNI_VL();
}

const unsigned int uX_callconv has_AVX512BW_VAES(void)
{
    return CPU_Rep0.has_AVX512BW_VAES();
}

const unsigned int uX_callconv has_AVX512BW_VAES_VL(void)
{
    return CPU_Rep0.has_AVX512BW_VAES_VL();
}

const unsigned int uX_callconv has_AVX512BW_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX512BW_VPCLMULQDQ();
}

const unsigned int uX_callconv has_AVX512BW_VPCLMULQDQ_VL(void)
{
    return CPU_Rep0.has_AVX512BW_VPCLMULQDQ_VL();
}

const unsigned int uX_callconv has_AVX512BW_VL(void)
{
    return CPU_Rep0.has_AVX512BW_VL();
}

const unsigned int uX_callconv has_AVX512DQ_GFNI(void)
{
    return CPU_Rep0.has_AVX512DQ_GFNI();
}

const unsigned int uX_callconv has_AVX512DQ_GFNI_VL(void)
{
    return CPU_Rep0.has_AVX512DQ_GFNI_VL();
}

const unsigned int uX_callconv has_AVX512DQ_VAES(void)
{
    return CPU_Rep0.has_AVX512DQ_VAES();
}

const unsigned int uX_callconv has_AVX512DQ_VAES_VL(void)
{
    return CPU_Rep0.has_AVX512DQ_VAES_VL();
}

const unsigned int uX_callconv has_AVX512DQ_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX512DQ_VPCLMULQDQ();
}

const unsigned int uX_callconv has_AVX512DQ_VPCLMULQDQ_VL(void)
{
    return CPU_Rep0.has_AVX512DQ_VPCLMULQDQ_VL();
}

const unsigned int uX_callconv has_AVX512DQ_VL(void)
{
    return CPU_Rep0.has_AVX512DQ_VL();
}

const unsigned int uX_callconv has_AVX512CD_VL(void)
{
    return CPU_Rep0.has_AVX512CD_VL();
}

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
const unsigned int uX_callconv has_SSE_AES(void)
{
    return CPU_Rep0.has_SSE_AES();
}

const unsigned int uX_callconv has_SSE_GFNI(void)
{
    return CPU_Rep0.has_SSE_GFNI();
}

const unsigned int uX_callconv has_SSE_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSE_PCLMULQDQ();
}

const unsigned int uX_callconv has_SSE2_AES(void)
{
    return CPU_Rep0.has_SSE2_AES();
}

const unsigned int uX_callconv has_SSE2_GFNI(void)
{
    return CPU_Rep0.has_SSE2_GFNI();
}

const unsigned int uX_callconv has_SSE2_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSE2_PCLMULQDQ();
}

const unsigned int uX_callconv has_SSE3_AES(void)
{
    return CPU_Rep0.has_SSE3_AES();
}

const unsigned int uX_callconv has_SSE3_GFNI(void)
{
    return CPU_Rep0.has_SSE3_GFNI();
}

const unsigned int uX_callconv has_SSE3_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSE3_PCLMULQDQ();
}

const unsigned int uX_callconv has_SSSE3_AES(void)
{
    return CPU_Rep0.has_SSSE3_AES();
}

const unsigned int uX_callconv has_SSSE3_GFNI(void)
{
    return CPU_Rep0.has_SSSE3_GFNI();
}

const unsigned int uX_callconv has_SSSE3_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSSE3_PCLMULQDQ();
}

const unsigned int uX_callconv has_SSE41_AES(void)
{
    return CPU_Rep0.has_SSE41_AES();
}

const unsigned int uX_callconv has_SSE41_GFNI(void)
{
    return CPU_Rep0.has_SSE41_GFNI();
}

const unsigned int uX_callconv has_SSE41_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSE41_PCLMULQDQ();
}

const unsigned int uX_callconv has_SSE42_AES(void)
{
    return CPU_Rep0.has_SSE42_AES();
}

const unsigned int uX_callconv has_SSE42_GFNI(void)
{
    return CPU_Rep0.has_SSE42_GFNI();
}

const unsigned int uX_callconv has_SSE42_PCLMULQDQ(void)
{
    return CPU_Rep0.has_SSE42_PCLMULQDQ();
}

const unsigned int uX_callconv has_AVX_AES(void)
{
    return CPU_Rep0.has_AVX_AES();
}

const unsigned int uX_callconv has_AVX_GFNI(void)
{
    return CPU_Rep0.has_AVX_GFNI();
}

const unsigned int uX_callconv has_AVX_PCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX_PCLMULQDQ();
}

const unsigned int uX_callconv has_AVX_VAES(void)
{
    return CPU_Rep0.has_AVX_VAES();
}

const unsigned int uX_callconv has_AVX_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX_VPCLMULQDQ();
}

const unsigned int uX_callconv has_AVX2_AES(void)
{
    return CPU_Rep0.has_AVX2_AES();
}

const unsigned int uX_callconv has_AVX2_GFNI(void)
{
    return CPU_Rep0.has_AVX2_GFNI();
}

const unsigned int uX_callconv has_AVX2_PCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX2_PCLMULQDQ();
}

const unsigned int uX_callconv has_AVX2_VAES(void)
{
    return CPU_Rep0.has_AVX2_VAES();
}

const unsigned int uX_callconv has_AVX2_VPCLMULQDQ(void)
{
    return CPU_Rep0.has_AVX2_VPCLMULQDQ();
}

const unsigned int uX_callconv has_enabled_XMM(void)
{
    return CPU_Rep0.has_enabled_XMM();
}

const unsigned int uX_callconv has_enabled_YMM(void)
{
    return CPU_Rep0.has_enabled_YMM();
}

const unsigned int uX_callconv has_enabled_ZMM(void)
{
    return CPU_Rep0.has_enabled_ZMM();
}

const unsigned int uX_callconv CPUFeatures_is_inited(void)
{
    return CPU_Rep0.is_inited();
}

uX_PACK_SIZE_T

static const _internal::CPUFeatures CPU_Rep1(1);

uX_PACK_PTR

void uX_callconv CpuType(int* vendor, int* family, int* model)
{
    CPU_Rep1.CpuType(vendor, family, model);
}

char* uX_callconv ProcessorName(void)
{
    return CPU_Rep1.ProcessorName();
}

uX_PACK_SIZE_T

size_t uX_callconv DataCacheSize(int level)
{
    return CPU_Rep1.DataCacheSize(level);
}

/*
const char* wet = uX_Stringer(_uX_MM_BLEND_EPI16_IM(a, b, 255));
*/

uX_PACK_POP
uX_EXTERNC_END
namespace_CPU_end
namespace_uX_end
