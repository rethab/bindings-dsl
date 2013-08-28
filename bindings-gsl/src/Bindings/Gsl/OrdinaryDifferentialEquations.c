#include <bindings.cmacros.h>
#include <gsl/gsl_odeiv2.h>

BC_INLINE4(GSL_ODEIV_FN_EVAL,gsl_odeiv2_system*,double,double*,double*,int)
BC_INLINE5(GSL_ODEIV_JA_EVAL,gsl_odeiv2_system*,double,double*,double*,double*,int)
