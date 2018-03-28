#include "uXmx86Cpu.h"

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH_SIZET

uXmCPUFeatures::uXmCPUFeatures(int infolevel)
{
	_uXmCPUFeatures_Init(infolevel);
}

uXmCPUFeatures::~uXmCPUFeatures(void)
{
	_uXmCPUFeatures_Destroy();
}

uXm_PACK_POP

uXm_PACK_PUSH4

int uXm_CALLCONV uXmCPUFeatures::intrinset(void)
{
	return _uXmCPUFeatures_intrinset();
}

/* %eax=00H, %ecx */
int uXm_CALLCONV uXmCPUFeatures::is_Intel(void)
{	
	return _uXmCPUFeatures_is_Intel();
}

int uXm_CALLCONV uXmCPUFeatures::is_AMD(void)
{
	return _uXmCPUFeatures_is_AMD();
}

/* %eax=01H, %ecx */
int uXm_CALLCONV uXmCPUFeatures::has_SSE3(void)
{
	return _uXmCPUFeatures_has_SSE3();
}

int uXm_CALLCONV uXmCPUFeatures::has_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_PCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_MONITOR(void)
{
	return _uXmCPUFeatures_has_MONITOR();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSSE3(void)
{
	return _uXmCPUFeatures_has_SSSE3();
}

int uXm_CALLCONV uXmCPUFeatures::has_FMA(void)
{
	return _uXmCPUFeatures_has_FMA();
}

int uXm_CALLCONV uXmCPUFeatures::has_CMPXCHG16B(void)
{
	return _uXmCPUFeatures_has_CMPXCHG16B();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE41(void)
{
	return _uXmCPUFeatures_has_SSE41();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE42(void)
{
	return _uXmCPUFeatures_has_SSE42();
}

int uXm_CALLCONV uXmCPUFeatures::has_MOVBE(void)
{
	return _uXmCPUFeatures_has_MOVBE();
}

int uXm_CALLCONV uXmCPUFeatures::has_POPCNT(void)
{
	return _uXmCPUFeatures_has_POPCNT();
}

int uXm_CALLCONV uXmCPUFeatures::has_AES(void)
{
	return _uXmCPUFeatures_has_AES();
}

int uXm_CALLCONV uXmCPUFeatures::has_XSAVE(void)
{
	return _uXmCPUFeatures_has_XSAVE();
}

int uXm_CALLCONV uXmCPUFeatures::has_OSXSAVE(void)
{
	return _uXmCPUFeatures_has_OSXSAVE();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX(void)
{
	return _uXmCPUFeatures_has_AVX();
}

int uXm_CALLCONV uXmCPUFeatures::has_F16C(void)
{
	return _uXmCPUFeatures_has_F16C();
}

int uXm_CALLCONV uXmCPUFeatures::has_RDRAND(void)
{
	return _uXmCPUFeatures_has_RDRAND();
}

/* %eax=01H, %edx */
int uXm_CALLCONV uXmCPUFeatures::has_FPU(void)
{
	return _uXmCPUFeatures_has_FPU();
}

int uXm_CALLCONV uXmCPUFeatures::has_TSC(void)
{
	return _uXmCPUFeatures_has_TSC();
}

int uXm_CALLCONV uXmCPUFeatures::has_MSR(void)
{
	return _uXmCPUFeatures_has_MSR();
}

int uXm_CALLCONV uXmCPUFeatures::has_CMPXCHG8B(void)
{
	return _uXmCPUFeatures_has_CMPXCHG8B();
}

int uXm_CALLCONV uXmCPUFeatures::has_SEP(void)
{
	return _uXmCPUFeatures_has_SEP();
}

int uXm_CALLCONV uXmCPUFeatures::has_CMOV(void)
{
	return _uXmCPUFeatures_has_CMOV();
}

int uXm_CALLCONV uXmCPUFeatures::has_CLFSH(void)
{
	return _uXmCPUFeatures_has_CLFSH();
}

int uXm_CALLCONV uXmCPUFeatures::has_MMX(void)
{
	return _uXmCPUFeatures_has_MMX();
}

int uXm_CALLCONV uXmCPUFeatures::has_FXSR(void)
{
	return _uXmCPUFeatures_has_FXSR();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE(void)
{
	return _uXmCPUFeatures_has_SSE();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE2(void)
{
	return _uXmCPUFeatures_has_SSE2();
}

/* %eax=07H, %ebx */
int uXm_CALLCONV uXmCPUFeatures::has_FSGSBASE(void)
{
	return _uXmCPUFeatures_has_FSGSBASE();
}

int uXm_CALLCONV uXmCPUFeatures::has_SGX(void)
{
	return _uXmCPUFeatures_has_SGX();
}

int uXm_CALLCONV uXmCPUFeatures::has_BMI1(void)
{
	return _uXmCPUFeatures_has_BMI1();
}

int uXm_CALLCONV uXmCPUFeatures::has_HLE(void)
{
	return _uXmCPUFeatures_has_HLE();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX2(void)
{
	return _uXmCPUFeatures_has_AVX2();
}

int uXm_CALLCONV uXmCPUFeatures::has_SMEP(void)
{
	return _uXmCPUFeatures_has_SMEP();
}

int uXm_CALLCONV uXmCPUFeatures::has_BMI2(void)
{
	return _uXmCPUFeatures_has_BMI2();
}

int uXm_CALLCONV uXmCPUFeatures::has_ERMS(void)
{
	return _uXmCPUFeatures_has_ERMS();
}

int uXm_CALLCONV uXmCPUFeatures::has_INVPCID(void)
{
	return _uXmCPUFeatures_has_INVPCID();
}

int uXm_CALLCONV uXmCPUFeatures::has_RTM(void)
{
	return _uXmCPUFeatures_has_RTM();
}

int uXm_CALLCONV uXmCPUFeatures::has_MPX(void)
{
	return _uXmCPUFeatures_has_MPX();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512F(void)
{
	return _uXmCPUFeatures_has_AVX512F();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512DQ(void)
{
	return _uXmCPUFeatures_has_AVX512DQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_RDSEED(void)
{
	return _uXmCPUFeatures_has_RDSEED();
}

int uXm_CALLCONV uXmCPUFeatures::has_ADX(void)
{
	return _uXmCPUFeatures_has_ADX();
}

int uXm_CALLCONV uXmCPUFeatures::has_SMAP(void)
{
	return _uXmCPUFeatures_has_SMAP();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_IFMA(void)
{
	return _uXmCPUFeatures_has_AVX512_IFMA();
}

int uXm_CALLCONV uXmCPUFeatures::has_CLFLUSHOPT(void)
{
	return _uXmCPUFeatures_has_CLFLUSHOPT();
}

int uXm_CALLCONV uXmCPUFeatures::has_CLWB(void)
{
	return _uXmCPUFeatures_has_CLWB();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512PF(void)
{
	return _uXmCPUFeatures_has_AVX512PF();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512ER(void)
{
	return _uXmCPUFeatures_has_AVX512ER();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512CD(void)
{
	return _uXmCPUFeatures_has_AVX512CD();
}

int uXm_CALLCONV uXmCPUFeatures::has_SHA(void)
{
	return _uXmCPUFeatures_has_SHA();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512BW(void)
{
	return _uXmCPUFeatures_has_AVX512BW();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512VL(void)
{
	return _uXmCPUFeatures_has_AVX512VL();
}

/* %eax=07H, %ecx */
int uXm_CALLCONV uXmCPUFeatures::has_PREFETCHWT1(void)
{
	return _uXmCPUFeatures_has_PREFETCHWT1();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VBMI(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI();
}

int uXm_CALLCONV uXmCPUFeatures::has_UMIP(void)
{
	return _uXmCPUFeatures_has_UMIP();
}

int uXm_CALLCONV uXmCPUFeatures::has_PKU(void)
{
	return _uXmCPUFeatures_has_PKU();
}

int uXm_CALLCONV uXmCPUFeatures::has_OSPKE(void)
{
	return _uXmCPUFeatures_has_OSPKE();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VBMI2(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI2();
}

int uXm_CALLCONV uXmCPUFeatures::has_GFNI(void)
{
	return _uXmCPUFeatures_has_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_VAES(void)
{
	return _uXmCPUFeatures_has_VAES();
}

int uXm_CALLCONV uXmCPUFeatures::has_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_VPCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VNNI(void)
{
	return _uXmCPUFeatures_has_AVX512_VNNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_BITALG(void)
{
	return _uXmCPUFeatures_has_AVX512_BITALG();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VPOPCNTDQ(void)
{
	return _uXmCPUFeatures_has_AVX512_VPOPCNTDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_RDPID(void)
{
	return _uXmCPUFeatures_has_RDPID();
}

/* %eax=07H, %edx */
int uXm_CALLCONV uXmCPUFeatures::has_AVX512_4VNNIW(void)
{
	return _uXmCPUFeatures_has_AVX512_4VNNIW();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_4FMAPS(void)
{
	return _uXmCPUFeatures_has_AVX512_4FMAPS();
}

/* %eax=80000001H, %ecx */
int uXm_CALLCONV uXmCPUFeatures::has_LAHF(void)
{
	return _uXmCPUFeatures_has_LAHF();
}

int uXm_CALLCONV uXmCPUFeatures::has_LZCNT(void)
{
	return _uXmCPUFeatures_has_LZCNT();
}

int uXm_CALLCONV uXmCPUFeatures::has_ABM(void)
{
	return _uXmCPUFeatures_has_ABM();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE4a(void)
{
	return _uXmCPUFeatures_has_SSE4a();
}

int uXm_CALLCONV uXmCPUFeatures::has_PREFETCHW(void)
{
	return _uXmCPUFeatures_has_PREFETCHW();
}

int uXm_CALLCONV uXmCPUFeatures::has_XOP(void)
{
	return _uXmCPUFeatures_has_XOP();
}

int uXm_CALLCONV uXmCPUFeatures::has_LWP(void)
{
	return _uXmCPUFeatures_has_LWP();
}

int uXm_CALLCONV uXmCPUFeatures::has_FMA4(void)
{
	return _uXmCPUFeatures_has_FMA4();
}

int uXm_CALLCONV uXmCPUFeatures::has_TBM(void)
{
	return _uXmCPUFeatures_has_TBM();
}

int uXm_CALLCONV uXmCPUFeatures::has_MWAITX(void)
{
	return _uXmCPUFeatures_has_MWAITX();
}

/* %eax=80000001H, %edx */
int uXm_CALLCONV uXmCPUFeatures::has_SYSCALL(void)
{
	return _uXmCPUFeatures_has_SYSCALL();
}

int uXm_CALLCONV uXmCPUFeatures::has_MMXEXT(void)
{
	return _uXmCPUFeatures_has_MMXEXT();
}

int uXm_CALLCONV uXmCPUFeatures::has_RDTSCP(void)
{
	return _uXmCPUFeatures_has_RDTSCP();
}

int uXm_CALLCONV uXmCPUFeatures::has_3DNOWEXT(void)
{
	return _uXmCPUFeatures_has_3DNOWEXT();
}

int uXm_CALLCONV uXmCPUFeatures::has_3DNOW(void)
{
	return _uXmCPUFeatures_has_3DNOW();
}

/* %eax=07H, %ebx, %ecx */
int uXm_CALLCONV uXmCPUFeatures::has_AVX512_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX512_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_GFNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_GFNI_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VAES(void)
{
	return _uXmCPUFeatures_has_AVX512_VAES();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VAES_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VAES_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX512_VPCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VPCLMULQDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VPCLMULQDQ_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_IFMA_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_IFMA_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VBMI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VBMI2_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VBMI2_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VNNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VNNI_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_BITALG_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_BITALG_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512_VPOPCNTDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512_VPOPCNTDQ_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512BW_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX512BW_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512BW_GFNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_GFNI_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512BW_VAES(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VAES();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512BW_VAES_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VAES_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VPCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512BW_VPCLMULQDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VPCLMULQDQ_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512BW_VL(void)
{
	return _uXmCPUFeatures_has_AVX512BW_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512DQ_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512DQ_GFNI_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_GFNI_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512DQ_VAES(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VAES();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512DQ_VAES_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VAES_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VPCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512DQ_VPCLMULQDQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VPCLMULQDQ_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512DQ_VL(void)
{
	return _uXmCPUFeatures_has_AVX512DQ_VL();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX512CD_VL(void)
{
	return _uXmCPUFeatures_has_AVX512CD_VL();
}

/* %eax=07H, %ecx, %ebx | %eax=01H, %ecx , %edx */
int uXm_CALLCONV uXmCPUFeatures::has_SSE_AES(void)
{
	return _uXmCPUFeatures_has_SSE_AES();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE_PCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE2_AES(void)
{
	return _uXmCPUFeatures_has_SSE2_AES();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE2_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE2_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE2_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE2_PCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE3_AES(void)
{
	return _uXmCPUFeatures_has_SSE3_AES();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE3_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE3_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE3_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE3_PCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSSE3_AES(void)
{
	return _uXmCPUFeatures_has_SSSE3_AES();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSSE3_GFNI(void)
{
	return _uXmCPUFeatures_has_SSSE3_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSSE3_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSSE3_PCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE41_AES(void)
{
	return _uXmCPUFeatures_has_SSE41_AES();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE41_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE41_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE41_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE41_PCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE42_AES(void)
{
	return _uXmCPUFeatures_has_SSE42_AES();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE42_GFNI(void)
{
	return _uXmCPUFeatures_has_SSE42_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_SSE42_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_SSE42_PCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX_AES(void)
{
	return _uXmCPUFeatures_has_AVX_AES();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX_PCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX_VAES(void)
{
	return _uXmCPUFeatures_has_AVX_VAES();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX_VPCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX2_AES(void)
{
	return _uXmCPUFeatures_has_AVX2_AES();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX2_GFNI(void)
{
	return _uXmCPUFeatures_has_AVX2_GFNI();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX2_PCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX2_PCLMULQDQ();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX2_VAES(void)
{
	return _uXmCPUFeatures_has_AVX2_VAES();
}

int uXm_CALLCONV uXmCPUFeatures::has_AVX2_VPCLMULQDQ(void)
{
	return _uXmCPUFeatures_has_AVX2_VPCLMULQDQ();
}


int uXm_CALLCONV uXmCPUFeatures::has_enabled_XMM(void)
{
	return _uXmCPUFeatures_has_enabled_XMM();
}

int uXm_CALLCONV uXmCPUFeatures::has_enabled_YMM(void)
{
	return _uXmCPUFeatures_has_enabled_YMM();
}

int uXm_CALLCONV uXmCPUFeatures::has_enabled_ZMM(void)
{
	return _uXmCPUFeatures_has_enabled_ZMM();
}

int uXm_CALLCONV uXmCPUFeatures::Is_Inited(void)
{
	return _uXmCPUFeatures_Is_Inited();
}

uXm_PACK_POP

uXm_PACK_PUSH_POINTER

void uXm_CALLCONV uXmCPUFeatures::CpuType(int* vendor, int* family, int* model)
{
	_uXmCPUFeatures_CpuType(vendor, family, model);
}

char* uXm_CALLCONV uXmCPUFeatures::ProcessorName(void)
{
	return _uXmCPUFeatures_ProcessorName();
}

size_t uXm_CALLCONV uXmCPUFeatures::DataCacheSize(int level)
{
	return _uXmCPUFeatures_DataCacheSize(level);
}

uXm_PACK_POP

uXm_EXTERNC_END
