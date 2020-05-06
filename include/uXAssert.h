
#pragma once

#ifndef uX_ASSERT_H
#define uX_ASSERT_H

#include "uXTypes.h"

#include "assert.h"

#if defined(uX_VC)

//uX_BT_ASSERT((vmin <= vmax) != 0)

#if defined(_MSC_VER) && (_MSC_VER >= 1700) && 0
#include <CppUnitTest.h>
#   define uX_CPUASSERT(Expr) _ASSERTE(Expr) uX_ANALYSIS(Expr)

namespace MVCCPTF = Microsoft::VisualStudio::CppUnitTestFramework;

#   define uX_ASSERT_AREEQUAL(Expr) MVCCPTF::Assert::AreEqual(Expr)
#   define uX_ASSERT_ARENOTEQUAL(Expr) MVCCPTF::Assert::AreNotEqual(Expr)
#   define uX_ASSERT_ARESAME(Expr) MVCCPTF::Assert::AreSame(Expr)
#   define uX_ASSERT_ARENOTSAME MVCCPTF::Assert::AreNotSame(Expr)
#   define uX_ASSERT_ISTRUE(Expr) MVCCPTF::Assert::IsTrue(Expr)
#   define uX_ASSERT_ISFALSE(Expr) MVCCPTF::Assert::IsFalse(Expr)
#   define uX_ASSERT_ISNULL(Expr) MVCCPTF::Assert::IsNull(Expr)
#   define uX_ASSERT_ISNOTNULL(Expr) MVCCPTF::Assert::IsNotNull(Expr)
#else
#ifndef NDEBUG
#   define uX_CPUASSERT(Expr) assert(Expr)
#else
#   define uX_CPUASSERT(Expr) ((void)0)
#endif
#   define uX_GPUASSERT(Expr) ((void)0)
#   define uX_ASSERT_AREEQUAL(Expr) Expr
#   define uX_ASSERT_ARENOTEQUAL(Expr) Expr
#   define uX_ASSERT_ARESAME(Expr) Expr
#   define uX_ASSERT_ISNOTSAME(Expr) Expr
#   define uX_ASSERT_ISTRUE(Expr) Expr
#   define uX_ASSERT_ISFALSE(Expr) Expr
#   define uX_ASSERT_ISNULL(Expr) Expr
#   define uX_ASSERT_ISNOTNULL(Expr) Expr
#endif

#else

#   define uX_CPUASSERT(Expr) assert(Expr)
#   define uX_GPUASSERT(Expr) ((void)0)

#   define uX_ASSERT_AREEQUAL(Expr) Expr
#   define uX_ASSERT_ARENOTEQUAL(Expr) Expr
#   define uX_ASSERT_ARESAME(Expr) Expr
#   define uX_ASSERT_ISNOTSAME(Expr) Expr
#   define uX_ASSERT_ISTRUE(Expr) Expr
#   define uX_ASSERT_ISFALSE(Expr) Expr
#   define uX_ASSERT_ISNULL(Expr) Expr
#   define uX_ASSERT_ISNOTNULL(Expr) Expr
#endif

namespace_uX

// compile time assert

#if(defined(__GNUC__) && (__GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 7))) || (uX_PS4) || (uX_APPLE_FAMILY) || (uX_SWITCH) || (uX_CLANG && uX_ARM)
#define uX_COMPILE_TIME_ASSERT(Expr) typedef char uXCompileTimeAssert_Dummy[(Expr) ? 1 : -1] __attribute__((unused))
#else
#define uX_COMPILE_TIME_ASSERT(Expr) typedef char uXCompileTimeAssert_Dummy[(Expr) ? 1 : -1]
#endif

/**
\brief Prints the string literally (does not consume % specifier), trying to make sure it's visible to the app
programmer
*/
uX_EXAPI void printString(const char*);

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

/*
template<class T> class uXSTCompileTimeAssert
{
public: uX_TARGET_CPU_GPU uXSTCompileTimeAssert() uX_CPU_AMP { static_assert(T, uX_Stringer((T) file: __FILE__ line : __LINE__)); };
};*/

// avoid unreferenced parameter warning
// preferred solution: omit the parameter's name from the declaration
//template <class T>
//uX_TARGET_CPU_GPU_INLINE void uX_UNUSED(T const&) uX_CPU_AMP {}


/* Base class to handle assert failures */
class uXAssertHandler
{
public:
    virtual ~uXAssertHandler()
    {}
    virtual void operator()(const char* Msg, const char* Expr, const char* File, int Line, bool& Ignore) = 0;
    virtual void operator()(const char* Msg, const char* Expr, const char* File, int Line) = 0;
};

uX_EXAPI uXAssertHandler& uXGetAssertHandler();
uX_EXAPI void uXSetAssertHandler(uXAssertHandler& Handler);

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

namespace_uX_end

/*
#define uX_STASSERT(ctExpr) typedef char XMStaticAssert[(ctExpr)]
#define uX_STMSSG_ASSERT(ctExpr, mssg)  typedef char XMStaticAssert[(ctExpr)] char (mssg)*/

#define uX_STATIC_ASSERT(Expr) static_assert(Expr, uX_Stringer((Expr) file: __FILE__ line: __LINE__))
#define uX_STATIC_ASSERT_MESSAGE(Expr) static_assert(Expr, uX_Stringer(message (Expr) file: __FILE__ line : __LINE__))

#define uX_ST_ASSERT(Expr) static_assert(Expr, uX_Stringer((Expr) file: __FILE__ line: __LINE__))
#define uX_ST_ASSERT_Msg(Expr, message) static_assert(Expr, uX_Stringer(message (Expr) file: __FILE__ line: __LINE__))

#define uX_ST_ASSERTIF(Expr) if(!Expr) { static_assert(false, uX_Stringer((Expr) file: __FILE__ line: __LINE__)); }
#define uX_ST_ASSERTIF_Msg(Expr, message) if(!Expr) { static_assert(false, uX_Stringer(message (Expr) file: __FILE__ line: __LINE__)); }

#if uX_VC
#define uX_code_analysis_assume(Expr)                                                                                   \
    __analysis_assume(!!(Expr)) // This macro will be used to get rid of analysis warning messages if a uX_ASSERT is used
// to "guard" illegal mem access, for example.
#else
#define uX_code_analysis_assume(Expr)
#endif

//# define uX_assert(Expr) uX_CPUASSERT(Expr)

#if (defined(uX_ENABLE_ASSERTS) && (uX_ENABLE_ASSERTS >= 1))
#   define uX_assert_msg(Expr, Msg)                                                                             \
    {                                                                                                           \
        static bool _ignore = false;                                                                            \
        ((void)((!!(Expr)) || (!_ignore &&                                                                      \
        (uX::uXGetAssertHandler()(uX_Stringer(Msg), uX_Stringer(Expr), __FILE__, __LINE__, _ignore), false)))); \
        uX_code_analysis_assume(Expr);                                                                          \
    }

#   define uX_ensure_msg(Expr,Msg)                      ((!!(Expr)) || (uX::uXGetAssertHandler()(uX_Stringer(Msg), uX_Stringer(Expr), __FILE__, __LINE__), false))
#   define uX_ensure_return_msg(Expr,Msg)               if(!(Expr)) { uX_assert_msg(Expr, Msg); return; }
#   define uX_ensure_return_null_msg(Expr,Msg)          if(!(Expr)) { uX_assert_msg(Expr, Msg); return 0; }
#   define uX_ensure_return_val_msg(Expr,Msg,Val)       if(!(Expr)) { uX_assert_msg(Expr, Msg); return Val; }

#   define uX_assert(Expr)                              uX_assert_msg(Expr, uX_Stringer(""))
#   define uX_ensure(Expr)                              uX_ensure_msg(Expr, uX_Stringer(""))
#   define uX_ensure_return(Expr)                       if(!(Expr)) { uX_assert(Expr); return; }
#   define uX_ensure_return_null(Expr)                  if(!(Expr)) { uX_assert(Expr); return 0; }
#   define uX_ensure_return_val(Expr,Val)               if(!(Expr)) { uX_assert(Expr); return Val; }
#else
#   define uX_assert_msg(Expr, Msg)                     ((void)0)
#   define uX_ensure_msg(Expr,Msg)                      (!!(Expr))
#   define uX_ensure_return_msg(Expr,Msg)               if(!(Expr)) { return; }
#   define uX_ensure_return_null_msg(Expr,Msg)          if(!(Expr)) { return 0; }
#   define uX_ensure_return_val_msg(Expr,Msg,Val)       if(!(Expr)) { return Val; }

#   define uX_assert(Expr)                              ((void)0)
#   define uX_ensure(Expr)                              (!!(Expr))
#   define uX_ensure_return(Expr)                       if(!(Expr)) { return; }
#   define uX_ensure_return_null(Expr)                  if(!(Expr)) { return 0; }
#   define uX_ensure_return_val(Expr,Val)               if(!(Expr)) { return Val; }
#endif

EXTERN_C_BEGIN
extern void uX_callconv __uX_asserthandler(const char* Msg, const char* Expr, const char* File, int Line, bool& Ignore);
EXTERN_C_END

#endif // uX_ASSERT_H