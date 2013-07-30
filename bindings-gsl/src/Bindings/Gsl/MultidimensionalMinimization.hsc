#include <bindings.dsl.h>
#include <gsl/gsl_multimin.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Multidimensional-Minimization.html>

module Bindings.Gsl.MultidimensionalMinimization where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes

#starttype gsl_multimin_function
#field f , FunPtr (Ptr <gsl_vector> -> Ptr () -> IO  CDouble)
#field n , CSize
#field params , Ptr ()
#stoptype

#cinline GSL_MULTIMIN_FN_EVAL , Ptr <gsl_multimin_function> -> Ptr <gsl_vector> -> IO CDouble

#starttype gsl_multimin_function_fdf
#field f , FunPtr (Ptr <gsl_vector> -> Ptr () -> IO  CDouble)
#field df , FunPtr (Ptr <gsl_vector> -> Ptr () -> Ptr <gsl_vector> -> IO ())
#field fdf , FunPtr (Ptr <gsl_vector> -> Ptr () -> Ptr CDouble -> Ptr <gsl_vector> -> IO ())
#field n , CSize
#field params , Ptr ()
#stoptype

#cinline GSL_MULTIMIN_FN_EVAL_F , Ptr <gsl_multimin_function_fdf> -> Ptr <gsl_vector> -> IO CDouble
#cinline GSL_MULTIMIN_FN_EVAL_DF , Ptr <gsl_multimin_function_fdf> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO ()
#cinline GSL_MULTIMIN_FN_EVAL_F_DF , Ptr <gsl_multimin_function_fdf> -> Ptr <gsl_vector> -> Ptr CDouble -> Ptr <gsl_vector> -> IO ()

#ccall gsl_multimin_diff , Ptr <gsl_multimin_function> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt

#starttype gsl_multimin_fminimizer_type
#field name , CString
#field size , CSize
#field alloc , FunPtr (Ptr () -> CSize -> IO  CInt)
#field set , FunPtr (Ptr () -> Ptr <gsl_multimin_function> -> Ptr <gsl_vector> -> Ptr CDouble -> Ptr <gsl_vector> -> IO  CInt)
#field iterate , FunPtr (Ptr () -> Ptr <gsl_multimin_function> -> Ptr <gsl_vector> -> Ptr CDouble -> Ptr CDouble -> IO  CInt)
#field free , FunPtr (Ptr () -> IO ())
#stoptype

#starttype gsl_multimin_fminimizer
#field type , Ptr <gsl_multimin_fminimizer_type>
#field f , Ptr <gsl_multimin_function>
#field fval , CDouble
#field x , Ptr <gsl_vector>
#field size , CDouble
#field state , Ptr ()
#stoptype

#ccall gsl_multimin_fminimizer_alloc , Ptr <gsl_multimin_fminimizer_type> -> CSize -> IO (Ptr <gsl_multimin_fminimizer>)
#ccall gsl_multimin_fminimizer_set , Ptr <gsl_multimin_fminimizer> -> Ptr <gsl_multimin_function> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_multimin_fminimizer_free , Ptr <gsl_multimin_fminimizer> -> IO ()
#ccall gsl_multimin_fminimizer_name , Ptr <gsl_multimin_fminimizer> -> IO  CString
#ccall gsl_multimin_fminimizer_iterate , Ptr <gsl_multimin_fminimizer> -> IO CInt
#ccall gsl_multimin_fminimizer_x , Ptr <gsl_multimin_fminimizer> -> IO (Ptr <gsl_vector>)
#ccall gsl_multimin_fminimizer_minimum , Ptr <gsl_multimin_fminimizer> -> IO CDouble
#ccall gsl_multimin_fminimizer_size , Ptr <gsl_multimin_fminimizer> -> IO CDouble
#ccall gsl_multimin_test_gradient , Ptr <gsl_vector> -> CDouble -> IO CInt
#ccall gsl_multimin_test_size , CDouble -> CDouble -> IO CInt

#starttype gsl_multimin_fdfminimizer_type
#field name , CString
#field size , CSize
#field alloc , FunPtr (Ptr () -> CSize -> IO  CInt)
#field set , FunPtr (Ptr () -> Ptr <gsl_multimin_function_fdf> -> Ptr <gsl_vector> -> Ptr CDouble -> Ptr <gsl_vector> -> CDouble -> CDouble -> IO  CInt)
#field iterate , FunPtr (Ptr () -> Ptr <gsl_multimin_function_fdf> -> Ptr <gsl_vector> -> Ptr CDouble -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO  CInt)
#field restart , FunPtr (Ptr () -> IO  CInt)
#field free , FunPtr (Ptr () -> IO ())
#stoptype

#starttype gsl_multimin_fdfminimizer
#field type , Ptr <gsl_multimin_fdfminimizer_type>
#field fdf , Ptr <gsl_multimin_function_fdf>
#field f , CDouble
#field x , Ptr <gsl_vector>
#field gradient , Ptr <gsl_vector>
#field dx , Ptr <gsl_vector>
#field state , Ptr ()
#stoptype

#ccall gsl_multimin_fdfminimizer_alloc , Ptr <gsl_multimin_fdfminimizer_type> -> CSize -> IO (Ptr <gsl_multimin_fdfminimizer>)
#ccall gsl_multimin_fdfminimizer_set , Ptr <gsl_multimin_fdfminimizer> -> Ptr <gsl_multimin_function_fdf> -> Ptr <gsl_vector> -> CDouble -> CDouble -> IO CInt
#ccall gsl_multimin_fdfminimizer_free , Ptr <gsl_multimin_fdfminimizer> -> IO ()
#ccall gsl_multimin_fdfminimizer_name , Ptr <gsl_multimin_fdfminimizer> -> IO  CString
#ccall gsl_multimin_fdfminimizer_iterate , Ptr <gsl_multimin_fdfminimizer> -> IO CInt
#ccall gsl_multimin_fdfminimizer_restart , Ptr <gsl_multimin_fdfminimizer> -> IO CInt
#ccall gsl_multimin_fdfminimizer_x , Ptr <gsl_multimin_fdfminimizer> -> IO (Ptr <gsl_vector>)
#ccall gsl_multimin_fdfminimizer_dx , Ptr <gsl_multimin_fdfminimizer> -> IO (Ptr <gsl_vector>)
#ccall gsl_multimin_fdfminimizer_gradient , Ptr <gsl_multimin_fdfminimizer> -> IO (Ptr <gsl_vector>)
#ccall gsl_multimin_fdfminimizer_minimum , Ptr <gsl_multimin_fdfminimizer> -> IO CDouble

#globalvar gsl_multimin_fdfminimizer_steepest_descent , Ptr gsl_multimin_fdfminimizer_type
#globalvar gsl_multimin_fdfminimizer_conjugate_pr , Ptr gsl_multimin_fdfminimizer_type
#globalvar gsl_multimin_fdfminimizer_conjugate_fr , Ptr gsl_multimin_fdfminimizer_type
#globalvar gsl_multimin_fdfminimizer_vector_bfgs , Ptr gsl_multimin_fdfminimizer_type
#globalvar gsl_multimin_fdfminimizer_vector_bfgs2 , Ptr gsl_multimin_fdfminimizer_type
#globalvar gsl_multimin_fminimizer_nmsimplex , Ptr gsl_multimin_fminimizer_type
#globalvar gsl_multimin_fminimizer_nmsimplex2 , Ptr gsl_multimin_fminimizer_type

