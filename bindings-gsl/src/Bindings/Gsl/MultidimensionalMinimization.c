#include <bindings.cmacros.h>
#include <gsl/gsl_multimin.h>

BC_INLINE2(GSL_MULTIMIN_FN_EVAL,gsl_multimin_function*,gsl_vector*,double)
BC_INLINE2(GSL_MULTIMIN_FN_EVAL_F,gsl_multimin_function_fdf*,gsl_vector*,double)
BC_INLINE3VOID(GSL_MULTIMIN_FN_EVAL_DF,gsl_multimin_function_fdf*,gsl_vector*,gsl_vector*)
BC_INLINE4VOID(GSL_MULTIMIN_FN_EVAL_F_DF,gsl_multimin_function_fdf*,gsl_vector*,double*,gsl_vector*)
