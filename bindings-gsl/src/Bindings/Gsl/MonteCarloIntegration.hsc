#include <bindings.dsl.h>
#include <gsl/gsl_monte_plain.h>
#include <gsl/gsl_monte_miser.h>
#include <gsl/gsl_monte_vegas.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Monte-Carlo-Integration.html>

module Bindings.Gsl.MonteCarloIntegration where
#strict_import
import Bindings.Gsl.RandomNumberGeneration

#starttype gsl_monte_function
#field f , FunPtr (Ptr CDouble -> CSize -> Ptr () -> IO CDouble)
#field dim , CSize
#field params , Ptr ()
#stoptype

#cinline GSL_MONTE_FN_EVAL , Ptr <gsl_monte_function> -> Ptr CDouble -> IO CDouble

#starttype gsl_monte_plain_state
#field dim , CSize
#field x , Ptr CDouble
#stoptype

#ccall gsl_monte_plain_integrate , Ptr <gsl_monte_function> -> Ptr CDouble -> Ptr CDouble -> CSize -> CSize -> Ptr <gsl_rng> -> Ptr <gsl_monte_plain_state> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_monte_plain_alloc , CSize -> IO (Ptr <gsl_monte_plain_state>)
#ccall gsl_monte_plain_init , Ptr <gsl_monte_plain_state> -> IO CInt
#ccall gsl_monte_plain_free , Ptr <gsl_monte_plain_state> -> IO ()

#starttype gsl_monte_miser_state
#field min_calls , CSize
#field min_calls_per_bisection , CSize
#field dither , CDouble
#field estimate_frac , CDouble
#field alpha , CDouble
#field dim , CSize
#field estimate_style , CInt
#field depth , CInt
#field verbose , CInt
#field x , Ptr CDouble
#field xmid , Ptr CDouble
#field sigma_l , Ptr CDouble
#field sigma_r , Ptr CDouble
#field fmax_l , Ptr CDouble
#field fmax_r , Ptr CDouble
#field fmin_l , Ptr CDouble
#field fmin_r , Ptr CDouble
#field fsum_l , Ptr CDouble
#field fsum_r , Ptr CDouble
#field fsum2_l , Ptr CDouble
#field fsum2_r , Ptr CDouble
#field hits_l , Ptr CSize
#field hits_r , Ptr CSize
#stoptype

#ccall gsl_monte_miser_integrate , Ptr <gsl_monte_function> -> Ptr CDouble -> Ptr CDouble -> CSize -> CSize -> Ptr <gsl_rng> -> Ptr <gsl_monte_miser_state> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_monte_miser_alloc , CSize -> IO (Ptr <gsl_monte_miser_state>)
#ccall gsl_monte_miser_init , Ptr <gsl_monte_miser_state> -> IO CInt
#ccall gsl_monte_miser_free , Ptr <gsl_monte_miser_state> -> IO ()

#num GSL_VEGAS_MODE_IMPORTANCE
#num GSL_VEGAS_MODE_IMPORTANCE_ONLY
#num GSL_VEGAS_MODE_STRATIFIED

#starttype gsl_monte_vegas_state
#field dim , CSize
#field bins_max , CSize
#field bins , CUInt
#field boxes , CUInt
#field xi , Ptr CDouble
#field xin , Ptr CDouble
#field delx , Ptr CDouble
#field weight , Ptr CDouble
#field vol , CDouble
#field x , Ptr CDouble
#field bin , Ptr CInt
#field box , Ptr CInt
#field d , Ptr CDouble
#field alpha , CDouble
#field mode , CInt
#field verbose , CInt
#field iterations , CUInt
#field stage , CInt
#field jac , CDouble
#field wtd_int_sum , CDouble
#field sum_wgts , CDouble
#field chi_sum , CDouble
#field chisq , CDouble
#field result , CDouble
#field sigma , CDouble
#field it_start , CUInt
#field it_num , CUInt
#field samples , CUInt
#field calls_per_box , CUInt
#field ostream , Ptr CFile
#stoptype

#ccall gsl_monte_vegas_integrate , Ptr <gsl_monte_function> -> Ptr CDouble -> Ptr CDouble -> CSize -> CSize -> Ptr <gsl_rng> -> Ptr <gsl_monte_vegas_state> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_monte_vegas_alloc , CSize -> IO (Ptr <gsl_monte_vegas_state>)
#ccall gsl_monte_vegas_init , Ptr <gsl_monte_vegas_state> -> IO CInt
#ccall gsl_monte_vegas_free , Ptr <gsl_monte_vegas_state> -> IO ()

