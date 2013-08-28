#include <bindings.cmacros.h>
#include <gsl/gsl_multifit_nlin.h>

BC_INLINE3VOID(GSL_MULTIFIT_FN_EVAL,gsl_multifit_function*,gsl_vector*,gsl_vector*)
BC_INLINE3(GSL_MULTIFIT_FN_EVAL_F,gsl_multifit_function_fdf*,gsl_vector*,gsl_vector*,int)
BC_INLINE3(GSL_MULTIFIT_FN_EVAL_DF,gsl_multifit_function_fdf*,gsl_vector*,gsl_matrix*,int)
BC_INLINE4(GSL_MULTIFIT_FN_EVAL_F_DF,gsl_multifit_function_fdf*,gsl_vector*,gsl_vector*,gsl_matrix*,int)
