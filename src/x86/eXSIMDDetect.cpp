#include "uXmX86Cpu.h"

//namespace_eXOAMP

#if defined(uXm_X86_OR_X64_CPU) || defined(uXm_PIC)
#  if defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(uXm_CLANG)
#    if defined(uXm_X86_ABI) && defined(uXm_PIC)
#      if defined(__GNUC__) || defined(uXm_CLANG)
#		 include <cpuid.h>

void __cpuid(eXint32_t CPUInfo[4], eXint32_t CPUInfoType)
{
	__cpuid(CPUInfoType, CPUInfo[0], CPUInfo[1], CPUInfo[2], CPUInfo[3]);
}

#   else

void __cpuid(eXint32_t CPUInfo[4], eXint32_t CPUInfoType)
{
	CPUInfo[0] = CPUInfoType;
	asm volatile (
		"movl %%ebx, %%edi;"
		"cpuid;"
		"xchgl %%ebx, %%edi;"
		:"+a" (CPUInfo[0]), "=D" (CPUInfo[1]), "=c" (CPUInfo[2]), "=d" (CPUInfo[3]) : : );
}
#   endif

void __cpuidex(eXint32_t CPUInfo[4], eXint32_t CPUInfoType, eXint32_t ECXValue)
{
	CPUInfo[0] = CPUInfoType;
	CPUInfo[2] = ECXValue;
	asm volatile (
		"movl %%ebx, %%edi;"
		"cpuid;"
		"xchgl %%ebx, %%edi;"
		:"+a" (CPUInfo[0]), "=D" (CPUInfo[1]), "+c" (CPUInfo[2]), "=d" (CPUInfo[3]) : : );
}
#  else

void __cpuid(eXint32_t CPUInfo[4], eXint32_t CPUInfoType)
{
	CPUInfo[0] = CPUInfoType;
	asm volatile (
		"cpuid;"
		:"+a" (CPUInfo[0]), "=b" (CPUInfo[1]), "=c" (CPUInfo[2]), "=d" (CPUInfo[3]) : : );
}

void __cpuidex(eXint32_t CPUInfo[4], eXint32_t CPUInfoType, eXint32_t ECXValue)
{
	CPUInfo[0] = CPUInfoType;
	CPUInfo[2] = ECXValue;
	asm volatile (
		"cpuid;"
		:"+a" (CPUInfo[0]), "=b" (CPUInfo[1]), "+c" (CPUInfo[2]), "=d" (CPUInfo[3]) : : );
}
#  endif

#   if !defined(uXm_INTEL_COMPILER) && !defined(uXm_K1OM_X64_ABI) && !defined(uXm_PIC)
eXuint64_t _xgetbv(eXuint32_t ext_ctrl_reg)
{
	eXuint32_t lo, hi;
	asm volatile (
		"xgetbv"
		: "=a"(lo), "=d"(hi)
		: "c"(ext_ctrl_reg) : );
	return (eXuint64_t(hi) << 32) | eXuint64_t(lo);
}
#   endif

# elif defined(uXm_MSVC_COMPATIBLE_COMPILER)

/* __cpuidex intrinsic is not supported until Visual Studio 2008 SP1 */
#  if defined(uXm_MSVC_COMPILER) && (_MSC_FULL_VER < 150030729)
#			pragma section(".text")
#   if defined(uXm_X86_CPU)

/* fastcall: first argument in ecx, second in edx, third in [esp + 4] */
__declspec(allocate(".text")) static const char __cpuiduXm_bytecode[] =
"\x53\x56\x8B\x74\x24\x0C\x89\xD0\x0F\xA2\x89\x06\x89\x5E\x04\x89";

#   else

/* x64: first argument in ecx, second in edx, third in r8 */
__declspec(allocate(".text")) static const char __cpuiduXm_bytecode[] =
"\x53\x89\xD0\x0F\xA2\x41\x89\x00\x41\x89\x58\x04\x41\x89\x48\x08\x41\x89\x50\x0C\x5B\xC3";
#   endif

typedef void(uXm_FASTCALL *__CpuidexPointer)(eXint32_t, eXint32_t, eXint32_t[4]);

void __cpuidex(eXint32_t CPUInfo[4], eXint32_t CPUInfoType, eXint32_t ECXValue)
{
	(__CpuidexPointer(&__cpuiduXm_bytecode))(ECXValue, CPUInfoType, CPUInfo);
}

# endif // defined(uXm_MSVC_COMPILER) && (_MSC_FULL_VER < 150030729)

/* _xgetbv intrinsic is not supported until Visual Studio 2010 SP1 */
#   if defined(uXm_MSVC_COMPILER) && (_MSC_FULL_VER < 160040219)
#			pragma section(".text")

#    if defined(uXm_X86_CPU)
/* fastcall: first argument in ecx, second in edx, third in [esp + 4] */

__declspec(allocate(".text")) static const char __xgetbv_bytecode[] =
"\x0F\x01\xD0\xC3";

#    else
/* x64: first argument in ecx, second in edx, third in r8 */
__declspec(allocate(".text")) static const char __xgetbv_bytecode[] =
"\x0F\x01\xD0\x48\xC1\xE2\x20\x48\x09\xD0\xC3";

#    endif

typedef eXuint64_t(uXm_FASTCALL *__XgetbvPointer)(eXuint32_t);
typedef void(uXm_FASTCALL *__XgetbvPointer)(eXint32_t, eXint32_t, eXint32_t[4]);

eXuint64_t _xgetbv(eXuint32_t ext_ctrl_reg)
{
	return (__XgetbvPointer(&__xgetbv_bytecode))(ext_ctrl_reg);
}

#    elif !defined(uXm_INTEL_COMPILER) && (defined(uXm_MSVC_COMPILER) && (_MSC_FULL_VER == 160040219))
/* Visual Studio 2010 SP1: _xgetbv intrinsic is supported, but not declared */
extern "C" unsigned __int64 __cdecl _xgetbv(eXuint32_t ext_ctrl_reg);
# 			pragma intrinsic(_xgetbv)
#    endif

#   endif /*uXm_MSVC_COMPATIBLE_COMPILER*/
# endif /*XM_X86_OR_X64_CPU*/

#if defined(uXm_X86_OR_X64_CPU)

void uXm_cpuid(eXint32_t CPUInfo[4], eXint32_t CPUInfoType)
{
	__cpuid(CPUInfo, CPUInfoType);
}

void uXm_cpuidex(eXint32_t CPUInfo[4], eXint32_t CPUInfoType, eXint32_t ECXValue)
{
	__cpuidex(CPUInfo, CPUInfoType, ECXValue);
}

eXuint64_t uXm_xgetbv(eXuint32_t EXCR)
{
	_xgetbv(EXCR);
}

// getters
std::string CPUFeatures::Vendor()
{
	return CPU_Rep.vendor_;
}

std::string CPUFeatures::Brand()
{
	return CPU_Rep.brand_;
}

constexpr eXint32_t CPUFeatures::available_simd()
{
	return CPU_Rep.nIntrinVers_;
}

constexpr eXbool_t CPUFeatures::has_SSE3()
{
#	ifndef uXm_SSE3											// Not building with SSE3 support
	return false;
#	else
	return CPU_Rep.f_1_ECX_[0];				// ! Is SSE3 supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_PCLMULQDQ()
{
	return CPU_Rep.f_1_ECX_[1];
}

constexpr eXbool_t CPUFeatures::has_MONITOR()
{
	return CPU_Rep.f_1_ECX_[3];
}

constexpr eXbool_t CPUFeatures::has_SSSE3()
{
#	ifndef uXm_SSSE3											// Not building with SSSE3 support
	return false;
#	else
	return CPU_Rep.f_1_ECX_[9];			// ! Is SSSE3 supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_FMA()
{
#	ifndef uXm_FMA3 											// Not building with FMA3 support
	return false;
#	else
	return (has_AVX() || has_AVX512F()) && 								// ! Is AVX supported and required
		CPU_Rep.f_1_ECX_[12];				// ! Is FMA3 supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_CMPXCHG16B()
{
	return CPU_Rep.f_1_ECX_[13];
}

constexpr eXbool_t CPUFeatures::has_SSE41()
{
#	ifndef uXm_SSE41											// Not building with SSE41 support
	return false;
#	else
	return CPU_Rep.f_1_ECX_[19];			// ! Is SSE41 supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_SSE42()
{
#	ifndef uXm_SSE42 										// Not building with SSE42 support
	return false;
#	else
	return CPU_Rep.f_1_ECX_[20];			// ! Is SSE42 supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_MOVBE()
{
	return CPU_Rep.f_1_ECX_[22];
}

constexpr eXbool_t CPUFeatures::has_POPCNT()
{
	return CPU_Rep.f_1_ECX_[23];
}

constexpr eXbool_t CPUFeatures::has_AES()
{
	return CPU_Rep.f_1_ECX_[25];
}

constexpr eXbool_t CPUFeatures::has_XSAVE()
{
	return CPU_Rep.f_1_ECX_[26];
}

constexpr eXbool_t CPUFeatures::has_OSXSAVE()
{
	return CPU_Rep.f_1_ECX_[27];
}

constexpr eXbool_t CPUFeatures::has_AVX()
{
#	ifndef uXm_AVX 											// Not building with AVX1 support
	return false;
#	else
	return has_OSXSAVE() && 							// ! Is OSXSAVE supported and enabled
		has_enabled_YMM() &&						// ! Is XGETBV YMM save state supported and enabled
		CPU_Rep.f_1_ECX_[28];			// ! Is AVX1 supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_F16C()
{
#	ifndef uXm_F16C 					// Not building with F16C support
	return false;
#	else
	return  (has_AVX() || has_AVX512F()) && 					// ! Is AVX supported and required
		CPU_Rep.f_1_ECX_[29];			// ! Is F16C supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_RDRAND()
{
	return CPU_Rep.f_1_ECX_[30];
}

constexpr eXbool_t CPUFeatures::has_FPU()
{
	return CPU_Rep.f_1_EDX_[0];
}

constexpr eXbool_t CPUFeatures::has_MSR()
{
	return CPU_Rep.f_1_EDX_[5];
}

constexpr eXbool_t CPUFeatures::has_CMPXCHG8B()
{
	return CPU_Rep.f_1_EDX_[8];
}

constexpr eXbool_t CPUFeatures::has_SEP()
{
	return CPU_Rep.f_1_EDX_[11];
}

constexpr eXbool_t CPUFeatures::has_CMOV()
{
	return CPU_Rep.f_1_EDX_[15];
}

constexpr eXbool_t CPUFeatures::has_CLFSH()
{
	return CPU_Rep.f_1_EDX_[19];
}

constexpr eXbool_t CPUFeatures::has_MMX()
{
#	ifndef uXm_MMX											// Not building with MMX support
	return false;
#	else
	return CPU_Rep.f_1_EDX_[23];				// ! Is MMX supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_FXSR()
{
	return CPU_Rep.f_1_EDX_[24];
}

constexpr eXbool_t CPUFeatures::has_SSE()
{
#	ifndef uXm_SSE											// Not building with SSE1 support
	return false;
#	else
	return CPU_Rep.f_1_EDX_[25];				// ! Is SSE1 supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_SSE2()
{
#	ifndef uXm_SSE2											// Not building with SSE2 support
	return false;
#	else
	return CPU_Rep.f_1_EDX_[26];				// ! Is SSE2 supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_FSGSBASE()
{
	return CPU_Rep.f_7_EBX_[0];
}

constexpr eXbool_t CPUFeatures::has_BMI1()
{
	return CPU_Rep.f_7_EBX_[3];
}

constexpr eXbool_t CPUFeatures::has_HLE()
{
	return CPU_Rep.isIntel_ && CPU_Rep.f_7_EBX_[4];
}

constexpr eXbool_t CPUFeatures::has_AVX2()
{
#	ifndef uXm_AVX2 											// Not building with AVX2 support
	return false;
#	else
	return  has_AVX() && 								// ! Is AVX supported and required
		CPU_Rep.f_7_EBX_[5];			// ! Is AVX2 supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_BMI2()
{
	return CPU_Rep.f_7_EBX_[8];
}

constexpr eXbool_t CPUFeatures::has_ERMS()
{
	return CPU_Rep.f_7_EBX_[9];
}

constexpr eXbool_t CPUFeatures::has_INVPCID()
{
	return CPU_Rep.f_7_EBX_[10];
}

constexpr eXbool_t CPUFeatures::has_RTM()
{
	return CPU_Rep.isIntel_ && CPU_Rep.f_7_EBX_[11];
}

constexpr eXbool_t CPUFeatures::has_AVX512F()
{
#	ifndef uXm_AVX512 											// Not building with AVX512 support
	return false;
#	else
	return has_OSXSAVE() && 							// ! Is OSXSAVE supported and enabled
		has_enabled_ZMM() &&						// ! Is XGETBV ZMM save state supported and enabled
		CPU_Rep.isIntel_ && CPU_Rep.f_7_EBX_[16];			// ! Is Intel and AVX512F supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_AVX512DQ()
{
#	ifndef uXm_AVX512 											// Not building with AVX512 support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_EBX_[17];			// ! Is AVX512DQ supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_RDSEED()
{
	return CPU_Rep.f_7_EBX_[18];
}

constexpr eXbool_t CPUFeatures::has_ADX()
{
	return CPU_Rep.f_7_EBX_[19];
}

constexpr eXbool_t CPUFeatures::has_AVX512IFMA()
{
#	ifndef uXm_AVX512 											// Not building with AVX512 support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_EBX_[21];			// ! Is AVX512IFMA supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_CLFLUSHOPT()
{
	return CPU_Rep.f_7_EBX_[23];
}

constexpr eXbool_t CPUFeatures::has_AVX512PF()
{
#	ifndef uXm_AVX512 											// Not building with AVX512 support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_EBX_[26];			// ! Is AVX512PF supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_AVX512ER()
{
#	if !defined(uXm_AVX512) && !defined(uXm_AVX512ER) 				// Not building with AVX512ER support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_EBX_[27];			// ! Is AVX512ER supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_AVX512CD()
{
#	ifndef uXm_AVX512 											// Not building with AVX512 support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_EBX_[28];			// ! Is AVX512CD supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_AVX512BW()
{
#	ifndef uXm_AVX512 											// Not building with AVX512 support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_EBX_[30];			// ! Is AVX512BW supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_AVX512VL()
{
#	if !defined(uXm_AVX512) && !defined(uXm_AVX512VL) 											// Not building with AVX512VL support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_EBX_[31];			// ! Is AVX512VL supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_SHA()
{
	return CPU_Rep.f_7_EBX_[29];
}

constexpr eXbool_t CPUFeatures::has_PREFETCHWT1()
{
	return CPU_Rep.isIntel_ && CPU_Rep.f_7_ECX_[0];
}

constexpr eXbool_t CPUFeatures::has_AVX512VBMI()
{
#	ifndef uXm_AVX512 											// Not building with AVX512 support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_ECX_[1];			// ! Is AVX512VBMI supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_AVX512_VPOPCNTDQ()
{
#	ifndef uXm_AVX512 											// Not building with AVX512 support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_ECX_[14];			// ! Is AVX512VPOPCNTDQ supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_AVX512_4VNNIW()
{
#	ifndef uXm_AVX512 											// Not building with AVX512 support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_EDX_[2];			// ! Is AVX512_4VNNIW supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_AVX512_4FMAPS()
{
#	ifndef uXm_AVX512 											// Not building with AVX512 support
	return false;
#	else
	return has_AVX512F() &&						// ! Is AVX512F save state supported and enabled
		CPU_Rep.f_7_EDX_[3];			// ! Is AVX512_4FMAPS supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_LAHF()
{
	return CPU_Rep.f_81_ECX_[0];
}

constexpr eXbool_t CPUFeatures::has_LZCNT()
{
	return CPU_Rep.isIntel_ && CPU_Rep.f_81_ECX_[5];
}

constexpr eXbool_t CPUFeatures::has_ABM()
{
	return CPU_Rep.isAMD_ && CPU_Rep.f_81_ECX_[5];
}

constexpr eXbool_t CPUFeatures::has_SSE4a()
{
	return CPU_Rep.isAMD_ && CPU_Rep.f_81_ECX_[6];
}

constexpr eXbool_t CPUFeatures::has_XOP()
{
#	ifndef uXm_XOP 											// Not building with XOP support
	return false;
#	else
	return has_AVX() && 								// ! Is AVX supported and required
		CPU_Rep.isAMD_ && CPU_Rep.f_81_ECX_[11];			// ! Is XOP supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_FMA4()
{
#	ifndef uXm_FMA4 											// Not building with FMA4 support
	return false;
#	else
	return has_AVX() && 								// ! Is AVX supported and required
		CPU_Rep.isAMD_ && CPU_Rep.f_81_ECX_[16];			// ! Is FMA4 supported
#	endif
}

constexpr eXbool_t CPUFeatures::has_TBM()
{
	return CPU_Rep.isAMD_ && CPU_Rep.f_81_ECX_[21];
}

constexpr eXbool_t CPUFeatures::has_SYSCALL()
{
	return CPU_Rep.isIntel_ && CPU_Rep.f_81_EDX_[11];
}

constexpr eXbool_t CPUFeatures::has_MMXEXT()
{
	return CPU_Rep.isAMD_ && CPU_Rep.f_81_EDX_[22];
}

constexpr eXbool_t CPUFeatures::has_RDTSCP()
{
	return CPU_Rep.isIntel_ && CPU_Rep.f_81_EDX_[27];
}

constexpr eXbool_t CPUFeatures::has_3DNOWEXT()
{
	return CPU_Rep.isAMD_ && CPU_Rep.f_81_EDX_[30];
}

constexpr eXbool_t CPUFeatures::has_3DNOW()
{
	return CPU_Rep.isAMD_ && CPU_Rep.f_81_EDX_[31];
}

// must ensure OS supports XMM registers (and XMM)
constexpr eXbool_t CPUFeatures::has_enabled_XMM()
{
	return  CPU_Rep.hasXMM_;			// ! Is YMM save state supported and enabled
}

// must ensure OS supports YMM registers (and XMM)
constexpr eXbool_t CPUFeatures::has_enabled_YMM()
{
	return  CPU_Rep.hasYMM_;			// ! Is YMM save state supported and enabled
}

// must ensure OS supports ZMM registers (and YMM, and XMM)
constexpr eXbool_t CPUFeatures::has_enabled_ZMM()
{
	return  CPU_Rep.hasZMM_;			// ! Is ZMM save state supported and enabled
}


constexpr eXint32_t uXm_available_SIMD()
{
    return CPUFeatures::available_simd();
}

constexpr eXbool_t uXm_has_SSE3()
{
    return CPUFeatures::has_SSE3();
}

constexpr eXbool_t uXm_has_PCLMULQDQ()
{
    return CPUFeatures::has_PCLMULQDQ();
}

constexpr eXbool_t uXm_has_MONITOR()
{
    return CPUFeatures::has_MONITOR();
}

constexpr eXbool_t uXm_has_SSSE3()
{
    return CPUFeatures::has_SSSE3();
}

constexpr eXbool_t uXm_has_FMA()
{
    return CPUFeatures::has_FMA();
}

constexpr eXbool_t uXm_has_CMPXCHG16B()
{
    return CPUFeatures::has_CMPXCHG16B();
}

constexpr eXbool_t uXm_has_SSE41()
{
    return CPUFeatures::has_SSE41();
}

constexpr eXbool_t uXm_has_SSE42()
{
    return CPUFeatures::has_SSE42();
}

constexpr eXbool_t uXm_has_MOVBE()
{
    return CPUFeatures::has_MOVBE();
}

constexpr eXbool_t uXm_has_POPCNT()
{
    return CPUFeatures::has_POPCNT();
}

constexpr eXbool_t uXm_has_AES()
{
    return CPUFeatures::has_AES();
}

constexpr eXbool_t uXm_has_XSAVE()
{
    return CPUFeatures::has_XSAVE();
}

constexpr eXbool_t uXm_has_OSXSAVE()
{
    return CPUFeatures::has_OSXSAVE();
}

constexpr eXbool_t uXm_has_AVX()
{
    return CPUFeatures::has_AVX();
}

constexpr eXbool_t uXm_has_F16C()
{
    return CPUFeatures::has_F16C();
}

constexpr eXbool_t uXm_has_RDRAND()
{
    return CPUFeatures::has_RDRAND();
}

constexpr eXbool_t uXm_has_FPU()
{
    return CPUFeatures::has_FPU();
}

constexpr eXbool_t uXm_has_MSR()
{
    return CPUFeatures::has_MSR();
}

constexpr eXbool_t uXm_has_CMPXCHG8B()
{
    return CPUFeatures::has_CMPXCHG8B();
}

constexpr eXbool_t uXm_has_SEP()
{
    return CPUFeatures::has_SEP();
}

constexpr eXbool_t uXm_has_CMOV()
{
    return CPUFeatures::has_CMOV();
}

constexpr eXbool_t uXm_has_CLFSH()
{
    return CPUFeatures::has_CLFSH();
}

constexpr eXbool_t uXm_has_MMX()
{
    return CPUFeatures::has_MMX();
}

constexpr eXbool_t uXm_has_FXSR()
{
    return CPUFeatures::has_FXSR();
}

constexpr eXbool_t uXm_has_SSE()
{
    return CPUFeatures::has_SSE();
}

constexpr eXbool_t uXm_has_SSE2()
{
    return CPUFeatures::has_SSE2();
}

constexpr eXbool_t uXm_has_FSGSBASE()
{
    return CPUFeatures::has_FSGSBASE();
}

constexpr eXbool_t uXm_has_BMI1()
{
    return CPUFeatures::has_BMI1();
}

constexpr eXbool_t uXm_has_HLE()
{
    return CPUFeatures::has_HLE();
}

constexpr eXbool_t uXm_has_AVX2()
{
    return CPUFeatures::has_AVX2();
}

constexpr eXbool_t uXm_has_BMI2()
{
    return CPUFeatures::has_BMI2();
}

constexpr eXbool_t uXm_has_ERMS()
{
    return CPUFeatures::has_ERMS();
}

constexpr eXbool_t uXm_has_INVPCID()
{
    return CPUFeatures::has_INVPCID();
}

constexpr eXbool_t uXm_has_RTM()
{
    return CPUFeatures::has_RTM();
}

constexpr eXbool_t uXm_has_AVX512F()
{
    return CPUFeatures::has_AVX512F();
}

constexpr eXbool_t uXm_has_AVX512DQ()
{
    return CPUFeatures::has_AVX512DQ();
}

constexpr eXbool_t uXm_has_RDSEED()
{
    return CPUFeatures::has_RDSEED();
}

constexpr eXbool_t uXm_has_ADX()
{
    return CPUFeatures::has_ADX();
}

constexpr eXbool_t uXm_has_AVX512IFMA()
{
    return CPUFeatures::has_AVX512IFMA();
}

constexpr eXbool_t uXm_has_CLFLUSHOPT()
{
    return CPUFeatures::has_CLFLUSHOPT();
}

constexpr eXbool_t uXm_has_AVX512PF()
{
    return CPUFeatures::has_AVX512PF();
}

constexpr eXbool_t uXm_has_AVX512ER()
{
    return CPUFeatures::has_AVX512ER();
}

constexpr eXbool_t uXm_has_AVX512CD()
{
    return CPUFeatures::has_AVX512CD();
}

constexpr eXbool_t uXm_has_AVX512BW()
{
    return CPUFeatures::has_AVX512BW();
}

constexpr eXbool_t uXm_has_AVX512VL()
{
    return CPUFeatures::has_AVX512VL();
}

constexpr eXbool_t uXm_has_SHA()
{
    return CPUFeatures::has_SHA();
}

constexpr eXbool_t uXm_has_PREFETCHWT1()
{
    return CPUFeatures::has_PREFETCHWT1();
}

constexpr eXbool_t uXm_has_AVX512VBMI()
{
    return CPUFeatures::has_AVX512VBMI();
}

constexpr eXbool_t uXm_has_AVX512_VPOPCNTDQ()
{
    return CPUFeatures::has_AVX512_VPOPCNTDQ();
}

constexpr eXbool_t uXm_has_AVX512_4VNNIW()
{
    return CPUFeatures::has_AVX512_4VNNIW();
}

constexpr eXbool_t uXm_has_AVX512_4FMAPS()
{
    return CPUFeatures::has_AVX512_4FMAPS();
}

constexpr eXbool_t uXm_has_LAHF()
{
    return CPUFeatures::has_LAHF();
}

constexpr eXbool_t uXm_has_LZCNT()
{
    return CPUFeatures::has_LZCNT();
}

constexpr eXbool_t uXm_has_ABM()
{
    return CPUFeatures::has_ABM();
}

constexpr eXbool_t uXm_has_SSE4a()
{
    return CPUFeatures::has_SSE4a();
}

constexpr eXbool_t uXm_has_XOP()
{
    return CPUFeatures::has_XOP();
}

constexpr eXbool_t uXm_has_FMA4()
{
    return CPUFeatures::has_FMA4();
}

constexpr eXbool_t uXm_has_TBM()
{
    return CPUFeatures::has_TBM();
}

constexpr eXbool_t uXm_has_SYSCALL()
{
    return CPUFeatures::has_SYSCALL();
}

constexpr eXbool_t uXm_has_MMXEXT()
{
    return CPUFeatures::has_MMXEXT();
}

constexpr eXbool_t uXm_has_RDTSCP()
{
    return CPUFeatures::has_RDTSCP();
}

constexpr eXbool_t uXm_has_3DNOWEXT()
{
    return CPUFeatures::has_3DNOWEXT();
}

constexpr eXbool_t uXm_has_3DNOW()
{
    return CPUFeatures::has_3DNOW();
}

constexpr eXbool_t uXm_has_enabled_XMM()
{
    return CPUFeatures::has_enabled_XMM();
}

constexpr eXbool_t uXm_has_enabled_YMM()
{
    return CPUFeatures::has_enabled_YMM();
}

constexpr eXbool_t uXm_has_enabled_ZMM()
{
    return CPUFeatures::has_enabled_ZMM();
}

#endif /*XM_X86_OR_X64_CPU*/

CPUFeatures::CPUFeatures_Internal::CPUFeatures_Internal()
#if defined(uXm_X86_OR_X64_CPU)
	: nIds_{ 0 },
	nExIds_{ 0 },
	isIntel_{ false },
	isAMD_{ false },
	hasXMM_{ false },
	hasYMM_{ false },
	hasZMM_{ false },
	nIntrinVers_{ 0 },
	f_1_ECX_{ 0 },
	f_1_EDX_{ 0 },
	f_7_EBX_{ 0 },
	f_7_ECX_{ 0 },
	f_7_EDX_{ 0 },
	f_81_ECX_{ 0 },
	f_81_EDX_{ 0 },
	data_{},
	extdata_{}
#endif
{
#if defined(uXm_X86_OR_X64_CPU)
	//eXint32_t cpuInfo[4] = {-1};
	std::array<eXint32_t, 4> cpui;

	// Calling __cpuid with 0x0 as the function_id argument
	// gets the number of the highest valid function ID.
	uXm_cpuid(cpui.data(), 0);
	nIds_ = cpui[0];

	for (eXint32_t i = 0; i <= nIds_; ++i)
	{
		uXm_cpuidex(cpui.data(), i, 0);
		data_.push_back(cpui);
	}

	// Capture vendor string
	char vendor[0x20];
	memset(vendor, 0, sizeof(vendor));
	*reinterpret_cast<eXint32_t*>(vendor) = data_[0][1];
	*reinterpret_cast<eXint32_t*>(vendor + 4) = data_[0][3];
	*reinterpret_cast<eXint32_t*>(vendor + 8) = data_[0][2];
	vendor_ = vendor;

	if (vendor_ == "GenuineIntel")
	{
		isIntel_ = true;
	}
	else if (vendor_ == "AuthenticAMD")
	{
		isAMD_ = true;
	}

	// load bitset with flags for function 0x00000001
	if (nIds_ >= 1)
	{
		f_1_ECX_ = data_[1][2];
		f_1_EDX_ = data_[1][3];
	}

	// load bitset with flags for function 0x00000007
	if (nIds_ >= 7)
	{
		f_7_EBX_ = data_[7][1];
		f_7_ECX_ = data_[7][2];
		f_7_EDX_ = data_[7][3];
	}

	// Calling __cpuid with 0x80000000 as the function_id argument
	// gets the number of the highest valid extended ID.
	uXm_cpuid(cpui.data(), 0x80000000);
	nExIds_ = cpui[0];

	char brand[0x40];
	memset(brand, 0, sizeof(brand));

	for (eXint32_t i = 0x80000000; i <= nExIds_; ++i)
	{
		uXm_cpuidex(cpui.data(), i, 0);
		extdata_.push_back(cpui);
	}

	// load bitset with flags for function 0x80000001
	if (nExIds_ >= 0x80000001)
	{
		f_81_ECX_ = extdata_[1][2];
		f_81_EDX_ = extdata_[1][3];
	}

	eXuint32_t _xmm = (1 << 1);
	hasXMM_ = (((uXm_xgetbv(0) & _xmm) == _xmm) != 0);

	eXuint32_t ymm_xmm = (1 << 2) | (1 << 1);
	hasYMM_ = (((uXm_xgetbv(0) & ymm_xmm) == ymm_xmm) != 0);

	eXuint32_t zmm_ymm_xmm = (7 << 5) | (1 << 2) | (1 << 1);
	hasZMM_ = (((uXm_xgetbv(0) & zmm_ymm_xmm) == zmm_ymm_xmm) != 0);

	// Interpret CPU brand string if reported
	if (nExIds_ >= 0x80000004)
	{
		memcpy(brand, extdata_[2].data(), sizeof(cpui));
		memcpy(brand + 16, extdata_[3].data(), sizeof(cpui));
		memcpy(brand + 32, extdata_[4].data(), sizeof(cpui));
		brand_ = brand;
	}

	{
		if (!f_1_EDX_[0]) return;		// no further cpuid function supported
	#	ifdef uXm_MMX
		if (!f_1_EDX_[23]) return;		// no MMX
		nIntrinVers_ = 8;
	#	endif
		if (!f_1_EDX_[15]) return;		// no conditional move
		if (!f_1_EDX_[24]) return;		// no FXSAVE
		if (!hasXMM_) return;			// no SSE save state enabled
	#	ifdef uXm_SSE
		if (!f_1_EDX_[25]) return;		// no SSE
		nIntrinVers_ = 10;
	#	endif
	#	ifdef uXm_SSE2
		if (!f_1_EDX_[26]) return;		// no SSE2
		nIntrinVers_ = 20;
	#	endif
	#	ifdef uXm_SSE3
		if (!f_1_ECX_[0]) return;		// no SSE3
		nIntrinVers_ = 30;
	#	endif
	#	ifdef uXm_SSSE3
		if (!f_1_ECX_[9]) return;		// no SSSE3
		nIntrinVers_ = 31;
	#	endif
	#	ifdef uXm_SSE41
		if (!f_1_ECX_[19]) return;		// no SSE4.1
		nIntrinVers_ = 41;
	#	endif
		if (!f_1_ECX_[23]) return;		// no POPCNT
	#	ifdef uXm_SSE42
		if (!f_1_ECX_[20]) return;		// no SSE4.2
		nIntrinVers_ = 42;
	#	endif
		if (!f_1_ECX_[27]) return;		// no OSXSAVE
		if (!hasYMM_) return;			// no AVX save state enabled
	#	ifdef uXm_AVX
		if (!f_1_ECX_[28]) return;		// no AVX
		nIntrinVers_ = 50;
	#	endif
	#	ifdef uXm_AVX2
		if (!f_7_EBX_[5]) return;		// no AVX2
		nIntrinVers_ = 52;
	#	endif
		if (!hasZMM_) return;			// no AVX512F save state enabled
	#	ifdef uXm_AVX512
		if (!f_7_EBX_[16]) return;		// no AVX512F
		nIntrinVers_ = 60;
	#	endif
	}
#endif
};

// Initialize static member data
//const CPUFeatures::CPUFeatures::CPUFeatures_Internal CPUFeatures::CPUFeatures::CPU_Rep;

//namespace_eXOAMP_end
