#include <cddb/cddb.h>
#include <bindings.dsl.h>

-- | <http://libcddb.sourceforge.net/API/cddb__conn_8h.html>

module Bindings.Libcddb.CddbConn where
#strict_import
import Bindings.Libcddb.CddbDisc
import Bindings.Libcddb.CddbError
import Bindings.Libcddb.CddbSite

#cinline SEARCHCAT , <cddb_cat_t> -> <cddb_cat_t>

#integral_t cddb_iconv_t
#opaque_t cddb_conn_t

#integral_t cddb_cache_mode_t

#num CACHE_OFF
#num CACHE_ON
#num CACHE_ONLY

#integral_t cddb_search_t

#num SEARCH_NONE
#num SEARCH_ARTIST
#num SEARCH_TITLE
#num SEARCH_TRACK
#num SEARCH_OTHER
#num SEARCH_ALL

#ccall cddb_new , IO (Ptr <cddb_conn_t>)
#ccall cddb_destroy , Ptr <cddb_conn_t> -> IO ()
#ccall cddb_set_charset , Ptr <cddb_conn_t> -> CString -> IO CInt
#ccall cddb_set_buf_size , Ptr <cddb_conn_t> -> CUInt -> IO ()
#ccall cddb_set_site , Ptr <cddb_conn_t> -> \
  Ptr <cddb_site_t> -> IO <cddb_error_t>
#ccall cddb_get_server_name , Ptr <cddb_conn_t> -> IO CString
#ccall cddb_set_server_name , Ptr <cddb_conn_t> -> CString -> IO ()
#ccall cddb_get_server_port , Ptr <cddb_conn_t> -> IO CUInt
#ccall cddb_set_server_port , Ptr <cddb_conn_t> -> CInt -> IO ()
#ccall cddb_get_timeout , Ptr <cddb_conn_t> -> IO CUInt
#ccall cddb_set_timeout , Ptr <cddb_conn_t> -> CUInt -> IO ()
#ccall cddb_get_http_path_query , Ptr <cddb_conn_t> -> IO CString
#ccall cddb_set_http_path_query , Ptr <cddb_conn_t> -> \
  CString -> IO ()
#ccall cddb_get_http_path_submit , Ptr <cddb_conn_t> -> IO CString
#ccall cddb_set_http_path_submit , Ptr <cddb_conn_t> -> \
  CString -> IO ()
#ccall cddb_is_http_enabled , Ptr <cddb_conn_t> -> IO CUInt
#ccall cddb_http_enable , Ptr <cddb_conn_t> -> IO ()
#ccall cddb_http_disable , Ptr <cddb_conn_t> -> IO ()
#ccall cddb_is_http_proxy_enabled , Ptr <cddb_conn_t> -> IO CUInt
#ccall cddb_http_proxy_enable , Ptr <cddb_conn_t> -> IO ()
#ccall cddb_http_proxy_disable , Ptr <cddb_conn_t> -> IO ()
#ccall cddb_get_http_proxy_server_name , Ptr <cddb_conn_t> -> \
  IO CString
#ccall cddb_set_http_proxy_server_name , Ptr <cddb_conn_t> -> \
  CString -> IO ()
#ccall cddb_get_http_proxy_server_port , Ptr <cddb_conn_t> -> IO CUInt
#ccall cddb_set_http_proxy_server_port , Ptr <cddb_conn_t> -> \
  CInt -> IO ()
#ccall cddb_set_http_proxy_username , Ptr <cddb_conn_t> -> \
  CString -> IO ()
#ccall cddb_get_http_proxy_username , Ptr <cddb_conn_t> -> IO CString
#ccall cddb_set_http_proxy_password , Ptr <cddb_conn_t> -> \
  CString -> IO ()
#ccall cddb_get_http_proxy_password , Ptr <cddb_conn_t> -> IO CString
#ccall cddb_set_http_proxy_credentials , Ptr <cddb_conn_t> -> \
  CString -> CString -> IO ()
#ccall cddb_errno , Ptr <cddb_conn_t> -> IO <cddb_error_t>
#ccall cddb_set_client , Ptr <cddb_conn_t> -> CString -> \
  CString -> IO ()
#ccall cddb_set_email_address , Ptr <cddb_conn_t> -> \
  CString -> IO CInt
#ccall cddb_cache_mode , Ptr <cddb_conn_t> -> IO <cddb_cache_mode_t>
#ccall cddb_cache_enable , Ptr <cddb_conn_t> -> IO ()
#ccall cddb_cache_only , Ptr <cddb_conn_t> -> IO ()
#ccall cddb_cache_disable , Ptr <cddb_conn_t> -> IO ()
#ccall cddb_cache_get_dir , Ptr <cddb_conn_t> -> IO CString
#ccall cddb_cache_set_dir , Ptr <cddb_conn_t> -> CString -> IO CInt
#ccall cddb_first_site , Ptr <cddb_conn_t> -> IO (Ptr <cddb_site_t>)
#ccall cddb_next_site , Ptr <cddb_conn_t> -> IO (Ptr <cddb_site_t>)
#ccall cddb_search_set_fields , Ptr <cddb_conn_t> -> CUInt -> IO ()
#ccall cddb_search_set_categories , Ptr <cddb_conn_t> -> \
  CUInt -> IO ()
