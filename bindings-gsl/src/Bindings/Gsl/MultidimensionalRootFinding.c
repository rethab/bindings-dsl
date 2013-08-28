#include <bindings.cmacros.h>
#include <gsl/gsl_multiroots.h>

BC_INLINE3(GSL_MULTIROOT_FN_EVAL,gsl_multiroot_function*,gsl_vector*,gsl_vector*,int)
BC_INLINE3(GSL_MULTIROOT_FN_EVAL_F,gsl_multiroot_function_fdf*,gsl_vector*,gsl_vector*,int)
BC_INLINE3(GSL_MULTIROOT_FN_EVAL_DF,gsl_multiroot_function_fdf*,gsl_vector*,gsl_matrix*,int)
BC_INLINE4(GSL_MULTIROOT_FN_EVAL_F_DF,gsl_multiroot_function_fdf*,gsl_vector*,gsl_vector*,gsl_matrix*,int)
