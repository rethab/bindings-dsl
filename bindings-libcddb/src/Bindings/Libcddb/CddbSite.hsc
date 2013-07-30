#include <cddb/cddb.h>
#include <bindings.dsl.h>

-- | <http://libcddb.sourceforge.net/API/cddb__site_8h.html>

module Bindings.Libcddb.CddbSite where
#strict_import
import Bindings.Libcddb.CddbError

#opaque_t cddb_site_t

#integral_t cddb_protocol_t

#num PROTO_UNKNOWN
#num PROTO_CDDBP
#num PROTO_HTTP

#ccall cddb_site_new , IO (Ptr <cddb_site_t>)
#ccall cddb_site_destroy , Ptr <cddb_site_t> -> IO <cddb_error_t>
#ccall cddb_site_clone , Ptr <cddb_site_t> -> IO (Ptr <cddb_site_t>)
#ccall cddb_site_get_address , Ptr <cddb_site_t> -> \
  Ptr CString -> Ptr CUInt -> IO <cddb_error_t>
#ccall cddb_site_set_address , Ptr <cddb_site_t> -> CString -> \
  CUInt -> IO <cddb_error_t>
#ccall cddb_site_get_protocol ,  Ptr <cddb_site_t> -> \
  IO <cddb_protocol_t>
#ccall cddb_site_set_protocol , Ptr <cddb_site_t> -> \
  <cddb_protocol_t> -> IO <cddb_error_t>
#ccall cddb_site_get_query_path , Ptr <cddb_site_t> -> \
  Ptr CString -> IO <cddb_error_t>
#ccall cddb_site_set_query_path , Ptr <cddb_site_t> -> \
  CString -> IO <cddb_error_t>
#ccall cddb_site_get_submit_path , Ptr <cddb_site_t> -> \
  Ptr CString -> IO <cddb_error_t>
#ccall cddb_site_set_submit_path , Ptr <cddb_site_t> -> \
  CString -> IO <cddb_error_t>
#ccall cddb_site_get_location , Ptr <cddb_site_t> -> Ptr CFloat -> \
  Ptr CFloat -> IO <cddb_error_t>
#ccall cddb_site_set_location , Ptr <cddb_site_t> -> CFloat -> \
  CFloat -> IO <cddb_error_t>
#ccall cddb_site_get_description , Ptr <cddb_site_t> -> \
  Ptr CString -> IO <cddb_error_t>
#ccall cddb_site_set_description , Ptr <cddb_site_t> -> \
  CString -> IO <cddb_error_t>
#ccall cddb_site_parse , Ptr <cddb_site_t> -> CString -> IO CInt
#ccall cddb_site_print ,  Ptr <cddb_site_t> -> IO <cddb_error_t>
