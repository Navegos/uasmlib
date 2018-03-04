
#include "eXSSEInt32Vector.h"
#include "eXSSEConstVector.h"
#include "eXSSEInt8Vector.h"
#include "eXSSEInt16Vector.h"
#include "eXSSEInt64Vector.h"
#include "eXSSEUint8Vector.h"
#include "eXSSEUint16Vector.h"
#include "eXSSEUint32Vector.h"
#include "eXSSEUint64Vector.h"
#include "eXConstants.h"
#include "eXSSEConstants.h"
#include "eXSSEMisc.h"

eXSSEInt32Vector::eXSSEInt32Vector(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
    return *this;
}

eXSSEInt32Vector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEInt32Vector::eXSSEInt32Vector(const eXSSEInt32ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const eXSSEInt32ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
    return *this;
}

eXSSEInt32Vector::eXSSEInt32Vector(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt32Vector::eXSSEInt32Vector(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt32Vector::eXSSEInt32Vector(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt32Vector::eXSSEInt32Vector(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt32Vector::eXSSEInt32Vector(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt32Vector::eXSSEInt32Vector(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt32Vector::eXSSEInt32Vector(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt32Vector::eXSSEInt32Vector(eXint32_t InX, eXint32_t InY, eXint32_t InZ, eXint32_t InW)
{
    __Xmmi = _mm_setr_epi32(InX, InY, InZ, InW);
}

eXSSEInt32Vector::eXSSEInt32Vector(eXint32_t Ini)
{
    __Xmmi = _mm_set1_epi32(Ini);
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const eXint32_t Ini)
{
    __Xmmi = _mm_set1_epi32(Ini);
    return *this;
}

eXSSEInt32Vector::eXSSEInt32Vector(int Ini)
{
    __Xmmi = _mm_set1_epi32(Ini);
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const int Ini)
{
    __Xmmi = _mm_set1_epi32(Ini);
    return *this;
}

eXSSEInt32Vector::eXSSEInt32Vector(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::operator=(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::Loadu(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::Load(const void* InPtr)
{
    __Xmmi = _mm_load_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(void) eXSSEInt32Vector::Storeu(void* OutPtr) const
{
    eXSSEIntVector::Storeu(OutPtr);
}

eX_VECCALL(void) eXSSEInt32Vector::Store(void* OutPtr) const
{
    eXSSEIntVector::Store(OutPtr);
}

// Partial load. Load n elements and set the rest to 0
eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::Load_partial(int n, const void* InPtr)
{
    switch (n)
    {
        case 0:
            *this = 0;  break;
        case 1:
            __Xmmi = _mm_cvtsi32_si128(*reinterpret_cast<const eXint32_t*>(InPtr));  break;
        case 2:
            // intrinsic for movq is missing!
            __Xmmi = _mm_setr_epi32(reinterpret_cast<const eXint32_t*>(InPtr)[0], reinterpret_cast<const eXint32_t*>(InPtr)[1], 0, 0);  break;
        case 3:
            __Xmmi = _mm_setr_epi32(reinterpret_cast<const eXint32_t*>(InPtr)[0], reinterpret_cast<const eXint32_t*>(InPtr)[1], reinterpret_cast<const eXint32_t*>(InPtr)[2], 0);  break;
        case 4:
            Loadu(InPtr);  break;
        default:
            break;
    }
    return *this;
}

// Partial store. Store n elements
eX_VECCALL(void) eXSSEInt32Vector::Store_partial(int n, void* OutPtr) const
{
    union
    {
        eXint32_t i[4];
        eXint64_t q[2];
    } u;
    switch (n)
    {
        case 1:
            *reinterpret_cast<eXint32_t*>(OutPtr) = _mm_cvtsi128_si32(__Xmmi);  break;
        case 2:
                // intrinsic for movq is missing!
                Storeu(u.i);
                *reinterpret_cast<eXint64_t*>(OutPtr) = u.q[0];  break;
        case 3:
                Storeu(u.i);
                *reinterpret_cast<eXint64_t*>(OutPtr) = u.q[0];
                (reinterpret_cast<eXint32_t*>(OutPtr))[2] = u.i[2];  break;
       case 4:
                Storeu(OutPtr);  break;
            default:
                break;
    }
}

eX_VECCALL(eXSSEInt32Vector&) eXSSEInt32Vector::Cutoff(int n)
{
    *this = eXSSEInt8Vector(__Xmmi).Cutoff(n * 4);
    return *this;
}

eX_VECCALL(const eXSSEInt32Vector&) eXSSEInt32Vector::Insert(eXuint32_t index, eXint32_t Invalue)
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

eX_VECCALL(eXint32_t) eXSSEInt32Vector::Extract(eXuint32_t index) const
{
    if (eX_has_SSE41())
    {
        return _mm_extract_epi32(__Xmmi, index & 3);
    }
    else               // SSE2
    {
        eXint32_t x[4];
        Storeu(x);
        return x[index & 3];
    }
}

eX_VECCALL(eXint32_t*) eXSSEInt32Vector::Get_All() const
{
    eXint32_t x[4];
    Storeu(x);
    return x;
}

eX_VECCALL(eXint32_t) eXSSEInt32Vector::Get_X() const
{
    return Extract(0);
}

eX_VECCALL(eXint32_t) eXSSEInt32Vector::Get_Y() const
{
    return Extract(1);
}

eX_VECCALL(eXint32_t) eXSSEInt32Vector::Get_Z() const
{
    return Extract(2);
}

eX_VECCALL(eXint32_t) eXSSEInt32Vector::Get_W() const
{
    return Extract(3);
}

eX_VECCALL(const eXSSEInt32Vector&) eXSSEInt32Vector::Set_All(eXint32_t InX, eXint32_t InY, eXint32_t InZ, eXint32_t InW)
{
    __Xmmi = _mm_setr_epi32(InX, InY, InZ, InW);
    return *this;
}

eX_VECCALL(const eXSSEInt32Vector&) eXSSEInt32Vector::Set_X(eXint32_t Invalue)
{
    return Insert(0, Invalue);
}

eX_VECCALL(const eXSSEInt32Vector&) eXSSEInt32Vector::Set_Y(eXint32_t Invalue)
{
    return Insert(1, Invalue);
}

eX_VECCALL(const eXSSEInt32Vector&) eXSSEInt32Vector::Set_Z(eXint32_t Invalue)
{
    return Insert(2, Invalue);
}

eX_VECCALL(const eXSSEInt32Vector&) eXSSEInt32Vector::Set_W(eXint32_t Invalue)
{
    return Insert(3, Invalue);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Convert_from_ps(const __m128& InXmm, eXuint32_t MulExponent)
{
	eX_ASSERT(MulExponent < 32);
	__m128 vResult = _mm_set_ps1(static_cast<eXfloat_t>(1U << (MulExponent & 31)));
	vResult = _mm_mul_ps(vResult, InXmm);
	// In case of positive overflow, detect it
	__m128 vOverflow = _mm_cmpgt_ps(vResult, eXSSEfloat_FixmaxI32);
	// Float to int conversion
	__m128i vResulti = _mm_cvttps_epi32(vResult);
	// If there was positive overflow, set to 0x7FFFFFFF
	vResult = _mm_and_ps(vOverflow, eXSSEint32_FAbs);
	vOverflow = _mm_andnot_ps(vOverflow, _mm_castsi128_ps(vResulti));
	vOverflow = _mm_or_ps(vOverflow, vResult);
	vResulti = _mm_castps_si128(vOverflow);
	return vResulti;
}

/*
eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Convert_from_pd(const __m128d& InXmmd, eXuint32_t MulExponent)
{
	eX_ASSERT(MulExponent < 64);
	__m128d vResult = _mm_set1_pd(static_cast<double>(1U << (MulExponent & 63)));
	vResult = _mm_mul_pd(vResult, InXmmd);
	// In case of positive overflow, detect it
	__m128d vOverflow = _mm_cmpgt_pd(vResult, eXSSEdouble_FixmaxI64);
	// Float to int conversion
	__m128i vResulti = _mm_cvttpd_epi32(vResult);
	// If there was positive overflow, set to 0x7FFFFFFF
	vResult = _mm_and_pd(vOverflow, eXSSEint64_DAbs);
	vOverflow = _mm_andnot_pd(vOverflow, _mm_castsi128_pd(vResulti));
	vOverflow = _mm_or_pd(vOverflow, vResult);
	vResulti = _mm_castpd_si128(vOverflow);
	return vResulti;
}*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::And(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEIntVector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Or(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEIntVector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Xor(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEIntVector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Not(const eXSSEInt32Vector& InXmmi_a)
{
    return eXSSEIntVector::Not(InXmmi_a);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::AndNot(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEIntVector::AndNot(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Horizontal_And(const eXSSEInt32Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_And(InXmmi_a);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Horizontal_Or(const eXSSEInt32Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_Or(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bAnd(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEIntVector::bAnd(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bOr(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEIntVector::bOr(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bHorizontal_And(const eXSSEInt32Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_And(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bHorizontal_Or(const eXSSEInt32Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_Or(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Logical_And(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return InXmmi_a & InXmmi_b;
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Logical_Or(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return InXmmi_a | InXmmi_b;
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Logical_Not(const eXSSEInt32Vector& InXmmi_a)
{
    return  _mm_cmpeq_epi32(InXmmi_a, _mm_setzero_si128());
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bLogical_And(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(InXmmi_a & InXmmi_b) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bLogical_Or(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return (_mm_movemask_epi8(InXmmi_a | InXmmi_b) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bLogical_Not(const eXSSEInt32Vector& InXmmi_a)
{
    return  ((_mm_movemask_epi8(_mm_cmpeq_epi32(InXmmi_a, _mm_setzero_si128())) == 0xFFFF) != 0);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         General functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <int PermuteX, int PermuteY, int PermuteZ, int PermuteW>
eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::permute_template(const eXSSEInt32Vector& InXmmi_a)
{
	// Combine all the indexes into a single bitfield, with 4 bits for each
	const eXuint32_t m1 = (PermuteX & 3) | (PermuteY & 3) << 4 | (PermuteZ & 3) << 8 | (PermuteW & 3) << 12;

	// Mask to zero out negative indexes
	const eXuint32_t mz = (PermuteX < 0 ? 0 : 0xF) | (PermuteY < 0 ? 0 : 0xF) << 4 | (PermuteZ < 0 ? 0 : 0xF) << 8 | (PermuteW < 0 ? 0 : 0xF) << 12;

	// Mask indicating required zeroing of all indexes, with 4 bits for each, 0 for index = -1, 0xF for index >= 0 or -256
	const eXuint32_t ssz = ((PermuteX & 0x80) ? 0 : 0xF) | ((PermuteY & 0x80) ? 0 : 0xF) << 4 | ((PermuteZ & 0x80) ? 0 : 0xF) << 8 | ((PermuteW & 0x80) ? 0 : 0xF) << 12;

	// Mask indicating 0 for don't care, 0xF for non-negative value of required zeroing
	const eXuint32_t md = mz | ~ssz;

	// Test if permutation needed
	const eXbool_t do_shuffle = ((m1 ^ 0x00003210) & mz) != 0;

	// is zeroing needed
	const eXbool_t do_zero = (ssz != 0xFFFF);

	if (mz == 0)
	{
		return _mm_setzero_si128();    // special case: all zero or don't care
	}
	// Test if we can do with 64-bit permute only
	if ((m1 & 0x0101 & mz) == 0        // even indexes are even or negative
		&& (~m1 & 0x1010 & mz) == 0        // odd  indexes are odd  or negative
		&& ((m1 ^ ((m1 + 0x0101) << 4)) & 0xF0F0 & mz & (mz << 4)) == 0  // odd index == preceding even index +1 or at least one of them negative
		&& ((mz ^ (mz << 4)) & 0xF0F0 & md & md << 4) == 0)
	{      // each pair of indexes are both negative or both positive or one of them don't care
		const int j0 = PermuteX >= 0 ? PermuteX / 2 : (PermuteX & 0x80) ? PermuteX : PermuteY >= 0 ? PermuteY / 2 : PermuteY;
		const int j1 = PermuteZ >= 0 ? PermuteZ / 2 : (PermuteZ & 0x80) ? PermuteZ : PermuteW >= 0 ? PermuteW / 2 : PermuteW;
		return eXSSEInt64Vector::permute_template<j0, j1>(InXmmi_a);    // 64 bit permute
	}
	if (eX_has_SSSE3())  // SSSE3
	{
		if (do_shuffle && do_zero)
		{
			// With SSSE3 we can do both with the PSHUFB instruction
			const int j0 = (PermuteX & 3) << 2;
			const int j1 = (PermuteY & 3) << 2;
			const int j2 = (PermuteZ & 3) << 2;
			const int j3 = (PermuteW & 3) << 2;
			__m128i mask1 = Constant_int32<
				PermuteX < 0 ? -1 : j0 | (j0 + 1) << 8 | (j0 + 2) << 16 | (j0 + 3) << 24,
				PermuteY < 0 ? -1 : j1 | (j1 + 1) << 8 | (j1 + 2) << 16 | (j1 + 3) << 24,
				PermuteZ < 0 ? -1 : j2 | (j2 + 1) << 8 | (j2 + 2) << 16 | (j2 + 3) << 24,
				PermuteW < 0 ? -1 : j3 | (j3 + 1) << 8 | (j3 + 2) << 16 | (j3 + 3) << 24 >();
			return _mm_shuffle_epi8(InXmmi_a, mask1);
		}
	}
	__m128i t1;
	if (do_shuffle)
	{  // permute
		t1 = _mm_shuffle_epi32(InXmmi_a, eX_MM_SHUFFLE4(PermuteX, PermuteY, PermuteZ, PermuteW);
	}
	else
	{
		t1 = InXmmi_a;
	}
	if (do_zero)
	{     // set some elements to zero
		__m128i mask2 = Constant_int32< -int(PermuteX >= 0), -int(PermuteY >= 0), -int(PermuteZ >= 0), -int(PermuteW >= 0) >();
		t1 = _mm_and_si128(t1, mask2);
	}
	return t1;
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Permute(const eXSSEInt32Vector& InXmmi_a, int PermuteX, int PermuteY, int PermuteZ, int PermuteW)
{
	eX_ASSERTIF_MSG((PermuteX >= -1) && (PermuteX <= 3), "PermuteX parameter out of range");
	eX_ASSERTIF_MSG((PermuteY >= -1) && (PermuteY <= 3), "PermuteY parameter out of range");
	eX_ASSERTIF_MSG((PermuteZ >= -1) && (PermuteZ <= 3), "PermuteZ parameter out of range");
	eX_ASSERTIF_MSG((PermuteW >= -1) && (PermuteW <= 3), "PermuteW parameter out of range");

	// Combine all the indexes into a single bitfield, with 4 bits for each
	const eXuint32_t m1 = (PermuteX & 3) | (PermuteY & 3) << 4 | (PermuteZ & 3) << 8 | (PermuteW & 3) << 12;

	// Mask to zero out negative indexes
	const eXuint32_t mz = (PermuteX < 0 ? 0 : 0xF) | (PermuteY < 0 ? 0 : 0xF) << 4 | (PermuteZ < 0 ? 0 : 0xF) << 8 | (PermuteW < 0 ? 0 : 0xF) << 12;

	// Mask indicating required zeroing of all indexes, with 4 bits for each, 0 for index = -1, 0xF for index >= 0 or -256
	const eXuint32_t ssz = ((PermuteX & 0x80) ? 0 : 0xF) | ((PermuteY & 0x80) ? 0 : 0xF) << 4 | ((PermuteZ & 0x80) ? 0 : 0xF) << 8 | ((PermuteW & 0x80) ? 0 : 0xF) << 12;

	// Mask indicating 0 for don't care, 0xF for non-negative value of required zeroing
	const eXuint32_t md = mz | ~ssz;

	// Test if permutation needed
	const eXbool_t do_shuffle = ((m1 ^ 0x00003210) & mz) != 0;

	// is zeroing needed
	const eXbool_t do_zero = (ssz != 0xFFFF);

	if (mz == 0)
	{
		return _mm_setzero_si128();    // special case: all zero or don't care
	}
	// Test if we can do with 64-bit permute only
	if ((m1 & 0x0101 & mz) == 0        // even indexes are even or negative
		&& (~m1 & 0x1010 & mz) == 0        // odd  indexes are odd  or negative
		&& ((m1 ^ ((m1 + 0x0101) << 4)) & 0xF0F0 & mz & (mz << 4)) == 0  // odd index == preceding even index +1 or at least one of them negative
		&& ((mz ^ (mz << 4)) & 0xF0F0 & md & md << 4) == 0)
	{      // each pair of indexes are both negative or both positive or one of them don't care
		const int j0 = PermuteX >= 0 ? PermuteX / 2 : (PermuteX & 0x80) ? PermuteX : PermuteY >= 0 ? PermuteY / 2 : PermuteY;
		const int j1 = PermuteZ >= 0 ? PermuteZ / 2 : (PermuteZ & 0x80) ? PermuteZ : PermuteW >= 0 ? PermuteW / 2 : PermuteW;
		return eXSSEInt64Vector::Permute(InXmmi_a.__Xmmi, j0, j1);    // 64 bit permute
	}
	if (eX_has_SSSE3())  // SSSE3
	{
		if (do_shuffle && do_zero)
		{
			// With SSSE3 we can do both with the PSHUFB instruction
			const int j0 = (PermuteX & 3) << 2;
			const int j1 = (PermuteY & 3) << 2;
			const int j2 = (PermuteZ & 3) << 2;
			const int j3 = (PermuteW & 3) << 2;
			__m128i mask1 = eXSSEInt32Vector(PermuteX < 0 ? -1 : j0 | (j0 + 1) << 8 | (j0 + 2) << 16 | (j0 + 3) << 24,
									  PermuteY < 0 ? -1 : j1 | (j1 + 1) << 8 | (j1 + 2) << 16 | (j1 + 3) << 24,
									  PermuteZ < 0 ? -1 : j2 | (j2 + 1) << 8 | (j2 + 2) << 16 | (j2 + 3) << 24,
									  PermuteW < 0 ? -1 : j3 | (j3 + 1) << 8 | (j3 + 2) << 16 | (j3 + 3) << 24);
			return _mm_shuffle_epi8(InXmmi_a, mask1);
		}
	}
	__m128i t1;
	if (do_shuffle)
	{  // permute
		t1 = _mm_shuffle_epi32(InXmmi_a, eX_MM_SHUFFLE4(PermuteX, PermuteY, PermuteZ, PermuteW));
	}
	else
	{
		t1 = InXmmi_a;
	}
	if (do_zero)
	{     // set some elements to zero
		__m128i mask2 = eXSSEInt32Vector(-int(PermuteX >= 0), -int(PermuteY >= 0), -int(PermuteZ >= 0), -int(PermuteW >= 0));
		t1 = _mm_and_si128(t1, mask2);
	}
	return t1;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Add(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return _mm_add_epi32(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Sub(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return _mm_sub_epi32(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Mul(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
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

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Max(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    if (eX_has_SSE41())
    {
        return _mm_max_epi32(InXmmi_a, InXmmi_b);
    }
    else               // SSE2
    {
        return Select(InXmmi_a > InXmmi_b, InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Min(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    if (eX_has_SSE41())
    {
        return _mm_min_epi32(InXmmi_a, InXmmi_b);
    }
    else               // SSE2
    {
        return Select(InXmmi_a < InXmmi_b, InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Abs(const eXSSEInt32Vector& InXmmi_a)
{
    if (eX_has_SSSE3())    // SSSE3 supported
    {
        return _mm_sign_epi32(InXmmi_a, InXmmi_a);
    }
    else  // SSE2
    {
        __m128i sign = _mm_srai_epi32(InXmmi_a, 31);                   // sign of a
        __m128i inv = _mm_xor_si128(InXmmi_a, sign);                  // invert bits if negative
        return         _mm_sub_epi32(inv, sign);                // add 1
    }
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Add_Sat(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    __m128i sum = _mm_add_epi32(InXmmi_a, InXmmi_b);                  // a + b
    __m128i axb = _mm_xor_si128(InXmmi_a, InXmmi_b);                  // check if a and b have different sign
    __m128i axs = _mm_xor_si128(InXmmi_a, sum);                // check if a and sum have different sign
    __m128i overf1 = _mm_andnot_si128(axb, axs);            // check if sum has wrong sign
    __m128i overf2 = _mm_srai_epi32(overf1, 31);            // -1 if overflow
    __m128i asign = _mm_srli_epi32(InXmmi_a, 31);                 // 1  if a < 0
    __m128i sat1 = _mm_srli_epi32(overf2, 1);             // 7FFFFFFF if overflow
    __m128i sat2 = _mm_add_epi32(sat1, asign);            // 7FFFFFFF if positive overflow 80000000 if negative overflow
    return  Select(overf2, sat2, sum);                      // sum if not overflow, else sat2
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Sub_Sat(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    __m128i diff = _mm_sub_epi32(InXmmi_a, InXmmi_b);                  // a + b
    __m128i axb = _mm_xor_si128(InXmmi_a, InXmmi_b);                  // check if a and b have different sign
    __m128i axs = _mm_xor_si128(InXmmi_a, diff);               // check if a and sum have different sign
    __m128i overf1 = _mm_and_si128(axb, axs);               // check if sum has wrong sign
    __m128i overf2 = _mm_srai_epi32(overf1, 31);            // -1 if overflow
    __m128i asign = _mm_srli_epi32(InXmmi_a, 31);                 // 1  if a < 0
    __m128i sat1 = _mm_srli_epi32(overf2, 1);             // 7FFFFFFF if overflow
    __m128i sat2 = _mm_add_epi32(sat1, asign);            // 7FFFFFFF if positive overflow 80000000 if negative overflow
    return  Select(overf2, sat2, diff);                     // diff if not overflow, else sat2
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Abs_Sat(const eXSSEInt32Vector& InXmmi_a)
{
    __m128i absa = Abs(InXmmi_a);                               // abs(a)
    __m128i overfl = _mm_srai_epi32(absa, 31);              // sign
    return           _mm_add_epi32(absa, overfl);           // subtract 1 if 0x80000000
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::If_Add(const eXSSEInt32Vector& InXmmi_f, const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return InXmmi_a + InXmmi_f & InXmmi_b;
}

eX_VECCALL(eXint32_t) eXSSEInt32Vector::Horizontal_Add(const eXSSEInt32Vector& InXmmi_a)
{
    if (eX_has_XOP())    // AMD XOP instruction set
    {
        __m128i sum1 = _mm_haddq_epi32(InXmmi_a);
        __m128i sum2 = _mm_shuffle_epi32(sum1, 0x0E);          // high element
        __m128i sum3 = _mm_add_epi32(sum1, sum2);              // sum
        return          _mm_cvtsi128_si32(sum3);               // truncate to 32 bits
    }
    else if (eX_has_SSSE3())    // SSSE3 supported
    {
        __m128i sum1 = _mm_hadd_epi32(InXmmi_a, InXmmi_a);                   // horizontally add 4 elements in 2 steps
        __m128i sum2 = _mm_hadd_epi32(sum1, sum1);
        return          _mm_cvtsi128_si32(sum2);               // 32 bit sum
    }
    else                 // SSE2
    {
        __m128i sum1 = _mm_shuffle_epi32(InXmmi_a, 0x0E);             // 2 high elements
        __m128i sum2 = _mm_add_epi32(InXmmi_a, sum1);                 // 2 sums
        __m128i sum3 = _mm_shuffle_epi32(sum2, 0x01);          // 1 high element
        __m128i sum4 = _mm_add_epi32(sum2, sum3);              // 2 sums
        return          _mm_cvtsi128_si32(sum4);               // 32 bit sum
    }
}

eX_VECCALL(eXint64_t) eXSSEInt32Vector::Horizontal_Add_x(const eXSSEInt32Vector& InXmmi_a)
{
    if (eX_has_XOP())    // AMD XOP instruction set
    {
        __m128i sum1 = _mm_haddq_epi32(InXmmi_a);

        __m128i sum2 = _mm_unpackhi_epi64(sum1, sum1);         // high qword
        __m128i sum3 = _mm_add_epi64(sum1, sum2);              // add
#if defined (eX_X64)
        return          _mm_cvtsi128_si64(sum3);               // 64 bit mode
#else
        union
        {
            __m128i x;  // silly definition of _mm_storel_epi64 requires __m128i
            int64_t i;
        } u;
        _mm_storel_epi64(&u.x, sum3);
        return u.i;
#endif
    }
    else
    {
        __m128i signs = _mm_srai_epi32(InXmmi_a, 31);                  // sign of all elements
        __m128i a01 = _mm_unpacklo_epi32(InXmmi_a, signs);           // sign-extended a0, a1
        __m128i a23 = _mm_unpackhi_epi32(InXmmi_a, signs);           // sign-extended a2, a3
        __m128i sum1 = _mm_add_epi64(a01, a23);                // add

        __m128i sum2 = _mm_unpackhi_epi64(sum1, sum1);         // high qword
        __m128i sum3 = _mm_add_epi64(sum1, sum2);              // add
#if defined (eX_X64)
        return          _mm_cvtsi128_si64(sum3);               // 64 bit mode
#else
        union
        {
            __m128i x;  // silly definition of _mm_storel_epi64 requires __m128i
            int64_t i;
        } u;
        _mm_storel_epi64(&u.x, sum3);
        return u.i;
#endif
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                      Vector rotation functions                      */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Rotate(const eXSSEInt32Vector& InXmmi_a, int b)
{
#if defined(eX_AVX512) && defined(eX_AVX512VL) 
    if (eX_has_AVX512VL())  // AVX512VL instruction set
    {
        return _mm_rolv_epi32(InXmmi_a, _mm_set1_epi32(b));
    }
    else
#endif
    if (eX_has_XOP())  // AMD XOP instruction set
    {
        return _mm_rot_epi32(InXmmi_a, _mm_set1_epi32(b));
    }
    else
    {
        __m128i left = _mm_sll_epi32(InXmmi_a, _mm_cvtsi32_si128(b & 0x1F));      // a << b 
        __m128i right = _mm_srl_epi32(InXmmi_a, _mm_cvtsi32_si128((32 - b) & 0x1F)); // a >> (32 - b)
        __m128i rot = _mm_or_si128(left, right);                          // or
        return  rot;
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Slli(const eXSSEInt32Vector& InXmmi_a, int InCount)
{
    return _mm_slli_epi32(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Sll(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_Count)
{
    return _mm_sll_epi32(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Srai(const eXSSEInt32Vector& InXmmi_a, int InCount)
{
    return _mm_srai_epi32(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Sra(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_Count)
{
    return _mm_sra_epi32(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return _mm_cmpeq_epi32(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Lessthan(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return _mm_cmplt_epi32(InXmmi_a, InXmmi_b);

}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Greaterthan(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return _mm_cmpgt_epi32(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Lessthan_or_equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comle_epi32(InXmmi_a, InXmmi_b);
    }
    else
    {
        return Lessthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Greaterthan_or_equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comge_epi32(InXmmi_a, InXmmi_b);
    }
    else
    {
        return Greaterthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Not_Equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comneq_epi32(InXmmi_a, InXmmi_b);
    }
    else  // SSE2
    {
        return Not(Equal(InXmmi_a, InXmmi_b));
    }
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Not_Lessthan(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return Not(Lessthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Not_Lessthan_or_equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Not_Greaterthan(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return Not(Greaterthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEInt32Vector) eXSSEInt32Vector::Not_Greaterthan_or_equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bEqual(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(_mm_cmpeq_epi32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bLessthan(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(_mm_cmplt_epi32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);

}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bGreaterthan(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(_mm_cmpgt_epi32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bLessthan_or_equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comle_epi32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bGreaterthan_or_equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comge_epi32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bNot_Equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comneq_epi32(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else  // SSE2
    {
        return ((_mm_movemask_epi8(Not_Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bNot_Lessthan(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return bGreaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bNot_Lessthan_or_equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return bGreaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bNot_Greaterthan(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return bLessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt32Vector::bNot_Greaterthan_or_equal(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return bLessthan(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) operator&(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) operator|(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) operator^(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) operator~(const eXSSEInt32Vector& InXmmi_a)
{
    return eXSSEInt32Vector::Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector&) operator&=(eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a & InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt32Vector&) operator|=(eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a | InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt32Vector&) operator^=(eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a ^ InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXbool_t) operator&&(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::bLogical_And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator||(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::bLogical_Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator!(const eXSSEInt32Vector& InXmmi_a)
{
    return  eXSSEInt32Vector::bLogical_Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
eX_VECCALL(eXSSEInt32Vector) operator+(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Add(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) operator-(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Sub(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) operator*(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Mul(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                  Arithmetic assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
eX_VECCALL(eXSSEInt32Vector&) operator+=(eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a + InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt32Vector&) operator-=(eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    InXmmi_a= InXmmi_a - InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt32Vector&) operator*=(eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a * InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Prefix operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector&) operator++(eXSSEInt32Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a + 1;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt32Vector&) operator--(eXSSEInt32Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a - 1;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Postfix operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) operator++(eXSSEInt32Vector& InXmmi_a, int)
{
    eXSSEInt32Vector tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a + 1;
    return tmpXmmi_a;
}

eX_VECCALL(eXSSEInt32Vector) operator--(eXSSEInt32Vector& InXmmi_a, int)
{
    eXSSEInt32Vector tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a - 1;
    return tmpXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Unary operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) operator-(const eXSSEInt32Vector& InXmmi_a)
{
    return _mm_sub_epi32(_mm_setzero_si128(), InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) operator<<(const eXSSEInt32Vector& InXmmi_a, int InCount)
{
    return eXSSEInt32Vector::Slli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt32Vector) operator<<(const eXSSEInt32Vector& InXmmi_a, eXSSEInt32Vector& InXmmi_Count)
{
    return eXSSEInt32Vector::Sll(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEInt32Vector) operator>>(const eXSSEInt32Vector& InXmmi_a, int InCount)
{
    return eXSSEInt32Vector::Srai(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt32Vector) operator>>(const eXSSEInt32Vector& InXmmi_a, eXSSEInt32Vector& InXmmi_Count)
{
    return eXSSEInt32Vector::Sra(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector&) operator<<=(eXSSEInt32Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a << InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt32Vector&) operator<<=(eXSSEInt32Vector& InXmmi_a, eXSSEInt32Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a << InXmmi_Count;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt32Vector&) operator>>=(eXSSEInt32Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a >> InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt32Vector&) operator>>=(eXSSEInt32Vector& InXmmi_a, eXSSEInt32Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a >> InXmmi_Count;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt32Vector) operator==(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) operator<(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) operator<=(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Lessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) operator>(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) operator>=(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Greaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt32Vector) operator!=(const eXSSEInt32Vector& InXmmi_a, const eXSSEInt32Vector& InXmmi_b)
{
    return eXSSEInt32Vector::Not_Equal(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Index operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXint32_t) eXSSEInt32Vector::operator[](uint32_t index) const
{
    return Extract(index);
}
