
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
namespace_XMM
EXTERN_CC_BEGIN
uX_PACK_PUSH_XMM

// VECTOR'S

// // // // // // // // //
// vecdouble4 Start

/*
inline vecdouble4& uX_ABI vecdouble4::operator=(const vecdouble4& InHxmmd_a) uX_noexcept
{
    return vecdouble4(InHxmmd_a);
}

inline vecdouble4& uX_ABI vecdouble4::operator=(vecdouble4&& InHxmmd_a) uX_noexcept
{
    return vecdouble4(InHxmmd_a);
}

inline vecdouble4& uX_ABI vecdouble4::operator=(const __m128d Inxmmd) uX_noexcept
{
    return vecdouble4(Inxmmd);
}

inline vecdouble4& uX_ABI vecdouble4::operator=(const vecdouble3 InHxmmd_a) uX_noexcept
{
    return vecdouble4(InHxmmd_a);
}

inline vecdouble4& uX_ABI vecdouble4::operator=(const vecdouble2 Inxmmd_a) uX_noexcept
{
    return vecdouble4(Inxmmd_a);
}

inline vecdouble4& uX_ABI vecdouble4::operator=(const vecdouble1 Inxmmd_a) uX_noexcept
{
    return vecdouble4(Inxmmd_a);
}

inline vecdouble4& uX_ABI vecdouble4::operator=(const vecqword4 InHxmmi_a) uX_noexcept
{
    return vecdouble4(InHxmmi_a);
}

inline vecdouble4& uX_ABI vecdouble4::operator=(const vecuqword4 InHxmmi_a) uX_noexcept
{
    return vecdouble4(InHxmmi_a);
}

inline vecdouble4& uX_ABI vecdouble4::operator=(double Indouble_a) uX_noexcept
{
    return vecdouble4(Indouble_a);
}

inline vecdouble4& uX_ABI vecdouble4::operator=(const bool_t Inbool_a) uX_noexcept
{
    return vecdouble4(Inbool_a);
}

inline vecdouble4& uX_ABI vecdouble4::operator=(const bool Inbool_a) uX_noexcept
{
    return vecdouble4(Inbool_a);
}*/

/*
inline __m128d uX_ABI vecdouble4::get_xmmd_0() const uX_noexcept
{
    return m128_xmmd_0;
}

inline __m128d uX_ABI vecdouble4::get_xmmd_1() const uX_noexcept
{
    return m128_xmmd_1;
}

inline __m128d& uX_ABI vecdouble4::ref_xmmd_0() uX_noexcept
{
    return m128_xmmd_0;
}

inline __m128d& uX_ABI vecdouble4::ref_xmmd_1() uX_noexcept
{
    return m128_xmmd_1;
}*/

inline void uX_ABI vecdouble4::set_xmmd_0(const __m128d Inxmmd) uX_noexcept
{
    m128_xmmd_0 = Inxmmd;
}

inline void uX_ABI vecdouble4::set_xmmd_1(const __m128d Inxmmd) uX_noexcept
{
    m128_xmmd_1 = Inxmmd;
}

/*
inline vecdouble4 uX_ABI vecdouble4::get() const uX_noexcept
{
    return vecdouble4(m128_xmmd_0, m128_xmmd_1);
}*/

/*
inline double uX_ABI vecdouble4::get_x() const uX_noexcept
{
    return _x;
}

inline vecdouble2 uX_ABI vecdouble4::get_xy() const uX_noexcept
{
    return vecdouble2(m128_xmmd_0);
}

inline vecdouble3 uX_ABI vecdouble4::get_xyz() const uX_noexcept
{
    return vecdouble3(m128_xmmd_0, m128_xmmd_1);
}

inline vecdouble4 uX_ABI vecdouble4::get_xyzw() const uX_noexcept
{
    return vecdouble4(m128_xmmd_0, m128_xmmd_1);
}

inline vecdouble3 uX_ABI vecdouble4::get_xyw() const uX_noexcept
{
    return vecdouble3(m128_xmmd_0, _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_xywz() const uX_noexcept
{
    return vecdouble4(m128_xmmd_0, _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0));
}

inline vecdouble2 uX_ABI vecdouble4::get_xz() const uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0));
}

inline vecdouble3 uX_ABI vecdouble4::get_xzy() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_xzyw() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1));
}

inline vecdouble3 uX_ABI vecdouble4::get_xzw() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), m128_xmmd_1);
}

inline vecdouble4 uX_ABI vecdouble4::get_xzwy() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1));
}

inline vecdouble2 uX_ABI vecdouble4::get_xw() const uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1));
}

inline vecdouble3 uX_ABI vecdouble4::get_xwy() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_xwyz() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0));
}

inline vecdouble3 uX_ABI vecdouble4::get_xwz() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), m128_xmmd_1);
}

inline vecdouble4 uX_ABI vecdouble4::get_xwzy() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1));
}

inline double uX_ABI vecdouble4::get_y() const uX_noexcept
{
    return _y;
}

inline vecdouble2 uX_ABI vecdouble4::get_yx() const uX_noexcept
{
    return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0));
}

inline vecdouble3 uX_ABI vecdouble4::get_yxz() const uX_noexcept
{
    return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), m128_xmmd_1);
}

inline vecdouble4 uX_ABI vecdouble4::get_yxzw() const uX_noexcept
{
    return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), m128_xmmd_1);
}

inline vecdouble3 uX_ABI vecdouble4::get_yxw() const uX_noexcept
{
    return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_yxwz() const uX_noexcept
{
    return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0));
}

inline vecdouble2 uX_ABI vecdouble4::get_yz() const uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0));
}

inline vecdouble3 uX_ABI vecdouble4::get_yzx() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), m128_xmmd_0);
}

inline vecdouble4 uX_ABI vecdouble4::get_yzxw() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1));
}

inline vecdouble3 uX_ABI vecdouble4::get_yzw() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_yzwx() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0));
}

inline vecdouble2 uX_ABI vecdouble4::get_yw() const uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1));
}

inline vecdouble3 uX_ABI vecdouble4::get_ywx() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), m128_xmmd_0);
}

inline vecdouble4 uX_ABI vecdouble4::get_ywxz() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0));
}

inline vecdouble3 uX_ABI vecdouble4::get_ywz() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), m128_xmmd_1);
}

inline vecdouble4 uX_ABI vecdouble4::get_ywzx() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0));
}

inline double uX_ABI vecdouble4::get_z() const uX_noexcept
{
    return _z;
}

inline vecdouble2 uX_ABI vecdouble4::get_zx() const uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0));
}

inline vecdouble3 uX_ABI vecdouble4::get_zxy() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_zxyw() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1));
}

inline vecdouble3 uX_ABI vecdouble4::get_zxw() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_zxwy() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1));
}

inline vecdouble2 uX_ABI vecdouble4::get_zy() const uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1));
}

inline vecdouble3 uX_ABI vecdouble4::get_zyx() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), m128_xmmd_0);
}

inline vecdouble4 uX_ABI vecdouble4::get_zyxw() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1));
}

inline vecdouble3 uX_ABI vecdouble4::get_zyw() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_zywx() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0));
}

inline vecdouble2 uX_ABI vecdouble4::get_zw() const uX_noexcept
{
    return vecdouble2(m128_xmmd_1);
}

inline vecdouble3 uX_ABI vecdouble4::get_zwx() const uX_noexcept
{
    return vecdouble3(m128_xmmd_1, m128_xmmd_0);
}

inline vecdouble4 uX_ABI vecdouble4::get_zwxy() const uX_noexcept
{
    return vecdouble4(m128_xmmd_1, m128_xmmd_0);
}

inline vecdouble3 uX_ABI vecdouble4::get_zwy() const uX_noexcept
{
    return vecdouble3(m128_xmmd_1, _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_zwyx() const uX_noexcept
{
    return vecdouble4(m128_xmmd_1, _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0));
}

inline double uX_ABI vecdouble4::get_w() const uX_noexcept
{
    return _w;
}

inline vecdouble2 uX_ABI vecdouble4::get_wx() const uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0));
}

inline vecdouble3 uX_ABI vecdouble4::get_wxy() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_wxyz() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0));
}

inline vecdouble3 uX_ABI vecdouble4::get_wxz() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), m128_xmmd_1);
}

inline vecdouble4 uX_ABI vecdouble4::get_wxzy() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1));
}

inline vecdouble2 uX_ABI vecdouble4::get_wy() const uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1));
}

inline vecdouble3 uX_ABI vecdouble4::get_wyx() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), m128_xmmd_0);
}

inline vecdouble4 uX_ABI vecdouble4::get_wyxz() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0));
}

inline vecdouble3 uX_ABI vecdouble4::get_wyz() const uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), m128_xmmd_1);
}

inline vecdouble4 uX_ABI vecdouble4::get_wyzx() const uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0));
}

inline vecdouble2 uX_ABI vecdouble4::get_wz() const uX_noexcept
{
    return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0));
}

inline vecdouble3 uX_ABI vecdouble4::get_wzx() const uX_noexcept
{
    return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), m128_xmmd_0);
}

inline vecdouble4 uX_ABI vecdouble4::get_wzxy() const uX_noexcept
{
    return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), m128_xmmd_0);
}

inline vecdouble3 uX_ABI vecdouble4::get_wzy() const uX_noexcept
{
    return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4 uX_ABI vecdouble4::get_wzyx() const uX_noexcept
{
    return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0));
}

inline vecdouble4& uX_ABI vecdouble4::ref() uX_noexcept
{
    return vecdouble4(m128_xmmd_0, m128_xmmd_1);
}

inline double& uX_ABI vecdouble4::ref_x() uX_noexcept
{
    return _x;
}

inline vecdouble2& uX_ABI vecdouble4::ref_xy() uX_noexcept
{
    return vecdouble2(m128_xmmd_0);
}

inline vecdouble3& uX_ABI vecdouble4::ref_xyz() uX_noexcept
{
    return vecdouble3(m128_xmmd_0, m128_xmmd_1);
}

inline vecdouble4& uX_ABI vecdouble4::ref_xyzw() uX_noexcept
{
    return vecdouble4(m128_xmmd_0, m128_xmmd_1);
}

inline vecdouble3& uX_ABI vecdouble4::ref_xyw() uX_noexcept
{
    return vecdouble3(m128_xmmd_0, _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_xywz() uX_noexcept
{
    return vecdouble4(m128_xmmd_0, _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0));
}

inline vecdouble2& uX_ABI vecdouble4::ref_xz() uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0));
}

inline vecdouble3& uX_ABI vecdouble4::ref_xzy() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_xzyw() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1));
}

inline vecdouble3& uX_ABI vecdouble4::ref_xzw() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), m128_xmmd_1);
}

inline vecdouble4& uX_ABI vecdouble4::ref_xzwy() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1));
}

inline vecdouble2& uX_ABI vecdouble4::ref_xw() uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1));
}

inline vecdouble3& uX_ABI vecdouble4::ref_xwy() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_xwyz() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0));
}

inline vecdouble3& uX_ABI vecdouble4::ref_xwz() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), m128_xmmd_1);
}

inline vecdouble4& uX_ABI vecdouble4::ref_xwzy() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1));
}

inline double& uX_ABI vecdouble4::ref_y() uX_noexcept
{
    return _y;
}

inline vecdouble2& uX_ABI vecdouble4::ref_yx() uX_noexcept
{
    return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0));
}

inline vecdouble3& uX_ABI vecdouble4::ref_yxz() uX_noexcept
{
    return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), m128_xmmd_1);
}

inline vecdouble4& uX_ABI vecdouble4::ref_yxzw() uX_noexcept
{
    return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), m128_xmmd_1);
}

inline vecdouble3& uX_ABI vecdouble4::ref_yxw() uX_noexcept
{
    return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_yxwz() uX_noexcept
{
    return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0));
}

inline vecdouble2& uX_ABI vecdouble4::ref_yz() uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0));
}

inline vecdouble3& uX_ABI vecdouble4::ref_yzx() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), m128_xmmd_0);
}

inline vecdouble4& uX_ABI vecdouble4::ref_yzxw() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1));
}

inline vecdouble3& uX_ABI vecdouble4::ref_yzw() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_yzwx() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0));
}

inline vecdouble2& uX_ABI vecdouble4::ref_yw() uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1));
}

inline vecdouble3& uX_ABI vecdouble4::ref_ywx() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), m128_xmmd_0);
}

inline vecdouble4& uX_ABI vecdouble4::ref_ywxz() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0));
}

inline vecdouble3& uX_ABI vecdouble4::ref_ywz() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), m128_xmmd_1);
}

inline vecdouble4& uX_ABI vecdouble4::ref_ywzx() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0));
}

inline double& uX_ABI vecdouble4::ref_z() uX_noexcept
{
    return _z;
}

inline vecdouble2& uX_ABI vecdouble4::ref_zx() uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0));
}

inline vecdouble3& uX_ABI vecdouble4::ref_zxy() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_zxyw() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1));
}

inline vecdouble3& uX_ABI vecdouble4::ref_zxw() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_zxwy() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1));
}

inline vecdouble2& uX_ABI vecdouble4::ref_zy() uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1));
}

inline vecdouble3& uX_ABI vecdouble4::ref_zyx() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), m128_xmmd_0);
}

inline vecdouble4& uX_ABI vecdouble4::ref_zyxw() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1));
}

inline vecdouble3& uX_ABI vecdouble4::ref_zyw() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_zywx() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0));
}

inline vecdouble2& uX_ABI vecdouble4::ref_zw() uX_noexcept
{
    return vecdouble2(m128_xmmd_1);
}

inline vecdouble3& uX_ABI vecdouble4::ref_zwx() uX_noexcept
{
    return vecdouble3(m128_xmmd_1, m128_xmmd_0);
}

inline vecdouble4& uX_ABI vecdouble4::ref_zwxy() uX_noexcept
{
    return vecdouble4(m128_xmmd_1, m128_xmmd_0);
}

inline vecdouble3& uX_ABI vecdouble4::ref_zwy() uX_noexcept
{
    return vecdouble3(m128_xmmd_1, _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_zwyx() uX_noexcept
{
    return vecdouble4(m128_xmmd_1, _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0));
}

inline double& uX_ABI vecdouble4::ref_w() uX_noexcept
{
    return _w;
}

inline vecdouble2& uX_ABI vecdouble4::ref_wx() uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0));
}

inline vecdouble3& uX_ABI vecdouble4::ref_wxy() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_wxyz() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0));
}

inline vecdouble3& uX_ABI vecdouble4::ref_wxz() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), m128_xmmd_1);
}

inline vecdouble4& uX_ABI vecdouble4::ref_wxzy() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1));
}

inline vecdouble2& uX_ABI vecdouble4::ref_wy() uX_noexcept
{
    return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1));
}

inline vecdouble3& uX_ABI vecdouble4::ref_wyx() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), m128_xmmd_0);
}

inline vecdouble4& uX_ABI vecdouble4::ref_wyxz() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0));
}

inline vecdouble3& uX_ABI vecdouble4::ref_wyz() uX_noexcept
{
    return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), m128_xmmd_1);
}

inline vecdouble4& uX_ABI vecdouble4::ref_wyzx() uX_noexcept
{
    return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0));
}

inline vecdouble2& uX_ABI vecdouble4::ref_wz() uX_noexcept
{
    return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0));
}

inline vecdouble3& uX_ABI vecdouble4::ref_wzx() uX_noexcept
{
    return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), m128_xmmd_0);
}

inline vecdouble4& uX_ABI vecdouble4::ref_wzxy() uX_noexcept
{
    return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), m128_xmmd_0);
}

inline vecdouble3& uX_ABI vecdouble4::ref_wzy() uX_noexcept
{
    return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
}

inline vecdouble4& uX_ABI vecdouble4::ref_wzyx() uX_noexcept
{
    return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0));
}*/

inline void uX_ABI vecdouble4::set(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
    m128_xmmd_1 = InHxmmd_a.m128_xmmd_1;
}

inline void uX_ABI vecdouble4::set_x(double Indouble_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SETDBL_IM_PD(m128_xmmd_0, Indouble_a, 0);
}

inline void uX_ABI vecdouble4::set_xy(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_0 = Inxmmd_a;
}

inline void uX_ABI vecdouble4::set_xyz(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = InHxmmd_a.get_xmmd_0();
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_1, 0, 1);
}

inline void uX_ABI vecdouble4::set_xyzw(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
    m128_xmmd_1 = InHxmmd_a.m128_xmmd_1;
}

inline void uX_ABI vecdouble4::set_xyw(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = InHxmmd_a.get_xmmd_0();
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_1(), 0, 0);
}

inline void uX_ABI vecdouble4::set_xywz(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
    m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 1, 0);
}

inline void uX_ABI vecdouble4::set_xz(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_0, 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_1, 1, 1);
}

inline void uX_ABI vecdouble4::set_xzy(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_1, 1, 1);
}

inline void uX_ABI vecdouble4::set_xzyw(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 1);
}

inline void uX_ABI vecdouble4::set_xzw(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_0, 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 1, 0);
}

inline void uX_ABI vecdouble4::set_xzwy(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 0);
}

inline void uX_ABI vecdouble4::set_xw(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_0, 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, Inxmmd_a, 0, 1);
}

inline void uX_ABI vecdouble4::set_xwy(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_0(), 0, 1);
}

inline void uX_ABI vecdouble4::set_xwyz(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 1);
}

inline void uX_ABI vecdouble4::set_xwz(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_0, 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 1);
}

inline void uX_ABI vecdouble4::set_xwzy(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 1);
}

inline void uX_ABI vecdouble4::set_y(double Indouble_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SETDBL_IM_PD(m128_xmmd_0, Indouble_a, 1);
}

inline void uX_ABI vecdouble4::set_yx(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(Inxmmd_a, 1, 0);
}

inline void uX_ABI vecdouble4::set_yxz(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.get_xmmd_0(), 1, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_1, 0, 1);
}

inline void uX_ABI vecdouble4::set_yxzw(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_0, 1, 0);
    m128_xmmd_1 = InHxmmd_a.m128_xmmd_1;
}

inline void uX_ABI vecdouble4::set_yxw(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.get_xmmd_0(), 1, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_1(), 0, 0);
}

inline void uX_ABI vecdouble4::set_yxwz(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_0, 1, 0);
    m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 1, 0);
}

inline void uX_ABI vecdouble4::set_yz(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, Inxmmd_a, 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_1, 1, 1);
}

inline void uX_ABI vecdouble4::set_yzx(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_1, 1, 1);
}

inline void uX_ABI vecdouble4::set_yzxw(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 1);
}

inline void uX_ABI vecdouble4::set_yzw(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_0(), 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 1, 0);
}

inline void uX_ABI vecdouble4::set_yzwx(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 0);
}

inline void uX_ABI vecdouble4::set_yw(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, Inxmmd_a, 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, Inxmmd_a, 0, 1);
}

inline void uX_ABI vecdouble4::set_ywx(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_0(), 0, 1);
}

inline void uX_ABI vecdouble4::set_ywxz(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 1);
}

inline void uX_ABI vecdouble4::set_ywz(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_0(), 0, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 1);
}

inline void uX_ABI vecdouble4::set_ywzx(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 1);
}

inline void uX_ABI vecdouble4::set_z(double Indouble_a) uX_noexcept
{
    m128_xmmd_1 = _uX_MM_SETDBL_IM_PD(m128_xmmd_1, Indouble_a, 0);
}

inline void uX_ABI vecdouble4::set_zx(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_0, 1, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_1, 0, 1);
}

inline void uX_ABI vecdouble4::set_zxy(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 1, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_1, 0, 1);
}

inline void uX_ABI vecdouble4::set_zxyw(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 1);
}

inline void uX_ABI vecdouble4::set_zxw(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_0, 1, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 0, 0);
}

inline void uX_ABI vecdouble4::set_zxwy(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 0);
}

inline void uX_ABI vecdouble4::set_zy(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, Inxmmd_a, 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_1, 0, 1);
}

inline void uX_ABI vecdouble4::set_zyx(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_1, 0, 1);
}

inline void uX_ABI vecdouble4::set_zyxw(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 1);
}

inline void uX_ABI vecdouble4::set_zyw(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_0(), 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 0, 0);
}

inline void uX_ABI vecdouble4::set_zywx(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 0);
}

inline void uX_ABI vecdouble4::set_zw(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_1 = Inxmmd_a;
}

inline void uX_ABI vecdouble4::set_zwx(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_0, 0, 1);
    m128_xmmd_1 = InHxmmd_a.get_xmmd_0();
}

inline void uX_ABI vecdouble4::set_zwxy(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 0, 1);
    m128_xmmd_1 = InHxmmd_a.get_xmmd_0();
}

inline void uX_ABI vecdouble4::set_zwy(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_1(), 0, 0);
    m128_xmmd_1 = InHxmmd_a.get_xmmd_0();
}

inline void uX_ABI vecdouble4::set_zwyx(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 1, 0);
    m128_xmmd_1 = InHxmmd_a.get_xmmd_0();
}

inline void uX_ABI vecdouble4::set_w(double Indouble_a) uX_noexcept
{
    m128_xmmd_1 = _uX_MM_SETDBL_IM_PD(m128_xmmd_1, Indouble_a, 1);
}

inline void uX_ABI vecdouble4::set_wx(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_0, 1, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, Inxmmd_a, 0, 0);
}

inline void uX_ABI vecdouble4::set_wxy(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 1, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_0(), 0, 0);
}

inline void uX_ABI vecdouble4::set_wxyz(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 0);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 0);
}

inline void uX_ABI vecdouble4::set_wxz(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_0, 1, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 0);
}

inline void uX_ABI vecdouble4::set_wxzy(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 0);
}

inline void uX_ABI vecdouble4::set_wy(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, Inxmmd_a, 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, Inxmmd_a, 0, 0);
}

inline void uX_ABI vecdouble4::set_wyx(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_0(), 0, 0);
}

inline void uX_ABI vecdouble4::set_wyxz(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 0);
}

inline void uX_ABI vecdouble4::set_wyz(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_0(), 0, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 0);
}

inline void uX_ABI vecdouble4::set_wyzx(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 1);
    m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 0);
}

inline void uX_ABI vecdouble4::set_wz(const vecdouble2 Inxmmd_a) uX_noexcept
{
    m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(Inxmmd_a, 1, 0);
}

inline void uX_ABI vecdouble4::set_wzx(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_0, 0, 1);
    m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.get_xmmd_0(), 1, 0);
}

inline void uX_ABI vecdouble4::set_wzxy(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 0, 1);
    m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_0, 1, 0);
}

inline void uX_ABI vecdouble4::set_wzy(const vecdouble3 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_1(), 0, 0);
    m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.get_xmmd_0(), 1, 0);
}

inline void uX_ABI vecdouble4::set_wzyx(const vecdouble4 InHxmmd_a) uX_noexcept
{
    m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 1, 0);
    m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_0, 1, 0);
}

inline vecdouble4 uX_ABI andnot(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_andnot_pd(InHxmmd_b.m128_xmmd_0, InHxmmd_a.m128_xmmd_0), _uX_mm_andnot_pd(InHxmmd_b.m128_xmmd_1, InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator&(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_and_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_and_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator|(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_or_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_or_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator^(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_xor_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator~(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_not_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_not_pd(InHxmmd_a.m128_xmmd_1));
}

inline bool_t uX_ABI bandnot(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return _uX_mm_iandnot_pd(InHxmmd_b.m128_xmmd_0, InHxmmd_a.m128_xmmd_0) && _uX_mm_iandnot_pd(InHxmmd_b.m128_xmmd_1, InHxmmd_a.m128_xmmd_1);
}

inline bool_t uX_ABI operator&&(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return _uX_mm_iand_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0) && _uX_mm_iand_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1);
}

inline bool_t uX_ABI operator||(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return _uX_mm_ior_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0) || _uX_mm_ior_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1);
}

inline bool_t uX_ABI operator!(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return _uX_mm_inot_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_inot_pd(InHxmmd_a.m128_xmmd_1);
}

inline bool_t uX_ABI horizontal_and(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return _uX_mm_ihand_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_ihand_pd(InHxmmd_a.m128_xmmd_1);
}

inline bool_t uX_ABI horizontal_or(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return _uX_mm_ihor_pd(InHxmmd_a.m128_xmmd_0) || _uX_mm_ihor_pd(InHxmmd_a.m128_xmmd_1);
}

inline vecdouble4& uX_ABI operator&=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a = vecdouble4(_uX_mm_and_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_and_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4& uX_ABI operator|=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a = vecdouble4(_uX_mm_or_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_or_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4& uX_ABI operator^=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a = vecdouble4(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_xor_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator+(const vecdouble4 InHxmmd_a, double Indouble_b) uX_noexcept
{
    return vecdouble4(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_add_pd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble4 uX_ABI operator+(double Indouble_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator+(const vecdouble4 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_add_pd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
}

inline vecdouble4 uX_ABI operator+(const __m128d Inxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_add_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_add_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator+(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_add_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator-(const vecdouble4 InHxmmd_a, double Indouble_b) uX_noexcept
{
    return vecdouble4(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_sub_pd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble4 uX_ABI operator-(double Indouble_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator-(const vecdouble4 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_sub_pd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
}

inline vecdouble4 uX_ABI operator-(const __m128d Inxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_sub_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator-(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator*(const vecdouble4 InHxmmd_a, double Indouble_b) uX_noexcept
{
    return vecdouble4(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_mul_pd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble4 uX_ABI operator*(double Indouble_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator*(const vecdouble4 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_mul_pd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
}

inline vecdouble4 uX_ABI operator*(const __m128d Inxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_mul_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator*(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator/(const vecdouble4 InHxmmd_a, double Indouble_b) uX_noexcept
{
    return vecdouble4(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_div_pd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
}

inline vecdouble4 uX_ABI operator/(double Indouble_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator/(const vecdouble4 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_div_pd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
}

inline vecdouble4 uX_ABI operator/(const __m128d Inxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_div_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_div_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator/(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_div_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4& uX_ABI operator+=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a = vecdouble4(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_add_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4& uX_ABI operator-=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a = vecdouble4(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4& uX_ABI operator*=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a = vecdouble4(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4& uX_ABI operator/=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a = vecdouble4(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_div_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4& uX_ABI operator++(vecdouble4& InHxmmd_a) uX_noexcept
{
    InHxmmd_a = InHxmmd_a + __m128d_1;
    return InHxmmd_a;
}

inline vecdouble4& uX_ABI operator--(vecdouble4& InHxmmd_a) uX_noexcept
{
    InHxmmd_a = InHxmmd_a - __m128d_1;
    return InHxmmd_a;
}

inline vecdouble4 uX_ABI operator++(vecdouble4& InHxmmd_a, int) uX_noexcept
{
    vecdouble4 tmpxmm_a0 = InHxmmd_a;
    InHxmmd_a = InHxmmd_a + __m128d_1;
    return tmpxmm_a0;
}

inline vecdouble4 uX_ABI operator--(vecdouble4& InHxmmd_a, int) uX_noexcept
{
    vecdouble4 tmpxmm_a0 = InHxmmd_a;
    InHxmmd_a = InHxmmd_a - __m128d_1;
    return tmpxmm_a0;
}

inline vecdouble4 uX_ABI operator-(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_negate_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_negate_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator==(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_cmpeq_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpeq_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator<(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_cmplt_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmplt_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator<=(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_cmple_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmple_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator>(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_cmpgt_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpgt_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator>=(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_cmpge_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpge_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI operator!=(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_cmpneq_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpneq_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

const double& uX_ABI vecdouble4::operator[](count_t index) const uX_noexcept
{
    return extract(index);
}

double& uX_ABI vecdouble4::operator[](count_t index) uX_noexcept
{
    double tmp = extract(index);
    return tmp;
}

uX_Use_decl_annotations
inline vecdouble4& uX_ABI vecdouble4::m128_load(uX_InReads(2) const __m128d* Inpdouble) uX_noexcept
{
    /*m128_xmmd_0 = _uX_mm_loadu_pd(reinterpret_cast<const double*>(Inpdouble));
    m128_xmmd_1 = _uX_mm_loadu_pd(reinterpret_cast<const double*>(Inpdouble+1));*/
    return vecdouble4(_uX_mm_loadu_pd(reinterpret_cast<const double*>(Inpdouble)), _uX_mm_loadu_pd(reinterpret_cast<const double*>(Inpdouble+1)));
}

uX_Use_decl_annotations
inline vecdouble4& uX_ABI vecdouble4::m128_load_a(uX_InReads(2) const __m128d* Inpdouble) uX_noexcept
{
    /*m128_xmmd_0 = _uX_mm_load_pd(reinterpret_cast<const double*>(Inpdouble));
    m128_xmmd_1 = _uX_mm_load_pd(reinterpret_cast<const double*>(Inpdouble+1));*/
    return vecdouble4(_uX_mm_load_pd(reinterpret_cast<const double*>(Inpdouble)), _uX_mm_load_pd(reinterpret_cast<const double*>(Inpdouble+1)));
}

uX_Use_decl_annotations
inline vecdouble4& uX_ABI vecdouble4::load(uX_InReads(4) const double* Inpdouble) uX_noexcept
{
    /*m128_xmmd_0 = _uX_mm_loadu_pd(Inpdouble);
    m128_xmmd_1 = _uX_mm_loadu_pd(Inpdouble+2);*/
    return vecdouble4(_uX_mm_loadu_pd(Inpdouble), _uX_mm_loadu_pd(Inpdouble+2));
}

uX_Use_decl_annotations
inline vecdouble4& uX_ABI vecdouble4::load_a(uX_InReads(4) const double* Inpdouble) uX_noexcept
{
    /*m128_xmmd_0 = _uX_mm_load_pd(Inpdouble);
    m128_xmmd_1 = _uX_mm_load_pd(Inpdouble+2);*/
    return vecdouble4(_uX_mm_load_pd(Inpdouble), _uX_mm_load_pd(Inpdouble+2));
}

uX_Use_decl_annotations
inline void uX_ABI vecdouble4::m128_store(uX_OutWrites(2) __m128d* Outpdouble) const uX_noexcept
{
    _uX_mm_storeu_pd(reinterpret_cast<double*>(Outpdouble), m128_xmmd_0);
    _uX_mm_storeu_pd(reinterpret_cast<double*>(Outpdouble+1), m128_xmmd_1);
}

uX_Use_decl_annotations
inline void uX_ABI vecdouble4::m128_store_a(uX_OutWrites(2) __m128d* Outpdouble) const uX_noexcept
{
    _uX_mm_store_pd(reinterpret_cast<double*>(Outpdouble), m128_xmmd_0);
    _uX_mm_store_pd(reinterpret_cast<double*>(Outpdouble+1), m128_xmmd_1);
}

uX_Use_decl_annotations
inline void uX_ABI vecdouble4::store(uX_OutWrites(4) double* Outpdouble) const uX_noexcept
{
    _uX_mm_storeu_pd(Outpdouble, m128_xmmd_0);
    _uX_mm_storeu_pd(Outpdouble+2, m128_xmmd_1);
}

uX_Use_decl_annotations
inline void uX_ABI vecdouble4::store_a(uX_OutWrites(4) double* Outpdouble) const uX_noexcept
{
    _uX_mm_store_pd(Outpdouble, m128_xmmd_0);
    _uX_mm_store_pd(Outpdouble+2, m128_xmmd_1);
}

inline const vecdouble4 uX_ABI vecdouble4::insert(double value, count_t index) uX_noexcept
{
    if (index > 3) return *this;
    if (index > 1) {
        m128_xmmd_1 = _uX_mm_setelts_pd(m128_xmmd_1, value, index-2);
    }
    else {
        m128_xmmd_0 = _uX_mm_setelts_pd(m128_xmmd_0, value, index);
    }
    return *this;
}

inline double uX_ABI vecdouble4::extract(count_t index) const uX_noexcept
{
    if (index > 3) return 0.0;
    return index > 1 ? _uX_mm_cvtelts_dbl(m128_xmmd_1, index-2) : _uX_mm_cvtelts_dbl(m128_xmmd_0, index);
}

inline vecdouble4& uX_ABI vecdouble4::zero() uX_noexcept
{
    /*m128_xmmd_0 = _uX_mm_setzero_pd();
    m128_xmmd_1 = _uX_mm_setzero_pd();*/
    return vecdouble4(_uX_mm_setzero_pd(), _uX_mm_setzero_pd());
}

inline vecdouble4& uX_ABI vecdouble4::cutoff(const count_t indexN) uX_noexcept
{
    switch (indexN)
    {
        case 1:
            m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, __m128d_0, 0, 1);
            m128_xmmd_1 = __m128d_0;
            break;
        case 2:
            m128_xmmd_1 = __m128d_0;
            break;
        case 3:
            m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, __m128d_0, 0, 1);
            break;
        default:
            break;
    }
    return *this;
}

inline vecdouble4 uX_ABI flip_sign(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, __m128d_sign), _uX_mm_xor_pd(InHxmmd_a.m128_xmmd_1, __m128d_sign));
}

inline bool_t uX_ABI is_zero(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return _uX_mm_iszero_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_iszero_pd(InHxmmd_a.m128_xmmd_1);
}

inline vecdouble4 uX_ABI select(const vecdouble4 InHxmmd_f, const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_select_pd(InHxmmd_f.m128_xmmd_0, InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_select_pd(InHxmmd_f.m128_xmmd_1, InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI if_add(const vecdouble4 InHxmmd_f, const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a + (InHxmmd_f & InHxmmd_b);
}

inline vecdouble4 uX_ABI if_sub(const vecdouble4 InHxmmd_f, const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a - (InHxmmd_f & InHxmmd_b);
}

inline vecdouble4 uX_ABI if_mul(const vecdouble4 InHxmmd_f, const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a * select(InHxmmd_f, InHxmmd_b, vecdouble4(__m128d_1));
}

inline vecdouble4 uX_ABI if_div(const vecdouble4 InHxmmd_f, const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return InHxmmd_a / select(InHxmmd_f, InHxmmd_b, vecdouble4(__m128d_1));
}

inline vecdouble4 uX_ABI sign_bit(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_signbit_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_signbit_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI sign_combine(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_signcombine_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_signcombine_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI is_finite(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_isfinite_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isfinite_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI is_inf(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_isinf_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isinf_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI is_nan(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_isnan_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isnan_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI is_subnormal(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_issubnormal_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_issubnormal_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI is_zero_or_subnormal(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_iszeroorsubnormal_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_iszeroorsubnormal_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4& uX_ABI vecdouble4::infinite() uX_noexcept
{
    /*m128_xmmd_0 = _uX_mm_infinite_pd();
    m128_xmmd_1 = _uX_mm_infinite_pd();*/
    return vecdouble4(_uX_mm_infinite_pd(), _uX_mm_infinite_pd());
}

inline vecdouble4& uX_ABI vecdouble4::nan() uX_noexcept
{
    /*m128_xmmd_0 = _uX_mm_nan_pd();
    m128_xmmd_1 = _uX_mm_nan_pd();*/
    return vecdouble4(_uX_mm_nan_pd(), _uX_mm_nan_pd());
}

inline double uX_ABI horizontal_add(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return horizontal_add(vecdouble2(_uX_mm_horizontaladd_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_horizontaladd_pd(InHxmmd_a.m128_xmmd_1)));
}

inline double uX_ABI horizontal_sub(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return horizontal_sub(vecdouble2(_uX_mm_horizontalsub_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_horizontalsub_pd(InHxmmd_a.m128_xmmd_1)));
}

inline double uX_ABI horizontal_mul(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return horizontal_mul(vecdouble2(_uX_mm_horizontalmul_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_horizontalmul_pd(InHxmmd_a.m128_xmmd_1)));
}

inline vecdouble4 uX_ABI max(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_max_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_max_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI min(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept
{
    return vecdouble4(_uX_mm_min_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_min_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
}

inline vecdouble4 uX_ABI abs(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_abs_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_abs_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI square(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_square_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_square_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI scale(const vecdouble4 InHxmmd_a, double Indouble_s) uX_noexcept
{
    return vecdouble4(_uX_mm_scale_pd(InHxmmd_a.m128_xmmd_0, Indouble_s), _uX_mm_scale_pd(InHxmmd_a.m128_xmmd_1, Indouble_s));
}

inline vecdouble4 uX_ABI rcp(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_rcp_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_rcp_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI sqrt(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_sqrt_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_sqrt_pd(InHxmmd_a.m128_xmmd_1));
}

inline vecdouble4 uX_ABI rsqrt(const vecdouble4 InHxmmd_a) uX_noexcept
{
    return vecdouble4(_uX_mm_rsqrt_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_rsqrt_pd(InHxmmd_a.m128_xmmd_1));
}

// vecdouble4 End
// // // // // // // // //

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end
