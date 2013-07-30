#include <bindings.dsl.h>
#include <gsl/gsl_interp.h>
#include <gsl/gsl_spline.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Interpolation.html>

module Bindings.Gsl.Interpolation where
#strict_import

#starttype gsl_interp_accel
#field cache , CSize
#field miss_count , CSize
#field hit_count , CSize
#stoptype

#starttype gsl_interp_type
#field name , CString
#field min_size , CUInt
#field alloc , FunPtr (CSize -> IO (Ptr ()))
#field init , FunPtr (Ptr () -> Ptr CDouble -> Ptr CDouble -> CSize -> IO  CInt)
#field eval , FunPtr ( Ptr () -> Ptr CDouble -> Ptr CDouble -> CSize -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO  CInt)
#field eval_deriv , FunPtr ( Ptr () -> Ptr CDouble -> Ptr CDouble -> CSize -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO  CInt)
#field eval_deriv2 , FunPtr ( Ptr () -> Ptr CDouble -> Ptr CDouble -> CSize -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO  CInt)
#field eval_integ , FunPtr ( Ptr () -> Ptr CDouble -> Ptr CDouble -> CSize -> Ptr <gsl_interp_accel> -> CDouble -> CDouble -> Ptr CDouble -> IO  CInt)
#field free , FunPtr (Ptr () -> IO ())
#stoptype

#starttype gsl_interp
#field type , Ptr <gsl_interp_type>
#field xmin , CDouble
#field xmax , CDouble
#field size , CSize
#field state , Ptr ()
#stoptype

#globalvar gsl_interp_linear , Ptr gsl_interp_type
#globalvar gsl_interp_polynomial , Ptr gsl_interp_type
#globalvar gsl_interp_cspline , Ptr gsl_interp_type
#globalvar gsl_interp_cspline_periodic , Ptr gsl_interp_type
#globalvar gsl_interp_akima , Ptr gsl_interp_type
#globalvar gsl_interp_akima_periodic , Ptr gsl_interp_type

#ccall gsl_interp_accel_alloc , IO (Ptr <gsl_interp_accel>)
#ccall gsl_interp_accel_reset , Ptr <gsl_interp_accel> -> IO CInt
#ccall gsl_interp_accel_free , Ptr <gsl_interp_accel> -> IO ()
#ccall gsl_interp_alloc , Ptr <gsl_interp_type> -> CSize -> IO (Ptr <gsl_interp>)
#ccall gsl_interp_init , Ptr <gsl_interp> -> Ptr CDouble -> Ptr CDouble -> CSize -> IO CInt
#ccall gsl_interp_name , Ptr <gsl_interp> -> IO CString 
#ccall gsl_interp_min_size , Ptr <gsl_interp> -> IO CUInt
#ccall gsl_interp_eval_e , Ptr <gsl_interp> -> Ptr CDouble -> Ptr CDouble -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO CInt
#ccall gsl_interp_eval , Ptr <gsl_interp> -> Ptr CDouble -> Ptr CDouble -> CDouble -> Ptr <gsl_interp_accel> -> IO CDouble
#ccall gsl_interp_eval_deriv_e , Ptr <gsl_interp> -> Ptr CDouble -> Ptr CDouble -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO CInt
#ccall gsl_interp_eval_deriv , Ptr <gsl_interp> -> Ptr CDouble -> Ptr CDouble -> CDouble -> Ptr <gsl_interp_accel> -> IO CDouble
#ccall gsl_interp_eval_deriv2_e , Ptr <gsl_interp> -> Ptr CDouble -> Ptr CDouble -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO CInt
#ccall gsl_interp_eval_deriv2 , Ptr <gsl_interp> -> Ptr CDouble -> Ptr CDouble -> CDouble -> Ptr <gsl_interp_accel> -> IO CDouble
#ccall gsl_interp_eval_integ_e , Ptr <gsl_interp> -> Ptr CDouble -> Ptr CDouble -> CDouble -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO CInt
#ccall gsl_interp_eval_integ , Ptr <gsl_interp> -> Ptr CDouble -> Ptr CDouble -> CDouble -> CDouble -> Ptr <gsl_interp_accel> -> IO CDouble
#ccall gsl_interp_free , Ptr <gsl_interp> -> IO ()
#ccall gsl_interp_bsearch , Ptr CDouble -> CDouble -> CSize -> CSize -> IO CSize
#ccall gsl_interp_accel_find , Ptr <gsl_interp_accel> -> Ptr CDouble -> CSize -> CDouble -> IO CSize

#starttype gsl_spline
#field interp , Ptr <gsl_interp>
#field x , Ptr CDouble
#field y , Ptr CDouble
#field size , CSize
#stoptype

#ccall gsl_spline_alloc , Ptr <gsl_interp_type> -> CSize -> IO (Ptr <gsl_spline>)
#ccall gsl_spline_init , Ptr <gsl_spline> -> Ptr CDouble -> Ptr CDouble -> CSize -> IO CInt
#ccall gsl_spline_name , Ptr <gsl_spline> -> IO CString 
#ccall gsl_spline_min_size , Ptr <gsl_spline> -> IO CUInt
#ccall gsl_spline_eval_e , Ptr <gsl_spline> -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO CInt
#ccall gsl_spline_eval , Ptr <gsl_spline> -> CDouble -> Ptr <gsl_interp_accel> -> IO CDouble
#ccall gsl_spline_eval_deriv_e , Ptr <gsl_spline> -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO CInt
#ccall gsl_spline_eval_deriv , Ptr <gsl_spline> -> CDouble -> Ptr <gsl_interp_accel> -> IO CDouble
#ccall gsl_spline_eval_deriv2_e , Ptr <gsl_spline> -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO CInt
#ccall gsl_spline_eval_deriv2 , Ptr <gsl_spline> -> CDouble -> Ptr <gsl_interp_accel> -> IO CDouble
#ccall gsl_spline_eval_integ_e , Ptr <gsl_spline> -> CDouble -> CDouble -> Ptr <gsl_interp_accel> -> Ptr CDouble -> IO CInt
#ccall gsl_spline_eval_integ , Ptr <gsl_spline> -> CDouble -> CDouble -> Ptr <gsl_interp_accel> -> IO CDouble
#ccall gsl_spline_free , Ptr <gsl_spline> -> IO ()

