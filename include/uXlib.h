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

#ifndef uX_LIB_H
#define uX_LIB_H 1

/**
 * \defgroup UASMLIB optimized library
 * To use these functions and types include the header file \p uasmlib.h in your program
 */

/**
 * \ingroup UASMLIB
 * \file uasmlib.h
 */

/**
 * \defgroup uX_NAMESPACE Namespace uX optimized library
 * \ingroup UASMLIB
 * To use these functions and types include the header file \p uasmlib.h in your program
 */

/**
 * \defgroup uX_NAMESPACE_XMM Namespace xmm specialized for SSE SIMD vector intrinsics
 * \ingroup uX_NAMESPACE
 * To use these functions and types include the header file \p uasmlib.h in your program
 */

/**
 * \defgroup uX_NAMESPACE_YMM Namespace xmm specialized for AVX SIMD vector intrinsics
 * \ingroup uX_NAMESPACE
 * To use these functions and types include the header file \p uasmlib.h in your program
 */

/**
 * \defgroup uX_NAMESPACE_ZMM Namespace xmm specialized for AVX512 SIMD vector intrinsics
 * \ingroup uX_NAMESPACE
 * To use these functions and types include the header file \p uasmlib.h in your program
 */

#ifndef uX_TYPES_H
#include "../../core/include/uXtypes.h"
#endif  /* uX_TYPES_H */

/**
 * \ingroup uX_NAMESPACE
 * \namespace uX
 * \brief Namespace uX optimized library
 * \details The namespace \p uX provides an optimized library for x86 ARCH and device GPU
 *
 */
namespace_uX

/**
 * \ingroup uX_NAMESPACE_XMM
 * \namespace uX::xmm
 * \brief Namespace \p uX::xmm SSE SIMD vector intrinsics
 * \details The namespace \p uX::xmm provides specialized SSE SIMD vector intrinsics
 *
 */
	namespace_xmm
	namespace_xmm_end

	/**
	 * \ingroup uX_NAMESPACE_YMM
	 * \namespace uX::ymm
	 * \brief Namespace \p uX::ymm AVX SIMD vector intrinsics
	 * \details The namespace \p uX::ymm provides specialized AVX SIMD vector intrinsics
	 *
	 */
	namespace_ymm
	namespace_ymm_end

	/**
	 * \ingroup uX_NAMESPACE_ZMM
	 * \namespace uX::zmm
	 * \brief Namespace \p uX::zmm AVX512 SIMD vector intrinsics
	 * \details The namespace \p uX::zmm provides specialized AVX512 SIMD vector intrinsics
	 *
	 */
	namespace_zmm
	namespace_zmm_end

	namespace_uX_end

	uX_EXTERNC_BEGIN

	uX_PACK_PUSH_SIZE_T

	//extern int DllMain(void*, unsigned int, void*);

	uX_PACK_POP

	uX_EXTERNC_END

#ifdef uX_X86_OR_X64_CPU
#include "../../core/include/x86/uXcpu.h"
//#include "x86/uXintrin.h"
//#include "x86/uXxmmmath.h"
#endif

#endif // uX_LIB_H
