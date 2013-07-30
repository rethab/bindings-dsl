#include <cddb/cddb.h>
#include <bindings.dsl.h>

-- | <http://libcddb.sourceforge.net/API/cddb__error_8h.html>

module Bindings.Libcddb.CddbError where
#strict_import

#integral_t cddb_error_t

#num CDDB_ERR_OK
#num CDDB_ERR_OUT_OF_MEMORY
#num CDDB_ERR_LINE_SIZE
#num CDDB_ERR_NOT_IMPLEMENTED
#num CDDB_ERR_UNKNOWN
#num CDDB_ERR_SERVER_ERROR
#num CDDB_ERR_UNKNOWN_HOST_NAME
#num CDDB_ERR_CONNECT
#num CDDB_ERR_PERMISSION_DENIED
#num CDDB_ERR_NOT_CONNECTED
#num CDDB_ERR_UNEXPECTED_EOF
#num CDDB_ERR_INVALID_RESPONSE
#num CDDB_ERR_DISC_NOT_FOUND
#num CDDB_ERR_DATA_MISSING
#num CDDB_ERR_TRACK_NOT_FOUND
#num CDDB_ERR_REJECTED
#num CDDB_ERR_EMAIL_INVALID
#num CDDB_ERR_INVALID_CHARSET
#num CDDB_ERR_ICONV_FAIL
#num CDDB_ERR_PROXY_AUTH
#num CDDB_ERR_INVALID
#num CDDB_ERR_LAST

#ccall cddb_error_str , <cddb_error_t> -> IO CString
#ccall cddb_error_stream_print , Ptr CFile -> <cddb_error_t> -> IO ()
#ccall cddb_error_print , <cddb_error_t> -> IO ()
