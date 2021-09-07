/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /																				/ /
; / /			Copyright 2021 (c) Navegos QA - optimized library					/ /
; / /																				/ /
; / /	Licensed under the Apache License, Version 2.0 (the "License");				/ /
; / /	you may not use this file except in compliance with the License.			/ /
; / /	You may obtain a copy of the License at										/ /
; / /																				/ /
; / /		http://www.apache.org/licenses/LICENSE-2.0								/ /
; / /																				/ /
; / /	Unless required by applicable law or agreed to in writing, software			/ /
; / /	distributed under the License is distributed on an "AS IS" BASIS,			/ /
; / /	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.	/ /
; / /	See the License for the specific language governing permissions and			/ /
; / /	limitations under the License.												/ /
; / /																				/ /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_SAL_PROCESS_H
#define uX_SAL_PROCESS_H 1

#ifndef uX_PREPROCESSOR_H
#include "uXpreprocessor.h"
#endif  /* uX_PREPROCESSOR_H */

#if defined(_MSC_VER) && (_MSC_VER >= 1700)
#include <sal.h>
#endif

/* buffer and length sal analyzes macro */
/* please read MSDN library for sal */
/* All other compilers do-not have same type of analyzer, it will use the same logic macro for compatibility and easy type code writing */

/* sal fixups macro */
#if defined(uX_VC)
# if defined(_MSC_VER) && (_MSC_VER<1610) && !defined(_In_reads_)
# ifndef __analysis_assume
#   define __analysis_assume(uXpr)
# endif
# ifndef _In_count_x_
#   define _In_count_x_(uXpr)
# endif
# ifndef _In_opt_count_x_
#   define _In_opt_count_x_(uXpr)
# endif
# ifndef _In_bytecount_x_
#   define _In_bytecount_x_(uXpr)
# endif
# ifndef _Inout_cap_x_
#   define _Inout_cap_x_(uXpr)
# endif
# ifndef _Inout_z_cap_x_
#   define _Inout_z_cap_x_(uXpr)
# endif
# ifndef _Inout_bytecap_x_
#   define _Inout_bytecap_x_(uXpr)
# endif
# ifndef _Inout_opt_z_cap_x_
#   define _Inout_opt_z_cap_x_(uXpr)
# endif
# ifndef _Out_cap_x_
#   define _Out_cap_x_(uXpr)
# endif
# ifndef _Out_opt_cap_x_
#   define _Out_opt_cap_x_(uXpr)
# endif
# ifndef _Out_bytecap_x_
#   define _Out_bytecap_x_(uXpr)
# endif
# ifndef _Out_opt_bytecap_x_
#   define _Out_opt_bytecap_x_(uXpr)
# endif
# ifndef _Deref_out_
#   define _Deref_out_
# endif
# ifndef _Deref_out_opt_
#   define _Deref_out_opt_
# endif
# ifndef _Deref_out_z_
#   define _Deref_out_z_
# endif
# ifndef _Deref_opt_out_opt_
#   define _Deref_opt_out_opt_
# endif
# ifndef _Deref_opt_out_opt_z_
#   define _Deref_opt_out_opt_z_
# endif
# ifndef _Deref_post_cap_x_
#   define _Deref_post_cap_x_(uXpr)
# endif
# ifndef _Deref_post_opt_cap_x_
#   define _Deref_post_opt_cap_x_(uXpr)
# endif

#   define _Analysis_assume_(uXpr) __analysis_assume(uXpr)
#   define _In_reads_(uXpr) _In_count_x_(uXpr)
#   define _In_reads_opt_(uXpr) _In_opt_count_x_(uXpr)
#   define _In_reads_bytes_(uXpr) _In_bytecount_x_(uXpr)
#   define _Inout_updates_(uXpr) _Inout_cap_x_(uXpr)
#   define _Inout_updates_z_(uXpr) _Inout_z_cap_x_(uXpr)
#   define _Inout_updates_bytes_(uXpr) _Inout_bytecap_x_(uXpr)
#   define _Inout_updates_all_(uXpr) _Inout_z_cap_x_(uXpr)
#   define _Inout_updates_all_opt_(uXpr) _Inout_opt_z_cap_x_(uXpr)
#   define _Out_writes_(uXpr) _Out_cap_x_(uXpr)
#   define _Out_writes_opt_(uXpr) _Out_opt_cap_x_(uXpr)
#   define _Out_writes_bytes_(uXpr) _Out_bytecap_x_(uXpr)
#   define _Out_writes_bytes_to_opt_(a,b) _Out_opt_bytecap_x_(a,b)
#   define _Outptr_ _Deref_out_
#   define _Outptr_opt_ _Deref_out_opt_
#   define _Outptr_result_z_ _Deref_out_z_
#   define _Outptr_opt_result_maybenull_ _Deref_opt_out_opt_
#   define _Outptr_result_maybenull_z_ _Deref_opt_out_opt_z_
#   define _Outptr_result_buffer_(uXpr) _Deref_post_cap_x_(uXpr)
#   define _Outptr_result_buffer_all_maybenull_(uXpr) _Deref_post_opt_cap_x_(uXpr)
#   define _COM_Outptr_ _Deref_out_
#   define _When_(test,uXpr)
#   define _Acquires_lock_(uXpr)
#   define _Releases_lock_(uXpr)
#   define _InuXpressible_(uXpr)

# ifndef _Out_
#   define _Out_
# endif
# ifndef _In_
#   define _In_
# endif
# ifndef _Deref_out_range_
#   define _Deref_out_range_(uXpr)
# endif
# ifndef _Must_inspect_result_
#   define _Must_inspect_result_
# endif
# ifndef _Return_type_success_
#   define _Return_type_success_(uXpr)
# endif

# endif
#else
#   define _Analysis_assume_(uXpr)
#   define _In_reads_(uXpr)
#   define _In_reads_opt_(uXpr)
#   define _In_reads_bytes_(uXpr)
#   define _Inout_updates_(uXpr)
#   define _Inout_updates_z_(uXpr)
#   define _Inout_updates_bytes_(uXpr)
#   define _Inout_updates_all_(uXpr)
#   define _Inout_updates_all_opt_(uXpr)
#   define _Out_writes_(uXpr)
#   define _Out_writes_opt_(uXpr)
#   define _Out_writes_bytes_(uXpr)
#   define _Out_writes_bytes_to_opt_(a,b)
#   define _Outptr_
#   define _Outptr_opt_
#   define _Outptr_result_z_
#   define _Outptr_opt_result_maybenull_
#   define _Outptr_result_maybenull_z_
#   define _Outptr_result_buffer_(uXpr)
#   define _Outptr_result_buffer_all_maybenull_(uXpr)
#   define _COM_Outptr_
#   define _When_(test,uXpr)
#   define _Acquires_lock_(uXpr)
#   define _Releases_lock_(uXpr)
#   define _InuXpressible_(uXpr)
#   define _Out_
#   define _In_
#   define _Deref_out_range_(uXpr)
#   define _Must_inspect_result_
#   define _Return_type_success_(uXpr)
#endif

#if defined(uX_VC)
# if _MSC_VER >= 1700
/*

#define _Inout_updates_to_(length,count)							_SAL2_Source_(_Inout_updates_to_, (length,count), _Out_writes_to_(length,count) _Pre_valid_impl_ _Pre1_impl_(__count_impl(length)))
#define _Inout_updates_to_opt_(length,count)						_SAL2_Source_(_Inout_updates_to_opt_, (length,count), _Out_writes_to_opt_(length,count) _Pre_valid_impl_ _Pre1_impl_(__count_impl(length)))

#define _Out_writes_to_(length,count)								_SAL2_Source_(_Out_writes_to_, (length,count), _Pre_cap_(length)			_Post_valid_impl_ _Post_count_(count))
*/

#ifndef _In_reads_to_
#   define _In_reads_to_(length,count)								_SAL2_Source_(_In_reads_to_, (length,count), _Pre_cap_(length) _Pre_valid_impl_ _Pre_count_(count) _Deref_pre_readonly_)
#endif
#ifndef _In_reads_to_opt_
#   define _In_reads_to_opt_(length,count)							_SAL2_Source_(_In_reads_to_opt_, (length,count), _Pre_opt_cap_(length) _Pre_valid_impl_ _Pre_opt_count_(count) _Deref_pre_readonly_)
#endif

//============================================================================
//   Structural SAL:
//	 These annotations modify the use of other annotations.  They may
//	 express the annotation target (i.e. what parameter/field the annotation
//	 applies to) or the condition under which the annotation is applicable.
//============================================================================

#   define uX_Use_decl_annotations									_Use_decl_annotations_

/*__analysis_assume__________________________________________________________________________*/

/* sal annotations with (Type) elements macros */
/* all calls to the defines will be made to the Type and Name parameter */
/* sample use for uX_In (uX_In(uXMF32f,f0), ...){ rtemp = f0}*/
/* sample use for XMF32_InReads (uX_InReads(uXMF32f,f, int tostsize),... ){ uXMF32f* frtemp = f}*/
/* sample use for XMF32_InReads (uXMF32f_InReads(uXMF32f,f,4), ...){ uXMF32f* frtemp = f}*/

#   define uX_Analyzis(axp)											_Analysis_assume_(axp)

// Check the return value of a function e.g. _Check_return_ ErrorCode Foo();
#   define uX_CheckReturn											_Check_return_
#   define uX_MustInspectResult										_Must_inspect_result_
#   define uX_ReturnTypeSucess										_Return_type_success_

// annotations to uXpress value of integral or pointer parameter
#   define uX_InRange(lb,ub)										_In_range_(lb,ub)
#   define uX_OutRange(lb,ub)										_Out_range_(lb,ub)
#   define uX_RetRange(lb,ub)										_Ret_range_(lb,ub)
#   define uX_DerefINRange  (lb,ub)									_Deref_in_range_(lb,ub)
#   define uX_DerefOutRange(lb,ub)									_Deref_out_range_(lb,ub)
#   define uX_DerefRetRange(lb,ub)									_Deref_ret_range_(lb,ub)
#   define uX_PreEqualTo(uXpr)										_Pre_equal_to_(uXpr)
#   define uX_PostEqualTo(uXpr)										_Post_equal_to_(uXpr)

// Input parameters --------------------------

//   _In_ - Annotations for parameters where data is passed into the function, but not modified.
//		  _In_ by itself can be used with non-pointer types (although it is redundant).

// e.g. void SetPoint( _In_ const POINT* pPT );
#   define uX_In													_In_													/* an input ( type ) and ( Name ) */
#   define uX_InOpt													_In_opt_												/* an input ( type ) and ( Name ) and optional Null parameter */

// null terminated 'in' parameters.
// e.g. void CopyStr( _In_z_ const char* szFrom, _Out_z_cap_(cchTo) char* szTo, size_t cchTo );
#   define uX_InZ													_In_z_												  /* an input ( type ) and ( Name ) null-terminated 'in' parameters */
#   define uX_InOptZ												_In_opt_z_											  /* an input ( type ) and ( Name ) null-terminated 'in' parameters and optional Null parameter */

 // I don't know why sal can give us the length for elements using it from this macros, I have to add [length] after the names to correct fix this.
 // probably using-it to pointers and unknown arrays length elements, it cant work this way.
 // I think its fixed this way, removed [length] add * after the type.
 // Nop inst fixed yet.... ToDO in this

// 'input' buffers with given length
#   define uX_InReads(length)										_In_reads_(length)									  /* an input array ( type ) and ( Name ) with given ( length ) */
#   define uX_InReadsOpt(length)									_In_reads_opt_(length)								  /* an input array ( type ) and ( Name ) with given ( length ) and optional Null parameter */
#   define uX_InReadsBytes(length)									_In_reads_bytes_(length)									/* an input array ( type ) and ( Name ) with given ( length ) described by another parameter */
#   define uX_InReadsBytesOpt(length)								_In_reads_bytes_opt_(length)								/* an input array ( type ) and ( Name ) with given ( length ) described by another parameter and optional Null parameter */
#   define uX_InReadsZ(length)										_In_reads_z_(length)										/* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters */
#   define uX_InReadsOptZ(length)									_In_reads_opt_z_(length)									/* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters and optional Null parameter */
#   define uX_InReadsOrZ(length)									_In_reads_or_z_(length)								 /* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters or has a known length, or both */
#   define uX_InReadsOrZOpt(length)									_In_reads_or_z_opt_(length)							 /* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters or has a known length, or both and optional Null parameter */

#   define uX_InReadsTo(length,count)								_In_reads_to_(length,count)					 /* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters */
#   define uX_InReadsToOpt(length,count)							_In_reads_to_opt_(length,count)				 /* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters and optional Null parameter */

// 'input' buffers valid to the given end pointer
#   define uX_InReadsToPtr(ptr)										_In_reads_to_ptr_(ptr)								  /* an input array ( type ) and ( Name ) with given ( length ) valid to the given end pointer */
#   define uX_InReadsToPtrOpt(ptr)									_In_reads_to_ptr_opt_(ptr)							  /* an input array ( type ) and ( Name ) with given ( length ) valid to the given end pointer and optional Null parameter */
#   define uX_InReadsToPtrZ(ptr)									_In_reads_to_ptr_z_(ptr)								/* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters, valid to the given end pointer */
#   define uX_InReadsToPtrOptZ(ptr)									_In_reads_to_ptr_opt_z_(ptr)							/* an input array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters, and optional Null parameter valid to the given end pointer */

// Output parameters --------------------------

//   _Out_ - Annotations for pointer or reference parameters where data passed back to the caller.
//		   These are mostly used where the pointer/reference is to a non-pointer type.
//		   _Outptr_/_Outref) (see below) are typically used to return pointers via parameters.

// e.g. void GetPoint( _Out_ POINT* pPT );
#   define uX_Out													_Out_												   /* an output modifiable ( type ) and ( Name ) */
#   define uX_Outopt												_Out_opt_											   /* an output modifiable ( type ) and ( Name ) and optional Null parameter */

#   define uX_OutWrites(length)										_Out_writes_(length)										/* an output writable array ( type ) and ( Name ) with given ( length ) */
#   define uX_OutWritesOpt(length)									_Out_writes_opt_(length)									/* an output writable array ( type ) and ( Name ) with given ( length ) and optional Null parameter */
#   define uX_OutWritesBytes(length)								_Out_writes_bytes_(length)							  /* an output writable array ( type ) and ( Name ) with given ( length ) described by another parameter */
#   define uX_OutWritesBytesOpt(length)								_Out_writes_bytes_opt_(length)						  /* an output writable array ( type ) and ( Name ) with given ( length ) described by another parameter and optional Null parameter */
#   define uX_OutWritesZ(length)									_Out_writes_z_(length)								  /* an output writable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters */
#   define uX_OutWritesOptZ(length)									_Out_writes_opt_z_(length)							  /* an output writable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters and optional Null parameter  */
#   define uX_OutWritesTo(length,count)								_Out_writes_to_(length,count)					   /* an output writable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters */
#   define uX_OutWritesToOpt(length,count)							_Out_writes_to_opt_(length,count)				   /* an output writable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters and optional Null parameter  */
#   define uX_OutWritesAll(length)									_Out_writes_all_(length)									/* an output writable array ( type ) and ( Name ) with given ( length ) */
#   define uX_OutWritesAllOpt(length)								_Out_writes_all_opt_(length)								/* an output writable array ( type ) and ( Name ) with given ( length ) and optional Null parameter */
#   define uX_OutWritesBytesTo(length,count)						_Out_writes_bytes_to_(length,count)			 /* an output writable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters */
#   define uX_OutWritesBytesToOpt(length,count)						_Out_writes_bytes_to_opt_(length,count)		 /* an output writable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters and optional Null parameter */
#   define uX_OutWritesBytesAll(length)								_Out_writes_bytes_all_(length)						  /* an output writable array ( type ) and ( Name ) with given ( length ) described by another parameter */
#   define uX_OutWritesBytesAllOpt(length)							_Out_writes_bytes_all_opt_(length)					  /* an output writable array ( type ) and ( Name ) with given ( length ) described by another parameter and optional Null parameter */

#   define uX_OutWritesToPtr(ptr)									_Out_writes_to_ptr_(ptr)								/* an output writable array ( type ) and ( Name ) with given ( length ) valid to the given end pointer */
#   define uX_OutWritesToPtrOpt(ptr)								_Out_writes_to_ptr_opt_(ptr)							/* an output writable array ( type ) and ( Name ) with given ( length ) valid to the given end pointer and optional Null parameter */
#   define uX_OutWritesToPtrZ(ptr)									_Out_writes_to_ptr_z_(ptr)							  /* an output writable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters, valid to the given end pointer */
#   define uX_OutWritesToPtrOptZ(ptr)								_Out_writes_to_ptr_opt_z_(ptr)						  /* an output writable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters, valid to the given end pointer and optional Null parameter */

// Inout parameters ----------------------------

//   _Inout_ - Annotations for pointer or reference parameters where data is passed in and
//		potentially modified.
//		  void ModifyPoint( _Inout_ POINT* pPT );
//		  void ModifyPointByRef( _Inout_ POINT& pPT );
#   define uX_InOut													_Inout_												 /* an input/output modifiable ( type ) and ( Name ) */
#   define uX_InOutopt												_Inout_opt_											 /* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */

#   define uX_InOutM2												_Inout_														 /* an input/output modifiable ( type ) and ( Name ) */
#   define uX_InOutM3												_Inout_												 /* an input/output modifiable ( type ) and ( Name ) */
#   define uX_InOutM4												_Inout_											 /* an input/output modifiable ( type ) and ( Name ) */

#   define uX_InOutoptM2											_Inout_opt_													 /* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#   define uX_InOutoptM3											_Inout_opt_											 /* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#   define uX_InOutoptM4											_Inout_opt_										 /* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */

// For modifying string buffers
//   void toupper( _Inout_z_ char* sz );
#   define uX_InOutZ												_Inout_z_											   /* an input/output modifiable ( type ) and ( Name ) null-terminated 'in' parameters */
#   define uX_InOutoptZ												_Inout_opt_z_										   /* an input/output modifiable ( type ) and ( Name ) null-terminated 'in' parameters and optional Null parameter */

// For modifying buffers with uXplicit element length
#   define uX_InOutUp(length)										_Inout_updates_(length)								 /* an input/output modifiable array ( type ) and ( Name ) with given ( length ) */
#   define uX_InOutUpOpt(length)									_Inout_updates_opt_(length)							 /* an input/output modifiable array ( type ) and ( Name ) with given ( length ) and optional Null parameter */
#   define uX_InOutUpZ(length)										_Inout_updates_z_(length)								   /* an input/output modifiable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters */
#   define uX_InOutUpOptZ(length)									_Inout_updates_opt_z_(length)							   /* an input/output modifiable array ( type ) and ( Name ) with given ( length ) null-terminated 'in' parameters and optional Null parameter */
#   define uX_InOutUpTo(length,count)								_Inout_updates_to_(length,count)					/* an input/output modifiable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters */
#   define uX_InOutUpToOpt(length,count)							_Inout_updates_to_opt_(length,count)				/* an input/output modifiable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters and optional Null parameter */
#   define uX_InOutUpAll(length)									_Inout_updates_all_(length)							 /* an input/output modifiable array ( type ) and ( Name ) with given ( length ) */
#   define uX_InOutUpAllOpt(length)									_Inout_updates_all_opt_(length)						 /* an input/output modifiable array ( type ) and ( Name ) with given ( length ) and optional Null parameter */

// For modifying buffers with uXplicit byte length
#   define uX_InOutUpBytes(length)									_Inout_updates_bytes_(length)							   /* an input/output modifiable array ( type ) and ( Name ) with given ( length ) described by another parameter */
#   define uX_InOutUpBytesOpt(length)								_Inout_updates_bytes_opt_(length)						   /* an input/output modifiable array ( type ) and ( Name ) with given ( length ) described by another parameter and optional Null parameter */
#   define uX_InOutUpBytesTo(length,count)							_Inout_updates_bytes_to_(length,count)		  /* an input/output modifiable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters */
#   define uX_InOutUpBytesToOpt(length,count)						_Inout_updates_bytes_to_opt_(length,count)	  /* an input/output modifiable array ( type ) and ( Name ) with given ( [length] ) and element count described by anothers parameters and optional Null parameter */
#   define uX_InOutUpBytesAll(length)								_Inout_updates_bytes_all_(length)						   /* an input/output modifiable array ( type ) and ( Name ) with given ( length ) described by another parameter */
#   define uX_InOutUpBytesAllOpt(length)							_Inout_updates_bytes_all_opt_(length)					   /* an input/output modifiable array ( type ) and ( Name ) with given ( length ) described by another parameter and optional Null parameter */

// Pointer to pointer parameters -------------------------

//   _Outptr_ - Annotations for output params returning pointers
//	  These describe parameters where the called function provides the buffer:
//		HResult SHStrDupW(_In_ LPCWSTR psz, _Outptr_ LPWSTR *ppwsz);
//	  The caller passes the address of an LPWSTR variable as ppwsz, and SHStrDupW allocates
//	  and initializes memory and returns the pointer to the new LPWSTR in *ppwsz.
//
//	_Outptr_opt_ - describes parameters that are allowed to be Null.
//	_Outptr_*_result_maybenull_ - describes parameters where the called function might return Null to the caller.
//
//	uXample:
//	   void MyFunc(_Outptr_opt_ int **ppData1, _Outptr_result_maybenull_ int **ppData2);
//	Callers:
//	   MyFunc(Null, Null);		   // error: parameter 2, ppData2, should not be Null
//	   MyFunc(&pData1, &pData2);	 // ok: both non-Null
//	   if (*pData1 == *pData2) ...   // error: pData2 might be Null after call
#   define uX_OutPtr												_Outptr_														/* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#   define uX_OutPtrResultMaybeNull									_Outptr_result_maybenull_									   /* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#   define uX_OutPtrOpt												_Outptr_opt_													/* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#   define uX_OutPtrOPtrResultMaybeNull								_Outptr_opt_result_maybenull_								   /* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */

// Annotations for _Outptr_ parameters returning pointers to null terminated strings.
#   define uX_OutPtrResultZ											_Outptr_result_z_											   /* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters */
#   define uX_OutPtrOPtrResultZ										_Outptr_opt_result_z_										   /* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters and optional Null parameter */
#   define uX_OutPtrResultMaybeNullZ								_Outptr_result_maybenull_z_									 /* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters where the called function might return Null */
#   define uX_OutPtrOPtrResultMaybeNullZ							_Outptr_opt_result_maybenull_z_								 /* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters where the called function might return Null and optional Null parameter  */

// Annotations for _Outptr_ parameters where the output pointer is set to Null if the function fails.
#   define uX_OutPtrResultNullONFAIL								_Outptr_result_nullonfailure_								   /* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters */
#   define uX_OutPtrOPtrResultNullONFAIL							_Outptr_opt_result_nullonfailure_							   /* an output modifiable ( type ) and ( Name ) for output params returning pointers null-terminated 'in' parameters and optional Null parameter */

// Annotations for _Outptr_ parameters which return a pointer to a ref-counted COM object,
// following the COM convention of setting the output to Null on failure.
// The current implementation is identical to _Outptr_result_nullonfailure_.
// For pointers to types that are not COM objects, _Outptr_result_nullonfailure_ is preferred.
#   define uX_COMOutPtr												_COM_Outptr_													/* an output modifiable ( type ) and ( Name ) for output COM params returning pointers */
#   define uX_COMOutPtrResultMaybeNull								_COM_Outptr_result_maybenull_								   /* an output modifiable ( type ) and ( Name ) for output COM params returning pointers where the called function might return Null */
#   define uX_COMOutPtrOpt											_COM_Outptr_opt_												/* an output modifiable ( type ) and ( Name ) for output COM params returning pointers and optional Null parameter */
#   define uX_COMOutPtrOPtrResultMaybeNull							_COM_Outptr_opt_result_maybenull_							   /* an output modifiable ( type ) and ( Name ) for output COM params returning pointers where the called function might return Null and optional Null parameter  */

// Annotations for _Outptr_ parameters returning a pointer to buffer with a specified number of elements/bytes
#   define uX_OutPtrResultBuffer(length)							_Outptr_result_buffer_(length)								  /* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#   define uX_OutPtrOPtrResultBuffer(length)						_Outptr_opt_result_buffer_(length)							  /* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#   define uX_OutPtrResultBufferTo(length,count)					_Outptr_result_buffer_to_(length,count)				 /* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#   define uX_OutPtrOPtrResultBufferTo(length,count)				_Outptr_opt_result_buffer_to_(length,count)				 /* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#   define uX_OutPtrResultBufferAll(length)							_Outptr_result_buffer_all_(length)							  /* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#   define uX_OutPtrOPtrResultBufferAll(length)						_Outptr_opt_result_buffer_all_(length)						  /* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#   define uX_OutPtrResultBufferMaybeNull(length)					_Outptr_result_buffer_maybenull_(length)							/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#   define uX_OutPtrOPtrResultBufferMaybeNull(length)				_Outptr_opt_result_buffer_maybenull_(length)						/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */
#   define uX_OutPtrResultBufferToMaybeNull(length,count)			_Outptr_result_buffer_to_maybenull_(length,count)		   /* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#   define uX_OutPtrOPtrResultBufferToMaybeNull(length,count)		_Outptr_opt_result_buffer_to_maybenull_(length,count)	   /* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */
#   define uX_OutPtrResultBufferAllMaybeNull(length)				_Outptr_result_buffer_all_maybenull_(length)						/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#   define uX_OutPtrOPtrResultBufferAllMaybeNull(length)			_Outptr_opt_result_buffer_all_maybenull_(length)					/* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */

#   define uX_OutPtrResultByteBuffer(length)						_Outptr_result_bytebuffer_(length)								 /* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#   define uX_OutPtrOPtrResultByteBuffer(length)					_Outptr_opt_result_bytebuffer_(length)								 /* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#   define uX_OutPtrResultByteBufferTo(length,count)				_Outptr_result_bytebuffer_to_(length,count)					/* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#   define uX_OutPtrOPtrResultByteBufferTo(length,count)			_Outptr_opt_result_bytebuffer_to_(length,count)				/* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#   define uX_OutPtrResultByteBufferAll(length)						_Outptr_result_bytebuffer_all_(length)							 /* an output modifiable ( type ) and ( Name ) for output params returning pointers */
#   define uX_OutPtrOPtrResultByteBufferAll(length)					_Outptr_opt_result_bytebuffer_all_(length)							 /* an output modifiable ( type ) and ( Name ) for output params returning pointers and optional Null parameter */
#   define uX_OutPtrResultByteBufferMaybeNull(length)				_Outptr_result_bytebuffer_maybenull_(length)						   /* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#   define uX_OutPtrOPtrResultByteBufferMaybeNull(length)			_Outptr_opt_result_bytebuffer_maybenull_(length)					   /* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */
#   define uX_OutPtrResultByteBufferToMaybeNull(length,count)		_Outptr_result_bytebuffer_to_maybenull_(length,count)		  /* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#   define uX_OutPtrOPtrResultByteBufferToMaybeNull(length,count)	_Outptr_opt_result_bytebuffer_to_maybenull_(length,count)	 /* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */
#   define uX_OutPtrResultByteBufferAllMaybeNull(length)			_Outptr_result_bytebuffer_all_maybenull_(length)					   /* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null */
#   define uX_OutPtrOPtrResultByteBufferAllMaybeNull(length)		_Outptr_opt_result_bytebuffer_all_maybenull_(length)				   /* an output modifiable ( type ) and ( Name ) for output params returning pointers where the called function might return Null and optional Null parameter  */

// Annotations for output reference to pointer parameters.
#   define uX_OutRef												_Outref_																/* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultMaybeNull									_Outref_result_maybenull_											   /* an output modifiable ( type ) and ( Name ) for output params returning references where the called function might return Null */

#   define uX_OutRefResultBuffer(length)							_Outref_result_buffer_(length)										  /* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultByteBuffer(length)						_Outref_result_bytebuffer_(length)									  /* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultBufferTo(length,count)					_Outref_result_buffer_to_(length,count)						 /* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultByteBufferTo(length,count)				_Outref_result_bytebuffer_to_(length,count)					 /* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultBufferAll(length)							_Outref_result_buffer_all_(length)									  /* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultByteBufferAll(length)						_Outref_result_bytebuffer_all_(length)								  /* an output modifiable ( type ) and ( Name ) for output params returning references */

#   define uX_OutRefResultBufferMaybeNull(length)					_Outref_result_buffer_maybenull_(length)								/* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultByteBufferMaybeNull(length)				_Outref_result_bytebuffer_maybenull_(length)							/* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultBufferToMaybeNull(length,count)			_Outref_result_buffer_to_maybenull_(length,count)			   /* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultBYEBufferToMaybeNull(length,count)		_Outref_result_bytebuffer_to_maybenull_(length,count)		   /* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultBufferAllMaybeNull(length)				_Outref_result_buffer_all_maybenull_(length)							/* an output modifiable ( type ) and ( Name ) for output params returning references */
#   define uX_OutRefResultByteBufferAllMaybeNull(length)			_Outref_result_bytebuffer_all_maybenull_(length)						/* an output modifiable ( type ) and ( Name ) for output params returning references */

// Annotations for output reference to pointer parameters that guarantee
// that the pointer is set to Null on failure.
#   define uX_OutRefResultNullONFAIL								_Outref_result_nullonfailure_										   /* an output modifiable ( type ) and ( Name ) for output params returning references */

# else

#   define uX_Use_decl_annotations

#   define uX_Analyzis(axp)

// Check the return value of a function e.g. _Check_return_ ErrorCode Foo();
#   define uX_CheckReturn
#   define uX_MustInspectResult

// annotations to uXpress value of integral or pointer parameter
#   define uX_InRange(lb,ub)
#   define uX_OutRange(lb,ub)
#   define uX_RetRange(lb,ub)
#   define uX_DerefINRange  (lb,ub)
#   define uX_DerefOutRange(lb,ub)
#   define uX_DerefRetRange(lb,ub)
#   define uX_PreEqualTo(uXpr)
#   define uX_PostEqualTo(uXpr)

#   define uX_In
#   define uX_InOpt

#   define uX_InZ
#   define uX_InOptZ

#   define uX_InReads(length)
#   define uX_InReadsOpt(length)
#   define uX_InReadsBytes(length)
#   define uX_InReadsBytesOpt(length)
#   define uX_InReadsZ(length)
#   define uX_InReadsOptZ(length)
#   define uX_InReadsOrZ(length)
#   define uX_InReadsOrZOpt(length)

#   define uX_InReadsTo(length,count)											   /* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters */
#   define uX_InReadsToOpt(length,count)											/* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters and optional Null parameter */

#   define uX_InReadsToPtr(ptr)
#   define uX_InReadsToPtrOpt(ptr)
#   define uX_InReadsToPtrZ(ptr)
#   define uX_InReadsToPtrOptZ(ptr)

#   define uX_Out
#   define uX_Outopt

#   define uX_OutWrites(length)
#   define uX_OutWritesOpt(length)
#   define uX_OutWritesBytes(length)
#   define uX_OutWritesBytesOpt(length)
#   define uX_OutWritesZ(length)
#   define uX_OutWritesOptZ(length)
#   define uX_OutWritesTo(length,count)
#   define uX_OutWritesToOpt(length,count)
#   define uX_OutWritesAll(length)
#   define uX_OutWritesAllOpt(length)
#   define uX_OutWritesBytesTo(length,count)
#   define uX_OutWritesBytesToOpt(length,count)
#   define uX_OutWritesBytesAll(length)
#   define uX_OutWritesBytesAllOpt(length)

#   define uX_OutWritesToPtr(ptr)
#   define uX_OutWritesToPtrOpt(ptr)
#   define uX_OutWritesToPtrZ(ptr)
#   define uX_OutWritesToPtrOptZ(ptr)

#   define uX_InOut
#   define uX_InOutopt

#   define uX_InOutM2																   /* an input/output modifiable ( type ) and ( Name ) */
#   define uX_InOutM3													   /* an input/output modifiable ( type ) and ( Name ) */
#   define uX_InOutM4										   /* an input/output modifiable ( type ) and ( Name ) */

#   define uX_InOutoptM2																	/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#   define uX_InOutoptM3													/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#   define uX_InOutoptM4											/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */

#   define uX_InOutZ
#   define uX_InOutoptZ

#   define uX_InOutUp(length)
#   define uX_InOutUpOpt(length)
#   define uX_InOutUpZ(length)
#   define uX_InOutUpOptZ(length)
#   define uX_InOutUpTo(length,count)
#   define uX_InOutUpToOpt(length,count)
#   define uX_InOutUpAll(length)
#   define uX_InOutUpAllOpt(length)

#   define uX_InOutUpBytes(length)
#   define uX_InOutUpBytesOpt(length)
#   define uX_InOutUpBytesTo(length,count)
#   define uX_InOutUpBytesToOpt(length,count)
#   define uX_InOutUpBytesAll(length)
#   define uX_InOutUpBytesAllOpt(length)

#   define uX_OutPtr
#   define uX_OutPtrResultMaybeNull
#   define uX_OutPtrOpt
#   define uX_OutPtrOPtrResultMaybeNull

#   define uX_OutPtrResultZ
#   define uX_OutPtrOPtrResultZ
#   define uX_OutPtrResultMaybeNullZ
#   define uX_OutPtrOPtrResultMaybeNullZ

#   define uX_OutPtrResultNullONFAIL
#   define uX_OutPtrOPtrResultNullONFAIL

#   define uX_COMOutPtr
#   define uX_COMOutPtrResultMaybeNull
#   define uX_COMOutPtrOpt
#   define uX_COMOutPtrOPtrResultMaybeNull

#   define uX_OutPtrResultBuffer(length)
#   define uX_OutPtrOPtrResultBuffer(length)
#   define uX_OutPtrResultBufferTo(length,count)
#   define uX_OutPtrOPtrResultBufferTo(length,count)
#   define uX_OutPtrResultBufferAll(length)
#   define uX_OutPtrOPtrResultBufferAll(length)
#   define uX_OutPtrResultBufferMaybeNull(length)
#   define uX_OutPtrOPtrResultBufferMaybeNull(length)
#   define uX_OutPtrResultBufferToMaybeNull(length,count)
#   define uX_OutPtrOPtrResultBufferToMaybeNull(length,count)
#   define uX_OutPtrResultBufferAllMaybeNull(length)
#   define uX_OutPtrOPtrResultBufferAllMaybeNull(length)

#   define uX_OutPtrResultByteBuffer(length)
#   define uX_OutPtrOPtrResultByteBuffer(length)
#   define uX_OutPtrResultByteBufferTo(length,count)
#   define uX_OutPtrOPtrResultByteBufferTo(length,count)
#   define uX_OutPtrResultByteBufferAll(length)
#   define uX_OutPtrOPtrResultByteBufferAll(length)
#   define uX_OutPtrResultByteBufferMaybeNull(length)
#   define uX_OutPtrOPtrResultByteBufferMaybeNull(length)
#   define uX_OutPtrResultByteBufferToMaybeNull(length,count)
#   define uX_OutPtrOPtrResultByteBufferToMaybeNull(length,count)
#   define uX_OutPtrResultByteBufferAllMaybeNull(length)
#   define uX_OutPtrOPtrResultByteBufferAllMaybeNull(length)

#   define uX_OutRef
#   define uX_OutRefResultMaybeNull

#   define uX_OutRefResultBuffer(length)
#   define uX_OutRefResultByteBuffer(length)
#   define uX_OutRefResultBufferTo(length,count)
#   define uX_OutRefResultByteBufferTo(length,count)
#   define uX_OutRefResultBufferAll(length)
#   define uX_OutRefResultByteBufferAll(length)

#   define uX_OutRefResultBufferMaybeNull(length)
#   define uX_OutRefResultByteBufferMaybeNull(length)
#   define uX_OutRefResultBufferToMaybeNull(length,count)
#   define uX_OutRefResultBYEBufferToMaybeNull(length,count)
#   define uX_OutRefResultBufferAllMaybeNull(length)
#   define uX_OutRefResultByteBufferAllMaybeNull(length)

#   define uX_OutRefResultNullONFAIL

#  endif
#else

#   define uX_Use_decl_annotations	  _Use_decl_annotations_

#   define uX_Analyzis(axp)

// Check the return value of a function e.g. _Check_return_ ErrorCode Foo();
#   define uX_CheckReturn
#   define uX_MustInspectResult

// annotations to uXpress value of integral or pointer parameter
#   define uX_InRange(lb,ub)
#   define uX_OutRange(lb,ub)
#   define uX_RetRange(lb,ub)
#   define uX_DerefINRange  (lb,ub)
#   define uX_DerefOutRange(lb,ub)
#   define uX_DerefRetRange(lb,ub)
#   define uX_PreEqualTo(uXpr)
#   define uX_PostEqualTo(uXpr)

#   define uX_In
#   define uX_InOpt

#   define uX_InZ
#   define uX_InOptZ

#   define uX_InReads(length)
#   define uX_InReadsOpt(length)
#   define uX_InReadsBytes(length)
#   define uX_InReadsBytesOpt(length)
#   define uX_InReadsZ(length)
#   define uX_InReadsOptZ(length)
#   define uX_InReadsOrZ(length)
#   define uX_InReadsOrZOpt(length)

#   define uX_InReadsTo(length,count)											   /* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters */
#   define uX_InReadsToOpt(length,count)											/* an input array ( type ) and ( Name ) with given ( [length] ) and element count described by another parameters and optional Null parameter */

#   define uX_InReadsToPtr(ptr)
#   define uX_InReadsToPtrOpt(ptr)
#   define uX_InReadsToPtrZ(ptr)
#   define uX_InReadsToPtrOptZ(ptr)

#   define uX_Out
#   define uX_Outopt

#   define uX_OutWrites(length)
#   define uX_OutWritesOpt(length)
#   define uX_OutWritesBytes(length)
#   define uX_OutWritesBytesOpt(length)
#   define uX_OutWritesZ(length)
#   define uX_OutWritesOptZ(length)
#   define uX_OutWritesTo(length,count)
#   define uX_OutWritesToOpt(length,count)
#   define uX_OutWritesAll(length)
#   define uX_OutWritesAllOpt(length)
#   define uX_OutWritesBytesTo(length,count)
#   define uX_OutWritesBytesToOpt(length,count)
#   define uX_OutWritesBytesAll(length)
#   define uX_OutWritesBytesAllOpt(length)

#   define uX_OutWritesToPtr(ptr)
#   define uX_OutWritesToPtrOpt(ptr)
#   define uX_OutWritesToPtrZ(ptr)
#   define uX_OutWritesToPtrOptZ(ptr)

#   define uX_InOut
#   define uX_InOutopt

#   define uX_InOutM2																   /* an input/output modifiable ( type ) and ( Name ) */
#   define uX_InOutM3													   /* an input/output modifiable ( type ) and ( Name ) */
#   define uX_InOutM4										   /* an input/output modifiable ( type ) and ( Name ) */

#   define uX_InOutoptM2																	/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#   define uX_InOutoptM3													/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */
#   define uX_InOutoptM4											/* an input/output modifiable ( type ) and ( Name ) and optional Null parameter */

#   define uX_InOutZ
#   define uX_InOutoptZ

#   define uX_InOutUp(length)
#   define uX_InOutUpOpt(length)
#   define uX_InOutUpZ(length)
#   define uX_InOutUpOptZ(length)
#   define uX_InOutUpTo(length,count)
#   define uX_InOutUpToOpt(length,count)
#   define uX_InOutUpAll(length)
#   define uX_InOutUpAllOpt(length)

#   define uX_InOutUpBytes(length)
#   define uX_InOutUpBytesOpt(length)
#   define uX_InOutUpBytesTo(length,count)
#   define uX_InOutUpBytesToOpt(length,count)
#   define uX_InOutUpBytesAll(length)
#   define uX_InOutUpBytesAllOpt(length)

#   define uX_OutPtr
#   define uX_OutPtrResultMaybeNull
#   define uX_OutPtrOpt
#   define uX_OutPtrOPtrResultMaybeNull

#   define uX_OutPtrResultZ
#   define uX_OutPtrOPtrResultZ
#   define uX_OutPtrResultMaybeNullZ
#   define uX_OutPtrOPtrResultMaybeNullZ

#   define uX_OutPtrResultNullONFAIL
#   define uX_OutPtrOPtrResultNullONFAIL

#   define uX_COMOutPtr
#   define uX_COMOutPtrResultMaybeNull
#   define uX_COMOutPtrOpt
#   define uX_COMOutPtrOPtrResultMaybeNull

#   define uX_OutPtrResultBuffer(length)
#   define uX_OutPtrOPtrResultBuffer(length)
#   define uX_OutPtrResultBufferTo(length,count)
#   define uX_OutPtrOPtrResultBufferTo(length,count)
#   define uX_OutPtrResultBufferAll(length)
#   define uX_OutPtrOPtrResultBufferAll(length)
#   define uX_OutPtrResultBufferMaybeNull(length)
#   define uX_OutPtrOPtrResultBufferMaybeNull(length)
#   define uX_OutPtrResultBufferToMaybeNull(length,count)
#   define uX_OutPtrOPtrResultBufferToMaybeNull(length,count)
#   define uX_OutPtrResultBufferAllMaybeNull(length)
#   define uX_OutPtrOPtrResultBufferAllMaybeNull(length)

#   define uX_OutPtrResultByteBuffer(length)
#   define uX_OutPtrOPtrResultByteBuffer(length)
#   define uX_OutPtrResultByteBufferTo(length,count)
#   define uX_OutPtrOPtrResultByteBufferTo(length,count)
#   define uX_OutPtrResultByteBufferAll(length)
#   define uX_OutPtrOPtrResultByteBufferAll(length)
#   define uX_OutPtrResultByteBufferMaybeNull(length)
#   define uX_OutPtrOPtrResultByteBufferMaybeNull(length)
#   define uX_OutPtrResultByteBufferToMaybeNull(length,count)
#   define uX_OutPtrOPtrResultByteBufferToMaybeNull(length,count)
#   define uX_OutPtrResultByteBufferAllMaybeNull(length)
#   define uX_OutPtrOPtrResultByteBufferAllMaybeNull(length)

#   define uX_OutRef
#   define uX_OutRefResultMaybeNull

#   define uX_OutRefResultBuffer(length)
#   define uX_OutRefResultByteBuffer(length)
#   define uX_OutRefResultBufferTo(length,count)
#   define uX_OutRefResultByteBufferTo(length,count)
#   define uX_OutRefResultBufferAll(length)
#   define uX_OutRefResultByteBufferAll(length)

#   define uX_OutRefResultBufferMaybeNull(length)
#   define uX_OutRefResultByteBufferMaybeNull(length)
#   define uX_OutRefResultBufferToMaybeNull(length,count)
#   define uX_OutRefResultBYEBufferToMaybeNull(length,count)
#   define uX_OutRefResultBufferAllMaybeNull(length)
#   define uX_OutRefResultByteBufferAllMaybeNull(length)

#   define uX_OutRefResultNullONFAIL

#endif

#endif  /*uX_SAL_PROCESS_H*/
