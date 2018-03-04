#include "uXmx86Cpu.h"

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

uXmCPUFeatures::uXmCPUFeatures(void)
{
	_uXmCPUFeatures_Init();
}

uXmCPUFeatures::~uXmCPUFeatures(void)
{
	_uXmCPUFeatures_Destroy();
}

int uXmCPUFeatures::intrinset(void)
{
	return _uXmCPUFeatures_intrinset();
}

/* %eax=00H, %ecx */
bool uXmCPUFeatures::is_Intel(void)
{
	return _uXmCPUFeatures_is_Intel();
}

bool uXmCPUFeatures::is_AMD(void)
{
	return _uXmCPUFeatures_is_AMD();
}

/* %eax=01H, %ecx */
bool uXmCPUFeatures::has_SSE3(void)
{
	return _uXmCPUFeatures_has_SSE3();
}

bool uXmCPUFeatures::has_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_PCLMULQDQ();
}

bool uXmCPUFeatures::has_MONITOR(void)
{
	return _uXmCPUFeatures_has_MONITOR();
}

bool uXmCPUFeatures::has_SSSE3(void)
{
	return _uXmCPUFeatures_has_SSSE3();
}

bool uXmCPUFeatures::has_FMA(void)
{
	return _uXmCPUFeatures_has_FMA();
}

bool uXmCPUFeatures::has_CMPXCHG16B(void)
{
	return _uXmCPUFeatures_has_CMPXCHG16B();
}

bool uXmCPUFeatures::has_SSE41(void)
{
	return _uXmCPUFeatures_has_SSE41();
}

bool uXmCPUFeatures::has_SSE42(void)
{
	return _uXmCPUFeatures_has_SSE42();
}

bool uXmCPUFeatures::has_MOVBE(void)
{
	return _uXmCPUFeatures_has_MOVBE();
}

bool uXmCPUFeatures::has_POPCNT(void)
{
	return _uXmCPUFeatures_has_POPCNT();
}

bool uXmCPUFeatures::has_AES(void)
{
	return _uXmCPUFeatures_has_AES();
}

bool uXmCPUFeatures::has_XSAVE(void)
{
	return _uXmCPUFeatures_has_XSAVE();
}

bool uXmCPUFeatures::has_OSXSAVE(void)
{
	return _uXmCPUFeatures_has_OSXSAVE();
}

bool uXmCPUFeatures::has_AVX(void)
{
	return _uXmCPUFeatures_has_AVX();
}

bool uXmCPUFeatures::has_F16C(void)
{
	return _uXmCPUFeatures_has_F16C();
}

bool uXmCPUFeatures::has_RDRAND(void)
{
	return _uXmCPUFeatures_has_RDRAND();
}

/* %eax=01H, %edx */
bool uXmCPUFeatures::has_FPU(void)
{
	return _uXmCPUFeatures_has_FPU();
}

bool uXmCPUFeatures::has_TSC(void)
{
	return _uXmCPUFeatures_has_TSC();
}

bool uXmCPUFeatures::has_MSR(void)
{
	return _uXmCPUFeatures_has_MSR();
}

bool uXmCPUFeatures::has_CMPXCHG8B(void)
{
	return _uXmCPUFeatures_has_CMPXCHG8B();
}

bool uXmCPUFeatures::has_SEP(void)
{
	return _uXmCPUFeatures_has_SEP();
}

bool uXmCPUFeatures::has_CMOV(void)
{
	return _uXmCPUFeatures_has_CMOV();
}

bool uXmCPUFeatures::has_CLFSH(void)
{
	return _uXmCPUFeatures_has_CLFSH();
}

bool uXmCPUFeatures::has_MMX(void)
{
	return _uXmCPUFeatures_has_MMX();
}

bool uXmCPUFeatures::has_FXSR(void)
{
	return _uXmCPUFeatures_has_FXSR();
}

bool uXmCPUFeatures::has_SSE(void)
{
	return _uXmCPUFeatures_has_SSE();
}

bool uXmCPUFeatures::has_SSE2(void)
{
	return _uXmCPUFeatures_has_SSE2();
}

/* %eax=07H, %ebx */
bool uXmCPUFeatures::has_FSGSBASE(void)
{
	return _uXmCPUFeatures_has_FSGSBASE();
}

bool uXmCPUFeatures::has_SGX(void)
{
	return _uXmCPUFeatures_has_SGX();
}

bool uXmCPUFeatures::has_BMI1(void)
{
	return _uXmCPUFeatures_has_BMI1();
}

bool uXmCPUFeatures::has_HLE(void)
{
	return _uXmCPUFeatures_has_HLE();
}

bool uXmCPUFeatures::has_AVX2(void)
{
	return _uXmCPUFeatures_has_AVX2();
}

bool uXmCPUFeatures::has_SMEP(void)
{
	return _uXmCPUFeatures_has_SMEP();
}

bool uXmCPUFeatures::has_BMI2(void)
{
	return _uXmCPUFeatures_has_BMI2();
}

bool uXmCPUFeatures::has_ERMS(void)
{
	return _uXmCPUFeatures_has_ERMS();
}

bool uXmCPUFeatures::has_INVPCID(void)
{
	return _uXmCPUFeatures_has_INVPCID();
}

bool uXmCPUFeatures::has_RTM(void)
{
	return _uXmCPUFeatures_has_RTM();
}

bool uXmCPUFeatures::has_MPX(void)
{
	return _uXmCPUFeatures_has_MPX();
}

bool uXmCPUFeatures::has_AVX512F(void)
{
	return _uXmCPUFeatures_has_AVX512F();
}

bool uXmCPUFeatures::has_AVX512DQ(void)
{
	return _uXmCPUFeatures_has_AVX512DQ();
}

bool uXmCPUFeatures::has_RDSEED(void)
{
	return _uXmCPUFeatures_has_RDSEED();
}

bool uXmCPUFeatures::has_ADX(void)
{
	return _uXmCPUFeatures_has_ADX();
}

bool uXmCPUFeatures::has_SMAP(void)
{
	return _uXmCPUFeatures_has_SMAP();
}

bool uXmCPUFeatures::has_AVX512_IFMA(void)
{
	return _uXmCPUFeatures_has_AVX512_IFMA();
}

bool uXmCPUFeatures::has_CLFLUSHOPT(void)
{
	return _uXmCPUFeatures_has_CLFLUSHOPT();
}

bool uXmCPUFeatures::has_CLWB(void)
{
	return _uXmCPUFeatures_has_CLWB();
}

bool uXmCPUFeatures::has_AVX512PF(void)
{
	return _uXmCPUFeatures_has_AVX512PF();
}

bool uXmCPUFeatures::has_AVX512ER(void)
{
	return _uXmCPUFeatures_has_AVX512ER();
}

bool uXmCPUFeatures::has_AVX512CD(void)
{
	return _uXmCPUFeatures_has_AVX512CD();
}

bool uXmCPUFeatures::has_SHA(void)
{
	return _uXmCPUFeatures_has_SHA();
}

bool uXmCPUFeatures::has_AVX512BW(void)
{
	return _uXmCPUFeatures_has_AVX512BW();
}

bool uXmCPUFeatures::has_AVX512VL(void)
{
	return _uXmCPUFeatures_has_AVX512VL();
}

/* %eax=07H, %ecx */
bool uXmCPUFeatures::has_PREFETCHWT1(void)
{
	return _uXmCPUFeatures_has_PREFETCHWT1();
}

bool uXmCPUFeatures::has_AVX512_VBMI(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI();
}

bool uXmCPUFeatures::has_UMIP(void)
{
	return _uXmCPUFeatures_has_UMIP();
}

bool uXmCPUFeatures::has_PKU(void)
{
	return _uXmCPUFeatures_has_PKU();
}

bool uXmCPUFeatures::has_OSPKE(void)
{
	return _uXmCPUFeatures_has_OSPKE();
}

bool uXmCPUFeatures::has_AVX512_VBMI2(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI2();
}

bool uXmCPUFeatures::has_GFNI(void)
{
	return _uXmCPUFeatures_has_GFNI();
}

bool uXmCPUFeatures::has_VAES(void)
{
	return _uXmCPUFeatures_has_VAES();
}

bool uXmCPUFeatures::has_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_VPCLMULQDQ();
}

bool uXmCPUFeatures::has_AVX512_VNNI(void)
{
	return _uXmCPUFeatures_has_AVX512_VNNI();
}

bool uXmCPUFeatures::has_AVX512_BITALG(void)
{
	return _uXmCPUFeatures_has_AVX512_BITALG();
}

bool uXmCPUFeatures::has_AVX512_VPOPCNTDQ(void)
{
	return _uXmCPUFeatures_has_AVX512_VPOPCNTDQ();
}

bool uXmCPUFeatures::has_RDPID(void)
{
	return _uXmCPUFeatures_has_RDPID();
}

/* %eax=07H, %edx */
bool uXmCPUFeatures::has_AVX512_4VNNIW(void)
{
	return _uXmCPUFeatures_has_AVX512_4VNNIW();
}

bool uXmCPUFeatures::has_AVX512_4FMAPS(void)
{
	return _uXmCPUFeatures_has_AVX512_4FMAPS();
}

/* %eax=80000001H, %ecx */
bool uXmCPUFeatures::has_LAHF(void)
{
	return _uXmCPUFeatures_has_LAHF();
}

bool uXmCPUFeatures::has_LZCNT(void)
{
	return _uXmCPUFeatures_has_LZCNT();
}

bool uXmCPUFeatures::has_ABM(void)
{
	return _uXmCPUFeatures_has_ABM();
}

bool uXmCPUFeatures::has_SSE4a(void)
{
	return _uXmCPUFeatures_has_SSE4a();
}

bool uXmCPUFeatures::has_PREFETCHW(void)
{
	return _uXmCPUFeatures_has_PREFETCHW();
}

bool uXmCPUFeatures::has_XOP(void)
{
	return _uXmCPUFeatures_has_XOP();
}

bool uXmCPUFeatures::has_LWP(void)
{
	return _uXmCPUFeatures_has_LWP();
}

bool uXmCPUFeatures::has_FMA4(void)
{
	return _uXmCPUFeatures_has_FMA4();
}

bool uXmCPUFeatures::has_TBM(void)
{
	return _uXmCPUFeatures_has_TBM();
}

bool uXmCPUFeatures::has_MWAITX(void)
{
	return _uXmCPUFeatures_has_MWAITX();
}

/* %eax=80000001H, %edx */
bool uXmCPUFeatures::has_SYSCALL(void)
{
	return _uXmCPUFeatures_has_SYSCALL();
}

bool uXmCPUFeatures::has_MMXEXT(void)
{
	return _uXmCPUFeatures_has_MMXEXT();
}

bool uXmCPUFeatures::has_RDTSCP(void)
{
	return _uXmCPUFeatures_has_RDTSCP();
}

bool uXmCPUFeatures::has_3DNOWEXT(void)
{
	return _uXmCPUFeatures_has_3DNOWEXT();
}

bool uXmCPUFeatures::has_3DNOW(void)
{
	return _uXmCPUFeatures_has_3DNOW();
}

/* %eax=07H, %ebx, %ecx */
bool uXmCPUFeatures::has_AVX512_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX512_GFNI();
}

bool uXmCPUFeatures::has_AVX512_GFNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_GFNI_VL();
}

bool uXmCPUFeatures::has_AVX512_VAES(void)
{
	return _uXmCPUFeatures_has_AVX512_VAES();
}

bool uXmCPUFeatures::has_AVX512_VAES_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VAES_VL();
}

bool uXmCPUFeatures::has_AVX512_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX512_VPCLMULQDQ();
}

bool uXmCPUFeatures::has_AVX512_VPCLMULQDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VPCLMULQDQ_VL();
}

bool uXmCPUFeatures::has_AVX512_IFMA_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_IFMA_VL();
}

bool uXmCPUFeatures::has_AVX512_VBMI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI_VL();
}

bool uXmCPUFeatures::has_AVX512_VBMI2_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI2_VL();
}

bool uXmCPUFeatures::has_AVX512_VNNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VNNI_VL();
}

bool uXmCPUFeatures::has_AVX512_BITALG_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_BITALG_VL();
}

bool uXmCPUFeatures::has_AVX512_VPOPCNTDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VPOPCNTDQ_VL();
}

bool uXmCPUFeatures::has_AVX512BW_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX512BW_GFNI();
}

bool uXmCPUFeatures::has_AVX512BW_GFNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_GFNI_VL();
}

bool uXmCPUFeatures::has_AVX512BW_VAES(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VAES();
}

bool uXmCPUFeatures::has_AVX512BW_VAES_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VAES_VL();
}

bool uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VPCLMULQDQ();
}

bool uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VPCLMULQDQ_VL();
}

bool uXmCPUFeatures::has_AVX512BW_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VL();
}

bool uXmCPUFeatures::has_AVX512DQ_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_GFNI();
}

bool uXmCPUFeatures::has_AVX512DQ_GFNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_GFNI_VL();
}

bool uXmCPUFeatures::has_AVX512DQ_VAES(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VAES();
}

bool uXmCPUFeatures::has_AVX512DQ_VAES_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VAES_VL();
}

bool uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VPCLMULQDQ();
}

bool uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VPCLMULQDQ_VL();
}

bool uXmCPUFeatures::has_AVX512DQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VL();
}

bool uXmCPUFeatures::has_AVX512CD_VL(void)
{
	return _uXmCPUFeatures_has_AVX512CD_VL();
}

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
bool uXmCPUFeatures::has_SSE_AES(void)
{
	return _uXmCPUFeatures_has_SSE_AES();
}

bool uXmCPUFeatures::has_SSE_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE_GFNI();
}

bool uXmCPUFeatures::has_SSE_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE_PCLMULQDQ();
}

bool uXmCPUFeatures::has_SSE2_AES(void)
{
	return _uXmCPUFeatures_has_SSE2_AES();
}

bool uXmCPUFeatures::has_SSE2_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE2_GFNI();
}

bool uXmCPUFeatures::has_SSE2_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE2_PCLMULQDQ();
}

bool uXmCPUFeatures::has_SSE3_AES(void)
{
	return _uXmCPUFeatures_has_SSE3_AES();
}

bool uXmCPUFeatures::has_SSE3_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE3_GFNI();
}

bool uXmCPUFeatures::has_SSE3_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE3_PCLMULQDQ();
}

bool uXmCPUFeatures::has_SSSE3_AES(void)
{
	return _uXmCPUFeatures_has_SSSE3_AES();
}

bool uXmCPUFeatures::has_SSSE3_GFNI(void)
{
	return _uXmCPUFeatures_has_SSSE3_GFNI();
}

bool uXmCPUFeatures::has_SSSE3_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSSE3_PCLMULQDQ();
}

bool uXmCPUFeatures::has_SSE41_AES(void)
{
	return _uXmCPUFeatures_has_SSE41_AES();
}

bool uXmCPUFeatures::has_SSE41_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE41_GFNI();
}

bool uXmCPUFeatures::has_SSE41_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE41_PCLMULQDQ();
}

bool uXmCPUFeatures::has_SSE42_AES(void)
{
	return _uXmCPUFeatures_has_SSE42_AES();
}

bool uXmCPUFeatures::has_SSE42_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE42_GFNI();
}

bool uXmCPUFeatures::has_SSE42_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE42_PCLMULQDQ();
}

bool uXmCPUFeatures::has_AVX_AES(void)
{
	return _uXmCPUFeatures_has_AVX_AES();
}

bool uXmCPUFeatures::has_AVX_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX_GFNI();
}

bool uXmCPUFeatures::has_AVX_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX_PCLMULQDQ();
}

bool uXmCPUFeatures::has_AVX_VAES(void)
{
	return _uXmCPUFeatures_has_AVX_VAES();
}

bool uXmCPUFeatures::has_AVX_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX_VPCLMULQDQ();
}

bool uXmCPUFeatures::has_AVX2_AES(void)
{
	return _uXmCPUFeatures_has_AVX2_AES();
}

bool uXmCPUFeatures::has_AVX2_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX2_GFNI();
}

bool uXmCPUFeatures::has_AVX2_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX2_PCLMULQDQ();
}

bool uXmCPUFeatures::has_AVX2_VAES(void)
{
	return _uXmCPUFeatures_has_AVX2_VAES();
}

bool uXmCPUFeatures::has_AVX2_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX2_VPCLMULQDQ();
}


bool uXmCPUFeatures::has_enabled_XMM(void)
{
	return _uXmCPUFeatures_has_enabled_XMM();
}

bool uXmCPUFeatures::has_enabled_YMM(void)
{
	return _uXmCPUFeatures_has_enabled_YMM();
}

bool uXmCPUFeatures::has_enabled_ZMM(void)
{
	return _uXmCPUFeatures_has_enabled_ZMM();
}

uXm_PACK_POP

uXm_EXTERNC_END