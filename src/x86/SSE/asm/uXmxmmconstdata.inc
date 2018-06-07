

ifndef __MIC__

	.const
	
	;;float;;

	__align 16
	externdef __m128_true:__m128f
	
	__align 16
	externdef __m128_false:__m128f

	__align 16
	externdef __m128_0:__m128f
	
	__align 16
	externdef __m128_1:__m128f

	__align 16
	externdef __m128_neg0:__m128f
	
	__align 16
	externdef __m128_neg1:__m128f


	;;double;;
	
	__align 16
	externdef __m128d_true:__m128d
	
	__align 16
	externdef __m128d_false:__m128d

	__align 16
	externdef __m128d_0:__m128d
	
	__align 16
	externdef __m128d_1:__m128d

	__align 16
	externdef __m128d_neg0:__m128d
	
	__align 16
	externdef __m128d_neg1:__m128d


endif ;__MIC__
