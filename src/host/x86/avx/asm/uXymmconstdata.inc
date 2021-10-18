

ifndef __MIC__

	.const
	
	;;f32 mask;;
	

	;;f64 mask;;
	

	;;int64;;
	
	uXalign 32
	externdef __m256i_i64_true:__m256q
	
	uXalign 32
	externdef __m256i_i64_false:__m256q


	;;int32;;
	
	uXalign 32
	externdef __m256i_i32_true:__m256i
	
	uXalign 32
	externdef __m256i_i32_false:__m256i


	;;int16;;
	
	uXalign 32
	externdef __m256i_i16_true:__m256w
	
	uXalign 32
	externdef __m256i_i16_false:__m256w


	;;int8;;
	
	uXalign 32
	externdef __m256i_i8_true:__m256b
	
	uXalign 32
	externdef __m256i_i8_false:__m256b


	;;float;;

	uXalign 32
	externdef __m256_true:__m256f
	
	uXalign 32
	externdef __m256_false:__m256f

	uXalign 32
	externdef __m256_0:__m256f
	
	uXalign 32
	externdef __m256_1:__m256f

	uXalign 32
	externdef __m256_neg0:__m256f
	
	uXalign 32
	externdef __m256_neg1:__m256f
	

	;;float low;;
	
	uXalign 32
	externdef __m256_strue:__m256
	
	uXalign 32
	externdef __m256_sfalse:__m256

	uXalign 32
	externdef __m256_s0:__m256
	
	uXalign 32
	externdef __m256_s1:__m256

	uXalign 32
	externdef __m256_sneg0:__m256
	
	uXalign 32
	externdef __m256_sneg1:__m256


	;;double;;
	
	uXalign 32
	externdef __m256d_true:__m256d
	
	uXalign 32
	externdef __m256d_false:__m256d

	uXalign 32
	externdef __m256d_0:__m256d
	
	uXalign 32
	externdef __m256d_1:__m256d

	uXalign 32
	externdef __m256d_neg0:__m256d
	
	uXalign 32
	externdef __m256d_neg1:__m256d
	

	;;double low;;
	
	uXalign 32
	externdef __m256d_strue:__m256d
	
	uXalign 32
	externdef __m256d_sfalse:__m256d

	uXalign 32
	externdef __m256d_s0:__m256d
	
	uXalign 32
	externdef __m256d_s1:__m256d

	uXalign 32
	externdef __m256d_sneg0:__m256d
	
	uXalign 32
	externdef __m256d_sneg1:__m256d

	

endif ;__MIC__
