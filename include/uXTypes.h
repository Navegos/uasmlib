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

#ifndef uX_TYPES_H
#define uX_TYPES_H 1

#ifndef uX_BASEDEFS_H
#include "uXbasedefs.h"
#endif  /* uX_BASEDEFS_H */

#ifndef uX_SAL_PROCESS_H
#include "uXsalprocess.h"
#endif  /* uX_SAL_PROCESS_H */

#ifndef _STDINT
#include "stdint.h"
#endif

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
typedef unsigned int		intbool_t;
typedef unsigned int		count_t;

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
uX_EXTERNC_END

namespace_uX
namespace_internal
uX_PACK_PUSH_STACK
typedef class booleancv
{
public:
	booleancv() uX_default;
	~booleancv() uX_default;

	booleancv(booleancv const&) uX_default;
	booleancv& uX_ABI operator=(booleancv const&) uX_default;

	booleancv(booleancv&&) uX_default;
	booleancv& uX_ABI operator=(booleancv&&) uX_default;

	/**
	 * \brief Constructor initialization from type intbool_t.
	 *
	 * \param Inint value to copy from.
	 */
	uX_constexpr booleancv(intbool_t Inint) uX_noexcept : boolean(Inint >= 1 ? 1 : 0) {}

	/**
	 * \brief Constructor initialization from type int32_t.
	 *
	 * \param Inint value to copy from.
	 */
	 /*uX_constexpr booleancv(int32_t Inint) uX_noexcept : boolean(Inint >= 1 ? 1 : Inint <= 0 ? 0 : 0) {}*/

	/**
	 * \brief Constructor initialization from type int.
	 *
	 * \param Inint value to copy from.
	 */
	uX_constexpr booleancv(int Inint) uX_noexcept : boolean(Inint != 0 ? 1 : 0 /*Inint >= 1 ? 1 : Inint <= 0 ? 0 : 0*/) {}

	/**
	 * \brief Constructor initialization from type bool.
	 *
	 * \param Inint value to copy from.
	 */
	uX_constexpr booleancv(bool Inint) uX_noexcept : boolean(Inint == true ? 1 : 0) {}

	/** \brief Type cast operator to convert to intbool_t. */
	uX_constexpr operator intbool_t() const uX_noexcept
	{
		return boolean;
	}

	/** \brief Function to convert to -int. */
	uX_constexpr int32_t const uX_ABI to_true_int32() const uX_noexcept
	{
		return boolean >= 1 ? (int32_t)-1 : 0;
	}

	/** \brief Function to convert to -int. */
	uX_constexpr int64_t const uX_ABI to_true_int64() const uX_noexcept
	{
		return boolean >= 1 ? (int64_t)-1 : 0;
	}

	/** \brief Function to convert to -int. */
	uX_constexpr uint32_t const uX_ABI to_true_uint32() const uX_noexcept
	{
		return boolean >= 1 ? (uint32_t)0xffffffff : 0;
	}

	/** \brief Function to convert to -int. */
	uX_constexpr uint64_t const uX_ABI to_true_uint64() const uX_noexcept
	{
		return boolean >= 1 ? (uint64_t)0xffffffffffffffff : 0;
	}

	/**
	 * \brief Assignment operator to convert from type intbool_t.
	 *
	 * \param Inint value to copy from.
	 */
	uX_constexpr booleancv& uX_ABI operator=(intbool_t Inint) uX_noexcept
	{
		boolean = Inint >= 1 ? 1 : 0;
		return *this;
	}

	/**
	 * Assignment operator to convert from type int32_t.
	 *
	 * \param Inint value to copy from.
	 */
	/*uX_constexpr booleancv& uX_ABI operator=(int32_t Inint) uX_noexcept
	{
		return booleancv(Inint);
	}*/

	/**
	 * \brief Assignment operator to convert from type int.
	 *
	 * \param Inint value to copy from.
	 */
	uX_constexpr booleancv& uX_ABI operator=(int Inint) uX_noexcept
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
	uX_constexpr booleancv& uX_ABI operator=(bool Inint) uX_noexcept
	{
		boolean = Inint == true ? 1 : 0;
		return *this;
	}

private:
	intbool_t boolean = 0;
}booleancv_t;

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
		static_assert(false, "boolean_t is not supported for this length (_N)");
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
uX_PACK_POP
namespace_internal_end
namespace_uX_end

using bool_t = uX::_internal::boolean_t<1>::type;
/*typedef unsigned int	bool_t;*/

namespace_uX
/**
 * \brief vector1types enumeration.
 * Provides general vector elements position number for 1d vectors
 */
enum class vector1types : uint8_t
{
	V_x = 0
};

/**
 * \brief vector2types enumeration.
 * Provides general vector elements position number for 2d vectors
 */
enum class vector2types : uint8_t
{
	V_x = 0, V_y = 1
};

/**
 * \brief vector3types enumeration.
 * Provides general vector elements position number for 3d vectors
 */
enum class vector3types : uint8_t
{
	V_x = 0, V_y = 1, V_z = 2
};

/**
 * \brief vector4types enumeration.
 * Provides general vector elements position number for 4d vectors
 */
enum class vector4types : uint8_t
{
	V_x = 0, V_y = 1, V_z = 2, V_w = 3
};

/**
 * \brief matrix3x3type enumeration.
 * Provides general matrix elements position number for 3x3 matrix
 */
enum class matrix3x3types : uint8_t
{
	M_11 = 0, M_12 = 1, M_13 = 2,
	M_21 = 3, M_22 = 4, M_23 = 5,
	M_31 = 6, M_32 = 7, M_33 = 8,
};

/**
 * \brief matrix4x3type enumeration.
 * Provides general matrix elements position number for 4x3 matrix
 */
enum class matrix4x3types : uint8_t
{
	M_11 = 0, M_12 = 1, M_13 = 2,
	M_21 = 3, M_22 = 4, M_23 = 5,
	M_31 = 6, M_32 = 7, M_33 = 8,
	M_41 = 9, M_42 = 10, M_43 = 11
};

/**
 * \brief matrix4x4type enumeration.
 * Provides general matrix elements position number for 4x4 matrix
 */
enum class matrix4x4types : uint8_t
{
	M_11 = 0, M_12 = 1, M_13 = 2, M_14 = 3,
	M_21 = 4, M_22 = 5, M_23 = 6, M_24 = 7,
	M_31 = 8, M_32 = 9, M_33 = 10, M_34 = 11,
	M_41 = 12, M_42 = 13, M_43 = 14, M_44 = 15
};
namespace_uX_end

#define uX_vecelement(elm) uX::vecelement::_##elm
#define uX_matrixelement(elm) uX::matrixelement::_##elm

#include "uXassert.h"

#endif /*uX_TYPES_H*/
