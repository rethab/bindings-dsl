#include <bindings.cmacros.h>
#include <gsl/gsl_monte_plain.h>
#include <gsl/gsl_monte_miser.h>
#include <gsl/gsl_monte_vegas.h>

BC_INLINE2(GSL_MONTE_FN_EVAL,gsl_monte_function*,double*,double)
