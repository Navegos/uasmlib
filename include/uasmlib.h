
#pragma once

#ifndef UASM_LIB_H
#define UASM_LIB_H

#include "uXmTypes.h"

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

//extern int uXm_DllMain(void*, unsigned int, void*);

uXm_PACK_POP

uXm_EXTERNC_END

#ifdef uXm_X86_OR_X64_CPU
#include "x86/uXmx86Cpu.h"
#include "x86/uXmx86Intrin.h"
#endif

#endif // UASM_LIB_H
