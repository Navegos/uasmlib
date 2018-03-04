
#include "eXSSEInt16Vector.h"
#include "eXSSEConstVector.h"
#include "eXSSEInt8Vector.h"
#include "eXSSEInt32Vector.h"
#include "eXSSEInt64Vector.h"
#include "eXSSEUint8Vector.h"
#include "eXSSEUint16Vector.h"
#include "eXSSEUint32Vector.h"
#include "eXSSEUint64Vector.h"
#include "eXConstants.h"
#include "eXSSEConstants.h"
#include "eXSSEMisc.h"

eXSSEInt16Vector::eXSSEInt16Vector(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
    return *this;
}

eXSSEInt16Vector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEInt16Vector::eXSSEInt16Vector(const eXSSEInt16ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const eXSSEInt16ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
    return *this;
}

eXSSEInt16Vector::eXSSEInt16Vector(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt16Vector::eXSSEInt16Vector(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt16Vector::eXSSEInt16Vector(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt16Vector::eXSSEInt16Vector(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt16Vector::eXSSEInt16Vector(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const eXSSEInt8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt16Vector::eXSSEInt16Vector(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt16Vector::eXSSEInt16Vector(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt16Vector::eXSSEInt16Vector(eXint16_t InX0, eXint16_t InY0, eXint16_t InZ0, eXint16_t InW0, eXint16_t InX1, eXint16_t InY1, eXint16_t InZ1, eXint16_t InW1)
{
    __Xmmi = _mm_setr_epi16(InX0, InY0, InZ0, InW0, InX1, InY1, InZ1, InW1);
}

eXSSEInt16Vector::eXSSEInt16Vector(eXint16_t Ini)
{
    __Xmmi = _mm_set1_epi16(Ini);
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const eXint16_t Ini)
{
    __Xmmi = _mm_set1_epi16(Ini);
    return *this;
}

eXSSEInt16Vector::eXSSEInt16Vector(int Ini)
{
    __Xmmi = _mm_set1_epi16(static_cast<short>(Ini));
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const int Ini)
{
    __Xmmi = _mm_set1_epi16(static_cast<const short>(Ini));
    return *this;
}

eXSSEInt16Vector::eXSSEInt16Vector(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::operator=(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::Loadu(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::Load(const void* InPtr)
{
    __Xmmi = _mm_load_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(void) eXSSEInt16Vector::Storeu(void* OutPtr) const
{
    eXSSEIntVector::Storeu(OutPtr);
}

eX_VECCALL(void) eXSSEInt16Vector::Store(void* OutPtr) const
{
    eXSSEIntVector::Store(OutPtr);
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::Load_partial(int n, const void* InPtr)
{
    if (n >= 8) Loadu(InPtr);
    else if (n <= 0)  *this = 0;
    else if (((int)(eXintptr_t)InPtr & 0xFFF) < 0xFF0)
    {
        // InPtr is at least 16 bytes from a page boundary. OK to read 16 bytes
        Loadu(InPtr);
    }
    else
    {
        // worst case. read 1 byte at a time and suffer store forwarding penalty
        eXint16_t x[8];
        for (int i = 0; i < n; i++) x[i] = (reinterpret_cast<const eXint16_t*>(InPtr))[i];
        Loadu(x);
    }
    Cutoff(n);
    return *this;
}

eX_VECCALL(void) eXSSEInt16Vector::Store_partial(int n, void* OutPtr) const
{
    if (n >= 8)
    {
        Storeu(OutPtr);
        return;
    }
    if (n <= 0) return;
    // we are not using _mm_maskmoveu_si128 because it is too slow on many processors
    union
    {
        eXint8_t  c[16];
        eXint16_t s[8];
        eXint32_t i[4];
        eXint64_t q[2];
    } u;
    Storeu(u.c);
    int j = 0;
    if (n & 4)
    {
        *reinterpret_cast<eXint64_t*>(OutPtr) = u.q[0];
        j += 8;
    }
    if (n & 2)
    {
        (reinterpret_cast<eXint32_t*>(OutPtr))[j / 4] = u.i[j/4];
        j += 4;
    }
    if (n & 1)
    {
        (reinterpret_cast<eXint16_t*>(OutPtr))[j / 2] = u.s[j/2];
    }
}

eX_VECCALL(eXSSEInt16Vector&) eXSSEInt16Vector::Cutoff(int n)
{
    *this = eXSSEInt8Vector(__Xmmi).Cutoff(n * 2);
    return *this;
}

eX_VECCALL(const eXSSEInt16Vector&) eXSSEInt16Vector::Insert(eXuint32_t index, eXint16_t Invalue)
{
    __Xmmi = _mm_insert_epi16(__Xmmi, Invalue, index & 7);
    return *this;
}

eX_VECCALL(eXint16_t) eXSSEInt16Vector::Extract(eXuint32_t index) const
{
    return static_cast<eXint16_t>(_mm_extract_epi16(__Xmmi, index & 7));
}

eX_VECCALL(eXint16_t*) eXSSEInt16Vector::Get_All() const
{
    eXint16_t x[16];
    Storeu(x);
    return x;
}

eX_VECCALL(eXint16_t) eXSSEInt16Vector::Get_X0() const
{
    return Extract(0);
}

eX_VECCALL(eXint16_t) eXSSEInt16Vector::Get_Y0() const
{
    return Extract(1);
}

eX_VECCALL(eXint16_t) eXSSEInt16Vector::Get_Z0() const
{
    return Extract(2);
}

eX_VECCALL(eXint16_t) eXSSEInt16Vector::Get_W0() const
{
    return Extract(3);
}

eX_VECCALL(eXint16_t) eXSSEInt16Vector::Get_X1() const
{
    return Extract(4);
}

eX_VECCALL(eXint16_t) eXSSEInt16Vector::Get_Y1() const
{
    return Extract(5);
}

eX_VECCALL(eXint16_t) eXSSEInt16Vector::Get_Z1() const
{
    return Extract(6);
}

eX_VECCALL(eXint16_t) eXSSEInt16Vector::Get_W1() const
{
    return Extract(7);
}

eX_VECCALL(const eXSSEInt16Vector&) eXSSEInt16Vector::Set_All(eXint16_t InX0, eXint16_t InY0, eXint16_t InZ0, eXint16_t InW0, eXint16_t InX1, eXint16_t InY1, eXint16_t InZ1, eXint16_t InW1)
{
    __Xmmi = _mm_setr_epi16(InX0, InY0, InZ0, InW0, InX1, InY1, InZ1, InW1);
    return *this;
}

eX_VECCALL(const eXSSEInt16Vector&) eXSSEInt16Vector::Set_X0(eXint16_t Invalue)
{
    return Insert(0, Invalue);
}

eX_VECCALL(const eXSSEInt16Vector&) eXSSEInt16Vector::Set_Y0(eXint16_t Invalue)
{
    return Insert(1, Invalue);
}

eX_VECCALL(const eXSSEInt16Vector&) eXSSEInt16Vector::Set_Z0(eXint16_t Invalue)
{
    return Insert(2, Invalue);
}

eX_VECCALL(const eXSSEInt16Vector&) eXSSEInt16Vector::Set_W0(eXint16_t Invalue)
{
    return Insert(3, Invalue);
}

eX_VECCALL(const eXSSEInt16Vector&) eXSSEInt16Vector::Set_X1(eXint16_t Invalue)
{
    return Insert(4, Invalue);
}

eX_VECCALL(const eXSSEInt16Vector&) eXSSEInt16Vector::Set_Y1(eXint16_t Invalue)
{
    return Insert(5, Invalue);
}

eX_VECCALL(const eXSSEInt16Vector&) eXSSEInt16Vector::Set_Z1(eXint16_t Invalue)
{
    return Insert(6, Invalue);
}

eX_VECCALL(const eXSSEInt16Vector&) eXSSEInt16Vector::Set_W1(eXint16_t Invalue)
{
    return Insert(7, Invalue);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::And(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEIntVector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Or(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEIntVector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Xor(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEIntVector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Not(const eXSSEInt16Vector& InXmmi_a)
{
    return eXSSEIntVector::Not(InXmmi_a);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::AndNot(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEIntVector::AndNot(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Horizontal_And(const eXSSEInt16Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_And(InXmmi_a);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Horizontal_Or(const eXSSEInt16Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_Or(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bAnd(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEIntVector::bAnd(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bOr(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEIntVector::bOr(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bHorizontal_And(const eXSSEInt16Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_And(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bHorizontal_Or(const eXSSEInt16Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_Or(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Logical functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Logical_And(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return InXmmi_a & InXmmi_b;
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Logical_Or(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return InXmmi_a | InXmmi_b;
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Logical_Not(const eXSSEInt16Vector& InXmmi_a)
{
    return  _mm_cmpeq_epi16(InXmmi_a, _mm_setzero_si128());
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bLogical_And(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(InXmmi_a & InXmmi_b) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bLogical_Or(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return (_mm_movemask_epi8(InXmmi_a | InXmmi_b) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bLogical_Not(const eXSSEInt16Vector& InXmmi_a)
{
    return  ((_mm_movemask_epi8(_mm_cmpeq_epi16(InXmmi_a, _mm_setzero_si128())) == 0xFFFF) != 0);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         General functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <int PermuteX0, int PermuteY0, int PermuteZ0, int PermuteW0, int PermuteX1, int PermuteY1, int PermuteZ1, int PermuteW1>
eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::permute_template(const eXSSEInt16Vector& InXmmi_a)
{
	if ((PermuteX0 & PermuteY0 & PermuteZ0 & PermuteW0 & PermuteX1 & PermuteY1 & PermuteZ1 & PermuteW1) < 0)
	{
		return _mm_setzero_si128();  // special case: all zero
	}
	if (eX_has_SSSE3) // SSSE3
	{
		// special case: rotate
		if (PermuteX0 >= 0 && PermuteX0 < 8 && PermuteY0 == ((PermuteX0 + 1) & 7) && PermuteZ0 == ((PermuteX0 + 2) & 7) && PermuteW0 == ((PermuteX0 + 3) & 7) 
			&& PermuteX1 == ((PermuteX0 + 4) & 7) && PermuteY1 == ((PermuteX0 + 5) & 7) && PermuteZ1 == ((PermuteX0 + 6) & 7) && PermuteW1 == ((PermuteX0 + 7) & 7))
		{
			if (PermuteX0 == 0) return InXmmi_a;  // do nothing
			return _mm_alignr_epi8(InXmmi_a, InXmmi_a, (PermuteX0 & 7) * 2);
		}

		// General case: Use PSHUFB
		const int j0 = PermuteX0 < 0 ? 0xFFFF : ((PermuteX0 & 7) * 2 | ((PermuteX0 & 7) * 2 + 1) << 8);
		const int j1 = PermuteY0 < 0 ? 0xFFFF : ((PermuteY0 & 7) * 2 | ((PermuteY0 & 7) * 2 + 1) << 8);
		const int j2 = PermuteZ0 < 0 ? 0xFFFF : ((PermuteZ0 & 7) * 2 | ((PermuteZ0 & 7) * 2 + 1) << 8);
		const int j3 = PermuteW0 < 0 ? 0xFFFF : ((PermuteW0 & 7) * 2 | ((PermuteW0 & 7) * 2 + 1) << 8);
		const int j4 = PermuteX1 < 0 ? 0xFFFF : ((PermuteX1 & 7) * 2 | ((PermuteX1 & 7) * 2 + 1) << 8);
		const int j5 = PermuteY1 < 0 ? 0xFFFF : ((PermuteY1 & 7) * 2 | ((PermuteY1 & 7) * 2 + 1) << 8);
		const int j6 = PermuteZ1 < 0 ? 0xFFFF : ((PermuteZ1 & 7) * 2 | ((PermuteZ1 & 7) * 2 + 1) << 8);
		const int j7 = PermuteW1 < 0 ? 0xFFFF : ((PermuteW1 & 7) * 2 | ((PermuteW1 & 7) * 2 + 1) << 8);
		__m128i mask = Constant_int32< j0 | j1 << 16, j2 | j3 << 16, j4 | j5 << 16, j6 | j7 << 16 >();
		return _mm_shuffle_epi8(InXmmi_a, mask);
	}
	else // SSE2 has no simple solution. Find the optimal permute method.
	{
		// Without proper metaprogramming features, we have to use constant expressions 
		// and if-statements to make sure these calculations are resolved at compile time.
		// All this should produce at most 8 instructions in the final code, depending
		// on the template parameters.

		// Temporary vectors
		__m128i t1, t2, t3, t4, t5, t6, t7;

		// Combine all the indexes into a single bitfield, with 4 bits for each
		const int m1 = (PermuteX0 & 7) | (PermuteY0 & 7) << 4 | (PermuteZ0 & 7) << 8 | (PermuteW0 & 7) << 12
			| (PermuteX1 & 7) << 16 | (PermuteY1 & 7) << 20 | (PermuteZ1 & 7) << 24 | (PermuteW1 & 7) << 28;

		// Mask to zero out negative indexes
		const int m2 = (PermuteX0 < 0 ? 0 : 0xF) | (PermuteY0 < 0 ? 0 : 0xF) << 4 | (PermuteZ0 < 0 ? 0 : 0xF) << 8 | (PermuteW0 < 0 ? 0 : 0xF) << 12
			| (PermuteX1 < 0 ? 0 : 0xF) << 16 | (PermuteY1 < 0 ? 0 : 0xF) << 20 | (PermuteZ1 < 0 ? 0 : 0xF) << 24 | (PermuteW1 < 0 ? 0 : 0xF) << 28;

		// Test if we can do without permute
		const eXbool_t case0 = ((m1 ^ 0x76543210) & m2) == 0; // all indexes point to their own place or negative

															  // Test if we can do with 32-bit permute only
		const eXbool_t case1 =
			(m1 & 0x01010101 & m2) == 0        // even indexes are even or negative
			&& (~m1 & 0x10101010 & m2) == 0    // odd  indexes are odd  or negative
			&& ((m1 ^ ((m1 + 0x01010101) << 4)) & 0xF0F0F0F0 & m2 & (m2 << 4)) == 0; // odd index == preceding even index +1 or at least one of them negative

																					 // Test if we can do with 16-bit permute only
		const eXbool_t case2 =
			(((m1 & 0x44444444) ^ 0x44440000) & m2) == 0;  // indexes 0-3 point to lower 64 bits, 1-7 to higher 64 bits, or negative

		if (case0)
		{
			// no permute needed
			t7 = InXmmi_a;
		}
		else if (case1)
		{
			// 32 bit permute only
			const int j0 = PermuteX0 >= 0 ? PermuteX0 / 2 : PermuteY0 >= 0 ? PermuteY0 / 2 : 0;
			const int j1 = PermuteZ0 >= 0 ? PermuteZ0 / 2 : PermuteW0 >= 0 ? PermuteW0 / 2 : 0;
			const int j2 = PermuteX1 >= 0 ? PermuteX1 / 2 : PermuteY1 >= 0 ? PermuteY1 / 2 : 0;
			const int j3 = PermuteZ1 >= 0 ? PermuteZ1 / 2 : PermuteW1 >= 0 ? PermuteW1 / 2 : 0;
			t7 = _mm_shuffle_epi32(InXmmi_a, (j0 & 3) | (j1 & 3) << 2 | (j2 & 3) << 4 | (j3 & 3) << 6);
		}
		else if (case2)
		{
			// 16 bit permute only
			const int j0 = PermuteX0 >= 0 ? PermuteX0 & 3 : 0;
			const int j1 = PermuteY0 >= 0 ? PermuteY0 & 3 : 1;
			const int j2 = PermuteZ0 >= 0 ? PermuteZ0 & 3 : 2;
			const int j3 = PermuteW0 >= 0 ? PermuteW0 & 3 : 3;
			const int j4 = PermuteX1 >= 0 ? PermuteX1 & 3 : 0;
			const int j5 = PermuteY1 >= 0 ? PermuteY1 & 3 : 1;
			const int j6 = PermuteZ1 >= 0 ? PermuteZ1 & 3 : 2;
			const int j7 = PermuteW1 >= 0 ? PermuteW1 & 3 : 3;
			if (j0 != 0 || j1 != 1 || j2 != 2 || j3 != 3)
			{
				t1 = _mm_shufflelo_epi16(InXmmi_a, j0 | j1 << 2 | j2 << 4 | j3 << 6);
			}
			else t1 = InXmmi_a;
			if (j4 != 0 || j5 != 1 || j6 != 2 || j7 != 3)
			{
				t7 = _mm_shufflehi_epi16(t1, j4 | j5 << 2 | j6 << 4 | j7 << 6);
			}
			else t7 = t1;
		}
		else
		{
			// Need at least two permute steps

			// Index to where each dword of a is needed
			const int nn = (m1 & 0x66666666) | 0x88888888; // indicate which dwords are needed
			const int n0 = (((reinterpret_cast<eXuint32_t>((nn ^ 0x00000000) - 0x22222222) & 0x88888888) ^ 0x88888888) & m2);
			const int n1 = (((reinterpret_cast<eXuint32_t>((nn ^ 0x22222222) - 0x22222222) & 0x88888888) ^ 0x88888888) & m2);
			const int n2 = (((reinterpret_cast<eXuint32_t>((nn ^ 0x44444444) - 0x22222222) & 0x88888888) ^ 0x88888888) & m2);
			const int n3 = (((reinterpret_cast<eXuint32_t>((nn ^ 0x66666666) - 0x22222222) & 0x88888888) ^ 0x88888888) & m2);
			// indicate which dwords are needed in low half
			const int l0 = (n0 & 0xFFFF) != 0;
			const int l1 = (n1 & 0xFFFF) != 0;
			const int l2 = (n2 & 0xFFFF) != 0;
			const int l3 = (n3 & 0xFFFF) != 0;
			// indicate which dwords are needed in high half
			const int h0 = (n0 & 0xFFFF0000) != 0;
			const int h1 = (n1 & 0xFFFF0000) != 0;
			const int h2 = (n2 & 0xFFFF0000) != 0;
			const int h3 = (n3 & 0xFFFF0000) != 0;

			// Test if we can do with two permute steps
			const eXbool_t case3 = l0 + l1 + l2 + l3 <= 2 && h0 + h1 + h2 + h3 <= 2;

			if (case3)
			{
				// one 32-bit permute followed by one 16-bit permute in each half.
				// Find permute indices for 32-bit permute
				const int j0 = l0 ? 0 : l1 ? 1 : l2 ? 2 : 3;
				const int j1 = l3 ? 3 : l2 ? 2 : l1 ? 1 : 0;
				const int j2 = h0 ? 0 : h1 ? 1 : h2 ? 2 : 3;
				const int j3 = h3 ? 3 : h2 ? 2 : h1 ? 1 : 0;

				// Find permute indices for low 16-bit permute
				const int r0 = PermuteX0 < 0 ? 0 : (PermuteX0 >> 1 == j0 ? 0 : 2) + (PermuteX0 & 1);
				const int r1 = PermuteY0 < 0 ? 1 : (PermuteY0 >> 1 == j0 ? 0 : 2) + (PermuteY0 & 1);
				const int r2 = PermuteZ0 < 0 ? 2 : (PermuteZ0 >> 1 == j1 ? 2 : 0) + (PermuteZ0 & 1);
				const int r3 = PermuteW0 < 0 ? 3 : (PermuteW0 >> 1 == j1 ? 2 : 0) + (PermuteW0 & 1);

				// Find permute indices for high 16-bit permute
				const int s0 = PermuteX1 < 0 ? 0 : (PermuteX1 >> 1 == j2 ? 0 : 2) + (PermuteX1 & 1);
				const int s1 = PermuteY1 < 0 ? 1 : (PermuteY1 >> 1 == j2 ? 0 : 2) + (PermuteY1 & 1);
				const int s2 = PermuteZ1 < 0 ? 2 : (PermuteZ1 >> 1 == j3 ? 2 : 0) + (PermuteZ1 & 1);
				const int s3 = PermuteW1 < 0 ? 3 : (PermuteW1 >> 1 == j3 ? 2 : 0) + (PermuteW1 & 1);

				// 32-bit permute
				t1 = _mm_shuffle_epi32(InXmmi_a, j0 | j1 << 2 | j2 << 4 | j3 << 6);
				// 16-bit permutes
				if (r0 != 0 || r1 != 1 || r2 != 2 || r3 != 3)
				{  // 16 bit permute of low  half
					t2 = _mm_shufflelo_epi16(t1, r0 | r1 << 2 | r2 << 4 | r3 << 6);
				}
				else t2 = t1;
				if (s0 != 0 || s1 != 1 || s2 != 2 || s3 != 3)
				{  // 16 bit permute of high half                
					t7 = _mm_shufflehi_epi16(t2, s0 | s1 << 2 | s2 << 4 | s3 << 6);
				}
				else t7 = t2;
			}
			else
			{
				// Worst case. We need two sets of 16-bit permutes
				t1 = _mm_shuffle_epi32(InXmmi_a, 0x4E);  // swap low and high 64-bits

												  // Find permute indices for low 16-bit permute from swapped t1
				const int r0 = PermuteX0 < 4 ? 0 : PermuteX0 & 3;
				const int r1 = PermuteY0 < 4 ? 1 : PermuteY0 & 3;
				const int r2 = PermuteZ0 < 4 ? 2 : PermuteZ0 & 3;
				const int r3 = PermuteW0 < 4 ? 3 : PermuteW0 & 3;
				// Find permute indices for high 16-bit permute from swapped t1
				const int s0 = PermuteX1 < 0 || PermuteX1 >= 4 ? 0 : PermuteX1 & 3;
				const int s1 = PermuteY1 < 0 || PermuteY1 >= 4 ? 1 : PermuteY1 & 3;
				const int s2 = PermuteZ1 < 0 || PermuteZ1 >= 4 ? 2 : PermuteZ1 & 3;
				const int s3 = PermuteW1 < 0 || PermuteW1 >= 4 ? 3 : PermuteW1 & 3;
				// Find permute indices for low 16-bit permute from direct a
				const int u0 = PermuteX0 < 0 || PermuteX0 >= 4 ? 0 : PermuteX0 & 3;
				const int u1 = PermuteY0 < 0 || PermuteY0 >= 4 ? 1 : PermuteY0 & 3;
				const int u2 = PermuteZ0 < 0 || PermuteZ0 >= 4 ? 2 : PermuteZ0 & 3;
				const int u3 = PermuteW0 < 0 || PermuteW0 >= 4 ? 3 : PermuteW0 & 3;
				// Find permute indices for high 16-bit permute from direct a
				const int v0 = PermuteX1 < 4 ? 0 : PermuteX1 & 3;
				const int v1 = PermuteY1 < 4 ? 1 : PermuteY1 & 3;
				const int v2 = PermuteZ1 < 4 ? 2 : PermuteZ1 & 3;
				const int v3 = PermuteW1 < 4 ? 3 : PermuteW1 & 3;

				// 16-bit permutes
				if (r0 != 0 || r1 != 1 || r2 != 2 || r3 != 3)
				{  // 16 bit permute of low  half
					t2 = _mm_shufflelo_epi16(t1, r0 | r1 << 2 | r2 << 4 | r3 << 6);
				}
				else t2 = t1;
				if (u0 != 0 || u1 != 1 || u2 != 2 || u3 != 3)
				{  // 16 bit permute of low  half
					t3 = _mm_shufflelo_epi16(InXmmi_a, u0 | u1 << 2 | u2 << 4 | u3 << 6);
				}
				else t3 = InXmmi_a;
				if (s0 != 0 || s1 != 1 || s2 != 2 || s3 != 3)
				{  // 16 bit permute of low  half
					t4 = _mm_shufflehi_epi16(t2, s0 | s1 << 2 | s2 << 4 | s3 << 6);
				}
				else t4 = t2;
				if (v0 != 0 || v1 != 1 || v2 != 2 || v3 != 3)
				{  // 16 bit permute of low  half
					t5 = _mm_shufflehi_epi16(t3, v0 | v1 << 2 | v2 << 4 | v3 << 6);
				}
				else t5 = t3;
				// merge data from t4 and t5
				t6 = Constant_int32<
					((PermuteX0 & 4) ? 0xFFFF : 0) | ((PermuteY0 & 4) ? 0xFFFF0000 : 0),
					((PermuteZ0 & 4) ? 0xFFFF : 0) | ((PermuteW0 & 4) ? 0xFFFF0000 : 0),
					((PermuteX1 & 4) ? 0 : 0xFFFF) | ((PermuteY1 & 4) ? 0 : 0xFFFF0000),
					((PermuteZ1 & 4) ? 0 : 0xFFFF) | ((PermuteW1 & 4) ? 0 : 0xFFFF0000) >();
				t7 = Select(t6, t4, t5);  // select between permuted data t4 and t5
			}
		}
		// Set any elements to zero if required
		if (m2 != -1 && ((PermuteX0 | PermuteY0 | PermuteZ0 | PermuteW0 | PermuteX1 | PermuteY1 | PermuteZ1 | PermuteW1) & 0x80))
		{
			// some elements need to be set to 0
			__m128i mask = Constant_int32<
				(PermuteX0 < 0 ? 0xFFFF0000 : -1) & (PermuteY0 < 0 ? 0x0000FFFF : -1),
				(PermuteZ0 < 0 ? 0xFFFF0000 : -1) & (PermuteW0 < 0 ? 0x0000FFFF : -1),
				(PermuteX1 < 0 ? 0xFFFF0000 : -1) & (PermuteY1 < 0 ? 0x0000FFFF : -1),
				(PermuteZ1 < 0 ? 0xFFFF0000 : -1) & (PermuteW1 < 0 ? 0x0000FFFF : -1) >();
			return  _mm_and_si128(t7, mask);
		}
		else
		{
			return  t7;
		}
	}
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Permute(const eXSSEInt16Vector& InXmmi_a, int PermuteX0, int PermuteY0, int PermuteZ0, int PermuteW0, int PermuteX1, int PermuteY1, int PermuteZ1, int PermuteW1)
{
	eX_ASSERTIF_MSG((PermuteX0 >= -1) && (PermuteX0 <= 7), "PermuteX0 parameter out of range");
	eX_ASSERTIF_MSG((PermuteY0 >= -1) && (PermuteY0 <= 7), "PermuteY0 parameter out of range");
	eX_ASSERTIF_MSG((PermuteZ0 >= -1) && (PermuteZ0 <= 7), "PermuteZ0 parameter out of range");
	eX_ASSERTIF_MSG((PermuteW0 >= -1) && (PermuteW0 <= 7), "PermuteW0 parameter out of range");
	eX_ASSERTIF_MSG((PermuteX1 >= -1) && (PermuteX1 <= 7), "PermuteX1 parameter out of range");
	eX_ASSERTIF_MSG((PermuteY1 >= -1) && (PermuteY1 <= 7), "PermuteY1 parameter out of range");
	eX_ASSERTIF_MSG((PermuteZ1 >= -1) && (PermuteZ1 <= 7), "PermuteZ1 parameter out of range");
	eX_ASSERTIF_MSG((PermuteW1 >= -1) && (PermuteW1 <= 7), "PermuteW1 parameter out of range");

	if ((PermuteX0 & PermuteY0 & PermuteZ0 & PermuteW0 & PermuteX1 & PermuteY1 & PermuteZ1 & PermuteW1) < 0)
	{
		return _mm_setzero_si128();  // special case: all zero
	}
	if (eX_has_SSSE3) // SSSE3
	{
		// special case: rotate
		if (PermuteX0 >= 0 && PermuteX0 < 8 && PermuteY0 == ((PermuteX0 + 1) & 7) && PermuteZ0 == ((PermuteX0 + 2) & 7) && PermuteW0 == ((PermuteX0 + 3) & 7)
			&& PermuteX1 == ((PermuteX0 + 4) & 7) && PermuteY1 == ((PermuteX0 + 5) & 7) && PermuteZ1 == ((PermuteX0 + 6) & 7) && PermuteW1 == ((PermuteX0 + 7) & 7))
		{
			if (PermuteX0 == 0) return InXmmi_a;  // do nothing
			return _mm_alignr_epi8(InXmmi_a, InXmmi_a, (PermuteX0 & 7) * 2);
		}

		// General case: Use PSHUFB
		const int j0 = PermuteX0 < 0 ? 0xFFFF : ((PermuteX0 & 7) * 2 | ((PermuteX0 & 7) * 2 + 1) << 8);
		const int j1 = PermuteY0 < 0 ? 0xFFFF : ((PermuteY0 & 7) * 2 | ((PermuteY0 & 7) * 2 + 1) << 8);
		const int j2 = PermuteZ0 < 0 ? 0xFFFF : ((PermuteZ0 & 7) * 2 | ((PermuteZ0 & 7) * 2 + 1) << 8);
		const int j3 = PermuteW0 < 0 ? 0xFFFF : ((PermuteW0 & 7) * 2 | ((PermuteW0 & 7) * 2 + 1) << 8);
		const int j4 = PermuteX1 < 0 ? 0xFFFF : ((PermuteX1 & 7) * 2 | ((PermuteX1 & 7) * 2 + 1) << 8);
		const int j5 = PermuteY1 < 0 ? 0xFFFF : ((PermuteY1 & 7) * 2 | ((PermuteY1 & 7) * 2 + 1) << 8);
		const int j6 = PermuteZ1 < 0 ? 0xFFFF : ((PermuteZ1 & 7) * 2 | ((PermuteZ1 & 7) * 2 + 1) << 8);
		const int j7 = PermuteW1 < 0 ? 0xFFFF : ((PermuteW1 & 7) * 2 | ((PermuteW1 & 7) * 2 + 1) << 8);
		__m128i mask = eXSSEInt32Vector(j0 | j1 << 16, j2 | j3 << 16, j4 | j5 << 16, j6 | j7 << 16);
		return _mm_shuffle_epi8(InXmmi_a, mask);
	}
	else // SSE2 has no simple solution. Find the optimal permute method.
	{
		// Without proper metaprogramming features, we have to use constant expressions 
		// and if-statements to make sure these calculations are resolved at compile time.
		// All this should produce at most 8 instructions in the final code, depending
		// on the template parameters.

		// Temporary vectors
		__m128i t1, t2, t3, t4, t5, t6, t7;

		// Combine all the indexes into a single bitfield, with 4 bits for each
		const int m1 = (PermuteX0 & 7) | (PermuteY0 & 7) << 4 | (PermuteZ0 & 7) << 8 | (PermuteW0 & 7) << 12
			| (PermuteX1 & 7) << 16 | (PermuteY1 & 7) << 20 | (PermuteZ1 & 7) << 24 | (PermuteW1 & 7) << 28;

		// Mask to zero out negative indexes
		const int m2 = (PermuteX0 < 0 ? 0 : 0xF) | (PermuteY0 < 0 ? 0 : 0xF) << 4 | (PermuteZ0 < 0 ? 0 : 0xF) << 8 | (PermuteW0 < 0 ? 0 : 0xF) << 12
			| (PermuteX1 < 0 ? 0 : 0xF) << 16 | (PermuteY1 < 0 ? 0 : 0xF) << 20 | (PermuteZ1 < 0 ? 0 : 0xF) << 24 | (PermuteW1 < 0 ? 0 : 0xF) << 28;

		// Test if we can do without permute
		const eXbool_t case0 = ((m1 ^ 0x76543210) & m2) == 0; // all indexes point to their own place or negative

		// Test if we can do with 32-bit permute only
		const eXbool_t case1 =
			(m1 & 0x01010101 & m2) == 0        // even indexes are even or negative
			&& (~m1 & 0x10101010 & m2) == 0    // odd  indexes are odd  or negative
			&& ((m1 ^ ((m1 + 0x01010101) << 4)) & 0xF0F0F0F0 & m2 & (m2 << 4)) == 0; // odd index == preceding even index +1 or at least one of them negative

		// Test if we can do with 16-bit permute only
		const eXbool_t case2 =
			(((m1 & 0x44444444) ^ 0x44440000) & m2) == 0;  // indexes 0-3 point to lower 64 bits, 1-7 to higher 64 bits, or negative

		if (case0)
		{
			// no permute needed
			t7 = InXmmi_a;
		}
		else if (case1)
		{
			// 32 bit permute only
			const int j0 = PermuteX0 >= 0 ? PermuteX0 / 2 : PermuteY0 >= 0 ? PermuteY0 / 2 : 0;
			const int j1 = PermuteZ0 >= 0 ? PermuteZ0 / 2 : PermuteW0 >= 0 ? PermuteW0 / 2 : 0;
			const int j2 = PermuteX1 >= 0 ? PermuteX1 / 2 : PermuteY1 >= 0 ? PermuteY1 / 2 : 0;
			const int j3 = PermuteZ1 >= 0 ? PermuteZ1 / 2 : PermuteW1 >= 0 ? PermuteW1 / 2 : 0;
			t7 = _mm_shuffle_epi32(InXmmi_a, (j0 & 3) | (j1 & 3) << 2 | (j2 & 3) << 4 | (j3 & 3) << 6);
		}
		else if (case2)
		{
			// 16 bit permute only
			const int j0 = PermuteX0 >= 0 ? PermuteX0 & 3 : 0;
			const int j1 = PermuteY0 >= 0 ? PermuteY0 & 3 : 1;
			const int j2 = PermuteZ0 >= 0 ? PermuteZ0 & 3 : 2;
			const int j3 = PermuteW0 >= 0 ? PermuteW0 & 3 : 3;
			const int j4 = PermuteX1 >= 0 ? PermuteX1 & 3 : 0;
			const int j5 = PermuteY1 >= 0 ? PermuteY1 & 3 : 1;
			const int j6 = PermuteZ1 >= 0 ? PermuteZ1 & 3 : 2;
			const int j7 = PermuteW1 >= 0 ? PermuteW1 & 3 : 3;
			if (j0 != 0 || j1 != 1 || j2 != 2 || j3 != 3)
			{
				t1 = _mm_shufflelo_epi16(InXmmi_a, j0 | j1 << 2 | j2 << 4 | j3 << 6);
			}
			else t1 = InXmmi_a;
			if (j4 != 0 || j5 != 1 || j6 != 2 || j7 != 3)
			{
				t7 = _mm_shufflehi_epi16(t1, j4 | j5 << 2 | j6 << 4 | j7 << 6);
			}
			else t7 = t1;
		}
		else
		{
			// Need at least two permute steps

			// Index to where each dword of a is needed
			const int nn = (m1 & 0x66666666) | 0x88888888; // indicate which dwords are needed
			const int n0 = (((static_cast<eXuint32_t>((nn ^ 0x00000000) - 0x22222222) & 0x88888888) ^ 0x88888888) & m2);
			const int n1 = (((static_cast<eXuint32_t>((nn ^ 0x22222222) - 0x22222222) & 0x88888888) ^ 0x88888888) & m2);
			const int n2 = (((static_cast<eXuint32_t>((nn ^ 0x44444444) - 0x22222222) & 0x88888888) ^ 0x88888888) & m2);
			const int n3 = (((static_cast<eXuint32_t>((nn ^ 0x66666666) - 0x22222222) & 0x88888888) ^ 0x88888888) & m2);
			// indicate which dwords are needed in low half
			const int l0 = (n0 & 0xFFFF) != 0;
			const int l1 = (n1 & 0xFFFF) != 0;
			const int l2 = (n2 & 0xFFFF) != 0;
			const int l3 = (n3 & 0xFFFF) != 0;
			// indicate which dwords are needed in high half
			const int h0 = (n0 & 0xFFFF0000) != 0;
			const int h1 = (n1 & 0xFFFF0000) != 0;
			const int h2 = (n2 & 0xFFFF0000) != 0;
			const int h3 = (n3 & 0xFFFF0000) != 0;

			// Test if we can do with two permute steps
			const eXbool_t case3 = l0 + l1 + l2 + l3 <= 2 && h0 + h1 + h2 + h3 <= 2;

			if (case3)
			{
				// one 32-bit permute followed by one 16-bit permute in each half.
				// Find permute indices for 32-bit permute
				const int j0 = l0 ? 0 : l1 ? 1 : l2 ? 2 : 3;
				const int j1 = l3 ? 3 : l2 ? 2 : l1 ? 1 : 0;
				const int j2 = h0 ? 0 : h1 ? 1 : h2 ? 2 : 3;
				const int j3 = h3 ? 3 : h2 ? 2 : h1 ? 1 : 0;

				// Find permute indices for low 16-bit permute
				const int r0 = PermuteX0 < 0 ? 0 : (PermuteX0 >> 1 == j0 ? 0 : 2) + (PermuteX0 & 1);
				const int r1 = PermuteY0 < 0 ? 1 : (PermuteY0 >> 1 == j0 ? 0 : 2) + (PermuteY0 & 1);
				const int r2 = PermuteZ0 < 0 ? 2 : (PermuteZ0 >> 1 == j1 ? 2 : 0) + (PermuteZ0 & 1);
				const int r3 = PermuteW0 < 0 ? 3 : (PermuteW0 >> 1 == j1 ? 2 : 0) + (PermuteW0 & 1);

				// Find permute indices for high 16-bit permute
				const int s0 = PermuteX1 < 0 ? 0 : (PermuteX1 >> 1 == j2 ? 0 : 2) + (PermuteX1 & 1);
				const int s1 = PermuteY1 < 0 ? 1 : (PermuteY1 >> 1 == j2 ? 0 : 2) + (PermuteY1 & 1);
				const int s2 = PermuteZ1 < 0 ? 2 : (PermuteZ1 >> 1 == j3 ? 2 : 0) + (PermuteZ1 & 1);
				const int s3 = PermuteW1 < 0 ? 3 : (PermuteW1 >> 1 == j3 ? 2 : 0) + (PermuteW1 & 1);

				// 32-bit permute
				t1 = _mm_shuffle_epi32(InXmmi_a, j0 | j1 << 2 | j2 << 4 | j3 << 6);
				// 16-bit permutes
				if (r0 != 0 || r1 != 1 || r2 != 2 || r3 != 3)
				{  // 16 bit permute of low  half
					t2 = _mm_shufflelo_epi16(t1, r0 | r1 << 2 | r2 << 4 | r3 << 6);
				}
				else t2 = t1;
				if (s0 != 0 || s1 != 1 || s2 != 2 || s3 != 3)
				{  // 16 bit permute of high half                
					t7 = _mm_shufflehi_epi16(t2, s0 | s1 << 2 | s2 << 4 | s3 << 6);
				}
				else t7 = t2;
			}
			else
			{
				// Worst case. We need two sets of 16-bit permutes
				t1 = _mm_shuffle_epi32(InXmmi_a, 0x4E);  // swap low and high 64-bits

				// Find permute indices for low 16-bit permute from swapped t1
				const int r0 = PermuteX0 < 4 ? 0 : PermuteX0 & 3;
				const int r1 = PermuteY0 < 4 ? 1 : PermuteY0 & 3;
				const int r2 = PermuteZ0 < 4 ? 2 : PermuteZ0 & 3;
				const int r3 = PermuteW0 < 4 ? 3 : PermuteW0 & 3;
				// Find permute indices for high 16-bit permute from swapped t1
				const int s0 = PermuteX1 < 0 || PermuteX1 >= 4 ? 0 : PermuteX1 & 3;
				const int s1 = PermuteY1 < 0 || PermuteY1 >= 4 ? 1 : PermuteY1 & 3;
				const int s2 = PermuteZ1 < 0 || PermuteZ1 >= 4 ? 2 : PermuteZ1 & 3;
				const int s3 = PermuteW1 < 0 || PermuteW1 >= 4 ? 3 : PermuteW1 & 3;
				// Find permute indices for low 16-bit permute from direct a
				const int u0 = PermuteX0 < 0 || PermuteX0 >= 4 ? 0 : PermuteX0 & 3;
				const int u1 = PermuteY0 < 0 || PermuteY0 >= 4 ? 1 : PermuteY0 & 3;
				const int u2 = PermuteZ0 < 0 || PermuteZ0 >= 4 ? 2 : PermuteZ0 & 3;
				const int u3 = PermuteW0 < 0 || PermuteW0 >= 4 ? 3 : PermuteW0 & 3;
				// Find permute indices for high 16-bit permute from direct a
				const int v0 = PermuteX1 < 4 ? 0 : PermuteX1 & 3;
				const int v1 = PermuteY1 < 4 ? 1 : PermuteY1 & 3;
				const int v2 = PermuteZ1 < 4 ? 2 : PermuteZ1 & 3;
				const int v3 = PermuteW1 < 4 ? 3 : PermuteW1 & 3;

				// 16-bit permutes
				if (r0 != 0 || r1 != 1 || r2 != 2 || r3 != 3)
				{  // 16 bit permute of low  half
					t2 = _mm_shufflelo_epi16(t1, r0 | r1 << 2 | r2 << 4 | r3 << 6);
				}
				else t2 = t1;
				if (u0 != 0 || u1 != 1 || u2 != 2 || u3 != 3)
				{  // 16 bit permute of low  half
					t3 = _mm_shufflelo_epi16(InXmmi_a, u0 | u1 << 2 | u2 << 4 | u3 << 6);
				}
				else t3 = InXmmi_a;
				if (s0 != 0 || s1 != 1 || s2 != 2 || s3 != 3)
				{  // 16 bit permute of low  half
					t4 = _mm_shufflehi_epi16(t2, s0 | s1 << 2 | s2 << 4 | s3 << 6);
				}
				else t4 = t2;
				if (v0 != 0 || v1 != 1 || v2 != 2 || v3 != 3)
				{  // 16 bit permute of low  half
					t5 = _mm_shufflehi_epi16(t3, v0 | v1 << 2 | v2 << 4 | v3 << 6);
				}
				else t5 = t3;
				// merge data from t4 and t5
				t6 = eXSSEInt32Vector(((PermuteX0 & 4) ? 0xFFFF : 0) | ((PermuteY0 & 4) ? 0xFFFF0000 : 0),
					((PermuteZ0 & 4) ? 0xFFFF : 0) | ((PermuteW0 & 4) ? 0xFFFF0000 : 0),
					((PermuteX1 & 4) ? 0 : 0xFFFF) | ((PermuteY1 & 4) ? 0 : 0xFFFF0000),
					((PermuteZ1 & 4) ? 0 : 0xFFFF) | ((PermuteW1 & 4) ? 0 : 0xFFFF0000));
				t7 = Select(t6, t4, t5);  // select between permuted data t4 and t5
			}
		}
		// Set any elements to zero if required
		if (m2 != -1 && ((PermuteX0 | PermuteY0 | PermuteZ0 | PermuteW0 | PermuteX1 | PermuteY1 | PermuteZ1 | PermuteW1) & 0x80))
		{
			// some elements need to be set to 0
			__m128i mask = eXSSEInt32Vector((PermuteX0 < 0 ? 0xFFFF0000 : -1) & (PermuteY0 < 0 ? 0x0000FFFF : -1),
				(PermuteZ0 < 0 ? 0xFFFF0000 : -1) & (PermuteW0 < 0 ? 0x0000FFFF : -1),
				(PermuteX1 < 0 ? 0xFFFF0000 : -1) & (PermuteY1 < 0 ? 0x0000FFFF : -1),
				(PermuteZ1 < 0 ? 0xFFFF0000 : -1) & (PermuteW1 < 0 ? 0x0000FFFF : -1));
			return  _mm_and_si128(t7, mask);
		}
		else
		{
			return  t7;
		}
	}
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Add(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return _mm_add_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Sub(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return _mm_sub_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Mul(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return _mm_mullo_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Max(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return _mm_max_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Min(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return _mm_min_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Abs(const eXSSEInt16Vector& InXmmi_a)
{
    if (eX_has_SSSE3())    // SSSE3 supported
    {
        return _mm_sign_epi16(InXmmi_a, InXmmi_a);
    }
    else  // SSE2
    {
        __m128i nega = _mm_sub_epi16(_mm_setzero_si128(), InXmmi_a);
        return _mm_max_epi16(InXmmi_a, nega);
    }
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Add_Sat(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return _mm_adds_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Sub_Sat(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return _mm_subs_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Abs_Sat(const eXSSEInt16Vector& InXmmi_a)
{
    __m128i absa = Abs(InXmmi_a);                               // abs(a)
    __m128i overfl = _mm_srai_epi16(absa, 15);              // sign
    return           _mm_add_epi16(absa, overfl);           // subtract 1 if 0x8000
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::If_Add(const eXSSEInt16Vector& InXmmi_f, const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return InXmmi_a + InXmmi_f & InXmmi_b;
}

eX_VECCALL(eXint32_t) eXSSEInt16Vector::Horizontal_Add(const eXSSEInt16Vector& InXmmi_a)
{
    if (eX_has_XOP())    // AMD XOP instruction set
    {
        __m128i sum1 = _mm_haddq_epi16(InXmmi_a);
        __m128i sum2 = _mm_shuffle_epi32(sum1, 0x0E);          // high element
        __m128i sum3 = _mm_add_epi32(sum1, sum2);              // sum
        eXint16_t sum4 = _mm_cvtsi128_si32(sum3);               // truncate to 16 bits
        return  sum4;                                          // sign extend to 32 bits
    }
    else if (eX_has_SSSE3())    // SSSE3 supported
    {
        __m128i sum1 = _mm_hadd_epi16(InXmmi_a, InXmmi_a);                   // horizontally add 8 elements in 3 steps
        __m128i sum2 = _mm_hadd_epi16(sum1, sum1);
        __m128i sum3 = _mm_hadd_epi16(sum2, sum2);
        eXint16_t sum4 = static_cast<int16_t>(_mm_cvtsi128_si32(sum3));      // 16 bit sum
        return  sum4;                                          // sign extend to 32 bits
    }
    else                 // SSE2
    {
        __m128i sum1 = _mm_shuffle_epi32(InXmmi_a, 0x0E);             // 4 high elements
        __m128i sum2 = _mm_add_epi16(InXmmi_a, sum1);                 // 4 sums
        __m128i sum3 = _mm_shuffle_epi32(sum2, 0x01);          // 2 high elements
        __m128i sum4 = _mm_add_epi16(sum2, sum3);              // 2 sums
        __m128i sum5 = _mm_shufflelo_epi16(sum4, 0x01);        // 1 high element
        __m128i sum6 = _mm_add_epi16(sum4, sum5);              // 1 sum
        eXint16_t sum7 = _mm_cvtsi128_si32(sum6);               // 16 bit sum
        return  sum7;                                          // sign extend to 32 bits
    }
}

eX_VECCALL(eXint32_t) eXSSEInt16Vector::Horizontal_Add_x(const eXSSEInt16Vector& InXmmi_a)
{
    if (eX_has_XOP())    // AMD XOP instruction set
    {
        __m128i sum1 = _mm_haddq_epi16(InXmmi_a);
        __m128i sum2 = _mm_shuffle_epi32(sum1, 0x0E);          // high element
        __m128i sum3 = _mm_add_epi32(sum1, sum2);              // sum
        return          _mm_cvtsi128_si32(sum3);
    }
    else if (eX_has_SSSE3())    // SSSE3 supported
    {
        __m128i aeven = _mm_slli_epi32(InXmmi_a, 16);                  // even numbered elements of a. get sign bit in position
        aeven = _mm_srai_epi32(aeven, 16);              // sign extend even numbered elements
        __m128i aodd = _mm_srai_epi32(InXmmi_a, 16);                  // sign extend odd  numbered elements
        __m128i sum1 = _mm_add_epi32(aeven, aodd);             // add even and odd elements
        __m128i sum2 = _mm_hadd_epi32(sum1, sum1);             // horizontally add 4 elements in 2 steps
        __m128i sum3 = _mm_hadd_epi32(sum2, sum2);
        return  _mm_cvtsi128_si32(sum3);
    }
    else                 // SSE2
    {
        __m128i aeven = _mm_slli_epi32(InXmmi_a, 16);                  // even numbered elements of a. get sign bit in position
        aeven = _mm_srai_epi32(aeven, 16);              // sign extend even numbered elements
        __m128i aodd = _mm_srai_epi32(InXmmi_a, 16);                  // sign extend odd  numbered elements
        __m128i sum1 = _mm_add_epi32(aeven, aodd);             // add even and odd elements
        __m128i sum2 = _mm_shuffle_epi32(sum1, 0x0E);          // 2 high elements
        __m128i sum3 = _mm_add_epi32(sum1, sum2);
        __m128i sum4 = _mm_shuffle_epi32(sum3, 0x01);          // 1 high elements
        __m128i sum5 = _mm_add_epi32(sum3, sum4);
        return  _mm_cvtsi128_si32(sum5);                       // 32 bit sum
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                      Vector rotation functions                      */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Rotate(const eXSSEInt16Vector& InXmmi_a, int b)
{
    if (eX_has_XOP())
    {
        return _mm_rot_epi16(InXmmi_a, _mm_set1_epi16(b));
    }
    else
    {
        __m128i left = _mm_sll_epi16(InXmmi_a, _mm_cvtsi32_si128(b & 0x0F));      // a << b 
        __m128i right = _mm_srl_epi16(InXmmi_a, _mm_cvtsi32_si128((16 - b) & 0x0F)); // a >> (16 - b)
        __m128i rot = _mm_or_si128(left, right);                          // or
        return  rot;
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Slli(const eXSSEInt16Vector& InXmmi_a, int InCount)
{
    return _mm_slli_epi16(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Sll(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_Count)
{
    return _mm_sll_epi16(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Srai(const eXSSEInt16Vector& InXmmi_a, int InCount)
{
    return _mm_srai_epi16(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Sra(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_Count)
{
    return _mm_sra_epi16(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return _mm_cmpeq_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Lessthan(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return _mm_cmplt_epi16(InXmmi_a, InXmmi_b);

}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Greaterthan(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return _mm_cmpgt_epi16(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Lessthan_or_equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comle_epi16(InXmmi_a, InXmmi_b);
    }
    else
    {
        return Lessthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Greaterthan_or_equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comge_epi16(InXmmi_a, InXmmi_b);
    }
    else
    {
        return Greaterthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Not_Equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comneq_epi16(InXmmi_a, InXmmi_b);
    }
    else  // SSE2
    {
        return Not(Equal(InXmmi_a, InXmmi_b));
    }
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Not_Lessthan(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return Not(Lessthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Not_Lessthan_or_equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Not_Greaterthan(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return Not(Greaterthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEInt16Vector) eXSSEInt16Vector::Not_Greaterthan_or_equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bEqual(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(_mm_cmpeq_epi16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bLessthan(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(_mm_cmplt_epi16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);

}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bGreaterthan(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(_mm_cmpgt_epi16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bLessthan_or_equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comle_epi16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bGreaterthan_or_equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comge_epi16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bNot_Equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comneq_epi16(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else  // SSE2
    {
        return ((_mm_movemask_epi8(Not_Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bNot_Lessthan(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return bGreaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bNot_Lessthan_or_equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return bGreaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bNot_Greaterthan(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return bLessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt16Vector::bNot_Greaterthan_or_equal(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return bLessthan(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) operator&(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) operator|(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) operator^(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) operator~(const eXSSEInt16Vector& InXmmi_a)
{
    return eXSSEInt16Vector::Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector&) operator&=(eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a & InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt16Vector&) operator|=(eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a | InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt16Vector&) operator^=(eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a ^ InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXbool_t) operator&&(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::bLogical_And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator||(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::bLogical_Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator!(const eXSSEInt16Vector& InXmmi_a)
{
    return  eXSSEInt16Vector::bLogical_Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) operator+(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Add(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) operator-(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Sub(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) operator*(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Mul(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                  Arithmetic assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector&) operator+=(eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a + InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt16Vector&) operator-=(eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    InXmmi_a= InXmmi_a - InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt16Vector&) operator*=(eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a * InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Prefix operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector&) operator++(eXSSEInt16Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a + 1;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt16Vector&) operator--(eXSSEInt16Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a - 1;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Postfix operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) operator++(eXSSEInt16Vector& InXmmi_a, int)
{
    eXSSEInt16Vector tmpXmmi_a;
    tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a + 1;
    return tmpXmmi_a;
}

eX_VECCALL(eXSSEInt16Vector) operator--(eXSSEInt16Vector& InXmmi_a, int)
{
    eXSSEInt16Vector tmpXmmi_a;
    tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a - 1;
    return tmpXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Unary operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) operator-(const eXSSEInt16Vector& InXmmi_a)
{
    return _mm_sub_epi32(_mm_setzero_si128(), InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) operator<<(const eXSSEInt16Vector& InXmmi_a, int InCount)
{
    return eXSSEInt16Vector::Slli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt16Vector) operator<<(const eXSSEInt16Vector& InXmmi_a, eXSSEInt16Vector& InXmmi_Count)
{
    return eXSSEInt16Vector::Sll(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEInt16Vector) operator>>(const eXSSEInt16Vector& InXmmi_a, int InCount)
{
    return eXSSEInt16Vector::Srai(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt16Vector) operator>>(const eXSSEInt16Vector& InXmmi_a, eXSSEInt16Vector& InXmmi_Count)
{
    return eXSSEInt16Vector::Sra(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector&) operator<<=(eXSSEInt16Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a << InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt16Vector&) operator<<=(eXSSEInt16Vector& InXmmi_a, eXSSEInt16Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a << InXmmi_Count;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt16Vector&) operator>>=(eXSSEInt16Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a >> InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt16Vector&) operator>>=(eXSSEInt16Vector& InXmmi_a, eXSSEInt16Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a >> InXmmi_Count;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt16Vector) operator==(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) operator<(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) operator<=(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Lessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) operator>(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) operator>=(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Greaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt16Vector) operator!=(const eXSSEInt16Vector& InXmmi_a, const eXSSEInt16Vector& InXmmi_b)
{
    return eXSSEInt16Vector::Not_Equal(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Index operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXint16_t) eXSSEInt16Vector::operator[](uint32_t index) const
{
    return Extract(index);
}
