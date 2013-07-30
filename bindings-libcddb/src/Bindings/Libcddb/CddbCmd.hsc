#include <cddb/cddb.h>
#include <bindings.dsl.h>

-- | <http://libcddb.sourceforge.net/API/cddb__cmd_8h.html>

module Bindings.Libcddb.CddbCmd where
#strict_import
import Bindings.Libcddb.CddbConn
import Bindings.Libcddb.CddbDisc

#ccall cddb_read , Ptr <cddb_conn_t> -> Ptr <cddb_disc_t> -> IO CInt
#ccall cddb_query , Ptr <cddb_conn_t> -> Ptr <cddb_disc_t> -> IO CInt
#ccall cddb_query_next , Ptr <cddb_conn_t> -> Ptr <cddb_disc_t> -> IO CInt
#ccall cddb_search , Ptr <cddb_conn_t> -> Ptr <cddb_disc_t> -> CString -> IO CInt
#ccall cddb_search_next , Ptr <cddb_conn_t> -> Ptr <cddb_disc_t> -> IO CInt
-- ccall cddb_album , Ptr <cddb_conn_t> -> Ptr <cddb_disc_t> -> IO CInt
-- ccall cddb_album_next , Ptr <cddb_conn_t> -> Ptr <cddb_disc_t> -> IO CInt
#ccall cddb_write , Ptr <cddb_conn_t> -> Ptr <cddb_disc_t> -> IO CInt
#ccall cddb_sites , Ptr <cddb_conn_t> -> IO CInt
