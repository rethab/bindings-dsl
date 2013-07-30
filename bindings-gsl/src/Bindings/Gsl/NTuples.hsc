#include <bindings.dsl.h>
#include <gsl/gsl_ntuple.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/N_002dtuples.html>

module Bindings.Gsl.NTuples where
#strict_import
import Bindings.Gsl.Histograms

#starttype gsl_ntuple
#field file , Ptr CFile
#field ntuple_data , Ptr ()
#field size , CSize
#stoptype

#starttype gsl_ntuple_select_fn
#field function , FunPtr (Ptr () -> Ptr () -> IO  CInt)
#field params , Ptr ()
#stoptype

#starttype gsl_ntuple_value_fn
#field function , FunPtr (Ptr () -> Ptr () -> IO  CDouble)
#field params , Ptr ()
#stoptype

#ccall gsl_ntuple_open , CString -> Ptr () -> CSize -> IO (Ptr <gsl_ntuple>)
#ccall gsl_ntuple_create , CString -> Ptr () -> CSize -> IO (Ptr <gsl_ntuple>)
#ccall gsl_ntuple_write , Ptr <gsl_ntuple> -> IO CInt
#ccall gsl_ntuple_read , Ptr <gsl_ntuple> -> IO CInt
#ccall gsl_ntuple_bookdata , Ptr <gsl_ntuple> -> IO CInt
#ccall gsl_ntuple_project , Ptr <gsl_histogram> -> Ptr <gsl_ntuple> -> Ptr <gsl_ntuple_value_fn> -> Ptr <gsl_ntuple_select_fn> -> IO CInt
#ccall gsl_ntuple_close , Ptr <gsl_ntuple> -> IO CInt

