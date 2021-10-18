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

#ifndef uX_CPU_H
#define uX_CPU_H 1

#ifndef uX_TYPES_H
#include "../../types.h"
#endif  /* uX_TYPES_H */

#if defined(uX_X86_OR_X64_CPU)

#ifndef _MINWINDEF_
#include "minwindef.h"
#endif  /* _MINWINDEF_ */

#ifndef uX_LOG_H
#include "../../log.h"
#endif  /* uX_LOG_H */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// Features

/* Features in ECX for level 1 */
#define bit_SSE3        0x00000001
#define bit_PCLMUL      0x00000002
#define bit_DTES64      0x00000004
#define bit_MONITOR     0x00000008
#define bit_DSCPL       0x00000010
#define bit_VMX         0x00000020
#define bit_LZCNT       0x00000020
#define bit_SMX         0x00000040
#define bit_EIST        0x00000080
#define bit_TM2         0x00000100
#define bit_SSSE3       0x00000200
#define bit_CNXTID      0x00000400
#define bit_FMA         0x00001000
#define bit_CMPXCHG16B  0x00002000
#define bit_xTPR        0x00004000
#define bit_PDCM        0x00008000
#define bit_PCID        0x00020000
#define bit_DCA         0x00040000
#define bit_SSE4_1       0x00080000
#define bit_SSE4_2       0x00100000
#define bit_x2APIC      0x00200000
#define bit_MOVBE       0x00400000
#define bit_POPCNT      0x00800000
#define bit_TSCDeadline 0x01000000
#define bit_AESNI       0x02000000
#define bit_AES         0x02000000
#define bit_XSAVE       0x04000000
#define bit_OSXSAVE     0x08000000
#define bit_AVX         0x10000000
#define bit_F16C        0x20000000
#define bit_RDRAND      0x40000000
#define bit_RDRND       0x40000000

/* Features in EDX for level 1 */
#define bit_FPU         0x00000001
#define bit_VME         0x00000002
#define bit_DE          0x00000004
#define bit_PSE         0x00000008
#define bit_TSC         0x00000010
#define bit_MSR         0x00000020
#define bit_PAE         0x00000040
#define bit_MCE         0x00000080
#define bit_CX8         0x00000100
#define bit_CMPXCHG8B   0x00000100
#define bit_APIC        0x00000200
#define bit_SEP         0x00000800
#define bit_MTRR        0x00001000
#define bit_PGE         0x00002000
#define bit_MCA         0x00004000
#define bit_CMOV        0x00008000
#define bit_PAT         0x00010000
#define bit_PSE36       0x00020000
#define bit_PSN         0x00040000
#define bit_CLFSH       0x00080000
#define bit_DS          0x00200000
#define bit_ACPI        0x00400000
#define bit_MMX         0x00800000
#define bit_FXSR        0x01000000
#define bit_FXSAVE      0x01000000
#define bit_SSE         0x02000000
#define bit_SSE2        0x04000000
#define bit_SS          0x08000000
#define bit_HTT         0x10000000
#define bit_TM          0x20000000
#define bit_PBE         0x80000000

/* Extended Features */
/* ECX */
#define bit_LAHF_LM     0x00000001
#define bit_ABM         0x00000020
#define bit_SSE4A       0x00000040
#define bit_PRFCHW      0x00000100
#define bit_XOP         0x00000800
#define bit_LWP         0x00008000
#define bit_FMA4        0x00010000
#define bit_TBM         0x00200000

/* EDX */
#define bit_MMXEXT      0x00400000
#define bit_LM          0x20000000
#define bit_3DNOWP      0x40000000
#define bit_3DNOW       0x80000000

/* Extended Features (%eax == 7) */
/* EBX  level 7 sub-leaf 0 */
#define bit_FSGSBASE    0x00000001
#define bit_BMI         0x00000008
#define bit_HLE         0x00000010
#define bit_AVX2        0x00000020
#define bit_SMEP        0x00000080
#define bit_BMI2        0x00000100
#define bit_ENH_MOVSB   0x00000200
#define bit_RTM         0x00000800
#define bit_AVX512F     0x00010000
#define bit_AVX512DQ    0x00020000
#define bit_RDSEED      0x00040000
#define bit_ADX         0x00080000
#define bit_CLFLUSHOPT  0x00800000
#define bit_AVX512PF    0x04000000
#define bit_AVX512ER    0x08000000
#define bit_AVX512CD    0x10000000
#define bit_SHA         0x20000000
#define bit_AVX512BW    0x40000000
#define bit_AVX512VL    0x80000000

/* ECX */
#define bit_PREFETCHWT1   0x00000001

/* Extended State Enumeration Sub-leaf (%eax == 13, ECX == 1) */
#define bit_XSAVEOPT    0x00000001
#define bit_XSAVEC      0x00000002
#define bit_XSAVES      0x00000008
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* Signatures for different CPU implementations as returned in uses
of cpuid with level 0. */

// AMD vendor strings: "AuthenticAMD", "AMDisbetter!", "AMD ISBETTER"
#define sign_Auth_AMD_ebx   0x68747541 /* h t u A */
#define sign_cAMD_AMD_ecx   0x444d4163 /* D M A c */
#define sign_enti_AMD_edx   0x69746e65 /* i t n e */

#define sign_AMDi_AMD_ebx   0x69444d41 /* i D M A */
#define sign_ter__AMD_ecx   0x21726574 /* ! r e t */
#define sign_sbet_AMD_edx   0x74656273 /* t e b s */

#define sign_AMD__AMD_ebx   0x20444d41 /*   D M A */
#define sign_TTER_AMD_ecx   0x45425349 /* R E T T */
#define sign_ISBE_AMD_edx   0x52455454 /* E B S I */

// VIA (Centaur) vendor strings: "CentaurHauls", "VIA VIA VIA "
#define sign_Cent_CENTAUR_ebx   0x746e6543 /* t n e C */
#define sign_auls_CENTAUR_ecx   0x736c7561 /* s l u a */
#define sign_aurH_CENTAUR_edx   0x48727561 /* H r u a */

#define sign_VIA_ebx    0x20414956 /* A I V */
#define sign_VIA_ecx    0x20414956 /* A I V */
#define sign_VIA_edx    0x20414956 /* A I V */

// Cyrix vendor string: "CyrixInstead"
#define sign_Cyri_CYRIX_ebx 0x69727943 /* i r y C */
#define sign_tead_CYRIX_ecx 0x64616574 /* d a e t */
#define sign_xIns_CYRIX_edx 0x736e4978 /* s n I x */

// Intel vendor string: "GenuineIntel"
#define sign_Genu_INTEL_ebx 0x756e6547 /* u n e G */
#define sign_ntel_INTEL_ecx 0x6c65746e /* l e t n */
#define sign_ineI_INTEL_edx 0x49656e69 /* I e n i */

// Transmeta vendor strings: "GenuineTMx86", "TransmetaCPU"
#define sign_Tran_TM1_ebx   0x6e617254 /* n a r T */
#define sign_aCPU_TM1_ecx   0x55504361 /* U P C a */
#define sign_smet_TM1_edx   0x74656d73 /* t e m s */

#define sign_Genu_TM2_ebx   0x756e6547 /* u n e G */
#define sign_Mx86_TM2_ecx   0x3638784d /* 6 8 x M */
#define sign_ineT_TM2_edx   0x54656e69 /* T e n i */

// NSC vendor string: "Geode by NSC"
#define sign_Geod_NSC_ebx   0x646f6547 /* d o e G */
#define sign_NSC__NSC_ecx   0x43534e20 /*   C S N */
#define sign_e_by_NSC_edx   0x79622065 /* y b   e */

// NexGen vendor string: "NexGenDriven"
#define sign_NexG_NEXGEN_ebx    0x4778654e /* G x e N */
#define sign_iven_NEXGEN_ecx    0x6e657669 /* n e v i */
#define sign_enDr_NEXGEN_edx    0x72446e65 /* r D n e */

// Rise vendor string: "RiseRiseRise"
#define sign_Rise_RISE_ebx  0x65736952 /* e s i R */
#define sign_Rise_RISE_ecx  0x65736952 /* e s i R */
#define sign_Rise_RISE_edx  0x65736952 /* e s i R */

// SiS vendor string: "SiS SiS SiS "
#define sign_Sis_SIS_ebx    0x20536953 /* S i S */
#define sign_Sis_SIS_ecx    0x20536953 /* S i S */
#define sign_Sis_SIS_edx    0x20536953 /* S i S */

// UMC vendor string: "UMC UMC UMC "
#define sign_UMC_ebx    0x20434d55 /* C M U */
#define sign_UMC_ecx    0x20434d55 /* C M U */
#define sign_UMC_edx    0x20434d55 /* C M U */

// D&MP vendor string: "Vortex86 SoC"
#define sign_Vort_VORTuX_ebx    0x74726f56 /* t r O V */
#define sign_SoC__VORTuX_ecx    0x436f5320 /*   C o S */
#define sign_ex86_VORTuX_edx    0x36387865 /* 6 8 x e */

// RDC vendor string: "Genuine  RDC"
#define sign_Genu_RDC_ebx   0x756e6547 /* u n e G */
#define sign__RDC_RDC_ecx   0x43445220 /*   C D R */
#define sign_ine__RDC_edx   0x20656e69 /*   e n i */

#ifndef MASK_XMM
#define MASK_XMM 0x2
#endif
#ifndef MASK_YMM
#define MASK_YMM 0x4
#endif
#ifndef MASK_MASKREG
#define MASK_MASKREG 0x20
#endif
#ifndef MASK_ZMM0_15
#define MASK_ZMM0_15 0x40
#endif
#ifndef MASK_ZMM16_31
#define MASK_ZMM16_31 0x80
#endif
#ifndef MASK_XTILECFG
#define MASK_XTILECFG 0x20000
#endif
#ifndef MASK_XTILEDATA
#define MASK_XTILEDATA 0x40000
#endif

// CPUID Vendors
#define CPU_FEATURES_VENDOR_GENUINE_INTEL "GenuineIntel"
#define CPU_FEATURES_VENDOR_AUTHENTIC_AMD "AuthenticAMD"
#define CPU_FEATURES_VENDOR_HYGON_GENUINE "HygonGenuine"

// Increase this value if more cache levels are needed.
#ifndef CPU_FEATURES_MAX_CACHE_LEVEL
#define CPU_FEATURES_MAX_CACHE_LEVEL 10
#endif

#define CPUINFO_CACHE_UNIFIED          0x00000001
#define CPUINFO_CACHE_INCLUSIVE        0x00000002
#define CPUINFO_CACHE_COMPLEX_INDEXING 0x00000004

#define CPUINFO_PAGE_SIZE_4KB  0x1000
#define CPUINFO_PAGE_SIZE_1MB  0x100000
#define CPUINFO_PAGE_SIZE_2MB  0x200000
#define CPUINFO_PAGE_SIZE_4MB  0x400000
#define CPUINFO_PAGE_SIZE_16MB 0x1000000
#define CPUINFO_PAGE_SIZE_1GB  0x40000000

#define CPUINFO_PACKAGE_NAME_MAX 48

#endif // defined(uX_X86_OR_X64_CPU)

#if defined(uX_X86_OR_X64_CPU)

uX_EXTERNCC_BEGIN
namespace_uX
namespace_cpu
namespace_x86
uX_PACK_PUSH_SIZE_T

typedef enum CacheType : uint8_t
{
	_CACHE_NULL			= 0,
	_CACHE_DATA			= 1,
	_CACHE_INSTRUCTION	= 2,
	_CACHE_UNIFIED		= 3,
	_CACHE_TLB			= 4,
	_CACHE_DTLB			= 5,
	_CACHE_STLB			= 6,
	_CACHE_PREFETCH		= 7
} CacheType_t;

typedef struct CacheLevelInfo
{
	int level;
	CacheType cache_type;
	int cache_size;    // Cache size in bytes
	int ways;          // Associativity, 0 undefined, 0xFF fully associative
	int line_size;     // Cache line size in bytes
	int tlb_entries;   // number of entries for TLB
	int partitioning;  // number of lines per sector
} CacheLevelInfo_t;

typedef struct CacheInfo
{
	int size;
	CacheLevelInfo levels[CPU_FEATURES_MAX_CACHE_LEVEL];
} CacheInfo_t;

// A struct to hold the result of a call to cpuid.
typedef union Leaf
{
	struct
	{
		uint32_t eax, ebx, ecx, edx;
	};
	struct
	{
		uint64_t rax, rdx;
	};
	int data[4];
} Leaf_t;

typedef struct cpuinfo_cache
{
	uint32_t size;
	uint32_t associativity;
	uint32_t sets;
	uint32_t partitions;
	uint32_t line_size;
	uint32_t flags;
	uint32_t processor_start;
	uint32_t processor_count;
} cpuinfo_cache_t;

typedef struct cpuinfo_trace_cache
{
	uint32_t uops;
	uint32_t associativity;
} cpuinfo_trace_cache_t;

typedef struct cpuinfo_tlb
{
	uint32_t entries;
	uint32_t associativity;
	uint64_t pages;
} cpuinfo_tlb_t;

/** Vendor of processor core design */
typedef enum cpuinfo_vendor : uint8_t
{
	/** Processor vendor is not known to the library, or the library failed to get vendor information from the OS. */
	cpuinfo_vendor_unknown = 0,

	/* Active vendors of modern CPUs */

	/**
	 * Intel Corporation. Vendor of x86, x86-64, IA64, and ARM processor microarchitectures.
	 *
	 * Sold its ARM design subsidiary in 2006. The last ARM processor design was released in 2004.
	 */
	cpuinfo_vendor_intel    = 1,
	/** Advanced Micro Devices, Inc. Vendor of x86 and x86-64 processor microarchitectures. */
	cpuinfo_vendor_amd      = 2,
	/**
	 * VIA Technologies, Inc. Vendor of x86 and x86-64 processor microarchitectures.
	 *
	 * Processors are designed by Centaur Technology, a subsidiary of VIA Technologies.
	 */
	cpuinfo_vendor_via      = 11,
	/**
	 * Hygon (Chengdu Haiguang Integrated Circuit Design Co., Ltd), Vendor of x86-64 processor microarchitectures.
	 *
	 * Processors are variants of AMD cores.
	 */
	cpuinfo_vendor_hygon    = 16,

	/* Active vendors of embedded CPUs */

	/** RDC Semiconductor Co., Ltd. Vendor of x86 processor microarchitectures. */
	cpuinfo_vendor_rdc               = 32,
	/** DM&P Electronics Inc. Vendor of x86 processor microarchitectures. */
	cpuinfo_vendor_dmp               = 33,

	/* Defunct CPU vendors */

	/**
	 * Transmeta Corporation. Vendor of x86 processor microarchitectures.
	 *
	 * Now defunct. The last processor design was released in 2004.
	 * Transmeta processors implemented VLIW ISA and used binary translation to execute x86 code.
	 */
	cpuinfo_vendor_transmeta = 50,
	/**
	 * Cyrix Corporation. Vendor of x86 processor microarchitectures.
	 *
	 * Now defunct. The last processor design was released in 1996.
	 */
	cpuinfo_vendor_cyrix     = 51,
	/**
	 * Rise Technology. Vendor of x86 processor microarchitectures.
	 *
	 * Now defunct. The last processor design was released in 1999.
	 */
	cpuinfo_vendor_rise      = 52,
	/**
	 * National Semiconductor. Vendor of x86 processor microarchitectures.
	 *
	 * Sold its x86 design subsidiary in 1999. The last processor design was released in 1998.
	 */
	cpuinfo_vendor_nsc       = 53,
	/**
	 * Silicon Integrated Systems. Vendor of x86 processor microarchitectures.
	 *
	 * Sold its x86 design subsidiary in 2001. The last processor design was released in 2001.
	 */
	cpuinfo_vendor_sis       = 54,
	/**
	 * NexGen. Vendor of x86 processor microarchitectures.
	 *
	 * Now defunct. The last processor design was released in 1994.
	 * NexGen designed the first x86 microarchitecture which decomposed x86 instructions into simple microoperations.
	 */
	cpuinfo_vendor_nexgen    = 55,
	/**
	 * United Microelectronics Corporation. Vendor of x86 processor microarchitectures.
	 *
	 * Ceased x86 in the early 1990s. The last processor design was released in 1991.
	 * Designed U5C and U5D processors. Both are 486 level.
	 */
	cpuinfo_vendor_umc       = 56
} cpuinfo_vendor_t;

typedef const struct vendor_string_map
{
	static uX_constexpr char const _cpuinfo_vendor_intel[6] = "Intel";
	static uX_constexpr char const _cpuinfo_vendor_amd[4] = "AMD";
	static uX_constexpr char const _cpuinfo_vendor_via[4] = "VIA";
	static uX_constexpr char const _cpuinfo_vendor_hygon[6] = "Hygon";
	static uX_constexpr char const _cpuinfo_vendor_rdc[4] = "RDC";
	static uX_constexpr char const _cpuinfo_vendor_dmp[5] = "DM&P";
	static uX_constexpr char const _cpuinfo_vendor_transmeta[10] = "Transmeta";
	static uX_constexpr char const _cpuinfo_vendor_cyrix[6] = "Cyrix";
	static uX_constexpr char const _cpuinfo_vendor_rise[5] = "Rise";
	static uX_constexpr char const _cpuinfo_vendor_nsc[4] = "NSC";
	static uX_constexpr char const _cpuinfo_vendor_sis[4] = "SiS";
	static uX_constexpr char const _cpuinfo_vendor_nexgen[7] = "NexGen";
	static uX_constexpr char const _cpuinfo_vendor_umc[4] = "UMC";
} vendor_string_map_t;

/**
 * Processor microarchitecture
 *
 * Processors with different microarchitectures often have different instruction performance characteristics,
 * and may have dramatically different pipeline organization.
 */
typedef enum cpuinfo_uarch : uint32_t
{
	/** Microarchitecture is unknown, or the library failed to get information about the microarchitecture from OS */
	cpuinfo_uarch_unknown = 0,

	/** Pentium and Pentium MMX microarchitecture. */
	cpuinfo_uarch_p5    = 0x00100100,
	/** Intel Quark microarchitecture. */
	cpuinfo_uarch_quark = 0x00100101,

	/** Pentium Pro, Pentium II, and Pentium III. */
	cpuinfo_uarch_p6           = 0x00100200,
	/** Pentium M. */
	cpuinfo_uarch_dothan       = 0x00100201,
	/** Intel Core microarchitecture. */
	cpuinfo_uarch_yonah        = 0x00100202,
	/** Intel Core 2 microarchitecture on 65 nm process. */
	cpuinfo_uarch_conroe       = 0x00100203,
	/** Intel Core 2 microarchitecture on 45 nm process. */
	cpuinfo_uarch_penryn       = 0x00100204,
	/** Intel Nehalem and Westmere microarchitectures (Core i3/i5/i7 1st gen). */
	cpuinfo_uarch_nehalem      = 0x00100205,
	/** Intel Sandy Bridge microarchitecture (Core i3/i5/i7 2nd gen). */
	cpuinfo_uarch_sandy_bridge = 0x00100206,
	/** Intel Ivy Bridge microarchitecture (Core i3/i5/i7 3rd gen). */
	cpuinfo_uarch_ivy_bridge   = 0x00100207,
	/** Intel Haswell microarchitecture (Core i3/i5/i7 4th gen). */
	cpuinfo_uarch_haswell      = 0x00100208,
	/** Intel Broadwell microarchitecture. */
	cpuinfo_uarch_broadwell    = 0x00100209,
	/** Intel Sky Lake microarchitecture (14 nm, including Kaby/Coffee/Whiskey/Amber/Comet/Cascade/Cooper Lake). */
	cpuinfo_uarch_sky_lake     = 0x0010020A,
	/** DEPRECATED (Intel Kaby Lake microarchitecture). */
	cpuinfo_uarch_kaby_lake    = 0x0010020A,
	/** Intel Palm Cove microarchitecture (10 nm, Cannon Lake). */
	cpuinfo_uarch_palm_cove    = 0x0010020B,
	/** Intel Sunny Cove microarchitecture (10 nm, Ice Lake). */
	cpuinfo_uarch_sunny_cove   = 0x0010020C,

	/** Pentium 4 with Willamette, Northwood, or Foster cores. */
	cpuinfo_uarch_willamette = 0x00100300,
	/** Pentium 4 with Prescott and later cores. */
	cpuinfo_uarch_prescott   = 0x00100301,

	/** Intel Atom on 45 nm process. */
	cpuinfo_uarch_bonnell       = 0x00100400,
	/** Intel Atom on 32 nm process. */
	cpuinfo_uarch_saltwell      = 0x00100401,
	/** Intel Silvermont microarchitecture (22 nm out-of-order Atom). */
	cpuinfo_uarch_silvermont    = 0x00100402,
	/** Intel Airmont microarchitecture (14 nm out-of-order Atom). */
	cpuinfo_uarch_airmont       = 0x00100403,
	/** Intel Goldmont microarchitecture (Denverton, Apollo Lake). */
	cpuinfo_uarch_goldmont      = 0x00100404,
	/** Intel Goldmont Plus microarchitecture (Gemini Lake). */
	cpuinfo_uarch_goldmont_plus = 0x00100405,

	/** Intel Knights Ferry HPC boards. */
	cpuinfo_uarch_knights_ferry   = 0x00100500,
	/** Intel Knights Corner HPC boards (aka Xeon Phi). */
	cpuinfo_uarch_knights_corner  = 0x00100501,
	/** Intel Knights Landing microarchitecture (second-gen MIC). */
	cpuinfo_uarch_knights_landing = 0x00100502,
	/** Intel Knights Hill microarchitecture (third-gen MIC). */
	cpuinfo_uarch_knights_hill    = 0x00100503,
	/** Intel Knights Mill Xeon Phi. */
	cpuinfo_uarch_knights_mill    = 0x00100504,

	/** AMD K5. */
	cpuinfo_uarch_k5        = 0x00200100,
	/** AMD K6 and alike. */
	cpuinfo_uarch_k6        = 0x00200101,
	/** AMD Athlon and Duron. */
	cpuinfo_uarch_k7        = 0x00200102,
	/** AMD Athlon 64, Opteron 64. */
	cpuinfo_uarch_k8        = 0x00200103,
	/** AMD Family 10h (Barcelona, Istambul, Magny-Cours). */
	cpuinfo_uarch_k10       = 0x00200104,
	/**
	 * AMD Bulldozer microarchitecture
	 * Zambezi FX-series CPUs, Zurich, Valencia and Interlagos Opteron CPUs.
	 */
	cpuinfo_uarch_bulldozer = 0x00200105,
	/**
	 * AMD Piledriver microarchitecture
	 * Vishera FX-series CPUs, Trinity and Richland APUs, Delhi, Seoul, Abu Dhabi Opteron CPUs.
	 */
	cpuinfo_uarch_piledriver  = 0x00200106,
	/** AMD Steamroller microarchitecture (Kaveri APUs). */
	cpuinfo_uarch_steamroller = 0x00200107,
	/** AMD Excavator microarchitecture (Carizzo APUs). */
	cpuinfo_uarch_excavator   = 0x00200108,
	/** AMD Zen microarchitecture (12/14 nm Ryzen and EPYC CPUs). */
	cpuinfo_uarch_zen         = 0x00200109,
	/** AMD Zen 2 microarchitecture (7 nm Ryzen and EPYC CPUs). */
	cpuinfo_uarch_zen2        = 0x0020010A,
	/** AMD Zen 3 microarchitecture. */
	cpuinfo_uarch_zen3        = 0x0020010B,

	/** NSC Geode and AMD Geode GX and LX. */
	cpuinfo_uarch_geode  = 0x00200200,
	/** AMD Bobcat mobile microarchitecture. */
	cpuinfo_uarch_bobcat = 0x00200201,
	/** AMD Jaguar mobile microarchitecture. */
	cpuinfo_uarch_jaguar = 0x00200202,
	/** AMD Puma mobile microarchitecture. */
	cpuinfo_uarch_puma   = 0x00200203,

	/* Hygon Dhyana (a modification of AMD Zen for Chinese market). */
	cpuinfo_uarch_dhyana = 0x01000100
} cpuinfo_uarch_t;

typedef struct cpuinfo_processor
{
	/** SMT (hyperthread) ID within a core */
	uint32_t smt_id;
	/** Core containing this logical processor */
	const struct cpuinfo_core* core;
	/** Cluster of cores containing this logical processor */
	const struct cpuinfo_cluster* cluster;
	/** Physical package containing this logical processor */
	const struct cpuinfo_package* package;
#if defined(uX_LINUX)
	/**
	 * Linux-specific ID for the logical processor:
	 * - Linux kernel exposes information about this logical processor in /sys/devices/system/cpu/cpu<linux_id>/
	 * - Bit <linux_id> in the cpu_set_t identifies this logical processor
	 */
	int linux_id;
#endif
#if defined(uX_WINDOWS)
	/** Windows-specific ID for the group containing the logical processor. */
	uint16_t windows_group_id;
	/**
	 * Windows-specific ID of the logical processor within its group:
	 * - Bit <windows_processor_id> in the KAFFINITY mask identifies this logical processor within its group.
	 */
	uint16_t windows_processor_id;
#endif
	/** APIC ID (unique x86-specific ID of the logical processor) */
	uint32_t apic_id;
	struct
	{
		/** Level 1 instruction cache */
		const struct cpuinfo_cache* l1i;
		/** Level 1 data cache */
		const struct cpuinfo_cache* l1d;
		/** Level 2 unified or data cache */
		const struct cpuinfo_cache* l2;
		/** Level 3 unified or data cache */
		const struct cpuinfo_cache* l3;
		/** Level 4 unified or data cache */
		const struct cpuinfo_cache* l4;
	} cache;
} cpuinfo_processor_t;

typedef struct cpuinfo_core
{
/** Index of the first logical processor on this core. */
	uint32_t processor_start;
	/** Number of logical processors on this core */
	uint32_t processor_count;
	/** Core ID within a package */
	uint32_t core_id;
	/** Cluster containing this core */
	const struct cpuinfo_cluster* cluster;
	/** Physical package containing this core. */
	const struct cpuinfo_package* package;
	/** Vendor of the CPU microarchitecture for this core */
	enum cpuinfo_vendor vendor;
	/** CPU microarchitecture for this core */
	enum cpuinfo_uarch uarch;
	/** Value of CPUID leaf 1 EAX register for this core */
	uint32_t cpuid;
	/** Clock rate (non-Turbo) of the core, in Hz */
	uint64_t frequency;
} cpuinfo_core_t;

typedef struct cpuinfo_cluster
{
	/** Index of the first logical processor in the cluster */
	uint32_t processor_start;
	/** Number of logical processors in the cluster */
	uint32_t processor_count;
	/** Index of the first core in the cluster */
	uint32_t core_start;
	/** Number of cores on the cluster */
	uint32_t core_count;
	/** Cluster ID within a package */
	uint32_t cluster_id;
	/** Physical package containing the cluster */
	const struct cpuinfo_package* package;
	/** CPU microarchitecture vendor of the cores in the cluster */
	enum cpuinfo_vendor vendor;
	/** CPU microarchitecture of the cores in the cluster */
	enum cpuinfo_uarch uarch;
	/** Value of CPUID leaf 1 EAX register of the cores in the cluster */
	uint32_t cpuid;
	/** Clock rate (non-Turbo) of the cores in the cluster, in Hz */
	uint64_t frequency;
} cpuinfo_cluster_t;

typedef struct cpuinfo_package
{
/** SoC or processor chip model name */
	char name[CPUINFO_PACKAGE_NAME_MAX];
	/** Index of the first logical processor on this physical package */
	uint32_t processor_start;
	/** Number of logical processors on this physical package */
	uint32_t processor_count;
	/** Index of the first core on this physical package */
	uint32_t core_start;
	/** Number of cores on this physical package */
	uint32_t core_count;
	/** Index of the first cluster of cores on this physical package */
	uint32_t cluster_start;
	/** Number of clusters of cores on this physical package */
	uint32_t cluster_count;
} cpuinfo_package_t;

typedef struct cpuinfo_uarch_info
{
/** Type of CPU microarchitecture */
	enum cpuinfo_uarch uarch;
	/** Value of CPUID leaf 1 EAX register for the microarchitecture */
	uint32_t cpuid;
	/** Number of logical processors with the microarchitecture */
	uint32_t processor_count;
	/** Number of cores with the microarchitecture */
	uint32_t core_count;
} cpuinfo_uarch_info_t;

typedef struct Features
{
	/* EAX = 01H, ECX */
	/*bit 0*/	/*Intel/AMD*/							int SSE3:1;			int DAZ:1;
	/*bit 1*/	/*Intel/AMD*/							int PCLMULQDQ:1;
	/*bit 2*/	/*Intel*/			/*AMD Reserved*/	int DTES64:1;
	/*bit 3*/	/*Intel/AMD*/							int MONITOR:1;
	/*bit 4*/	/*Intel*/			/*AMD Reserved*/	int DS_CPL:1;
	/*bit 5*/	/*Intel*/			/*AMD Reserved*/	int VMX:1;
	/*bit 6*/	/*Intel*/			/*AMD Reserved*/	int SMX:1;
	/*bit 7*/	/*Intel*/			/*AMD Reserved*/	int EIST:1;
	/*bit 8*/	/*Intel*/			/*AMD Reserved*/	int TM2:1;
	/*bit 9*/	/*Intel/AMD*/							int SSSE3:1;
	/*bit 10*/	/*Intel*/			/*AMD Reserved*/	int CNXT_ID:1;
	/*bit 11*/	/*Intel*/			/*AMD Reserved*/	int SDBG:1;
	/*bit 12*/	/*Intel/AMD*/							int FMA3:1;
	/*bit 13*/	/*Intel/AMD*/							int CMPXCHG16B:1;
	/*bit 14*/	/*Intel*/			/*AMD Reserved*/	int xTPR:1;
	/*bit 15*/	/*Intel*/			/*AMD Reserved*/	int PDCM:1;
	/*bit 16*/	/*Intel/AMD Reserved*/
	/*bit 17*/	/*Intel/AMD*/							int PCID:1;
	/*bit 18*/	/*Intel*/			/*AMD Reserved*/	int DCA:1;
	/*bit 19*/	/*Intel/AMD*/							int SSE4_1:1;
	/*bit 20*/	/*Intel/AMD*/							int SSE4_2:1;
	/*bit 21*/	/*Intel/AMD*/							int x2APIC:1;
	/*bit 22*/	/*Intel/AMD*/							int MOVBE:1;
	/*bit 23*/	/*Intel/AMD*/							int POPCNT:1;
	/*bit 24*/	/*Intel*/			/*AMD Reserved*/	int TSC_Deadline:1;
	/*bit 25*/	/*Intel/AMD*/							int AES:1;
	/*bit 26*/	/*Intel/AMD*/							int XSAVE:1;
	/*bit 27*/	/*Intel/AMD*/							int OSXSAVE:1;
	/*bit 28*/	/*Intel/AMD*/							int AVX:1;
	/*bit 29*/	/*Intel/AMD*/							int F16C:1;
	/*bit 30*/	/*Intel/AMD*/							int RDRAND:1;
	/*bit 31*/	/*Intel/AMD Reserved for hypervisor*/;

	/* EAX = 01H, EDX */
	/*bit 0*/	/*Intel/AMD*/							int FPU:1;
	/*bit 1*/	/*Intel/AMD*/							int VME:1;
	/*bit 2*/	/*Intel/AMD*/							int DE:1;
	/*bit 3*/	/*Intel/AMD*/							int PSE:1;
	/*bit 4*/	/*Intel/AMD*/							int TSC:1;
	/*bit 5*/	/*Intel/AMD*/							int MSR:1;
	/*bit 6*/	/*Intel/AMD*/							int PAE:1;
	/*bit 7*/	/*Intel/AMD*/							int MCE:1;
	/*bit 8*/	/*Intel/AMD*/							int CMPXCHG8B:1;
	/*bit 9*/	/*Intel/AMD*/							int APIC:1;
	/*bit 10*/	/*Intel/AMD Reserved*/
	/*bit 11*/	/*Intel/AMD*/							int SEP:1;
	/*bit 12*/	/*Intel/AMD*/							int MTRR:1;
	/*bit 13*/	/*Intel/AMD*/							int PGE:1;
	/*bit 14*/	/*Intel/AMD*/							int MCA:1;
	/*bit 15*/	/*Intel/AMD*/							int CMOV:1;
	/*bit 16*/	/*Intel/AMD*/							int PAT:1;
	/*bit 17*/	/*Intel/AMD*/							int PSE36:1;
	/*bit 18*/	/*Intel*/			/*AMD Reserved*/	int PSN:1;
	/*bit 19*/	/*Intel/AMD*/							int CLFSH:1;
	/*bit 20*/	/*Intel/AMD Reserved*/
	/*bit 21*/	/*Intel*/			/*AMD Reserved*/	int DS:1;
	/*bit 22*/	/*Intel*/			/*AMD Reserved*/	int ACPI:1;
	/*bit 23*/	/*Intel/AMD*/							int MMX:1;
	/*bit 24*/	/*Intel/AMD*/							int FXSR:1;
	/*bit 25*/	/*Intel/AMD*/							int SSE:1;
	/*bit 26*/	/*Intel/AMD*/							int SSE2:1;
	/*bit 27*/	/*Intel*/			/*AMD Reserved*/	int SS:1;
	/*bit 28*/	/*Intel/AMD*/							int HTT:1;
	/*bit 29*/	/*Intel*/			/*AMD Reserved*/	int TM:1;
	/*bit 30*/	/*Intel/AMD Reserved*/
	/*bit 31*/	/*Intel*/			/*AMD Reserved*/	int PBE:1;

	/* EAX = 07H, EBX */
	/*bit 0*/	/*Intel/AMD*/							int FSGSBASE:1;
	/*bit 1*/	/*Intel*/			/*AMD Reserved*/	int IA32_TSC_ADJUST:1;
	/*bit 2*/	/*Intel*/			/*AMD Reserved*/	int SGX:1;
	/*bit 3*/	/*Intel/AMD*/							int BMI1:1;
	/*bit 4*/	/*Intel*/			/*AMD Reserved*/	int HLE:1;
	/*bit 5*/	/*Intel/AMD*/							int AVX2:1;
	/*bit 6*/	/*Intel*/			/*AMD Reserved*/	int FDP_EXCPTN_ONLY:1;
	/*bit 7*/	/*Intel/AMD*/							int SMEP:1;
	/*bit 8*/	/*Intel/AMD*/							int BMI2:1;
	/*bit 9*/	/*Intel*/			/*AMD Reserved*/	int ERMS:1;
	/*bit 10*/	/*Intel/AMD*/							int INVPCID:1;
	/*bit 11*/	/*Intel*/			/*AMD Reserved*/	int RTM:1;				int XTEST:1;
	/*bit 12*/	/*Intel*/			/*AMD Reserved*/	int RDT_M:1;
	/*bit 13*/	/*Intel*/			/*AMD Reserved*/	int DEP_FPU:1;
	/*bit 14*/	/*Intel*/			/*AMD Reserved*/	int MPX:1;
	/*bit 15*/	/*Intel*/			/*AMD Reserved*/	int RDT_A:1;
	/*bit 16*/	/*Intel*/			/*AMD Reserved*/	int AVX512F:1;
	/*bit 17*/	/*Intel*/			/*AMD Reserved*/	int AVX512DQ:1;
	/*bit 18*/	/*Intel/AMD*/							int RDSEED:1;
	/*bit 19*/	/*Intel/AMD*/							int ADX:1;
	/*bit 20*/	/*Intel/AMD*/							int SMAP:1;
	/*bit 21*/	/*Intel*/			/*AMD Reserved*/	int AVX512_IFMA:1;
	/*bit 22*/	/*Intel/AMD Reserved*/
	/*bit 23*/	/*Intel/AMD*/							int CLFLUSHOPT:1;
	/*bit 24*/	/*Intel/AMD*/							int CLWB:1;
	/*bit 25*/	/*Intel*/			/*AMD Reserved*/	int IP_TRACE:1;
	/*bit 26*/	/*Intel*/			/*AMD Reserved*/	int AVX512PF:1;
	/*bit 27*/	/*Intel*/			/*AMD Reserved*/	int AVX512ER:1;
	/*bit 28*/	/*Intel*/			/*AMD Reserved*/	int AVX512CD:1;
	/*bit 29*/	/*Intel/AMD*/							int SHA:1;
	/*bit 30*/	/*Intel*/			/*AMD Reserved*/	int AVX512BW:1;
	/*bit 31*/	/*Intel*/			/*AMD Reserved*/	int AVX512VL:1;

	/* EAX = 07H, ECX */
	/*bit 0*/	/*Intel*/			/*AMD Reserved*/	int PREFETCHWT1:1;
	/*bit 1*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VBMI:1;
	/*bit 2*/	/*Intel/AMD*/							int UMIP:1;
	/*bit 3*/	/*Intel/AMD*/							int PKU:1;
	/*bit 4*/	/*Intel/AMD*/							int OSPKE:1;
	/*bit 5*/	/*Intel*/			/*AMD Reserved*/	int WAITPKG:1;
	/*bit 6*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VBMI2:1;
	/*bit 7*/	/*Intel/AMD*/							int CET_SS:1;
	/*bit 8*/	/*Intel*/			/*AMD Reserved*/	int GFNI:1;
	/*bit 9*/	/*Intel/AMD*/							int VAES:1;
	/*bit 10*/	/*Intel/AMD*/							int VPCLMULQDQ:1;
	/*bit 11*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VNNI:1;
	/*bit 12*/	/*Intel*/			/*AMD Reserved*/	int AVX512_BITALG:1;
	/*bit 13*/	/*Intel*/			/*AMD Reserved*/	int TME_EN:1;
	/*bit 14*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VPOPCNTDQ:1;
	/*bit 15*/	/*Intel/AMD Reserved*/
	/*bit 16*/	/*Intel*/			/*AMD Reserved*/	int LA57:1;
	/*bit 17*/	/*Intel MAWAU value */	/*AMD Reserved*/
	/*bit 18*/	/*Intel MAWAU value */	/*AMD Reserved*/
	/*bit 19*/	/*Intel MAWAU value */	/*AMD Reserved*/
	/*bit 20*/	/*Intel MAWAU value */	/*AMD Reserved*/
	/*bit 21*/	/*Intel MAWAU value */	/*AMD Reserved*/
	/*bit 22*/	/*Intel/AMD*/							int RDPID:1;
	/*bit 23*/	/*Intel*/			/*AMD Reserved*/	int KL:1;
	/*bit 24*/	/*Intel/AMD Reserved*/
	/*bit 25*/	/*Intel*/			/*AMD Reserved*/	int CLDEMOTE:1;
	/*bit 26*/	/*Intel/AMD Reserved*/
	/*bit 27*/	/*Intel*/			/*AMD Reserved*/	int MOVDIRI:1;
	/*bit 28*/	/*Intel*/			/*AMD Reserved*/	int MOVDIR64B:1;
	/*bit 29*/	/*Intel/AMD Reserved*/
	/*bit 30*/	/*Intel*/			/*AMD Reserved*/	int SGX_LC:1;
	/*bit 31*/	/*Intel*/			/*AMD Reserved*/	int PKS:1;

	/* EAX = 07H, EDX */
	/*bit 0*/	/*Intel/AMD Reserved*/
	/*bit 1*/	/*Intel/AMD Reserved*/
	/*bit 2*/	/*Intel*/			/*AMD Reserved*/	int AVX512_4VNNIW:1;
	/*bit 3*/	/*Intel*/			/*AMD Reserved*/	int AVX512_4FMAPS:1, AVX512_4VBMI2:1;
	/*bit 4*/	/*Intel*/			/*AMD Reserved*/	int FSREPMOV:1;
	/*bit 5*/	/*Intel/AMD Reserved*/
	/*bit 6*/	/*Intel/AMD Reserved*/
	/*bit 7*/	/*Intel/AMD Reserved*/
	/*bit 8*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VP2INTERSECT:1;
	/*bit 9*/	/*Intel/AMD Reserved*/
	/*bit 10*/	/*Intel*/			/*AMD Reserved*/	int MD_CLEAR:1;
	/*bit 11*/	/*Intel/AMD Reserved*/
	/*bit 12*/	/*Intel/AMD Reserved*/
	/*bit 13*/	/*Intel/AMD Reserved*/
	/*bit 14*/	/*Intel/AMD Reserved*/
	/*bit 15*/	/*Intel*/			/*AMD Reserved*/	int HYBRID:1;
	/*bit 16*/	/*Intel/AMD Reserved*/
	/*bit 17*/	/*Intel/AMD Reserved*/
	/*bit 18*/	/*Intel*/			/*AMD Reserved*/	int PCONFIG:1;
	/*bit 19*/	/*Intel/AMD Reserved*/
	/*bit 20*/	/*Intel*/			/*AMD Reserved*/	int CET_IBT:1;
	/*bit 21*/	/*Intel/AMD Reserved*/
	/*bit 22*/	/*Intel/AMD Reserved*/
	/*bit 23*/	/*Intel/AMD Reserved*/
	/*bit 24*/	/*Intel/AMD Reserved*/
	/*bit 25*/	/*Intel/AMD Reserved*/
	/*bit 26*/	/*Intel*/			/*AMD Reserved*/	int IBRS_IBPB:1;
	/*bit 27*/	/*Intel*/			/*AMD Reserved*/	int STIBP:1;
	/*bit 28*/	/*Intel*/			/*AMD Reserved*/	int L1D_FLUSH:1;
	/*bit 29*/	/*Intel*/			/*AMD Reserved*/	int IA32_ARCH_CAPABILITIES_MSR:1;
	/*bit 30*/	/*Intel*/			/*AMD Reserved*/	int IA32_CORE_CAPABILITIES_MSR:1;
	/*bit 31*/	/*Intel*/			/*AMD Reserved*/	int SSBD:1;

	/* EAX = 07H, EDX */ /*AMX/TMUL*/
	/*bit 22*/	/*Intel*/			/*AMD Reserved*/	int AMX_BF16:1;
	/*bit 24*/	/*Intel*/			/*AMD Reserved*/	int AMX_TILE:1;
	/*bit 25*/	/*Intel*/			/*AMD Reserved*/	int AMX_INT8:1;

	/* EAX = 07H, ECX = 1, EAX */
	/*bit 5*/	/*Intel*/			/*AMD Reserved*/	int AVX512_BF16:1;

	/* EAX = 80000001H, ECX */
	/*bit 0*/	/*Intel/AMD*/							int LAHF:1;
	/*bit 1*/	/*Intel Reserved*/			/*AMD*/		int CmpLegacy:1;
	/*bit 2*/	/*Intel Reserved*/			/*AMD*/		int SVM:1;
	/*bit 3*/	/*Intel Reserved*/			/*AMD*/		int ExtApicSpace:1;
	/*bit 4*/	/*Intel Reserved*/			/*AMD*/		int AltMovCr8:1;
	/*bit 5*/	/*Intel/AMD*/							int LZCNT:1;			/*AMD*/		int ABM:1;
	/*bit 6*/	/*Intel Reserved*/			/*AMD*/		int SSE4A:1;
	/*bit 7*/	/*Intel Reserved*/			/*AMD*/		int MisAlignSse:1;
	/*bit 8*/	/*Intel/AMD*/							int PREFETCHW:1;		/*AMD*/		int PREFETCH:1;
	/*bit 9*/	/*Intel Reserved*/			/*AMD*/		int OSVW:1;
	/*bit 10*/	/*Intel Reserved*/			/*AMD*/		int IBS:1;
	/*bit 11*/	/*Intel Reserved*/			/*AMD*/		int XOP:1;
	/*bit 12*/	/*Intel Reserved*/			/*AMD*/		int SKINIT:1;
	/*bit 13*/	/*Intel Reserved*/			/*AMD*/		int WDT:1;
	/*bit 14*/	/*Intel/AMD Reserved*/
	/*bit 15*/	/*Intel Reserved*/			/*AMD*/		int LWP:1;
	/*bit 16*/	/*Intel Reserved*/			/*AMD*/		int FMA4:1;
	/*bit 17*/	/*Intel/AMD Reserved*/
	/*bit 18*/	/*Intel/AMD Reserved*/
	/*bit 19*/	/*Intel/AMD Reserved*/
	/*bit 20*/	/*Intel/AMD Reserved*/
	/*bit 21*/	/*Intel Reserved*/			/*AMD*/		int TBM:1;
	/*bit 22*/	/*Intel Reserved*/			/*AMD*/		int TopologyExtensions:1;
	/*bit 23*/	/*Intel Reserved*/			/*AMD*/		int PerfCtrExtCore:1;
	/*bit 24*/	/*Intel Reserved*/			/*AMD*/		int PerfCtrExtNB:1;
	/*bit 25*/	/*Intel/AMD Reserved*/
	/*bit 26*/	/*Intel Reserved*/			/*AMD*/		int DataBkptExt:1;
	/*bit 27*/	/*Intel Reserved*/			/*AMD*/		int PerfTsc:1;
	/*bit 28*/	/*Intel Reserved*/			/*AMD*/		int PerfCtrExtLLC:1;
	/*bit 29*/	/*Intel Reserved*/			/*AMD*/		int MWAITX:1;
	/*bit 30*/	/*Intel Reserved*/			/*AMD*/		int AddrMaskExt:1;
	/*bit 31*/	/*Intel/AMD Reserved*/

	/* EAX = 80000001H, EDX */
	/*bit 0*/	/*Intel Reserved*/			/*AMD*/		/*int FPU:1;*/
	/*bit 1*/	/*Intel Reserved*/			/*AMD*/		/*int VME:1;*/
	/*bit 2*/	/*Intel Reserved*/			/*AMD*/		/*int DE:1;*/
	/*bit 3*/	/*Intel Reserved*/			/*AMD*/		/*int PSE:1;*/
	/*bit 4*/	/*Intel Reserved*/			/*AMD*/		/*int TSC:1;*/
	/*bit 5*/	/*Intel Reserved*/			/*AMD*/		/*int MSR:1;*/
	/*bit 6*/	/*Intel Reserved*/			/*AMD*/		/*int PAE:1;*/
	/*bit 7*/	/*Intel Reserved*/			/*AMD*/		/*int MCE:1;*/
	/*bit 8*/	/*Intel Reserved*/			/*AMD*/		/*int CMPXCHG8B:1;*/
	/*bit 9*/	/*Intel Reserved*/			/*AMD*/		/*int APIC:1;*/
	/*bit 10*/	/*Intel/AMD Reserved*/
	/*bit 11*/	/*Intel/AMD*/							int SYSCALL:1;
	/*bit 12*/	/*Intel Reserved*/			/*AMD*/		/*int MTRR:1;*/
	/*bit 13*/	/*Intel Reserved*/			/*AMD*/		/*int PGE:1;*/
	/*bit 14*/	/*Intel Reserved*/			/*AMD*/		/*int MCA:1;*/
	/*bit 15*/	/*Intel Reserved*/			/*AMD*/		/*int CMOV:1;*/
	/*bit 16*/	/*Intel Reserved*/			/*AMD*/		/*int PAT:1;*/
	/*bit 17*/	/*Intel Reserved*/			/*AMD*/		/*int PSE36:1;*/
	/*bit 18*/	/*Intel/AMD Reserved*/
	/*bit 19*/	/*Intel/AMD Reserved*/
	/*bit 20*/	/*Intel/AMD*/							int EXECDBIT:1;		/*AMD*/		int NX:1;
	/*bit 21*/	/*Intel/AMD Reserved*/
	/*bit 22*/	/*Intel Reserved*/			/*AMD*/		int MMXEXT:1;
	/*bit 23*/	/*Intel Reserved*/			/*AMD*/		/*int MMX:1;*/
	/*bit 24*/	/*Intel Reserved*/			/*AMD*/		/*int FXSR:1;*/		/*Cyrix/NSC*/ int EMMX:1;
	/*bit 25*/	/*Intel Reserved*/			/*AMD*/		int FFXSR:1;
	/*bit 26*/	/*Intel/AMD*/							int GBPAGE:1;
	/*bit 27*/	/*Intel/AMD*/							int RDTSCP:1;
	/*bit 28*/	/*Intel/AMD Reserved*/
	/*bit 29*/	/*Intel/AMD*/							int I64:1;			/*AMD*/		int LM:1;
	/*bit 30*/	/*Intel Reserved*/			/*AMD*/		int A3DNOWEXT:1;	/*Geode*/	int A3DNOWGEODE:1;
	/*bit 31*/	/*Intel Reserved*/			/*AMD*/		int A3DNOW:1;

	/* EAX = 80000008H, EBX */
	/*bit 0*/	/*Intel Reserved*/			/*AMD*/		int CLZERO:1;

	/* EAX = C0000001H, EDX */
	/*bit 2*/	/*Intel/AMD Reserved*/		/*VIA*/		int RNG:1;
	/*bit 6*/	/*Intel/AMD Reserved*/		/*VIA*/		int ACE:1;
	/*bit 8*/	/*Intel/AMD Reserved*/		/*VIA*/		int ACE2:1;
	/*bit 10*/	/*Intel/AMD Reserved*/		/*VIA*/		int PHE:1;
	/*bit 12*/	/*Intel/AMD Reserved*/		/*VIA*/		int PMM:1;

	/* EAX = 07H, EBX and ECX */
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_GFNI:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_GFNI_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VAES:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VAES_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VPCLMULQDQ:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VPCLMULQDQ_VL:1;

	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_IFMA_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VBMI_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VBMI2_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VNNI_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_BITALG_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512_VPOPCNTDQ_VL:1;

	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512BW_GFNI:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512BW_GFNI_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512BW_VAES:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512BW_VAES_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512BW_VPCLMULQDQ:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512BW_VPCLMULQDQ_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512BW_VL:1;

	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512DQ_GFNI:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512DQ_GFNI_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512DQ_VAES:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512DQ_VAES_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512DQ_VPCLMULQDQ:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512DQ_VPCLMULQDQ_VL:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512DQ_VL:1;

	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int AVX512CD_VL:1;

	/* EAX = 07H, ECX and EBX  | EAX = 01H, ECX and EDX */
	/*bit multi*/	/*Intel/AMD*/							int SSE_AES:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE_GFNI:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE_PCLMULQDQ:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE2_AES:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE2_GFNI:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE2_PCLMULQDQ:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE3_AES:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE3_GFNI:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE3_PCLMULQDQ:1;
	/*bit multi*/	/*Intel/AMD*/							int SSSE3_AES:1;
	/*bit multi*/	/*Intel/AMD*/							int SSSE3_GFNI:1;
	/*bit multi*/	/*Intel/AMD*/							int SSSE3_PCLMULQDQ:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE4_1_AES:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE4_1_GFNI:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE4_1_PCLMULQDQ:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE4_2_AES:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE4_2_GFNI:1;
	/*bit multi*/	/*Intel/AMD*/							int SSE4_2_PCLMULQDQ:1;
	/*bit multi*/	/*Intel/AMD*/							int AVX_AES:1;
	/*bit multi*/	/*Intel/AMD*/							int AVX_GFNI:1;
	/*bit multi*/	/*Intel/AMD*/							int AVX_PCLMULQDQ:1;
	/*bit multi*/	/*Intel/AMD*/							int AVX_VAES:1;
	/*bit multi*/	/*Intel/AMD*/							int AVX_VPCLMULQDQ:1;
	/*bit multi*/	/*Intel/AMD*/							int AVX2_AES:1;
	/*bit multi*/	/*Intel/AMD*/							int AVX2_GFNI:1;
	/*bit multi*/	/*Intel/AMD*/							int AVX2_PCLMULQDQ:1;
	/*bit multi*/	/*Intel/AMD*/							int AVX2_VAES:1;
	/*bit multi*/	/*Intel/AMD*/							int AVX2_VPCLMULQDQ:1;

	/*bit multi*/	/*Intel/AMD*/							int enabled_XMM:1;
	/*bit multi*/	/*Intel/AMD*/							int enabled_YMM:1;
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	int enabled_ZMM:1;
	/*AMX/TMUL*/	/*Intel*/			/*AMD Reserved*/	int enabled_TMM:1;

	/*as second FMA*/	/*Intel*/		/*AMD Reserved*/	int AVX512_second_FMA:1;

	/* Active vendors of modern CPUs */

	/*bit multi*/	/*Intel*/								int is_Intel:1;
	/*bit multi*/	/*AMD*/									int is_AMD:1;
	/*bit multi*/	/*VIA*/									int is_VIA:1;
	/*bit multi*/	/*Hygon*/								int is_Hygon:1;

	/* Active vendors of embedded CPUs */

	/*bit multi*/	/*RDC*/									int is_RDC:1;
	/*bit multi*/	/*DMP*/									int is_DMP:1;

	/* Defunct CPU vendors */

	/*bit multi*/	/*TRANSMETA*/							int is_TRANSMETA:1;
	/*bit multi*/	/*CYRIX*/								int is_CYRIX:1;
	/*bit multi*/	/*RISE*/								int is_RISE:1;
	/*bit multi*/	/*NSC*/									int is_NSC:1;
	/*bit multi*/	/*SIS*/									int is_SIS:1;
	/*bit multi*/	/*NEXGEN*/								int is_NEXGEN:1;
	/*bit multi*/	/*UMC*/									int is_UMC:1;

	/*bit multi*/	/*Intel/AMD*/							int IntrinSet:1;

	// Make sure to update FeaturesEnum below if you change a field here.
} Features_t;

typedef enum Microarchitecture : uint8_t
{
	X86_UNKNOWN,
	INTEL_CORE,        // CORE
	INTEL_PNR,         // PENRYN
	INTEL_NHM,         // NEHALEM
	INTEL_ATOM_BNL,    // BONNELL
	INTEL_WSM,         // WESTMERE
	INTEL_SNB,         // SANDYBRIDGE
	INTEL_IVB,         // IVYBRIDGE
	INTEL_ATOM_SMT,    // SILVERMONT
	INTEL_HSW,         // HASWELL
	INTEL_BDW,         // BROADWELL
	INTEL_SKL,         // SKYLAKE
	INTEL_ATOM_GMT,    // GOLDMONT
	INTEL_KBL,         // KABY LAKE
	INTEL_CFL,         // COFFEE LAKE
	INTEL_WHL,         // WHISKEY LAKE
	INTEL_CNL,         // CANNON LAKE
	INTEL_ICL,         // ICE LAKE
	INTEL_TGL,         // TIGER LAKE
	INTEL_SPR,         // SAPPHIRE RAPIDS
	AMD_HAMMER,        // K8  HAMMER
	AMD_K10,           // K10
	AMD_K11,           // K11
	AMD_K12,           // K12
	AMD_BOBCAT,        // K14 BOBCAT
	AMD_PILEDRIVER,    // K15 PILEDRIVER
	AMD_STREAMROLLER,  // K15 STREAMROLLER
	AMD_EXCAVATOR,     // K15 EXCAVATOR
	AMD_BULLDOZER,     // K15 BULLDOZER
	AMD_JAGUAR,        // K16 JAGUAR
	AMD_PUMA,          // K16 PUMA
	AMD_ZEN,           // K17 ZEN
	AMD_ZEN_PLUS,      // K17 ZEN+
	AMD_ZEN2,          // K17 ZEN 2
	AMD_ZEN3,          // K19 ZEN 3
} Microarchitecture_t;

typedef enum FeaturesEnum : uint8_t
{
	/* EAX = 01H, ECX */
	/*bit 0*/	/*Intel/AMD*/							_SSE3,		_DAZ,
	/*bit 1*/	/*Intel/AMD*/							_PCLMULQDQ,
	/*bit 2*/	/*Intel*/			/*AMD Reserved*/	_DTES64,
	/*bit 3*/	/*Intel/AMD*/							_MONITOR,
	/*bit 4*/	/*Intel*/			/*AMD Reserved*/	_DS_CPL,
	/*bit 5*/	/*Intel*/			/*AMD Reserved*/	_VMX,
	/*bit 6*/	/*Intel*/			/*AMD Reserved*/	_SMX,
	/*bit 7*/	/*Intel*/			/*AMD Reserved*/	_EIST,
	/*bit 8*/	/*Intel*/			/*AMD Reserved*/	_TM2,
	/*bit 9*/	/*Intel/AMD*/							_SSSE3,
	/*bit 10*/	/*Intel*/			/*AMD Reserved*/	_CNXT_ID,
	/*bit 11*/	/*Intel*/			/*AMD Reserved*/	_SDBG,
	/*bit 12*/	/*Intel/AMD*/							_FMA3,
	/*bit 13*/	/*Intel/AMD*/							_CMPXCHG16B,
	/*bit 14*/	/*Intel*/			/*AMD Reserved*/	_xTPR,
	/*bit 15*/	/*Intel*/			/*AMD Reserved*/	_PDCM,
	/*bit 16*/	/*Intel/AMD Reserved*/
	/*bit 17*/	/*Intel/AMD*/							_PCID,
	/*bit 18*/	/*Intel*/			/*AMD Reserved*/	_DCA,
	/*bit 19*/	/*Intel/AMD*/							_SSE4_1,
	/*bit 20*/	/*Intel/AMD*/							_SSE4_2,
	/*bit 21*/	/*Intel/AMD*/							_x2APIC,
	/*bit 22*/	/*Intel/AMD*/							_MOVBE,
	/*bit 23*/	/*Intel/AMD*/							_POPCNT,
	/*bit 24*/	/*Intel*/			/*AMD Reserved*/	_TSC_Deadline,
	/*bit 25*/	/*Intel/AMD*/							_AES,
	/*bit 26*/	/*Intel/AMD*/							_XSAVE,
	/*bit 27*/	/*Intel/AMD*/							_OSXSAVE,
	/*bit 28*/	/*Intel/AMD*/							_AVX,
	/*bit 29*/	/*Intel/AMD*/							_F16C,
	/*bit 30*/	/*Intel/AMD*/							_RDRAND,
	/*bit 31*/	/*Intel/AMD Reserved for hypervisor*/

	/* EAX = 01H, EDX */
	/*bit 0*/	/*Intel/AMD*/							_FPU,
	/*bit 1*/	/*Intel/AMD*/							_VME,
	/*bit 2*/	/*Intel/AMD*/							_DE,
	/*bit 3*/	/*Intel/AMD*/							_PSE,
	/*bit 4*/	/*Intel/AMD*/							_TSC,
	/*bit 5*/	/*Intel/AMD*/							_MSR,
	/*bit 6*/	/*Intel/AMD*/							_PAE,
	/*bit 7*/	/*Intel/AMD*/							_MCE,
	/*bit 8*/	/*Intel/AMD*/							_CMPXCHG8B,
	/*bit 9*/	/*Intel/AMD*/							_APIC,
	/*bit 10*/	/*Intel/AMD Reserved*/
	/*bit 11*/	/*Intel/AMD*/							_SEP,
	/*bit 12*/	/*Intel/AMD*/							_MTRR,
	/*bit 13*/	/*Intel/AMD*/							_PGE,
	/*bit 14*/	/*Intel/AMD*/							_MCA,
	/*bit 15*/	/*Intel/AMD*/							_CMOV,
	/*bit 16*/	/*Intel/AMD*/							_PAT,
	/*bit 17*/	/*Intel/AMD*/							_PSE36,
	/*bit 18*/	/*Intel*/			/*AMD Reserved*/	_PSN,
	/*bit 19*/	/*Intel/AMD*/							_CLFSH,
	/*bit 20*/	/*Intel/AMD Reserved*/
	/*bit 21*/	/*Intel*/			/*AMD Reserved*/	_DS,
	/*bit 22*/	/*Intel*/			/*AMD Reserved*/	_ACPI,
	/*bit 23*/	/*Intel/AMD*/							_MMX,
	/*bit 24*/	/*Intel/AMD*/							_FXSR,
	/*bit 25*/	/*Intel/AMD*/							_SSE,
	/*bit 26*/	/*Intel/AMD*/							_SSE2,
	/*bit 27*/	/*Intel*/			/*AMD Reserved*/	_SS,
	/*bit 28*/	/*Intel/AMD*/							_HTT,
	/*bit 29*/	/*Intel*/			/*AMD Reserved*/	_TM,
	/*bit 30*/	/*Intel/AMD Reserved*/
	/*bit 31*/	/*Intel*/			/*AMD Reserved*/	_PBE,

	/* EAX = 07H, EBX */
	/*bit 0*/	/*Intel/AMD*/							_FSGSBASE,
	/*bit 1*/	/*Intel*/			/*AMD Reserved*/	_IA32_TSC_ADJUST,
	/*bit 2*/	/*Intel*/			/*AMD Reserved*/	_SGX,
	/*bit 3*/	/*Intel/AMD*/							_BMI1,
	/*bit 4*/	/*Intel*/			/*AMD Reserved*/	_HLE,
	/*bit 5*/	/*Intel/AMD*/							_AVX2,
	/*bit 6*/	/*Intel*/			/*AMD Reserved*/	_FDP_EXCPTN_ONLY,
	/*bit 7*/	/*Intel/AMD*/							_SMEP,
	/*bit 8*/	/*Intel/AMD*/							_BMI2,
	/*bit 9*/	/*Intel*/			/*AMD Reserved*/	_ERMS,
	/*bit 10*/	/*Intel/AMD*/							_INVPCID,
	/*bit 11*/	/*Intel*/			/*AMD Reserved*/	_RTM,			_XTEST,
	/*bit 12*/	/*Intel*/			/*AMD Reserved*/	_RDT_M,
	/*bit 13*/	/*Intel*/			/*AMD Reserved*/	_DEP_FPU,
	/*bit 14*/	/*Intel*/			/*AMD Reserved*/	_MPX,
	/*bit 15*/	/*Intel*/			/*AMD Reserved*/	_RDT_A,
	/*bit 16*/	/*Intel*/			/*AMD Reserved*/	_AVX512F,
	/*bit 17*/	/*Intel*/			/*AMD Reserved*/	_AVX512DQ,
	/*bit 18*/	/*Intel/AMD*/							_RDSEED,
	/*bit 19*/	/*Intel/AMD*/							_ADX,
	/*bit 20*/	/*Intel/AMD*/							_SMAP,
	/*bit 21*/	/*Intel*/			/*AMD Reserved*/	_AVX512_IFMA,
	/*bit 22*/	/*Intel/AMD Reserved*/
	/*bit 23*/	/*Intel/AMD*/							_CLFLUSHOPT,
	/*bit 24*/	/*Intel/AMD*/							_CLWB,
	/*bit 25*/	/*Intel*/			/*AMD Reserved*/	_IP_TRACE,
	/*bit 26*/	/*Intel*/			/*AMD Reserved*/	_AVX512PF,
	/*bit 27*/	/*Intel*/			/*AMD Reserved*/	_AVX512ER,
	/*bit 28*/	/*Intel*/			/*AMD Reserved*/	_AVX512CD,
	/*bit 29*/	/*Intel/AMD*/							_SHA,
	/*bit 30*/	/*Intel*/			/*AMD Reserved*/	_AVX512BW,
	/*bit 31*/	/*Intel*/			/*AMD Reserved*/	_AVX512VL,

	/* EAX = 07H, ECX */
	/*bit 0*/	/*Intel*/			/*AMD Reserved*/	_PREFETCHWT1,
	/*bit 1*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VBMI,
	/*bit 2*/	/*Intel/AMD*/							_UMIP,
	/*bit 3*/	/*Intel/AMD*/							_PKU,
	/*bit 4*/	/*Intel/AMD*/							_OSPKE,
	/*bit 5*/	/*Intel*/			/*AMD Reserved*/	_WAITPKG,
	/*bit 6*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VBMI2,
	/*bit 7*/	/*Intel/AMD*/							_CET_SS,
	/*bit 8*/	/*Intel*/			/*AMD Reserved*/	_GFNI,
	/*bit 9*/	/*Intel/AMD*/							_VAES,
	/*bit 10*/	/*Intel/AMD*/							_VPCLMULQDQ,
	/*bit 11*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VNNI,
	/*bit 12*/	/*Intel*/			/*AMD Reserved*/	_AVX512_BITALG,
	/*bit 13*/	/*Intel*/			/*AMD Reserved*/	_TME_EN,
	/*bit 14*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VPOPCNTDQ,
	/*bit 15*/	/*Intel/AMD Reserved*/
	/*bit 16*/	/*Intel*/			/*AMD Reserved*/	_LA57,
	/*bit 17*/	/*Intel MAWAU value */	/*AMD Reserved*/
	/*bit 18*/	/*Intel MAWAU value */	/*AMD Reserved*/
	/*bit 19*/	/*Intel MAWAU value */	/*AMD Reserved*/
	/*bit 20*/	/*Intel MAWAU value */	/*AMD Reserved*/
	/*bit 21*/	/*Intel MAWAU value */	/*AMD Reserved*/
	/*bit 22*/	/*Intel/AMD*/							_RDPID,
	/*bit 24*/	/*Intel*/			/*AMD Reserved*/	_KL,
	/*bit 24*/	/*Intel/AMD Reserved*/
	/*bit 25*/	/*Intel*/			/*AMD Reserved*/	_CLDEMOTE,
	/*bit 26*/	/*Intel/AMD Reserved*/
	/*bit 27*/	/*Intel*/			/*AMD Reserved*/	_MOVDIRI,
	/*bit 28*/	/*Intel*/			/*AMD Reserved*/	_MOVDIR64B,
	/*bit 29*/	/*Intel/AMD Reserved*/
	/*bit 30*/	/*Intel*/			/*AMD Reserved*/	_SGX_LC,
	/*bit 31*/	/*Intel*/			/*AMD Reserved*/	_PKS,

	/* EAX = 07H, EDX */
	/*bit 0*/	/*Intel/AMD Reserved*/
	/*bit 1*/	/*Intel/AMD Reserved*/
	/*bit 2*/	/*Intel*/			/*AMD Reserved*/	_AVX512_4VNNIW,
	/*bit 3*/	/*Intel*/			/*AMD Reserved*/	_AVX512_4FMAPS, _AVX512_4VBMI2,
	/*bit 4*/	/*Intel*/			/*AMD Reserved*/	_FSREPMOV,
	/*bit 5*/	/*Intel/AMD Reserved*/
	/*bit 6*/	/*Intel/AMD Reserved*/
	/*bit 7*/	/*Intel/AMD Reserved*/
	/*bit 8*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VP2INTERSECT,
	/*bit 9*/	/*Intel/AMD Reserved*/
	/*bit 10*/	/*Intel*/			/*AMD Reserved*/	_MD_CLEAR,
	/*bit 11*/	/*Intel/AMD Reserved*/
	/*bit 12*/	/*Intel/AMD Reserved*/
	/*bit 13*/	/*Intel/AMD Reserved*/
	/*bit 14*/	/*Intel/AMD Reserved*/
	/*bit 15*/	/*Intel*/			/*AMD Reserved*/	_HYBRID,
	/*bit 16*/	/*Intel/AMD Reserved*/
	/*bit 17*/	/*Intel/AMD Reserved*/
	/*bit 18*/	/*Intel*/			/*AMD Reserved*/	_PCONFIG,
	/*bit 19*/	/*Intel/AMD Reserved*/
	/*bit 20*/	/*Intel*/			/*AMD Reserved*/	_CET_IBT,
	/*bit 21*/	/*Intel/AMD Reserved*/
	/*bit 22*/	/*Intel/AMD Reserved*/
	/*bit 23*/	/*Intel/AMD Reserved*/
	/*bit 24*/	/*Intel/AMD Reserved*/
	/*bit 25*/	/*Intel/AMD Reserved*/
	/*bit 26*/	/*Intel*/			/*AMD Reserved*/	_IBRS_IBPB,
	/*bit 27*/	/*Intel*/			/*AMD Reserved*/	_STIBP,
	/*bit 28*/	/*Intel*/			/*AMD Reserved*/	_L1D_FLUSH,
	/*bit 29*/	/*Intel*/			/*AMD Reserved*/	_IA32_ARCH_CAPABILITIES_MSR,
	/*bit 30*/	/*Intel*/			/*AMD Reserved*/	_IA32_CORE_CAPABILITIES_MSR,
	/*bit 31*/	/*Intel*/			/*AMD Reserved*/	_SSBD,

	/* EAX = 07H, EDX */ /*AMX/TMUL */
	/*bit 22*/	/*Intel*/			/*AMD Reserved*/	_AMX_BF16,
	/*bit 24*/	/*Intel*/			/*AMD Reserved*/	_AMX_TILE,
	/*bit 25*/	/*Intel*/			/*AMD Reserved*/	_AMX_INT8,

	/* EAX = 07H, ECX = 1, EAX */
	/*bit 5*/	/*Intel*/			/*AMD Reserved*/	_AVX512_BF16,

	/* EAX = 80000001H, ECX */
	/*bit 0*/	/*Intel/AMD*/							_LAHF,
	/*bit 1*/	/*Intel Reserved*/			/*AMD*/		_CmpLegacy,
	/*bit 2*/	/*Intel Reserved*/			/*AMD*/		_SVM,
	/*bit 3*/	/*Intel Reserved*/			/*AMD*/		_ExtApicSpace,
	/*bit 4*/	/*Intel Reserved*/			/*AMD*/		_AltMovCr8,
	/*bit 5*/	/*Intel/AMD*/							_LZCNT,			/*AMD*/		_ABM,
	/*bit 6*/	/*Intel Reserved*/			/*AMD*/		_SSE4A,
	/*bit 7*/	/*Intel Reserved*/			/*AMD*/		_MisAlignSse,
	/*bit 8*/	/*Intel/AMD*/							_PREFETCHW,		/*AMD*/		_PREFETCH,
	/*bit 9*/	/*Intel Reserved*/			/*AMD*/		_OSVW,
	/*bit 10*/	/*Intel Reserved*/			/*AMD*/		_IBS,
	/*bit 11*/	/*Intel Reserved*/			/*AMD*/		_XOP,
	/*bit 12*/	/*Intel Reserved*/			/*AMD*/		_SKINIT,
	/*bit 13*/	/*Intel Reserved*/			/*AMD*/		_WDT,
	/*bit 14*/	/*Intel/AMD Reserved*/
	/*bit 15*/	/*Intel Reserved*/			/*AMD*/		_LWP,
	/*bit 16*/	/*Intel Reserved*/			/*AMD*/		_FMA4,
	/*bit 17*/	/*Intel/AMD Reserved*/
	/*bit 18*/	/*Intel/AMD Reserved*/
	/*bit 19*/	/*Intel/AMD Reserved*/
	/*bit 20*/	/*Intel/AMD Reserved*/
	/*bit 21*/	/*Intel Reserved*/			/*AMD*/		_TBM,
	/*bit 22*/	/*Intel Reserved*/			/*AMD*/		_TopologyExtensions,
	/*bit 23*/	/*Intel Reserved*/			/*AMD*/		_PerfCtrExtCore,
	/*bit 24*/	/*Intel Reserved*/			/*AMD*/		_PerfCtrExtNB,
	/*bit 25*/	/*Intel/AMD Reserved*/
	/*bit 26*/	/*Intel Reserved*/			/*AMD*/		_DataBkptExt,
	/*bit 27*/	/*Intel Reserved*/			/*AMD*/		_PerfTsc,
	/*bit 28*/	/*Intel Reserved*/			/*AMD*/		_PerfCtrExtLLC,
	/*bit 29*/	/*Intel Reserved*/			/*AMD*/		_MWAITX,
	/*bit 30*/	/*Intel Reserved*/			/*AMD*/		_AddrMaskExt,
	/*bit 31*/	/*Intel/AMD Reserved*/

	/* EAX = 80000001H, EDX */
	/*bit 0*/	/*Intel Reserved*/			/*AMD*/		/*_FPU,*/
	/*bit 1*/	/*Intel Reserved*/			/*AMD*/		/*_VME,*/
	/*bit 2*/	/*Intel Reserved*/			/*AMD*/		/*_DE,*/
	/*bit 3*/	/*Intel Reserved*/			/*AMD*/		/*_PSE,*/
	/*bit 4*/	/*Intel Reserved*/			/*AMD*/		/*_TSC,*/
	/*bit 5*/	/*Intel Reserved*/			/*AMD*/		/*_MSR,*/
	/*bit 6*/	/*Intel Reserved*/			/*AMD*/		/*_PAE,*/
	/*bit 7*/	/*Intel Reserved*/			/*AMD*/		/*_MCE,*/
	/*bit 8*/	/*Intel Reserved*/			/*AMD*/		/*_CMPXCHG8B,*/
	/*bit 9*/	/*Intel Reserved*/			/*AMD*/		/*_APIC,*/
	/*bit 10*/	/*Intel/AMD Reserved*/
	/*bit 11*/	/*Intel/AMD*/							_SYSCALL,
	/*bit 12*/	/*Intel Reserved*/			/*AMD*/		/*_MTRR,*/
	/*bit 13*/	/*Intel Reserved*/			/*AMD*/		/*_PGE,*/
	/*bit 14*/	/*Intel Reserved*/			/*AMD*/		/*_MCA,*/
	/*bit 15*/	/*Intel Reserved*/			/*AMD*/		/*_CMOV,*/
	/*bit 16*/	/*Intel Reserved*/			/*AMD*/		/*_PAT,*/
	/*bit 17*/	/*Intel Reserved*/			/*AMD*/		/*_PSE36,*/
	/*bit 18*/	/*Intel/AMD Reserved*/
	/*bit 19*/	/*Intel/AMD Reserved*/
	/*bit 20*/	/*Intel/AMD*/							_EXECDBIT,		/*AMD*/		_NX,
	/*bit 21*/	/*Intel/AMD Reserved*/
	/*bit 22*/	/*Intel Reserved*/			/*AMD*/		_MMXEXT,
	/*bit 23*/	/*Intel Reserved*/			/*AMD*/		/*_MMX,*/
	/*bit 24*/	/*Intel Reserved*/			/*AMD*/		/*_FXSR,*/		/*Cyrix/NSC*/ _EMMX,
	/*bit 25*/	/*Intel Reserved*/			/*AMD*/		_FFXSR,
	/*bit 26*/	/*Intel/AMD*/							_GBPAGE,
	/*bit 27*/	/*Intel/AMD*/							_RDTSCP,
	/*bit 28*/	/*Intel/AMD Reserved*/
	/*bit 29*/	/*Intel/AMD*/							_I64,			/*AMD*/		_LM,
	/*bit 30*/	/*Intel Reserved*/			/*AMD*/		_A3DNOWEXT,		/*Geode*/	_A3DNOWGEODE,
	/*bit 31*/	/*Intel Reserved*/			/*AMD*/		_A3DNOW,

	/* EAX = 80000008H, EBX */
	/*bit 0*/	/*Intel Reserved*/			/*AMD*/		_CLZERO,
	
	/* EAX = C0000001H, EDX */
	/*bit 2*/	/*Intel/AMD Reserved*/		/*VIA*/		_RNG,
	/*bit 6*/	/*Intel/AMD Reserved*/		/*VIA*/		_ACE,
	/*bit 8*/	/*Intel/AMD Reserved*/		/*VIA*/		_ACE2,
	/*bit 10*/	/*Intel/AMD Reserved*/		/*VIA*/		_PHE,
	/*bit 12*/	/*Intel/AMD Reserved*/		/*VIA*/		_PMM,

	/* EAX = 07H, EBX and ECX */
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_GFNI,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_GFNI_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VAES,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VAES_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VPCLMULQDQ,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VPCLMULQDQ_VL,

	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_IFMA_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VBMI_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VBMI2_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VNNI_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_BITALG_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512_VPOPCNTDQ_VL,

	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512BW_GFNI,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512BW_GFNI_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512BW_VAES,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512BW_VAES_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512BW_VPCLMULQDQ,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512BW_VPCLMULQDQ_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512BW_VL,

	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512DQ_GFNI,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512DQ_GFNI_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512DQ_VAES,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512DQ_VAES_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512DQ_VPCLMULQDQ,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512DQ_VPCLMULQDQ_VL,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512DQ_VL,

	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_AVX512CD_VL,

	/* EAX = 07H, ECX and EBX  | EAX = 01H, ECX and EDX */
	/*bit multi*/	/*Intel/AMD*/							_SSE_AES,
	/*bit multi*/	/*Intel/AMD*/							_SSE_GFNI,
	/*bit multi*/	/*Intel/AMD*/							_SSE_PCLMULQDQ,
	/*bit multi*/	/*Intel/AMD*/							_SSE2_AES,
	/*bit multi*/	/*Intel/AMD*/							_SSE2_GFNI,
	/*bit multi*/	/*Intel/AMD*/							_SSE2_PCLMULQDQ,
	/*bit multi*/	/*Intel/AMD*/							_SSE3_AES,
	/*bit multi*/	/*Intel/AMD*/							_SSE3_GFNI,
	/*bit multi*/	/*Intel/AMD*/							_SSE3_PCLMULQDQ,
	/*bit multi*/	/*Intel/AMD*/							_SSSE3_AES,
	/*bit multi*/	/*Intel/AMD*/							_SSSE3_GFNI,
	/*bit multi*/	/*Intel/AMD*/							_SSSE3_PCLMULQDQ,
	/*bit multi*/	/*Intel/AMD*/							_SSE4_1_AES,
	/*bit multi*/	/*Intel/AMD*/							_SSE4_1_GFNI,
	/*bit multi*/	/*Intel/AMD*/							_SSE4_1_PCLMULQDQ,
	/*bit multi*/	/*Intel/AMD*/							_SSE4_2_AES,
	/*bit multi*/	/*Intel/AMD*/							_SSE4_2_GFNI,
	/*bit multi*/	/*Intel/AMD*/							_SSE4_2_PCLMULQDQ,
	/*bit multi*/	/*Intel/AMD*/							_AVX_AES,
	/*bit multi*/	/*Intel/AMD*/							_AVX_GFNI,
	/*bit multi*/	/*Intel/AMD*/							_AVX_PCLMULQDQ,
	/*bit multi*/	/*Intel/AMD*/							_AVX_VAES,
	/*bit multi*/	/*Intel/AMD*/							_AVX_VPCLMULQDQ,
	/*bit multi*/	/*Intel/AMD*/							_AVX2_AES,
	/*bit multi*/	/*Intel/AMD*/							_AVX2_GFNI,
	/*bit multi*/	/*Intel/AMD*/							_AVX2_PCLMULQDQ,
	/*bit multi*/	/*Intel/AMD*/							_AVX2_VAES,
	/*bit multi*/	/*Intel/AMD*/							_AVX2_VPCLMULQDQ,

	/*bit multi*/	/*Intel/AMD*/							_enabled_XMM,
	/*bit multi*/	/*Intel/AMD*/							_enabled_YMM,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_enabled_ZMM,
	/*bit multi*/	/*Intel*/			/*AMD Reserved*/	_enabled_TMM,

	/*has second FMA*/	/*Intel*/		/*AMD Reserved*/	_AVX512_second_FMA,
	
	/* Active vendors of modern CPUs */

	/*bit multi*/	/*Intel*/								_is_Intel,
	/*bit multi*/	/*AMD*/									_is_AMD,
	/*bit multi*/	/*VIA*/									_is_VIA,
	/*bit multi*/	/*Hygon*/								_is_Hygon,

	/* Active vendors of embedded CPUs */

	/*bit multi*/	/*RDC*/									_is_RDC,
	/*bit multi*/	/*DMP*/									_is_DMP,

	/* Defunct CPU vendors */

	/*bit multi*/	/*TRANSMETA*/							_is_TRANSMETA,
	/*bit multi*/	/*CYRIX*/								_is_CYRIX,
	/*bit multi*/	/*RISE*/								_is_RISE,
	/*bit multi*/	/*NSC*/									_is_NSC,
	/*bit multi*/	/*SIS*/									_is_SIS,
	/*bit multi*/	/*NEXGEN*/								_is_NEXGEN,
	/*bit multi*/	/*UMC*/									_is_UMC,

	/*intrin set*/	/*Intel/AMD*/							_AMX_IntrinSet,

	_LAST_FEATURE,
} FeaturesEnum_t;

typedef struct Info
{
	struct Features features;
	int family;
	int model;
	int stepping;
	char vendor[13];  // 0 terminated string
} Info_t;

using cpuinfo_x86_isa = Features;
using cpuid_regs = Leaf;

//typedef struct Features cpuinfo_x86_isa;
//typedef union Leaf cpuid_regs;

typedef struct cpuinfo_x86_cache
{
	uint32_t size;
	uint32_t associativity;
	uint32_t sets;
	uint32_t partitions;
	uint32_t line_size;
	uint32_t flags;
	uint32_t apic_bits;
} cpuinfo_x86_cache_t;

typedef struct cpuinfo_x86_caches
{
	struct cpuinfo_trace_cache trace;
	struct cpuinfo_x86_cache l1i;
	struct cpuinfo_x86_cache l1d;
	struct cpuinfo_x86_cache l2;
	struct cpuinfo_x86_cache l3;
	struct cpuinfo_x86_cache l4;
	uint32_t prefetch_size;
} cpuinfo_x86_caches_t;

typedef struct cpuinfo_x86_model_info
{
	uint32_t model;
	uint32_t family;

	uint32_t base_model;
	uint32_t base_family;
	uint32_t stepping;
	uint32_t extended_model;
	uint32_t extended_family;
	uint32_t processor_type;
} cpuinfo_x86_model_info_t;

typedef struct cpuinfo_x86_topology
{
	uint32_t apic_id;
	uint32_t thread_bits_offset;
	uint32_t thread_bits_length;
	uint32_t core_bits_offset;
	uint32_t core_bits_length;
} cpuinfo_x86_topology_t;

typedef struct cpuinfo_x86_processor
{
	uint32_t cpuid;
	enum cpuinfo_vendor vendor;
	enum cpuinfo_uarch uarch;
#ifdef uX_LINUX
	int linux_id;
#endif
	struct cpuinfo_x86_caches cache;
	struct
	{
		struct cpuinfo_tlb itlb_4KB;
		struct cpuinfo_tlb itlb_2MB;
		struct cpuinfo_tlb itlb_4MB;
		struct cpuinfo_tlb dtlb0_4KB;
		struct cpuinfo_tlb dtlb0_2MB;
		struct cpuinfo_tlb dtlb0_4MB;
		struct cpuinfo_tlb dtlb_4KB;
		struct cpuinfo_tlb dtlb_2MB;
		struct cpuinfo_tlb dtlb_4MB;
		struct cpuinfo_tlb dtlb_1GB;
		struct cpuinfo_tlb stlb2_4KB;
		struct cpuinfo_tlb stlb2_2MB;
		struct cpuinfo_tlb stlb2_1GB;
	} tlb;
	struct cpuinfo_x86_topology topology;
	char brand_string[CPUINFO_PACKAGE_NAME_MAX];
} cpuinfo_x86_processor_t;

/* The state of the parser to be preserved between parsing different tokens. */
typedef struct parser_state
{
	/*
	 * Pointer to the start of the previous token if it is "model".
	 * NULL if previous token is not "model".
	 */
	char* context_model;
	/*
	 * Pointer to the start of the previous token if it is a single-uppercase-letter token.
	 * NULL if previous token is anything different.
	 */
	char* context_upper_letter;
	/*
	 * Pointer to the start of the previous token if it is "Dual".
	 * NULL if previous token is not "Dual".
	 */
	char* context_dual;
	/*
	 * Pointer to the start of the previous token if it is "Core", "Dual-Core", "QuadCore", etc.
	 * NULL if previous token is anything different.
	 */
	char* context_core;
	/*
	 * Pointer to the start of the previous token if it is "Eng" or "Engineering", etc.
	 * NULL if previous token is anything different.
	 */
	char* context_engineering;
	/*
	 * Pointer to the '@' symbol in the brand string (separates frequency specification).
	 * NULL if there is no '@' symbol.
	 */
	char* frequency_separator;
	/* Indicates whether the brand string (after transformations) contains frequency. */
	bool frequency_token;
	/* Indicates whether the processor is of Xeon family (contains "Xeon" substring). */
	bool xeon;
	/* Indicates whether the processor model number was already parsed. */
	bool parsed_model_number;
	/* Indicates whether the processor is an engineering sample (contains "Engineering Sample" or "Eng Sample" substrings). */
	bool engineering_sample;
} parser_state_t;

using cache_type = CacheType;

typedef union cpuinfo_x86_cache_descriptors
{
	cpuid_regs regs;
	uint8_t as_bytes[16];
} cpuinfo_x86_cache_descriptors_t;

typedef class CPUFeatures
{
public:
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
	
	static bool uX_abi IsBitSet(uint32_t const reg, uint32_t const bit) uX_noexcept;

	static bool uX_abi IsBitMaskSet(uint32_t const reg, uint32_t const bitmask) uX_noexcept;

	static cpuid_regs uX_abi cpuid(uint32_t const eax) uX_noexcept;

	static cpuid_regs uX_abi cpuidex(uint32_t const eax, uint32_t const ecx) uX_noexcept;

	static uint64_t uX_abi xgetbv(uint32_t const ext_ctrl_reg) uX_noexcept;

	static Leaf uX_abi GetCpuidLeaf(uint32_t const leaf_id, int const ecx) uX_noexcept;

	static uint32_t uX_abi GetXCR0Eax(void) uX_noexcept;

	static Leaf const uX_abi kEmptyLeaf(void) uX_noexcept;

	static Leaf uX_abi CpuId(uint32_t const leaf_id) uX_noexcept;

	static Leaf uX_abi SafeCpuIdEx(uint32_t const max_cpuid_leaf, uint32_t const leaf_id, int const ecx) uX_noexcept;

	static Leaf uX_abi SafeCpuId(uint32_t const max_cpuid_leaf, uint32_t const leaf_id) uX_noexcept;

	static bool uX_abi IsReservedAMD(uint32_t const max_extended, uint32_t const bit) uX_noexcept;

	static bool uX_abi HasMask(uint32_t const value, uint32_t const mask) uX_noexcept;

	// Checks that operating system saves and restores xmm registers during context switches.
	static bool uX_abi HasXmmOsXSave(uint32_t const xcr0_eax) uX_noexcept;

	// Checks that operating system saves and restores ymm registers during context switches.
	static bool uX_abi HasYmmOsXSave(uint32_t const xcr0_eax) uX_noexcept;

	// Checks that operating system saves and restores zmm registers during context switches.
	static bool uX_abi HasZmmOsXSave(uint32_t const xcr0_eax) uX_noexcept;

	// Checks that operating system saves and restores AMX/TMUL state during context switches.
	static bool uX_abi HasTmmOsXSave(uint32_t const xcr0_eax) uX_noexcept;

	static void uX_abi SetString(uint32_t const max_cpuid_ext_leaf, uint32_t const leaf_id, char* buffer) uX_noexcept;

	static void uX_abi FillBrandString(char brand_string[49]) uX_noexcept;

	static bool uX_abi HasSecondFMA(uint32_t const model) uX_noexcept;

	static void uX_abi SetVendor(Leaf const leaf, char* const vendor) uX_noexcept;

	static intbool_t uX_abi IsVendor(Leaf const leaf, char const* const name) uX_noexcept;

	static int uX_abi IsVendorByInfo(Info const* info, char const* const name) uX_noexcept;

	static CacheLevelInfo const uX_abi kEmptyCacheLevelInfo(void) uX_noexcept;

	static CacheLevelInfo uX_abi GetCacheLevelInfo(uint32_t const reg) uX_noexcept;

	static uint32_t uX_abi ExtractBitRange(uint32_t const reg, uint32_t const msb, uint32_t const lsb) uX_noexcept;

	static void uX_abi GetByteArrayFromRegister(uint32_t result[4], uint32_t const reg) uX_noexcept;

	static void uX_abi ParseLeaf2(int const max_cpuid_leaf, CacheInfo* info) uX_noexcept;

	static void uX_abi ParseCacheInfo(int const max_cpuid_leaf, uint32_t const leaf_id, CacheInfo* info) uX_noexcept;

#if defined(uX_DARWIN_OS)
	static bool uX_abi GetDarwinSysCtlByName(char const* const name) uX_noexcept;
#endif  // uX_DARWIN_OS

#if defined(uX_WINDOWS_OS)
	static bool uX_abi GetWindowsIsProcessorFeaturePresent(DWORD ProcessorFeature) uX_noexcept;
#endif  // uX_WINDOWS_OS

	static void uX_abi ParseCpuId(uint32_t const max_cpuid_leaf, Info* info) uX_noexcept;

	static Info const uX_abi kEmptyInfo(void) uX_noexcept;

	static CacheInfo const uX_abi kEmptyCacheInfo(void) uX_noexcept;

	static Leaf uX_abi GetLeafById(uint32_t const leaf_id) uX_noexcept;

	static void uX_abi ParseExtraCpuId(Info* info) uX_noexcept;

	uX_API Info uX_abi GetInfo(void) uX_noexcept;

	uX_API CacheInfo uX_abi GetCacheInfo(void) uX_noexcept;

	uX_API Microarchitecture uX_abi GetMicroarchitecture(const Info* info) uX_noexcept;

	static void uX_abi cpuinfo_x86_init_processor(struct cpuinfo_x86_processor* processor) uX_noexcept;

	static enum cpuinfo_vendor uX_abi cpuinfo_x86_decode_vendor(uint32_t const ebx, uint32_t const ecx, uint32_t const edx) uX_noexcept;

	static struct cpuinfo_x86_model_info uX_abi cpuinfo_x86_decode_model_info(uint32_t const eax) uX_noexcept;

	static enum cpuinfo_uarch uX_abi cpuinfo_x86_decode_uarch(const enum cpuinfo_vendor vendor, const struct cpuinfo_x86_model_info* model_info) uX_noexcept;

	static cpuinfo_x86_isa uX_abi cpuinfo_x86_detect_isa(cpuid_regs const basic_info, cpuid_regs const extended_info, uint32_t const max_base_index,
														uint32_t const max_extended_index, const enum cpuinfo_vendor vendor, const enum cpuinfo_uarch uarch) uX_noexcept;

	static void uX_abi cpuinfo_x86_detect_topology(uint32_t const max_base_index, uint32_t const max_extended_index, cpuid_regs const leaf1,
													struct cpuinfo_x86_topology* topology) uX_noexcept;

	static void uX_abi cpuinfo_x86_detect_cache(uint32_t const max_base_index,
												uint32_t const max_extended_index,
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
												uint32_t* log2_package_cores_max) uX_noexcept;

	static void uX_abi cpuinfo_x86_decode_cache_descriptor(uint8_t const descriptor,
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
														uint32_t* prefetch_size) uX_noexcept;

	static uint32_t uX_abi bit_length(uint32_t const n) uX_noexcept;

	static bool uX_abi cpuinfo_x86_decode_deterministic_cache_parameters(cpuid_regs const regs, struct cpuinfo_x86_caches* cache, uint32_t* package_cores_max) uX_noexcept;

	static bool uX_abi cpuinfo_x86_decode_cache_properties(cpuid_regs const regs, struct cpuinfo_x86_caches* cache) uX_noexcept;

	static parser_state const uX_abi kEmptyparser_state(void) uX_noexcept;

	static void uX_abi reset_context(struct parser_state* state) uX_noexcept;

	static bool uX_abi erase_matching(char* string, size_t length, char const* target) uX_noexcept;

	static bool uX_abi is_upper_letter(char character) uX_noexcept;

	static bool uX_abi is_digit(char character) uX_noexcept;

	static bool uX_abi is_zero_number(char const* token_start, char const* token_end) uX_noexcept;

	static bool uX_abi transform_token(char* token_start, char* token_end, struct parser_state* state) uX_noexcept;

	static bool uX_abi is_space(char const* token_start, char const* token_end) uX_noexcept;

	static bool uX_abi is_number(char const* token_start, char const* token_end) uX_noexcept;

	static bool uX_abi is_model_number(char const* token_start, char const* token_end) uX_noexcept;

	static bool uX_abi is_frequency(char const* token_start, char const* token_end) uX_noexcept;

	static char* uX_abi move_token(char const* token_start, char const* token_end, char* output_ptr) uX_noexcept;

	static char const* const uX_abi get_vendor_string_map(const enum cpuinfo_vendor vendor) uX_noexcept;

	static uint32_t uX_abi cpuinfo_x86_normalize_brand_string(const char raw_name[CPUINFO_PACKAGE_NAME_MAX], char normalized_name[CPUINFO_PACKAGE_NAME_MAX]) uX_noexcept;

	static uint32_t uX_abi cpuinfo_x86_format_package_name(const enum cpuinfo_vendor vendor, char const normalized_brand_string[CPUINFO_PACKAGE_NAME_MAX],
															char package_name[CPUINFO_PACKAGE_NAME_MAX]) uX_noexcept;

protected:

private:

} CPUFeatures_t;

typedef CPUFeatures* pCPUFeatures_t;
/* Basic info functions*/

/* find supported instruction set
 return value:
   0           = 80386 instruction set
   8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
   9  or above = CMOV supported by CPU
  10  or above = SSE (XMM) supported by CPU and operating system
  20  or above = SSE2
  30  or above = SSE3
  31  or above = Supplementary SSE3 (SSSE3)
  41  or above = SSE4.1
  42  or above = SSE4.2 & POPCNT
  50  or above = AVX (YMM) supported by CPU and operating system
  51  or above = PCLMUL & AES
  52  or above = AVX2
  57  or above = FMA3, F16C, BMI1, BMI2, LZCNT
  60  or above = AVX512F (ZMM) supported by CPU and operating system
  61  or above = AVX512DQ
  62  or above = AVX512BW
  63  or above = AVX512VL
*/
/*
extern uX_API count_t const uX_abi IntrinSet(void);

/ * EAX = 00H, EBX = 00H * /
extern uX_API bool_t const uX_abi has_CPUID(void);

/ * EAX = 00H, ECX * /
extern uX_API bool_t const uX_abi is_Intel(void);
extern uX_API bool_t const uX_abi is_AMD(void);

/ * EAX = 01H, ECX * /
extern uX_API bool_t const uX_abi has_SSE3(void);
extern uX_API bool_t const uX_abi has_PCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_MONITOR(void);
extern uX_API bool_t const uX_abi has_SSSE3(void);
extern uX_API bool_t const uX_abi has_FMA(void);
extern uX_API bool_t const uX_abi has_CMPXCHG16B(void);
extern uX_API bool_t const uX_abi has_SSE4_1(void);
extern uX_API bool_t const uX_abi has_SSE4_2(void);
extern uX_API bool_t const uX_abi has_MOVBE(void);
extern uX_API bool_t const uX_abi has_POPCNT(void);
extern uX_API bool_t const uX_abi has_AES(void);
extern uX_API bool_t const uX_abi has_XSAVE(void);
extern uX_API bool_t const uX_abi has_OSXSAVE(void);
extern uX_API bool_t const uX_abi has_AVX(void);
extern uX_API bool_t const uX_abi has_F16C(void);
extern uX_API bool_t const uX_abi has_RDRAND(void);

/ * EAX = 01H, EDX * /
extern uX_API bool_t const uX_abi has_FPU(void);
extern uX_API bool_t const uX_abi has_TSC(void);
extern uX_API bool_t const uX_abi has_MSR(void);
extern uX_API bool_t const uX_abi has_CMPXCHG8B(void);
extern uX_API bool_t const uX_abi has_SEP(void);
extern uX_API bool_t const uX_abi has_CMOV(void);
extern uX_API bool_t const uX_abi has_CLFSH(void);
extern uX_API bool_t const uX_abi has_MMX(void);
extern uX_API bool_t const uX_abi has_FXSR(void);
extern uX_API bool_t const uX_abi has_SSE(void);
extern uX_API bool_t const uX_abi has_SSE2(void);

/ * EAX = 07H, EBX * /
extern uX_API bool_t const uX_abi has_FSGSBASE(void);
extern uX_API bool_t const uX_abi has_SGX(void);
extern uX_API bool_t const uX_abi has_BMI1(void);
extern uX_API bool_t const uX_abi has_HLE(void);
extern uX_API bool_t const uX_abi has_AVX2(void);
extern uX_API bool_t const uX_abi has_SMEP(void);
extern uX_API bool_t const uX_abi has_BMI2(void);
extern uX_API bool_t const uX_abi has_ERMS(void);
extern uX_API bool_t const uX_abi has_INVPCID(void);
extern uX_API bool_t const uX_abi has_RTM(void);
extern uX_API bool_t const uX_abi has_MPX(void);
extern uX_API bool_t const uX_abi has_AVX512F(void);
extern uX_API bool_t const uX_abi has_AVX512DQ(void);
extern uX_API bool_t const uX_abi has_RDSEED(void);
extern uX_API bool_t const uX_abi has_ADX(void);
extern uX_API bool_t const uX_abi has_SMAP(void);
extern uX_API bool_t const uX_abi has_AVX512_IFMA(void);
extern uX_API bool_t const uX_abi has_CLFLUSHOPT(void);
extern uX_API bool_t const uX_abi has_CLWB(void);
extern uX_API bool_t const uX_abi has_AVX512PF(void);
extern uX_API bool_t const uX_abi has_AVX512ER(void);
extern uX_API bool_t const uX_abi has_AVX512CD(void);
extern uX_API bool_t const uX_abi has_SHA(void);
extern uX_API bool_t const uX_abi has_AVX512BW(void);
extern uX_API bool_t const uX_abi has_AVX512VL(void);

/ * EAX = 07H, ECX * /
extern uX_API bool_t const uX_abi has_PREFETCHWT1(void);
extern uX_API bool_t const uX_abi has_AVX512_VBMI(void);
extern uX_API bool_t const uX_abi has_UMIP(void);
extern uX_API bool_t const uX_abi has_PKU(void);
extern uX_API bool_t const uX_abi has_OSPKE(void);
extern uX_API bool_t const uX_abi has_AVX512_VBMI2(void);
extern uX_API bool_t const uX_abi has_GFNI(void);
extern uX_API bool_t const uX_abi has_VAES(void);
extern uX_API bool_t const uX_abi has_VPCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_AVX512_VNNI(void);
extern uX_API bool_t const uX_abi has_AVX512_BITALG(void);
extern uX_API bool_t const uX_abi has_AVX512_VPOPCNTDQ(void);
extern uX_API bool_t const uX_abi has_RDPID(void);

/ * EAX = 07H, EDX * /
extern uX_API bool_t const uX_abi has_AVX512_4VNNIW(void);
extern uX_API bool_t const uX_abi has_AVX512_4FMAPS(void);

/ * EAX = 80000001H, ECX * /
extern uX_API bool_t const uX_abi has_LAHF(void);
extern uX_API bool_t const uX_abi has_LZCNT(void);
extern uX_API bool_t const uX_abi has_ABM(void);
extern uX_API bool_t const uX_abi has_SSE4a(void);
extern uX_API bool_t const uX_abi has_PREFETCHW(void);
extern uX_API bool_t const uX_abi has_XOP(void);
extern uX_API bool_t const uX_abi has_LWP(void);
extern uX_API bool_t const uX_abi has_FMA4(void);
extern uX_API bool_t const uX_abi has_TBM(void);
extern uX_API bool_t const uX_abi has_MWAITX(void);

/ * EAX = 80000001H, EDX * /
extern uX_API bool_t const uX_abi has_SYSCALL(void);
extern uX_API bool_t const uX_abi has_MMXEXT(void);
extern uX_API bool_t const uX_abi has_RDTSCP(void);
extern uX_API bool_t const uX_abi has_3DNOWEXT(void);
extern uX_API bool_t const uX_abi has_3DNOW(void);

/ * EAX = 07H, EBX , ECX * /
extern uX_API bool_t const uX_abi has_AVX512_GFNI(void);
extern uX_API bool_t const uX_abi has_AVX512_GFNI_VL(void);
extern uX_API bool_t const uX_abi has_AVX512_VAES(void);
extern uX_API bool_t const uX_abi has_AVX512_VAES_VL(void);
extern uX_API bool_t const uX_abi has_AVX512_VPCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_AVX512_VPCLMULQDQ_VL(void);

extern uX_API bool_t const uX_abi has_AVX512_IFMA_VL(void);
extern uX_API bool_t const uX_abi has_AVX512_VBMI_VL(void);
extern uX_API bool_t const uX_abi has_AVX512_VBMI2_VL(void);
extern uX_API bool_t const uX_abi has_AVX512_VNNI_VL(void);
extern uX_API bool_t const uX_abi has_AVX512_BITALG_VL(void);
extern uX_API bool_t const uX_abi has_AVX512_VPOPCNTDQ_VL(void);

extern uX_API bool_t const uX_abi has_AVX512BW_GFNI(void);
extern uX_API bool_t const uX_abi has_AVX512BW_GFNI_VL(void);
extern uX_API bool_t const uX_abi has_AVX512BW_VAES(void);
extern uX_API bool_t const uX_abi has_AVX512BW_VAES_VL(void);
extern uX_API bool_t const uX_abi has_AVX512BW_VPCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_AVX512BW_VPCLMULQDQ_VL(void);
extern uX_API bool_t const uX_abi has_AVX512BW_VL(void);

extern uX_API bool_t const uX_abi has_AVX512DQ_GFNI(void);
extern uX_API bool_t const uX_abi has_AVX512DQ_GFNI_VL(void);
extern uX_API bool_t const uX_abi has_AVX512DQ_VAES(void);
extern uX_API bool_t const uX_abi has_AVX512DQ_VAES_VL(void);
extern uX_API bool_t const uX_abi has_AVX512DQ_VPCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_AVX512DQ_VPCLMULQDQ_VL(void);
extern uX_API bool_t const uX_abi has_AVX512DQ_VL(void);

extern uX_API bool_t const uX_abi has_AVX512CD_VL(void);

/ * EAX = 07H, ECX, EBX  | EAX = 01H, ECX , EDX * /
extern uX_API bool_t const uX_abi has_SSE_AES(void);
extern uX_API bool_t const uX_abi has_SSE_GFNI(void);
extern uX_API bool_t const uX_abi has_SSE_PCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_SSE2_AES(void);
extern uX_API bool_t const uX_abi has_SSE2_GFNI(void);
extern uX_API bool_t const uX_abi has_SSE2_PCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_SSE3_AES(void);
extern uX_API bool_t const uX_abi has_SSE3_GFNI(void);
extern uX_API bool_t const uX_abi has_SSE3_PCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_SSSE3_AES(void);
extern uX_API bool_t const uX_abi has_SSSE3_GFNI(void);
extern uX_API bool_t const uX_abi has_SSSE3_PCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_SSE4_1_AES(void);
extern uX_API bool_t const uX_abi has_SSE4_1_GFNI(void);
extern uX_API bool_t const uX_abi has_SSE4_1_PCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_SSE4_2_AES(void);
extern uX_API bool_t const uX_abi has_SSE4_2_GFNI(void);
extern uX_API bool_t const uX_abi has_SSE4_2_PCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_AVX_AES(void);
extern uX_API bool_t const uX_abi has_AVX_GFNI(void);
extern uX_API bool_t const uX_abi has_AVX_PCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_AVX_VAES(void);
extern uX_API bool_t const uX_abi has_AVX_VPCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_AVX2_AES(void);
extern uX_API bool_t const uX_abi has_AVX2_GFNI(void);
extern uX_API bool_t const uX_abi has_AVX2_PCLMULQDQ(void);
extern uX_API bool_t const uX_abi has_AVX2_VAES(void);
extern uX_API bool_t const uX_abi has_AVX2_VPCLMULQDQ(void);

extern uX_API bool_t const uX_abi has_enabled_XMM(void);
extern uX_API bool_t const uX_abi has_enabled_YMM(void);
extern uX_API bool_t const uX_abi has_enabled_ZMM(void);

/ * Check if CPUFeatures is initiated * /
extern uX_API bool_t const uX_abi CPUFeatures_is_Inited(void);

/ * Extra info functions* /

uX_PACK_STACK

extern uX_API void const uX_abi CpuType(int* vendor, int* family, int* model);

extern uX_API char const* const uX_abi ProcessorName(void);

uX_PACK_SIZE_T

extern uX_API size_t const uX_abi DataCacheSize(int level);
extern uX_API size_t const uX_abi L1DataCacheSize(void);
extern uX_API size_t const uX_abi L2DataCacheSize(void);
extern uX_API size_t const uX_abi L3DataCacheSize(void);

extern uX_API count_t const uX_abi UnalignedIsFaster(void);
extern uX_API count_t const uX_abi Store256BitIsFaster(void);*/

#define CPUINFO_LOG_DEBUG_PARSERS 0

#ifndef CPUINFO_LOG_LEVEL
#define CPUINFO_LOG_LEVEL uX_CLOG_ERROR
#endif

uX_CLOG_DEFINE_LOG_DEBUG(cpuinfo_log_debug, "cpuinfo", CPUINFO_LOG_LEVEL);
uX_CLOG_DEFINE_LOG_INFO(cpuinfo_log_info, "cpuinfo", CPUINFO_LOG_LEVEL);
uX_CLOG_DEFINE_LOG_WARNING(cpuinfo_log_warning, "cpuinfo", CPUINFO_LOG_LEVEL);
uX_CLOG_DEFINE_LOG_ERROR(cpuinfo_log_error, "cpuinfo", CPUINFO_LOG_LEVEL);
uX_CLOG_DEFINE_LOG_FATAL(cpuinfo_log_fatal, "cpuinfo", CPUINFO_LOG_LEVEL);

uX_PACK_POP
namespace_x86_end
namespace_cpu_end
namespace_uX_end
uX_EXTERNCC_END

#endif /*uX_X86_OR_X64_CPU*/

/*
class CPUFeatures
{
	CPUFeatures(void);

private:

#if uX_X86_OR_X64_CPU

	static unsigned __int32c eax = 0;
	static unsigned __int32c ebx = 1;
	static unsigned __int32c ecx = 2;
	static unsigned __int32c edx = 3;
	static unsigned __int32c alx = 4;
	static __int32 CPUInfo[alx];

	// Vendors

	// Intel vendor string: "GenuineIntel"
	static __int32 Genu_ebx;
	static __int32 ineI_edx;
	static __int32 ntel_ecx;
	// AMD vendor strings: "AuthenticAMD", "AMDisbetter!", "AMD ISBETTER"
	static __int32 Auth_ebx;
	static __int32 enti_edx;
	static __int32 cAMD_ecx;
	static __int32 AMDi_ebx;
	static __int32 sbet_edx;
	static __int32 ter_ecx;
	static __int32 AMD_ebx;
	static __int32 ISBE_edx;
	static __int32 TTER_ecx;
	// VIA (Centaur) vendor strings: "CentaurHauls", "VIA VIA VIA "
	static __int32 Cent_ebx;
	static __int32 aurH_edx;
	static __int32 auls_ecx;
	static __int32 VIA_alx;
	// Transmeta vendor strings: "GenuineTMx86", "TransmetaCPU"
	static __int32 ineT_edx;
	static __int32 Mx86_ecx;
	static __int32 Tran_ebx;
	static __int32 smet_ecx;
	static __int32 aCPU_edx;
	// Cyrix vendor string: "CyrixInstead"
	static __int32 Cyri_ebx;
	static __int32 xIns_edx;
	static __int32 tead_ecx;
	// Rise vendor string: "RiseRiseRise"
	static __int32 Rise_alx;
	// NSC vendor string: "Geode by NSC"
	static __int32 Geod_ebx;
	static __int32 e_by_edx;
	static __int32 NSC_ecx;
	// SiS vendor string: "SiS SiS SiS "
	static __int32 SiS_alx;
	// NexGen vendor string: "NexGenDriven"
	static __int32 NexG_ebx;
	static __int32 enDr_edx;
	static __int32 iven_ecx;
	// UMC vendor string: "UMC UMC UMC "
	static __int32 UMC_alx;
	// RDC vendor string: "Genuine  RDC"
	static __int32 ine_edx;
	static __int32 RDC_ecx;
	// D&MP vendor string: "Vortex86 SoC"
	static __int32 Vort_ebx;
	static __int32 ex86_edx;
	static __int32 SoC_ecx;

	// Features

	// Features in ECX for level 1
	static __int32 ecx_SSE3;
	static __int32 ecx_PCLMUL;
	static __int32 ecx_DTES64;
	static __int32 ecx_MONITOR;
	static __int32 ecx_DSCPL;
	static __int32 ecx_VMX;
	static __int32 ecx_LZCNT;
	static __int32 ecx_SMX;
	static __int32 ecx_EIST;
	static __int32 ecx_TM2;
	static __int32 ecx_SSSE3;
	static __int32 ecx_CNXTID;
	static __int32 ecx_FMA;
	static __int32 ecx_CMPXCHG16B;
	static __int32 ecx_xTPR;
	static __int32 ecx_PDCM;
	static __int32 ecx_PCID;
	static __int32 ecx_DCA;
	static __int32 ecx_SSE4_1;
	static __int32 ecx_SSE4_2;
	static __int32 ecx_x2APIC;
	static __int32 ecx_MOVBE;
	static __int32 ecx_POPCNT;
	static __int32 ecx_TSCDeadline;
	static __int32 ecx_AES;
	static __int32 ecx_XSAVE;
	static __int32 ecx_OSXSAVE;
	static __int32 ecx_AVX;
	static __int32 ecx_F16C;
	static __int32 ecx_RDRAND;

	// Features in EDX for level 1 /
	static __int32 edx_FPU;
	static __int32 edx_VME;
	static __int32 edx_DE;
	static __int32 edx_PSE;
	static __int32 edx_TSC;
	static __int32 edx_MSR;
	static __int32 edx_PAE;
	static __int32 edx_MCE;
	static __int32 edx_CX8;
	static __int32 edx_APIC;
	static __int32 edx_SEP;
	static __int32 edx_MTRR;
	static __int32 edx_PGE;
	static __int32 edx_MCA;
	static __int32 edx_CMOV;
	static __int32 edx_PAT;
	static __int32 edx_PSE36;
	static __int32 edx_PSN;
	static __int32 edx_CLFSH;
	static __int32 edx_DS;
	static __int32 edx_ACPI;
	static __int32 edx_MMX;
	static __int32 edx_FXSR;
	static __int32 edx_FXSAVE;
	static __int32 edx_SSE;
	static __int32 edx_SSE2;
	static __int32 edx_SS;
	static __int32 edx_HTT;
	static __int32 edx_TM;
	static __int32 edx_PBE;

	// Extended Features

	// ECX
	static __int32 ecx_LAHF;
	static __int32 ecx_ABM;
	static __int32 ecx_SSE4A;
	static __int32 ecx_PRFCHW;
	static __int32 ecx_XOP;
	static __int32 ecx_LWP;
	static __int32 ecx_FMA4;
	static __int32 ecx_TBM;

	// %edx
	static __int32 edx_MMXEXT;
	static __int32 edx_LM;
	static __int32 edx_3DNOWP;
	static __int32 edx_3DNOWP;

	// Extended Features (%eax == 7)

	// EBX  level 7 sub-leaf 0
	static __int32 ebx_FSGSBASE;
	static __int32 ebx_BMI;
	static __int32 ebx_HLE;
	static __int32 ebx_AVX2;
	static __int32 ebx_SMEP;
	static __int32 ebx_BMI2;
	static __int32 ebx_MOVSB;
	static __int32 ebx_RTM;
	static __int32 ebx_AVX512F;
	static __int32 ebx_AVX512DQ;
	static __int32 ebx_RDSEED;
	static __int32 ebx_ADX;
	static __int32 ebx_CLFLUSHOPT;
	static __int32 ebx_AVX512PF;
	static __int32 ebx_AVX512ER;
	static __int32 ebx_AVX512CD;
	static __int32 ebx_SHA;
	static __int32 ebx_AVX512BW;
	static __int32 ebx_AVX512VL;

	// ECX
	static __int32 ecx_PREFETCHWT1;

	// Extended State Enumeration Sub-leaf (%eax == 13, ECX == 1)
	static __int32 ecx_XSAVEOPT;
	static __int32 ecx_XSAVEC;
	static __int32 ecx_XSAVES;

public:

	// detect if CPU Is AMD
	static int uX_abi is_AMD(void);

	// detect if CPU Is Intel
	static int uX_abi is_Intel(void);

	// detect if CPU supports the MMX instruction set
	static int uX_abi has_MMX(void);

	// detect if CPU supports the SSE1 instruction set
	static int uX_abi has_SSE(void);

	// detect if CPU supports the SSE2 instruction set
	static int uX_abi has_SSE2(void);

	// detect if CPU supports the SSE3 instruction set
	static int uX_abi has_SSE3(void);

	// detect if CPU supports the SSSE3 instruction set
	static int uX_abi has_SSSE3(void);

	// detect if CPU supports the SSE4.1 instruction set
	static int uX_abi has_SSE4_1(void);

	// detect if CPU supports the SSE4.2 instruction set
	static int uX_abi has_SSE4_2(void);

	// detect if CPU supports the OSXSAVE instruction set
	static int uX_abi has_OSXSAVE(void);

	// detect if CPU supports the XGETBV_YMM instruction set
	static int uX_abi has_XGETBV_YMM(void);

	// detect if CPU supports the AVX instruction set
	static int uX_abi has_AVX(void);

	// detect if CPU supports the AVX2 instruction set
	static int uX_abi has_AVX2(void);

	// detect if CPU supports the F16C instruction set
	static int uX_abi has_F16C(void);

	// detect if CPU supports the FMA3 instruction set
	static int uX_abi has_FMA3(void);

	// detect if CPU supports the FMA4 instruction set
	static int uX_abi has_FMA4(void);

	// detect if CPU supports the XOP instruction set
	static int uX_abi has_XOP(void);

	// detect if CPU supports the XGETBV_YMM instruction set
	static int uX_abi has_XGETBV_ZMM(void);

	// detect if CPU supports the AVX-512 instruction set
	static int uX_abi has_AVX512F(void);
#endif // uX_X86_OR_X64_CPU
};*/

/*
class CPUFeatures
{
	// forward declarations
	class CPUFeatures_Internal;

public:
#if defined(uX_X86_OR_X64_CPU)
	// getters
	static std::string Vendor(void);
	static std::string Brand(void);

	/ * find supported instruction set
	return value:
	0           = 80386 instruction set
	8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
	10  or above = SSE (XMM) supported by CPU and operating system
	20  or above = SSE2
	30  or above = SSE3
	31  or above = Supplementary SSE3 (SSSE3)
	41  or above = SSE4.1
	42  or above = SSE4.2
	50  or above = AVX (YMM) supported by CPU and operating system
	52  or above = AVX2
	60  or above = AVX512 (ZMM) supported by CPU and operating system
	* /
	static __int32 available_simd(void);

	static int uX_abi has_SSE3(void);
	static int uX_abi has_PCLMULQDQ(void);
	static int uX_abi has_MONITOR(void);
	static int uX_abi has_SSSE3(void);
	static int uX_abi has_FMA(void);
	static int uX_abi has_CMPXCHG16B(void);
	static int uX_abi has_SSE4_1(void);
	static int uX_abi has_SSE4_2(void);
	static int uX_abi has_MOVBE(void);
	static int uX_abi has_POPCNT(void);
	static int uX_abi has_AES(void);
	static int uX_abi has_XSAVE(void);
	static int uX_abi has_OSXSAVE(void);
	static int uX_abi has_AVX(void);
	static int uX_abi has_F16C(void);
	static int uX_abi has_RDRAND(void);
	static int uX_abi has_FPU(void);
	static int uX_abi has_MSR(void);
	static int uX_abi has_CMPXCHG8B(void);
	static int uX_abi has_SEP(void);
	static int uX_abi has_CMOV(void);
	static int uX_abi has_CLFSH(void);
	static int uX_abi has_MMX(void);
	static int uX_abi has_FXSR(void);
	static int uX_abi has_SSE(void);
	static int uX_abi has_SSE2(void);
	static int uX_abi has_FSGSBASE(void);
	static int uX_abi has_BMI1(void);
	static int uX_abi has_HLE(void);
	static int uX_abi has_AVX2(void);
	static int uX_abi has_BMI2(void);
	static int uX_abi has_ERMS(void);
	static int uX_abi has_INVPCID(void);
	static int uX_abi has_RTM(void);
	static int uX_abi has_AVX512F(void);
	static int uX_abi has_AVX512DQ(void);
	static int uX_abi has_RDSEED(void);
	static int uX_abi has_ADX(void);
	static int uX_abi has_AVX512IFMA(void);
	static int uX_abi has_CLFLUSHOPT(void);
	static int uX_abi has_AVX512PF(void);
	static int uX_abi has_AVX512ER(void);
	static int uX_abi has_AVX512CD(void);
	static int uX_abi has_AVX512BW(void);
	static int uX_abi has_AVX512VL(void);
	static int uX_abi has_SHA(void);
	static int uX_abi has_PREFETCHWT1(void);
	static int uX_abi has_AVX512VBMI(void);
	static int uX_abi has_AVX512_VPOPCNTDQ(void);
	static int uX_abi has_AVX512_4VNNIW(void);
	static int uX_abi has_AVX512_4FMAPS(void);
	static int uX_abi has_LAHF(void);
	static int uX_abi has_LZCNT(void);
	static int uX_abi has_ABM(void);
	static int uX_abi has_SSE4a(void);
	static int uX_abi has_XOP(void);
	static int uX_abi has_FMA4(void);
	static int uX_abi has_TBM(void);
	static int uX_abi has_SYSCALL(void);
	static int uX_abi has_MMXEXT(void);
	static int uX_abi has_RDTSCP(void);
	static int uX_abi has_3DNOWEXT(void);
	static int uX_abi has_3DNOW(void);

	static int uX_abi has_enabled_XMM(void);
	static int uX_abi has_enabled_YMM(void);
	static int uX_abi has_enabled_ZMM(void);

	/ * find supported instruction set
	return value:
	0           = 80386 instruction set
	8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
	10  or above = SSE (XMM) supported by CPU and operating system
	20  or above = SSE2
	30  or above = SSE3
	31  or above = Supplementary SSE3 (SSSE3)
	41  or above = SSE4.1
	42  or above = SSE4.2
	50  or above = AVX (YMM) supported by CPU and operating system
	52  or above = AVX2
	60  or above = AVX512 (ZMM) supported by CPU and operating system
	* /
	/ *extern __int32 uX_available_SIMD(void);

	bool has_SSE3(void);
	bool has_PCLMULQDQ(void);
	bool has_MONITOR(void);
	bool has_SSSE3(void);
	bool has_FMA(void);
	bool has_CMPXCHG16B(void);
	bool has_SSE4_1(void);
	bool has_SSE4_2(void);
	bool has_MOVBE(void);
	bool has_POPCNT(void);
	bool has_AES(void);
	bool has_XSAVE(void);
	bool has_OSXSAVE(void);
	bool has_AVX(void);
	bool has_F16C(void);
	bool has_RDRAND(void);
	bool has_FPU(void);
	bool has_MSR(void);
	bool has_CMPXCHG8B(void);
	bool has_SEP(void);
	bool has_CMOV(void);
	bool has_CLFSH(void);
	bool has_MMX(void);
	bool has_FXSR(void);
	bool has_SSE(void);
	bool has_SSE2(void);
	bool has_FSGSBASE(void);
	bool has_BMI1(void);
	bool has_HLE(void);
	bool has_AVX2(void);
	bool has_BMI2(void);
	bool has_ERMS(void);
	bool has_INVPCID(void);
	bool has_RTM(void);
	bool has_AVX512F(void);
	bool has_AVX512DQ(void);
	bool has_RDSEED(void);
	bool has_ADX(void);
	bool has_AVX512IFMA(void);
	bool has_CLFLUSHOPT(void);
	bool has_AVX512PF(void);
	bool has_AVX512ER(void);
	bool has_AVX512CD(void);
	bool has_AVX512BW(void);
	bool has_AVX512VL(void);
	bool has_SHA(void);
	bool has_PREFETCHWT1(void);
	bool has_AVX512VBMI(void);
	bool has_AVX512_VPOPCNTDQ(void);
	bool has_AVX512_4VNNIW(void);
	bool has_AVX512_4FMAPS(void);
	bool has_LAHF(void);
	bool has_LZCNT(void);
	bool has_ABM(void);
	bool has_SSE4a(void);
	bool has_XOP(void);
	bool has_FMA4(void);
	bool has_TBM(void);
	bool has_SYSCALL(void);
	bool has_MMXEXT(void);
	bool has_RDTSCP(void);
	bool has_3DNOWEXT(void);
	bool has_3DNOW(void);

	bool has_enabled_XMM(void);
	bool has_enabled_YMM(void);
	bool has_enabled_ZMM(void);* /
#endif

private:
	uX_API CPUFeatures_Internal CPU_Rep;

	class CPUFeatures_Internal
	{
	public:
		CPUFeatures_Internal(void);
	#if defined(uX_X86_OR_X64_CPU)
		__int32 nIds_;
		__int32 nExIds_;
		std::string vendor_;
		std::string brand_;
		bool isIntel_;
		bool isAMD_;
		bool hasXMM_;
		bool hasYMM_;
		bool hasZMM_;
		__int32 nIntrinVers_;
		std::bitset<32> f_1_ECX_;
		std::bitset<32> f_1_EDX_;
		std::bitset<32> f_7_EBX_;
		std::bitset<32> f_7_ECX_;
		std::bitset<32> f_7_EDX_;
		std::bitset<32> f_81_ECX_;
		std::bitset<32> f_81_EDX_;
		std::vector<std::array<__int32, 4>> data_;
		std::vector<std::array<__int32, 4>> extdata_;
	#endif
	};
};*/

/*#if defined(uX_X86_OR_X64_CPU)
/ * find supported instruction set
return value:
0           = 80386 instruction set
8  or above = MMX (MMX) supported by CPU (not testing for O.S. support)
10  or above = SSE (XMM) supported by CPU and operating system
20  or above = SSE2
30  or above = SSE3
31  or above = Supplementary SSE3 (SSSE3)
41  or above = SSE4.1
42  or above = SSE4.2
50  or above = AVX (YMM) supported by CPU and operating system
52  or above = AVX2
60  or above = AVX512 (ZMM) supported by CPU and operating system
* /

extern __int32 uX_available_SIMD(void);

bool has_SSE3(void);
bool has_PCLMULQDQ(void);
bool has_MONITOR(void);
bool has_SSSE3(void);
bool has_FMA(void);
bool has_CMPXCHG16B(void);
bool has_SSE4_1(void);
bool has_SSE4_2(void);
bool has_MOVBE(void);
bool has_POPCNT(void);
bool has_AES(void);
bool has_XSAVE(void);
bool has_OSXSAVE(void);
bool has_AVX(void);
bool has_F16C(void);
bool has_RDRAND(void);
bool has_FPU(void);
bool has_MSR(void);
bool has_CMPXCHG8B(void);
bool has_SEP(void);
bool has_CMOV(void);
bool has_CLFSH(void);
bool has_MMX(void);
bool has_FXSR(void);
bool has_SSE(void);
bool has_SSE2(void);
bool has_FSGSBASE(void);
bool has_BMI1(void);
bool has_HLE(void);
bool has_AVX2(void);
bool has_BMI2(void);
bool has_ERMS(void);
bool has_INVPCID(void);
bool has_RTM(void);
bool has_AVX512F(void);
bool has_AVX512DQ(void);
bool has_RDSEED(void);
bool has_ADX(void);
bool has_AVX512IFMA(void);
bool has_CLFLUSHOPT(void);
bool has_AVX512PF(void);
bool has_AVX512ER(void);
bool has_AVX512CD(void);
bool has_AVX512BW(void);
bool has_AVX512VL(void);
bool has_SHA(void);
bool has_PREFETCHWT1(void);
bool has_AVX512VBMI(void);
bool has_AVX512_VPOPCNTDQ(void);
bool has_AVX512_4VNNIW(void);
bool has_AVX512_4FMAPS(void);
bool has_LAHF(void);
bool has_LZCNT(void);
bool has_ABM(void);
bool has_SSE4a(void);
bool has_XOP(void);
bool has_FMA4(void);
bool has_TBM(void);
bool has_SYSCALL(void);
bool has_MMXEXT(void);
bool has_RDTSCP(void);
bool has_3DNOWEXT(void);
bool has_3DNOW(void);

bool has_enabled_XMM(void);
bool has_enabled_YMM(void);
bool has_enabled_ZMM(void);
#endif

// Initialize static member data
const CPUFeatures::CPUFeatures_Internal CPUFeatures::CPU_Rep;*/

//namespace_eXOAMP_end

#if !defined(uX_BUILD_SOURCE)
#include "cpu.inl"
#endif

#endif // uX_CPU_H
