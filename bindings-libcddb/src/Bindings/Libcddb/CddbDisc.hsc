#include <cddb/cddb.h>
#include <bindings.dsl.h>

-- | <http://libcddb.sourceforge.net/API/cddb__disc_8h.html>

module Bindings.Libcddb.CddbDisc where
#strict_import
import Bindings.Libcddb.CddbTrack

#num FRAMES_PER_SECOND

#opaque_t cddb_disc_t

#integral_t cddb_cat_t
  
#num CDDB_CAT_DATA
#num CDDB_CAT_FOLK
#num CDDB_CAT_JAZZ
#num CDDB_CAT_MISC
#num CDDB_CAT_ROCK
#num CDDB_CAT_COUNTRY
#num CDDB_CAT_BLUES
#num CDDB_CAT_NEWAGE
#num CDDB_CAT_REGGAE
#num CDDB_CAT_CLASSICAL
#num CDDB_CAT_SOUNDTRACK
#num CDDB_CAT_INVALID
#num CDDB_CAT_LAST

#ccall cddb_disc_new , IO (Ptr <cddb_disc_t>)
#ccall cddb_disc_destroy , Ptr <cddb_disc_t> -> IO ()
#ccall cddb_disc_clone , Ptr <cddb_disc_t> -> IO (Ptr <cddb_disc_t>)
#ccall cddb_disc_add_track , Ptr <cddb_disc_t> -> \
  Ptr <cddb_track_t> -> IO ()
#ccall cddb_disc_get_track , Ptr <cddb_disc_t> -> \
  CInt  -> IO (Ptr <cddb_track_t>)
#ccall cddb_disc_get_track_first , Ptr <cddb_disc_t> -> \
  IO (Ptr <cddb_track_t>)
#ccall cddb_disc_get_track_next , Ptr <cddb_disc_t> -> \
  IO (Ptr <cddb_track_t>)
#ccall cddb_disc_get_discid , Ptr <cddb_disc_t> -> IO CUInt
#ccall cddb_disc_set_discid , Ptr <cddb_disc_t> -> CUInt -> IO ()
#ccall cddb_disc_get_category , Ptr <cddb_disc_t> -> IO <cddb_cat_t>
#ccall cddb_disc_set_category , Ptr <cddb_disc_t> -> \
  <cddb_cat_t> -> IO ()
#ccall cddb_disc_get_category_str , Ptr <cddb_disc_t> -> IO CString
#ccall cddb_disc_set_category_str , Ptr <cddb_disc_t> -> \
  CString -> IO ()
#ccall cddb_disc_get_genre , Ptr <cddb_disc_t> -> IO CString
#ccall cddb_disc_set_genre , Ptr <cddb_disc_t> -> CString -> IO ()
#ccall cddb_disc_get_length , Ptr <cddb_disc_t> -> IO CUInt
#ccall cddb_disc_set_length , Ptr <cddb_disc_t> -> CUInt -> IO ()
#ccall cddb_disc_get_year , Ptr <cddb_disc_t> -> IO CUInt
#ccall cddb_disc_set_year , Ptr <cddb_disc_t> -> CUInt -> IO ()
#ccall cddb_disc_get_track_count , Ptr <cddb_disc_t> -> IO CInt
#ccall cddb_disc_get_title , Ptr <cddb_disc_t> -> IO CString
#ccall cddb_disc_set_title , Ptr <cddb_disc_t> -> CString -> IO ()
#ccall cddb_disc_append_title , Ptr <cddb_disc_t> -> CString -> IO ()
#ccall cddb_disc_get_artist , Ptr <cddb_disc_t> -> IO CString
#ccall cddb_disc_set_artist , Ptr <cddb_disc_t> -> CString -> IO ()
#ccall cddb_disc_append_artist , Ptr <cddb_disc_t> -> CString -> IO ()
#ccall cddb_disc_get_ext_data , Ptr <cddb_disc_t> -> IO CString
#ccall cddb_disc_set_ext_data , Ptr <cddb_disc_t> -> CString -> IO ()
#ccall cddb_disc_append_ext_data , Ptr <cddb_disc_t> -> CString -> IO ()
#ccall cddb_disc_copy , Ptr <cddb_disc_t> -> Ptr <cddb_disc_t> -> IO ()
#ccall cddb_disc_calc_discid , Ptr <cddb_disc_t> -> IO CInt
#ccall cddb_disc_print , Ptr <cddb_disc_t> -> IO ()

#globalarray CDDB_CATEGORY , CString

