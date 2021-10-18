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

#ifndef uX_SIMD_DETECT_INL
#define uX_SIMD_DETECT_INL 1

#ifndef uX_PREPROCESSOR_H
#include "../../preprocessor.h"
#endif  /* uX_PREPROCESSOR_H */

#if defined(uX_X86_OR_X64_CPU)

#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

#if defined(uX_CLANG_COMPILER) || defined(uX_GCC_COMPILER)
#include <cpuid.h>
#elif defined(uX_MSVC_COMPILER)
#include <immintrin.h>
#include <intrin.h>  // For __cpuidex()
#endif

#ifndef uX_TYPES_H
#include "../../types.h"
#endif  /* uX_TYPES_H */

// The following includes are necessary to provide SSE detections on pre-AVX
// microarchitectures.
#if defined(uX_WINDOWS_OS)
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
#pragma pack(uX_SIZE_T_SIZE)
#include <windows.h>  // IsProcessorFeaturePresent
#pragma pack (pop)
# pragma warning( pop )
//#include "Runtime/Core/Public/Windows/HideWindowsPlatformTypes.h"
#endif // _WINDOWS_
#elif defined(uX_LINUX_OS) || defined(uX_UNIX_OS) || defined(uX_ANDROID_OS) || defined(uX_BSD_OS)
#include "internal/filesystem.h"         // Needed to parse /proc/cpuinfo
#include "internal/stack_line_reader.h"  // Needed to parse /proc/cpuinfo
#include "internal/string_view.h"        // Needed to parse /proc/cpuinfo
#elif defined(uX_DARWIN_OS)
#if !defined(HAVE_SYSCTLBYNAME)
#error "Darwin needs support for sysctlbyname"
#endif
#include <sys/sysctl.h>
#else
#error "Unsupported OS"
#endif  // uX_OS

namespace_uX
namespace_cpu
namespace_x86
uX_EXTERNCC_BEGIN
uX_PACK_PUSH_SIZE_T

// Generation of feature's getters/setters functions and kGetters, kSetters,
// kCpuInfoFlags global tables.
/*
#define DEFINE_TABLE_FEATURES														\
	FEATURE(_FPU, fpu, "fpu", 0, 0)												\
	FEATURE(_TSC, tsc, "tsc", 0, 0)                                           \
	FEATURE(_CX8, cx8, "cx8", 0, 0)                                           \
	FEATURE(_CLFSH, clfsh, "clfsh", 0, 0)                                     \
	FEATURE(_MMX, mmx, "mmx", 0, 0)                                           \
	FEATURE(_AES, aes, "aes", 0, 0)                                           \
	FEATURE(_ERMS, erms, "erms", 0, 0)                                        \
	FEATURE(_F16C, f16c, "f16c", 0, 0)                                        \
	FEATURE(_FMA4, FMA4, "FMA4", 0, 0)                                        \
	FEATURE(_FMA, FMA, "FMA", 0, 0)                                        \
	FEATURE(_VAES, vaes, "vaes", 0, 0)                                        \
	FEATURE(_VPCLMULQDQ, vpclmulqdq, "vpclmulqdq", 0, 0)                      \
	FEATURE(_BMI1, bmi1, "bmi1", 0, 0)                                        \
	FEATURE(_HLE, hle, "hle", 0, 0)                                           \
	FEATURE(_BMI2, bmi2, "bmi2", 0, 0)                                        \
	FEATURE(_RTM, rtm, "rtm", 0, 0)                                           \
	FEATURE(_RDSEED, rdseed, "rdseed", 0, 0)                                  \
	FEATURE(_CLFLUSHOPT, clflushopt, "clflushopt", 0, 0)                      \
	FEATURE(_CLWB, clwb, "clwb", 0, 0)                                        \
	FEATURE(_SSE, sse, "sse", 0, 0)                                           \
	FEATURE(_SSE2, sse2, "sse2", 0, 0)                                        \
	FEATURE(_SSE3, sse3, "sse3", 0, 0)                                        \
	FEATURE(_SSSE3, ssse3, "ssse3", 0, 0)                                     \
	FEATURE(_SSE4_1, sse4_1, "sse4_1", 0, 0)                                  \
	FEATURE(_SSE4_2, sse4_2, "sse4_2", 0, 0)                                  \
	FEATURE(_SSE4A, sse4a, "sse4a", 0, 0)                                     \
	FEATURE(_AVX, AVX, "AVX", 0, 0)                                           \
	FEATURE(_AVX2, AVX2, "AVX2", 0, 0)                                        \
	FEATURE(_AVX512F, AVX512f, "AVX512f", 0, 0)                               \
	FEATURE(_AVX512CD, AVX512cd, "AVX512cd", 0, 0)                            \
	FEATURE(_AVX512ER, AVX512er, "AVX512er", 0, 0)                            \
	FEATURE(_AVX512PF, AVX512pf, "AVX512pf", 0, 0)                            \
	FEATURE(_AVX512BW, AVX512bw, "AVX512bw", 0, 0)                            \
	FEATURE(_AVX512DQ, AVX512dq, "AVX512dq", 0, 0)                            \
	FEATURE(_AVX512VL, AVX512vl, "AVX512vl", 0, 0)                            \
	FEATURE(_AVX512IFMA, AVX512iFMA, "AVX512iFMA", 0, 0)                      \
	FEATURE(_AVX512VBMI, AVX512vbmi, "AVX512vbmi", 0, 0)                      \
	FEATURE(_AVX512VBMI2, AVX512vbmi2, "AVX512vbmi2", 0, 0)                   \
	FEATURE(_AVX512VNNI, AVX512vnni, "AVX512vnni", 0, 0)                      \
	FEATURE(_AVX512BITALG, AVX512bitalg, "AVX512bitalg", 0, 0)                \
	FEATURE(_AVX512VPOPCNTDQ, AVX512vpopcntdq, "AVX512vpopcntdq", 0, 0)       \
	FEATURE(_AVX512_4VNNIW, AVX512_4vnniw, "AVX512_4vnniw", 0, 0)             \
	FEATURE(_AVX512_4VBMI2, AVX512_4vbmi2, "AVX512_4vbmi2", 0, 0)             \
	FEATURE(_AVX512_second_FMA, AVX512_second_FMA, "AVX512_second_FMA", 0, 0) \
	FEATURE(_AVX512_4FMAPS, AVX512_4FMAps, "AVX512_4FMAps", 0, 0)						\
	FEATURE(_AVX512_BF16, AVX512_bf16, "AVX512_bf16", 0, 0)								\
	FEATURE(_AVX512_VP2INTERSECT, AVX512_vp2intersect, "AVX512_vp2intersect", 0, 0)		\
	FEATURE(_AMX_BF16, amx_bf16, "amx_bf16", 0, 0)                            \
	FEATURE(_AMX_TILE, amx_tile, "amx_tile", 0, 0)                            \
	FEATURE(_AMX_INT8, amx_int8, "amx_int8", 0, 0)                            \
	FEATURE(_PCLMULQDQ, pclmulqdq, "pclmulqdq", 0, 0)                         \
	FEATURE(_SMX, smx, "smx", 0, 0)                                           \
	FEATURE(_SGX, sgx, "sgx", 0, 0)                                           \
	FEATURE(_CX16, cx16, "cx16", 0, 0)                                        \
	FEATURE(_SHA, sha, "sha", 0, 0)                                           \
	FEATURE(_POPCNT, popcnt, "popcnt", 0, 0)                                  \
	FEATURE(_MOVBE, movbe, "movbe", 0, 0)                                     \
	FEATURE(_RDRND, rdrnd, "rdrnd", 0, 0)                                     \
	FEATURE(_DCA, dca, "dca", 0, 0)                                           \
	FEATURE(_SS, ss, "ss", 0, 0)                                              \
	FEATURE(_ADX, adx, "adx", 0, 0)
#define DEFINE_TABLE_FEATURE_TYPE Features
#define DEFINE_TABLE_DONT_GENERATE_HWCAPS

#define FEATURE(ENUM, NAME, CPUINFO_FLAG, HWCAP, HWCAP2) [ENUM] = CPUINFO_FLAG,
	static char const* kCpuInfoFlags[] = {DEFINE_TABLE_FEATURES};
#undef FEATURE

#ifndef DEFINE_TABLE_DONT_GENERATE_HWCAPS
	#define FEATURE(ENUM, NAME, CPUINFO_FLAG, HWCAP, HWCAP2) \
		[ENUM] = (HardwareCapabilities){HWCAP, HWCAP2},
	static const HardwareCapabilities kHardwareCapabilities[] = {
		DEFINE_TABLE_FEATURES};
	#undef FEATURE
#endif  // DEFINE_TABLE_DONT_GENERATE_HWCAPS

#define FEATURE(ENUM, NAME, CPUINFO_FLAG, HWCAP, HWCAP2)						\
	static void set_##ENUM(DEFINE_TABLE_FEATURE_TYPE* features, bool value) {	\
		features->NAME = value;													\
	}																			\
	static int get_##ENUM(const DEFINE_TABLE_FEATURE_TYPE* features) {			\
		return features->NAME;													\
	}
	DEFINE_TABLE_FEATURES
#undef FEATURE

#define FEATURE(ENUM, NAME, CPUINFO_FLAG, HWCAP, HWCAP2) [ENUM] = set_##ENUM,
	static void (* const kSetters[])(DEFINE_TABLE_FEATURE_TYPE*, bool) = {DEFINE_TABLE_FEATURES};
#undef FEATURE

#define FEATURE(ENUM, NAME, CPUINFO_FLAG, HWCAP, HWCAP2) [ENUM] = get_##ENUM,
	static int (* const kGetters[])(const DEFINE_TABLE_FEATURE_TYPE*) = {DEFINE_TABLE_FEATURES};
#undef FEATURE*/


	/* Initiate the CPUFeatures
	 * Parameter int initiate the output info: 0 basic info, 1 extra info, 2 additional extra info
	 */
	/*CPUFeatures(int infolevel)
	{
		if(!_uX_CPUFeatures_is_Inited())
		{
			_uX_CPUFeatures_Init(infolevel);
		}
	}
	/ * Destroy the CPUFeatures * /
	~CPUFeatures(void)
	{
		if(_uX_CPUFeatures_is_Inited())
		{
			_uX_CPUFeatures_Fin();
		}
	}*/
	
	inline bool uX_abi CPUFeatures::IsBitSet(uint32_t const reg, uint32_t const bit) uX_noexcept
	{
		return (reg >> bit) & 0x1;
	}

	inline bool uX_abi CPUFeatures::IsBitMaskSet(uint32_t const reg, uint32_t const bitmask) uX_noexcept
	{
		return !!(reg & bitmask);
	}

	inline cpuid_regs uX_abi CPUFeatures::cpuid(uint32_t const eax) uX_noexcept
	{
		cpuid_regs regs;
#if defined(uX_CLANG_COMPILER) || defined(uX_GCC_COMPILER)
		__cpuid(eax, regs.eax, regs.ebx, regs.ecx, regs.edx);
#else
		__cpuid(regs.data, eax);
#endif
		return regs;
	}

	inline cpuid_regs uX_abi CPUFeatures::cpuidex(uint32_t const eax, uint32_t const ecx) uX_noexcept
	{
		cpuid_regs regs;
#if defined(uX_CLANG_COMPILER) || defined(uX_GCC_COMPILER)
		__cpuid_count(eax, ecx, regs.eax, regs.ebx, regs.ecx, regs.edx);
#else
		__cpuidex(regs.data, eax, ecx);
#endif
		return regs;
	}

	inline uint64_t uX_abi CPUFeatures::xgetbv(uint32_t const ext_ctrl_reg) uX_noexcept
	{
#if defined(uX_MSVC_COMPILER)
		return _xgetbv(ext_ctrl_reg);
#else
		uint32_t lo, hi;
		__asm__(".byte 0x0F, 0x01, 0xD0" : "=a" (lo), "=d" (hi) : "c" (ext_ctrl_reg));
		return ((uint64_t)hi << 32) | (uint64_t)lo;
#endif
	}

	inline Leaf uX_abi CPUFeatures::GetCpuidLeaf(uint32_t const leaf_id, int const ecx) uX_noexcept
	{
		Leaf leaf;
#if defined(uX_CLANG_COMPILER) || defined(uX_GCC_COMPILER)
		__cpuid_count(leaf_id, ecx, leaf.eax, leaf.ebx, leaf.ecx, leaf.edx);
#else
		__cpuidex(leaf.data, leaf_id, ecx);
#endif
		return leaf;
	}

	inline uint32_t uX_abi CPUFeatures::GetXCR0Eax(void) uX_noexcept
	{
#if defined(uX_CLANG_COMPILER) || defined(uX_GCC_COMPILER)
		uint32_t eax, edx;
		/* named form of xgetbv not supported on OSX, so must use byte form, see:
			https://github.com/asmjit/asmjit/issues/78
		 */
		__asm(".byte 0x0F, 0x01, 0xd0" : "=a"(eax), "=d"(edx) : "c"(0));
		return eax;
#else
		return static_cast<uint32_t>(_xgetbv(0));
#endif
	}

	inline Leaf const uX_abi CPUFeatures::kEmptyLeaf(void) uX_noexcept
	{
		static Leaf const kEmptyX86Leaf;
		return kEmptyX86Leaf;
	}

	inline Leaf uX_abi CPUFeatures::CpuId(uint32_t const leaf_id) uX_noexcept
	{
		return GetCpuidLeaf(leaf_id, 0);
	}

	inline Leaf uX_abi CPUFeatures::SafeCpuIdEx(uint32_t const max_cpuid_leaf, uint32_t const leaf_id, int const ecx) uX_noexcept
	{
		if(leaf_id <= max_cpuid_leaf)
		{
			return GetCpuidLeaf(leaf_id, ecx);
		}
		else
		{
			return kEmptyLeaf();
		}
	}

	inline Leaf uX_abi CPUFeatures::SafeCpuId(uint32_t const max_cpuid_leaf, uint32_t const leaf_id) uX_noexcept
	{
		return SafeCpuIdEx(max_cpuid_leaf, leaf_id, 0);
	}

	// If CPUID Fn8000_0001_ECX[bit]==0 then CPUID Fn8000_00XX_E[D,C,B,A]X is
	// reserved. https://www.amd.com/system/files/TechDocs/25481.pdf
	inline bool uX_abi CPUFeatures::IsReservedAMD(uint32_t const max_extended, uint32_t const bit) uX_noexcept
	{
		uint32_t const cpuid_ext = SafeCpuId(max_extended, 0x80000001).ecx;
		return !IsBitSet(cpuid_ext, bit);
	}

	inline bool uX_abi CPUFeatures::HasMask(uint32_t const value, uint32_t const mask) uX_noexcept
	{
		return (value & mask) == mask;
	}

	// Checks that operating system saves and restores xmm registers during context switches.
	inline bool uX_abi CPUFeatures::HasXmmOsXSave(uint32_t const xcr0_eax) uX_noexcept
	{
		return HasMask(xcr0_eax, MASK_XMM);
	}

	// Checks that operating system saves and restores ymm registers during context switches.
	inline bool uX_abi CPUFeatures::HasYmmOsXSave(uint32_t const xcr0_eax) uX_noexcept
	{
		return HasMask(xcr0_eax, MASK_XMM | MASK_YMM);
	}

	// Checks that operating system saves and restores zmm registers during context switches.
	inline bool uX_abi CPUFeatures::HasZmmOsXSave(uint32_t const xcr0_eax) uX_noexcept
	{
		return HasMask(xcr0_eax, MASK_XMM | MASK_YMM | MASK_MASKREG | MASK_ZMM0_15 | MASK_ZMM16_31);
	}

	// Checks that operating system saves and restores AMX/TMUL state during context switches.
	inline bool uX_abi CPUFeatures::HasTmmOsXSave(uint32_t const xcr0_eax) uX_noexcept
	{
		return HasMask(xcr0_eax, MASK_XMM | MASK_YMM | MASK_MASKREG | MASK_ZMM0_15 | MASK_ZMM16_31 | MASK_XTILECFG | MASK_XTILEDATA);
	}

	inline void uX_abi CPUFeatures::SetString(uint32_t const max_cpuid_ext_leaf, uint32_t const leaf_id, char* buffer) uX_noexcept
	{
		Leaf const leaf = SafeCpuId(max_cpuid_ext_leaf, leaf_id);
		// We allow calling memcpy from SetString which is only called when requesting
		// X86BrandString.
		memcpy(buffer, &leaf, sizeof(Leaf));
	}

	inline void uX_abi CPUFeatures::FillBrandString(char brand_string[49]) uX_noexcept
	{
		Leaf const leaf_ext_0 = CpuId(0x80000000);
		uint32_t const max_cpuid_leaf_ext = leaf_ext_0.eax;
		SetString(max_cpuid_leaf_ext, 0x80000002, brand_string);
		SetString(max_cpuid_leaf_ext, 0x80000003, brand_string + 16);
		SetString(max_cpuid_leaf_ext, 0x80000004, brand_string + 32);
		brand_string[48] = '\0';
	}

	inline bool uX_abi CPUFeatures::HasSecondFMA(uint32_t const model) uX_noexcept
	{
		// Skylake server
		if(model == 0x55)
		{
			char proc_name[49] = {0};
			FillBrandString(proc_name);
			// detect Xeon
			if(proc_name[9] == 'X')
			{
				// detect Silver or Bronze
				if(proc_name[17] == 'S' || proc_name[17] == 'B') return false;
				// detect Gold 5_20 and below, except for Gold 53__
				if(proc_name[17] == 'G' && proc_name[22] == '5')
					return ((proc_name[23] == '3') ||
							(proc_name[24] == '2' && proc_name[25] == '2'));
				  // detect Xeon W 210x
				if(proc_name[17] == 'W' && proc_name[21] == '0') return false;
				// detect Xeon D 2xxx
				if(proc_name[17] == 'D' && proc_name[19] == '2' && proc_name[20] == '1')
					return false;
			}
			return true;
		}
		// Cannon Lake client
		if(model == 0x66) return false;
		// Ice Lake client
		if(model == 0x7d || model == 0x7e) return false;
		// This is the right default...
		return true;
	}

	inline void uX_abi CPUFeatures::SetVendor(Leaf const leaf, char* const vendor) uX_noexcept
	{
		*reinterpret_cast<uint32_t*>(vendor) = leaf.ebx;
		*reinterpret_cast<uint32_t*>(vendor + 4) = leaf.edx;
		*reinterpret_cast<uint32_t*>(vendor + 8) = leaf.ecx;
		vendor[12] = '\0';
	}

	inline intbool_t uX_abi CPUFeatures::IsVendor(Leaf const leaf, char const* const name) uX_noexcept
	{
		uint32_t const ebx = *reinterpret_cast<uint32_t const*>(name);
		uint32_t const edx = *reinterpret_cast<uint32_t const*>(name + 4);
		uint32_t const ecx = *reinterpret_cast<uint32_t const*>(name + 8);
		return leaf.ebx == ebx && leaf.ecx == ecx && leaf.edx == edx;
	}

	inline int uX_abi CPUFeatures::IsVendorByInfo(Info const* info, char const* const name) uX_noexcept
	{
		return memcmp(info->vendor, name, sizeof(info->vendor)) == 0;
	}

	inline CacheLevelInfo const uX_abi CPUFeatures::kEmptyCacheLevelInfo(void) uX_noexcept
	{
		static CacheLevelInfo const kEmptyX86CacheLevelInfo;
		return kEmptyX86CacheLevelInfo;
	}

	inline CacheLevelInfo uX_abi CPUFeatures::GetCacheLevelInfo(uint32_t const reg) uX_noexcept
	{
		int const UNDEF = -1;
		int const KiB = 1024;
		int const MiB = 1024 * KiB;
		switch(reg)
		{
			case 0x01:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 32,
							.partitioning = 0
						};
			case 0x02:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * MiB,
							.ways = 0xFF,
							.line_size = UNDEF,
							.tlb_entries = 2,
							.partitioning = 0
						};
			case 0x03:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 64,
							.partitioning = 0
						};
			case 0x04:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * MiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 8,
							.partitioning = 0
						};
			case 0x05:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * MiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 32,
							.partitioning = 0
						};
			case 0x06:
				return	{
							.level = 1,
							.cache_type = _CACHE_INSTRUCTION,
							.cache_size = 8 * KiB,
							.ways = 4,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x08:
				return	{
							.level = 1,
							.cache_type = _CACHE_INSTRUCTION,
							.cache_size = 16 * KiB,
							.ways = 4,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x09:
				return	{
							.level = 1,
							.cache_type = _CACHE_INSTRUCTION,
							.cache_size = 32 * KiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x0A:
				return	{
							.level = 1,
							.cache_type = _CACHE_DATA,
							.cache_size = 8 * KiB,
							.ways = 2,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x0B:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * MiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 4,
							.partitioning = 0
						};
			case 0x0C:
				return	{
							.level = 1,
							.cache_type = _CACHE_DATA,
							.cache_size = 16 * KiB,
							.ways = 4,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x0D:
				return	{
							.level = 1,
							.cache_type = _CACHE_DATA,
							.cache_size = 16 * KiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x0E:
				return	{
							.level = 1,
							.cache_type = _CACHE_DATA,
							.cache_size = 24 * KiB,
							.ways = 6,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x1D:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 128 * KiB,
							.ways = 2,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x21:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 256 * KiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x22:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 512 * KiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 2
						};
			case 0x23:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 1 * MiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 2
						};
			case 0x24:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 1 * MiB,
							.ways = 16,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x25:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 2 * MiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 2
						};
			case 0x29:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 4 * MiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 2
						};
			case 0x2C:
				return	{
							.level = 1,
							.cache_type = _CACHE_DATA,
							.cache_size = 32 * KiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x30:
				return	{
							.level = 1,
							.cache_type = _CACHE_INSTRUCTION,
							.cache_size = 32 * KiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x40:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_DATA,
							.cache_size = UNDEF,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x41:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 128 * KiB,
							.ways = 4,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x42:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 256 * KiB,
							.ways = 4,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x43:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 512 * KiB,
							.ways = 4,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x44:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 1 * MiB,
							.ways = 4,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x45:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 2 * MiB,
							.ways = 4,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x46:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 4 * MiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x47:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 8 * MiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x48:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 3 * MiB,
							.ways = 12,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x49:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 4 * MiB,
							.ways = 16,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case (0x49 | (1 << 8)):
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 4 * MiB,
							.ways = 16,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x4A:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 6 * MiB,
							.ways = 12,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x4B:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 8 * MiB,
							.ways = 16,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x4C:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 12 * MiB,
							.ways = 12,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x4D:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 16 * MiB,
							.ways = 16,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x4E:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 6 * MiB,
							.ways = 24,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x4F:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = 32,
							.partitioning = 0
						};
			case 0x50:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = 64,
							.partitioning = 0
						};
			case 0x51:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = 128,
							.partitioning = 0
						};
			case 0x52:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = 256,
							.partitioning = 0
						};
			case 0x55:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 2 * MiB,
							.ways = 0xFF,
							.line_size = UNDEF,
							.tlb_entries = 7,
							.partitioning = 0
						};
			case 0x56:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * MiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 16,
							.partitioning = 0
						};
			case 0x57:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 16,
							.partitioning = 0
						};
			case 0x59:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 0xFF,
							.line_size = UNDEF,
							.tlb_entries = 16,
							.partitioning = 0
						};
			case 0x5A:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 2 * MiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 32,
							.partitioning = 0
						};
			case 0x5B:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = 64,
							.partitioning = 0
						};
			case 0x5C:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = 128,
							.partitioning = 0
						};
			case 0x5D:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = 256,
							.partitioning = 0
						};
			case 0x60:
				return	{
							.level = 1,
							.cache_type = _CACHE_DATA,
							.cache_size = 16 * KiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x61:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 0xFF,
							.line_size = UNDEF,
							.tlb_entries = 48,
							.partitioning = 0
						};
			case 0x63:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 2 * MiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 4,
							.partitioning = 0
						};
			case 0x66:
				return	{
							.level = 1,
							.cache_type = _CACHE_DATA,
							.cache_size = 8 * KiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x67:
				return	{
							.level = 1,
							.cache_type = _CACHE_DATA,
							.cache_size = 16 * KiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x68:
				return	{
							.level = 1,
							.cache_type = _CACHE_DATA,
							.cache_size = 32 * KiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x70:
				return	{
							.level = 1,
							.cache_type = _CACHE_INSTRUCTION,
							.cache_size = 12 * KiB,
							.ways = 8,
							.line_size = UNDEF,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x71:
				return	{
							.level = 1,
							.cache_type = _CACHE_INSTRUCTION,
							.cache_size = 16 * KiB,
							.ways = 8,
							.line_size = UNDEF,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x72:
				return	{
							.level = 1,
							.cache_type = _CACHE_INSTRUCTION,
							.cache_size = 32 * KiB,
							.ways = 8,
							.line_size = UNDEF,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x76:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 2 * MiB,
							.ways = 0xFF,
							.line_size = UNDEF,
							.tlb_entries = 8,
							.partitioning = 0
						};
			case 0x78:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 1 * MiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x79:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 128 * KiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 2
						};
			case 0x7A:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 256 * KiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 2
						};
			case 0x7B:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 512 * KiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 2
						};
			case 0x7C:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 1 * MiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 2
						};
			case 0x7D:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 2 * MiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x7F:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 512 * KiB,
							.ways = 2,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x80:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 512 * KiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x82:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 256 * KiB,
							.ways = 8,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x83:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 512 * KiB,
							.ways = 8,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x84:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 1 * MiB,
							.ways = 8,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x85:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 2 * MiB,
							.ways = 8,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x86:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 512 * KiB,
							.ways = 4,
							.line_size = 32,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0x87:
				return	{
							.level = 2,
							.cache_type = _CACHE_DATA,
							.cache_size = 1 * MiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xA0:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_DTLB,
							.cache_size = 4 * KiB,
							.ways = 0xFF,
							.line_size = UNDEF,
							.tlb_entries = 32,
							.partitioning = 0
						};
			case 0xB0:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 128,
							.partitioning = 0
						};
			case 0xB1:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 2 * MiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 8,
							.partitioning = 0
						};
			case 0xB2:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 64,
							.partitioning = 0
						};
			case 0xB3:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 128,
							.partitioning = 0
						};
			case 0xB4:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 256,
							.partitioning = 0
						};
			case 0xB5:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 8,
							.line_size = UNDEF,
							.tlb_entries = 64,
							.partitioning = 0
						};
			case 0xB6:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 8,
							.line_size = UNDEF,
							.tlb_entries = 128,
							.partitioning = 0
						};
			case 0xBA:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 64,
							.partitioning = 0
						};
			case 0xC0:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_TLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 8,
							.partitioning = 0
						};
			case 0xC1:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_STLB,
							.cache_size = 4 * KiB,
							.ways = 8,
							.line_size = UNDEF,
							.tlb_entries = 1024,
							.partitioning = 0
						};
			case 0xC2:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_DTLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 16,
							.partitioning = 0
						};
			case 0xC3:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_STLB,
							.cache_size = 4 * KiB,
							.ways = 6,
							.line_size = UNDEF,
							.tlb_entries = 1536,
							.partitioning = 0
						};
			case 0xCA:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_STLB,
							.cache_size = 4 * KiB,
							.ways = 4,
							.line_size = UNDEF,
							.tlb_entries = 512,
							.partitioning = 0
						};
			case 0xD0:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 512 * KiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xD1:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 1 * MiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xD2:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 2 * MiB,
							.ways = 4,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xD6:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 1 * MiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xD7:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 2 * MiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xD8:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 4 * MiB,
							.ways = 8,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xDC:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 1 * 1536 * KiB,
							.ways = 12,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xDD:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 3 * MiB,
							.ways = 12,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xDE:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 6 * MiB,
							.ways = 12,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xE2:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 2 * MiB,
							.ways = 16,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xE3:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 4 * MiB,
							.ways = 16,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xE4:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 8 * MiB,
							.ways = 16,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xEA:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 12 * MiB,
							.ways = 24,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xEB:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 18 * MiB,
							.ways = 24,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xEC:
				return	{
							.level = 3,
							.cache_type = _CACHE_DATA,
							.cache_size = 24 * MiB,
							.ways = 24,
							.line_size = 64,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xF0:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_PREFETCH,
							.cache_size = 64 * KiB,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xF1:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_PREFETCH,
							.cache_size = 128 * KiB,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			case 0xFF:
				return	{
							.level = UNDEF,
							.cache_type = _CACHE_NULL,
							.cache_size = UNDEF,
							.ways = UNDEF,
							.line_size = UNDEF,
							.tlb_entries = UNDEF,
							.partitioning = 0
						};
			default:
				return kEmptyCacheLevelInfo();
		}
	}

	inline uint32_t uX_abi CPUFeatures::ExtractBitRange(uint32_t const reg, uint32_t const msb, uint32_t const lsb) uX_noexcept
	{
		uint64_t const bits = msb - lsb + 1ULL;
		uint64_t const mask = (1ULL << bits) - 1ULL;
		uX_ensure(msb >= lsb);
		return (reg >> lsb) & mask;
	}

	inline void uX_abi CPUFeatures::GetByteArrayFromRegister(uint32_t result[4], uint32_t const reg) uX_noexcept
	{
		for(int i = 0; i < 4; ++i)
		{
			result[i] = ExtractBitRange(reg, (i + 1) * 8, i * 8);
		}
	}

	inline void uX_abi CPUFeatures::ParseLeaf2(int const max_cpuid_leaf, CacheInfo* info) uX_noexcept
	{
		Leaf leaf = SafeCpuId(max_cpuid_leaf, 2);
		uint32_t registers[] = {leaf.eax, leaf.ebx, leaf.ecx, leaf.edx};
		for(int i = 0; i < 4; ++i)
		{
			if(registers[i] & (1U << 31))
			{
				continue;  // register does not contains valid information
			}
			uint32_t bytes[4];
			GetByteArrayFromRegister(bytes, registers[i]);
			for(int j = 0; j < 4; ++j)
			{
				if(bytes[j] == 0xFF)
					break;  // leaf 4 should be used to fetch cache information
				info->levels[info->size] = GetCacheLevelInfo(bytes[j]);
			}
			info->size++;
		}
	}

	// For newer Intel CPUs uses "CPUID, eax=0x00000004".
	// For newer AMD CPUs uses "CPUID, eax=0x8000001D"
	inline void uX_abi CPUFeatures::ParseCacheInfo(int const max_cpuid_leaf, uint32_t const leaf_id, CacheInfo* info) uX_noexcept
	{
		info->size = 0;
		for(int cache_id = 0; cache_id < CPU_FEATURES_MAX_CACHE_LEVEL; cache_id++)
		{
			Leaf const leaf = SafeCpuIdEx(max_cpuid_leaf, leaf_id, cache_id);
			CacheType cache_type = static_cast<CacheType>(ExtractBitRange(leaf.eax, 4, 0));
			if(cache_type == _CACHE_NULL)
			{
				info->levels[cache_id] = kEmptyCacheLevelInfo();
				continue;
			}
			int level = ExtractBitRange(leaf.eax, 7, 5);
			int line_size = ExtractBitRange(leaf.ebx, 11, 0) + 1;
			int partitioning = ExtractBitRange(leaf.ebx, 21, 12) + 1;
			int ways = ExtractBitRange(leaf.ebx, 31, 22) + 1;
			int tlb_entries = leaf.ecx + 1;
			int cache_size = (ways * partitioning * line_size * (tlb_entries));
			info->levels[cache_id] =	{
											.level = level,
											.cache_type = cache_type,
											.cache_size = cache_size,
											.ways = ways,
											.line_size = line_size,
											.tlb_entries = tlb_entries,
											.partitioning = partitioning
										};
			info->size++;
		}
	}

#if defined(uX_DARWIN_OS)
	inline bool uX_abi CPUFeatures::GetDarwinSysCtlByName(char const* name) uX_noexcept
	{
		int enabled;
		size_t enabled_len = sizeof(enabled);
		const int failure = sysctlbyname(name, &enabled, &enabled_len, nullptr, 0);
		return failure ? false : enabled;
	}
#endif  // uX_DARWIN_OS

#if defined(uX_WINDOWS_OS)
	inline bool uX_abi CPUFeatures::GetWindowsIsProcessorFeaturePresent(DWORD ProcessorFeature) uX_noexcept
	{
		return IsProcessorFeaturePresent(ProcessorFeature);
	}
#endif  // uX_WINDOWS_OS

	inline Info const uX_abi CPUFeatures::kEmptyInfo(void) uX_noexcept
	{
		static Info const kEmptyX86Info;
		return kEmptyX86Info;
	}

	inline CacheInfo const uX_abi CPUFeatures::kEmptyCacheInfo(void) uX_noexcept
	{
		static CacheInfo const kEmptyX86CacheInfo;
		return kEmptyX86CacheInfo;
	}

// Reference https://en.wikipedia.org/wiki/CPUID.
	inline void uX_abi CPUFeatures::ParseCpuId(uint32_t const max_cpuid_leaf, Info* info) uX_noexcept
	{
		Leaf const leaf_0 = CpuId(0);

		Leaf const leaf_1 = SafeCpuId(max_cpuid_leaf, 1);
		Leaf const leaf_7 = SafeCpuId(max_cpuid_leaf, 7);
		Leaf const leaf_7_1 = SafeCpuIdEx(max_cpuid_leaf, 7, 1);

		Features* const features = &info->features;

		features->IntrinSet = 0;

		uint32_t const family = ExtractBitRange(leaf_1.eax, 11, 8);
		uint32_t const extended_family = ExtractBitRange(leaf_1.eax, 27, 20);
		uint32_t const model = ExtractBitRange(leaf_1.eax, 7, 4);
		uint32_t const extended_model = ExtractBitRange(leaf_1.eax, 19, 16);

		info->family = extended_family + family;
		info->model = (extended_model << 4) + model;
		info->stepping = ExtractBitRange(leaf_1.eax, 3, 0);

		features->is_Intel = IsVendor(leaf_0, CPU_FEATURES_VENDOR_GENUINE_INTEL);
		features->is_AMD = IsVendor(leaf_0, CPU_FEATURES_VENDOR_AUTHENTIC_AMD);
		features->is_Hygon = IsVendor(leaf_0, CPU_FEATURES_VENDOR_HYGON_GENUINE);

		/* EAX = 01H, ECX */
		features->PCLMULQDQ = IsBitSet(leaf_1.ecx, 1);
		features->MONITOR = IsBitSet(leaf_1.ecx, 3);
		features->CMPXCHG16B = IsBitSet(leaf_1.ecx, 13);
		features->PCID = IsBitSet(leaf_1.ecx, 17);
		features->x2APIC = IsBitSet(leaf_1.ecx, 21);
		features->MOVBE = IsBitSet(leaf_1.ecx, 22);
		features->POPCNT = IsBitSet(leaf_1.ecx, 23);
		features->AES = IsBitSet(leaf_1.ecx, 25);
		features->XSAVE = IsBitSet(leaf_1.ecx, 26);
		features->OSXSAVE = IsBitSet(leaf_1.ecx, 27);
		features->RDRAND = IsBitSet(leaf_1.ecx, 30);

		/* EAX = 01H, EDX */
		features->FPU = IsBitSet(leaf_1.edx, 0);
		features->VME = IsBitSet(leaf_1.edx, 1);
		features->DE = IsBitSet(leaf_1.edx, 2);
		features->PSE = IsBitSet(leaf_1.edx, 3);
		features->TSC = IsBitSet(leaf_1.edx, 4);
		features->MSR = IsBitSet(leaf_1.edx, 5);
		features->PAE = IsBitSet(leaf_1.edx, 6);
		features->MCE = IsBitSet(leaf_1.edx, 7);
		features->CMPXCHG8B = IsBitSet(leaf_1.edx, 8);
		features->APIC = IsBitSet(leaf_1.edx, 9);
		features->SEP = IsBitSet(leaf_1.edx, 11);
		features->MTRR = IsBitSet(leaf_1.edx, 12);
		features->PGE = IsBitSet(leaf_1.edx, 13);
		features->MCA = IsBitSet(leaf_1.edx, 14);
		features->CMOV = IsBitSet(leaf_1.edx, 15);
		features->PAT = IsBitSet(leaf_1.edx, 16);
		features->PSE36 = IsBitSet(leaf_1.edx, 17);
		features->CLFSH = IsBitSet(leaf_1.edx, 19);
		features->MMX = IsBitSet(leaf_1.edx, 23);
		features->FXSR = IsBitSet(leaf_1.edx, 24);
		features->HTT = IsBitSet(leaf_1.edx, 28);

		/* EAX = 07H, EBX */
		features->FSGSBASE = IsBitSet(leaf_7.ebx, 0);
		features->BMI1 = IsBitSet(leaf_7.ebx, 3);
		features->SMEP = IsBitSet(leaf_7.ebx, 7);
		features->BMI2 = IsBitSet(leaf_7.ebx, 8);
		features->INVPCID = IsBitSet(leaf_7.ebx, 10);
		features->RDSEED = IsBitSet(leaf_7.ebx, 18);
		features->ADX = IsBitSet(leaf_7.ebx, 19);
		features->SMAP = IsBitSet(leaf_7.ebx, 20);
		features->CLFLUSHOPT = IsBitSet(leaf_7.ebx, 23);
		features->CLWB = IsBitSet(leaf_7.ebx, 24);
		features->SHA = IsBitSet(leaf_7.ebx, 29);

		/* EAX = 07H, ECX */
		features->UMIP = IsBitSet(leaf_7.ecx, 2);
		features->PKU = IsBitSet(leaf_7.ecx, 3);
		features->OSPKE = IsBitSet(leaf_7.ecx, 4);
		features->CET_SS = IsBitSet(leaf_7.ecx, 7);
		features->VAES = IsBitSet(leaf_7.ecx, 9);
		features->VPCLMULQDQ = IsBitSet(leaf_7.ecx, 10);
		features->RDPID = IsBitSet(leaf_7.ecx, 22);
		features->CLDEMOTE = IsBitSet(leaf_7.ecx, 25);

		if(features->is_Intel)
		{
			/* EAX = 01H, ECX */
			features->DTES64 = IsBitSet(leaf_1.ecx, 2);
			features->DS_CPL = IsBitSet(leaf_1.ecx, 4);
			features->VMX = IsBitSet(leaf_1.ecx, 5);
			features->SMX = IsBitSet(leaf_1.ecx, 6);
			features->EIST = IsBitSet(leaf_1.ecx, 7);
			features->TM2 = IsBitSet(leaf_1.ecx, 8);
			features->CNXT_ID = IsBitSet(leaf_1.ecx, 10);
			features->SDBG = IsBitSet(leaf_1.ecx, 11);
			features->xTPR = IsBitSet(leaf_1.ecx, 14);
			features->PDCM = IsBitSet(leaf_1.ecx, 15);
			features->DCA = IsBitSet(leaf_1.ecx, 18);
			features->TSC_Deadline = IsBitSet(leaf_1.ecx, 24);

			/* EAX = 01H, EDX */
			features->PSN = IsBitSet(leaf_1.edx, 18);
			features->DS = IsBitSet(leaf_1.edx, 21);
			features->ACPI = IsBitSet(leaf_1.edx, 22);
			features->SS = IsBitSet(leaf_1.edx, 27);
			features->TM = IsBitSet(leaf_1.edx, 29);
			features->PBE = IsBitSet(leaf_1.edx, 31);

			/* EAX = 07H, EBX */
			features->IA32_TSC_ADJUST = IsBitSet(leaf_7.ebx, 1);
			features->SGX = IsBitSet(leaf_7.ebx, 2);
			features->HLE = IsBitSet(leaf_7.ebx, 4);
			features->FDP_EXCPTN_ONLY = IsBitSet(leaf_7.ebx, 6);
			features->ERMS = IsBitSet(leaf_7.ebx, 9);
			features->RTM = IsBitSet(leaf_7.ebx, 11);
			features->RDT_M = IsBitSet(leaf_7.ebx, 12);
			features->DEP_FPU = IsBitSet(leaf_7.ebx, 13);
			features->MPX = IsBitSet(leaf_7.ebx, 14);
			features->RDT_A = IsBitSet(leaf_7.ebx, 15);
			features->IP_TRACE = IsBitSet(leaf_7.ebx, 25);

			/* EAX = 07H, ECX */
			features->PREFETCHWT1 = IsBitSet(leaf_7.ecx, 0);
			features->WAITPKG = IsBitSet(leaf_7.ecx, 5);
			features->GFNI = IsBitSet(leaf_7.ecx, 8);
			features->TME_EN = IsBitSet(leaf_7.ecx, 13);
			features->LA57 = IsBitSet(leaf_7.ecx, 16);
			features->KL = IsBitSet(leaf_7.ecx, 23);
			features->MOVDIRI = IsBitSet(leaf_7.ecx, 27);
			features->MOVDIR64B = IsBitSet(leaf_7.ecx, 28);
			features->SGX_LC = IsBitSet(leaf_7.ecx, 30);
			features->PKS = IsBitSet(leaf_7.ecx, 31);

			/* EAX = 07H, EDX */
			features->FSREPMOV = IsBitSet(leaf_7.edx, 4);
			features->MD_CLEAR = IsBitSet(leaf_7.edx, 10);
			features->HYBRID = IsBitSet(leaf_7.edx, 15);
			features->PCONFIG = IsBitSet(leaf_7.edx, 18);
			features->CET_IBT = IsBitSet(leaf_7.edx, 20);
			features->IBRS_IBPB = IsBitSet(leaf_7.edx, 26);
			features->STIBP = IsBitSet(leaf_7.edx, 27);
			features->L1D_FLUSH = IsBitSet(leaf_7.edx, 28);
			features->IA32_ARCH_CAPABILITIES_MSR = IsBitSet(leaf_7.edx, 29);
			features->IA32_CORE_CAPABILITIES_MSR = IsBitSet(leaf_7.edx, 30);
			features->SSBD = IsBitSet(leaf_7.edx, 31);
		}

		if(features->MMX)
		{
			features->IntrinSet = 8;
		}

		if(features->CMOV)
		{
			features->IntrinSet = 9;
		}

		bool const have_xcr0 = features->XSAVE && features->OSXSAVE;

		/////////////////////////////////////////////////////////////////////////////
		// The following section is devoted to Vector Extensions.
		/////////////////////////////////////////////////////////////////////////////

		// CPU with AVX expose XCR0 which enables checking vector extensions OS
		// support through cpuid.
		if(have_xcr0)
		{
// Here we rely exclusively on cpuid for both CPU and OS support of vector
// extensions.
			uint32_t const xcr0_eax = GetXCR0Eax();
			features->enabled_XMM = HasXmmOsXSave(xcr0_eax);
			features->enabled_YMM = HasYmmOsXSave(xcr0_eax);
#if defined(uX_DARWIN_OS)
	// On Darwin AVX512 support is On-demand.
	// We have to query the OS instead of querying the Zmm save/restore state.
	// https://github.com/apple/darwin-xnu/blob/8f02f2a044b9bb1ad951987ef5bab20ec9486310/osfmk/i386/fpu.c#L173-L199
			features->enabled_ZMM = GetDarwinSysCtlByName("hw.optional.avx512f");
#else
			features->enabled_ZMM = HasZmmOsXSave(xcr0_eax);
#endif  // uX_DARWIN_OS
			features->enabled_TMM = HasTmmOsXSave(xcr0_eax);

			if(features->enabled_XMM)
			{
				/* EAX = 01H, ECX */
				features->SSE3 = IsBitSet(leaf_1.ecx, 0);
				features->SSSE3 = IsBitSet(leaf_1.ecx, 9);
				features->SSE4_1 = IsBitSet(leaf_1.ecx, 19);
				features->SSE4_2 = IsBitSet(leaf_1.ecx, 20);

				/* EAX = 01H, EDX */
				features->SSE = IsBitSet(leaf_1.edx, 25);
				features->SSE2 = IsBitSet(leaf_1.edx, 26);

				/* EAX = 07H, ECX and EBX  | EAX = 01H, ECX and EDX */ /*bit multi*/
				features->SSE_AES = features->SSE && features->AES;
				features->SSE2_AES = features->SSE2 && features->AES;
				features->SSE3_AES = features->SSE3 && features->AES;
				features->SSSE3_AES = features->SSSE3 && features->AES;
				features->SSE4_1_AES = features->SSE4_1 && features->AES;
				features->SSE4_2_AES = features->SSE4_2 && features->AES;

				features->SSE_PCLMULQDQ = features->SSE && features->PCLMULQDQ;
				features->SSE2_PCLMULQDQ = features->SSE2 && features->PCLMULQDQ;
				features->SSE3_PCLMULQDQ = features->SSE3 && features->PCLMULQDQ;
				features->SSSE3_PCLMULQDQ = features->SSSE3 && features->PCLMULQDQ;
				features->SSE4_1_PCLMULQDQ = features->SSE4_1 && features->PCLMULQDQ;
				features->SSE4_2_PCLMULQDQ = features->SSE4_2 && features->PCLMULQDQ;

				if(features->is_Intel)
				{
					/* EAX = 07H, ECX and EBX  | EAX = 01H, ECX and EDX */ /*bit multi*/
					features->SSE_GFNI = features->SSE && features->GFNI;
					features->SSE2_GFNI = features->SSE2 && features->GFNI;
					features->SSE3_GFNI = features->SSE3 && features->GFNI;
					features->SSSE3_GFNI = features->SSSE3 && features->GFNI;
					features->SSE4_1_GFNI = features->SSE4_1 && features->GFNI;
					features->SSE4_2_GFNI = features->SSE4_2 && features->GFNI;
				}

				if(features->SSE)
				{
					features->IntrinSet = 10;
				}
				if(features->SSE2)
				{
					features->IntrinSet = 20;
				}
				if(features->SSE3)
				{
					features->IntrinSet = 30;
				}
				if(features->SSSE3)
				{
					features->IntrinSet = 31;
				}
				if(features->SSE4_1)
				{
					features->IntrinSet = 41;
				}
				if(features->POPCNT && features->SSE4_2)
				{
					features->IntrinSet = 42;
				}
			}
			if(features->enabled_YMM)
			{
				/* EAX = 01H, ECX */
				features->FMA3 = IsBitSet(leaf_1.ecx, 12);
				features->AVX = IsBitSet(leaf_1.ecx, 28);
				features->F16C = IsBitSet(leaf_1.ecx, 29);

				/* EAX = 07H, EBX */
				features->AVX2 = IsBitSet(leaf_7.ebx, 5);

				/* EAX = 07H, ECX and EBX  | EAX = 01H, ECX and EDX */ /*bit multi*/
				features->AVX_AES = features->AVX && features->AES;
				features->AVX2_AES = features->AVX2 && features->AES;

				features->AVX_PCLMULQDQ = features->AVX && features->PCLMULQDQ;
				features->AVX2_PCLMULQDQ = features->AVX2 && features->PCLMULQDQ;

				features->AVX_VAES = features->AVX && features->VAES;
				features->AVX2_VAES = features->AVX2 && features->VAES;

				features->AVX_VPCLMULQDQ = features->AVX && features->VPCLMULQDQ;
				features->AVX2_VPCLMULQDQ = features->AVX2 && features->VPCLMULQDQ;

				if(features->is_Intel)
				{
					/* EAX = 07H, ECX and EBX  | EAX = 01H, ECX and EDX */ /*bit multi*/
					features->AVX_GFNI = features->AVX && features->GFNI;
					features->AVX2_GFNI = features->AVX2 && features->GFNI;
				}

				if(features->AVX)
				{
					features->IntrinSet = 50;
				}
				if(features->AVX2)
				{
					features->IntrinSet = 52;
				}
			}
			if(features->is_Intel)
			{
				if(features->enabled_ZMM)
				{
					/* EAX = 07H, ECX = 1, EAX */
					features->AVX512_BF16 = IsBitSet(leaf_7_1.eax, 5);

					/* EAX = 07H, EBX */
					features->AVX512F = IsBitSet(leaf_7.ebx, 16);
					features->AVX512DQ = IsBitSet(leaf_7.ebx, 17);
					features->AVX512_IFMA = IsBitSet(leaf_7.ebx, 21);
					features->AVX512PF = IsBitSet(leaf_7.ebx, 26);
					features->AVX512ER = IsBitSet(leaf_7.ebx, 27);
					features->AVX512CD = IsBitSet(leaf_7.ebx, 28);
					features->AVX512BW = IsBitSet(leaf_7.ebx, 30);
					features->AVX512VL = IsBitSet(leaf_7.ebx, 31);

					/* EAX = 07H, ECX */
					features->AVX512_VBMI = IsBitSet(leaf_7.ecx, 1);
					features->AVX512_VBMI2 = IsBitSet(leaf_7.ecx, 6);
					features->AVX512_VNNI = IsBitSet(leaf_7.ecx, 11);
					features->AVX512_BITALG = IsBitSet(leaf_7.ecx, 12);
					features->AVX512_VPOPCNTDQ = IsBitSet(leaf_7.ecx, 14);

					/* EAX = 07H, EDX */
					features->AVX512_4VNNIW = IsBitSet(leaf_7.edx, 2);
					features->AVX512_4FMAPS = IsBitSet(leaf_7.edx, 3);
					features->AVX512_4VBMI2 = IsBitSet(leaf_7.edx, 3);
					features->AVX512_VP2INTERSECT = IsBitSet(leaf_7.edx, 8);

					features->AVX512_second_FMA = HasSecondFMA(info->model);

					/* EAX = 07H, EBX and ECX */ /*bit multi*/
					features->AVX512_GFNI = features->AVX512F && features->GFNI;
					features->AVX512_GFNI_VL = features->AVX512F && features->GFNI && features->AVX512VL;
					features->AVX512_VAES = features->AVX512F && features->VAES;
					features->AVX512_VAES_VL = features->AVX512F && features->VAES && features->AVX512VL;
					features->AVX512_VPCLMULQDQ = features->AVX512F && features->VPCLMULQDQ;
					features->AVX512_VPCLMULQDQ_VL = features->AVX512F && features->VPCLMULQDQ && features->AVX512VL;
					features->AVX512_IFMA_VL = features->AVX512_IFMA && features->AVX512VL;
					features->AVX512_VBMI_VL = features->AVX512_VBMI && features->AVX512VL;
					features->AVX512_VBMI2_VL = features->AVX512_VBMI2 && features->AVX512VL;
					features->AVX512_VNNI_VL = features->AVX512_VNNI && features->AVX512VL;
					features->AVX512_BITALG_VL = features->AVX512_BITALG && features->AVX512VL;
					features->AVX512_VPOPCNTDQ_VL = features->AVX512_VPOPCNTDQ && features->AVX512VL;

					features->AVX512BW_GFNI = features->AVX512BW && features->GFNI;
					features->AVX512BW_GFNI_VL = features->AVX512BW && features->GFNI && features->AVX512VL;
					features->AVX512BW_VAES = features->AVX512BW && features->VAES;
					features->AVX512BW_VAES_VL = features->AVX512BW && features->VAES && features->AVX512VL;
					features->AVX512BW_VPCLMULQDQ = features->AVX512BW && features->VPCLMULQDQ;
					features->AVX512BW_VPCLMULQDQ_VL = features->AVX512BW && features->VPCLMULQDQ && features->AVX512VL;
					features->AVX512BW_VL = features->AVX512BW && features->AVX512VL;

					features->AVX512DQ_GFNI = features->AVX512DQ && features->GFNI;
					features->AVX512DQ_GFNI_VL = features->AVX512DQ && features->GFNI && features->AVX512VL;
					features->AVX512DQ_VAES = features->AVX512DQ && features->VAES;
					features->AVX512DQ_VAES_VL = features->AVX512DQ && features->VAES && features->AVX512VL;
					features->AVX512DQ_VPCLMULQDQ = features->AVX512DQ && features->VPCLMULQDQ;
					features->AVX512DQ_VPCLMULQDQ_VL = features->AVX512DQ && features->VPCLMULQDQ && features->AVX512VL;
					features->AVX512DQ_VL = features->AVX512DQ && features->AVX512VL;

					features->AVX512CD_VL = features->AVX512CD && features->AVX512VL;

					if(features->AVX512F)
					{
						features->IntrinSet = 60;
					}
				}
				if(features->enabled_TMM)
				{
					/* EAX = 07H, EDX */
					features->AMX_BF16 = IsBitSet(leaf_7.edx, 22);
					features->AMX_TILE = IsBitSet(leaf_7.edx, 24);
					features->AMX_INT8 = IsBitSet(leaf_7.edx, 25);
				}
			}
		}
		else
		{
	 // When XCR0 is not available (Atom based or older cpus) we need to defer to
	 // the OS via custom code.
#if defined(uX_WINDOWS_OS)
	// Handling Windows platform through IsProcessorFeaturePresent.
	// https://docs.microsoft.com/en-us/windows/win32/api/processthreadsapi/nf-processthreadsapi-isprocessorfeaturepresent
			features->SSE =
				GetWindowsIsProcessorFeaturePresent(PF_XMMI_INSTRUCTIONS_AVAILABLE);
			features->SSE2 =
				GetWindowsIsProcessorFeaturePresent(PF_XMMI64_INSTRUCTIONS_AVAILABLE);
			features->SSE3 =
				GetWindowsIsProcessorFeaturePresent(PF_SSE3_INSTRUCTIONS_AVAILABLE);
			features->SSSE3 =
				GetWindowsIsProcessorFeaturePresent(PF_SSSE3_INSTRUCTIONS_AVAILABLE);
			features->SSE4_1 =
				GetWindowsIsProcessorFeaturePresent(PF_SSE4_1_INSTRUCTIONS_AVAILABLE);
			features->SSE4_2 =
				GetWindowsIsProcessorFeaturePresent(PF_SSE4_2_INSTRUCTIONS_AVAILABLE);
#elif defined(uX_DARWIN_OS)
	// Handling Darwin platform through sysctlbyname.
			features->SSE = GetDarwinSysCtlByName("hw.optional.sse");
			features->SSE2 = GetDarwinSysCtlByName("hw.optional.sse2");
			features->SSE3 = GetDarwinSysCtlByName("hw.optional.sse3");
			features->SSSE3 = GetDarwinSysCtlByName("hw.optional.supplementalsse3");
			features->SSE4_1 = GetDarwinSysCtlByName("hw.optional.sse4_1");
			features->SSE4_2 = GetDarwinSysCtlByName("hw.optional.sse4_2");
#elif defined(uX_BSD_OS)
	// Handling FreeBSD platform through parsing /var/run/dmesg.boot.
			const int fd = CpuFeatures_OpenFile("/var/run/dmesg.boot");
			if(fd >= 0)
			{
				StackLineReader reader;
				StackLineReader_Initialize(&reader, fd);
				for(;;)
				{
					const LineResult result = StackLineReader_NextLine(&reader);
					const StringView line = result.line;
					bool const is_feature =
						CpuFeatures_StringView_StartsWith(line, str("  Features="));
					bool const is_feature2 =
						CpuFeatures_StringView_StartsWith(line, str("  Features2="));
					if(is_feature || is_feature2)
					{
// Lines of interests are of the following form:
// "  Features=0x1783fbff<PSE36,MMX,FXSR,SSE,SSE2,HTT>"
// We replace '<', '>' and ',' with space so we can search by
// whitespace separated word.
// TODO: Fix CpuFeatures_StringView_HasWord to allow for different
// separators.
						for(size_t i = 0; i < line.size; ++i)
						{
							char* c = (char*)(&(line.ptr[i]));
							if(*c == '<' || *c == '>' || *c == ',') *c = ' ';
						}
						if(is_feature)
						{
							features->SSE = CpuFeatures_StringView_HasWord(line, "SSE");
							features->SSE2 = CpuFeatures_StringView_HasWord(line, "SSE2");
						}
						if(is_feature2)
						{
							features->SSE3 = CpuFeatures_StringView_HasWord(line, "SSE3");
							features->SSSE3 = CpuFeatures_StringView_HasWord(line, "SSSE3");
							features->SSE4_1 = CpuFeatures_StringView_HasWord(line, "SSE4.1");
							features->SSE4_2 = CpuFeatures_StringView_HasWord(line, "SSE4.2");
						}
					}
					if(result.eof) break;
				}
				CpuFeatures_CloseFile(fd);
			}
#elif defined(uX_LINUX_OS) || defined(uX_ANDROID_OS)
	// Handling Linux platform through /proc/cpuinfo.
			const int fd = CpuFeatures_OpenFile("/proc/cpuinfo");
			if(fd >= 0)
			{
				StackLineReader reader;
				StackLineReader_Initialize(&reader, fd);
				for(;;)
				{
					const LineResult result = StackLineReader_NextLine(&reader);
					const StringView line = result.line;
					StringView key, value;
					if(CpuFeatures_StringView_GetAttributeKeyValue(line, &key, &value))
					{
						if(CpuFeatures_StringView_IsEquals(key, str("flags")))
						{
							features->sse = CpuFeatures_StringView_HasWord(value, "sse");
							features->sse2 = CpuFeatures_StringView_HasWord(value, "sse2");
							features->sse3 = CpuFeatures_StringView_HasWord(value, "sse3");
							features->ssse3 = CpuFeatures_StringView_HasWord(value, "ssse3");
							features->sse4_1 = CpuFeatures_StringView_HasWord(value, "sse4_1");
							features->sse4_2 = CpuFeatures_StringView_HasWord(value, "sse4_2");
							break;
						}
					}
					if(result.eof) break;
				}
				CpuFeatures_CloseFile(fd);
			}
#else
#error "Unsupported fallback detection of SSE OS support."
#endif
			if(features->SSE)
			{
				features->IntrinSet = 10;
			}
			if(features->SSE2)
			{
				features->IntrinSet = 20;
			}
			if(features->SSE3)
			{
				features->IntrinSet = 30;
			}
			if(features->SSSE3)
			{
				features->IntrinSet = 31;
			}
			if(features->SSE4_1)
			{
				features->IntrinSet = 41;
			}
			if(features->SSE4_2)
			{
				features->IntrinSet = 42;
			}
	// Now that we have queried the OS for SSE support, we report this back to
	// os_preserves. This is needed in case of AMD CPU's to enable testing of
	// sse4a (See ParseExtraAMDCpuId below).
			if(features->SSE) features->enabled_XMM = true;
		}
	}

	// Reference
	// https://en.wikipedia.org/wiki/CPUID#EAX=80000000h:_Get_Highest_Extended_Function_Implemented.
	inline Leaf uX_abi CPUFeatures::GetLeafById(uint32_t const leaf_id) uX_noexcept
	{
		Leaf const leaf_80000000 = CpuId(0x80000000);
		uint32_t const max_extended_cpuid_leaf = leaf_80000000.eax;
		return SafeCpuId(max_extended_cpuid_leaf, leaf_id);
	}

	inline void uX_abi CPUFeatures::ParseExtraCpuId(Info* info) uX_noexcept
	{
		Leaf const leaf_80000001 = GetLeafById(0x80000001);
		Features* const features = &info->features;

		/* EAX = 80000001H, ECX */
		features->LAHF = IsBitSet(leaf_80000001.ecx, 0);
		features->LZCNT = IsBitSet(leaf_80000001.ecx, 5);
		features->ABM = IsBitSet(leaf_80000001.ecx, 5);

		/* EAX = 80000001H, EDX */
		features->SYSCALL = IsBitSet(leaf_80000001.edx, 11);
		features->EXECDBIT = IsBitSet(leaf_80000001.edx, 20);
		features->NX = IsBitSet(leaf_80000001.edx, 20);
		features->GBPAGE = IsBitSet(leaf_80000001.edx, 26);
		features->RDTSCP = IsBitSet(leaf_80000001.edx, 27);
		features->I64 = IsBitSet(leaf_80000001.edx, 29);
		features->LM = IsBitSet(leaf_80000001.edx, 29);

		if(features->is_AMD || features->is_Hygon)
		{
			/* EAX = 80000001H, ECX */
			features->CmpLegacy = IsBitSet(leaf_80000001.ecx, 1);
			features->SVM = IsBitSet(leaf_80000001.ecx, 2);
			features->ExtApicSpace = IsBitSet(leaf_80000001.ecx, 3);
			features->AltMovCr8 = IsBitSet(leaf_80000001.ecx, 4);
			features->OSVW = IsBitSet(leaf_80000001.ecx, 9);
			features->IBS = IsBitSet(leaf_80000001.ecx, 10);
			features->SKINIT = IsBitSet(leaf_80000001.ecx, 12);
			features->WDT = IsBitSet(leaf_80000001.ecx, 13);
			features->LWP = IsBitSet(leaf_80000001.ecx, 15);
			features->TBM = IsBitSet(leaf_80000001.ecx, 21);
			features->TopologyExtensions = IsBitSet(leaf_80000001.ecx, 22);
			features->PerfCtrExtCore = IsBitSet(leaf_80000001.ecx, 23);
			features->PerfCtrExtNB = IsBitSet(leaf_80000001.ecx, 24);
			features->DataBkptExt = IsBitSet(leaf_80000001.ecx, 26);
			features->PerfTsc = IsBitSet(leaf_80000001.ecx, 27);
			features->PerfCtrExtLLC = IsBitSet(leaf_80000001.ecx, 28);
			features->MWAITX = IsBitSet(leaf_80000001.ecx, 29);
			features->AddrMaskExt = IsBitSet(leaf_80000001.ecx, 30);

			/* EAX = 80000001H, EDX */
			features->MMXEXT = IsBitSet(leaf_80000001.edx, 22);
			features->FFXSR = IsBitSet(leaf_80000001.edx, 25);
			features->A3DNOWEXT = IsBitSet(leaf_80000001.edx, 30);
			features->A3DNOW = IsBitSet(leaf_80000001.edx, 31);

			if(features->enabled_XMM)
			{
				features->SSE4A = IsBitSet(leaf_80000001.ecx, 6);
				features->MisAlignSse = IsBitSet(leaf_80000001.ecx, 7);
			}

			if(features->enabled_YMM)
			{
				features->XOP = IsBitSet(leaf_80000001.ecx, 11);
				features->FMA4 = IsBitSet(leaf_80000001.ecx, 16);
			}
		}
	}

	uX_SRCAPI Info uX_abi CPUFeatures::GetInfo(void) uX_noexcept
	{
		Info info = kEmptyInfo();
		Leaf const leaf_0 = CpuId(0);
		SetVendor(leaf_0, info.vendor);
		uint32_t const max_cpuid_leaf = leaf_0.eax;
		ParseCpuId(max_cpuid_leaf, &info);
		ParseExtraCpuId(&info);
		return info;
	}

	uX_SRCAPI CacheInfo uX_abi CPUFeatures::GetCacheInfo(void) uX_noexcept
	{
		CacheInfo info = kEmptyCacheInfo();
		Leaf const leaf_0 = CpuId(0);
		if(IsVendor(leaf_0, CPU_FEATURES_VENDOR_GENUINE_INTEL))
		{
			ParseLeaf2(leaf_0.eax, &info);
			ParseCacheInfo(leaf_0.eax, 4, &info);
		}
		else if(IsVendor(leaf_0, CPU_FEATURES_VENDOR_AUTHENTIC_AMD) ||
				IsVendor(leaf_0, CPU_FEATURES_VENDOR_HYGON_GENUINE))
		{
			uint32_t const max_ext = CpuId(0x80000000).eax;
			if(!IsReservedAMD(max_ext, 22))
			{
				ParseCacheInfo(max_ext, 0x8000001D, &info);
			}
		}
		return info;
	}

	#ifdef CPUID
	#undef CPUID
	#endif
	#define CPUID(FAMILY, MODEL) ((((FAMILY)&0xFF) << 8) | ((MODEL)&0xFF))

	uX_SRCAPI Microarchitecture uX_abi CPUFeatures::GetMicroarchitecture(const Info* info) uX_noexcept
	{
		if(IsVendorByInfo(info, CPU_FEATURES_VENDOR_GENUINE_INTEL))
		{
			switch(CPUID(info->family, info->model))
			{
				case CPUID(0x06, 0x1C):  // Intel(R) Atom(TM) CPU 230 @ 1.60GHz
				case CPUID(0x06, 0x35):
				case CPUID(0x06, 0x36):
				case CPUID(0x06, 0x70):  // https://en.wikichip.org/wiki/intel/atom/230
				  // https://en.wikipedia.org/wiki/Bonnell_(microarchitecture)
					return INTEL_ATOM_BNL;
				case CPUID(0x06, 0x37):
				case CPUID(0x06, 0x4C):
				  // https://en.wikipedia.org/wiki/Silvermont
					return INTEL_ATOM_SMT;
				case CPUID(0x06, 0x5C):
				  // https://en.wikipedia.org/wiki/Goldmont
					return INTEL_ATOM_GMT;
				case CPUID(0x06, 0x0F):
				case CPUID(0x06, 0x16):
				  // https://en.wikipedia.org/wiki/Intel_Core_(microarchitecture)
					return INTEL_CORE;
				case CPUID(0x06, 0x17):
				case CPUID(0x06, 0x1D):
				  // https://en.wikipedia.org/wiki/Penryn_(microarchitecture)
					return INTEL_PNR;
				case CPUID(0x06, 0x1A):
				case CPUID(0x06, 0x1E):
				case CPUID(0x06, 0x1F):
				case CPUID(0x06, 0x2E):
				  // https://en.wikipedia.org/wiki/Nehalem_(microarchitecture)
					return INTEL_NHM;
				case CPUID(0x06, 0x25):
				case CPUID(0x06, 0x2C):
				case CPUID(0x06, 0x2F):
				  // https://en.wikipedia.org/wiki/Westmere_(microarchitecture)
					return INTEL_WSM;
				case CPUID(0x06, 0x2A):
				case CPUID(0x06, 0x2D):
				  // https://en.wikipedia.org/wiki/Sandy_Bridge#Models_and_steppings
					return INTEL_SNB;
				case CPUID(0x06, 0x3A):
				case CPUID(0x06, 0x3E):
				  // https://en.wikipedia.org/wiki/Ivy_Bridge_(microarchitecture)#Models_and_steppings
					return INTEL_IVB;
				case CPUID(0x06, 0x3C):
				case CPUID(0x06, 0x3F):
				case CPUID(0x06, 0x45):
				case CPUID(0x06, 0x46):
				  // https://en.wikipedia.org/wiki/Haswell_(microarchitecture)
					return INTEL_HSW;
				case CPUID(0x06, 0x3D):
				case CPUID(0x06, 0x47):
				case CPUID(0x06, 0x4F):
				case CPUID(0x06, 0x56):
				  // https://en.wikipedia.org/wiki/Broadwell_(microarchitecture)
					return INTEL_BDW;
				case CPUID(0x06, 0x4E):
				case CPUID(0x06, 0x55):
				case CPUID(0x06, 0x5E):
				  // https://en.wikipedia.org/wiki/Skylake_(microarchitecture)
					return INTEL_SKL;
				case CPUID(0x06, 0x66):
				  // https://en.wikipedia.org/wiki/Cannon_Lake_(microarchitecture)
					return INTEL_CNL;
				case CPUID(0x06, 0x7D):  // client
				case CPUID(0x06, 0x7E):  // client
				case CPUID(0x06, 0x9D):  // NNP-I
				case CPUID(0x06, 0x6A):  // server
				case CPUID(0x06, 0x6C):  // server
				  // https://en.wikipedia.org/wiki/Ice_Lake_(microprocessor)
					return INTEL_ICL;
				case CPUID(0x06, 0x8C):
				case CPUID(0x06, 0x8D):
				  // https://en.wikipedia.org/wiki/Tiger_Lake_(microarchitecture)
					return INTEL_TGL;
				case CPUID(0x06, 0x8F):
				  // https://en.wikipedia.org/wiki/Sapphire_Rapids
					return INTEL_SPR;
				case CPUID(0x06, 0x8E):
					switch(info->stepping)
					{
						case 9:
							return INTEL_KBL;  // https://en.wikipedia.org/wiki/Kaby_Lake
						case 10:
							return INTEL_CFL;  // https://en.wikipedia.org/wiki/Coffee_Lake
						case 11:
							return INTEL_WHL;  // https://en.wikipedia.org/wiki/Whiskey_Lake_(microarchitecture)
						default:
							return X86_UNKNOWN;
					}
				case CPUID(0x06, 0x9E):
					if(info->stepping > 9)
					{
// https://en.wikipedia.org/wiki/Coffee_Lake
						return INTEL_CFL;
					}
					else
					{
					   // https://en.wikipedia.org/wiki/Kaby_Lake
						return INTEL_KBL;
					}
				default:
					return X86_UNKNOWN;
			}
		}
		if(IsVendorByInfo(info, CPU_FEATURES_VENDOR_AUTHENTIC_AMD))
		{
			switch(CPUID(info->family, info->model))
			{
// https://en.wikichip.org/wiki/amd/cpuid
				case CPUID(0xF, 0x04):
				case CPUID(0xF, 0x05):
				case CPUID(0xF, 0x07):
				case CPUID(0xF, 0x08):
				case CPUID(0xF, 0x0C):
				case CPUID(0xF, 0x0E):
				case CPUID(0xF, 0x0F):
				case CPUID(0xF, 0x14):
				case CPUID(0xF, 0x15):
				case CPUID(0xF, 0x17):
				case CPUID(0xF, 0x18):
				case CPUID(0xF, 0x1B):
				case CPUID(0xF, 0x1C):
				case CPUID(0xF, 0x1F):
				case CPUID(0xF, 0x21):
				case CPUID(0xF, 0x23):
				case CPUID(0xF, 0x24):
				case CPUID(0xF, 0x25):
				case CPUID(0xF, 0x27):
				case CPUID(0xF, 0x2B):
				case CPUID(0xF, 0x2C):
				case CPUID(0xF, 0x2F):
				case CPUID(0xF, 0x41):
				case CPUID(0xF, 0x43):
				case CPUID(0xF, 0x48):
				case CPUID(0xF, 0x4B):
				case CPUID(0xF, 0x4C):
				case CPUID(0xF, 0x4F):
				case CPUID(0xF, 0x5D):
				case CPUID(0xF, 0x5F):
				case CPUID(0xF, 0x68):
				case CPUID(0xF, 0x6B):
				case CPUID(0xF, 0x6F):
				case CPUID(0xF, 0x7F):
				case CPUID(0xF, 0xC1):
					return AMD_HAMMER;
				case CPUID(0x10, 0x02):
				case CPUID(0x10, 0x04):
				case CPUID(0x10, 0x05):
				case CPUID(0x10, 0x06):
				case CPUID(0x10, 0x08):
				case CPUID(0x10, 0x09):
				case CPUID(0x10, 0x0A):
					return AMD_K10;
				case CPUID(0x11, 0x03):
				  // http://developer.amd.com/wordpress/media/2012/10/41788.pdf
					return AMD_K11;
				case CPUID(0x12, 0x01):
				  // https://www.amd.com/system/files/TechDocs/44739_12h_Rev_Gd.pdf
					return AMD_K12;
				case CPUID(0x14, 0x00):
				case CPUID(0x14, 0x01):
				case CPUID(0x14, 0x02):
				  // https://www.amd.com/system/files/TechDocs/47534_14h_Mod_00h-0Fh_Rev_Guide.pdf
					return AMD_BOBCAT;
				case CPUID(0x15, 0x01):
				  // https://en.wikichip.org/wiki/amd/microarchitectures/bulldozer
					return AMD_BULLDOZER;
				case CPUID(0x15, 0x02):
				case CPUID(0x15, 0x11):
				case CPUID(0x15, 0x13):
				  // https://en.wikichip.org/wiki/amd/microarchitectures/piledriver
					return AMD_PILEDRIVER;
				case CPUID(0x15, 0x30):
				case CPUID(0x15, 0x38):
				  // https://en.wikichip.org/wiki/amd/microarchitectures/steamroller
					return AMD_STREAMROLLER;
				case CPUID(0x15, 0x60):
				case CPUID(0x15, 0x65):
				case CPUID(0x15, 0x70):
				  // https://en.wikichip.org/wiki/amd/microarchitectures/excavator
					return AMD_EXCAVATOR;
				case CPUID(0x16, 0x00):
					return AMD_JAGUAR;
				case CPUID(0x16, 0x30):
					return AMD_PUMA;
				case CPUID(0x17, 0x01):
				case CPUID(0x17, 0x11):
				case CPUID(0x17, 0x18):
				case CPUID(0x17, 0x20):
				  // https://en.wikichip.org/wiki/amd/microarchitectures/zen
					return AMD_ZEN;
				case CPUID(0x17, 0x08):
				  // https://en.wikichip.org/wiki/amd/microarchitectures/zen%2B
					return AMD_ZEN_PLUS;
				case CPUID(0x17, 0x31):
				case CPUID(0x17, 0x47):
				case CPUID(0x17, 0x60):
				case CPUID(0x17, 0x68):
				case CPUID(0x17, 0x71):
				case CPUID(0x17, 0x90):
				case CPUID(0x17, 0x98):
				  // https://en.wikichip.org/wiki/amd/microarchitectures/zen_2
					return AMD_ZEN2;
				case CPUID(0x19, 0x01):
				case CPUID(0x19, 0x21):
				case CPUID(0x19, 0x30):
				case CPUID(0x19, 0x40):
				case CPUID(0x19, 0x50):
				  // https://en.wikichip.org/wiki/amd/microarchitectures/zen_3
					return AMD_ZEN3;
				default:
					return X86_UNKNOWN;
			}
		}
		if(IsVendorByInfo(info, CPU_FEATURES_VENDOR_HYGON_GENUINE))
		{
			switch(CPUID(info->family, info->model))
			{
				case CPUID(0x18, 0x00):
					return AMD_ZEN;
			}
		}
		return X86_UNKNOWN;
	}

	/*int GetFeaturesEnumValue(const Features* features, FeaturesEnum value)
	{
		if(value >= _LAST_FEATURE) return false;
		return kGetters[value](features);
	}

	char const* GetX86FeaturesEnumName(FeaturesEnum value)
	{
		if(value >= _LAST_FEATURE) return "unknown_feature";
		return kCpuInfoFlags[value];
	}*/

	inline void uX_abi CPUFeatures::cpuinfo_x86_detect_cache(uint32_t const max_base_index, uint32_t const max_extended_index,
															bool const amd_topology_extensions,
															const enum cpuinfo_vendor vendor,
															const struct cpuinfo_x86_model_info* model_info,
															struct cpuinfo_x86_caches* cache,
															struct cpuinfo_tlb* itlb_4KB,
															struct cpuinfo_tlb* itlb_2MB,
															struct cpuinfo_tlb* itlb_4MB,
															struct cpuinfo_tlb* dtlb0_4KB,
															struct cpuinfo_tlb* dtlb0_2MB,
															struct cpuinfo_tlb* dtlb0_4MB,
															struct cpuinfo_tlb* dtlb_4KB,
															struct cpuinfo_tlb* dtlb_2MB,
															struct cpuinfo_tlb* dtlb_4MB,
															struct cpuinfo_tlb* dtlb_1GB,
															struct cpuinfo_tlb* stlb2_4KB,
															struct cpuinfo_tlb* stlb2_2MB,
															struct cpuinfo_tlb* stlb2_1GB,
															uint32_t* log2_package_cores_max) uX_noexcept
	{
		if(max_base_index >= 2)
		{
			union cpuinfo_x86_cache_descriptors descriptors;
			descriptors.regs = cpuid(2);
			uint32_t iterations = (uint8_t)descriptors.as_bytes[0];
			if(iterations != 0)
			{
		iterate_descriptors:
				for(uint32_t i = 1 /* note: not 0 */; i < 16; i++)
				{
					uint8_t const descriptor = descriptors.as_bytes[i];
					if(descriptor != 0)
					{
						cpuinfo_x86_decode_cache_descriptor(
							descriptor, vendor, model_info,
							cache,
							itlb_4KB, itlb_2MB, itlb_4MB,
							dtlb0_4KB, dtlb0_2MB, dtlb0_4MB,
							dtlb_4KB, dtlb_2MB, dtlb_4MB, dtlb_1GB,
							stlb2_4KB, stlb2_2MB, stlb2_1GB,
							&cache->prefetch_size);
					}
				}
				if(--iterations != 0)
				{
					descriptors.regs = cpuid(2);
					goto iterate_descriptors;
				}
			}

			if(vendor != cpuinfo_vendor_amd && vendor != cpuinfo_vendor_hygon && max_base_index >= 4)
			{
				cpuid_regs leaf4;
				uint32_t input_ecx = 0;
				uint32_t package_cores_max = 0;
				do
				{
					leaf4 = cpuidex(4, input_ecx++);
				}
				while(cpuinfo_x86_decode_deterministic_cache_parameters(
					leaf4, cache, &package_cores_max));
				if(package_cores_max != 0)
				{
					*log2_package_cores_max = bit_length(package_cores_max);
				}
			}
		}
		if(amd_topology_extensions && max_extended_index >= 0x8000001Dul)
		{
			cpuid_regs leaf0x8000001D;
			uint32_t input_ecx = 0;
			do
			{
				leaf0x8000001D = cpuidex(0x8000001Dul, input_ecx++);
			}
			while(cpuinfo_x86_decode_cache_properties(leaf0x8000001D, cache));
		}
	}

	inline void uX_abi CPUFeatures::cpuinfo_x86_decode_cache_descriptor(uint8_t const descriptor,
																		const enum cpuinfo_vendor vendor,
																		const struct cpuinfo_x86_model_info* model_info,
																		struct cpuinfo_x86_caches* cache,
																		struct cpuinfo_tlb* itlb_4KB,
																		struct cpuinfo_tlb* itlb_2MB,
																		struct cpuinfo_tlb* itlb_4MB,
																		struct cpuinfo_tlb* dtlb0_4KB,
																		struct cpuinfo_tlb* dtlb0_2MB,
																		struct cpuinfo_tlb* dtlb0_4MB,
																		struct cpuinfo_tlb* dtlb_4KB,
																		struct cpuinfo_tlb* dtlb_2MB,
																		struct cpuinfo_tlb* dtlb_4MB,
																		struct cpuinfo_tlb* dtlb_1GB,
																		struct cpuinfo_tlb* stlb2_4KB,
																		struct cpuinfo_tlb* stlb2_2MB,
																		struct cpuinfo_tlb* stlb2_1GB,
																		uint32_t* prefetch_size) uX_noexcept
	{
		/*
		 * Descriptors are parsed according to:
		 * - Application Note 485: Intel Processor Identification and CPUID Instruction, May 2012, Order Number 241618-039
		 * - Intel 64 and IA-32 Architectures Software Developer's Manual, Volume 2 (2A, 2B, 2C & 2D): Instruction Set
		 *   Reference, A-Z, December 2016. Order Number: 325383-061US
		 * - Cyrix CPU Detection Guide, Preliminary Revision 1.01
		 * - Geode(TM) GX1 Processor Series: Low Power Integrated x86 Solution
		 */
		switch(descriptor)
		{
			case 0x01:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4 KByte pages, 4-way set associative, 32 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 4-KB Pages, 4-way set associative, 32 entries"
				 */
				*itlb_4KB = {
					.entries = 32,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0x02:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4 MByte pages, fully associative, 2 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 4-MB Pages, fully associative, 2 entries"
				 */
				*itlb_4MB = {
					.entries = 2,
					.associativity = 2,
					.pages = CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x03:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB: 4 KByte pages, 4-way set associative, 64 entries"
				 * Application Note 485:
				 *     "Data TLB: 4-KB Pages, 4-way set associative, 64 entries"
				 */
				*dtlb_4KB = {
					.entries = 64,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0x04:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB: 4 MByte pages, 4-way set associative, 8 entries"
				 * Application Note 485:
				 *     "Data TLB: 4-MB Pages, 4-way set associative, 8 entries"
				 */
				*dtlb_4MB = {
					.entries = 8,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x05:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB1: 4 MByte pages, 4-way set associative, 32 entries"
				 * Application Note 485:
				 *     "Data TLB: 4-MB Pages, 4-way set associative, 32 entries"
				 */
				*dtlb_4MB = {
					.entries = 32,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x06:
				/*
				 * Intel ISA Reference:
				 *     "1st-level instruction cache: 8 KBytes, 4-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "1st-level instruction cache: 8-KB, 4-way set associative, 32-byte line size"
				 */
				cache->l1i = {
					.size = 8 * 1024,
					.associativity = 4,
					.sets = 64,
					.partitions = 1,
					.line_size = 32,
				};
				break;
			case 0x08:
				/*
				 * Intel ISA Reference:
				 *     "1st-level instruction cache: 16 KBytes, 4-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "1st-level instruction cache: 16-KB, 4-way set associative, 32-byte line size"
				 */
				cache->l1i = {
					.size = 16 * 1024,
					.associativity = 4,
					.sets = 128,
					.partitions = 1,
					.line_size = 32,
				};
				break;
			case 0x09:
				/*
				 * Intel ISA Reference:
				 *     "1st-level instruction cache: 32KBytes, 4-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "1st-level Instruction Cache: 32-KB, 4-way set associative, 64-byte line size"
				 */
				cache->l1i = {
					.size = 32 * 1024,
					.associativity = 4,
					.sets = 128,
					.partitions = 1,
					.line_size = 64,
				};
				break;
			case 0x0A:
				/*
				 * Intel ISA Reference:
				 *     "1st-level data cache: 8 KBytes, 2-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "1st-level data cache: 8-KB, 2-way set associative, 32-byte line size"
				 */
				cache->l1d = {
					.size = 8 * 1024,
					.associativity = 2,
					.sets = 128,
					.partitions = 1,
					.line_size = 32,
				};
				break;
			case 0x0B:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4 MByte pages, 4-way set associative, 4 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 4-MB pages, 4-way set associative, 4 entries"
				 */
				*itlb_4MB = {
					.entries = 4,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x0C:
				/*
				 * Intel ISA Reference:
				 *     "1st-level data cache: 16 KBytes, 4-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "1st-level data cache: 16-KB, 4-way set associative, 32-byte line size"
				 */
				cache->l1d = {
					.size = 16 * 1024,
					.associativity = 4,
					.sets = 128,
					.partitions = 1,
					.line_size = 32,
				};
				break;
			case 0x0D:
				/*
				 * Intel ISA Reference:
				 *     "1st-level data cache: 16 KBytes, 4-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "1st-level Data Cache: 16-KB, 4-way set associative, 64-byte line size"
				 */
				cache->l1d = {
					.size = 16 * 1024,
					.associativity = 4,
					.sets = 64,
					.partitions = 1,
					.line_size = 64,
				};
				break;
			case 0x0E:
				/*
				 * Intel ISA Reference:
				 *     "1st-level data cache: 24 KBytes, 6-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "1st-level Data Cache: 24-KB, 6-way set associative, 64-byte line size"
				 */
				cache->l1d = {
					.size = 24 * 1024,
					.associativity = 6,
					.sets = 64,
					.partitions = 1,
					.line_size = 64,
				};
				break;
			case 0x1D:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 128 KBytes, 2-way set associative, 64 byte line size"
				 */
				cache->l2 = {
					.size = 128 * 1024,
					.associativity = 2,
					.sets = 1024,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
			case 0x21:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 256 KBytes, 8-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 256-KB, 8-way set associative, 64-byte line size"
				 */
				cache->l2 = {
					.size = 256 * 1024,
					.associativity = 8,
					.sets = 512,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x22:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 512 KBytes, 4-way set associative, 64 byte line size, 2 lines per sector"
				 * Application Note 485:
				 *     "3rd-level cache: 512-KB, 4-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l3 = {
					.size = 512 * 1024,
					.associativity = 4,
					.sets = 2048,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x23:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 1 MBytes, 8-way set associative, 64 byte line size, 2 lines per sector"
				 * Application Note 485:
				 *     "3rd-level cache: 1-MB, 8-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l3 = {
					.size = 1024 * 1024,
					.associativity = 8,
					.sets = 2048,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x24:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 1 MBytes, 16-way set associative, 64 byte line size"
				 */
				cache->l2 = {
					.size = 1024 * 1024,
					.associativity = 16,
					.sets = 1024,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x25:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 2 MBytes, 8-way set associative, 64 byte line size, 2 lines per sector"
				 * Application Note 485:
				 *     "3rd-level cache: 2-MB, 8-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l3 = {
					.size = 2 * 1024 * 1024,
					.associativity = 8,
					.sets = 4096,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x29:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 4 MBytes, 8-way set associative, 64 byte line size, 2 lines per sector"
				 * Application Note 485:
				 *     "3rd-level cache: 4-MB, 8-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l3 = {
					.size = 4 * 1024 * 1024,
					.associativity = 8,
					.sets = 8192,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x2C:
				/*
				 * Intel ISA Reference:
				 *     "1st-level data cache: 32 KBytes, 8-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "1st-level data cache: 32-KB, 8-way set associative, 64-byte line size"
				 */
				cache->l1d = {
					.size = 32 * 1024,
					.associativity = 8,
					.sets = 64,
					.partitions = 1,
					.line_size = 64,
				};
				break;
			case 0x30:
				/*
				 * Intel ISA Reference:
				 *     "1st-level instruction cache: 32 KBytes, 8-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "1st-level instruction cache: 32-KB, 8-way set associative, 64-byte line size"
				 */
				cache->l1i = {
					.size = 32 * 1024,
					.associativity = 8,
					.sets = 64,
					.partitions = 1,
					.line_size = 64,
				};
				break;
			case 0x39:
				/* Where does this come from? */
				cache->l2 = {
					.size = 128 * 1024,
					.associativity = 4,
					.sets = 512,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x3A:
				/* Where does this come from? */
				cache->l2 = {
					.size = 192 * 1024,
					.associativity = 6,
					.sets = 512,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x3B:
				/* Where does this come from? */
				cache->l2 = {
					.size = 128 * 1024,
					.associativity = 2,
					.sets = 1024,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x3C:
				/* Where does this come from? */
				cache->l2 = {
					.size = 256 * 1024,
					.associativity = 4,
					.sets = 1024,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x3D:
				/* Where does this come from? */
				cache->l2 = {
					.size = 384 * 1024,
					.associativity = 6,
					.sets = 1024,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x3E:
				/* Where does this come from? */
				cache->l2 = {
					.size = 512 * 1024,
					.associativity = 4,
					.sets = 2048,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x40:
				/*
				 * Intel ISA Reference:
				 *     "No 2nd-level cache or, if processor contains a valid 2nd-level cache, no 3rd-level cache"
				 * Application Note 485:
				 *     "No 2nd-level cache or, if processor contains a valid 2nd-level cache, no 3rd-level cache"
				 */
				break;
			case 0x41:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 128 KBytes, 4-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 128-KB, 4-way set associative, 32-byte line size"
				 */
				cache->l2 = {
					.size = 128 * 1024,
					.associativity = 4,
					.sets = 1024,
					.partitions = 1,
					.line_size = 32,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x42:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 256 KBytes, 4-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 256-KB, 4-way set associative, 32-byte line size"
				 */
				cache->l2 = {
					.size = 256 * 1024,
					.associativity = 4,
					.sets = 2048,
					.partitions = 1,
					.line_size = 32,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x43:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 512 KBytes, 4-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 512-KB, 4-way set associative, 32-byte line size"
				 */
				cache->l2 = {
					.size = 512 * 1024,
					.associativity = 4,
					.sets = 4096,
					.partitions = 1,
					.line_size = 32,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x44:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 1 MByte, 4-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 1-MB, 4-way set associative, 32-byte line size"
				 */
				cache->l2 = {
					.size = 1024 * 1024,
					.associativity = 4,
					.sets = 8192,
					.partitions = 1,
					.line_size = 32,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x45:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 2 MByte, 4-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 2-MB, 4-way set associative, 32-byte line size"
				 */
				cache->l2 = {
					.size = 2 * 1024 * 1024,
					.associativity = 4,
					.sets = 16384,
					.partitions = 1,
					.line_size = 32,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x46:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 4 MByte, 4-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 4-MB, 4-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 4 * 1024 * 1024,
					.associativity = 4,
					.sets = 16384,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x47:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 8 MByte, 8-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 8-MB, 8-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 8 * 1024 * 1024,
					.associativity = 8,
					.sets = 16384,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x48:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 3MByte, 12-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 3-MB, 12-way set associative, 64-byte line size, unified on-die"
				 */
				cache->l2 = {
					.size = 3 * 1024 * 1024,
					.associativity = 12,
					.sets = 4096,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x49:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 4MB, 16-way set associative, 64-byte line size (Intel Xeon processor MP,
				 *      Family 0FH, Model 06H); 2nd-level cache: 4 MByte, 16-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 4-MB, 16-way set associative, 64-byte line size (Intel Xeon processor MP,
				 *      Family 0Fh, Model 06h)
				 *      2nd-level cache: 4-MB, 16-way set associative, 64-byte line size"
				 */
				if((vendor == cpuinfo_vendor_intel) && (model_info->model == 0x06) && (model_info->family == 0x0F))
				{
					cache->l3 = {
						.size = 4 * 1024 * 1024,
						.associativity = 16,
						.sets = 4096,
						.partitions = 1,
						.line_size = 64,
						.flags = CPUINFO_CACHE_INCLUSIVE,
					};
				}
				else
				{
					cache->l2 = {
						.size = 4 * 1024 * 1024,
						.associativity = 16,
						.sets = 4096,
						.partitions = 1,
						.line_size = 64,
						.flags = CPUINFO_CACHE_INCLUSIVE,
					};
				}
				break;
			case 0x4A:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 6MByte, 12-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 6-MB, 12-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 6 * 1024 * 1024,
					.associativity = 12,
					.sets = 8192,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x4B:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 8MByte, 16-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 8-MB, 16-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 8 * 1024 * 1024,
					.associativity = 16,
					.sets = 8192,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x4C:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 12MByte, 12-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 12-MB, 12-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 12 * 1024 * 1024,
					.associativity = 12,
					.sets = 16384,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x4D:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 16MByte, 16-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 16-MB, 16-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 16 * 1024 * 1024,
					.associativity = 16,
					.sets = 16384,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x4E:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 6MByte, 24-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 6-MB, 24-way set associative, 64-byte line size"
				 */
				cache->l2 = {
					.size = 6 * 1024 * 1024,
					.associativity = 24,
					.sets = 4096,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x4F:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4 KByte pages, 32 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 4-KB pages, 32 entries"
				 */
				*itlb_4KB = {
					.entries = 32,
					/* Assume full associativity from nearby entries: manual lacks detail */
					.associativity = 32,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0x50:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4 KByte and 2-MByte or 4-MByte pages, 64 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 4-KB, 2-MB or 4-MB pages, fully associative, 64 entries"
				 */
				*itlb_4KB = *itlb_2MB = *itlb_4MB = {
					.entries = 64,
					.associativity = 64,
					.pages = CPUINFO_PAGE_SIZE_4KB | CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x51:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4 KByte and 2-MByte or 4-MByte pages, 128 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 4-KB, 2-MB or 4-MB pages, fully associative, 128 entries"
				 */
				*itlb_4KB = *itlb_2MB = *itlb_4MB = {
					.entries = 128,
					.associativity = 128,
					.pages = CPUINFO_PAGE_SIZE_4KB | CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x52:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4 KByte and 2-MByte or 4-MByte pages, 256 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 4-KB, 2-MB or 4-MB pages, fully associative, 256 entries"
				 */
				*itlb_4KB = *itlb_2MB = *itlb_4MB = {
					.entries = 256,
					.associativity = 256,
					.pages = CPUINFO_PAGE_SIZE_4KB | CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x55:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 2-MByte or 4-MByte pages, fully associative, 7 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 2-MB or 4-MB pages, fully associative, 7 entries"
				 */
				*itlb_2MB = *itlb_4MB = {
					.entries = 7,
					.associativity = 7,
					.pages = CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x56:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB0: 4 MByte pages, 4-way set associative, 16 entries"
				 * Application Note 485:
				 *     "L1 Data TLB: 4-MB pages, 4-way set associative, 16 entries"
				 */
				*dtlb0_4MB = {
					.entries = 16,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x57:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB0: 4 KByte pages, 4-way associative, 16 entries"
				 * Application Note 485:
				 *     "L1 Data TLB: 4-KB pages, 4-way set associative, 16 entries"
				 */
				*dtlb0_4KB = {
					.entries = 16,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0x59:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB0: 4 KByte pages, fully associative, 16 entries"
				 * Application Note 485:
				 *     "Data TLB0: 4-KB pages, fully associative, 16 entries"
				 */
				*dtlb0_4KB = {
					.entries = 16,
					.associativity = 16,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0x5A:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB0: 2 MByte or 4 MByte pages, 4-way set associative, 32 entries"
				 * Application Note 485:
				 *     "Data TLB0: 2-MB or 4-MB pages, 4-way associative, 32 entries"
				 */
				*dtlb0_2MB = *dtlb0_4MB = {
					.entries = 32,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x5B:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB: 4 KByte and 4 MByte pages, 64 entries"
				 * Application Note 485:
				 *     "Data TLB: 4-KB or 4-MB pages, fully associative, 64 entries"
				 */
				*dtlb_4KB = *dtlb_4MB = {
					.entries = 64,
					.associativity = 64,
					.pages = CPUINFO_PAGE_SIZE_4KB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x5C:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB: 4 KByte and 4 MByte pages, 128 entries"
				 * Application Note 485:
				 *     "Data TLB: 4-KB or 4-MB pages, fully associative, 128 entries"
				 */
				*dtlb_4KB = *dtlb_4MB = {
					.entries = 128,
					.associativity = 128,
					.pages = CPUINFO_PAGE_SIZE_4KB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x5D:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB: 4 KByte and 4 MByte pages, 256 entries"
				 * Application Note 485:
				 *     "Data TLB: 4-KB or 4-MB pages, fully associative, 256 entries"
				 */
				*dtlb_4KB = *dtlb_4MB = {
					.entries = 256,
					.associativity = 256,
					.pages = CPUINFO_PAGE_SIZE_4KB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x60:
				/*
				 * Application Note 485:
				 *     "1st-level data cache: 16-KB, 8-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l1d = {
					.size = 16 * 1024,
					.associativity = 8,
					.sets = 32,
					.partitions = 1,
					.line_size = 64,
				};
				break;
			case 0x61:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4 KByte pages, fully associative, 48 entries"
				 */
				*itlb_4KB = {
					.entries = 48,
					.associativity = 48,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0x63:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB: 2 MByte or 4 MByte pages, 4-way set associative, 32 entries and
				 *      a separate array with 1 GByte pages, 4-way set associative, 4 entries"
				 */
				*dtlb_2MB = *dtlb_4MB = {
					.entries = 32,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				*dtlb_1GB = {
					.entries = 4,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_1GB,
				};
				break;
			case 0x64:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB: 4 KByte pages, 4-way set associative, 512 entries"
				 *
				 */
				*dtlb_4KB = {
					.entries = 512,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0x66:
				/*
				 * Application Note 485:
				 *     "1st-level data cache: 8-KB, 4-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l1d = {
					.size = 8 * 1024,
					.associativity = 4,
					.sets = 32,
					.partitions = 1,
					.line_size = 64,
				};
				break;
			case 0x67:
				/*
				 * Application Note 485:
				 *     "1st-level data cache: 16-KB, 4-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l1d = {
					.size = 16 * 1024,
					.associativity = 4,
					.sets = 64,
					.partitions = 1,
					.line_size = 64,
				};
				break;
			case 0x68:
				/*
				 * Application Note 485:
				 *     "1st-level data cache: 32-KB, 4 way set associative, sectored cache, 64-byte line size"
				 */
				cache->l1d = {
					.size = 32 * 1024,
					.associativity = 4,
					.sets = 128,
					.partitions = 1,
					.line_size = 64,
				};
				break;
			case 0x6A:
				/*
				 * Intel ISA Reference:
				 *     "uTLB: 4 KByte pages, 8-way set associative, 64 entries"
				 */

				/* uTLB is, an fact, a normal 1-level DTLB on Silvermont & Knoghts Landing */
				*dtlb_4KB = {
					.entries = 64,
					.associativity = 8,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0x6B:
				/*
				 * Intel ISA Reference:
				 *     "DTLB: 4 KByte pages, 8-way set associative, 256 entries"
				 */
				*dtlb_4KB = {
					.entries = 256,
					.associativity = 8,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0x6C:
				/*
				 * Intel ISA Reference:
				 *     "DTLB: 2M/4M pages, 8-way set associative, 128 entries"
				 */
				*dtlb_2MB = *dtlb_4MB = {
					.entries = 128,
					.associativity = 8,
					.pages = CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x6D:
				/*
				 * Intel ISA Reference:
				 *     "DTLB: 1 GByte pages, fully associative, 16 entries"
				 */
				*dtlb_1GB = {
					.entries = 16,
					.associativity = 16,
					.pages = CPUINFO_PAGE_SIZE_1GB,
				};
				break;
			case 0x70:
				/*
				 * Intel ISA Reference:
				 *     "Trace cache: 12 K-uop, 8-way set associative"
				 * Application Note 485:
				 *     "Trace cache: 12K-uops, 8-way set associative"
				 * Cyrix CPU Detection Guide and Geode GX1 Processor Series:
				 *     "TLB, 32 entries, 4-way set associative, 4K-Byte Pages"
				 */
				switch(vendor)
				{
#if uX_X86_CPU
					case cpuinfo_vendor_cyrix:
					case cpuinfo_vendor_nsc:
						*dtlb_4KB = *itlb_4KB = {
							.entries = 32,
							.associativity = 4,
							.pages = CPUINFO_PAGE_SIZE_4KB,
						};
						break;
#endif /* uX_X86_CPU */
					default:
						cache->trace = {
							.uops = 12 * 1024,
							.associativity = 8,
						};
				}
				break;
			case 0x71:
				/*
				 * Intel ISA Reference:
				 *     "Trace cache: 16 K-uop, 8-way set associative"
				 * Application Note 485:
				 *     "Trace cache: 16K-uops, 8-way set associative"
				 */
				cache->trace = {
					.uops = 16 * 1024,
					.associativity = 8,
				};
				break;
			case 0x72:
				/*
				 * Intel ISA Reference:
				 *     "Trace cache: 32 K-uop, 8-way set associative"
				 * Application Note 485:
				 *     "Trace cache: 32K-uops, 8-way set associative"
				 */
				cache->trace = {
					.uops = 32 * 1024,
					.associativity = 8,
				};
				break;
			case 0x73:
				/* Where does this come from? */
				cache->trace = {
					.uops = 64 * 1024,
					.associativity = 8,
				};
				break;
			case 0x76:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 2M/4M pages, fully associative, 8 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 2M/4M pages, fully associative, 8 entries"
				 */
				*itlb_2MB = *itlb_4MB = {
					.entries = 8,
					.associativity = 8,
					.pages = CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0x78:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 1 MByte, 4-way set associative, 64byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 1-MB, 4-way set associative, 64-byte line size"
				 */
				cache->l2 = {
					.size = 1024 * 1024,
					.associativity = 4,
					.sets = 4096,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x79:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 128 KByte, 8-way set associative, 64 byte line size, 2 lines per sector"
				 * Application Note 485:
				 *     "2nd-level cache: 128-KB, 8-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l2 = {
					.size = 128 * 1024,
					.associativity = 8,
					.sets = 256,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x7A:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 256 KByte, 8-way set associative, 64 byte line size, 2 lines per sector"
				 * Application Note 485:
				 *     "2nd-level cache: 256-KB, 8-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l2 = {
					.size = 256 * 1024,
					.associativity = 8,
					.sets = 512,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x7B:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 512 KByte, 8-way set associative, 64 byte line size, 2 lines per sector"
				 * Application Note 485:
				 *     "2nd-level cache: 512-KB, 8-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l2 = {
					.size = 512 * 1024,
					.associativity = 8,
					.sets = 1024,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x7C:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 1 MByte, 8-way set associative, 64 byte line size, 2 lines per sector"
				 * Application Note 485:
				 *     "2nd-level cache: 1-MB, 8-way set associative, sectored cache, 64-byte line size"
				 */
				cache->l2 = {
					.size = 1024 * 1024,
					.associativity = 8,
					.sets = 2048,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x7D:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 2 MByte, 8-way set associative, 64byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 2-MB, 8-way set associative, 64-byte line size"
				 */
				cache->l2 = {
					.size = 2 * 1024 * 1024,
					.associativity = 8,
					.sets = 4096,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x7F:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 512 KByte, 2-way set associative, 64-byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 512-KB, 2-way set associative, 64-byte line size"
				 */
				cache->l2 = {
					.size = 512 * 1024,
					.associativity = 2,
					.sets = 4096,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x80:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 512 KByte, 8-way set associative, 64-byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 512-KB, 8-way set associative, 64-byte line size"
				 * Cyrix CPU Detection Guide and Geode GX1 Processor Series:
				 *     "Level 1 Cache, 16K, 4-way set associative, 16 Bytes/Line"
				 */
				switch(vendor)
				{
#if uX_X86_CPU
					case cpuinfo_vendor_cyrix:
					case cpuinfo_vendor_nsc:
						cache->l1i = cache->l1d = {
							.size = 16 * 1024,
							.associativity = 4,
							.sets = 256,
							.partitions = 1,
							.line_size = 16,
							.flags = CPUINFO_CACHE_UNIFIED,
						};
						break;
#endif /* uX_X86_CPU */
					default:
						cache->l2 = {
							.size = 512 * 1024,
							.associativity = 8,
							.sets = 1024,
							.partitions = 1,
							.line_size = 64,
							.flags = CPUINFO_CACHE_INCLUSIVE,
						};
				}
				break;
			case 0x82:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 256 KByte, 8-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 256-KB, 8-way set associative, 32-byte line size"
				 */
				cache->l2 = {
					.size = 256 * 1024,
					.associativity = 4,
					.sets = 2048,
					.partitions = 1,
					.line_size = 32,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x83:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 512 KByte, 8-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 512-KB, 8-way set associative, 32-byte line size"
				 */
				cache->l2 = {
					.size = 512 * 1024,
					.associativity = 8,
					.sets = 2048,
					.partitions = 1,
					.line_size = 32,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x84:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 1 MByte, 8-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 1-MB, 8-way set associative, 32-byte line size"
				 */
				cache->l2 = {
					.size = 1024 * 1024,
					.associativity = 8,
					.sets = 4096,
					.partitions = 1,
					.line_size = 32,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x85:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 2 MByte, 8-way set associative, 32 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 2-MB, 8-way set associative, 32-byte line size"
				 */
				cache->l2 = {
					.size = 2 * 1024 * 1024,
					.associativity = 8,
					.sets = 8192,
					.partitions = 1,
					.line_size = 32,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x86:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 512 KByte, 4-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 512-KB, 4-way set associative, 64-byte line size"
				 */
				cache->l2 = {
					.size = 512 * 1024,
					.associativity = 4,
					.sets = 2048,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0x87:
				/*
				 * Intel ISA Reference:
				 *     "2nd-level cache: 1 MByte, 8-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "2nd-level cache: 1-MB, 8-way set associative, 64-byte line size"
				 */
				cache->l2 = {
					.size = 1024 * 1024,
					.associativity = 8,
					.sets = 2048,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xA0:
				/*
				 * Intel ISA Reference:
				 *     "DTLB: 4k pages, fully associative, 32 entries"
				 */
				*dtlb_4KB = {
					.entries = 32,
					.associativity = 32,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0xB0:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4 KByte pages, 4-way set associative, 128 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 4-KB Pages, 4-way set associative, 128 entries"
				 */
				*itlb_4KB = {
					.entries = 128,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0xB1:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 2M pages, 4-way, 8 entries or 4M pages, 4-way, 4 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 2-MB pages, 4-way, 8 entries or 4M pages, 4-way, 4 entries"
				 */
				*itlb_2MB = {
					.entries = 8,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				*itlb_4MB = {
					.entries = 4,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0xB2:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4KByte pages, 4-way set associative, 64 entries"
				 * Application Note 485:
				 *     "Instruction TLB: 4-KB pages, 4-way set associative, 64 entries"
				 */
				*itlb_4KB = {
					.entries = 64,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0xB3:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB: 4 KByte pages, 4-way set associative, 128 entries"
				 * Application Note 485:
				 *     "Data TLB: 4-KB Pages, 4-way set associative, 128 entries"
				 */
				*dtlb_4KB = {
					.entries = 128,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0xB4:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB1: 4 KByte pages, 4-way associative, 256 entries"
				 * Application Note 485:
				 *     "Data TLB: 4-KB Pages, 4-way set associative, 256 entries"
				 */
				*dtlb_4KB = {
					.entries = 256,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0xB5:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4KByte pages, 8-way set associative, 64 entries"
				 */
				*itlb_4KB = {
					.entries = 64,
					.associativity = 8,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0xB6:
				/*
				 * Intel ISA Reference:
				 *     "Instruction TLB: 4KByte pages, 8-way set associative, 128 entries"
				 */
				*itlb_4KB = {
					.entries = 128,
					.associativity = 8,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0xBA:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB1: 4 KByte pages, 4-way associative, 64 entries"
				 * Application Note 485:
				 *     "Data TLB: 4-KB Pages, 4-way set associative, 64 entries"
				 */
				*itlb_4KB = {
					.entries = 64,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0xC0:
				/*
				 * Intel ISA Reference:
				 *     "Data TLB: 4 KByte and 4 MByte pages, 4-way associative, 8 entries"
				 * Application Note 485:
				 *     "Data TLB: 4-KB or 4-MB Pages, 4-way set associative, 8 entries"
				 */
				*itlb_4KB = *itlb_4MB = {
					.entries = 8,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0xC1:
				/*
				 * Intel ISA Reference:
				 *     "Shared 2nd-Level TLB: 4 KByte/2MByte pages, 8-way associative, 1024 entries"
				 */
				*stlb2_4KB = *stlb2_2MB = {
					.entries = 1024,
					.associativity = 8,
					.pages = CPUINFO_PAGE_SIZE_4KB | CPUINFO_PAGE_SIZE_2MB,
				};
				break;
			case 0xC2:
				/*
				 * Intel ISA Reference:
				 *     "DTLB: 4 KByte/2 MByte pages, 4-way associative, 16 entries"
				 */
				*dtlb_4KB = *dtlb_2MB = {
					.entries = 16,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB | CPUINFO_PAGE_SIZE_2MB,
				};
				break;
			case 0xC3:
				/*
				 * Intel ISA Reference:
				 *     "Shared 2nd-Level TLB: 4 KByte/2 MByte pages, 6-way associative, 1536 entries.
				 *      Also 1GBbyte pages, 4-way, 16 entries."
				 */
				*stlb2_4KB = *stlb2_2MB = {
					.entries = 1536,
					.associativity = 6,
					.pages = CPUINFO_PAGE_SIZE_4KB | CPUINFO_PAGE_SIZE_2MB,
				};
				*stlb2_1GB = {
					.entries = 16,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_1GB,
				};
				break;
			case 0xC4:
				/*
				 * Intel ISA Reference:
				 *     "DTLB: 2M/4M Byte pages, 4-way associative, 32 entries"
				 */
				*dtlb_2MB = *dtlb_4MB = {
					.entries = 32,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_2MB | CPUINFO_PAGE_SIZE_4MB,
				};
				break;
			case 0xCA:
				/*
				 * Intel ISA Reference:
				 *     "Shared 2nd-Level TLB: 4 KByte pages, 4-way associative, 512 entries"
				 * Application Note 485:
				 *     "Shared 2nd-level TLB: 4 KB pages, 4-way set associative, 512 entries"
				 */
				*stlb2_4KB = {
					.entries = 512,
					.associativity = 4,
					.pages = CPUINFO_PAGE_SIZE_4KB,
				};
				break;
			case 0xD0:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 512 KByte, 4-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 512-kB, 4-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 512 * 1024,
					.associativity = 4,
					.sets = 2048,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xD1:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 1 MByte, 4-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 1-MB, 4-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 1024 * 1024,
					.associativity = 4,
					.sets = 4096,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xD2:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 2 MByte, 4-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 2-MB, 4-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 2 * 1024 * 2014,
					.associativity = 4,
					.sets = 8192,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xD6:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 1 MByte, 8-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 1-MB, 8-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 1024 * 1024,
					.associativity = 8,
					.sets = 2048,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xD7:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 2 MByte, 8-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 2-MB, 8-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 2 * 1024 * 1024,
					.associativity = 8,
					.sets = 4096,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xD8:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 4 MByte, 8-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 4-MB, 8-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 4 * 1024 * 1024,
					.associativity = 8,
					.sets = 8192,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xDC:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 1.5 MByte, 12-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 1.5-MB, 12-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 3 * 512 * 1024,
					.associativity = 12,
					.sets = 2048,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xDD:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 3 MByte, 12-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 3-MB, 12-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 3 * 1024 * 1024,
					.associativity = 12,
					.sets = 4096,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xDE:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 6 MByte, 12-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 6-MB, 12-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 6 * 1024 * 1024,
					.associativity = 12,
					.sets = 8192,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xE2:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 2 MByte, 16-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 2-MB, 16-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 2 * 1024 * 1024,
					.associativity = 16,
					.sets = 2048,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xE3:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 4 MByte, 16-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 4-MB, 16-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 4 * 1024 * 1024,
					.associativity = 16,
					.sets = 4096,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xE4:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 8 MByte, 16-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 8-MB, 16-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 8 * 1024 * 1024,
					.associativity = 16,
					.sets = 8192,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xEA:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 12MByte, 24-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 12-MB, 24-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 12 * 1024 * 1024,
					.associativity = 24,
					.sets = 8192,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xEB:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 18MByte, 24-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 18-MB, 24-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 18 * 1024 * 1024,
					.associativity = 24,
					.sets = 12288,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xEC:
				/*
				 * Intel ISA Reference:
				 *     "3rd-level cache: 24MByte, 24-way set associative, 64 byte line size"
				 * Application Note 485:
				 *     "3rd-level cache: 24-MB, 24-way set associative, 64-byte line size"
				 */
				cache->l3 = {
					.size = 24 * 1024 * 1024,
					.associativity = 24,
					.sets = 16384,
					.partitions = 1,
					.line_size = 64,
					.flags = CPUINFO_CACHE_INCLUSIVE,
				};
				break;
			case 0xF0:
				/*
				 * Intel ISA Reference:
				 *     "64-Byte prefetching"
				 * Application Note 485:
				 *     "64-byte Prefetching"
				 */
				cache->prefetch_size = 64;
				break;
			case 0xF1:
				/*
				 * Intel ISA Reference:
				 *     "128-Byte prefetching"
				 * Application Note 485:
				 *     "128-byte Prefetching"
				 */
				cache->prefetch_size = 128;
				break;
		}
	}

	inline uint32_t uX_abi CPUFeatures::bit_length(uint32_t const n) uX_noexcept
	{
		uint32_t const n_minus_1 = n - 1;
		if(n_minus_1 == 0)
		{
			return 0;
		}
		else
		{
#ifdef uX_MSVC_COMPATIBLE_COMPILER
			unsigned long bsr;
			_BitScanReverse(&bsr, n_minus_1);
			return bsr + 1;
#else
			return 32 - __builtin_clz(n_minus_1);
#endif
		}
	}

	inline bool uX_abi CPUFeatures::cpuinfo_x86_decode_deterministic_cache_parameters(cpuid_regs const regs, struct cpuinfo_x86_caches* cache, uint32_t* package_cores_max) uX_noexcept
	{
		uint32_t const type = regs.eax & 0x1Ful;
		if(type == _CACHE_NULL)
		{
			return false;
		}

		/* Level starts at 1 */
		uint32_t const level = (regs.eax >> 5) & 0x7ul;

		uint32_t const sets = 1 + regs.ecx;
		uint32_t const line_size = 1 + (regs.ebx & 0x00000FFFul);
		uint32_t const partitions = 1 + ((regs.ebx >> 12) & 0x000003FFul);
		uint32_t const associativity = 1 + (regs.ebx >> 22);

		*package_cores_max = 1 + (regs.eax >> 26);
		uint32_t const processors = 1 + ((regs.eax >> 14) & 0x00000FFFul);
		uint32_t const apic_bits = bit_length(processors);

		uint32_t flags = 0;
		if(regs.edx & 0x00000002ul)
		{
			flags |= CPUINFO_CACHE_INCLUSIVE;
		}
		if(regs.edx & 0x00000004ul)
		{
			flags |= CPUINFO_CACHE_COMPLEX_INDEXING;
		}
		switch(level)
		{
			case 1:
				switch(type)
				{
					case _CACHE_UNIFIED:
						cache->l1d = cache->l1i = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags | CPUINFO_CACHE_UNIFIED,
							.apic_bits = apic_bits
						};
						break;
					case _CACHE_DATA:
						cache->l1d = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags,
							.apic_bits = apic_bits
						};
						break;
					case _CACHE_INSTRUCTION:
						cache->l1i = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags,
							.apic_bits = apic_bits
						};
						break;
				}
				break;
			case 2:
				switch(type)
				{
					case _CACHE_INSTRUCTION:
						cpuinfo_log_warning("unexpected L2 instruction cache reported in leaf 0x00000004 is ignored");
						break;
					case _CACHE_UNIFIED:
						flags |= CPUINFO_CACHE_UNIFIED;
					case _CACHE_DATA:
						cache->l2 = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags,
							.apic_bits = apic_bits
						};
						break;
				}
				break;
			case 3:
				switch(type)
				{
					case _CACHE_INSTRUCTION:
						cpuinfo_log_warning("unexpected L3 instruction cache reported in leaf 0x00000004 is ignored");
						break;
					case _CACHE_UNIFIED:
						flags |= CPUINFO_CACHE_UNIFIED;
					case _CACHE_DATA:
						cache->l3 = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags,
							.apic_bits = apic_bits
						};
						break;
				}
				break;
			case 4:
				switch(type)
				{
					case _CACHE_INSTRUCTION:
						cpuinfo_log_warning("unexpected L4 instruction cache reported in leaf 0x00000004 is ignored");
						break;
					case _CACHE_UNIFIED:
						flags |= CPUINFO_CACHE_UNIFIED;
					case _CACHE_DATA:
						cache->l4 = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags,
							.apic_bits = apic_bits
						};
						break;
				}
				break;
			default:
				cpuinfo_log_warning("unexpected L%ul cache reported in leaf 0x00000004 is ignored", level);
				break;
		}
		return true;
	}

	inline bool uX_abi CPUFeatures::cpuinfo_x86_decode_cache_properties(cpuid_regs const regs, struct cpuinfo_x86_caches* cache) uX_noexcept
	{
		uint32_t const type = regs.eax & 0x1Ful;
		if(type == _CACHE_NULL)
		{
			return false;
		}

		uint32_t const level = (regs.eax >> 5) & 0x7ul;
		uint32_t const cores = 1 + ((regs.eax >> 14) & 0x00000FFFul);
		uint32_t const apic_bits = bit_length(cores);

		uint32_t const sets = 1 + regs.ecx;
		uint32_t const line_size = 1 + (regs.ebx & 0x00000FFFul);
		uint32_t const partitions = 1 + ((regs.ebx >> 12) & 0x000003FFul);
		uint32_t const associativity = 1 + (regs.ebx >> 22);

		uint32_t flags = 0;
		if(regs.edx & 0x00000002ul)
		{
			flags |= CPUINFO_CACHE_INCLUSIVE;
		}

		switch(level)
		{
			case 1:
				switch(type)
				{
					case _CACHE_UNIFIED:
						cache->l1d = cache->l1i = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags | CPUINFO_CACHE_UNIFIED,
							.apic_bits = apic_bits
						};
						break;
					case _CACHE_DATA:
						cache->l1d = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags,
							.apic_bits = apic_bits
						};
						break;
					case _CACHE_INSTRUCTION:
						cache->l1i = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags,
							.apic_bits = apic_bits
						};
						break;
				}
				break;
			case 2:
				switch(type)
				{
					case _CACHE_INSTRUCTION:
						cpuinfo_log_warning("unexpected L2 instruction cache reported in leaf 0x8000001D is ignored");
						break;
					case _CACHE_UNIFIED:
						flags |= CPUINFO_CACHE_UNIFIED;
					case _CACHE_DATA:
						cache->l2 = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags,
							.apic_bits = apic_bits
						};
						break;
				}
				break;
			case 3:
				switch(type)
				{
					case _CACHE_INSTRUCTION:
						cpuinfo_log_warning("unexpected L3 instruction cache reported in leaf 0x8000001D is ignored");
						break;
					case _CACHE_UNIFIED:
						flags |= CPUINFO_CACHE_UNIFIED;
					case _CACHE_DATA:
						cache->l3 = {
							.size = associativity * partitions * line_size * sets,
							.associativity = associativity,
							.sets = sets,
							.partitions = partitions,
							.line_size = line_size,
							.flags = flags,
							.apic_bits = apic_bits
						};
						break;
				}
				break;
			default:
				cpuinfo_log_warning("unexpected L%ul cache reported in leaf 0x8000001D is ignored", level);
				break;
		}
		return true;
	}

	inline parser_state const uX_abi CPUFeatures::kEmptyparser_state(void) uX_noexcept
	{
		static parser_state const kEmptyx86parser_state;
		return kEmptyx86parser_state;
	}

	/* Resets information about the previous token. Keeps all other state information. */
	inline void uX_abi CPUFeatures::reset_context(struct parser_state* state) uX_noexcept
	{
		state->context_model = nullptr;
		state->context_upper_letter = nullptr;
		state->context_dual = nullptr;
		state->context_core = nullptr;
	}

	/* Overwrites the supplied string with space characters if it exactly matches the given string. */
	inline bool uX_abi CPUFeatures::erase_matching(char* string, size_t length, char const* target) uX_noexcept
	{
		bool const match = memcmp(string, target, length) == 0;
		if(match)
		{
			memset(string, ' ', length);
		}
		return match;
	}

	/* Checks if the supplied ASCII character is an uppercase latin letter. */
	inline bool uX_abi CPUFeatures::is_upper_letter(char character) uX_noexcept
	{
		return (uint32_t)(character - 'A') <= (uint32_t)('Z' - 'A');
	}

	/* Checks if the supplied ASCII character is a digit. */
	inline bool uX_abi CPUFeatures::is_digit(char character) uX_noexcept
	{
		return (uint32_t)(character - '0') < 10ul;
	}

	inline bool uX_abi CPUFeatures::is_zero_number(char const* token_start, char const* token_end) uX_noexcept
	{
		for(char const* char_ptr = token_start; char_ptr != token_end; char_ptr++)
		{
			if(*char_ptr != '0')
			{
				return false;
			}
		}
		return true;
	}

	inline bool uX_abi CPUFeatures::is_space(char const* token_start, char const* token_end) uX_noexcept
	{
		for(char const* char_ptr = token_start; char_ptr != token_end; char_ptr++)
		{
			if(*char_ptr != ' ')
			{
				return false;
			}
		}
		return true;
	}

	inline bool uX_abi CPUFeatures::is_number(char const* token_start, char const* token_end) uX_noexcept
	{
		for(char const* char_ptr = token_start; char_ptr != token_end; char_ptr++)
		{
			if(!is_digit(*char_ptr))
			{
				return false;
			}
		}
		return true;
	}

	inline bool uX_abi CPUFeatures::is_model_number(char const* token_start, char const* token_end) uX_noexcept
	{
		for(char const* char_ptr = token_start + 1; char_ptr < token_end; char_ptr++)
		{
			if(is_digit(char_ptr[-1]) && is_digit(char_ptr[0]))
			{
				return true;
			}
		}
		return false;
	}

	inline bool uX_abi CPUFeatures::is_frequency(char const* token_start, char const* token_end) uX_noexcept
	{
		const size_t token_length = (size_t)(token_end - token_start);
		if(token_length > 3 && token_end[-2] == 'H' && token_end[-1] == 'z')
		{
			switch(token_end[-3])
			{
				case 'K':
				case 'M':
				case 'G':
					return true;
			}
		}
		return false;
	}

	/* warning	Input and output tokens can overlap */
	inline char* uX_abi CPUFeatures::move_token(char const* token_start, char const* token_end, char* output_ptr) uX_noexcept
	{
		const size_t token_length = (size_t)(token_end - token_start);
		memmove(output_ptr, token_start, token_length);
		return output_ptr + token_length;
	}

	inline bool uX_abi CPUFeatures::transform_token(char* token_start, char* token_end, struct parser_state* state) uX_noexcept
	{
		const struct parser_state previousState = *state;
		reset_context(state);

		size_t token_length = (size_t)(token_end - token_start);

		if(state->frequency_separator != nullptr)
		{
			if(token_start > state->frequency_separator)
			{
				if(state->parsed_model_number)
				{
					memset(token_start, ' ', token_length);
				}
			}
		}

		/* Early AMD and Cyrix processors have "tm" suffix for trademark, e.g.
		 *   "AMD-K6tm w/ multimedia extensions"
		 *   "Cyrix MediaGXtm MMXtm Enhanced"
		 */
		if(token_length > 2)
		{
			const char context_char = token_end[-3];
			if(is_digit(context_char) || is_upper_letter(context_char))
			{
				if(erase_matching(token_end - 2, 2, "tm"))
				{
					token_end -= 2;
					token_length -= 2;
				}
			}
		}
		if(token_length > 4)
		{
			/* Some early AMD CPUs have "AMD-" at the beginning, e.g.
			 *   "AMD-K5(tm) Processor"
			 *   "AMD-K6tm w/ multimedia extensions"
			 *   "AMD-K6(tm) 3D+ Processor"
			 *   "AMD-K6(tm)-III Processor"
			 */
			if(erase_matching(token_start, 4, "AMD-"))
			{
				token_start += 4;
				token_length -= 4;
			}
		}
		switch(token_length)
		{
			case 1:
				/*
				 * On some Intel processors there is a space between the first letter of
				 * the name and the number after it, e.g.
				 *   "Intel(R) Core(TM) i7 CPU X 990  @ 3.47GHz"
				 *   "Intel(R) Core(TM) CPU Q 820  @ 1.73GHz"
				 * We want to merge these parts together, in reverse order, i.e. "X 990" -> "990X", "820" -> "820Q"
				 */
				if(is_upper_letter(token_start[0]))
				{
					state->context_upper_letter = token_start;
					return true;
				}
				break;
			case 2:
				/* Erase everything after "w/" in "AMD-K6tm w/ multimedia extensions" */
				if(erase_matching(token_start, token_length, "w/"))
				{
					return false;
				}
				/*
				 * Intel Xeon processors since Ivy Bridge use versions, e.g.
				 *   "Intel Xeon E3-1230 v2"
				 * Some processor branch strings report them as "V<N>", others report as "v<N>".
				 * Normalize the former (upper-case) to the latter (lower-case) version
				 */
				if(token_start[0] == 'V' && is_digit(token_start[1]))
				{
					token_start[0] = 'v';
					return true;
				}
				break;
			case 3:
				/*
				 * Erase "CPU" in brand string on Intel processors, e.g.
				 *  "Intel(R) Core(TM) i5 CPU         650  @ 3.20GHz"
				 *  "Intel(R) Xeon(R) CPU           X3210  @ 2.13GHz"
				 *  "Intel(R) Atom(TM) CPU Z2760  @ 1.80GHz"
				 */
				if(erase_matching(token_start, token_length, "CPU"))
				{
					return true;
				}
				/*
				 * Erase everywhing after "SOC" on AMD System-on-Chips, e.g.
				 *  "AMD GX-212JC SOC with Radeon(TM) R2E Graphics  \0"
				 */
				if(erase_matching(token_start, token_length, "SOC"))
				{
					return false;
				}
				/*
				 * Erase "AMD" in brand string on AMD processors, e.g.
				 *  "AMD Athlon(tm) Processor"
				 *  "AMD Engineering Sample"
				 *  "Quad-Core AMD Opteron(tm) Processor 2344 HE"
				 */
				if(erase_matching(token_start, token_length, "AMD"))
				{
					return true;
				}
				/*
				 * Erase "VIA" in brand string on VIA processors, e.g.
				 *   "VIA C3 Ezra"
				 *   "VIA C7-M Processor 1200MHz"
				 *   "VIA Nano L3050@1800MHz"
				 */
				if(erase_matching(token_start, token_length, "VIA"))
				{
					return true;
				}
				/* Erase "IDT" in brand string on early Centaur processors, e.g. "IDT WinChip 2-3D" */
				if(erase_matching(token_start, token_length, "IDT"))
				{
					return true;
				}
				/*
				 * Erase everything starting with "MMX" in
				 * "Cyrix MediaGXtm MMXtm Enhanced" ("tm" suffix is removed by this point)
				 */
				if(erase_matching(token_start, token_length, "MMX"))
				{
					return false;
				}
				/*
				 * Erase everything starting with "APU" on AMD processors, e.g.
				 *   "AMD A10-4600M APU with Radeon(tm) HD Graphics"
				 *   "AMD A10-7850K APU with Radeon(TM) R7 Graphics"
				 *   "AMD A6-6310 APU with AMD Radeon R4 Graphics"
				 */
				if(erase_matching(token_start, token_length, "APU"))
				{
					return false;
				}
				/*
				 * Remember to discard string if it contains "Eng Sample",
				 * e.g. "Eng Sample, ZD302046W4K43_36/30/20_2/8_A"
				 */
				if(memcmp(token_start, "Eng", token_length) == 0)
				{
					state->context_engineering = token_start;
				}
				break;
			case 4:
				/* Remember to erase "Dual Core" in "AMD Athlon(tm) 64 X2 Dual Core Processor 3800+" */
				if(memcmp(token_start, "Dual", token_length) == 0)
				{
					state->context_dual = token_start;
				}
				/* Remember if the processor is on Xeon family */
				if(memcmp(token_start, "Xeon", token_length) == 0)
				{
					state->xeon = true;
				}
				/* Erase "Dual Core" in "AMD Athlon(tm) 64 X2 Dual Core Processor 3800+" */
				if(previousState.context_dual != nullptr)
				{
					if(memcmp(token_start, "Core", token_length) == 0)
					{
						memset(previousState.context_dual, ' ', (size_t)(token_end - previousState.context_dual));
						state->context_core = token_end;
						return true;
					}
				}
				break;
			case 5:
				/*
				 * Erase "Intel" in brand string on Intel processors, e.g.
				 *   "Intel(R) Xeon(R) CPU X3210 @ 2.13GHz"
				 *   "Intel(R) Atom(TM) CPU D2700 @ 2.13GHz"
				 *   "Genuine Intel(R) processor 800MHz"
				 */
				if(erase_matching(token_start, token_length, "Intel"))
				{
					return true;
				}
				/*
				 * Erase "Cyrix" in brand string on Cyrix processors, e.g.
				 *   "Cyrix MediaGXtm MMXtm Enhanced"
				 */
				if(erase_matching(token_start, token_length, "Cyrix"))
				{
					return true;
				}
				/*
				 * Erase everything following "Geode" (but not "Geode" token itself) on Geode processors, e.g.
				 *   "Geode(TM) Integrated Processor by AMD PCS"
				 *   "Geode(TM) Integrated Processor by National Semi"
				 */
				if(memcmp(token_start, "Geode", token_length) == 0)
				{
					return false;
				}
				/* Remember to erase "model unknown" in "AMD Processor model unknown" */
				if(memcmp(token_start, "model", token_length) == 0)
				{
					state->context_model = token_start;
					return true;
				}
				break;
			case 6:
				/*
				 * Erase everything starting with "Radeon" or "RADEON" on AMD APUs, e.g.
				 *   "A8-7670K Radeon R7, 10 Compute Cores 4C+6G"
				 *   "FX-8800P Radeon R7, 12 Compute Cores 4C+8G"
				 *   "A12-9800 RADEON R7, 12 COMPUTE CORES 4C+8G"
				 *   "A9-9410 RADEON R5, 5 COMPUTE CORES 2C+3G"
				 */
				if(erase_matching(token_start, token_length, "Radeon") || erase_matching(token_start, token_length, "RADEON"))
				{
					return false;
				}
				/*
				 * Erase "Mobile" when it is not part of the processor name,
				 * e.g. in "AMD Turion(tm) X2 Ultra Dual-Core Mobile ZM-82"
				 */
				if(previousState.context_core != nullptr)
				{
					if(erase_matching(token_start, token_length, "Mobile"))
					{
						return true;
					}
				}
				/* Erase "family" in "Intel(R) Pentium(R) III CPU family 1266MHz" */
				if(erase_matching(token_start, token_length, "family"))
				{
					return true;
				}
				/* Discard the string if it contains "Engineering Sample" */
				if(previousState.context_engineering != nullptr)
				{
					if(memcmp(token_start, "Sample", token_length) == 0)
					{
						state->engineering_sample = true;
						return false;
					}
				}
				break;
			case 7:
				/*
				 * Erase "Geniune" in brand string on Intel engineering samples, e.g.
				 *   "Genuine Intel(R) processor 800MHz"
				 *   "Genuine Intel(R) CPU @ 2.13GHz"
				 *   "Genuine Intel(R) CPU 0000 @ 1.73GHz"
				 */
				if(erase_matching(token_start, token_length, "Genuine"))
				{
					return true;
				}
				/*
				 * Erase "12-core" in brand string on AMD Threadripper, e.g.
				 *   "AMD Ryzen Threadripper 1920X 12-Core Processor"
				 */
				if(erase_matching(token_start, token_length, "12-Core"))
				{
					return true;
				}
				/*
				 * Erase "16-core" in brand string on AMD Threadripper, e.g.
				 *   "AMD Ryzen Threadripper 1950X 16-Core Processor"
				 */
				if(erase_matching(token_start, token_length, "16-Core"))
				{
					return true;
				}
				/* Erase "model unknown" in "AMD Processor model unknown" */
				if(previousState.context_model != nullptr)
				{
					if(memcmp(token_start, "unknown", token_length) == 0)
					{
						memset(previousState.context_model, ' ', token_end - previousState.context_model);
						return true;
					}
				}
				/*
				 * Discard the string if it contains "Eng Sample:" or "Eng Sample," e.g.
				 *   "AMD Eng Sample, ZD302046W4K43_36/30/20_2/8_A"
				 *   "AMD Eng Sample: 2D3151A2M88E4_35/31_N"
				 */
				if(previousState.context_engineering != nullptr)
				{
					if(memcmp(token_start, "Sample,", token_length) == 0 || memcmp(token_start, "Sample:", token_length) == 0)
					{
						state->engineering_sample = true;
						return false;
					}
				}
				break;
			case 8:
				/* Erase "QuadCore" in "VIA QuadCore L4700 @ 1.2+ GHz" */
				if(erase_matching(token_start, token_length, "QuadCore"))
				{
					state->context_core = token_end;
					return true;
				}
				/* Erase "Six-Core" in "AMD FX(tm)-6100 Six-Core Processor" */
				if(erase_matching(token_start, token_length, "Six-Core"))
				{
					state->context_core = token_end;
					return true;
				}
				break;
			case 9:
				if(erase_matching(token_start, token_length, "Processor"))
				{
					return true;
				}
				if(erase_matching(token_start, token_length, "processor"))
				{
					return true;
				}
				/* Erase "Dual-Core" in "Pentium(R) Dual-Core CPU T4200 @ 2.00GHz" */
				if(erase_matching(token_start, token_length, "Dual-Core"))
				{
					state->context_core = token_end;
					return true;
				}
				/* Erase "Quad-Core" in AMD processors, e.g.
				 *   "Quad-Core AMD Opteron(tm) Processor 2347 HE"
				 *   "AMD FX(tm)-4170 Quad-Core Processor"
				 */
				if(erase_matching(token_start, token_length, "Quad-Core"))
				{
					state->context_core = token_end;
					return true;
				}
				/* Erase "Transmeta" in brand string on Transmeta processors, e.g.
				 *   "Transmeta(tm) Crusoe(tm) Processor TM5800"
				 *   "Transmeta Efficeon(tm) Processor TM8000"
				 */
				if(erase_matching(token_start, token_length, "Transmeta"))
				{
					return true;
				}
				break;
			case 10:
				/*
				 * Erase "Eight-Core" in AMD processors, e.g.
				 *   "AMD FX(tm)-8150 Eight-Core Processor"
				 */
				if(erase_matching(token_start, token_length, "Eight-Core"))
				{
					state->context_core = token_end;
					return true;
				}
				break;
			case 11:
				/*
				 * Erase "Triple-Core" in AMD processors, e.g.
				 *   "AMD Phenom(tm) II N830 Triple-Core Processor"
				 *   "AMD Phenom(tm) 8650 Triple-Core Processor"
				 */
				if(erase_matching(token_start, token_length, "Triple-Core"))
				{
					state->context_core = token_end;
					return true;
				}
				/*
				 * Remember to discard string if it contains "Engineering Sample",
				 * e.g. "AMD Engineering Sample"
				 */
				if(memcmp(token_start, "Engineering", token_length) == 0)
				{
					state->context_engineering = token_start;
					return true;
				}
				break;
		}
		if(is_zero_number(token_start, token_end))
		{
			memset(token_start, ' ', token_length);
			return true;
		}
		/* On some Intel processors the last letter of the name is put before the number,
		 * and an additional space it added, e.g.
		 *   "Intel(R) Core(TM) i7 CPU X 990  @ 3.47GHz"
		 *   "Intel(R) Core(TM) CPU Q 820  @ 1.73GHz"
		 *   "Intel(R) Core(TM) i5 CPU M 480  @ 2.67GHz"
		 * We fix this issue, i.e. "X 990" -> "990X", "Q 820" -> "820Q"
		 */
		if(previousState.context_upper_letter != 0)
		{
			/* A single letter token followed by 2-to-5 digit letter is merged together */
			switch(token_length)
			{
				case 2:
				case 3:
				case 4:
				case 5:
					if(is_number(token_start, token_end))
					{
						/* Load the previous single-letter token */
						const char letter = *previousState.context_upper_letter;
						/* Erase the previous single-letter token */
						*previousState.context_upper_letter = ' ';
						/* Move the current token one position to the left */
						move_token(token_start, token_end, token_start - 1);
						token_start -= 1;
						/*
						 * Add the letter on the end
						 * Note: accessing token_start[-1] is safe because this is not the first token
						 */
						token_end[-1] = letter;
					}
			}
		}
		if(state->frequency_separator != nullptr)
		{
			if(is_model_number(token_start, token_end))
			{
				state->parsed_model_number = true;
			}
		}
		if(is_frequency(token_start, token_end))
		{
			state->frequency_token = true;
		}
		return true;
	}

	inline uint32_t uX_abi CPUFeatures::cpuinfo_x86_normalize_brand_string(char const raw_name[CPUINFO_PACKAGE_NAME_MAX], char normalized_name[CPUINFO_PACKAGE_NAME_MAX]) uX_noexcept
	{
		normalized_name[0] = '\0';
		char name[CPUINFO_PACKAGE_NAME_MAX];
		memcpy(name, raw_name, sizeof(name));

		/*
		 * First find the end of the string
		 * Start search from the end because some brand strings contain zeroes in the middle
		 */
		char* name_end = &name[CPUINFO_PACKAGE_NAME_MAX];
		while(name_end[-1] == '\0')
		{
			/*
			 * Adject name_end by 1 position and check that we didn't reach the start of the brand string.
			 * This is possible if all characters are zero.
			 */
			if(--name_end == name)
			{
				/* All characters are zeros */
				return 0;
			}
		}

		struct parser_state parserstate = kEmptyparser_state();

		/* Now unify all whitespace characters: replace tabs and '\0' with spaces */
		{
			bool inside_parentheses = false;
			for(char* char_ptr = name; char_ptr != name_end; char_ptr++)
			{
				switch(*char_ptr)
				{
					case '(':
						inside_parentheses = true;
						*char_ptr = ' ';
						break;
					case ')':
						inside_parentheses = false;
						*char_ptr = ' ';
						break;
					case '@':
						parserstate.frequency_separator = char_ptr;
					case '\0':
					case '\t':
						*char_ptr = ' ';
						break;
					default:
						if(inside_parentheses)
						{
							*char_ptr = ' ';
						}
				}
			}
		}

		/* Iterate through all tokens and erase redundant parts */
		{
			bool is_token = false;
			char* token_start;
			for(char* char_ptr = name; char_ptr != name_end; char_ptr++)
			{
				if(*char_ptr == ' ')
				{
					if(is_token)
					{
						is_token = false;
						if(!transform_token(token_start, char_ptr, &parserstate))
						{
							name_end = char_ptr;
							break;
						}
					}
				}
				else
				{
					if(!is_token)
					{
						is_token = true;
						token_start = char_ptr;
					}
				}
			}
			if(is_token)
			{
				transform_token(token_start, name_end, &parserstate);
			}
		}

		/* If this is an engineering sample, return empty string */
		if(parserstate.engineering_sample)
		{
			return 0;
		}

		/* Check if there is some string before the frequency separator. */
		if(parserstate.frequency_separator != nullptr)
		{
			if(is_space(name, parserstate.frequency_separator))
			{
				/* If only frequency is available, return empty string */
				return 0;
			}
		}

		/* Compact tokens: collapse multiple spacing into one */
		{
			char* output_ptr = normalized_name;
			char* token_start;
			bool is_token = false;
			bool previous_token_ends_with_dash = true;
			bool current_token_starts_with_dash = false;
			uint32_t token_count = 1;
			for(char* char_ptr = name; char_ptr != name_end; char_ptr++)
			{
				const char character = *char_ptr;
				if(character == ' ')
				{
					if(is_token)
					{
						is_token = false;
						if(!current_token_starts_with_dash && !previous_token_ends_with_dash)
						{
							token_count += 1;
							*output_ptr++ = ' ';
						}
						output_ptr = move_token(token_start, char_ptr, output_ptr);
						/* Note: char_ptr[-1] exists because there is a token before this space */
						previous_token_ends_with_dash = (char_ptr[-1] == '-');
					}
				}
				else
				{
					if(!is_token)
					{
						is_token = true;
						token_start = char_ptr;
						current_token_starts_with_dash = (character == '-');
					}
				}
			}
			if(is_token)
			{
				if(!current_token_starts_with_dash && !previous_token_ends_with_dash)
				{
					token_count += 1;
					*output_ptr++ = ' ';
				}
				output_ptr = move_token(token_start, name_end, output_ptr);
			}
			if(parserstate.frequency_token && token_count <= 1)
			{
				/* The only remaining part is frequency */
				normalized_name[0] = '\0';
				return 0;
			}
			if(output_ptr < &normalized_name[CPUINFO_PACKAGE_NAME_MAX])
			{
				*output_ptr = '\0';
			}
			else
			{
				normalized_name[47] = '\0';
			}
			return (uint32_t)(output_ptr - normalized_name);
		}
	}

	inline char const* const uX_abi CPUFeatures::get_vendor_string_map(const enum cpuinfo_vendor vendor) uX_noexcept
	{
		switch(vendor)
		{
			case cpuinfo_vendor_intel:
				return vendor_string_map_t::_cpuinfo_vendor_intel;
			case cpuinfo_vendor_amd:
				return vendor_string_map_t::_cpuinfo_vendor_amd;
			case cpuinfo_vendor_via:
				return vendor_string_map_t::_cpuinfo_vendor_via;
			case cpuinfo_vendor_hygon:
				return vendor_string_map_t::_cpuinfo_vendor_hygon;
			case cpuinfo_vendor_rdc:
				return vendor_string_map_t::_cpuinfo_vendor_rdc;
			case cpuinfo_vendor_dmp:
				return vendor_string_map_t::_cpuinfo_vendor_dmp;
			case cpuinfo_vendor_transmeta:
				return vendor_string_map_t::_cpuinfo_vendor_transmeta;
			case cpuinfo_vendor_cyrix:
				return vendor_string_map_t::_cpuinfo_vendor_cyrix;
			case cpuinfo_vendor_rise:
				return vendor_string_map_t::_cpuinfo_vendor_rise;
			case cpuinfo_vendor_nsc:
				return vendor_string_map_t::_cpuinfo_vendor_nsc;
			case cpuinfo_vendor_sis:
				return vendor_string_map_t::_cpuinfo_vendor_sis;
			case cpuinfo_vendor_nexgen:
				return vendor_string_map_t::_cpuinfo_vendor_nexgen;
			case cpuinfo_vendor_umc:
				return vendor_string_map_t::_cpuinfo_vendor_umc;
			default:
				return nullptr;
		}
	}

	inline uint32_t uX_abi CPUFeatures::cpuinfo_x86_format_package_name(const enum cpuinfo_vendor vendor, char const normalized_brand_string[CPUINFO_PACKAGE_NAME_MAX], char package_name[CPUINFO_PACKAGE_NAME_MAX]) uX_noexcept
	{
		if(normalized_brand_string[0] == '\0')
		{
			package_name[0] = '\0';
			return 0;
		}

		char const* const vendor_string = get_vendor_string_map(vendor);
		if(vendor_string == nullptr)
		{
			strncpy(package_name, normalized_brand_string, CPUINFO_PACKAGE_NAME_MAX);
			package_name[CPUINFO_PACKAGE_NAME_MAX - 1] = '\0';
			return 0;
		}
		else
		{
			snprintf(package_name, CPUINFO_PACKAGE_NAME_MAX,
				"%s %s", vendor_string, normalized_brand_string);
			return (uint32_t)strlen(vendor_string) + 1;
		}
	}

uX_PACK_POP
uX_EXTERNCC_END
namespace_x86_end
namespace_cpu_end
namespace_uX_end

#endif /*uX_X86_OR_X64_CPU*/

#endif // uX_SIMD_DETECT_INL
