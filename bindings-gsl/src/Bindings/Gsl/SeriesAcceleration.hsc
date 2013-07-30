#include <bindings.dsl.h>
#include <gsl/gsl_sum.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Series-Acceleration.html>

module Bindings.Gsl.SeriesAcceleration where
#strict_import

#starttype gsl_sum_levin_u_workspace
#field size , CSize
#field i , CSize
#field terms_used , CSize
#field sum_plain , CDouble
#field q_num , Ptr CDouble
#field q_den , Ptr CDouble
#field dq_num , Ptr CDouble
#field dq_den , Ptr CDouble
#field dsum , Ptr CDouble
#stoptype

#ccall gsl_sum_levin_u_alloc , CSize -> IO (Ptr <gsl_sum_levin_u_workspace>)
#ccall gsl_sum_levin_u_free , Ptr <gsl_sum_levin_u_workspace> -> IO ()
#ccall gsl_sum_levin_u_accel , Ptr CDouble -> CSize -> Ptr <gsl_sum_levin_u_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sum_levin_u_minmax , Ptr CDouble -> CSize -> CSize -> CSize -> Ptr <gsl_sum_levin_u_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sum_levin_u_step , CDouble -> CSize -> CSize -> Ptr <gsl_sum_levin_u_workspace> -> Ptr CDouble -> IO CInt

#starttype gsl_sum_levin_utrunc_workspace
#field size , CSize
#field i , CSize
#field terms_used , CSize
#field sum_plain , CDouble
#field q_num , Ptr CDouble
#field q_den , Ptr CDouble
#field dsum , Ptr CDouble
#stoptype

#ccall gsl_sum_levin_utrunc_alloc , CSize -> IO (Ptr <gsl_sum_levin_utrunc_workspace>)
#ccall gsl_sum_levin_utrunc_free , Ptr <gsl_sum_levin_utrunc_workspace> -> IO ()
#ccall gsl_sum_levin_utrunc_accel , Ptr CDouble -> CSize -> Ptr <gsl_sum_levin_utrunc_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sum_levin_utrunc_minmax , Ptr CDouble -> CSize -> CSize -> CSize -> Ptr <gsl_sum_levin_utrunc_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sum_levin_utrunc_step , CDouble -> CSize -> Ptr <gsl_sum_levin_utrunc_workspace> -> Ptr CDouble -> IO CInt
