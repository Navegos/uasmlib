
#include "uXMisc.h"

uX_TARGET_CPU_GPU_DEVICE_BUILTIN float uX_int32_as_float(__int32 Ini) uX_CPU_AMP
{
#ifdef __cplusplus
	return *reinterpret_cast<float *>(&Ini);
#else
	return *(float *)(&Ini);
#endif
}

uX_TARGET_CPU_GPU_DEVICE_BUILTIN float uX_uint32_as_float(unsigned __int32 Ini) uX_CPU_AMP
{
#ifdef __cplusplus
	return *reinterpret_cast<float *>(&Ini);
#else
	return *(float *)(&Ini);
#endif
}

uX_TARGET_CPU_GPU_DEVICE_BUILTIN double uX_int32_as_double(__int32 Ini) uX_CPU_AMP
{
#ifdef __cplusplus
	return *reinterpret_cast<double *>(&Ini);
#else
	return *(double *)(&Ini);
#endif
}

uX_TARGET_CPU_GPU_DEVICE_BUILTIN double uX_uint32_as_double(unsigned __int32 Ini) uX_CPU_AMP
{
#ifdef __cplusplus
	return *reinterpret_cast<double *>(&Ini);
#else
	return *(double *)(&Ini);
#endif
}

uX_TARGET_CPU_GPU_DEVICE_BUILTIN double uX_int64_as_double(__int64 Ini)
{
#ifdef __cplusplus
	return *reinterpret_cast<double *>(&Ini);
#else
	return *(double *)(&Ini);
#endif
}

uX_TARGET_CPU_GPU_DEVICE_BUILTIN double uX_uint64_as_double(unsigned __int64 Ini)
{
#ifdef __cplusplus
	return *reinterpret_cast<double *>(&Ini);
#else
	return *(double *)(&Ini);
#endif
}
