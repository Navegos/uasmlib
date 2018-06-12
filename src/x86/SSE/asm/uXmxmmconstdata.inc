

ifndef __MIC__

	.const
	
	;;f32 mask;;
	

	;;f64 mask;;
	

	;;int64;;
	
	__align 16
	externdef __m128i_i64_true:__m128q
	
	__align 16
	externdef __m128i_i64_false:__m128q


	;;int32;;
	
	__align 16
	externdef __m128i_i32_true:__m128i
	
	__align 16
	externdef __m128i_i32_false:__m128i


	;;int16;;
	
	__align 16
	externdef __m128i_i16_true:__m128w
	
	__align 16
	externdef __m128i_i16_false:__m128w


	;;int8;;
	
	__align 16
	externdef __m128i_i8_true:__m128b
	
	__align 16
	externdef __m128i_i8_false:__m128b


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
