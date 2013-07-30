#include <bindings.dsl.h>
#include <gsl/gsl_math.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Mathematical-Functions.html>

module Bindings.Gsl.MathematicalFunctions where
#strict_import

#fractional M_E
#fractional M_LOG2E
#fractional M_LOG10E
#fractional M_SQRT2
#fractional M_SQRT1_2
#fractional M_SQRT3
#fractional M_PI
#fractional M_PI_2
#fractional M_PI_4
#fractional M_SQRTPI
#fractional M_2_SQRTPI
#fractional M_1_PI
#fractional M_2_PI
#fractional M_LN10
#fractional M_LN2
#fractional M_LNPI
#fractional M_EULER

#starttype gsl_function
#field function , FunPtr (CDouble -> Ptr () -> IO CDouble)
#field params , Ptr ()
#stoptype

#cinline GSL_FN_EVAL , Ptr <gsl_function> -> CDouble -> IO CDouble

#starttype gsl_function_fdf
#field f , FunPtr (CDouble -> Ptr () -> IO CDouble)
#field df , FunPtr (CDouble -> Ptr () -> IO CDouble)
#field fdf , FunPtr (CDouble -> Ptr () -> Ptr CDouble -> Ptr CDouble -> IO ())
#field params , Ptr ()
#stoptype

#cinline GSL_FN_FDF_EVAL_F , Ptr <gsl_function_fdf> -> CDouble -> IO CDouble
#cinline GSL_FN_FDF_EVAL_DF , Ptr <gsl_function_fdf> -> CDouble -> IO CDouble
#cinline GSL_FN_FDF_EVAL_F_DF , Ptr <gsl_function_fdf> -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

#starttype gsl_function_vec
#field function , FunPtr (CDouble -> Ptr CDouble -> Ptr () -> IO CInt)
#field params , Ptr ()
#stoptype

#cinline GSL_FN_VEC_EVAL , Ptr <gsl_function_vec> -> CDouble -> Ptr CDouble -> IO CDouble

#ccall gsl_max , CDouble -> CDouble -> IO CDouble
#ccall gsl_min , CDouble -> CDouble -> IO CDouble
#ccall GSL_MAX_INT , CInt -> CInt -> CInt -> IO CInt
#ccall GSL_MIN_INT , CInt -> CInt -> CInt -> IO CInt
#ccall GSL_MAX_DBL , CDouble -> CDouble -> IO CDouble
#ccall GSL_MIN_DBL , CDouble -> CDouble -> IO CDouble
-- #ccall GSL_MAX_LDBL , CLDouble -> CLDouble -> IO CLDouble
-- #ccall GSL_MIN_LDBL , CLDouble -> CLDouble -> IO CLDouble

#ccall gsl_log1p , CDouble -> IO CDouble
#ccall gsl_expm1 , CDouble -> IO CDouble
#ccall gsl_hypot , CDouble -> CDouble -> IO CDouble
#ccall gsl_hypot3 , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_acosh , CDouble -> IO CDouble
#ccall gsl_asinh , CDouble -> IO CDouble
#ccall gsl_atanh , CDouble -> IO CDouble

#ccall gsl_isnan , CDouble -> IO CInt
#ccall gsl_isinf , CDouble -> IO CInt
#ccall gsl_finite , CDouble -> IO CInt

#ccall gsl_nan , IO CDouble
#ccall gsl_posinf , IO CDouble
#ccall gsl_neginf , IO CDouble
#ccall gsl_fdiv , CDouble -> CDouble -> IO CDouble

#ccall gsl_coerce_double , CDouble -> IO CDouble
#ccall gsl_coerce_float , CFloat -> IO CFloat
-- #ccall gsl_coerce_long_double , CLDouble -> IO CLDouble

#ccall gsl_ldexp , CDouble -> CInt -> IO CDouble
#ccall gsl_frexp , CDouble -> Ptr CInt -> IO CDouble

#ccall gsl_fcmp , CDouble -> CDouble -> CDouble -> IO CInt

#ccall gsl_pow_2 , CDouble -> IO CDouble
#ccall gsl_pow_3 , CDouble -> IO CDouble
#ccall gsl_pow_4 , CDouble -> IO CDouble
#ccall gsl_pow_5 , CDouble -> IO CDouble
#ccall gsl_pow_6 , CDouble -> IO CDouble
#ccall gsl_pow_7 , CDouble -> IO CDouble
#ccall gsl_pow_8 , CDouble -> IO CDouble
#ccall gsl_pow_9 , CDouble -> IO CDouble
#ccall gsl_pow_int , CDouble -> CInt -> IO CDouble

