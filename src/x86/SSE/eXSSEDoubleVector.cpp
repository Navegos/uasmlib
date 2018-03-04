
#include "eXSSEDoubleVector.h"
#include "eXSSEConstVector.h"
#include "eXSSEInt8Vector.h"
#include "eXSSEInt16Vector.h"
#include "eXSSEInt32Vector.h"
#include "eXSSEInt64Vector.h"
#include "eXSSEUint8Vector.h"
#include "eXSSEUint16Vector.h"
#include "eXSSEUint32Vector.h"
#include "eXSSEUint64Vector.h"
#include "eXSSEFloatVector.h"
#include "eXConstants.h"
#include "eXSSEConstants.h"
#include "eXSSEMisc.h"

eXSSEDoubleVector::eXSSEDoubleVector(const __m128d& InXmmd)
{
    __Xmmd = InXmmd;
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const __m128d& InXmmd)
{
    __Xmmd = InXmmd;
    return *this;
}

eXSSEDoubleVector::operator __m128d() const
{
    return __Xmmd;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEDoubleConstVector& InXmmd)
{
    __Xmmd = InXmmd.__Xmmd;
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEDoubleConstVector& InXmmd)
{
    __Xmmd = InXmmd.__Xmmd;
    return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const __m128i& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const __m128i& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEInt32ConstVector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEInt32ConstVector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEUint32ConstVector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEUint32ConstVector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEInt64ConstVector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEInt64ConstVector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEUint64ConstVector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEUint64ConstVector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEInt8Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEInt8Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEInt16Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEInt16Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEInt32Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEInt32Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEInt64Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEInt64Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEUint8Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEUint8Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEUint16Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEUint16Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEUint32Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEUint32Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXSSEUint64Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXSSEUint64Vector& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXdouble_t InX, const eXdouble_t InY)
{
    __Xmmd = _mm_setr_pd(InX, InY);
}

eXSSEDoubleVector::eXSSEDoubleVector(eXdouble_t Ini)
{
    __Xmmd = _mm_set1_pd(Ini);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXdouble_t Ini)
{
	__Xmmd = _mm_set1_pd(Ini);
    return *this;
}

eXSSEDoubleVector::eXSSEDoubleVector(const eXdouble_t* InPtr)
{
    __Xmmd = _mm_loadu_pd(InPtr);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::operator=(const eXdouble_t* InPtr)
{
    __Xmmd = _mm_loadu_pd(InPtr);
    return *this;
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::Loadu(const eXdouble_t* InPtr)
{
    __Xmmd = _mm_loadu_pd(InPtr);
    return *this;
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::Load(const eXdouble_t* InPtr)
{
    __Xmmd = _mm_load_pd(InPtr);
    return *this;
}

eX_VECCALL(void) eXSSEDoubleVector::Storeu(eXdouble_t* OutPtr) const
{
	_mm_storeu_pd(OutPtr, __Xmmd);
}

eX_VECCALL(void) eXSSEDoubleVector::Store(eXdouble_t* OutPtr) const
{
	_mm_store_pd(OutPtr, __Xmmd);
}

eX_VECCALL(void) eXSSEDoubleVector::Stream(eXdouble_t* OutPtr) const
{
	_mm_stream_pd(OutPtr, __Xmmd);
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::SetZero()
{
	__Xmmd = _mm_setzero_pd();
	return *this;
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::Set_si128(const __m128i& InXmmi)
{
	__Xmmd = _mm_castsi128_pd(InXmmi);
	return *this;
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::Set_ps(const __m128& InXmm)
{
	__Xmmd = _mm_castps_pd(InXmm);
	return *this;
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Cast_si128(const __m128i& InXmmi)
{
	return _mm_castsi128_pd(InXmmi);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Cast_ps(const __m128& InXmm)
{
	return _mm_castps_pd(InXmm);
}

// Partial load. Load n elements and set the rest to 0
eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::Load_partial(int n, const eXdouble_t* InPtr)
{
	if (n == 1)
	{
		__Xmmd = _mm_load_sd(InPtr);
	}
	else if (n == 2)
	{
		Loadu(InPtr);
	}
	else
	{
		__Xmmd = _mm_setzero_pd();
	}
	return *this;
}

// Partial store. Store n elements
eX_VECCALL(void) eXSSEDoubleVector::Store_partial(int n, eXdouble_t* OutPtr) const
{
	if (n == 1)
	{
		_mm_store_sd(OutPtr, __Xmmd);
	}
	else if (n == 2)
	{
		Storeu(OutPtr);
	}
}

eX_VECCALL(eXSSEDoubleVector&) eXSSEDoubleVector::Cutoff(int n)
{
	__Xmmd = _mm_castps_pd(eXSSEFloatVector(_mm_castpd_ps(__Xmmd)).Cutoff(n * 2));
	return *this;
}

eX_VECCALL(const eXSSEDoubleVector&) eXSSEDoubleVector::Insert(eXuint32_t index, eXdouble_t Invalue)
{
	__m128d v2 = _mm_set_sd(Invalue);
	if (index == 0)
	{
		__Xmmd = _mm_shuffle_pd(v2, __Xmmd, 2);
	}
	else
	{
		__Xmmd = _mm_shuffle_pd(__Xmmd, v2, 0);
	}
	return *this;
}

eX_VECCALL(eXdouble_t) eXSSEDoubleVector::Extract(eXuint32_t index) const
{
	eXdouble_t x[2];
	Storeu(x);
	return x[index & 1];
}

eX_VECCALL(__m128) eXSSEDoubleVector::Get() const
{
	return __Xmmi;
}

eX_VECCALL(eXdouble_t*) eXSSEDoubleVector::Get_All() const
{
    eXdouble_t x[2];
    Storeu(x);
    return x;
}

eX_VECCALL(eXdouble_t) eXSSEDoubleVector::Get_X() const
{
    return Extract(0);
}

eX_VECCALL(eXdouble_t) eXSSEDoubleVector::Get_Y() const
{
    return Extract(1);
}

eX_VECCALL(const eXSSEDoubleVector&) eXSSEDoubleVector::Set_All(eXdouble_t InX, eXdouble_t InY)
{
    __Xmmd = _mm_setr_pd(InX, InY);
    return *this;
}

eX_VECCALL(const eXSSEDoubleVector&) eXSSEDoubleVector::Set_X(eXdouble_t Invalue)
{
    return Insert(0, Invalue);
}

eX_VECCALL(const eXSSEDoubleVector&) eXSSEDoubleVector::Set_Y(eXdouble_t Invalue)
{
    return Insert(1, Invalue);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*               Generate compile-time constant vector                 */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <eXdouble_t f0, eXdouble_t f1>
eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Constant_double()
{
	static const union
	{
		eXdouble_t f[2];
		__m128d _xmmd;
	} u = { { f0, f1 } };
	return u._xmmd;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::And(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return _mm_and_pd(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Or(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return _mm_or_pd(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Xor(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return _mm_xor_pd(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Not(const eXSSEDoubleVector& InXmmd_a)
{
	return Xor(InXmmd_a, eXSSEInt64Vector(-1));
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::AndNot(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return _mm_andnot_pd(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Horizontal_And(const eXSSEDoubleVector& InXmmd_a)
{
	if (_mm_movemask_pd(InXmmd_a) == 3)
	{
		return eXSSEInt64Vector(-1);
	}
	else
	{
		return _mm_setzero_pd();
	}
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Horizontal_Or(const eXSSEDoubleVector& InXmmd_a)
{
	if (_mm_movemask_pd(InXmmd_a) != 0)
	{
		return eXSSEInt64Vector(-1);
	}
	else
	{
		return _mm_setzero_pd();
	}
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bAnd(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	return (_mm_movemask_pd(_mm_and_pd(InXmmd_a, InXmmd_b)) == 3);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bOr(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	return (_mm_movemask_pd(_mm_or_pd(InXmmd_a, InXmmd_b)) != 0);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bHorizontal_And(const eXSSEDoubleVector& InXmmd_a)
{
	return (_mm_movemask_pd(InXmmd_a) == 3);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bHorizontal_Or(const eXSSEDoubleVector& InXmmd_a)
{
	return (_mm_movemask_pd(InXmmd_a) != 0);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Logical_And(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return InXmmd_a & InXmmd_b;
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Logical_Or(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return InXmmd_a | InXmmd_b;
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Logical_Not(const eXSSEDoubleVector& InXmmd_a)
{
	return  _mm_cmpeq_pd(InXmmd_a, _mm_setzero_pd());
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bLogical_And(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	return (_mm_movemask_pd(InXmmd_a & InXmmd_b) == 3);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bLogical_Or(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	return (_mm_movemask_pd(InXmmd_a | InXmmd_b) != 0);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bLogical_Not(const eXSSEDoubleVector& InXmmd_a)
{
	return  (_mm_movemask_pd(_mm_cmpeq_pd(InXmmd_a, _mm_setzero_pd())) == 3);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         General functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::To_Double_Low(const eXSSEInt32Vector& InXmmi_a)
{
	return _mm_cvtepi32_pd(InXmmi_a);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::To_Double_High(const eXSSEInt32Vector& InXmmi_a)
{
    return _mm_cvtepi32_pd(_mm_srli_si128(InXmmi_a, 8));
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::To_Double_Low(const eXSSEUint32Vector& InXmmi_a)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL)
	if (eX_has_AVX512VL())
	{
		return _mm_cvtepu32_pd(InXmmi_a);
	}
	else
	{
#endif
		eXSSEDoubleVector b = _mm_cvtepi32_pd(eXSSEInt32Vector(InXmmi_a & eXSSEuint32_FinvSign));             // 31 bits
		eXSSEInt32Vector c = eXSSEInt32Vector(InXmmi_a) >> 31;                              // generate mask from highest bit
		eXSSEDoubleVector d = eXSSEDoubleVector(eXSSEdouble_FixUnsigned) & eXSSEDoubleVector(c);// mask floating point constant 2^31
		return b + d;
#if defined(eX_AVX512) && defined(eX_AVX512VL)
	}
#endif
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::To_Double_High(const eXSSEUint32Vector& InXmmi_a)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL)
	if (eX_has_AVX512VL())
	{
		return _mm_cvtepu32_pd(_mm_srli_si128(InXmmi_a, 8));
	}
	else
	{
#endif
		eXSSEDoubleVector b = _mm_cvtepi32_pd(eXSSEInt32Vector((InXmmi_a >> 8) & eXSSEuint32_FinvSign));             // 31 bits
		eXSSEInt32Vector c = eXSSEInt32Vector(InXmmi_a) >> 31;                              // generate mask from highest bit
		eXSSEDoubleVector d = eXSSEDoubleVector(eXSSEdouble_FixUnsigned) & eXSSEDoubleVector(c);// mask floating point constant 2^31
		return b + d;
#if defined(eX_AVX512) && defined(eX_AVX512VL)
	}
#endif
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::To_Double(const eXSSEInt64Vector& InXmmi_a)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) && defined(eX_AVX512DQ)
	if (eX_has_AVX512VL() && eX_has_AVX512DQ())
	{
		return _mm_cvtepi64_pd(InXmmi_a);
	}
	else
	{
#endif
		eXint64_t aa[2];
		InXmmi_a.Storeu(aa);
		return eXSSEDoubleVector(*reinterpret_cast<eXdouble_t *>(aa[0]), *reinterpret_cast<eXdouble_t *>(aa[1]));
#if defined(eX_AVX512) && defined(eX_AVX512VL) && defined(eX_AVX512DQ)
	}
#endif
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::To_Double(const eXSSEUint64Vector& InXmmi_a)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) && defined(eX_AVX512DQ)
	if (eX_has_AVX512VL() && eX_has_AVX512DQ())
	{
		return _mm_cvtepu64_pd(InXmmi_a);
	}
	else
	{
#endif
		eXSSEDoubleVector b = To_Double(eXSSEInt64Vector(InXmmi_a & eXSSEuint64_DinvSign));             // 63 bits
		eXSSEInt64Vector c = eXSSEInt64Vector(InXmmi_a) >> 63;                              // generate mask from highest bit
		eXSSEDoubleVector d = eXSSEDoubleVector(eXSSEdouble_FixUnsigned64) & eXSSEDoubleVector(c);// mask floating point constant 2^63
		return b + d;
#if defined(eX_AVX512) && defined(eX_AVX512VL) && defined(eX_AVX512DQ)
	}
#endif
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::SelectControl(eXuint32_t VectorIndex0, eXuint32_t VectorIndex1)
{
	// x=Index0,y=Index1
	eXSSEInt64Vector vTemp = eXSSEInt64Vector(VectorIndex0, VectorIndex1);
	// Any non-zero entries become 0xFFFFFFFFFFFFFFFF else 0
	vTemp = vTemp > eXSSEInt64Vector(eXSSEdouble_0);
	return vTemp;
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Select(const eXSSEDoubleVector& InXmmd_control, const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	if (eX_has_SSE41())
	{
		return _mm_blendv_pd(InXmmd_b, InXmmd_a, InXmmd_control);
	}
	else
	{
		return _mm_or_pd(_mm_and_pd(InXmmd_control, InXmmd_a), _mm_andnot_pd(InXmmd_control, InXmmd_b));
	}
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::SetBinaryConstant(eXuint32_t C0, eXuint32_t C1)
{
	// Move the params to a vector
	eXSSEInt64Vector vTemp = eXSSEInt64Vector(C0, C1);
	// Mask off the low bits
	vTemp = vTemp & eXSSEInt64Vector(eXSSEuint64_1);
	// 0xFFFFFFFF on true bits
	vTemp = vTemp == eXSSEInt64Vector(eXSSEuint64_1);
	// 0xFFFFFFFF -> 1.0, 0x00000000 -> 0.0
	vTemp = vTemp & eXSSEInt64Vector(eXSSEdouble_1);
	return vTemp;
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::SplatConstant(eXint32_t IntConstant, eXuint32_t DivExponent)
{
	eX_ASSERT(IntConstant >= -32 && IntConstant <= 31);
	eX_ASSERT(DivExponent < 64);
	// Splat the int
	eXSSEInt64Vector vScale = eXSSEInt64Vector(IntConstant);
	// Convert to a float
	eXSSEDoubleVector vResult = To_Double(vScale);
	// Convert DivExponent into 1.0f/(1<<DivExponent)
	eXuint64_t uScale = 0x3ff0000000000000 - (DivExponent << 52);
	// Splat the scalar value (It's really a float)
	vScale = eXSSEInt64Vector(uScale);
	// Multiply by the reciprocal (Perform a right shift by DivExponent)
	vResult = _mm_mul_pd(vResult, _mm_castsi128_pd(vScale));
	return vResult;
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::SplatConstantInt(eXint32_t IntConstant)
{
	__m128i V = eXSSEInt64Vector(IntConstant);
	return V;
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Swizzle(const eXSSEDoubleVector& InXmmd_a, eXuint32_t SwizzleX, eXuint32_t SwizzleY)
{
	eX_ASSERTIF_MSG(SwizzleX <= 1, "SwizzleX parameter out of range");
	eX_ASSERTIF_MSG(SwizzleY <= 1, "SwizzleY parameter out of range");

	return eX_MM_PERMUTE_PD(InXmmd_a, eX_MM_SHUFFLE2(SwizzleX, SwizzleY));
}

template <int PermuteX, int PermuteY>
eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::permute_template(const eXSSEDoubleVector& InXmmd_a)
{
	// is shuffling needed
	const bool do_shuffle = (PermuteX > 0) || (PermuteY != 1 && PermuteY >= 0);
	// is zeroing needed
	const bool do_zero = ((PermuteX | PermuteY) < 0 && (PermuteX | PermuteY) & 0x80);

	if (do_zero && !do_shuffle)
	{                          // zeroing, not shuffling
		if ((PermuteX & PermuteY) < 0) return _mm_setzero_pd();        // zero everything
														   // zero some elements
		__m128i mask1 = eXSSEIntVector::Constant_int64< -eXint64_t(PermuteX >= 0), -eXint64_t(PermuteY >= 0) >();
		return  _mm_and_pd(InXmmd_a, _mm_castsi128_pd(mask1));     // zero with AND mask
	}
	else if (do_shuffle && !do_zero)
	{                     // shuffling, not zeroing        
		return eX_MM_PERMUTE_PD(InXmmd_a, eX_MM_SHUFFLE2(PermuteX, PermuteY);
	}
	else if (do_shuffle && do_zero)
	{                      // shuffling and zeroing        
						   // both shuffle and zero
		if (PermuteX < 0 && PermuteY >= 0)
		{                           // zero low half, shuffle high half
			return _mm_shuffle_pd(_mm_setzero_pd(), InXmmd_a, (PermuteY & 1) << 1);
		}
		if (PermuteX >= 0 && PermuteY < 0)
		{                           // shuffle low half, zero high half
			return _mm_shuffle_pd(InXmmd_a, _mm_setzero_pd(), PermuteX & 1);
		}
	}
	return InXmmd_a;     // trivial case: do nothing
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Permute(const eXSSEDoubleVector& InXmmd_a, int PermuteX, int PermuteY)
{
	// is shuffling needed
	const bool do_shuffle = (PermuteX > 0) || (PermuteY != 1 && PermuteY >= 0);
	// is zeroing needed
	const bool do_zero = ((PermuteX | PermuteY) < 0 && (PermuteX | PermuteY) & 0x80);

	if (do_zero && !do_shuffle)
	{                          // zeroing, not shuffling
		if ((PermuteX & PermuteY) < 0) return _mm_setzero_pd();        // zero everything
																	   // zero some elements
		__m128i mask1 = eXSSEInt64Vector(-eXint64_t(PermuteX >= 0), -eXint64_t(PermuteY >= 0));
		return  _mm_and_pd(InXmmd_a, _mm_castsi128_pd(mask1));     // zero with AND mask
	}
	else if (do_shuffle && !do_zero)
	{                     // shuffling, not zeroing        
		return eX_MM_PERMUTE_PD(InXmmd_a, eX_MM_SHUFFLE2(PermuteX, PermuteY);
	}
	else if (do_shuffle && do_zero)
	{                      // shuffling and zeroing        
						   // both shuffle and zero
		if (PermuteX < 0 && PermuteY >= 0)
		{                           // zero low half, shuffle high half
			return _mm_shuffle_pd(_mm_setzero_pd(), InXmmd_a, (PermuteY & 1) << 1);
		}
		if (PermuteX >= 0 && PermuteY < 0)
		{                           // shuffle low half, zero high half
			return _mm_shuffle_pd(InXmmd_a, _mm_setzero_pd(), PermuteX & 1);
		}
	}
	return InXmmd_a;     // trivial case: do nothing
}

template <int BlendX, int BlendY>
eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::blend_template(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	// Combine all the indexes into a single bitfield, with 8 bits for each
	const int m1 = (BlendX & 3) | (BlendY & 3) << 8;

	// Mask to zero out negative indexes
	const int m2 = (BlendX < 0 ? 0 : 0xFF) | (BlendY < 0 ? 0 : 0xFF) << 8;

	if ((m1 & 0x0202 & m2) == 0)
	{
		// no elements from b, only elements from a and possibly zero
		return permute_template<BlendX, BlendY>(InXmmd_a);
	}
	if (((m1 ^ 0x0202) & 0x0202 & m2) == 0)
	{
		// no elements from a, only elements from b and possibly zero
		return permute_template<BlendX & ~2, BlendY & ~2>(InXmmd_b);
	}
	// selecting from both a and b without zeroing
	if ((BlendX & 2) == 0)
	{ // first element from a, second element from b
		return _mm_shuffle_pd(InXmmd_a, InXmmd_b, eX_MM_SHUFFLE2(BlendX, BlendY);
	}
	else
	{         // first element from b, second element from a
		return _mm_shuffle_pd(InXmmd_b, InXmmd_a, eX_MM_SHUFFLE2(BlendX, BlendY);
	}
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Blend(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b, int BlendX, int BlendY)
{
	// Combine all the indexes into a single bitfield, with 8 bits for each
	const int m1 = (BlendX & 3) | (BlendY & 3) << 8;

	// Mask to zero out negative indexes
	const int m2 = (BlendX < 0 ? 0 : 0xFF) | (BlendY < 0 ? 0 : 0xFF) << 8;

	if ((m1 & 0x0202 & m2) == 0)
	{
		// no elements from b, only elements from a and possibly zero
		return Permute(InXmmd_a, BlendX, BlendY);
	}
	if (((m1 ^ 0x0202) & 0x0202 & m2) == 0)
	{
		// no elements from a, only elements from b and possibly zero
		return Permute(InXmmd_b, BlendX & ~2, BlendY & ~2);
	}
	// selecting from both a and b without zeroing
	if ((BlendX & 2) == 0)
	{ // first element from a, second element from b
		return _mm_shuffle_pd(InXmmd_a, InXmmd_b, eX_MM_SHUFFLE2(BlendX, BlendY);
	}
	else
	{         // first element from b, second element from a
		return _mm_shuffle_pd(InXmmd_b, InXmmd_a, eX_MM_SHUFFLE2(BlendX, BlendY);
	}
}

template <int SignX, int SignY>
eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::change_sign_template(const eXSSEDoubleVector& InXmmd_a)
{
	if ((SignX | SignY) == 0) return a;
	__m128i mask = eXSSEIntVector::Constant_uint64<SignX ? eXuint64_DSign : eXuint64_0, SignY ? eXuint64_DSign : eXuint64_0>();
	return  _mm_xor_pd(a, _mm_castsi128_pd(mask));     // flip sign bits
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Change_Sign(const eXSSEDoubleVector& InXmmd_a, int SignX, int SignY)
{
	if ((SignX | SignY) == 0) return a;
	__m128i mask = eXSSEInt64Vector(SignX ? eXuint64_DSign : eXuint64_0, 0, SignY ? eXuint64_DSign : eXuint64_0);
	return  _mm_xor_pd(a, _mm_castsi128_pd(mask));     // flip sign bits
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Add(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return _mm_add_pd(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Sub(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return _mm_sub_pd(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Mul(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	return _mm_mul_pd(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Div(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	return _mm_div_pd(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Max(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	return _mm_max_pd(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Min(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	return _mm_min_pd(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Abs(const eXSSEDoubleVector& InXmmd_a)
{
	__m128d mask = eXSSEint64_DAbs;
	return _mm_and_pd(InXmmd_a, mask);
	/*__m128 vResult = _mm_setzero_ps();
	vResult = _mm_sub_ps(vResult, InXmmd_a);
	return = _mm_max_ps(vResult, InXmmd_a);*/
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Sqrt(const eXSSEDoubleVector& InXmmd_a)
{
	return _mm_sqrt_pd(InXmmd_a);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Square(const eXSSEDoubleVector& InXmmd_a)
{
	return _mm_mul_pd(InXmmd_a, InXmmd_a);
}

// avoid unsafe optimization in function round
#if defined(__GNUC__) && !defined(__INTEL_COMPILER) && !defined(__clang__) && (eX_INTRINSET < 41)
eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Round(const eXSSEDoubleVector& InXmmd_a) __attribute__((optimize("-fno-unsafe-math-optimizations")));
#elif defined(__clang__) && (eX_INTRINSET < 41)
// eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Round(const eXSSEDoubleVector& InXmmd_a) __attribute__ ((optnone));
// This doesn't work, but current versions of Clang (3.5) don't optimize away signedmagic, even with -funsafe-math-optimizations
#elif defined(_MSC_VER) || defined(__INTEL_COMPILER) && (eX_INTRINSET < 41)
#pragma float_control(push) 
#pragma float_control(precise,on)
#define FLOAT_CONTROL_PRECISE_FOR_ROUND
#endif
eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Round(const eXSSEDoubleVector& InXmmd_a)
{
	if (eX_has_SSE41())
	{
		return _mm_round_pd(InXmmd_a, _MM_FROUND_TO_NEAREST_INT | _MM_FROUND_NO_EXC);
	}
	else
	{ // SSE2. Use magic number method
	  // Note: assume MXCSR control register is set to rounding
	  // (don't use conversion to int, it will limit the value to +/- 2^31)
		eXSSEDoubleVector sign = _mm_and_pd(InXmmd_a, eXSSEuint64_DSign);               // signbit of a
		eXSSEDoubleVector signedmagic = _mm_or_pd(eXSSEuint64_DMagic, sign);            // magic number with sign of a
		eXSSEDoubleVector b = InXmmd_a + signedmagic;                                   // round by adding magic number
		return b - signedmagic;                                                         // .. and subtracting it again
	}
}
#ifdef FLOAT_CONTROL_PRECISE_FOR_ROUND
#pragma float_control(pop)
#endif
#undef FLOAT_CONTROL_PRECISE_FOR_ROUND

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Truncate(const eXSSEDoubleVector& InXmmd_a)
{
	if (eX_has_SSE41())
	{
		return _mm_round_pd(InXmmd_a, _MM_FROUND_TO_ZERO | _MM_FROUND_NO_EXC);
	}
	else
	{   // SSE2. Use magic number method (conversion to int would limit the value to 2^31)
		eXuint32_t t1 = _mm_getcsr();        // MXCSR
		eXuint32_t t2 = t1 | (3 << 13);      // bit 13-14 = 11
		_mm_setcsr(t2);                    // change MXCSR
		eXSSEFloatVector r = Round(InXmmd_a);                // use magic number method
		_mm_setcsr(t1);                    // restore MXCSR
		return r;
	}
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Floor(const eXSSEDoubleVector& InXmmd_a)
{
	if (eX_has_SSE41())
	{
		return _mm_floor_pd(InXmmd_a);
	}
	else
	{  // SSE2. Use magic number method (conversion to int would limit the value to 2^31)
		eXuint32_t t1 = _mm_getcsr();        // MXCSR
		eXuint32_t t2 = t1 | (1 << 13);      // bit 13-14 = 01
		_mm_setcsr(t2);                    // change MXCSR
		eXSSEFloatVector r = Round(InXmmd_a);                // use magic number method
		_mm_setcsr(t1);                    // restore MXCSR
		return r;
	}
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Ceil(const eXSSEDoubleVector& InXmmd_a)
{
	if (eX_has_SSE41())
	{
		return _mm_ceil_pd(InXmmd_a);
	}
	else
	{  // SSE2. Use magic number method (conversion to int would limit the value to 2^31)
		eXuint32_t t1 = _mm_getcsr();        // MXCSR
		eXuint32_t t2 = t1 | (2 << 13);      // bit 13-14 = 10
		_mm_setcsr(t2);                    // change MXCSR
		eXSSEFloatVector r = Round(InXmmd_a);                // use magic number method
		_mm_setcsr(t1);                    // restore MXCSR
		return r;
	}
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::If_Add(const eXSSEDoubleVector& InXmmd_f, const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return InXmmd_a + InXmmd_f & InXmmd_b;
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::If_Mul(const eXSSEDoubleVector& InXmmd_f, const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	return InXmmd_a * Select(InXmmd_f, InXmmd_b, eXSSEdouble_1);
}

eX_VECCALL(eXdouble_t) eXSSEDoubleVector::Horizontal_Add(const eXSSEDoubleVector& InXmmd_a)
{
	if (eX_has_SSE3())    // SSE3 supported
	{
		__m128 t1 = _mm_hadd_pd(InXmmd_a, InXmmd_a);
    return _mm_cvtsd_f64(t1); 
	}
	else                 // SSE2
	{
		__m128  t0 = _mm_castpd_ps(InXmmd_a);
		__m128d t1 = _mm_castps_pd(_mm_movehl_ps(t0, t0));
		__m128d t2 = _mm_add_sd(a, t1);
		return _mm_cvtsd_f64(t2);
	}
}

eX_VECCALL(eXSSEInt64Vector) eXSSEDoubleVector::Exponent(const eXSSEDoubleVector& InXmmd_a)
{
	eXSSEUint64Vector t1 = _mm_castps_si128(InXmmd_a);   // reinterpret as 32-bit integer
	eXSSEUint64Vector t2 = t1 << 1;               // shift out sign bit
	eXSSEUint64Vector t3 = t2 >> 53;              // shift down logical to position 0
	eXSSEInt64Vector  t4 = eXSSEInt64Vector(t3) - eXSSEint64_DExp;      // subtract bias from exponent
	return t4;
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Fraction(const eXSSEDoubleVector& InXmmd_a)
{
	eXSSEUint64Vector t1 = _mm_castps_si128(InXmmd_a);   // reinterpret as 32-bit integer
	eXSSEUint64Vector t2 = eXSSEUint64Vector((t1 & eXSSEuint64_DNaNTest) | eXSSEuint64_D1); // set exponent to 0 + bias
	return t2;
}

eX_VECCALL(eXSSEInt32Vector) eXSSEDoubleVector::Round_to_int32(const eXSSEDoubleVector& InXmmd_a)
{
	eXSSEInt32Vector t1 = _mm_cvtpd_epi32(InXmmd_a);
	return t1;
}

eX_VECCALL(eXSSEInt32Vector) eXSSEDoubleVector::Truncate_to_int32(const eXSSEDoubleVector& InXmmd_a)
{
	eXSSEInt32Vector t1 = _mm_cvttpd_epi32(InXmmd_a);
	return t1;
}

eX_VECCALL(eXSSEInt32Vector) eXSSEDoubleVector::Round_to_int32(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	// Note: assume MXCSR control register is set to rounding
	eXSSEInt32Vector t1 = _mm_cvtpd_epi32(InXmmd_a);
	eXSSEInt32Vector t2 = _mm_cvtpd_epi32(InXmmd_b);
	return eXSSEInt32Vector::blend_template<0, 1, 4, 5>(t1, t2);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEDoubleVector::Truncate_to_int32(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
	eXSSEInt32Vector t1 = _mm_cvttpd_epi32(InXmmd_a);
	eXSSEInt32Vector t2 = _mm_cvttpd_epi32(InXmmd_b);
	return eXSSEInt32Vector::blend_template<0, 1, 4, 5>(t1, t2);
}

eX_VECCALL(eXSSEInt64Vector) eXSSEDoubleVector::Round_to_int64(const eXSSEDoubleVector& InXmmd_a)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) && defined(eX_AVX512DQ)
	if (eX_has_AVX512VL() && eX_has_AVX512DQ())
	{
		return _mm_cvtpd_epi64(InXmmd_a);
	}
	else
	{
#endif
		eXdouble_t aa[2];
		const eXSSEDoubleVector ta = Round(InXmmd_a);
		ta.Storeu(aa);
		return eXSSEInt64Vector(*reinterpret_cast<eXint64_t *>(aa[0]), *reinterpret_cast<eXint64_t *>(aa[1]));
#if defined(eX_AVX512) && defined(eX_AVX512VL) && defined(eX_AVX512DQ)
	}
#endif
}

eX_VECCALL(eXSSEInt64Vector) eXSSEDoubleVector::Truncate_to_int64(const eXSSEDoubleVector& InXmmd_a)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) && defined(eX_AVX512DQ)
	if (eX_has_AVX512VL() && eX_has_AVX512DQ())
	{
		return _mm_cvttpd_epi64(InXmmd_a);
	}
	else
	{
#endif
		eXdouble_t aa[2];
		InXmmd_a.Storeu(aa);
		return eXSSEInt64Vector(*reinterpret_cast<eXint64_t *>(aa[0]), *reinterpret_cast<eXint64_t *>(aa[1]));
#if defined(eX_AVX512) && defined(eX_AVX512VL) && defined(eX_AVX512DQ)
	}
#endif
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Rcp(const eXSSEDoubleVector& InXmmd_a)
{
#if defined(eX_AVX512)
#if defined(eX_AVX512ER)
	if (eX_has_AVX512ER())  // AVX512ER: full precision
	{
		// todo: if future processors have both AVX512ER and AVX512VL: _mm128_rcp28_round_pd(a, _MM_FROUND_NO_EXC);
		return _mm512_castpd512_pd128(_mm512_rcp28_round_pd(_mm512_castpd128_pd512(InXmmd_a), _MM_FROUND_NO_EXC));
	}
	else
#endif
#if defined(eX_AVX512VL)
		if (eX_has_AVX512VL())  // AVX512VL: 14 bit precision
		{
			return _mm_rcp14_pd(InXmmd_a);
		}
		else
#endif
			if (eX_has_AVX512F())  // AVX512F: 14 bit precision
			{
				return _mm512_castpd512_pd128(_mm512_rcp14_pd(_mm512_castpd128_pd512(InXmmd_a)));
			}
			else  // 11 bit precision
			{
#endif
				return _mm_rcp_pd(InXmmd_a);
#if defined(eX_AVX512) && (defined(eX_AVX512ER) || defined(eX_AVX512VL))
			}
#endif
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Rsqrt(const eXSSEDoubleVector& InXmmd_a)
{
#if defined(eX_AVX512)
#if defined(eX_AVX512ER)
	if (eX_has_AVX512ER())  // AVX512ER: full precision
	{
		// todo: if future processors have both AVX512ER and AVX512VL: _mm128_rcp28_round_ps(a, _MM_FROUND_NO_EXC);
		return _mm512_castps512_ps128(_mm512_rsqrt28_round_ps(_mm512_castps128_ps512(InXmmd_a), _MM_FROUND_NO_EXC));
	}
	else
#endif
#if defined(eX_AVX512VL)
		if (eX_has_AVX512VL())  // AVX512VL: 14 bit precision
		{
			return _mm_rsqrt14_ps(InXmmd_a);
		}
		else
#endif
			if (eX_has_AVX512F())  // AVX512F: 14 bit precision
			{
				return _mm512_castps512_ps128(_mm512_rsqrt14_ps(_mm512_castps128_ps512(InXmmd_a)));
			}
			else  // 11 bit precision
			{
#endif
				return _mm_rsqrt_ps(InXmmd_a);
#if defined(eX_AVX512) && (defined(eX_AVX512ER) || defined(eX_AVX512VL))
			}
#endif
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Mull_Add(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b, const eXSSEDoubleVector& InXmmd_c)
{
	if (eX_has_FMA())
	{
		return _mm_fmadd_pd(InXmmd_a, InXmmd_b, InXmmd_c);
	}
	else if (eX_has_FMA4())
	{
		return _mm_macc_pd(InXmmd_a, InXmmd_b, InXmmd_c);
	}
	else
	{
		return InXmmd_a * InXmmd_b + InXmmd_c;
	}
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Mull_Sub(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b, const eXSSEDoubleVector& InXmmd_c)
{
	if (eX_has_FMA())
	{
		return _mm_fmsub_pd(InXmmd_a, InXmmd_b, InXmmd_c);
	}
	else if (eX_has_FMA4())
	{
		return _mm_msub_pd(InXmmd_a, InXmmd_b, InXmmd_c);
	}
	else
	{
		return InXmmd_a * InXmmd_b - InXmmd_c;
	}
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::NMull_Add(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b, const eXSSEDoubleVector& InXmmd_c)
{
	if (eX_has_FMA())
	{
		return _mm_fnmadd_pd(InXmmd_a, InXmmd_b, InXmmd_c);
	}
	else if (eX_has_FMA4())
	{
		return _mm_nmacc_pd(InXmmd_a, InXmmd_b, InXmmd_c);
	}
	else
	{
		return InXmmd_c - InXmmd_a * InXmmd_b;
	}
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Mull_SubX(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b, const eXSSEDoubleVector& InXmmd_c)
{
	if (eX_has_FMA())
	{
		return _mm_fmsub_pd(InXmmd_a, InXmmd_b, InXmmd_c);
	}
	else if (eX_has_FMA4())
	{
		return _mm_msub_pd(InXmmd_a, InXmmd_b, InXmmd_c);
	}
	else
	{
		// calculate a * b - c with extra precision
		eXSSEInt64Vector upper_mask = eXSSEint64_neg1lshift27;               // mask to remove lower 12 bits
		eXSSEDoubleVector a_high = And(InXmmd_a, upper_mask);					// split into high and low parts
		eXSSEDoubleVector b_high = And(InXmmd_b, upper_mask);
		eXSSEDoubleVector a_low = InXmmd_a - a_high;
		eXSSEDoubleVector b_low = InXmmd_b - b_high;
		eXSSEDoubleVector r1 = a_high * b_high;                            // this product is exact
		eXSSEDoubleVector r2 = r1 - InXmmd_c;                                     // subtract c from high product
		eXSSEDoubleVector r3 = r2 + (a_high * b_low + b_high * a_low) + a_low * b_low; // add rest of product
		return r3; // + ((r2 - r1) + c);
	}
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Slli(const eXSSEDoubleVector& InXmmd_a, int InCount)
{
    return _mm_slli_epi64(InXmmd_a, InCount);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Sll(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_Count)
{
    return _mm_sll_epi64(InXmmd_a, InXmmd_Count);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Srai(const eXSSEDoubleVector& InXmmd_a, int InCount)
{
    // instruction does not exist. Split into 32-bit shifts
    if (InCount <= 32)
    {
        __m128d bb = _mm_cvtsi32_si128(InCount);               // b
        __m128d sra = _mm_sra_epi32(InXmmd_a, bb);                // a >> b signed dwords
        __m128d srl = _mm_srl_epi64(InXmmd_a, bb);                // a >> b unsigned qwords
        __m128d mask = _mm_setr_epi32(0, -1, 0, -1);          // mask for signed high part
        return  Select(mask, sra, srl);
    }
    else
    {  // b > 32
        __m128d bm32 = _mm_cvtsi32_si128(InCount - 32);            // b - 32
        __m128d sign = _mm_srai_epi32(InXmmd_a, 31);               // sign of a
        __m128d sra2 = _mm_sra_epi32(InXmmd_a, bm32);              // a >> (b-32) signed dwords
        __m128d sra3 = _mm_srli_epi64(sra2, 32);            // a >> (b-32) >> 32 (second shift unsigned qword)
        __m128d mask = _mm_setr_epi32(0, -1, 0, -1);          // mask for high part containing only sign
        return  Select(mask, sign, sra3);
    }
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Sra(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_Count)
{
    // instruction does not exist. Split into 32-bit shifts
    if (_mm_cvtsi128_si32(InXmmd_Count) <= 32)
    {
        // __m128d bb = _mm_cvtsi32_si128(InCount);               // b
        __m128d sra = _mm_sra_epi32(InXmmd_a, InXmmd_Count);                // a >> b signed dwords
        __m128d srl = _mm_srl_epi64(InXmmd_a, InXmmd_Count);                // a >> b unsigned qwords
        __m128d mask = _mm_setr_epi32(0, -1, 0, -1);          // mask for signed high part
        return  Select(mask, sra, srl);
    }
    else
    {  // b > 32
        __m128d bm32 = _mm_cvtsi32_si128(_mm_cvtsi128_si32(InXmmd_Count) - 32);            // b - 32
        __m128d sign = _mm_srai_epi32(InXmmd_a, 31);               // sign of a
        __m128d sra2 = _mm_sra_epi32(InXmmd_a, bm32);              // a >> (b-32) signed dwords
        __m128d sra3 = _mm_srli_epi64(sra2, 32);            // a >> (b-32) >> 32 (second shift unsigned qword)
        __m128d mask = _mm_setr_epi32(0, -1, 0, -1);          // mask for high part containing only sign
        return  Select(mask, sign, sra3);
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    if (eX_has_XOP())   // AMD XOP instruction
    {
        return  _mm_comeq_epi64(InXmmd_a, InXmmd_b);
    }
    else if (eX_has_SSE41())
    {
        return  _mm_cmpeq_epi64(InXmmd_a, InXmmd_b);
    }
    else               // SSE2
    {
        // no 64 compare instruction. Do two 32 bit compares
        __m128d com32 = _mm_cmpeq_epi32(InXmmd_a, InXmmd_b);                 // 32 bit compares
        __m128d com32s = _mm_shuffle_epi32(com32, 0xB1);        // swap low and high dwords
        __m128d test = _mm_and_si128(com32, com32s);          // low & high
        __m128d teste = _mm_srai_epi32(test, 31);              // extend sign bit to 32 bits
        return _mm_shuffle_epi32(teste, 0xF5);        // extend sign bit to 64 bits
    }
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Lessthan(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    if (eX_has_XOP())   // AMD XOP instruction
    {
        return  _mm_comgt_epi64(InXmmd_b, InXmmd_a);
    }    
    else if (eX_has_SSE42())  // SSE4.2
    {
        return  _mm_cmpgt_epi64(InXmmd_b, InXmmd_a);
    }
    else               // SSE2
    {
        // no 64 compare instruction. Subtract
        __m128d s = _mm_sub_epi64(InXmmd_a, InXmmd_b);                   // a-b
                                                           // a < b if a and b have same sign and s < 0 or (a < 0 and b >= 0)
                                                           // The latter () corrects for overflow
        __m128d axb = _mm_xor_si128(InXmmd_a, InXmmd_b);                   // a ^ b
        __m128d anb = _mm_andnot_si128(InXmmd_b, InXmmd_a);                // a & ~b
        __m128d snaxb = _mm_andnot_si128(axb, s);              // s & ~(a ^ b)
        __m128d or1 = _mm_or_si128(anb, snaxb);              // (a & ~b) | (s & ~(a ^ b))
        __m128d teste = _mm_srai_epi32(or1, 31);               // extend sign bit to 32 bits
        return _mm_shuffle_epi32(teste, 0xF5);        // extend sign bit to 64 bits
    }
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Greaterthan(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return Lessthan(InXmmd_b, InXmmd_a);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Lessthan_or_equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comle_epi64(InXmmd_a, InXmmd_b);
    }
    else
    {
        return Lessthan(InXmmd_a, InXmmd_b) | Equal(InXmmd_a, InXmmd_b);
    }
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Greaterthan_or_equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comge_epi64(InXmmd_a, InXmmd_b);
    }
    else
    {
        return Greaterthan(InXmmd_a, InXmmd_b) | Equal(InXmmd_a, InXmmd_b);
    }
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Not_Equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comneq_epi64(InXmmd_a, InXmmd_b);
    }
    else  // SSE2
    {
        return Not(Equal(InXmmd_a, InXmmd_b));
    }
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Not_Lessthan(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return Not(Lessthan(InXmmd_a, InXmmd_b));
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Not_Lessthan_or_equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return Greaterthan(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Not_Greaterthan(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return Not(Greaterthan(InXmmd_a, InXmmd_b));
}

eX_VECCALL(eXSSEDoubleVector) eXSSEDoubleVector::Not_Greaterthan_or_equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return Lessthan(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bEqual(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return ((_mm_movemask_epi8(Equal(InXmmd_a, InXmmd_b)) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bLessthan(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return ((_mm_movemask_epi8(Lessthan(InXmmd_a, InXmmd_b)) == 0xFFFF) != 0);

}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bGreaterthan(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return ((_mm_movemask_epi8(Greaterthan(InXmmd_a, InXmmd_b)) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bLessthan_or_equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comle_epi64(InXmmd_a, InXmmd_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan_or_equal(InXmmd_a, InXmmd_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bGreaterthan_or_equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comge_epi64(InXmmd_a, InXmmd_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan_or_equal(InXmmd_a, InXmmd_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bNot_Equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comneq_epi64(InXmmd_a, InXmmd_b)) == 0xFFFF) != 0);
    }
    else  // SSE2
    {
        return ((_mm_movemask_epi8(Not_Equal(InXmmd_a, InXmmd_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bNot_Lessthan(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return bGreaterthan_or_equal(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bNot_Lessthan_or_equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return bGreaterthan(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bNot_Greaterthan(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return bLessthan_or_equal(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXbool_t) eXSSEDoubleVector::bNot_Greaterthan_or_equal(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return bLessthan(InXmmd_a, InXmmd_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) operator&(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::And(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) operator|(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Or(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) operator^(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Xor(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) operator~(const eXSSEDoubleVector& InXmmd_a)
{
    return eXSSEDoubleVector::Not(InXmmd_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector&) operator&=(eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    InXmmd_a = InXmmd_a & InXmmd_b;
    return InXmmd_a;
}

eX_VECCALL(eXSSEDoubleVector&) operator|=(eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    InXmmd_a = InXmmd_a | InXmmd_b;
    return InXmmd_a;
}

eX_VECCALL(eXSSEDoubleVector&) operator^=(eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    InXmmd_a = InXmmd_a ^ InXmmd_b;
    return InXmmd_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXbool_t) operator&&(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::bLogical_And(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXbool_t) operator||(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::bLogical_Or(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXbool_t) operator!(const eXSSEDoubleVector& InXmmd_a)
{
    return  eXSSEDoubleVector::bLogical_Not(InXmmd_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) operator+(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Add(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) operator-(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Sub(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) operator*(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Mul(InXmmd_a, InXmmd_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                  Arithmetic assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector&) operator+=(eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    InXmmd_a = InXmmd_a + InXmmd_b;
    return InXmmd_a;
}

eX_VECCALL(eXSSEDoubleVector&) operator-=(eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    InXmmd_a= InXmmd_a - InXmmd_b;
    return InXmmd_a;
}

eX_VECCALL(eXSSEDoubleVector&) operator*=(eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    InXmmd_a = InXmmd_a * InXmmd_b;
    return InXmmd_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Prefix operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector&) operator++(eXSSEDoubleVector& InXmmd_a)
{
    InXmmd_a = InXmmd_a + 1;
    return InXmmd_a;
}

eX_VECCALL(eXSSEDoubleVector&) operator--(eXSSEDoubleVector& InXmmd_a)
{
    InXmmd_a = InXmmd_a - 1;
    return InXmmd_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Postfix operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) operator++(eXSSEDoubleVector& InXmmd_a, int)
{
    eXSSEDoubleVector tmpXmmd_a;
    tmpXmmd_a = InXmmd_a;
    InXmmd_a = InXmmd_a + 1;
    return tmpXmmd_a;
}

eX_VECCALL(eXSSEDoubleVector) operator--(eXSSEDoubleVector& InXmmd_a, int)
{
    eXSSEDoubleVector tmpXmmd_a; 
    tmpXmmd_a = InXmmd_a;
    InXmmd_a = InXmmd_a - 1;
    return tmpXmmd_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Unary operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) operator-(const eXSSEDoubleVector& InXmmd_a)
{
    return _mm_sub_epi64(_mm_setzero_si128(), InXmmd_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) operator<<(const eXSSEDoubleVector& InXmmd_a, int InCount)
{
    return eXSSEDoubleVector::Slli(InXmmd_a, InCount);
}

eX_VECCALL(eXSSEDoubleVector) operator<<(const eXSSEDoubleVector& InXmmd_a, eXSSEDoubleVector& InXmmd_Count)
{
    return eXSSEDoubleVector::Sll(InXmmd_a, InXmmd_Count);
}

eX_VECCALL(eXSSEDoubleVector) operator>>(const eXSSEDoubleVector& InXmmd_a, int InCount)
{
    return eXSSEDoubleVector::Srai(InXmmd_a, InCount);
}

eX_VECCALL(eXSSEDoubleVector) operator>>(const eXSSEDoubleVector& InXmmd_a, eXSSEDoubleVector& InXmmd_Count)
{
    return eXSSEDoubleVector::Sra(InXmmd_a, InXmmd_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector&) operator<<=(eXSSEDoubleVector& InXmmd_a, int InCount)
{
    InXmmd_a = InXmmd_a << InCount;
    return InXmmd_a;
}

eX_VECCALL(eXSSEDoubleVector&) operator<<=(eXSSEDoubleVector& InXmmd_a, eXSSEDoubleVector& InXmmd_Count)
{
    InXmmd_a = InXmmd_a << InXmmd_Count;
    return InXmmd_a;
}

eX_VECCALL(eXSSEDoubleVector&) operator>>=(eXSSEDoubleVector& InXmmd_a, int InCount)
{
    InXmmd_a = InXmmd_a >> InCount;
    return InXmmd_a;
}

eX_VECCALL(eXSSEDoubleVector&) operator>>=(eXSSEDoubleVector& InXmmd_a, eXSSEDoubleVector& InXmmd_Count)
{
    InXmmd_a = InXmmd_a >> InXmmd_Count;
    return InXmmd_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEDoubleVector) operator==(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Equal(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) operator<(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Lessthan(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) operator<=(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Lessthan_or_equal(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) operator>(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Greaterthan(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) operator>=(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Greaterthan_or_equal(InXmmd_a, InXmmd_b);
}

eX_VECCALL(eXSSEDoubleVector) operator!=(const eXSSEDoubleVector& InXmmd_a, const eXSSEDoubleVector& InXmmd_b)
{
    return eXSSEDoubleVector::Not_Equal(InXmmd_a, InXmmd_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Index operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXdouble_t) eXSSEDoubleVector::operator[](uint32_t index) const
{
    return Extract(index);
}
