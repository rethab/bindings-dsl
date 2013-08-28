#include <bindings.cmacros.h>
#include <gsl/gsl_math.h>

BC_INLINE2(GSL_FN_EVAL,gsl_function*,double,double)
BC_INLINE2(GSL_FN_FDF_EVAL_F,gsl_function_fdf*,double,double)
BC_INLINE2(GSL_FN_FDF_EVAL_DF,gsl_function_fdf*,double,double)
BC_INLINE3(GSL_FN_VEC_EVAL,gsl_function_vec*,double,double*,double)
BC_INLINE4VOID(GSL_FN_FDF_EVAL_F_DF,gsl_function_fdf*,double,double*,double*)
