#include <bindings.dsl.h>
#include <fann.h>

-- | <http://leenissen.dk/fann/fann_1_2_0/x534.html>

module Bindings.Fann.Training where
#strict_import
import Bindings.Fann.DataStructures

#ccall fann_train , Ptr <fann> -> Ptr CFloat -> Ptr CFloat -> IO ()
#ccall fann_test , Ptr <fann> -> Ptr CFloat -> Ptr CFloat -> IO (Ptr CFloat)
#ccall fann_get_MSE , Ptr <fann> -> IO CFloat
#ccall fann_reset_MSE , Ptr <fann> -> IO ()

