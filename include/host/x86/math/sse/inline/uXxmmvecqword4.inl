/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - UASM assembly library             / /
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

namespace_uX
namespace_xmm
EXTERN_CC_BEGIN
uX_PACK_PUSH_XMM

// VECTOR'S

// // // // // // // // //
// vecqword4 Start

inline void uX_abi vecqword4::set_xmmi_0(const __m128i Inxmmi) uX_noexcept
{
	m128_xmmi_0 = Inxmmi;
}

inline void uX_abi vecqword4::set_xmmi_1(const __m128i Inxmmi) uX_noexcept
{
	m128_xmmi_1 = Inxmmi;
}

inline void uX_abi vecqword4::set(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = InVecxmmi_a.m128_xmmi_0;
	m128_xmmi_1 = InVecxmmi_a.m128_xmmi_1;
}

inline void uX_abi vecqword4::set_x(int64_t Inint_a) uX_noexcept
{
	m128_xmmi_0 = _uX_MM_SETEPI64X_SI128_IM(m128_xmmi_0, Inint_a, 0);
}

inline void uX_abi vecqword4::set_xy(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_0 = Inxmmi_a;
}

inline void uX_abi vecqword4::set_xyz(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = InVecxmmi_a.get_xmmi_0();
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), _uX_MM_SHUFFLER_EPI64_IM(m128_xmmi_1, 1, 1));
}

inline void uX_abi vecqword4::set_xyzw(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = InVecxmmi_a.m128_xmmi_0;
	m128_xmmi_1 = InVecxmmi_a.m128_xmmi_1;
}

inline void uX_abi vecqword4::set_xyw(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = InVecxmmi_a.get_xmmi_0();
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_1(), 0, 0));
}

inline void uX_abi vecqword4::set_xywz(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = InVecxmmi_a.m128_xmmi_0;
	m128_xmmi_1 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 0);
}

inline void uX_abi vecqword4::set_xz(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(Inxmmi_a.get(), _uX_MM_SHUFFLER_EPI64_IM(m128_xmmi_0, 1, 1));
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(Inxmmi_a.get(), m128_xmmi_1);
}

inline void uX_abi vecqword4::set_xzy(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_a.get_xmmi_1());
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(InVecxmmi_a.get_xmmi_0(), _uX_MM_SHUFFLER_EPI64_IM(m128_xmmi_1, 1, 1));
}

inline void uX_abi vecqword4::set_xzyw(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_a.m128_xmmi_1);
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_a.m128_xmmi_1);
}

inline void uX_abi vecqword4::set_xzw(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_0(), _uX_MM_SHUFFLER_EPI64_IM(m128_xmmi_0, 1, 1));
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(InVecxmmi_a.get_xmmi_0(), _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_1(), 0, 0));
}

inline void uX_abi vecqword4::set_xzwy(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 1));
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(InVecxmmi_a.m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 0, 0));
}

inline void uX_abi vecqword4::set_xw(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(Inxmmi_a.get(), _uX_MM_SHUFFLER_EPI64_IM(m128_xmmi_0, 1, 1));
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(Inxmmi_a.get(), 1, 1));
}

inline void uX_abi vecqword4::set_xwy(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_a.get_xmmi_1());
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 1, 1));
}

inline void uX_abi vecqword4::set_xwyz(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_a.m128_xmmi_1);
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_a.m128_xmmi_0);
}

inline void uX_abi vecqword4::set_xwz(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_0(), _uX_MM_SHUFFLER_EPI64_IM(m128_xmmi_0, 1, 1));
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_1(), 0, 0), InVecxmmi_a.get_xmmi_0());
}

inline void uX_abi vecqword4::set_xwzy(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 1));
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 0, 0), InVecxmmi_a.m128_xmmi_0);
}

inline void uX_abi vecqword4::set_y(int64_t Inint_a) uX_noexcept
{
	m128_xmmi_0 = _uX_MM_SETEPI64X_SI128_IM(m128_xmmi_0, Inint_a, 1);
}

inline void uX_abi vecqword4::set_yx(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_MM_SHUFFLER_EPI64_IM(Inxmmi_a.get(), 1, 0);
}

inline void uX_abi vecqword4::set_yxz(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 1, 0);
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), _uX_MM_SHUFFLER_EPI64_IM(m128_xmmi_1, 1, 1));
}

inline void uX_abi vecqword4::set_yxzw(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_0, 1, 0);
	m128_xmmi_1 = InVecxmmi_a.m128_xmmi_1;
}

inline void uX_abi vecqword4::set_yxw(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 1, 0);
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_1(), 0, 0));
}

inline void uX_abi vecqword4::set_yxwz(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_0, 1, 0);
	m128_xmmi_1 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 0);
}

inline void uX_abi vecqword4::set_yz(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(Inxmmi_a.get(), 0, 0));
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(Inxmmi_a.get(), m128_xmmi_1);
}

inline void uX_abi vecqword4::set_yzx(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_a.get_xmmi_0());
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(InVecxmmi_a.get_xmmi_0(), m128_xmmi_1);
}

inline void uX_abi vecqword4::set_yzxw(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_a.get_xmmi_0());
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_a.get_xmmi_1());
}

inline void uX_abi vecqword4::set_yzw(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(m128_xmmi_0, InVecxmmi_a.get_xmmi_0());
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(InVecxmmi_a.get_xmmi_0(), _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_1(), 0, 0));
}

inline void uX_abi vecqword4::set_yzwx(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 1), InVecxmmi_a.m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(InVecxmmi_a.m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 0, 0));
}

inline void uX_abi vecqword4::set_yw(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(m128_xmmi_0, Inxmmi_a.get());
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(Inxmmi_a.get(), 1, 1));
}

inline void uX_abi vecqword4::set_ywx(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_a.get_xmmi_0());
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 1, 1));
}

inline void uX_abi vecqword4::set_ywxz(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_a.get_xmmi_0());
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_a.get_xmmi_0());
}

inline void uX_abi vecqword4::set_ywz(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(m128_xmmi_0, InVecxmmi_a.get_xmmi_0());
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_1(), 0, 0), InVecxmmi_a.get_xmmi_0());
}

inline void uX_abi vecqword4::set_ywzx(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 1), InVecxmmi_a.m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 0, 0), InVecxmmi_a.m128_xmmi_0);
}

inline void uX_abi vecqword4::set_z(int64_t Inint_a) uX_noexcept
{
	m128_xmmi_1 = _uX_MM_SETEPI64X_SI128_IM(m128_xmmi_1, Inint_a, 0);
}

inline void uX_abi vecqword4::set_zx(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(Inxmmi_a.get(), 1, 1), m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(Inxmmi_a.get(), 0, 0), m128_xmmi_1);
}

inline void uX_abi vecqword4::set_zxy(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 1, 1), InVecxmmi_a.get_xmmi_1());
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 0, 0), m128_xmmi_1);
}

inline void uX_abi vecqword4::set_zxyw(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 1, 1), InVecxmmi_a.get_xmmi_1());
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 0, 0), InVecxmmi_a.get_xmmi_1());
}

inline void uX_abi vecqword4::set_zxw(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(InVecxmmi_a.get_xmmi_0(), m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_a.get_xmmi_1());
}

inline void uX_abi vecqword4::set_zxwy(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_a.m128_xmmi_1);
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_a.m128_xmmi_1);
}

inline void uX_abi vecqword4::set_zy(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(Inxmmi_a.get(), 1, 1));
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(Inxmmi_a.get(), 0, 0), m128_xmmi_1);
}

inline void uX_abi vecqword4::set_zyx(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 1, 1));
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 0, 0), m128_xmmi_1);
}

inline void uX_abi vecqword4::set_zyxw(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_0, 1, 1));
	m128_xmmi_1 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_0, 0, 0), InVecxmmi_a.m128_xmmi_1);
}

inline void uX_abi vecqword4::set_zyw(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 1, 1));
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_a.get_xmmi_1());
}

inline void uX_abi vecqword4::set_zywx(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_a.m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_a.m128_xmmi_1);
}

inline void uX_abi vecqword4::set_zw(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_1 = Inxmmi_a;
}

inline void uX_abi vecqword4::set_zwx(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), _uX_MM_SHUFFLER_EPI64_IM(m128_xmmi_0, 1, 1));
	m128_xmmi_1 = InVecxmmi_a.get_xmmi_0();
}

inline void uX_abi vecqword4::set_zwxy(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = InVecxmmi_a.m128_xmmi_1;
	m128_xmmi_1 = InVecxmmi_a.m128_xmmi_0;
}

inline void uX_abi vecqword4::set_zwy(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(m128_xmmi_0, InVecxmmi_a.get_xmmi_1());
	m128_xmmi_1 = InVecxmmi_a.get_xmmi_0();
}

inline void uX_abi vecqword4::set_zwyx(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 0);
	m128_xmmi_1 = InVecxmmi_a.m128_xmmi_0;
}

inline void uX_abi vecqword4::set_w(int64_t Inint_a) uX_noexcept
{
	m128_xmmi_1 = _uX_MM_SETEPI64X_SI128_IM(m128_xmmi_1, Inint_a, 1);
}

inline void uX_abi vecqword4::set_wx(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(Inxmmi_a.get(), m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, Inxmmi_a.get());
}

inline void uX_abi vecqword4::set_wxy(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(InVecxmmi_a.get_xmmi_0(), _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_1(), 0, 0));
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, InVecxmmi_a.get_xmmi_0());
}

inline void uX_abi vecqword4::set_wxyz(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(InVecxmmi_a.m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 0, 0));
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 1), InVecxmmi_a.m128_xmmi_0);
}

inline void uX_abi vecqword4::set_wxz(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(InVecxmmi_a.get_xmmi_0(), m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_a.get_xmmi_0());
}

inline void uX_abi vecqword4::set_wxzy(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_a.m128_xmmi_1);
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_a.m128_xmmi_0);
}

inline void uX_abi vecqword4::set_wy(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(m128_xmmi_0, 0, 0), Inxmmi_a.get());
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, Inxmmi_a.get());
}

inline void uX_abi vecqword4::set_wyx(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_1(), 0, 0), InVecxmmi_a.get_xmmi_0());
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, InVecxmmi_a.get_xmmi_0());
}

inline void uX_abi vecqword4::set_wyxz(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 0, 0), InVecxmmi_a.m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 1), InVecxmmi_a.m128_xmmi_0);
}

inline void uX_abi vecqword4::set_wyz(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(m128_xmmi_0, 0, 0), InVecxmmi_a.get_xmmi_0());
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_a.get_xmmi_0());
}

inline void uX_abi vecqword4::set_wyzx(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 1), InVecxmmi_a.m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_a.m128_xmmi_0);
}

inline void uX_abi vecqword4::set_wz(const vecqword2 Inxmmi_a) uX_noexcept
{
	m128_xmmi_1 = _uX_MM_SHUFFLER_EPI64_IM(Inxmmi_a.get(), 1, 0);
}

inline void uX_abi vecqword4::set_wzx(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_1(), 0, 0), m128_xmmi_0);
	m128_xmmi_1 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 1, 0);
}

inline void uX_abi vecqword4::set_wzxy(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = InVecxmmi_a.m128_xmmi_1;
	m128_xmmi_1 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_0, 1, 0);
}

inline void uX_abi vecqword4::set_wzy(const vecqword3 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_1(), 0, 0));
	m128_xmmi_1 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.get_xmmi_0(), 1, 0);
}

inline void uX_abi vecqword4::set_wzyx(const vecqword4 InVecxmmi_a) uX_noexcept
{
	m128_xmmi_0 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_1, 1, 0);
	m128_xmmi_1 = _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_a.m128_xmmi_0, 1, 0);
}

inline vecqword4 uX_abi andnot(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_andnot_si128(InVecxmmi_b.m128_xmmi_0, InVecxmmi_a.m128_xmmi_0), _uX_mm_andnot_si128(InVecxmmi_b.m128_xmmi_1, InVecxmmi_a.m128_xmmi_1));
}

inline vecqword4 uX_abi operator&(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_and_si128(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_and_si128(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator|(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_or_si128(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_or_si128(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator^(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_xor_si128(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_xor_si128(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator~(const vecqword4 InVecxmmi_a) uX_noexcept
{
	return vecqword4(_uX_mm_not_epi64(InVecxmmi_a.m128_xmmi_0), _uX_mm_not_epi64(InVecxmmi_a.m128_xmmi_1));
}

inline bool_t uX_abi bandnot(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return _uX_mm_iandnot_si128(InVecxmmi_b.m128_xmmi_0, InVecxmmi_a.m128_xmmi_0) && _uX_mm_iandnot_si128(InVecxmmi_b.m128_xmmi_1, InVecxmmi_a.m128_xmmi_1);
}

inline bool_t uX_abi operator&&(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return _uX_mm_iand_si128(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0) && _uX_mm_iand_si128(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1);
}

inline bool_t uX_abi operator||(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return _uX_mm_ior_si128(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0) || _uX_mm_ior_si128(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1);
}

inline bool_t uX_abi operator!(const vecqword4 InVecxmmi_a) uX_noexcept
{
	return _uX_mm_inot_epi64(InVecxmmi_a.m128_xmmi_0) && _uX_mm_inot_epi64(InVecxmmi_a.m128_xmmi_1);
}

inline bool_t uX_abi horizontal_and(const vecqword4 InVecxmmi_a) uX_noexcept
{
	return _uX_mm_ihand_si128(InVecxmmi_a.m128_xmmi_0) && _uX_mm_ihand_si128(InVecxmmi_a.m128_xmmi_1);
}

inline bool_t uX_abi horizontal_or(const vecqword4 InVecxmmi_a) uX_noexcept
{
	return _uX_mm_ihor_si128(InVecxmmi_a.m128_xmmi_0) || _uX_mm_ihor_si128(InVecxmmi_a.m128_xmmi_1);
}

inline vecqword4& uX_abi operator&=(vecqword4& InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a = vecqword4(_uX_mm_and_si128(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_and_si128(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4& uX_abi operator|=(vecqword4& InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a = vecqword4(_uX_mm_or_si128(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_or_si128(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4& uX_abi operator^=(vecqword4& InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a = vecqword4(_uX_mm_xor_si128(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_xor_si128(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator+(const vecqword4 InVecxmmi_a, int64_t Inint_b) uX_noexcept
{
	return vecqword4(_uX_mm_add_epi64(InVecxmmi_a.m128_xmmi_0, _uX_mm_set1_epi64x(Inint_b)), _uX_mm_add_epi64(InVecxmmi_a.m128_xmmi_1, _uX_mm_set1_epi64x(Inint_b)));
}

inline vecqword4 uX_abi operator+(int64_t Inint_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_add_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.m128_xmmi_0), _uX_mm_add_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator+(const vecqword4 InVecxmmi_a, const __m128i Inxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_add_epi64(InVecxmmi_a.m128_xmmi_0, Inxmmi_b), _uX_mm_add_epi64(InVecxmmi_a.m128_xmmi_1, Inxmmi_b));
}

inline vecqword4 uX_abi operator+(const __m128i Inxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_add_epi64(Inxmmi_a, InVecxmmi_b.m128_xmmi_0), _uX_mm_add_epi64(Inxmmi_a, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator+(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_add_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_add_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator-(const vecqword4 InVecxmmi_a, int64_t Inint_b) uX_noexcept
{
	return vecqword4(_uX_mm_sub_epi64(InVecxmmi_a.m128_xmmi_0, _uX_mm_set1_epi64x(Inint_b)), _uX_mm_sub_epi64(InVecxmmi_a.m128_xmmi_1, _uX_mm_set1_epi64x(Inint_b)));
}

inline vecqword4 uX_abi operator-(int64_t Inint_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_sub_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.m128_xmmi_0), _uX_mm_sub_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator-(const vecqword4 InVecxmmi_a, const __m128i Inxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_sub_epi64(InVecxmmi_a.m128_xmmi_0, Inxmmi_b), _uX_mm_sub_epi64(InVecxmmi_a.m128_xmmi_1, Inxmmi_b));
}

inline vecqword4 uX_abi operator-(const __m128i Inxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_sub_epi64(Inxmmi_a, InVecxmmi_b.m128_xmmi_0), _uX_mm_sub_epi64(Inxmmi_a, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator-(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_sub_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_sub_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator*(const vecqword4 InVecxmmi_a, int64_t Inint_b) uX_noexcept
{
	return vecqword4(_uX_mm_mule_epi64(InVecxmmi_a.m128_xmmi_0, _uX_mm_set1_epi64x(Inint_b)), _uX_mm_mule_epi64(InVecxmmi_a.m128_xmmi_1, _uX_mm_set1_epi64x(Inint_b)));
}

inline vecqword4 uX_abi operator*(int64_t Inint_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_mule_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.m128_xmmi_0), _uX_mm_mule_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator*(const vecqword4 InVecxmmi_a, const __m128i Inxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_mule_epi64(InVecxmmi_a.m128_xmmi_0, Inxmmi_b), _uX_mm_mule_epi64(InVecxmmi_a.m128_xmmi_1, Inxmmi_b));
}

inline vecqword4 uX_abi operator*(const __m128i Inxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_mule_epi64(Inxmmi_a, InVecxmmi_b.m128_xmmi_0), _uX_mm_mule_epi64(Inxmmi_a, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator*(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_mule_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_mule_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

/*
inline vecqword4 uX_abi operator/(const vecqword4 InVecxmmi_a, int64_t Inint_b) uX_noexcept
{
	return vecqword4(_uX_mm_div_pd(InVecxmmi_a.m128_xmmi_0, _uX_mm_set1_epi64x(Inint_b)), _uX_mm_div_pd(InVecxmmi_a.m128_xmmi_1, _uX_mm_set1_epi64x(Inint_b)));
}

inline vecqword4 uX_abi operator/(int64_t Inint_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_div_pd(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.m128_xmmi_0), _uX_mm_div_pd(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator/(const vecqword4 InVecxmmi_a, const __m128i Inxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_div_pd(InVecxmmi_a.m128_xmmi_0, Inxmmi_b), _uX_mm_div_pd(InVecxmmi_a.m128_xmmi_1, Inxmmi_b));
}

inline vecqword4 uX_abi operator/(const __m128i Inxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_div_pd(Inxmmi_a, InVecxmmi_b.m128_xmmi_0), _uX_mm_div_pd(Inxmmi_a, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator/(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_div_pd(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_div_pd(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}*/

inline vecqword4& uX_abi operator+=(vecqword4& InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a = vecqword4(_uX_mm_add_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_add_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4& uX_abi operator-=(vecqword4& InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a = vecqword4(_uX_mm_sub_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_sub_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4& uX_abi operator*=(vecqword4& InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a = vecqword4(_uX_mm_mule_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_mule_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

/*
inline vecqword4& uX_abi operator/=(vecqword4& InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a = vecqword4(_uX_mm_div_pd(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_div_pd(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}*/

inline vecqword4& uX_abi operator++(vecqword4& InVecxmmi_a) uX_noexcept
{
	InVecxmmi_a = InVecxmmi_a + __m128i_i64_1;
	return InVecxmmi_a;
}

inline vecqword4& uX_abi operator--(vecqword4& InVecxmmi_a) uX_noexcept
{
	InVecxmmi_a = InVecxmmi_a - __m128i_i64_1;
	return InVecxmmi_a;
}

inline vecqword4 uX_abi operator++(vecqword4& InVecxmmi_a, int) uX_noexcept
{
	vecqword4 tmpxmm_a0 = InVecxmmi_a;
	InVecxmmi_a = InVecxmmi_a + __m128i_i64_1;
	return tmpxmm_a0;
}

inline vecqword4 uX_abi operator--(vecqword4& InVecxmmi_a, int) uX_noexcept
{
	vecqword4 tmpxmm_a0 = InVecxmmi_a;
	InVecxmmi_a = InVecxmmi_a - __m128i_i64_1;
	return tmpxmm_a0;
}

inline vecqword4 uX_abi operator-(const vecqword4 InVecxmmi_a) uX_noexcept
{
	return vecqword4(_uX_mm_negate_epi64(InVecxmmi_a.m128_xmmi_0), _uX_mm_negate_epi64(InVecxmmi_a.m128_xmmi_1));
}

inline vecqword4 uX_abi operator==(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_cmpeq_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_cmpeq_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator<(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_cmplt_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_cmplt_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator<=(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_cmple_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_cmple_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator>(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_cmpgt_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_cmpgt_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator>=(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_cmpge_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_cmpge_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi operator!=(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_cmpneq_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_cmpneq_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

vecqword4 uX_abi operator<<(const vecqword4 InVecxmmi_a, count_t InIntCount) uX_noexcept
{
	return vecqword4(_uX_mm_slli_epi64(InVecxmmi_a.m128_xmmi_0, InIntCount), _uX_mm_slli_epi64(InVecxmmi_a.m128_xmmi_1, InIntCount));
}

vecqword4 uX_abi operator<<(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_Count) uX_noexcept
{
	return vecqword4(_uX_mm_sll_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_Count.m128_xmmi_0), _uX_mm_sll_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_Count.m128_xmmi_1));
}

vecqword4 uX_abi operator>>(const vecqword4 InVecxmmi_a, count_t InIntCount) uX_noexcept
{
	return vecqword4(_uX_mm_srai_epi64(InVecxmmi_a.m128_xmmi_0, InIntCount), _uX_mm_srai_epi64(InVecxmmi_a.m128_xmmi_1, InIntCount));
}

vecqword4 uX_abi operator>>(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_Count) uX_noexcept
{
	return vecqword4(_uX_mm_sra_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_Count.m128_xmmi_0), _uX_mm_sra_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_Count.m128_xmmi_1));
}

vecqword4& uX_abi vecqword4::operator<<=(count_t InIntCount) uX_noexcept
{
	/*m128_xmmi_0 = _uX_mm_slli_epi64(m128_xmmi_0, InIntCount);
	m128_xmmi_1 = _uX_mm_slli_epi64(m128_xmmi_1, InIntCount);*/
	return vecqword4(_uX_mm_slli_epi64(m128_xmmi_0, InIntCount), _uX_mm_slli_epi64(m128_xmmi_1, InIntCount));
}

vecqword4& uX_abi vecqword4::operator<<=(const vecqword4 InVecxmmi_Count) uX_noexcept
{
	/*m128_xmmi_0 = _uX_mm_sll_epi64(m128_xmmi_0, InVecxmmi_Count.m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_sll_epi64(m128_xmmi_1, InVecxmmi_Count.m128_xmmi_1);*/
	return vecqword4(_uX_mm_sll_epi64(m128_xmmi_0, InVecxmmi_Count.m128_xmmi_0), _uX_mm_sll_epi64(m128_xmmi_1, InVecxmmi_Count.m128_xmmi_1));
}

vecqword4& uX_abi vecqword4::operator>>=(count_t InIntCount) uX_noexcept
{
	/*m128_xmmi_0 = _uX_mm_srai_epi64(m128_xmmi_0, InIntCount);
	m128_xmmi_1 = _uX_mm_srai_epi64(m128_xmmi_1, InIntCount);*/
	return vecqword4(_uX_mm_srai_epi64(m128_xmmi_0, InIntCount), _uX_mm_srai_epi64(m128_xmmi_1, InIntCount));
}

vecqword4& uX_abi vecqword4::operator>>=(const vecqword4 InVecxmmi_Count) uX_noexcept
{
	/*m128_xmmi_0 = _uX_mm_sra_epi64(m128_xmmi_0, InVecxmmi_Count.m128_xmmi_0);
	m128_xmmi_1 = _uX_mm_sra_epi64(m128_xmmi_1, InVecxmmi_Count.m128_xmmi_1);*/
	return vecqword4(_uX_mm_sra_epi64(m128_xmmi_0, InVecxmmi_Count.m128_xmmi_0), _uX_mm_sra_epi64(m128_xmmi_1, InVecxmmi_Count.m128_xmmi_1));
}

const int64_t& uX_abi vecqword4::operator[](count_t index) const uX_noexcept
{
	return extract(index);
}

int64_t& uX_abi vecqword4::operator[](count_t index) uX_noexcept
{
	int64_t tmp = extract(index);
	return tmp;
}

uX_Use_decl_annotations
inline vecqword4& uX_abi vecqword4::m128_load(uX_InReads(2) const __m128i* Inpint) uX_noexcept
{
	/*m128_xmmi_0 = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint));
	m128_xmmi_1 = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint+1));*/
	return vecqword4(_uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint)), _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint + 1)));
}

uX_Use_decl_annotations
inline vecqword4& uX_abi vecqword4::m128_load_a(uX_InReads(2) const __m128i* Inpint) uX_noexcept
{
	/*m128_xmmi_0 = _uX_mm_load_si128(reinterpret_cast<const __m128i*>(Inpint));
	m128_xmmi_1 = _uX_mm_load_si128(reinterpret_cast<const __m128i*>(Inpint+1));*/
	return vecqword4(_uX_mm_load_si128(reinterpret_cast<const __m128i*>(Inpint)), _uX_mm_load_si128(reinterpret_cast<const __m128i*>(Inpint + 1)));
}

uX_Use_decl_annotations
inline vecqword4& uX_abi vecqword4::load(uX_InReads(4) const int64_t* Inpint) uX_noexcept
{
	/*m128_xmmi_0 = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint));
	m128_xmmi_1 = _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint+2));*/
	return vecqword4(_uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint)), _uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint + 2)));
}

uX_Use_decl_annotations
inline vecqword4& uX_abi vecqword4::load_a(uX_InReads(4) const int64_t* Inpint) uX_noexcept
{
	/*m128_xmmi_0 = _uX_mm_load_si128(reinterpret_cast<const __m128i*>(Inpint));
	m128_xmmi_1 = _uX_mm_load_si128(reinterpret_cast<const __m128i*>(Inpint+2));*/
	return vecqword4(_uX_mm_load_si128(reinterpret_cast<const __m128i*>(Inpint)), _uX_mm_load_si128(reinterpret_cast<const __m128i*>(Inpint + 2)));
}

uX_Use_decl_annotations
inline void uX_abi vecqword4::m128_store(uX_OutWrites(2) __m128i* Outpint) const uX_noexcept
{
	_uX_mm_storeu_si128(Outpint, m128_xmmi_0);
	_uX_mm_storeu_si128(Outpint + 1, m128_xmmi_1);
}

uX_Use_decl_annotations
inline void uX_abi vecqword4::m128_store_a(uX_OutWrites(2) __m128i* Outpint) const uX_noexcept
{
	_uX_mm_store_si128(Outpint, m128_xmmi_0);
	_uX_mm_store_si128(Outpint + 1, m128_xmmi_1);
}

uX_Use_decl_annotations
inline void uX_abi vecqword4::store(uX_OutWrites(4) int64_t* Outpint) const uX_noexcept
{
	_uX_mm_storeu_si128(reinterpret_cast<__m128i*>(Outpint), m128_xmmi_0);
	_uX_mm_storeu_si128(reinterpret_cast<__m128i*>(Outpint + 2), m128_xmmi_1);
}

uX_Use_decl_annotations
inline void uX_abi vecqword4::store_a(uX_OutWrites(4) int64_t* Outpint) const uX_noexcept
{
	_uX_mm_store_si128(reinterpret_cast<__m128i*>(Outpint), m128_xmmi_0);
	_uX_mm_store_si128(reinterpret_cast<__m128i*>(Outpint + 2), m128_xmmi_1);
}

inline const vecqword4 uX_abi vecqword4::insert(int64_t value, count_t index) uX_noexcept
{
	if(index > 3) return *this;
	if(index > 1)
	{
		m128_xmmi_1 = _uX_mm_setelts_epi64x(m128_xmmi_1, value, index - 2);
	}
	else
	{
		m128_xmmi_0 = _uX_mm_setelts_epi64x(m128_xmmi_0, value, index);
	}
	return *this;
}

inline int64_t uX_abi vecqword4::extract(count_t index) const uX_noexcept
{
	if(index > 3) return 0.0;
	return index > 1 ? _uX_mm_cvtelts_epi64x(m128_xmmi_1, index - 2) : _uX_mm_cvtelts_epi64x(m128_xmmi_0, index);
}

inline vecqword4& uX_abi vecqword4::zero() uX_noexcept
{
	/*m128_xmmi_0 = _uX_mm_setzero_si128();
	m128_xmmi_1 = _uX_mm_setzero_si128();*/
	return vecqword4(_uX_mm_setzero_si128(), _uX_mm_setzero_si128());
}

inline vecqword4& uX_abi vecqword4::cutoff(const count_t indexN) uX_noexcept
{
	switch(indexN)
	{
		case 1:
			m128_xmmi_0 = _uX_mm_unpacklo_epi64(m128_xmmi_0, __m128i_i64_0);
			m128_xmmi_1 = __m128i_i64_0;
			break;
		case 2:
			m128_xmmi_1 = __m128i_i64_0;
			break;
		case 3:
			m128_xmmi_1 = _uX_mm_unpacklo_epi64(m128_xmmi_1, __m128i_i64_0);
			break;
		default:
			m128_xmmi_0 = __m128i_i64_0;
			m128_xmmi_1 = __m128i_i64_0;
			break;
	}
	return *this;
}

inline vecqword4 uX_abi select(const vecqword4 InVecxmmi_f, const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_select_si128(InVecxmmi_f.m128_xmmi_0, InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_select_si128(InVecxmmi_f.m128_xmmi_1, InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi if_add(const vecqword4 InVecxmmi_f, const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a + (InVecxmmi_f & InVecxmmi_b);
}

inline vecqword4 uX_abi if_sub(const vecqword4 InVecxmmi_f, const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a - (InVecxmmi_f & InVecxmmi_b);
}

inline vecqword4 uX_abi if_mul(const vecqword4 InVecxmmi_f, const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a * select(InVecxmmi_f, InVecxmmi_b, vecqword4(__m128i_i64_1));
}

/*
inline vecqword4 uX_abi if_div(const vecqword4 InVecxmmi_f, const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return InVecxmmi_a / select(InVecxmmi_f, InVecxmmi_b, vecqword4(__m128i_i64_1));
}*/

inline vecqword4 uX_abi max(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_max_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_max_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi min(const vecqword4 InVecxmmi_a, const vecqword4 InVecxmmi_b) uX_noexcept
{
	return vecqword4(_uX_mm_min_epi64(InVecxmmi_a.m128_xmmi_0, InVecxmmi_b.m128_xmmi_0), _uX_mm_min_epi64(InVecxmmi_a.m128_xmmi_1, InVecxmmi_b.m128_xmmi_1));
}

inline vecqword4 uX_abi abs(const vecqword4 InVecxmmi_a) uX_noexcept
{
	return vecqword4(_uX_mm_abs_epi64(InVecxmmi_a.m128_xmmi_0), _uX_mm_abs_epi64(InVecxmmi_a.m128_xmmi_1));
}

inline vecqword4 uX_abi abs_sat(const vecqword4 InVecxmmi_a) uX_noexcept
{
	return vecqword4(_uX_mm_abssat_epi64(InVecxmmi_a.m128_xmmi_0), _uX_mm_abssat_epi64(InVecxmmi_a.m128_xmmi_1));
}

inline vecqword4 uX_abi square(const vecqword4 InVecxmmi_a) uX_noexcept
{
	return vecqword4(_uX_mm_square_epi64(InVecxmmi_a.m128_xmmi_0), _uX_mm_square_epi64(InVecxmmi_a.m128_xmmi_1));
}

inline vecqword4 uX_abi scale(const vecqword4 InVecxmmi_a, int64_t Inint_s) uX_noexcept
{
	return vecqword4(_uX_mm_scale_epi64(InVecxmmi_a.m128_xmmi_0, Inint_s), _uX_mm_scale_epi64(InVecxmmi_a.m128_xmmi_1, Inint_s));
}

// vecqword4 End
// // // // // // // // //

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end