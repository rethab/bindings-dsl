#include <bindings.dsl.h>
#include <gsl/gsl_multiset.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Multisets.html>

module Bindings.Gsl.Multisets where
#strict_import

#starttype gsl_multiset
#field n , CSize
#field k , CSize
#field data , Ptr CSize
#stoptype

#ccall gsl_multiset_alloc , CSize -> CSize -> IO (Ptr <gsl_multiset>)
#ccall gsl_multiset_calloc , CSize -> CSize -> IO (Ptr <gsl_multiset>)
#ccall gsl_multiset_init_first , Ptr <gsl_multiset> -> IO ()
#ccall gsl_multiset_init_last , Ptr <gsl_multiset> -> IO ()
#ccall gsl_multiset_free , Ptr <gsl_multiset> -> IO ()
#ccall gsl_multiset_memcpy , Ptr <gsl_multiset> -> \
    Ptr <gsl_multiset> -> IO CInt

#cinline gsl_multiset_get , Ptr <gsl_multiset> -> CSize -> IO CSize

#ccall gsl_multiset_n , Ptr <gsl_multiset> -> IO CSize
#ccall gsl_multiset_k , Ptr <gsl_multiset> -> IO CSize
#ccall gsl_multiset_data , Ptr <gsl_multiset> -> IO (Ptr CSize)
#ccall gsl_multiset_valid , Ptr <gsl_multiset> -> IO CInt

#ccall gsl_multiset_next , Ptr <gsl_multiset> -> IO CInt
#ccall gsl_multiset_prev , Ptr <gsl_multiset> -> IO CInt

#ccall gsl_multiset_fwrite , Ptr CFile -> Ptr <gsl_multiset> -> IO CInt
#ccall gsl_multiset_fread , Ptr CFile -> Ptr <gsl_multiset> -> IO CInt
#ccall gsl_multiset_fprintf , Ptr CFile -> Ptr <gsl_multiset> -> \
    CString -> IO CInt
#ccall gsl_multiset_fscanf , Ptr CFile -> Ptr <gsl_multiset> -> IO CInt
