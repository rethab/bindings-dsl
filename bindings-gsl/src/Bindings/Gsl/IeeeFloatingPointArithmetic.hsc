#include <bindings.dsl.h>
#include <gsl/gsl_ieee_utils.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/IEEE-floating_002dpoint-arithmetic.html>

module Bindings.Gsl.IeeeFloatingPointArithmetic where
#strict_import

#num GSL_IEEE_TYPE_NAN
#num GSL_IEEE_TYPE_INF
#num GSL_IEEE_TYPE_NORMAL
#num GSL_IEEE_TYPE_DENORMAL
#num GSL_IEEE_TYPE_ZERO

#starttype gsl_ieee_float_rep
#field sign , CInt
#array_field mantissa , CChar
#field exponent , CInt
#field type , CInt
#stoptype

#starttype gsl_ieee_double_rep
#field sign , CInt
#array_field mantissa , CChar
#field exponent , CInt
#field type , CInt
#stoptype

#ccall gsl_ieee_printf_float , Ptr CFloat -> IO ()
#ccall gsl_ieee_printf_double , Ptr CDouble -> IO ()
#ccall gsl_ieee_fprintf_float , Ptr CFile -> Ptr CFloat -> IO ()
#ccall gsl_ieee_fprintf_double , Ptr CFile -> Ptr CDouble -> IO ()
#ccall gsl_ieee_float_to_rep , Ptr CFloat -> Ptr <gsl_ieee_float_rep> -> IO ()
#ccall gsl_ieee_double_to_rep , Ptr CDouble -> Ptr <gsl_ieee_double_rep> -> IO ()

#num GSL_IEEE_SINGLE_PRECISION
#num GSL_IEEE_DOUBLE_PRECISION
#num GSL_IEEE_EXTENDED_PRECISION
#num GSL_IEEE_ROUND_TO_NEAREST
#num GSL_IEEE_ROUND_DOWN
#num GSL_IEEE_ROUND_UP
#num GSL_IEEE_ROUND_TO_ZERO
#num GSL_IEEE_MASK_INVALID
#num GSL_IEEE_MASK_DENORMALIZED
#num GSL_IEEE_MASK_DIVISION_BY_ZERO
#num GSL_IEEE_MASK_OVERFLOW
#num GSL_IEEE_MASK_UNDERFLOW
#num GSL_IEEE_MASK_ALL
#num GSL_IEEE_TRAP_INEXACT

#ccall gsl_ieee_env_setup , IO ()
#ccall gsl_ieee_read_mode_string , CString -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO CInt
#ccall gsl_ieee_set_mode , CInt -> CInt -> CInt -> CInt -> CInt -> IO CInt

