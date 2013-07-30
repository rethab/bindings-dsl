#include <bindings.dsl.h>
#include <gsl/gsl_qrng.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Quasi_002dRandom-Sequences.html>

module Bindings.Gsl.QuasiRandomSequences where
#strict_import

#starttype gsl_qrng_type
#field name , CString
#field max_dimension , CUInt
#field state_size , FunPtr (CUInt -> IO  CSize)
#field init_state , FunPtr (Ptr () -> CUInt -> IO  CInt)
#field get , FunPtr (Ptr () -> CUInt -> Ptr CDouble -> IO  CInt)
#stoptype

#starttype gsl_qrng
#field type , Ptr <gsl_qrng_type>
#field dimension , CUInt
#field state_size , CSize
#field state , Ptr ()
#stoptype

#globalvar gsl_qrng_niederreiter_2 , Ptr gsl_qrng_type
#globalvar gsl_qrng_sobol , Ptr gsl_qrng_type
#globalvar gsl_qrng_halton , Ptr gsl_qrng_type
#globalvar gsl_qrng_reversehalton , Ptr gsl_qrng_type

#ccall gsl_qrng_alloc , Ptr <gsl_qrng_type> -> CUInt -> IO (Ptr <gsl_qrng>)
#ccall gsl_qrng_memcpy , Ptr <gsl_qrng> -> Ptr <gsl_qrng> -> IO CInt
#ccall gsl_qrng_clone , Ptr <gsl_qrng> -> IO (Ptr <gsl_qrng>)
#ccall gsl_qrng_free , Ptr <gsl_qrng> -> IO ()
#ccall gsl_qrng_init , Ptr <gsl_qrng> -> IO ()
#ccall gsl_qrng_name , Ptr <gsl_qrng> -> IO CString 
#ccall gsl_qrng_size , Ptr <gsl_qrng> -> IO CSize
#ccall gsl_qrng_state , Ptr <gsl_qrng> -> IO (Ptr ())
#ccall gsl_qrng_get , Ptr <gsl_qrng> -> Ptr CDouble -> IO CInt

