#include <bindings.cmacros.h>
#include <gsl/gsl_version.h>
#include <gsl/gsl_mode.h>
#include <gsl/gsl_multifit.h>
#include <gsl/gsl_multifit_nlin.h>
#include <gsl/gsl_monte_plain.h>
#include <gsl/gsl_vector_complex.h>
#include <gsl/gsl_odeiv.h>
#include <gsl/gsl_multimin.h>
#include <gsl/gsl_multiroots.h>

BC_GLOBALARRAY(gsl_version,char)
BC_INLINE1(GSL_MODE_PREC,gsl_mode_t,unsigned)
BC_INLINE3VOID(GSL_MULTIFIT_FN_EVAL,gsl_multifit_function*,gsl_vector*,gsl_vector*)
BC_INLINE3(GSL_MULTIFIT_FN_EVAL_F,gsl_multifit_function_fdf*,gsl_vector*,gsl_vector*,int)
BC_INLINE3(GSL_MULTIFIT_FN_EVAL_DF,gsl_multifit_function_fdf*,gsl_vector*,gsl_matrix*,int)
BC_INLINE4(GSL_MULTIFIT_FN_EVAL_F_DF,gsl_multifit_function_fdf*,gsl_vector*,gsl_vector*,gsl_matrix*,int)
BC_INLINE2(GSL_COMPLEX_AT,gsl_vector_complex*,size_t,gsl_complex*)
BC_INLINE2(GSL_COMPLEX_FLOAT_AT,gsl_vector_complex_float*,size_t,gsl_complex_float*)
BC_INLINE2(GSL_COMPLEX_LONG_DOUBLE_AT,gsl_vector_complex_long_double*,size_t,gsl_complex_long_double*)

BC_INLINE4(GSL_ODEIV_FN_EVAL,gsl_odeiv_system*,double,double*,double*,int)
BC_INLINE5(GSL_ODEIV_JA_EVAL,gsl_odeiv_system*,double,double*,double*,double*,int)
BC_INLINE2(GSL_MULTIMIN_FN_EVAL,gsl_multimin_function*,gsl_vector*,double)
BC_INLINE2(GSL_MULTIMIN_FN_EVAL_F,gsl_multimin_function_fdf*,gsl_vector*,double)
BC_INLINE3VOID(GSL_MULTIMIN_FN_EVAL_DF,gsl_multimin_function_fdf*,gsl_vector*,gsl_vector*)
BC_INLINE4VOID(GSL_MULTIMIN_FN_EVAL_F_DF,gsl_multimin_function_fdf*,gsl_vector*,double*,gsl_vector*)
BC_INLINE2(GSL_MONTE_FN_EVAL,gsl_monte_function*,double*,double)
BC_INLINE3(GSL_MULTIROOT_FN_EVAL,gsl_multiroot_function*,gsl_vector*,gsl_vector*,int)
BC_INLINE3(GSL_MULTIROOT_FN_EVAL_F,gsl_multiroot_function_fdf*,gsl_vector*,gsl_vector*,int)
BC_INLINE3(GSL_MULTIROOT_FN_EVAL_DF,gsl_multiroot_function_fdf*,gsl_vector*,gsl_matrix*,int)
BC_INLINE4(GSL_MULTIROOT_FN_EVAL_F_DF,gsl_multiroot_function_fdf*,gsl_vector*,gsl_vector*,gsl_matrix*,int)

BC_INLINE2(GSL_FN_EVAL,gsl_function*,double,double)
BC_INLINE2(GSL_FN_FDF_EVAL_F,gsl_function_fdf*,double,double)
BC_INLINE2(GSL_FN_FDF_EVAL_DF,gsl_function_fdf*,double,double)
BC_INLINE3(GSL_FN_VEC_EVAL,gsl_function_vec*,double,double*,double)
BC_INLINE4VOID(GSL_FN_FDF_EVAL_F_DF,gsl_function_fdf*,double,double*,double*)
BC_INLINE2(GSL_ERROR_SELECT_2,int,int,int)
BC_INLINE3(GSL_ERROR_SELECT_3,int,int,int,int)
BC_INLINE4(GSL_ERROR_SELECT_4,int,int,int,int,int)
BC_INLINE5(GSL_ERROR_SELECT_5,int,int,int,int,int,int)
BC_INLINE2VOID(GSL_STATUS_UPDATE,int*,int)
