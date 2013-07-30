#include <cddb/cddb.h>
#include <bindings.dsl.h>

-- | <http://libcddb.sourceforge.net/API/cddb_8h.html>

module Bindings.Libcddb.Cddb where
#strict_import

-- integral_t enum cddb_flag_t

-- num CDDB_F_EMPTY_STR
-- num CDDB_F_NO_TRACK_ARTIST

#ccall libcddb_init , IO ()
#ccall libcddb_shutdown , IO ()
-- ccall libcddb_set_flags , CUInt -> IO ()
-- ccall libcddb_reset_flags , CUInt -> IO ()

