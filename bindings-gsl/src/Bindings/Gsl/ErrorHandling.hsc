#include <bindings.dsl.h>
#include <gsl/gsl_errno.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Error-Handling.html>

module Bindings.Gsl.ErrorHandling where
#strict_import

#num GSL_SUCCESS
#num GSL_FAILURE
#num GSL_CONTINUE
#num GSL_EDOM
#num GSL_ERANGE
#num GSL_EFAULT
#num GSL_EINVAL
#num GSL_EFAILED
#num GSL_EFACTOR
#num GSL_ESANITY
#num GSL_ENOMEM
#num GSL_EBADFUNC
#num GSL_ERUNAWAY
#num GSL_EMAXITER
#num GSL_EZERODIV
#num GSL_EBADTOL
#num GSL_ETOL
#num GSL_EUNDRFLW
#num GSL_EOVRFLW
#num GSL_ELOSS
#num GSL_EROUND
#num GSL_EBADLEN
#num GSL_ENOTSQR
#num GSL_ESING
#num GSL_EDIVERGE
#num GSL_EUNSUP
#num GSL_EUNIMPL
#num GSL_ECACHE
#num GSL_ETABLE
#num GSL_ENOPROG
#num GSL_ENOPROGJ
#num GSL_ETOLF
#num GSL_ETOLX
#num GSL_ETOLG
#num GSL_EOF

#ccall gsl_error , CString -> CString -> CInt -> CInt -> CInt -> IO ()
#ccall gsl_stream_printf , CString -> CString -> CInt -> CInt -> CString -> IO ()
#ccall gsl_strerror , CInt -> IO CString 
#callback_t gsl_error_handler_t , CString -> CString -> CInt -> CInt -> CInt -> IO ()
#callback_t gsl_stream_handler_t , CString -> CString -> CInt -> CInt -> CString -> IO ()
#ccall gsl_set_error_handler , Ptr <gsl_error_handler_t> -> IO (Ptr <gsl_error_handler_t>)
#ccall gsl_set_error_handler_off , IO (Ptr <gsl_error_handler_t>)
#ccall gsl_set_stream_handler , Ptr <gsl_stream_handler_t> -> IO (Ptr <gsl_stream_handler_t>)
#ccall gsl_set_stream , Ptr CFile -> IO (Ptr CFile)

#cinline GSL_ERROR_SELECT_2 , CInt -> CInt -> CInt
#cinline GSL_ERROR_SELECT_3 , CInt -> CInt -> CInt -> CInt
#cinline GSL_ERROR_SELECT_4 , CInt -> CInt -> CInt -> CInt -> CInt
#cinline GSL_ERROR_SELECT_5 , CInt -> CInt -> CInt -> CInt -> CInt -> CInt
#cinline GSL_STATUS_UPDATE , Ptr CInt -> CInt -> IO ()

