#include <bindings.dsl.h>
#include <gsl/gsl_deriv.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Numerical-Differentiation.html>

module Bindings.Gsl.NumericalDifferentiation where
#strict_import
import Bindings.Gsl.MathematicalFunctions

#ccall gsl_deriv_central , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_deriv_backward , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_deriv_forward , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt

