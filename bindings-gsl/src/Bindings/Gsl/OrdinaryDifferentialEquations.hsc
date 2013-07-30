#include <bindings.dsl.h>
#include <gsl/gsl_odeiv.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Ordinary-Differential-Equations.html>

module Bindings.Gsl.OrdinaryDifferentialEquations where
#strict_import

#starttype gsl_odeiv_system
#field function , FunPtr (CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr () -> IO  CInt)
#field jacobian , FunPtr (CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr () -> IO  CInt)
#field dimension , CSize
#field params , Ptr ()
#stoptype

#cinline GSL_ODEIV_FN_EVAL , Ptr <gsl_odeiv_system> -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#cinline GSL_ODEIV_JA_EVAL , Ptr <gsl_odeiv_system> -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt

#starttype gsl_odeiv_step_type
#field name , CString
#field can_use_dydt_in , CInt
#field gives_exact_dydt_out , CInt
#field alloc , FunPtr (CSize -> IO (Ptr ()))
#field apply , FunPtr (Ptr () -> CSize -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr <gsl_odeiv_system> -> IO  CInt)
#field reset , FunPtr (Ptr () -> CSize -> IO  CInt)
#field order , FunPtr (Ptr () -> IO  CUInt)
#field free , FunPtr (Ptr () -> IO ())
#stoptype

#starttype gsl_odeiv_step
#field type , Ptr <gsl_odeiv_step_type>
#field dimension , CSize
#field state , Ptr ()
#stoptype

#globalvar gsl_odeiv_step_rk2 , Ptr gsl_odeiv_step_type
#globalvar gsl_odeiv_step_rk4 , Ptr gsl_odeiv_step_type
#globalvar gsl_odeiv_step_rkf45 , Ptr gsl_odeiv_step_type
#globalvar gsl_odeiv_step_rkck , Ptr gsl_odeiv_step_type
#globalvar gsl_odeiv_step_rk8pd , Ptr gsl_odeiv_step_type
#globalvar gsl_odeiv_step_rk2imp , Ptr gsl_odeiv_step_type
#globalvar gsl_odeiv_step_rk2simp , Ptr gsl_odeiv_step_type
#globalvar gsl_odeiv_step_rk4imp , Ptr gsl_odeiv_step_type
#globalvar gsl_odeiv_step_bsimp , Ptr gsl_odeiv_step_type
#globalvar gsl_odeiv_step_gear1 , Ptr gsl_odeiv_step_type
#globalvar gsl_odeiv_step_gear2 , Ptr gsl_odeiv_step_type

#ccall gsl_odeiv_step_alloc , Ptr <gsl_odeiv_step_type> -> CSize -> IO (Ptr <gsl_odeiv_step>)
#ccall gsl_odeiv_step_reset , Ptr <gsl_odeiv_step> -> IO CInt
#ccall gsl_odeiv_step_free , Ptr <gsl_odeiv_step> -> IO ()
#ccall gsl_odeiv_step_name , Ptr <gsl_odeiv_step> -> IO CString 
#ccall gsl_odeiv_step_order , Ptr <gsl_odeiv_step> -> IO CUInt
#ccall gsl_odeiv_step_apply , Ptr <gsl_odeiv_step> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr <gsl_odeiv_system> -> IO CInt

#starttype gsl_odeiv_control_type
#field name , CString
#field alloc , FunPtr (IO (Ptr ()))
#field init , FunPtr (Ptr () -> CDouble -> CDouble -> CDouble -> CDouble -> IO  CInt)
#field hadjust , FunPtr (Ptr () -> CSize -> CUInt -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO  CInt)
#field free , FunPtr (Ptr () -> IO ())
#stoptype

#starttype gsl_odeiv_control
#field type , Ptr <gsl_odeiv_control_type>
#field state , Ptr ()
#stoptype

#num GSL_ODEIV_HADJ_INC
#num GSL_ODEIV_HADJ_NIL
#num GSL_ODEIV_HADJ_DEC

#ccall gsl_odeiv_control_alloc , Ptr <gsl_odeiv_control_type> -> IO (Ptr <gsl_odeiv_control>)
#ccall gsl_odeiv_control_init , Ptr <gsl_odeiv_control> -> CDouble -> CDouble -> CDouble -> CDouble -> IO CInt
#ccall gsl_odeiv_control_free , Ptr <gsl_odeiv_control> -> IO ()
#ccall gsl_odeiv_control_hadjust , Ptr <gsl_odeiv_control> -> Ptr <gsl_odeiv_step> -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_odeiv_control_name , Ptr <gsl_odeiv_control> -> IO CString 
#ccall gsl_odeiv_control_standard_new , CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr <gsl_odeiv_control>)
#ccall gsl_odeiv_control_y_new , CDouble -> CDouble -> IO (Ptr <gsl_odeiv_control>)
#ccall gsl_odeiv_control_yp_new , CDouble -> CDouble -> IO (Ptr <gsl_odeiv_control>)
#ccall gsl_odeiv_control_scaled_new , CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> CSize -> IO (Ptr <gsl_odeiv_control>)

#starttype gsl_odeiv_evolve
#field dimension , CSize
#field y0 , Ptr CDouble
#field yerr , Ptr CDouble
#field dydt_in , Ptr CDouble
#field dydt_out , Ptr CDouble
#field last_step , CDouble
#field count , CULong
#field failed_steps , CULong
#stoptype

#ccall gsl_odeiv_evolve_alloc , CSize -> IO (Ptr <gsl_odeiv_evolve>)
#ccall gsl_odeiv_evolve_apply , Ptr <gsl_odeiv_evolve> -> Ptr <gsl_odeiv_control> -> Ptr <gsl_odeiv_step> -> Ptr <gsl_odeiv_system> -> Ptr CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_odeiv_evolve_reset , Ptr <gsl_odeiv_evolve> -> IO CInt
#ccall gsl_odeiv_evolve_free , Ptr <gsl_odeiv_evolve> -> IO ()

