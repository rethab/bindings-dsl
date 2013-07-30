#include <bindings.dsl.h>
#include <fann.h>

-- | <http://leenissen.dk/fann/fann_1_2_0/x609.html>

module Bindings.Fann.TrainingData where
#strict_import
import Bindings.Fann.DataStructures

#ccall fann_read_train_from_file , CString -> IO (Ptr <fann_train_data>)
#ccall fann_save_train , Ptr <fann_train_data> -> Ptr CFile -> IO ()
#ccall fann_save_train_to_fixed , Ptr <fann_train_data> -> Ptr CFile -> CUInt -> IO ()
#ccall fann_destroy_train , Ptr <fann_train_data> -> IO ()
#ccall fann_train_epoch , Ptr <fann> -> Ptr <fann_train_data> -> IO CFloat
#ccall fann_test_data , Ptr <fann> -> Ptr <fann_train_data> -> IO CFloat
#ccall fann_train_on_data , Ptr <fann> -> Ptr <fann_train_data> -> CUInt -> CUInt -> CFloat -> IO ()
#ccall fann_train_on_data_callback , Ptr <fann> -> Ptr <fann_train_data> -> CUInt -> CUInt -> CFloat -> FunPtr (CUInt -> CFloat -> IO CInt) -> IO ()
#ccall fann_train_on_file , Ptr <fann> -> CString -> CUInt -> CUInt -> CFloat -> IO ()
#ccall fann_train_on_file_callback , Ptr <fann> -> CString -> CUInt -> CUInt -> CFloat -> FunPtr (CUInt -> CFloat -> IO CInt) -> IO ()
#ccall fann_shuffle_train_data , Ptr <fann_train_data> -> IO ()
#ccall fann_merge_train_data , Ptr <fann_train_data> -> Ptr <fann_train_data> -> IO (Ptr <fann_train_data>)
#ccall fann_duplicate_train_data , Ptr <fann_train_data> -> IO (Ptr <fann_train_data>)

