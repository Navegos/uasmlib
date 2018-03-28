#include "uXmx86Intrin.h"
#include "uXmx86Cpu.h"

#include "uXmTypes.h"

uXm_EXTERNC_BEGIN

static const uXmCPUFeatures CPU_Rep0(0);

uXm_PACK_PUSH4

int uXm_CALLCONV uXm_intrinset(void)
{
	return uXmCPUFeatures::intrinset();
}

/* %eax=00H, %ecx */
int uXm_CALLCONV uXm_is_Intel(void)
{
	return uXmCPUFeatures::is_Intel();
}

int uXm_CALLCONV uXm_is_AMD(void)
{
	return uXmCPUFeatures::is_AMD();
}

/* %eax=01H, %ecx */
int uXm_CALLCONV uXm_has_SSE3(void)
{
	return uXmCPUFeatures::has_SSE3();
}

int uXm_CALLCONV uXm_has_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_PCLMULQDQ();
}

int uXm_CALLCONV uXm_has_MONITOR(void)
{
	return uXmCPUFeatures::has_MONITOR();
}

int uXm_CALLCONV uXm_has_SSSE3(void)
{
	return uXmCPUFeatures::has_SSSE3();
}

int uXm_CALLCONV uXm_has_FMA(void)
{
	return uXmCPUFeatures::has_FMA();
}

int uXm_CALLCONV uXm_has_CMPXCHG16B(void)
{
	return uXmCPUFeatures::has_CMPXCHG16B();
}

int uXm_CALLCONV uXm_has_SSE41(void)
{
	return uXmCPUFeatures::has_SSE41();
}

int uXm_CALLCONV uXm_has_SSE42(void)
{
	return uXmCPUFeatures::has_SSE42();
}

int uXm_CALLCONV uXm_has_MOVBE(void)
{
	return uXmCPUFeatures::has_MOVBE();
}

int uXm_CALLCONV uXm_has_POPCNT(void)
{
	return uXmCPUFeatures::has_POPCNT();
}

int uXm_CALLCONV uXm_has_AES(void)
{
	return uXmCPUFeatures::has_AES();
}

int uXm_CALLCONV uXm_has_XSAVE(void)
{
	return uXmCPUFeatures::has_XSAVE();
}

int uXm_CALLCONV uXm_has_OSXSAVE(void)
{
	return uXmCPUFeatures::has_OSXSAVE();
}

int uXm_CALLCONV uXm_has_AVX(void)
{
	return uXmCPUFeatures::has_AVX();
}

int uXm_CALLCONV uXm_has_F16C(void)
{
	return uXmCPUFeatures::has_F16C();
}

int uXm_CALLCONV uXm_has_RDRAND(void)
{
	return uXmCPUFeatures::has_RDRAND();
}

/* %eax=01H, %edx */
int uXm_CALLCONV uXm_has_FPU(void)
{
	return uXmCPUFeatures::has_FPU();
}

int uXm_CALLCONV uXm_has_TSC(void)
{
	return uXmCPUFeatures::has_TSC();
}

int uXm_CALLCONV uXm_has_MSR(void)
{
	return uXmCPUFeatures::has_MSR();
}

int uXm_CALLCONV uXm_has_CMPXCHG8B(void)
{
	return uXmCPUFeatures::has_CMPXCHG8B();
}

int uXm_CALLCONV uXm_has_SEP(void)
{
	return uXmCPUFeatures::has_SEP();
}

int uXm_CALLCONV uXm_has_CMOV(void)
{
	return uXmCPUFeatures::has_CMOV();
}

int uXm_CALLCONV uXm_has_CLFSH(void)
{
	return uXmCPUFeatures::has_CLFSH();
}

int uXm_CALLCONV uXm_has_MMX(void)
{
	return uXmCPUFeatures::has_MMX();
}

int uXm_CALLCONV uXm_has_FXSR(void)
{
	return uXmCPUFeatures::has_FXSR();
}

int uXm_CALLCONV uXm_has_SSE(void)
{
	return uXmCPUFeatures::has_SSE();
}

int uXm_CALLCONV uXm_has_SSE2(void)
{
	return uXmCPUFeatures::has_SSE2();
}

/* %eax=07H, %ebx */
int uXm_CALLCONV uXm_has_FSGSBASE(void)
{
	return uXmCPUFeatures::has_FSGSBASE();
}

int uXm_CALLCONV uXm_has_SGX(void)
{
	return uXmCPUFeatures::has_SGX();
}

int uXm_CALLCONV uXm_has_BMI1(void)
{
	return uXmCPUFeatures::has_BMI1();
}

int uXm_CALLCONV uXm_has_HLE(void)
{
	return uXmCPUFeatures::has_HLE();
}

int uXm_CALLCONV uXm_has_AVX2(void)
{
	return uXmCPUFeatures::has_AVX2();
}

int uXm_CALLCONV uXm_has_SMEP(void)
{
	return uXmCPUFeatures::has_SMEP();
}

int uXm_CALLCONV uXm_has_BMI2(void)
{
	return uXmCPUFeatures::has_BMI2();
}

int uXm_CALLCONV uXm_has_ERMS(void)
{
	return uXmCPUFeatures::has_ERMS();
}

int uXm_CALLCONV uXm_has_INVPCID(void)
{
	return uXmCPUFeatures::has_INVPCID();
}

int uXm_CALLCONV uXm_has_RTM(void)
{
	return uXmCPUFeatures::has_RTM();
}

int uXm_CALLCONV uXm_has_MPX(void)
{
	return uXmCPUFeatures::has_MPX();
}

int uXm_CALLCONV uXm_has_AVX512F(void)
{
	return uXmCPUFeatures::has_AVX512F();
}

int uXm_CALLCONV uXm_has_AVX512DQ(void)
{
	return uXmCPUFeatures::has_AVX512DQ();
}

int uXm_CALLCONV uXm_has_RDSEED(void)
{
	return uXmCPUFeatures::has_RDSEED();
}

int uXm_CALLCONV uXm_has_ADX(void)
{
	return uXmCPUFeatures::has_ADX();
}

int uXm_CALLCONV uXm_has_SMAP(void)
{
	return uXmCPUFeatures::has_SMAP();
}

int uXm_CALLCONV uXm_has_AVX512_IFMA(void)
{
	return uXmCPUFeatures::has_AVX512_IFMA();
}

int uXm_CALLCONV uXm_has_CLFLUSHOPT(void)
{
	return uXmCPUFeatures::has_CLFLUSHOPT();
}

int uXm_CALLCONV uXm_has_CLWB(void)
{
	return uXmCPUFeatures::has_CLWB();
}

int uXm_CALLCONV uXm_has_AVX512PF(void)
{
	return uXmCPUFeatures::has_AVX512PF();
}

int uXm_CALLCONV uXm_has_AVX512ER(void)
{
	return uXmCPUFeatures::has_AVX512ER();
}

int uXm_CALLCONV uXm_has_AVX512CD(void)
{
	return uXmCPUFeatures::has_AVX512CD();
}

int uXm_CALLCONV uXm_has_SHA(void)
{
	return uXmCPUFeatures::has_SHA();
}

int uXm_CALLCONV uXm_has_AVX512BW(void)
{
	return uXmCPUFeatures::has_AVX512BW();
}

int uXm_CALLCONV uXm_has_AVX512VL(void)
{
	return uXmCPUFeatures::has_AVX512VL();
}

/* %eax=07H, %ecx */
int uXm_CALLCONV uXm_has_PREFETCHWT1(void)
{
	return uXmCPUFeatures::has_PREFETCHWT1();
}

int uXm_CALLCONV uXm_has_AVX512_VBMI(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI();
}

int uXm_CALLCONV uXm_has_UMIP(void)
{
	return uXmCPUFeatures::has_UMIP();
}

int uXm_CALLCONV uXm_has_PKU(void)
{
	return uXmCPUFeatures::has_PKU();
}

int uXm_CALLCONV uXm_has_OSPKE(void)
{
	return uXmCPUFeatures::has_OSPKE();
}

int uXm_CALLCONV uXm_has_AVX512_VBMI2(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI2();
}

int uXm_CALLCONV uXm_has_GFNI(void)
{
	return uXmCPUFeatures::has_GFNI();
}

int uXm_CALLCONV uXm_has_VAES(void)
{
	return uXmCPUFeatures::has_VAES();
}

int uXm_CALLCONV uXm_has_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_VPCLMULQDQ();
}

int uXm_CALLCONV uXm_has_AVX512_VNNI(void)
{
	return uXmCPUFeatures::has_AVX512_VNNI();
}

int uXm_CALLCONV uXm_has_AVX512_BITALG(void)
{
	return uXmCPUFeatures::has_AVX512_BITALG();
}

int uXm_CALLCONV uXm_has_AVX512_VPOPCNTDQ(void)
{
	return uXmCPUFeatures::has_AVX512_VPOPCNTDQ();
}

int uXm_CALLCONV uXm_has_RDPID(void)
{
	return uXmCPUFeatures::has_RDPID();
}

/* %eax=07H, %edx */
int uXm_CALLCONV uXm_has_AVX512_4VNNIW(void)
{
	return uXmCPUFeatures::has_AVX512_4VNNIW();
}

int uXm_CALLCONV uXm_has_AVX512_4FMAPS(void)
{
	return uXmCPUFeatures::has_AVX512_4FMAPS();
}

/* %eax=80000001H, %ecx */
int uXm_CALLCONV uXm_has_LAHF(void)
{
	return uXmCPUFeatures::has_LAHF();
}

int uXm_CALLCONV uXm_has_LZCNT(void)
{
	return uXmCPUFeatures::has_LZCNT();
}

int uXm_CALLCONV uXm_has_ABM(void)
{
	return uXmCPUFeatures::has_ABM();
}

int uXm_CALLCONV uXm_has_SSE4a(void)
{
	return uXmCPUFeatures::has_SSE4a();
}

int uXm_CALLCONV uXm_has_PREFETCHW(void)
{
	return uXmCPUFeatures::has_PREFETCHW();
}

int uXm_CALLCONV uXm_has_XOP(void)
{
	return uXmCPUFeatures::has_XOP();
}

int uXm_CALLCONV uXm_has_LWP(void)
{
	return uXmCPUFeatures::has_LWP();
}

int uXm_CALLCONV uXm_has_FMA4(void)
{
	return uXmCPUFeatures::has_FMA4();
}

int uXm_CALLCONV uXm_has_TBM(void)
{
	return uXmCPUFeatures::has_TBM();
}

int uXm_CALLCONV uXm_has_MWAITX(void)
{
	return uXmCPUFeatures::has_MWAITX();
}

/* %eax=80000001H, %edx */
int uXm_CALLCONV uXm_has_SYSCALL(void)
{
	return uXmCPUFeatures::has_SYSCALL();
}

int uXm_CALLCONV uXm_has_MMXEXT(void)
{
	return uXmCPUFeatures::has_MMXEXT();
}

int uXm_CALLCONV uXm_has_RDTSCP(void)
{
	return uXmCPUFeatures::has_RDTSCP();
}

int uXm_CALLCONV uXm_has_3DNOWEXT(void)
{
	return uXmCPUFeatures::has_3DNOWEXT();
}

int uXm_CALLCONV uXm_has_3DNOW(void)
{
	return uXmCPUFeatures::has_3DNOW();
}

/* %eax=07H, %ebx, %ecx */
int uXm_CALLCONV uXm_has_AVX512_GFNI(void)
{
	return uXmCPUFeatures::has_AVX512_GFNI();
}

int uXm_CALLCONV uXm_has_AVX512_GFNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512_GFNI_VL();
}

int uXm_CALLCONV uXm_has_AVX512_VAES(void)
{
	return uXmCPUFeatures::has_AVX512_VAES();
}

int uXm_CALLCONV uXm_has_AVX512_VAES_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VAES_VL();
}

int uXm_CALLCONV uXm_has_AVX512_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX512_VPCLMULQDQ();
}

int uXm_CALLCONV uXm_has_AVX512_VPCLMULQDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VPCLMULQDQ_VL();
}

int uXm_CALLCONV uXm_has_AVX512_IFMA_VL(void)
{
	return uXmCPUFeatures::has_AVX512_IFMA_VL();
}

int uXm_CALLCONV uXm_has_AVX512_VBMI_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI_VL();
}

int uXm_CALLCONV uXm_has_AVX512_VBMI2_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI2_VL();
}

int uXm_CALLCONV uXm_has_AVX512_VNNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VNNI_VL();
}

int uXm_CALLCONV uXm_has_AVX512_BITALG_VL(void)
{
	return uXmCPUFeatures::has_AVX512_BITALG_VL();
}

int uXm_CALLCONV uXm_has_AVX512_VPOPCNTDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VPOPCNTDQ_VL();
}

int uXm_CALLCONV uXm_has_AVX512BW_GFNI(void)
{
	return uXmCPUFeatures::has_AVX512BW_GFNI();
}

int uXm_CALLCONV uXm_has_AVX512BW_GFNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_GFNI_VL();
}

int uXm_CALLCONV uXm_has_AVX512BW_VAES(void)
{
	return uXmCPUFeatures::has_AVX512BW_VAES();
}

int uXm_CALLCONV uXm_has_AVX512BW_VAES_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_VAES_VL();
}

int uXm_CALLCONV uXm_has_AVX512BW_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ();
}

int uXm_CALLCONV uXm_has_AVX512BW_VPCLMULQDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ_VL();
}

int uXm_CALLCONV uXm_has_AVX512BW_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_VL();
}

int uXm_CALLCONV uXm_has_AVX512DQ_GFNI(void)
{
	return uXmCPUFeatures::has_AVX512DQ_GFNI();
}

int uXm_CALLCONV uXm_has_AVX512DQ_GFNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_GFNI_VL();
}

int uXm_CALLCONV uXm_has_AVX512DQ_VAES(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VAES();
}

int uXm_CALLCONV uXm_has_AVX512DQ_VAES_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VAES_VL();
}

int uXm_CALLCONV uXm_has_AVX512DQ_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ();
}

int uXm_CALLCONV uXm_has_AVX512DQ_VPCLMULQDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ_VL();
}

int uXm_CALLCONV uXm_has_AVX512DQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VL();
}

int uXm_CALLCONV uXm_has_AVX512CD_VL(void)
{
	return uXmCPUFeatures::has_AVX512CD_VL();
}

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
int uXm_CALLCONV uXm_has_SSE_AES(void)
{
	return uXmCPUFeatures::has_SSE_AES();
}

int uXm_CALLCONV uXm_has_SSE_GFNI(void)
{
	return uXmCPUFeatures::has_SSE_GFNI();
}

int uXm_CALLCONV uXm_has_SSE_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE_PCLMULQDQ();
}

int uXm_CALLCONV uXm_has_SSE2_AES(void)
{
	return uXmCPUFeatures::has_SSE2_AES();
}

int uXm_CALLCONV uXm_has_SSE2_GFNI(void)
{
	return uXmCPUFeatures::has_SSE2_GFNI();
}

int uXm_CALLCONV uXm_has_SSE2_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE2_PCLMULQDQ();
}

int uXm_CALLCONV uXm_has_SSE3_AES(void)
{
	return uXmCPUFeatures::has_SSE3_AES();
}

int uXm_CALLCONV uXm_has_SSE3_GFNI(void)
{
	return uXmCPUFeatures::has_SSE3_GFNI();
}

int uXm_CALLCONV uXm_has_SSE3_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE3_PCLMULQDQ();
}

int uXm_CALLCONV uXm_has_SSSE3_AES(void)
{
	return uXmCPUFeatures::has_SSSE3_AES();
}

int uXm_CALLCONV uXm_has_SSSE3_GFNI(void)
{
	return uXmCPUFeatures::has_SSSE3_GFNI();
}

int uXm_CALLCONV uXm_has_SSSE3_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSSE3_PCLMULQDQ();
}

int uXm_CALLCONV uXm_has_SSE41_AES(void)
{
	return uXmCPUFeatures::has_SSE41_AES();
}

int uXm_CALLCONV uXm_has_SSE41_GFNI(void)
{
	return uXmCPUFeatures::has_SSE41_GFNI();
}

int uXm_CALLCONV uXm_has_SSE41_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE41_PCLMULQDQ();
}

int uXm_CALLCONV uXm_has_SSE42_AES(void)
{
	return uXmCPUFeatures::has_SSE42_AES();
}

int uXm_CALLCONV uXm_has_SSE42_GFNI(void)
{
	return uXmCPUFeatures::has_SSE42_GFNI();
}

int uXm_CALLCONV uXm_has_SSE42_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE42_PCLMULQDQ();
}

int uXm_CALLCONV uXm_has_AVX_AES(void)
{
	return uXmCPUFeatures::has_AVX_AES();
}

int uXm_CALLCONV uXm_has_AVX_GFNI(void)
{
	return uXmCPUFeatures::has_AVX_GFNI();
}

int uXm_CALLCONV uXm_has_AVX_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX_PCLMULQDQ();
}

int uXm_CALLCONV uXm_has_AVX_VAES(void)
{
	return uXmCPUFeatures::has_AVX_VAES();
}

int uXm_CALLCONV uXm_has_AVX_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX_VPCLMULQDQ();
}

int uXm_CALLCONV uXm_has_AVX2_AES(void)
{
	return uXmCPUFeatures::has_AVX2_AES();
}

int uXm_CALLCONV uXm_has_AVX2_GFNI(void)
{
	return uXmCPUFeatures::has_AVX2_GFNI();
}

int uXm_CALLCONV uXm_has_AVX2_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX2_PCLMULQDQ();
}

int uXm_CALLCONV uXm_has_AVX2_VAES(void)
{
	return uXmCPUFeatures::has_AVX2_VAES();
}

int uXm_CALLCONV uXm_has_AVX2_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX2_VPCLMULQDQ();
}

int uXm_CALLCONV uXm_has_enabled_XMM(void)
{
	return uXmCPUFeatures::has_enabled_XMM();
}

int uXm_CALLCONV uXm_has_enabled_YMM(void)
{
	return uXmCPUFeatures::has_enabled_YMM();
}

int uXm_CALLCONV uXm_has_enabled_ZMM(void)
{
	return CPU_Rep0.has_enabled_ZMM();
}

int uXm_CALLCONV uXm_CPUFeatures_Is_Inited(void)
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