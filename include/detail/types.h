/*
 * / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
 * / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
 * / /																				 / /
 * / /			Copyright 2021 (c) Navegos QA - optimized library					 / /
 * / /																				 / /
 * / /	Licensed under the Apache License, Version 2.0 (the "License");				 / /
 * / /	you may not use this file except in compliance with the License.			 / /
 * / /	You may obtain a copy of the License at										 / /
 * / /																				 / /
 * / /		http://www.apache.org/licenses/LICENSE-2.0								 / /
 * / /																				 / /
 * / /	Unless required by applicable law or agreed to in writing, software			 / /
 * / /	distributed under the License is distributed on an "AS IS" BASIS,			 / /
 * / /	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.	 / /
 * / /	See the License for the specific language governing permissions and			 / /
 * / /	limitations under the License.												 / /
 * / /																				 / /
 * / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
 * / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
 */

#pragma once

#ifndef uX_TYPES_H
#define uX_TYPES_H 1

#ifndef uX_BASEDEFS_H
#include "basedefs.h"
#endif  /* uX_BASEDEFS_H */

#ifndef uX_EXPORTS_H
#include "exp.h"
#endif	/* uX_EXPORTS_H */

#ifndef uX_SAL_PROCESS_H
#include "salprocess.h"
#endif  /* uX_SAL_PROCESS_H */

#ifndef _STDINT
#include <stdint.h>
#endif

/*
#ifndef _INC_STDLIB
#include <stdlib.h>
#endif*/

uX_EXTERNC_BEGIN
#ifndef uX_MSVC_COMPATIBLE_COMPILER
typedef char				__int8;
typedef short				__int16;
typedef long				__int32;
typedef long long			__int64;
#endif

#ifndef _STDINT
typedef signed char			int8_t;
typedef short				int16_t;
typedef int					int32_t;
typedef long long			int64_t;
typedef unsigned char		uint8_t;
typedef unsigned short		uint16_t;
typedef unsigned int		uint32_t;
typedef unsigned long long	uint64_t;
#endif

#ifdef __cplusplus
using intbool_t = unsigned int;
using count_t = unsigned int;
#else
typedef unsigned int		intbool_t;
typedef unsigned int		count_t;
#endif

#if !defined(_VCRUNTIME_H) && !defined(_INC_STDLIB) && !defined(_STDLIB)
# if defined(uX_X64) || defined(uX_A64)
typedef unsigned __int64	size_t;
typedef __int64				ptrdiff_t;
typedef __int64				intptr_t;
typedef unsigned __int64	uintptr_t;
# else
typedef unsigned int		size_t;
typedef int					ptrdiff_t;
typedef int					intptr_t;
typedef unsigned int		uintptr_t;
# endif
#endif

union __m128;
struct __m128d;
union __m128i;

union __m256;
struct __m256d;
union __m256i;

union __m512;
struct __m512d;
union __m512i;

#ifdef __cplusplus
using uXint8_t = int8_t;
using uXint16_t = int16_t;
using uXint32_t = int32_t;
using uXint64_t = int64_t;
using uXuint8_t = uint8_t;
using uXuint16_t = uint16_t;
using uXuint32_t = uint32_t;
using uXuint64_t = uint64_t;

using uXintbool_t = intbool_t;
using uXcount_t = count_t;

using uXsize_t = size_t;
using uXptrdiff_t = ptrdiff_t;
using uXintptr_t = intptr_t;
using uXuintptr_t = uintptr_t;

using uXm128_t = union __m128;
using uXm128d_t = struct __m128d;
using uXm128i_t = union __m128i;

using uXm256_t = union __m256;
using uXm256d_t = struct __m256d;
using uXm256i_t = union __m256i;

using uXm512_t = union __m512;
using uXm512d_t = struct __m512d;
using uXm512i_t = union __m512i;
#else
typedef int8_t				uXint8_t;
typedef int16_t				uXint16_t;
typedef int32_t				uXint32_t;
typedef int64_t				uXint64_t;
typedef uint8_t				uXuint8_t;
typedef uint16_t			uXuint16_t;
typedef uint32_t			uXuint32_t;
typedef uint64_t			uXuint64_t;

typedef intbool_t			uXintbool_t;
typedef count_t				uXcount_t;

typedef size_t				uXsize_t;
typedef ptrdiff_t			uXptrdiff_t;
typedef intptr_t			uXintptr_t;
typedef uintptr_t			uXuintptr_t;

typedef union __m128				uXm128_t;
typedef struct __m128d				uXm128d_t;
typedef union __m128i				uXm128i_t;

typedef union __m256				uXm256_t;
typedef struct __m256d				uXm256d_t;
typedef union __m256i				uXm256i_t;

typedef union __m512				uXm512_t;
typedef struct __m512d				uXm512d_t;
typedef union __m512i				uXm512i_t;
#endif
uX_EXTERNC_END

#ifdef __cplusplus
uX_EXTERNCC_BEGIN
namespace_uX
namespace_detail
uX_PACK_PUSH_SIZE_T

class booleancv
{
public:
	/*uX_gen_cpu_gpu booleancv() uX_cpu_amp uX_default;
	uX_gen_cpu_gpu ~booleancv() uX_cpu_amp uX_default;*/

	/*uX_gen_cpu_gpu uX_constexpr booleancv(booleancv const&) uX_cpu_amp uX_noexcept uX_default;
	uX_gen_cpu_gpu uX_constexpr booleancv& uX_abi operator=(booleancv const&) uX_cpu_amp uX_default;

	uX_gen_cpu_gpu uX_constexpr booleancv(booleancv&&) uX_cpu_amp uX_default;
	uX_gen_cpu_gpu uX_constexpr booleancv& uX_abi operator=(booleancv&&) uX_cpu_amp uX_default;*/

	/**
	 * \brief Constructor initialization from type uXintbool_t.
	 *
	 * \param Inint value to copy from.
	 */
	uX_gen_cpu_gpu_inline uX_constexpr booleancv(uXintbool_t Inint) uX_cpu_amp : boolean(Inint >= 1 ? 1 : 0) {}

	/**
	 * \brief Constructor initialization from type int32_t.
	 *
	 * \param Inint value to copy from.
	 */
	 /*uX_gen_cpu_gpu_inline uX_constexpr booleancv(int32_t Inint) uX_cpu_amp : boolean(Inint >= 1 ? 1 : Inint <= 0 ? 0 : 0) {}*/

	/**
	 * \brief Constructor initialization from type int.
	 *
	 * \param Inint value to copy from.
	 */
	uX_gen_cpu_gpu_inline uX_constexpr booleancv(int Inint) uX_cpu_amp : boolean(Inint != 0 ? 1 : 0 /*Inint >= 1 ? 1 : Inint <= 0 ? 0 : 0*/) {}

	/**
	 * \brief Constructor initialization from type bool.
	 *
	 * \param Inint value to copy from.
	 */
	uX_gen_cpu_gpu_inline uX_constexpr booleancv(bool Inint) uX_cpu_amp : boolean(Inint == true ? 1 : 0) {}

	/** \brief Type cast operator to convert to intbool_t. */
	uX_gen_cpu_gpu_inline uX_constexpr operator uXintbool_t() const uX_cpu_amp
	{
		return boolean;
	}

	/** \brief Function to convert to -int. */
	uX_gen_cpu_gpu_inline uX_constexpr uXint32_t uX_abi to_true_int32() const uX_cpu_amp
	{
		return boolean >= 1 ? (uXint32_t)-1 : 0;
	}

	/** \brief Function to convert to -int. */
	uX_gen_cpu_gpu_inline uX_constexpr uXint64_t uX_abi to_true_int64() const uX_cpu_only
	{
		return boolean >= 1 ? (uXint64_t)-1 : 0;
	}

	/** \brief Function to convert to -int. */
	uX_gen_cpu_gpu_inline uX_constexpr uXuint32_t uX_abi to_true_uint32() const uX_cpu_amp
	{
		return boolean >= 1 ? (uXuint32_t)0xfffffffful : 0;
	}

	/** \brief Function to convert to -int. */
	uX_gen_cpu_gpu_inline uX_constexpr uXuint64_t uX_abi to_true_uint64() const uX_cpu_only
	{
		return boolean >= 1 ? (uXuint64_t)0xffffffffffffffffull : 0;
	}

	/**
	 * \brief Assignment operator to convert from type intbool_t.
	 *
	 * \param Inint value to copy from.
	 */
	uX_gen_cpu_gpu_inline uX_constexpr booleancv& uX_abi operator=(uXintbool_t Inint) uX_cpu_amp
	{
		boolean = Inint >= 1 ? 1 : 0;
		return *this;
	}

	/**
	 * Assignment operator to convert from type int32_t.
	 *
	 * \param Inint value to copy from.
	 */
	/*uX_gen_cpu_gpu_inline uX_constexpr booleancv& uX_abi operator=(int32_t Inint) uX_cpu_amp
	{
		return booleancv(Inint);
	}*/

	/**
	 * \brief Assignment operator to convert from type int.
	 *
	 * \param Inint value to copy from.
	 */
	uX_gen_cpu_gpu_inline uX_constexpr booleancv& uX_abi operator=(int Inint) uX_cpu_amp
	{
		/*boolean = Inint >= 1 ? 1 : Inint <= 0 ? 0 : 0;*/
		boolean = Inint != 0 ? 1 : 0;
		return *this;
	}

	/**
	 * \brief Assignment operator to convert from type bool.
	 *
	 * \param Inint value to copy from.
	 */
	uX_gen_cpu_gpu_inline uX_constexpr booleancv& uX_abi operator=(bool Inint) uX_cpu_amp
	{
		boolean = Inint == true ? 1 : 0;
		return *this;
	}

private:
	uXintbool_t boolean:1;
};

using booleancv_t = booleancv;

/**
 * \brief boolean_t meta programming.
 * Provides meta programming definitions which are useful for programming boolean generically
 *
 * \param _N
 */
template<int _N> class boolean_t
{
	boolean_t()
	{
		static_assert(_N != 1, "boolean_t is not supported for this length (_N)");
	}
};

template<>
class boolean_t<1>
{
public:
	using type = booleancv;
	using type_t = booleancv_t;
	//typedef booleancv type;
};

using mint8_t = uXint8_t;
using mint16_t = uXint16_t;
using mint32_t = uXint32_t;
using mint64_t = uXint64_t;
using muint8_t = uXuint8_t;
using muint16_t = uXuint16_t;
using muint32_t = uXuint32_t;
using muint64_t = uXuint64_t;
using mintbool_t = uXintbool_t;
using mcount_t = uXcount_t;
using mbool_t = detail::boolean_t<1>::type;
using msize_t = uXsize_t;
using mptrdiff_t = uXptrdiff_t;
using mintptr_t = uXintptr_t;
using muintptr_t = uXuintptr_t;

using mm128_t = uXm128_t;
using mm128d_t = uXm128d_t;
using mm128i_t = uXm128i_t;

using mm256_t = uXm256_t;
using mm256d_t = uXm256d_t;
using mm256i_t = uXm256i_t;

using mm512_t = uXm512_t;
using mm512d_t = uXm512d_t;
using mm512i_t = uXm512i_t;

uX_PACK_POP
namespace_detail_end
namespace_uX_end
uX_EXTERNCC_END

uX_EXTERNCC_BEGIN
namespace_uX
uX_PACK_PUSH_SIZE_T

using int8_t = detail::mint8_t;
using int16_t = detail::mint16_t;
using int32_t = detail::mint32_t;
using int64_t = detail::mint64_t;
using uint8_t = detail::muint8_t;
using uint16_t = detail::muint16_t;
using uint32_t = detail::muint32_t;
using uint64_t = detail::muint64_t;
using intbool_t = detail::mintbool_t;
using count_t = detail::mcount_t;
using bool_t = detail::mbool_t;
using size_t = detail::msize_t;
using ptrdiff_t = detail::mptrdiff_t;
using intptr_t = detail::mintptr_t;
using uintptr_t = detail::muintptr_t;

using m128_t = detail::mm128_t;
using m128d_t = detail::mm128d_t;
using m128i_t = detail::mm128i_t;

using m256_t = detail::mm256_t;
using m256d_t = detail::mm256d_t;
using m256i_t = detail::mm256i_t;

using m512_t = detail::mm512_t;
using m512d_t = detail::mm512d_t;
using m512i_t = detail::mm512i_t;

/**
 * \brief vector1types enumeration.
 * Provides general vector elements position number for 1d vectors
 */
typedef enum class vector1types : uint8_t
{
	V_x = 0
} vector1types_t;

/**
 * \brief vector2types enumeration.
 * Provides general vector elements position number for 2d vectors
 */
typedef enum class vector2types : uint8_t
{
	V_x = 0, V_y = 1
} vector2types_t;

/**
 * \brief vector3types enumeration.
 * Provides general vector elements position number for 3d vectors
 */
typedef enum class vector3types : uint8_t
{
	V_x = 0, V_y = 1, V_z = 2
} vector3types_t;

/**
 * \brief vector4types enumeration.
 * Provides general vector elements position number for 4d vectors
 */
typedef enum class vector4types : uint8_t
{
	V_x = 0, V_y = 1, V_z = 2, V_w = 3
} vector4types_t;

/**
 * \brief matrix3x3type enumeration.
 * Provides general matrix elements position number for 3x3 matrix
 */
typedef enum class matrix3x3types : uint8_t
{
	M_11 = 0, M_12 = 1, M_13 = 2,
	M_21 = 3, M_22 = 4, M_23 = 5,
	M_31 = 6, M_32 = 7, M_33 = 8,
} matrix3x3types_t;

/**
 * \brief matrix4x3type enumeration.
 * Provides general matrix elements position number for 4x3 matrix
 */
typedef enum class matrix4x3types : uint8_t
{
	M_11 = 0, M_12 = 1, M_13 = 2,
	M_21 = 3, M_22 = 4, M_23 = 5,
	M_31 = 6, M_32 = 7, M_33 = 8,
	M_41 = 9, M_42 = 10, M_43 = 11
} matrix4x3types_t;

/**
 * \brief matrix4x4type enumeration.
 * Provides general matrix elements position number for 4x4 matrix
 */
typedef enum class matrix4x4types : uint8_t
{
	M_11 = 0, M_12 = 1, M_13 = 2, M_14 = 3,
	M_21 = 4, M_22 = 5, M_23 = 6, M_24 = 7,
	M_31 = 8, M_32 = 9, M_33 = 10, M_34 = 11,
	M_41 = 12, M_42 = 13, M_43 = 14, M_44 = 15
} matrix4x4types_t;
uX_PACK_POP
namespace_uX_end
uX_EXTERNCC_END
#else
#warning "WARNING: uX_TYPES_H is only supported in C++ compilations!"
#endif /* __cplusplus */

/*
#define uX_vecelement(elm) uX::vecelement::_##elm
#define uX_matrixelement(elm) uX::matrixelement::_##elm*/

#include "assert.h"

#endif /*uX_TYPES_H*/
