
#pragma once

#ifndef uX_ASSERT_H
#define uX_ASSERT_H

#include "uXTypes.h"

#include "assert.h"

#if defined(uX_VC)

//uX_BT_ASSERT((vmin <= vmax) != 0)

#if defined(_MSC_VER) && (_MSC_VER >= 1700) && 0
#include <CppUnitTest.h>
#	define uX_CPUASSERT(axp) _ASSERTE(axp) uX_ANALYSIS(axp)

namespace MVCCPTF = Microsoft::VisualStudio::CppUnitTestFramework;

#	define uX_ASSERT_AREEQUAL(axp) MVCCPTF::Assert::AreEqual(axp)
#	define uX_ASSERT_ARENOTEQUAL(axp) MVCCPTF::Assert::AreNotEqual(axp)
#	define uX_ASSERT_ARESAME(axp) MVCCPTF::Assert::AreSame(axp)
#	define uX_ASSERT_ARENOTSAME MVCCPTF::Assert::AreNotSame(axp)
#	define uX_ASSERT_ISTRUE(axp) MVCCPTF::Assert::IsTrue(axp)
#	define uX_ASSERT_ISFALSE(axp) MVCCPTF::Assert::IsFalse(axp)
#	define uX_ASSERT_ISNULL(axp) MVCCPTF::Assert::IsNull(axp)
#	define uX_ASSERT_ISNOTNULL(axp) MVCCPTF::Assert::IsNotNull(axp)
#else
#ifndef NDEBUG
#	define uX_CPUASSERT(axp) assert(axp)
#else
#	define uX_CPUASSERT(axp) ((void)0)
#endif
#	define uX_GPUASSERT(axp) ((void)0)
#	define uX_ASSERT_AREEQUAL(axp) axp
#	define uX_ASSERT_ARENOTEQUAL(axp) axp
#	define uX_ASSERT_ARESAME(axp) axp
#	define uX_ASSERT_ISNOTSAME(axp) axp
#	define uX_ASSERT_ISTRUE(axp) axp
#	define uX_ASSERT_ISFALSE(axp) axp
#	define uX_ASSERT_ISNULL(axp) axp
#	define uX_ASSERT_ISNOTNULL(axp) axp
#endif

#else

#	define uX_CPUASSERT(axp) assert(axp)
#	define uX_GPUASSERT(axp) ((void)0)

#	define uX_ASSERT_AREEQUAL(axp) axp
#	define uX_ASSERT_ARENOTEQUAL(axp) axp
#	define uX_ASSERT_ARESAME(axp) axp
#	define uX_ASSERT_ISNOTSAME(axp) axp
#	define uX_ASSERT_ISTRUE(axp) axp
#	define uX_ASSERT_ISFALSE(axp) axp
#	define uX_ASSERT_ISNULL(axp) axp
#	define uX_ASSERT_ISNOTNULL(axp) axp
#endif

#	define uX_assert(axp) uX_CPUASSERT(axp)

//namespace_uXOAMP

// compile time assert

#if(defined(__GNUC__) && (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 7))) || (uX_PS4) || (uX_APPLE_FAMILY) || (uX_SWITCH) || (uX_CLANG && uX_ARM)
#define uX_COMPILE_TIME_ASSERT(axp) typedef char uXCompileTimeAssert_Dummy[(axp) ? 1 : -1] __attribute__((unused))
#else
#define uX_COMPILE_TIME_ASSERT(axp) typedef char uXCompileTimeAssert_Dummy[(axp) ? 1 : -1]
#endif

#ifdef __cplusplus
// Template for compile-time error messages
template <bool> class uXCompileTimeAssert
{
public: uX_TARGET_CPU_GPU uXCompileTimeAssert() uX_CPU_AMP {};
};

template <> class uXCompileTimeAssert<false>
{    // generate compile-time error if false
private: uX_TARGET_CPU_GPU uXCompileTimeAssert() uX_CPU_AMP {};
};

template<class T> class uXSTCompileTimeAssert
{
public: uX_TARGET_CPU_GPU uXSTCompileTimeAssert() uX_CPU_AMP { static_assert(T, uX_Stringer((T) file: __FILE__ line : __LINE__)); };
};

// avoid unreferenced parameter warning
// preferred solution: omit the parameter's name from the declaration
//template <class T>
//uX_TARGET_CPU_GPU_INLINE void uX_UNUSED(T const&) uX_CPU_AMP {}

#endif //__cplusplus

// Ensure that the application hasn't tweaked the pack value to less than 8, which would break
// matching between the API headers and the binaries
// This assert works on win32/win64, but may need further specialization on other platforms.
// Some GCC compilers need the compiler flag -malign-double to be set.
// Apparently the apple-clang-llvm compiler doesn't support malign-double.
#if uX_PS4 || uX_APPLE_FAMILY || (uX_CLANG && !uX_ARM)
struct uXPackValidation
{
	char _;
	long a;
};
#elif uX_ANDROID || (uX_CLANG && uX_ARM)
struct uXPackValidation
{
	char _;
	double a;
};
#else
struct uXPackValidation
{
	char _;
	long long a;
};
#endif

//namespace_uXOAMP_end

/*
#define uX_STASSERT(ctaxp)	typedef char XMStaticAssert[(ctaxp)]
#define uX_STMSSG_ASSERT(ctaxp, mssg)	typedef char XMStaticAssert[(ctaxp)] char (mssg)*/

#define uX_STATIC_ASSERT(axp) static_assert(axp, uX_Stringer((axp) file: __FILE__ line: __LINE__))
#define uX_STATIC_ASSERT_MESSAGE(axp) static_assert(axp, uX_Stringer(message (axp) file: __FILE__ line : __LINE__))

#define uX_ST_ASSERT(axp) static_assert(axp, uX_Stringer((axp) file: __FILE__ line: __LINE__))
#define uX_ST_ASSERT_MSG(axp, message) static_assert(axp, uX_Stringer(message (axp) file: __FILE__ line: __LINE__))

#define uX_ST_ASSERTIF(axp) if(!axp) { static_assert(false, uX_Stringer((axp) file: __FILE__ line: __LINE__)); }
#define uX_ST_ASSERTIF_MSG(axp, message) if(!axp) { static_assert(false, uX_Stringer(message (axp) file: __FILE__ line: __LINE__)); }

#endif // uX_ASSERT_H
