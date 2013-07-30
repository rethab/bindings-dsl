#include <bindings.dsl.h>
#include <fann.h>

-- | <http://leenissen.dk/fann/fann_1_2_0/c253.html#api.sec.create_destroy>

module Bindings.Fann.CreationDestructionExecution where
#strict_import
import Bindings.Fann.DataStructures

#ccall fann_create_array , CFloat -> CFloat -> CUInt -> Ptr CUInt -> IO (Ptr <fann>)
#ccall fann_create_shortcut_array , CFloat -> CUInt -> Ptr CUInt -> IO (Ptr <fann>)
#ccall fann_destroy , Ptr <fann> -> IO ()
#ccall fann_run , Ptr <fann> -> Ptr CFloat -> IO (Ptr CFloat)
#ccall fann_randomize_weights , Ptr <fann> -> CFloat -> CFloat -> IO ()
#ccall fann_init_weights , Ptr <fann> -> Ptr <fann_train_data> -> IO ()
#ccall fann_print_connections , Ptr <fann> -> IO ()
