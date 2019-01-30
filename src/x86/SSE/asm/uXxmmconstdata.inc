

ifndef __MIC__

	.data?

	.data

	alignxmmfieldproc
	callconvopt

	.const
	
	;;f32 mask;;
	

	;;f64 mask;;
	

	;;int64;;
	
	externdef __m128i_i64_true:__m128q
	
	externdef __m128i_i64_false:__m128q


	;;int32;;
	
	externdef __m128i_i32_true:__m128i
	
	externdef __m128i_i32_false:__m128i


	;;int16;;
	
	externdef __m128i_i16_true:__m128w
	
	externdef __m128i_i16_false:__m128w


	;;int8;;
	
	externdef __m128i_i8_true:__m128b
	
	externdef __m128i_i8_false:__m128b


	;;float;;

	externdef __m128_true:__m128f
	
	externdef __m128_false:__m128f

	externdef __m128_0:__m128f
	
	externdef __m128_1:__m128f

	externdef __m128_neg0:__m128f
	
	externdef __m128_neg1:__m128f


	;;double;;
	
	externdef __m128d_true:__m128d
	
	externdef __m128d_false:__m128d

	externdef __m128d_0:__m128d
	
	externdef __m128d_1:__m128d

	externdef __m128d_neg0:__m128d
	
	externdef __m128d_neg1:__m128d
	
	;;double low;;
	
	externdef __m128d_strue:__m128d
	
	externdef __m128d_sfalse:__m128d

	externdef __m128d_s0:__m128d
	
	externdef __m128d_s1:__m128d

	externdef __m128d_sneg0:__m128d
	
	externdef __m128d_sneg1:__m128d
	

endif ;__MIC__
