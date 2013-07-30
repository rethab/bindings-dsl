#include <bindings.dsl.h>
#include <gsl/gsl_complex_math.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Complex-Numbers.html>

module Bindings.Gsl.ComplexNumbers where
#strict_import

#integral_t gsl_complex_packed
#integral_t gsl_complex_packed_float
#integral_t gsl_complex_packed_long_double
#integral_t gsl_const_complex_packed
#integral_t gsl_const_complex_packed_float
#integral_t gsl_const_complex_packed_long_double
#integral_t gsl_complex_packed_array
#integral_t gsl_complex_packed_array_float
#integral_t gsl_complex_packed_array_long_double
#integral_t gsl_const_complex_packed_array
#integral_t gsl_const_complex_packed_array_float
#integral_t gsl_const_complex_packed_array_long_double
#integral_t gsl_complex_packed_ptr
#integral_t gsl_complex_packed_float_ptr
#integral_t gsl_complex_packed_long_double_ptr
#integral_t gsl_const_complex_packed_ptr
#integral_t gsl_const_complex_packed_float_ptr
#integral_t gsl_const_complex_packed_long_double_ptr

-- #starttype gsl_complex_long_double
-- #array_field dat , CLDouble
-- #stoptype

#starttype gsl_complex
#array_field dat , CDouble
#stoptype

#starttype gsl_complex_float
#array_field dat , CFloat
#stoptype

