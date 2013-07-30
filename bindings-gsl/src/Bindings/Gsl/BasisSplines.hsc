#include <bindings.dsl.h>
#include <gsl/gsl_bspline.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Basis-Splines.html>

module Bindings.Gsl.BasisSplines where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes

#starttype gsl_bspline_workspace
#field k , CSize
#field km1 , CSize
#field l , CSize
#field nbreak , CSize
#field n , CSize
#field knots , Ptr <gsl_vector>
#field deltal , Ptr <gsl_vector>
#field deltar , Ptr <gsl_vector>
#field B , Ptr <gsl_vector>
#stoptype

#starttype gsl_bspline_deriv_workspace
#field k , CSize
#field A , Ptr <gsl_matrix>
#field dB , Ptr <gsl_matrix>
#stoptype

#ccall gsl_bspline_alloc , CSize -> CSize -> IO (Ptr <gsl_bspline_workspace>)
#ccall gsl_bspline_free , Ptr <gsl_bspline_workspace> -> IO ()
#ccall gsl_bspline_ncoeffs , Ptr <gsl_bspline_workspace> -> IO CSize
#ccall gsl_bspline_order , Ptr <gsl_bspline_workspace> -> IO CSize
#ccall gsl_bspline_nbreak , Ptr <gsl_bspline_workspace> -> IO CSize
#ccall gsl_bspline_breakpoint , CSize -> Ptr <gsl_bspline_workspace> -> IO CDouble
#ccall gsl_bspline_knots , Ptr <gsl_vector> -> Ptr <gsl_bspline_workspace> -> IO CInt
#ccall gsl_bspline_knots_uniform , CDouble -> CDouble -> Ptr <gsl_bspline_workspace> -> IO CInt
#ccall gsl_bspline_eval , CDouble -> Ptr <gsl_vector> -> Ptr <gsl_bspline_workspace> -> IO CInt
#ccall gsl_bspline_eval_nonzero , CDouble -> Ptr <gsl_vector> -> Ptr CSize -> Ptr CSize -> Ptr <gsl_bspline_workspace> -> IO CInt
#ccall gsl_bspline_deriv_alloc , CSize -> IO (Ptr <gsl_bspline_deriv_workspace>)
#ccall gsl_bspline_deriv_free , Ptr <gsl_bspline_deriv_workspace> -> IO ()
#ccall gsl_bspline_deriv_eval , CDouble -> CSize -> Ptr <gsl_matrix> -> Ptr <gsl_bspline_workspace> -> Ptr <gsl_bspline_deriv_workspace> -> IO CInt
#ccall gsl_bspline_deriv_eval_nonzero , CDouble -> CSize -> Ptr <gsl_matrix> -> Ptr CSize -> Ptr CSize -> Ptr <gsl_bspline_workspace> -> Ptr <gsl_bspline_deriv_workspace> -> IO CInt

