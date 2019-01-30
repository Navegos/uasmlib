
#pragma once

#ifndef uX_TYPES_H
#define uX_TYPES_H

#include "uXBaseDefs.h"
#include "uXSalProcess.h"

// Define type size_t
#ifndef _SIZE_T_DEFINED
#include "stddef.h"
#endif

#ifndef _MSC_VER
typedef char __int8;
typedef short __int16;
typedef long __int32;
typedef long long __int64;
#endif

#include "uXAssert.h"

#endif /*uX_TYPES_H*/
