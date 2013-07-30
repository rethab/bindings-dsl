#include <bindings.dsl.h>
#include <gsl/gsl_poly.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Polynomials.html>

module Bindings.Gsl.Polynomials where
#strict_import
import Bindings.Gsl.ComplexNumbers

#ccall gsl_poly_eval , Ptr CDouble -> CInt -> CInt -> CDouble -> IO CDouble
-- ccall gsl_poly_complex_eval , Ptr CDouble -> CInt -> CInt -> <gsl_complex> -> IO <gsl_complex>
-- ccall gsl_complex_poly_complex_eval , Ptr <gsl_complex> -> CInt -> CInt -> <gsl_complex> -> IO <gsl_complex>
#ccall gsl_poly_dd_taylor , Ptr CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> CSize -> Ptr CDouble -> IO CInt
#ccall gsl_poly_solve_quadratic , CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_poly_complex_solve_quadratic , CDouble -> CDouble -> CDouble -> Ptr <gsl_complex> -> Ptr <gsl_complex> -> IO CInt
#ccall gsl_poly_solve_cubic , CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_poly_complex_solve_cubic , CDouble -> CDouble -> CDouble -> Ptr <gsl_complex> -> Ptr <gsl_complex> -> Ptr <gsl_complex> -> IO CInt

#starttype gsl_poly_complex_workspace
#field nc , CSize
#field matrix , Ptr CDouble
#stoptype

#ccall gsl_poly_complex_workspace_alloc , CSize -> IO (Ptr <gsl_poly_complex_workspace>)
#ccall gsl_poly_complex_workspace_free , Ptr <gsl_poly_complex_workspace> -> IO ()
#ccall gsl_poly_complex_solve , Ptr CDouble -> CSize -> Ptr <gsl_poly_complex_workspace> -> <gsl_complex_packed_ptr> -> IO CInt

