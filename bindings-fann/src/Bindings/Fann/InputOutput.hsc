#include <bindings.dsl.h>
#include <fann.h>

-- | <http://leenissen.dk/fann/fann_1_2_0/x472.html>

module Bindings.Fann.InputOutput where
#strict_import
import Bindings.Fann.DataStructures

#ccall fann_save , Ptr <fann> -> CString -> IO ()
#ccall fann_save_to_fixed , Ptr <fann> -> CString -> IO ()
#ccall fann_create_from_file , CString -> IO (Ptr <fann>)

