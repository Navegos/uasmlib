#include "uXmx86Intrin.h"
#include "uXmx86Cpu.h"

#include "uXmTypes.h"

uXm_EXTERNC_BEGIN

static const uXmCPUFeatures CPU_Rep0(0);

uXm_PACK_PUSH4

const int uXm_CALLCONV uXm_intrinset(void)
{
	return uXmCPUFeatures::intrinset();
}

/* %eax=00H, %ecx */
const unsigned __int8 uXm_CALLCONV uXm_is_Intel(void)
{
	return uXmCPUFeatures::is_Intel();
}

const unsigned __int8 uXm_CALLCONV uXm_is_AMD(void)
{
	return uXmCPUFeatures::is_AMD();
}

/* %eax=01H, %ecx */
const unsigned __int8 uXm_CALLCONV uXm_has_SSE3(void)
{
	return uXmCPUFeatures::has_SSE3();
}

const unsigned __int8 uXm_CALLCONV uXm_has_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_PCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_MONITOR(void)
{
	return uXmCPUFeatures::has_MONITOR();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSSE3(void)
{
	return uXmCPUFeatures::has_SSSE3();
}

const unsigned __int8 uXm_CALLCONV uXm_has_FMA(void)
{
	return uXmCPUFeatures::has_FMA();
}

const unsigned __int8 uXm_CALLCONV uXm_has_CMPXCHG16B(void)
{
	return uXmCPUFeatures::has_CMPXCHG16B();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE41(void)
{
	return uXmCPUFeatures::has_SSE41();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE42(void)
{
	return uXmCPUFeatures::has_SSE42();
}

const unsigned __int8 uXm_CALLCONV uXm_has_MOVBE(void)
{
	return uXmCPUFeatures::has_MOVBE();
}

const unsigned __int8 uXm_CALLCONV uXm_has_POPCNT(void)
{
	return uXmCPUFeatures::has_POPCNT();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AES(void)
{
	return uXmCPUFeatures::has_AES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_XSAVE(void)
{
	return uXmCPUFeatures::has_XSAVE();
}

const unsigned __int8 uXm_CALLCONV uXm_has_OSXSAVE(void)
{
	return uXmCPUFeatures::has_OSXSAVE();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX(void)
{
	return uXmCPUFeatures::has_AVX();
}

const unsigned __int8 uXm_CALLCONV uXm_has_F16C(void)
{
	return uXmCPUFeatures::has_F16C();
}

const unsigned __int8 uXm_CALLCONV uXm_has_RDRAND(void)
{
	return uXmCPUFeatures::has_RDRAND();
}

/* %eax=01H, %edx */
const unsigned __int8 uXm_CALLCONV uXm_has_FPU(void)
{
	return uXmCPUFeatures::has_FPU();
}

const unsigned __int8 uXm_CALLCONV uXm_has_TSC(void)
{
	return uXmCPUFeatures::has_TSC();
}

const unsigned __int8 uXm_CALLCONV uXm_has_MSR(void)
{
	return uXmCPUFeatures::has_MSR();
}

const unsigned __int8 uXm_CALLCONV uXm_has_CMPXCHG8B(void)
{
	return uXmCPUFeatures::has_CMPXCHG8B();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SEP(void)
{
	return uXmCPUFeatures::has_SEP();
}

const unsigned __int8 uXm_CALLCONV uXm_has_CMOV(void)
{
	return uXmCPUFeatures::has_CMOV();
}

const unsigned __int8 uXm_CALLCONV uXm_has_CLFSH(void)
{
	return uXmCPUFeatures::has_CLFSH();
}

const unsigned __int8 uXm_CALLCONV uXm_has_MMX(void)
{
	return uXmCPUFeatures::has_MMX();
}

const unsigned __int8 uXm_CALLCONV uXm_has_FXSR(void)
{
	return uXmCPUFeatures::has_FXSR();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE(void)
{
	return uXmCPUFeatures::has_SSE();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE2(void)
{
	return uXmCPUFeatures::has_SSE2();
}

/* %eax=07H, %ebx */
const unsigned __int8 uXm_CALLCONV uXm_has_FSGSBASE(void)
{
	return uXmCPUFeatures::has_FSGSBASE();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SGX(void)
{
	return uXmCPUFeatures::has_SGX();
}

const unsigned __int8 uXm_CALLCONV uXm_has_BMI1(void)
{
	return uXmCPUFeatures::has_BMI1();
}

const unsigned __int8 uXm_CALLCONV uXm_has_HLE(void)
{
	return uXmCPUFeatures::has_HLE();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX2(void)
{
	return uXmCPUFeatures::has_AVX2();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SMEP(void)
{
	return uXmCPUFeatures::has_SMEP();
}

const unsigned __int8 uXm_CALLCONV uXm_has_BMI2(void)
{
	return uXmCPUFeatures::has_BMI2();
}

const unsigned __int8 uXm_CALLCONV uXm_has_ERMS(void)
{
	return uXmCPUFeatures::has_ERMS();
}

const unsigned __int8 uXm_CALLCONV uXm_has_INVPCID(void)
{
	return uXmCPUFeatures::has_INVPCID();
}

const unsigned __int8 uXm_CALLCONV uXm_has_RTM(void)
{
	return uXmCPUFeatures::has_RTM();
}

const unsigned __int8 uXm_CALLCONV uXm_has_MPX(void)
{
	return uXmCPUFeatures::has_MPX();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512F(void)
{
	return uXmCPUFeatures::has_AVX512F();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512DQ(void)
{
	return uXmCPUFeatures::has_AVX512DQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_RDSEED(void)
{
	return uXmCPUFeatures::has_RDSEED();
}

const unsigned __int8 uXm_CALLCONV uXm_has_ADX(void)
{
	return uXmCPUFeatures::has_ADX();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SMAP(void)
{
	return uXmCPUFeatures::has_SMAP();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_IFMA(void)
{
	return uXmCPUFeatures::has_AVX512_IFMA();
}

const unsigned __int8 uXm_CALLCONV uXm_has_CLFLUSHOPT(void)
{
	return uXmCPUFeatures::has_CLFLUSHOPT();
}

const unsigned __int8 uXm_CALLCONV uXm_has_CLWB(void)
{
	return uXmCPUFeatures::has_CLWB();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512PF(void)
{
	return uXmCPUFeatures::has_AVX512PF();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512ER(void)
{
	return uXmCPUFeatures::has_AVX512ER();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512CD(void)
{
	return uXmCPUFeatures::has_AVX512CD();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SHA(void)
{
	return uXmCPUFeatures::has_SHA();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512BW(void)
{
	return uXmCPUFeatures::has_AVX512BW();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512VL(void)
{
	return uXmCPUFeatures::has_AVX512VL();
}

/* %eax=07H, %ecx */
const unsigned __int8 uXm_CALLCONV uXm_has_PREFETCHWT1(void)
{
	return uXmCPUFeatures::has_PREFETCHWT1();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VBMI(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_UMIP(void)
{
	return uXmCPUFeatures::has_UMIP();
}

const unsigned __int8 uXm_CALLCONV uXm_has_PKU(void)
{
	return uXmCPUFeatures::has_PKU();
}

const unsigned __int8 uXm_CALLCONV uXm_has_OSPKE(void)
{
	return uXmCPUFeatures::has_OSPKE();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VBMI2(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI2();
}

const unsigned __int8 uXm_CALLCONV uXm_has_GFNI(void)
{
	return uXmCPUFeatures::has_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_VAES(void)
{
	return uXmCPUFeatures::has_VAES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_VPCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VNNI(void)
{
	return uXmCPUFeatures::has_AVX512_VNNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_BITALG(void)
{
	return uXmCPUFeatures::has_AVX512_BITALG();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VPOPCNTDQ(void)
{
	return uXmCPUFeatures::has_AVX512_VPOPCNTDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_RDPID(void)
{
	return uXmCPUFeatures::has_RDPID();
}

/* %eax=07H, %edx */
const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_4VNNIW(void)
{
	return uXmCPUFeatures::has_AVX512_4VNNIW();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_4FMAPS(void)
{
	return uXmCPUFeatures::has_AVX512_4FMAPS();
}

/* %eax=80000001H, %ecx */
const unsigned __int8 uXm_CALLCONV uXm_has_LAHF(void)
{
	return uXmCPUFeatures::has_LAHF();
}

const unsigned __int8 uXm_CALLCONV uXm_has_LZCNT(void)
{
	return uXmCPUFeatures::has_LZCNT();
}

const unsigned __int8 uXm_CALLCONV uXm_has_ABM(void)
{
	return uXmCPUFeatures::has_ABM();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE4a(void)
{
	return uXmCPUFeatures::has_SSE4a();
}

const unsigned __int8 uXm_CALLCONV uXm_has_PREFETCHW(void)
{
	return uXmCPUFeatures::has_PREFETCHW();
}

const unsigned __int8 uXm_CALLCONV uXm_has_XOP(void)
{
	return uXmCPUFeatures::has_XOP();
}

const unsigned __int8 uXm_CALLCONV uXm_has_LWP(void)
{
	return uXmCPUFeatures::has_LWP();
}

const unsigned __int8 uXm_CALLCONV uXm_has_FMA4(void)
{
	return uXmCPUFeatures::has_FMA4();
}

const unsigned __int8 uXm_CALLCONV uXm_has_TBM(void)
{
	return uXmCPUFeatures::has_TBM();
}

const unsigned __int8 uXm_CALLCONV uXm_has_MWAITX(void)
{
	return uXmCPUFeatures::has_MWAITX();
}

/* %eax=80000001H, %edx */
const unsigned __int8 uXm_CALLCONV uXm_has_SYSCALL(void)
{
	return uXmCPUFeatures::has_SYSCALL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_MMXEXT(void)
{
	return uXmCPUFeatures::has_MMXEXT();
}

const unsigned __int8 uXm_CALLCONV uXm_has_RDTSCP(void)
{
	return uXmCPUFeatures::has_RDTSCP();
}

const unsigned __int8 uXm_CALLCONV uXm_has_3DNOWEXT(void)
{
	return uXmCPUFeatures::has_3DNOWEXT();
}

const unsigned __int8 uXm_CALLCONV uXm_has_3DNOW(void)
{
	return uXmCPUFeatures::has_3DNOW();
}

/* %eax=07H, %ebx, %ecx */
const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_GFNI(void)
{
	return uXmCPUFeatures::has_AVX512_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_GFNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512_GFNI_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VAES(void)
{
	return uXmCPUFeatures::has_AVX512_VAES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VAES_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VAES_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX512_VPCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VPCLMULQDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VPCLMULQDQ_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_IFMA_VL(void)
{
	return uXmCPUFeatures::has_AVX512_IFMA_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VBMI_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VBMI2_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI2_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VNNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VNNI_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_BITALG_VL(void)
{
	return uXmCPUFeatures::has_AVX512_BITALG_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512_VPOPCNTDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VPOPCNTDQ_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512BW_GFNI(void)
{
	return uXmCPUFeatures::has_AVX512BW_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512BW_GFNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_GFNI_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512BW_VAES(void)
{
	return uXmCPUFeatures::has_AVX512BW_VAES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512BW_VAES_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_VAES_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512BW_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512BW_VPCLMULQDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512BW_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512DQ_GFNI(void)
{
	return uXmCPUFeatures::has_AVX512DQ_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512DQ_GFNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_GFNI_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512DQ_VAES(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VAES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512DQ_VAES_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VAES_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512DQ_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512DQ_VPCLMULQDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512DQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VL();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX512CD_VL(void)
{
	return uXmCPUFeatures::has_AVX512CD_VL();
}

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
const unsigned __int8 uXm_CALLCONV uXm_has_SSE_AES(void)
{
	return uXmCPUFeatures::has_SSE_AES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE_GFNI(void)
{
	return uXmCPUFeatures::has_SSE_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE_PCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE2_AES(void)
{
	return uXmCPUFeatures::has_SSE2_AES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE2_GFNI(void)
{
	return uXmCPUFeatures::has_SSE2_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE2_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE2_PCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE3_AES(void)
{
	return uXmCPUFeatures::has_SSE3_AES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE3_GFNI(void)
{
	return uXmCPUFeatures::has_SSE3_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE3_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE3_PCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSSE3_AES(void)
{
	return uXmCPUFeatures::has_SSSE3_AES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSSE3_GFNI(void)
{
	return uXmCPUFeatures::has_SSSE3_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSSE3_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSSE3_PCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE41_AES(void)
{
	return uXmCPUFeatures::has_SSE41_AES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE41_GFNI(void)
{
	return uXmCPUFeatures::has_SSE41_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE41_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE41_PCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE42_AES(void)
{
	return uXmCPUFeatures::has_SSE42_AES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE42_GFNI(void)
{
	return uXmCPUFeatures::has_SSE42_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_SSE42_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE42_PCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX_AES(void)
{
	return uXmCPUFeatures::has_AVX_AES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX_GFNI(void)
{
	return uXmCPUFeatures::has_AVX_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX_PCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX_VAES(void)
{
	return uXmCPUFeatures::has_AVX_VAES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX_VPCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX2_AES(void)
{
	return uXmCPUFeatures::has_AVX2_AES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX2_GFNI(void)
{
	return uXmCPUFeatures::has_AVX2_GFNI();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX2_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX2_PCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX2_VAES(void)
{
	return uXmCPUFeatures::has_AVX2_VAES();
}

const unsigned __int8 uXm_CALLCONV uXm_has_AVX2_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX2_VPCLMULQDQ();
}

const unsigned __int8 uXm_CALLCONV uXm_has_enabled_XMM(void)
{
	return uXmCPUFeatures::has_enabled_XMM();
}

const unsigned __int8 uXm_CALLCONV uXm_has_enabled_YMM(void)
{
	return uXmCPUFeatures::has_enabled_YMM();
}

const unsigned __int8 uXm_CALLCONV uXm_has_enabled_ZMM(void)
{
	return CPU_Rep0.has_enabled_ZMM();
}

const unsigned __int8 uXm_CALLCONV uXm_CPUFeatures_Is_Inited(void)
{
	return CPU_Rep0.Is_Inited();
}

uXm_PACK_POP

static const uXmCPUFeatures CPU_Rep1(1);

uXm_PACK_PUSH_POINTER

void uXm_CALLCONV uXm_CpuType(int* vendor, int* family, int* model)
{
	CPU_Rep1.CpuType(vendor, family, model);
}

char* uXm_CALLCONV uXm_ProcessorName(void)
{
	return CPU_Rep1.ProcessorName();
}

size_t uXm_CALLCONV uXm_DataCacheSize(int level)
{
	return CPU_Rep1.DataCacheSize(level);
}

/*
void uXm_cpuid(int abcd[4], int eax)
{
	uXm_cpuidex(abcd, eax, 0);
}*/

uXm_PACK_POP

uXm_EXTERNC_END