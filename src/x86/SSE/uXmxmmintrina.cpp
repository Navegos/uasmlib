
#include "uXmPreprocessor.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE
#if defined(uXm_X86)

#include "../../../../include/x86/SSE/uXm128/uXm128xmmintrin.h"
#include "../../../../include/x86/MMX/uXm64/uXm64mmintrin.h"

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

__uXm128 _uXm_m128_cvtpi16_ps(__uXm64 _A)
{
	__uXm128 _Tmp;
	__uXm64  _Ext_val = _uXm_m64_cmpgt_pi16(_uXm_m64_setzero_si64(), _A);

	_Tmp = _uXm_m128_cvtpi32_ps(_uXm_m128_setzero_ps(), _uXm_m64_unpackhi_pi16(_A, _Ext_val));
	return(_uXm_m128_cvtpi32_ps(_uXm_m128_movelh_ps(_Tmp, _Tmp),
		   _uXm_m64_unpacklo_pi16(_A, _Ext_val)));
}


__uXm128 _uXm_m128_cvtpu16_ps(__uXm64 _A)
{
	__uXm128 _Tmp;
	__uXm64  _Ext_val = _uXm_m64_setzero_si64();

	_Tmp = _uXm_m128_cvtpi32_ps(_uXm_m128_setzero_ps(), _uXm_m64_unpackhi_pi16(_A, _Ext_val));
	return(_uXm_m128_cvtpi32_ps(_uXm_m128_movelh_ps(_Tmp, _Tmp),
		   _uXm_m64_unpacklo_pi16(_A, _Ext_val)));
}


__uXm64 _uXm_m128_cvtps_pi16(__uXm128 _A)
{
	return _uXm_m64_packs_pi32(_uXm_m128_cvtps_pi32(_A),
						  _uXm_m128_cvtps_pi32(_uXm_m128_movehl_ps(_A, _A)));
}


__uXm128 _uXm_m128_cvtpi8_ps(__uXm64 _A)
{
	__uXm64  _Ext_val = _uXm_m64_cmpgt_pi8(_uXm_m64_setzero_si64(), _A);

	return _uXm_m128_cvtpi16_ps(_uXm_m64_unpacklo_pi8(_A, _Ext_val));
}


__uXm128 _uXm_m128_cvtpu8_ps(__uXm64 _A)
{
	return _uXm_m128_cvtpu16_ps(_uXm_m64_unpacklo_pi8(_A, _uXm_m64_setzero_si64()));
}

__uXm64 _uXm_m128_cvtps_pi8(__uXm128 _A)
{
	return _uXm_m64_packs_pi16(_uXm_m128_cvtps_pi16(_A), _uXm_m64_setzero_si64());
}

__uXm128 _uXm_m128_cvtpi32x2_ps(__uXm64 _A, __uXm64 _B)
{
	return _uXm_m128_movelh_ps(_uXm_m128_cvt_pi2ps(_uXm_m128_setzero_ps(), _A),
						 _uXm_m128_cvt_pi2ps(_uXm_m128_setzero_ps(), _B));
}

uXm_PACK_POP

uXm_EXTERNC_END

#endif // _M_IX86
#endif // uXm_SSE

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/
