
#pragma once

#ifndef uXm_ASSERT_H
#define uXm_ASSERT_H

#include "uXmTypes.h"

#include "assert.h"

#if defined(uXm_VC)

//uXm_BT_ASSERT((vmin <= vmax) != 0)

#if defined(_MSC_VER) && (_MSC_VER >= 1700) && 0
#include <CppUnitTest.h>
#	define uXm_CPUASSERT(axp) _ASSERTE(axp) uXm_ANALYSIS(axp)

namespace MVCCPTF = Microsoft::VisualStudio::CppUnitTestFramework;

#	define uXm_ASSERT_AREEQUAL(axp) MVCCPTF::Assert::AreEqual(axp)
#	define uXm_ASSERT_ARENOTEQUAL(axp) MVCCPTF::Assert::AreNotEqual(axp)
#	define uXm_ASSERT_ARESAME(axp) MVCCPTF::Assert::AreSame(axp)
#	define uXm_ASSERT_ARENOTSAME MVCCPTF::Assert::AreNotSame(axp)
#	define uXm_ASSERT_ISTRUE(axp) MVCCPTF::Assert::IsTrue(axp)
#	define uXm_ASSERT_ISFALSE(axp) MVCCPTF::Assert::IsFalse(axp)
#	define uXm_ASSERT_ISNULL(axp) MVCCPTF::Assert::IsNull(axp)
#	define uXm_ASSERT_ISNOTNULL(axp) MVCCPTF::Assert::IsNotNull(axp)
#else
#ifndef NDEBUG
#	define uXm_CPUASSERT(axp) assert(axp)
#else
#	define uXm_CPUASSERT(axp) ((void)0)
#endif
#	define uXm_GPUASSERT(axp) ((void)0)
#	define uXm_ASSERT_AREEQUAL(axp) axp
#	define uXm_ASSERT_ARENOTEQUAL(axp) axp
#	define uXm_ASSERT_ARESAME(axp) axp
#	define uXm_ASSERT_ISNOTSAME(axp) axp
#	define uXm_ASSERT_ISTRUE(axp) axp
#	define uXm_ASSERT_ISFALSE(axp) axp
#	define uXm_ASSERT_ISNULL(axp) axp
#	define uXm_ASSERT_ISNOTNULL(axp) axp
#endif

#else

#	define uXm_CPUASSERT(axp) assert(axp)
#	define uXm_GPUASSERT(axp) ((void)0)

#	define uXm_ASSERT_AREEQUAL(axp) axp
#	define uXm_ASSERT_ARENOTEQUAL(axp) axp
#	define uXm_ASSERT_ARESAME(axp) axp
#	define uXm_ASSERT_ISNOTSAME(axp) axp
#	define uXm_ASSERT_ISTRUE(axp) axp
#	define uXm_ASSERT_ISFALSE(axp) axp
#	define uXm_ASSERT_ISNULL(axp) axp
#	define uXm_ASSERT_ISNOTNULL(axp) axp
#endif

#	define uXm_assert(axp) uXm_CPUASSERT(axp)

//namespace_uXmOAMP

// compile time assert

#if(defined(__GNUC__) && (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 7))) || (uXm_PS4) || (uXm_APPLE_FAMILY) || (uXm_SWITCH) || (uXm_CLANG && uXm_ARM)
#define uXm_COMPILE_TIME_ASSERT(axp) typedef char uXmCompileTimeAssert_Dummy[(axp) ? 1 : -1] __attribute__((unused))
#else
#define uXm_COMPILE_TIME_ASSERT(axp) typedef char uXmCompileTimeAssert_Dummy[(axp) ? 1 : -1]
#endif

#ifdef __cplusplus
// Template for compile-time error messages
template <bool> class uXmCompileTimeAssert
{
public: uXm_TARGET_CPU_GPU uXmCompileTimeAssert() uXm_CPU_AMP {};
};

template <> class uXmCompileTimeAssert<false>
{    // generate compile-time error if false
private: uXm_TARGET_CPU_GPU uXmCompileTimeAssert() uXm_CPU_AMP {};
};

template<class T> class uXmSTCompileTimeAssert
{
public: uXm_TARGET_CPU_GPU uXmSTCompileTimeAssert() uXm_CPU_AMP { static_assert(T, uXm_Stringer((T) file: __FILE__ line : __LINE__)); };
};

// avoid unreferenced parameter warning
// preferred solution: omit the parameter's name from the declaration
//template <class T>
//uXm_TARGET_CPU_GPU_INLINE void uXm_UNUSED(T const&) uXm_CPU_AMP {}

#endif //__cplusplus

// Ensure that the application hasn't tweaked the pack value to less than 8, which would break
// matching between the API headers and the binaries
// This assert works on win32/win64, but may need further specialization on other platforms.
// Some GCC compilers need the compiler flag -malign-double to be set.
// Apparently the apple-clang-llvm compiler doesn't support malign-double.
#if uXm_PS4 || uXm_APPLE_FAMILY || (uXm_CLANG && !uXm_ARM)
struct uXmPackValidation
{
	char _;
	long a;
};
#elif uXm_ANDROID || (uXm_CLANG && uXm_ARM)
struct uXmPackValidation
{
	char _;
	double a;
};
#else
struct uXmPackValidation
{
	char _;
	long long a;
};
#endif

//namespace_uXmOAMP_end

/*
#define uXm_STASSERT(ctaxp)	typedef char XMStaticAssert[(ctaxp)]
#define uXm_STMSSG_ASSERT(ctaxp, mssg)	typedef char XMStaticAssert[(ctaxp)] char (mssg)*/

#define uXm_STATIC_ASSERT(axp) static_assert(axp, uXm_Stringer((axp) file: __FILE__ line: __LINE__))
#define uXm_STATIC_ASSERT_MESSAGE(axp) static_assert(axp, uXm_Stringer(message (axp) file: __FILE__ line : __LINE__))

#define uXm_ST_ASSERT(axp) static_assert(axp, uXm_Stringer((axp) file: __FILE__ line: __LINE__))
#define uXm_ST_ASSERT_MSG(axp, message) static_assert(axp, uXm_Stringer(message (axp) file: __FILE__ line: __LINE__))

#define uXm_ST_ASSERTIF(axp) if(!axp) { static_assert(false, uXm_Stringer((axp) file: __FILE__ line: __LINE__)); }
#define uXm_ST_ASSERTIF_MSG(axp, message) if(!axp) { static_assert(false, uXm_Stringer(message (axp) file: __FILE__ line: __LINE__)); }

#endif // uXm_ASSERT_H
