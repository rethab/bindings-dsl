#include <bindings.dsl.h>
#include <gsl/gsl_version.h>

module Bindings.Gsl.Version where
#strict_import

#globalarray GSL_VERSION , CChar
#num GSL_MAJOR_VERSION
#num GSL_MINOR_VERSION
#globalarray gsl_version , CChar
