

ifndef __MIC__

	.const
	
	__align 16
	externdef __m128_false:xmmword

	__align 16
	externdef __m128_true:xmmword
	
	__align 16
	externdef __m128_f32_0:xmmword
	
	__align 16
	externdef __m128_f32_1:xmmword

	__align 16
	externdef __m128_f32_neg0:xmmword
	
	__align 16
	externdef __m128_f32_neg1:xmmword

endif ;__MIC__
