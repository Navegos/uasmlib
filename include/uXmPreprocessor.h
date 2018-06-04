
#pragma once

#ifndef uXm_PREPROCESSOR_H
#define uXm_PREPROCESSOR_H

// Helper macros to convert value of macro to string literal.
#ifndef _uXm_Stringer
#       define _uXm_Stringer(x) #x
#endif
#ifndef uXm_Stringer
#       define uXm_Stringer(x)  _uXm_Stringer(x)
#endif

#ifndef _uXm_Con_Stringer
#define _uXm_Con_Stringer(a, b) a##b
#endif
#ifndef uXm_Con_Stringer
#define uXm_Con_Stringer(a, b) _uXm_Con_Stringer(a, b)
#endif

/**
Compiler defines
*/
#if (defined(_MSC_VER) || defined(uXm_VC)) && (!defined(__INTEL_COMPILER) && !defined(__clang__) && !defined(uXm_ICW) && !defined(uXm_ICU) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__))
#ifndef uXm_VC
#       define uXm_VC 1  /* MSVC Compiler */
#endif
#ifndef uXm_MSVC_COMPILER
#       define uXm_MSVC_COMPILER 1  /* MSVC Compiler */
#endif
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "vc"
#   if defined(_MSC_VER) && (_MSC_VER == 1200)
#		define uXm_VC6 1
#		define uXm_COMPILER "Microsoft Visual C++ 6"
#   elif defined(_MSC_VER) && (_MSC_VER == 1300)
#		define uXm_VC7 1
#		define uXm_COMPILER "Microsoft Visual C++ 7"
#   elif defined(_MSC_VER) && (_MSC_VER == 1400)
#       define uXm_VC8 1
#		define uXm_COMPILER "Microsoft Visual C++ 8"
#   elif defined(_MSC_VER) && (_MSC_VER == 1500)
#       define uXm_VC9 1
#		define uXm_COMPILER "Microsoft Visual C++ 9"
#   elif defined(_MSC_VER) && (_MSC_VER == 1600)
#		define uXm_VC10 1
#		define uXm_COMPILER "Microsoft Visual C++ 10"
#   elif defined(_MSC_VER) && (_MSC_VER == 1700)
#		define uXm_VC11 1
#		define uXm_COMPILER "Microsoft Visual C++ 11"
#   elif defined(_MSC_VER) && (_MSC_VER == 1800)
#		define uXm_VC12 1
#		define uXm_COMPILER "Microsoft Visual C++ 12"
#   elif defined(_MSC_VER) && (_MSC_VER == 1900)
#		define uXm_VC14 1
#		define uXm_COMPILER "Microsoft Visual C++ 14"
#   elif defined(_MSC_VER) && (_MSC_VER == 1910)
#		define uXm_VC14_1 1
#		define uXm_COMPILER "Microsoft Visual C++ 14.1"
#   elif defined(_MSC_VER) && (_MSC_VER == 1911)
#		define uXm_VC14_11 1
#		define uXm_COMPILER "Microsoft Visual C++ 14.11"
#   elif defined(_MSC_VER) && (_MSC_VER == 1912)
#		define uXm_VC14_12 1
#		define uXm_COMPILER "Microsoft Visual C++ 14.12"
#   elif defined(_MSC_VER) && (_MSC_VER == 1913)
#		define uXm_VC14_13 1
#		define uXm_COMPILER "Microsoft Visual C++ 14.13"
#   elif defined(_MSC_VER) && (_MSC_VER == 1914)
#		define uXm_VC14_14 1
#		define uXm_COMPILER "Microsoft Visual C++ 14.14"
#	else
#error ERROR: add your vc compiler version
#	endif
#   if defined(_MSC_VER) && ((_MSC_VER >= 1600) && (_MSC_VER < 1800))
#     ifdef uXm_COMPILER_INTRIN
#       undef uXm_COMPILER_INTRIN
#     endif
#       define uXm_COMPILER_INTRIN 50
#   endif
#   if defined(_MSC_VER) && ((_MSC_VER >= 1700) && (_MSC_VER < 1911))
#     ifdef uXm_COMPILER_INTRIN
#       undef uXm_COMPILER_INTRIN
#     endif
#       define uXm_COMPILER_INTRIN 52
#   endif
#   if defined(_MSC_VER) && (_MSC_VER >= 1911)
#     ifdef uXm_COMPILER_INTRIN
#       undef uXm_COMPILER_INTRIN
#     endif
#       define uXm_COMPILER_INTRIN 60
#   endif
#elif (defined(__INTEL_COMPILER) || defined(uXm_ICW) || defined(uXm_ICU)) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
# if defined(_MSC_VER)
#  ifndef uXm_ICW
#       define uXm_ICW 1 /* Intel compiler for Windows */
#  endif
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "icw"
#else
#  ifndef uXm_ICU
#       define uXm_ICU 1 /* Intel compiler for Unix/Linux/Mac OSX */
#  endif
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "icu"
# endif
#  ifndef uXm_ICC
#       define uXm_ICC 1 /* Intel compiler */
#  endif
#  ifndef uXm_INTEL_COMPILER
#       define uXm_INTEL_COMPILER 1 /* Intel compiler */
#  endif
#if defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1010()
#       define uXm_ICC101 1
#       define uXm_COMPILER "Intel C++ Compiler 10.1"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1100)
#       define uXm_ICC110 1
#       define uXm_COMPILER "Intel C++ Compiler 11.0"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1110)
#       define uXm_ICC111 1
#       define uXm_COMPILER "Intel C++ Compiler 11.1"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1200)
#       define uXm_ICC120 1
#       define uXm_COMPILER "Intel C++ Compiler 12.0"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1210)
#       define uXm_ICC121 1
#       define uXm_COMPILER "Intel C++ Compiler 12.1"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1300)
#       define uXm_ICC130 1
#       define uXm_COMPILER "Intel C++ Compiler 13.0"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1310)
#       define uXm_ICC131 1
#       define uXm_COMPILER "Intel C++ Compiler 13.1"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1400)
#       define uXm_ICC140 1
#       define uXm_COMPILER "Intel C++ Compiler 14.0"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1410)
#       define uXm_ICC141 1
#       define uXm_COMPILER "Intel C++ Compiler 14.1"
#       define uXm_COMPILER_INTRIN 52
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1500)
#       define uXm_ICC150 1
#       define uXm_COMPILER "Intel C++ Compiler 15.0"
#       define uXm_COMPILER_INTRIN 52
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1501)
#       define uXm_ICC1501 1
#       define uXm_COMPILER "Intel C++ Compiler 15.0.1"
#       define uXm_COMPILER_INTRIN 60
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 9999)
#       define uXm_ICC9999 1
#       define uXm_COMPILER "Intel C++ Compiler mainline"
#else
#error ERROR: Unknown version or add your Intel compiler version
#endif
#elif defined(__clang__) || defined(uXm_CLANG) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
# if defined(_MSC_VER)
#  ifndef uXm_CLANGW
#       define uXm_CLANGW 1 /* Clang compiler for Windows */
#  endif
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "clangw"
#else
#  ifndef uXm_CLANGU
#       define uXm_CLANGU 1 /* Clang compiler for Unix/Linux/Mac OSX */
#  endif
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "clangu"
# endif
#ifndef uXm_CLANG
#       define uXm_CLANG 1
#endif
#       define uXm_COMPILER "Clang " uXm_Stringer(__clang_major__) "." uXm_Stringer(__clang_minor__)
# if defined(__clang_major__) && (((__clang_major__ >=3) && (__clang_minor__ >=9)) || (__clang_major__ >=4))
#       define uXm_COMPILER_INTRIN 60
# endif
#elif (defined(__GNUC__) || defined(__GCC__) || defined(__SNC__)) && !defined(__clang__) && !defined(__INTEL_COMPILER) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
# if defined(__GNUC__)
#       define uXm_GNUC 1
# endif
# if  defined(__GCC__)
#       define uXm_GCC 1
# endif
# if  defined(__SNC__)
#       define uXm_SNC 1
# endif
#       define uXm_COMPILER "GNUC " uXm_Stringer(__GNUC__) "." uXm_Stringer(__GNUC_MINOR__)
# if defined(__GNUC__) && (((__GNUC__ >=4) && (__GNUC_MINOR__ >=9)) || (__GNUC__ >=5))
#       define uXm_COMPILER_INTRIN 60
# endif
#elif defined(__xlc__) || defined(__xlC__) || defined(__IBMC__) || defined(__IBMCPP__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#       define uXm_IBMC 1
#       define uXm_IBM_COMPILER 1
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "ibmc"
#       define uXm_COMPILER "IBMC " uXm_Stringer(__IBMC__) "." uXm_Stringer(__IBMC_MINOR__)
#elif defined(__PGI) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#       define uXm_PGI 1
#       define uXm_PGI_COMPILER 1
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "pgi"
#       define uXm_COMPILER "PGI " uXm_Stringer(__PGI__) "." uXm_Stringer(__PGI_MINOR__)
#elif defined(__APPLE_CC__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#       define uXm_APPLECC 1
#       define uXm_APPLE_COMPILER 1
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "applecc"
#       define uXm_COMPILER "APPLECC " uXm_Stringer(__APPLE_CC__) "." uXm_Stringer(__APPLE_CC_MINOR__)
#elif defined(__BORLANDC__) || defined(__CODEGEARC__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#       define uXm_BORLAND 1
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "borland"
#       define uXm_COMPILER "EMBARCADERO " uXm_Stringer(__BORLANDC__) "." uXm_Stringer(__BORLANDC_MINOR__)
#elif defined(__PATHCC__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#       define uXm_PATHCC 1
#       define uXm_PATHCC_COMPILER 1
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "pathscale"
#       define uXm_COMPILER "Pathscale " uXm_Stringer(__PATHCC__) "." uXm_Stringer(__PATHCC_MINOR__)
#elif defined(__ghs__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#       define uXm_GHS 1
#elif defined(__CC_ARM) || defined(__ARMCC__)
#       define uXm_ARMCC 1
#       define uXm_ARM_COMPILER 1
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "armcc"
#       define uXm_COMPILER "ARMCC " uXm_Stringer(__ARMCC__) "." uXm_Stringer(__ARMCC_MINOR__)
#elif defined(__MWERKS__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#       define uXm_MWERKS 1
#elif defined(__CUDA_ARCH__) || defined(__CUDACC__)
#       define uXm_CUDA 1
#       define uXm_CUDACC 1
#       define uXm_CUDA_COMPILER 1
#  if defined(_MSC_VER)
#       define uXm_CUDAW 1 /* Nvidia Cuda compiler for Windows */
#  else
#       define uXm_CUDAU 1 /* Nvidia Cuda compiler for Unix */
#  endif
#undef uXm_COMPILER_STR
#       define uXm_COMPILER_STR "cudacc"
#       define uXm_COMPILER "Nvidia Cuda Compiler " uXm_Stringer(__CUDACC__) "." uXm_Stringer(__CUDACC_MINOR__)
#else
# error ERROR: Unknown compiler
# error ERROR: Compiler needs to be implemented
#endif

#if defined(uXm_VC) || defined(uXm_ICW) /*|| defined(uXm_CLANGW) incompatible types definitions*/
#       define uXm_MSVC_COMPATIBLE_COMPILER 1
#endif

#if defined(uXm_GNUC) || defined(uXm_GCC) || defined(uXm_SNC) || defined(uXm_ICU) || defined(uXm_CLANGU) || defined(uXm_ARMCC) || defined(uXm_GHS)
#       define uXm_GCC_COMPATIBLE_COMPILER 1
#endif

#if defined(uXm_MSVC_COMPATIBLE_COMPILER)
#		define uXm_MSVC_TYPE_ALIGNMENT 1
#		define uXm_COMPILER_SUPPORTS_TBB 1
#		define uXm_COMPILER_SUPPORTS_PPL 1
#elif defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(uXm_IBMC) || defined(uXm_APPLECC)
#		define uXm_GNUC_TYPE_ALIGNMENT 1
#		define uXm_COMPILER_SUPPORTS_TBB 1
#endif

#if defined(__pic__) || defined(__PIC__)
#       define uXm_PIC 1
#endif

////////////////////////////////////////////////////////////////////////////
// Arch type :
//
//			1 32-bits x86
//			2 64-bits x86_64
//			3 Xbox 360
//			4 ps3
//			5 wiiu
//			6 ppc
//			7 ppc64
//			8 arm32bits
//			9 arm64bits
#       define uXm_ARCH 0

#		define uXm_ENDIAN_LITTLE 0
#		define uXm_ENDIAN_BIG	0

/* CUDA targets must be detected first as nvcc also predefined gcc macros for CPU architecture */
#if defined(__CUDA_ARCH__) || defined(__CUDACC__)
#		define uXm_CUDA_GPU 1
#elif (defined(_M_IX86) || defined(_WIN32) || defined(__i386__) || defined(i386) || defined(__i386) || defined(_X86_) || defined(__X86__) \
	|| defined(__I86__) || defined(__INTEL__) || defined(__THW_INTEL__))  && !defined(_WIN64) && ! defined(_M_ARM) && !defined(_ARM) && !defined(__KNC__) && !defined(__MIC__)
#		define uXm_X86 1
#		define uXm_X86_CPU 1
#		define uXm_X86_ABI 1
#		define uXm_ARCH_X86 1
#		define uXm_PLATFORM_X86 1
#undef uXm_ENDIAN_LITTLE
#		define uXm_ENDIAN_LITTLE 1
#		define uXm_POINTER_SIZE 4
#		define uXm_SIZE_T_SIZE 4
#		define uXm_INTRINSICS 1
#		define uXm_ARCH_SUPPORTS_INT64 1
#		define uXm_NUM_SIMD_REGISTERS 8
#		define uXm_ARCH_STR "x86"
#undef uXm_ARCH
#		define uXm_ARCH 1
# elif defined(_M_X64) || defined(_M_AMD64) || defined(_WIN64) || defined(__amd64__) || defined(__amd64) || defined(__x86_64) || defined(__x86_64__) || defined(__LP64__) && !defined(__KNC__) && !defined(__MIC__)
#       define uXm_X64 1
#       define uXm_X64_CPU 1
#		define uXm_X64_ABI 1
#		define uXm_ARCH_X64 1
#undef uXm_ENDIAN_LITTLE
#		define uXm_ENDIAN_LITTLE 1
#		define uXm_POINTER_SIZE 8
#		define uXm_SIZE_T_SIZE 8
#		define uXm_INTRINSICS 1
#		define uXm_ARCH_SUPPORTS_DOUBLE 1
#		define uXm_ARCH_SUPPORTS_INT64 1
#		define uXm_NUM_SIMD_REGISTERS 16
#undef uXm_ARCH
#		define uXm_ARCH 2
#	if defined(__ORBIS__)
#		define uXm_PS4 1
#		define uXm_ARCH_PS4 1
#		define uXm_PLATFORM_PS4 1
#		define uXm_PLATFORM_IS_CONSOLE 1
#		define uXm_ARCH_STR "PS4"
#	elif defined(_XBOX_ONE)
#		define uXm_XBOXONE 1
#		define uXm_ARCH_XBOXONE 1
#		define uXm_PLATFORM_XBOXONE 1
#		define uXm_PLATFORM_IS_CONSOLE 1
#		define uXm_ARCH_STR "XBOXOne"
#	else
#		define uXm_ARCH_STR "x64"
#	endif
#		define uXm_PLATFORM_X64 1
#elif  defined(__KNC__) || defined(__MIC__) || defined(uXm_MIC)
#  ifndef uXm_MIC
#		define uXm_MIC 1 /* Intel MIC or Xeon Phi architecture */
#  endif
#		define uXm_MIC_ARCH 1 /* Intel MIC or Xeon Phi architecture */
#		define uXm_PLATFORM_MIC 1
# if defined(_M_IX86) /*|| defined(_WIN32)*/ || defined(__i386__) || defined(i386) || defined(__i386) || defined(_X86_) || defined(__X86__) || defined(__I86__)
# error ERROR: Unavailable for Intel Intel® Xeon Phi™ builds.
# error ERROR: Solutions/projects targeting the Intel® Xeon Phi™ coprocessor are limited to using the x64 Debug | Release configuration.
# error ERROR: Please change your build enviroment to X64 builds.
/*
#		define uXm_X86 1
#		define uXm_X86_ABI 1
#		define uXm_ARCH_X86 1
#		define uXm_PLATFORM_X86 1
#undef uXm_ENDIAN_LITTLE
#		define uXm_ENDIAN_LITTLE 1
#		define uXm_POINTER_SIZE 4
#		define uXm_SIZE_T_SIZE 4
#		define uXm_INTRINSICS 1
#		define uXm_NUM_SIMD_REGISTERS 16
#		define uXm_ARCH_STR "x86"
#undef uXm_ARCH
#		define uXm_ARCH 1*/
# elif defined(_M_X64) || defined(_M_AMD64) || defined(_WIN64) || defined(__amd64__) || defined(__amd64) || defined(__x86_64) || defined(__x86_64__) || defined(__LP64__)
#       define uXm_X64 1
#       define uXm_X64_CPU 1
#		define uXm_X64_ABI 1
#		define uXm_ARCH_X64 1
#undef uXm_ENDIAN_LITTLE
#		define uXm_ENDIAN_LITTLE 1
#		define uXm_POINTER_SIZE 8
#		define uXm_SIZE_T_SIZE 8
#		define uXm_INTRINSICS 1
#		define uXm_ARCH_SUPPORTS_DOUBLE 1
#		define uXm_ARCH_SUPPORTS_INT64 1
#		define uXm_NUM_SIMD_REGISTERS 32
#		define uXm_ARCH_STR "x64"
#		define uXm_PLATFORM_X64 1
#undef uXm_ARCH
#		define uXm_ARCH 2
# endif
#elif defined(_M_IA64) || defined(__itanium__) || defined(__ia64) || defined(__ia64__) || defined(_IA64) || defined(__IA64__)
#		define uXm_IA64 1
#		define uXm_ARCH_IA64 1
#		define uXm_IA64_ABI 1
#elif defined(_M_PPC) || defined(_M_PPCBE) || defined(_PPC_) || defined(__ppc__) || defined(__POWERPC__) || defined(GEKKO) || defined(EPPC) || defined(__PPCGEKKO__) || defined(__powerpc) || defined(__powerpc__)
#		define uXm_PPC 1
#		define uXm_PPC32 1
#		define uXm_PPC_ABI 1
#		define uXm_PPC32_ABI 1
#		define uXm_ARCH_PPC 1
#		define uXm_ARCH_PPC32 1
#		define uXm_PLATFORM_PPC 1
#		define uXm_PLATFORM_PPC32 1
#if defined(__VEC__) || defined(__ALTIVEC__)
#		define uXm_ALTIVEC 1
#		define uXm_VMX 1
#endif
#		define uXm_INTRINSICS 1
#undef uXm_ENDIAN_BIG
#		define uXm_ENDIAN_BIG	1
#		define uXm_POINTER_SIZE 4
#		define uXm_SIZE_T_SIZE 4
#		define uXm_ARCH_SUPPORTS_DOUBLE 1
#		define uXm_ARCH_SUPPORTS_INT64 1
#		define uXm_NUM_SIMD_REGISTERS 8
#undef uXm_ARCH
#		define uXm_ARCH 6
#  if defined(uXm_VC) && defined(_M_PPCBE)
#		define uXm_XBOX360 1
#		define uXm_VMX
#		define uXm_VMX128X360 1
#		define uXm_ARCH_X360 1
#       define uXm_PLATFORM_XBOX360 1
#		define uXm_PLATFORM_IS_CONSOLE 1
#		define uXm_ARCH_STR "X360"
#undef uXm_ARCH
#		define uXm_ARCH 3
#  elif defined(CAFE) || defined(uXm_GHS)
#	include <cafe.h>
#	include <ppc_ghs.h> // allow use of intrinsics throughout code
#		define uXm_WIIU 1
#		define uXm_ARCH_WIIU 1
#		define uXm_PLATFORM_WIIU 1
#		define uXm_ENABLE_PAIRED_SINGLE_OPTS 1
#		define uXm_VECTOR_PARTS_MUST_BE_VALID 1
#		define uXm_PLATFORM_IS_CONSOLE 1
#		define uXm_ARCH_STR "WIIU"
#undef uXm_ARCH
#		define uXm_ARCH  5
#  elif defined(GEKKO) || defined(__PPCGEKKO__) //Also have custom added uXm_REVOLUTION compiler switch
#		define uXm_GEKKO 1
#		define uXm_ARCH_GEKKO 1
#		define uXm_PLATFORM_GEKKO 1
#	if defined(RVL_OS)
#		define uXm_ENABLE_PAIRED_SINGLE_OPTS 1
#		define uXm_ARCH_RVL 1
#		define uXm_PLATFORM_RVL 1
#	endif
#		define uXm_PLATFORM_IS_CONSOLE 1
#  endif
#elif defined(__ppc64__) || defined(__PPC64__) || defined(_ARCH_PPC64) || defined(__powerpc64__)
#       define uXm_PPC 1
#		define uXm_PPC64 1
#		define uXm_PPC_ABI 1
#		define uXm_PPC64_ABI 1
#		define uXm_ARCH_PPC 1
#		define uXm_ARCH_PPC64 1
#		define uXm_PLATFORM_PPC 1
#		define uXm_PLATFORM_PPC64 1
#if defined(__VEC__) || defined(__ALTIVEC__)
#		define uXm_ALTIVEC 1
#		define uXm_VMX 1
#endif
#		define uXm_INTRINSICS 1
#undef uXm_ENDIAN_BIG
#		define uXm_ENDIAN_BIG	1
#		define uXm_POINTER_SIZE 4
#		define uXm_SIZE_T_SIZE 4
#		define uXm_ARCH_SUPPORTS_DOUBLE 1
#		define uXm_ARCH_SUPPORTS_INT64 1
#		define uXm_NUM_SIMD_REGISTERS 8
#undef uXm_ARCH
#		define uXm_ARCH 7
#elif defined(__sparc__) || defined(__sparc)
#		define uXm_SPARC 1
#		define uXm_ARCH_SPARC 1
#		define uXm_SPARC_ABI 1
#elif defined(_M_MRX000) || defined(_MIPS_) || defined(_MIPS64) || defined(__mips__) || defined(__mips) || defined(__MIPS__)
#		define uXm_MIPS 1
#		define uXm_ARCH_MIPS 1
#  if defined(__mips) && (__mips == 64)
#		define uXm_MIPS64_ABI 1
#  else
#		define uXm_MIPS32_ABI 1
#  endif
#elif defined(__PPU__) && defined(__CELLOS_LV2__)
#		define uXm_PS3 1
#		define uXm_PS3_PPU 1
#		define uXm_PPU 1
#		define uXm_ARCH_PS3 1
#		define uXm_ARCH_PS3_PPU 1
#		define uXm_PLATFORM_PS3 1
#		define uXm_VMX 1
#		define uXm_VMX128PS3 1
#		define uXm_INTRINSICS 1
#undef uXm_ENDIAN_BIG
#		define uXm_ENDIAN_BIG	1
#		define uXm_POINTER_SIZE 4
#		define uXm_SIZE_T_SIZE 4
#		define uXm_ARCH_SUPPORTS_DOUBLE 1
#		define uXm_ARCH_SUPPORTS_INT64
#		define uXm_NUM_SIMD_REGISTERS 32
#		define uXm_PLATFORM_IS_CONSOLE 1
#		define uXm_ARCH_STR "PS3"
#undef uXm_ARCH
#		define uXm_ARCH 4
#elif defined(__SPU__) && defined(__CELLOS_LV2__)
#		define uXm_PS3 1
#		define uXm_PS3_SPU 1
#		define uXm_SPU 1
#		define uXm_ARCH_PS3 1
#		define uXm_ARCH_PS3_SPU 1
#		define uXm_PLATFORM_PS3 1
#		define uXm_SPU128PS3 1
#		define uXm_INTRINSICS 1
#undef uXm_ENDIAN_BIG
#		define uXm_ENDIAN_BIG	1
#		define uXm_POINTER_SIZE 4
#		define uXm_SIZE_T_SIZE 4
#		define uXm_ARCH_SUPPORTS_INT64 1
#		define uXm_NUM_SIMD_REGISTERS 128
#		define uXm_PLATFORM_IS_CONSOLE 1
#		define uXm_ARCH_STR "PS3"
#undef uXm_ARCH
#		define uXm_ARCH 4
#elif defined(_M_ARM) || defined(_M_ARMT) || defined(__arm__) || defined(arm) || defined(__aarch64__) ||  defined(__thumb__) || defined(__arm) || defined(_ARM)
#		define uXm_ARM 1
#		define uXm_ARM_ABI 1
#		define uXm_ARCH_ARM 1
//////////////////////////////////////////////////////////////////////////
// uXm_ARM_ARCH_PROF :
//						1-A
//						2-R
//						3-M
#  if defined(__ARM_ARCH_9A__) || defined(__ARM_ARCH_9__) || defined(__ARM_ARCH_9R__) || defined (__ARM_ARCH_9M__) || defined(__ARM_ARCH_9S__) || ( defined(_M_ARM) && (_M_ARM >= 9) ) || (defined(__ARM_ARCH) && (__ARM_ARCH >= 9) )
#       define uXm_ARCH_ARM_V9 1
#       define uXm_ARCH_ARM_VSET 9
#   if defined(__ARM_ARCH_9A__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == A))
#		define uXm_ARM_ARCH_PROF_A 1
#		define uXm_ARM_ARCH_PROF 1
#  endif
#   if defined(__ARM_ARCH_9R__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == R))
#		define uXm_ARM_ARCH_PROF_R 1
#		define uXm_ARM_ARCH_PROF 2
#  endif
#   if defined(__ARM_ARCH_9M__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == M))
#		define uXm_ARM_ARCH_PROF_M 1
#		define uXm_ARM_ARCH_PROF 3
#  endif
#  elif defined(__ARM_ARCH_8A__) || defined(__ARM_ARCH_8__) || defined(__ARM_ARCH_8R__) || defined (__ARM_ARCH_8M__) || defined(__ARM_ARCH_8S__) || ( defined(_M_ARM) && (_M_ARM >= 8) ) || (defined(__ARM_ARCH) && (__ARM_ARCH >= 8) )
#       define uXm_ARCH_ARM_V8 1
#       define uXm_ARCH_ARM_VSET 8
#   if defined(__ARM_ARCH_8A__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == A))
#		define uXm_ARM_ARCH_PROF_A 1
#		define uXm_ARM_ARCH_PROF 1
#  endif
#   if defined(__ARM_ARCH_8R__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == R))
#		define uXm_ARM_ARCH_PROF_R 1
#		define uXm_ARM_ARCH_PROF 2
#  endif
#   if defined(__ARM_ARCH_8M__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == M))
#		define uXm_ARM_ARCH_PROF_M 1
#		define uXm_ARM_ARCH_PROF 3
#  endif
#  elif defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__) || defined(__ARM_ARCH_7R__) || defined (__ARM_ARCH_7M__) || defined(__ARM_ARCH_7S__) || ( defined(_M_ARM) && (_M_ARM >= 7) ) || (defined(__ARM_ARCH) && (__ARM_ARCH >= 7) )
#       define uXm_ARCH_ARM_V7 1
#       define uXm_ARCH_ARM_VSET 7
#   if defined(__ARM_ARCH_7A__) || defined(_M_ARM) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == A))
#		define uXm_ARM_ARCH_PROF_A 1
#		define uXm_ARM_ARCH_PROF 1
#  endif
#   if defined(__ARM_ARCH_7R__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == R))
#		define uXm_ARM_ARCH_PROF_R 1
#		define uXm_ARM_ARCH_PROF 2
#  endif
#   if defined(__ARM_ARCH_7M__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == M))
#		define uXm_ARM_ARCH_PROF_M 1
#		define uXm_ARM_ARCH_PROF 3
#  endif
#  elif defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_6J__) || defined(__ARM_ARCH_6K__) || defined(__ARM_ARCH_6Z__) || defined(__ARM_ARCH_6ZK__) || defined(__ARM_ARCH_6T2__) || defined(NN_PROCESSOR_ARM) || defined(NN_PROCESSOR_ARM_V6) || ( defined(_M_ARM) && (_M_ARM < 7) ) || (defined(__ARM_ARCH) && (__ARM_ARCH >= 6) )
#       define uXm_ARCH_ARM_V6 1
#       define uXm_ARCH_ARM_VSET 6
#  else
#		error ERROR: Unexpected ARM arch
#  endif
#  if defined(_M_ARM_FP)
#  endif
#  if defined(__ARMEB__)
#undef uXm_ENDIAN_BIG
#	   define uXm_ENDIAN_BIG	1
#  else
#undef uXm_ENDIAN_LITTLE
#	   define uXm_ENDIAN_LITTLE 1
#  endif
#  if (defined(uXm_ARCH_ARM_VSET) && (uXm_ARCH_ARM_VSET >= 8)) && defined(__aarch64__) && defined(uXm_ARM_ARCH_PROF_A)
#		define uXm_ARCH_A64 1
#		define uXm_A64 1
#		define uXm_A64_CPU 1
#undef uXm_ARCH
#		define uXm_ARCH 9
#		define uXm_PLATFORM_A64 1
#		define uXm_ARM_ABI64 1
#		define uXm_POINTER_SIZE 8
#		define uXm_SIZE_T_SIZE 8
#		define uXm_ARCH_SUPPORTS_DOUBLE 1
#		define uXm_ARCH_SUPPORTS_INT64 1
#		define uXm_NUM_SIMD_REGISTERS 16
#		define uXm_ARCH_STR "Arm64"
#undef uXm_ENDIAN_LITTLE
#	   define uXm_ENDIAN_LITTLE 1
#  elif defined(__arm__) || (defined(_M_ARM) && (_M_ARM >= 7)) && defined(uXm_ARM_ARCH_PROF_A)
#		define uXm_ARCH_A32 1
#		define uXm_A32 1
#		define uXm_A32_CPU 1
#undef uXm_ARCH
#		define uXm_ARCH 8
#		define uXm_PLATFORM_A32 1
#		define uXm_ARM_ABI32 1
#		define uXm_POINTER_SIZE 4
#		define uXm_SIZE_T_SIZE 4
#		define uXm_ARCH_SUPPORTS_INT64 1
#		define uXm_NUM_SIMD_REGISTERS 8
#		define uXm_ARCH_STR "Arm32"
#   if defined(__ARMEB__)
#undef uXm_ENDIAN_BIG
#	   define uXm_ENDIAN_BIG	1
#   else
#undef uXm_ENDIAN_LITTLE
#	   define uXm_ENDIAN_LITTLE 1
#   endif
#  else
#		error ERROR: Unexpected ARM platform arch or not implemented yet
#  endif

#  if defined(uXm_SNC)
#		define uXm_PSP2 1
#		define uXm_ARCH_PSP2 1
#		define uXm_PLATFORM_PSP2 1
#		define uXm_PSVITA 1
#		define uXm_ARCH_PSVITA 1
#       define uXm_PLATFORM_PSVITA 1
#		define uXm_PLATFORM_IS_CONSOLE 1
#undef uXm_ARCH_STR
#		define uXm_ARCH_STR "PSVITA"
#  endif
#		define uXm_INTRINSICS 1
#elif defined(__OPENCL_VERSION__)
#		define uXm_OPENCL_DEVICE 1
#  if defined(__CPU__)
#		define uXm_OPENCL_CPU 1
#  elif defined(__GPU__)
#		define uXm_OPENCL_GPU 1
#  endif
#else
#		error ERROR: Unknown platform
#endif

#if defined(_WINDOWS) || defined(_WIN32) || defined(_WIN64) || defined(_M_ARM) || defined(_XBOX_ONE) || defined(_M_PPC)

// Exclude rarely-used stuff from Windows headers
#ifndef VC_EXTRALEAN
#define VC_EXTRALEAN
#endif
#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif
#ifndef NOMINMAX
#define NOMINMAX
#endif
#ifndef STRICT
#define STRICT
#endif

#ifndef _WINDOWS_
# pragma warning( push )
#if __INTEL_COMPILER
# pragma warning( disable: 271 310 )
#elif defined(_MSC_VER)
//#include "Runtime/Core/Public/Windows/AllowWindowsPlatformTypes.h"
#pragma warning(disable : 4005)
#endif
#pragma pack(push)
#pragma pack(8)
# include <windows.h>
#pragma pack (pop)
# pragma warning( pop )
//#include "Runtime/Core/Public/Windows/HideWindowsPlatformTypes.h"
#endif

#endif

/**
Platform define
*/

#if defined(uXm_VC) && (defined(uXm_PC_APP) || defined(uXm_ARM_PC_APP) || defined(uXm_DESKTOP_APP) || defined(_WIN32) || defined(_WINDOWS) \
	|| defined(_WIN32_WCE) || defined(WIN32_PLATFORM_HPC2000) || defined(WIN32_PLATFORM_HPCPRO) || defined(WIN32_PLATFORM_PSPC) || defined(WIN32_PLATFORM_WFSP)) && !defined(__INTEL_COMPILER)
#  if defined(_WIN32_WCE) || defined(WIN32_PLATFORM_HPC2000) || defined(WIN32_PLATFORM_HPCPRO) || defined(WIN32_PLATFORM_PSPC) || defined(WIN32_PLATFORM_WFSP)
#		define uXm_WINDOWSCE 1
#		define uXm_WINDOWSCE_OS 1
#  else
#		define uXm_WINDOWS 1
#		define uXm_WINDOWS_OS 1
#  endif
# if defined(WINAPI_FAMILY) && ((WINAPI_FAMILY==WINAPI_FAMILY_APP) || (WINAPI_FAMILY==WINAPI_FAMILY_PHONE_APP))
#		define uXm_PLATFORM_WINRT 1
#   if (defined(WINAPI_FAMILY) && (WINAPI_FAMILY == WINAPI_FAMILY_PC_APP))
#	  if defined(uXm_ARM)
#		define uXm_ARM_PC_APP
/*#		define uXm_ARCH_STR "Arm"*/
#		define uXm_FAMILY_STR "Store"
/*#		define uXm_ARCH "Arm"*/
#	  else
#		define uXm_PC_APP 1
#		define uXm_FAMILY_STR "Store"
#	  endif
#	endif
#   if (defined(WINAPI_FAMILY) && (WINAPI_FAMILY == WINAPI_FAMILY_PHONE_APP))
#		define uXm_WINDOWS_PHONE 1
#		define uXm_PHONE_APP 1
#       define uXm_PLATFORM_WIN_PHONE 1
#		define uXm_FAMILY_STR "Windows Phone"
#		define uXm_PLATFORM_IS_CONSOLE 1
#	endif
# elif defined(WINAPI_FAMILY) && (WINAPI_FAMILY == WINAPI_FAMILY_DESKTOP_APP)
#		define uXm_DESKTOP_APP 1
/*#		define uXm_ARCH*/
#		define uXm_FAMILY_STR ""
# endif
#elif (defined(_MSC_VER) && defined(__INTEL_COMPILER)) && (defined(_WIN32) || defined(_WINDOWS) || defined(uXm_DESKTOP_APP) || (defined(__KNC__) || defined(__MIC__)))
# if defined(__KNC__) || defined(__MIC__) || defined(uXm_MIC)
#		define uXm_UNIX 1
#		define uXm_UNIX_OS 1
# else
#		define uXm_WINDOWS 1
#		define uXm_WINDOWS_OS 1
# endif
#elif defined(__APPLE_CC__)
#   include <TargetConditionals.h> // Specific to the current SDK, in usr\include
#   	define uXm_APPLE 1
#   	define uXm_UNIX 1
#	if defined( uXm_ARCH_X86 )
#     if defined(TARGET_IPHONE_SIMULATOR) && TARGET_IPHONE_SIMULATOR
#			define uXm_IOS 1
#			define uXm_ARCH_IOS 1
#			define uXm_PLATFORM_IOS 1
#			define uXm_PLATFORM_IS_CONSOLE 1
#           define uXm_APPLE_IOS 1
#           define uXm_APPLE_IOS_SIM 1
#undef uXm_ARCH_STR
#			define uXm_ARCH_STR "IOSim"
/*#			define uXm_ARCH "IOSim"*/
#     else
#			define uXm_MAC386 1
#			define uXm_ARCH_MAC386 1
#			define uXm_PLATFORM_MAC386 1
#		    define uXm_APPLE_MAC386 1
#undef uXm_ARCH_STR
#			define uXm_ARCH_STR "Mac386"
/*#			define uXm_ARCH "Mac386"*/
#     endif
#   elif (defined(__APPLE__) && defined(__MACH__)) || defined(TARGET_OS_MAC)
#			define uXm_MACOSX 1
#			define uXm_MACOSX_OS 1
#			define uXm_ARCH_MACOSX 1
#			define uXm_PLATFORM_MACOSX 1
#			define uXm_APPLE_MACOSX 1
#undef uXm_ARCH_STR
#			define uXm_ARCH_STR "MACOSX"
/*#			define uXm_ARCH "OSX"*/
#	elif defined(uXm_PPC)
#			define uXm_MACPPC 1
#			define uXm_ARCH_MACPPC 1
#			define uXm_PLATFORM_MACPPC 1
#			define uXm_APPLE_MACPPC 1
#undef uXm_ARCH_STR
#			define uXm_ARCH_STR "Macppc"
/*#			define uXm_ARCH "Macppc"*/
#   elif defined(uXm_ARM) // iPhone /iPod Touch/ iPad
#			define uXm_IOS 1
#			define uXm_ARCH_IOS 1
#			define uXm_PLATFORM_IOS 1
#			define uXm_APPLE_IOS 1
#			define uXm_PLATFORM_IS_CONSOLE 1
#undef uXm_ARCH_STR
#			define uXm_ARCH_STR "IOS"
/*#			define uXm_ARCH "IOS"*/
#	endif
#elif (defined(__INTEL_COMPILER) && defined(__GNUC__)) || (defined(__GNUC__) || defined(__GCC__)) && (defined(__unix__) || defined(__linux__) || defined(__linux) \
	|| defined(linux) || defined(__CYGWIN__) || defined(ANDROID_NDK) || defined(ANDROID) || defined(NDK) || defined(__ANDROID_API__) || defined(__ANDROID__))
#	if defined(ANDROID_NDK) || defined(ANDROID) || defined(NDK) || defined(__ANDROID_API__) || defined(__ANDROID__)
#		define uXm_ANDROID 1
#		define uXm_ANDROID_OS 1
#		define uXm_ANDROID_LINUX_OS 1
#		define uXm_ARCH_ANDROID 1
#		define uXm_PLATFORM_ANDROID 1
#		define uXm_PLATFORM_IS_CONSOLE 1
#   	define uXm_UNIX 1
#  elif defined(__linux__) || defined(__linux) || defined(linux) || defined(unix) || defined(__unix__) || defined(__unix) || defined(__bg__)
#	 if defined(__linux__) || defined(__linux) || defined(linux)
#   	define uXm_LINUX 1
#   	define uXm_LINUX_OS
#    elif defined(__gnu_linux__)
#   	define uXm_LINUX 1
#		define uXm_GNU_LINUX_OS
#	 elif defined(__bg__)
#   	define uXm_LINUX 1
#		define uXm_CNK_LINUX_OS
#    elif defined(unix) || defined(__unix__) || defined(__unix)
#   	define uXm_UNIX 1
#   	define uXm_UNIX_OS 1
#    endif
#    if defined(__native_client__) || defined(__nacl__) || defined(NACL)
#		define uXm_NACL 1
#		define uXm_PLATFORM_NACL 1
#		undef uXm_POINTER_SIZE
#		define uXm_POINTER_SIZE 4 // always 4 in NaCl
#		undef uXm_SIZE_T_SIZE
#		define uXm_SIZE_T_SIZE 4 // always 4 in NaCl
#    endif
#  elif defined(__CYGWIN__)
#   	define uXm_CYGWIN 1
#   	define uXm_LINUX 1
#   	define uXm_UNIX 1
#  endif
#elif defined(__CTR__) || defined(NN_PLATFORM_CTR)
#		define uXm_CTR 1
#		define uXm_ARCH_ANDROID 1
#		define uXm_PLATFORM_CTR 1
#		define uXm_PLATFORM_IS_CONSOLE 1
#endif

#if (defined(uXm_X86_CPU) || defined(uXm_X64_CPU))
#		define uXm_X86_OR_X64_CPU 1			 /* x86 or x64 cpu*/
#		define uXm_X86_OR_X64_ABI 1			 /* x86 or x64 cpu*/
#elif (defined(uXm_A32) || defined(uXm_A64))
#		define uXm_A32_OR_A64_CPU 1			 /* ARM 32bits or 64bits cpu */
#		define uXm_A32_OR_A64_ABI 1			 /* ARM 32bits or 64bits cpu */
#elif (defined(uXm_PPC32) || defined(uXm_PPC64))
#		define uXm_PPC32_OR_PPC64_CPU 1		 /* PPC 32bits or 64bits cpu */
#		define uXm_PPC32_OR_PPC64_ABI 1		 /* PPC 32bits or 64bits cpu */
#endif

#if (defined(uXm_X64_CPU)) && (defined(__KNC__) || defined(__MIC__))
#		define uXm_XEON_PHI_SYSTEM 1
#elif defined(uXm_PPC) && defined(__bgq__)
#		define uXm_BLUEGENE_SYSTEM 1
#		define uXm_BLUEGENE_Q_SYSTEM 1
#elif defined(uXm_PPC) && defined(__bgp__)
#		define uXm_BLUEGENE_SYSTEM 1
#		define uXm_BLUEGENE_P_SYSTEM 1
#elif defined(uXm_PPC) && defined(__bg__)
#		define uXm_BLUEGENE_SYSTEM 1
#endif

#if defined(uXm_X86_OR_X64_CPU)
#       define uXm_ARCH_SUPPORTS_TBB 1
#       define uXm_ARCH_SUPPORTS_PPL 1
# elif defined(uXm_A32_OR_A64_CPU)
#       define uXm_ARCH_SUPPORTS_TBB 1
#       define uXm_ARCH_SUPPORTS_PPL 1
#	elif defined(uXm_XEON_PHI_SYSTEM)
#       define uXm_ARCH_SUPPORTS_TBB 1
#endif

// Disables all the alignments
// #       define uXm_NO_ALIGN 1

#if defined(uXm_NO_ALIGN)
#       define uXm_FLOATS_NO_ALIGN 1
#       define uXm_INTRINSICS_NO_ALIGN 1
#       define uXm_STDVEC_NO_ALIGN 1
#       define uXm_AMPVEC_NO_ALIGN 1
#       define uXm_CUDAVEC_NO_ALIGN 1
#       define uXm_REAL_NO_ALIGN 1

#       define uXm_STDCONSTVEC_NO_ALIGN 1

#       define uXm_NO_ALIGN_MATH_CONST 1

#       define uXm_NO_ALIGN_INTRIN_CONST 1

# if defined(uXm_NO_ALIGN_MATH_CONST)
#       define uXm_NO_ALIGN_MATH_MARKED_CONST 1
#       define uXm_NO_ALIGN_MATH_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_MATH_64_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_MATH_128_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_MATH_256_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_MATH_512_INITIALIZED_CONST 1
# else
// #       define uXm_NO_ALIGN_MATH_MARKED_CONST 1
// #       define uXm_NO_ALIGN_MATH_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_MATH_64_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_MATH_128_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_MATH_256_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_MATH_512_INITIALIZED_CONST 1
# endif

# if defined(uXm_NO_ALIGN_INTRIN_CONST)
#       define uXm_NO_ALIGN_INTRIN_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_INTRIN_64_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_INTRIN_128_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_INTRIN_256_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_INTRIN_512_INITIALIZED_CONST 1
# else
// #       define uXm_NO_ALIGN_INTRIN_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_INTRIN_64_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_INTRIN_128_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_INTRIN_256_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_INTRIN_512_INITIALIZED_CONST 1
# endif

#else
// uncomment if required
// #       define uXm_FLOATS_NO_ALIGN 1
// #       define uXm_INTRINSICS_NO_ALIGN 1
// #       define uXm_STDVEC_NO_ALIGN 1
// #       define uXm_AMPVEC_NO_ALIGN 1
// #       define uXm_AMPVEC_NO_ALIGN 1
// #       define uXm_REAL_NO_ALIGN 1
// #       define uXm_NO_ALIGN_MATH_CONST 1
// #       define uXm_NO_ALIGN_INTRIN_CONST 1

// #       define uXm_STDCONSTVEC_NO_ALIGN 1

# if defined(uXm_NO_ALIGN_MATH_CONST)
#       define uXm_NO_ALIGN_MATH_MARKED_CONST 1
#       define uXm_NO_ALIGN_MATH_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_MATH_64_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_MATH_128_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_MATH_256_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_MATH_512_INITIALIZED_CONST 1
# else
// #       define uXm_NO_ALIGN_MATH_MARKED_CONST 1
// #       define uXm_NO_ALIGN_MATH_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_MATH_64_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_MATH_128_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_MATH_256_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_MATH_512_INITIALIZED_CONST 1
# endif

# if defined(uXm_NO_ALIGN_INTRIN_CONST)
#       define uXm_NO_ALIGN_INTRIN_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_INTRIN_64_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_INTRIN_128_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_INTRIN_256_INITIALIZED_CONST 1
#       define uXm_NO_ALIGN_INTRIN_512_INITIALIZED_CONST 1
# else
// #       define uXm_NO_ALIGN_INTRIN_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_INTRIN_64_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_INTRIN_128_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_INTRIN_256_INITIALIZED_CONST 1
// #       define uXm_NO_ALIGN_INTRIN_512_INITIALIZED_CONST 1
# endif

#endif  // uXm_NO_ALIGN

// Disable Intrinsics in all platforms
// #       define uXm_NO_INTRINSICS 1

#if defined(uXm_VC) && (_MSC_FULL_VER >= 190023506)
#       define uXm_CONSTEXPR_SUPPORT 1
#endif

#if defined(uXm_VC) && (_MSC_VER >= 1800)
#       define uXm_DEFAULT_CTOR_SUPPORT 1
#endif

#if (defined(uXm_VC) && (_MSC_VER >= 1700) && (defined(uXm_PC_APP) || defined(uXm_DESKTOP_APP))) && !defined(uXm_PHONE_APP) && !defined(__INTEL_COMPILER) && !defined(uXm_CLANG) && !defined(uXm_CUDACC)
#       define uXm_AMPCC 1
#endif

// Disable AMP Computing
// #       define uXm_NO_AMP 1
#if !defined(uXm_AMPCC)
#       define uXm_NO_AMP 1
#elif defined(uXm_AMPCC) && !defined(uXm_NO_AMP)
# ifndef uXm_AMP_CC
#       define uXm_AMP_CC 1
# endif
#endif

#if defined(__INTEL_COMPILER) && (__INTEL_COMPILER >= 1500)
#		define uXm_INTELCC_GFX 1
#		define uXm_INTEL_GFX_GPU 1
# else
#		define uXm_NO_INTELCC_GFX 1
#		define uXm_NO_INTEL_GFX_GPU 1
#endif

// Disable CUDA Computing
// #       define uXm_NO_CUDA 1
#if !defined(uXm_CUDACC)
#       define uXm_NO_CUDA 1
#elif defined(uXm_CUDACC) && !defined(uXm_NO_CUDA)
#ifndef uXm_CUDA
#       define uXm_CUDA 1
#endif
#endif

// Disable DirecteXMath
// #       define uXm_NO_DIRECTXMATH 1
#if !defined(uXm_WINDOWS_OS) || (defined(uXm_CUDACC) || defined(uXm_CLANG) || defined(uXm_ICC))
#       define uXm_NO_DIRECTXMATH 1
#elif defined(uXm_WINDOWS_OS) && !defined(uXm_CUDACC) && !defined(uXm_CLANG) && !defined(uXm_ICC)
#       define uXm_DIRECTXMATH 1
#endif

#if !defined(uXm_AMP_CC) || defined(uXm_NO_AMP)
// disable AMP support in all platforms
#       define uXm_NO_AMP_SUPPORT 1
#elif defined(uXm_AMP_CC) && !defined(uXm_NO_AMP)
// enable AMP Computing in all platforms supporting it
#       define uXm_AMP_SUPPORT 1
#endif

#if !defined(uXm_CUDA) || defined(uXm_NO_CUDA)
// disable CUDA support in all platforms
#       define uXm_NO_CUDA_SUPPORT 1
#elif defined(uXm_CUDA) && !defined(uXm_NO_CUDA)
// enable CUDA Computing in all platforms supporting it
#       define uXm_CUDA_SUPPORT 1
#endif

#if defined(uXm_CUDACC)
// disable intrinsics support in all platforms if building for cuda
/*
#undef uXm_INTRINSICS
#  ifndef uXm_NO_INTRINSICS
#		define uXm_NO_INTRINSICS
#  endif*/
#endif

#if defined(uXm_DIRECTXMATH) && !defined(uXm_NO_DIRECTXMATH)
// enable DirecteXMath in all platforms supporting it
#       define uXm_DIRECTXMATH_SUPPORT 1
#else
#undef uXm_DIRECTXMATH
#undef uXm_DIRECTXMATH_SUPPORT
#define uXm_NO_DIRECTXMATH_SUPPORT 1
#endif

/*
#if defined(uXm_MSVC_COMPATIBLE_COMPILER) || defined(uXm_GCC_COMPATIBLE_COMPILER)
#	include <vector>
# if defined(_STD) && defined(_VECTOR_)
// enable std:vector support, as template vector and compiler library powered
#       define uXm_STDVECTOR_SUPPORT 1
# endif
#endif*/

/*
#if (defined(PARALLEL_PPL) && (PARALLEL_PPL >=1)) && defined(uXm_ARCH_SUPPORTS_PPL) && defined(uXm_COMPILER_SUPPORTS_PPL)
// PPL library
#include <ppl.h>
#include <ppltasks.h>
/ * using namespace Concurrency; ide namespace for proper use with the functions in the library* /
namespace ccr = Concurrency; / * Concurrency namespace short name * /
# if defined(_PPL_H)
// enable Concurrency:parallel_for_each support, as the library for each loops parallelization powered in CPU code
#       define uXm_PPL_PRL_FOR_EACH_SUPPORT 1
// enable Concurrency:parallel_for support, as the library for loops parallelization powered in CPU code
#       define uXm_PPL_PRL_FOR_SUPPORT 1
# endif
#endif*/

#  if defined(uXm_PPL_PRL_FOR_SUPPORT) && !defined(uXm_NO_PRL)
#		define uXm_USE_PPL_PRL_FOR 1
#  endif

#  if defined(uXm_PPL_PRL_FOR_EACH_SUPPORT) && !defined(uXm_NO_PRL)
#		define uXm_USE_PPL_PRL_FOR_EACH 1
#  endif

# if defined(uXm_NO_PRL)
#		define uXm_MATH_NO_PRL 1
#		define uXm_PRL_MATH_NO_PRL 1
#		define uXm_AMP_MATH_NO_PRL 1

#		define uXm_FLOATS_NO_PRL 1

#		define uXm_NO_TBB_PRL_FOR 1
#		define uXm_NO_TBB_PRL_FOR_EACH 1
#		define uXm_NO_PPL_PRL_FOR 1
#		define uXm_NO_PPL_PRL_FOR_EACH 1
# else

// #		define uXm_MATH_NO_PRL 1
// #		define uXm_PRL_MATH_NO_PRL 1
// #		define uXm_AMP_MATH_NO_PRL 1

// #		define uXm_FLOATS_NO_PRL 1

// #		define uXm_NO_TBB_PRL_FOR 1
// #		define uXm_NO_TBB_PRL_FOR_EACH 1
// #		define uXm_NO_PPL_PRL_FOR 1
// #		define uXm_NO_PPL_PRL_FOR_EACH 1
# endif

# if defined(uXm_FLOATS_NO_PRL)
#		define uXm_DFLOATS_NO_PRL 1
#		define uXm_HFLOATS_NO_PRL 1
# else
// #		define uXm_DFLOATS_NO_PRL 1
// #		define uXm_HFLOATS_NO_PRL 1
# endif

# if defined(uXm_PRL_MATH_NO_PRL)
#		define uXm_DPRL_MATH_NO_PRL 1
#		define uXm_HPRL_MATH_NO_PRL 1
# else
// #		define uXm_DPRL_MATH_NO_PRL 1
// #		define uXm_HPRL_MATH_NO_PRL 1
# endif


#if defined(uXm_AMP_SUPPORT)
// enable std:vector support, as template vector and compiler library powered for AMP
#       define uXm_AMPVECTOR_SUPPORT 1
#       define uXm_AMP_GPU 1
#endif

#if defined(uXm_CUDA_SUPPORT)
// enable std:vector support, as template vector and compiler library powered for CUDA
#       define uXm_CUDAVECTOR_SUPPORT 1
#endif

#if defined(__cplusplus)
// enable template vector support, template powered
#       define uXm_TVECTOR_SUPPORT 1
#endif

#if defined(uXm_AMP_SUPPORT) && (/*!defined(uXm_STDVECTOR_SUPPORT) || !defined(uXm_TVECTOR_SUPPORT) ||*/ !defined(uXm_AMPVECTOR_SUPPORT) )
#error ERROR: if you going to use AMP Computing and template vector inst enabled, probably you going to get worse results
#endif

#if defined(uXm_AMP_SUPPORT) && defined(uXm_PC_APP) && (/*!defined(uXm_STDVECTOR_SUPPORT) || !defined(uXm_TVECTOR_SUPPORT) ||*/ !defined(uXm_AMPVECTOR_SUPPORT) )
#error ERROR: use template vector in store build to get best results
#endif

#if defined(uXm_AMP_SUPPORT) && (_MSC_VER <= 1700)
#error ERROR: Implemented AMP computing not supported in target compiler
#endif

#if (defined(uXm_MSVC_COMPATIBLE_COMPILER) || defined(uXm_GCC_COMPATIBLE_COMPILER) || defined(__INTEL_COMPILER)) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_ARM) && (!_MANAGED) && (!_M_CEE) && (!defined(_M_IX86_FP) || (_M_IX86_FP > 1)) && \
	(defined(INTRIN_VERSION) && (INTRIN_VERSION >= 20)) && !defined(uXm_CLANG) && !defined(uXm_CUDACC) && !defined(uXm_NO_INTRINSICS)
#  if (((_MSC_FULL_VER >= 170065501) && (_MSC_VER < 1800)) || ((_MSC_FULL_VER >= 180020418) && (_MSC_VER >= 1800))) && !defined(__INTEL_COMPILER) && !defined(uXm_ICW) && !defined(uXm_ICU)
#		define uXm_VCVECTORCALL 1
#undef uXm_ICREGCALL
#undef uXm_ICVECTORCALL
#  elif ((defined(__INTEL_COMPILER) && (__INTEL_COMPILER >= 1400)) && (defined(uXm_ICU) || defined(uXm_ICW)))
#		define uXm_ICREGCALL 1		/* Intel regcall !Available for Windows/Unix/Linux/OSX*/
#   if (defined(__INTEL_COMPILER) && (__INTEL_COMPILER >= 1500)) && !defined(uXm_ICU)
#		define uXm_ICVECTORCALL 1	/* Intel vectorcall !Available for Windows compatibility only*/
#	else
#undef uXm_ICVECTORCALL
#	endif
#undef uXm_VCVECTORCALL
#  endif
#else
#undef uXm_VCVECTORCALL
#undef uXm_ICREGCALL
#undef uXm_ICVECTORCALL
#endif

#if defined(uXm_X86_OR_X64_CPU)
#   ifndef uXm_SUPPORTS_MISALIGNED_MEMORY_ACCESS
#		define uXm_SUPPORTS_MISALIGNED_MEMORY_ACCESS 1
#   endif
# if defined(uXm_ARCH_SUPPORTS_DOUBLE)
#   ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FPU
#		define uXm_SUPPORTS_DOUBLE_PRECISION_FPU 1
#   endif
# endif
#   ifndef uXm_SUPPORTS_SINGLE_PRECISION_FPU
#		define uXm_SUPPORTS_SINGLE_PRECISION_FPU 1
#   endif
#endif

#if (defined(INTEL_INTRIN) && (INTEL_INTRIN <= 0)) || !defined(INTEL_INTRIN) || defined(uXm_ARM) || defined(uXm_PPC32_OR_PPC64_CPU)
#       define uXm_NO_INTEL_INTRIN 1
#elif (defined(INTEL_INTRIN) && (INTEL_INTRIN >= 1)) && defined(uXm_X86_OR_X64_CPU)
#       define uXm_INTEL_INTRIN 1
#endif

#if (defined(AMD_INTRIN) && (AMD_INTRIN <= 0)) || !defined(AMD_INTRIN) || defined(uXm_ARM) || defined(uXm_PPC32_OR_PPC64_CPU) || defined(uXm_MIC)
#       define uXm_NO_AMD_INTRIN 1
#elif (defined(AMD_INTRIN) && (AMD_INTRIN >= 1)) && defined(uXm_X86_OR_X64_CPU)
#       define uXm_AMD_INTRIN 1
#endif

#if (defined(ARM_INTRIN) && (ARM_INTRIN <= 0)) || !defined(ARM_INTRIN) || defined(uXm_X86_OR_X64_CPU) || defined(uXm_PPC32_OR_PPC64_CPU) || defined(uXm_MIC)
#       define uXm_NO_ARM_INTRIN 1
#elif (defined(ARM_INTRIN) && (ARM_INTRIN >= 1)) && defined(uXm_A32_OR_A64_CPU)
#       define uXm_ARM_INTRIN 1
#endif

#if (defined(ARM_NEON_INTRIN) && (ARM_NEON_INTRIN <= 0)) || !defined(ARM_NEON_INTRIN) || defined(uXm_X86_OR_X64_CPU) || defined(uXm_PPC32_OR_PPC64_CPU) || defined(uXm_MIC)
#       define uXm_NO_ARM_NEON 1
#elif (defined(ARM_NEON_INTRIN) && (ARM_NEON_INTRIN >= 1)) && defined(uXm_A32_OR_A64_CPU)
#       define uXm_ARM_NEON_INTRIN 1
#endif

#if (defined(INTRIN_3DNOW) && (INTRIN_3DNOW <= 0)) || !defined(INTRIN_3DNOW) || defined(uXm_ARM) || defined(uXm_PPC32_OR_PPC64_CPU) || defined(uXm_MIC)
#       define uXm_NO_3DNOW 1
#elif (defined(INTRIN_3DNOW) && (INTRIN_3DNOW >= 1)) && defined(uXm_X86_CPU)
#       define uXm_3DNOW_INTRIN 1
#endif

#if (defined(INTRIN_MMX) && (INTRIN_MMX <= 0)) || !defined(INTRIN_MMX) || defined(uXm_ARM) || defined(uXm_PPC32_OR_PPC64_CPU) || defined(uXm_MIC)
#       define uXm_NO_MMX 1
#elif (defined(INTRIN_MMX) && (INTRIN_MMX >= 1)) && defined(uXm_X86_CPU)
#       define uXm_MMX_INTRIN 1
#endif

#if (defined(INTRIN_SSE) && (INTRIN_SSE <= 0)) || !defined(INTRIN_SSE) || defined(uXm_ARM) || defined(uXm_PPC32_OR_PPC64_CPU) || defined(uXm_MIC)
#       define uXm_NO_SSE 1
#elif (defined(INTRIN_SSE) && (INTRIN_SSE >= 1)) && defined(uXm_X86_OR_X64_CPU)
#       define uXm_SSE_INTRIN 1
#endif

#if (defined(INTRIN_AVX256) && (INTRIN_AVX256 <= 0)) || !defined(INTRIN_AVX256) || defined(uXm_ARM) || defined(uXm_PPC32_OR_PPC64_CPU) || defined(uXm_MIC)
#       define uXm_NO_AVX256 1
#elif (defined(INTRIN_AVX256) && (INTRIN_AVX256 >= 1)) && defined(uXm_X86_OR_X64_CPU) && (defined(uXm_COMPILER_INTRIN) && (uXm_COMPILER_INTRIN >= 50))
#       define uXm_AVX256_INTRIN 1
#endif

#if (defined(INTRIN_AVX512) && (INTRIN_AVX512 <= 0)) || !defined(INTRIN_AVX512) || defined(uXm_ARM) || defined(uXm_PPC32_OR_PPC64_CPU)
#       define uXm_NO_AVX512 1
#elif (defined(INTRIN_AVX512) && (INTRIN_AVX512 >= 1)) && defined(uXm_X86_OR_X64_CPU) && (defined(uXm_COMPILER_INTRIN) && (uXm_COMPILER_INTRIN >= 60))
#       define uXm_AVX512_INTRIN 1
#endif

#if (defined(INTRIN_MIC) && (INTRIN_MIC <= 0)) || !defined(INTRIN_MIC) || defined(uXm_ARM) || defined(uXm_PPC32_OR_PPC64_CPU)
#       define uXm_NO_MIC_INTRIN 1
#elif (defined(INTRIN_MIC) && (INTRIN_MIC >= 1)) && defined(uXm_X64_CPU) && defined(uXm_MIC)
#       define uXm_MIC_INTRIN 1
#endif

# if defined(uXm_X86_OR_X64_CPU)
#   if defined(uXm_VC)
#      if (defined(_MSC_VER) && (_MSC_VER <= 1300))
#       if defined(uXm_INTRINSICS)
# error ERROR: Implemented Intrinsics not supported in target compiler
#       endif
#     endif
#     if (defined(_MSC_VER) && (_MSC_VER >= 1310))
#	      if   !defined(uXm_NO_MMX)
#			define uXm_SUPPORTS_MMX 1
#			define uXm_SUPPORTS_MMXPLUS 1
#	      endif
#		  if !defined(__INTEL_COMPILER) && !defined(uXm_NO_3DNOW)
#			define uXm_SUPPORTS_3DNOW 1
#			define uXm_SUPPORTS_3DNOWPLUS 1
#         endif
#		  if !defined(uXm_NO_SSE)
#			define uXm_SUPPORTS_SSE 1
#         endif
#		  if !defined(uXm_NO_SSE)
#			define uXm_SUPPORTS_SSE2 1
#         endif
#     endif
#     if (defined(_MSC_VER) && (_MSC_VER >= 1400)) && !defined(uXm_NO_SSE)
#			define uXm_SUPPORTS_SSE3 1
#     endif
#     if (defined(_MSC_VER) && (_MSC_VER >= 1500))
#	   if !defined(uXm_NO_SSE)
#			define uXm_SUPPORTS_SSSE3 1
#      endif
#       if !defined(__INTEL_COMPILER) && !defined(uXm_NO_SSE)
#			define uXm_SUPPORTS_SSE4A 1
#      endif
#       endif
#	   if !defined(uXm_NO_SSE)
#			define uXm_SUPPORTS_SSE41 1
#			define uXm_SUPPORTS_SSE42 1
#      endif
#	   if (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN) || defined(uXm_AVX512_INTRIN))
#			define uXm_SUPPORTS_LZCNT 1
#			define uXm_SUPPORTS_POPCNT 1
#     endif
#     if (defined(_MSC_VER) && (_MSC_VER >= 1600)) && defined(uXm_AVX256_INTRIN) && !defined(uXm_NO_AVX256)
#			define uXm_SUPPORTS_AVX 1
#     endif
#     if (defined(_MSC_VER) && (_MSC_FULL_VER >= 160040219)) && !defined(uXm_NO_AMD_INTRIN) && (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN))
#       if !defined(__INTEL_COMPILER)
#			define uXm_SUPPORTS_FMA4 1
#			define uXm_SUPPORTS_XOP 1
#       endif
#     endif
#     if (defined(_MSC_VER) && (_MSC_VER >= 1700))
#	   if (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN) || defined(uXm_AVX512_INTRIN))
#			define uXm_SUPPORTS_FMA3 1
#			define uXm_SUPPORTS_F16C 1
#      endif
#		  if defined(uXm_AVX256_INTRIN) && !defined(uXm_NO_AVX256)
#			define uXm_SUPPORTS_AVX2 1
#         endif
#	   if (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN) || defined(uXm_AVX512_INTRIN))
#			define uXm_SUPPORTS_HLE 1
#			define uXm_SUPPORTS_RTM 1
#       if !defined(__INTEL_COMPILER)
#			define uXm_SUPPORTS_TBM 1
#       endif
#			define uXm_SUPPORTS_BMI 1
#			define uXm_SUPPORTS_BMI2 1
#      endif
#     endif
#   if (defined(_MSC_VER) && (_MSC_VER >= 1911))
#     if defined(uXm_AVX512_INTRIN) && !defined(uXm_NO_AVX512)
#       ifndef uXm_SUPPORTS_AVX512
#		    define uXm_SUPPORTS_AVX512 1
#       endif
#     endif
#   endif
#  endif
# elif defined(uXm_A32_OR_A64_CPU)
#     if (defined(_MSC_VER) && (_MSC_VER >= 1700))
#	    if (defined(uXm_ARCH_ARM_VSET) && (uXm_ARCH_ARM_VSET >= 7)) && defined(uXm_ARM_NEON_INTRIN) && !defined(uXm_NO_ARM_NEON) // some things for arm I cant figure out in msvc compiler yet
#			define uXm_SUPPORTS_ARM_NEON 1 							/* minimal Arch32 for 32-bits Advanced SIMD floating-point vector instructions are available. */
#	    endif
#	    if defined(uXm_ARCH_ARM_VSET) && (uXm_ARCH_ARM_VSET >= 8) && defined(uXm_ARCH_A64)
#			define uXm_SUPPORTS_ARM_NEON_DFP 1							/* minimal Arch64 for 64-bits Advanced SIMD double precision floating-point vector instructions are available. */
#	    endif
#     endif
#     if (defined(_MSC_VER) && (_MSC_VER >= 1800))
#     endif
# endif

# if defined(uXm_X86_OR_X64_CPU)

#  if defined(uXm_INTEL_COMPILER)
#   if defined(__SSE4_2__) && (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN) || defined(uXm_AVX512_INTRIN))
#	 ifndef uXm_SUPPORTS_POPCNT
#		define uXm_SUPPORTS_POPCNT 1
#   endif
#  endif
#  if defined(__AVX2__) && (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN) || defined(uXm_AVX512_INTRIN))
#	ifndef uXm_SUPPORTS_LZCNT
#		define uXm_SUPPORTS_LZCNT 1
#    endif
#	ifndef uXm_SUPPORTS_FMA3
#		define uXm_SUPPORTS_FMA3 1
#    endif
#	ifndef uXm_SUPPORTS_BMI
#		define uXm_SUPPORTS_BMI 1
#    endif
#	ifndef uXm_SUPPORTS_BMI2
#		define uXm_SUPPORTS_BMI2 1
#    endif
#  endif
#  if  (defined(__AVX512__) || defined(__AVX512F__)) && defined(uXm_AVX512_INTRIN) && !defined(uXm_NO_AVX512)
#    ifndef uXm_SUPPORTS_AVX512
#		define uXm_SUPPORTS_AVX512 1
#    endif
#  endif
# endif

#    if defined(uXm_GCC_COMPATIBLE_COMPILER)
#      if defined(__MMX__) && !defined(uXm_NO_MMX)
#        ifndef uXm_SUPPORTS_MMX
#			define uXm_SUPPORTS_MMX 1
#        endif
#      endif
#      if defined(__3dNOW__) && !defined(__INTEL_COMPILER) && !defined(uXm_NO_3DNOW)
#        ifndef uXm_SUPPORTS_3DNOW
#			define uXm_SUPPORTS_3DNOW 1
#         endif
#   endif
#   if defined(__3dNOW_A__) && !defined(__INTEL_COMPILER) && !defined(uXm_NO_3DNOW)
#     ifndef uXm_SUPPORTS_3DNOWPLUS
#			define uXm_SUPPORTS_3DNOWPLUS 1
#     endif
#   endif
#   if defined(__SSE__)
#     if !defined(uXm_SUPPORTS_MMXPLUS) && !defined(uXm_NO_MMX)
#			define uXm_SUPPORTS_MMXPLUS 1
#     endif
#	 if !defined(uXm_NO_SSE)
#     ifndef uXm_SUPPORTS_SSE
#			define uXm_SUPPORTS_SSE 1
#     endif
#    endif
#   endif
#   if defined(__SSE2__) && !defined(uXm_NO_SSE)
#     ifndef uXm_SUPPORTS_SSE2
#			define uXm_SUPPORTS_SSE2 1
#     endif
#   endif
#   if defined(__SSE3__) && !defined(uXm_NO_SSE)
#     ifndef uXm_SUPPORTS_SSE3
#			define uXm_SUPPORTS_SSE3 1
#     endif
#   endif
#   if defined(__SSSE3__) && !defined(uXm_NO_SSE)
#     ifndef uXm_SUPPORTS_SSSE3
#			define uXm_SUPPORTS_SSSE3 1
#     endif
#   endif
#   if defined(__SSE4A__) && !defined(__INTEL_COMPILER) && !defined(uXm_NO_SSE)
#     ifndef uXm_SUPPORTS_SSE4A
#			define uXm_SUPPORTS_SSE4A 1
#     endif
#   endif
#   if defined(__SSE4_1__) && !defined(uXm_NO_SSE)
#     ifndef uXm_SUPPORTS_SSE41
#			define uXm_SUPPORTS_SSE41 1
#     endif
#   endif
#   if defined(__SSE4_2__) && !defined(uXm_NO_SSE)
#     ifndef uXm_SUPPORTS_SSE42
#			define uXm_SUPPORTS_SSE42 1
#     endif
#   endif
#   if defined(__AVX__) && !defined(uXm_NO_AVX256)
#     ifndef uXm_SUPPORTS_AVX
#			define uXm_SUPPORTS_AVX 1
#     endif
#   endif
#   if defined(__AVX2__) && !defined(uXm_NO_AVX256)
#     ifndef uXm_SUPPORTS_AVX2
#			define uXm_SUPPORTS_AVX2 1
#     endif
#   endif
#   if defined(__F16C__) && (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN) || defined(uXm_AVX512_INTRIN))
#     ifndef uXm_SUPPORTS_F16C
#			define uXm_SUPPORTS_F16C 1
#     endif
#   endif
#   if defined(__FMA4__) && !defined(__INTEL_COMPILER) && (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN) || defined(uXm_AVX512_INTRIN)) && !defined(uXm_NO_AMD_INTRIN)
#     ifndef uXm_SUPPORTS_FMA4
#			define uXm_SUPPORTS_FMA4 1
#     endif
#   endif
#   if defined(__FMA__) && (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN) || defined(uXm_AVX512_INTRIN))
#     ifndef uXm_SUPPORTS_FMA3
#			define uXm_SUPPORTS_FMA3 1
#     endif
#   endif
#   if defined(__XOP__) && !defined(__INTEL_COMPILER) && (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN)) && !defined(uXm_NO_AMD_INTRIN)
#     ifndef uXm_SUPPORTS_XOP
#			define uXm_SUPPORTS_XOP 1
#     endif
#   endif
#  if (defined(uXm_SSE_INTRIN) || defined(uXm_AVX256_INTRIN) || defined(uXm_AVX512_INTRIN))
#   if defined(__ABM__)
#     ifndef uXm_SUPPORTS_LZCNT
#			define uXm_SUPPORTS_LZCNT 1
#     endif
#   endif
#   if defined(__POPCNT__)
#     ifndef uXm_SUPPORTS_POPCNT
#			define uXm_SUPPORTS_POPCNT 1
#     endif
#   endif
#   if defined(__BMI__)
#     ifndef uXm_SUPPORTS_BMI
#			define uXm_SUPPORTS_BMI 1
#     endif
#   endif
#   if defined(__BMI2__)
#     ifndef uXm_SUPPORTS_BMI2
#			define uXm_SUPPORTS_BMI2 1
#     endif
#   endif
#   if defined(__TBM__) && !defined(__INTEL_COMPILER) && !defined(uXm_NO_AMD_INTRIN)
#     ifndef uXm_SUPPORTS_TBM
#			define uXm_SUPPORTS_TBM 1
#     endif
#   endif
#   if defined(__KNC__)
#     ifndef uXm_SUPPORTS_KNC
#			define uXm_SUPPORTS_KNC 1
#     endif
#   endif
#  endif
#   if (defined(__AVX512__) || defined(__AVX512F__)) && defined(uXm_AVX512_INTRIN)  && !defined(uXm_NO_AVX512)
#     ifndef uXm_SUPPORTS_AVX512
#			define uXm_SUPPORTS_AVX512 1
#     endif
#   endif
# endif

# elif defined(uXm_A32_OR_A64_CPU)
#   if defined(uXm_GCC_COMPATIBLE_COMPILER)
#     if defined(__ARM_ARCH_9A__) || defined(uXm_ARCH_ARM_V9)
#       ifndef uXm_SUPPORTS_ARM_V8
#			define uXm_SUPPORTS_ARM_V8 1
#       endif
#     endif
#     if defined(__ARM_ARCH_8A__) || defined(uXm_ARCH_ARM_V8)
#       ifndef uXm_SUPPORTS_ARM_V8
#			define uXm_SUPPORTS_ARM_V8 1
#       endif
#     endif
#   if defined(__ARM_ARCH_7A__) || defined(uXm_ARCH_ARM_V7)
#     ifndef uXm_SUPPORTS_ARM_V7
#			define uXm_SUPPORTS_ARM_V7 1
#     endif
#   endif
#   if defined(__ARM_ARCH_6ZK__) || defined(__ARM_ARCH_6K__) || defined(uXm_ARCH_ARM_V6)/* || defined(uXm_SUPPORTS_ARM_V7)*/
#     ifndef uXm_SUPPORTS_ARM_V6K
#			define uXm_SUPPORTS_ARM_V6K 1
#     endif
#   endif
#   if defined(__ARM_ARCH_6J__) || defined(__ARM_ARCH_6Z__) || defined(__ARM_ARCH_6__) || defined(uXm_SUPPORTS_ARM_V6K) || defined(uXm_ARCH_ARM_V6)
#     ifndef uXm_SUPPORTS_ARM_V6
#			define uXm_SUPPORTS_ARM_V6 1
#     endif
#   endif
#   if defined(__ARM_ARCH_5E__) || defined(__ARM_ARCH_5TE__) || defined(__ARM_FEATURE_DSP)/* || defined(uXm_SUPPORTS_ARM_V6)*/
#     ifndef uXm_SUPPORTS_ARM_V5E
#			define uXm_SUPPORTS_ARM_V5E 1
#     endif
#   endif
#   if defined(__ARM_ARCH_5__) || defined(__ARM_ARCH_5T__) || defined(uXm_SUPPORTS_ARM_V5E)
#     ifndef uXm_SUPPORTS_ARM_V5
#			define uXm_SUPPORTS_ARM_V5 1
#     endif
#   endif
#   if defined(__ARM_ARCH_4__) || defined(__ARM_ARCH_4T__)/* || defined(uXm_SUPPORTS_ARM_V5)*/
#     ifndef uXm_SUPPORTS_ARM_V4
#			define uXm_SUPPORTS_ARM_V4 1
#     endif
#   endif
#   if defined(__ARM_FEATURE_UNALIGNED) || defined(uXm_SUPPORTS_ARM_V6) || defined(uXm_ARCH_ARM_V7) || defined(uXm_ARCH_ARM_V8) || defined(uXm_ARCH_ARM_V9)
#     ifndef uXm_SUPPORTS_MISALIGNED_MEMORY_ACCESS
#			define uXm_SUPPORTS_MISALIGNED_MEMORY_ACCESS 1
#     endif
#   endif
#   if defined(__XSCALE__)
#     ifndef uXm_SUPPORTS_ARM_XSCALE
#			define uXm_SUPPORTS_ARM_XSCALE 1
#     endif
#   endif
#   if defined(__IWMMXT__) || defined(__ARM_WMMX)
#     ifndef uXm_SUPPORTS_ARM_WMMX
#			define uXm_SUPPORTS_ARM_WMMX 1
#     endif
#   if defined(__IWMMXT2__) || (defined(__ARM_WMMX) && (__ARM_WMMX >= 2))
#     ifndef uXm_SUPPORTS_ARM_WMMX2
#			define uXm_SUPPORTS_ARM_WMMX2 1
#     endif
#   endif
#   endif
#	if (defined(__ARM_NEON__)
#	  ifndef uXm_SUPPORTS_ARM_NEON
#			define uXm_SUPPORTS_ARM_NEON 1 						/* minimal Arch32 for 32-bits Advanced SIMD floating-point vector instructions are available. */
#	  endif
#	endif
#	if defined(__ARM_NEON_FP)
#	  ifndef uXm_SUPPORTS_ARM_NEON_FP
#			define uXm_SUPPORTS_ARM_NEON_DFP 1					/* minimal Arch64 for 64-bits Advanced SIMD double precision floating-point vector instructions are available. */
#	  endif
#	endif
#   if defined(__VFP_FP__) || defined(__ARM_FP)
#     ifndef uXm_SUPPORTS_ARM_VFP
#			define uXm_SUPPORTS_ARM_VFP 1
#     endif
#     if defined(uXm_ARCH_SUPPORTS_DOUBLE)
#       ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FPU
#			define uXm_SUPPORTS_DOUBLE_PRECISION_FPU 1
#       endif
#     endif
#     ifndef uXm_SUPPORTS_SINGLE_PRECISION_FPU
#			define uXm_SUPPORTS_SINGLE_PRECISION_FPU 1
#     endif
#     if defined(uXm_SUPPORTS_ARM_V7)
#       ifndef uXm_SUPPORTS_ARM_VFP2
#			define uXm_SUPPORTS_ARM_VFP2 1
#       endif
#       ifndef uXm_SUPPORTS_ARM_VFP3
#			define uXm_SUPPORTS_ARM_VFP3 1
#       endif
#       if defined(__ARM_FP) && ((__ARM_FP & 0x2) == 0x2)
#         ifndef uXm_SUPPORTS_ARM_VFP3HP
#			define uXm_SUPPORTS_ARM_VFP3HP 1
#         endif
#       endif
#       if defined(uXm_SUPPORTS_ARM_NEON)
#         ifndef uXm_SUPPORTS_ARM_VFP3_D32
#			define uXm_SUPPORTS_ARM_VFP3_D32 1
#         endif
#       endif
#       if defined(__ARM_FEATURE_FMA) || (defined(__FP_FAST_FMA) && defined(__FP_FAST_FMAF))
#         ifndef uXm_SUPPORTS_ARM_VFP4
#			define uXm_SUPPORTS_ARM_VFP4 1
#         endif
#       endif
#     endif
#   endif
#   if defined(__ARM_ARCH_EXT_IDIV__)
#     ifndef uXm_SUPPORTS_ARM_DIV
#			define uXm_SUPPORTS_ARM_DIV 1
#     endif
#   endif
#  endif

# elif defined(uXm_ARCH_MIPS)
#   if defined(uXm_GCC_COMPATIBLE_COMPILER)
#     if defined(__mips_isa_rev) && (__mips_isa_rev >= 2)
#       ifndef uXm_SUPPORTS_MIPS_R2
#			define uXm_SUPPORTS_MIPS_R2 1
#       endif
#     endif
#     if defined(__mips_dsp)
#       ifndef uXm_SUPPORTS_MIPS_DSP
#			define uXm_SUPPORTS_MIPS_DSP 1
#     endif
#     if defined(__mips_dsp_rev) && (__mips_dsp_rev >= 2)
#       ifndef uXm_SUPPORTS_MIPS_DSP2
#			define uXm_SUPPORTS_MIPS_DSP2 1
#       endif
#     endif
#   endif
#   if defined(__mips_paired_single_float)
#     ifndef uXm_SUPPORTS_MIPS_PAIREDSINGLE
#			define uXm_SUPPORTS_MIPS_PAIREDSINGLE 1
#     endif
#   endif
#   if defined(__mips3d)
#     ifndef uXm_SUPPORTS_MIPS_3D
#			define uXm_SUPPORTS_MIPS_3D 1
#     endif
#   endif
#    if defined(__mips_hard_float)
#     if !defined(uXm_ARCH_SUPPORTS_DOUBLE)
#			define uXm_ARCH_SUPPORTS_DOUBLE 1
#     endif
#     ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FPU
#			define uXm_SUPPORTS_DOUBLE_PRECISION_FPU 1
#     endif
#     ifndef uXm_SUPPORTS_SINGLE_PRECISION_FPU
#			define uXm_SUPPORTS_SINGLE_PRECISION_FPU 1
#     endif
#    endif
#   endif
#   if defined(uXm_ANDROID_LINUX_OS)
#     if defined(uXm_ARCH_SUPPORTS_DOUBLE)
#       ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FPU
#			define uXm_SUPPORTS_DOUBLE_PRECISION_FPU 1
#       endif
#     endif
#     ifndef uXm_SUPPORTS_SINGLE_PRECISION_FPU
#			define uXm_SUPPORTS_SINGLE_PRECISION_FPU 1
#     endif
#   endif

# elif defined(uXm_PPC32_OR_PPC64_CPU)
#  if defined(uXm_GCC_COMPATIBLE_COMPILER)
#   if defined(__VSX__)
#     ifndef uXm_SUPPORTS_PPC_VSX
#			define uXm_SUPPORTS_PPC_VSX 1
#     endif
#   endif
#  endif
#  if defined(uXm_IBMC) || (uXm_GCC_COMPATIBLE_COMPILER)
#    if defined(_ARCH_PPCGR) || defined(_ARCH_PPC64GR) || defined(_ARCH_PPC64GRSQ)
#      ifndef uXm_SUPPORTS_PPC_GFXOPT
#			define uXm_SUPPORTS_PPC_GFXOPT 1
#      endif
#    endif
#    if defined(_ARCH_PPCSQ) || defined(_ARCH_PPC64GRSQ)
#      ifndef uXm_SUPPORTS_PPC_GPOPT
#			define uXm_SUPPORTS_PPC_GPOPT 1
#      endif
#    endif
#    if defined(__VEC__) || defined(__ALTIVEC__)
#      ifndef uXm_SUPPORTS_PPC_VMX
#			define uXm_SUPPORTS_PPC_VMX 1
#      endif
#    endif
#  endif
#  if defined(uXm_BLUEGENE_Q_SYSTEM)
#    ifndef uXm_SUPPORTS_PPC_QPX
#			define uXm_SUPPORTS_PPC_QPX 1
#    endif
#  endif

# elif defined(uXm_CUDA_GPU)
#   ifndef uXm_SUPPORTS_SINGLE_PRECISION_FPU
#			define uXm_SUPPORTS_SINGLE_PRECISION_FPU 1
#   endif
#   if __CUDA_ARCH__ >= 130
#     ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FPU
#			define uXm_SUPPORTS_DOUBLE_PRECISION_FPU 1
#     endif
#   endif

# elif defined(uXm_OPENCL_DEVICE)
#   ifndef uXm_SUPPORTS_SINGLE_PRECISION_FPU
#			define uXm_SUPPORTS_SINGLE_PRECISION_FPU 1
#   endif
#   if defined(cl_khr_fp64) || defined(cl_amd_fp64))
#     ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FPU
#			define uXm_SUPPORTS_DOUBLE_PRECISION_FPU 1
#     endif
#   endif
# endif

#if defined(uXm_SUPPORTS_FMA3) || defined(uXm_SUPPORTS_FMA4)
#  ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uXm_SUPPORTS_DOUBLE_PRECISION_FMA 1
#  endif
#  ifndef uXm_SUPPORTS_SINGLE_PRECISION_FMA
#		define uXm_SUPPORTS_SINGLE_PRECISION_FMA 1
#  endif

#elif defined(uXm_SUPPORTS_KNC) && defined(uXm_ICC)
#  ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uXm_SUPPORTS_DOUBLE_PRECISION_FMA 1
#  endif
#  ifndef uXm_SUPPORTS_SINGLE_PRECISION_FMA
#		define uXm_SUPPORTS_SINGLE_PRECISION_FMA 1
#  endif

#elif defined(uXm_IA64)
#  ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uXm_SUPPORTS_DOUBLE_PRECISION_FMA 1
#  endif
#  ifndef uXm_SUPPORTS_SINGLE_PRECISION_FMA
#		define uXm_SUPPORTS_SINGLE_PRECISION_FMA 1
#  endif

#elif defined(uXm_GCC_COMPATIBLE_COMPILER)
#  if defined(__FP_FAST_FMA)
#    ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uXm_SUPPORTS_DOUBLE_PRECISION_FMA 1
#    endif
#  endif
#  if defined(__FP_FAST_FMAF)
#    ifndef uXm_SUPPORTS_SINGLE_PRECISION_FMA
#		define uXm_SUPPORTS_SINGLE_PRECISION_FMA 1
#    endif
#  endif

#elif defined(uXm_CUDA_GPU) && (__CUDA_ARCH__ >= 200)
#  ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uXm_SUPPORTS_DOUBLE_PRECISION_FMA 1
#  endif
#  ifndef uXm_SUPPORTS_SINGLE_PRECISION_FMA
#		define uXm_SUPPORTS_SINGLE_PRECISION_FMA 1
#  endif

#elif defined(uXm_OPENCL_DEVICE)
#  if defined(FP_FAST_FMA)
#    ifndef uXm_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uXm_SUPPORTS_DOUBLE_PRECISION_FMA 1
#    endif
#  endif
#  if defined(FP_FAST_FMAF)
#    ifndef uXm_SUPPORTS_SINGLE_PRECISION_FMA
#		define uXm_SUPPORTS_SINGLE_PRECISION_FMA 1
#    endif
#  endif
#endif

#if defined(uXm_WINDOWS_OS)
#undef uXm_ENDIAN_BIG
#undef uXm_ENDIAN_LITTLE
#		define uXm_ENDIAN_LITTLE 1
#endif
#if defined(uXm_GCC_COMPATIBLE_COMPILER) && defined(__LITTLE_ENDIAN__)
#undef uXm_ENDIAN_BIG
#undef uXm_ENDIAN_LITTLE
#		define uXm_ENDIAN_LITTLE 1
#endif
#if defined(uXm_GCC_COMPATIBLE_COMPILER) && defined(__BIG_ENDIAN__)
#undef uXm_ENDIAN_LITTLE
#undef uXm_ENDIAN_BIG
#		define uXm_ENDIAN_BIG 1
#endif
#if defined(uXm_GCC_COMPATIBLE_COMPILER) && defined(__ORDER_LITTLE_ENDIAN__) || (defined(__BYTE_ORDER__) && (__BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__))
#undef uXm_ENDIAN_BIG
#undef uXm_ENDIAN_LITTLE
#		define uXm_ENDIAN_LITTLE 1
#endif
#if defined(uXm_GCC_COMPATIBLE_COMPILER) && defined(__ORDER_BIG_ENDIAN__) || (defined(__BYTE_ORDER__) && (__BYTE_ORDER__ == __ORDER_BIG_ENDIAN__))
#undef uXm_ENDIAN_LITTLE
#undef uXm_ENDIAN_BIG
#		define uXm_ENDIAN_BIG 1
#endif
#if defined(_BIG_ENDIAN) || defined(__BIG_ENDIAN__)
#undef uXm_ENDIAN_LITTLE
#undef uXm_ENDIAN_BIG
#		define uXm_ENDIAN_BIG 1
#elif defined(uXm_X86_OR_X64_CPU)
#undef uXm_ENDIAN_BIG
#undef uXm_ENDIAN_LITTLE
#		define uXm_ENDIAN_LITTLE 1
#endif
#if (defined(uXm_ARCH_ARM) || defined(uXm_ARCH_MIPS)) && defined(__ANDROID__)
#   if defined(__ARMEB__)
#undef uXm_ENDIAN_LITTLE
#undef uXm_ENDIAN_BIG
#	   define uXm_ENDIAN_BIG	1
#   else
#undef uXm_ENDIAN_BIG
#undef uXm_ENDIAN_LITTLE
#	   define uXm_ENDIAN_LITTLE 1
#   endif
#endif
#if defined(uXm_CUDA_GPU)
#undef uXm_ENDIAN_BIG
#undef uXm_ENDIAN_LITTLE
#		define uXm_ENDIAN_LITTLE 1
#endif

#if defined(uXm_X64_ABI)
#if defined(uXm_WINDOWS_OS)
#		define uXm_MICROSOFT_X64_ABI 1
#elif defined(__KNC__)
#		define uXm_K1OM_X64_ABI 1
#else
#		define uXm_SYSTEMV_X64_ABI 1
#endif
#elif defined(uXm_ARM_ABI)
#if defined(__ARM_EABI__)
#		define uXm_EABI_ARM_ABI 1
#if defined(__ARM_PCS_VFP)
#		define uXm_HARDEABI_ARM_ABI 1
#else
#		define uXm_SOFTEABI_ARM_ABI 1
#endif
#endif
#elif defined(uXm_MIPS32_ABI)
#if defined(_ABIO32)
#		define uXm_O32_MIPS_ABI 1
#if defined(__mips_hard_float)
#		define uXm_HARDO32_MIPS_ABI 1
#endif
#endif
#endif

#if defined(uXm_ICC) || defined(uXm_GNUC) || defined(uXm_CLANG) || defined(uXm_ARMCC) || defined(uXm_CUDACC) /*|| (defined(_MSC_VER) && (_MSC_VER >= 1800))*/
/* These compilers support hex floats even in C++ */
#define uXm_COMPILER_SUPPORTS_HEXADECIMAL_FLOATING_POINT_CONSTANTS 1
#elif defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 199901L)
/* C99 standard mandates support for hex floats */
#define uXm_COMPILER_SUPPORTS_HEXADECIMAL_FLOATING_POINT_CONSTANTS 1
#endif

#if (defined(uXm_VC) && (uXm_COMPILER_INTRIN < 60) && (INTRIN_VERSION >= 60))
#error  ERROR: !!! Microsoft C++ compiler cant support AVX-512 and MIC Intrinsics yet
#error  ERROR: !!! Please change to INTRIN_VERSION ==50 or ==52 in IDE preprocessor for AVX/AVX2 BUILD in MSVC
#endif

#if defined(uXm_VC) && defined(uXm_MIC) && !defined(uXm_ICW)
#error  ERROR: !!! Microsoft C++ compiler cant support Intel MIC architecture
#error  ERROR: !!! Please change to Intel Compiler
#endif

#if defined(uXm_INTRINSICS) && !defined(uXm_NO_INTRINSICS)
# if (defined(uXm_X86_OR_X64_CPU) && (INTRIN_VERSION >= 10)) && (defined(uXm_SUPPORTS_SSE) ||defined(uXm_SUPPORTS_AVX) || defined(uXm_SUPPORTS_AVX2) || defined(uXm_SUPPORTS_AVX512))
#  if((defined(INTRIN_VERSION) && (INTRIN_VERSION >= 60)) && (uXm_AVX512_INTRIN >=1)) && defined(uXm_SUPPORTS_AVX512)
#		define uXm_AVX512_INTRINSICS 1
#		define uXm_AVX512_FMA_SUPPORT 1
#  endif
# if ((defined(INTRIN_VERSION) && (INTRIN_VERSION >= 50)) && (uXm_AVX256_INTRIN >=1)) && (defined(uXm_SUPPORTS_AVX) || defined(uXm_SUPPORTS_AVX2)) && !defined(uXm_MIC)
#		define uXm_AVX256_INTRINSICS 1
#	if ((defined(INTRIN_VERSION) && (INTRIN_VERSION >= 52)) && (uXm_AVX256_INTRIN >=1)) && defined(uXm_SUPPORTS_AVX2)
#		define uXm_AVX256_V2_INTRINSICS 1
#	 if defined(uXm_SUPPORTS_FMA3) || defined(uXm_SUPPORTS_FMA4)
#		define uXm_AVX256_FMA_SUPPORT 1
#	 endif
#	endif
#  endif
# if ((defined(INTRIN_VERSION) && (INTRIN_VERSION >= 10)) && (uXm_SSE_INTRIN >=1)) && (defined(uXm_SUPPORTS_SSE) || defined(uXm_SUPPORTS_SSE2) || defined(uXm_SUPPORTS_SSE3) \
	|| defined(uXm_SUPPORTS_SSSE3) || defined(uXm_SUPPORTS_SSE41) || defined(uXm_SUPPORTS_SSE42) || defined(uXm_SUPPORTS_SSE4A)) && !defined(uXm_MIC)
#		define uXm_SSE_INTRINSICS 1
# endif
# if defined(uXm_X86_CPU) && (defined(uXm_MMX_INTRIN) || defined(uXm_3DNOW_INTRIN)) && (defined(uXm_INTEL_INTRIN) || defined(uXm_AMD_INTRIN)) && (defined(uXm_SUPPORTS_3DNOW) \
    || defined(uXm_SUPPORTS_3DNOWPLUS) || defined(uXm_SUPPORTS_MMX) || defined(uXm_SUPPORTS_MMXPLUS)) && !defined(uXm_MIC)
#  if defined(uXm_INTEL_INTRIN) && !defined(uXm_3DNOW_INTRIN) && defined(uXm_MMX_INTRIN) && (defined(uXm_SUPPORTS_MMX) || defined(uXm_SUPPORTS_MMXPLUS))
#		define uXm_MMX_INTRINSICS 1
#  endif
#  if defined(uXm_AMD_INTRIN) && !defined(uXm_INTEL_INTRIN) && defined(uXm_3DNOW_INTRIN) && (defined(uXm_SUPPORTS_3DNOW) || defined(uXm_SUPPORTS_3DNOWPLUS))
#		define uXm_3DNOW_INTRINSICS 1
#  endif
#  if defined(uXm_INTEL_INTRIN) && defined(uXm_AMD_INTRIN) && defined(uXm_MMX_INTRIN) && defined(uXm_3DNOW_INTRIN) && \
	(((defined(uXm_SUPPORTS_3DNOW) || defined(uXm_SUPPORTS_3DNOWPLUS)) && (defined(uXm_SUPPORTS_MMX) || defined(uXm_SUPPORTS_MMXPLUS))))
#		define uXm_MMX_INTRINSICS 1
#		define uXm_3DNOW_INTRINSICS 1
#  endif
# endif
# elif defined(uXm_XBOXONE)
// XBOXONE

#error ERROR: not implemented!! check how to implement intrinsics for XBOXONE, in XBOXONE sdk intrinsics headers or manuals
#		define uXm_XBOXONE_INTRINSICS 1
# elif defined(uXm_XBOX360)
// XBOX_360
#error ERROR: not implemented!! check how to implement intrinsics for xbox360, in xbox360 sdk intrinsics headers or manuals
#		define uXm_VMX128_INTRINSICS 1
#		define uXm_XBOX360_INTRINSICS 1
# elif defined(uXm_PS3)
// PS3
#error ERROR: not implemented!! check how to implement intrinsics for PS3, in PS3 sdk intrinsics headers or manuals
#if defined(uXm_SPU128PS3)
#		define uXm_SPU128PS3_INTRINSICS 1
#endif
#if defined(uXm_VMX128PS3)
#		define uXm_VMX128_INTRINSICS 1
#		define uXm_VMX128_PS3_INTRINSICS 1
#endif
# elif defined(uXm_PS4)
// PS4
#error ERROR: not implemented!! check how to implement intrinsics for PS4, in PS4 sdk intrinsics headers or manuals
#		define uXm_PS4_INTRINSICS 1
# elif defined(uXm_ARM)
// probably this can be all the same
#   if defined(uXm_ARM_INTRIN)
// Simple ARM no NEON support
#		define uXm_ARM_INTRINSICS 1
#    if defined(uXm_ARM_NEON_INTRIN) && defined(uXm_SUPPORTS_ARM_NEON) && (!defined(uXm_PSP2) && !defined(uXm_PSVITA))
// ARM with NEON support
#		define uXm_ARM_NEON_INTRINSICS 1
#    elif (defined(uXm_PSP2) || defined(uXm_PSVITA))
// PSP2 PSVITA
#error ERROR: not implemented!! check how to implement intrinsics for PSP2 and PSVITA, in sdk PSVITA intrinsics headers or manuals
#		define uXm_PSVITA_INTRINSICS 1
#    elif defined(uXm_ARM_NEON_INTRIN) && !defined(uXm_SUPPORTS_ARM_NEON)
# error ERROR: Target ARM arch does not support ARM_NEON_INTRIN or you have defined-it by error
#    endif
#   endif
# elif !defined(uXm_NO_INTRINSICS)
# error ERROR: eXOAMP does not support this intrinsics target or is not implemented yet
# endif
#endif // !uXm_ARM_NEON_INTRINSICS_ && !uXm_SSE_INTRINSICS_ && !uXm_VMX128_INTRINSICS_ && !uXm_NO_INTRINSICS_

#if !defined(uXm_INTRINSICS_SUPPORT) && (defined(uXm_MMX_INTRINSICS) || defined(uXm_3DNOW_INTRINSICS) || defined(uXm_ARM_NEON_INTRINSICS) || defined(uXm_SSE_INTRINSICS) \
    || defined(uXm_AVX256_INTRINSICS) || defined(uXm_AVX512_INTRINSICS) || defined(uXm_VMX128_INTRINSICS)) && !defined(uXm_NO_INTRINSICS)
#       define uXm_INTRINSICS_SUPPORT 1
#else
#       define uXm_NO_INTRINSICS_SUPPORT 1
#endif

#if defined(uXm_INTRINSICS_SUPPORT) && (defined(uXm_XBOXONE) || defined(uXm_PS4))
#error ERROR: Check xboxone or ps4 processor capabilities for avx or sse,  lets block compilation if we yet not have checked the XBOXOne os PS4 processor type. This block check will be removed...
#endif

// find if multi intrinsics are defined to be build
# if((defined(uXm_MMX_INTRINSICS) || defined(uXm_3DNOW_INTRINSICS)) && (!defined(uXm_SSE_INTRINSICS) && !defined(uXm_AVX256_INTRINSICS) && !defined(uXm_AVX512_INTRINSICS))) || \
	(defined(uXm_SSE_INTRINSICS) && (!defined(uXm_AVX256_INTRINSICS) && !defined(uXm_AVX512_INTRINSICS) && !defined(uXm_MMX_INTRINSICS) && !defined(uXm_3DNOW_INTRINSICS))) || \
	(defined(uXm_AVX256_INTRINSICS) && (!defined(uXm_SSE_INTRINSICS) && !defined(uXm_AVX512_INTRINSICS) && !defined(uXm_MMX_INTRINSICS) && !defined(uXm_3DNOW_INTRINSICS))) || \
	(defined(uXm_AVX512_INTRINSICS) && (!defined(uXm_SSE_INTRINSICS) && !defined(uXm_AVX256_INTRINSICS) && !defined(uXm_MMX_INTRINSICS) && !defined(uXm_3DNOW_INTRINSICS))) || \
	defined(uXm_VMX128_INTRINSICS) || defined(uXm_ARM_NEON_INTRINSICS)
#       define uXm_MULINTRIN 1 /* Only one intrinsics type is defined */
# elif !defined(uXm_NO_INTRINSICS_SUPPORT)
#       define uXm_MULINTRIN 2 /* More than one intrinsics type is defined*/
# else
#       define uXm_MULINTRIN 0 /*  one intrinsics type */
# endif

// find the version of the implemented intrinsics are to be build alone
# if defined(uXm_VMX128_INTRINSICS)
#       define uXm_VERS_INTRINTYPE 8  /* VeXM128 Only */
# elif  defined(uXm_ARM_NEON_INTRINSICS) && !defined(uXm_ARM_INTRINSICS)
#       define uXm_VERS_INTRINTYPE 7  /* ARM NEON Only */
# elif  defined(uXm_ARM_INTRINSICS) && !defined(uXm_ARM_NEON_INTRINSICS)
#       define uXm_VERS_INTRINTYPE 6  /* ARM non NEON Only */
# elif  defined(uXm_AVX512_INTRINSICS) && (!defined(uXm_MMX_INTRINSICS) && !defined(uXm_3DNOW_INTRINSICS) && !defined(uXm_SSE_INTRINSICS) && !defined(uXm_AVX256_INTRINSICS))
#       define uXm_VERS_INTRINTYPE 5  /* AVX512 Only */
# elif  defined(uXm_AVX256_INTRINSICS) && (!defined(uXm_MMX_INTRINSICS) && !defined(uXm_3DNOW_INTRINSICS) && !defined(uXm_SSE_INTRINSICS) && !defined(uXm_AVX512_INTRINSICS))
#       define uXm_VERS_INTRINTYPE 4  /* AVX256 Only */
# elif  defined(uXm_SSE_INTRINSICS) && (!defined(uXm_MMX_INTRINSICS) && !defined(uXm_3DNOW_INTRINSICS) && !defined(uXm_AVX256_INTRINSICS) && !defined(uXm_AVX512_INTRINSICS))
#       define uXm_VERS_INTRINTYPE 3  /* SSE Only */
# elif  defined(uXm_3DNOW_INTRINSICS) && (!defined(uXm_MMX_INTRINSICS) && !defined(uXm_SSE_INTRINSICS) && !defined(uXm_AVX256_INTRINSICS) && !defined(uXm_AVX512_INTRINSICS))
#       define uXm_VERS_INTRINTYPE 2  /* 3DNOW Only */
# elif  defined(uXm_MMX_INTRINSICS) && (!defined(uXm_3DNOW_INTRINSICS) && !defined(uXm_SSE_INTRINSICS) && !defined(uXm_AVX256_INTRINSICS) && !defined(uXm_AVX512_INTRINSICS))
#       define uXm_VERS_INTRINTYPE 1  /* MMX Only */
# else
#       define uXm_VERS_INTRINTYPE 0  /* Multi intrinsics defined or none of the implemented intrinsics are present */
# endif

#if defined(uXm_AVX512_INTRINSICS) || defined(uXm_AVX256_INTRINSICS) || defined(uXm_SSE_INTRINSICS) || defined(uXm_MMX_INTRINSICS) || defined(uXm_3DNOW_INTRINSICS)
#  if defined(uXm_MMX_INTRINSICS) || defined(uXm_3DNOW_INTRINSICS) || (defined(uXm_X86_CPU) && defined(uXm_SSE_INTRINSICS))
#       define uXm_X86_INTRINTYPE 1	/* x86 only intrinsics group */
# elif defined(uXm_X64_CPU)
#       define uXm_X64_INTRINTYPE 1	/* x86_x64 intrinsics group */
#  endif
#endif

#if ((INTEL_INTRIN >=1) || (AMD_INTRIN >=1)) && ((ARM_NEON_INTRIN >=1) || (ARM_INTRIN >= 1))
# error ERROR:  Cannot mix ARM builds with x86 x64 builds
# error ERROR:  Please define only one ARCH type
# error ERROR:  Reason for data alignment requeriments and incompatible code
#endif

#if defined(uXm_X86_OR_X64_CPU) && defined(uXm_INTRINSICS_SUPPORT)
# if (defined(uXm_INTEL_INTRIN) && !defined(uXm_AMD_INTRIN)) && (defined(uXm_AVX512_INTRINSICS) || defined(uXm_AVX256_INTRINSICS) || defined(uXm_AVX256_V2_INTRINSICS) || defined(uXm_SSE_INTRINSICS) || defined(uXm_MMX_INTRINSICS))
#  if (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 60)) && defined(uXm_AVX512_INTRINSICS) && defined(uXm_SUPPORTS_AVX512)
#       define uXm_AVX512 1								/* AVX-512 and MIC */
#       define uXm_FMA_512 1							/* AVX-512 and MIC FMA */
#	 if defined(uXm_AVX256_V2_INTRINSICS) && !defined(uXm_MIC)
#	   if  defined(uXm_SUPPORTS_AVX2)
#       define uXm_AVX2 1								/* AVX-2 */
#	   endif
#	 endif
#	 if defined(uXm_AVX256_INTRINSICS) && !defined(uXm_MIC)
#	   if defined(uXm_SUPPORTS_AVX)
#       define uXm_AVX 1								/* AVX  */
#	   endif
#	   if  defined(uXm_SUPPORTS_FMA3)
#       define uXm_FMA3 1								/* FMA3 */
#	   endif
#	 endif
#	   if  defined(uXm_SUPPORTS_F16C)
#       define uXm_F16C 1								/* F16C */
#	   endif
#	 if defined(uXm_SSE_INTRINSICS) && !defined(uXm_MIC)
#	   if  defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 endif
#	 if defined(uXm_MMX_INTRINSICS) && !defined(uXm_MIC)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 60							/* AVX-512 and or MIC  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 52)) && defined(uXm_AVX256_V2_INTRINSICS) && defined(uXm_SUPPORTS_AVX2) && !defined(uXm_MIC)
#       define uXm_AVX2 1								/* AVX-2 */
#	   if  defined(uXm_SUPPORTS_FMA3)
#       define uXm_FMA3 1								/* FMA3 */
#	   endif
#	   if  defined(uXm_SUPPORTS_F16C)
#       define uXm_F16C 1								/* F16C */
#	   endif
#	   if defined(uXm_SUPPORTS_AVX)
#       define uXm_AVX 1								/* AVX  */
#	   endif
#	 if defined(uXm_SSE_INTRINSICS)
#	   if  defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	  endif
#	 endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 52										/* AVX-2 FMA3 */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 50)) && defined(uXm_AVX256_INTRINSICS) && defined(uXm_SUPPORTS_AVX) && !defined(uXm_MIC)
#       define uXm_AVX 1								/* AVX  */
#	   if  defined(uXm_SUPPORTS_FMA3)
#       define uXm_FMA3 1								/* FMA3 */
#	   endif
#	   if  defined(uXm_SUPPORTS_F16C)
#       define uXm_F16C 1								/* F16C */
#	   endif
#	 if defined(uXm_SSE_INTRINSICS)
#	   if  defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 50							/* AVX  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 42)) && defined(uXm_SSE_INTRINSICS)  && defined(uXm_SUPPORTS_SSE42) && !defined(uXm_MIC)
#       define uXm_SSE42 1								/* SSE4.2  */
#	   if  defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 42							/* SSE4.2  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 41)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE41) && !defined(uXm_MIC)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 41							/* SSE4.1  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 31)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSSE3) && !defined(uXm_MIC)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 31							/* SSEE3  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 30)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE3) && !defined(uXm_MIC)
#       define uXm_SSE3 1								/* SSE3  */
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 30										/* SSE3  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 20)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE2) && !defined(uXm_MIC)
#       define uXm_SSE2 1								/* SSE2  */
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 20										/* SSE2  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 10)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE) && !defined(uXm_MIC)
#       define uXm_SSE 1								/* SSE  */
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 10							/* SSE  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 1)) && defined(uXm_MMX_INTRINSICS) && (defined(uXm_SUPPORTS_MMX) || defined(uXm_SUPPORTS_MMXPLUS)) && \
	 !defined(uXm_MIC)
#       define uXm_MMX 1								/* MMX  */ /* TODO... I need to research this MMX type Intrinsics, first look can be high for Linux*/
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#       define uXm_INTRINSET 8							/* MMX  */
#  endif
# elif (defined(uXm_AMD_INTRIN) && !defined(uXm_INTEL_INTRIN)) && (defined(uXm_AVX512_INTRINSICS) || defined(uXm_AVX256_INTRINSICS) || defined(uXm_SSE_INTRINSICS) || defined(uXm_MMX_INTRINSICS)) && \
	 !defined(uXm_MIC)
#  if (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 60)) && defined(uXm_AVX512_INTRINSICS) && defined(uXm_SUPPORTS_AVX512)
#       define uXm_AVX512 1								/* AVX-512 and MIC */
#       define uXm_FMA_512 1							/* AVX-512 and MIC FMA */
#       define uXm_AVX512VL 1							/* AVX-512 VL */
#       define uXm_AVX512ER 1							/* AVX-512 ER */
#       define uXm_AVX512DQ 1							/* AVX-512 DQ */
#	 if defined(uXm_AVX256_V2_INTRINSICS)
#	   if  defined(uXm_SUPPORTS_AVX2)
#       define uXm_AVX2 1								/* AVX-2 */
#	   endif
#	 endif
#	 if defined(uXm_AVX256_INTRINSICS)
#	   if defined(uXm_SUPPORTS_AVX)
#       define uXm_AVX 1								/* AVX  */
#	   endif
#	   if defined(uXm_SUPPORTS_FMA4)
#       define uXm_FMA4 1								/* FMA3 */
#	   endif
#	   if  defined(uXm_SUPPORTS_FMA3)
#       define uXm_FMA3 1								/* FMA3 */
#	   endif
#	   if defined(uXm_SUPPORTS_XOP)
#       define uXm_XOP 1								/* XOP */
#	   endif
#	   if  defined(uXm_SUPPORTS_F16C)
#       define uXm_F16C 1								/* F16C */
#	   endif
#	 endif
#	 if defined(uXm_SSE_INTRINSICS)
#	   if  defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 60										/* AVX-512 and MIC  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 52)) && defined(uXm_AVX256_V2_INTRINSICS) && defined(uXm_SUPPORTS_AVX2)
#       define uXm_AVX2 1								/* AVX-2 FMA FMA4 */
#	   if defined(uXm_SUPPORTS_FMA4)
#       define uXm_FMA4 1								/* FMA4 */
#	   endif
#	   if defined(uXm_SUPPORTS_FMA3)
#       define uXm_FMA3 1								/* FMA3 */
#	   endif
#	   if defined(uXm_SUPPORTS_AVX)
#       define uXm_AVX 1								/* AVX */
#	   endif
#	   if defined(uXm_SUPPORTS_XOP)
#       define uXm_XOP 1								/* XOP */
#	   endif
#	   if  defined(uXm_SUPPORTS_F16C)
#       define uXm_F16C 1								/* F16C */
#	   endif
#	 if defined(uXm_SSE_INTRINSICS)
#	   if defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE */
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 52										/* AVX-2 FMA FMA4 */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 50)) && defined(uXm_AVX256_INTRINSICS) && defined(uXm_SUPPORTS_AVX)
#       define uXm_AVX 1								/* AVX  */
#	   if defined(uXm_SUPPORTS_FMA4)
#       define uXm_FMA4 1								/* FMA4 */
#	   endif
#	   if defined(uXm_SUPPORTS_FMA3)
#       define uXm_FMA3 1								/* FMA3 */
#	   endif
#	   if defined(uXm_SUPPORTS_XOP)
#       define uXm_XOP 1								/* XOP */
#	   endif
#	   if  defined(uXm_SUPPORTS_F16C)
#       define uXm_F16C 1								/* F16C */
#	   endif
#	 if defined(uXm_SSE_INTRINSICS)
#	   if defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE */
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 50										/* AVX  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 42)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2  */
#	   if defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE */
#	   endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 42										/* SSE4.2  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 41)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   if defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   endif
#	   if defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE */
#	   endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 41										/* SSE4.1  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 40)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A  */
#	   if defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE */
#	   endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 40										/* SSE4A  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 31)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   if defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE */
#	   endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 31										/* SSEE3  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 30)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   if defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2 */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE */
#	   endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 30										/* SSE3  */
#  elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 20)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE */
#	   endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 20										/* SSE2  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 10)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE 1								/* SSE  */
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1
#	   endif
#	 endif
#       define uXm_INTRINSET 10										/* SSE  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 1)) && defined(uXm_3DNOW_INTRINSICS) && (defined(uXm_SUPPORTS_3DNOW) || defined(uXm_SUPPORTS_3DNOWPLUS))
#       define uXm_3DNOW 1								/* 3DNOW */
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1
#	   endif
#       define uXm_INTRINSET 8										/* uXm_3DNOW  */
#  endif
# elif defined(uXm_AMD_INTRIN) && defined(uXm_INTEL_INTRIN) && (defined(uXm_AVX512_INTRINSICS) || defined(uXm_AVX256_INTRINSICS) || defined(uXm_SSE_INTRINSICS) || defined(uXm_MMX_INTRINSICS)) && \
	 !defined(uXm_MIC)
#  if (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 60)) && defined(uXm_AVX512_INTRINSICS) && defined(uXm_SUPPORTS_AVX512)
#       define uXm_AVX512 1								/* AVX-512 and MIC */
#       define uXm_FMA_512 1							/* AVX-512 and MIC FMA */
#       define uXm_AVX512VL 1							/* AVX-512 VL */
#       define uXm_AVX512ER 1							/* AVX-512 ER */
#       define uXm_AVX512DQ 1							/* AVX-512 DQ */
#	 if defined(uXm_AVX256_V2_INTRINSICS)
#	   if  defined(uXm_SUPPORTS_AVX2)
#       define uXm_AVX2 1								/* AVX-2 */
#	   endif
#	 endif
#	 if defined(uXm_AVX256_INTRINSICS)
#	   if defined(uXm_SUPPORTS_AVX)
#       define uXm_AVX 1								/* AVX  */
#	   endif
#	   if defined(uXm_SUPPORTS_FMA4)
#       define uXm_FMA4 1								/* FMA3 */
#	   endif
#	   if  defined(uXm_SUPPORTS_FMA3)
#       define uXm_FMA3 1								/* FMA3 */
#	   endif
#	   if defined(uXm_SUPPORTS_XOP)
#       define uXm_XOP 1								/* XOP */
#	   endif
#	   if  defined(uXm_SUPPORTS_F16C)
#       define uXm_F16C 1								/* F16C */
#	   endif
#	 endif
#	 if defined(uXm_SSE_INTRINSICS)
#	   if  defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#       define SSE_41 41
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 60										/* AVX-512 and or MIC  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 52)) && defined(uXm_AVX256_V2_INTRINSICS) && defined(uXm_SUPPORTS_AVX2)
#       define uXm_AVX2 1								/* AVX-2 */
#	   if defined(uXm_SUPPORTS_FMA4)
#       define uXm_FMA4 1								/* FMA3 */
#	   endif
#	   if  defined(uXm_SUPPORTS_FMA3)
#       define uXm_FMA3 1								/* FMA3 */
#	   endif
#	   if defined(uXm_SUPPORTS_AVX)
#       define uXm_AVX 1								/* AVX  */
#	   endif
#	   if defined(uXm_SUPPORTS_XOP)
#       define uXm_XOP 1								/* XOP */
#	   endif
#	   if  defined(uXm_SUPPORTS_F16C)
#       define uXm_F16C 1								/* F16C */
#	   endif
#	 if defined(uXm_SSE_INTRINSICS)
#	   if  defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 52										/* AVX-2 FMA FMA4 */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 50)) && defined(uXm_AVX256_INTRINSICS) && defined(uXm_SUPPORTS_AVX)
#       define uXm_AVX 1								/* AVX  */
#	   if defined(uXm_SUPPORTS_FMA4)
#       define uXm_FMA4 1								/* FMA3 */
#	   endif
#	   if  defined(uXm_SUPPORTS_FMA3)
#       define uXm_FMA3 1								/* FMA3 */
#	   endif
#	   if defined(uXm_SUPPORTS_XOP)
#       define uXm_XOP 1								/* XOP  */
#	   endif
#	   if  defined(uXm_SUPPORTS_F16C)
#       define uXm_F16C 1								/* F16C */
#	   endif
#	 if defined(uXm_SSE_INTRINSICS)
#	   if  defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 50										/* AVX  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 42)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE42)
#	   if  defined(uXm_SUPPORTS_SSE42)
#       define uXm_SSE42 1								/* SSE4.2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 42										/* SSE4.2  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 41)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   if defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 41										/* SSE4.1  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 40)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE4A)
#       define uXm_SSE4A 1								/* SSE4A */
#	   if  defined(uXm_SUPPORTS_SSE41)
#       define uXm_SSE41 1								/* SSE4.1  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 40										/* SSE4A  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 31)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSSE3)
#       define uXm_SSSE3 1								/* SSEE3  */
#	   if  defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   endif
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 31										/* SSEE3  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 30)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE3)
#       define uXm_SSE3 1								/* SSE3  */
#	   if  defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   endif
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 30										/* SSE3  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 20)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE2 1								/* SSE2  */
#	   if defined(uXm_SUPPORTS_SSE)
#       define uXm_SSE 1								/* SSE  */
#	   endif
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 20										/* SSE2  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 10)) && defined(uXm_SSE_INTRINSICS) && defined(uXm_SUPPORTS_SSE2)
#       define uXm_SSE 1								/* SSE  */
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1							/* MMXPLUS  */
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 10										/* SSE  */
#  elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 1)) || (defined(uXm_MMX_INTRINSICS) && (defined(uXm_SUPPORTS_MMX) || defined(uXm_SUPPORTS_MMXPLUS))) || \
	(defined(uXm_3DNOW_INTRINSICS) && (defined(uXm_SUPPORTS_3DNOW) || defined(uXm_SUPPORTS_3DNOWPLUS)))
#	 if defined(uXm_MMX_INTRINSICS)
#	   if defined(uXm_SUPPORTS_MMX)
#       define uXm_MMX 1								/* MMX  */
#	   endif
#	   if defined(uXm_SUPPORTS_MMXPLUS)
#       define uXm_MMXPLUS 1
#	   endif
#	 endif
#	 if defined(uXm_3DNOW_INTRINSICS)
#	   if defined(uXm_SUPPORTS_3DNOW)
#       define uXm_3DNOW 1								/* 3DNOW  */
#	   endif
#	   if defined(uXm_SUPPORTS_3DNOWPLUS)
#       define uXm_3DNOWPLUS 1							/* 3DNOWPLUS */
#	   endif
#	 endif
#       define uXm_INTRINSET 8										/* MMX & 3DNOW  */
#  endif
# else
#error intrinsics specs not defined
# endif
#elif defined(uXm_ARM) && defined(uXm_INTRINSICS_SUPPORT)
#  if defined(uXm_ARM_INTRIN) && !defined(uXm_ARM_NEON_INTRIN)
/* not implemented yet  */
#  elif defined(uXm_ARM_NEON_INTRIN) && defined(uXm_ARM_NEON_INTRINSICS) && defined(uXm_SUPPORTS_ARM_NEON)
/* not implemented yet  */
#	  ifndef uXm_ARM_NEON
#		define uXm_ARM_NEON 1								/* ARM NEON */
#	  endif
#      if defined(uXm_A64_CPU)
#		define uXm_INTRINSET 20								/* ARM NEON  */ /* with double floating point precision support*/
#      else
#		define uXm_INTRINSET 10								/* ARM NEON  */ /* with single floating point precision support*/
#	   endif
#  endif
#endif

#       define uXm_ISET_AVX512 60
#       define uXm_ISET_AVX2 52
#       define uXm_ISET_AVX 50
#       define uXm_ISET_SSE42 42
#       define uXm_ISET_SSE41 41
#       define uXm_ISET_SSE4A 40
#       define uXm_ISET_SSSE3 31
#       define uXm_ISET_SSE3 30
#       define uXm_ISET_SSE2 20
#       define uXm_ISET_SSE 10
#       define uXm_ISET_MMX 8

// lets search if we can implement this in GPU also!! lets set for higher arch build if available
#if defined(uXm_X86_OR_X64_CPU)
#  if defined(uXm_AVX512)
#       define uXm_SETCONSTBITS 512
#		define uXm_STRUCTSALIGNSET 64
#		define uXm_ALIGNSET 64
#  elif defined(uXm_AVX) || defined(uXm_AVX2)
#       define uXm_SETCONSTBITS 256
#		define uXm_STRUCTSALIGNSET 32
#		define uXm_ALIGNSET 32
#  elif defined(uXm_SSE) || defined(uXm_SSE2)
#       define uXm_SETCONSTBITS 128
#		define uXm_STRUCTSALIGNSET 16
#		define uXm_ALIGNSET 16
#  elif defined(uXm_MMX) || defined(uXm_3DNOW)
#       define uXm_SETCONSTBITS 64
#		define uXm_STRUCTSALIGNSET 8
#		define uXm_ALIGNSET 8
#  endif
#elif defined(uXm_A32_OR_A64_CPU)
# if  defined(uXm_ARM_NEON)
#       define uXm_SETCONSTBITS 128
#		define uXm_STRUCTSALIGNSET 8
#		define uXm_ALIGNSET 8
# elif 
# endif
#endif

#if defined(uXm_X86_OR_X64_CPU)
#  if defined(uXm_AVX512)
#       define uXm_AVX512_SETCONSTBITS 512
#		define uXm_AVX512_STRUCTSALIGNSET 64
#		define uXm_AVX512_ALIGNSET 64
#  endif
#  if defined(uXm_AVX) || defined(uXm_AVX2)
#       define uXm_AVX_SETCONSTBITS 256
#		define uXm_AVX_STRUCTSALIGNSET 32
#		define uXm_AVX_ALIGNSET 32
#  endif
#  if defined(uXm_SSE) || defined(uXm_SSE2)
#       define uXm_SSE_SETCONSTBITS 128
#		define uXm_SSE_STRUCTSALIGNSET 16
#		define uXm_SSE_ALIGNSET 16
#  endif
#  if defined(uXm_MMX) || defined(uXm_3DNOW)
#       define uXm_MMX_SETCONSTBITS 64
#		define uXm_MMX_STRUCTSALIGNSET 8
#		define uXm_MMX_ALIGNSET 8
#  endif
#elif defined(uXm_A32_OR_A64_CPU)
# if  defined(uXm_ARM_NEON)
#       define uXm_ARM_NEON_SETCONSTBITS 128
#		define uXm_ARM_NEON_STRUCTSALIGNSET 8
#		define uXm_ARM_NEON_ALIGNSET 8
#  else
#       define uXm_ARM_SETCONSTBITS 128
#		define uXm_ARM_STRUCTSALIGNSET 8
#		define uXm_ARM_ALIGNSET 8
# endif
#endif

#if defined(_OPENMP)
#define uXm_SUPPORTS_OPENMP 1
#else
#define uXm_SUPPORTS_OPENMP 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 199810)
#define uXm_SUPPORTS_OPENMP_1_0 1
#else
#define uXm_SUPPORTS_OPENMP_1_0 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 200203)
#define uXm_SUPPORTS_OPENMP_2_0 1
#else
#define uXm_SUPPORTS_OPENMP_2_0 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 200505)
#define uXm_SUPPORTS_OPENMP_2_5 1
#else
#define uXm_SUPPORTS_OPENMP_2_5 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 200805)
#define uXm_SUPPORTS_OPENMP_3_0 1
#else
#define uXm_SUPPORTS_OPENMP_3_0 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 201107)
#define uXm_SUPPORTS_OPENMP_3_1 1
#else
#define uXm_SUPPORTS_OPENMP_3_1 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 201307)
#define uXm_SUPPORTS_OPENMP_4_0 1
#else
#define uXm_SUPPORTS_OPENMP_4_0 0
#endif

// disable integer 64bits precision support in all arch's platforms
#if defined(uXm_NO_INT64) || !defined(uXm_ARCH_SUPPORTS_INT64)
#undef uXm_ARCH_SUPPORTS_INT64
#       define uXm_NO_ARCH_SUPPORTS_INT64 1
# endif

// disable double precision support in all arch's platforms
#if defined(uXm_NO_DOUBLE) || !defined(uXm_ARCH_SUPPORTS_DOUBLE)
#undef uXm_ARCH_SUPPORTS_DOUBLE
#       define uXm_NO_ARCH_SUPPORTS_DOUBLE 1
# endif

// enable fast precision on all platforms, this will enable concurrency::fast_math also if AMP suppport is enabled for the platform
# if defined(_M_FP_FAST)
#       define uXm_USE_FAST 1
# endif

// enable precise precision on all platforms, this will enable concurrency::precise_math also if AMP suppport is enabled for the platform
# if defined(_M_FP_PRECISE)
#       define uXm_USE_PRECISE 1
# endif

// enable strict precision on all platforms, this will enable concurrency::precise_math also if AMP suppport is enabled for the platform
# if defined(_M_FP_STRICT)
#       define uXm_USE_STRICT 1
# endif

// check if the preprocessor have this enabled at same time
# if (defined(uXm_USE_FAST) && (uXm_USE_FAST >= 1)) && ((defined(uXm_USE_PRECISE) && (uXm_USE_PRECISE >= 1)) || (defined(uXm_USE_STRICT) && (uXm_USE_STRICT >= 1))) || \
     (defined(uXm_USE_PRECISE) && (uXm_USE_PRECISE >= 1)) && ((defined(uXm_USE_FAST) && (uXm_USE_FAST >= 1)) || (defined(uXm_USE_STRICT) && (uXm_USE_STRICT >= 1))) || \
     (defined(uXm_USE_STRICT) && (uXm_USE_STRICT >= 1)) && ((defined(uXm_USE_FAST) && (uXm_USE_FAST >= 1)) || (defined(uXm_USE_PRECISE) && (uXm_USE_PRECISE >= 1))) 
#error ERROR: Cant use tow distincts precison types at same time
#error ERROR: Check your precision model type in your VS-IDE or your preprocessor compiler type
# endif

# if !defined(uXm_USE_FAST) && !defined(uXm_USE_PRECISE) && !defined(uXm_USE_STRICT)
#error ERROR: Please set your precision selection
# endif

#if defined(uXm_INTRINSICS_SUPPORT) && !defined(uXm_NO_INTRINSICS)
#       define uXm_USE_INTRINSICS 1
# endif

#if defined(uXm_AMP_SUPPORT) && !defined(uXm_NO_AMP)
#       define uXm_USE_AMP 1
#endif

#if defined(uXm_CUDA_SUPPORT) && !defined(uXm_NO_CUDA)
#       define uXm_USE_CUDA 1
# endif

#if defined(uXm_X64_CPU) && (defined(uXm_SSE) || defined(uXm_MMX) || defined(uXm_3DNOW)) && (defined(uXm_INTRINSET) && uXm_INTRINSET < 20)
#error ERROR: High arch platform type for MMX, 3DNOW and SSE1, please use SSE2 or greater
#elif (defined(uXm_X86_CPU) && (defined(uXm_MMX) || defined(uXm_3DNOW))) && defined(uXm_USE_PRECISE) && defined(uXm_USE_STRICT)
#error ERROR: x86 MMX/3DNOW platform cannot support double and strict/precise precision
#elif (defined(uXm_X86_CPU) && (defined(uXm_MMX) || defined(uXm_3DNOW))) && !defined(uXm_USE_PRECISE) && !defined(uXm_USE_STRICT)
// disable double precision and enables fast precision in x86 (MMX/3DNOW)
#       define uXm_FAST_SUPPORT 1
#       define uXm_FAST_PRECISION 1
#       define uXm_USE_FAST_PRECISION 1
#       define uXm_FLOAT_SUPPORT 1
#       define uXm_SINGLE_PRECISION 1
#       define uXm_USE_F32 1
#       define uXm_REAL_USE_F32 1
#       define uXm_USE_SINGLE_PRECISION 1
# ifdef uXm_USE_INTRINSICS
#       define uXm_INTRINSICS_USE_FAST_PRECISION 1
#       define uXm_INTRINSICS_USE_SINGLE_PRECISION 1
# endif
#       define uXm_NO_DOUBLE_SUPPORT 1
#       define uXm_NO_DOUBLE_PRECISION 1
#       define uXm_NO_PRECISE_SUPPORT 1
#       define uXm_NO_PRECISE_PRECISION 1
#       define uXm_NO_STRICT_SUPPORT 1
#       define uXm_NO_STRICT_PRECISION 1
#       define uXm_NO_AMP_SUPPORT 1
#       define uXm_NO_AMP 1
#       undef uXm_AMP_SUPPORT
#       undef uXm_USE_AMP
#       define uXm_NO_CUDA_SUPPORT 1
#       define uXm_NO_CUDA 1
#       undef uXm_CUDA_SUPPORT
#       undef uXm_USE_CUDA
#elif defined(uXm_ARCH_SUPPORTS_DOUBLE) && (defined(uXm_USE_PRECISE) || defined(uXm_USE_STRICT))
#       define uXm_DOUBLE_SUPPORT 1		/* with double support you have float support enabled also, just the REALs change to double precision*/
#       define uXm_DOUBLE_PRECISION 1
# ifdef uXm_USE_PRECISE
#       define uXm_PRECISE_SUPPORT 1
#       define uXm_PRECISE_PRECISION 1
#       define uXm_USE_PRECISE_PRECISION 1
# ifdef uXm_USE_INTRINSICS
#       define uXm_INTRINSICS_USE_PRECISE_PRECISION 1
# endif
# ifdef uXm_USE_AMP
#       define uXm_AMP_USE_PRECISE_PRECISION 1
# endif
# ifdef uXm_USE_CUDA
#       define uXm_CUDA_USE_PRECISE_PRECISION 1
# endif
#       define uXm_NO_STRICT_SUPPORT 1
#       define uXm_NO_STRICT_PRECISION 1	/* lets secure STRICT macros aren't enable by mistake */
# endif
# ifdef uXm_USE_STRICT
#       define uXm_STRICT_SUPPORT 1
#       define uXm_STRICT_PRECISION 1
#       define uXm_USE_STRICT_PRECISION 1
# ifdef uXm_USE_INTRINSICS
#       define uXm_INTRINSICS_USE_STRICT_PRECISION 1
# endif
# ifdef uXm_USE_AMP
#       define uXm_AMP_USE_STRICT_PRECISION 1
# endif
# ifdef uXm_USE_CUDA
#       define uXm_CUDA_USE_STRICT_PRECISION 1
# endif
#       define uXm_NO_PRECISE_SUPPORT 1
#       define uXm_NO_PRECISE_PRECISION 1	/* lets secure precise macros aren't enable by mistake */
# endif
#       define uXm_USE_F64 1
#       define uXm_REAL_USE_F64 1
#       define uXm_USE_DOUBLE_PRECISION 1
# ifdef uXm_USE_INTRINSICS
#       define uXm_INTRINSICS_USE_DOUBLE_PRECISION 1
# endif
# ifdef uXm_USE_AMP
#       define uXm_AMP_USE_DOUBLE_PRECISION 1
# endif
# ifdef uXm_USE_CUDA
#       define uXm_CUDA_USE_DOUBLE_PRECISION 1
# endif
#       define uXm_NO_FAST_SUPPORT 1
#       define uXm_NO_FAST_PRECISION 1
//#       define uXm_NO_FLOAT_SUPPORT 1		/* float are hallways available */
//#       define uXm_NO_SINGLE_PRECISION 1		/* float are hallways available */
#elif defined(uXm_NO_ARCH_SUPPORTS_DOUBLE) && (defined(uXm_USE_PRECISE) || defined(uXm_USE_STRICT))
#       define uXm_FLOAT_SUPPORT 1
#       define uXm_SINGLE_PRECISION 1
# ifdef uXm_USE_PRECISE
#       define uXm_PRECISE_SUPPORT 1
#       define uXm_PRECISE_PRECISION 1
#       define uXm_USE_PRECISE_PRECISION 1
# ifdef uXm_USE_INTRINSICS
#       define uXm_INTRINSICS_USE_PRECISE_PRECISION 1
# endif
# ifdef uXm_USE_AMP
#       define uXm_AMP_USE_PRECISE_PRECISION 1
# endif
# ifdef uXm_USE_CUDA
#       define uXm_CUDA_USE_PRECISE_PRECISION 1
# endif
#       define uXm_NO_STRICT_SUPPORT 1
#       define uXm_NO_STRICT_PRECISION 1
# endif
# ifdef uXm_USE_STRICT
#       define uXm_STRICT_SUPPORT 1
#       define uXm_STRICT_PRECISION 1
#       define uXm_USE_STRICT_PRECISION 1
# ifdef uXm_USE_INTRINSICS
#       define uXm_INTRINSICS_USE_STRICT_PRECISION 1
# endif
# ifdef uXm_USE_AMP
#       define uXm_AMP_USE_STRICT_PRECISION 1
# endif
# ifdef uXm_USE_CUDA
#       define uXm_CUDA_USE_STRICT_PRECISION 1
# endif
#       define uXm_NO_PRECISE_SUPPORT 1
#       define uXm_NO_PRECISE_PRECISION 1
# endif
#       define uXm_USE_F32 1
#       define uXm_REAL_USE_F32 1
#       define uXm_USE_SINGLE_PRECISION 1
# ifdef uXm_USE_INTRINSICS
#       define uXm_INTRINSICS_USE_SINGLE_PRECISION 1
# endif
# ifdef uXm_USE_AMP
#       define uXm_AMP_USE_SINGLE_PRECISION 1
# endif
# ifdef uXm_USE_CUDA
#       define uXm_CUDA_USE_SINGLE_PRECISION 1
# endif
#       define uXm_NO_FAST_SUPPORT 1
#       define uXm_NO_FAST_PRECISION 1		/* lets secure fast macros aren't enable by mistake */
#       define uXm_NO_DOUBLE_SUPPORT 1
#       define uXm_NO_DOUBLE_PRECISION 1		/* lets secure double macros aren't enable by mistake */
#elif defined(uXm_USE_FAST)
#       define uXm_FAST_SUPPORT 1
#       define uXm_FAST_PRECISION 1
#       define uXm_USE_FAST_PRECISION 1
#       define uXm_FLOAT_SUPPORT 1
#       define uXm_SINGLE_PRECISION 1
#       define uXm_USE_F32 1
#       define uXm_REAL_USE_F32 1
#       define uXm_USE_SINGLE_PRECISION 1
# ifdef uXm_USE_INTRINSICS
#       define uXm_INTRINSICS_USE_FAST_PRECISION 1
#       define uXm_INTRINSICS_USE_SINGLE_PRECISION 1
# endif
# ifdef uXm_USE_AMP
#       define uXm_AMP_USE_FAST_PRECISION 1
#       define uXm_AMP_USE_SINGLE_PRECISION 1
# endif
# ifdef uXm_USE_CUDA
#       define uXm_CUDA_USE_FAST_PRECISION 1
#       define uXm_CUDA_USE_SINGLE_PRECISION 1
# endif
#       define uXm_NO_DOUBLE_SUPPORT 1
#       define uXm_NO_DOUBLE_PRECISION 1		/* lets secure double macros aren't enable by mistake */
#       define uXm_NO_PRECISE_SUPPORT 1
#       define uXm_NO_PRECISE_PRECISION 1	/* lets secure precise macros aren't enable by mistake */
#       define uXm_NO_STRICT_SUPPORT 1
#       define uXm_NO_STRICT_PRECISION 1	/* lets secure STRICT macros aren't enable by mistake */
#elif defined(uXm_ARCH_SUPPORTS_DOUBLE) && defined(uXm_USE_FAST)
#error ERROR: fast precision support cannot be used with double precision floating-point for conformance with ISO C and C++ standard
#else
#error ERROR: Unknown precison support
#endif

#if defined(uXm_ARCH_SUPPORTS_INT64) && !defined(uXm_NO_ARCH_SUPPORTS_INT64)
#       define uXm_INT64_SUPPORT 1
#       define uXm_USE_INT64 1
#else
#       define uXm_NO_INT64_SUPPORT 1
#endif

#if !defined(uXm_GPU_VERS_SET)
#  if defined(uXm_CUDA_GPU) && (__CUDA_ARCH__ >= 200)
#		define uXm_GPU_VERS_SET 200
#  elif defined(uXm_CUDA_GPU) && (__CUDA_ARCH__ >= 130)
#		define uXm_GPU_VERS_SET 130
#  endif
#endif

#if ((defined(uXm_GPU_VERS_SET) && (uXm_GPU_VERS_SET >= 130)) || (defined(uXm_INTRINSET) && (uXm_INTRINSET >= 20))) && defined(uXm_USE_DOUBLE_PRECISION)
#		define uXm_SUPPORTS_DOUBLE_MASKS_AS_I64 1
#endif

#if defined(uXm_SUPPORTS_DOUBLE_MASKS_AS_I64) && defined(uXm_USE_INT64)
#		define uXm_DOUBLE_MASKS_AS_I64 1
#endif

// SSE Vector registers types are enable by default and disabled if building for AVX
// Intrinsics vector are mapped to __m128* for x86||x64 platforms, __n128* for ARM platforms

// Enable AVX vector registers size type in all vector registers types
// AVX registers size is enabled by default in Intrinsics vector and mapped to __m256* functions  if building for AVX
/*
#if defined(uXm_INTRINSICS_SUPPORT)
#error ERROR: is necessary to clone this class to different alignments
#if defined(uXm_AVX256_INTRINSICS)
#       define uXm_AVX_VECTOR_REGISTERS 1
#       define uXm_REALVEC_AVX_REGISTERS 1
#       define uXm_STDVEC_AVX_REGISTERS 1
#elif defined(uXm_SSE_INTRINSICS)
#		define uXm_SSE_VECTOR_REGISTERS 1
#       define uXm_REALVEC_SSE_REGISTERS 1
#       define uXm_STDVEC_SSE_REGISTERS 1
#elif defined(uXm_ARM_NEON_INTRINSICS)
#       define uXm_ARM_NEON_VECTOR_REGISTERS 1
#       define uXm_REALVEC_ARM_NEON_REGISTERS 1
#       define uXm_STDVEC_ARM_NEON_REGISTERS 1
#endif
#  if defined(uXm_AVX256_INTRINSICS) && defined(uXm_AVX_VECTOR_REGISTERS)
#       define uXm_AVX_USE_VECTOR_REGISTERS 1
#  elif defined(uXm_SSE_INTRINSICS) && defined(uXm_SSE_VECTOR_REGISTERS)
#       define uXm_SSE_USE_VECTOR_REGISTERS 1
#  elif defined(uXm_ARM_NEON_INTRINSICS) && defined(uXm_ARM_NEON_VECTOR_REGISTERS)
#       define uXm_ARM_NEON_USE_VECTOR_REGISTERS 1
#endif

#  if defined(uXm_AVX256_INTRINSICS) && defined(uXm_REALVEC_AVX_REGISTERS)
#       define uXm_REALVEC_USE_AVX_REGISTERS 1
#  elif defined(uXm_SSE_INTRINSICS) && defined(uXm_REALVEC_SSE_REGISTERS)
#       define uXm_REALVEC_USE_SSE_REGISTERS 1
# elif defined(uXm_ARM_NEON_INTRINSICS) && defined(uXm_REALVEC_ARM_NEON_REGISTERS)
#       define uXm_REALVEC_USE_ARM_NEON_REGISTERS 1
#  endif

# if defined(uXm_AVX256_INTRINSICS) && defined(uXm_STDVEC_AVX_REGISTERS)
#       define uXm_STDVEC_USE_AVX_REGISTERS 1
# elif defined(uXm_SSE_INTRINSICS) && defined(uXm_STDVEC_SSE_REGISTERS)
#       define uXm_STDVEC_USE_SSE_REGISTERS 1
# elif defined(uXm_ARM_NEON_INTRINSICS) && defined(uXm_STDVEC_ARM_NEON_REGISTERS)
#       define uXm_STDVEC_USE_ARM_NEON_REGISTERS 1
# endif
#endif*/ // uXm_INTRINSICS_SUPPORT

// check that exactly one of NDEBUG and _DEBUG is defined
#if ((defined(NDEBUG) && defined(_DEBUG)) || ((defined(NDEBUG) && defined(DEBUG))))
# error ERROR: Exactly one of NDEBUG and _DEBUG needs to be defined by preprocessor
#endif

// make sure uXm_DEBUG is defined in all _DEBUG configurations as well
#if !defined(NDEBUG) && (defined(_DEBUG) || defined(DEBUG))
#       define uXm_DEBUG 1
#endif

// make sure uXm_DEBUG is defined in all _DEBUG configurations as well
#if (defined(NDEBUG) || defined(_NDEBUG)) && !defined(_DEBUG) && !defined(DEBUG)
#       define uXm_NDEBUG 1
#endif

// enable output debug in intrinsics vectors
#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_DEBUG)
#define uXm_INTRIN_DEBUG 1
#endif

#ifdef uXm_DEBUG
#       define uXm_BUILD_TYPE  "debug"
#       define uXm_BUILD_PREFIX  "_"
#else
#       define uXm_BUILD_TYPE  ""
#       define uXm_BUILD_PREFIX  ""
#endif

#if defined(uXm_ARM) && !defined(uXm_PHONE_APP)
#  if defined(uXm_ARM_NEON)
#       define uXm_PLATFORM_ARM_NEON 1
#  else
#       define uXm_PLATFORM_ARM 1
#  endif
#endif

#ifdef uXm_SPU
#       define uXm_IS_SPU 1
#else
#       define uXm_IS_SPU 0
#endif

#ifdef uXm_PPU
#       define uXm_IS_PPU 1
#else
#       define uXm_IS_PPU 0
#endif

#ifdef uXm_X64
#       define uXm_IS_X64 1
#else
#       define uXm_IS_X64 0
#endif

#ifdef uXm_X86
#       define uXm_IS_X86 1
#else
#       define uXm_IS_X86 0
#endif

#ifdef uXm_WINDOWS
#       define uXm_IS_WINDOWS 1
#else
#       define uXm_IS_WINDOWS 0
#endif

#ifdef uXm_LINUX
#       define uXm_IS_LINUX 1
#else
#       define uXm_IS_LINUX 0
#endif

#ifdef uXm_ANDROID
#       define uXm_IS_ANDROID 1
#else
#       define uXm_IS_ANDROID 0
#endif

#ifdef uXm_ARM
#       define uXm_IS_ARM 1
#else
#       define uXm_IS_ARM 0
#endif

#ifdef uXm_IOS
#       define uXm_IS_IOS 1
#else
#       define uXm_IS_IOS 0
#endif

#ifdef uXm_MACOSX
#       define uXm_IS_MAC_OSX 1
#else
#       define uXm_IS_MAC_OSX 0
#endif

#ifdef uXm_XBOXONE
#       define uXm_IS_XBOXONE 1
#else
#       define uXm_IS_XBOXONE 0
#endif

/*
#if defined(uXm_X86) || defined(uXm_X64)
#       define uXm_IS_INTEL 1
#else
#       define uXm_IS_INTEL 0
#endif*/

#ifdef uXm_XBOX360
#       define uXm_IS_XBOX360 1
#else
#       define uXm_IS_XBOX360 0
#endif

#ifdef uXm_PS3
#       define uXm_IS_PS3 1
#else
#       define uXm_IS_PS3 0
#endif

#ifdef uXm_PS4
#       define uXm_IS_PS4 1
#else
#       define uXm_IS_PS4 0
#endif

#ifdef uXm_PSVITA
#       define uXm_IS_PSVITA 1
#else
#       define uXm_IS_PSVITA 0
#endif

#ifdef uXm_WIIU
#       define uXm_IS_WIIU 1
#else
#       define uXm_IS_WIIU 0
#endif

// GPU Support
#if defined(uXm_AMP_GPU) || defined(uXm_CUDA_GPU) || defined(uXm_INTEL_GFX_GPU) || defined(uXm_OPENCL_GPU)
#       define uXm_GPU_SUPPORT 1
#else
#       define uXm_NO_GPU_SUPPORT 1
#endif

// Compiler for GPU Support
#if defined(uXm_AMPCC) || defined(uXm_CUDACC) || defined(uXm_INTELCC_GFX)
#       define uXm_CC_GPU_SUPPORT 1
#else
#       define uXm_NO_CC_GPU_SUPPORT 1
#endif

// Compiler pre defines for Cuda/Intel GPU functions Support
#if (defined(uXm_CUDACC) || defined(uXm_INTELCC_GFX)) && !defined(uXm_AMPCC)
#       define uXm_CC_PDEF_GPU_SUPPORT 1
#else
#       define uXm_NO_CC_PDEF_GPU_SUPPORT 1
#endif

#endif // uXm_PREPROCESSOR_H
