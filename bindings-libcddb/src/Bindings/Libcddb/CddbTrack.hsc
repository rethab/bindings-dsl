#include <cddb/cddb.h>
#include <bindings.dsl.h>

-- | <http://libcddb.sourceforge.net/API/cddb__track_8h.html>

module Bindings.Libcddb.CddbTrack where
#strict_import

#opaque_t cddb_track_t

#ccall cddb_track_new , IO (Ptr <cddb_track_t>)
#ccall cddb_track_destroy , Ptr <cddb_track_t> -> IO ()
#ccall cddb_track_clone ,  Ptr <cddb_track_t> -> IO (Ptr <cddb_track_t>)
#ccall cddb_track_get_number ,  Ptr <cddb_track_t> -> IO CInt
#ccall cddb_track_get_frame_offset ,  Ptr <cddb_track_t> -> IO CInt
#ccall cddb_track_set_frame_offset , Ptr <cddb_track_t> -> CInt -> IO ()
#ccall cddb_track_get_length , Ptr <cddb_track_t> -> IO CInt
#ccall cddb_track_set_length , Ptr <cddb_track_t> -> CInt -> IO ()
#ccall cddb_track_get_title ,  Ptr <cddb_track_t> -> IO CString
#ccall cddb_track_set_title , Ptr <cddb_track_t> -> CString -> IO ()
#ccall cddb_track_append_title , Ptr <cddb_track_t> -> CString -> IO ()
#ccall cddb_track_get_artist , Ptr <cddb_track_t> -> IO CString
#ccall cddb_track_set_artist , Ptr <cddb_track_t> -> CString -> IO ()
#ccall cddb_track_append_artist , Ptr <cddb_track_t> -> CString -> IO ()
#ccall cddb_track_get_ext_data , Ptr <cddb_track_t> -> IO CString
#ccall cddb_track_set_ext_data , Ptr <cddb_track_t> -> CString -> IO ()
#ccall cddb_track_append_ext_data , Ptr <cddb_track_t> -> CString -> IO ()
#ccall cddb_track_copy , Ptr <cddb_track_t> -> Ptr <cddb_track_t> -> IO ()
#ccall cddb_track_print , Ptr <cddb_track_t> -> IO ()

