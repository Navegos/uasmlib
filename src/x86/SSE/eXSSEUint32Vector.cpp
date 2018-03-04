
#include "eXSSEUint32Vector.h"
#include "eXSSEConstVector.h"
#include "eXSSEInt8Vector.h"
#include "eXSSEInt16Vector.h"
#include "eXSSEInt32Vector.h"
#include "eXSSEInt64Vector.h"
#include "eXSSEUint8Vector.h"
#include "eXSSEUint16Vector.h"
#include "eXSSEUint64Vector.h"
#include "eXConstants.h"
#include "eXSSEConstants.h"
#include "eXSSEMisc.h"

eXSSEUint32Vector::eXSSEUint32Vector(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
    return *this;
}

eXSSEUint32Vector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEUint32Vector::eXSSEUint32Vector(const eXSSEUint32ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const eXSSEUint32ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
    return *this;
}

eXSSEUint32Vector::eXSSEUint32Vector(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint32Vector::eXSSEUint32Vector(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint32Vector::eXSSEUint32Vector(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint32Vector::eXSSEUint32Vector(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint32Vector::eXSSEUint32Vector(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint32Vector::eXSSEUint32Vector(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint32Vector::eXSSEUint32Vector(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEUint32Vector::eXSSEUint32Vector(eXuint32_t InX, eXuint32_t InY, eXuint32_t InZ, eXuint32_t InW)
{
    __Xmmi = _mm_setr_epi32(InX, InY, InZ, InW);
}

eXSSEUint32Vector::eXSSEUint32Vector(eXuint32_t Ini)
{
    __Xmmi = _mm_set1_epi32(Ini);
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const eXuint32_t Ini)
{
    __Xmmi = _mm_set1_epi32(Ini);
    return *this;
}

eXSSEUint32Vector::eXSSEUint32Vector(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::operator=(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::Loadu(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::Load(const void* InPtr)
{
    __Xmmi = _mm_load_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(void) eXSSEUint32Vector::Storeu(void* OutPtr) const
{
    eXSSEIntVector::Storeu(OutPtr);
}

eX_VECCALL(void) eXSSEUint32Vector::Store(void* OutPtr) const
{
    eXSSEIntVector::Store(OutPtr);
}

// Partial load. Load n elements and set the rest to 0
eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::Load_partial(int n, const void* InPtr)
{
    switch (n)
    {
        case 0:
            *this = eXSSEuint32_0;  break;
        case 1:
            __Xmmi = _mm_cvtsi32_si128(*reinterpret_cast<const eXuint32_t*>(InPtr));  break;
        case 2:
            // intrinsic for movq is missing!
            __Xmmi = _mm_setr_epi32(reinterpret_cast<const eXuint32_t*>(InPtr)[0], reinterpret_cast<const eXuint32_t*>(InPtr)[1], 0, 0);  break;
        case 3:
            __Xmmi = _mm_setr_epi32(reinterpret_cast<const eXuint32_t*>(InPtr)[0], reinterpret_cast<const eXuint32_t*>(InPtr)[1], reinterpret_cast<const eXuint32_t*>(InPtr)[2], 0);  break;
        case 4:
            Loadu(InPtr);  break;
        default:
            break;
    }
    return *this;
}

// Partial store. Store n elements
eX_VECCALL(void) eXSSEUint32Vector::Store_partial(int n, void* OutPtr) const
{
    union
    {
        eXuint32_t i[4];
        eXuint64_t q[2];
    } u;
    switch (n)
    {
        case 1:
            *reinterpret_cast<eXuint32_t*>(OutPtr) = _mm_cvtsi128_si32(__Xmmi);  break;
        case 2:
                // intrinsic for movq is missing!
                Storeu(u.i);
                *reinterpret_cast<eXuint64_t*>(OutPtr) = u.q[0];  break;
        case 3:
                Storeu(u.i);
                *reinterpret_cast<eXuint64_t*>(OutPtr) = u.q[0];
                (reinterpret_cast<eXuint32_t*>(OutPtr))[2] = u.i[2];  break;
       case 4:
                Storeu(OutPtr);  break;
            default:
                break;
    }
}

eX_VECCALL(eXSSEUint32Vector&) eXSSEUint32Vector::Cutoff(int n)
{
    *this = eXSSEUint8Vector(__Xmmi).Cutoff(n * 4);
    return *this;
}

eX_VECCALL(const eXSSEUint32Vector&) eXSSEUint32Vector::Insert(eXuint32_t index, eXuint32_t Invalue)
{
    if (eX_has_SSE41())
    {
        __Xmmi = _mm_insert_epi32(__Xmmi, Invalue, index & 3);
    }
    else               // SSE2
    {
        static const eXint32_t maskl[8] = { 0,0,0,0,-1,0,0,0 };
        __m128i broad = _mm_set1_epi32(Invalue);  // broadcast value into all elements
        __m128i mask = _mm_loadu_si128(reinterpret_cast<const __m128i*>(maskl + 4 - (index & 3))); // mask with FFFFFFFF at index position
        __Xmmi = Select(mask, broad, __Xmmi);
    }
    return *this;
}

eX_VECCALL(eXuint32_t) eXSSEUint32Vector::Extract(eXuint32_t index) const
{
    if (eX_has_SSE41())
    {
        return _mm_extract_epi32(__Xmmi, index & 3);
    }
    else               // SSE2
    {
        eXuint32_t x[4];
        Storeu(x);
        return x[index & 3];
    }
}

eX_VECCALL(eXuint32_t*) eXSSEUint32Vector::Get_All() const
{
    eXuint32_t x[4];
    Storeu(x);
    return x;
}

eX_VECCALL(eXuint32_t) eXSSEUint32Vector::Get_X() const
{
    return Extract(0);
}

eX_VECCALL(eXuint32_t) eXSSEUint32Vector::Get_Y() const
{
    return Extract(1);
}

eX_VECCALL(eXuint32_t) eXSSEUint32Vector::Get_Z() const
{
    return Extract(2);
}

eX_VECCALL(eXuint32_t) eXSSEUint32Vector::Get_W() const
{
    return Extract(3);
}

eX_VECCALL(const eXSSEUint32Vector&) eXSSEUint32Vector::Set_All(eXuint32_t InX, eXuint32_t InY, eXuint32_t InZ, eXuint32_t InW)
{
    __Xmmi = _mm_setr_epi32(InX, InY, InZ, InW);
    return *this;
}

eX_VECCALL(const eXSSEUint32Vector&) eXSSEUint32Vector::Set_X(eXuint32_t Invalue)
{
    return Insert(0, Invalue);
}

eX_VECCALL(const eXSSEUint32Vector&) eXSSEUint32Vector::Set_Y(eXuint32_t Invalue)
{
    return Insert(1, Invalue);
}

eX_VECCALL(const eXSSEUint32Vector&) eXSSEUint32Vector::Set_Z(eXuint32_t Invalue)
{
    return Insert(2, Invalue);
}

eX_VECCALL(const eXSSEUint32Vector&) eXSSEUint32Vector::Set_W(eXuint32_t Invalue)
{
    return Insert(3, Invalue);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Convert_from_ps(const __m128& InXmm, eXuint32_t MulExponent)
{
	eX_ASSERT(MulExponent < 32);
	__m128 vResult = _mm_set_ps1(static_cast<float>(1U << (MulExponent & 31)));
	vResult = _mm_mul_ps(vResult, InXmm);
	// Clamp to >=0
	vResult = _mm_max_ps(vResult, eXSSEfloat_0);
	// Any numbers that are too big, set to 0xFFFFFFFFU
	__m128 vOverflow = _mm_cmpgt_ps(vResult, eXSSEfloat_FixmaxU32);
	__m128 vValue = eXSSEfloat_FixUnsigned;
	// Too large for a signed integer?
	__m128 vMask = _mm_cmpge_ps(vResult, vValue);
	// Zero for number's lower than 0x80000000, 32768.0f*65536.0f otherwise
	vValue = _mm_and_ps(vValue, vMask);
	// Perform fixup only on numbers too large (Keeps low bit precision)
	vResult = _mm_sub_ps(vResult, vValue);
	__m128i vResulti = _mm_cvttps_epi32(vResult);
	// Convert from signed to unsigned only if greater than 0x80000000
	vMask = _mm_and_ps(vMask, eXSSEuint32_Fneg0);
	vResult = _mm_xor_ps(_mm_castsi128_ps(vResulti), vMask);
	// On those that are too large, set to 0xFFFFFFFF
	vResult = _mm_or_ps(vResult, vOverflow);
	vResulti = _mm_castps_si128(vResult);
	return vResulti;
}

/*
eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Convert_from_pd(const __m128d& InXmmd, eXuint32_t MulExponent)
{
	eX_ASSERT(MulExponent < 64);
	__m128d vResult = _mm_set1_pd(static_cast<float>(1U << (MulExponent & 63)));
	vResult = _mm_mul_pd(vResult, InXmmd);
	// Clamp to >=0
	vResult = _mm_max_pd(vResult, eXSSEdouble_0);
	// Any numbers that are too big, set to 0xFFFFFFFFU
	__m128d vOverflow = _mm_cmpgt_pd(vResult, eXSSEdouble_FixmaxU64);
	__m128d vValue = eXSSEdouble_FixUnsigned64;
	// Too large for a signed integer?
	__m128d vMask = _mm_cmpge_pd(vResult, vValue);
	// Zero for number's lower than 0x80000000, 32768.0f*65536.0f otherwise
	vValue = _mm_and_pd(vValue, vMask);
	// Perform fixup only on numbers too large (Keeps low bit precision)
	vResult = _mm_sub_pd(vResult, vValue);
	__m128i vResulti = _mm_cvttpd_epi32(vResult);
	// Convert from signed to unsigned only if greater than 0x80000000
	vMask = _mm_and_pd(vMask, eXSSEuint64_Dneg0);
	vResult = _mm_xor_pd(_mm_castsi128_pd(vResulti), vMask);
	// On those that are too large, set to 0xFFFFFFFF
	vResult = _mm_or_pd(vResult, vOverflow);
	vResulti = _mm_castpd_si128(vResult);
	return vResulti;
}*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::And(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEIntVector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Or(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEIntVector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Xor(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEIntVector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Not(const eXSSEUint32Vector& InXmmi_a)
{
    return eXSSEIntVector::Not(InXmmi_a);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::AndNot(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEIntVector::AndNot(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Horizontal_And(const eXSSEUint32Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_And(InXmmi_a);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Horizontal_Or(const eXSSEUint32Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_Or(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bAnd(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEIntVector::bAnd(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bOr(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEIntVector::bOr(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bHorizontal_And(const eXSSEUint32Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_And(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bHorizontal_Or(const eXSSEUint32Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_Or(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Logical_And(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return InXmmi_a & InXmmi_b;
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Logical_Or(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return InXmmi_a | InXmmi_b;
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Logical_Not(const eXSSEUint32Vector& InXmmi_a)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comeq_epu32(InXmmi_a, _mm_setzero_si128());
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80000000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(_mm_setzero_si128(), signbit);
        return _mm_cmpeq_epi32(a1, b1);                         // signed compare
    }
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bLogical_And(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(InXmmi_a & InXmmi_b) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bLogical_Or(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return (_mm_movemask_epi8(InXmmi_a | InXmmi_b) != 0);
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bLogical_Not(const eXSSEUint32Vector& InXmmi_a)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comeq_epu32(InXmmi_a, _mm_setzero_si128())) == 0xFFFF) != 0);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80000000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(_mm_setzero_si128(), signbit);
        return  ((_mm_movemask_epi8(_mm_cmpeq_epi32(a1, b1)) == 0xFFFF) != 0);
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         General functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <int PermuteX, int PermuteY, int PermuteZ, int PermuteW>
eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::permute_template(const eXSSEUint32Vector& InXmmi_a)
{
	return eXSSEInt32Vector::permute_template<PermuteX, PermuteY, PermuteZ, PermuteW>(InXmmi_a);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Permute(const eXSSEUint32Vector& InXmmi_a, int PermuteX, int PermuteY, int PermuteZ, int PermuteW)
{
	return eXSSEInt32Vector::Permute(InXmmi_a, PermuteX, PermuteY, PermuteZ, PermuteW);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Add(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return _mm_add_epi32(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Sub(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return _mm_sub_epi32(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Mul(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_SSE41())
    {
        return _mm_mullo_epi32(InXmmi_a, InXmmi_b);
    }
    else               // SSE2
    {
        __m128i a13 = _mm_shuffle_epi32(InXmmi_a, 0xF5);          // (-,a3,-,a1)
        __m128i b13 = _mm_shuffle_epi32(InXmmi_b, 0xF5);          // (-,b3,-,b1)
        __m128i prod02 = _mm_mul_epu32(InXmmi_a, InXmmi_b);                 // (-,a2*b2,-,a0*b0)
        __m128i prod13 = _mm_mul_epu32(a13, b13);             // (-,a3*b3,-,a1*b1)
        __m128i prod01 = _mm_unpacklo_epi32(prod02, prod13);   // (-,-,a1*b1,a0*b0) 
        __m128i prod23 = _mm_unpackhi_epi32(prod02, prod13);   // (-,-,a3*b3,a2*b2) 
        return           _mm_unpacklo_epi64(prod01, prod23);   // (ab3,ab2,ab1,ab0)
    }
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Max(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_SSE41())  // AMD XOP
    {
        return _mm_max_epu32(InXmmi_a, InXmmi_b);
    }
    else
    {
        return Select(InXmmi_a > InXmmi_b, InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Min(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_SSE41())  // AMD XOP
    {
        return _mm_min_epu32(InXmmi_a, InXmmi_b);
    }
    else
    {
        return Select(InXmmi_a < InXmmi_b, InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Add_Sat(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    eXSSEUint32Vector sum = InXmmi_a + InXmmi_b;
    eXSSEUint32Vector aorb = InXmmi_a | InXmmi_b;
    eXSSEUint32Vector overflow = sum < aorb;                  // overflow if a + b < (a | b)
    return sum | overflow;                        // return 0xFFFFFFFF if overflow
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Sub_Sat(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    eXSSEUint32Vector diff = InXmmi_a - InXmmi_b;
    eXSSEUint32Vector underflow = diff > InXmmi_a;                   // underflow if a - b > a
    return _mm_andnot_si128(underflow, diff);               // return 0 if underflow
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::If_Add(const eXSSEUint32Vector& InXmmi_f, const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return InXmmi_a + InXmmi_f & InXmmi_b;
}

eX_VECCALL(eXuint32_t) eXSSEUint32Vector::Horizontal_Add(const eXSSEUint32Vector& InXmmi_a)
{
    if (eX_has_XOP())  // AMD XOP
    {
        __m128i sum1 = _mm_haddq_epi32(InXmmi_a);
        __m128i sum2 = _mm_shuffle_epi32(sum1, 0x0E);          // high element
        __m128i sum3 = _mm_add_epi32(sum1, sum2);              // sum
        return          _mm_cvtsi128_si32(sum3);               // truncate to 32 bits
    }
    else if (eX_has_SSE41())  // SSE4.1
    {
        __m128i sum1 = _mm_hadd_epi32(InXmmi_a, InXmmi_a);                   // horizontally add 4 elements in 2 steps
        __m128i sum2 = _mm_hadd_epi32(sum1, sum1);
        return          _mm_cvtsi128_si32(sum2);               // 32 bit sum
    }
    else // SSE2
    {
        __m128i sum1 = _mm_shuffle_epi32(InXmmi_a, 0x0E);             // 2 high elements
        __m128i sum2 = _mm_add_epi32(InXmmi_a, sum1);                 // 2 sums
        __m128i sum3 = _mm_shuffle_epi32(sum2, 0x01);          // 1 high element
        __m128i sum4 = _mm_add_epi32(sum2, sum3);              // 2 sums
        return          _mm_cvtsi128_si32(sum4);               // 32 bit sum
    }
}

eX_VECCALL(eXuint64_t) eXSSEUint32Vector::Horizontal_Add_x(const eXSSEUint32Vector& InXmmi_a)
{
    if (eX_has_XOP())  // AMD XOP
    {
        __m128i sum1 = _mm_haddq_epu32(InXmmi_a);

        __m128i sum2 = _mm_unpackhi_epi64(sum1, sum1);         // high qword
        __m128i sum3 = _mm_add_epi64(sum1, sum2);              // add
#if defined(eX_X64)
        return          _mm_cvtsi128_si64(sum3);               // 64 bit mode
#else
        union
        {
            __m128i x;  // silly definition of _mm_storel_epi64 requires __m128i
            eXuint64_t i;
        } u;
        _mm_storel_epi64(&u.x, sum3);
        return u.i;
#endif
    }
    else // SSE2
    {
        __m128i zero = _mm_setzero_si128();                   // 0
        __m128i a01 = _mm_unpacklo_epi32(InXmmi_a, zero);            // zero-extended a0, a1
        __m128i a23 = _mm_unpackhi_epi32(InXmmi_a, zero);            // zero-extended a2, a3
        __m128i sum1 = _mm_add_epi64(a01, a23);                // add

        __m128i sum2 = _mm_unpackhi_epi64(sum1, sum1);         // high qword
        __m128i sum3 = _mm_add_epi64(sum1, sum2);              // add
#if defined(eX_X64)
        return          _mm_cvtsi128_si64(sum3);               // 64 bit mode
#else
        union
        {
            __m128i x;  // silly definition of _mm_storel_epi64 requires __m128i
            eXuint64_t i;
        } u;
        _mm_storel_epi64(&u.x, sum3);
        return u.i;
#endif
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Slli(const eXSSEUint32Vector& InXmmi_a, int InCount)
{
    return _mm_slli_epi32(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Sll(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_Count)
{
    return _mm_sll_epi32(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Srli(const eXSSEUint32Vector& InXmmi_a, int InCount)
{
    return _mm_srli_epi32(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Srl(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_Count)
{
    return _mm_srl_epi32(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comeq_epu32(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80000000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        return _mm_cmpeq_epi32(a1, b1);                         // signed compare
    }
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Lessthan(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comlt_epu32(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80000000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        return _mm_cmplt_epi32(a1, b1);                         // signed compare
    }
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Greaterthan(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comgt_epu32(InXmmi_a, InXmmi_b);
    }
    else
    {
        __m128i signbit = _mm_set1_epi32(0x80000000);
        __m128i a1 = _mm_xor_si128(InXmmi_a, signbit);
        __m128i b1 = _mm_xor_si128(InXmmi_b, signbit);
        return _mm_cmpgt_epi32(a1, b1);                         // signed compare
    }
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Lessthan_or_equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comle_epu32(InXmmi_a, InXmmi_b);
    }
    else if (eX_has_SSE41())  // SSE4.1
    {
        return _mm_cmpeq_epi32(InXmmi_a, _mm_min_epu32(InXmmi_a, InXmmi_b));         // min(a,b), unsigned             // a == max(a,b)
    }
    else // SSE2
    {
        return Lessthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Greaterthan_or_equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comge_epu32(InXmmi_a, InXmmi_b);
    }
    else if (eX_has_SSE41())  // SSE4.1
    {
        return _mm_cmpeq_epi32(InXmmi_a, _mm_max_epu32(InXmmi_a, InXmmi_b));            // max(a,b), unsigned          // a == max(a,b)
    }
    else // SSE2
    {
        return Greaterthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Not_Equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comneq_epu32(InXmmi_a, InXmmi_b);
    }
    else  // SSE2
    {
        return Not(Equal(InXmmi_a, InXmmi_b));
    }
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Not_Lessthan(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return Not(Lessthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Not_Lessthan_or_equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Not_Greaterthan(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return Not(Greaterthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEUint32Vector) eXSSEUint32Vector::Not_Greaterthan_or_equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bEqual(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comeq_epu32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bLessthan(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comlt_epu32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bGreaterthan(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comgt_epu32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bLessthan_or_equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comle_epu32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bGreaterthan_or_equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comge_epu32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bNot_Equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comneq_epu32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else  // SSE2
    {
        return ((_mm_movemask_epi8(Not_Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bNot_Lessthan(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return bGreaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bNot_Lessthan_or_equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return bGreaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bNot_Greaterthan(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return bLessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEUint32Vector::bNot_Greaterthan_or_equal(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return bLessthan(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector) operator&(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) operator|(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) operator^(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) operator~(const eXSSEUint32Vector& InXmmi_a)
{
    return eXSSEUint32Vector::Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector&) operator&=(eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a & InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint32Vector&) operator|=(eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a | InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint32Vector&) operator^=(eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a ^ InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXbool_t) operator&&(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::bLogical_And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator||(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::bLogical_Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator!(const eXSSEUint32Vector& InXmmi_a)
{
    return  eXSSEUint32Vector::bLogical_Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector) operator+(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Add(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) operator-(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Sub(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) operator*(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Mul(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                  Arithmetic assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector&) operator+=(eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a + InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint32Vector&) operator-=(eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    InXmmi_a= InXmmi_a - InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint32Vector&) operator*=(eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a * InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Prefix operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector&) operator++(eXSSEUint32Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a + eXSSEuint32_1;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint32Vector&) operator--(eXSSEUint32Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a - eXSSEuint32_1;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Postfix operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector) operator++(eXSSEUint32Vector& InXmmi_a, int)
{
    eXSSEUint32Vector tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a + eXSSEuint32_1;
    return tmpXmmi_a;
}

eX_VECCALL(eXSSEUint32Vector) operator--(eXSSEUint32Vector& InXmmi_a, int)
{
    eXSSEUint32Vector tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a - eXSSEuint32_1;
    return tmpXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector) operator<<(const eXSSEUint32Vector& InXmmi_a, int InCount)
{
    return eXSSEUint32Vector::Slli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint32Vector) operator<<(const eXSSEUint32Vector& InXmmi_a, eXSSEUint32Vector& InXmmi_Count)
{
    return eXSSEUint32Vector::Sll(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEUint32Vector) operator>>(const eXSSEUint32Vector& InXmmi_a, int InCount)
{
    return eXSSEUint32Vector::Srli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEUint32Vector) operator>>(const eXSSEUint32Vector& InXmmi_a, eXSSEUint32Vector& InXmmi_Count)
{
    return eXSSEUint32Vector::Srl(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector&) operator<<=(eXSSEUint32Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a << InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint32Vector&) operator<<=(eXSSEUint32Vector& InXmmi_a, eXSSEUint32Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a << InXmmi_Count;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint32Vector&) operator>>=(eXSSEUint32Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a >> InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEUint32Vector&) operator>>=(eXSSEUint32Vector& InXmmi_a, eXSSEUint32Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a >> InXmmi_Count;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEUint32Vector) operator==(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) operator<(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) operator<=(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Lessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) operator>(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) operator>=(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Greaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEUint32Vector) operator!=(const eXSSEUint32Vector& InXmmi_a, const eXSSEUint32Vector& InXmmi_b)
{
    return eXSSEUint32Vector::Not_Equal(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Index operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXuint32_t) eXSSEUint32Vector::operator[](uint32_t index) const
{
    return Extract(index);
}
