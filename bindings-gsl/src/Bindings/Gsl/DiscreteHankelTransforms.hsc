#include <bindings.dsl.h>
#include <gsl/gsl_dht.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Discrete-Hankel-Transforms.html>

module Bindings.Gsl.DiscreteHankelTransforms where
#strict_import

#starttype gsl_dht
#field size , CSize
#field nu , CDouble
#field xmax , CDouble
#field kmax , CDouble
#field j , Ptr CDouble
#field Jjj , Ptr CDouble
#field J2 , Ptr CDouble
#stoptype

#ccall gsl_dht_alloc , CSize -> IO (Ptr <gsl_dht>)
#ccall gsl_dht_new , CSize -> CDouble -> CDouble -> IO (Ptr <gsl_dht>)
#ccall gsl_dht_init , Ptr <gsl_dht> -> CDouble -> CDouble -> IO CInt
#ccall gsl_dht_x_sample , Ptr <gsl_dht> -> CInt -> IO CDouble
#ccall gsl_dht_k_sample , Ptr <gsl_dht> -> CInt -> IO CDouble
#ccall gsl_dht_free , Ptr <gsl_dht> -> IO ()
#ccall gsl_dht_apply , Ptr <gsl_dht> -> Ptr CDouble -> Ptr CDouble -> IO CInt

