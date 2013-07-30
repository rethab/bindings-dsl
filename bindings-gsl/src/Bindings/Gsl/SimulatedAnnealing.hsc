#include <bindings.dsl.h>
#include <gsl/gsl_siman.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Simulated-Annealing.html>

module Bindings.Gsl.SimulatedAnnealing where
#strict_import
import Bindings.Gsl.RandomNumberGeneration

#callback gsl_siman_Efunc_t , Ptr () -> IO CDouble
#callback gsl_siman_step_t , Ptr <gsl_rng> -> Ptr () -> CDouble -> IO ()
#callback gsl_siman_metric_t , Ptr () -> Ptr () -> IO CDouble

#callback gsl_siman_print_t , FunPtr (Ptr () -> IO ())
#callback gsl_siman_copy_t , FunPtr (Ptr () -> Ptr () -> IO ())
#callback gsl_siman_copy_construct_t , FunPtr (Ptr () -> IO (Ptr ()))
#callback gsl_siman_destroy_t , FunPtr (Ptr () -> IO ())

#starttype gsl_siman_params_t
#field n_tries , CInt
#field iters_fixed_T , CInt
#field step_size , CDouble
#field k , CDouble
#field t_initial , CDouble
#field mu_t , CDouble
#field t_min , CDouble
#stoptype

-- ccall gsl_siman_solve , Ptr <gsl_rng> -> Ptr () -> <gsl_siman_Efunc_t> -> <gsl_siman_step_t> -> <gsl_siman_metric_t> -> <gsl_siman_print_t> -> <gsl_siman_copy_t> -> <gsl_siman_copy_construct_t> -> <gsl_siman_destroy_t> -> CSize -> <gsl_siman_params_t> -> IO ()
-- ccall gsl_siman_solve_many , Ptr <gsl_rng> -> Ptr () -> <gsl_siman_Efunc_t> -> <gsl_siman_step_t> -> <gsl_siman_metric_t> -> <gsl_siman_print_t> -> CSize -> <gsl_siman_params_t> -> IO ()

