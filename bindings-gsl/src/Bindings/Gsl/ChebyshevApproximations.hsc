#include <bindings.dsl.h>
#include <gsl/gsl_chebyshev.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Chebyshev-Approximations.html>

module Bindings.Gsl.ChebyshevApproximations where
#strict_import
import Bindings.Gsl.SpecialFunctions
import Bindings.Gsl.MathematicalFunctions

#starttype gsl_cheb_series
#field c , Ptr CDouble
#field order , CSize
#field a , CDouble
#field b , CDouble
#field order_sp , CSize
#field f , Ptr CDouble
#stoptype

#ccall gsl_cheb_alloc , CSize -> IO (Ptr <gsl_cheb_series>)
#ccall gsl_cheb_free , Ptr <gsl_cheb_series> -> IO ()
#ccall gsl_cheb_init , Ptr <gsl_cheb_series> -> Ptr <gsl_function> -> CDouble -> CDouble -> IO CInt
#ccall gsl_cheb_order , Ptr <gsl_cheb_series> -> IO CSize
#ccall gsl_cheb_size , Ptr <gsl_cheb_series> -> IO CSize
#ccall gsl_cheb_coeffs , Ptr <gsl_cheb_series> -> IO (Ptr CDouble)
#ccall gsl_cheb_eval , Ptr <gsl_cheb_series> -> CDouble -> IO CDouble
#ccall gsl_cheb_eval_err , Ptr <gsl_cheb_series> -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_cheb_eval_n , Ptr <gsl_cheb_series> -> CSize -> CDouble -> IO CDouble
#ccall gsl_cheb_eval_n_err , Ptr <gsl_cheb_series> -> CSize -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_cheb_eval_mode , Ptr <gsl_cheb_series> -> CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_cheb_eval_mode_e , Ptr <gsl_cheb_series> -> CDouble -> <gsl_mode_t> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_cheb_calc_deriv , Ptr <gsl_cheb_series> -> Ptr <gsl_cheb_series> -> IO CInt
#ccall gsl_cheb_calc_integ , Ptr <gsl_cheb_series> -> Ptr <gsl_cheb_series> -> IO CInt

