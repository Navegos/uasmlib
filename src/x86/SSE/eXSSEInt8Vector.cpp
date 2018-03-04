
#include "eXSSEInt8Vector.h"
#include "eXSSEConstVector.h"
#include "eXSSEInt16Vector.h"
#include "eXSSEInt32Vector.h"
#include "eXSSEInt64Vector.h"
#include "eXSSEUint8Vector.h"
#include "eXSSEUint16Vector.h"
#include "eXSSEUint32Vector.h"
#include "eXSSEUint64Vector.h"
#include "eXConstants.h"
#include "eXSSEConstants.h"
#include "eXSSEMisc.h"

eXSSEInt8Vector::eXSSEInt8Vector(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const __m128i& InXmmi)
{
    __Xmmi = InXmmi;
    return *this;
}

eXSSEInt8Vector::operator __m128i() const
{
    return __Xmmi;
}

eXSSEInt8Vector::eXSSEInt8Vector(const eXSSEInt8ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const eXSSEInt8ConstVector& InXmmi)
{
    __Xmmi = InXmmi.__Xmmi;
    return *this;
}

eXSSEInt8Vector::eXSSEInt8Vector(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const eXSSEUint8Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt8Vector::eXSSEInt8Vector(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const eXSSEUint16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt8Vector::eXSSEInt8Vector(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const eXSSEUint32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt8Vector::eXSSEInt8Vector(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const eXSSEUint64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt8Vector::eXSSEInt8Vector(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const eXSSEInt16Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt8Vector::eXSSEInt8Vector(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const eXSSEInt32Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt8Vector::eXSSEInt8Vector(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const eXSSEInt64Vector& InXmmi)
{
	__Xmmi = InXmmi;
	return *this;
}

eXSSEInt8Vector::eXSSEInt8Vector(eXint8_t InX0, eXint8_t InY0, eXint8_t InZ0, eXint8_t InW0, eXint8_t InX1, eXint8_t InY1, eXint8_t InZ1, eXint8_t InW1,
                                 eXint8_t InX2, eXint8_t InY2, eXint8_t InZ2, eXint8_t InW2, eXint8_t InX3, eXint8_t InY3, eXint8_t InZ3, eXint8_t InW3)
{
    __Xmmi = _mm_setr_epi8(InX0, InY0, InZ0, InW0, InX1, InY1, InZ1, InW1, InX2, InY2, InZ2, InW2, InX3, InY3, InZ3, InW3);
}

eXSSEInt8Vector::eXSSEInt8Vector(eXint8_t Ini)
{
    __Xmmi = _mm_set1_epi8(Ini);
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const eXint8_t Ini)
{
    __Xmmi = _mm_set1_epi8(Ini);
    return *this;
}

eXSSEInt8Vector::eXSSEInt8Vector(int Ini)
{
    __Xmmi = _mm_set1_epi8(static_cast<char>(Ini));
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const int Ini)
{
    __Xmmi = _mm_set1_epi8(static_cast<const char>(Ini));
    return *this;
}

eXSSEInt8Vector::eXSSEInt8Vector(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::operator=(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::Loadu(const void* InPtr)
{
    __Xmmi = _mm_loadu_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::Load(const void* InPtr)
{
    __Xmmi = _mm_load_si128(reinterpret_cast<const __m128i*>(InPtr));
    return *this;
}

eX_VECCALL(void) eXSSEInt8Vector::Storeu(void* OutPtr) const
{
    eXSSEIntVector::Storeu(OutPtr);
}

eX_VECCALL(void) eXSSEInt8Vector::Store(void* OutPtr) const
{
    eXSSEIntVector::Store(OutPtr);
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::Load_partial(int n, const void* InPtr)
{
    if (n >= 16) Loadu(InPtr);
    else if (n <= 0)  *this = 0;
    else if (((int)(eXintptr_t)InPtr & 0xFFF) < 0xFF0)
    {
        // InPtr is at least 16 bytes from a page boundary. OK to read 16 bytes
        Loadu(InPtr);
    }
    else
    {
        // worst case. read 1 byte at a time and suffer store forwarding penalty
        eXint8_t x[16];
        for (int i = 0; i < n; i++) x[i] = (reinterpret_cast<const eXint8_t*>(InPtr))[i];
        Loadu(x);
    }
    Cutoff(n);
    return *this;
}

eX_VECCALL(void) eXSSEInt8Vector::Store_partial(int n, void* OutPtr) const
{
    if (n >= 16)
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
    if (n & 8)
    {
        *reinterpret_cast<eXint64_t*>(OutPtr) = u.q[0];
        j += 8;
    }
    if (n & 4)
    {
        (reinterpret_cast<eXint32_t*>(OutPtr))[j / 4] = u.i[j / 4];
        j += 4;
    }
    if (n & 2)
    {
        (reinterpret_cast<eXint16_t*>(OutPtr))[j / 2] = u.s[j / 2];
        j += 2;
    }
    if (n & 1)
    {
        (reinterpret_cast<eXint8_t*>(OutPtr))[j] = u.c[j];
    }
}

eX_VECCALL(eXSSEInt8Vector&) eXSSEInt8Vector::Cutoff(int n)
{
    if (eXuint32_t(n) >= 16) return *this;
    static const eXint8_t mask[32] = { -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,
        0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 };
    *this &= Loadu(mask + 16 - n);
    return *this;
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Insert(eXuint32_t index, eXint8_t Invalue)
{
    if (eX_has_SSE41())
    {
        __Xmmi = _mm_insert_epi8(__Xmmi, Invalue, index & 0x0F);
    }
    else               // SSE2
    {
        static const eXint8_t maskl[32] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
            -1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
        __m128i broad = _mm_set1_epi8(Invalue);  // broadcast value into all elements
        __m128i mask  = _mm_loadu_si128(reinterpret_cast<const __m128i*>(maskl+16-(index & 0x0F))); // mask with FF at index position
        __Xmmi = Select(mask, broad, __Xmmi);
    }
    return *this;
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Extract(eXuint32_t index) const
{
    if (eX_has_SSE41())
    {
        return static_cast<eXint8_t>(_mm_extract_epi8(__Xmmi, index & 0x0F));
    }
    else               // SSE2
    {
        eXint8_t x[16];
        Storeu(x);
        return x[index & 0x0F];
    }
}

eX_VECCALL(eXint8_t*) eXSSEInt8Vector::Get_All() const
{
    eXint8_t x[16];
    Storeu(x);
    return x;
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_X0() const
{
    return Extract(0);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_Y0() const
{
    return Extract(1);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_Z0() const
{
    return Extract(2);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_W0() const
{
    return Extract(3);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_X1() const
{
    return Extract(4);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_Y1() const
{
    return Extract(5);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_Z1() const
{
    return Extract(6);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_W1() const
{
    return Extract(7);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_X2() const
{
    return Extract(8);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_Y2() const
{
    return Extract(9);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_Z2() const
{
    return Extract(10);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_W2() const
{
    return Extract(11);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_X3() const
{
    return Extract(12);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_Y3() const
{
    return Extract(13);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_Z3() const
{
    return Extract(14);
}

eX_VECCALL(eXint8_t) eXSSEInt8Vector::Get_W3() const
{
    return Extract(15);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_All(eXint8_t InX0, eXint8_t InY0, eXint8_t InZ0, eXint8_t InW0, eXint8_t InX1, eXint8_t InY1, eXint8_t InZ1, eXint8_t InW1,
                                           eXint8_t InX2, eXint8_t InY2, eXint8_t InZ2, eXint8_t InW2, eXint8_t InX3, eXint8_t InY3, eXint8_t InZ3, eXint8_t InW3)
{
    __Xmmi = _mm_setr_epi8(InX0, InY0, InZ0, InW0, InX1, InY1, InZ1, InW1, InX2, InY2, InZ2, InW2, InX3, InY3, InZ3, InW3);
    return *this;
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_X0(eXint8_t Invalue)
{
    return Insert(0, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_Y0(eXint8_t Invalue)
{
    return Insert(1, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_Z0(eXint8_t Invalue)
{
    return Insert(2, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_W0(eXint8_t Invalue)
{
    return Insert(3, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_X1(eXint8_t Invalue)
{
    return Insert(4, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_Y1(eXint8_t Invalue)
{
    return Insert(5, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_Z1(eXint8_t Invalue)
{
    return Insert(6, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_W1(eXint8_t Invalue)
{
    return Insert(7, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_X2(eXint8_t Invalue)
{
    return Insert(8, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_Y2(eXint8_t Invalue)
{
    return Insert(9, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_Z2(eXint8_t Invalue)
{
    return Insert(10, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_W2(eXint8_t Invalue)
{
    return Insert(11, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_X3(eXint8_t Invalue)
{
    return Insert(12, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_Y3(eXint8_t Invalue)
{
    return Insert(13, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_Z3(eXint8_t Invalue)
{
    return Insert(14, Invalue);
}

eX_VECCALL(const eXSSEInt8Vector&) eXSSEInt8Vector::Set_W3(eXint8_t Invalue)
{
    return Insert(15, Invalue);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::And(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEIntVector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Or(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEIntVector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Xor(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEIntVector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Not(const eXSSEInt8Vector& InXmmi_a)
{
    return eXSSEIntVector::Not(InXmmi_a);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::AndNot(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEIntVector::AndNot(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Horizontal_And(const eXSSEInt8Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_And(InXmmi_a);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Horizontal_Or(const eXSSEInt8Vector& InXmmi_a)
{
    return eXSSEIntVector::Horizontal_Or(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bAnd(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEIntVector::bAnd(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bOr(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEIntVector::bOr(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bHorizontal_And(const eXSSEInt8Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_And(InXmmi_a);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bHorizontal_Or(const eXSSEInt8Vector& InXmmi_a)
{
    return eXSSEIntVector::bHorizontal_Or(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Logical functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Logical_And(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return InXmmi_a & InXmmi_b;
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Logical_Or(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return InXmmi_a | InXmmi_b;
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Logical_Not(const eXSSEInt8Vector& InXmmi_a)
{
    return  _mm_cmpeq_epi8(InXmmi_a, _mm_setzero_si128());
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bLogical_And(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(InXmmi_a & InXmmi_b) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bLogical_Or(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return (_mm_movemask_epi8(InXmmi_a | InXmmi_b) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bLogical_Not(const eXSSEInt8Vector& InXmmi_a)
{
    return  ((_mm_movemask_epi8(_mm_cmpeq_epi8(InXmmi_a, _mm_setzero_si128())) == 0xFFFF) != 0);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         General functions                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

template <int PermuteX0, int PermuteY0, int PermuteZ0, int PermuteW0, int PermuteX1, int PermuteY1, int PermuteZ1, int PermuteW1,
	int PermuteX2, int PermuteY2, int PermuteZ2, int PermuteW2, int PermuteX3, int PermuteY3, int PermuteZ3, int PermuteW3>
eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::permute_template(const eXSSEInt8Vector& InXmmi_a)
{
	__m128i temp;

	// Combine all even indexes into a single bitfield, with 4 bits for each
	const eXuint32_t me = (PermuteX0 & 15) | (PermuteZ0 & 15) << 4 | (PermuteX1 & 15) << 8 | (PermuteZ1 & 15) << 12
		| (PermuteX2 & 15) << 16 | (PermuteZ2 & 15) << 20 | (PermuteX3 & 15) << 24 | (PermuteZ3 & 15) << 28;

	// Combine all odd indexes into a single bitfield, with 4 bits for each
	const eXuint32_t mo = (PermuteY0 & 15) | (PermuteW0 & 15) << 4 | (PermuteY1 & 15) << 8 | (PermuteW1 & 15) << 12
		| (PermuteY2 & 15) << 16 | (PermuteW2 & 15) << 20 | (PermuteY3 & 15) << 24 | (PermuteW3 & 15) << 28;

	// Mask indicating sign of all even indexes, with 4 bits for each, 0 for negative, 0xF for non-negative
	const eXuint32_t se = (PermuteX0 < 0 ? 0 : 0xF) | (PermuteZ0 < 0 ? 0 : 0xF) << 4 | (PermuteX1 < 0 ? 0 : 0xF) << 8 | (PermuteZ1 < 0 ? 0 : 0xF) << 12
		| (PermuteX2 < 0 ? 0 : 0xF) << 16 | (PermuteZ2 < 0 ? 0 : 0xF) << 20 | (PermuteX3 < 0 ? 0 : 0xF) << 24 | (PermuteZ3 < 0 ? 0 : 0xF) << 28;

	// Mask indicating sign of all odd indexes, with 4 bits for each, 0 for negative, 0xF for non-negative
	const eXuint32_t so = (PermuteY0 < 0 ? 0 : 0xF) | (PermuteW0 < 0 ? 0 : 0xF) << 4 | (PermuteY1 < 0 ? 0 : 0xF) << 8 | (PermuteW1 < 0 ? 0 : 0xF) << 12
		| (PermuteY2 < 0 ? 0 : 0xF) << 16 | (PermuteW2 < 0 ? 0 : 0xF) << 20 | (PermuteY3 < 0 ? 0 : 0xF) << 24 | (PermuteW3 < 0 ? 0 : 0xF) << 28;

	// Mask indicating sign of all indexes, with 2 bits for each, 0 for negative (means set to zero or don't care), 0x3 for non-negative
	const eXuint32_t ss = (se & 0x33333333) | (so & 0xCCCCCCCC);

	// Mask indicating required zeroing of all indexes, with 2 bits for each, 0 for index = -1, 3 for index >= 0 or -256
	const eXuint32_t ssz = ((PermuteX0 & 0x80) ? 0 : 3) | ((PermuteY0 & 0x80) ? 0 : 3) << 2 | ((PermuteZ0 & 0x80) ? 0 : 3) << 4 | ((PermuteW0 & 0x80) ? 0 : 3) << 6 |
		((PermuteX1 & 0x80) ? 0 : 3) << 8 | ((PermuteY1 & 0x80) ? 0 : 3) << 10 | ((PermuteZ1 & 0x80) ? 0 : 3) << 12 | ((PermuteW1 & 0x80) ? 0 : 3) << 14 |
		((PermuteX2 & 0x80) ? 0 : 3) << 16 | ((PermuteY2 & 0x80) ? 0 : 3) << 18 | ((PermuteZ2 & 0x80) ? 0 : 3) << 20 | ((PermuteW2 & 0x80) ? 0 : 3) << 22 |
		((PermuteX3 & 0x80) ? 0 : 3) << 24 | ((PermuteY3 & 0x80) ? 0 : 3) << 26 | ((PermuteZ3 & 0x80) ? 0 : 3) << 28 | ((PermuteW3 & 0x80) ? 0 : 3) << 30;

	// These indexes are used only to avoid bogus compiler warnings in false branches
	const int I0 = PermuteX0 > 0 ? (PermuteX0 & 0xF) : 0;
	const int I15 = PermuteW3 > 0 ? (PermuteW3 & 0xF) : 0;

	// special case: all zero
	if (ss == 0)
	{
		return _mm_setzero_si128();
	}

	// remember if extra zeroing is needed
	eXbool_t do_and_zero = (ssz != 0xFFFFFFFFu);

	// check for special shortcut cases
	int shortcut = 0;

	// check if any permutation
	if (((me ^ 0xECA86420) & se) == 0 && ((mo ^ 0xFDB97531) & so) == 0)
	{
		shortcut = 1;
	}
	// check if we can use punpcklbw
	else if (((me ^ 0x76543210) & se) == 0 && ((mo ^ 0x76543210) & so) == 0)
	{
		shortcut = 2;
	}
	// check if we can use punpckhbw
	else if (((me ^ 0xFEDCBA98) & se) == 0 && ((mo ^ 0xFEDCBA98) & so) == 0)
	{
		shortcut = 3;
	}

#if defined (_MSC_VER) && ! defined(__INTEL_COMPILER)
#pragma warning(disable: 4307)  // disable MS warning C4307: '+' : integral constant overflow
#endif

	// check if we can use byte shift right
	else if (PermuteX0 > 0 && ((me ^ (reinterpret_cast<eXuint32_t>(I0) * 0x11111111u + 0xECA86420u)) & se) == 0 &&
		((mo ^ (reinterpret_cast<eXuint32_t>(I0) * 0x11111111u + 0xFDB97531u)) & so) == 0)
	{
		shortcut = 4;
		do_and_zero = ((0xFFFFFFFFu >> 2 * I0) & ~ssz) != 0;
	}
	// check if we can use byte shift left
	else if (PermuteW3 >= 0 && PermuteW3 < 15 &&
		((mo ^ (reinterpret_cast<eXuint32_t>(I15 * 0x11111111u) - (0x02468ACEu & so))) & so) == 0 &&
			 ((me ^ (reinterpret_cast<eXuint32_t>(I15 * 0x11111111u) - (0x13579BDFu & se))) & se) == 0)
	{
		shortcut = 5;
		do_and_zero = ((0xFFFFFFFFu << 2 * (15 - I15)) & ~ssz) != 0;
	}

	if (eX_has_SSSE3) // SSSE3 (PSHUFB available only under SSSE3)
	{
		// special case: rotate
		if (PermuteX0 > 0 && PermuteX0 < 16 && PermuteY0 == ((PermuteX0 + 1) & 15) && PermuteZ0 == ((PermuteX0 + 2) & 15) && PermuteW0 == ((PermuteX0 + 3) & 15) && PermuteX1 == ((PermuteX0 + 4) & 15) && PermuteY1 == ((PermuteX0 + 5) & 15) && PermuteZ1 == ((PermuteX0 + 6) & 15) && PermuteW1 == ((PermuteX0 + 7) & 15)
			&& PermuteX2 == ((PermuteX0 + 8) & 15) && PermuteY2 == ((PermuteX0 + 9) & 15) && PermuteZ2 == ((PermuteX0 + 10) & 15) && PermuteW2 == ((PermuteX0 + 11) & 15) && PermuteX3 == ((PermuteX0 + 12) & 15) && PermuteY3 == ((PermuteX0 + 13) & 15) && PermuteZ3 == ((PermuteX0 + 14) & 15) && PermuteW3 == ((PermuteX0 + 15) & 15))
		{
			temp = _mm_alignr_epi8(InXmmi_a, InXmmi_a, PermuteX0 & 15);
			shortcut = -1;
		}
		if (shortcut == 0 || do_and_zero)
		{
			// general case: use PSHUFB
			__m128i mask = Constant_int32<
				(PermuteX0 & 0xFF) | (PermuteY0 & 0xFF) << 8 | (PermuteZ0 & 0xFF) << 16 | (PermuteW0 & 0xFF) << 24,
				(PermuteX1 & 0xFF) | (PermuteY1 & 0xFF) << 8 | (PermuteZ1 & 0xFF) << 16 | (PermuteW1 & 0xFF) << 24,
				(PermuteX2 & 0xFF) | (PermuteY2 & 0xFF) << 8 | (PermuteZ2 & 0xFF) << 16 | (PermuteW2 & 0xFF) << 24,
				(PermuteX3 & 0xFF) | (PermuteY3 & 0xFF) << 8 | (PermuteZ3 & 0xFF) << 16 | (PermuteW3 & 0xFF) << 24 >();
			temp = _mm_shuffle_epi8(InXmmi_a, mask);
			shortcut = -1;
			do_and_zero = false;
		}
	}

	// Check if we can use 16-bit permute. Even numbered indexes must be even and odd numbered
	// indexes must be equal to the preceding index + 1, except for negative indexes.
	if (shortcut == 0 && (me & 0x11111111 & se) == 0 && ((mo ^ 0x11111111) & 0x11111111 & so) == 0 && ((me ^ mo) & 0xEEEEEEEE & se & so) == 0)
	{
		temp = eXSSEInt16Vector::permute_template<
			PermuteX0 >= 0 ? PermuteX0 / 2 : PermuteY0 >= 0 ? PermuteY0 / 2 : (PermuteX0 | PermuteY0),
			PermuteZ0 >= 0 ? PermuteZ0 / 2 : PermuteW0 >= 0 ? PermuteW0 / 2 : (PermuteZ0 | PermuteW0),
			PermuteX1 >= 0 ? PermuteX1 / 2 : PermuteY1 >= 0 ? PermuteY1 / 2 : (PermuteX1 | PermuteY1),
			PermuteZ1 >= 0 ? PermuteZ1 / 2 : PermuteW1 >= 0 ? PermuteW1 / 2 : (PermuteZ1 | PermuteW1),
			PermuteX2 >= 0 ? PermuteX2 / 2 : PermuteY2 >= 0 ? PermuteY2 / 2 : (PermuteX2 | PermuteY2),
			PermuteZ2 >= 0 ? PermuteZ2 / 2 : PermuteW2 >= 0 ? PermuteW2 / 2 : (PermuteZ2 | PermuteW2),
			PermuteX3 >= 0 ? PermuteX3 / 2 : PermuteY3 >= 0 ? PermuteY3 / 2 : (PermuteX3 | PermuteY3),
			PermuteZ3 >= 0 ? PermuteZ3 / 2 : PermuteW3 >= 0 ? PermuteW3 / 2 : (PermuteZ3 | PermuteW3)>(InXmmi_a);
		shortcut = 100;
		do_and_zero = (se != so && ssz != 0xFFFFFFFFu);
	}

	// Check if we can use 16-bit permute with bytes swapped. Even numbered indexes must be odd and odd 
	// numbered indexes must be equal to the preceding index - 1, except for negative indexes.
	// (this case occurs when reversing byte order)
	if (shortcut == 0 && ((me ^ 0x11111111) & 0x11111111 & se) == 0 && (mo & 0x11111111 & so) == 0 && ((me ^ mo) & 0xEEEEEEEE & se & so) == 0)
	{
		eXSSEInt8Vector swapped = eXSSEInt16Vector::Rotate(InXmmi_a), 8)); // swap odd and even bytes
		temp = eXSSEInt16Vector::permute_template<
			PermuteX0 >= 0 ? PermuteX0 / 2 : PermuteY0 >= 0 ? PermuteY0 / 2 : (PermuteX0 | PermuteY0),
			PermuteZ0 >= 0 ? PermuteZ0 / 2 : PermuteW0 >= 0 ? PermuteW0 / 2 : (PermuteZ0 | PermuteW0),
			PermuteX1 >= 0 ? PermuteX1 / 2 : PermuteY1 >= 0 ? PermuteY1 / 2 : (PermuteX1 | PermuteY1),
			PermuteZ1 >= 0 ? PermuteZ1 / 2 : PermuteW1 >= 0 ? PermuteW1 / 2 : (PermuteZ1 | PermuteW1),
			PermuteX2 >= 0 ? PermuteX2 / 2 : PermuteY2 >= 0 ? PermuteY2 / 2 : (PermuteX2 | PermuteY2),
			PermuteZ2 >= 0 ? PermuteZ2 / 2 : PermuteW2 >= 0 ? PermuteW2 / 2 : (PermuteZ2 | PermuteW2),
			PermuteX3 >= 0 ? PermuteX3 / 2 : PermuteY3 >= 0 ? PermuteY3 / 2 : (PermuteX3 | PermuteY3),
			PermuteZ3 >= 0 ? PermuteZ3 / 2 : PermuteW3 >= 0 ? PermuteW3 / 2 : (PermuteZ3 | PermuteW3) >(swapped);
		shortcut = 101;
		do_and_zero = (se != so && ssz != 0xFFFFFFFFu);
	}

	// all shortcuts end here
	if (shortcut)
	{
		switch (shortcut)
		{
			case 1:
				temp = InXmmi_a;  break;
			case 2:
				temp = _mm_unpacklo_epi8(InXmmi_a, InXmmi_a);  break;
			case 3:
				temp = _mm_unpackhi_epi8(InXmmi_a, InXmmi_a);  break;
			case 4:
				temp = _mm_srli_si128(InXmmi_a, I0);  break;
			case 5:
				temp = _mm_slli_si128(InXmmi_a, 15 - I15);  break;
			default:
				break;  // result is already in temp
		}
		if (do_and_zero)
		{
			// additional zeroing needed
			__m128i maskz = Constant_int32<
				(PermuteX0 < 0 ? 0 : 0xFF) | (PermuteY0 < 0 ? 0 : 0xFF00) | (PermuteZ0 < 0 ? 0 : 0xFF0000) | (PermuteW0 < 0 ? 0 : 0xFF000000),
				(PermuteX1 < 0 ? 0 : 0xFF) | (PermuteY1 < 0 ? 0 : 0xFF00) | (PermuteZ1 < 0 ? 0 : 0xFF0000) | (PermuteW1 < 0 ? 0 : 0xFF000000),
				(PermuteX2 < 0 ? 0 : 0xFF) | (PermuteY2 < 0 ? 0 : 0xFF00) | (PermuteZ2 < 0 ? 0 : 0xFF0000) | (PermuteW2 < 0 ? 0 : 0xFF000000),
				(PermuteX3 < 0 ? 0 : 0xFF) | (PermuteY3 < 0 ? 0 : 0xFF00) | (PermuteZ3 < 0 ? 0 : 0xFF0000) | (PermuteW3 < 0 ? 0 : 0xFF000000) >();
			temp = _mm_and_si128(temp, maskz);
		}
		return temp;
	}

	// complicated cases: use 16-bit permute up to four times
	const eXbool_t e2e = (~me & 0x11111111 & se) != 0;  // even bytes of source to even bytes of destination
	const eXbool_t e2o = (~mo & 0x11111111 & so) != 0;  // even bytes of source to odd  bytes of destination
	const eXbool_t o2e = (me & 0x11111111 & se) != 0;  // odd  bytes of source to even bytes of destination
	const eXbool_t o2o = (mo & 0x11111111 & so) != 0;  // odd  bytes of source to odd  bytes of destination

	eXSSEInt8Vector swapped, te2e, te2o, to2e, to2o, combeven, combodd;

	if (e2o || o2e) swapped = eXSSEInt16Vector::Rotate(InXmmi_a, 8); // swap odd and even bytes

	// even-to-even bytes
	if (e2e) te2e = eXSSEInt16Vector::permute_template<(PermuteX0 & 1) ? -1 : PermuteX0 / 2, (PermuteZ0 & 1) ? -1 : PermuteZ0 / 2, (PermuteX1 & 1) ? -1 : PermuteX1 / 2, (PermuteZ1 & 1) ? -1 : PermuteZ1 / 2,
		(PermuteX2 & 1) ? -1 : PermuteX2 / 2, (PermuteZ2 & 1) ? -1 : PermuteZ2 / 2, (PermuteX3 & 1) ? -1 : PermuteX3 / 2, (PermuteZ3 & 1) ? -1 : PermuteZ3 / 2>(InXmmi_a);
	// odd-to-even bytes
	if (o2e) to2e = eXSSEInt16Vector::permute_template<(PermuteX0 & 1) ? PermuteX0 / 2 : -1, (PermuteZ0 & 1) ? PermuteZ0 / 2 : -1, (PermuteX1 & 1) ? PermuteX1 / 2 : -1, (PermuteZ1 & 1) ? PermuteZ1 / 2 : -1,
		(PermuteX2 & 1) ? PermuteX2 / 2 : -1, (PermuteZ2 & 1) ? PermuteZ2 / 2 : -1, (PermuteX3 & 1) ? PermuteX3 / 2 : -1, (PermuteZ3 & 1) ? PermuteZ3 / 2 : -1>(swapped);
	// even-to-odd bytes
	if (e2o) te2o = eXSSEInt16Vector::permute_template<(PermuteY0 & 1) ? -1 : PermuteY0 / 2, (PermuteW0 & 1) ? -1 : PermuteW0 / 2, (PermuteY1 & 1) ? -1 : PermuteY1 / 2, (PermuteW1 & 1) ? -1 : PermuteW1 / 2,
		(PermuteY2 & 1) ? -1 : PermuteY2 / 2, (PermuteW2 & 1) ? -1 : PermuteW2 / 2, (PermuteY3 & 1) ? -1 : PermuteY3 / 2, (PermuteW3 & 1) ? -1 : PermuteW3 / 2>(swapped);
	// odd-to-odd bytes
	if (o2o) to2o = eXSSEInt16Vector::permute_template<(PermuteY0 & 1) ? PermuteY0 / 2 : -1, (PermuteW0 & 1) ? PermuteW0 / 2 : -1, (PermuteY1 & 1) ? PermuteY1 / 2 : -1, (PermuteW1 & 1) ? PermuteW1 / 2 : -1,
		(PermuteY2 & 1) ? PermuteY2 / 2 : -1, (PermuteW2 & 1) ? PermuteW2 / 2 : -1, (PermuteY3 & 1) ? PermuteY3 / 2 : -1, (PermuteW3 & 1) ? PermuteW3 / 2 : -1>(InXmmi_a);

#if defined (_MSC_VER) && ! defined(__INTEL_COMPILER)
#pragma warning(pop)  // disable MS warning C4307: '+' : integral constant overflow
#endif

	if (e2e && o2e) combeven = te2e | to2e;
	else if (e2e)   combeven = te2e;
	else if (o2e)   combeven = to2e;
	else            combeven = _mm_setzero_si128();

	if (e2o && o2o) combodd = te2o | to2o;
	else if (e2o)   combodd = te2o;
	else if (o2o)   combodd = to2o;
	else            combodd = _mm_setzero_si128();

	__m128i maske = Constant_int32<     // mask used even bytes
		(PermuteX0 < 0 ? 0 : 0xFF) | (PermuteZ0 < 0 ? 0 : 0xFF0000),
		(PermuteX1 < 0 ? 0 : 0xFF) | (PermuteZ1 < 0 ? 0 : 0xFF0000),
		(PermuteX2 < 0 ? 0 : 0xFF) | (PermuteZ2 < 0 ? 0 : 0xFF0000),
		(PermuteX3 < 0 ? 0 : 0xFF) | (PermuteZ3 < 0 ? 0 : 0xFF0000) >();
	__m128i masko = Constant_int32<     // mask used odd bytes
		(PermuteY0 < 0 ? 0 : 0xFF00) | (PermuteW0 < 0 ? 0 : 0xFF000000),
		(PermuteY1 < 0 ? 0 : 0xFF00) | (PermuteW1 < 0 ? 0 : 0xFF000000),
		(PermuteY2 < 0 ? 0 : 0xFF00) | (PermuteW2 < 0 ? 0 : 0xFF000000),
		(PermuteY3 < 0 ? 0 : 0xFF00) | (PermuteW3 < 0 ? 0 : 0xFF000000) >();

						// combine even and odd bytes
	return  _mm_or_si128(_mm_and_si128(combeven, maske), _mm_and_si128(combodd, masko));
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Permute(const eXSSEInt8Vector& InXmmi_a, int PermuteX0, int PermuteY0, int PermuteZ0, int PermuteW0, int PermuteX1, int PermuteY1, int PermuteZ1, int PermuteW1,
													   int PermuteX2, int PermuteY2, int PermuteZ2, int PermuteW2, int PermuteX3, int PermuteY3, int PermuteZ3, int PermuteW3)
{
	eX_ASSERTIF_MSG((PermuteX0 >= -1) && (PermuteX0 <= 15), "PermuteX0 parameter out of range");
	eX_ASSERTIF_MSG((PermuteY0 >= -1) && (PermuteY0 <= 15), "PermuteY0 parameter out of range");
	eX_ASSERTIF_MSG((PermuteZ0 >= -1) && (PermuteZ0 <= 15), "PermuteZ0 parameter out of range");
	eX_ASSERTIF_MSG((PermuteW0 >= -1) && (PermuteW0 <= 15), "PermuteW0 parameter out of range");
	eX_ASSERTIF_MSG((PermuteX1 >= -1) && (PermuteX1 <= 15), "PermuteX1 parameter out of range");
	eX_ASSERTIF_MSG((PermuteY1 >= -1) && (PermuteY1 <= 15), "PermuteY1 parameter out of range");
	eX_ASSERTIF_MSG((PermuteZ1 >= -1) && (PermuteZ1 <= 15), "PermuteZ1 parameter out of range");
	eX_ASSERTIF_MSG((PermuteW1 >= -1) && (PermuteW1 <= 15), "PermuteW1 parameter out of range");
	eX_ASSERTIF_MSG((PermuteX2 >= -1) && (PermuteX2 <= 15), "PermuteX2 parameter out of range");
	eX_ASSERTIF_MSG((PermuteY2 >= -1) && (PermuteY2 <= 15), "PermuteY2 parameter out of range");
	eX_ASSERTIF_MSG((PermuteZ2 >= -1) && (PermuteZ2 <= 15), "PermuteZ2 parameter out of range");
	eX_ASSERTIF_MSG((PermuteW2 >= -1) && (PermuteW2 <= 15), "PermuteW2 parameter out of range");
	eX_ASSERTIF_MSG((PermuteX3 >= -1) && (PermuteX3 <= 15), "PermuteX3 parameter out of range");
	eX_ASSERTIF_MSG((PermuteY3 >= -1) && (PermuteY3 <= 15), "PermuteY3 parameter out of range");
	eX_ASSERTIF_MSG((PermuteZ3 >= -1) && (PermuteZ3 <= 15), "PermuteZ3 parameter out of range");
	eX_ASSERTIF_MSG((PermuteW3 >= -1) && (PermuteW3 <= 15), "PermuteW3 parameter out of range");

	__m128i temp;

	// Combine all even indexes into a single bitfield, with 4 bits for each
	const eXuint32_t me = (PermuteX0 & 15) | (PermuteZ0 & 15) << 4 | (PermuteX1 & 15) << 8 | (PermuteZ1 & 15) << 12
		| (PermuteX2 & 15) << 16 | (PermuteZ2 & 15) << 20 | (PermuteX3 & 15) << 24 | (PermuteZ3 & 15) << 28;

	// Combine all odd indexes into a single bitfield, with 4 bits for each
	const eXuint32_t mo = (PermuteY0 & 15) | (PermuteW0 & 15) << 4 | (PermuteY1 & 15) << 8 | (PermuteW1 & 15) << 12
		| (PermuteY2 & 15) << 16 | (PermuteW2 & 15) << 20 | (PermuteY3 & 15) << 24 | (PermuteW3 & 15) << 28;

	// Mask indicating sign of all even indexes, with 4 bits for each, 0 for negative, 0xF for non-negative
	const eXuint32_t se = (PermuteX0 < 0 ? 0 : 0xF) | (PermuteZ0 < 0 ? 0 : 0xF) << 4 | (PermuteX1 < 0 ? 0 : 0xF) << 8 | (PermuteZ1 < 0 ? 0 : 0xF) << 12
		| (PermuteX2 < 0 ? 0 : 0xF) << 16 | (PermuteZ2 < 0 ? 0 : 0xF) << 20 | (PermuteX3 < 0 ? 0 : 0xF) << 24 | (PermuteZ3 < 0 ? 0 : 0xF) << 28;

	// Mask indicating sign of all odd indexes, with 4 bits for each, 0 for negative, 0xF for non-negative
	const eXuint32_t so = (PermuteY0 < 0 ? 0 : 0xF) | (PermuteW0 < 0 ? 0 : 0xF) << 4 | (PermuteY1 < 0 ? 0 : 0xF) << 8 | (PermuteW1 < 0 ? 0 : 0xF) << 12
		| (PermuteY2 < 0 ? 0 : 0xF) << 16 | (PermuteW2 < 0 ? 0 : 0xF) << 20 | (PermuteY3 < 0 ? 0 : 0xF) << 24 | (PermuteW3 < 0 ? 0 : 0xF) << 28;

	// Mask indicating sign of all indexes, with 2 bits for each, 0 for negative (means set to zero or don't care), 0x3 for non-negative
	const eXuint32_t ss = (se & 0x33333333) | (so & 0xCCCCCCCC);

	// Mask indicating required zeroing of all indexes, with 2 bits for each, 0 for index = -1, 3 for index >= 0 or -256
	const eXuint32_t ssz = ((PermuteX0 & 0x80) ? 0 : 3) | ((PermuteY0 & 0x80) ? 0 : 3) << 2 | ((PermuteZ0 & 0x80) ? 0 : 3) << 4 | ((PermuteW0 & 0x80) ? 0 : 3) << 6 |
		((PermuteX1 & 0x80) ? 0 : 3) << 8 | ((PermuteY1 & 0x80) ? 0 : 3) << 10 | ((PermuteZ1 & 0x80) ? 0 : 3) << 12 | ((PermuteW1 & 0x80) ? 0 : 3) << 14 |
		((PermuteX2 & 0x80) ? 0 : 3) << 16 | ((PermuteY2 & 0x80) ? 0 : 3) << 18 | ((PermuteZ2 & 0x80) ? 0 : 3) << 20 | ((PermuteW2 & 0x80) ? 0 : 3) << 22 |
		((PermuteX3 & 0x80) ? 0 : 3) << 24 | ((PermuteY3 & 0x80) ? 0 : 3) << 26 | ((PermuteZ3 & 0x80) ? 0 : 3) << 28 | ((PermuteW3 & 0x80) ? 0 : 3) << 30;

	// These indexes are used only to avoid bogus compiler warnings in false branches
	const int I0 = PermuteX0 > 0 ? (PermuteX0 & 0xF) : 0;
	const int I15 = PermuteW3 > 0 ? (PermuteW3 & 0xF) : 0;

	// special case: all zero
	if (ss == 0)
	{
		return _mm_setzero_si128();
	}

	// remember if extra zeroing is needed
	eXbool_t do_and_zero = (ssz != 0xFFFFFFFFu);

	// check for special shortcut cases
	int shortcut = 0;

	// check if any permutation
	if (((me ^ 0xECA86420) & se) == 0 && ((mo ^ 0xFDB97531) & so) == 0)
	{
		shortcut = 1;
	}
	// check if we can use punpcklbw
	else if (((me ^ 0x76543210) & se) == 0 && ((mo ^ 0x76543210) & so) == 0)
	{
		shortcut = 2;
	}
	// check if we can use punpckhbw
	else if (((me ^ 0xFEDCBA98) & se) == 0 && ((mo ^ 0xFEDCBA98) & so) == 0)
	{
		shortcut = 3;
	}

#if defined (_MSC_VER) && ! defined(__INTEL_COMPILER)
#pragma warning(disable: 4307)  // disable MS warning C4307: '+' : integral constant overflow
#endif

	// check if we can use byte shift right
	else if (PermuteX0 > 0 && ((me ^ (reinterpret_cast<eXuint32_t>(I0 * 0x11111111u) + 0xECA86420u)) & se) == 0 &&
		((mo ^ (reinterpret_cast<eXuint32_t>(I0 * 0x11111111u) + 0xFDB97531u)) & so) == 0)
	{
		shortcut = 4;
		do_and_zero = ((0xFFFFFFFFu >> 2 * I0) & ~ssz) != 0;
	}
	// check if we can use byte shift left
	else if (PermuteW3 >= 0 && PermuteW3 < 15 &&
		((mo ^ (reinterpret_cast<eXuint32_t>(I15 * 0x11111111u) - (0x02468ACEu & so))) & so) == 0 &&
			 ((me ^ (reinterpret_cast<eXuint32_t>(I15 * 0x11111111u) - (0x13579BDFu & se))) & se) == 0)
	{
		shortcut = 5;
		do_and_zero = ((0xFFFFFFFFu << 2 * (15 - I15)) & ~ssz) != 0;
	}

	if (eX_has_SSSE3) // SSSE3 (PSHUFB available only under SSSE3)
	{
		// special case: rotate
		if (PermuteX0 > 0 && PermuteX0 < 16 && PermuteY0 == ((PermuteX0 + 1) & 15) && PermuteZ0 == ((PermuteX0 + 2) & 15) && PermuteW0 == ((PermuteX0 + 3) & 15) && PermuteX1 == ((PermuteX0 + 4) & 15) && PermuteY1 == ((PermuteX0 + 5) & 15) && PermuteZ1 == ((PermuteX0 + 6) & 15) && PermuteW1 == ((PermuteX0 + 7) & 15)
			&& PermuteX2 == ((PermuteX0 + 8) & 15) && PermuteY2 == ((PermuteX0 + 9) & 15) && PermuteZ2 == ((PermuteX0 + 10) & 15) && PermuteW2 == ((PermuteX0 + 11) & 15) && PermuteX3 == ((PermuteX0 + 12) & 15) && PermuteY3 == ((PermuteX0 + 13) & 15) && PermuteZ3 == ((PermuteX0 + 14) & 15) && PermuteW3 == ((PermuteX0 + 15) & 15))
		{
			temp = _mm_alignr_epi8(InXmmi_a, InXmmi_a, PermuteX0 & 15);
			shortcut = -1;
		}
		if (shortcut == 0 || do_and_zero)
		{
			// general case: use PSHUFB
			__m128i mask = eXSSEInt32Vector((PermuteX0 & 0xFF) | (PermuteY0 & 0xFF) << 8 | (PermuteZ0 & 0xFF) << 16 | (PermuteW0 & 0xFF) << 24,
				(PermuteX1 & 0xFF) | (PermuteY1 & 0xFF) << 8 | (PermuteZ1 & 0xFF) << 16 | (PermuteW1 & 0xFF) << 24,
				(PermuteX2 & 0xFF) | (PermuteY2 & 0xFF) << 8 | (PermuteZ2 & 0xFF) << 16 | (PermuteW2 & 0xFF) << 24,
				(PermuteX3 & 0xFF) | (PermuteY3 & 0xFF) << 8 | (PermuteZ3 & 0xFF) << 16 | (PermuteW3 & 0xFF) << 24);
			temp = _mm_shuffle_epi8(InXmmi_a, mask);
			shortcut = -1;
			do_and_zero = false;
		}
	}

	// Check if we can use 16-bit permute. Even numbered indexes must be even and odd numbered
	// indexes must be equal to the preceding index + 1, except for negative indexes.
	if (shortcut == 0 && (me & 0x11111111 & se) == 0 && ((mo ^ 0x11111111) & 0x11111111 & so) == 0 && ((me ^ mo) & 0xEEEEEEEE & se & so) == 0)
	{
		temp = eXSSEInt16Vector::Permute(InXmmi_a, PermuteX0 >= 0 ? PermuteX0 / 2 : PermuteY0 >= 0 ? PermuteY0 / 2 : (PermuteX0 | PermuteY0),
										 PermuteZ0 >= 0 ? PermuteZ0 / 2 : PermuteW0 >= 0 ? PermuteW0 / 2 : (PermuteZ0 | PermuteW0),
										 PermuteX1 >= 0 ? PermuteX1 / 2 : PermuteY1 >= 0 ? PermuteY1 / 2 : (PermuteX1 | PermuteY1),
										 PermuteZ1 >= 0 ? PermuteZ1 / 2 : PermuteW1 >= 0 ? PermuteW1 / 2 : (PermuteZ1 | PermuteW1),
										 PermuteX2 >= 0 ? PermuteX2 / 2 : PermuteY2 >= 0 ? PermuteY2 / 2 : (PermuteX2 | PermuteY2),
										 PermuteZ2 >= 0 ? PermuteZ2 / 2 : PermuteW2 >= 0 ? PermuteW2 / 2 : (PermuteZ2 | PermuteW2),
										 PermuteX3 >= 0 ? PermuteX3 / 2 : PermuteY3 >= 0 ? PermuteY3 / 2 : (PermuteX3 | PermuteY3),
										 PermuteZ3 >= 0 ? PermuteZ3 / 2 : PermuteW3 >= 0 ? PermuteW3 / 2 : (PermuteZ3 | PermuteW3));
		shortcut = 100;
		do_and_zero = (se != so && ssz != 0xFFFFFFFFu);
	}

	// Check if we can use 16-bit permute with bytes swapped. Even numbered indexes must be odd and odd 
	// numbered indexes must be equal to the preceding index - 1, except for negative indexes.
	// (this case occurs when reversing byte order)
	if (shortcut == 0 && ((me ^ 0x11111111) & 0x11111111 & se) == 0 && (mo & 0x11111111 & so) == 0 && ((me ^ mo) & 0xEEEEEEEE & se & so) == 0)
	{
		eXSSEInt8Vector swapped = eXSSEInt16Vector::Rotate(InXmmi_a, 8); // swap odd and even bytes
		temp = eXSSEInt16Vector::Permute(swapped, PermuteX0 >= 0 ? PermuteX0 / 2 : PermuteY0 >= 0 ? PermuteY0 / 2 : (PermuteX0 | PermuteY0),
												  PermuteZ0 >= 0 ? PermuteZ0 / 2 : PermuteW0 >= 0 ? PermuteW0 / 2 : (PermuteZ0 | PermuteW0),
												  PermuteX1 >= 0 ? PermuteX1 / 2 : PermuteY1 >= 0 ? PermuteY1 / 2 : (PermuteX1 | PermuteY1),
												  PermuteZ1 >= 0 ? PermuteZ1 / 2 : PermuteW1 >= 0 ? PermuteW1 / 2 : (PermuteZ1 | PermuteW1),
												  PermuteX2 >= 0 ? PermuteX2 / 2 : PermuteY2 >= 0 ? PermuteY2 / 2 : (PermuteX2 | PermuteY2),
												  PermuteZ2 >= 0 ? PermuteZ2 / 2 : PermuteW2 >= 0 ? PermuteW2 / 2 : (PermuteZ2 | PermuteW2),
												  PermuteX3 >= 0 ? PermuteX3 / 2 : PermuteY3 >= 0 ? PermuteY3 / 2 : (PermuteX3 | PermuteY3),
												  PermuteZ3 >= 0 ? PermuteZ3 / 2 : PermuteW3 >= 0 ? PermuteW3 / 2 : (PermuteZ3 | PermuteW3));
		shortcut = 101;
		do_and_zero = (se != so && ssz != 0xFFFFFFFFu);
	}

	// all shortcuts end here
	if (shortcut)
	{
		switch (shortcut)
		{
			case 1:
				temp = InXmmi_a;  break;
			case 2:
				temp = _mm_unpacklo_epi8(InXmmi_a, InXmmi_a);  break;
			case 3:
				temp = _mm_unpackhi_epi8(InXmmi_a, InXmmi_a);  break;
			case 4:
				temp = _mm_srli_si128(InXmmi_a, I0);  break;
			case 5:
				temp = _mm_slli_si128(InXmmi_a, 15 - I15);  break;
			default:
				break;  // result is already in temp
		}
		if (do_and_zero)
		{
			// additional zeroing needed
			__m128i maskz = eXSSEInt32Vector((PermuteX0 < 0 ? 0 : 0xFF) | (PermuteY0 < 0 ? 0 : 0xFF00) | (PermuteZ0 < 0 ? 0 : 0xFF0000) | (PermuteW0 < 0 ? 0 : 0xFF000000),
				(PermuteX1 < 0 ? 0 : 0xFF) | (PermuteY1 < 0 ? 0 : 0xFF00) | (PermuteZ1 < 0 ? 0 : 0xFF0000) | (PermuteW1 < 0 ? 0 : 0xFF000000),
				(PermuteX2 < 0 ? 0 : 0xFF) | (PermuteY2 < 0 ? 0 : 0xFF00) | (PermuteZ2 < 0 ? 0 : 0xFF0000) | (PermuteW2 < 0 ? 0 : 0xFF000000),
				(PermuteX3 < 0 ? 0 : 0xFF) | (PermuteY3 < 0 ? 0 : 0xFF00) | (PermuteZ3 < 0 ? 0 : 0xFF0000) | (PermuteW3 < 0 ? 0 : 0xFF000000));
			temp = _mm_and_si128(temp, maskz);
		}
		return temp;
	}

	// complicated cases: use 16-bit permute up to four times
	const eXbool_t e2e = (~me & 0x11111111 & se) != 0;  // even bytes of source to even bytes of destination
	const eXbool_t e2o = (~mo & 0x11111111 & so) != 0;  // even bytes of source to odd  bytes of destination
	const eXbool_t o2e = (me & 0x11111111 & se) != 0;  // odd  bytes of source to even bytes of destination
	const eXbool_t o2o = (mo & 0x11111111 & so) != 0;  // odd  bytes of source to odd  bytes of destination

	eXSSEInt8Vector swapped, te2e, te2o, to2e, to2o, combeven, combodd;

	if (e2o || o2e) swapped = eXSSEInt16Vector::Rotate(InXmmi_a, 8); // swap odd and even bytes

	// even-to-even bytes
	if (e2e) te2e = eXSSEInt16Vector::Permute(InXmmi_a, (PermuteX0 & 1) ? -1 : PermuteX0 / 2, (PermuteZ0 & 1) ? -1 : PermuteZ0 / 2, (PermuteX1 & 1) ? -1 : PermuteX1 / 2, 
		(PermuteZ1 & 1) ? -1 : PermuteZ1 / 2,	(PermuteX2 & 1) ? -1 : PermuteX2 / 2, (PermuteZ2 & 1) ? -1 : PermuteZ2 / 2, (PermuteX3 & 1) ? -1 : PermuteX3 / 2, (PermuteZ3 & 1) ? -1 : PermuteZ3 / 2);
	// odd-to-even bytes
	if (o2e) to2e = eXSSEInt16Vector::Permute(swapped, (PermuteX0 & 1) ? PermuteX0 / 2 : -1, (PermuteZ0 & 1) ? PermuteZ0 / 2 : -1, (PermuteX1 & 1) ? PermuteX1 / 2 : -1, 
		(PermuteZ1 & 1) ? PermuteZ1 / 2 : -1, (PermuteX2 & 1) ? PermuteX2 / 2 : -1, (PermuteZ2 & 1) ? PermuteZ2 / 2 : -1, (PermuteX3 & 1) ? PermuteX3 / 2 : -1, (PermuteZ3 & 1) ? PermuteZ3 / 2 : -1);
	// even-to-odd bytes
	if (e2o) te2o = eXSSEInt16Vector::Permute(swapped, (PermuteY0 & 1) ? -1 : PermuteY0 / 2, (PermuteW0 & 1) ? -1 : PermuteW0 / 2, (PermuteY1 & 1) ? -1 : PermuteY1 / 2, 
		(PermuteW1 & 1) ? -1 : PermuteW1 / 2, (PermuteY2 & 1) ? -1 : PermuteY2 / 2, (PermuteW2 & 1) ? -1 : PermuteW2 / 2, (PermuteY3 & 1) ? -1 : PermuteY3 / 2, (PermuteW3 & 1) ? -1 : PermuteW3 / 2);
	// odd-to-odd bytes
	if (o2o) to2o = eXSSEInt16Vector::Permute(InXmmi_a, (PermuteY0 & 1) ? PermuteY0 / 2 : -1, (PermuteW0 & 1) ? PermuteW0 / 2 : -1, (PermuteY1 & 1) ? PermuteY1 / 2 : -1, 
		(PermuteW1 & 1) ? PermuteW1 / 2 : -1,	(PermuteY2 & 1) ? PermuteY2 / 2 : -1, (PermuteW2 & 1) ? PermuteW2 / 2 : -1, (PermuteY3 & 1) ? PermuteY3 / 2 : -1, (PermuteW3 & 1) ? PermuteW3 / 2 : -1);

#if defined (_MSC_VER) && ! defined(__INTEL_COMPILER)
#pragma warning(pop)  // disable MS warning C4307: '+' : integral constant overflow
#endif

	if (e2e && o2e) combeven = te2e | to2e;
	else if (e2e)   combeven = te2e;
	else if (o2e)   combeven = to2e;
	else            combeven = _mm_setzero_si128();

	if (e2o && o2o) combodd = te2o | to2o;
	else if (e2o)   combodd = te2o;
	else if (o2o)   combodd = to2o;
	else            combodd = _mm_setzero_si128();

	__m128i maske = eXSSEInt32Vector(     // mask used even bytes
		(PermuteX0 < 0 ? 0 : 0xFF) | (PermuteZ0 < 0 ? 0 : 0xFF0000),
		(PermuteX1 < 0 ? 0 : 0xFF) | (PermuteZ1 < 0 ? 0 : 0xFF0000),
		(PermuteX2 < 0 ? 0 : 0xFF) | (PermuteZ2 < 0 ? 0 : 0xFF0000),
		(PermuteX3 < 0 ? 0 : 0xFF) | (PermuteZ3 < 0 ? 0 : 0xFF0000));
	__m128i masko = eXSSEInt32Vector(     // mask used odd bytes
		(PermuteY0 < 0 ? 0 : 0xFF00) | (PermuteW0 < 0 ? 0 : 0xFF000000),
		(PermuteY1 < 0 ? 0 : 0xFF00) | (PermuteW1 < 0 ? 0 : 0xFF000000),
		(PermuteY2 < 0 ? 0 : 0xFF00) | (PermuteW2 < 0 ? 0 : 0xFF000000),
		(PermuteY3 < 0 ? 0 : 0xFF00) | (PermuteW3 < 0 ? 0 : 0xFF000000));

	return  _mm_or_si128( // combine even and odd bytes
						 _mm_and_si128(combeven, maske),
						 _mm_and_si128(combodd, masko));
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Add(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return _mm_add_epi8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Sub(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return _mm_sub_epi8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Mul(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    // There is no 8-bit multiply in SSE2. Split into two 16-bit multiplies
    __m128i aodd = _mm_srli_epi16(InXmmi_a, 8);                 // odd numbered elements of a
    __m128i bodd = _mm_srli_epi16(InXmmi_b, 8);                 // odd numbered elements of b
    __m128i muleven = _mm_mullo_epi16(InXmmi_a, InXmmi_b);                // product of even numbered elements
    __m128i mulodd = _mm_mullo_epi16(aodd, bodd);          // product of odd  numbered elements
    mulodd = _mm_slli_epi16(mulodd, 8);            // put odd numbered elements back in place
    __m128i mask = _mm_set1_epi32(0x00FF00FF);          // mask for even positions
    __m128i product = Select(mask, muleven, mulodd);        // interleave even and odd
    return product;
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Max(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    if (eX_has_SSE41())  // SSE4.1
    {
        return _mm_max_epi8(InXmmi_a, InXmmi_b);
    }
    else  // SSE2
    {
        __m128i msignbit = _mm_set1_epi8(0x80);
        __m128i a1 = _mm_xor_si128(InXmmi_a, msignbit);            // add 0x80
        __m128i b1 = _mm_xor_si128(InXmmi_b, msignbit);            // add 0x80
        __m128i m1 = _mm_max_epu8(a1, b1);                 // unsigned max
        return  _mm_xor_si128(m1, msignbit);                     // sub 0x80
    }
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Min(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    if (eX_has_SSE41())  // SSE4.1
    {
        return _mm_min_epi8(InXmmi_a, InXmmi_b);
    }
    else  // SSE2
    {
        __m128i msignbit = _mm_set1_epi8(0x80);
        __m128i a1 = _mm_xor_si128(InXmmi_a, msignbit);            // add 0x80
        __m128i b1 = _mm_xor_si128(InXmmi_b, msignbit);            // add 0x80
        __m128i m1 = _mm_min_epu8(a1, b1);                 // unsigned min
        return  _mm_xor_si128(m1, msignbit);                     // sub 0x80
    }
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Abs(const eXSSEInt8Vector& InXmmi_a)
{
    if (eX_has_SSSE3())    // SSSE3 supported
    {
        return _mm_sign_epi8(InXmmi_a, InXmmi_a);
    }
    else  // SSE2
    {
        __m128i nega = _mm_sub_epi8(_mm_setzero_si128(), InXmmi_a);
        return _mm_min_epu8(InXmmi_a, nega);   // unsigned min (the negative value is bigger when compared as unsigned)
    }
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Add_Sat(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return _mm_adds_epi8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Sub_Sat(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return _mm_subs_epi8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Abs_Sat(const eXSSEInt8Vector& InXmmi_a)
{
    __m128i absa = Abs(InXmmi_a);                               // abs(a)
    __m128i overfl = _mm_cmpgt_epi8(_mm_setzero_si128(), absa);// 0 > a
    return           _mm_add_epi8(absa, overfl);            // subtract 1 if 0x80
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::If_Add(const eXSSEInt8Vector& InXmmi_f, const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return InXmmi_a + InXmmi_f & InXmmi_b;
}

eX_VECCALL(eXint32_t) eXSSEInt8Vector::Horizontal_Add(const eXSSEInt8Vector& InXmmi_a)
{
    __m128i sum1 = _mm_sad_epu8(InXmmi_a, _mm_setzero_si128());
    __m128i sum2 = _mm_shuffle_epi32(sum1, 2);
    __m128i sum3 = _mm_add_epi16(sum1, sum2);
    int8_t  sum4 = (int8_t)_mm_cvtsi128_si32(sum3);        // truncate to 8 bits
    return  sum4;                                          // sign extend to 32 bits
}

eX_VECCALL(eXint32_t) eXSSEInt8Vector::Horizontal_Add_x(const eXSSEInt8Vector& InXmmi_a)
{
    if (eX_has_XOP())    // AMD XOP instruction set
    {
        __m128i sum1 = _mm_haddq_epi8(InXmmi_a);
        __m128i sum2 = _mm_shuffle_epi32(sum1, 0x0E);          // high element
        __m128i sum3 = _mm_add_epi32(sum1, sum2);              // sum
        return          _mm_cvtsi128_si32(sum3);
    }
    else if (eX_has_SSSE3())    // SSSE3 supported
    {
        __m128i aeven = _mm_slli_epi16(InXmmi_a, 8);                   // even numbered elements of a. get sign bit in position
        aeven = _mm_srai_epi16(aeven, 8);               // sign extend even numbered elements
        __m128i aodd = _mm_srai_epi16(InXmmi_a, 8);                   // sign extend odd  numbered elements
        __m128i sum1 = _mm_add_epi16(aeven, aodd);             // add even and odd elements
        __m128i sum2 = _mm_hadd_epi16(sum1, sum1);             // horizontally add 8 elements in 3 steps
        __m128i sum3 = _mm_hadd_epi16(sum2, sum2);
        __m128i sum4 = _mm_hadd_epi16(sum3, sum3);
        int16_t sum5 = (int16_t)_mm_cvtsi128_si32(sum4);      // 16 bit sum
        return  sum5;                                          // sign extend to 32 bits
    }
    else                 // SSE2
    {
        __m128i aeven = _mm_slli_epi16(InXmmi_a, 8);                   // even numbered elements of a. get sign bit in position
        aeven = _mm_srai_epi16(aeven, 8);               // sign extend even numbered elements
        __m128i aodd = _mm_srai_epi16(InXmmi_a, 8);                   // sign extend odd  numbered elements
        __m128i sum1 = _mm_add_epi16(aeven, aodd);             // add even and odd elements
        __m128i sum2 = _mm_shuffle_epi32(sum1, 0x0E);          // 4 high elements
        __m128i sum3 = _mm_add_epi16(sum1, sum2);              // 4 sums
        __m128i sum4 = _mm_shuffle_epi32(sum3, 0x01);          // 2 high elements
        __m128i sum5 = _mm_add_epi16(sum3, sum4);              // 2 sums
        __m128i sum6 = _mm_shufflelo_epi16(sum5, 0x01);        // 1 high element
        __m128i sum7 = _mm_add_epi16(sum5, sum6);              // 1 sum
        int16_t sum8 = _mm_cvtsi128_si32(sum7);               // 16 bit sum
        return  sum8;                                          // sign extend to 32 bits
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                      Vector rotation functions                      */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Rotate(const eXSSEInt8Vector& InXmmi_a, int b)
{
    if (eX_has_XOP())
    {
        return _mm_rot_epi8(InXmmi_a, _mm_set1_epi8(b));
    }
    else
    {
        __m128i bb = _mm_cvtsi32_si128(b & 7);          // b modulo 8
        __m128i mbb = _mm_cvtsi32_si128((8 - b) & 7);      // 8-b modulo 8
        __m128i maskeven = _mm_set1_epi32(0x00FF00FF);        // mask for even numbered bytes
        __m128i even = _mm_and_si128(InXmmi_a, maskeven);         // even numbered bytes of a
        __m128i odd = _mm_andnot_si128(maskeven, InXmmi_a);      // odd numbered bytes of a
        __m128i evenleft = _mm_sll_epi16(even, bb);            // even bytes of a << b
        __m128i oddleft = _mm_sll_epi16(odd, bb);             // odd  bytes of a << b
        __m128i evenright = _mm_srl_epi16(even, mbb);           // even bytes of a >> 8-b
        __m128i oddright = _mm_srl_epi16(odd, mbb);            // odd  bytes of a >> 8-b
        __m128i evenrot = _mm_or_si128(evenleft, evenright);  // even bytes of a rotated
        __m128i oddrot = _mm_or_si128(oddleft, oddright);    // odd  bytes of a rotated
        return Select(maskeven, evenrot, oddrot);  // all  bytes rotated
    }
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift functions                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Slli(const eXSSEInt8Vector& InXmmi_a, int InCount)
{
    eXuint32_t mask = static_cast<eXuint32_t>(0xFF) << static_cast<eXuint32_t>(InCount);         // mask to remove bits that are shifted out
    __m128i am = _mm_and_si128(InXmmi_a, _mm_set1_epi8((char)mask));  // remove bits that will overflow
    __m128i res = _mm_sll_epi16(am, _mm_cvtsi32_si128(InCount));// 16-bit shifts
    return res;
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Sll(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_Count)
{
    const int InCount = _mm_cvtsi128_si32(InXmmi_Count);
    eXuint32_t mask = static_cast<eXuint32_t>(0xFF) << static_cast<eXuint32_t>(InCount);         // mask to remove bits that are shifted out
    __m128i am = _mm_and_si128(InXmmi_a, _mm_set1_epi8((char)mask));  // remove bits that will overflow
    __m128i res = _mm_sll_epi16(am, _mm_cvtsi32_si128(_mm_cvtsi128_si32(InXmmi_Count)));// 16-bit shifts
    return res;
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Srai(const eXSSEInt8Vector& InXmmi_a, int InCount)
{
    __m128i aeven = _mm_slli_epi16(InXmmi_a, 8);                   // even numbered elements of a. get sign bit in position
    aeven = _mm_sra_epi16(aeven, _mm_cvtsi32_si128(InCount + 8)); // shift arithmetic, back to position
    __m128i aodd = _mm_sra_epi16(InXmmi_a, _mm_cvtsi32_si128(InCount)); // shift odd numbered elements arithmetic
    __m128i mask = _mm_set1_epi32(0x00FF00FF);          // mask for even positions
    __m128i res = Select(mask, aeven, aodd);            // interleave even and odd
    return res;
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Sra(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_Count)
{
    const int InCount = _mm_cvtsi128_si32(InXmmi_Count);
    __m128i aeven = _mm_slli_epi16(InXmmi_a, 8);                   // even numbered elements of a. get sign bit in position
    aeven = _mm_sra_epi16(aeven, _mm_cvtsi32_si128(InCount + 8)); // shift arithmetic, back to position
    __m128i aodd = _mm_sra_epi16(InXmmi_a, _mm_cvtsi32_si128(InCount)); // shift odd numbered elements arithmetic
    __m128i mask = _mm_set1_epi32(0x00FF00FF);          // mask for even positions
    __m128i res = Select(mask, aeven, aodd);            // interleave even and odd
    return res;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison functions                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return _mm_cmpeq_epi8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Lessthan(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return _mm_cmplt_epi8(InXmmi_a, InXmmi_b);

}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Greaterthan(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return _mm_cmpgt_epi8(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Lessthan_or_equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comle_epi8(InXmmi_a, InXmmi_b);
    }
    else
    {
        return Lessthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Greaterthan_or_equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comge_epi8(InXmmi_a, InXmmi_b);
    }
    else
    {
        return Greaterthan(InXmmi_a, InXmmi_b) | Equal(InXmmi_a, InXmmi_b);
    }
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Not_Equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return _mm_comneq_epi8(InXmmi_a, InXmmi_b);
    }
    else  // SSE2
    {
        return Not(Equal(InXmmi_a, InXmmi_b));
    }
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Not_Lessthan(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return Not(Lessthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Not_Lessthan_or_equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Not_Greaterthan(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return Not(Greaterthan(InXmmi_a, InXmmi_b));
}

eX_VECCALL(eXSSEInt8Vector) eXSSEInt8Vector::Not_Greaterthan_or_equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bEqual(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(_mm_cmpeq_epi8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bLessthan(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(_mm_cmplt_epi8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);

}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bGreaterthan(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return ((_mm_movemask_epi8(_mm_cmpgt_epi8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bLessthan_or_equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comle_epi8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Lessthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bGreaterthan_or_equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comge_epi8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else
    {
        return ((_mm_movemask_epi8(Greaterthan_or_equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bNot_Equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    if (eX_has_XOP())  // AMD XOP
    {
        return ((_mm_movemask_epi8(_mm_comneq_epi8(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
    else  // SSE2
    {
        return ((_mm_movemask_epi8(Not_Equal(InXmmi_a, InXmmi_b)) == 0xFFFF) != 0);
    }
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bNot_Lessthan(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return bGreaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bNot_Lessthan_or_equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return bGreaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bNot_Greaterthan(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return bLessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) eXSSEInt8Vector::bNot_Greaterthan_or_equal(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return bLessthan(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         Bitwise operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) operator&(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) operator|(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) operator^(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Xor(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) operator~(const eXSSEInt8Vector& InXmmi_a)
{
    return eXSSEInt8Vector::Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     Bitwise assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector&) operator&=(eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a & InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt8Vector&) operator|=(eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a | InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt8Vector&) operator^=(eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a ^ InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        Logical operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXbool_t) operator&&(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::bLogical_And(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator||(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::bLogical_Or(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXbool_t) operator!(const eXSSEInt8Vector& InXmmi_a)
{
    return  eXSSEInt8Vector::bLogical_Not(InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Arithmetic operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) operator+(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Add(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) operator-(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Sub(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) operator*(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Mul(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                  Arithmetic assignment operators                    */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector&) operator+=(eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a + InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt8Vector&) operator-=(eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a - InXmmi_b;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt8Vector&) operator*=(eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    InXmmi_a = InXmmi_a * InXmmi_b;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Prefix operators                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector&) operator++(eXSSEInt8Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a + 1;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt8Vector&) operator--(eXSSEInt8Vector& InXmmi_a)
{
    InXmmi_a = InXmmi_a - 1;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Postfix operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) operator++(eXSSEInt8Vector& InXmmi_a, int)
{
    eXSSEInt8Vector tmpXmmi_a;
    tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a + 1;
    return tmpXmmi_a;
}

eX_VECCALL(eXSSEInt8Vector) operator--(eXSSEInt8Vector& InXmmi_a, int)
{
    eXSSEInt8Vector tmpXmmi_a;
    tmpXmmi_a = InXmmi_a;
    InXmmi_a = InXmmi_a - 1;
    return tmpXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Unary operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) operator-(const eXSSEInt8Vector& InXmmi_a)
{
    return _mm_sub_epi8(_mm_setzero_si128(), InXmmi_a);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Shift operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) operator<<(const eXSSEInt8Vector& InXmmi_a, int InCount)
{
    return eXSSEInt8Vector::Slli(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt8Vector) operator<<(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_Count)
{
    return eXSSEInt8Vector::Sll(InXmmi_a, InXmmi_Count);
}

eX_VECCALL(eXSSEInt8Vector) operator>>(const eXSSEInt8Vector& InXmmi_a, int InCount)
{
    return eXSSEInt8Vector::Srai(InXmmi_a, InCount);
}

eX_VECCALL(eXSSEInt8Vector) operator>>(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_Count)
{
    return eXSSEInt8Vector::Sra(InXmmi_a, InXmmi_Count);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                    Shift assignment operators                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector&) operator<<=(eXSSEInt8Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a << InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt8Vector&) operator<<=(eXSSEInt8Vector& InXmmi_a, eXSSEInt8Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a << InXmmi_Count;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt8Vector&) operator>>=(eXSSEInt8Vector& InXmmi_a, int InCount)
{
    InXmmi_a = InXmmi_a >> InCount;
    return InXmmi_a;
}

eX_VECCALL(eXSSEInt8Vector&) operator>>=(eXSSEInt8Vector& InXmmi_a, eXSSEInt8Vector& InXmmi_Count)
{
    InXmmi_a = InXmmi_a >> InXmmi_Count;
    return InXmmi_a;
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                       Comparison operators                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXSSEInt8Vector) operator==(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) operator<(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Lessthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) operator<=(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Lessthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) operator>(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Greaterthan(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) operator>=(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Greaterthan_or_equal(InXmmi_a, InXmmi_b);
}

eX_VECCALL(eXSSEInt8Vector) operator!=(const eXSSEInt8Vector& InXmmi_a, const eXSSEInt8Vector& InXmmi_b)
{
    return eXSSEInt8Vector::Not_Equal(InXmmi_a, InXmmi_b);
}

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          Index operators                            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

eX_VECCALL(eXint8_t) eXSSEInt8Vector::operator[](eXuint32_t index) const
{
    return Extract(index);
}
