
#pragma once

#ifndef uX_SSE_MATH_H
#define uX_SSE_MATH_H

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

class vecfloat;
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
#endif

typedef class uX_EXAPI vecfloat
{
public:
    vecfloat()uX_default;
    ~vecfloat()uX_default;

 #ifdef uX_DEFAULT_CTOR_SUPPORT
    vecfloat(const vecfloat&)uX_default;
    vecfloat& uX_callconv operator=(const vecfloat&)uX_default;

    vecfloat(vecfloat&&)uX_default;
    vecfloat& uX_callconv operator=(vecfloat&&)uX_default;
#else
    vecfloat(const vecfloat& Invecfloat);
    vecfloat& uX_callconv operator=(const vecfloat& Invecfloat);

    vecfloat(vecfloat&& Invecfloat);
    vecfloat& uX_callconv operator=(vecfloat&& Invecfloat);
#endif
    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat(const __m128 Inxmm) : m128_xmm(Inxmm) {}

    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat(const vecfloat4 Inxmm) : m128_xmm(Inxmm) {}

    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat(const vecfloat3 Inxmm) : m128_xmm(Inxmm) {}

    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat(const vecfloat2 Inxmm) : m128_xmm(Inxmm) {}

    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat(const vecfloat1 Inxmm) : m128_xmm(Inxmm) {}

    /**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    uX_explicit vecfloat(uX_InReads(4) const float* Inpfloat);

    /** Type cast operator to convert to __m128. */
    operator __m128() const;

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat& uX_callconv operator=(const __m128 Inxmm);

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat& uX_callconv operator=(const vecfloat4 Inxmm);

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat& uX_callconv operator=(const vecfloat3 Inxmm);

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat& uX_callconv operator=(const vecfloat2 Inxmm);

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat& uX_callconv operator=(const vecfloat1 Inxmm);

    /**
     * Constructor initialization from 4 type float.
     *
     * @param Infloat_X value to copy from.
     * @param Infloat_Y value to copy from.
     * @param Infloat_Z value to copy from.
     * @param Infloat_W value to copy from.
     */
    uX_explicit vecfloat(float Infloat_X, float Infloat_Y, float Infloat_Z, float Infloat_W);

    /**
     * Constructor to broadcast the same float value into all elements.
     *
     * @param Infloat_a float value to copy from.
     */
    uX_explicit vecfloat(float Infloat_a);

    /** Type cast operator to convert to float*. */
    /*operator float*() const;*/

    /**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    vecfloat& uX_callconv operator=(uX_InReads(4) const float* Inpfloat);

    /* Logical Operators */
    friend vecfloat uX_callconv andnot(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator&(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator|(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator^(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator~(const vecfloat Inxmm_a);

    friend unsigned int uX_callconv iandnot(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend unsigned int uX_callconv operator&&(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend unsigned int uX_callconv operator||(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend unsigned int uX_callconv operator!(const vecfloat Inxmm_a);

    friend unsigned int uX_callconv horizontal_and(const vecfloat Inxmm_a);
    friend unsigned int uX_callconv horizontal_or(const vecfloat Inxmm_a);

    vecfloat& uX_callconv operator&=(const vecfloat Inxmm_b);
    vecfloat& uX_callconv operator|=(const vecfloat Inxmm_b);
    vecfloat& uX_callconv operator^=(const vecfloat Inxmm_b);

    /* Arithmetic Operators */
    friend vecfloat uX_callconv operator+(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator-(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator*(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator/(const vecfloat Inxmm_a, const vecfloat Inxmm_b);

    vecfloat& uX_callconv operator+=(const vecfloat Inxmm_b);
    vecfloat& uX_callconv operator-=(const vecfloat Inxmm_b);
    vecfloat& uX_callconv operator*=(const vecfloat Inxmm_b);
    vecfloat& uX_callconv operator/=(const vecfloat Inxmm_b);

    /* Unary Operators */
    friend vecfloat uX_callconv operator++(const vecfloat Inxmm_a);
    friend vecfloat uX_callconv operator--(const vecfloat Inxmm_a);

    friend vecfloat uX_callconv operator++(const vecfloat Inxmm_a, int);
    friend vecfloat uX_callconv operator--(const vecfloat Inxmm_a, int);

    friend vecfloat uX_callconv operator-(const vecfloat Inxmm_a);

    /* Comparison Operators */
    friend vecfloat uX_callconv operator==(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator<(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator<=(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator>(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator>=(const vecfloat Inxmm_a, const vecfloat Inxmm_b);
    friend vecfloat uX_callconv operator!=(const vecfloat Inxmm_a, const vecfloat Inxmm_b);

    /* Element Access Only, no modifications to elements*/
    const float& uX_callconv operator[](int index) const;

    /* Element Access and Modification*/
    float& uX_callconv operator[](int index);

    /**
     * Load function to load from type float* unaligned.
     *
     * @param Inpfloat value to copy from.
     */
    vecfloat& uX_callconv load(uX_InReads(4) const float* Inpfloat);

    /**
     * Load function to load from type float* aligned by 16.
     *
     * @param Inpfloat value to copy from.
     */
    vecfloat& uX_callconv load_a(uX_InReads(4) const float* Inpfloat);

    /**
     * Store function to store to type float* unaligned.
     *
     * @param Outpfloat value to store to.
     */
    void uX_callconv store(uX_OutWrites(4) float* Outpfloat) const;

    /**
     * Store function to store to type float* aligned by 16.
     *
     * @param Outpfloat value to store to.
     */
    void uX_callconv store_a(uX_OutWrites(4) float* Outpfloat) const;

    /**
     * Insert function to insert from type float on the mask index.
     *
     * @param value float to copy from.
     * @param index element to set.
     */
    const vecfloat uX_callconv insert(float value, const unsigned int index);

    /**
     * Extract function to extract element from mask index.
     *
     * @param index element to get.
     */
    float uX_callconv extract(const unsigned int index) const;

    /**
     * Get vector protected member.
     */
    vecfloat uX_callconv get() const;

    /**
     * Member function get all elements from vector.
     */
    vecfloat4 uX_callconv get_xyzw() const;

    /**
     * Member function get the X Y Z elements from vector.
     */
    vecfloat3 uX_callconv get_xyz() const;

    /**
     * Member function get the X Y elements from vector.
     */
    vecfloat2 uX_callconv get_xy() const;

    /**
     * Member function get the X element from vector.
     */
    vecfloat1 uX_callconv getv_x() const;

    /**
     * Member function get the X element from vector.
     */
    float uX_callconv get_x() const;

    /**
     * Member function get the Y element from vector.
     */
    float uX_callconv get_y() const;

    /**
     * Member function get the Z element from vector.
     */
    float uX_callconv get_z() const;

    /**
     * Member function get the W element from vector.
     */
    float uX_callconv get_w() const;

    /**
     * Get the vector reference to protected member.
     */
    vecfloat& uX_callconv ref();

    /**
     * Member function get the reference to all elements from vector.
     */
    vecfloat4& uX_callconv ref_xyzw();

    /**
     * Member function get the reference to X Y Z elements from vector.
     */
    vecfloat3& uX_callconv ref_xyz();

    /**
     * Member function get the reference to X Y elements from vector.
     */
    vecfloat2& uX_callconv ref_xy();

    /**
     * Member function get the reference to X element from vector.
     */
    vecfloat1& uX_callconv refv_x();

    /**
     * Member function get the reference to X element from vector.
     */
    float& uX_callconv ref_x();

    /**
     * Member function get the reference to Y element from vector.
     */
    float& uX_callconv ref_y();

    /**
     * Member function get the reference to Z element from vector.
     */
    float& uX_callconv ref_z();

    /**
     * Member function get the reference to W element from vector.
     */
    float& uX_callconv ref_w();

    /**
     * Set all elements to zero.
     *
     */
    void uX_callconv set_zero();

    /**
     * Cut off vector to n elements. The last 4-n elements are set to zero.
     *
     * @param indexN element's to cut.
     */
    vecfloat& uX_callconv cutoff(const unsigned int indexN);

    /**
     * Flip Sign function.
     */
    vecfloat& uX_callconv flip_sign();

    /**
     * Test all elements if is zero.
     *
     */
    unsigned int uX_callconv is_zero();

    // Select between two operands. Corresponds to this pseudo code:
    // for (int i = 0; i < 4; i++) result[i] = s[i] ? a[i] : b[i];
    friend vecfloat uX_callconv select(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b);

    // Conditional add: For all vector elements i: result[i] = f[i] ? (a[i] + b[i]) : a[i]
    friend vecfloat uX_callconv if_add(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b);

    // Conditional subtract: For all vector elements i: result[i] = f[i] ? (a[i] - b[i]) : a[i]
    friend vecfloat uX_callconv if_sub(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b);

    // Conditional multiply: For all vector elements i: result[i] = f[i] ? (a[i] * b[i]) : a[i]
    friend vecfloat uX_callconv if_mul(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b);

    // Conditional divide: For all vector elements i: result[i] = f[i] ? (a[i] / b[i]) : a[i]
    friend vecfloat uX_callconv if_div(const vecfloat Inxmm_f, const vecfloat Inxmm_a, const vecfloat Inxmm_b);

    // Function sign_bit: gives true for elements that have the sign bit set
    // even for -0.0f, -INF and -NAN
    // Note that sign_bit(Vec4f(-0.0f)) gives true, while Vec4f(-0.0f) < Vec4f(0.0f) gives false
    // (the underscore in the name avoids a conflict with a macro in Intel's mathimf.h)
    friend vecfloat uX_callconv sign_bit(const vecfloat Inxmm_a);

    // Function sign_combine: changes the sign of a when b has the sign bit set
    // same as select(sign_bit(b), -a, a)
    friend vecfloat uX_callconv sign_combine(const vecfloat Inxmm_a, const vecfloat Inxmm_b);

    // Function is_finite: gives true for elements that are normal, denormal or zero, 
    // false for INF and NAN
    // (the underscore in the name avoids a conflict with a macro in Intel's mathimf.h)
    friend vecfloat uX_callconv is_finite(const vecfloat Inxmm_a);

    // Function is_inf: gives true for elements that are +INF or -INF
    // false for finite numbers and NAN
    // (the underscore in the name avoids a conflict with a macro in Intel's mathimf.h)
    friend vecfloat uX_callconv is_nan(const vecfloat Inxmm_a);

    // Function is_subnormal: gives true for elements that are denormal (subnormal)
    // false for finite numbers, zero, NAN and INF
    friend vecfloat uX_callconv is_subnormal(const vecfloat Inxmm_a);

    // Function is_zero_or_subnormal: gives true for elements that are zero or subnormal (denormal)
    // false for finite numbers, NAN and INF
    friend vecfloat uX_callconv is_zero_or_subnormal(const vecfloat Inxmm_a);

    // Function infinite4f: returns a vector where all elements are +INF
    friend vecfloat uX_callconv infinite();

    // Function nan4f: returns a vector where all elements are NAN (quiet)
    friend vecfloat uX_callconv nan();

    // Horizontal add: Calculates the sum of all vector elements.
    friend float uX_callconv horizontal_add(const vecfloat Inxmm_a);

    // Horizontal mull: Calculates the multiplication of all vector elements.
    friend float uX_callconv horizontal_mul(const vecfloat Inxmm_a);

    // function max: a > b ? a : b
    friend vecfloat uX_callconv max(const vecfloat Inxmm_a, const vecfloat Inxmm_b);

    // function min: a < b ? a : b
    friend vecfloat uX_callconv min(const vecfloat Inxmm_a, const vecfloat Inxmm_b);

    // function abs: absolute value
    friend vecfloat uX_callconv abs(const vecfloat Inxmm_a);

    // function square: a * a
    friend vecfloat uX_callconv square(const vecfloat Inxmm_a);

    // function square: a * s
    friend vecfloat uX_callconv scale(const vecfloat Inxmm_a, float Infloat_s);

    // function rcpest: estimates reciprocal
    friend vecfloat uX_callconv rcpest(const vecfloat Inxmm_a);

    // function rcp: reciprocal
    friend vecfloat uX_callconv rcp(const vecfloat Inxmm_a);

    // function sqrtest: estimates square root
    friend vecfloat uX_callconv sqrtest(const vecfloat Inxmm_a);

    // function sqrt: square root
    friend vecfloat uX_callconv sqrt(const vecfloat Inxmm_a);

    // function rsqrtest: estimates reciprocal square root
    friend vecfloat uX_callconv rsqrtest(const vecfloat Inxmm_a);

    // function rsqrt: reciprocal square root
    friend vecfloat uX_callconv rsqrt(const vecfloat Inxmm_a);

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

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_flt_ptr_lenght = 4;
    static uX_const uint32_t m128_flt_ptr_size = 16;
    static uX_const uint32_t m128_flt_size = 4;

}vecfloat_t;

//static const vecfloat qwere = {{2.3f, 3.7f, 6.4f, 8.4f}};

#ifdef uX_SSE2

typedef class uX_EXAPI vecint8
{
public:
    vecint8()uX_default;
    ~vecint8()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecint8(const vecint8&)uX_default;
    vecint8& uX_callconv operator=(const vecint8&)uX_default;

    vecint8(vecint8&&)uX_default;
    vecint8& uX_callconv operator=(vecint8&&)uX_default;
#else
    vecint8(const vecint8& Invecint8);
    vecint8& uX_callconv operator=(const vecint8& Invecint8);

    vecint8(vecint8&& Invecint8);
    vecint8& uX_callconv operator=(vecint8&& Invecint8);
#endif
    /**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecint8(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

    /**
     * Constructor initialization from type __int8*.
     *
     * @param Inpint8 value to copy from.
     */
    uX_explicit vecint8(uX_InReads(16) const __int8* Inpint8);

    /** Type cast operator to convert to __m128i. */
    operator __m128i() const;

    /**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecint8& uX_callconv operator=(const __m128i Inxmmi);

    /**
     * Constructor initialization from 16 type byte.
     *
     * @param Inpint8_0 to Inpint8_15 value to copy from.
     */
    uX_explicit vecint8(const __int8 Inpint8_0, const __int8 Inpint8_1, const __int8 Inpint8_2, const __int8 Inpint8_3, 
                        const __int8 Inpint8_4, const __int8 Inpint8_5, const __int8 Inpint8_6, const __int8 Inpint8_7, 
                        const __int8 Inpint8_8, const __int8 Inpint8_9, const __int8 Inpint8_10, const __int8 Inpint8_11, 
                        const __int8 Inpint8_12, const __int8 Inpint8_13, const __int8 Inpint8_14, const __int8 Inpint8_15);

    /** Type cast operator to convert to __int8*. */
    /*operator __int8*() const;*/

    /**
     * Assignment operator to convert from type __int8*.
     *
     * @param Inpint8 value to copy from.
     */
    vecint8& uX_callconv operator=(uX_InReads(16) const __int8* Inpint8);

    /* Logical Operators */
    friend vecint8 uX_callconv andnot(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator&(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator|(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator^(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator~(const vecint8 Inxmm_a);

    friend unsigned int uX_callconv iandnot(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend unsigned int uX_callconv operator&&(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend unsigned int uX_callconv operator||(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend unsigned int uX_callconv operator!(const vecint8 Inxmm_a);

    friend unsigned int uX_callconv horizontal_and(const vecint8 Inxmm_a);
    friend unsigned int uX_callconv horizontal_or(const vecint8 Inxmm_a);

    vecint8& uX_callconv operator&=(const vecint8 Inxmm_b);
    vecint8& uX_callconv operator|=(const vecint8 Inxmm_b);
    vecint8& uX_callconv operator^=(const vecint8 Inxmm_b);

    /* Arithmetic Operators */
    friend vecint8 uX_callconv operator+(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator-(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator*(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator/(const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    vecint8& uX_callconv operator+=(const vecint8 Inxmm_b);
    vecint8& uX_callconv operator-=(const vecint8 Inxmm_b);
    vecint8& uX_callconv operator*=(const vecint8 Inxmm_b);
    vecint8& uX_callconv operator/=(const vecint8 Inxmm_b);

    /* Unary Operators */
    friend vecint8 uX_callconv operator++(const vecint8 Inxmm_a);
    friend vecint8 uX_callconv operator--(const vecint8 Inxmm_a);

    friend vecint8 uX_callconv operator++(const vecint8 Inxmm_a, int);
    friend vecint8 uX_callconv operator--(const vecint8 Inxmm_a, int);

    friend vecint8 uX_callconv operator-(const vecint8 Inxmm_a);

    /* Comparison Operators */
    friend vecint8 uX_callconv operator==(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator<(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator<=(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator>(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator>=(const vecint8 Inxmm_a, const vecint8 Inxmm_b);
    friend vecint8 uX_callconv operator!=(const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    /* Shift Operators */
    friend vecint8 uX_callconv operator<<(const vecint8 Inxmm_a, int InIntCount);
    friend vecint8 uX_callconv operator<<(const vecint8 Inxmm_a, const vecint8 Inxmm_Count);

    friend vecint8 uX_callconv operator>>(const vecint8 Inxmm_a, int InIntCount);
    friend vecint8 uX_callconv operator>>(const vecint8 Inxmm_a, const vecint8 Inxmm_Count);

    vecint8& uX_callconv operator<<=(int InIntCount);
    vecint8& uX_callconv operator<<=(const vecint8 Inxmm_Count);

    vecint8& uX_callconv operator>>=(int InIntCount);
    vecint8& uX_callconv operator>>=(const vecint8 Inxmm_Count);

    /* Element Access Only, no modifications to elements*/
    const __int8& uX_callconv operator[](int index) const;

    /* Element Access and Modification*/
    __int8& uX_callconv operator[](int index);

    /**
     * Load function to load from type __int8* unaligned.
     *
     * @param Inpint8 value to copy from.
     */
    vecint8& uX_callconv load(uX_InReads(16) const __int8* Inpint8);

    /**
     * Load function to load from type __int8* aligned by 16.
     *
     * @param Inpint8 value to copy from.
     */
    vecint8& uX_callconv load_a(uX_InReads(16) const __int8* Inpint8);

    /**
     * Store function to store to type __int8* unaligned.
     *
     * @param Outpint8 value to store to.
     */
    void uX_callconv store(uX_OutWrites(16) __int8* Outpint8) const;

    /**
     * Store function to store to type __int8* aligned by 16.
     *
     * @param Outpint8 value to store to.
     */
    void uX_callconv store_a(uX_OutWrites(16) __int8* Outpfloat) const;

    /**
     * Insert function to insert from type __int8 on the mask index.
     *
     * @param value __int8 to copy from.
     * @param index element to set.
     */
    const vecint8 uX_callconv insert(__int8 value, const unsigned int index);

    /**
     * Extract function to extract element from mask index.
     *
     * @param index element to get.
     */
    __int8 uX_callconv extract(const unsigned int index) const;

    // Select between two operands. Corresponds to this pseudo code:
    // for (int i = 0; i < 4; i++) result[i] = s[i] ? a[i] : b[i];
    friend vecint8 uX_callconv select(const vecint8 Inxmm_f, const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    // Conditional add: For all vector elements i: result[i] = f[i] ? (a[i] + b[i]) : a[i]
    friend vecint8 uX_callconv if_add(const vecint8 Inxmm_f, const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    // Conditional subtract: For all vector elements i: result[i] = f[i] ? (a[i] - b[i]) : a[i]
    friend vecint8 uX_callconv if_sub(const vecint8 Inxmm_f, const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    // Conditional multiply: For all vector elements i: result[i] = f[i] ? (a[i] * b[i]) : a[i]
    friend vecint8 uX_callconv if_mul(const vecint8 Inxmm_f, const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    // Conditional divide: For all vector elements i: result[i] = f[i] ? (a[i] / b[i]) : a[i]
    friend vecint8 uX_callconv if_div(const vecint8 Inxmm_f, const vecint8 Inxmm_a, const vecint8 Inxmm_b);

    friend vecint8 uX_callconv compress(const vecint16 Inxmm_low, const vecint16 Inxmm_high);

    friend vecint8 uX_callconv compress_saturated(const vecint16 Inxmm_low, const vecint16 Inxmm_high);

protected:

private:
    union
    {
        __m128i             m128_xmmi;
        struct
        {
            __int8     _0, _1, _2, _3,
                       _4, _5, _6, _7,
                     _8, _9, _10, _11,
                   _12, _13, _14, _15;
        };
        __int8            m128_ib[16];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_i8_ptr_lenght = 16;
    static uX_const uint32_t m128_i8_ptr_size = 16;
    static uX_const uint32_t m128_i8_size = 1;

}vecint8_t;

typedef class uX_EXAPI vecuint8
{
public:
    vecuint8()uX_default;
    ~vecuint8()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecuint8(const vecuint8&)uX_default;
    vecuint8& uX_callconv operator=(const vecuint8&)uX_default;

    vecuint8(vecuint8&&)uX_default;
    vecuint8& uX_callconv operator=(vecuint8&&)uX_default;
#else
    vecuint8(const vecuint8& Invecuint8);
    vecuint8& uX_callconv operator=(const vecuint8& Invecuint8);

    vecuint8(vecuint8&& Invecuint8);
    vecuint8& uX_callconv operator=(vecuint8&& Invecuint8);
#endif
    /**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecuint8(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

    /** Type cast operator to convert to __m128i. */
    operator __m128i() const;

    /**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecuint8& uX_callconv operator=(const __m128i Inxmmi);

    /**
     * Constructor initialization from type unsigned __int8*.
     *
     * @param Inpint8 value to copy from.
     */
    uX_explicit vecuint8(uX_InReads(16) const unsigned __int8* Inpint8);

    /** Type cast operator to convert to unsigned __int8*. */
    /*operator unsigned __int8*() const;*/

    /**
     * Assignment operator to convert from type unsigned __int8*.
     *
     * @param Inpint8 value to copy from.
     */
    vecuint8& uX_callconv operator=(uX_InReads(16) const unsigned __int8* Inpint8);

protected:

private:
    union
    {
        __m128i                      m128_xmmi;
        struct
        {
            unsigned     __int8 _0, _1, _2, _3,
                                _4, _5, _6, _7,
                              _8, _9, _10, _11,
                            _12, _13, _14, _15;
        };
        unsigned __int8            m128_ub[16];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_ui8_ptr_lenght = 16;
    static uX_const uint32_t m128_ui8_ptr_size = 16;
    static uX_const uint32_t m128_ui8_size = 1;

}vecuint8_t;

typedef class uX_EXAPI vecint16
{
public:
    vecint16()uX_default;
    ~vecint16()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecint16(const vecint16&)uX_default;
    vecint16& uX_callconv operator=(const vecint16&)uX_default;

    vecint16(vecint16&&)uX_default;
    vecint16& uX_callconv operator=(vecint16&&)uX_default;
#else
    vecint16(const vecint16& Invecint16);
    vecint16& uX_callconv operator=(const vecint16& Invecint16);

    vecint16(vecint16&& Invecint16);
    vecint16& uX_callconv operator=(vecint16&& Invecint16);
#endif
    /**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecint16(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

    /**
     * Constructor initialization from type __int16*.
     *
     * @param Inpint16 value to copy from.
     */
    uX_explicit vecint16(uX_InReads(8) const __int16* Inpint16);

    /** Type cast operator to convert to __m128i. */
    operator __m128i() const;

    /** Type cast operator to convert to __int16*. */
    /*operator __int16*() const;*/

    /**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecint16& uX_callconv operator=(const __m128i Inxmmi);

    /**
     * Assignment operator to convert from type __int16*.
     *
     * @param Inpint16 value to copy from.
     */
    vecint16& uX_callconv operator=(uX_InReads(8) const __int16* Inpint16);

    // Function extend_low : extends the low 8 elements to 16 bits with sign extension
    vecint16 uX_callconv extend_low(const vecint8 Inxmm_a);

    // Function extend_high : extends the high 8 elements to 16 bits with sign extension
    vecint16 uX_callconv extend_high(const vecint8 Inxmm_a);

protected:

private:
    union
    {
        __m128i          m128_xmmi;
        struct
        {
            __int16 _0, _1, _2, _3,
                    _4, _5, _6, _7;
        };
        __int16         m128_iw[8];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_i16_ptr_lenght = 8;
    static uX_const uint32_t m128_i16_ptr_size = 16;
    static uX_const uint32_t m128_i16_size = 2;

}vecint16_t;

typedef class uX_EXAPI vecuint16
{
public:
    vecuint16()uX_default;
    ~vecuint16()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecuint16(const vecuint16&)uX_default;
    vecuint16& uX_callconv operator=(const vecuint16&)uX_default;

    vecuint16(vecuint16&&)uX_default;
    vecuint16& uX_callconv operator=(vecuint16&&)uX_default;
#else
    vecuint16(const vecuint16& Invecuint16);
    vecuint16& uX_callconv operator=(const vecuint16& Invecuint16);

    vecuint16(vecuint16&& Invecuint16);
    vecuint16& uX_callconv operator=(vecuint16&& Invecuint16);
#endif
    /**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecuint16(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

    /**
     * Constructor initialization from type unsigned __int16*.
     *
     * @param Inpint16 value to copy from.
     */
    uX_explicit vecuint16(uX_InReads(8) const unsigned __int16* Inpint16);

    /** Type cast operator to convert to __m128i. */
    operator __m128i() const;

    /** Type cast operator to convert to unsigned __int16*. */
    /*operator unsigned __int16*() const;*/

    /**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecuint16& uX_callconv operator=(const __m128i Inxmmi);

    /**
     * Assignment operator to convert from type unsigned __int16*.
     *
     * @param Inpint16 value to copy from.
     */
    vecuint16& uX_callconv operator=(uX_InReads(8) const unsigned __int16* Inpint16);

protected:

private:
    union
    {
        __m128i                   m128_xmmi;
        struct
        {
            unsigned __int16 _0, _1, _2, _3,
                             _4, _5, _6, _7;
        };
        unsigned __int16         m128_uw[8];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_ui16_ptr_lenght = 8;
    static uX_const uint32_t m128_ui16_ptr_size = 16;
    static uX_const uint32_t m128_ui16_size = 2;

}vecuint16_t;

typedef class uX_EXAPI vecint32
{
public:
    vecint32()uX_default;
    ~vecint32()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecint32(const vecint32&)uX_default;
    vecint32& uX_callconv operator=(const vecint32&)uX_default;

    vecint32(vecint32&&)uX_default;
    vecint32& uX_callconv operator=(vecint32&&)uX_default;
#else
    vecint32(const vecint32& Invecint32);
    vecint32& uX_callconv operator=(const vecint32& Invecint32);

    vecint32(vecint32&& Invecint32);
    vecint32& uX_callconv operator=(vecint32&& Invecint32);
#endif
    /**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecint32(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

    /**
     * Constructor initialization from type __int32*.
     *
     * @param Inpint32 value to copy from.
     */
    uX_explicit vecint32(uX_InReads(4) const __int32* Inpint32);

    /** Type cast operator to convert to __m128i. */
    operator __m128i() const;

    /** Type cast operator to convert to __int32*. */
    /*operator __int32*() const;*/

    /**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecint32& uX_callconv operator=(const __m128i Inxmmi);

    /**
     * Assignment operator to convert from type __int32*.
     *
     * @param Inpint32 value to copy from.
     */
    vecint32& uX_callconv operator=(uX_InReads(4) const __int32* Inpint32);

protected:

private:
    union
    {
        __m128i          m128_xmmi;
        struct
        {
            __int32 _0, _1, _2, _3;
        };
        __int32         m128_id[4];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_i32_ptr_lenght = 4;
    static uX_const uint32_t m128_i32_ptr_size = 16;
    static uX_const uint32_t m128_i32_size = 4;

}vecint32_t;

typedef class uX_EXAPI vecuint32
{
public:
    vecuint32()uX_default;
    ~vecuint32()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecuint32(const vecuint32&)uX_default;
    vecuint32& uX_callconv operator=(const vecuint32&)uX_default;

    vecuint32(vecuint32&&)uX_default;
    vecuint32& uX_callconv operator=(vecuint32&&)uX_default;
#else
    vecuint32(const vecuint32& Invecuint32);
    vecuint32& uX_callconv operator=(const vecuint32& Invecuint32);

    vecuint32(vecuint32&& Invecuint32);
    vecuint32& uX_callconv operator=(vecuint32&& Invecuint32);
#endif
    /**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecuint32(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

    /**
     * Constructor initialization from type unsigned __int32*.
     *
     * @param Inpint32 value to copy from.
     */
    uX_explicit vecuint32(uX_InReads(4) const unsigned __int32* Inpint32);

    /** Type cast operator to convert to __m128i. */
    operator __m128i() const;

    /** Type cast operator to convert to unsigned __int32*. */
    /*operator unsigned __int32*() const;*/

    /**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecuint32& uX_callconv operator=(const __m128i Inxmmi);

    /**
     * Assignment operator to convert from type unsigned __int32*.
     *
     * @param Inpint32 value to copy from.
     */
    vecuint32& uX_callconv operator=(uX_InReads(4) const unsigned __int32* Inpint32);

protected:

private:
    union
    {
        __m128i                   m128_xmmi;
        struct
        {
            unsigned __int32 _0, _1, _2, _3;
        };
        unsigned __int32         m128_ud[4];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_ui32_ptr_lenght = 4;
    static uX_const uint32_t m128_ui32_ptr_size = 16;
    static uX_const uint32_t m128_ui32_size = 4;

}vecuint32_t;

typedef class uX_EXAPI vecint64
{
public:
    vecint64()uX_default;
    ~vecint64()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecint64(const vecint64&)uX_default;
    vecint64& uX_callconv operator=(const vecint64&)uX_default;

    vecint64(vecint64&&)uX_default;
    vecint64& uX_callconv operator=(vecint64&&)uX_default;
#else
    vecint64(const vecint64& Invecint64);
    vecint64& uX_callconv operator=(const vecint64& Invecint64);

    vecint64(vecint64&& Invecint64);
    vecint64& uX_callconv operator=(vecint64&& Invecint64);
#endif
    /**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecint64(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

    /**
     * Constructor initialization from type __int64*.
     *
     * @param Inpint64 value to copy from.
     */
    uX_explicit vecint64(uX_InReads(2) const __int64* Inpint64);

    /** Type cast operator to convert to __m128i. */
    operator __m128i() const;

    /** Type cast operator to convert to __int64*. */
    /*operator __int64*() const;*/

    /**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecint64& uX_callconv operator=(const __m128i Inxmmi);

    /**
     * Assignment operator to convert from type __int64*.
     *
     * @param Inpint64 value to copy from.
     */
    vecint64& uX_callconv operator=(uX_InReads(2) const __int64* Inpint64);

protected:

private:
    union
    {
        __m128i  m128_xmmi;
        struct
        {
            __int64 _0, _1;
        };
        __int64 m128_iq[2];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_i64_ptr_lenght = 2;
    static uX_const uint32_t m128_i64_ptr_size = 16;
    static uX_const uint32_t m128_i64_size = 8;

}vecint64_t;

typedef class uX_EXAPI vecuint64
{
public:
    vecuint64()uX_default;
    ~vecuint64()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecuint64(const vecuint64&)uX_default;
    vecuint64& uX_callconv operator=(const vecuint64&)uX_default;

    vecuint64(vecuint64&&)uX_default;
    vecuint64& uX_callconv operator=(vecuint64&&)uX_default;
#else
    vecuint64(const vecuint64& Invecuint64);
    vecuint64& uX_callconv operator=(const vecuint64& Invecuint64);

    vecuint64(vecuint64&& Invecuint64);
    vecuint64& uX_callconv operator=(vecuint64&& Invecuint64);
#endif
    /**
     * Constructor initialization from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecuint64(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

    /**
     * Constructor initialization from type unsigned __int64*.
     *
     * @param Inpint64 value to copy from.
     */
    uX_explicit vecuint64(uX_InReads(2) const unsigned __int64* Inpint64);

    /** Type cast operator to convert to __m128i. */
    operator __m128i() const;

    /** Type cast operator to convert to unsigned __int64*. */
    /*operator unsigned __int64*() const;*/

    /**
     * Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    vecuint64& uX_callconv operator=(const __m128i Inxmmi);

    /**
     * Assignment operator to convert from type unsigned __int64*.
     *
     * @param Inpint64 value to copy from.
     */
    vecuint64& uX_callconv operator=(uX_InReads(2) const unsigned __int64* Inpint64);

protected:

private:
    union
    {
        __m128i           m128_xmmi;
        struct
        {
            unsigned __int64 _0, _1;
        };
        unsigned __int64 m128_uq[2];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_ui64_ptr_lenght = 2;
    static uX_const uint32_t m128_ui64_ptr_size = 16;
    static uX_const uint32_t m128_ui64_size = 8;

}vecuint64_t;

typedef class uX_EXAPI vecdouble
{
public:
    vecdouble()uX_default;
    ~vecdouble()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecdouble(const vecdouble&)uX_default;
    vecdouble& uX_callconv operator=(const vecdouble&)uX_default;

    vecdouble(vecdouble&&)uX_default;
    vecdouble& uX_callconv operator=(vecdouble&&)uX_default;
#else
    vecdouble(const vecdouble& Invecdouble);
    vecdouble& uX_callconv operator=(const vecdouble& Invecdouble);

    vecdouble(vecdouble&& Invecdouble);
    vecdouble& uX_callconv operator=(vecdouble&& Invecdouble);
#endif
    /**
     * Constructor initialization from type __m128d.
     *
     * @param Inxmmd value to copy from.
     */
    uX_constexpr vecdouble(const __m128d Inxmmd) : m128_xmmd{Inxmmd} {}
    
    /**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    uX_explicit vecdouble(uX_InReads(2) const double* Inpdouble);

    /** Type cast operator to convert to __m128d. */
    operator __m128d() const;

    /** Type cast operator to convert to double*. */
    /*operator double*() const;*/

    /**
     * Assignment operator to convert from type __m128d.
     *
     * @param Inxmmd value to copy from.
     */
    vecdouble& uX_callconv operator=(const __m128d Inxmmd);

    /**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    vecdouble& uX_callconv operator=(uX_InReads(2) const double* Inpdouble);

protected:

private:
    union
    {
        __m128d m128_xmmd;
        struct
        {
            double _x, _y;
        };
        double  m128_d[2];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_dbl_ptr_lenght = 2;
    static uX_const uint32_t m128_dbl_ptr_size = 16;
    static uX_const uint32_t m128_dbl_size = 8;

}vecdouble_t;
#endif // uX_SSE2

// Elementary Structs

typedef class uX_EXAPI vecfloat1
{
public:
    vecfloat1()uX_default;
    ~vecfloat1()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecfloat1(const vecfloat1&)uX_default;
    vecfloat1& uX_callconv operator=(const vecfloat1&)uX_default;

    vecfloat1(vecfloat1&&)uX_default;
    vecfloat1& uX_callconv operator=(vecfloat1&&)uX_default;
#else
    vecfloat1(const vecfloat1& Invecfloat1);
    vecfloat1& uX_callconv operator=(const vecfloat1& Invecfloat1);

    vecfloat1(vecfloat1&& Invecfloat1);
    vecfloat1& uX_callconv operator=(vecfloat1&& Invecfloat1);
#endif
    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat1(const __m128 Inxmm) : m128_xmm(_uX_mm_move_ss(__m128_false, Inxmm)) {}

    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat1(const vecfloat Inxmm) : m128_xmm(_uX_mm_move_ss(__m128_false, Inxmm)) {}

    /**
     * Constructor initialization from type float.
     *
     * @param Infloat value to copy from.
     */
    uX_explicit vecfloat1(float Infloat);

    /** Type cast operator to convert to __m128. */
    operator __m128() const;

    /** Type cast operator to convert to float. */
    /*operator float() const;*/

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat1& uX_callconv operator=(const __m128 Inxmm);

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat1& uX_callconv operator=(const vecfloat Inxmm);

    /**
     * Assignment operator to convert from type float.
     *
     * @param Infloat value to copy from.
     */
    vecfloat1& uX_callconv operator=(float Infloat);

    /**
     * Get vector protected member.
     */
    vecfloat1 uX_callconv get() const;

    /**
     * Member function get the X element from vector.
     */
    float uX_callconv get_x() const;

    /**
     * Get the vector reference to protected member.
     */
    vecfloat1& uX_callconv ref();

    /**
     * Member function get the reference to X element from vector.
     */
    float& uX_callconv ref_x();

protected:

private:
    union
    {
        __m128 m128_xmm;
        float        _x;
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_flt_size = 4;

}vecfloat1_t;

typedef class uX_EXAPI vecfloat2
{
public:
    vecfloat2()uX_default;
    ~vecfloat2()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecfloat2(const vecfloat2&)uX_default;
    vecfloat2& uX_callconv operator=(const vecfloat2&)uX_default;

    vecfloat2(vecfloat2&&)uX_default;
    vecfloat2& uX_callconv operator=(vecfloat2&&)uX_default;
#else
    vecfloat2(const vecfloat2& Invecfloat2);
    vecfloat2& uX_callconv operator=(const vecfloat2& Invecfloat2);

    vecfloat2(vecfloat2&& Invecfloat2);
    vecfloat2& uX_callconv operator=(vecfloat2&& Invecfloat2);
#endif
    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat2(const __m128 Inxmm) : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm, __m128_false, 0, 1, 2, 3)) {}

    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat2(const vecfloat Inxmm) : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm, __m128_false, 0, 1, 2, 3)) {}

    /**
     * Constructor initialization from 2 type float.
     *
     * @param Infloat_X value to copy from.
     * @param Infloat_Y value to copy from.
     */
    uX_explicit vecfloat2(float Infloat_X, float Infloat_Y);

    /**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    uX_explicit vecfloat2(uX_InReads(2) const float* Inpfloat);

    /** Type cast operator to convert to __m128. */
    operator __m128() const;

    /** Type cast operator to convert to float*. */
    /*operator float*() const;*/

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat2& uX_callconv operator=(const __m128 Inxmm);

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat2& uX_callconv operator=(const vecfloat Inxmm);

    /**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    vecfloat2& uX_callconv operator=(uX_InReads(2) const float* Inpfloat);

    /**
     * Get vector protected member.
     */
    vecfloat2 uX_callconv get() const;

    /**
     * Member function get the X element from vector.
     */
    float uX_callconv get_x() const;

    /**
     * Member function get the Y element from vector.
     */
    float uX_callconv get_y() const;

    /**
     * Get the vector reference to protected member.
     */
    vecfloat2& uX_callconv ref();

    /**
     * Member function get the reference to X element from vector.
     */
    float& uX_callconv ref_x();

    /**
     * Member function get the reference to Y element from vector.
     */
    float& uX_callconv ref_y();

protected:

private:
    union
    {
        __m128  m128_xmm;
        struct
        {
            float _x, _y;
        };
        float  m128_f[2];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_flt_ptr_lenght = 2;
    static uX_const uint32_t m128_flt_ptr_size = 8;
    static uX_const uint32_t m128_flt_size = 4;

}vecfloat2_t;

typedef class uX_EXAPI vecfloat3
{
public:
    vecfloat3()uX_default;
    ~vecfloat3()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecfloat3(const vecfloat3&)uX_default;
    vecfloat3& uX_callconv operator=(const vecfloat3&)uX_default;

    vecfloat3(vecfloat3&&)uX_default;
    vecfloat3& uX_callconv operator=(vecfloat3&&)uX_default;
#else
    vecfloat3(const vecfloat3& Invecfloat3);
    vecfloat3& uX_callconv operator=(const vecfloat3& Invecfloat3);

    vecfloat3(vecfloat3&& Invecfloat3);
    vecfloat3& uX_callconv operator=(vecfloat3&& Invecfloat3);
#endif
    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat3(const __m128 Inxmm) : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm, _uX_mm_move_ss(__m128_false, _uX_MM_SHUFFLER_IM_PS(Inxmm, Inxmm, 2, 2, 2, 2)), 0, 1, 2, 3)) {}
    
    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat3(const vecfloat Inxmm) : m128_xmm(_uX_MM_SHUFFLER_IM_PS(Inxmm, _uX_mm_move_ss(__m128_false, _uX_MM_SHUFFLER_IM_PS(Inxmm, Inxmm, 2, 2, 2, 2)), 0, 1, 2, 3)) {}

    /**
     * Constructor initialization from 3 type float.
     *
     * @param Infloat_X value to copy from.
     * @param Infloat_Y value to copy from.
     * @param Infloat_Z value to copy from.
     */
    uX_explicit vecfloat3(float Infloat_X, float Infloat_Y, float Infloat_Z);

    /**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    uX_explicit vecfloat3(uX_InReads(3) const float* Inpfloat);

    /** Type cast operator to convert to __m128. */
    operator __m128() const;

    /** Type cast operator to convert to float*. */
    /*operator float*() const;*/

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat3& uX_callconv operator=(const __m128 Inxmm);

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat3& uX_callconv operator=(const vecfloat Inxmm);

    /**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    vecfloat3& uX_callconv operator=(uX_InReads(3) const float* Inpfloat);

    /**
     * Get vector protected member.
     */
    vecfloat3 uX_callconv get() const;

    /**
     * Member function get the X element from vector.
     */
    float uX_callconv get_x() const;

    /**
     * Member function get the Y element from vector.
     */
    float uX_callconv get_y() const;

    /**
     * Member function get the Z element from vector.
     */
    float uX_callconv get_z() const;

    /**
     * Get the vector reference to protected member.
     */
    vecfloat3& uX_callconv ref();

    /**
     * Member function get the reference to X element from vector.
     */
    float& uX_callconv ref_x();

    /**
     * Member function get the reference to Y element from vector.
     */
    float& uX_callconv ref_y();

    /**
     * Member function get the reference to Z element from vector.
     */
    float& uX_callconv ref_z();

protected:

private:
    union
    {
        __m128      m128_xmm;
        struct
        {
            float _x, _y, _z;
        };
        float      m128_f[3];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_flt_ptr_lenght = 3;
    static uX_const uint32_t m128_flt_ptr_size = 12;
    static uX_const uint32_t m128_flt_size = 4;

}vecfloat3_t;

typedef class uX_EXAPI vecfloat4
{
public:
    vecfloat4()uX_default;
    ~vecfloat4()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecfloat4(const vecfloat4&)uX_default;
    vecfloat4& uX_callconv operator=(const vecfloat4&)uX_default;

    vecfloat4(vecfloat4&&)uX_default;
    vecfloat4& uX_callconv operator=(vecfloat4&&)uX_default;
#else
    vecfloat4(const vecfloat4& Invecfloat4);
    vecfloat4& uX_callconv operator=(const vecfloat4& Invecfloat4);

    vecfloat4(vecfloat4&& Invecfloat4);
    vecfloat4& uX_callconv operator=(vecfloat4&& Invecfloat4);
#endif
    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat4(const __m128 Inxmm) : m128_xmm(Inxmm) {}

    /**
     * Constructor initialization from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecfloat4(const vecfloat Inxmm) : m128_xmm(Inxmm) {}

    /**
     * Constructor initialization from 4 type float.
     *
     * @param Infloat_X value to copy from.
     * @param Infloat_Y value to copy from.
     * @param Infloat_Z value to copy from.
     * @param Infloat_W value to copy from.
     */
    uX_explicit vecfloat4(float Infloat_X, float Infloat_Y, float Infloat_Z, float Infloat_W);

    /**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    uX_explicit vecfloat4(uX_InReads(4) const float* Inpfloat);

    /** Type cast operator to convert to __m128. */
    operator __m128() const;

    /** Type cast operator to convert to float*. */
    /*operator float*() const;*/

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat4& uX_callconv operator=(const __m128 Inxmm);

    /**
     * Assignment operator to convert from type __m128.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat4& uX_callconv operator=(const vecfloat Inxmm);

    /**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    vecfloat4& uX_callconv operator=(uX_InReads(4) const float* Inpfloat);

    /**
     * Get vector protected member.
     */
    vecfloat4 uX_callconv get() const;

    /**
     * Member function get all elements from vector.
     */
    vecfloat4 uX_callconv get_xyzw() const;

    /**
     * Member function get the X element from vector.
     */
    float uX_callconv get_x() const;

    /**
     * Member function get the Y element from vector.
     */
    float uX_callconv get_y() const;

    /**
     * Member function get the Z element from vector.
     */
    float uX_callconv get_z() const;

    /**
     * Member function get the W element from vector.
     */
    float uX_callconv get_w() const;

    /**
     * Get the vector reference to protected member.
     */
    vecfloat4& uX_callconv ref();

    /**
     * Member function get the reference to all elements from vector.
     */
    vecfloat4& uX_callconv ref_xyzw();

    /**
     * Member function get the reference to X element from vector.
     */
    float& uX_callconv ref_x();

    /**
     * Member function get the reference to Y element from vector.
     */
    float& uX_callconv ref_y();

    /**
     * Member function get the reference to Z element from vector.
     */
    float& uX_callconv ref_z();

    /**
     * Member function get the reference to W element from vector.
     */
    float& uX_callconv ref_w();

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

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_flt_ptr_lenght = 4;
    static uX_const uint32_t m128_flt_ptr_size = 16;
    static uX_const uint32_t m128_flt_size = 4;

}vecfloat4_t;

// double precision

#ifdef uX_SSE2
typedef class uX_EXAPI vecdouble1
{
public:
    vecdouble1()uX_default;
    ~vecdouble1()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecdouble1(const vecdouble1&)uX_default;
    vecdouble1& uX_callconv operator=(const vecdouble1&)uX_default;

    vecdouble1(vecdouble1&&)uX_default;
    vecdouble1& uX_callconv operator=(vecdouble1&&)uX_default;
#else
    vecdouble1(const vecdouble1& Invecdouble1);
    vecdouble1& uX_callconv operator=(const vecdouble1& Invecdouble1);

    vecdouble1(vecdouble1&& Invecdouble1);
    vecdouble1& uX_callconv operator=(vecdouble1&& Invecdouble1);
#endif
    /**
     * Constructor initialization from type __m128d.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecdouble1(const __m128d Inxmmd) : m128_xmmd{Inxmmd} {}

    /**
     * Constructor initialization from type double.
     *
     * @param Indouble value to copy from.
     */
    uX_explicit vecdouble1(const double Indouble);
    
    /** Type cast operator to convert to __m128d. */
    operator __m128d() const;

    /** Type cast operator to convert to double. */
    /*operator double() const;*/

    /**
     * Assignment operator to convert from type __m128d.
     *
     * @param Inxmm value to copy from.
     */
    vecdouble1& uX_callconv operator=(const __m128d Inxmmd);

    /**
     * Assignment operator to convert from type double.
     *
     * @param Indouble value to copy from.
     */
    vecdouble1& uX_callconv operator=(const double Indouble);

protected:

private:
    union
    {
        __m128d         m128_xmmd;
        double             m128_d;
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_dbl_size = 8;

}vecdouble1_t;

typedef class uX_EXAPI vecdouble2
{
public:
    vecdouble2()uX_default;
    ~vecdouble2()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecdouble2(const vecdouble2&)uX_default;
    vecdouble2& uX_callconv operator=(const vecdouble2&)uX_default;

    vecdouble2(vecdouble2&&)uX_default;
    vecdouble2& uX_callconv operator=(vecdouble2&&)uX_default;
#else
    vecdouble2(const vecdouble2& Invecdouble2);
    vecdouble2& uX_callconv operator=(const vecdouble2& Invecdouble2);

    vecdouble2(vecdouble2&& Invecdouble2);
    vecdouble2& uX_callconv operator=(vecdouble2&& Invecdouble2);
#endif
    /**
     * Constructor initialization from type __m128d.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecdouble2(const __m128d Inxmmd) : m128_xmmd{Inxmmd} {}

    /**
     * Constructor initialization from 2 type double.
     *
     * @param Indouble_X value to copy from.
     * @param Indouble_Y value to copy from.
     */
    uX_explicit vecdouble2(const double Indouble_X, const double Indouble_Y);

    /**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    uX_explicit vecdouble2(uX_InReads(2) const double* Inpdouble);

    /** Type cast operator to convert to __m128d. */
    operator __m128d() const;

    /** Type cast operator to convert to double*. */
    /*operator double*() const;*/

    /**
     * Assignment operator to convert from type __m128d.
     *
     * @param Inxmm value to copy from.
     */
    vecdouble2& uX_callconv operator=(const __m128d Inxmmd);
    
    /**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    vecdouble2& uX_callconv operator=(uX_InReads(2) const double* Inpdouble);

protected:

private:
    union
    {
        __m128d         m128_xmmd;
        struct
        {
            double         _x, _y;
        };
        double          m128_d[2];
    };

    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_dbl_ptr_lenght = 2;
    static uX_const uint32_t m128_dbl_ptr_size = 16;
    static uX_const uint32_t m128_dbl_size = 8;

}vecdouble2_t;

typedef class uX_EXAPI vecdouble3
{
public:
    vecdouble3()uX_default;
    ~vecdouble3()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecdouble3(const vecdouble3&)uX_default;
    vecdouble3& uX_callconv operator=(const vecdouble3&)uX_default;

    vecdouble3(vecdouble3&&)uX_default;
    vecdouble3& uX_callconv operator=(vecdouble3&&)uX_default;
#else
    vecdouble3(const vecdouble3& Invecdouble3);
    vecdouble3& uX_callconv operator=(const vecdouble3& Invecdouble3);

    vecdouble3(vecdouble3&& Invecdouble3);
    vecdouble3& uX_callconv operator=(vecdouble3&& Invecdouble3);
#endif
    /**
     * Constructor initialization from 2 type __m128d.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecdouble3(const __m128d Inxmmd_0, const __m128d Inxmmd_1) : m128_xmmd{Inxmmd_0,Inxmmd_1} {}
    
    /**
     * Constructor initialization from type __m128*.
     *
     * @param Inpxmm value to copy from.
     */
    uX_constexpr vecdouble3(uX_InReads(2) const __m128d* Inpxmmd) : m128_xmmd{Inpxmmd[0],Inpxmmd[1]} {}

    /**
     * Constructor initialization from 3 type double.
     *
     * @param Indouble_X value to copy from.
     * @param Indouble_Y value to copy from.
     * @param Indouble_Z value to copy from.
     */
    uX_explicit vecdouble3(const double Indouble_X, const double Indouble_Y, const double Indouble_Z);

    /**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    uX_explicit vecdouble3(uX_InReads(3) const double* Inpdouble);
    
    /** Type cast operator to convert to __m128d*. */
    operator __m128d*() const;

    /** Type cast operator to convert to double*. */
    /*operator double*() const;*/
    
    /**
     * Assignment operator to convert from type __m128d*.
     *
     * @param Inxmm value to copy from.
     */
    vecdouble3& uX_callconv operator=(uX_InReads(2) const __m128d* Inpxmmd);

    /**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    vecdouble3& uX_callconv operator=(uX_InReads(3) const double* Inpdouble);

protected:

private:
    union
    {
        struct
        {
            __m128d     m128_xmmd_0;
            __m128d     m128_xmmd_1;
        };
        __m128d        m128_xmmd[2];
        struct
        {
            double       _x, _y, _z;
        };
        double            m128_d[3];
    };

    static uX_const uint32_t m128_xmm_ptr_lenght = 2;
    static uX_const uint32_t m128_xmm_ptr_size = 32;
    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_dbl_ptr_lenght = 3;
    static uX_const uint32_t m128_dbl_ptr_size = 24;
    static uX_const uint32_t m128_dbl_size = 8;

}vecdouble3_t;

typedef class uX_EXAPI vecdouble4
{
public:
    vecdouble4()uX_default;
    ~vecdouble4()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecdouble4(const vecdouble4&)uX_default;
    vecdouble4& uX_callconv operator=(const vecdouble4&)uX_default;

    vecdouble4(vecdouble4&&)uX_default;
    vecdouble4& uX_callconv operator=(vecdouble4&&)uX_default;
#else
    vecdouble4(const vecdouble4& Invecdouble4);
    vecdouble4& uX_callconv operator=(const vecdouble4& Invecdouble4);

    vecdouble4(vecdouble4&& Invecdouble4);
    vecdouble4& uX_callconv operator=(vecdouble4&& Invecdouble4);
#endif
    /**
     * Constructor initialization from 2 type __m128d.
     *
     * @param Inxmm value to copy from.
     */
    uX_constexpr vecdouble4(const __m128d Inxmmd_0, const __m128d Inxmmd_1) : m128_xmmd{Inxmmd_0,Inxmmd_1} {}
    
    /**
     * Constructor initialization from type __m128*.
     *
     * @param Inpxmm value to copy from.
     */
    uX_constexpr vecdouble4(uX_InReads(2) const __m128d* Inpxmmd) : m128_xmmd{Inpxmmd[0],Inpxmmd[1]} {}

    /**
     * Constructor initialization from 4 type double.
     *
     * @param Indouble_X value to copy from.
     * @param Indouble_Y value to copy from.
     * @param Indouble_Z value to copy from.
     * @param Indouble_W value to copy from.
     */
    uX_explicit vecdouble4(const double Indouble_X, const double Indouble_Y, const double Indouble_Z, const double Indouble_W);

    /**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    uX_explicit vecdouble4(uX_InReads(4) const double* Inpdouble);

    /** Type cast operator to convert to __m128d*. */
    operator __m128d*() const;

    /** Type cast operator to convert to double*. */
    /*operator double*() const;*/
    
    /**
     * Assignment operator to convert from type __m128d*.
     *
     * @param Inxmm value to copy from.
     */
    vecdouble4& uX_callconv operator=(uX_InReads(2) const __m128d* Inpxmmd);

    /**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    vecdouble4& uX_callconv operator=(uX_InReads(4) const double* Inpdouble);

protected:

private:
    union
    {
        struct
        {
            __m128d         m128_xmmd_0;
            __m128d         m128_xmmd_1;
        };
        __m128d            m128_xmmd[2];
        struct
        {
            double       _x, _y, _z, _w;
        };
        double                m128_d[4];
    };

    static uX_const uint32_t m128_xmm_ptr_lenght = 2;
    static uX_const uint32_t m128_xmm_ptr_size = 32;
    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_dbl_ptr_lenght = 4;
    static uX_const uint32_t m128_dbl_ptr_size = 32;
    static uX_const uint32_t m128_dbl_size = 8;

}vecdouble4_t;
#endif // uX_SSE2

// MATRIX'S

typedef class uX_EXAPI vecfloat3x3
{
public:
    vecfloat3x3()uX_default;
    ~vecfloat3x3()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecfloat3x3(const vecfloat3x3&)uX_default;
    vecfloat3x3& uX_callconv operator=(const vecfloat3x3&)uX_default;

    vecfloat3x3(vecfloat3x3&&)uX_default;
    vecfloat3x3& uX_callconv operator=(vecfloat3x3&&)uX_default;
#else
    vecfloat3x3(const vecfloat3x3& Invecfloat3x3);
    vecfloat3x3& uX_callconv operator=(const vecfloat3x3& Invecfloat3x3);

    vecfloat3x3(vecfloat3x3&& Invecfloat3x3);
    vecfloat3x3& uX_callconv operator=(vecfloat3x3&& Invecfloat3x3);
#endif
    /**
     * Constructor initialization from 3 type __m128.
     *
     * @param Inxmm_0 value to copy from.
     * @param Inxmm_1 value to copy from.
     * @param Inxmm_2 value to copy from.
     */
    uX_constexpr vecfloat3x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2) : m128_xmm_0(Inxmm_0), m128_xmm_1(Inxmm_1) {}

    /**
     * Constructor initialization from type __m128*.
     *
     * @param Inpxmm value to copy from.
     */
    uX_constexpr vecfloat3x3(uX_InReads(3) const __m128* Inpxmm) : m128_xmm{ Inpxmm[0], Inpxmm[1], Inpxmm[2] } {}

    /**
     * Constructor initialization from 4x4 type floats.
     *
     * @param Infloat_X0 value to copy from.
     * @param Infloat_X1 value to copy from.
     * @param Infloat_X2 value to copy from.
     * @param Infloat_Y0 value to copy from.
     * @param Infloat_Y1 value to copy from.
     * @param Infloat_Y2 value to copy from.
     * @param Infloat_Z0 value to copy from.
     * @param Infloat_Z1 value to copy from.
     * @param Infloat_Z2 value to copy from.
     */
    uX_explicit vecfloat3x3(float Infloat_X0, float Infloat_X1, float Infloat_X2,
                            float Infloat_Y0, float Infloat_Y1, float Infloat_Y2, 
                            float Infloat_Z0, float Infloat_Z1, float Infloat_Z2);

    /**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    uX_explicit vecfloat3x3(uX_InReads(9) const float* Inpfloat);

    /** Type cast operator to convert to __m128*. */
    operator __m128*() const;

    /** Type cast operator to convert to float*. */
    /*operator float*() const;*/

    /**
     * Assignment operator to convert from type __m128*.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat3x3& uX_callconv operator=(uX_InReads(3) const __m128* Inpxmm);

    /**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    vecfloat3x3& uX_callconv operator=(uX_InReads(9) const float* Inpfloat);

protected:

private:
    union
    {
        struct
        {
            __m128          m128_xmm_0;
            __m128          m128_xmm_1;
        };
        __m128             m128_xmm[3];
        struct
        {
            float        _11, _12, _13;
            float        _21, _22, _23;
            float        _31, _32, _33;
        };
        float            m128_fm[3][3];
        float                m128_f[9];
    };

    static uX_const uint32_t m128_xmm_ptr_lenght = 3;
    static uX_const uint32_t m128_xmm_ptr_size = 48;
    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_row_lenght = 3;
    static uX_const uint32_t m128_column_lenght = 3;
    static uX_const uint32_t m128_flt_ptr_lenght = 9;
    static uX_const uint32_t m128_flt_ptr_size = 36;
    static uX_const uint32_t m128_flt_size = 4;

}vecfloat3x3_t;

typedef class uX_EXAPI vecfloat4x3
{
public:
    vecfloat4x3()uX_default;
    ~vecfloat4x3()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecfloat4x3(const vecfloat4x3&)uX_default;
    vecfloat4x3& uX_callconv operator=(const vecfloat4x3&)uX_default;

    vecfloat4x3(vecfloat4x3&&)uX_default;
    vecfloat4x3& uX_callconv operator=(vecfloat4x3&&)uX_default;
#else
    vecfloat4x3(const vecfloat4x3& Invecfloat4x3);
    vecfloat4x3& uX_callconv operator=(const vecfloat4x3& Invecfloat4x3);

    vecfloat4x3(vecfloat4x3&& Invecfloat4x3);
    vecfloat4x3& uX_callconv operator=(vecfloat4x3&& Invecfloat4x3);
#endif
    /**
     * Constructor initialization from 4 type __m128.
     *
     * @param Inxmm_0 value to copy from.
     * @param Inxmm_1 value to copy from.
     * @param Inxmm_2 value to copy from.
     * @param Inxmm_3 value to copy from.
     */
    uX_constexpr vecfloat4x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3) : m128_xmm_0(Inxmm_0), m128_xmm_1(Inxmm_1), 
                                                                                                                       m128_xmm_2(Inxmm_2), m128_xmm_3(Inxmm_3) {}
    
    /**
     * Constructor initialization from type __m128*.
     *
     * @param Inpxmm value to copy from.
     */
    uX_constexpr vecfloat4x3(uX_InReads(4) const __m128* Inpxmm) : m128_xmm{ Inpxmm[0], Inpxmm[1], Inpxmm[2], Inpxmm[3] } {}

    /**
     * Constructor initialization from 4x4 type floats.
     *
     * @param Infloat_X0 value to copy from.
     * @param Infloat_X1 value to copy from.
     * @param Infloat_X2 value to copy from.
     * @param Infloat_Y0 value to copy from.
     * @param Infloat_Y1 value to copy from.
     * @param Infloat_Y2 value to copy from.
     * @param Infloat_Z0 value to copy from.
     * @param Infloat_Z1 value to copy from.
     * @param Infloat_Z2 value to copy from.
     * @param Infloat_W0 value to copy from.
     * @param Infloat_W1 value to copy from.
     * @param Infloat_W2 value to copy from.
     */
    uX_explicit vecfloat4x3(float Infloat_X0, float Infloat_X1, float Infloat_X2,
                            float Infloat_Y0, float Infloat_Y1, float Infloat_Y2, 
                            float Infloat_Z0, float Infloat_Z1, float Infloat_Z2, 
                            float Infloat_W0, float Infloat_W1, float Infloat_W2);

    /**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    uX_explicit vecfloat4x3(uX_InReads(12) const float* Inpfloat);

    /** Type cast operator to convert to __m128*. */
    operator __m128*() const;

    /** Type cast operator to convert to float*. */
    /*operator float*() const;*/

    /**
     * Assignment operator to convert from type __m128*.
     *
     * @param Inxmm value to copy from.
     */
    vecfloat4x3& uX_callconv operator=(uX_InReads(4) const __m128* Inpxmm);

    /**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    vecfloat4x3& uX_callconv operator=(uX_InReads(12) const float* Inpfloat);

protected:

private:
    union
    {
        struct
        {
            __m128          m128_xmm_0;
            __m128          m128_xmm_1;
            __m128          m128_xmm_2;
            __m128          m128_xmm_3;
        };
        __m128             m128_xmm[4];
        struct
        {
            float        _11, _12, _13;
            float        _21, _22, _23;
            float        _31, _32, _33;
            float        _41, _42, _43;
        };
        float            m128_fm[4][3];
        float               m128_f[12];
    };

    static uX_const uint32_t m128_xmm_ptr_lenght = 4;
    static uX_const uint32_t m128_xmm_ptr_size = 64;
    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_row_lenght = 4;
    static uX_const uint32_t m128_column_lenght = 3;
    static uX_const uint32_t m128_flt_ptr_lenght = 12;
    static uX_const uint32_t m128_flt_ptr_size = 48;
    static uX_const uint32_t m128_flt_size = 4;

}vecfloat4x3_t;

typedef class uX_EXAPI vecfloat4x4
{
public:
    vecfloat4x4()uX_default;
    ~vecfloat4x4()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecfloat4x4(const vecfloat4x4&)uX_default;
    vecfloat4x4& uX_callconv operator=(const vecfloat4x4&)uX_default;

    vecfloat4x4(vecfloat4x4&&)uX_default;
    vecfloat4x4& uX_callconv operator=(vecfloat4x4&&)uX_default;
#else
    vecfloat4x4(const vecfloat4x4& Invecfloat4x4);
    vecfloat4x4& uX_callconv operator=(const vecfloat4x4& Invecfloat4x4);

    vecfloat4x4(vecfloat4x4&& Invecfloat4x4);
    vecfloat4x4& uX_callconv operator=(vecfloat4x4&& Invecfloat4x4);
#endif
    /**
     * Constructor initialization from 4 type __m128.
     *
     * @param Inxmm_0 value to copy from.
     * @param Inxmm_1 value to copy from.
     * @param Inxmm_2 value to copy from.
     * @param Inxmm_3 value to copy from.
     */
    uX_constexpr vecfloat4x4(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2, const __m128 Inxmm_3) : m128_xmm_0(Inxmm_0), m128_xmm_1(Inxmm_1), 
                                                                                                                       m128_xmm_2(Inxmm_2), m128_xmm_3(Inxmm_3) {}

    /**
     * Constructor initialization from type __m128*.
     *
     * @param Inpxmm value to copy from.
     */
    uX_constexpr vecfloat4x4(uX_InReads(4) const __m128* Inpxmm) : m128_xmm{ Inpxmm[0], Inpxmm[1], Inpxmm[2], Inpxmm[3]} {}

    /**
     * Constructor initialization from 4x4 type floats.
     *
     * @param Infloat_X0 value to copy from.
     * @param Infloat_X1 value to copy from.
     * @param Infloat_X2 value to copy from.
     * @param Infloat_X3 value to copy from.
     * @param Infloat_Y0 value to copy from.
     * @param Infloat_Y1 value to copy from.
     * @param Infloat_Y2 value to copy from.
     * @param Infloat_Y3 value to copy from.
     * @param Infloat_Z0 value to copy from.
     * @param Infloat_Z1 value to copy from.
     * @param Infloat_Z2 value to copy from.
     * @param Infloat_Z3 value to copy from.
     * @param Infloat_W0 value to copy from.
     * @param Infloat_W1 value to copy from.
     * @param Infloat_W2 value to copy from.
     * @param Infloat_W3 value to copy from.
     */
    uX_explicit vecfloat4x4(float Infloat_X0, float Infloat_X1, float Infloat_X2, float Infloat_X3,
                            float Infloat_Y0, float Infloat_Y1, float Infloat_Y2, float Infloat_Y3,
                            float Infloat_Z0, float Infloat_Z1, float Infloat_Z2, float Infloat_Z3,
                            float Infloat_W0, float Infloat_W1, float Infloat_W2, float Infloat_W3);

    /**
     * Constructor initialization from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    uX_explicit vecfloat4x4(uX_InReads(16) const float* Inpfloat);

    /** Type cast operator to convert to __m128*. */
    operator __m128*() const;

    /** Type cast operator to convert to float*. */
    /*operator float*() const;*/

    /**
     * Assignment operator to convert from type __m128*.
     *
     * @param Inpxmm value to copy from.
     */
    vecfloat4x4& uX_callconv operator=(uX_InReads(4) const __m128* Inpxmm);

    /**
     * Assignment operator to convert from type float*.
     *
     * @param Inpfloat value to copy from.
     */
    vecfloat4x4& uX_callconv operator=(uX_InReads(16) const float* Inpfloat);

protected:

private:
    union
    {
        struct
        {
            __m128              m128_xmm_0;
            __m128              m128_xmm_1;
            __m128              m128_xmm_2;
            __m128              m128_xmm_3;
        };
        __m128                 m128_xmm[4];
        struct
        {
            float       _11, _12, _13, _14;
            float       _21, _22, _23, _24;
            float       _31, _32, _33, _34;
            float       _41, _42, _43, _44;
        };
        float                m128_fm[4][4];
        float                   m128_f[16];
    };

    static uX_const uint32_t m128_xmm_ptr_lenght = 4;
    static uX_const uint32_t m128_xmm_ptr_size = 64;
    static uX_const uint32_t m128_xmm_size = 16;
    static uX_const uint32_t m128_row_lenght = 4;
    static uX_const uint32_t m128_column_lenght = 4;
    static uX_const uint32_t m128_flt_ptr_lenght = 16;
    static uX_const uint32_t m128_flt_ptr_size = 64;
    static uX_const uint32_t m128_flt_size = 4;

}vecfloat4x4_t;

#ifdef uX_SSE2
typedef class uX_EXAPI vecdouble3x3
{
public:
    vecdouble3x3()uX_default;
    ~vecdouble3x3()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecdouble3x3(const vecdouble3x3&)uX_default;
    vecdouble3x3& uX_callconv operator=(const vecdouble3x3&)uX_default;

    vecdouble3x3(vecdouble3x3&&)uX_default;
    vecdouble3x3& uX_callconv operator=(vecdouble3x3&&)uX_default;
#else
    vecdouble3x3(const vecdouble3x3& Invecdouble3x3);
    vecdouble3x3& uX_callconv operator=(const vecdouble3x3& Invecdouble3x3);

    vecdouble3x3(vecdouble3x3&& Invecdouble3x3);
    vecdouble3x3& uX_callconv operator=(vecdouble3x3&& Invecdouble3x3);
#endif
    /**
     * Constructor initialization from 3 type __m128d.
     *
     * @param Inxmmd_0 value to copy from.
     * @param Inxmmd_1 value to copy from.
     * @param Inxmmd_2 value to copy from.
     * @param Inxmmd_3 value to copy from.
     * @param Inxmmd_4 value to copy from.
     * @param Inxmmd_5 value to copy from.
     */
    uX_constexpr vecdouble3x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, 
                              const __m128d Inxmmd_3, const __m128d Inxmmd_4, const __m128d Inxmmd_5) : m128_xmmd_0(Inxmmd_0), m128_xmmd_1(Inxmmd_1), m128_xmmd_2(Inxmmd_2), 
                                                                                                        m128_xmmd_3(Inxmmd_3), m128_xmmd_4(Inxmmd_4), m128_xmmd_5(Inxmmd_5) {}

    /**
     * Constructor initialization from type __m128d*.
     *
     * @param Inpxmmd value to copy from.
     */
    uX_constexpr vecdouble3x3(uX_InReads(6) const __m128d* Inpxmmd) : m128_xmmd{ Inpxmmd[0], Inpxmmd[1], Inpxmmd[2], Inpxmmd[3], Inpxmmd[4], Inpxmmd[5] } {}

    /**
     * Constructor initialization from 4x4 type doubles.
     *
     * @param Indouble_X0 value to copy from.
     * @param Indouble_X1 value to copy from.
     * @param Indouble_X2 value to copy from.
     * @param Indouble_Y0 value to copy from.
     * @param Indouble_Y1 value to copy from.
     * @param Indouble_Y2 value to copy from.
     * @param Indouble_Z0 value to copy from.
     * @param Indouble_Z1 value to copy from.
     * @param Indouble_Z2 value to copy from.
     */
    uX_explicit vecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
                             const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, 
                             const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2);

    /**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    uX_explicit vecdouble3x3(uX_InReads(9) const double* Inpdouble);

    /** Type cast operator to convert to __m128d*. */
    operator __m128d*() const;

    /** Type cast operator to convert to double*. */
    /*operator double*() const;*/

    /**
     * Assignment operator to convert from type __m128d*.
     *
     * @param Inpxmmd value to copy from.
     */
    vecdouble3x3& uX_callconv operator=(uX_InReads(6) const __m128d* Inpxmmd);

    /**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    vecdouble3x3& uX_callconv operator=(uX_InReads(9) const double* Inpdouble);

protected:

private:
    union
    {
        struct
        {
            __m128d         m128_xmmd_0;
            __m128d         m128_xmmd_1;
            __m128d         m128_xmmd_2;
            __m128d         m128_xmmd_3;
            __m128d         m128_xmmd_4;
            __m128d         m128_xmmd_5;
        };
        __m128d            m128_xmmd[6];
        struct
        {
            double        _11, _12, _13;
            double        _21, _22, _23;
            double        _31, _32, _33;
        };
        double            m128_dm[3][3];
        double                m128_d[9];
    };

    static uX_const uint32_t m128_xmmd_ptr_lenght = 6;
    static uX_const uint32_t m128_xmmd_ptr_size = 96;
    static uX_const uint32_t m128_xmmd_size = 16;
    static uX_const uint32_t m128_row_lenght = 3;
    static uX_const uint32_t m128_column_lenght = 3;
    static uX_const uint32_t m128_dbl_ptr_lenght = 9;
    static uX_const uint32_t m128_dbl_ptr_size = 72;
    static uX_const uint32_t m128_dbl_size = 8;

}vecdouble3x3_t;

typedef class uX_EXAPI vecdouble4x3
{
public:
    vecdouble4x3()uX_default;
    ~vecdouble4x3()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecdouble4x3(const vecdouble4x3&)uX_default;
    vecdouble4x3& uX_callconv operator=(const vecdouble4x3&)uX_default;

    vecdouble4x3(vecdouble4x3&&)uX_default;
    vecdouble4x3& uX_callconv operator=(vecdouble4x3&&)uX_default;
#else
    vecdouble4x3(const vecdouble4x3& Invecdouble4x3);
    vecdouble4x3& uX_callconv operator=(const vecdouble4x3& Invecdouble4x3);

    vecdouble4x3(vecdouble4x3&& Invecdouble4x3);
    vecdouble4x3& uX_callconv operator=(vecdouble4x3&& Invecdouble4x3);
#endif
    /**
     * Constructor initialization from 8 type __m128d.
     *
     * @param Inxmmd_0 value to copy from.
     * @param Inxmmd_1 value to copy from.
     * @param Inxmmd_2 value to copy from.
     * @param Inxmmd_3 value to copy from.
     * @param Inxmmd_4 value to copy from.
     * @param Inxmmd_5 value to copy from.
     * @param Inxmmd_6 value to copy from.
     * @param Inxmmd_7 value to copy from.
     */
    uX_constexpr vecdouble4x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
                              const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7) : m128_xmmd_0(Inxmmd_0), m128_xmmd_1(Inxmmd_1), 
                                                                                                                                m128_xmmd_2(Inxmmd_2), m128_xmmd_3(Inxmmd_3), 
                                                                                                                                m128_xmmd_4(Inxmmd_4), m128_xmmd_5(Inxmmd_5), 
                                                                                                                                m128_xmmd_6(Inxmmd_6), m128_xmmd_7(Inxmmd_7) {}

    /**
     * Constructor initialization from type __m128d*.
     *
     * @param Inpxmmd value to copy from.
     */
    uX_constexpr vecdouble4x3(uX_InReads(8) const __m128d* Inpxmmd) : m128_xmmd{ Inpxmmd[0], Inpxmmd[1], Inpxmmd[2], Inpxmmd[3], Inpxmmd[4], Inpxmmd[5], Inpxmmd[6], Inpxmmd[7] } {}

    /**
     * Constructor initialization from 4x4 type doubles.
     *
     * @param Indouble_X0 value to copy from.
     * @param Indouble_X1 value to copy from.
     * @param Indouble_X2 value to copy from.
     * @param Indouble_Y0 value to copy from.
     * @param Indouble_Y1 value to copy from.
     * @param Indouble_Y2 value to copy from.
     * @param Indouble_Z0 value to copy from.
     * @param Indouble_Z1 value to copy from.
     * @param Indouble_Z2 value to copy from.
     * @param Indouble_W0 value to copy from.
     * @param Indouble_W1 value to copy from.
     * @param Indouble_W2 value to copy from.
     */
    uX_explicit vecdouble4x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
                             const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, 
                             const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, 
                             const double Indouble_W0, const double Indouble_W1, const double Indouble_W2);

    /**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    uX_explicit vecdouble4x3(uX_InReads(12) const double* Inpdouble);

    /** Type cast operator to convert to __m128d*. */
    operator __m128d*() const;

    /** Type cast operator to convert to double*. */
    /*operator double*() const;*/

    /**
     * Assignment operator to convert from type __m128d*.
     *
     * @param Inpxmmd value to copy from.
     */
    vecdouble4x3& uX_callconv operator=(uX_InReads(8) const __m128d* Inpxmmd);

    /**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    vecdouble4x3& uX_callconv operator=(uX_InReads(12) const double* Inpdouble);

protected:

private:
    union
    {
        struct
        {
            __m128d         m128_xmmd_0;
            __m128d         m128_xmmd_1;
            __m128d         m128_xmmd_2;
            __m128d         m128_xmmd_3;
            __m128d         m128_xmmd_4;
            __m128d         m128_xmmd_5;
            __m128d         m128_xmmd_6;
            __m128d         m128_xmmd_7;
        };
        __m128d            m128_xmmd[8];
        struct
        {
            double        _11, _12, _13;
            double        _21, _22, _23;
            double        _31, _32, _33;
            double        _41, _42, _43;
        };
        double            m128_dm[4][3];
        double               m128_d[12];
    };

    static uX_const uint32_t m128_xmmd_ptr_lenght = 8;
    static uX_const uint32_t m128_xmmd_ptr_size = 128;
    static uX_const uint32_t m128_xmmd_size = 16;
    static uX_const uint32_t m128_row_lenght = 4;
    static uX_const uint32_t m128_column_lenght = 3;
    static uX_const uint32_t m128_dbl_ptr_lenght = 12;
    static uX_const uint32_t m128_dbl_ptr_size = 96;
    static uX_const uint32_t m128_dbl_size = 8;

}vecdouble4x3_t;

typedef class uX_EXAPI vecdouble4x4
{
public:
    vecdouble4x4()uX_default;
    ~vecdouble4x4()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
    vecdouble4x4(const vecdouble4x4&)uX_default;
    vecdouble4x4& uX_callconv operator=(const vecdouble4x4&)uX_default;

    vecdouble4x4(vecdouble4x4&&)uX_default;
    vecdouble4x4& uX_callconv operator=(vecdouble4x4&&)uX_default;
#else
    vecdouble4x4(const vecdouble4x4& Invecdouble4x4);
    vecdouble4x4& uX_callconv operator=(const vecdouble4x4& Invecdouble4x4);

    vecdouble4x4(vecdouble4x4&& Invecdouble4x4);
    vecdouble4x4& uX_callconv operator=(vecdouble4x4&& Invecdouble4x4);
#endif
    /**
     * Constructor initialization from 8 type __m128d.
     *
     * @param Inxmmd_0 value to copy from.
     * @param Inxmmd_1 value to copy from.
     * @param Inxmmd_2 value to copy from.
     * @param Inxmmd_3 value to copy from.
     * @param Inxmmd_4 value to copy from.
     * @param Inxmmd_5 value to copy from.
     * @param Inxmmd_6 value to copy from.
     * @param Inxmmd_7 value to copy from.
     */
    vecdouble4x4(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
                 const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7);

    /**
     * Constructor initialization from type __m128d*.
     *
     * @param Inpxmmd __m128d pointer value to copy from.
     * @param idxbegin pointer start index.
     * @param idxend pointer end index.
     * @warning No internall checks. Inpxmmd assumes 1*1 __m128d in the max range off 1*8.
     */
    uX_explicit vecdouble4x4(const __m128d* Inpxmmd, size_t idxbegin = 0, size_t idxend = m128_xmmd_ptr_lenght);

    /**
     * Constructor initialization from 4x4 type doubles.
     *
     * @param Indouble_X0 value to copy from.
     * @param Indouble_X1 value to copy from.
     * @param Indouble_X2 value to copy from.
     * @param Indouble_X3 value to copy from.
     * @param Indouble_Y0 value to copy from.
     * @param Indouble_Y1 value to copy from.
     * @param Indouble_Y2 value to copy from.
     * @param Indouble_Y3 value to copy from.
     * @param Indouble_Z0 value to copy from.
     * @param Indouble_Z1 value to copy from.
     * @param Indouble_Z2 value to copy from.
     * @param Indouble_Z3 value to copy from.
     * @param Indouble_W0 value to copy from.
     * @param Indouble_W1 value to copy from.
     * @param Indouble_W2 value to copy from.
     * @param Indouble_W3 value to copy from.
     */
    vecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
                 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
                 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
                 const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3);

    /**
     * Constructor initialization from type double*.
     *
     * @param Inpdouble double pointer value to copy from.
     * @param idxbegin pointer start index.
     * @param idxend pointer end index.
     * @warning No internall checks. Inpdouble assumes multiples off double in power off 2 in the max range off 8*2.
     */
    uX_explicit vecdouble4x4(const double* Inpdouble, size_t idxbegin = 0, size_t idxend = m128_xmmd_ptr_lenght);

    /** Type cast operator to convert to __m128d*. */
    operator __m128d*() const;

    /** Type cast operator to convert to double*. */
    /*operator double*() const;*/

    /**
     * Assignment operator to convert from type __m128d*.
     *
     * @param Inpxmmd value to copy from.
     */
    vecdouble4x4& uX_callconv operator=(uX_InReads(8) const __m128d* Inpxmmd);

    /**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    vecdouble4x4& uX_callconv operator=(uX_InReads(16) const double* Inpdouble);

protected:

private:
    union
    {
        struct
        {
            __m128d             m128_xmmd_0;
            __m128d             m128_xmmd_1;
            __m128d             m128_xmmd_2;
            __m128d             m128_xmmd_3;
            __m128d             m128_xmmd_4;
            __m128d             m128_xmmd_5;
            __m128d             m128_xmmd_6;
            __m128d             m128_xmmd_7;
        };
        __m128d                m128_xmmd[8];
        struct
        {
            double       _11, _12, _13, _14;
            double       _21, _22, _23, _24;
            double       _31, _32, _33, _34;
            double       _41, _42, _43, _44;
        };
        double                m128_dm[4][4];
        double                   m128_d[16];
    };

    static uX_const uint32_t m128_xmmd_ptr_lenght = 8;
    static uX_const uint32_t m128_xmmd_ptr_size = 128;
    static uX_const uint32_t m128_xmmd_size = 16;
    static uX_const uint32_t m128_xmmd_elements = 2;
    static uX_const uint32_t m128_row_lenght = 4;
    static uX_const uint32_t m128_column_lenght = 4;
    static uX_const uint32_t m128_dbl_ptr_lenght = 16;
    static uX_const uint32_t m128_dbl_ptr_size = 128;
    static uX_const uint32_t m128_dbl_size = 8;

}vecdouble4x4_t;

#endif // uX_SSE2

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_SSE_MATH_H
