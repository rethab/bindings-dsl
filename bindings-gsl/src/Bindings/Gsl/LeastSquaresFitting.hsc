#include <bindings.dsl.h>
#include <gsl/gsl_fit.h>
#include <gsl/gsl_multifit.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Least_002dSquares-Fitting.html>

module Bindings.Gsl.LeastSquaresFitting where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes

#ccall gsl_fit_linear , Ptr CDouble -> CSize -> \
    Ptr CDouble -> CSize -> CSize -> Ptr CDouble -> \
    Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> \
    Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_fit_wlinear , Ptr CDouble -> CSize -> \
    Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> \
    CSize -> Ptr CDouble -> Ptr CDouble -> \
    Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> \
    Ptr CDouble -> IO CInt
#ccall gsl_fit_linear_est , CDouble -> CDouble -> \
    CDouble -> CDouble -> CDouble -> CDouble -> \
    Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_fit_mul , Ptr CDouble -> CSize -> \
    Ptr CDouble -> CSize -> CSize -> Ptr CDouble -> \
    Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_fit_wmul , Ptr CDouble -> CSize -> \
    Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> \
    CSize -> Ptr CDouble -> Ptr CDouble -> \
    Ptr CDouble -> IO CInt
#ccall gsl_fit_mul_est , CDouble -> CDouble -> \
    CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt

#starttype gsl_multifit_linear_workspace
#field n , CSize
#field p , CSize
#field A , Ptr <gsl_matrix>
#field Q , Ptr <gsl_matrix>
#field QSI , Ptr <gsl_matrix>
#field S , Ptr <gsl_vector>
#field t , Ptr <gsl_vector>
#field xt , Ptr <gsl_vector>
#field D , Ptr <gsl_vector>
#stoptype

#ccall gsl_multifit_linear_alloc , CSize -> CSize -> \
    IO (Ptr <gsl_multifit_linear_workspace>)
#ccall gsl_multifit_linear_free , Ptr <gsl_multifit_linear_workspace> -> IO ()
#ccall gsl_multifit_linear , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> \
    Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr CDouble -> \
    Ptr <gsl_multifit_linear_workspace> -> IO CInt
#ccall gsl_multifit_wlinear , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> \
    Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> \
    Ptr CDouble -> Ptr <gsl_multifit_linear_workspace> -> IO CInt
#ccall gsl_multifit_linear_svd , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> \
    CDouble -> Ptr CSize -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> \
    Ptr CDouble -> Ptr <gsl_multifit_linear_workspace> -> IO CInt
#ccall gsl_multifit_wlinear_svd , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> \
    Ptr <gsl_vector> -> CDouble -> Ptr CSize -> Ptr <gsl_vector> -> \
    Ptr <gsl_matrix> -> Ptr CDouble -> \
    Ptr <gsl_multifit_linear_workspace> -> IO CInt
#ccall gsl_multifit_linear_usvd , Ptr <gsl_matrix> ->  Ptr <gsl_vector> -> \
    CDouble -> Ptr CSize -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> \
    Ptr CDouble -> Ptr <gsl_multifit_linear_workspace> -> IO CInt
#ccall gsl_multifit_wlinear_usvd , Ptr <gsl_matrix> ->  Ptr <gsl_vector> -> \
    Ptr <gsl_vector> -> CDouble -> Ptr CSize -> Ptr <gsl_vector> -> \
    Ptr <gsl_matrix> -> Ptr CDouble -> Ptr <gsl_multifit_linear_workspace> -> \
    IO CInt
#ccall gsl_multifit_linear_est , Ptr <gsl_vector> -> Ptr <gsl_vector> -> \
    Ptr <gsl_matrix> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_multifit_linear_residuals , Ptr <gsl_matrix> -> \
    Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
