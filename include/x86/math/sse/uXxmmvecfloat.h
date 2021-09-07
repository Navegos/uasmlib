/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - optimized library                 / /
; / /                                                                               / /
; / /    Licensed under the Apache License, Version 2.0 (the "License");            / /
; / /    you may not use this file except in compliance with the License.           / /
; / /    You may obtain a copy of the License at                                    / /
; / /                                                                               / /
; / /        http://www.apache.org/licenses/LICENSE-2.0                             / /
; / /                                                                               / /
; / /    Unless required by applicable law or agreed to in writing, software        / /
; / /    distributed under the License is distributed on an "AS IS" BASIS,          / /
; / /    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   / /
; / /    See the License for the specific language governing permissions and        / /
; / /    limitations under the License.                                             / /
; / /                                                                               / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_XMM_VECFLOAT_H
#define uX_XMM_VECFLOAT_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

#ifndef __cplusplus
#error ERROR: This file is only supported in C++ compilations!
#endif /* !__cplusplus */

#ifndef _INCLUDED_MM2
#include <xmmintrin.h>
#endif  /* _INCLUDED_MM2 */

#ifdef uX_SSE2
#ifndef _INCLUDED_EMM
#include <emmintrin.h>
#endif  /* _INCLUDED_EMM */
#endif // uX_SSE2

#ifndef uX_XMM_INTRIN_H
#include "uXxmmintrin.h"
#endif  /* uX_XMM_INTRIN_H */

namespace_uX
namespace_XMM
uX_PACK_PUSH_XMM

// VECTORS'S

/*class vecfloat;*/
/*
class vecfloat1;
class vecfloat2;
class vecfloat3;
class vecfloat4;
class vecfloat3x3;
class vecfloat4x3;
class vecfloat4x4;
#ifdef uX_SSE2
class vecint8;
class vecuint8;
class vecint16;
class vecuint16;
class vecint32;
class vecuint32;
class vecint64;
class vecuint64;
class vecdouble;
class vecdouble1;
class vecdouble2;
class vecdouble3;
class vecdouble4;
class vecdouble3x3;
class vecdouble4x3;
class vecdouble4x4;
#endif*/

/// <summary>
///     short_vector provides metaprogramming definitions which are useful for programming short vectors generically.
/// </summary>
/// <param name="_Scalar_type">
///     The scalar type.
/// </param>
/// <param name="_Size">
///     The size of the short vector.
/// </param>
/*
template<int _N> class newvecfloat
{
	newvecfloat()
	{
		static_assert(false, "newvecfloat is not supported for this length (_N)");
	}
};

template<>
class newvecfloat<1>
{
	using type = vecfloat1;
	//typedef vecfloat1 type;
};

template<>
class newvecfloat<2>
{
	using type = vecfloat2;
	//typedef vecfloat2 type;
};

template<>
class newvecfloat<3>
{
	using type = vecfloat3;
	//typedef vecfloat3 type;
};

template<>
class newvecfloat<4>
{
	using type = vecfloat4;
	//typedef vecfloat4 type;
};

typedef class uX_API vecfloat
{
public:
	vecfloat() uX_default;
	~vecfloat() uX_default;

	vecfloat(const vecfloat&) uX_default;
	vecfloat& uX_callconv operator=(const vecfloat&) uX_default;

	vecfloat(vecfloat&&) uX_default;
	vecfloat& uX_callconv operator=(vecfloat&&) uX_default;

	/ **
	 * Constructor initialization from type __m128.
	 *
	 * @param Inxmm value to copy from.
	 * /
	uX_constexpr vecfloat(const __m128 Inxmm) uX_noexcept : m128_xmm(Inxmm) {}

	/ **
	 * Constructor initialization from type vecfloat4.
	 *
	 * @param Inxmm value to copy from.
	 * /
	uX_constexpr vecfloat(const vecfloat4 Inxmm) uX_noexcept : m128_xmm(Inxmm) {}

	/ **
	 * Constructor initialization from type vecfloat3.
	 *
	 * @param Inxmm value to copy from.
	 * /
	uX_constexpr vecfloat(const vecfloat3 Inxmm) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_PS_IM(Inxmm, _uX_mm_unpackhi_ps(Inxmm, m128_xmm), 0, 1, 0, 3)) {}

	/ **
	 * Constructor initialization from type vecfloat2.
	 *
	 * @param Inxmm value to copy from.
	 * /
	uX_constexpr vecfloat(const vecfloat2 Inxmm) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_PS_IM(Inxmm, m128_xmm, 0, 1, 2, 3)) {}

	/ **
	 * Constructor initialization from type vecfloat1.
	 *
	 * @param Inxmm value to copy from.
	 * /
	uX_constexpr vecfloat(const vecfloat1 Inxmm) uX_noexcept : m128_xmm(_uX_mm_move_ss(m128_xmm, Inxmm)) {}

	/ **
	 * Constructor to broadcast the same float value into all elements.
	 *
	 * @param Infloat_a float value to copy from.
	 * /
	uX_explicit vecfloat(float Infloat_a) uX_noexcept;

	/ **
	 * Constructor initialization from 4 type float.
	 *
	 * @param Infloat_X value to copy from.
	 * @param Infloat_Y value to copy from.
	 * @param Infloat_Z value to copy from.
	 * @param Infloat_W value to copy from.
	 * /
	vecfloat(float Infloat_X, float Infloat_Y, float Infloat_Z, float Infloat_W) uX_noexcept;

	/ **
	 * Constructor initialization from type float*.
	 *
	 * @param Inpfloat value to copy from.
	 * /
	uX_explicit vecfloat(uX_InReads(4) const float* Inpfloat) uX_noexcept;

	/ ** Type cast operator to convert to __m128. * /
	operator __m128() const uX_noexcept;

	/ ** Type cast operator to convert to float*. * /
	/ *operator float*() const uX_noexcept;* / //security undesired

	/ **
	 * Assignment operator to convert from type __m128.
	 *
	 * @param Inxmm value to copy from.
	 * /
	vecfloat& uX_callconv operator=(const __m128 Inxmm) uX_noexcept;

	/ **
	 * Assignment operator to convert from type vecfloat4.
	 *
	 * @param Inxmm value to copy from.
	 * /
	vecfloat& uX_callconv operator=(const vecfloat4 Inxmm) uX_noexcept;

	/ **
	 * Assignment operator to convert from type vecfloat3.
	 *
	 * @param Inxmm value to copy from.
	 * /
	vecfloat& uX_callconv operator=(const vecfloat3 Inxmm) uX_noexcept;

	/ **
	 * Assignment operator to convert from type vecfloat2.
	 *
	 * @param Inxmm value to copy from.
	 * /
	vecfloat& uX_callconv operator=(const vecfloat2 Inxmm) uX_noexcept;

	/ **
	 * Assignment operator to convert from type vecfloat1.
	 *
	 * @param Inxmm value to copy from.
	 * /
	vecfloat& uX_callconv operator=(const vecfloat1 Inxmm) uX_noexcept;

	/ **
	 * Assignment operator to convert from type float*.
	 *
	 * @param Inpfloat value to copy from.
	 * /
	/ *vecfloat& uX_callconv operator=(uX_InReads(4) const float* Inpfloat) uX_noexcept;* / //security undesired

	/ * Logical Operators * /
	friend vecfloat uX_callconv andnot(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator&(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator|(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator^(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator~(const vecfloat Inxmm_a) uX_noexcept;

	friend uint32_t uX_callconv iandnot(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend uint32_t uX_callconv operator&&(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend uint32_t uX_callconv operator||(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend uint32_t uX_callconv operator!(const vecfloat Inxmm_a) uX_noexcept;

	friend uint32_t uX_callconv horizontal_and(const vecfloat Inxmm_a) uX_noexcept;
	friend uint32_t uX_callconv horizontal_or(const vecfloat Inxmm_a) uX_noexcept;

	vecfloat& uX_callconv operator&=(const vecfloat Inxmm_b) uX_noexcept;
	vecfloat& uX_callconv operator|=(const vecfloat Inxmm_b) uX_noexcept;
	vecfloat& uX_callconv operator^=(const vecfloat Inxmm_b) uX_noexcept;

	/ * Arithmetic Operators * /
	friend vecfloat uX_callconv operator+(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator-(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator*(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator/(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;

	vecfloat& uX_callconv operator+=(const vecfloat Inxmm_b) uX_noexcept;
	vecfloat& uX_callconv operator-=(const vecfloat Inxmm_b) uX_noexcept;
	vecfloat& uX_callconv operator*=(const vecfloat Inxmm_b) uX_noexcept;
	vecfloat& uX_callconv operator/=(const vecfloat Inxmm_b) uX_noexcept;

	/ * Unary Operators * /
	friend vecfloat uX_callconv operator++(const vecfloat Inxmm_a) uX_noexcept;
	friend vecfloat uX_callconv operator--(const vecfloat Inxmm_a) uX_noexcept;

	friend vecfloat uX_callconv operator++(const vecfloat Inxmm_a, int) uX_noexcept;
	friend vecfloat uX_callconv operator--(const vecfloat Inxmm_a, int) uX_noexcept;

	friend vecfloat uX_callconv operator-(const vecfloat Inxmm_a) uX_noexcept;

	/ * Comparison Operators * /
	friend vecfloat uX_callconv operator==(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator<(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator<=(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator>(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator>=(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;
	friend vecfloat uX_callconv operator!=(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;

	/ * Element Access Only, no modifications to elements* /
	float uX_callconv operator[](int index) const uX_noexcept;

	/ **
	 * Load function to load from type float* unaligned.
	 *
	 * @param Inpfloat value to copy from.
	 * /
	vecfloat& uX_callconv load(uX_InReads(4) const float* Inpfloat) uX_noexcept;

	/ **
	 * Load function to load from type float* aligned by 16.
	 *
	 * @param Inpfloat value to copy from.
	 * /
	vecfloat& uX_callconv load_a(uX_InReads(4) const float* Inpfloat) uX_noexcept;

	/ **
	 * Store function to store to type float* unaligned.
	 *
	 * @param Outpfloat value to store to.
	 * /
	void uX_callconv store(uX_OutWrites(4) float* Outpfloat) const uX_noexcept;

	/ **
	 * Store function to store to type float* aligned by 16.
	 *
	 * @param Outpfloat value to store to.
	 * /
	void uX_callconv store_a(uX_OutWrites(4) float* Outpfloat) const uX_noexcept;

	/ **
	 * Insert function to insert from type float on the mask index.
	 *
	 * @param value float to copy from.
	 * @param index element to set.
	 * /
	const vecfloat uX_callconv insert(float value, const uint32_t index) uX_noexcept;

	/ **
	 * Extract function to extract element from mask index.
	 *
	 * @param index element to get.
	 * /
	float uX_callconv extract(const uint32_t index) const uX_noexcept;

	/ **
	 * Get vector protected member.
	 * /
	__m128 uX_callconv get() const uX_noexcept;

	/ **
	 * Member function get all elements from vector.
	 * /
	vecfloat4 uX_callconv get_xyzw() const uX_noexcept;

	/ **
	 * Member function get the X Y Z elements from vector.
	 * /
	vecfloat3 uX_callconv get_xyz() const uX_noexcept;

	/ **
	 * Member function get the X Y elements from vector.
	 * /
	vecfloat2 uX_callconv get_xy() const uX_noexcept;

	/ **
	 * Member function get the X element from vector.
	 * /
	vecfloat1 uX_callconv getv_x() const uX_noexcept;

	/ **
	 * Member function get the X element from vector.
	 * /
	float uX_callconv get_x() const uX_noexcept;

	/ **
	 * Member function get the Y element from vector.
	 * /
	float uX_callconv get_y() const uX_noexcept;

	/ **
	 * Member function get the Z element from vector.
	 * /
	float uX_callconv get_z() const uX_noexcept;

	/ **
	 * Member function get the W element from vector.
	 * /
	float uX_callconv get_w() const uX_noexcept;

	/ **
	 * Get the vector reference to protected member.
	 * /
	__m128& uX_callconv ref() uX_noexcept;

	/ **
	 * Member function get the reference to all elements from vector.
	 * /
	vecfloat4& uX_callconv ref_xyzw() uX_noexcept;

	/ **
	 * Member function get the reference to X Y Z elements from vector.
	 * /
	vecfloat3& uX_callconv ref_xyz() uX_noexcept;

	/ **
	 * Member function get the reference to X Y elements from vector.
	 * /
	vecfloat2& uX_callconv ref_xy() uX_noexcept;

	/ **
	 * Member function get the reference to X element from vector.
	 * /
	vecfloat1& uX_callconv refv_x() uX_noexcept;

	/ **
	 * Member function get the reference to X element from vector.
	 * /
	float& uX_callconv ref_x() uX_noexcept;

	/ **
	 * Member function get the reference to Y element from vector.
	 * /
	float& uX_callconv ref_y() uX_noexcept;

	/ **
	 * Member function get the reference to Z element from vector.
	 * /
	float& uX_callconv ref_z() uX_noexcept;

	/ **
	 * Member function get the reference to W element from vector.
	 * /
	float& uX_callconv ref_w() uX_noexcept;

	/ **
	 * Set all elements to zero.
	 *
	 * /
	void uX_callconv set_zero() uX_noexcept;

	/ **
	 * Cut off vector to n elements. The last 4-n elements are set to zero.
	 *
	 * @param indexN element's to cut.
	 * /
	vecfloat& uX_callconv cutoff(const uint32_t indexN) uX_noexcept;

	/ **
	 * Flip Sign function.
	 * /
	vecfloat& uX_callconv flip_sign() uX_noexcept;

	/ **
	 * Test all elements if is zero.
	 *
	 * /
	uint32_t uX_callconv is_zero() uX_noexcept;

	// Select between two operands. Corresponds to this pseudo code:
	// for (int i = 0; i < 4; i++) result[i] = s[i] ? a[i] : b[i];
	friend vecfloat uX_callconv select(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;

	// Conditional add: For all vector elements i: result[i] = f[i] ? (a[i] + b[i]) : a[i]
	friend vecfloat uX_callconv if_add(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;

	// Conditional subtract: For all vector elements i: result[i] = f[i] ? (a[i] - b[i]) : a[i]
	friend vecfloat uX_callconv if_sub(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;

	// Conditional multiply: For all vector elements i: result[i] = f[i] ? (a[i] * b[i]) : a[i]
	friend vecfloat uX_callconv if_mul(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;

	// Conditional divide: For all vector elements i: result[i] = f[i] ? (a[i] / b[i]) : a[i]
	friend vecfloat uX_callconv if_div(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;

	// Function sign_bit: gives true for elements that have the sign bit set
	// even for -0.0f, -INF and -NAN
	// Note that sign_bit(Vec4f(-0.0f)) gives true, while Vec4f(-0.0f) < Vec4f(0.0f) gives false
	// (the underscore in the name avoids a conflict with a macro in Intel's mathimf.h)
	friend vecfloat uX_callconv sign_bit(const vecfloat Inxmm_a) uX_noexcept;

	// Function sign_combine: changes the sign of a when b has the sign bit set
	// same as select(sign_bit(b), -a, a)
	friend vecfloat uX_callconv sign_combine(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;

	// Function is_finite: gives true for elements that are normal, denormal or zero,
	// false for INF and NAN
	// (the underscore in the name avoids a conflict with a macro in Intel's mathimf.h)
	friend vecfloat uX_callconv is_finite(const vecfloat Inxmm_a) uX_noexcept;

	// Function is_inf: gives true for elements that are +INF or -INF
	// false for finite numbers and NAN
	// (the underscore in the name avoids a conflict with a macro in Intel's mathimf.h)
	friend vecfloat uX_callconv is_nan(const vecfloat Inxmm_a) uX_noexcept;

	// Function is_subnormal: gives true for elements that are denormal (subnormal)
	// false for finite numbers, zero, NAN and INF
	friend vecfloat uX_callconv is_subnormal(const vecfloat Inxmm_a) uX_noexcept;

	// Function is_zero_or_subnormal: gives true for elements that are zero or subnormal (denormal)
	// false for finite numbers, NAN and INF
	friend vecfloat uX_callconv is_zero_or_subnormal(const vecfloat Inxmm_a) uX_noexcept;

	// Function infinite4f: returns a vector where all elements are +INF
	friend vecfloat uX_callconv infinite() uX_noexcept;

	// Function nan4f: returns a vector where all elements are NAN (quiet)
	friend vecfloat uX_callconv nan() uX_noexcept;

	// Horizontal add: Calculates the sum of all vector elements.
	friend float uX_callconv horizontal_add(const vecfloat Inxmm_a) uX_noexcept;

	// Horizontal mull: Calculates the multiplication of all vector elements.
	friend float uX_callconv horizontal_mul(const vecfloat Inxmm_a) uX_noexcept;

	// function max: a > b ? a : b
	friend vecfloat uX_callconv max(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;

	// function min: a < b ? a : b
	friend vecfloat uX_callconv min(const vecfloat Inxmm_a, const vecfloat Inxmm_b) uX_noexcept;

	// function abs: absolute value
	friend vecfloat uX_callconv abs(const vecfloat Inxmm_a) uX_noexcept;

	// function square: a * a
	friend vecfloat uX_callconv square(const vecfloat Inxmm_a) uX_noexcept;

	// function square: a * s
	friend vecfloat uX_callconv scale(const vecfloat Inxmm_a, float Infloat_s) uX_noexcept;

	// function rcpest: estimates reciprocal
	friend vecfloat uX_callconv rcpest(const vecfloat Inxmm_a) uX_noexcept;

	// function rcp: reciprocal
	friend vecfloat uX_callconv rcp(const vecfloat Inxmm_a) uX_noexcept;

	// function sqrtest: estimates square root
	friend vecfloat uX_callconv sqrtest(const vecfloat Inxmm_a) uX_noexcept;

	// function sqrt: square root
	friend vecfloat uX_callconv sqrt(const vecfloat Inxmm_a) uX_noexcept;

	// function rsqrtest: estimates reciprocal square root
	friend vecfloat uX_callconv rsqrtest(const vecfloat Inxmm_a) uX_noexcept;

	// function rsqrt: reciprocal square root
	friend vecfloat uX_callconv rsqrt(const vecfloat Inxmm_a) uX_noexcept;

protected:

private:
	union
	{
		__m128          m128_xmm;
		struct
		{
			float _x, _y, _z, _w;
		};
		float          m128_f[4];
	};

	static uX_const uint32_t m128_xmm_size          = 16;
	static uX_const uint32_t m128_xmm_flt_elements  = 4;
	static uX_const uint32_t m128_flt_ptr_length    = 4;
	static uX_const uint32_t m128_flt_ptr_size      = 16;
	static uX_const uint32_t m128_flt_size          = 4;
}vecfloat_t;*/

/*
uX_API __m128 uX_ABI operator+(const __m128 Inxmm_a, const __m128 Inxmm_b) uX_noexcept;
uX_API __m128 uX_ABI operator-(const __m128 Inxmm_a, const __m128 Inxmm_b) uX_noexcept;
uX_API __m128 uX_ABI operator*(const __m128 Inxmm_a, const __m128 Inxmm_b) uX_noexcept;
uX_API __m128 uX_ABI operator/(const __m128 Inxmm_a, const __m128 Inxmm_b) uX_noexcept;*/

/*
__m128 uX_ABI operator+(const __m128 Inxmm_a, const __m128 Inxmm_b) uX_noexcept
{
	return _uX_mm_add_ps(Inxmm_a, Inxmm_b);
}*/

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECFLOAT4_H
#include "uXxmmvecfloat4.h"
#endif  /* uX_XMM_VECFLOAT4_H */

#ifndef uX_XMM_VECFLOAT3_H
#include "uXxmmvecfloat3.h"
#endif  /* uX_XMM_VECFLOAT3_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECFLOAT1_H
#include "uXxmmvecfloat1.h"
#endif  /* uX_XMM_VECFLOAT1_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECFLOAT_H
