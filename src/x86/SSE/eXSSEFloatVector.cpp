
#include "eXSSEFloatVector.h"
#include "eXSSEConstVector.h"
#include "eXSSEInt8Vector.h"
#include "eXSSEInt16Vector.h"
#include "eXSSEInt32Vector.h"
#include "eXSSEInt64Vector.h"
#include "eXSSEUint8Vector.h"
#include "eXSSEUint16Vector.h"
#include "eXSSEUint32Vector.h"
#include "eXSSEUint64Vector.h"
#include "eXSSEDoubleVector.h"
#include "eXConstants.h"
#include "eXSSEConstants.h"
#include "eXSSEMisc.h"

eXSSEFloatVector::eXSSEFloatVector(const __m128& InXmm)
{
    __Xmm = InXmm;
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const __m128& InXmm)
{
    __Xmm = InXmm;
    return *this;
}

eXSSEFloatVector::operator __m128() const
{
    return __Xmm;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEFloatConstVector& InXmm)
{
	__Xmm = InXmm.__Xmm;
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEFloatConstVector& InXmm)
{
	__Xmm = InXmm.__Xmm;
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const __m128i& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const __m128i& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEInt32ConstVector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEInt32ConstVector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEUint32ConstVector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEUint32ConstVector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEInt8Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEInt8Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEInt16Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEInt16Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEInt32Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEInt32Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEInt64Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEInt64Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEUint8Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEUint8Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEUint16Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEUint16Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEUint32Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEUint32Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(const eXSSEUint64Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXSSEUint64Vector& InXmmi)
{
	__Xmm = _mm_castsi128_ps(InXmmi);
	return *this;
}

eXSSEFloatVector::eXSSEFloatVector(eXfloat_t InX, eXfloat_t InY, eXfloat_t InZ, eXfloat_t InW)
{
    __Xmm = _mm_setr_ps(InX, InY, InZ, InW);
}

eXSSEFloatVector::eXSSEFloatVector(eXfloat_t Ini)
{
    __Xmm = _mm_set1_ps(Ini);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXfloat_t Ini)
{
    __Xmm = _mm_set1_ps(Ini);
    return *this;
}

/**
* Constructor to broadcast the same int value into all elements.
*
* @param Ini int value to copy from.
*/
/*
eXSSEFloatVector::eXSSEFloatVector(int Ini)
{
	__Xmm = eXSSEFloatVector(eXSSEInt32Vector(Ini));
}*/

/**
* Assignment operator to convert from type int.
*
* @param Ini int Value to copy from.
*/
/*
eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const int Ini)
{
	__Xmm = eXSSEFloatVector(eXSSEInt32Vector(Ini));
	return *this;
}*/

eXSSEFloatVector::eXSSEFloatVector(const eXfloat_t* InPtr)
{
    __Xmm = _mm_loadu_ps(InPtr);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::operator=(const eXfloat_t* InPtr)
{
    __Xmm = _mm_loadu_ps(InPtr);
    return *this;
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::Loadu(const eXfloat_t* InPtr)
{
    __Xmm = _mm_loadu_ps(InPtr);
    return *this;
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::Load(const eXfloat_t* InPtr)
{
    __Xmm = _mm_load_ps(InPtr);
    return *this;
}

eX_VECCALL(void) eXSSEFloatVector::Storeu(eXfloat_t* OutPtr) const
{
    _mm_storeu_ps(OutPtr, __Xmm);
}

eX_VECCALL(void) eXSSEFloatVector::Store(eXfloat_t* OutPtr) const
{
    _mm_store_ps(OutPtr, __Xmm);
}

eX_VECCALL(void) eXSSEFloatVector::Stream(eXfloat_t* OutPtr) const
{
    _mm_stream_ps(OutPtr, __Xmm);
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::SetZero()
{
    __Xmm = _mm_setzero_ps();
    return *this;
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::Set_si128(const __m128i& InXmmi)
{
    __Xmm = _mm_castsi128_ps(InXmmi);
    return *this;
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::Set_pd(const __m128d& InXmmd)
{
    __Xmm = _mm_castpd_ps(InXmmd);
    return *this;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Cast_si128(const __m128i& InXmmi)
{
    return _mm_castsi128_ps(InXmmi);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Cast_pd(const __m128d& InXmmd)
{
    return _mm_castpd_ps(InXmmd);
}

// Partial load. Load n elements and set the rest to 0
eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::Load_partial(int n, const eXfloat_t* InPtr)
{
    __m128 t1, t2;
    switch (n)
    {
        case 1:
            __Xmm = _mm_load_ss(InPtr); break;
        case 2:
            __Xmm = _mm_castpd_ps(_mm_load_sd(reinterpret_cast<const eXdouble_t*>(InPtr))); break;
        case 3:
            t1 = _mm_castpd_ps(_mm_load_sd(reinterpret_cast<const eXdouble_t*>(InPtr)));
            t2 = _mm_load_ss(InPtr + 2);
            __Xmm = _mm_movelh_ps(t1, t2); break;
        case 4:
            Loadu(InPtr); break;
        default:
            __Xmm = _mm_setzero_ps();
    }
    return *this;
}

// Partial store. Store n elements
eX_VECCALL(void) eXSSEFloatVector::Store_partial(int n, eXfloat_t* OutPtr) const
{
    __m128 t1;
    switch (n)
    {
        case 1:
            _mm_store_ss(OutPtr, __Xmm); break;
        case 2:
            _mm_store_sd(reinterpret_cast<eXdouble_t*>(OutPtr), _mm_castps_pd(__Xmm)); break;
        case 3:
            _mm_store_sd(reinterpret_cast<eXdouble_t*>(OutPtr), _mm_castps_pd(__Xmm));
            t1 = _mm_movehl_ps(__Xmm, __Xmm);
            _mm_store_ss(OutPtr + 2, t1); break;
        case 4:
            Storeu(OutPtr); break;
        default:;
    }
}

eX_VECCALL(eXSSEFloatVector&) eXSSEFloatVector::Cutoff(int n)
{
    if (eXuint32_t(n) >= 4) return *this;
    static const union
    {
        eXint32_t i[8];
        eXfloat_t   f[8];
    } mask = { { 1,-1,-1,-1,0,0,0,0 } };
    __Xmm = _mm_and_ps(__Xmm, Loadu(mask.f + 4 - n));
    return *this;
}

eX_VECCALL(const eXSSEFloatVector&) eXSSEFloatVector::Insert(eXuint32_t index, eXfloat_t Invalue)
{
    if (eX_has_SSE41())
    {
        __Xmm = _mm_insert_ps(__Xmm, _mm_set_ss(Invalue), index & 3);
    }
    else               // SSE2
    {
        static const eXint32_t maskl[8] = { 0,0,0,0,-1,0,0,0 };
        __m128 broad = _mm_set1_ps(Invalue);  // broadcast value into all elements
        __m128 mask = _mm_loadu_ps(reinterpret_cast<const eXfloat_t*>(maskl + 4 - (index & 3))); // mask with FFFFFFFF at index position
        __Xmm = Select(mask, broad, __Xmm);
    }
    return *this;
}

eX_VECCALL(eXfloat_t) eXSSEFloatVector::Extract(eXuint32_t index) const
{
    if (eX_has_SSE41())
    {
        return _mm_extract_ps(__Xmm, index & 3);
    }
    else               // SSE2
    {
        eXfloat_t x[4];
        Storeu(x);
        return x[index & 3];
    }
}

eX_VECCALL(__m128) eXSSEFloatVector::Get() const
{
	return __Xmmi;
}

eX_VECCALL(eXfloat_t*) eXSSEFloatVector::Get_All() const
{
    eXfloat_t x[4];
    Storeu(x);
    return x;
}

eX_VECCALL(eXfloat_t) eXSSEFloatVector::Get_X() const
{
    return Extract(0);
}

eX_VECCALL(eXfloat_t) eXSSEFloatVector::Get_Y() const
{
    return Extract(1);
}

eX_VECCALL(eXfloat_t) eXSSEFloatVector::Get_Z() const
{
    return Extract(2);
}

eX_VECCALL(eXfloat_t) eXSSEFloatVector::Get_W() const
{
    return Extract(3);
}

eX_VECCALL(const eXSSEFloatVector&) eXSSEFloatVector::Set_All(eXfloat_t InX, eXfloat_t InY, eXfloat_t InZ, eXfloat_t InW)
{
    __Xmm = _mm_setr_ps(InX, InY, InZ, InW);
    return *this;
}

eX_VECCALL(const eXSSEFloatVector&) eXSSEFloatVector::Set_int32(eXint32_t InX, eXint32_t InY, eXint32_t InZ, eXint32_t InW)
{
	__Xmm = eXSSEFloatVector(eXSSEInt32Vector(InX, InY, InZ, InW));
	return *this;
}

eX_VECCALL(const eXSSEFloatVector&) eXSSEFloatVector::Set_uint32(eXuint32_t InX, eXuint32_t InY, eXuint32_t InZ, eXuint32_t InW)
{
	__Xmm = eXSSEFloatVector(eXSSEUint32Vector(InX, InY, InZ, InW));
	return *this;
}

eX_VECCALL(const eXSSEFloatVector&) eXSSEFloatVector::Set_X(eXfloat_t Invalue)
{
    return Insert(0, Invalue);
}

eX_VECCALL(const eXSSEFloatVector&) eXSSEFloatVector::Set_Y(eXfloat_t Invalue)
{
    return Insert(1, Invalue);
}

eX_VECCALL(const eXSSEFloatVector&) eXSSEFloatVector::Set_Z(eXfloat_t Invalue)
{
    return Insert(2, Invalue);
}

eX_VECCALL(const eXSSEFloatVector&) eXSSEFloatVector::Set_W(eXfloat_t Invalue)
{
    return Insert(3, Invalue);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*               Generate compile-time constant vector                 */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <eXfloat_t f0, eXfloat_t f1, eXfloat_t f2, eXfloat_t f3>
eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Constant_float()
{
    static const union
    {
        eXfloat_t f[4];
        __m128 _xmm;
    } u = { { f0, f1, f2, f3 } };
    return u._xmm;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::And(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_and_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Or(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_or_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Xor(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_xor_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Not(const eXSSEFloatVector& InXmm_a)
{
    return Xor(InXmm_a, _mm_set1_epi32(-1));
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::AndNot(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_andnot_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Horizontal_And(const eXSSEFloatVector& InXmm_a)
{
    if (_mm_movemask_ps(InXmm_a) == 0x0F)
    {
        return _mm_set1_epi32(-1);
    }
    else
    {
        return _mm_setzero_ps();
    }
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Horizontal_Or(const eXSSEFloatVector& InXmm_a)
{
    if (_mm_movemask_ps(InXmm_a) != 0)
    {
        return _mm_set1_epi32(-1);
    }
    else
    {
        return _mm_setzero_ps();
    }
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bAnd(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return (_mm_movemask_ps(_mm_and_ps(InXmm_a, InXmm_b)) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bOr(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return (_mm_movemask_ps(_mm_or_ps(InXmm_a, InXmm_b)) != 0);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bHorizontal_And(const eXSSEFloatVector& InXmm_a)
{
    return (_mm_movemask_ps(InXmm_a) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bHorizontal_Or(const eXSSEFloatVector& InXmm_a)
{
    return (_mm_movemask_ps(InXmm_a) != 0);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Logical_And(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return InXmm_a & InXmm_b;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Logical_Or(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return InXmm_a | InXmm_b;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Logical_Not(const eXSSEFloatVector& InXmm_a)
{
    return  _mm_cmpeq_ps(InXmm_a, _mm_setzero_ps());
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bLogical_And(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return (_mm_movemask_ps(InXmm_a & InXmm_b) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bLogical_Or(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return (_mm_movemask_ps(InXmm_a | InXmm_b) != 0);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bLogical_Not(const eXSSEFloatVector& InXmm_a)
{
    return  (_mm_movemask_ps(_mm_cmpeq_ps(InXmm_a, _mm_setzero_ps())) == 0x0F);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         General functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::To_Float(const eXSSEInt32Vector& InXmmi_a)
{
	return _mm_cvtepi32_ps(InXmmi_a);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::To_Float(const eXSSEUint32Vector& InXmmi_a)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL)
	if (eX_has_AVX512VL())
	{
		return _mm_cvtepu32_ps(InXmmi_a);
	}
	else
	{
#endif
		eXSSEFloatVector b = To_Float(eXSSEInt32Vector(InXmmi_a & eXSSEuint32_FinvSign));             // 31 bits
		eXSSEInt32Vector c = eXSSEInt32Vector(InXmmi_a) >> 31;                              // generate mask from highest bit
		eXSSEFloatVector d = eXSSEFloatVector(eXSSEfloat_FixUnsigned) & eXSSEFloatVector(c); // mask floating point constant 2^31
		return b + d;
#if defined(eX_AVX512) && defined(eX_AVX512VL)
	}
#endif
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Convert_int32(const eXSSEFloatVector& InXmm_a, eXuint32_t DivExponent)
{
	eX_ASSERT(DivExponent < 32);
	// Convert to floats
	__m128 vResult = _mm_cvtepi32_ps(_mm_castps_si128(InXmm_a));
	// Convert DivExponent into 1.0f/(1<<DivExponent)
	eXuint32_t uScale = eXuint32_F1 - (DivExponent << 23);
	// Splat the scalar value
	__m128i vScale = _mm_set1_epi32(uScale);
	vResult = _mm_mul_ps(vResult, _mm_castsi128_ps(vScale));
	return vResult;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Convert_uint32(const eXSSEFloatVector& InXmm_a, eXuint32_t DivExponent)
{
	eX_ASSERT(DivExponent < 32);
	// For the values that are higher than 0x7FFFFFFF, a fixup is needed
	// Determine which ones need the fix.
	__m128 vMask = _mm_and_ps(InXmm_a, eXSSEuint32_Fneg0);
	// Force all values positive
	__m128 vResult = _mm_xor_ps(InXmm_a, vMask);
	// Convert to floats
	vResult = _mm_cvtepi32_ps(_mm_castps_si128(vResult));
	// Convert 0x80000000 -> 0xFFFFFFFF
	__m128i iMask = _mm_srai_epi32(_mm_castps_si128(vMask), 31);
	// For only the ones that are too big, add the fixup
	vMask = _mm_and_ps(_mm_castsi128_ps(iMask), eXSSEfloat_FixUnsigned);
	vResult = _mm_add_ps(vResult, vMask);
	// Convert DivExponent into 1.0f/(1<<DivExponent)
	eXuint32_t uScale = eXuint32_F1 - (DivExponent << 23);
	// Splat
	iMask = _mm_set1_epi32(uScale);
	vResult = _mm_mul_ps(vResult, _mm_castsi128_ps(iMask));
	return vResult;
}

/*
eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Convert_SSEint64(const __m128i& InXmmi, eXuint32_t DivExponent)
{
// Convert to floats
__m128 vResult = _mm_cvtepi32_ps(InXmmi);
// Convert DivExponent into 1.0f/(1<<DivExponent)
// eXuint32_t uScale = 0x3F800000U - (DivExponent << 23);
eXSSEInt64Vector vScale = _mm_set1_epi64x(DivExponent & 63);
vScale =vScale << 52;
vScale = eXSSEint64_D1 - vScale;
// Splat the scalar value
//__m128i vScale = _mm_set1_epi32(uScale);
vResult = _mm_mul_ps(vResult, _mm_castsi128_ps(vScale));
return vResult;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Convert_SSEuint64(const __m128i& InXmmi, eXuint32_t DivExponent)
{
// For the values that are higher than 0x7FFFFFFF, a fixup is needed
// Determine which ones need the fix.
__m128 vMask = _mm_and_ps(_mm_castsi128_ps(InXmmi), eXSSEuint64_Dneg0);
// Force all values positive
__m128 vResult = _mm_xor_ps(_mm_castsi128_ps(InXmmi), vMask);
// Convert to floats
vResult = _mm_cvtepi32_ps(_mm_castps_si128(vResult));
// Convert 0x80000000 -> 0xFFFFFFFF
eXSSEInt64Vector iMask = _mm_castps_si128(vMask);
iMask = iMask >> 63;
// For only the ones that are too big, add the fixup
vMask = _mm_and_ps(_mm_castsi128_ps(iMask), eXSSEdouble_FixUnsigned64);
vResult = _mm_add_ps(vResult, vMask);
// Convert DivExponent into 1.0f/(1<<DivExponent)
// eXuint32_t uScale = 0x3F800000U - (DivExponent << 23);
eXSSEInt64Vector vScale = _mm_set1_epi64x(DivExponent & 63);
vScale = vScale << 52;
vScale = eXSSEint64_D1 - vScale;
// Splat
iMask = vScale;
vResult = vResult * _mm_castsi128_ps(iMask);
return vResult;
}*/

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::SelectControl(eXuint32_t VectorIndex0, eXuint32_t VectorIndex1, eXuint32_t VectorIndex2, eXuint32_t VectorIndex3)
{
	// x=Index0,y=Index1,z=Index2,w=Index3
	__m128i vTemp = _mm_setr_epi32(VectorIndex0, VectorIndex1, VectorIndex2, VectorIndex3);
	// Any non-zero entries become 0xFFFFFFFF else 0
	vTemp = _mm_cmpgt_epi32(vTemp, eXSSEint32_0);
	return vTemp;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Select(const eXSSEFloatVector& InXmm_control, const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	if (eX_has_SSE41())
	{
		return _mm_blendv_ps(InXmm_b, InXmm_a, InXmm_control);
	}
	else
	{
		return _mm_or_ps(_mm_and_ps(InXmm_control, InXmm_a), _mm_andnot_ps(InXmm_control, InXmm_b));
	}
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::SetBinaryConstant(eXuint32_t C0, eXuint32_t C1, eXuint32_t C2, eXuint32_t C3)
{
	// Move the params to a vector
	__m128i vTemp = _mm_set_epi32(C3, C2, C1, C0);
	// Mask off the low bits
	vTemp = _mm_and_si128(vTemp, eXSSEuint32_1);
	// 0xFFFFFFFF on true bits
	vTemp = _mm_cmpeq_epi32(vTemp, eXSSEuint32_1);
	// 0xFFFFFFFF -> 1.0f, 0x00000000 -> 0.0f
	vTemp = _mm_and_si128(vTemp, eXSSEfloat_1);
	return vTemp;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::SplatConstant(eXint32_t IntConstant, eXuint32_t DivExponent)
{
	eX_ASSERT(IntConstant >= -16 && IntConstant <= 15);
	eX_ASSERT(DivExponent < 32);
	// Splat the int
	__m128i vScale = _mm_set1_epi32(IntConstant);
	// Convert to a float
	__m128 vResult = _mm_cvtepi32_ps(vScale);
	// Convert DivExponent into 1.0f/(1<<DivExponent)
	eXuint32_t uScale = 0x3F800000U - (DivExponent << 23);
	// Splat the scalar value (It's really a float)
	vScale = _mm_set1_epi32(uScale);
	// Multiply by the reciprocal (Perform a right shift by DivExponent)
	vResult = _mm_mul_ps(vResult, _mm_castsi128_ps(vScale));
	return vResult;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::SplatConstantInt(eXint32_t IntConstant)
{
	__m128i V = _mm_set1_epi32(IntConstant);
	return V;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Swizzle(const eXSSEFloatVector& InXmm_a, eXuint32_t SwizzleX, eXuint32_t SwizzleY, eXuint32_t SwizzleZ, eXuint32_t SwizzleW)
{
	eX_ASSERTIF_MSG(SwizzleX <= 3, "SwizzleX parameter out of range");
	eX_ASSERTIF_MSG(SwizzleY <= 3, "SwizzleY parameter out of range");
	eX_ASSERTIF_MSG(SwizzleZ <= 3, "SwizzleZ parameter out of range");
	eX_ASSERTIF_MSG(SwizzleW <= 3, "SwizzleW parameter out of range");

	return eX_MM_PERMUTE_PS(InXmm_a, eX_MM_SHUFFLE4(SwizzleX, SwizzleY, SwizzleZ, SwizzleW));
}

// permute vector eXSSEFloatVector
template <int PermuteX, int PermuteY, int PermuteZ, int PermuteW>
eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::permute_template(const eXSSEFloatVector& InXmm_a)
{
	eX_ASSERTIF_MSG(PermuteX <= 3, "PermuteX parameter out of range");
	eX_ASSERTIF_MSG(PermuteY <= 3, "PermuteY parameter out of range");
	eX_ASSERTIF_MSG(PermuteZ <= 3, "PermuteZ parameter out of range");
	eX_ASSERTIF_MSG(PermuteW <= 3, "PermuteW parameter out of range");

	// is shuffling needed
	const bool do_shuffle = (PermuteX > 0) || (PermuteY != 1 && PermuteY >= 0) || (PermuteZ != 2 && PermuteZ >= 0) || (PermuteW != 3 && PermuteW >= 0);
	// is zeroing needed
	const bool do_zero = (PermuteX | PermuteY | PermuteZ | PermuteW) < 0 && ((PermuteX | PermuteY | PermuteZ | PermuteW) & 0x80);

	if (!do_shuffle && !do_zero)
	{
		return InXmm_a;                                          // trivial case: do nothing
	}
	if (do_zero && !do_shuffle)
	{                          // zeroing, not shuffling
		if ((PermuteX & PermuteY & PermuteZ & PermuteW) < 0) return _mm_setzero_ps(); // zero everything
																					  // zero some elements
		__m128i mask1 = eXSSEIntVector::Constant_int32< -int(PermuteX >= 0), -int(PermuteY >= 0), -int(PermuteZ >= 0), -int(PermuteW >= 0) >();
		return  _mm_and_ps(InXmm_a, _mm_castsi128_ps(mask1));     // zero with AND mask
	}
	if (do_shuffle && !do_zero)
	{                          // shuffling, not zeroing        
		return eX_MM_PERMUTE_PS(InXmm_a, eX_MM_SHUFFLE4(PermuteX, PermuteY, PermuteZ, PermuteW));
	}
	// both shuffle and zero
	if ((PermuteX & PermuteY) < 0 && (PermuteZ | PermuteW) >= 0)
	{                 // zero low half, shuffle high half
		return _mm_shuffle_ps(_mm_setzero_ps(), InXmm_a, (PermuteZ & 3) << 4 | (PermuteW & 3) << 6);
	}
	if ((PermuteX | PermuteY) >= 0 && (PermuteZ & PermuteW) < 0)
	{                 // shuffle low half, zero high half
		return _mm_shuffle_ps(InXmm_a, _mm_setzero_ps(), (PermuteX & 3) | (PermuteY & 3) << 2);
	}
	if (eX_has_SSSE3())
	{
		// With SSSE3 we can do both with the PSHUFB instruction
		const int j0 = (PermuteX & 3) << 2;
		const int j1 = (PermuteY & 3) << 2;
		const int j2 = (PermuteZ & 3) << 2;
		const int j3 = (PermuteW & 3) << 2;
		__m128i mask2 = eXSSEIntVector::Constant_int32<
			PermuteX < 0 ? -1 : j0 | (j0 + 1) << 8 | (j0 + 2) << 16 | (j0 + 3) << 24,
			PermuteY < 0 ? -1 : j1 | (j1 + 1) << 8 | (j1 + 2) << 16 | (j1 + 3) << 24,
			PermuteZ < 0 ? -1 : j2 | (j2 + 1) << 8 | (j2 + 2) << 16 | (j2 + 3) << 24,
			PermuteW < 0 ? -1 : j3 | (j3 + 1) << 8 | (j3 + 2) << 16 | (j3 + 3) << 24 >();
		return _mm_shuffle_epi8(_mm_castps_si128(InXmm_a), mask2);
	}
	else
	{
		__m128 t1 = eX_MM_PERMUTE_PS(InXmm_a, eX_MM_SHUFFLE4(PermuteX, PermuteY, PermuteZ, PermuteW)); // shuffle
		__m128i mask3 = eXSSEIntVector::Constant_int32< -int(PermuteX >= 0), -int(PermuteY >= 0), -int(PermuteZ >= 0), -int(PermuteW >= 0) >();
		return _mm_and_ps(t1, _mm_castsi128_ps(mask3));     // zero with AND mask
	}
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Permute(const eXSSEFloatVector& InXmm_a, int PermuteX, int PermuteY, int PermuteZ, int PermuteW)
{
	eX_ASSERTIF_MSG(PermuteX <= 3, "PermuteX parameter out of range");
	eX_ASSERTIF_MSG(PermuteY <= 3, "PermuteY parameter out of range");
	eX_ASSERTIF_MSG(PermuteZ <= 3, "PermuteZ parameter out of range");
	eX_ASSERTIF_MSG(PermuteW <= 3, "PermuteW parameter out of range");

	// is shuffling needed
	const bool do_shuffle = (PermuteX > 0) || (PermuteY != 1 && PermuteY >= 0) || (PermuteZ != 2 && PermuteZ >= 0) || (PermuteW != 3 && PermuteW >= 0);
	// is zeroing needed
	const bool do_zero = (PermuteX | PermuteY | PermuteZ | PermuteW) < 0 && ((PermuteX | PermuteY | PermuteZ | PermuteW) & 0x80);

	if (!do_shuffle && !do_zero)
	{
		return InXmm_a;                                          // trivial case: do nothing
	}
	if (do_zero && !do_shuffle)
	{                          // zeroing, not shuffling
		if ((PermuteX & PermuteY & PermuteZ & PermuteW) < 0) return _mm_setzero_ps(); // zero everything
																					  // zero some elements
		eXSSEInt32Vector mask1 = eXSSEInt32Vector(-int(PermuteX >= 0), -int(PermuteY >= 0), -int(PermuteZ >= 0), -int(PermuteW >= 0));
		return  _mm_and_ps(InXmm_a, _mm_castsi128_ps(mask1));     // zero with AND mask
	}
	if (do_shuffle && !do_zero)
	{                          // shuffling, not zeroing        
		return eX_MM_PERMUTE_PS(InXmm_a, eX_MM_SHUFFLE4(PermuteX, PermuteY, PermuteZ, PermuteW));
	}
	// both shuffle and zero
	if ((PermuteX & PermuteY) < 0 && (PermuteZ | PermuteW) >= 0)
	{                 // zero low half, shuffle high half
		return _mm_shuffle_ps(_mm_setzero_ps(), InXmm_a, (PermuteZ & 3) << 4 | (PermuteW & 3) << 6);
	}
	if ((PermuteX | PermuteY) >= 0 && (PermuteZ & PermuteW) < 0)
	{                 // shuffle low half, zero high half
		return _mm_shuffle_ps(InXmm_a, _mm_setzero_ps(), (PermuteX & 3) | (PermuteY & 3) << 2);
	}
	if (eX_has_SSSE3())
	{
		// With SSSE3 we can do both with the PSHUFB instruction
		const int j0 = (PermuteX & 3) << 2;
		const int j1 = (PermuteY & 3) << 2;
		const int j2 = (PermuteZ & 3) << 2;
		const int j3 = (PermuteW & 3) << 2;
		eXSSEInt32Vector mask2 = eXSSEInt32Vector(PermuteX < 0 ? -1 : j0 | (j0 + 1) << 8 | (j0 + 2) << 16 | (j0 + 3) << 24,
			PermuteY < 0 ? -1 : j1 | (j1 + 1) << 8 | (j1 + 2) << 16 | (j1 + 3) << 24,
			PermuteZ < 0 ? -1 : j2 | (j2 + 1) << 8 | (j2 + 2) << 16 | (j2 + 3) << 24,
			PermuteW < 0 ? -1 : j3 | (j3 + 1) << 8 | (j3 + 2) << 16 | (j3 + 3) << 24);
		return _mm_shuffle_epi8(_mm_castps_si128(InXmm_a), mask2);
	}
	else
	{
		__m128 t1 = eX_MM_PERMUTE_PS(InXmm_a, eX_MM_SHUFFLE4(PermuteX, PermuteY, PermuteZ, PermuteW)); // shuffle
		eXSSEInt32Vector mask3 = eXSSEInt32Vector(-int(PermuteX >= 0), -int(PermuteY >= 0), -int(PermuteZ >= 0), -int(PermuteW >= 0));
		return _mm_and_ps(t1, _mm_castsi128_ps(mask3));     // zero with AND mask
	}
}

// blend vectors
template <int BlendX, int BlendY, int BlendZ, int BlendW>
eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::blend_template(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	eX_ASSERTIF_MSG(BlendX <= 7, "BlendX parameter out of range");
	eX_ASSERTIF_MSG(BlendY <= 7, "BlendY parameter out of range");
	eX_ASSERTIF_MSG(BlendZ <= 7, "BlendZ parameter out of range");
	eX_ASSERTIF_MSG(BlendW <= 7, "BlendW parameter out of range");

	// Combine all the indexes into InXmm_a single bitfield, with 8 bits for each
	const int m1 = (BlendX & 7) | (BlendY & 7) << 8 | (BlendZ & 7) << 16 | (BlendW & 7) << 24;

	// Mask to zero out negative indexes
	const int m2 = (BlendX<0 ? 0 : 0xFF) | (BlendY<0 ? 0 : 0xFF) << 8 | (BlendZ<0 ? 0 : 0xFF) << 16 | (BlendW<0 ? 0 : 0xFF) << 24;

	if ((m1 & 0x04040404 & m2) == 0)
	{
		// no elements from b
		return permute_template<BlendX, BlendY, BlendZ, BlendW>(InXmm_a);
	}
	if (((m1 ^ 0x04040404) & 0x04040404 & m2) == 0)
	{
		// no elements from a
		return permute_template<BlendX&~4, BlendY&~4, BlendZ&~4, BlendW&~4>(InXmm_b);
	}
	if (((m1 & ~0x04040404) ^ 0x03020100) == 0 && m2 == -1)
	{
		// selecting without shuffling or zeroing
		__m128i sel = eXSSEIntVector::Constant_int32<BlendX & 4 ? 0 : -1, BlendY & 4 ? 0 : -1, BlendZ & 4 ? 0 : -1, BlendW & 4 ? 0 : -1>();
		return Select(sel, InXmm_a, InXmm_b);
	}
	if (eX_has_XOP())     // Use AMD XOP instruction PPERM
	{
		__m128i maska = eXSSEIntVector::Constant_int32<
			BlendX < 0 ? 0x80808080 : (BlendX * 4 & 31) + (((BlendX * 4 & 31) + 1) << 8) + (((BlendX * 4 & 31) + 2) << 16) + (((BlendX * 4 & 31) + 3) << 24),
			BlendY < 0 ? 0x80808080 : (BlendY * 4 & 31) + (((BlendY * 4 & 31) + 1) << 8) + (((BlendY * 4 & 31) + 2) << 16) + (((BlendY * 4 & 31) + 3) << 24),
			BlendZ < 0 ? 0x80808080 : (BlendZ * 4 & 31) + (((BlendZ * 4 & 31) + 1) << 8) + (((BlendZ * 4 & 31) + 2) << 16) + (((BlendZ * 4 & 31) + 3) << 24),
			BlendW < 0 ? 0x80808080 : (BlendW * 4 & 31) + (((BlendW * 4 & 31) + 1) << 8) + (((BlendW * 4 & 31) + 2) << 16) + (((BlendW * 4 & 31) + 3) << 24) >();
		return _mm_perm_epi8(_mm_castps_si128(InXmm_a), _mm_castps_si128(InXmm_b), maska);
}
	else
	{
		if ((((m1 & ~0x04040404) ^ 0x03020100) & m2) == 0)
		{
			// selecting and zeroing, not shuffling
			__m128i sel1 = eXSSEIntVector::Constant_int32<BlendX & 4 ? 0 : -1, BlendY & 4 ? 0 : -1, BlendZ & 4 ? 0 : -1, BlendW & 4 ? 0 : -1>();
			__m128i mask1 = eXSSEIntVector::Constant_int32< -int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0) >();
			__m128 t1 = Select(sel1, InXmm_a, InXmm_b);   // select
			return  _mm_and_ps(t1, _mm_castsi128_ps(mask1));     // zero
		}
		// special cases unpckhps, unpcklps, shufps
		__m128 t;
		if (((m1 ^ 0x05010400) & m2) == 0)
		{
			t = _mm_unpacklo_ps(InXmm_a, InXmm_b);
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				__m128i mask1 = eXSSEIntVector::Constant_int32< -int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0) >();
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		if (((m1 ^ 0x01050004) & m2) == 0)
		{
			t = _mm_unpacklo_ps(InXmm_b, InXmm_a);
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				__m128i mask1 = eXSSEIntVector::Constant_int32< -int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0) >();
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		if (((m1 ^ 0x07030602) & m2) == 0)
		{
			t = _mm_unpackhi_ps(InXmm_a, InXmm_b);
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				__m128i mask1 = eXSSEIntVector::Constant_int32< -int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0) >();
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		if (((m1 ^ 0x03070206) & m2) == 0)
		{
			t = _mm_unpackhi_ps(InXmm_b, InXmm_a);
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				__m128i mask1 = eXSSEIntVector::Constant_int32< -int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0) >();
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		// first two elements from a, last two from b
		if (((m1 ^ 0x04040000) & 0x04040404 & m2) == 0)
		{
			t = _mm_shuffle_ps(InXmm_a, InXmm_b, (BlendX & 3) + ((BlendY & 3) << 2) + ((BlendZ & 3) << 4) + ((BlendW & 3) << 6));
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				__m128i mask1 = eXSSEIntVector::Constant_int32< -int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0) >();
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		// first two elements from b, last two from a
		if (((m1 ^ 0x00000404) & 0x04040404 & m2) == 0)
		{
			t = _mm_shuffle_ps(InXmm_b, InXmm_a, (BlendX & 3) + ((BlendY & 3) << 2) + ((BlendZ & 3) << 4) + ((BlendW & 3) << 6));
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				__m128i mask1 = eXSSEIntVector::Constant_int32< -int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0) >();
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		{   // general case. combine two permutes
			__m128 a1 = permute_template <
				reinterpret_cast<eXuint32_t>(BlendX < 4) ? BlendX : -1,
				reinterpret_cast<eXuint32_t>(BlendY < 4) ? BlendY : -1,
				reinterpret_cast<eXuint32_t>(BlendZ < 4) ? BlendZ : -1,
				reinterpret_cast<eXuint32_t>(BlendW < 4) ? BlendW : -1 >(InXmm_a);
			__m128 b1 = permute_template <
				reinterpret_cast<eXuint32_t>(BlendX ^ 4) < 4 ? (BlendX ^ 4) : -1,
				reinterpret_cast<eXuint32_t>(BlendY ^ 4) < 4 ? (BlendY ^ 4) : -1,
				reinterpret_cast<eXuint32_t>(BlendZ ^ 4) < 4 ? (BlendZ ^ 4) : -1,
				reinterpret_cast<eXuint32_t>(BlendW ^ 4) < 4 ? (BlendW ^ 4) : -1 >(InXmm_b);
			return  _mm_or_ps(a1, b1);
		}
		//DOZERO:
		if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
		{
			// zero some elements
			__m128i mask1 = eXSSEIntVector::Constant_int32< -int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0) >();
			t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
		}
		return t;
	}
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Blend(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b, int BlendX, int BlendY, int BlendZ, int BlendW)
{
	eX_ASSERTIF_MSG(BlendX <= 7, "BlendX parameter out of range");
	eX_ASSERTIF_MSG(BlendY <= 7, "BlendY parameter out of range");
	eX_ASSERTIF_MSG(BlendZ <= 7, "BlendZ parameter out of range");
	eX_ASSERTIF_MSG(BlendW <= 7, "BlendW parameter out of range");

	// Combine all the indexes into InXmm_a single bitfield, with 8 bits for each
	const int m1 = (BlendX & 7) | (BlendY & 7) << 8 | (BlendZ & 7) << 16 | (BlendW & 7) << 24;

	// Mask to zero out negative indexes
	const int m2 = (BlendX<0 ? 0 : 0xFF) | (BlendY<0 ? 0 : 0xFF) << 8 | (BlendZ<0 ? 0 : 0xFF) << 16 | (BlendW<0 ? 0 : 0xFF) << 24;

	if ((m1 & 0x04040404 & m2) == 0)
	{
		// no elements from b
		return Permute(InXmm_a, BlendX, BlendY, BlendZ, BlendW);
	}
	if (((m1 ^ 0x04040404) & 0x04040404 & m2) == 0)
	{
		// no elements from a
		return Permute(InXmm_b, BlendX&~4, BlendY&~4, BlendZ&~4, BlendW&~4);
	}
	if (((m1 & ~0x04040404) ^ 0x03020100) == 0 && m2 == -1)
	{
		// selecting without shuffling or zeroing
		eXSSEInt32Vector sel = eXSSEInt32Vector(BlendX & 4 ? 0 : -1, BlendY & 4 ? 0 : -1, BlendZ & 4 ? 0 : -1, BlendW & 4 ? 0 : -1);
		return Select(sel, InXmm_a, InXmm_b);
	}
	if (eX_has_XOP())     // Use AMD XOP instruction PPERM
	{
		eXSSEInt32Vector maska = eXSSEInt32Vector(BlendX < 0 ? 0x80808080 : (BlendX * 4 & 31) + (((BlendX * 4 & 31) + 1) << 8) + (((BlendX * 4 & 31) + 2) << 16) + (((BlendX * 4 & 31) + 3) << 24),
			BlendY < 0 ? 0x80808080 : (BlendY * 4 & 31) + (((BlendY * 4 & 31) + 1) << 8) + (((BlendY * 4 & 31) + 2) << 16) + (((BlendY * 4 & 31) + 3) << 24),
			BlendZ < 0 ? 0x80808080 : (BlendZ * 4 & 31) + (((BlendZ * 4 & 31) + 1) << 8) + (((BlendZ * 4 & 31) + 2) << 16) + (((BlendZ * 4 & 31) + 3) << 24),
			BlendW < 0 ? 0x80808080 : (BlendW * 4 & 31) + (((BlendW * 4 & 31) + 1) << 8) + (((BlendW * 4 & 31) + 2) << 16) + (((BlendW * 4 & 31) + 3) << 24));
		return _mm_perm_epi8(_mm_castps_si128(InXmm_a), _mm_castps_si128(InXmm_b), maska);
	}
	else
	{
		if ((((m1 & ~0x04040404) ^ 0x03020100) & m2) == 0)
		{
			// selecting and zeroing, not shuffling
			eXSSEInt32Vector sel1 = eXSSEInt32Vector(BlendX & 4 ? 0 : -1, BlendY & 4 ? 0 : -1, BlendZ & 4 ? 0 : -1, BlendW & 4 ? 0 : -1);
			eXSSEInt32Vector mask1 = eXSSEInt32Vector(-int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0));
			__m128 t1 = Select(sel1, InXmm_a, InXmm_b);   // select
			return  _mm_and_ps(t1, _mm_castsi128_ps(mask1));     // zero
		}
		// special cases unpckhps, unpcklps, shufps
		__m128 t;
		if (((m1 ^ 0x05010400) & m2) == 0)
		{
			t = _mm_unpacklo_ps(InXmm_a, InXmm_b);
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				eXSSEInt32Vector mask1 = eXSSEInt32Vector(-int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0));
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		if (((m1 ^ 0x01050004) & m2) == 0)
		{
			t = _mm_unpacklo_ps(InXmm_b, InXmm_a);
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				eXSSEInt32Vector mask1 = eXSSEInt32Vector(-int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0));
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		if (((m1 ^ 0x07030602) & m2) == 0)
		{
			t = _mm_unpackhi_ps(InXmm_a, InXmm_b);
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				eXSSEInt32Vector mask1 = eXSSEInt32Vector(-int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0));
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		if (((m1 ^ 0x03070206) & m2) == 0)
		{
			t = _mm_unpackhi_ps(InXmm_b, InXmm_a);
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				eXSSEInt32Vector mask1 = eXSSEInt32Vector(-int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0));
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		// first two elements from a, last two from b
		if (((m1 ^ 0x04040000) & 0x04040404 & m2) == 0)
		{
			t = _mm_shuffle_ps(InXmm_a, InXmm_b, (BlendX & 3) + ((BlendY & 3) << 2) + ((BlendZ & 3) << 4) + ((BlendW & 3) << 6));
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				eXSSEInt32Vector mask1 = eXSSEInt32Vector(-int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0));
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		// first two elements from b, last two from a
		if (((m1 ^ 0x00000404) & 0x04040404 & m2) == 0)
		{
			t = _mm_shuffle_ps(InXmm_b, InXmm_a, (BlendX & 3) + ((BlendY & 3) << 2) + ((BlendZ & 3) << 4) + ((BlendW & 3) << 6));
			if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
			{
				// zero some elements
				eXSSEInt32Vector mask1 = eXSSEInt32Vector(-int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0));
				t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
			}
			return t;
			//goto DOZERO;
		}
		{   // general case. combine two permutes
			__m128 a1 = Permute(InXmm_a, static_cast<eXuint32_t>(BlendX) < 4 ? BlendX : -1, static_cast<eXuint32_t>(BlendY) < 4 ? BlendY : -1,
								static_cast<eXuint32_t>(BlendZ) < 4 ? BlendZ : -1, static_cast<eXuint32_t>(BlendW) < 4 ? BlendW : -1);
			__m128 b1 = Permute(InXmm_b, static_cast<eXuint32_t>(BlendX) ^ 4 < 4 ? (BlendX ^ 4) : -1, static_cast<eXuint32_t>(BlendY) ^ 4 < 4 ? (BlendY ^ 4) : -1,
								static_cast<eXuint32_t>(BlendZ) ^ 4 < 4 ? (BlendZ ^ 4) : -1, static_cast<eXuint32_t>(BlendW) ^ 4 < 4 ? (BlendW ^ 4) : -1);
			return  _mm_or_ps(a1, b1);
		}
		//DOZERO:
		if ((BlendX | BlendY | BlendZ | BlendW) & 0x80)
		{
			// zero some elements
			__m128i mask1 = eXSSEInt32Vector(-int(BlendX >= 0), -int(BlendY >= 0), -int(BlendZ >= 0), -int(BlendW >= 0));
			t = _mm_and_ps(t, _mm_castsi128_ps(mask1));     // zero with AND mask
		}
		return t;
	}
}

template <int SignX, int SignY, int SignZ, int SignW>
eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::change_sign_template(const eXSSEFloatVector& InXmm_a)
{
	if ((SignX | SignY | SignZ | SignW) == 0) return InXmm_a;
	__m128i mask = eXSSEInt32Vector::Constant_int32<SignX ? eXuint32_FSign : eXuint32_0, SignY ? eXuint32_FSign : eXuint32_0, SignZ ? eXuint32_FSign : eXuint32_0, SignW ? eXuint32_FSign : eXuint32_0>();
	return  _mm_xor_ps(InXmm_a, _mm_castsi128_ps(mask));     // flip sign bits
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Change_Sign(const eXSSEFloatVector& InXmm_a, int SignX, int SignY, int SignZ, int SignW)
{
	if ((SignX | SignY | SignZ | SignW) == 0) return InXmm_a;
	__m128i mask = eXSSEInt32Vector(SignX ? eXuint32_FSign : eXuint32_0, SignY ? eXuint32_FSign : eXuint32_0, SignZ ? eXuint32_FSign : eXuint32_0, SignW ? eXuint32_FSign : eXuint32_0);
	return  _mm_xor_ps(InXmm_a, _mm_castsi128_ps(mask));     // flip sign bits
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Compress(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	eXSSEFloatVector t1 = _mm_cvtpd_ps(InXmmd_a);
	eXSSEFloatVector t2 = _mm_cvtpd_ps(InXmmd_b);
	return Blend(t1, t2, 0, 1, 4, 5);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Add(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_add_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Sub(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_sub_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Mul(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_mul_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Div(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_div_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Max(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_max_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Min(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_min_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Abs(const eXSSEFloatVector& InXmm_a)
{
	__m128 mask = eXSSEint32_FAbs;
	return _mm_and_ps(InXmm_a, mask);
	/*__m128 vResult = _mm_setzero_ps();
	vResult = _mm_sub_ps(vResult, InXmm_a);
	return = _mm_max_ps(vResult, InXmm_a);*/
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Sqrt(const eXSSEFloatVector& InXmm_a)
{
    return _mm_sqrt_ps(InXmm_a);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Square(const eXSSEFloatVector& InXmm_a)
{
    return _mm_mul_ps(InXmm_a, InXmm_a);
}

// avoid unsafe optimization in function round
#if defined(__GNUC__) && !defined(__INTEL_COMPILER) && !defined(__clang__) && (eX_INTRINSET < 41)
eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Round(const eXSSEFloatVector& InXmm_a) __attribute__((optimize("-fno-unsafe-math-optimizations")));
#elif defined(__clang__) && (eX_INTRINSET < 41)
// eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Round(const eXSSEFloatVector& InXmm_a) __attribute__ ((optnone));
// This doesn't work, but current versions of Clang (3.5) don't optimize away signedmagic, even with -funsafe-math-optimizations
// Add volatile to b if future versions fail
#elif defined (_MSC_VER) || defined(__INTEL_COMPILER) && (eX_INTRINSET < 41)
#pragma float_control(push) 
#pragma float_control(precise,on)
#define FLOAT_CONTROL_PRECISE_FOR_ROUND
#endif
eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Round(const eXSSEFloatVector& InXmm_a)
{
    if (eX_has_SSE41())
    {
        return _mm_round_ps(InXmm_a, _MM_FROUND_TO_NEAREST_INT | _MM_FROUND_NO_EXC);
    }
    else
    { // SSE2. Use magic number method
	  // Note: assume MXCSR control register is set to rounding
	  // (don't use conversion to int, it will limit the value to +/- 2^31)
		eXSSEFloatVector sign = And(InXmm_a, eXSSEuint32_FSign);                                    // signbit of a
		eXSSEFloatVector signedmagic = Or(eXSSEuint32_FMagic, sign);                                     // magic number with sign of a
																						// volatile
		eXSSEFloatVector b = InXmm_a + signedmagic;                                                      // round by adding magic number
		return b - signedmagic;                                                         // .. and subtracting it again
    }
}
#ifdef FLOAT_CONTROL_PRECISE_FOR_ROUND
#pragma float_control(pop)
#endif
#undef FLOAT_CONTROL_PRECISE_FOR_ROUND

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Truncate(const eXSSEFloatVector& InXmm_a)
{
	if (eX_has_SSE41())
	{
		return _mm_round_ps(InXmm_a, _MM_FROUND_TO_ZERO | _MM_FROUND_NO_EXC);
	}
	else
	{   // SSE2. Use magic number method (conversion to int would limit the value to 2^31)
		eXuint32_t t1 = _mm_getcsr();        // MXCSR
		eXuint32_t t2 = t1 | (3 << 13);      // bit 13-14 = 11
		_mm_setcsr(t2);                    // change MXCSR
		eXSSEFloatVector r = Round(InXmm_a);                // use magic number method
		_mm_setcsr(t1);                    // restore MXCSR
		return r;
	}
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Floor(const eXSSEFloatVector& InXmm_a)
{
	if (eX_has_SSE41())
	{
		return _mm_floor_ps(InXmm_a);
	}
	else
	{  // SSE2. Use magic number method (conversion to int would limit the value to 2^31)
		eXuint32_t t1 = _mm_getcsr();        // MXCSR
		eXuint32_t t2 = t1 | (1 << 13);      // bit 13-14 = 01
		_mm_setcsr(t2);                    // change MXCSR
		eXSSEFloatVector r = Round(InXmm_a);                // use magic number method
		_mm_setcsr(t1);                    // restore MXCSR
		return r;
	}
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Ceil(const eXSSEFloatVector& InXmm_a)
{
	if (eX_has_SSE41())
	{
		return _mm_ceil_ps(InXmm_a);
	}
	else
	{  // SSE2. Use magic number method (conversion to int would limit the value to 2^31)
		eXuint32_t t1 = _mm_getcsr();        // MXCSR
		eXuint32_t t2 = t1 | (2 << 13);      // bit 13-14 = 10
		_mm_setcsr(t2);                    // change MXCSR
		eXSSEFloatVector r = Round(InXmm_a);                // use magic number method
		_mm_setcsr(t1);                    // restore MXCSR
		return r;
	}
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::If_Add(const eXSSEFloatVector& InXmm_f, const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return InXmm_a + InXmm_f & InXmm_b;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::If_Mul(const eXSSEFloatVector& InXmm_f, const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return InXmm_a * Select(InXmm_f, InXmm_b, 1.f);
}

eX_VECCALL(eXfloat_t) eXSSEFloatVector::Horizontal_Add(const eXSSEFloatVector& InXmm_a)
{
    if (eX_has_SSE3())    // SSE3 supported
    {
        __m128 t1 = _mm_hadd_ps(InXmm_a, InXmm_a);
        __m128 t2 = _mm_hadd_ps(t1, t1);
        return _mm_cvtss_f32(t2);
    }
    else                 // SSE2
    {
        __m128 t1 = _mm_movehl_ps(InXmm_a, InXmm_a);
        __m128 t2 = _mm_add_ps(InXmm_a, t1);
        __m128 t3 = _mm_shuffle_ps(t2, t2, 1);
        __m128 t4 = _mm_add_ss(t2, t3);
        return _mm_cvtss_f32(t4);
    }
}

eX_VECCALL(eXSSEInt32Vector) eXSSEFloatVector::Exponent(const eXSSEFloatVector& InXmm_a)
{
	eXSSEUint32Vector t1 = _mm_castps_si128(InXmm_a);   // reinterpret as 32-bit integer
	eXSSEUint32Vector t2 = t1 << 1;               // shift out sign bit
	eXSSEUint32Vector t3 = t2 >> 24;              // shift down logical to position 0
	eXSSEInt32Vector  t4 = eXSSEInt32Vector(t3) - eXSSEint32_FExp;      // subtract bias from exponent
	return t4;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Fraction(const eXSSEFloatVector& InXmm_a)
{
	eXSSEUint32Vector t1 = _mm_castps_si128(InXmm_a);   // reinterpret as 32-bit integer
	eXSSEUint32Vector t2 = eXSSEUint32Vector((t1 & eXSSEuint32_FNaNTest) | eXSSEuint32_F1); // set exponent to 0 + bias
	return t2;
}

eX_VECCALL(eXSSEInt32Vector) eXSSEFloatVector::Round_to_int32(const eXSSEFloatVector& InXmm_a)
{
	// Note: assume MXCSR control register is set to rounding
	return _mm_cvtps_epi32(InXmm_a);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEFloatVector::Truncate_to_int32(const eXSSEFloatVector& InXmm_a)
{
	// Note: assume MXCSR control register is set to rounding
	return _mm_cvttps_epi32(InXmm_a);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Rcp(const eXSSEFloatVector& InXmm_a)
{
#if defined(eX_AVX512)
	#if defined(eX_AVX512ER)
	if (eX_has_AVX512ER())  // AVX512ER: full precision
	{
	   // todo: if future processors have both AVX512ER and AVX512VL: _mm128_rcp28_round_ps(a, _MM_FROUND_NO_EXC);
		return _mm512_castps512_ps128(_mm512_rcp28_round_ps(_mm512_castps128_ps512(InXmm_a), _MM_FROUND_NO_EXC));
	}
	else  
	#endif
	#if defined(eX_AVX512VL)
		if (eX_has_AVX512VL())  // AVX512VL: 14 bit precision
	{
		return _mm_rcp14_ps(InXmm_a);
	}
	else 
	#endif
		if (eX_has_AVX512F())  // AVX512F: 14 bit precision
	{
		return _mm512_castps512_ps128(_mm512_rcp14_ps(_mm512_castps128_ps512(InXmm_a)));
	}
	else  // 11 bit precision
	{
#endif
		return _mm_rcp_ps(InXmm_a);
#if defined(eX_AVX512) && (defined(eX_AVX512ER) || defined(eX_AVX512VL))
	}
#endif
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Rsqrt(const eXSSEFloatVector& InXmm_a)
{
#if defined(eX_AVX512)
	#if defined(eX_AVX512ER)
	if (eX_has_AVX512ER())  // AVX512ER: full precision
	{
		// todo: if future processors have both AVX512ER and AVX512VL: _mm128_rcp28_round_ps(a, _MM_FROUND_NO_EXC);
		return _mm512_castps512_ps128(_mm512_rsqrt28_round_ps(_mm512_castps128_ps512(InXmm_a), _MM_FROUND_NO_EXC));
	}
	else 
	#endif
	#if defined(eX_AVX512VL)
		if (eX_has_AVX512VL())  // AVX512VL: 14 bit precision
	{
		return _mm_rsqrt14_ps(InXmm_a);
	}
	else 
	#endif
		if (eX_has_AVX512F())  // AVX512F: 14 bit precision
	{
		return _mm512_castps512_ps128(_mm512_rsqrt14_ps(_mm512_castps128_ps512(InXmm_a)));
	}
	else  // 11 bit precision
	{
#endif
		return _mm_rsqrt_ps(InXmm_a);
#if defined(eX_AVX512) && (defined(eX_AVX512ER) || defined(eX_AVX512VL))
	}
#endif
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Mull_Add(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b, const eXSSEFloatVector& InXmm_c)
{
	if (eX_has_FMA())
	{
		return _mm_fmadd_ps(InXmm_a, InXmm_b, InXmm_c);
	}
	else if (eX_has_FMA4())
	{
		return _mm_macc_ps(InXmm_a, InXmm_b, InXmm_c);
	}
	else
	{
		return InXmm_a * InXmm_b + InXmm_c;
	}
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Mull_Sub(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b, const eXSSEFloatVector& InXmm_c)
{
	if (eX_has_FMA())
	{
		return _mm_fmsub_ps(InXmm_a, InXmm_b, InXmm_c);
	}
	else if (eX_has_FMA4())
	{
		return _mm_msub_ps(InXmm_a, InXmm_b, InXmm_c);
	}
	else
	{
		return InXmm_a * InXmm_b - InXmm_c;
	}
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::NMull_Add(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b, const eXSSEFloatVector& InXmm_c)
{
	if (eX_has_FMA())
	{
		return _mm_fnmadd_ps(InXmm_a, InXmm_b, InXmm_c);
	}
	else if (eX_has_FMA4())
	{
		return _mm_nmacc_ps(InXmm_a, InXmm_b, InXmm_c);
	}
	else
	{
		return InXmm_c - InXmm_a * InXmm_b;
	}
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Mull_SubX(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b, const eXSSEFloatVector& InXmm_c)
{
	if (eX_has_FMA())
	{
		return _mm_fmsub_ps(InXmm_a, InXmm_b, InXmm_c);
	}
	else if (eX_has_FMA4())
	{
		return _mm_msub_ps(InXmm_a, InXmm_b, InXmm_c);
	}
	else
	{
		// calculate a * b - c with extra precision
		eXSSEInt32Vector upper_mask = eXSSEint32_neg1lshift12;               // mask to remove lower 12 bits
		eXSSEFloatVector a_high = And(InXmm_a, upper_mask);					// split into high and low parts
		eXSSEFloatVector b_high = And(InXmm_b, upper_mask);
		eXSSEFloatVector a_low = InXmm_a - a_high;
		eXSSEFloatVector b_low = InXmm_b - b_high;
		eXSSEFloatVector r1 = a_high * b_high;                            // this product is exact
		eXSSEFloatVector r2 = r1 - InXmm_c;                                     // subtract c from high product
		eXSSEFloatVector r3 = r2 + (a_high * b_low + b_high * a_low) + a_low * b_low; // add rest of product
		return r3; // + ((r2 - r1) + c);
	}
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Exp2(const eXSSEInt32Vector& InXmmi_a)
{
	eXSSEInt32Vector t1 = eXSSEInt32Vector::Max(InXmmi_a, eXSSEint32_FnegExp);         // limit to allowed range
	eXSSEInt32Vector t2 = eXSSEInt32Vector::Min(t1, eXSSEint32_FMaxExp);
	eXSSEInt32Vector t3 = t2 + eXSSEint32_FExp;              // add bias
	eXSSEInt32Vector t4 = t3 << 23;               // put exponent into position 23
	return t4;       // reinterpret as float
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Signbit(const eXSSEFloatVector& InXmm_a)
{
	eXSSEInt32Vector t1 = _mm_castps_si128(InXmm_a);    // reinterpret as 32-bit integer
	eXSSEInt32Vector t2 = t1 >> 31;               // extend sign bit
	return t2;       // reinterpret as 32-bit Boolean
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Sign_Combine(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	eXSSEFloatVector signmask = eXSSEuint32_Fneg0;  // -0.0
	return InXmm_a ^ (InXmm_b & signmask);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Is_Finite(const eXSSEFloatVector& InXmm_a)
{
	eXSSEInt32Vector t1 = _mm_castps_si128(InXmm_a);    // reinterpret as 32-bit integer
	eXSSEInt32Vector t2 = t1 << 1;                // shift out sign bit
	eXSSEInt32Vector t3 = eXSSEInt32Vector(t2 & eXSSEint32_ExpField) != eXSSEint32_ExpField; // exponent field is not all 1s
	return t3;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Is_Infinite(const eXSSEFloatVector& InXmm_a)
{
	eXSSEInt32Vector t1 = _mm_castps_si128(InXmm_a);    // reinterpret as 32-bit integer
	eXSSEInt32Vector t2 = t1 << 1;                // shift out sign bit
	return (t2 == eXSSEint32_ExpField);    // exponent is all 1s, fraction is 0
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Is_NaN(const eXSSEFloatVector& InXmm_a)
{
	eXSSEInt32Vector t1 = _mm_castps_si128(InXmm_a);   // reinterpret as 32-bit integer
	eXSSEInt32Vector t2 = t1 << 1;						// shift out sign bit
	eXSSEInt32Vector t3 = eXSSEint32_ExpField;			// exponent mask
	eXSSEInt32Vector t4 = t2 & t3;						// exponent
	eXSSEInt32Vector t5 = _mm_andnot_si128(t3, t2);		// fraction
	return (eXSSEInt32Vector((t4 == t3) & (t5 != 0)));	// exponent = all 1s and fraction != 0
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Is_Subnormal(const eXSSEFloatVector& InXmm_a)
{
	eXSSEInt32Vector t1 = _mm_castps_si128(InXmm_a);				// reinterpret as 32-bit integer
	eXSSEInt32Vector t2 = t1 << 1;									// shift out sign bit
	eXSSEInt32Vector t3 = eXSSEint32_ExpField;						// exponent mask
	eXSSEInt32Vector t4 = t2 & t3;									// exponent
	eXSSEInt32Vector t5 = _mm_andnot_si128(t3, t2);				// fraction
	return (eXSSEInt32Vector((t4 == 0) & (t5 != 0)));	// exponent = 0 and fraction != 0
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Is_Zero_or_Subnormal(const eXSSEFloatVector& InXmm_a)
{
	eXSSEInt32Vector t = _mm_castps_si128(InXmm_a);     // reinterpret as 32-bit integer
	t &= eXSSEint32_FInf;             // isolate exponent
	return eXSSEInt32Vector(t == 0);                     // exponent = 0
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Infinity()
{
	return eXSSEint32_FInf;
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::NaN(int n = 0x10)
{
	return eXSSEInt32Vector(eXSSEint32_FQNaN + n);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Slli(const eXSSEFloatVector& InXmm_a, int InCount)
{
	__m128i tempxmmia = _mm_castps_si128(InXmm_a);
	return _mm_slli_si128(tempxmmia, InCount);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Sll(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_Count)
{
	__m128i tempxmmia = _mm_castps_si128(InXmm_a);
	int tempcount = _mm_cvtsi128_si32(_mm_castps_si128(InXmm_Count));
	return _mm_slli_si128(tempxmmia, tempcount);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Srli(const eXSSEFloatVector& InXmm_a, int InCount)
{
	__m128i tempxmmia = _mm_castps_si128(InXmm_a);
	return _mm_srli_si128(tempxmmia, InCount);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Srl(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_Count)
{
	__m128i tempxmmia = _mm_castps_si128(InXmm_a);
	int tempcount = _mm_cvtsi128_si32(_mm_castps_si128(InXmm_Count));
	return _mm_srli_si128(tempxmmia, tempcount);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_cmpeq_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Less(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_cmplt_ps(InXmm_a, InXmm_b);

}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Greater(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return _mm_cmpgt_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Less_or_equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return _mm_cmple_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Greater_or_equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return _mm_cmpge_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Not_Equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return _mm_cmpneq_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Not_Less(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return _mm_cmpnlt_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Not_Less_or_equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return _mm_cmpnle_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Not_Greater(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return _mm_cmpngt_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) eXSSEFloatVector::Not_Greater_or_equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return _mm_cmpnge_ps(InXmm_a, InXmm_b);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bEqual(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return (_mm_movemask_ps(_mm_cmpeq_ps(InXmm_a, InXmm_b)) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bLess(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return (_mm_movemask_ps(_mm_cmplt_ps(InXmm_a, InXmm_b)) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bGreater(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return (_mm_movemask_ps(_mm_cmpgt_ps(InXmm_a, InXmm_b)) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bLess_or_equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return (_mm_movemask_ps(_mm_cmple_ps(InXmm_a, InXmm_b)) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bGreater_or_equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return (_mm_movemask_ps(_mm_cmpge_ps(InXmm_a, InXmm_b)) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bNot_Equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return (_mm_movemask_ps(_mm_cmpneq_ps(InXmm_a, InXmm_b)) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bNot_Less(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return (_mm_movemask_ps(_mm_cmpnlt_ps(InXmm_a, InXmm_b)) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bNot_Less_or_equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return (_mm_movemask_ps(_mm_cmpnle_ps(InXmm_a, InXmm_b)) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bNot_Greater(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return (_mm_movemask_ps(_mm_cmpngt_ps(InXmm_a, InXmm_b)) == 0x0F);
}

eX_VECCALL(eXbool_t) eXSSEFloatVector::bNot_Greater_or_equal(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
	return (_mm_movemask_ps(_mm_cmpnge_ps(InXmm_a, InXmm_b)) == 0x0F);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) operator&(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::And(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator|(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Or(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator^(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Xor(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator~(const eXSSEFloatVector& InXmm_a)
{
    return eXSSEFloatVector::Not(InXmm_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector&) operator&=(eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    InXmm_a = InXmm_a & InXmm_b;
    return InXmm_a;
}

eX_VECCALL(eXSSEFloatVector&) operator|=(eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    InXmm_a = InXmm_a | InXmm_b;
    return InXmm_a;
}

eX_VECCALL(eXSSEFloatVector&) operator^=(eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    InXmm_a = InXmm_a ^ InXmm_b;
    return InXmm_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXbool_t) operator&&(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::bLogical_And(InXmm_a, InXmm_b);
}

eX_VECCALL(eXbool_t) operator||(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::bLogical_Or(InXmm_a, InXmm_b);
}

eX_VECCALL(eXbool_t) operator!(const eXSSEFloatVector& InXmm_a)
{
    return  eXSSEFloatVector::bLogical_Not(InXmm_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
eX_VECCALL(eXSSEFloatVector) operator+(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Add(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator-(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Sub(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator*(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Mul(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator/(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Div(InXmm_a, InXmm_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                  Arithmetic assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
eX_VECCALL(eXSSEFloatVector&) operator+=(eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    InXmm_a = InXmm_a + InXmm_b;
    return InXmm_a;
}

eX_VECCALL(eXSSEFloatVector&) operator-=(eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    InXmm_a= InXmm_a - InXmm_b;
    return InXmm_a;
}

eX_VECCALL(eXSSEFloatVector&) operator*=(eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    InXmm_a = InXmm_a * InXmm_b;
    return InXmm_a;
}

eX_VECCALL(eXSSEFloatVector&) operator/=(eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    InXmm_a = InXmm_a / InXmm_b;
    return InXmm_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Prefix operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector&) operator++(eXSSEFloatVector& InXmm_a)
{
    InXmm_a =+ eXSSEfloat_1;
    return InXmm_a;
}

eX_VECCALL(eXSSEFloatVector&) operator--(eXSSEFloatVector& InXmm_a)
{
    InXmm_a =- eXSSEfloat_1;
    return InXmm_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Postfix operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) operator++(eXSSEFloatVector& InXmm_a, int)
{
    eXSSEFloatVector tmpXmmi_a = InXmm_a;
    InXmm_a =+ eXSSEfloat_1;
    return tmpXmmi_a;
}

eX_VECCALL(eXSSEFloatVector) operator--(eXSSEFloatVector& InXmm_a, int)
{
    eXSSEFloatVector tmpXmmi_a = InXmm_a;
    InXmm_a =- eXSSEfloat_1;
    return tmpXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Unary operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) operator-(const eXSSEFloatVector& InXmm_a)
{
    return eXSSEFloatVector::Xor(InXmm_a, eXSSEuint32_Fneg0);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) operator<<(const eXSSEFloatVector& InXmm_a, int InCount)
{
    return eXSSEFloatVector::Slli(InXmm_a, InCount);
}

eX_VECCALL(eXSSEFloatVector) operator<<(const eXSSEFloatVector& InXmm_a, eXSSEFloatVector& InXmm_Count)
{
    return eXSSEFloatVector::Sll(InXmm_a, InXmm_Count);
}

eX_VECCALL(eXSSEFloatVector) operator>>(const eXSSEFloatVector& InXmm_a, int InCount)
{
    return eXSSEFloatVector::Srli(InXmm_a, InCount);
}

eX_VECCALL(eXSSEFloatVector) operator>>(const eXSSEFloatVector& InXmm_a, eXSSEFloatVector& InXmm_Count)
{
    return eXSSEFloatVector::Srl(InXmm_a, InXmm_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector&) operator<<=(eXSSEFloatVector& InXmm_a, int InCount)
{
    InXmm_a = InXmm_a << InCount;
    return InXmm_a;
}

eX_VECCALL(eXSSEFloatVector&) operator<<=(eXSSEFloatVector& InXmm_a, eXSSEFloatVector& InXmm_Count)
{
    InXmm_a = InXmm_a << InXmm_Count;
    return InXmm_a;
}

eX_VECCALL(eXSSEFloatVector&) operator>>=(eXSSEFloatVector& InXmm_a, int InCount)
{
    InXmm_a = InXmm_a >> InCount;
    return InXmm_a;
}

eX_VECCALL(eXSSEFloatVector&) operator>>=(eXSSEFloatVector& InXmm_a, eXSSEFloatVector& InXmm_Count)
{
    InXmm_a = InXmm_a >> InXmm_Count;
    return InXmm_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEFloatVector) operator==(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Equal(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator<(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Less(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator<=(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Less_or_equal(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator>(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Greater(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator>=(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Greater_or_equal(InXmm_a, InXmm_b);
}

eX_VECCALL(eXSSEFloatVector) operator!=(const eXSSEFloatVector& InXmm_a, const eXSSEFloatVector& InXmm_b)
{
    return eXSSEFloatVector::Not_Equal(InXmm_a, InXmm_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Index operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXfloat_t) eXSSEFloatVector::operator[](eXuint32_t index) const
{
    return Extract(index);
}
