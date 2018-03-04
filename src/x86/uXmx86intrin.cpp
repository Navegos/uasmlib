#include "uXmx86intrin.h"
#include "uXmx86Cpu.h"

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

int uXm_intrinset(void)
{
	return uXmCPUFeatures::intrinset();
}

/* %eax=00H, %ecx */
bool uXm_is_Intel(void)
{
	return uXmCPUFeatures::is_Intel();
}

bool uXm_is_AMD(void)
{
	return uXmCPUFeatures::is_AMD();
}

/* %eax=01H, %ecx */
bool uXm_has_SSE3(void)
{
	return uXmCPUFeatures::has_SSE3();
}

bool uXm_has_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_PCLMULQDQ();
}

bool uXm_has_MONITOR(void)
{
	return uXmCPUFeatures::has_MONITOR();
}

bool uXm_has_SSSE3(void)
{
	return uXmCPUFeatures::has_SSSE3();
}

bool uXm_has_FMA(void)
{
	return uXmCPUFeatures::has_FMA();
}

bool uXm_has_CMPXCHG16B(void)
{
	return uXmCPUFeatures::has_CMPXCHG16B();
}

bool uXm_has_SSE41(void)
{
	return uXmCPUFeatures::has_SSE41();
}

bool uXm_has_SSE42(void)
{
	return uXmCPUFeatures::has_SSE42();
}

bool uXm_has_MOVBE(void)
{
	return uXmCPUFeatures::has_MOVBE();
}

bool uXm_has_POPCNT(void)
{
	return uXmCPUFeatures::has_POPCNT();
}

bool uXm_has_AES(void)
{
	return uXmCPUFeatures::has_AES();
}

bool uXm_has_XSAVE(void)
{
	return uXmCPUFeatures::has_XSAVE();
}

bool uXm_has_OSXSAVE(void)
{
	return uXmCPUFeatures::has_OSXSAVE();
}

bool uXm_has_AVX(void)
{
	return uXmCPUFeatures::has_AVX();
}

bool uXm_has_F16C(void)
{
	return uXmCPUFeatures::has_F16C();
}

bool uXm_has_RDRAND(void)
{
	return uXmCPUFeatures::has_RDRAND();
}

/* %eax=01H, %edx */
bool uXm_has_FPU(void)
{
	return uXmCPUFeatures::has_FPU();
}

bool uXm_has_TSC(void)
{
	return uXmCPUFeatures::has_TSC();
}

bool uXm_has_MSR(void)
{
	return uXmCPUFeatures::has_MSR();
}

bool uXm_has_CMPXCHG8B(void)
{
	return uXmCPUFeatures::has_CMPXCHG8B();
}

bool uXm_has_SEP(void)
{
	return uXmCPUFeatures::has_SEP();
}

bool uXm_has_CMOV(void)
{
	return uXmCPUFeatures::has_CMOV();
}

bool uXm_has_CLFSH(void)
{
	return uXmCPUFeatures::has_CLFSH();
}

bool uXm_has_MMX(void)
{
	return uXmCPUFeatures::has_MMX();
}

bool uXm_has_FXSR(void)
{
	return uXmCPUFeatures::has_FXSR();
}

bool uXm_has_SSE(void)
{
	return uXmCPUFeatures::has_SSE();
}

bool uXm_has_SSE2(void)
{
	return uXmCPUFeatures::has_SSE2();
}

/* %eax=07H, %ebx */
bool uXm_has_FSGSBASE(void)
{
	return uXmCPUFeatures::has_FSGSBASE();
}

bool uXm_has_SGX(void)
{
	return uXmCPUFeatures::has_SGX();
}

bool uXm_has_BMI1(void)
{
	return uXmCPUFeatures::has_BMI1();
}

bool uXm_has_HLE(void)
{
	return uXmCPUFeatures::has_HLE();
}

bool uXm_has_AVX2(void)
{
	return uXmCPUFeatures::has_AVX2();
}

bool uXm_has_SMEP(void)
{
	return uXmCPUFeatures::has_SMEP();
}

bool uXm_has_BMI2(void)
{
	return uXmCPUFeatures::has_BMI2();
}

bool uXm_has_ERMS(void)
{
	return uXmCPUFeatures::has_ERMS();
}

bool uXm_has_INVPCID(void)
{
	return uXmCPUFeatures::has_INVPCID();
}

bool uXm_has_RTM(void)
{
	return uXmCPUFeatures::has_RTM();
}

bool uXm_has_MPX(void)
{
	return uXmCPUFeatures::has_MPX();
}

bool uXm_has_AVX512F(void)
{
	return uXmCPUFeatures::has_AVX512F();
}

bool uXm_has_AVX512DQ(void)
{
	return uXmCPUFeatures::has_AVX512DQ();
}

bool uXm_has_RDSEED(void)
{
	return uXmCPUFeatures::has_RDSEED();
}

bool uXm_has_ADX(void)
{
	return uXmCPUFeatures::has_ADX();
}

bool uXm_has_SMAP(void)
{
	return uXmCPUFeatures::has_SMAP();
}

bool uXm_has_AVX512_IFMA(void)
{
	return uXmCPUFeatures::has_AVX512_IFMA();
}

bool uXm_has_CLFLUSHOPT(void)
{
	return uXmCPUFeatures::has_CLFLUSHOPT();
}

bool uXm_has_CLWB(void)
{
	return uXmCPUFeatures::has_CLWB();
}

bool uXm_has_AVX512PF(void)
{
	return uXmCPUFeatures::has_AVX512PF();
}

bool uXm_has_AVX512ER(void)
{
	return uXmCPUFeatures::has_AVX512ER();
}

bool uXm_has_AVX512CD(void)
{
	return uXmCPUFeatures::has_AVX512CD();
}

bool uXm_has_SHA(void)
{
	return uXmCPUFeatures::has_SHA();
}

bool uXm_has_AVX512BW(void)
{
	return uXmCPUFeatures::has_AVX512BW();
}

bool uXm_has_AVX512VL(void)
{
	return uXmCPUFeatures::has_AVX512VL();
}

/* %eax=07H, %ecx */
bool uXm_has_PREFETCHWT1(void)
{
	return uXmCPUFeatures::has_PREFETCHWT1();
}

bool uXm_has_AVX512_VBMI(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI();
}

bool uXm_has_UMIP(void)
{
	return uXmCPUFeatures::has_UMIP();
}

bool uXm_has_PKU(void)
{
	return uXmCPUFeatures::has_PKU();
}

bool uXm_has_OSPKE(void)
{
	return uXmCPUFeatures::has_OSPKE();
}

bool uXm_has_AVX512_VBMI2(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI2();
}

bool uXm_has_GFNI(void)
{
	return uXmCPUFeatures::has_GFNI();
}

bool uXm_has_VAES(void)
{
	return uXmCPUFeatures::has_VAES();
}

bool uXm_has_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_VPCLMULQDQ();
}

bool uXm_has_AVX512_VNNI(void)
{
	return uXmCPUFeatures::has_AVX512_VNNI();
}

bool uXm_has_AVX512_BITALG(void)
{
	return uXmCPUFeatures::has_AVX512_BITALG();
}

bool uXm_has_AVX512_VPOPCNTDQ(void)
{
	return uXmCPUFeatures::has_AVX512_VPOPCNTDQ();
}

bool uXm_has_RDPID(void)
{
	return uXmCPUFeatures::has_RDPID();
}

/* %eax=07H, %edx */
bool uXm_has_AVX512_4VNNIW(void)
{
	return uXmCPUFeatures::has_AVX512_4VNNIW();
}

bool uXm_has_AVX512_4FMAPS(void)
{
	return uXmCPUFeatures::has_AVX512_4FMAPS();
}

/* %eax=80000001H, %ecx */
bool uXm_has_LAHF(void)
{
	return uXmCPUFeatures::has_LAHF();
}

bool uXm_has_LZCNT(void)
{
	return uXmCPUFeatures::has_LZCNT();
}

bool uXm_has_ABM(void)
{
	return uXmCPUFeatures::has_ABM();
}

bool uXm_has_SSE4a(void)
{
	return uXmCPUFeatures::has_SSE4a();
}

bool uXm_has_PREFETCHW(void)
{
	return uXmCPUFeatures::has_PREFETCHW();
}

bool uXm_has_XOP(void)
{
	return uXmCPUFeatures::has_XOP();
}

bool uXm_has_LWP(void)
{
	return uXmCPUFeatures::has_LWP();
}

bool uXm_has_FMA4(void)
{
	return uXmCPUFeatures::has_FMA4();
}

bool uXm_has_TBM(void)
{
	return uXmCPUFeatures::has_TBM();
}

bool uXm_has_MWAITX(void)
{
	return uXmCPUFeatures::has_MWAITX();
}

/* %eax=80000001H, %edx */
bool uXm_has_SYSCALL(void)
{
	return uXmCPUFeatures::has_SYSCALL();
}

bool uXm_has_MMXEXT(void)
{
	return uXmCPUFeatures::has_MMXEXT();
}

bool uXm_has_RDTSCP(void)
{
	return uXmCPUFeatures::has_RDTSCP();
}

bool uXm_has_3DNOWEXT(void)
{
	return uXmCPUFeatures::has_3DNOWEXT();
}

bool uXm_has_3DNOW(void)
{
	return uXmCPUFeatures::has_3DNOW();
}

/* %eax=07H, %ebx, %ecx */
bool uXm_has_AVX512_GFNI(void)
{
	return uXmCPUFeatures::has_AVX512_GFNI();
}

bool uXm_has_AVX512_GFNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512_GFNI_VL();
}

bool uXm_has_AVX512_VAES(void)
{
	return uXmCPUFeatures::has_AVX512_VAES();
}

bool uXm_has_AVX512_VAES_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VAES_VL();
}

bool uXm_has_AVX512_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX512_VPCLMULQDQ();
}

bool uXm_has_AVX512_VPCLMULQDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VPCLMULQDQ_VL();
}

bool uXm_has_AVX512_IFMA_VL(void)
{
	return uXmCPUFeatures::has_AVX512_IFMA_VL();
}

bool uXm_has_AVX512_VBMI_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI_VL();
}

bool uXm_has_AVX512_VBMI2_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VBMI2_VL();
}

bool uXm_has_AVX512_VNNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VNNI_VL();
}

bool uXm_has_AVX512_BITALG_VL(void)
{
	return uXmCPUFeatures::has_AVX512_BITALG_VL();
}

bool uXm_has_AVX512_VPOPCNTDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512_VPOPCNTDQ_VL();
}

bool uXm_has_AVX512BW_GFNI(void)
{
	return uXmCPUFeatures::has_AVX512BW_GFNI();
}

bool uXm_has_AVX512BW_GFNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_GFNI_VL();
}

bool uXm_has_AVX512BW_VAES(void)
{
	return uXmCPUFeatures::has_AVX512BW_VAES();
}

bool uXm_has_AVX512BW_VAES_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_VAES_VL();
}

bool uXm_has_AVX512BW_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ();
}

bool uXm_has_AVX512BW_VPCLMULQDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ_VL();
}

bool uXm_has_AVX512BW_VL(void)
{
	return uXmCPUFeatures::has_AVX512BW_VL();
}

bool uXm_has_AVX512DQ_GFNI(void)
{
	return uXmCPUFeatures::has_AVX512DQ_GFNI();
}

bool uXm_has_AVX512DQ_GFNI_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_GFNI_VL();
}

bool uXm_has_AVX512DQ_VAES(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VAES();
}

bool uXm_has_AVX512DQ_VAES_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VAES_VL();
}

bool uXm_has_AVX512DQ_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ();
}

bool uXm_has_AVX512DQ_VPCLMULQDQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ_VL();
}

bool uXm_has_AVX512DQ_VL(void)
{
	return uXmCPUFeatures::has_AVX512DQ_VL();
}

bool uXm_has_AVX512CD_VL(void)
{
	return uXmCPUFeatures::has_AVX512CD_VL();
}

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
bool uXm_has_SSE_AES(void)
{
	return uXmCPUFeatures::has_SSE_AES();
}

bool uXm_has_SSE_GFNI(void)
{
	return uXmCPUFeatures::has_SSE_GFNI();
}

bool uXm_has_SSE_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE_PCLMULQDQ();
}

bool uXm_has_SSE2_AES(void)
{
	return uXmCPUFeatures::has_SSE2_AES();
}

bool uXm_has_SSE2_GFNI(void)
{
	return uXmCPUFeatures::has_SSE2_GFNI();
}

bool uXm_has_SSE2_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE2_PCLMULQDQ();
}

bool uXm_has_SSE3_AES(void)
{
	return uXmCPUFeatures::has_SSE3_AES();
}

bool uXm_has_SSE3_GFNI(void)
{
	return uXmCPUFeatures::has_SSE3_GFNI();
}

bool uXm_has_SSE3_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE3_PCLMULQDQ();
}

bool uXm_has_SSSE3_AES(void)
{
	return uXmCPUFeatures::has_SSSE3_AES();
}

bool uXm_has_SSSE3_GFNI(void)
{
	return uXmCPUFeatures::has_SSSE3_GFNI();
}

bool uXm_has_SSSE3_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSSE3_PCLMULQDQ();
}

bool uXm_has_SSE41_AES(void)
{
	return uXmCPUFeatures::has_SSE41_AES();
}

bool uXm_has_SSE41_GFNI(void)
{
	return uXmCPUFeatures::has_SSE41_GFNI();
}

bool uXm_has_SSE41_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE41_PCLMULQDQ();
}

bool uXm_has_SSE42_AES(void)
{
	return uXmCPUFeatures::has_SSE42_AES();
}

bool uXm_has_SSE42_GFNI(void)
{
	return uXmCPUFeatures::has_SSE42_GFNI();
}

bool uXm_has_SSE42_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_SSE42_PCLMULQDQ();
}

bool uXm_has_AVX_AES(void)
{
	return uXmCPUFeatures::has_AVX_AES();
}

bool uXm_has_AVX_GFNI(void)
{
	return uXmCPUFeatures::has_AVX_GFNI();
}

bool uXm_has_AVX_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX_PCLMULQDQ();
}

bool uXm_has_AVX_VAES(void)
{
	return uXmCPUFeatures::has_AVX_VAES();
}

bool uXm_has_AVX_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX_VPCLMULQDQ();
}

bool uXm_has_AVX2_AES(void)
{
	return uXmCPUFeatures::has_AVX2_AES();
}

bool uXm_has_AVX2_GFNI(void)
{
	return uXmCPUFeatures::has_AVX2_GFNI();
}

bool uXm_has_AVX2_PCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX2_PCLMULQDQ();
}

bool uXm_has_AVX2_VAES(void)
{
	return uXmCPUFeatures::has_AVX2_VAES();
}

bool uXm_has_AVX2_VPCLMULQDQ(void)
{
	return uXmCPUFeatures::has_AVX2_VPCLMULQDQ();
}


bool uXm_has_enabled_XMM(void)
{
	return uXmCPUFeatures::has_enabled_XMM();
}

bool uXm_has_enabled_YMM(void)
{
	return uXmCPUFeatures::has_enabled_YMM();
}

bool uXm_has_enabled_ZMM(void)
{
	return uXmCPUFeatures::has_enabled_ZMM();
}

uXm_PACK_POP

uXm_EXTERNC_END