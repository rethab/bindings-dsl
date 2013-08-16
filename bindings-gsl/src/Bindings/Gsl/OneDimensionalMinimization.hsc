#include <bindings.dsl.h>
#include <gsl/gsl_min.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/One-dimensional-Minimization.html>

module Bindings.Gsl.OneDimensionalMinimization where
#strict_import
import Bindings.Gsl.MathematicalFunctions

#starttype gsl_min_fminimizer_type
#field name , CString
#field size , CSize
#field set , FunPtr (Ptr () -> Ptr <gsl_function> -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO  CInt)
#field iterate , FunPtr (Ptr () -> Ptr <gsl_function> -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO  CInt)
#stoptype

#starttype gsl_min_fminimizer
#field type , Ptr <gsl_min_fminimizer_type>
#field function , Ptr <gsl_function>
#field x_minimum , CDouble
#field x_lower , CDouble
#field x_upper , CDouble
#field f_minimum , CDouble
#field f_lower , CDouble
#field f_upper , CDouble
#field state , Ptr ()
#stoptype

#ccall gsl_min_fminimizer_alloc , Ptr <gsl_min_fminimizer_type> -> IO (Ptr <gsl_min_fminimizer>)
#ccall gsl_min_fminimizer_free , Ptr <gsl_min_fminimizer> -> IO ()
#ccall gsl_min_fminimizer_set , Ptr <gsl_min_fminimizer> -> Ptr <gsl_function> -> CDouble -> CDouble -> CDouble -> IO CInt
#ccall gsl_min_fminimizer_set_with_values , Ptr <gsl_min_fminimizer> -> Ptr <gsl_function> -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO CInt
#ccall gsl_min_fminimizer_iterate , Ptr <gsl_min_fminimizer> -> IO CInt
#ccall gsl_min_fminimizer_name , Ptr <gsl_min_fminimizer> -> IO CString 
#ccall gsl_min_fminimizer_x_minimum , Ptr <gsl_min_fminimizer> -> IO CDouble
#ccall gsl_min_fminimizer_x_lower , Ptr <gsl_min_fminimizer> -> IO CDouble
#ccall gsl_min_fminimizer_x_upper , Ptr <gsl_min_fminimizer> -> IO CDouble
#ccall gsl_min_fminimizer_f_minimum , Ptr <gsl_min_fminimizer> -> IO CDouble
#ccall gsl_min_fminimizer_f_lower , Ptr <gsl_min_fminimizer> -> IO CDouble
#ccall gsl_min_fminimizer_f_upper , Ptr <gsl_min_fminimizer> -> IO CDouble
#ccall gsl_min_test_interval , CDouble -> CDouble -> CDouble -> CDouble -> IO CInt

#globalvar gsl_min_fminimizer_goldensection , Ptr gsl_min_fminimizer_type
#globalvar gsl_min_fminimizer_brent , Ptr gsl_min_fminimizer_type

#callback_t gsl_min_bracketing_function , Ptr <gsl_function> -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> CSize -> IO CInt

#ccall gsl_min_find_bracket , Ptr <gsl_function> -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> CSize -> IO CInt

