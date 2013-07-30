#include <bindings.dsl.h>
#include <gsl/gsl_multiroots.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Multidimensional-Root_002dFinding.html>

module Bindings.Gsl.MultidimensionalRootFinding where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes

#starttype gsl_multiroot_function
#field f , FunPtr ( Ptr <gsl_vector> -> Ptr () -> Ptr <gsl_vector> -> IO  CInt)
#field n , CSize
#field params , Ptr ()
#stoptype

#cinline GSL_MULTIROOT_FN_EVAL , Ptr <gsl_multiroot_function> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt

#ccall gsl_multiroot_fdjacobian , Ptr <gsl_multiroot_function> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> CDouble -> Ptr <gsl_matrix> -> IO CInt

#starttype gsl_multiroot_fsolver_type
#field name , CString
#field size , CSize
#field alloc , FunPtr (Ptr () -> CSize -> IO  CInt)
#field set , FunPtr (Ptr () -> Ptr <gsl_multiroot_function> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO  CInt)
#field iterate , FunPtr (Ptr () -> Ptr <gsl_multiroot_function> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO  CInt)
#field free , FunPtr (Ptr () -> IO ())
#stoptype

#starttype gsl_multiroot_fsolver
#field type , Ptr <gsl_multiroot_fsolver_type>
#field function , Ptr <gsl_multiroot_function>
#field x , Ptr <gsl_vector>
#field f , Ptr <gsl_vector>
#field dx , Ptr <gsl_vector>
#field state , Ptr ()
#stoptype

#ccall gsl_multiroot_fsolver_alloc , Ptr <gsl_multiroot_fsolver_type> -> CSize -> IO (Ptr <gsl_multiroot_fsolver>)
#ccall gsl_multiroot_fsolver_free , Ptr <gsl_multiroot_fsolver> -> IO ()
#ccall gsl_multiroot_fsolver_set , Ptr <gsl_multiroot_fsolver> -> Ptr <gsl_multiroot_function> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_multiroot_fsolver_iterate , Ptr <gsl_multiroot_fsolver> -> IO CInt
#ccall gsl_multiroot_fsolver_name , Ptr <gsl_multiroot_fsolver> -> IO CString 
#ccall gsl_multiroot_fsolver_root , Ptr <gsl_multiroot_fsolver> -> IO (Ptr <gsl_vector>)
#ccall gsl_multiroot_fsolver_dx , Ptr <gsl_multiroot_fsolver> -> IO (Ptr <gsl_vector>)
#ccall gsl_multiroot_fsolver_f , Ptr <gsl_multiroot_fsolver> -> IO (Ptr <gsl_vector>)

#starttype gsl_multiroot_function_fdf
#field f , FunPtr ( Ptr <gsl_vector> -> Ptr () -> Ptr <gsl_vector> -> IO  CInt)
#field df , FunPtr ( Ptr <gsl_vector> -> Ptr () -> Ptr <gsl_matrix> -> IO  CInt)
#field fdf , FunPtr ( Ptr <gsl_vector> -> Ptr () -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO  CInt)
#field n , CSize
#field params , Ptr ()
#stoptype

#cinline GSL_MULTIROOT_FN_EVAL_F , Ptr <gsl_multiroot_function_fdf> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#cinline GSL_MULTIROOT_FN_EVAL_DF , Ptr <gsl_multiroot_function_fdf> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
#cinline GSL_MULTIROOT_FN_EVAL_F_DF , Ptr <gsl_multiroot_function_fdf> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt

#starttype gsl_multiroot_fdfsolver_type
#field name , CString
#field size , CSize
#field alloc , FunPtr (Ptr () -> CSize -> IO  CInt)
#field set , FunPtr (Ptr () -> Ptr <gsl_multiroot_function_fdf> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO  CInt)
#field iterate , FunPtr (Ptr () -> Ptr <gsl_multiroot_function_fdf> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO  CInt)
#field free , FunPtr (Ptr () -> IO ())
#stoptype

#starttype gsl_multiroot_fdfsolver
#field type , Ptr <gsl_multiroot_fdfsolver_type>
#field fdf , Ptr <gsl_multiroot_function_fdf>
#field x , Ptr <gsl_vector>
#field f , Ptr <gsl_vector>
#field J , Ptr <gsl_matrix>
#field dx , Ptr <gsl_vector>
#field state , Ptr ()
#stoptype

#ccall gsl_multiroot_fdfsolver_alloc , Ptr <gsl_multiroot_fdfsolver_type> -> CSize -> IO (Ptr <gsl_multiroot_fdfsolver>)
#ccall gsl_multiroot_fdfsolver_set , Ptr <gsl_multiroot_fdfsolver> -> Ptr <gsl_multiroot_function_fdf> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_multiroot_fdfsolver_iterate , Ptr <gsl_multiroot_fdfsolver> -> IO CInt
#ccall gsl_multiroot_fdfsolver_free , Ptr <gsl_multiroot_fdfsolver> -> IO ()
#ccall gsl_multiroot_fdfsolver_name , Ptr <gsl_multiroot_fdfsolver> -> IO CString 
#ccall gsl_multiroot_fdfsolver_root , Ptr <gsl_multiroot_fdfsolver> -> IO (Ptr <gsl_vector>)
#ccall gsl_multiroot_fdfsolver_dx , Ptr <gsl_multiroot_fdfsolver> -> IO (Ptr <gsl_vector>)
#ccall gsl_multiroot_fdfsolver_f , Ptr <gsl_multiroot_fdfsolver> -> IO (Ptr <gsl_vector>)
#ccall gsl_multiroot_test_delta , Ptr <gsl_vector> -> Ptr <gsl_vector> -> CDouble -> CDouble -> IO CInt
#ccall gsl_multiroot_test_residual , Ptr <gsl_vector> -> CDouble -> IO CInt

#globalvar gsl_multiroot_fsolver_dnewton , Ptr gsl_multiroot_fsolver_type
#globalvar gsl_multiroot_fsolver_broyden , Ptr gsl_multiroot_fsolver_type
#globalvar gsl_multiroot_fsolver_hybrid , Ptr gsl_multiroot_fsolver_type
#globalvar gsl_multiroot_fsolver_hybrids , Ptr gsl_multiroot_fsolver_type
#globalvar gsl_multiroot_fdfsolver_newton , Ptr gsl_multiroot_fdfsolver_type
#globalvar gsl_multiroot_fdfsolver_gnewton , Ptr gsl_multiroot_fdfsolver_type
#globalvar gsl_multiroot_fdfsolver_hybridj , Ptr gsl_multiroot_fdfsolver_type
#globalvar gsl_multiroot_fdfsolver_hybridsj , Ptr gsl_multiroot_fdfsolver_type

