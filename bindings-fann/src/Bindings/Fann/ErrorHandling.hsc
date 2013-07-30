#include <bindings.dsl.h>
#include <fann.h>

-- | <http://leenissen.dk/fann/fann_1_2_0/x1499.html>

module Bindings.Fann.ErrorHandling where
#strict_import
import Bindings.Fann.DataStructures

#ccall fann_get_errno , Ptr <fann_error> -> IO CUInt
#ccall fann_get_errstr , Ptr <fann_error> -> IO CString
#ccall fann_reset_errno , Ptr <fann_error> -> IO ()
#ccall fann_reset_errstr , Ptr <fann_error> -> IO ()
#ccall fann_set_error_log , Ptr <fann_error> -> Ptr CFile -> IO ()
#ccall fann_print_error , Ptr <fann> -> IO ()

