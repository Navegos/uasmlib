
#include "uXx86Cpu.h"

namespace_uX
namespace_internal
uX_EXTERNC_BEGIN
uX_PACK_PUSH_SIZE_T

CPUFeatures::CPUFeatures(int infolevel)
{
    _uX_CPUFeatures_init(infolevel);
}

CPUFeatures::~CPUFeatures(void)
{
    _uX_CPUFeatures_destroy();
}

uX_PACK_4

const int uX_callconv CPUFeatures::intrinset(void)
{
    return _uX_CPUFeatures_intrinset();
}

/* %eax=00H, %ecx */
const unsigned int uX_callconv CPUFeatures::is_Intel(void)
{   
    return _uX_CPUFeatures_is_Intel();
}

const unsigned int uX_callconv CPUFeatures::is_AMD(void)
{
    return _uX_CPUFeatures_is_AMD();
}

/* %eax=01H, %ecx */
const unsigned int uX_callconv CPUFeatures::has_SSE3(void)
{
    return _uX_CPUFeatures_has_SSE3();
}

const unsigned int uX_callconv CPUFeatures::has_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_PCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_MONITOR(void)
{
    return _uX_CPUFeatures_has_MONITOR();
}

const unsigned int uX_callconv CPUFeatures::has_SSSE3(void)
{
    return _uX_CPUFeatures_has_SSSE3();
}

const unsigned int uX_callconv CPUFeatures::has_FMA(void)
{
    return _uX_CPUFeatures_has_FMA();
}

const unsigned int uX_callconv CPUFeatures::has_CMPXCHG16B(void)
{
    return _uX_CPUFeatures_has_CMPXCHG16B();
}

const unsigned int uX_callconv CPUFeatures::has_SSE41(void)
{
    return _uX_CPUFeatures_has_SSE41();
}

const unsigned int uX_callconv CPUFeatures::has_SSE42(void)
{
    return _uX_CPUFeatures_has_SSE42();
}

const unsigned int uX_callconv CPUFeatures::has_MOVBE(void)
{
    return _uX_CPUFeatures_has_MOVBE();
}

const unsigned int uX_callconv CPUFeatures::has_POPCNT(void)
{
    return _uX_CPUFeatures_has_POPCNT();
}

const unsigned int uX_callconv CPUFeatures::has_AES(void)
{
    return _uX_CPUFeatures_has_AES();
}

const unsigned int uX_callconv CPUFeatures::has_XSAVE(void)
{
    return _uX_CPUFeatures_has_XSAVE();
}

const unsigned int uX_callconv CPUFeatures::has_OSXSAVE(void)
{
    return _uX_CPUFeatures_has_OSXSAVE();
}

const unsigned int uX_callconv CPUFeatures::has_AVX(void)
{
    return _uX_CPUFeatures_has_AVX();
}

const unsigned int uX_callconv CPUFeatures::has_F16C(void)
{
    return _uX_CPUFeatures_has_F16C();
}

const unsigned int uX_callconv CPUFeatures::has_RDRAND(void)
{
    return _uX_CPUFeatures_has_RDRAND();
}

/* %eax=01H, %edx */
const unsigned int uX_callconv CPUFeatures::has_FPU(void)
{
    return _uX_CPUFeatures_has_FPU();
}

const unsigned int uX_callconv CPUFeatures::has_TSC(void)
{
    return _uX_CPUFeatures_has_TSC();
}

const unsigned int uX_callconv CPUFeatures::has_MSR(void)
{
    return _uX_CPUFeatures_has_MSR();
}

const unsigned int uX_callconv CPUFeatures::has_CMPXCHG8B(void)
{
    return _uX_CPUFeatures_has_CMPXCHG8B();
}

const unsigned int uX_callconv CPUFeatures::has_SEP(void)
{
    return _uX_CPUFeatures_has_SEP();
}

const unsigned int uX_callconv CPUFeatures::has_CMOV(void)
{
    return _uX_CPUFeatures_has_CMOV();
}

const unsigned int uX_callconv CPUFeatures::has_CLFSH(void)
{
    return _uX_CPUFeatures_has_CLFSH();
}

const unsigned int uX_callconv CPUFeatures::has_MMX(void)
{
    return _uX_CPUFeatures_has_MMX();
}

const unsigned int uX_callconv CPUFeatures::has_FXSR(void)
{
    return _uX_CPUFeatures_has_FXSR();
}

const unsigned int uX_callconv CPUFeatures::has_SSE(void)
{
    return _uX_CPUFeatures_has_SSE();
}

const unsigned int uX_callconv CPUFeatures::has_SSE2(void)
{
    return _uX_CPUFeatures_has_SSE2();
}

/* %eax=07H, %ebx */
const unsigned int uX_callconv CPUFeatures::has_FSGSBASE(void)
{
    return _uX_CPUFeatures_has_FSGSBASE();
}

const unsigned int uX_callconv CPUFeatures::has_SGX(void)
{
    return _uX_CPUFeatures_has_SGX();
}

const unsigned int uX_callconv CPUFeatures::has_BMI1(void)
{
    return _uX_CPUFeatures_has_BMI1();
}

const unsigned int uX_callconv CPUFeatures::has_HLE(void)
{
    return _uX_CPUFeatures_has_HLE();
}

const unsigned int uX_callconv CPUFeatures::has_AVX2(void)
{
    return _uX_CPUFeatures_has_AVX2();
}

const unsigned int uX_callconv CPUFeatures::has_SMEP(void)
{
    return _uX_CPUFeatures_has_SMEP();
}

const unsigned int uX_callconv CPUFeatures::has_BMI2(void)
{
    return _uX_CPUFeatures_has_BMI2();
}

const unsigned int uX_callconv CPUFeatures::has_ERMS(void)
{
    return _uX_CPUFeatures_has_ERMS();
}

const unsigned int uX_callconv CPUFeatures::has_INVPCID(void)
{
    return _uX_CPUFeatures_has_INVPCID();
}

const unsigned int uX_callconv CPUFeatures::has_RTM(void)
{
    return _uX_CPUFeatures_has_RTM();
}

const unsigned int uX_callconv CPUFeatures::has_MPX(void)
{
    return _uX_CPUFeatures_has_MPX();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512F(void)
{
    return _uX_CPUFeatures_has_AVX512F();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512DQ(void)
{
    return _uX_CPUFeatures_has_AVX512DQ();
}

const unsigned int uX_callconv CPUFeatures::has_RDSEED(void)
{
    return _uX_CPUFeatures_has_RDSEED();
}

const unsigned int uX_callconv CPUFeatures::has_ADX(void)
{
    return _uX_CPUFeatures_has_ADX();
}

const unsigned int uX_callconv CPUFeatures::has_SMAP(void)
{
    return _uX_CPUFeatures_has_SMAP();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_IFMA(void)
{
    return _uX_CPUFeatures_has_AVX512_IFMA();
}

const unsigned int uX_callconv CPUFeatures::has_CLFLUSHOPT(void)
{
    return _uX_CPUFeatures_has_CLFLUSHOPT();
}

const unsigned int uX_callconv CPUFeatures::has_CLWB(void)
{
    return _uX_CPUFeatures_has_CLWB();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512PF(void)
{
    return _uX_CPUFeatures_has_AVX512PF();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512ER(void)
{
    return _uX_CPUFeatures_has_AVX512ER();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512CD(void)
{
    return _uX_CPUFeatures_has_AVX512CD();
}

const unsigned int uX_callconv CPUFeatures::has_SHA(void)
{
    return _uX_CPUFeatures_has_SHA();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512BW(void)
{
    return _uX_CPUFeatures_has_AVX512BW();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512VL(void)
{
    return _uX_CPUFeatures_has_AVX512VL();
}

/* %eax=07H, %ecx */
const unsigned int uX_callconv CPUFeatures::has_PREFETCHWT1(void)
{
    return _uX_CPUFeatures_has_PREFETCHWT1();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VBMI(void)
{
    return _uX_CPUFeatures_has_AVX512_VBMI();
}

const unsigned int uX_callconv CPUFeatures::has_UMIP(void)
{
    return _uX_CPUFeatures_has_UMIP();
}

const unsigned int uX_callconv CPUFeatures::has_PKU(void)
{
    return _uX_CPUFeatures_has_PKU();
}

const unsigned int uX_callconv CPUFeatures::has_OSPKE(void)
{
    return _uX_CPUFeatures_has_OSPKE();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VBMI2(void)
{
    return _uX_CPUFeatures_has_AVX512_VBMI2();
}

const unsigned int uX_callconv CPUFeatures::has_GFNI(void)
{
    return _uX_CPUFeatures_has_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_VAES(void)
{
    return _uX_CPUFeatures_has_VAES();
}

const unsigned int uX_callconv CPUFeatures::has_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_VPCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VNNI(void)
{
    return _uX_CPUFeatures_has_AVX512_VNNI();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_BITALG(void)
{
    return _uX_CPUFeatures_has_AVX512_BITALG();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VPOPCNTDQ(void)
{
    return _uX_CPUFeatures_has_AVX512_VPOPCNTDQ();
}

const unsigned int uX_callconv CPUFeatures::has_RDPID(void)
{
    return _uX_CPUFeatures_has_RDPID();
}

/* %eax=07H, %edx */
const unsigned int uX_callconv CPUFeatures::has_AVX512_4VNNIW(void)
{
    return _uX_CPUFeatures_has_AVX512_4VNNIW();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_4FMAPS(void)
{
    return _uX_CPUFeatures_has_AVX512_4FMAPS();
}

/* %eax=80000001H, %ecx */
const unsigned int uX_callconv CPUFeatures::has_LAHF(void)
{
    return _uX_CPUFeatures_has_LAHF();
}

const unsigned int uX_callconv CPUFeatures::has_LZCNT(void)
{
    return _uX_CPUFeatures_has_LZCNT();
}

const unsigned int uX_callconv CPUFeatures::has_ABM(void)
{
    return _uX_CPUFeatures_has_ABM();
}

const unsigned int uX_callconv CPUFeatures::has_SSE4a(void)
{
    return _uX_CPUFeatures_has_SSE4a();
}

const unsigned int uX_callconv CPUFeatures::has_PREFETCHW(void)
{
    return _uX_CPUFeatures_has_PREFETCHW();
}

const unsigned int uX_callconv CPUFeatures::has_XOP(void)
{
    return _uX_CPUFeatures_has_XOP();
}

const unsigned int uX_callconv CPUFeatures::has_LWP(void)
{
    return _uX_CPUFeatures_has_LWP();
}

const unsigned int uX_callconv CPUFeatures::has_FMA4(void)
{
    return _uX_CPUFeatures_has_FMA4();
}

const unsigned int uX_callconv CPUFeatures::has_TBM(void)
{
    return _uX_CPUFeatures_has_TBM();
}

const unsigned int uX_callconv CPUFeatures::has_MWAITX(void)
{
    return _uX_CPUFeatures_has_MWAITX();
}

/* %eax=80000001H, %edx */
const unsigned int uX_callconv CPUFeatures::has_SYSCALL(void)
{
    return _uX_CPUFeatures_has_SYSCALL();
}

const unsigned int uX_callconv CPUFeatures::has_MMXEXT(void)
{
    return _uX_CPUFeatures_has_MMXEXT();
}

const unsigned int uX_callconv CPUFeatures::has_RDTSCP(void)
{
    return _uX_CPUFeatures_has_RDTSCP();
}

const unsigned int uX_callconv CPUFeatures::has_3DNOWEXT(void)
{
    return _uX_CPUFeatures_has_3DNOWEXT();
}

const unsigned int uX_callconv CPUFeatures::has_3DNOW(void)
{
    return _uX_CPUFeatures_has_3DNOW();
}

/* %eax=07H, %ebx, %ecx */
const unsigned int uX_callconv CPUFeatures::has_AVX512_GFNI(void)
{
    return _uX_CPUFeatures_has_AVX512_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_GFNI_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_GFNI_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VAES(void)
{
    return _uX_CPUFeatures_has_AVX512_VAES();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VAES_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VAES_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX512_VPCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VPCLMULQDQ_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VPCLMULQDQ_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_IFMA_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_IFMA_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VBMI_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VBMI_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VBMI2_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VBMI2_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VNNI_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VNNI_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_BITALG_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_BITALG_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512_VPOPCNTDQ_VL(void)
{
    return _uX_CPUFeatures_has_AVX512_VPOPCNTDQ_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512BW_GFNI(void)
{
    return _uX_CPUFeatures_has_AVX512BW_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512BW_GFNI_VL(void)
{
    return _uX_CPUFeatures_has_AVX512BW_GFNI_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512BW_VAES(void)
{
    return _uX_CPUFeatures_has_AVX512BW_VAES();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512BW_VAES_VL(void)
{
    return _uX_CPUFeatures_has_AVX512BW_VAES_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512BW_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512BW_VPCLMULQDQ_VL(void)
{
    return _uX_CPUFeatures_has_AVX512BW_VPCLMULQDQ_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512BW_VL(void)
{
    return _uX_CPUFeatures_has_AVX512BW_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512DQ_GFNI(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512DQ_GFNI_VL(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_GFNI_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512DQ_VAES(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_VAES();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512DQ_VAES_VL(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_VAES_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512DQ_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512DQ_VPCLMULQDQ_VL(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_VPCLMULQDQ_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512DQ_VL(void)
{
    return _uX_CPUFeatures_has_AVX512DQ_VL();
}

const unsigned int uX_callconv CPUFeatures::has_AVX512CD_VL(void)
{
    return _uX_CPUFeatures_has_AVX512CD_VL();
}

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
const unsigned int uX_callconv CPUFeatures::has_SSE_AES(void)
{
    return _uX_CPUFeatures_has_SSE_AES();
}

const unsigned int uX_callconv CPUFeatures::has_SSE_GFNI(void)
{
    return _uX_CPUFeatures_has_SSE_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_SSE_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSE_PCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_SSE2_AES(void)
{
    return _uX_CPUFeatures_has_SSE2_AES();
}

const unsigned int uX_callconv CPUFeatures::has_SSE2_GFNI(void)
{
    return _uX_CPUFeatures_has_SSE2_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_SSE2_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSE2_PCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_SSE3_AES(void)
{
    return _uX_CPUFeatures_has_SSE3_AES();
}

const unsigned int uX_callconv CPUFeatures::has_SSE3_GFNI(void)
{
    return _uX_CPUFeatures_has_SSE3_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_SSE3_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSE3_PCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_SSSE3_AES(void)
{
    return _uX_CPUFeatures_has_SSSE3_AES();
}

const unsigned int uX_callconv CPUFeatures::has_SSSE3_GFNI(void)
{
    return _uX_CPUFeatures_has_SSSE3_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_SSSE3_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSSE3_PCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_SSE41_AES(void)
{
    return _uX_CPUFeatures_has_SSE41_AES();
}

const unsigned int uX_callconv CPUFeatures::has_SSE41_GFNI(void)
{
    return _uX_CPUFeatures_has_SSE41_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_SSE41_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSE41_PCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_SSE42_AES(void)
{
    return _uX_CPUFeatures_has_SSE42_AES();
}

const unsigned int uX_callconv CPUFeatures::has_SSE42_GFNI(void)
{
    return _uX_CPUFeatures_has_SSE42_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_SSE42_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_SSE42_PCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_AVX_AES(void)
{
    return _uX_CPUFeatures_has_AVX_AES();
}

const unsigned int uX_callconv CPUFeatures::has_AVX_GFNI(void)
{
    return _uX_CPUFeatures_has_AVX_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_AVX_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX_PCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_AVX_VAES(void)
{
    return _uX_CPUFeatures_has_AVX_VAES();
}

const unsigned int uX_callconv CPUFeatures::has_AVX_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX_VPCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_AVX2_AES(void)
{
    return _uX_CPUFeatures_has_AVX2_AES();
}

const unsigned int uX_callconv CPUFeatures::has_AVX2_GFNI(void)
{
    return _uX_CPUFeatures_has_AVX2_GFNI();
}

const unsigned int uX_callconv CPUFeatures::has_AVX2_PCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX2_PCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_AVX2_VAES(void)
{
    return _uX_CPUFeatures_has_AVX2_VAES();
}

const unsigned int uX_callconv CPUFeatures::has_AVX2_VPCLMULQDQ(void)
{
    return _uX_CPUFeatures_has_AVX2_VPCLMULQDQ();
}

const unsigned int uX_callconv CPUFeatures::has_enabled_XMM(void)
{
    return _uX_CPUFeatures_has_enabled_XMM();
}

const unsigned int uX_callconv CPUFeatures::has_enabled_YMM(void)
{
    return _uX_CPUFeatures_has_enabled_YMM();
}

const unsigned int uX_callconv CPUFeatures::has_enabled_ZMM(void)
{
    return _uX_CPUFeatures_has_enabled_ZMM();
}

const unsigned int uX_callconv CPUFeatures::is_inited(void)
{
    return _uX_CPUFeatures_is_inited();
}

uX_PACK_PTR

void uX_callconv CPUFeatures::CpuType(int* vendor, int* family, int* model)
{
    _uX_CPUFeatures_CpuType(vendor, family, model);
}

char* uX_callconv CPUFeatures::ProcessorName(void)
{
    return _uX_CPUFeatures_ProcessorName();
}

uX_PACK_SIZE_T

size_t uX_callconv CPUFeatures::DataCacheSize(int level)
{
    return _uX_CPUFeatures_DataCacheSize(level);
}

uX_PACK_POP
uX_EXTERNC_END
namespace_internal_end
namespace_uX_end