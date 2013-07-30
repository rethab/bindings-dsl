#include <bindings.dsl.h>
#include <gsl/gsl_combination.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Combinations.html>

module Bindings.Gsl.Combinations where
#strict_import

#starttype gsl_combination
#field n , CSize
#field k , CSize
#field data , Ptr CSize
#stoptype

#ccall gsl_combination_alloc , CSize -> CSize -> IO (Ptr <gsl_combination>)
#ccall gsl_combination_calloc , CSize -> CSize -> IO (Ptr <gsl_combination>)
#ccall gsl_combination_init_first , Ptr <gsl_combination> -> IO ()
#ccall gsl_combination_init_last , Ptr <gsl_combination> -> IO ()
#ccall gsl_combination_free , Ptr <gsl_combination> -> IO ()
#ccall gsl_combination_memcpy , Ptr <gsl_combination> -> Ptr <gsl_combination> -> IO CInt
#ccall gsl_combination_fread , Ptr CFile -> Ptr <gsl_combination> -> IO CInt
#ccall gsl_combination_fwrite , Ptr CFile -> Ptr <gsl_combination> -> IO CInt
#ccall gsl_combination_fscanf , Ptr CFile -> Ptr <gsl_combination> -> IO CInt
#ccall gsl_combination_fprintf , Ptr CFile -> Ptr <gsl_combination> -> CString -> IO CInt
#ccall gsl_combination_n , Ptr <gsl_combination> -> IO CSize
#ccall gsl_combination_k , Ptr <gsl_combination> -> IO CSize
#ccall gsl_combination_data , Ptr <gsl_combination> -> IO (Ptr CSize)
#ccall gsl_combination_valid , Ptr <gsl_combination> -> IO CInt
#ccall gsl_combination_next , Ptr <gsl_combination> -> IO CInt
#ccall gsl_combination_prev , Ptr <gsl_combination> -> IO CInt
#ccall gsl_combination_get , Ptr <gsl_combination> -> CSize -> IO CSize

