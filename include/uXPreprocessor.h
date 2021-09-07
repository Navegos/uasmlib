/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /																				/ /
; / /			Copyright 2021 (c) Navegos QA - optimized library					/ /
; / /																				/ /
; / /	Licensed under the Apache License, Version 2.0 (the "License");				/ /
; / /	you may not use this file except in compliance with the License.			/ /
; / /	You may obtain a copy of the License at										/ /
; / /																				/ /
; / /		http://www.apache.org/licenses/LICENSE-2.0								/ /
; / /																				/ /
; / /	Unless required by applicable law or agreed to in writing, software			/ /
; / /	distributed under the License is distributed on an "AS IS" BASIS,			/ /
; / /	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.	/ /
; / /	See the License for the specific language governing permissions and			/ /
; / /	limitations under the License.												/ /
; / /																				/ /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_PREPROCESSOR_H
#define uX_PREPROCESSOR_H 1

// Helper macros to convert value of macro to string literal.
#ifndef _uX_Stringer
#		define _uX_Stringer(x) #x
#endif
#ifndef uX_Stringer
#		define uX_Stringer(x)	_uX_Stringer(x)
#endif

#ifndef _uX_Con_Stringer
#define _uX_Con_Stringer(a, b) a##b
#endif
#ifndef uX_Con_Stringer
#define uX_Con_Stringer(a, b) _uX_Con_Stringer(a, b)
#endif

/**
Compiler defines
*/
#if defined(_MSC_VER) && !defined(__INTEL_COMPILER) && !defined(__clang__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#ifndef uX_VC
#		define uX_VC 1	/* MSVC Compiler */
#endif
#ifndef uX_MSVC_COMPILER
#		define uX_MSVC_COMPILER 1	/* MSVC Compiler */
#endif
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "vc"
#	if defined(_MSC_VER) && (_MSC_VER == 1200)
#		define uX_VC6 1
#		define uX_COMPILER "Microsoft Visual C++ 6"
#	elif defined(_MSC_VER) && (_MSC_VER == 1300)
#		define uX_VC7 1
#		define uX_COMPILER "Microsoft Visual C++ 7"
#	elif defined(_MSC_VER) && (_MSC_VER == 1400)
#		define uX_VC8 1
#		define uX_COMPILER "Microsoft Visual C++ 8"
#	elif defined(_MSC_VER) && (_MSC_VER == 1500)
#		define uX_VC9 1
#		define uX_COMPILER "Microsoft Visual C++ 9"
#	elif defined(_MSC_VER) && (_MSC_VER == 1600)
#		define uX_VC10 1
#		define uX_COMPILER "Microsoft Visual C++ 10"
#	elif defined(_MSC_VER) && (_MSC_VER == 1700)
#		define uX_VC11 1
#		define uX_COMPILER "Microsoft Visual C++ 11"
#	elif defined(_MSC_VER) && (_MSC_VER == 1800)
#		define uX_VC12 1
#		define uX_COMPILER "Microsoft Visual C++ 12"
#	elif defined(_MSC_VER) && (_MSC_VER == 1900)
#		define uX_VC14 1
#		define uX_COMPILER "Microsoft Visual C++ 14"
#	elif defined(_MSC_VER) && (_MSC_VER == 1910)
#		define uX_VC14_1 1
#		define uX_COMPILER "Microsoft Visual C++ 15.0"
#	elif defined(_MSC_VER) && (_MSC_VER == 1911)
#		define uX_VC14_11 1
#		define uX_COMPILER "Microsoft Visual C++ 15.3"
#	elif defined(_MSC_VER) && (_MSC_VER == 1912)
#		define uX_VC14_12 1
#		define uX_COMPILER "Microsoft Visual C++ 15.5"
#	elif defined(_MSC_VER) && (_MSC_VER == 1913)
#		define uX_VC14_13 1
#		define uX_COMPILER "Microsoft Visual C++ 15.6"
#	elif defined(_MSC_VER) && (_MSC_VER == 1914)
#		define uX_VC14_14 1
#		define uX_COMPILER "Microsoft Visual C++ 15.7"
#	elif defined(_MSC_VER) && (_MSC_VER == 1915)
#		define uX_VC14_15 1
#		define uX_COMPILER "Microsoft Visual C++ 15.8"
#	elif defined(_MSC_VER) && (_MSC_VER == 1916)
#		define uX_VC14_16 1
#		define uX_COMPILER "Microsoft Visual C++ 15.9"
#	elif defined(_MSC_VER) && (_MSC_VER == 1920)
#		define uX_VC14_2 1
#		define uX_COMPILER "Microsoft Visual C++ 16.0"
#	elif defined(_MSC_VER) && (_MSC_VER == 1921)
#		define uX_VC14_21 1
#		define uX_COMPILER "Microsoft Visual C++ 16.1.2"
#	elif defined(_MSC_VER) && (_MSC_VER == 1922)
#		define uX_VC14_22 1
#		define uX_COMPILER "Microsoft Visual C++ 16.2.0"
#	elif defined(_MSC_VER) && (_MSC_VER == 1923)
#		define uX_VC14_23 1
#		define uX_COMPILER "Microsoft Visual C++ 16.2.3"
#	elif defined(_MSC_VER) && (_MSC_VER == 1924)
#		define uX_VC14_24 1
#		define uX_COMPILER "Microsoft Visual C++ 16.2.4"
#	elif defined(_MSC_VER) && (_MSC_VER == 1925)
#		define uX_VC14_25 1
#		define uX_COMPILER "Microsoft Visual C++ 16.2.5"
#	elif defined(_MSC_VER) && (_MSC_VER == 1926)
#		define uX_VC14_26 1
#		define uX_COMPILER "Microsoft Visual C++ 16.2.6"
#	elif defined(_MSC_VER) && (_MSC_VER == 1927)
#		define uX_VC14_27 1
#		define uX_COMPILER "Microsoft Visual C++ 16.2.7"
#	elif defined(_MSC_VER) && (_MSC_VER == 1928)
#		define uX_VC14_28 1
#		define uX_COMPILER "Microsoft Visual C++ 16.2.8"
#	elif defined(_MSC_VER) && (_MSC_VER == 1929)
#		define uX_VC14_29 1
#		define uX_COMPILER "Microsoft Visual C++ 16.2.9"
#	else
#error ERROR: add your vc compiler version
#	endif
#	if defined(_MSC_VER) && ((_MSC_VER >= 1600) && (_MSC_VER < 1800))
#		ifdef uX_COMPILER_INTRIN
#		undef uX_COMPILER_INTRIN
#		endif
#		define uX_COMPILER_INTRIN 50
#	endif
#	if defined(_MSC_VER) && ((_MSC_VER >= 1700) && (_MSC_VER < 1911))
#		ifdef uX_COMPILER_INTRIN
#		undef uX_COMPILER_INTRIN
#		endif
#		define uX_COMPILER_INTRIN 52
#	endif
#	if defined(_MSC_VER) && (_MSC_VER >= 1911)
#		ifdef uX_COMPILER_INTRIN
#		undef uX_COMPILER_INTRIN
#		endif
#		define uX_COMPILER_INTRIN 60
#	endif
#elif defined(__INTEL_COMPILER) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
# if defined(_MSC_VER)
#	ifndef uX_ICW
#		define uX_ICW 1 /* Intel compiler for Windows */
#	endif
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "icw"
#else
#	ifndef uX_ICU
#		define uX_ICU 1 /* Intel compiler for Unix/Linux/Mac OSX */
#	endif
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "icu"
# endif
#	ifndef uX_ICC
#		define uX_ICC 1 /* Intel compiler for Windows/Unix/Linux/Mac OSX */
#	endif
#	ifndef uX_INTEL_COMPILER
#		define uX_INTEL_COMPILER 1 /* Intel compiler */
#	endif
#if defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1010)
#		define uX_ICC101 1
#		define uX_COMPILER "Intel C++ Compiler 10.1"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1100)
#		define uX_ICC110 1
#		define uX_COMPILER "Intel C++ Compiler 11.0"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1110)
#		define uX_ICC111 1
#		define uX_COMPILER "Intel C++ Compiler 11.1"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1200)
#		define uX_ICC120 1
#		define uX_COMPILER "Intel C++ Compiler 12.0"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1210)
#		define uX_ICC121 1
#		define uX_COMPILER "Intel C++ Compiler 12.1"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1300)
#		define uX_ICC130 1
#		define uX_COMPILER "Intel C++ Compiler 13.0"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1310)
#		define uX_ICC131 1
#		define uX_COMPILER "Intel C++ Compiler 13.1"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1400)
#		define uX_ICC140 1
#		define uX_COMPILER "Intel C++ Compiler 14.0"
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1410)
#		define uX_ICC141 1
#		define uX_COMPILER "Intel C++ Compiler 14.1"
#		define uX_COMPILER_INTRIN 52
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1500)
#		define uX_ICC150 1
#		define uX_COMPILER "Intel C++ Compiler 15.0"
#		define uX_COMPILER_INTRIN 52
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1501)
#		define uX_ICC1501 1
#		define uX_COMPILER "Intel C++ Compiler 15.0.1"
#		define uX_COMPILER_INTRIN 60
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1600)
#		define uX_ICC1600 1
#		define uX_COMPILER "Intel C++ Compiler 16.0.0"
#		define uX_COMPILER_INTRIN 60
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1700)
#		define uX_ICC1700 1
#		define uX_COMPILER "Intel C++ Compiler 17.0.0"
#		define uX_COMPILER_INTRIN 60
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1800)
#		define uX_ICC1800 1
#		define uX_COMPILER "Intel C++ Compiler 18.0.0"
#		define uX_COMPILER_INTRIN 60
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 1900)
#		define uX_ICC1900 1
#		define uX_COMPILER "Intel C++ Compiler 19.0.0"
#		define uX_COMPILER_INTRIN 60
#elif defined(__INTEL_COMPILER) && (__INTEL_COMPILER == 9999)
#		define uX_ICC9999 1
#		define uX_COMPILER "Intel C++ Compiler mainline"
#else
#error ERROR: Unknown version or add your Intel compiler version
#endif
#elif defined(__clang__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
# if defined(_MSC_VER)
#	ifndef uX_CLANGW
#		define uX_CLANGW 1 /* Clang compiler for Windows */
#	endif
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "clangw"
#else
#	ifndef uX_CLANGU
#		define uX_CLANGU 1 /* Clang compiler for Unix/Linux/Mac OSX */
#	endif
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "clangu"
# endif
#ifndef uX_CLANG
#		define uX_CLANG 1
#endif
#		define uX_COMPILER "Clang " uX_Stringer(__clang_major__) "." uX_Stringer(__clang_minor__)
# if defined(__clang_major__) && (((__clang_major__ >=3) && (__clang_minor__ >=9)) || (__clang_major__ >=4))
#		define uX_COMPILER_INTRIN 60
# endif
#elif (defined(__GNUC__) || defined(__GCC__) || defined(__SNC__)) && !defined(__clang__) && !defined(__INTEL_COMPILER) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
# if defined(__GNUC__)
#		define uX_GNUC 1
# endif
# if	defined(__GCC__)
#	if defined(_MSC_VER)
#		define uX_GCCW 1
#	else
#		define uX_GCCU 1
#	endif
#		define uX_GCC 1
# endif
# if	defined(__SNC__)
#		define uX_SNC 1
# endif
#		define uX_COMPILER "GNUC " uX_Stringer(__GNUC__) "." uX_Stringer(__GNUC_MINOR__)
# if defined(__GNUC__) && (((__GNUC__ >=4) && (__GNUC_MINOR__ >=9)) || (__GNUC__ >=5))
#		define uX_COMPILER_INTRIN 60
# endif
#elif defined(__xlc__) || defined(__xlC__) || defined(__IBMC__) || defined(__IBMCPP__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#		define uX_IBMC 1
#		define uX_IBM_COMPILER 1
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "ibmc"
#		define uX_COMPILER "IBMC " uX_Stringer(__IBMC__) "." uX_Stringer(__IBMC_MINOR__)
#elif defined(__PGI) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#		define uX_PGI 1
#		define uX_PGI_COMPILER 1
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "pgi"
#		define uX_COMPILER "PGI " uX_Stringer(__PGI__) "." uX_Stringer(__PGI_MINOR__)
#elif defined(__APPLE_CC__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#		define uX_APPLECC 1
#		define uX_APPLE_COMPILER 1
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "applecc"
#		define uX_COMPILER "APPLECC " uX_Stringer(__APPLE_CC__) "." uX_Stringer(__APPLE_CC_MINOR__)
#elif defined(__BORLANDC__) || defined(__CODEGEARC__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#		define uX_BORLAND 1
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "borland"
#		define uX_COMPILER "EMBARCADERO " uX_Stringer(__BORLANDC__) "." uX_Stringer(__BORLANDC_MINOR__)
#elif defined(__PATHCC__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#		define uX_PATHCC 1
#		define uX_PATHCC_COMPILER 1
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "pathscale"
#		define uX_COMPILER "Pathscale " uX_Stringer(__PATHCC__) "." uX_Stringer(__PATHCC_MINOR__)
#elif defined(__ghs__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#		define uX_GHS 1
#elif defined(__CC_ARM) || defined(__ARMCC__)
#		define uX_ARMCC 1
#		define uX_ARM_COMPILER 1
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "armcc"
#		define uX_COMPILER "ARMCC " uX_Stringer(__ARMCC__) "." uX_Stringer(__ARMCC_MINOR__)
#elif defined(__MWERKS__) && !defined(__CUDA_ARCH__) && !defined(__CUDACC__)
#		define uX_MWERKS 1
#elif defined(__CUDA_ARCH__) || defined(__CUDACC__)
#		define uX_CUDA 1
#		define uX_CUDACC 1
#		define uX_CUDA_COMPILER 1
#	if defined(_MSC_VER)
#		define uX_CUDAW 1 /* Nvidia Cuda compiler for Windows */
#	else
#		define uX_CUDAU 1 /* Nvidia Cuda compiler for Unix */
#	endif
#undef uX_COMPILER_STR
#		define uX_COMPILER_STR "cudacc"
#		define uX_COMPILER "Nvidia Cuda Compiler " uX_Stringer(__CUDACC__) "." uX_Stringer(__CUDACC_MINOR__)
#else
# error ERROR: Unknown compiler
# error ERROR: Compiler needs to be implemented
#endif

#if defined(uX_VC) || defined(uX_CLANGW) || defined(uX_ICW) || defined(uX_GCCW) /*|| defined(uX_CLANGW) incompatible types definitions*/
#		define uX_MSVC_COMPATIBLE_COMPILER 1
#endif

#if defined(uX_GNUC) || defined(uX_GCC) || defined(uX_SNC) || defined(uX_ICU) || defined(uX_CLANGU) || defined(uX_ARMCC) || defined(uX_GHS)
#		define uX_GCC_COMPATIBLE_COMPILER 1
#endif

#if defined(uX_MSVC_COMPATIBLE_COMPILER)
#		define uX_MSVC_TYPE_ALIGNMENT 1
#		define uX_COMPILER_SUPPORTS_TBB 1
#		define uX_COMPILER_SUPPORTS_PPL 1
#		define uX_COMPILER_SUPPORTS_OMP 1
#		define uX_COMPILER_SUPPORTS_PRL 1
#elif defined(uX_GCC_COMPATIBLE_COMPILER) || defined(uX_IBMC) || defined(uX_APPLECC)
#		define uX_GNUC_TYPE_ALIGNMENT 1
#		define uX_COMPILER_SUPPORTS_TBB 1
#		define uX_COMPILER_SUPPORTS_OMP 1
#		define uX_COMPILER_SUPPORTS_PRL 1
#endif

#if defined(__pic__) || defined(__PIC__)
#		define uX_PIC 1
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
#		define uX_ARCH 0

#		define uX_ENDIAN_LITTLE 0
#		define uX_ENDIAN_BIG	0

/* CUDA targets must be detected first as nvcc also predefined gcc macros for CPU architecture */
#if defined(__CUDA_ARCH__) || defined(__CUDACC__)
#		define uX_CUDA_GPU 1
#elif ((defined(_M_IX86) || defined(_WIN32) || defined(__i386__) || defined(i386) || defined(__i386) || defined(_X86_) || defined(__X86__) \
		|| defined(__I86__) || defined(__INTEL__) || defined(__THW_INTEL__)) && !defined(_M_X64) && !defined(_M_AMD64) && !defined(_WIN64) \
		&& !defined(__amd64__) || defined(__amd64) && !defined(__x86_64) && !defined(__x86_64__) && !defined(_LP64) && !defined(__LP64__) \
		&& !defined(__ORBIS__) && !defined(_XBOX_ONE) && !defined(_M_ARM) && !defined(_ARM) && !defined(__KNC__) && !defined(__MIC__))
#		define uX_X86 1
#		define uX_X86_CPU 1
#		define uX_X86_ABI 1
#		define uX_ARCH_X86 1
#		define uX_PLATFORM_X86 1
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#		define uX_PTR_SIZE 4
#		define uX_SIZE_T_SIZE 4
#		define uX_STACK_SIZE 8
#		define uX_INTRINSICS 1
#		define uX_ARCH_SUPPORTS_INT64 1
#		define uX_NUM_SIMD_REGISTERS 8
#		define uX_ARCH_STR "x86"
#undef uX_ARCH
#		define uX_ARCH 1
#elif ((defined(_M_X64) || defined(_M_AMD64) || defined(_WIN64) || defined(__amd64__) || defined(__amd64) || defined(__x86_64) || defined(__x86_64__) || defined(_LP64) || defined(__LP64__) \
		|| defined(__ORBIS__) || defined(_XBOX_ONE)) && !defined(__KNC__) && !defined(__MIC__))
#		define uX_X64 1
#		define uX_X64_CPU 1
#		define uX_X64_ABI 1
#		define uX_ARCH_X64 1
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#		define uX_PTR_SIZE 8
#		define uX_SIZE_T_SIZE 8
#		define uX_STACK_SIZE 16
#		define uX_INTRINSICS 1
#		define uX_ARCH_SUPPORTS_DOUBLE 1
#		define uX_ARCH_SUPPORTS_INT64 1
#		define uX_NUM_SIMD_REGISTERS 16
#undef uX_ARCH
#		define uX_ARCH 2
#	if defined(__ORBIS__)
#		define uX_PS4 1
#		define uX_ARCH_PS4 1
#		define uX_PLATFORM_PS4 1
#		define uX_PLATFORM_IS_CONSOLE 1
#		define uX_ARCH_STR "PS4"
#	elif defined(_XBOX_ONE)
#		define uX_XBOXONE 1
#		define uX_ARCH_XBOXONE 1
#		define uX_PLATFORM_XBOXONE 1
#		define uX_PLATFORM_IS_CONSOLE 1
#		define uX_ARCH_STR "XBOXOne"
#	else
#		define uX_ARCH_STR "x64"
#	endif
#		define uX_PLATFORM_X64 1
#elif	defined(__KNC__) || defined(__MIC__)
#	ifndef uX_MIC
#		define uX_MIC 1 /* Intel MIC or Xeon Phi architecture */
#	endif
#		define uX_MIC_ARCH 1 /* Intel MIC or Xeon Phi architecture */
#		define uX_PLATFORM_MIC 1
#		define uX_PLATFORM_IS_CPU_ACCELARATOR 1
#	if defined(_M_IX86) /*|| defined(_WIN32)*/ || defined(__i386__) || defined(i386) || defined(__i386) || defined(_X86_) || defined(__X86__) || defined(__I86__)
#	error ERROR: Unavailable for Intel Intel® Xeon Phi™ builds.
#	error ERROR: Solutions/projects targeting the Intel® Xeon Phi™ coprocessor are limited to using the x64 Debug | Release configuration.
#	error ERROR: Please change your build enviroment to X64 builds.
/*
#		define uX_X86 1
#		define uX_X86_ABI 1
#		define uX_ARCH_X86 1
#		define uX_PLATFORM_X86 1
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#		define uX_PTR_SIZE 4
#		define uX_SIZE_T_SIZE 4
#		define uX_STACK_SIZE 8
#		define uX_INTRINSICS 1
#		define uX_NUM_SIMD_REGISTERS 16
#		define uX_ARCH_STR "x86"
#undef uX_ARCH
#		define uX_ARCH 1*/
#	elif defined(_M_X64) || defined(_M_AMD64) || defined(_WIN64) || defined(__amd64__) || defined(__amd64) || defined(__x86_64) || defined(__x86_64__) || defined(__LP64__)
#		define uX_X64 1
#		define uX_X64_CPU 1
#		define uX_X64_ABI 1
#		define uX_ARCH_X64 1
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#		define uX_PTR_SIZE 8
#		define uX_SIZE_T_SIZE 8
#		define uX_STACK_SIZE 16
#		define uX_INTRINSICS 1
#		define uX_ARCH_SUPPORTS_DOUBLE 1
#		define uX_ARCH_SUPPORTS_INT64 1
#		define uX_NUM_SIMD_REGISTERS 32
#		define uX_ARCH_STR "x64"
#		define uX_PLATFORM_X64 1
#undef uX_ARCH
#		define uX_ARCH 2
#	endif
#elif defined(_M_IA64) || defined(__itanium__) || defined(__ia64) || defined(__ia64__) || defined(_IA64) || defined(__IA64__)
#		define uX_IA64 1
#		define uX_ARCH_IA64 1
#		define uX_IA64_ABI 1
#elif defined(_M_PPC) || defined(_M_PPCBE) || defined(_PPC_) || defined(__ppc__) || defined(__POWERPC__) || defined(GEKKO) || defined(EPPC) || defined(__PPCGEKKO__) || defined(__powerpc) || defined(__powerpc__)
#		define uX_PPC 1
#		define uX_PPC32 1
#		define uX_PPC_ABI 1
#		define uX_PPC32_ABI 1
#		define uX_ARCH_PPC 1
#		define uX_ARCH_PPC32 1
#		define uX_PLATFORM_PPC 1
#		define uX_PLATFORM_PPC32 1
#if defined(__VEC__) || defined(__ALTIVEC__)
#		define uX_ALTIVEC 1
#		define uX_VMX 1
#endif
#		define uX_INTRINSICS 1
#undef uX_ENDIAN_BIG
#		define uX_ENDIAN_BIG	1
#		define uX_PTR_SIZE 4
#		define uX_SIZE_T_SIZE 4
#		define uX_STACK_SIZE 8
#		define uX_ARCH_SUPPORTS_DOUBLE 1
#		define uX_ARCH_SUPPORTS_INT64 1
#		define uX_NUM_SIMD_REGISTERS 8
#undef uX_ARCH
#		define uX_ARCH 6
#	if defined(uX_MSVC_COMPATIBLE_COMPILER) && defined(_M_PPCBE)
#		define uX_XBOX360 1
#		define uX_VMX
#		define uX_VMX128X360 1
#		define uX_ARCH_X360 1
#		define uX_PLATFORM_XBOX360 1
#		define uX_PLATFORM_IS_CONSOLE 1
#		define uX_ARCH_STR "X360"
#undef uX_ARCH
#		define uX_ARCH 3
#	elif defined(CAFE) || defined(uX_GHS)
#	include <cafe.h>
#	include <ppc_ghs.h> // allow use of intrinsics throughout code
#		define uX_WIIU 1
#		define uX_ARCH_WIIU 1
#		define uX_PLATFORM_WIIU 1
#		define uX_ENABLE_PAIRED_SINGLE_OPTS 1
#		define uX_VECTOR_PARTS_MUST_BE_VALID 1
#		define uX_PLATFORM_IS_CONSOLE 1
#		define uX_ARCH_STR "WIIU"
#undef uX_ARCH
#		define uX_ARCH	5
#	elif defined(GEKKO) || defined(__PPCGEKKO__) //Also have custom added uX_REVOLUTION compiler switch
#		define uX_GEKKO 1
#		define uX_ARCH_GEKKO 1
#		define uX_PLATFORM_GEKKO 1
#	if defined(RVL_OS)
#		define uX_ENABLE_PAIRED_SINGLE_OPTS 1
#		define uX_ARCH_RVL 1
#		define uX_PLATFORM_RVL 1
#	endif
#		define uX_PLATFORM_IS_CONSOLE 1
#	endif
#elif defined(__ppc64__) || defined(__PPC64__) || defined(_ARCH_PPC64) || defined(__powerpc64__)
#		define uX_PPC 1
#		define uX_PPC64 1
#		define uX_PPC_ABI 1
#		define uX_PPC64_ABI 1
#		define uX_ARCH_PPC 1
#		define uX_ARCH_PPC64 1
#		define uX_PLATFORM_PPC 1
#		define uX_PLATFORM_PPC64 1
#if defined(__VEC__) || defined(__ALTIVEC__)
#		define uX_ALTIVEC 1
#		define uX_VMX 1
#endif
#		define uX_INTRINSICS 1
#undef uX_ENDIAN_BIG
#		define uX_ENDIAN_BIG	1
#		define uX_PTR_SIZE 4
#		define uX_SIZE_T_SIZE 4
#		define uX_STACK_SIZE 8
#		define uX_ARCH_SUPPORTS_DOUBLE 1
#		define uX_ARCH_SUPPORTS_INT64 1
#		define uX_NUM_SIMD_REGISTERS 8
#undef uX_ARCH
#		define uX_ARCH 7
#elif defined(__sparc__) || defined(__sparc)
#		define uX_SPARC 1
#		define uX_ARCH_SPARC 1
#		define uX_SPARC_ABI 1
#elif defined(_M_MRX000) || defined(_MIPS_) || defined(_MIPS64) || defined(__mips__) || defined(__mips) || defined(__MIPS__)
#		define uX_MIPS 1
#		define uX_ARCH_MIPS 1
#	if defined(__mips) && (__mips == 64)
#		define uX_MIPS64_ABI 1
#	else
#		define uX_MIPS32_ABI 1
#	endif
#elif defined(__PPU__) && defined(__CELLOS_LV2__)
#		define uX_PS3 1
#		define uX_PS3_PPU 1
#		define uX_PPU 1
#		define uX_ARCH_PS3 1
#		define uX_ARCH_PS3_PPU 1
#		define uX_PLATFORM_PS3 1
#		define uX_VMX 1
#		define uX_VMX128PS3 1
#		define uX_INTRINSICS 1
#undef uX_ENDIAN_BIG
#		define uX_ENDIAN_BIG	1
#		define uX_PTR_SIZE 4
#		define uX_SIZE_T_SIZE 4
#		define uX_STACK_SIZE 8
#		define uX_ARCH_SUPPORTS_DOUBLE 1
#		define uX_ARCH_SUPPORTS_INT64
#		define uX_NUM_SIMD_REGISTERS 32
#		define uX_PLATFORM_IS_CONSOLE 1
#		define uX_ARCH_STR "PS3"
#undef uX_ARCH
#		define uX_ARCH 4
#elif defined(__SPU__) && defined(__CELLOS_LV2__)
#		define uX_PS3 1
#		define uX_PS3_SPU 1
#		define uX_SPU 1
#		define uX_ARCH_PS3 1
#		define uX_ARCH_PS3_SPU 1
#		define uX_PLATFORM_PS3 1
#		define uX_SPU128PS3 1
#		define uX_INTRINSICS 1
#undef uX_ENDIAN_BIG
#		define uX_ENDIAN_BIG	1
#		define uX_PTR_SIZE 4
#		define uX_SIZE_T_SIZE 4
#		define uX_STACK_SIZE 8
#		define uX_ARCH_SUPPORTS_INT64 1
#		define uX_NUM_SIMD_REGISTERS 128
#		define uX_PLATFORM_IS_CONSOLE 1
#		define uX_ARCH_STR "PS3"
#undef uX_ARCH
#		define uX_ARCH 4
#elif defined(_M_ARM) || defined(_M_ARMT) || defined(__arm__) || defined(arm) || defined(__aarch64__) ||	defined(__thumb__) || defined(__arm) || defined(_ARM)
#		define uX_ARM 1
#		define uX_ARM_ABI 1
#		define uX_ARCH_ARM 1
//////////////////////////////////////////////////////////////////////////
// uX_ARM_ARCH_PROF :
//						1-A
//						2-R
//						3-M
#	if defined(__ARM_ARCH_9A__) || defined(__ARM_ARCH_9__) || defined(__ARM_ARCH_9R__) || defined (__ARM_ARCH_9M__) || defined(__ARM_ARCH_9S__) || ( defined(_M_ARM) && (_M_ARM >= 9) ) || (defined(__ARM_ARCH) && (__ARM_ARCH >= 9) )
#		define uX_ARCH_ARM_V9 1
#		define uX_ARCH_ARM_VSET 9
#	if defined(__ARM_ARCH_9A__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == A))
#		define uX_ARM_ARCH_PROF_A 1
#		define uX_ARM_ARCH_PROF 1
#	endif
#	if defined(__ARM_ARCH_9R__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == R))
#		define uX_ARM_ARCH_PROF_R 1
#		define uX_ARM_ARCH_PROF 2
#	endif
#	if defined(__ARM_ARCH_9M__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == M))
#		define uX_ARM_ARCH_PROF_M 1
#		define uX_ARM_ARCH_PROF 3
#	endif
#	elif defined(__ARM_ARCH_8A__) || defined(__ARM_ARCH_8__) || defined(__ARM_ARCH_8R__) || defined (__ARM_ARCH_8M__) || defined(__ARM_ARCH_8S__) || ( defined(_M_ARM) && (_M_ARM >= 8) ) || (defined(__ARM_ARCH) && (__ARM_ARCH >= 8) )
#		define uX_ARCH_ARM_V8 1
#		define uX_ARCH_ARM_VSET 8
#	if defined(__ARM_ARCH_8A__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == A))
#		define uX_ARM_ARCH_PROF_A 1
#		define uX_ARM_ARCH_PROF 1
#	endif
#	if defined(__ARM_ARCH_8R__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == R))
#		define uX_ARM_ARCH_PROF_R 1
#		define uX_ARM_ARCH_PROF 2
#	endif
#	if defined(__ARM_ARCH_8M__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == M))
#		define uX_ARM_ARCH_PROF_M 1
#		define uX_ARM_ARCH_PROF 3
#	endif
#	elif defined(__ARM_ARCH_7A__) || defined(__ARM_ARCH_7__) || defined(__ARM_ARCH_7R__) || defined (__ARM_ARCH_7M__) || defined(__ARM_ARCH_7S__) || ( defined(_M_ARM) && (_M_ARM >= 7) ) || (defined(__ARM_ARCH) && (__ARM_ARCH >= 7) )
#		define uX_ARCH_ARM_V7 1
#		define uX_ARCH_ARM_VSET 7
#	if defined(__ARM_ARCH_7A__) || defined(_M_ARM) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == A))
#		define uX_ARM_ARCH_PROF_A 1
#		define uX_ARM_ARCH_PROF 1
#	endif
#	if defined(__ARM_ARCH_7R__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == R))
#		define uX_ARM_ARCH_PROF_R 1
#		define uX_ARM_ARCH_PROF 2
#	endif
#	if defined(__ARM_ARCH_7M__) || (defined(__ARM_ARCH_PROFILE) && (__ARM_ARCH_PROFILE == M))
#		define uX_ARM_ARCH_PROF_M 1
#		define uX_ARM_ARCH_PROF 3
#	endif
#	elif defined(__ARM_ARCH_6__) || defined(__ARM_ARCH_6J__) || defined(__ARM_ARCH_6K__) || defined(__ARM_ARCH_6Z__) || defined(__ARM_ARCH_6ZK__) || defined(__ARM_ARCH_6T2__) || defined(NN_PROCESSOR_ARM) || defined(NN_PROCESSOR_ARM_V6) || ( defined(_M_ARM) && (_M_ARM < 7) ) || (defined(__ARM_ARCH) && (__ARM_ARCH >= 6) )
#		define uX_ARCH_ARM_V6 1
#		define uX_ARCH_ARM_VSET 6
#	else
#		error ERROR: Unexpected ARM arch
#	endif
#	if defined(_M_ARM_FP)
#	endif
#	if defined(__ARMEB__)
#undef uX_ENDIAN_BIG
#		define uX_ENDIAN_BIG 1
#	else
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#	endif
#	if (defined(uX_ARCH_ARM_VSET) && (uX_ARCH_ARM_VSET >= 8)) && defined(__aarch64__) && defined(uX_ARM_ARCH_PROF_A)
#		define uX_ARCH_A64 1
#		define uX_A64 1
#		define uX_A64_CPU 1
#undef uX_ARCH
#		define uX_ARCH 9
#		define uX_PLATFORM_A64 1
#		define uX_ARM_ABI64 1
#		define uX_PTR_SIZE 8
#		define uX_SIZE_T_SIZE 8
#		define uX_STACK_SIZE 16
#		define uX_ARCH_SUPPORTS_DOUBLE 1
#		define uX_ARCH_SUPPORTS_INT64 1
#		define uX_NUM_SIMD_REGISTERS 16
#		define uX_ARCH_STR "Arm64"
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#	elif defined(__arm__) || (defined(_M_ARM) && (_M_ARM >= 7)) && defined(uX_ARM_ARCH_PROF_A)
#		define uX_ARCH_A32 1
#		define uX_A32 1
#		define uX_A32_CPU 1
#undef uX_ARCH
#		define uX_ARCH 8
#		define uX_PLATFORM_A32 1
#		define uX_ARM_ABI32 1
#		define uX_PTR_SIZE 4
#		define uX_SIZE_T_SIZE 4
#		define uX_STACK_SIZE 8
#		define uX_ARCH_SUPPORTS_INT64 1
#		define uX_NUM_SIMD_REGISTERS 8
#		define uX_ARCH_STR "Arm32"
#	if defined(__ARMEB__)
#undef uX_ENDIAN_BIG
#		define uX_ENDIAN_BIG 1
#	else
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#	endif
#	else
#		error ERROR: Unexpected ARM platform arch or not implemented yet
#	endif

#	if defined(uX_SNC)
#		define uX_PSP2 1
#		define uX_ARCH_PSP2 1
#		define uX_PLATFORM_PSP2 1
#		define uX_PSVITA 1
#		define uX_ARCH_PSVITA 1
#		define uX_PLATFORM_PSVITA 1
#		define uX_PLATFORM_IS_CONSOLE 1
#undef uX_ARCH_STR
#		define uX_ARCH_STR "PSVITA"
#	endif
#		define uX_INTRINSICS 1
#elif defined(__OPENCL_VERSION__)
#		define uX_OPENCL_DEVICE 1
#	if defined(__CPU__)
#		define uX_OPENCL_CPU 1
#	elif defined(__GPU__)
#		define uX_OPENCL_GPU 1
#	endif
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
//# include <windows.h>
#pragma pack (pop)
# pragma warning( pop )
//#include "Runtime/Core/Public/Windows/HideWindowsPlatformTypes.h"
#endif // _WINDOWS_
#endif // _WIN32

/**
Platform define
*/

#if (defined(uX_MSVC_COMPATIBLE_COMPILER) && (defined(_WIN32) || defined(_WIN64) || defined(_WINDOWS) || defined(_WIN32_WCE) || defined(WIN32_PLATFORM_HPC2000) \
		|| defined(WIN32_PLATFORM_HPCPRO) || defined(WIN32_PLATFORM_PSPC) || defined(WIN32_PLATFORM_WFSP))) && !defined(__KNC__) && !defined(__MIC__) && !defined(uX_MIC)
#	if defined(_WIN32_WCE) || defined(WIN32_PLATFORM_HPC2000) || defined(WIN32_PLATFORM_HPCPRO) || defined(WIN32_PLATFORM_PSPC) || defined(WIN32_PLATFORM_WFSP)
#		define uX_WINDOWSCE 1
#		define uX_WINDOWSCE_OS 1
#	else
#		define uX_WINDOWS 1
#		define uX_WINDOWS_OS 1
#	endif
# if defined(WINAPI_FAMILY) && ((WINAPI_FAMILY==WINAPI_FAMILY_PC_APP) || (WINAPI_FAMILY==WINAPI_FAMILY_PHONE_APP)) && !defined(uX_CLANG) && !defined(uX_ICC) && !defined(uX_GCC)
#		define uX_PLATFORM_WINRT 1
#	if (defined(WINAPI_FAMILY) && (WINAPI_FAMILY == WINAPI_FAMILY_PC_APP))
#		if defined(uX_ARM)
#		define uX_ARM_PC_APP
/*#		define uX_ARCH_STR "Arm"*/
#		define uX_FAMILY_STR "Store"
/*#		define uX_ARCH "Arm"*/
#		else
#		define uX_PC_APP 1
#		define uX_FAMILY_STR "Store"
#		endif
#	endif
#	if (defined(WINAPI_FAMILY) && (WINAPI_FAMILY == WINAPI_FAMILY_PHONE_APP))
#		define uX_WINDOWS_PHONE 1
#		define uX_PHONE_APP 1
#		define uX_PLATFORM_WIN_PHONE 1
#		define uX_FAMILY_STR "Windows Phone"
#		define uX_PLATFORM_IS_CONSOLE 1
#	endif
#		define uX_WINDOWS_FAMILY 1
# elif defined(WINAPI_FAMILY) && (WINAPI_FAMILY == WINAPI_FAMILY_SYSTEM)
#		define uX_SYSTEM_APP 1
/*#		define uX_ARCH*/
#		define uX_FAMILY_STR ""
#		define uX_WINDOWS_FAMILY 1
# elif defined(WINAPI_FAMILY) && (WINAPI_FAMILY == WINAPI_FAMILY_SERVER)
#		define uX_SERVER_APP 1
/*#		define uX_ARCH*/
#		define uX_FAMILY_STR ""
#		define uX_WINDOWS_FAMILY 1
# elif defined(WINAPI_FAMILY) && (WINAPI_FAMILY == WINAPI_FAMILY_DESKTOP_APP)
#		define uX_DESKTOP_APP 1
/*#		define uX_ARCH*/
#		define uX_FAMILY_STR ""
#		define uX_WINDOWS_FAMILY 1
# endif
/*
#elif (defined(_MSC_VER) && (defined(__INTEL_COMPILER) || defined(__clang__) || defined(__GCC__))) \
		&& (defined(_WIN32) || defined(_WIN64) || defined(_WINDOWS) || defined(_XBOX_ONE) || defined(__KNC__) || defined(__MIC__)) && !defined(uX_XBOXONE)
# if defined(__KNC__) || defined(__MIC__) || defined(uX_MIC)
#		define uX_UNIX 1
#		define uX_UNIX_OS 1
# else
#		define uX_WINDOWS 1
#		define uX_WINDOWS_OS 1
# endif*/
#elif defined(__APPLE_CC__)
#	include <TargetConditionals.h> // Specific to the current SDK, in usr\include
#		define uX_APPLE 1
#		define uX_UNIX 1
#		define uX_UNIX_FAMILY 1
#	if defined( uX_ARCH_X86 )
#		if defined(TARGET_IPHONE_SIMULATOR) && TARGET_IPHONE_SIMULATOR
#			define uX_IOS 1
#			define uX_ARCH_IOS 1
#			define uX_PLATFORM_IOS 1
#			define uX_PLATFORM_IS_CONSOLE 1
#			define uX_APPLE_IOS 1
#			define uX_APPLE_IOS_SIM 1
#undef uX_ARCH_STR
#			define uX_ARCH_STR "IOSim"
/*#			define uX_ARCH "IOSim"*/
#			define uX_APPLE_FAMILY 1
#		else
#			define uX_MAC386 1
#			define uX_ARCH_MAC386 1
#			define uX_PLATFORM_MAC386 1
#			define uX_APPLE_MAC386 1
#undef uX_ARCH_STR
#			define uX_ARCH_STR "Mac386"
/*#			define uX_ARCH "Mac386"*/
#			define uX_APPLE_FAMILY 1
#		endif
#	elif (defined(__APPLE__) && defined(__MACH__)) || defined(TARGET_OS_MAC)
#			define uX_OSX 1
#			define uX_OSX_OS 1
#			define uX_ARCH_OSX 1
#			define uX_PLATFORM_OSX 1
#			define uX_APPLE_OSX 1
#			define uX_MACOSX 1
#			define uX_MACOSX_OS 1
#			define uX_ARCH_MACOSX 1
#			define uX_PLATFORM_MACOSX 1
#			define uX_APPLE_MACOSX 1
#undef uX_ARCH_STR
#			define uX_ARCH_STR "MACOSX"
/*#			define uX_ARCH "OSX"*/
#			define uX_APPLE_FAMILY 1
#	elif defined(uX_PPC)
#			define uX_ARCH_PPC 1
#			define uX_PLATFORM_PPC 1
#			define uX_APPLE_PPC 1
#			define uX_MACPPC 1
#			define uX_ARCH_MACPPC 1
#			define uX_PLATFORM_MACPPC 1
#			define uX_APPLE_MACPPC 1
#undef uX_ARCH_STR
#			define uX_ARCH_STR "Macppc"
/*#			define uX_ARCH "Macppc"*/
#			define uX_APPLE_FAMILY 1
#	elif defined(uX_ARM) // iPhone /iPod Touch/ iPad
#			define uX_IOS 1
#			define uX_ARCH_IOS 1
#			define uX_PLATFORM_IOS 1
#			define uX_APPLE_IOS 1
#			define uX_PLATFORM_IS_CONSOLE 1
#undef uX_ARCH_STR
#			define uX_ARCH_STR "IOS"
/*#			define uX_ARCH "IOS"*/
#			define uX_APPLE_FAMILY 1
#	endif
#elif defined(uX_GCC_COMPATIBLE_COMPILER) && (defined(__linux__) || defined(__linux) || defined(linux) || defined(unix) || defined(__unix__) || defined(__unix) || defined(__ORBIS__) \
				|| defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__bsdi__) || defined(__DragonFly__) || defined(__bg__) \
				|| defined(__CYGWIN__) || defined(ANDROID_NDK) || defined(ANDROID) || defined(NDK) || defined(__ANDROID_API__) || defined(__ANDROID__))
#	if defined(ANDROID_NDK) || defined(ANDROID) || defined(NDK) || defined(__ANDROID_API__) || defined(__ANDROID__)
#		define uX_ANDROID 1
#		define uX_ANDROID_OS 1
#		define uX_ANDROID_LINUX_OS 1
#		define uX_ARCH_ANDROID 1
#		define uX_PLATFORM_ANDROID 1
#		define uX_PLATFORM_IS_CONSOLE 1
#		define uX_UNIX 1
#		define uX_UNIX_FAMILY 1
#	elif defined(__linux__) || defined(__linux) || defined(linux) || defined(unix) || defined(__unix__) || defined(__unix) || defined(__ORBIS__) \
				|| defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__bsdi__) || defined(__DragonFly__) || defined(__bg__)
#	if defined(__ORBIS__) || defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__bsdi__) || defined(__DragonFly__)
#		define uX_UNIX 1
#		define uX_BSD_OS
#	elif defined(__linux__) || defined(__linux) || defined(linux)
#		define uX_LINUX 1
#		define uX_LINUX_OS
#	elif defined(__gnu_linux__)
#		define uX_LINUX 1
#		define uX_GNU_LINUX_OS
#	elif defined(__bg__)
#		define uX_LINUX 1
#		define uX_CNK_LINUX_OS
#	elif defined(unix) || defined(__unix__) || defined(__unix)
#		define uX_UNIX 1
#		define uX_UNIX_OS 1
#		define uX_UNIX_FAMILY 1
#	endif
#	if defined(__native_client__) || defined(__nacl__) || defined(NACL)
#		define uX_NACL 1
#		define uX_PLATFORM_NACL 1
#		undef uX_PTR_SIZE
#		define uX_PTR_SIZE 4 // always 4 in NaCl
#		undef uX_SIZE_T_SIZE
#		define uX_SIZE_T_SIZE 4 // always 4 in NaCl
#		undef uX_STACK_SIZE
#		define uX_STACK_SIZE 8
#	endif
#	elif defined(__CYGWIN__)
#		define uX_CYGWIN 1
#		define uX_LINUX 1
#		define uX_UNIX 1
#	endif
#elif defined(__CTR__) || defined(NN_PLATFORM_CTR)
#		define uX_CTR 1
#		define uX_ARCH_ANDROID 1
#		define uX_PLATFORM_CTR 1
#		define uX_PLATFORM_IS_CONSOLE 1
#endif

#if (defined(uX_X86_CPU) || defined(uX_X64_CPU))
#		define uX_X86_OR_X64_CPU 1			/* x86 or x64 cpu*/
#		define uX_X86_OR_X64_ABI 1			/* x86 or x64 cpu*/
#elif (defined(uX_A32) || defined(uX_A64))
#		define uX_A32_OR_A64_CPU 1			/* ARM 32bits or 64bits cpu */
#		define uX_A32_OR_A64_ABI 1			/* ARM 32bits or 64bits cpu */
#elif (defined(uX_PPC32) || defined(uX_PPC64))
#		define uX_PPC32_OR_PPC64_CPU 1		/* PPC 32bits or 64bits cpu */
#		define uX_PPC32_OR_PPC64_ABI 1		/* PPC 32bits or 64bits cpu */
#endif

#if (defined(uX_X64_CPU)) && (defined(__KNC__) || defined(__MIC__))
#		define uX_XEON_PHI_SYSTEM 1
#elif defined(uX_PPC) && defined(__bgq__)
#		define uX_BLUEGENE_SYSTEM 1
#		define uX_BLUEGENE_Q_SYSTEM 1
#elif defined(uX_PPC) && defined(__bgp__)
#		define uX_BLUEGENE_SYSTEM 1
#		define uX_BLUEGENE_P_SYSTEM 1
#elif defined(uX_PPC) && defined(__bg__)
#		define uX_BLUEGENE_SYSTEM 1
#endif

#if defined(uX_X86_OR_X64_CPU)
#		define uX_ARCH_SUPPORTS_TBB 1
#		define uX_ARCH_SUPPORTS_PPL 1
#		define uX_ARCH_SUPPORTS_OMP 1
#		define uX_ARCH_SUPPORTS_PRL 1
# elif defined(uX_A32_OR_A64_CPU)
#		define uX_ARCH_SUPPORTS_TBB 1
#		define uX_ARCH_SUPPORTS_PPL 1
#		define uX_ARCH_SUPPORTS_PRL 1
#	elif defined(uX_XEON_PHI_SYSTEM)
#		define uX_ARCH_SUPPORTS_TBB 1
#		define uX_ARCH_SUPPORTS_PRL 1
#endif

// Disables all the alignments
// #		define uX_NO_ALIGN 1

#if defined(uX_NO_ALIGN)
#		define uX_FLOATS_NO_ALIGN 1
#		define uX_INTRINSICS_NO_ALIGN 1
#		define uX_STDVEC_NO_ALIGN 1
#		define uX_AMPVEC_NO_ALIGN 1
#		define uX_CUDAVEC_NO_ALIGN 1
#		define uX_REAL_NO_ALIGN 1

#		define uX_STDCONSTVEC_NO_ALIGN 1

#		define uX_NO_ALIGN_MATH_CONST 1

#		define uX_NO_ALIGN_INTRIN_CONST 1

# if defined(uX_NO_ALIGN_MATH_CONST)
#		define uX_NO_ALIGN_MATH_MARKED_CONST 1
#		define uX_NO_ALIGN_MATH_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_MATH_64_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_MATH_128_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_MATH_256_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_MATH_512_INITIALIZED_CONST 1
# else
// #		define uX_NO_ALIGN_MATH_MARKED_CONST 1
// #		define uX_NO_ALIGN_MATH_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_MATH_64_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_MATH_128_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_MATH_256_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_MATH_512_INITIALIZED_CONST 1
# endif

# if defined(uX_NO_ALIGN_INTRIN_CONST)
#		define uX_NO_ALIGN_INTRIN_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_INTRIN_64_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_INTRIN_128_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_INTRIN_256_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_INTRIN_512_INITIALIZED_CONST 1
# else
// #		define uX_NO_ALIGN_INTRIN_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_INTRIN_64_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_INTRIN_128_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_INTRIN_256_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_INTRIN_512_INITIALIZED_CONST 1
# endif

#else
// uncomment if required
// #		define uX_FLOATS_NO_ALIGN 1
// #		define uX_INTRINSICS_NO_ALIGN 1
// #		define uX_STDVEC_NO_ALIGN 1
// #		define uX_AMPVEC_NO_ALIGN 1
// #		define uX_AMPVEC_NO_ALIGN 1
// #		define uX_REAL_NO_ALIGN 1
// #		define uX_NO_ALIGN_MATH_CONST 1
// #		define uX_NO_ALIGN_INTRIN_CONST 1

// #		define uX_STDCONSTVEC_NO_ALIGN 1

# if defined(uX_NO_ALIGN_MATH_CONST)
#		define uX_NO_ALIGN_MATH_MARKED_CONST 1
#		define uX_NO_ALIGN_MATH_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_MATH_64_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_MATH_128_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_MATH_256_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_MATH_512_INITIALIZED_CONST 1
# else
// #		define uX_NO_ALIGN_MATH_MARKED_CONST 1
// #		define uX_NO_ALIGN_MATH_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_MATH_64_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_MATH_128_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_MATH_256_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_MATH_512_INITIALIZED_CONST 1
# endif

# if defined(uX_NO_ALIGN_INTRIN_CONST)
#		define uX_NO_ALIGN_INTRIN_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_INTRIN_64_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_INTRIN_128_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_INTRIN_256_INITIALIZED_CONST 1
#		define uX_NO_ALIGN_INTRIN_512_INITIALIZED_CONST 1
# else
// #		define uX_NO_ALIGN_INTRIN_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_INTRIN_64_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_INTRIN_128_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_INTRIN_256_INITIALIZED_CONST 1
// #		define uX_NO_ALIGN_INTRIN_512_INITIALIZED_CONST 1
# endif

#endif	// uX_NO_ALIGN

// Disable Intrinsics in all platforms
// #		define uX_NO_INTRINSICS 1

#if (defined(uX_VC) && (_MSC_FULL_VER >= 190023506) || (defined(__clang__) && (__clang_major__ >= 5)) || (defined(__GNUC__) && (__GNUC__ >= 7)))
#ifdef __cplusplus
#		define uX_CONSTEXPR_SUPPORT 1
#endif
#endif

#if (defined(uX_VC) && (_MSC_VER >= 1800) || (defined(__clang__) && (__clang_major__ >= 5)) || (defined(__GNUC__) && (__GNUC__ >= 7)))
#ifdef __cplusplus
#		define uX_DEFAULT_CTOR_SUPPORT 1
#endif
#endif

#if (defined(uX_VC) && (_MSC_VER >= 1800) || (defined(__clang__) && (__clang_major__ >= 5)) || (defined(__GNUC__) && (__GNUC__ >= 7)))
#ifdef __cplusplus
#		define uX_NOEXCEPT_SUPPORT 1
#endif
#endif

#if (defined(uX_VC) && (_MSC_VER >= 1700) && (defined(uX_PC_APP) || defined(uX_DESKTOP_APP))) && !defined(uX_PHONE_APP) && !defined(__INTEL_COMPILER) && !defined(uX_CLANG) && !defined(uX_CUDACC)
#		define uX_AMPCC 1
#endif

// Disable AMP Computing
// #		define uX_NO_AMP 1
#if !defined(uX_AMPCC)
#		define uX_NO_AMP 1
#elif defined(uX_AMPCC) && !defined(uX_NO_AMP)
# ifndef uX_AMP_CC
#		define uX_AMP_CC 1
# endif
#endif

#if defined(__INTEL_COMPILER) && (__INTEL_COMPILER >= 1500)
#		define uX_INTELCC_GFX 1
#		define uX_INTEL_GFX_GPU 1
# else
#		define uX_NO_INTELCC_GFX 1
#		define uX_NO_INTEL_GFX_GPU 1
#endif

// Disable CUDA Computing
// #		define uX_NO_CUDA 1
#if !defined(uX_CUDACC)
#		define uX_NO_CUDA 1
#elif defined(uX_CUDACC) && !defined(uX_NO_CUDA)
#ifndef uX_CUDA
#		define uX_CUDA 1
#endif
#endif

// Disable DirecteXMath
// #		define uX_NO_DIRECTXMATH 1
#if !defined(uX_WINDOWS_OS) || (defined(uX_CUDACC) || defined(uX_CLANG) || defined(uX_ICC))
#		define uX_NO_DIRECTXMATH 1
#elif defined(uX_WINDOWS_OS) && !defined(uX_CUDACC) && !defined(uX_CLANG) && !defined(uX_ICC)
#		define uX_DIRECTXMATH 1
#endif

#if !defined(uX_AMP_CC) || defined(uX_NO_AMP)
// disable AMP support in all platforms
#		define uX_NO_AMP_SUPPORT 1
#elif defined(uX_AMP_CC) && !defined(uX_NO_AMP)
// enable AMP Computing in all platforms supporting it
#		define uX_AMP_SUPPORT 1
#endif

#if !defined(uX_CUDA) || defined(uX_NO_CUDA)
// disable CUDA support in all platforms
#		define uX_NO_CUDA_SUPPORT 1
#elif defined(uX_CUDA) && !defined(uX_NO_CUDA)
// enable CUDA Computing in all platforms supporting it
#		define uX_CUDA_SUPPORT 1
#endif

#if defined(uX_CUDACC)
// disable intrinsics support in all platforms if building for cuda
/*
#undef uX_INTRINSICS
#	ifndef uX_NO_INTRINSICS
#		define uX_NO_INTRINSICS
#	endif*/
#endif

#if defined(uX_DIRECTXMATH) && !defined(uX_NO_DIRECTXMATH)
// enable DirecteXMath in all platforms supporting it
#		define uX_DIRECTXMATH_SUPPORT 1
#else
#undef uX_DIRECTXMATH
#undef uX_DIRECTXMATH_SUPPORT
#define uX_NO_DIRECTXMATH_SUPPORT 1
#endif

/*
#if defined(uX_MSVC_COMPATIBLE_COMPILER) || defined(uX_GCC_COMPATIBLE_COMPILER)
#	include <vector>
# if defined(_STD) && defined(_VECTOR_)
// enable std:vector support, as template vector and compiler library powered
#		define uX_STDVECTOR_SUPPORT 1
# endif
#endif*/

/*
#if (defined(PARALLEL_PPL) && (PARALLEL_PPL >=1)) && defined(uX_ARCH_SUPPORTS_PPL) && defined(uX_COMPILER_SUPPORTS_PPL)
// PPL library
#include <ppl.h>
#include <ppltasks.h>
/ * using namespace Concurrency; ide namespace for proper use with the functions in the library* /
namespace ccr = Concurrency; / * Concurrency namespace short name * /
# if defined(_PPL_H)
// enable Concurrency:parallel_for_each support, as the library for each loops parallelization powered in CPU code
#		define uX_PPL_PRL_FOR_EACH_SUPPORT 1
// enable Concurrency:parallel_for support, as the library for loops parallelization powered in CPU code
#		define uX_PPL_PRL_FOR_SUPPORT 1
# endif
#endif*/

#	if defined(uX_PPL_PRL_FOR_SUPPORT) && !defined(uX_NO_PRL)
#		define uX_USE_PPL_PRL_FOR 1
#	endif

#	if defined(uX_PPL_PRL_FOR_EACH_SUPPORT) && !defined(uX_NO_PRL)
#		define uX_USE_PPL_PRL_FOR_EACH 1
#	endif

#if !defined(uX_ARCH_SUPPORTS_PRL) && !defined(uX_COMPILER_SUPPORTS_PRL)
# define uX_NO_PRL 1
#else
# define uX_SUPPORTS_PRL 1
#endif

#if !defined(uX_ARCH_SUPPORTS_TBB) && !defined(uX_COMPILER_SUPPORTS_TBB)
# define uX_NO_TBB 1
#else
# define uX_SUPPORTS_TBB 1
#endif

# if defined(uX_NO_PRL)
#		define uX_FLOATS_NO_PRL 1
#		define uX_MATH_NO_PRL 1

#		define uX_AMP_NO_PRL 1

#		define uX_NO_TBB_PRL_FOR 1
#		define uX_NO_TBB_PRL_FOR_EACH 1
#		define uX_NO_PPL_PRL_FOR 1
#		define uX_NO_PPL_PRL_FOR_EACH 1
# else
// #		define uX_FLOATS_NO_PRL 1
// #		define uX_MATH_NO_PRL 1

// #		define uX_AMP_NO_PRL 1

// #		define uX_NO_TBB_PRL_FOR 1
// #		define uX_NO_TBB_PRL_FOR_EACH 1
// #		define uX_NO_PPL_PRL_FOR 1
// #		define uX_NO_PPL_PRL_FOR_EACH 1
# endif

# if defined(uX_FLOATS_NO_PRL)
#		define uX_DEVICE_FLOATS_NO_PRL 1
#		define uX_HOST_FLOATS_NO_PRL 1
#		define uX_XMM_FLOATS_NO_PRL 1
#		define uX_YMM_FLOATS_NO_PRL 1
#		define uX_ZMM_FLOATS_NO_PRL 1
# else
// #		define uX_DEVICE_FLOATS_NO_PRL 1
// #		define uX_HOST_FLOATS_NO_PRL 1
// #		define uX_XMM_FLOATS_NO_PRL 1
// #		define uX_YMM_FLOATS_NO_PRL 1
// #		define uX_ZMM_FLOATS_NO_PRL 1
# endif

# if defined(uX_MATH_NO_PRL)
#		define uX_DEVICE_MATH_NO_PRL 1
#		define uX_HOST_MATH_NO_PRL 1
#		define uX_XMM_MATH_NO_PRL 1
#		define uX_YMM_MATH_NO_PRL 1
#		define uX_ZMM_MATH_NO_PRL 1
# else
// #		define uX_DEVICE_MATH_NO_PRL 1
// #		define uX_HOST_MATH_NO_PRL 1
// #		define uX_XMM_MATH_NO_PRL 1
// #		define uX_YMM_MATH_NO_PRL 1
// #		define uX_ZMM_MATH_NO_PRL 1
# endif

#ifndef uX_XMM_MATH_NO_PRL
# define uX_XMM_MATH_SUPPORTS_PRL 1
#endif

#if defined(uX_SUPPORTS_TBB) && defined(uX_XMM_MATH_SUPPORTS_PRL)
# define uX_XMM_MATH_SUPPORTS_TBB 1
#endif

#if defined(uX_AMP_SUPPORT)
// enable std:vector support, as template vector and compiler library powered for AMP
#		define uX_AMPVECTOR_SUPPORT 1
#		define uX_AMP_GPU 1
#endif

#if defined(uX_CUDA_SUPPORT)
// enable std:vector support, as template vector and compiler library powered for CUDA
#		define uX_CUDAVECTOR_SUPPORT 1
#endif

#if defined(__cplusplus)
// enable template vector support, template powered
#		define uX_TVECTOR_SUPPORT 1
#endif

#if defined(uX_AMP_SUPPORT) && (/*!defined(uX_STDVECTOR_SUPPORT) || !defined(uX_TVECTOR_SUPPORT) ||*/ !defined(uX_AMPVECTOR_SUPPORT) )
#error ERROR: if you going to use AMP Computing and template vector inst enabled, probably you going to get worse results
#endif

#if defined(uX_AMP_SUPPORT) && defined(uX_PC_APP) && (/*!defined(uX_STDVECTOR_SUPPORT) || !defined(uX_TVECTOR_SUPPORT) ||*/ !defined(uX_AMPVECTOR_SUPPORT) )
#error ERROR: use template vector in store build to get best results
#endif

#if defined(uX_AMP_SUPPORT) && (_MSC_VER <= 1700)
#error ERROR: Implemented AMP computing not supported in target compiler
#endif

#ifndef INTRIN_VERSION
#define INTRIN_VERSION 60
#endif

#ifndef INTEL_INTRIN
#define INTEL_INTRIN 1
#endif

#ifndef AMD_INTRIN
#define AMD_INTRIN 1
#endif

#ifndef INTRIN_MMX
#define INTRIN_MMX 1
#endif

#ifndef INTRIN_SSE
#define INTRIN_SSE 1
#endif

#ifndef INTRIN_AVX256
#define INTRIN_AVX256 1
#endif

#ifndef INTRIN_AVX512
#define INTRIN_AVX512 1
#endif

#if defined(uX_MSVC_COMPATIBLE_COMPILER) && defined(uX_X86_OR_X64_CPU) && !defined(uX_ARM) && !defined(_MANAGED) && !defined(_M_CEE) && (!defined(_M_IX86_FP) || (_M_IX86_FP > 1)) \
		&& (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 20)) && !defined(uX_CUDACC) && !defined(uX_ICU) && !defined(uX_MIC) && !defined(uX_NO_INTRINSICS)
#	if (((_MSC_FULL_VER >= 170065501) && (_MSC_VER < 1800)) || ((_MSC_FULL_VER >= 180020418) && (_MSC_VER >= 1800))) || (!defined(__INTEL_COMPILER) || (defined(__INTEL_COMPILER) && (__INTEL_COMPILER >= 1500))) \
	|| (!defined(__clang__) || defined(__clang_major__) && (((__clang_major__ >=3) && (__clang_minor__ >=7)) || (__clang_major__ >=4)))
#		define uX_VECTORCALL_SUPPORT 1
#	else
#	undef uX_VECTORCALL_SUPPORT
#	endif
#else
#undef uX_VECTORCALL_SUPPORT
#endif

#if (defined(uX_MSVC_COMPATIBLE_COMPILER) || defined(uX_GCC_COMPATIBLE_COMPILER)) && defined(uX_X86_OR_X64_CPU) && !defined(uX_ARM) && !defined(_MANAGED) && !defined(_M_CEE) && (!defined(_M_IX86_FP) || (_M_IX86_FP > 1)) \
		&& (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 20))	&& !defined(uX_CUDACC) && !defined(uX_NO_INTRINSICS)
#	if (defined(__INTEL_COMPILER) && (__INTEL_COMPILER >= 1400)) || (defined(__clang__) && defined(__clang_major__) && (__clang_major__ >=4))
#		define uX_REGCALL_SUPPORT 1		/* Intel regcall !Available for Windows/Unix/Linux/OSX*/
#	else
#	undef uX_REGCALL_SUPPORT
#	endif
#else
#undef uX_REGCALL_SUPPORT
#endif

#if defined(uX_X86_OR_X64_CPU)
#	ifndef uX_SUPPORTS_MISALIGNED_MEMORY_ACCESS
#		define uX_SUPPORTS_MISALIGNED_MEMORY_ACCESS 1
#	endif
# if defined(uX_ARCH_SUPPORTS_DOUBLE)
#	ifndef uX_SUPPORTS_DOUBLE_PRECISION_FPU
#		define uX_SUPPORTS_DOUBLE_PRECISION_FPU 1
#	endif
# endif
#	ifndef uX_SUPPORTS_SINGLE_PRECISION_FPU
#		define uX_SUPPORTS_SINGLE_PRECISION_FPU 1
#	endif
#endif

#if (defined(INTEL_INTRIN) && (INTEL_INTRIN <= 0)) || !defined(INTEL_INTRIN) || defined(uX_ARM) || defined(uX_PPC32_OR_PPC64_CPU)
#		define uX_NO_INTEL_INTRIN 1
#elif (defined(INTEL_INTRIN) && (INTEL_INTRIN >= 1)) && defined(uX_X86_OR_X64_CPU)
#		define uX_INTEL_INTRIN 1
#endif

#if (defined(AMD_INTRIN) && (AMD_INTRIN <= 0)) || !defined(AMD_INTRIN) || defined(uX_ARM) || defined(uX_PPC32_OR_PPC64_CPU) || defined(uX_MIC)
#		define uX_NO_AMD_INTRIN 1
#elif (defined(AMD_INTRIN) && (AMD_INTRIN >= 1)) && defined(uX_X86_OR_X64_CPU)
#		define uX_AMD_INTRIN 1
#endif

#if (defined(ARM_INTRIN) && (ARM_INTRIN <= 0)) || !defined(ARM_INTRIN) || defined(uX_X86_OR_X64_CPU) || defined(uX_PPC32_OR_PPC64_CPU) || defined(uX_MIC)
#		define uX_NO_ARM_INTRIN 1
#elif (defined(ARM_INTRIN) && (ARM_INTRIN >= 1)) && defined(uX_A32_OR_A64_CPU)
#		define uX_ARM_INTRIN 1
#endif

#if (defined(ARM_NEON_INTRIN) && (ARM_NEON_INTRIN <= 0)) || !defined(ARM_NEON_INTRIN) || defined(uX_X86_OR_X64_CPU) || defined(uX_PPC32_OR_PPC64_CPU) || defined(uX_MIC)
#		define uX_NO_ARM_NEON 1
#elif (defined(ARM_NEON_INTRIN) && (ARM_NEON_INTRIN >= 1)) && defined(uX_A32_OR_A64_CPU)
#		define uX_ARM_NEON_INTRIN 1
#endif

#if (defined(INTRIN_3DNOW) && (INTRIN_3DNOW <= 0)) || !defined(INTRIN_3DNOW) || defined(uX_ARM) || defined(uX_PPC32_OR_PPC64_CPU) || defined(uX_MIC)
#		define uX_NO_3DNOW 1
#elif (defined(INTRIN_3DNOW) && (INTRIN_3DNOW >= 1)) && defined(uX_X86_CPU)
#		define uX_3DNOW_INTRIN 1
#endif

#if (defined(INTRIN_MMX) && (INTRIN_MMX <= 0)) || !defined(INTRIN_MMX) || defined(uX_ARM) || defined(uX_PPC32_OR_PPC64_CPU) || defined(uX_MIC)
#		define uX_NO_MMX 1
#elif (defined(INTRIN_MMX) && (INTRIN_MMX >= 1)) && defined(uX_X86_CPU)
#		define uX_MMX_INTRIN 1
#endif

#if (defined(INTRIN_SSE) && (INTRIN_SSE <= 0)) || !defined(INTRIN_SSE) || defined(uX_ARM) || defined(uX_PPC32_OR_PPC64_CPU) || defined(uX_MIC)
#		define uX_NO_SSE 1
#elif (defined(INTRIN_SSE) && (INTRIN_SSE >= 1)) && defined(uX_X86_OR_X64_CPU)
#		define uX_SSE_INTRIN 1
#endif

#if (defined(INTRIN_AVX256) && (INTRIN_AVX256 <= 0)) || !defined(INTRIN_AVX256) || defined(uX_ARM) || defined(uX_PPC32_OR_PPC64_CPU) || defined(uX_MIC)
#		define uX_NO_AVX256 1
#elif (defined(INTRIN_AVX256) && (INTRIN_AVX256 >= 1)) && defined(uX_X86_OR_X64_CPU) && (defined(uX_COMPILER_INTRIN) && (uX_COMPILER_INTRIN >= 50))
#		define uX_AVX256_INTRIN 1
#endif

#if (defined(INTRIN_AVX512) && (INTRIN_AVX512 <= 0)) || !defined(INTRIN_AVX512) || defined(uX_ARM) || defined(uX_PPC32_OR_PPC64_CPU)
#		define uX_NO_AVX512 1
#elif (defined(INTRIN_AVX512) && (INTRIN_AVX512 >= 1)) && defined(uX_X86_OR_X64_CPU) && (defined(uX_COMPILER_INTRIN) && (uX_COMPILER_INTRIN >= 60))
#		define uX_AVX512_INTRIN 1
#endif

#if (defined(INTRIN_MIC) && (INTRIN_MIC <= 0)) || !defined(INTRIN_MIC) || defined(uX_ARM) || defined(uX_PPC32_OR_PPC64_CPU)
#		define uX_NO_MIC_INTRIN 1
#elif (defined(INTRIN_MIC) && (INTRIN_MIC >= 1)) && defined(uX_X64_CPU) && defined(uX_MIC)
#		define uX_MIC_INTRIN 1
#endif

# if defined(uX_X86_OR_X64_CPU)
#	if defined(uX_MSVC_COMPATIBLE_COMPILER)
#		if (defined(_MSC_VER) && (_MSC_VER <= 1300))
#		if defined(uX_INTRINSICS)
# error ERROR: Implemented Intrinsics not supported in target compiler
#		endif
#		endif
#		if (defined(_MSC_VER) && (_MSC_VER >= 1310))
#			if	!defined(uX_NO_MMX)
#			define uX_SUPPORTS_MMX 1
#			define uX_SUPPORTS_MMXPLUS 1
#			endif
#			if !defined(__INTEL_COMPILER) && !defined(uX_NO_3DNOW)
#			define uX_SUPPORTS_3DNOW 1
#			define uX_SUPPORTS_3DNOWPLUS 1
#			endif
#			if !defined(uX_NO_SSE)
#			define uX_SUPPORTS_SSE 1
#			endif
#			if !defined(uX_NO_SSE)
#			define uX_SUPPORTS_SSE2 1
#			endif
#		endif
#		if (defined(_MSC_VER) && (_MSC_VER >= 1400)) && !defined(uX_NO_SSE)
#			define uX_SUPPORTS_SSE3 1
#		endif
#		if (defined(_MSC_VER) && (_MSC_VER >= 1500))
#		if !defined(uX_NO_SSE)
#			define uX_SUPPORTS_SSSE3 1
#		endif
#		if !defined(__INTEL_COMPILER) && !defined(uX_NO_SSE)
#			define uX_SUPPORTS_SSE4A 1
#		endif
#		endif
#		if !defined(uX_NO_SSE)
#			define uX_SUPPORTS_SSE41 1
#			define uX_SUPPORTS_SSE42 1
#		endif
#		if (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN) || defined(uX_AVX512_INTRIN))
#			define uX_SUPPORTS_LZCNT 1
#			define uX_SUPPORTS_POPCNT 1
#		endif
#		if (defined(_MSC_VER) && (_MSC_VER >= 1600)) && defined(uX_AVX256_INTRIN) && !defined(uX_NO_AVX256)
#			define uX_SUPPORTS_AVX 1
#		endif
#		if (defined(_MSC_VER) && (_MSC_FULL_VER >= 160040219)) && !defined(uX_NO_AMD_INTRIN) && (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN))
#		if !defined(__INTEL_COMPILER)
#			define uX_SUPPORTS_FMA4 1
#			define uX_SUPPORTS_XOP 1
#		endif
#		endif
#		if (defined(_MSC_VER) && (_MSC_VER >= 1700))
#		if (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN) || defined(uX_AVX512_INTRIN))
#			define uX_SUPPORTS_FMA3 1
#			define uX_SUPPORTS_F16C 1
#		endif
#			if defined(uX_AVX256_INTRIN) && !defined(uX_NO_AVX256)
#			define uX_SUPPORTS_AVX2 1
#			endif
#		if (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN) || defined(uX_AVX512_INTRIN))
#			define uX_SUPPORTS_HLE 1
#			define uX_SUPPORTS_RTM 1
#		if !defined(__INTEL_COMPILER)
#			define uX_SUPPORTS_TBM 1
#		endif
#			define uX_SUPPORTS_BMI 1
#			define uX_SUPPORTS_BMI2 1
#		endif
#		endif
#	if (defined(_MSC_VER) && (_MSC_VER >= 1911))
#		if defined(uX_AVX512_INTRIN) && !defined(uX_NO_AVX512)
#		ifndef uX_SUPPORTS_AVX512
#			define uX_SUPPORTS_AVX512 1
#		endif
#		endif
#	endif
#	endif
# elif defined(uX_A32_OR_A64_CPU)
#		if (defined(_MSC_VER) && (_MSC_VER >= 1700))
#		if (defined(uX_ARCH_ARM_VSET) && (uX_ARCH_ARM_VSET >= 7)) && defined(uX_ARM_NEON_INTRIN) && !defined(uX_NO_ARM_NEON) // some things for arm I cant figure out in msvc compiler yet
#			define uX_SUPPORTS_ARM_NEON 1							/* minimal Arch32 for 32-bits Advanced SIMD floating-point vector instructions are available. */
#		endif
#		if defined(uX_ARCH_ARM_VSET) && (uX_ARCH_ARM_VSET >= 8) && defined(uX_ARCH_A64)
#			define uX_SUPPORTS_ARM_NEON_DFP 1							/* minimal Arch64 for 64-bits Advanced SIMD double precision floating-point vector instructions are available. */
#		endif
#		endif
#		if (defined(_MSC_VER) && (_MSC_VER >= 1800))
#		endif
# endif

# if defined(uX_X86_OR_X64_CPU)

#	if defined(uX_INTEL_COMPILER)
#	if defined(__SSE4_2__) && (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN) || defined(uX_AVX512_INTRIN))
#	ifndef uX_SUPPORTS_POPCNT
#		define uX_SUPPORTS_POPCNT 1
#	endif
#	endif
#	if defined(__AVX2__) && (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN) || defined(uX_AVX512_INTRIN))
#	ifndef uX_SUPPORTS_LZCNT
#		define uX_SUPPORTS_LZCNT 1
#	endif
#	ifndef uX_SUPPORTS_FMA3
#		define uX_SUPPORTS_FMA3 1
#	endif
#	ifndef uX_SUPPORTS_BMI
#		define uX_SUPPORTS_BMI 1
#	endif
#	ifndef uX_SUPPORTS_BMI2
#		define uX_SUPPORTS_BMI2 1
#	endif
#	endif
#	if	(defined(__AVX512__) || defined(__AVX512F__)) && defined(uX_AVX512_INTRIN) && !defined(uX_NO_AVX512)
#	ifndef uX_SUPPORTS_AVX512
#		define uX_SUPPORTS_AVX512 1
#	endif
#	endif
# endif

#	if defined(uX_GCC_COMPATIBLE_COMPILER)
#		if defined(__MMX__) && !defined(uX_NO_MMX)
#		ifndef uX_SUPPORTS_MMX
#			define uX_SUPPORTS_MMX 1
#		endif
#		endif
#		if defined(__3dNOW__) && !defined(__INTEL_COMPILER) && !defined(uX_NO_3DNOW)
#		ifndef uX_SUPPORTS_3DNOW
#			define uX_SUPPORTS_3DNOW 1
#			endif
#	endif
#	if defined(__3dNOW_A__) && !defined(__INTEL_COMPILER) && !defined(uX_NO_3DNOW)
#		ifndef uX_SUPPORTS_3DNOWPLUS
#			define uX_SUPPORTS_3DNOWPLUS 1
#		endif
#	endif
#	if defined(__SSE__)
#		if !defined(uX_SUPPORTS_MMXPLUS) && !defined(uX_NO_MMX)
#			define uX_SUPPORTS_MMXPLUS 1
#		endif
#	if !defined(uX_NO_SSE)
#		ifndef uX_SUPPORTS_SSE
#			define uX_SUPPORTS_SSE 1
#		endif
#	endif
#	endif
#	if defined(__SSE2__) && !defined(uX_NO_SSE)
#		ifndef uX_SUPPORTS_SSE2
#			define uX_SUPPORTS_SSE2 1
#		endif
#	endif
#	if defined(__SSE3__) && !defined(uX_NO_SSE)
#		ifndef uX_SUPPORTS_SSE3
#			define uX_SUPPORTS_SSE3 1
#		endif
#	endif
#	if defined(__SSSE3__) && !defined(uX_NO_SSE)
#		ifndef uX_SUPPORTS_SSSE3
#			define uX_SUPPORTS_SSSE3 1
#		endif
#	endif
#	if defined(__SSE4A__) && !defined(__INTEL_COMPILER) && !defined(uX_NO_SSE)
#		ifndef uX_SUPPORTS_SSE4A
#			define uX_SUPPORTS_SSE4A 1
#		endif
#	endif
#	if defined(__SSE4_1__) && !defined(uX_NO_SSE)
#		ifndef uX_SUPPORTS_SSE41
#			define uX_SUPPORTS_SSE41 1
#		endif
#	endif
#	if defined(__SSE4_2__) && !defined(uX_NO_SSE)
#		ifndef uX_SUPPORTS_SSE42
#			define uX_SUPPORTS_SSE42 1
#		endif
#	endif
#	if defined(__AVX__) && !defined(uX_NO_AVX256)
#		ifndef uX_SUPPORTS_AVX
#			define uX_SUPPORTS_AVX 1
#		endif
#	endif
#	if defined(__AVX2__) && !defined(uX_NO_AVX256)
#		ifndef uX_SUPPORTS_AVX2
#			define uX_SUPPORTS_AVX2 1
#		endif
#	endif
#	if defined(__F16C__) && (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN) || defined(uX_AVX512_INTRIN))
#		ifndef uX_SUPPORTS_F16C
#			define uX_SUPPORTS_F16C 1
#		endif
#	endif
#	if defined(__FMA4__) && !defined(__INTEL_COMPILER) && (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN) || defined(uX_AVX512_INTRIN)) && !defined(uX_NO_AMD_INTRIN)
#		ifndef uX_SUPPORTS_FMA4
#			define uX_SUPPORTS_FMA4 1
#		endif
#	endif
#	if defined(__FMA__) && (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN) || defined(uX_AVX512_INTRIN))
#		ifndef uX_SUPPORTS_FMA3
#			define uX_SUPPORTS_FMA3 1
#		endif
#	endif
#	if defined(__XOP__) && !defined(__INTEL_COMPILER) && (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN)) && !defined(uX_NO_AMD_INTRIN)
#		ifndef uX_SUPPORTS_XOP
#			define uX_SUPPORTS_XOP 1
#		endif
#	endif
#	if (defined(uX_SSE_INTRIN) || defined(uX_AVX256_INTRIN) || defined(uX_AVX512_INTRIN))
#	if defined(__ABM__)
#		ifndef uX_SUPPORTS_LZCNT
#			define uX_SUPPORTS_LZCNT 1
#		endif
#	endif
#	if defined(__POPCNT__)
#		ifndef uX_SUPPORTS_POPCNT
#			define uX_SUPPORTS_POPCNT 1
#		endif
#	endif
#	if defined(__BMI__)
#		ifndef uX_SUPPORTS_BMI
#			define uX_SUPPORTS_BMI 1
#		endif
#	endif
#	if defined(__BMI2__)
#		ifndef uX_SUPPORTS_BMI2
#			define uX_SUPPORTS_BMI2 1
#		endif
#	endif
#	if defined(__TBM__) && !defined(__INTEL_COMPILER) && !defined(uX_NO_AMD_INTRIN)
#		ifndef uX_SUPPORTS_TBM
#			define uX_SUPPORTS_TBM 1
#		endif
#	endif
#	if defined(__KNC__)
#		ifndef uX_SUPPORTS_KNC
#			define uX_SUPPORTS_KNC 1
#		endif
#	endif
#	endif
#	if (defined(__AVX512__) || defined(__AVX512F__)) && defined(uX_AVX512_INTRIN)	&& !defined(uX_NO_AVX512)
#		ifndef uX_SUPPORTS_AVX512
#			define uX_SUPPORTS_AVX512 1
#		endif
#	endif
# endif

# elif defined(uX_A32_OR_A64_CPU)
#	if defined(uX_GCC_COMPATIBLE_COMPILER)
#		if defined(__ARM_ARCH_9A__) || defined(uX_ARCH_ARM_V9)
#		ifndef uX_SUPPORTS_ARM_V8
#			define uX_SUPPORTS_ARM_V8 1
#		endif
#		endif
#		if defined(__ARM_ARCH_8A__) || defined(uX_ARCH_ARM_V8)
#		ifndef uX_SUPPORTS_ARM_V8
#			define uX_SUPPORTS_ARM_V8 1
#		endif
#		endif
#	if defined(__ARM_ARCH_7A__) || defined(uX_ARCH_ARM_V7)
#		ifndef uX_SUPPORTS_ARM_V7
#			define uX_SUPPORTS_ARM_V7 1
#		endif
#	endif
#	if defined(__ARM_ARCH_6ZK__) || defined(__ARM_ARCH_6K__) || defined(uX_ARCH_ARM_V6)/* || defined(uX_SUPPORTS_ARM_V7)*/
#		ifndef uX_SUPPORTS_ARM_V6K
#			define uX_SUPPORTS_ARM_V6K 1
#		endif
#	endif
#	if defined(__ARM_ARCH_6J__) || defined(__ARM_ARCH_6Z__) || defined(__ARM_ARCH_6__) || defined(uX_SUPPORTS_ARM_V6K) || defined(uX_ARCH_ARM_V6)
#		ifndef uX_SUPPORTS_ARM_V6
#			define uX_SUPPORTS_ARM_V6 1
#		endif
#	endif
#	if defined(__ARM_ARCH_5E__) || defined(__ARM_ARCH_5TE__) || defined(__ARM_FEATURE_DSP)/* || defined(uX_SUPPORTS_ARM_V6)*/
#		ifndef uX_SUPPORTS_ARM_V5E
#			define uX_SUPPORTS_ARM_V5E 1
#		endif
#	endif
#	if defined(__ARM_ARCH_5__) || defined(__ARM_ARCH_5T__) || defined(uX_SUPPORTS_ARM_V5E)
#		ifndef uX_SUPPORTS_ARM_V5
#			define uX_SUPPORTS_ARM_V5 1
#		endif
#	endif
#	if defined(__ARM_ARCH_4__) || defined(__ARM_ARCH_4T__)/* || defined(uX_SUPPORTS_ARM_V5)*/
#		ifndef uX_SUPPORTS_ARM_V4
#			define uX_SUPPORTS_ARM_V4 1
#		endif
#	endif
#	if defined(__ARM_FEATURE_UNALIGNED) || defined(uX_SUPPORTS_ARM_V6) || defined(uX_ARCH_ARM_V7) || defined(uX_ARCH_ARM_V8) || defined(uX_ARCH_ARM_V9)
#		ifndef uX_SUPPORTS_MISALIGNED_MEMORY_ACCESS
#			define uX_SUPPORTS_MISALIGNED_MEMORY_ACCESS 1
#		endif
#	endif
#	if defined(__XSCALE__)
#		ifndef uX_SUPPORTS_ARM_XSCALE
#			define uX_SUPPORTS_ARM_XSCALE 1
#		endif
#	endif
#	if defined(__IWMMXT__) || defined(__ARM_WMMX)
#		ifndef uX_SUPPORTS_ARM_WMMX
#			define uX_SUPPORTS_ARM_WMMX 1
#		endif
#	if defined(__IWMMXT2__) || (defined(__ARM_WMMX) && (__ARM_WMMX >= 2))
#		ifndef uX_SUPPORTS_ARM_WMMX2
#			define uX_SUPPORTS_ARM_WMMX2 1
#		endif
#	endif
#	endif
#	if (defined(__ARM_NEON__)
#		ifndef uX_SUPPORTS_ARM_NEON
#			define uX_SUPPORTS_ARM_NEON 1						/* minimal Arch32 for 32-bits Advanced SIMD floating-point vector instructions are available. */
#		endif
#	endif
#	if defined(__ARM_NEON_FP)
#		ifndef uX_SUPPORTS_ARM_NEON_FP
#			define uX_SUPPORTS_ARM_NEON_DFP 1					/* minimal Arch64 for 64-bits Advanced SIMD double precision floating-point vector instructions are available. */
#		endif
#	endif
#	if defined(__VFP_FP__) || defined(__ARM_FP)
#		ifndef uX_SUPPORTS_ARM_VFP
#			define uX_SUPPORTS_ARM_VFP 1
#		endif
#		if defined(uX_ARCH_SUPPORTS_DOUBLE)
#		ifndef uX_SUPPORTS_DOUBLE_PRECISION_FPU
#			define uX_SUPPORTS_DOUBLE_PRECISION_FPU 1
#		endif
#		endif
#		ifndef uX_SUPPORTS_SINGLE_PRECISION_FPU
#			define uX_SUPPORTS_SINGLE_PRECISION_FPU 1
#		endif
#		if defined(uX_SUPPORTS_ARM_V7)
#		ifndef uX_SUPPORTS_ARM_VFP2
#			define uX_SUPPORTS_ARM_VFP2 1
#		endif
#		ifndef uX_SUPPORTS_ARM_VFP3
#			define uX_SUPPORTS_ARM_VFP3 1
#		endif
#		if defined(__ARM_FP) && ((__ARM_FP & 0x2) == 0x2)
#			ifndef uX_SUPPORTS_ARM_VFP3HP
#			define uX_SUPPORTS_ARM_VFP3HP 1
#			endif
#		endif
#		if defined(uX_SUPPORTS_ARM_NEON)
#			ifndef uX_SUPPORTS_ARM_VFP3_D32
#			define uX_SUPPORTS_ARM_VFP3_D32 1
#			endif
#		endif
#		if defined(__ARM_FEATURE_FMA) || (defined(__FP_FAST_FMA) && defined(__FP_FAST_FMAF))
#			ifndef uX_SUPPORTS_ARM_VFP4
#			define uX_SUPPORTS_ARM_VFP4 1
#			endif
#		endif
#		endif
#	endif
#	if defined(__ARM_ARCH_EXT_IDIV__)
#		ifndef uX_SUPPORTS_ARM_DIV
#			define uX_SUPPORTS_ARM_DIV 1
#		endif
#	endif
#	endif

# elif defined(uX_ARCH_MIPS)
#	if defined(uX_GCC_COMPATIBLE_COMPILER)
#		if defined(__mips_isa_rev) && (__mips_isa_rev >= 2)
#		ifndef uX_SUPPORTS_MIPS_R2
#			define uX_SUPPORTS_MIPS_R2 1
#		endif
#		endif
#		if defined(__mips_dsp)
#		ifndef uX_SUPPORTS_MIPS_DSP
#			define uX_SUPPORTS_MIPS_DSP 1
#		endif
#		if defined(__mips_dsp_rev) && (__mips_dsp_rev >= 2)
#		ifndef uX_SUPPORTS_MIPS_DSP2
#			define uX_SUPPORTS_MIPS_DSP2 1
#		endif
#		endif
#	endif
#	if defined(__mips_paired_single_float)
#		ifndef uX_SUPPORTS_MIPS_PAIREDSINGLE
#			define uX_SUPPORTS_MIPS_PAIREDSINGLE 1
#		endif
#	endif
#	if defined(__mips3d)
#		ifndef uX_SUPPORTS_MIPS_3D
#			define uX_SUPPORTS_MIPS_3D 1
#		endif
#	endif
#	if defined(__mips_hard_float)
#		if !defined(uX_ARCH_SUPPORTS_DOUBLE)
#			define uX_ARCH_SUPPORTS_DOUBLE 1
#		endif
#		ifndef uX_SUPPORTS_DOUBLE_PRECISION_FPU
#			define uX_SUPPORTS_DOUBLE_PRECISION_FPU 1
#		endif
#		ifndef uX_SUPPORTS_SINGLE_PRECISION_FPU
#			define uX_SUPPORTS_SINGLE_PRECISION_FPU 1
#		endif
#	endif
#	endif
#	if defined(uX_ANDROID_LINUX_OS)
#		if defined(uX_ARCH_SUPPORTS_DOUBLE)
#		ifndef uX_SUPPORTS_DOUBLE_PRECISION_FPU
#			define uX_SUPPORTS_DOUBLE_PRECISION_FPU 1
#		endif
#		endif
#		ifndef uX_SUPPORTS_SINGLE_PRECISION_FPU
#			define uX_SUPPORTS_SINGLE_PRECISION_FPU 1
#		endif
#	endif

# elif defined(uX_PPC32_OR_PPC64_CPU)
#	if defined(uX_GCC_COMPATIBLE_COMPILER)
#	if defined(__VSX__)
#		ifndef uX_SUPPORTS_PPC_VSX
#			define uX_SUPPORTS_PPC_VSX 1
#		endif
#	endif
#	endif
#	if defined(uX_IBMC) || (uX_GCC_COMPATIBLE_COMPILER)
#	if defined(_ARCH_PPCGR) || defined(_ARCH_PPC64GR) || defined(_ARCH_PPC64GRSQ)
#		ifndef uX_SUPPORTS_PPC_GFXOPT
#			define uX_SUPPORTS_PPC_GFXOPT 1
#		endif
#	endif
#	if defined(_ARCH_PPCSQ) || defined(_ARCH_PPC64GRSQ)
#		ifndef uX_SUPPORTS_PPC_GPOPT
#			define uX_SUPPORTS_PPC_GPOPT 1
#		endif
#	endif
#	if defined(__VEC__) || defined(__ALTIVEC__)
#		ifndef uX_SUPPORTS_PPC_VMX
#			define uX_SUPPORTS_PPC_VMX 1
#		endif
#	endif
#	endif
#	if defined(uX_BLUEGENE_Q_SYSTEM)
#	ifndef uX_SUPPORTS_PPC_QPX
#			define uX_SUPPORTS_PPC_QPX 1
#	endif
#	endif

# elif defined(uX_CUDA_GPU)
#	ifndef uX_SUPPORTS_SINGLE_PRECISION_FPU
#			define uX_SUPPORTS_SINGLE_PRECISION_FPU 1
#	endif
#	if __CUDA_ARCH__ >= 130
#		ifndef uX_SUPPORTS_DOUBLE_PRECISION_FPU
#			define uX_SUPPORTS_DOUBLE_PRECISION_FPU 1
#		endif
#	endif

# elif defined(uX_OPENCL_DEVICE)
#	ifndef uX_SUPPORTS_SINGLE_PRECISION_FPU
#			define uX_SUPPORTS_SINGLE_PRECISION_FPU 1
#	endif
#	if defined(cl_khr_fp64) || defined(cl_amd_fp64))
#		ifndef uX_SUPPORTS_DOUBLE_PRECISION_FPU
#			define uX_SUPPORTS_DOUBLE_PRECISION_FPU 1
#		endif
#	endif
# endif

#if defined(uX_SUPPORTS_FMA3) || defined(uX_SUPPORTS_FMA4)
#	ifndef uX_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uX_SUPPORTS_DOUBLE_PRECISION_FMA 1
#	endif
#	ifndef uX_SUPPORTS_SINGLE_PRECISION_FMA
#		define uX_SUPPORTS_SINGLE_PRECISION_FMA 1
#	endif

#elif defined(uX_SUPPORTS_KNC) && defined(uX_ICC)
#	ifndef uX_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uX_SUPPORTS_DOUBLE_PRECISION_FMA 1
#	endif
#	ifndef uX_SUPPORTS_SINGLE_PRECISION_FMA
#		define uX_SUPPORTS_SINGLE_PRECISION_FMA 1
#	endif

#elif defined(uX_IA64)
#	ifndef uX_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uX_SUPPORTS_DOUBLE_PRECISION_FMA 1
#	endif
#	ifndef uX_SUPPORTS_SINGLE_PRECISION_FMA
#		define uX_SUPPORTS_SINGLE_PRECISION_FMA 1
#	endif

#elif defined(uX_GCC_COMPATIBLE_COMPILER)
#	if defined(__FP_FAST_FMA)
#	ifndef uX_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uX_SUPPORTS_DOUBLE_PRECISION_FMA 1
#	endif
#	endif
#	if defined(__FP_FAST_FMAF)
#	ifndef uX_SUPPORTS_SINGLE_PRECISION_FMA
#		define uX_SUPPORTS_SINGLE_PRECISION_FMA 1
#	endif
#	endif

#elif defined(uX_CUDA_GPU) && (__CUDA_ARCH__ >= 200)
#	ifndef uX_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uX_SUPPORTS_DOUBLE_PRECISION_FMA 1
#	endif
#	ifndef uX_SUPPORTS_SINGLE_PRECISION_FMA
#		define uX_SUPPORTS_SINGLE_PRECISION_FMA 1
#	endif

#elif defined(uX_OPENCL_DEVICE)
#	if defined(FP_FAST_FMA)
#	ifndef uX_SUPPORTS_DOUBLE_PRECISION_FMA
#		define uX_SUPPORTS_DOUBLE_PRECISION_FMA 1
#	endif
#	endif
#	if defined(FP_FAST_FMAF)
#	ifndef uX_SUPPORTS_SINGLE_PRECISION_FMA
#		define uX_SUPPORTS_SINGLE_PRECISION_FMA 1
#	endif
#	endif
#endif

#if defined(uX_WINDOWS_OS)
#undef uX_ENDIAN_BIG
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#endif
#if defined(uX_GCC_COMPATIBLE_COMPILER) && defined(__LITTLE_ENDIAN__)
#undef uX_ENDIAN_BIG
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#endif
#if defined(uX_GCC_COMPATIBLE_COMPILER) && defined(__BIG_ENDIAN__)
#undef uX_ENDIAN_LITTLE
#undef uX_ENDIAN_BIG
#		define uX_ENDIAN_BIG 1
#endif
#if defined(uX_GCC_COMPATIBLE_COMPILER) && defined(__ORDER_LITTLE_ENDIAN__) || (defined(__BYTE_ORDER__) && (__BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__))
#undef uX_ENDIAN_BIG
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#endif
#if defined(uX_GCC_COMPATIBLE_COMPILER) && defined(__ORDER_BIG_ENDIAN__) || (defined(__BYTE_ORDER__) && (__BYTE_ORDER__ == __ORDER_BIG_ENDIAN__))
#undef uX_ENDIAN_LITTLE
#undef uX_ENDIAN_BIG
#		define uX_ENDIAN_BIG 1
#endif
#if defined(_BIG_ENDIAN) || defined(__BIG_ENDIAN__)
#undef uX_ENDIAN_LITTLE
#undef uX_ENDIAN_BIG
#		define uX_ENDIAN_BIG 1
#elif defined(uX_X86_OR_X64_CPU)
#undef uX_ENDIAN_BIG
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#endif
#if (defined(uX_ARCH_ARM) || defined(uX_ARCH_MIPS)) && defined(__ANDROID__)
#	if defined(__ARMEB__)
#undef uX_ENDIAN_LITTLE
#undef uX_ENDIAN_BIG
#		define uX_ENDIAN_BIG 1
#	else
#undef uX_ENDIAN_BIG
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#	endif
#endif
#if defined(uX_CUDA_GPU)
#undef uX_ENDIAN_BIG
#undef uX_ENDIAN_LITTLE
#		define uX_ENDIAN_LITTLE 1
#endif

#if defined(uX_X64_ABI)
#if defined(uX_WINDOWS_OS)
#		define uX_MICROSOFT_X64_ABI 1
#elif defined(__KNC__)
#		define uX_K1OM_X64_ABI 1
#else
#		define uX_SYSTEMV_X64_ABI 1
#endif
#elif defined(uX_ARM_ABI)
#if defined(__ARM_EABI__)
#		define uX_EABI_ARM_ABI 1
#if defined(__ARM_PCS_VFP)
#		define uX_HARDEABI_ARM_ABI 1
#else
#		define uX_SOFTEABI_ARM_ABI 1
#endif
#endif
#elif defined(uX_MIPS32_ABI)
#if defined(_ABIO32)
#		define uX_O32_MIPS_ABI 1
#if defined(__mips_hard_float)
#		define uX_HARDO32_MIPS_ABI 1
#endif
#endif
#endif

#if defined(uX_ICC) || defined(uX_GNUC) || defined(uX_CLANG) || defined(uX_ARMCC) || defined(uX_CUDACC) /*|| (defined(_MSC_VER) && (_MSC_VER >= 1800))*/
/* These compilers support hex floats even in C++ */
#define uX_COMPILER_SUPPORTS_HEXADECIMAL_FLOATING_POINT_CONSTANTS 1
#elif defined(__STDC_VERSION__) && (__STDC_VERSION__ >= 199901L)
/* C99 standard mandates support for hex floats */
#define uX_COMPILER_SUPPORTS_HEXADECIMAL_FLOATING_POINT_CONSTANTS 1
#endif

#if (defined(uX_VC) && (uX_COMPILER_INTRIN < 60) && (INTRIN_VERSION >= 60))
#error	ERROR: !!! Microsoft C++ compiler cant support AVX-512 and MIC Intrinsics yet
#error	ERROR: !!! Please change to INTRIN_VERSION ==50 or ==52 in IDE preprocessor for AVX/AVX2 BUILD in MSVC
#endif

#if defined(uX_VC) && defined(uX_MIC) && !defined(uX_ICW)
#error	ERROR: !!! Microsoft C++ compiler cant support Intel MIC architecture
#error	ERROR: !!! Please change to Intel Compiler
#endif

#if defined(uX_INTRINSICS) && !defined(uX_NO_INTRINSICS)
# if (defined(uX_X86_OR_X64_CPU) && (INTRIN_VERSION >= 10)) && (defined(uX_SUPPORTS_SSE) ||defined(uX_SUPPORTS_AVX) || defined(uX_SUPPORTS_AVX2) || defined(uX_SUPPORTS_AVX512))
#	if((defined(INTRIN_VERSION) && (INTRIN_VERSION >= 60)) && (uX_AVX512_INTRIN >=1)) && defined(uX_SUPPORTS_AVX512)
#		define uX_AVX512_INTRINSICS 1
#		define uX_AVX512_FMA_SUPPORT 1
#	endif
# if ((defined(INTRIN_VERSION) && (INTRIN_VERSION >= 50)) && (uX_AVX256_INTRIN >=1)) && (defined(uX_SUPPORTS_AVX) || defined(uX_SUPPORTS_AVX2)) && !defined(uX_MIC)
#		define uX_AVX256_INTRINSICS 1
#	if ((defined(INTRIN_VERSION) && (INTRIN_VERSION >= 52)) && (uX_AVX256_INTRIN >=1)) && defined(uX_SUPPORTS_AVX2)
#		define uX_AVX256_V2_INTRINSICS 1
#	if defined(uX_SUPPORTS_FMA3) || defined(uX_SUPPORTS_FMA4)
#		define uX_AVX256_FMA_SUPPORT 1
#	endif
#	endif
#	endif
# if ((defined(INTRIN_VERSION) && (INTRIN_VERSION >= 10)) && (uX_SSE_INTRIN >=1)) && (defined(uX_SUPPORTS_SSE) || defined(uX_SUPPORTS_SSE2) || defined(uX_SUPPORTS_SSE3) \
	|| defined(uX_SUPPORTS_SSSE3) || defined(uX_SUPPORTS_SSE41) || defined(uX_SUPPORTS_SSE42) || defined(uX_SUPPORTS_SSE4A)) && !defined(uX_MIC)
#		define uX_SSE_INTRINSICS 1
# endif
# if defined(uX_X86_CPU) && (defined(uX_MMX_INTRIN) || defined(uX_3DNOW_INTRIN)) && (defined(uX_INTEL_INTRIN) || defined(uX_AMD_INTRIN)) && (defined(uX_SUPPORTS_3DNOW) \
	|| defined(uX_SUPPORTS_3DNOWPLUS) || defined(uX_SUPPORTS_MMX) || defined(uX_SUPPORTS_MMXPLUS)) && !defined(uX_MIC)
#	if defined(uX_INTEL_INTRIN) && !defined(uX_3DNOW_INTRIN) && defined(uX_MMX_INTRIN) && (defined(uX_SUPPORTS_MMX) || defined(uX_SUPPORTS_MMXPLUS))
#		define uX_MMX_INTRINSICS 1
#	endif
#	if defined(uX_AMD_INTRIN) && !defined(uX_INTEL_INTRIN) && defined(uX_3DNOW_INTRIN) && (defined(uX_SUPPORTS_3DNOW) || defined(uX_SUPPORTS_3DNOWPLUS))
#		define uX_3DNOW_INTRINSICS 1
#	endif
#	if defined(uX_INTEL_INTRIN) && defined(uX_AMD_INTRIN) && defined(uX_MMX_INTRIN) && defined(uX_3DNOW_INTRIN) && \
	(((defined(uX_SUPPORTS_3DNOW) || defined(uX_SUPPORTS_3DNOWPLUS)) && (defined(uX_SUPPORTS_MMX) || defined(uX_SUPPORTS_MMXPLUS))))
#		define uX_MMX_INTRINSICS 1
#		define uX_3DNOW_INTRINSICS 1
#	endif
# endif
# elif defined(uX_XBOXONE)
// XBOXONE

#error ERROR: not implemented!! check how to implement intrinsics for XBOXONE, in XBOXONE sdk intrinsics headers or manuals
#		define uX_XBOXONE_INTRINSICS 1
# elif defined(uX_XBOX360)
// XBOX_360
#error ERROR: not implemented!! check how to implement intrinsics for xbox360, in xbox360 sdk intrinsics headers or manuals
#		define uX_VMX128_INTRINSICS 1
#		define uX_XBOX360_INTRINSICS 1
# elif defined(uX_PS3)
// PS3
#error ERROR: not implemented!! check how to implement intrinsics for PS3, in PS3 sdk intrinsics headers or manuals
#if defined(uX_SPU128PS3)
#		define uX_SPU128PS3_INTRINSICS 1
#endif
#if defined(uX_VMX128PS3)
#		define uX_VMX128_INTRINSICS 1
#		define uX_VMX128_PS3_INTRINSICS 1
#endif
# elif defined(uX_PS4)
// PS4
#error ERROR: not implemented!! check how to implement intrinsics for PS4, in PS4 sdk intrinsics headers or manuals
#		define uX_PS4_INTRINSICS 1
# elif defined(uX_ARM)
// probably this can be all the same
#	if defined(uX_ARM_INTRIN)
// Simple ARM no NEON support
#		define uX_ARM_INTRINSICS 1
#	if defined(uX_ARM_NEON_INTRIN) && defined(uX_SUPPORTS_ARM_NEON) && (!defined(uX_PSP2) && !defined(uX_PSVITA))
// ARM with NEON support
#		define uX_ARM_NEON_INTRINSICS 1
#	elif (defined(uX_PSP2) || defined(uX_PSVITA))
// PSP2 PSVITA
#error ERROR: not implemented!! check how to implement intrinsics for PSP2 and PSVITA, in sdk PSVITA intrinsics headers or manuals
#		define uX_PSVITA_INTRINSICS 1
#	elif defined(uX_ARM_NEON_INTRIN) && !defined(uX_SUPPORTS_ARM_NEON)
# error ERROR: Target ARM arch does not support ARM_NEON_INTRIN or you have defined-it by error
#	endif
#	endif
# elif !defined(uX_NO_INTRINSICS)
# error ERROR: UASM does not support this intrinsics target or is not implemented yet
# endif
#endif // !uX_ARM_NEON_INTRINSICS_ && !uX_SSE_INTRINSICS_ && !uX_VMX128_INTRINSICS_ && !uX_NO_INTRINSICS_

#if !defined(uX_INTRINSICS_SUPPORT) && (defined(uX_MMX_INTRINSICS) || defined(uX_3DNOW_INTRINSICS) || defined(uX_ARM_NEON_INTRINSICS) || defined(uX_SSE_INTRINSICS) \
	|| defined(uX_AVX256_INTRINSICS) || defined(uX_AVX512_INTRINSICS) || defined(uX_VMX128_INTRINSICS)) && !defined(uX_NO_INTRINSICS)
#		define uX_INTRINSICS_SUPPORT 1
#else
#		define uX_NO_INTRINSICS_SUPPORT 1
#endif

#if defined(uX_INTRINSICS_SUPPORT) && (defined(uX_XBOXONE) || defined(uX_PS4))
#error ERROR: Check xboxone or ps4 processor capabilities for avx or sse,	lets block compilation if we yet not have checked the XBOXOne os PS4 processor type. This block check will be removed...
#endif

// find if multi intrinsics are defined to be build
# if((defined(uX_MMX_INTRINSICS) || defined(uX_3DNOW_INTRINSICS)) && (!defined(uX_SSE_INTRINSICS) && !defined(uX_AVX256_INTRINSICS) && !defined(uX_AVX512_INTRINSICS))) || \
	(defined(uX_SSE_INTRINSICS) && (!defined(uX_AVX256_INTRINSICS) && !defined(uX_AVX512_INTRINSICS) && !defined(uX_MMX_INTRINSICS) && !defined(uX_3DNOW_INTRINSICS))) || \
	(defined(uX_AVX256_INTRINSICS) && (!defined(uX_SSE_INTRINSICS) && !defined(uX_AVX512_INTRINSICS) && !defined(uX_MMX_INTRINSICS) && !defined(uX_3DNOW_INTRINSICS))) || \
	(defined(uX_AVX512_INTRINSICS) && (!defined(uX_SSE_INTRINSICS) && !defined(uX_AVX256_INTRINSICS) && !defined(uX_MMX_INTRINSICS) && !defined(uX_3DNOW_INTRINSICS))) || \
	defined(uX_VMX128_INTRINSICS) || defined(uX_ARM_NEON_INTRINSICS)
#		define uX_MULINTRIN 1 /* Only one intrinsics type is defined */
# elif !defined(uX_NO_INTRINSICS_SUPPORT)
#		define uX_MULINTRIN 2 /* More than one intrinsics type is defined*/
# else
#		define uX_MULINTRIN 0 /*	one intrinsics type */
# endif

// find the version of the implemented intrinsics are to be build alone
# if defined(uX_VMX128_INTRINSICS)
#		define uX_VERS_INTRINTYPE 8	/* VeXM128 Only */
# elif	defined(uX_ARM_NEON_INTRINSICS) && !defined(uX_ARM_INTRINSICS)
#		define uX_VERS_INTRINTYPE 7	/* ARM NEON Only */
# elif	defined(uX_ARM_INTRINSICS) && !defined(uX_ARM_NEON_INTRINSICS)
#		define uX_VERS_INTRINTYPE 6	/* ARM non NEON Only */
# elif	defined(uX_AVX512_INTRINSICS) && (!defined(uX_MMX_INTRINSICS) && !defined(uX_3DNOW_INTRINSICS) && !defined(uX_SSE_INTRINSICS) && !defined(uX_AVX256_INTRINSICS))
#		define uX_VERS_INTRINTYPE 5	/* AVX512 Only */
# elif	defined(uX_AVX256_INTRINSICS) && (!defined(uX_MMX_INTRINSICS) && !defined(uX_3DNOW_INTRINSICS) && !defined(uX_SSE_INTRINSICS) && !defined(uX_AVX512_INTRINSICS))
#		define uX_VERS_INTRINTYPE 4	/* AVX256 Only */
# elif	defined(uX_SSE_INTRINSICS) && (!defined(uX_MMX_INTRINSICS) && !defined(uX_3DNOW_INTRINSICS) && !defined(uX_AVX256_INTRINSICS) && !defined(uX_AVX512_INTRINSICS))
#		define uX_VERS_INTRINTYPE 3	/* SSE Only */
# elif	defined(uX_3DNOW_INTRINSICS) && (!defined(uX_MMX_INTRINSICS) && !defined(uX_SSE_INTRINSICS) && !defined(uX_AVX256_INTRINSICS) && !defined(uX_AVX512_INTRINSICS))
#		define uX_VERS_INTRINTYPE 2	/* 3DNOW Only */
# elif	defined(uX_MMX_INTRINSICS) && (!defined(uX_3DNOW_INTRINSICS) && !defined(uX_SSE_INTRINSICS) && !defined(uX_AVX256_INTRINSICS) && !defined(uX_AVX512_INTRINSICS))
#		define uX_VERS_INTRINTYPE 1	/* MMX Only */
# else
#		define uX_VERS_INTRINTYPE 0	/* Multi intrinsics defined or none of the implemented intrinsics are present */
# endif

#if defined(uX_AVX512_INTRINSICS) || defined(uX_AVX256_INTRINSICS) || defined(uX_SSE_INTRINSICS) || defined(uX_MMX_INTRINSICS) || defined(uX_3DNOW_INTRINSICS)
#	if defined(uX_MMX_INTRINSICS) || defined(uX_3DNOW_INTRINSICS) || (defined(uX_X86_CPU) && defined(uX_SSE_INTRINSICS))
#		define uX_X86_INTRINTYPE 1	/* x86 only intrinsics group */
# elif defined(uX_X64_CPU)
#		define uX_X64_INTRINTYPE 1	/* x86_x64 intrinsics group */
#	endif
#endif

#if ((INTEL_INTRIN >=1) || (AMD_INTRIN >=1)) && ((ARM_NEON_INTRIN >=1) || (ARM_INTRIN >= 1))
# error ERROR:	Cannot mix ARM builds with x86 x64 builds
# error ERROR:	Please define only one ARCH type
# error ERROR:	Reason for data alignment requeriments and incompatible code
#endif

#if defined(uX_X86_OR_X64_CPU) && defined(uX_INTRINSICS_SUPPORT)
# if (defined(uX_INTEL_INTRIN) && !defined(uX_AMD_INTRIN)) && (defined(uX_AVX512_INTRINSICS) || defined(uX_AVX256_INTRINSICS) || defined(uX_AVX256_V2_INTRINSICS) || defined(uX_SSE_INTRINSICS) || defined(uX_MMX_INTRINSICS))
#	if (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 60)) && defined(uX_AVX512_INTRINSICS) && defined(uX_SUPPORTS_AVX512)
#		define uX_AVX512 1								/* AVX-512 and MIC */
#		define uX_FMA_512 1							/* AVX-512 and MIC FMA */
#	if defined(uX_AVX256_V2_INTRINSICS) && !defined(uX_MIC)
#		if	defined(uX_SUPPORTS_AVX2)
#		define uX_AVX2 1								/* AVX-2 */
#		endif
#	endif
#	if defined(uX_AVX256_INTRINSICS) && !defined(uX_MIC)
#		if defined(uX_SUPPORTS_AVX)
#		define uX_AVX 1								/* AVX	*/
#		endif
#		if	defined(uX_SUPPORTS_FMA3)
#		define uX_FMA3 1								/* FMA3 */
#		endif
#	endif
#		if	defined(uX_SUPPORTS_F16C)
#		define uX_F16C 1								/* F16C */
#		endif
#	if defined(uX_SSE_INTRINSICS) && !defined(uX_MIC)
#		if	defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	endif
#	if defined(uX_MMX_INTRINSICS) && !defined(uX_MIC)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 60							/* AVX-512 and or MIC	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 52)) && defined(uX_AVX256_V2_INTRINSICS) && defined(uX_SUPPORTS_AVX2) && !defined(uX_MIC)
#		define uX_AVX2 1								/* AVX-2 */
#		if	defined(uX_SUPPORTS_FMA3)
#		define uX_FMA3 1								/* FMA3 */
#		endif
#		if	defined(uX_SUPPORTS_F16C)
#		define uX_F16C 1								/* F16C */
#		endif
#		if defined(uX_SUPPORTS_AVX)
#		define uX_AVX 1								/* AVX	*/
#		endif
#	if defined(uX_SSE_INTRINSICS)
#		if	defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 52										/* AVX-2 FMA3 */
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 50)) && defined(uX_AVX256_INTRINSICS) && defined(uX_SUPPORTS_AVX) && !defined(uX_MIC)
#		define uX_AVX 1								/* AVX	*/
#		if	defined(uX_SUPPORTS_FMA3)
#		define uX_FMA3 1								/* FMA3 */
#		endif
#		if	defined(uX_SUPPORTS_F16C)
#		define uX_F16C 1								/* F16C */
#		endif
#	if defined(uX_SSE_INTRINSICS)
#		if	defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 50							/* AVX	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 42)) && defined(uX_SSE_INTRINSICS)	&& defined(uX_SUPPORTS_SSE42) && !defined(uX_MIC)
#		define uX_SSE42 1								/* SSE4.2	*/
#		if	defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 42							/* SSE4.2	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 41)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE41) && !defined(uX_MIC)
#		define uX_SSE41 1								/* SSE4.1	*/
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 41							/* SSE4.1	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 31)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSSE3) && !defined(uX_MIC)
#		define uX_SSSE3 1								/* SSEE3	*/
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 31							/* SSEE3	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 30)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE3) && !defined(uX_MIC)
#		define uX_SSE3 1								/* SSE3	*/
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 30										/* SSE3	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 20)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE2) && !defined(uX_MIC)
#		define uX_SSE2 1								/* SSE2	*/
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 20										/* SSE2	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 10)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE) && !defined(uX_MIC)
#		define uX_SSE 1								/* SSE	*/
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 10							/* SSE	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 1)) && defined(uX_MMX_INTRINSICS) && (defined(uX_SUPPORTS_MMX) || defined(uX_SUPPORTS_MMXPLUS)) && \
		!defined(uX_MIC)
#		define uX_MMX 1								/* MMX	*/ /* TODO... I need to research this MMX type Intrinsics, first look can be high for Linux*/
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#		define uX_INTRINSET 8							/* MMX	*/
#	endif
# elif (defined(uX_AMD_INTRIN) && !defined(uX_INTEL_INTRIN)) && (defined(uX_AVX512_INTRINSICS) || defined(uX_AVX256_INTRINSICS) || defined(uX_SSE_INTRINSICS) || defined(uX_MMX_INTRINSICS)) && \
		!defined(uX_MIC)
#	if (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 60)) && defined(uX_AVX512_INTRINSICS) && defined(uX_SUPPORTS_AVX512)
#		define uX_AVX512 1								/* AVX-512 and MIC */
#		define uX_FMA_512 1							/* AVX-512 and MIC FMA */
#		define uX_AVX512VL 1							/* AVX-512 VL */
#		define uX_AVX512ER 1							/* AVX-512 ER */
#		define uX_AVX512DQ 1							/* AVX-512 DQ */
#	if defined(uX_AVX256_V2_INTRINSICS)
#		if	defined(uX_SUPPORTS_AVX2)
#		define uX_AVX2 1								/* AVX-2 */
#		endif
#	endif
#	if defined(uX_AVX256_INTRINSICS)
#		if defined(uX_SUPPORTS_AVX)
#		define uX_AVX 1								/* AVX	*/
#		endif
#		if defined(uX_SUPPORTS_FMA4)
#		define uX_FMA4 1								/* FMA3 */
#		endif
#		if	defined(uX_SUPPORTS_FMA3)
#		define uX_FMA3 1								/* FMA3 */
#		endif
#		if defined(uX_SUPPORTS_XOP)
#		define uX_XOP 1								/* XOP */
#		endif
#		if	defined(uX_SUPPORTS_F16C)
#		define uX_F16C 1								/* F16C */
#		endif
#	endif
#	if defined(uX_SSE_INTRINSICS)
#		if	defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		endif
#		if	defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 60										/* AVX-512 and MIC	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 52)) && defined(uX_AVX256_V2_INTRINSICS) && defined(uX_SUPPORTS_AVX2)
#		define uX_AVX2 1								/* AVX-2 FMA FMA4 */
#		if defined(uX_SUPPORTS_FMA4)
#		define uX_FMA4 1								/* FMA4 */
#		endif
#		if defined(uX_SUPPORTS_FMA3)
#		define uX_FMA3 1								/* FMA3 */
#		endif
#		if defined(uX_SUPPORTS_AVX)
#		define uX_AVX 1								/* AVX */
#		endif
#		if defined(uX_SUPPORTS_XOP)
#		define uX_XOP 1								/* XOP */
#		endif
#		if	defined(uX_SUPPORTS_F16C)
#		define uX_F16C 1								/* F16C */
#		endif
#	if defined(uX_SSE_INTRINSICS)
#		if defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2 */
#		endif
#		if defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		endif
#		if defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1 */
#		endif
#		if defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2 */
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE */
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW */
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 52										/* AVX-2 FMA FMA4 */
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 50)) && defined(uX_AVX256_INTRINSICS) && defined(uX_SUPPORTS_AVX)
#		define uX_AVX 1								/* AVX	*/
#		if defined(uX_SUPPORTS_FMA4)
#		define uX_FMA4 1								/* FMA4 */
#		endif
#		if defined(uX_SUPPORTS_FMA3)
#		define uX_FMA3 1								/* FMA3 */
#		endif
#		if defined(uX_SUPPORTS_XOP)
#		define uX_XOP 1								/* XOP */
#		endif
#		if	defined(uX_SUPPORTS_F16C)
#		define uX_F16C 1								/* F16C */
#		endif
#	if defined(uX_SSE_INTRINSICS)
#		if defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2 */
#		endif
#		if defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		endif
#		if defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1 */
#		endif
#		if defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2 */
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE */
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW */
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 50										/* AVX	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 42)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2	*/
#		if defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		endif
#		if defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1 */
#		endif
#		if defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2 */
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE */
#		endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW */
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 42										/* SSE4.2	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 41)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		if defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		endif
#		if defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2 */
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE */
#		endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW */
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 41										/* SSE4.1	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 40)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A	*/
#		if defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1 */
#		endif
#		if defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2 */
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE */
#		endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW */
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 40										/* SSE4A	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 31)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		if defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3 */
#		endif
#		if defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2 */
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE */
#		endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW */
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 31										/* SSEE3	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 30)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		if defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2 */
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE */
#		endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW */
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 30										/* SSE3	*/
#	elif (defined(INTRIN_VERSION) && ( INTRIN_VERSION >= 20)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE */
#		endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW */
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 20										/* SSE2	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 10)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE2)
#		define uX_SSE 1								/* SSE	*/
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW */
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1
#		endif
#	endif
#		define uX_INTRINSET 10										/* SSE	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 1)) && defined(uX_3DNOW_INTRINSICS) && (defined(uX_SUPPORTS_3DNOW) || defined(uX_SUPPORTS_3DNOWPLUS))
#		define uX_3DNOW 1								/* 3DNOW */
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1
#		endif
#		define uX_INTRINSET 8										/* uX_3DNOW	*/
#	endif
# elif defined(uX_AMD_INTRIN) && defined(uX_INTEL_INTRIN) && (defined(uX_AVX512_INTRINSICS) || defined(uX_AVX256_INTRINSICS) || defined(uX_SSE_INTRINSICS) || defined(uX_MMX_INTRINSICS)) && \
		!defined(uX_MIC)
#	if (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 60)) && defined(uX_AVX512_INTRINSICS) && defined(uX_SUPPORTS_AVX512)
#		define uX_AVX512 1								/* AVX-512 and MIC */
#		define uX_FMA_512 1							/* AVX-512 and MIC FMA */
#		define uX_AVX512VL 1							/* AVX-512 VL */
#		define uX_AVX512ER 1							/* AVX-512 ER */
#		define uX_AVX512DQ 1							/* AVX-512 DQ */
#	if defined(uX_AVX256_V2_INTRINSICS)
#		if	defined(uX_SUPPORTS_AVX2)
#		define uX_AVX2 1								/* AVX-2 */
#		endif
#	endif
#	if defined(uX_AVX256_INTRINSICS)
#		if defined(uX_SUPPORTS_AVX)
#		define uX_AVX 1								/* AVX	*/
#		endif
#		if defined(uX_SUPPORTS_FMA4)
#		define uX_FMA4 1								/* FMA3 */
#		endif
#		if	defined(uX_SUPPORTS_FMA3)
#		define uX_FMA3 1								/* FMA3 */
#		endif
#		if defined(uX_SUPPORTS_XOP)
#		define uX_XOP 1								/* XOP */
#		endif
#		if	defined(uX_SUPPORTS_F16C)
#		define uX_F16C 1								/* F16C */
#		endif
#	endif
#	if defined(uX_SSE_INTRINSICS)
#		if	defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		endif
#		if	defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		define SSE_41 41
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 60										/* AVX-512 and or MIC	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 52)) && defined(uX_AVX256_V2_INTRINSICS) && defined(uX_SUPPORTS_AVX2)
#		define uX_AVX2 1								/* AVX-2 */
#		if defined(uX_SUPPORTS_FMA4)
#		define uX_FMA4 1								/* FMA3 */
#		endif
#		if	defined(uX_SUPPORTS_FMA3)
#		define uX_FMA3 1								/* FMA3 */
#		endif
#		if defined(uX_SUPPORTS_AVX)
#		define uX_AVX 1								/* AVX	*/
#		endif
#		if defined(uX_SUPPORTS_XOP)
#		define uX_XOP 1								/* XOP */
#		endif
#		if	defined(uX_SUPPORTS_F16C)
#		define uX_F16C 1								/* F16C */
#		endif
#	if defined(uX_SSE_INTRINSICS)
#		if	defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		endif
#		if	defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 52										/* AVX-2 FMA FMA4 */
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 50)) && defined(uX_AVX256_INTRINSICS) && defined(uX_SUPPORTS_AVX)
#		define uX_AVX 1								/* AVX	*/
#		if defined(uX_SUPPORTS_FMA4)
#		define uX_FMA4 1								/* FMA3 */
#		endif
#		if	defined(uX_SUPPORTS_FMA3)
#		define uX_FMA3 1								/* FMA3 */
#		endif
#		if defined(uX_SUPPORTS_XOP)
#		define uX_XOP 1								/* XOP	*/
#		endif
#		if	defined(uX_SUPPORTS_F16C)
#		define uX_F16C 1								/* F16C */
#		endif
#	if defined(uX_SSE_INTRINSICS)
#		if	defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		endif
#		if	defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 50										/* AVX	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 42)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE42)
#		if	defined(uX_SUPPORTS_SSE42)
#		define uX_SSE42 1								/* SSE4.2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		endif
#		if	defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 42										/* SSE4.2	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 41)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		if defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 41										/* SSE4.1	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 40)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE4A)
#		define uX_SSE4A 1								/* SSE4A */
#		if	defined(uX_SUPPORTS_SSE41)
#		define uX_SSE41 1								/* SSE4.1	*/
#		endif
#		if	defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 40										/* SSE4A	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 31)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSSE3)
#		define uX_SSSE3 1								/* SSEE3	*/
#		if	defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		endif
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 31										/* SSEE3	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 30)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE3)
#		define uX_SSE3 1								/* SSE3	*/
#		if	defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		endif
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 30										/* SSE3	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 20)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE2)
#		define uX_SSE2 1								/* SSE2	*/
#		if defined(uX_SUPPORTS_SSE)
#		define uX_SSE 1								/* SSE	*/
#		endif
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 20										/* SSE2	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 10)) && defined(uX_SSE_INTRINSICS) && defined(uX_SUPPORTS_SSE2)
#		define uX_SSE 1								/* SSE	*/
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1							/* MMXPLUS	*/
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 10										/* SSE	*/
#	elif (defined(INTRIN_VERSION) && (INTRIN_VERSION >= 1)) || (defined(uX_MMX_INTRINSICS) && (defined(uX_SUPPORTS_MMX) || defined(uX_SUPPORTS_MMXPLUS))) || \
	(defined(uX_3DNOW_INTRINSICS) && (defined(uX_SUPPORTS_3DNOW) || defined(uX_SUPPORTS_3DNOWPLUS)))
#	if defined(uX_MMX_INTRINSICS)
#		if defined(uX_SUPPORTS_MMX)
#		define uX_MMX 1								/* MMX	*/
#		endif
#		if defined(uX_SUPPORTS_MMXPLUS)
#		define uX_MMXPLUS 1
#		endif
#	endif
#	if defined(uX_3DNOW_INTRINSICS)
#		if defined(uX_SUPPORTS_3DNOW)
#		define uX_3DNOW 1								/* 3DNOW	*/
#		endif
#		if defined(uX_SUPPORTS_3DNOWPLUS)
#		define uX_3DNOWPLUS 1							/* 3DNOWPLUS */
#		endif
#	endif
#		define uX_INTRINSET 8										/* MMX & 3DNOW	*/
#	endif
# else
#error intrinsics specs not defined
# endif
#elif defined(uX_ARM) && defined(uX_INTRINSICS_SUPPORT)
#	if defined(uX_ARM_INTRIN) && !defined(uX_ARM_NEON_INTRIN)
/* not implemented yet	*/
#	elif defined(uX_ARM_NEON_INTRIN) && defined(uX_ARM_NEON_INTRINSICS) && defined(uX_SUPPORTS_ARM_NEON)
/* not implemented yet	*/
#		ifndef uX_ARM_NEON
#		define uX_ARM_NEON 1								/* ARM NEON */
#		endif
#		if defined(uX_A64_CPU)
#		define uX_INTRINSET 20								/* ARM NEON	*/ /* with double floating point precision support*/
#		else
#		define uX_INTRINSET 10								/* ARM NEON	*/ /* with single floating point precision support*/
#		endif
#	endif
#endif

#		define uX_ISET_AVX512 60
#		define uX_ISET_AVX2 52
#		define uX_ISET_AVX 50
#		define uX_ISET_SSE42 42
#		define uX_ISET_SSE41 41
#		define uX_ISET_SSE4A 40
#		define uX_ISET_SSSE3 31
#		define uX_ISET_SSE3 30
#		define uX_ISET_SSE2 20
#		define uX_ISET_SSE 10
#		define uX_ISET_MMX 8

// lets search if we can implement this in GPU also!! lets set for higher arch build if available
#if defined(uX_X86_OR_X64_CPU)
#	if defined(uX_AVX512)
#		define uX_SETCONSTBITS 512
#		define uX_STRUCTSALIGNSET 64
#		define uX_ALIGNSET 64
#	elif defined(uX_AVX) || defined(uX_AVX2)
#		define uX_SETCONSTBITS 256
#		define uX_STRUCTSALIGNSET 32
#		define uX_ALIGNSET 32
#	elif defined(uX_SSE) || defined(uX_SSE2)
#		define uX_SETCONSTBITS 128
#		define uX_STRUCTSALIGNSET 16
#		define uX_ALIGNSET 16
#	elif defined(uX_MMX) || defined(uX_3DNOW)
#		define uX_SETCONSTBITS 64
#		define uX_STRUCTSALIGNSET 8
#		define uX_ALIGNSET 8
#	endif
#elif defined(uX_A32_OR_A64_CPU)
# if	defined(uX_ARM_NEON)
#		define uX_SETCONSTBITS 128
#		define uX_STRUCTSALIGNSET 8
#		define uX_ALIGNSET 8
# elif
# endif
#endif

#if defined(uX_X86_OR_X64_CPU)
#	if defined(uX_AVX512)
#		define uX_AVX512_SETCONSTBITS 512
#		define uX_AVX512_STRUCTSALIGNSET 64
#		define uX_AVX512_ALIGNSET 64
#	endif
#	if defined(uX_AVX) || defined(uX_AVX2)
#		define uX_AVX_SETCONSTBITS 256
#		define uX_AVX_STRUCTSALIGNSET 32
#		define uX_AVX_ALIGNSET 32
#	endif
#	if defined(uX_SSE) || defined(uX_SSE2)
#		define uX_SSE_SETCONSTBITS 128
#		define uX_SSE_STRUCTSALIGNSET 16
#		define uX_SSE_ALIGNSET 16
#	endif
#	if defined(uX_MMX) || defined(uX_3DNOW)
#		define uX_MMX_SETCONSTBITS 64
#		define uX_MMX_STRUCTSALIGNSET 8
#		define uX_MMX_ALIGNSET 8
#	endif
#elif defined(uX_A32_OR_A64_CPU)
# if	defined(uX_ARM_NEON)
#		define uX_ARM_NEON_SETCONSTBITS 128
#		define uX_ARM_NEON_STRUCTSALIGNSET 8
#		define uX_ARM_NEON_ALIGNSET 8
#	else
#		define uX_ARM_SETCONSTBITS 128
#		define uX_ARM_STRUCTSALIGNSET 8
#		define uX_ARM_ALIGNSET 8
# endif
#endif

#if defined(_OPENMP)
#define uX_SUPPORTS_OPENMP 1
#else
#define uX_SUPPORTS_OPENMP 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 199810)
#define uX_SUPPORTS_OPENMP_1_0 1
#else
#define uX_SUPPORTS_OPENMP_1_0 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 200203)
#define uX_SUPPORTS_OPENMP_2_0 1
#else
#define uX_SUPPORTS_OPENMP_2_0 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 200505)
#define uX_SUPPORTS_OPENMP_2_5 1
#else
#define uX_SUPPORTS_OPENMP_2_5 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 200805)
#define uX_SUPPORTS_OPENMP_3_0 1
#else
#define uX_SUPPORTS_OPENMP_3_0 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 201107)
#define uX_SUPPORTS_OPENMP_3_1 1
#else
#define uX_SUPPORTS_OPENMP_3_1 0
#endif
#if defined(_OPENMP) && (_OPENMP >= 201307)
#define uX_SUPPORTS_OPENMP_4_0 1
#else
#define uX_SUPPORTS_OPENMP_4_0 0
#endif

// disable integer 64bits precision support in all arch's platforms
#if defined(uX_NO_INT64) || !defined(uX_ARCH_SUPPORTS_INT64)
#undef uX_ARCH_SUPPORTS_INT64
#		define uX_NO_ARCH_SUPPORTS_INT64 1
# endif

// disable double precision support in all arch's platforms
#if defined(uX_NO_DOUBLE) || !defined(uX_ARCH_SUPPORTS_DOUBLE)
#undef uX_ARCH_SUPPORTS_DOUBLE
#		define uX_NO_ARCH_SUPPORTS_DOUBLE 1
# endif

// enable fast precision on all platforms, this will enable concurrency::fast_math also if AMP suppport is enabled for the platform
# if defined(_M_FP_FAST)
#		define uX_USE_FAST 1
# endif

// enable precise precision on all platforms, this will enable concurrency::precise_math also if AMP suppport is enabled for the platform
# if defined(_M_FP_PRECISE)
#		define uX_USE_PRECISE 1
#elif defined(__GNUC__) || defined(__clang__) || defined(__INTEL_COMPILER)
#		define uX_USE_PRECISE 1
# endif

// enable strict precision on all platforms, this will enable concurrency::precise_math also if AMP suppport is enabled for the platform
# if defined(_M_FP_STRICT)
#		define uX_USE_STRICT 1
# endif

#if !defined(uX_USE_FAST) && !defined(uX_USE_STRICT) && !defined(uX_USE_PRECISE)
#		define uX_USE_PRECISE 1
#endif

// check if the preprocessor have this enabled at same time
# if (defined(uX_USE_FAST) && (uX_USE_FAST >= 1)) && ((defined(uX_USE_PRECISE) && (uX_USE_PRECISE >= 1)) || (defined(uX_USE_STRICT) && (uX_USE_STRICT >= 1))) || \
		(defined(uX_USE_PRECISE) && (uX_USE_PRECISE >= 1)) && ((defined(uX_USE_FAST) && (uX_USE_FAST >= 1)) || (defined(uX_USE_STRICT) && (uX_USE_STRICT >= 1))) || \
		(defined(uX_USE_STRICT) && (uX_USE_STRICT >= 1)) && ((defined(uX_USE_FAST) && (uX_USE_FAST >= 1)) || (defined(uX_USE_PRECISE) && (uX_USE_PRECISE >= 1)))
#error ERROR: Cant use tow distincts precison types at same time
#error ERROR: Check your precision model type in your VS-IDE or your preprocessor compiler type
# endif

# if !defined(uX_USE_FAST) && !defined(uX_USE_PRECISE) && !defined(uX_USE_STRICT)
#error ERROR: Please set your precision selection
# endif

#if defined(uX_INTRINSICS_SUPPORT) && !defined(uX_NO_INTRINSICS)
#		define uX_USE_INTRINSICS 1
# endif

#if defined(uX_AMP_SUPPORT) && !defined(uX_NO_AMP)
#		define uX_USE_AMP 1
#endif

#if defined(uX_CUDA_SUPPORT) && !defined(uX_NO_CUDA)
#		define uX_USE_CUDA 1
# endif

#if defined(uX_X64_CPU) && (defined(uX_SSE) || defined(uX_MMX) || defined(uX_3DNOW)) && (defined(uX_INTRINSET) && uX_INTRINSET < 20)
#error ERROR: High arch platform type for MMX, 3DNOW and SSE1, please use SSE2 or greater
#elif (defined(uX_X86_CPU) && (defined(uX_MMX) || defined(uX_3DNOW))) && defined(uX_USE_PRECISE) && defined(uX_USE_STRICT)
#error ERROR: x86 MMX/3DNOW platform cannot support double and strict/precise precision
#elif (defined(uX_X86_CPU) && (defined(uX_MMX) || defined(uX_3DNOW))) && !defined(uX_USE_PRECISE) && !defined(uX_USE_STRICT)
// disable double precision and enables fast precision in x86 (MMX/3DNOW)
#		define uX_FAST_SUPPORT 1
#		define uX_FAST_PRECISION 1
#		define uX_USE_FAST_PRECISION 1
#		define uX_FLOAT_SUPPORT 1
#		define uX_SINGLE_PRECISION 1
#		define uX_USE_F32 1
#		define uX_REAL_USE_F32 1
#		define uX_USE_SINGLE_PRECISION 1
# ifdef uX_USE_INTRINSICS
#		define uX_INTRINSICS_USE_FAST_PRECISION 1
#		define uX_INTRINSICS_USE_SINGLE_PRECISION 1
# endif
#		define uX_NO_DOUBLE_SUPPORT 1
#		define uX_NO_DOUBLE_PRECISION 1
#		define uX_NO_PRECISE_SUPPORT 1
#		define uX_NO_PRECISE_PRECISION 1
#		define uX_NO_STRICT_SUPPORT 1
#		define uX_NO_STRICT_PRECISION 1
#		define uX_NO_AMP_SUPPORT 1
#		define uX_NO_AMP 1
#		undef uX_AMP_SUPPORT
#		undef uX_USE_AMP
#		define uX_NO_CUDA_SUPPORT 1
#		define uX_NO_CUDA 1
#		undef uX_CUDA_SUPPORT
#		undef uX_USE_CUDA
#elif defined(uX_ARCH_SUPPORTS_DOUBLE) && (defined(uX_USE_PRECISE) || defined(uX_USE_STRICT))
#		define uX_DOUBLE_SUPPORT 1		/* with double support you have float support enabled also, just the REALs change to double precision*/
#		define uX_DOUBLE_PRECISION 1
# ifdef uX_USE_PRECISE
#		define uX_PRECISE_SUPPORT 1
#		define uX_PRECISE_PRECISION 1
#		define uX_USE_PRECISE_PRECISION 1
# ifdef uX_USE_INTRINSICS
#		define uX_INTRINSICS_USE_PRECISE_PRECISION 1
# endif
# ifdef uX_USE_AMP
#		define uX_AMP_USE_PRECISE_PRECISION 1
# endif
# ifdef uX_USE_CUDA
#		define uX_CUDA_USE_PRECISE_PRECISION 1
# endif
#		define uX_NO_STRICT_SUPPORT 1
#		define uX_NO_STRICT_PRECISION 1 /* lets secure STRICT macros aren't enable by mistake */
# endif
# ifdef uX_USE_STRICT
#		define uX_STRICT_SUPPORT 1
#		define uX_STRICT_PRECISION 1
#		define uX_USE_STRICT_PRECISION 1
# ifdef uX_USE_INTRINSICS
#		define uX_INTRINSICS_USE_STRICT_PRECISION 1
# endif
# ifdef uX_USE_AMP
#		define uX_AMP_USE_STRICT_PRECISION 1
# endif
# ifdef uX_USE_CUDA
#		define uX_CUDA_USE_STRICT_PRECISION 1
# endif
#		define uX_NO_PRECISE_SUPPORT 1
#		define uX_NO_PRECISE_PRECISION 1	/* lets secure precise macros aren't enable by mistake */
# endif
#		define uX_USE_F64 1
#		define uX_REAL_USE_F64 1
#		define uX_USE_DOUBLE_PRECISION 1
# ifdef uX_USE_INTRINSICS
#		define uX_INTRINSICS_USE_DOUBLE_PRECISION 1
# endif
# ifdef uX_USE_AMP
#		define uX_AMP_USE_DOUBLE_PRECISION 1
# endif
# ifdef uX_USE_CUDA
#		define uX_CUDA_USE_DOUBLE_PRECISION 1
# endif
#		define uX_NO_FAST_SUPPORT 1
#		define uX_NO_FAST_PRECISION 1
//#		define uX_NO_FLOAT_SUPPORT 1		/* float are hallways available */
//#		define uX_NO_SINGLE_PRECISION 1		/* float are hallways available */
#elif defined(uX_NO_ARCH_SUPPORTS_DOUBLE) && (defined(uX_USE_PRECISE) || defined(uX_USE_STRICT))
#		define uX_FLOAT_SUPPORT 1
#		define uX_SINGLE_PRECISION 1
# ifdef uX_USE_PRECISE
#		define uX_PRECISE_SUPPORT 1
#		define uX_PRECISE_PRECISION 1
#		define uX_USE_PRECISE_PRECISION 1
# ifdef uX_USE_INTRINSICS
#		define uX_INTRINSICS_USE_PRECISE_PRECISION 1
# endif
# ifdef uX_USE_AMP
#		define uX_AMP_USE_PRECISE_PRECISION 1
# endif
# ifdef uX_USE_CUDA
#		define uX_CUDA_USE_PRECISE_PRECISION 1
# endif
#		define uX_NO_STRICT_SUPPORT 1
#		define uX_NO_STRICT_PRECISION 1
# endif
# ifdef uX_USE_STRICT
#		define uX_STRICT_SUPPORT 1
#		define uX_STRICT_PRECISION 1
#		define uX_USE_STRICT_PRECISION 1
# ifdef uX_USE_INTRINSICS
#		define uX_INTRINSICS_USE_STRICT_PRECISION 1
# endif
# ifdef uX_USE_AMP
#		define uX_AMP_USE_STRICT_PRECISION 1
# endif
# ifdef uX_USE_CUDA
#		define uX_CUDA_USE_STRICT_PRECISION 1
# endif
#		define uX_NO_PRECISE_SUPPORT 1
#		define uX_NO_PRECISE_PRECISION 1
# endif
#		define uX_USE_F32 1
#		define uX_REAL_USE_F32 1
#		define uX_USE_SINGLE_PRECISION 1
# ifdef uX_USE_INTRINSICS
#		define uX_INTRINSICS_USE_SINGLE_PRECISION 1
# endif
# ifdef uX_USE_AMP
#		define uX_AMP_USE_SINGLE_PRECISION 1
# endif
# ifdef uX_USE_CUDA
#		define uX_CUDA_USE_SINGLE_PRECISION 1
# endif
#		define uX_NO_FAST_SUPPORT 1
#		define uX_NO_FAST_PRECISION 1		/* lets secure fast macros aren't enable by mistake */
#		define uX_NO_DOUBLE_SUPPORT 1
#		define uX_NO_DOUBLE_PRECISION 1		/* lets secure double macros aren't enable by mistake */
#elif defined(uX_USE_FAST)
#		define uX_FAST_SUPPORT 1
#		define uX_FAST_PRECISION 1
#		define uX_USE_FAST_PRECISION 1
#		define uX_FLOAT_SUPPORT 1
#		define uX_SINGLE_PRECISION 1
#		define uX_USE_F32 1
#		define uX_REAL_USE_F32 1
#		define uX_USE_SINGLE_PRECISION 1
# ifdef uX_USE_INTRINSICS
#		define uX_INTRINSICS_USE_FAST_PRECISION 1
#		define uX_INTRINSICS_USE_SINGLE_PRECISION 1
# endif
# ifdef uX_USE_AMP
#		define uX_AMP_USE_FAST_PRECISION 1
#		define uX_AMP_USE_SINGLE_PRECISION 1
# endif
# ifdef uX_USE_CUDA
#		define uX_CUDA_USE_FAST_PRECISION 1
#		define uX_CUDA_USE_SINGLE_PRECISION 1
# endif
#		define uX_NO_DOUBLE_SUPPORT 1
#		define uX_NO_DOUBLE_PRECISION 1		/* lets secure double macros aren't enable by mistake */
#		define uX_NO_PRECISE_SUPPORT 1
#		define uX_NO_PRECISE_PRECISION 1	/* lets secure precise macros aren't enable by mistake */
#		define uX_NO_STRICT_SUPPORT 1
#		define uX_NO_STRICT_PRECISION 1 /* lets secure STRICT macros aren't enable by mistake */
#elif defined(uX_ARCH_SUPPORTS_DOUBLE) && defined(uX_USE_FAST)
#error ERROR: fast precision support cannot be used with double precision floating-point for conformance with ISO C and C++ standard
#else
#error ERROR: Unknown precison support
#endif

#if defined(uX_ARCH_SUPPORTS_INT64) && !defined(uX_NO_ARCH_SUPPORTS_INT64)
#		define uX_INT64_SUPPORT 1
#		define uX_USE_INT64 1
#else
#		define uX_NO_INT64_SUPPORT 1
#endif

#if !defined(uX_GPU_VERS_SET)
#	if defined(uX_CUDA_GPU) && (__CUDA_ARCH__ >= 200)
#		define uX_GPU_VERS_SET 200
#	elif defined(uX_CUDA_GPU) && (__CUDA_ARCH__ >= 130)
#		define uX_GPU_VERS_SET 130
#	endif
#endif

#if ((defined(uX_GPU_VERS_SET) && (uX_GPU_VERS_SET >= 130)) || (defined(uX_INTRINSET) && (uX_INTRINSET >= 20))) && defined(uX_USE_DOUBLE_PRECISION)
#		define uX_SUPPORTS_DOUBLE_MASKS_AS_I64 1
#endif

#if defined(uX_SUPPORTS_DOUBLE_MASKS_AS_I64) && defined(uX_USE_INT64)
#		define uX_DOUBLE_MASKS_AS_I64 1
#endif

// SSE Vector registers types are enable by default and disabled if building for AVX
// Intrinsics vector are mapped to __m128* for x86||x64 platforms, __n128* for ARM platforms

// Enable AVX vector registers size type in all vector registers types
// AVX registers size is enabled by default in Intrinsics vector and mapped to __m256* functions	if building for AVX
/*
#if defined(uX_INTRINSICS_SUPPORT)
#error ERROR: is necessary to clone this class to different alignments
#if defined(uX_AVX256_INTRINSICS)
#		define uX_AVX_VECTOR_REGISTERS 1
#		define uX_REALVEC_AVX_REGISTERS 1
#		define uX_STDVEC_AVX_REGISTERS 1
#elif defined(uX_SSE_INTRINSICS)
#		define uX_SSE_VECTOR_REGISTERS 1
#		define uX_REALVEC_SSE_REGISTERS 1
#		define uX_STDVEC_SSE_REGISTERS 1
#elif defined(uX_ARM_NEON_INTRINSICS)
#		define uX_ARM_NEON_VECTOR_REGISTERS 1
#		define uX_REALVEC_ARM_NEON_REGISTERS 1
#		define uX_STDVEC_ARM_NEON_REGISTERS 1
#endif
#	if defined(uX_AVX256_INTRINSICS) && defined(uX_AVX_VECTOR_REGISTERS)
#		define uX_AVX_USE_VECTOR_REGISTERS 1
#	elif defined(uX_SSE_INTRINSICS) && defined(uX_SSE_VECTOR_REGISTERS)
#		define uX_SSE_USE_VECTOR_REGISTERS 1
#	elif defined(uX_ARM_NEON_INTRINSICS) && defined(uX_ARM_NEON_VECTOR_REGISTERS)
#		define uX_ARM_NEON_USE_VECTOR_REGISTERS 1
#endif

#	if defined(uX_AVX256_INTRINSICS) && defined(uX_REALVEC_AVX_REGISTERS)
#		define uX_REALVEC_USE_AVX_REGISTERS 1
#	elif defined(uX_SSE_INTRINSICS) && defined(uX_REALVEC_SSE_REGISTERS)
#		define uX_REALVEC_USE_SSE_REGISTERS 1
# elif defined(uX_ARM_NEON_INTRINSICS) && defined(uX_REALVEC_ARM_NEON_REGISTERS)
#		define uX_REALVEC_USE_ARM_NEON_REGISTERS 1
#	endif

# if defined(uX_AVX256_INTRINSICS) && defined(uX_STDVEC_AVX_REGISTERS)
#		define uX_STDVEC_USE_AVX_REGISTERS 1
# elif defined(uX_SSE_INTRINSICS) && defined(uX_STDVEC_SSE_REGISTERS)
#		define uX_STDVEC_USE_SSE_REGISTERS 1
# elif defined(uX_ARM_NEON_INTRINSICS) && defined(uX_STDVEC_ARM_NEON_REGISTERS)
#		define uX_STDVEC_USE_ARM_NEON_REGISTERS 1
# endif
#endif*/ // uX_INTRINSICS_SUPPORT

// check that exactly one of NDEBUG and _DEBUG is defined
#if ((defined(NDEBUG) && defined(_DEBUG)) || ((defined(NDEBUG) && defined(DEBUG))))
# error ERROR: Exactly one of NDEBUG and _DEBUG needs to be defined by preprocessor
#endif

// make sure uX_DEBUG is defined in all _DEBUG configurations as well
#if !defined(NDEBUG) && (defined(_DEBUG) || defined(DEBUG))
#		define uX_DEBUG 1
#endif

// make sure uX_DEBUG is defined in all _DEBUG configurations as well
#if (defined(NDEBUG) || defined(_NDEBUG)) && !defined(_DEBUG) && !defined(DEBUG)
#		define uX_NDEBUG 1
#endif

/**
Assert macro
*/
#ifndef uX_ENABLE_ASSERTS
# if defined(uX_DEBUG) && !defined(uX_CUDACC)
#	define uX_ENABLE_ASSERTS 1
# else
#	define uX_ENABLE_ASSERTS 0
# endif
#endif

// enable output debug in intrinsics vectors
#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_DEBUG)
#define uX_INTRIN_DEBUG 1
#endif

#ifdef uX_DEBUG
#		define uX_BUILD_PREFIX	"d"
#		define uX_BUILD_TYPE	"ebug"
#else
#		define uX_BUILD_PREFIX	""
#		define uX_BUILD_TYPE	""
#endif

#if defined(uX_ARM) && !defined(uX_PHONE_APP)
#	if defined(uX_ARM_NEON)
#		define uX_PLATFORM_ARM_NEON 1
#	else
#		define uX_PLATFORM_ARM 1
#	endif
#endif

#ifdef uX_SPU
#		define uX_IS_SPU 1
#else
#		define uX_IS_SPU 0
#endif

#ifdef uX_PPU
#		define uX_IS_PPU 1
#else
#		define uX_IS_PPU 0
#endif

#ifdef uX_X64
#		define uX_IS_X64 1
#else
#		define uX_IS_X64 0
#endif

#ifdef uX_X86
#		define uX_IS_X86 1
#else
#		define uX_IS_X86 0
#endif

#ifdef uX_WINDOWS
#		define uX_IS_WINDOWS 1
#else
#		define uX_IS_WINDOWS 0
#endif

#ifdef uX_LINUX
#		define uX_IS_LINUX 1
#else
#		define uX_IS_LINUX 0
#endif

#ifdef uX_ANDROID
#		define uX_IS_ANDROID 1
#else
#		define uX_IS_ANDROID 0
#endif

#ifdef uX_ARM
#		define uX_IS_ARM 1
#else
#		define uX_IS_ARM 0
#endif

#ifdef uX_IOS
#		define uX_IS_IOS 1
#else
#		define uX_IS_IOS 0
#endif

#ifdef uX_MACOSX
#		define uX_IS_MAC_OSX 1
#else
#		define uX_IS_MAC_OSX 0
#endif

#ifdef uX_XBOXONE
#		define uX_IS_XBOXONE 1
#else
#		define uX_IS_XBOXONE 0
#endif

/*
#if defined(uX_X86) || defined(uX_X64)
#		define uX_IS_INTEL 1
#else
#		define uX_IS_INTEL 0
#endif*/

#ifdef uX_XBOX360
#		define uX_IS_XBOX360 1
#else
#		define uX_IS_XBOX360 0
#endif

#ifdef uX_PS3
#		define uX_IS_PS3 1
#else
#		define uX_IS_PS3 0
#endif

#ifdef uX_PS4
#		define uX_IS_PS4 1
#else
#		define uX_IS_PS4 0
#endif

#ifdef uX_PSVITA
#		define uX_IS_PSVITA 1
#else
#		define uX_IS_PSVITA 0
#endif

#ifdef uX_WIIU
#		define uX_IS_WIIU 1
#else
#		define uX_IS_WIIU 0
#endif

// GPU Support
#if defined(uX_AMP_GPU) || defined(uX_CUDA_GPU) || defined(uX_INTEL_GFX_GPU) || defined(uX_OPENCL_GPU)
#		define uX_GPU_SUPPORT 1
#else
#		define uX_NO_GPU_SUPPORT 1
#endif

// Compiler for GPU Support
#if defined(uX_AMPCC) || defined(uX_CUDACC) || defined(uX_INTELCC_GFX)
#		define uX_CC_GPU_SUPPORT 1
#else
#		define uX_NO_CC_GPU_SUPPORT 1
#endif

// Compiler pre defines for Cuda/Intel GPU functions Support
#if (defined(uX_CUDACC) || defined(uX_INTELCC_GFX)) && !defined(uX_AMPCC)
#		define uX_CC_PDEF_GPU_SUPPORT 1
#else
#		define uX_NO_CC_PDEF_GPU_SUPPORT 1
#endif

#endif // uX_PREPROCESSOR_H
