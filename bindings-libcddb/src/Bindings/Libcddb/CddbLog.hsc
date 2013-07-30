#include <cddb/cddb.h>
#include <bindings.dsl.h>

-- | <http://libcddb.sourceforge.net/API/cddb__log_8h.html>

module Bindings.Libcddb.CddbLog where
#strict_import

#callback cddb_log_handler_t , <cddb_log_level_t> -> CString -> IO ()

#integral_t cddb_log_level_t

#num CDDB_LOG_DEBUG
#num CDDB_LOG_INFO
#num CDDB_LOG_WARN
#num CDDB_LOG_ERROR
#num CDDB_LOG_CRITICAL
#num CDDB_LOG_NONE

#ccall cddb_log_set_handler , <cddb_log_handler_t> -> \
  IO <cddb_log_handler_t>
#ccall cddb_log_set_level , <cddb_log_level_t> -> IO ()
