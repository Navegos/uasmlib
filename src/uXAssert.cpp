
#include "uXAssert.h"

#include <stdio.h>

#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
#include <crtdbg.h>
#include <stdlib.h>
#elif uX_SWITCH
#include "switch/uXSwitchAbort.h"
#endif

#if (defined(uX_ANDROID) && (uX_ANDROID >= 1))
#include <android/log.h>
#endif

namespace_uX
namespace_internal
void printString(const char* str)
{
#if uX_ANDROID
    __android_log_print(ANDROID_LOG_INFO, "uXPrintString", "%s", str);
#else
    puts(str); // do not use printf here, since str can contain multiple % signs that will not be printed
#   if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
    OutputDebugStringA(str);
    OutputDebugStringA("\n");
#   endif
#endif
}
namespace_internal_end
namespace_uX_end


EXTERN_C_BEGIN
void uX_callconv __uX_asserthandler(const char* Msg, const char* Expr, const char* File, int Line, bool& Ignore)
{
    uX_UNUSED(Ignore); // is used only in debug windows config
    char buffer[1024];
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
    sprintf_s(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#else
    sprintf(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#endif
#if uX_ANDROID
    __android_log_print(ANDROID_LOG_INFO, "uX_asserthandler", "%s", buffer);
#else
    puts(buffer); // do not use printf here, since str can contain multiple % signs that will not be printed
#   if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
    OutputDebugStringA(buffer);
    OutputDebugStringA("\n");
#   endif
#endif
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1)) && (defined(uX_DEBUG) && (uX_DEBUG >= 1))
    // _CrtDbgReport returns -1 on error, 1 on 'retry', 0 otherwise including 'Ignore'.
    // Hitting 'abort' will terminate the process immediately.
    int result = _CrtDbgReport(_CRT_ASSERT, File, Line, NULL, "%s", buffer);
    int mode = _CrtSetReportMode(_CRT_ASSERT, _CRTDBG_REPORT_MODE);
    Ignore = _CRTDBG_MODE_WNDW == mode && result == 0;
    if (Ignore)
        return;
    __debugbreak();
#elif (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
    __debugbreak();
    /*
    #elif uX_SWITCH
            abort(buffer);*/
#else
    abort();
#endif
}
EXTERN_C_END

namespace
{
class DefaultAssertHandler : public uX::uXAssertHandler
{
    virtual void operator()(const char* Msg, const char* Expr, const char* File, int Line, bool& Ignore)
    {
        __uX_asserthandler(Msg, Expr, File, Line, Ignore);
        /*uX_UNUSED(Ignore); // is used only in debug windows config
        char buffer[1024];
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
        sprintf_s(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#else
        sprintf(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#endif
        uX::_internal::printString(buffer);
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1)) && (defined(uX_DEBUG) && (uX_DEBUG >= 1))
        // _CrtDbgReport returns -1 on error, 1 on 'retry', 0 otherwise including 'Ignore'.
        // Hitting 'abort' will terminate the process immediately.
        int result = _CrtDbgReport(_CRT_ASSERT, File, Line, NULL, "%s", buffer);
        int mode = _CrtSetReportMode(_CRT_ASSERT, _CRTDBG_REPORT_MODE);
        Ignore = _CRTDBG_MODE_WNDW == mode && result == 0;
        if (Ignore)
            return;
        __debugbreak();
#elif (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
        __debugbreak();
/ *
#elif uX_SWITCH
        abort(buffer);* /
#else
        abort();
#endif*/
    }

    virtual void operator()(const char* Msg, const char* Expr, const char* File, int Line)
    {
        char buffer[1024];
#if (defined(uX_WINDOWS_FAMILY) && (uX_WINDOWS_FAMILY >= 1))
        sprintf_s(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#else
        sprintf(buffer, "%s(%d)%s : Assertion failed: %s\n", File, Line, Expr, Msg);
#endif
        uX::_internal::printString(buffer);
    }
};

DefaultAssertHandler sAssertHandler;
uX::uXAssertHandler* sAssertHandlerPtr = &sAssertHandler;
}

namespace_uX
uXAssertHandler& uXGetAssertHandler()
{
    return *sAssertHandlerPtr;
}

void uXSetAssertHandler(uXAssertHandler& Handler)
{
    sAssertHandlerPtr = &Handler;
}
namespace_uX_end