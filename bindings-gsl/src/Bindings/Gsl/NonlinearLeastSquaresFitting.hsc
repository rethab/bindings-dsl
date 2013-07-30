#include <bindings.dsl.h>
#include <gsl/gsl_multifit_nlin.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Nonlinear-Least_002dSquares-Fitting.html>

module Bindings.Gsl.NonlinearLeastSquaresFitting where
#strict_import
import Bindings.Gsl.VectorsAndMatrices

#ccall gsl_multifit_gradient , Ptr <gsl_matrix> -> \
    Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_multifit_covar , Ptr <gsl_matrix> -> CDouble -> \
    Ptr <gsl_matrix> -> IO CInt

#starttype gsl_multifit_function
#field f , FunPtr (Ptr <gsl_vector> -> Ptr () -> Ptr <gsl_vector> -> IO ())
#field n , CSize
#field p , CSize
#field params , Ptr ()
#stoptype

#cinline GSL_MULTIFIT_FN_EVAL , Ptr <gsl_multifit_function> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO ()

#starttype gsl_multifit_fsolver_type
#field name , CString
#field size , CSize
#field alloc , FunPtr (Ptr () -> CSize -> CSize -> IO CInt)
#field set , FunPtr (Ptr () -> Ptr <gsl_multifit_function> -> \
    Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt)
#field iterate , FunPtr (Ptr () -> Ptr <gsl_multifit_function> -> \
    Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt)
#field free , FunPtr (Ptr () -> IO ())
#stoptype

#starttype gsl_multifit_fsolver
#field type , Ptr <gsl_multifit_fsolver_type>
#field function , Ptr <gsl_multifit_function>
#field x , Ptr <gsl_vector>
#field f , Ptr <gsl_vector>
#field dx , Ptr <gsl_vector>
#field state , Ptr ()
#stoptype

#ccall gsl_multifit_fsolver_alloc , Ptr <gsl_multifit_fsolver_type> -> \
    CSize -> CSize -> IO (Ptr <gsl_multifit_fsolver>)
#ccall gsl_multifit_fsolver_free , Ptr <gsl_multifit_fsolver> -> IO ()
#ccall gsl_multifit_fsolver_set , Ptr <gsl_multifit_fsolver> -> \
    Ptr <gsl_multifit_function> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_multifit_fsolver_iterate , Ptr <gsl_multifit_fsolver> -> IO CInt
#ccall gsl_multifit_fsolver_name , Ptr <gsl_multifit_fsolver> -> IO CString
#ccall gsl_multifit_fsolver_position , Ptr <gsl_multifit_fsolver> -> \
    IO (Ptr <gsl_vector>)

#starttype gsl_multifit_function_fdf
#field f , FunPtr (Ptr <gsl_vector> -> Ptr () -> \
    Ptr <gsl_vector> -> IO CInt)
#field df , FunPtr (Ptr <gsl_vector> -> Ptr () -> \
    Ptr <gsl_matrix> -> IO CInt)
#field fdf , FunPtr (Ptr <gsl_vector> -> Ptr () -> Ptr <gsl_vector> -> \
    Ptr <gsl_matrix> -> IO CInt)
#field n , CSize
#field p , CSize
#field params , Ptr ()
#stoptype

#cinline GSL_MULTIFIT_FN_EVAL_F , Ptr <gsl_multifit_function_fdf> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#cinline GSL_MULTIFIT_FN_EVAL_DF , Ptr <gsl_multifit_function_fdf> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
#cinline GSL_MULTIFIT_FN_EVAL_F_DF , Ptr <gsl_multifit_function_fdf> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt

#starttype gsl_multifit_fdfsolver_type
#field name , CString
#field size , CSize
#field alloc , FunPtr (Ptr () -> CSize -> CSize -> IO CInt)
#field set , FunPtr (Ptr () -> Ptr <gsl_multifit_function_fdf> -> \
    Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> \
    Ptr <gsl_vector> -> IO CInt)
#field iterate , FunPtr (Ptr () -> Ptr <gsl_multifit_function_fdf> -> \
    Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> \
    Ptr <gsl_vector> -> IO CInt)
#field free , FunPtr (Ptr () -> IO ())
#stoptype

#starttype gsl_multifit_fdfsolver
#field type , Ptr <gsl_multifit_fdfsolver_type>
#field fdf , Ptr <gsl_multifit_function_fdf>
#field x , Ptr <gsl_vector>
#field f , Ptr <gsl_vector>
#field J , Ptr <gsl_matrix>
#field dx , Ptr <gsl_vector>
#field state , Ptr ()
#stoptype

#ccall gsl_multifit_fdfsolver_alloc , Ptr <gsl_multifit_fdfsolver_type> -> \
    CSize -> CSize -> IO (Ptr <gsl_multifit_fdfsolver>)
#ccall gsl_multifit_fdfsolver_set , Ptr <gsl_multifit_fdfsolver> -> \
    Ptr <gsl_multifit_function_fdf> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_multifit_fdfsolver_iterate , Ptr <gsl_multifit_fdfsolver> -> \
    IO CInt
#ccall gsl_multifit_fdfsolver_free , Ptr <gsl_multifit_fdfsolver> -> IO ()
#ccall gsl_multifit_fdfsolver_name , Ptr <gsl_multifit_fdfsolver> -> \
    IO CString
#ccall gsl_multifit_fdfsolver_position , Ptr <gsl_multifit_fdfsolver> -> \
    IO (Ptr <gsl_vector>)
#ccall gsl_multifit_test_delta , Ptr <gsl_vector> -> \
    Ptr <gsl_vector> -> CDouble -> CDouble -> IO CInt
#ccall gsl_multifit_test_gradient , Ptr <gsl_vector> -> CDouble -> IO CInt

#globalvar gsl_multifit_fdfsolver_lmder , Ptr <gsl_multifit_fdfsolver_type>
#globalvar gsl_multifit_fdfsolver_lmsder , Ptr <gsl_multifit_fdfsolver_type>

