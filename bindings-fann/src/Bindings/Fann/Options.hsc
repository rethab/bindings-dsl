#include <bindings.dsl.h>
#include <fann.h>

-- | <http://leenissen.dk/fann/fann_1_2_0/x938.html>

module Bindings.Fann.Options where
#strict_import
import Bindings.Fann.DataStructures

#ccall fann_print_parameters , Ptr <fann> -> IO ()
#ccall fann_get_training_algorithm , Ptr <fann> -> IO CUInt
#ccall fann_set_training_algorithm , Ptr <fann> -> CUInt -> IO ()
#ccall fann_get_learning_rate , Ptr <fann> -> IO CFloat
#ccall fann_set_learning_rate , Ptr <fann> -> CFloat -> IO ()
#ccall fann_get_activation_function_hidden , Ptr <fann> -> IO CUInt
#ccall fann_set_activation_function_hidden , Ptr <fann> -> CUInt -> IO ()
#ccall fann_get_activation_function_output , Ptr <fann> -> IO CUInt
#ccall fann_set_activation_function_output , Ptr <fann> -> CUInt -> IO ()
#ccall fann_get_activation_steepness_hidden , Ptr <fann> -> IO CFloat
#ccall fann_set_activation_steepness_hidden , Ptr <fann> -> CFloat -> IO ()
#ccall fann_get_activation_steepness_output , Ptr <fann> -> IO CFloat
#ccall fann_set_activation_steepness_output , Ptr <fann> -> CFloat -> IO ()
#ccall fann_set_train_error_function , Ptr <fann> -> CUInt -> IO ()
#ccall fann_get_train_error_function , Ptr <fann> -> IO CUInt
#ccall fann_get_quickprop_decay , Ptr <fann> -> IO CFloat
#ccall fann_set_quickprop_decay , Ptr <fann> -> CFloat -> IO ()
#ccall fann_get_quickprop_mu , Ptr <fann> -> IO CFloat
#ccall fann_set_quickprop_mu , Ptr <fann> -> CFloat -> IO ()
#ccall fann_get_rprop_increase_factor , Ptr <fann> -> IO CFloat
#ccall fann_set_rprop_increase_factor , Ptr <fann> -> CFloat -> IO ()
#ccall fann_get_rprop_decrease_factor , Ptr <fann> -> IO CFloat
#ccall fann_set_rprop_decrease_factor , Ptr <fann> -> CFloat -> IO ()
#ccall fann_get_rprop_delta_min , Ptr <fann> -> IO CFloat
#ccall fann_set_rprop_delta_min , Ptr <fann> -> CFloat -> IO ()
#ccall fann_get_rprop_delta_max , Ptr <fann> -> IO CFloat
#ccall fann_set_rprop_delta_max , Ptr <fann> -> CFloat -> IO ()
#ccall fann_get_num_input , Ptr <fann> -> IO CUInt
#ccall fann_get_num_output , Ptr <fann> -> IO CUInt
#ccall fann_get_total_neurons , Ptr <fann> -> IO CUInt
#ccall fann_get_total_connections , Ptr <fann> -> IO CUInt

