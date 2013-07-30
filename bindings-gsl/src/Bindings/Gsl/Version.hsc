#include <bindings.dsl.h>
#include <gsl/gsl_version.h>

module Bindings.Gsl.Version where
#strict_import

#pointer GSL_VERSION
#globalarray gsl_version , CChar
