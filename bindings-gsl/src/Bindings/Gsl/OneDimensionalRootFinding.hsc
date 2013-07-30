#include <bindings.dsl.h>
#include <gsl/gsl_roots.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/One-dimensional-Root_002dFinding.html>

module Bindings.Gsl.OneDimensionalRootFinding where
#strict_import
import Bindings.Gsl.MathematicalFunctions

#starttype gsl_root_fsolver_type
#field name , CString
#field size , CSize
#field set , FunPtr (Ptr () -> Ptr <gsl_function> -> Ptr CDouble -> CDouble -> CDouble -> IO  CInt)
#field iterate , FunPtr (Ptr () -> Ptr <gsl_function> -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO  CInt)
#stoptype

#starttype gsl_root_fsolver
#field type , Ptr <gsl_root_fsolver_type>
#field function , Ptr <gsl_function>
#field root , CDouble
#field x_lower , CDouble
#field x_upper , CDouble
#field state , Ptr ()
#stoptype

#starttype gsl_root_fdfsolver_type
#field name , CString
#field size , CSize
#field set , FunPtr (Ptr () -> Ptr <gsl_function_fdf> -> Ptr CDouble -> IO  CInt)
#field iterate , FunPtr (Ptr () -> Ptr <gsl_function_fdf> -> Ptr CDouble -> IO  CInt)
#stoptype

#starttype gsl_root_fdfsolver
#field type , Ptr <gsl_root_fdfsolver_type>
#field fdf , Ptr <gsl_function_fdf>
#field root , CDouble
#field state , Ptr ()
#stoptype

#ccall gsl_root_fsolver_alloc , Ptr <gsl_root_fsolver_type> -> IO (Ptr <gsl_root_fsolver>)
#ccall gsl_root_fsolver_free , Ptr <gsl_root_fsolver> -> IO ()
#ccall gsl_root_fsolver_set , Ptr <gsl_root_fsolver> -> Ptr <gsl_function> -> CDouble -> CDouble -> IO CInt
#ccall gsl_root_fsolver_iterate , Ptr <gsl_root_fsolver> -> IO CInt
#ccall gsl_root_fsolver_name , Ptr <gsl_root_fsolver> -> IO CString 
#ccall gsl_root_fsolver_root , Ptr <gsl_root_fsolver> -> IO CDouble
#ccall gsl_root_fsolver_x_lower , Ptr <gsl_root_fsolver> -> IO CDouble
#ccall gsl_root_fsolver_x_upper , Ptr <gsl_root_fsolver> -> IO CDouble
#ccall gsl_root_fdfsolver_alloc , Ptr <gsl_root_fdfsolver_type> -> IO (Ptr <gsl_root_fdfsolver>)
#ccall gsl_root_fdfsolver_set , Ptr <gsl_root_fdfsolver> -> Ptr <gsl_function_fdf> -> CDouble -> IO CInt
#ccall gsl_root_fdfsolver_iterate , Ptr <gsl_root_fdfsolver> -> IO CInt
#ccall gsl_root_fdfsolver_free , Ptr <gsl_root_fdfsolver> -> IO ()
#ccall gsl_root_fdfsolver_name , Ptr <gsl_root_fdfsolver> -> IO CString 
#ccall gsl_root_fdfsolver_root , Ptr <gsl_root_fdfsolver> -> IO CDouble
#ccall gsl_root_test_interval , CDouble -> CDouble -> CDouble -> CDouble -> IO CInt
#ccall gsl_root_test_residual , CDouble -> CDouble -> IO CInt
#ccall gsl_root_test_delta , CDouble -> CDouble -> CDouble -> CDouble -> IO CInt

#globalvar gsl_root_fsolver_bisection , Ptr <gsl_root_fsolver_type>
#globalvar gsl_root_fsolver_brent , Ptr <gsl_root_fsolver_type>
#globalvar gsl_root_fsolver_falsepos , Ptr <gsl_root_fsolver_type>
#globalvar gsl_root_fdfsolver_newton , Ptr <gsl_root_fdfsolver_type>
#globalvar gsl_root_fdfsolver_secant , Ptr <gsl_root_fdfsolver_type>
#globalvar gsl_root_fdfsolver_steffenson , Ptr <gsl_root_fdfsolver_type>

