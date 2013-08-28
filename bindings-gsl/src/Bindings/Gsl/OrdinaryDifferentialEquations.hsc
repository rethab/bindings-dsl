#include <bindings.dsl.h>
#include <gsl/gsl_odeiv2.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Ordinary-Differential-Equations.html>

module Bindings.Gsl.OrdinaryDifferentialEquations where
#strict_import

#starttype gsl_odeiv2_system
#field function , FunPtr (CDouble -> Ptr CDouble -> Ptr CDouble -> \
    Ptr () -> IO CInt)
#field jacobian , FunPtr (CDouble -> Ptr CDouble -> Ptr CDouble -> \
    Ptr CDouble -> Ptr ()  -> IO CInt)
#field dimension , CSize
#field params , Ptr ()
#stoptype

#ccall gsl_odeiv2_step_alloc , Ptr <gsl_odeiv2_step_type> -> CSize -> IO (Ptr <gsl_odeiv2_step>)
#ccall gsl_odeiv2_step_reset , Ptr <gsl_odeiv2_step> -> IO CInt
#ccall gsl_odeiv2_step_free , Ptr <gsl_odeiv2_step> -> IO ()
#ccall gsl_odeiv2_step_name , Ptr <gsl_odeiv2_step> -> IO CString
#ccall gsl_odeiv2_step_order , Ptr <gsl_odeiv2_step> -> IO CUInt
#ccall gsl_odeiv2_step_set_driver , Ptr <gsl_odeiv2_step> -> Ptr <gsl_odeiv2_driver> -> IO CInt
#ccall gsl_odeiv2_step_apply , Ptr <gsl_odeiv2_step> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr <gsl_odeiv2_system> -> IO CInt

#globalvar gsl_odeiv2_step_rk2 , Ptr <gsl_odeiv2_step_type>
#globalvar gsl_odeiv2_step_rk4 , Ptr <gsl_odeiv2_step_type>
#globalvar gsl_odeiv2_step_rkf45 , Ptr <gsl_odeiv2_step_type>
#globalvar gsl_odeiv2_step_rkck , Ptr <gsl_odeiv2_step_type>
#globalvar gsl_odeiv2_step_rk8pd , Ptr <gsl_odeiv2_step_type>
#globalvar gsl_odeiv2_step_rk1imp , Ptr <gsl_odeiv2_step_type>
#globalvar gsl_odeiv2_step_rk2imp , Ptr <gsl_odeiv2_step_type>
#globalvar gsl_odeiv2_step_rk4imp , Ptr <gsl_odeiv2_step_type>
#globalvar gsl_odeiv2_step_bsimp , Ptr <gsl_odeiv2_step_type>
#globalvar gsl_odeiv2_step_msadams , Ptr <gsl_odeiv2_step_type>
#globalvar gsl_odeiv2_step_msbdf , Ptr <gsl_odeiv2_step_type>

#ccall gsl_odeiv2_control_standard_new , CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr <gsl_odeiv2_control>)
#ccall gsl_odeiv2_control_y_new , CDouble -> CDouble -> IO (Ptr <gsl_odeiv2_control>)
#ccall gsl_odeiv2_control_yp_new , CDouble -> CDouble -> IO (Ptr <gsl_odeiv2_control>)
#ccall gsl_odeiv2_control_scaled_new , CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> CSize -> IO (Ptr <gsl_odeiv2_control>)
#ccall gsl_odeiv2_control_alloc , Ptr <gsl_odeiv2_control_type> -> IO (Ptr <gsl_odeiv2_control>)
#ccall gsl_odeiv2_control_init , Ptr <gsl_odeiv2_control> -> CDouble -> CDouble -> CDouble -> CDouble -> IO CInt
#ccall gsl_odeiv2_control_free , Ptr <gsl_odeiv2_control> -> IO ()
#ccall gsl_odeiv2_control_hadjust , Ptr <gsl_odeiv2_control> -> Ptr <gsl_odeiv2_step> -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr Double -> IO CInt
#ccall gsl_odeiv2_control_name , Ptr <gsl_odeiv2_control> -> IO CString
#ccall gsl_odeiv2_control_errlevel , Ptr <gsl_odeiv2_control> -> CDouble -> CDouble -> CDouble -> CSize -> Ptr Double -> IO CInt
#ccall gsl_odeiv2_control_set_driver , Ptr <gsl_odeiv2_control> -> Ptr <gsl_odeiv2_driver> -> IO CInt

#num GSL_ODEIV_HADJ_INC
#num GSL_ODEIV_HADJ_NIL
#num GSL_ODEIV_HADJ_DEC

#ccall gsl_odeiv2_evolve_alloc , CSize -> IO (Ptr <gsl_odeiv2_evolve>)
#ccall gsl_odeiv2_evolve_apply , Ptr <gsl_odeiv2_evolve> -> Ptr <gsl_odeiv2_control> -> Ptr <gsl_odeiv2_step> -> Ptr <gsl_odeiv2_system> -> Ptr Double -> CDouble -> Ptr Double -> Ptr CDouble -> IO CInt
#ccall gsl_odeiv2_evolve_apply_fixed_step , Ptr <gsl_odeiv2_evolve> -> Ptr <gsl_odeiv2_control> -> Ptr <gsl_odeiv2_step> -> Ptr <gsl_odeiv2_system> -> Ptr CDouble -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_odeiv2_evolve_reset , Ptr <gsl_odeiv2_evolve> -> IO CInt
#ccall gsl_odeiv2_evolve_free , Ptr <gsl_odeiv2_evolve> -> IO ()
#ccall gsl_odeiv2_evolve_set_driver , Ptr <gsl_odeiv2_evolve> -> Ptr <gsl_odeiv2_driver> -> IO CInt

#ccall gsl_odeiv2_driver_alloc_y_new , Ptr <gsl_odeiv2_system> -> Ptr <gsl_odeiv2_step_type> -> CDouble -> CDouble -> CDouble -> IO (Ptr <gsl_odeiv2_driver>)
#ccall gsl_odeiv2_driver_alloc_yp_new , Ptr <gsl_odeiv2_system> -> Ptr <gsl_odeiv2_step_type> -> CDouble -> CDouble -> CDouble -> IO (Ptr <gsl_odeiv2_driver>)
#ccall gsl_odeiv2_driver_alloc_standard_new , Ptr <gsl_odeiv2_system> -> Ptr <gsl_odeiv2_step_type> -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr <gsl_odeiv2_driver>)
#ccall gsl_odeiv2_driver_alloc_scaled_new , Ptr <gsl_odeiv2_system> -> Ptr <gsl_odeiv2_step_type> -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> IO (Ptr <gsl_odeiv2_driver>)
#ccall gsl_odeiv2_driver_set_hmin , Ptr <gsl_odeiv2_driver> -> CDouble -> IO CInt
#ccall gsl_odeiv2_driver_set_hmax , Ptr <gsl_odeiv2_driver> -> CDouble -> IO CInt
#ccall gsl_odeiv2_driver_set_nmax , Ptr <gsl_odeiv2_driver> -> CULong -> IO CInt
#ccall gsl_odeiv2_driver_apply , Ptr <gsl_odeiv2_driver> -> Ptr Double -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_odeiv2_driver_apply_fixed_step , Ptr <gsl_odeiv2_driver> -> Ptr Double -> CDouble -> CULong -> Ptr CDouble -> IO CInt
#ccall gsl_odeiv2_driver_reset , Ptr <gsl_odeiv2_driver> -> IO CInt
#ccall gsl_odeiv2_driver_free , Ptr <gsl_odeiv2_driver> -> IO ()

#cinline GSL_ODEIV_FN_EVAL , Ptr <gsl_odeiv2_system> -> CDouble -> \
    Ptr CDouble -> Ptr CDouble -> IO CInt
#cinline GSL_ODEIV_JA_EVAL , Ptr <gsl_odeiv2_system> -> CDouble -> \
    Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt

#starttype gsl_odeiv2_step
#field type , Ptr <gsl_odeiv2_step_type>
#field dimension , CSize
#field state , Ptr ()
#stoptype

#starttype gsl_odeiv2_control
#field type , Ptr <gsl_odeiv2_control_type>
#field state , Ptr ()
#stoptype

#starttype gsl_odeiv2_evolve
#field dimension , CSize
#field y0 , Ptr CDouble
#field yerr , Ptr CDouble
#field dydt_in , Ptr CDouble
#field dydt_out , Ptr CDouble
#field last_step , CDouble 
#field count , CULong 
#field failed_steps , CULong 
#field driver , Ptr <gsl_odeiv2_driver>
#stoptype

#starttype gsl_odeiv2_driver
#field sys , Ptr <gsl_odeiv2_system>
#field s , Ptr <gsl_odeiv2_step>
#field c , Ptr <gsl_odeiv2_control>
#field e , Ptr <gsl_odeiv2_evolve>
#field h , CDouble
#field hmin , CDouble
#field hmax , CDouble
#field n , CULong
#field nmax , CULong
#stoptype

#opaque_t gsl_odeiv2_step_type

#starttype gsl_odeiv2_control_type
#field name , CString
#field alloc , FunPtr (IO (Ptr ()))
#field init , FunPtr (Ptr ()-> CDouble-> CDouble-> CDouble-> CDouble -> IO CInt)
#field hadjust , FunPtr (Ptr () ->  CSize ->  CUInt ->  Ptr CDouble -> \
    Ptr CDouble ->  Ptr CDouble ->  Ptr Double -> IO CInt)
#field errlevel , FunPtr (Ptr () ->  CDouble ->  CDouble ->  CDouble -> \
    CSize ->  Ptr CDouble -> IO CInt)
#field set_driver , FunPtr (Ptr () ->  Ptr <gsl_odeiv2_driver> -> IO CInt)
#field free , FunPtr (Ptr () -> IO ())
#stoptype
