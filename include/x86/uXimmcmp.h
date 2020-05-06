
#pragma once

#ifndef uX_IMM_CMP_H
#define uX_IMM_CMP_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_AVX

#ifndef uX_IMM_INTRIN_H
#error "!This header cannot be used alone! INCLUDE uXsmmintrin.h to use this header"
#endif

uX_EXTERNC_BEGIN
uX_PACK_PUSH16

/*
 * legacy FP, compare
 */

	extern __m128 uX_callconv _uX_mm_cmpeqoq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpltos_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpleos_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpunordq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnequq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnltus_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnleus_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpordq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpequq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpngeus_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpngtus_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpfalseoq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpneqoq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpgeos_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpgtos_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmptrueuq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpeqos_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpltoq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpleoq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpunords_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnequs_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnltuq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnleuq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpords_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpequs_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpngeuq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpngtuq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpfalseos_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpneqos_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpgeoq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpgtoq_ps(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmptrueus_ps(__m128 Inxmm_A, __m128 Inxmm_B);

	extern __m128 uX_callconv _uX_mm_cmpeqoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpltos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpleos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpunordq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnequq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnltus_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnleus_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpordq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpequq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpngeus_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpngtus_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpfalseoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpneqoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpgeos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpgtos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmptrueuq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpeqos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpltoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpleoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpunords_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnequs_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnltuq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpnleuq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpords_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpequs_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpngeuq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpngtuq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpfalseos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpneqos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpgeoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmpgtoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern __m128 uX_callconv _uX_mm_cmptrueus_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	
/*
 * legacy FP, compare return int
 */

	extern int uX_callconv _uX_mm_comieqoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comiltos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comileos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comiunordq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_cominequq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_cominltus_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_cominleus_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comiordq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comiequq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comingeus_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comingtus_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comifalseoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comineqoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comigeos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comigtos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comitrueuq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comieqos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comiltoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comileoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comiunords_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_cominequs_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_cominltuq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_cominleuq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comiords_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comiequs_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comingeuq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comingtuq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comifalseos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comineqos_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comigeoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comigtoq_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	extern int uX_callconv _uX_mm_comitrueus_ss(__m128 Inxmm_A, __m128 Inxmm_B);
	
/*
 * legacy DP, compare
 */

	extern __m128d uX_callconv _uX_mm_cmpeqoq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpltos_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpleos_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpunordq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnequq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnltus_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnleus_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpordq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpequq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpngeus_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpngtus_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpfalseoq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpneqoq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpgeos_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpgtos_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmptrueuq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpeqos_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpltoq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpleoq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpunords_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnequs_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnltuq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnleuq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpords_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpequs_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpngeuq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpngtuq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpfalseos_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpneqos_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpgeoq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpgtoq_pd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmptrueus_pd(__m128d Inxmm_A, __m128d Inxmm_B);

	extern __m128d uX_callconv _uX_mm_cmpeqoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpltos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpleos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpunordq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnequq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnltus_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnleus_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpordq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpequq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpngeus_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpngtus_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpfalseoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpneqoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpgeos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpgtos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmptrueuq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpeqos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpltoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpleoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpunords_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnequs_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnltuq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpnleuq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpords_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpequs_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpngeuq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpngtuq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpfalseos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpneqos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpgeoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmpgtoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern __m128d uX_callconv _uX_mm_cmptrueus_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	
/*
 * legacy DP, compare return int
 */

	extern int uX_callconv _uX_mm_comieqoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comiltos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comileos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comiunordq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_cominequq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_cominltus_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_cominleus_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comiordq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comiequq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comingeus_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comingtus_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comifalseoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comineqoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comigeos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comigtos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comitrueuq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comieqos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comiltoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comileoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comiunords_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_cominequs_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_cominltuq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_cominleuq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comiords_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comiequs_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comingeuq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comingtuq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comifalseos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comineqos_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comigeoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comigtoq_sd(__m128d Inxmm_A, __m128d Inxmm_B);
	extern int uX_callconv _uX_mm_comitrueus_sd(__m128d Inxmm_A, __m128d Inxmm_B);

uX_PACK_POP
uX_PACK_PUSH32

/*
 * FP, compare
 */

	extern __m256 uX_callconv _uX_mm256_cmpeqoq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpltos_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpleos_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpunordq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpnequq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpnltus_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpnleus_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpordq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpequq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpngeus_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpngtus_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpfalseoq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpneqoq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpgeos_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpgtos_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmptrueuq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpeqos_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpltoq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpleoq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpunords_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpnequs_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpnltuq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpnleuq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpords_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpequs_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpngeuq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpngtuq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpfalseos_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpneqos_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpgeoq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmpgtoq_ps(__m256 Inxmm_A, __m256 Inxmm_B);
	extern __m256 uX_callconv _uX_mm256_cmptrueus_ps(__m256 Inxmm_A, __m256 Inxmm_B);

/*
 * DP, compare
 */

	extern __m256d uX_callconv _uX_mm256_cmpeqoq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpltos_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpleos_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpunordq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpnequq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpnltus_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpnleus_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpordq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpequq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpngeus_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpngtus_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpfalseoq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpneqoq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpgeos_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpgtos_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmptrueuq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpeqos_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpltoq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpleoq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpunords_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpnequs_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpnltuq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpnleuq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpords_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpequs_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpngeuq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpngtuq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpfalseos_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpneqos_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpgeoq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmpgtoq_pd(__m256d Inxmm_A, __m256d Inxmm_B);
	extern __m256d uX_callconv _uX_mm256_cmptrueus_pd(__m256d Inxmm_A, __m256d Inxmm_B);

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_AVX

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_IMM_CMP_H
