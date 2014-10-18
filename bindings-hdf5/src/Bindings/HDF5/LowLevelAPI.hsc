
#include <hdf5.h>
#include <bindings.dsl.h>

-- | <http://www.hdfgroup.org/HDF5/doc/RM/RM_H5Front.html>

module Bindings.HDF5.LowLevelAPI where
#strict_import
import Bindings.HDF5.Types

-- * H5: General Library Functions

#ccall    H5check_version         , CUInt -> CUInt -> CUInt -> IO <herr_t>
#ccall    H5close                 , IO <herr_t>
#ccall    H5dont_atexit           , IO <herr_t>
#ccall    H5free_memory           , Ptr () -> IO <herr_t>
#ccall    H5garbage_collect       , IO <herr_t>
#ccall    H5get_libversion        , Ptr CUInt -> Ptr CUInt -> Ptr CUInt -> IO <herr_t>
#ccall    H5open                  , IO <herr_t>
#ccall    H5set_free_list_limits  , CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO <herr_t>

-- * H5A: Attribute Interface

#ccall    H5Aclose                , <hid_t> -> IO <herr_t>
#ccall    H5Acreate1              , <hid_t> -> CString -> <hid_t> -> <hid_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Acreate2              , <hid_t> -> CString -> <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Acreate_by_name       , <hid_t> -> CString -> CString -> <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> <hid_t>-> IO <hid_t>
#ccall    H5Adelete               , <hid_t> -> CString -> IO <herr_t>
#ccall    H5Adelete_by_name       , <hid_t> -> CString -> CString -> <hid_t> -> IO <herr_t>
#ccall    H5Adelete_by_idx        , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Aexists               , <hid_t> -> CString -> IO <htri_t>
#ccall    H5Aexists_by_name       , <hid_t> -> CString -> CString -> <hid_t> -> IO <htri_t>
#ccall    H5Aget_create_plist  , <hid_t> -> IO <hid_t>
#ccall    H5Aget_info             , <hid_t> -> Ptr <H5A_info_t> -> IO <herr_t>
#ccall    H5Aget_info_by_idx      , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> Ptr <H5A_info_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Aget_info_by_name     , <hid_t> -> CString -> CString -> Ptr <H5A_info_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Aget_name             , <hid_t> -> CSize -> CString -> IO <ssize_t>
#ccall    H5Aget_name_by_idx      , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> CString -> CSize -> <hid_t> -> IO <ssize_t>
#ccall    H5Aget_num_attrs        , <hid_t> -> IO CInt
#ccall    H5Aget_space            , <hid_t> -> IO <hid_t>
#ccall    H5Aget_storage_size     , <hid_t> -> IO <hsize_t>
#ccall    H5Aget_type             , <hid_t> -> IO <hid_t>
#ccall    H5Aiterate1             , <hid_t> -> Ptr CUInt -> <H5A_operator1_t> -> Ptr () -> IO <herr_t>
#ccall    H5Aiterate2             , <hid_t> -> <H5_index_t> -> <H5_iter_order_t> -> Ptr <hsize_t> -> <H5A_operator2_t> -> Ptr () -> IO <herr_t>
#ccall    H5Aiterate_by_name      , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> Ptr <hsize_t> -> <H5A_operator2_t> -> Ptr () -> <hid_t> -> IO <herr_t>
#ccall    H5Aopen                 , <hid_t> -> CString -> <hid_t> -> IO <hid_t>
#ccall    H5Aopen_by_idx          , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> <hid_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Aopen_by_name         , <hid_t> -> CString -> CString -> <hid_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Aopen_idx             , <hid_t> -> CUInt -> IO <hid_t>
#ccall    H5Aopen_name            , <hid_t> -> CString -> IO <hid_t>
#ccall    H5Aread                 , <hid_t> -> <hid_t> -> Ptr () -> IO <herr_t>
#ccall    H5Arename               , <hid_t> -> CString -> CString -> IO <herr_t>
#ccall    H5Arename_by_name       , <hid_t> -> CString -> CString -> CString -> <hid_t> -> IO <herr_t>
#ccall    H5Awrite                , <hid_t> -> <hid_t> -> Ptr () -> IO <herr_t>

-- * H5D: Dataset Interface

#ccall    H5Dclose                , <hid_t> -> IO <herr_t>
#ccall    H5Dcreate1              , <hid_t> -> CString -> <hid_t> -> <hid_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Dcreate2              , <hid_t> -> CString -> <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Dcreate_anon          , <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Dextend               , <hid_t> -> <hsize_t> -> IO <herr_t>
#ccall    H5Dfill                 , Ptr () -> <hid_t> -> Ptr () -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Dgather               , <hid_t> -> Ptr () -> <hid_t> -> CSize -> Ptr () -> <H5D_gather_func_t> -> Ptr () -> IO <herr_t>
#ccall    H5Dget_access_plist     , <hid_t> -> IO <hid_t>
#ccall    H5Dget_create_plist     , <hid_t> -> IO <hid_t>
#ccall    H5Dget_offset           , <hid_t> -> IO <haddr_t>
#ccall    H5Dget_space            , <hid_t> -> IO <hid_t>
#ccall    H5Dget_space_status     , <hid_t> -> Ptr <H5D_space_status_t> -> IO <herr_t>
#ccall    H5Dget_storage_size     , <hid_t> -> IO <hsize_t>
#ccall    H5Dget_type             , <hid_t> -> IO <hid_t>
#ccall    H5Diterate              , Ptr () -> <hid_t> -> <hid_t> -> <H5D_operator_t> -> Ptr () -> IO <herr_t>
#ccall    H5Dopen1                , <hid_t> -> CString -> IO <hid_t>
#ccall    H5Dopen2                , <hid_t> -> CString -> <hid_t> -> IO <hid_t>
#ccall    H5Dread                 , <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> Ptr () -> IO <herr_t>
#ccall    H5Dscatter              , <H5D_scatter_func_t> -> Ptr () -> <hid_t> -> <hid_t> -> Ptr () -> IO <herr_t>
#ccall    H5Dset_extent           , <hid_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Dvlen_get_buf_size    , <hid_t> -> <hid_t> -> <hid_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Dvlen_reclaim         , <hid_t> -> <hid_t> -> <hid_t> -> Ptr () -> IO <herr_t>
#ccall    H5Dwrite                , <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> Ptr () -> IO <herr_t>

-- * H5E: Error Interface

#ccall    H5Eauto_is_v2           , <hid_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Eclear1               , IO <herr_t>
#ccall    H5Eclear2               , <hid_t> -> IO <herr_t>
#ccall    H5Eclose_msg            , <hid_t> -> IO <herr_t>
#ccall    H5Eclose_stack          , <hid_t> -> IO <herr_t>
#ccall    H5Ecreate_msg           , <hid_t> -> <H5E_type_t> -> CString -> IO <hid_t>
#ccall    H5Ecreate_stack         , IO <hid_t>
#ccall    H5Eget_auto1            , Ptr <H5E_auto1_t> -> Ptr (Ptr ()) -> IO <herr_t>
#ccall    H5Eget_auto2            , <hid_t> -> Ptr <H5E_auto2_t> -> Ptr (Ptr ()) -> IO <herr_t>
#ccall    H5Eget_class_name       , <hid_t> -> CString -> CSize -> IO <ssize_t>
#ccall    H5Eget_current_stack    , IO <hid_t>
#ccall    H5Eget_major            , <H5E_major_t> -> IO CString
#ccall    H5Eget_minor            , <H5E_minor_t> -> IO CString
#ccall    H5Eget_msg              , <hid_t> -> Ptr <H5E_type_t> -> CString -> CSize -> IO <ssize_t>
#ccall    H5Eget_num              , <hid_t> -> IO <ssize_t>
#ccall    H5Epop                  , <hid_t> -> CSize -> IO <herr_t>
#ccall    H5Eprint1               , Ptr CFile -> IO <herr_t>
#ccall    H5Eprint2               , <hid_t> -> Ptr CFile -> IO <herr_t>
#ccall    H5Epush1                , CString -> CString -> CUInt -> <H5E_major_t> -> <H5E_minor_t> -> CString -> IO <herr_t>
#ccall    H5Epush2                , <hid_t> -> CString -> CString -> CUInt -> <hid_t> -> <hid_t> -> <hid_t> -> CString -> IO <herr_t>
#ccall    H5Eregister_class       , CString -> CString -> CString -> IO <hid_t>
#ccall    H5Eset_auto1            , <H5E_auto1_t> -> Ptr () -> IO <herr_t>
#ccall    H5Eset_auto2            , <hid_t> -> <H5E_auto2_t> -> Ptr () -> IO <herr_t>
#ccall    H5Eset_current_stack    , <hid_t> -> IO <herr_t>
#ccall    H5Eunregister_class     , <hid_t> -> IO <herr_t>
#ccall    H5Ewalk1                , <H5E_direction_t> -> <H5E_walk1_t> -> Ptr () -> IO <herr_t>
#ccall    H5Ewalk2                , <hid_t> -> <H5E_direction_t> -> <H5E_walk2_t> -> Ptr () -> IO <herr_t>

-- * H5F: File Interface

#ccall    H5Fclear_elink_file_cache , <hid_t> -> IO <herr_t>
#ccall    H5Fclose                , <hid_t> -> IO <herr_t>
#ccall    H5Fcreate               , CString -> CUInt -> <hid_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Fflush                , <hid_t> -> <H5F_scope_t> -> IO <herr_t>
#ccall    H5Fget_access_plist     , <hid_t> -> IO <hid_t>
#ccall    H5Fget_create_plist     , <hid_t> -> IO <hid_t>
#ccall    H5Fget_file_image       , <hid_t> -> Ptr () -> Ptr CSize -> IO <ssize_t>
#ccall    H5Fget_filesize         , <hid_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Fget_freespace        , <hid_t> -> IO <hssize_t>
#ccall    H5Fget_info             , <hid_t> -> Ptr <H5F_info_t> -> IO <herr_t>
#ccall    H5Fget_intent           , <hid_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Fget_mdc_config       , <hid_t> -> Ptr <H5AC_cache_config_t> -> IO <herr_t>
#ccall    H5Fget_mdc_hit_rate     , <hid_t> -> Ptr CDouble -> IO <herr_t>
#ccall    H5Fget_mdc_size         , <hid_t> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CInt -> IO <herr_t>
-- PARALLEL #ccall    H5Fget_mpi_atomicity    , <hid_t> -> Ptr <hbool_t> -> IO <herr_t>
#ccall    H5Fget_name             , <hid_t> -> CString -> CSize -> IO <ssize_t>
#ccall    H5Fget_obj_count        , <hid_t> -> CUInt -> IO <ssize_t>
#ccall    H5Fget_obj_ids          , <hid_t> -> CUInt -> CSize -> Ptr <hid_t> -> IO <ssize_t>
#ccall    H5Fget_vfd_handle       , <hid_t> -> <hid_t> -> Ptr (Ptr ()) -> IO <herr_t>
#ccall    H5Fis_hdf5              , CString -> IO <htri_t>
#ccall    H5Fmount                , <hid_t> -> CString -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Fopen                 , CString -> CUInt -> <hid_t> -> IO <hid_t>
#ccall    H5Freopen                , <hid_t> -> IO <hid_t>
#ccall    H5Freset_mdc_hit_rate_stats , <hid_t> -> IO <herr_t>
#ccall    H5Fset_mdc_config       , <hid_t> -> Ptr <H5AC_cache_config_t> -> IO <herr_t>
-- PARALLEL #ccall    H5Fset_mpi_atomicity    , <hid_t> -> <hbool_t> -> IO <herr_t>
#ccall    H5Funmount              , <hid_t> -> CString -> IO <herr_t>

-- * H5G: Group Interface

#ccall    H5Gclose                , <hid_t> -> IO <herr_t>
#ccall    H5Gcreate1              , <hid_t> -> CString -> CSize -> IO <hid_t>
#ccall    H5Gcreate2              , <hid_t> -> CString -> <hid_t> -> <hid_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Gcreate_anon          , <hid_t> -> <hid_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Gget_comment          , <hid_t> -> CString -> CSize -> CString -> IO CInt
#ccall    H5Gget_create_plist     , <hid_t> -> IO <hid_t>
#ccall    H5Gget_info             , <hid_t> -> Ptr <H5G_info_t> -> IO <herr_t>
#ccall    H5Gget_info_by_idx      , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> Ptr <H5G_info_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Gget_info_by_name     , <hid_t> -> CString -> Ptr <H5G_info_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Gget_linkval          , <hid_t> -> CString -> CSize -> CString -> IO <herr_t>
#ccall    H5Gget_num_objs         , <hid_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Gget_objinfo          , <hid_t> -> CString -> <hbool_t> -> Ptr <H5G_stat_t> -> IO <herr_t>
#ccall    H5Gget_objname_by_idx   , <hid_t> -> <hsize_t> -> CString -> CSize -> IO <ssize_t>
#ccall    H5Gget_objtype_by_idx   , <hid_t> -> <hsize_t> -> IO CInt
#ccall    H5Giterate              , <hid_t> -> CString -> Ptr CInt -> <H5G_iterate_t> -> Ptr () -> IO CInt
#ccall    H5Glink                 , <hid_t> -> <H5G_link_t> -> CString -> CString -> IO <herr_t>
#ccall    H5Glink2                , <hid_t> -> CString -> <H5G_link_t> -> <hid_t> -> CString -> IO <herr_t>
#ccall    H5Gmove                 , <hid_t> -> CString -> CString -> IO <herr_t>
#ccall    H5Gmove2                , <hid_t> -> CString -> <hid_t> -> CString -> IO <herr_t>
#ccall    H5Gopen1                , <hid_t> -> CString -> IO <hid_t>
#ccall    H5Gopen2                , <hid_t> -> CString -> <hid_t> -> IO <hid_t>
#ccall    H5Gset_comment          , <hid_t> -> CString -> CString -> IO <herr_t>
#ccall    H5Gunlink               , <hid_t> -> CString -> IO <herr_t>

-- * H5I: Identifier Interface

#ccall    H5Iclear_type           , <H5I_type_t> -> <hbool_t> -> IO <herr_t>
#ccall    H5Idec_ref              , <hid_t> -> IO CInt
#ccall    H5Idec_type_ref         , <H5I_type_t> -> IO CInt
#ccall    H5Idestroy_type         , <H5I_type_t> -> IO <herr_t>
#ccall    H5Iget_file_id          , <hid_t> -> IO <hid_t>
#ccall    H5Iget_name             , <hid_t> -> CString -> CSize -> IO <ssize_t>
#ccall    H5Iget_ref              , <hid_t> -> IO CInt
#ccall    H5Iget_type             , <hid_t> -> IO <H5I_type_t>
#ccall    H5Iget_type_ref         , <H5I_type_t> -> IO CInt
#ccall    H5Iinc_ref              , <hid_t> -> IO CInt
#ccall    H5Iinc_type_ref         , <H5I_type_t> -> IO CInt
#ccall    H5Iis_valid             , <hid_t> -> IO <htri_t>
#ccall    H5Inmembers             , <H5I_type_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Iobject_verify        , <hid_t> -> <H5I_type_t> -> IO (Ptr ())
#ccall    H5Iregister             , <H5I_type_t> -> Ptr () -> IO <hid_t>
#ccall    H5Iregister_type        , CSize -> CUInt -> <H5I_free_t> -> IO <H5I_type_t>
#ccall    H5Iremove_verify        , <hid_t> -> <H5I_type_t> -> IO (Ptr ())
#ccall    H5Isearch               , <H5I_type_t> -> <H5I_search_func_t> -> Ptr () -> IO (Ptr ())
#ccall    H5Itype_exists          , <H5I_type_t> -> IO <htri_t>

-- * H5L: Link Interface

#ccall    H5Lcopy                 , <hid_t> -> CString -> <hid_t> -> CString -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Lcreate_external      , CString -> CString -> <hid_t> -> CString -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Lcreate_hard          , <hid_t> -> CString -> <hid_t> -> CString -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Lcreate_soft          , CString -> <hid_t> -> CString -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Lcreate_ud            , <hid_t> -> CString -> <H5L_type_t> -> CString -> CSize -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Lexists               , <hid_t> -> CString -> <hid_t> -> IO <htri_t>
#ccall    H5Lget_info             , <hid_t> -> CString -> Ptr <H5L_info_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Lget_info_by_idx      , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> Ptr <H5L_info_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Lget_name_by_idx      , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> CString -> CSize -> <hid_t> -> IO <ssize_t>
#ccall    H5Lget_val              , <hid_t> -> CString -> Ptr () -> CSize -> <hid_t> -> IO <herr_t>
#ccall    H5Lget_val_by_idx       , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> Ptr () -> CSize -> <hid_t> -> IO <herr_t>
#ccall    H5Lis_registered        , <H5L_type_t> -> IO <htri_t>
#ccall    H5Literate              , <hid_t> -> <H5_index_t> -> <H5_iter_order_t> -> Ptr <hsize_t> -> <H5L_iterate_t> -> Ptr () -> IO <herr_t>
#ccall    H5Literate_by_name      , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> Ptr <hsize_t> -> <H5L_iterate_t> -> Ptr () -> Ptr <hid_t> -> IO <herr_t>
#ccall    H5Lmove                 , <hid_t> -> CString -> <hid_t> -> CString -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Lregister             , Ptr <H5L_class_t> -> IO <herr_t>
#ccall    H5Ldelete               , <hid_t> -> CString -> <hid_t> -> IO <herr_t>
#ccall    H5Ldelete_by_idx        , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Lunpack_elink_val     , CString -> CSize -> Ptr CUInt -> Ptr CString -> Ptr CString -> IO <herr_t>
#ccall    H5Lunregister           , <H5L_type_t> -> IO <herr_t>
#ccall    H5Lvisit                , <hid_t> -> <H5_index_t> -> <H5_iter_order_t> -> <H5L_iterate_t> -> Ptr () -> IO <herr_t>
#ccall    H5Lvisit_by_name       , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <H5L_iterate_t> -> Ptr () -> <hid_t> -> IO <herr_t>

-- * H5O: Object Interface

#ccall    H5Oclose                , <hid_t> -> IO <herr_t>
#ccall    H5Ocopy                 , <hid_t> -> CString -> <hid_t> -> CString -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Odecr_refcount        , <hid_t> -> IO <herr_t>
#ccall    H5Oexists_by_name       , <hid_t> -> CString -> <hid_t> -> IO <htri_t>
#ccall    H5Oget_comment          , <hid_t> -> CString -> CSize -> IO <ssize_t>
#ccall    H5Oget_comment_by_name  , <hid_t> -> CString -> CString -> CSize -> <hid_t> -> IO <ssize_t>
#ccall    H5Oget_info             , <hid_t> -> Ptr <H5O_info_t> -> IO <herr_t>
#ccall    H5Oget_info_by_idx      , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> Ptr <H5O_info_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Oget_info_by_name     , <hid_t> -> CString -> Ptr <H5O_info_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Oincr_refcount        , <hid_t> -> IO <herr_t>
#ccall    H5Olink                 , <hid_t> -> <hid_t> -> CString -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Oopen                 , <hid_t> -> CString -> <hid_t> -> IO <hid_t>
#ccall    H5Oopen_by_addr         , <hid_t> -> <haddr_t> -> IO <hid_t>
#ccall    H5Oopen_by_idx          , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <hsize_t> -> <hid_t> -> IO <hid_t>
#ccall    H5Oset_comment          , <hid_t> -> CString -> IO <herr_t>
#ccall    H5Oset_comment_by_name  , <hid_t> -> CString -> CString -> <hid_t> -> IO <herr_t>
#ccall    H5Ovisit                , <hid_t> -> <H5_index_t> -> <H5_iter_order_t> -> <H5O_iterate_t> -> Ptr () -> IO <herr_t>
#ccall    H5Ovisit_by_name        , <hid_t> -> CString -> <H5_index_t> -> <H5_iter_order_t> -> <H5O_iterate_t> -> Ptr () -> <hid_t> -> IO <herr_t>

-- * H5P: Property List Interface

#ccall    H5Padd_merge_committed_dtype_path , <hid_t> -> CString -> IO <herr_t>
#ccall    H5Pall_filters_avail    , <hid_t> -> IO <htri_t>
#ccall    H5Pclose                , <hid_t> -> IO <herr_t>
#ccall    H5Pclose_class          , <hid_t> -> IO <herr_t>
#ccall    H5Pcopy                 , <hid_t> -> IO <hid_t>
#ccall    H5Pcopy_prop            , <hid_t> -> <hid_t> -> CString -> IO <herr_t>
#ccall    H5Pcreate               , <hid_t> -> IO <hid_t>
#ccall    H5Pcreate_class         , <hid_t> -> CString -> <H5P_cls_create_func_t> -> Ptr () -> <H5P_cls_copy_func_t> -> Ptr () -> <H5P_cls_close_func_t> -> Ptr () -> IO <hid_t>
#ccall    H5Pequal                , <hid_t> -> <hid_t> -> IO <htri_t>
#ccall    H5Pexist                , <hid_t> -> CString -> IO <htri_t>
#ccall    H5Pfill_value_defined   , <hid_t> -> Ptr <H5D_fill_value_t> -> IO <herr_t>
#ccall    H5Pfree_merge_committed_dtype_paths , <hid_t> -> IO <herr_t>
#ccall    H5Pget                  , <hid_t> -> CString -> Ptr () -> IO <herr_t>
#ccall    H5Pget_alignment        , <hid_t> -> Ptr <hsize_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Pget_alloc_time       , <hid_t> -> Ptr <H5D_alloc_time_t> -> IO <herr_t>
#ccall    H5Pget_attr_creation_order , <hid_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_attr_phase_change, <hid_t> -> Ptr CUInt -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_btree_ratios     , <hid_t> -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO <herr_t>
#ccall    H5Pget_buffer           , <hid_t> -> Ptr (Ptr ()) -> Ptr (Ptr ()) -> IO <hsize_t>
#ccall    H5Pget_cache            , <hid_t> -> Ptr CInt -> Ptr CSize -> Ptr CSize -> Ptr CDouble -> IO <herr_t>
#ccall    H5Pget_char_encoding    , <hid_t> -> Ptr <H5T_cset_t> -> IO <herr_t>
#ccall    H5Pget_chunk            , <hid_t> -> CInt -> Ptr <hsize_t> -> IO CInt
#ccall    H5Pget_chunk_cache      , <hid_t> -> Ptr CSize -> Ptr CSize -> Ptr CDouble -> IO <herr_t>
#ccall    H5Pget_class            , <hid_t> -> IO <hid_t>
#ccall    H5Pget_class_name       , <hid_t> -> IO CString
#ccall    H5Pget_class_parent     , <hid_t> -> IO <hid_t>
#ccall    H5Pget_copy_object      , <hid_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_core_write_tracking , <hid_t> -> Ptr <hbool_t> -> Ptr CSize -> IO <herr_t>
#ccall    H5Pget_create_intermediate_group , <hid_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_data_transform   , <hid_t> -> CString -> CSize -> IO <ssize_t>
#ccall    H5Pget_driver           , <hid_t> -> IO <hid_t>
#ccall    H5Pget_driver_info      , <hid_t> -> IO (Ptr ())
-- #ccall    H5Pget_dxpl_mpio        , <hid_t> -> Ptr <H5FD_mpio_xfer_t> -> IO <herr_t>
#ccall    H5Pget_edc_check        , <hid_t> -> IO <H5Z_EDC_t>
#ccall    H5Pget_elink_acc_flags  , <hid_t> -> Ptr (Ptr CUInt) -> IO <herr_t>
#ccall    H5Pget_elink_cb         , <hid_t> -> Ptr <H5L_elink_traverse_t> -> Ptr (Ptr ()) -> IO <herr_t>
#ccall    H5Pget_elink_fapl       , <hid_t> -> IO <hid_t>
#ccall    H5Pget_elink_file_cache_size , <hid_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_elink_prefix     , <hid_t> -> CString -> CSize -> IO <ssize_t>
#ccall    H5Pget_est_link_info    , <hid_t> -> Ptr CUInt -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_external         , <hid_t> -> CUInt -> CSize -> CString -> Ptr <off_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Pget_external_count   , <hid_t> -> IO CInt
#ccall    H5Pget_family_offset    , <hid_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Pget_fapl_core        , <hid_t> -> Ptr CSize -> Ptr <hbool_t> -> IO <herr_t>
-- #ccall    H5Pget_fapl_direct      , <hid_t> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO <herr_t>
#ccall    H5Pget_fapl_family      , <hid_t> -> Ptr <hsize_t> -> Ptr <hid_t> -> IO <herr_t>
-- #ccall    H5Pget_fapl_mpio        , <hid_t> -> Ptr <MPI_Comm> -> Ptr <MPI_Info> -> IO <herr_t>
-- #ccall    H5Pget_fapl_mpiposix    , <hid_t> -> Ptr <MPI_Comm> -> Ptr <hbool_t> -> IO <herr_t>
#ccall    H5Pget_fapl_multi       , <hid_t> -> Ptr <H5FD_mem_t> -> Ptr <hid_t> -> Ptr CString -> Ptr <haddr_t> -> Ptr <hbool_t> -> IO <herr_t>
#ccall    H5Pget_fclose_degree    , <hid_t> -> Ptr <H5F_close_degree_t> -> IO <herr_t>
#ccall    H5Pget_file_image       , <hid_t> -> Ptr (Ptr ()) -> Ptr CSize -> IO <herr_t>
#ccall    H5Pget_file_image_callbacks , <hid_t> -> Ptr <H5FD_file_image_callbacks_t> -> IO <herr_t>
#ccall    H5Pget_fill_time        , <hid_t> -> Ptr <H5D_fill_time_t> -> IO <herr_t>
#ccall    H5Pget_fill_value       , <hid_t> -> <hid_t> -> Ptr () -> IO <herr_t>
#ccall    H5Pget_filter1          , <hid_t> -> CUInt -> Ptr CUInt -> Ptr CSize -> Ptr CUInt -> CSize -> CString -> IO <H5Z_filter_t>
#ccall    H5Pget_filter2          , <hid_t> -> CUInt -> Ptr CUInt -> Ptr CSize -> Ptr CUInt -> CSize -> CString -> Ptr CUInt -> IO <H5Z_filter_t>
#ccall    H5Pget_filter_by_id1    , <hid_t> -> <H5Z_filter_t> -> Ptr CUInt -> Ptr CSize -> Ptr CUInt -> CSize -> CString -> IO <herr_t>
#ccall    H5Pget_filter_by_id2    , <hid_t> -> <H5Z_filter_t> -> Ptr CUInt -> Ptr CSize -> Ptr CUInt -> CSize -> CString -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_gc_references    , <hid_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_hyper_vector_size, <hid_t> -> Ptr CSize -> IO <herr_t>
#ccall    H5Pget_istore_k         , <hid_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_layout           , <hid_t> -> IO <H5D_layout_t>
#ccall    H5Pget_libver_bounds    , <hid_t> -> Ptr <H5F_libver_t> -> Ptr <H5F_libver_t> -> IO <herr_t>
#ccall    H5Pget_link_creation_order , <hid_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_link_phase_change, <hid_t> -> Ptr CUInt -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_local_heap_size_hint , <hid_t> -> Ptr CSize -> IO <herr_t>
#ccall    H5Pget_mcdt_search_cb   , <hid_t> -> Ptr <H5O_mcdt_search_cb_t> -> Ptr (Ptr ()) -> IO <herr_t>
#ccall    H5Pget_mdc_config       , <hid_t> -> Ptr <H5AC_cache_config_t> -> IO <herr_t>
#ccall    H5Pget_meta_block_size  , <hid_t> -> Ptr <hsize_t> -> IO <herr_t>
-- PARALLEL #ccall    H5Pget_mpio_actual_chunk_opt_mode , <hid_t> -> Ptr <H5D_mpio_actual_chunk_opt_mode_t> -> IO <herr_t>
-- PARALLEL #ccall    H5Pget_mpio_actual_io_mode , <hid_t> -> Ptr <H5D_mpio_actual_io_mode_t> -> IO <herr_t>
-- PARALLEL #ccall    H5Pget_mpio_no_collective_cause , <hid_t> -> Ptr <uint32_t> -> Ptr <uint32_t> -> IO <herr_t>
#ccall    H5Pget_multi_type       , <hid_t> -> Ptr <H5FD_mem_t> -> IO <herr_t>
#ccall    H5Pget_nfilters         , <hid_t> -> IO CInt
#ccall    H5Pget_nlinks           , <hid_t> -> Ptr CSize -> IO <herr_t>
#ccall    H5Pget_nprops           , <hid_t> -> Ptr CSize -> IO <herr_t>
#ccall    H5Pget_preserve         , <hid_t> -> IO CInt
#ccall    H5Pget_obj_track_times  , <hid_t> -> Ptr <hbool_t> -> IO <herr_t>
#ccall    H5Pget_shared_mesg_index, <hid_t> -> CUInt -> Ptr CUInt -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_shared_mesg_nindexes , <hid_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_shared_mesg_phase_change , <hid_t> -> Ptr CUInt -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_sieve_buf_size   , <hid_t> -> Ptr CSize -> IO <herr_t>
#ccall    H5Pget_size             , <hid_t> -> CString -> Ptr CSize -> IO CInt
#ccall    H5Pget_sizes            , <hid_t> -> Ptr CSize -> Ptr CSize -> IO <herr_t>
#ccall    H5Pget_small_data_block_size , <hid_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Pget_sym_k            , <hid_t> -> Ptr CUInt -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_type_conv_cb     , <hid_t> -> Ptr <H5T_conv_except_func_t> -> Ptr (Ptr ()) -> IO <herr_t>
#ccall    H5Pget_userblock        , <hid_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Pget_version          , <hid_t> -> Ptr CUInt -> Ptr CUInt -> Ptr CUInt -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pget_vlen_mem_manager , <hid_t> -> Ptr <H5MM_allocate_t> -> Ptr (Ptr ()) -> Ptr <H5MM_free_t> -> Ptr (Ptr ()) -> IO <herr_t>
#ccall    H5Pinsert1              , <hid_t> -> CString -> CSize -> Ptr () -> <H5P_prp_set_func_t> -> <H5P_prp_get_func_t> -> <H5P_prp_delete_func_t> -> <H5P_prp_copy_func_t> -> <H5P_prp_close_func_t> -> IO <herr_t>
#ccall    H5Pinsert2              , <hid_t> -> CString -> CSize -> Ptr () -> <H5P_prp_set_func_t> -> <H5P_prp_get_func_t> -> <H5P_prp_delete_func_t> -> <H5P_prp_copy_func_t> -> <H5P_prp_compare_func_t> -> <H5P_prp_close_func_t> -> IO <herr_t>
#ccall    H5Pisa_class            , <hid_t> -> <hid_t> -> IO <htri_t>
#ccall    H5Piterate              , <hid_t> -> Ptr CInt -> <H5P_iterate_t> -> Ptr () -> IO CInt
#ccall    H5Pmodify_filter        , <hid_t> -> <H5Z_filter_t> -> CUInt -> CSize -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pregister1            , <hid_t> -> CString -> CSize -> Ptr () -> <H5P_prp_create_func_t> -> <H5P_prp_set_func_t> -> <H5P_prp_get_func_t> -> <H5P_prp_delete_func_t> -> <H5P_prp_copy_func_t> -> <H5P_prp_close_func_t> -> IO <herr_t>
#ccall    H5Pregister2            , <hid_t> -> CString -> CSize -> Ptr () -> <H5P_prp_create_func_t> -> <H5P_prp_set_func_t> -> <H5P_prp_get_func_t> -> <H5P_prp_delete_func_t> -> <H5P_prp_copy_func_t> -> <H5P_prp_compare_func_t> -> <H5P_prp_close_func_t> -> IO <herr_t>
#ccall    H5Premove               , <hid_t> -> CString -> IO <herr_t>
#ccall    H5Premove_filter        , <hid_t> -> <H5Z_filter_t> -> IO <herr_t>
#ccall    H5Pset                  , <hid_t> -> CString -> Ptr () -> IO <herr_t>
#ccall    H5Pset_alignment        , <hid_t> -> <hsize_t> -> <hsize_t> -> IO <herr_t>
#ccall    H5Pset_alloc_time       , <hid_t> -> <H5D_alloc_time_t> -> IO <herr_t>
#ccall    H5Pset_attr_creation_order , <hid_t> -> CUInt -> IO <herr_t>
#ccall    H5Pset_attr_phase_change, <hid_t> -> CUInt -> CUInt -> IO <herr_t>
#ccall    H5Pset_btree_ratios     , <hid_t> -> CDouble -> CDouble -> CDouble -> IO <herr_t>
#ccall    H5Pset_buffer           , <hid_t> -> <hsize_t> -> Ptr () -> Ptr () -> IO <herr_t>
#ccall    H5Pset_cache            , <hid_t> -> CInt -> CSize -> CSize -> CDouble -> IO <herr_t>
#ccall    H5Pset_char_encoding    , <hid_t> -> <H5T_cset_t> -> IO <herr_t>
#ccall    H5Pset_chunk            , <hid_t> -> CInt -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Pset_chunk_cache      , <hid_t> -> CSize -> CSize -> CDouble -> IO <herr_t>
#ccall    H5Pset_copy_object      , <hid_t> -> CUInt -> IO <herr_t>
#ccall    H5Pset_core_write_tracking , <hid_t> -> <hbool_t> -> CSize -> IO <herr_t>
#ccall    H5Pset_create_intermediate_group , <hid_t> -> CUInt -> IO <herr_t>
#ccall    H5Pset_data_transform   , <hid_t> -> CString -> IO <herr_t>
#ccall    H5Pset_deflate          , <hid_t> -> CUInt -> IO <herr_t>
#ccall    H5Pset_driver           , <hid_t> -> <hid_t> -> Ptr () -> IO <herr_t>
-- #ccall    H5Pset_dxpl_mpio        , <hid_t> -> <H5FD_mpio_xfer_t> -> IO <herr_t>
-- #ccall    H5Pset_dxpl_mpio_chunk_opt , <hid_t> -> <H5FD_mpio_chunk_opt_t> -> IO <herr_t>
-- #ccall    H5Pset_dxpl_mpio_chunk_opt_num , <hid_t> -> CUInt -> IO <herr_t>
-- #ccall    H5Pset_dxpl_mpio_chunk_ratio , <hid_t> -> CUInt -> IO <herr_t>
-- #ccall    H5Pset_dxpl_mpio_collective_opt , <hid_t> -> <H5FD_mpio_collective_opt_t> -> IO <herr_t>
#ccall    H5Pset_edc_check        , <hid_t> -> <H5Z_EDC_t> -> IO <herr_t>
#ccall    H5Pset_elink_acc_flags  , <hid_t> -> CUInt -> IO <herr_t>
#ccall    H5Pset_elink_cb         , <hid_t> -> <H5L_elink_traverse_t> -> Ptr () -> IO <herr_t>
#ccall    H5Pset_elink_fapl       , <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Pset_elink_file_cache_size , <hid_t> -> CUInt -> IO <herr_t>
#ccall    H5Pset_elink_prefix     , <hid_t> -> CString -> IO <herr_t>
#ccall    H5Pset_est_link_info    , <hid_t> -> CUInt -> CUInt -> IO <herr_t>
#ccall    H5Pset_external         , <hid_t> -> CString -> <off_t> -> <hsize_t> -> IO <herr_t>
#ccall    H5Pset_family_offset    , <hid_t> -> <hsize_t> -> IO <herr_t>
#ccall    H5Pset_fapl_core        , <hid_t> -> CSize -> <hbool_t> -> IO <herr_t>
-- #ccall    H5Pset_fapl_direct      , <hid_t> -> CSize -> CSize -> CSize -> IO <herr_t>
#ccall    H5Pset_fapl_family      , <hid_t> -> <hsize_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Pset_fapl_log         , <hid_t> -> CString -> CULLong -> CSize -> IO <herr_t>
-- #ccall    H5Pset_fapl_mpio        , <hid_t> -> <MPI_Comm> -> <MPI_Info> -> IO <herr_t>
-- #ccall    H5Pset_fapl_mpiposix    , <hid_t> -> <MPI_Comm> -> <hbool_t> -> IO <herr_t>
#ccall    H5Pset_fapl_multi       , <hid_t> -> Ptr <H5FD_mem_t> -> Ptr <hid_t> -> Ptr CString -> Ptr <haddr_t> -> <hbool_t> -> IO <herr_t>
#ccall    H5Pset_fapl_sec2        , <hid_t> -> IO <herr_t>
#ccall    H5Pset_fapl_split       , <hid_t> -> CString -> <hid_t> -> CString -> <hid_t> -> IO <herr_t>
#ccall    H5Pset_fapl_stdio       , <hid_t> -> IO <herr_t>
-- #ccall    H5Pset_fapl_windows     , <hid_t> -> IO <herr_t>
#ccall    H5Pset_fclose_degree    , <hid_t> -> <H5F_close_degree_t> -> IO <herr_t>
#ccall    H5Pset_file_image       , <hid_t> -> Ptr () -> CSize -> IO <herr_t>
#ccall    H5Pset_file_image_callbacks , <hid_t> -> Ptr <H5FD_file_image_callbacks_t> -> IO <herr_t>
#ccall    H5Pset_fill_time        , <hid_t> -> <H5D_fill_time_t> -> IO <herr_t>
#ccall    H5Pset_fill_value       , <hid_t> -> <hid_t> -> Ptr () -> IO <herr_t>
#ccall    H5Pset_filter           , <hid_t> -> <H5Z_filter_t> -> CUInt -> CSize -> Ptr CUInt -> IO <herr_t>
#ccall    H5Pset_filter_callback  , <hid_t> -> <H5Z_filter_func_t> -> Ptr () -> IO <herr_t>
#ccall    H5Pset_fletcher32       , <hid_t> -> IO <herr_t>
#ccall    H5Pset_gc_references    , <hid_t> -> CUInt -> IO <herr_t>
#ccall    H5Pset_hyper_vector_size, <hid_t> -> CSize -> IO <herr_t>
#ccall    H5Pset_istore_k         , <hid_t> -> CUInt -> IO <herr_t>
#ccall    H5Pset_layout           , <hid_t> -> <H5D_layout_t> -> IO <herr_t>
#ccall    H5Pset_libver_bounds    , <hid_t> -> <H5F_libver_t> -> <H5F_libver_t> -> IO <herr_t>
#ccall    H5Pset_link_creation_order , <hid_t> -> CUInt -> IO <herr_t>
#ccall    H5Pset_link_phase_change, <hid_t> -> CUInt -> CUInt -> IO <herr_t>
#ccall    H5Pset_local_heap_size_hint , <hid_t> -> CSize -> IO <herr_t>
#ccall    H5Pset_mcdt_search_cb   , <hid_t> -> <H5O_mcdt_search_cb_t> -> Ptr () -> IO <herr_t>
#ccall    H5Pset_mdc_config       , <hid_t> -> Ptr <H5AC_cache_config_t> -> IO <herr_t>
#ccall    H5Pset_meta_block_size  , <hid_t> -> <hsize_t> -> IO <herr_t>
#ccall    H5Pset_multi_type       , <hid_t> -> <H5FD_mem_t> -> IO <herr_t>
#ccall    H5Pset_nbit             , <hid_t> -> IO <herr_t>
#ccall    H5Pset_nlinks           , <hid_t> -> CSize -> IO <herr_t>
#ccall    H5Pset_preserve         , <hid_t> -> <hbool_t> -> IO <herr_t>
#ccall    H5Pset_obj_track_times  , <hid_t> -> <hbool_t> -> IO <herr_t>
#ccall    H5Pset_scaleoffset      , <hid_t> -> <H5Z_SO_scale_type_t> -> CInt -> IO <herr_t>
#ccall    H5Pset_shared_mesg_index, <hid_t> -> CUInt -> CUInt -> CUInt -> IO <herr_t>
#ccall    H5Pset_shared_mesg_nindexes , <hid_t> -> CUInt -> IO <herr_t>
#ccall    H5Pset_shared_mesg_phase_change , <hid_t> -> CUInt -> CUInt -> IO <herr_t>
#ccall    H5Pset_shuffle          , <hid_t> -> IO <herr_t>
#ccall    H5Pset_sieve_buf_size   , <hid_t> -> CSize -> IO <herr_t>
#ccall    H5Pset_sizes            , <hid_t> -> CSize -> CSize -> IO <herr_t>
#ccall    H5Pset_small_data_block_size , <hid_t> -> <hsize_t> -> IO <herr_t>
#ccall    H5Pset_sym_k            , <hid_t> -> CUInt -> CUInt -> IO <herr_t>
#ccall    H5Pset_szip             , <hid_t> -> CUInt -> CUInt -> IO <herr_t>
#ccall    H5Pset_type_conv_cb     , <hid_t> -> <H5T_conv_except_func_t> -> Ptr () -> IO <herr_t>
#ccall    H5Pset_userblock        , <hid_t> -> <hsize_t> -> IO <herr_t>
#ccall    H5Pset_vlen_mem_manager , <hid_t> -> <H5MM_allocate_t> -> Ptr () -> <H5MM_free_t> -> Ptr () -> IO <herr_t>
#ccall    H5Punregister           , <hid_t> -> CString -> IO <herr_t>

-- * H5R: Reference Interface

#ccall    H5Rcreate               , Ptr () -> <hid_t> -> CString -> <H5R_type_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Rdereference          , <hid_t> -> <H5R_type_t> -> Ptr () -> IO <hid_t>
#ccall    H5Rget_obj_type1        , <hid_t> -> <H5R_type_t> -> Ptr () -> IO <H5G_obj_t>
#ccall    H5Rget_obj_type2        , <hid_t> -> <H5R_type_t> -> Ptr () -> Ptr <H5O_type_t> -> IO <herr_t>
#ccall    H5Rget_name             , <hid_t> -> <H5R_type_t> -> Ptr () -> CString -> CSize -> IO <ssize_t>
#ccall    H5Rget_region           , <hid_t> -> <H5R_type_t> -> Ptr () -> IO <hid_t>

-- * H5S: Dataspace Interface

#ccall    H5Sclose                , <hid_t> -> IO <herr_t>
#ccall    H5Scopy                 , <hid_t> -> IO <hid_t>
#ccall    H5Screate               , <H5S_class_t> -> IO <hid_t>
#ccall    H5Screate_simple        , CInt -> Ptr <hsize_t> -> Ptr <hsize_t> -> IO <hid_t>
#ccall    H5Sdecode               , Ptr CUChar -> IO <hid_t>
#ccall    H5Sencode               , <hid_t> -> Ptr CUChar -> Ptr CSize -> IO <herr_t>
#ccall    H5Sextent_copy          , <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Sextent_equal         , <hid_t> -> <hid_t> -> IO <htri_t>
#ccall    H5Sget_select_bounds    , <hid_t> -> Ptr <hsize_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Sget_select_elem_npoints , <hid_t> -> IO <hssize_t>
#ccall    H5Sget_select_elem_pointlist , <hid_t> -> <hsize_t> -> <hsize_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Sget_select_hyper_blocklist , <hid_t> -> <hsize_t> -> <hsize_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Sget_select_hyper_nblocks , <hid_t> -> IO <hssize_t>
#ccall    H5Sget_select_npoints   , <hid_t> -> IO <hssize_t>
#ccall    H5Sget_select_type      , <hid_t> -> IO <H5S_sel_type>
#ccall    H5Sget_simple_extent_dims , <hid_t> -> Ptr <hsize_t> -> Ptr <hsize_t> -> IO CInt
#ccall    H5Sget_simple_extent_ndims , <hid_t> -> IO CInt
#ccall    H5Sget_simple_extent_npoints , <hid_t> -> IO <hssize_t>
#ccall    H5Sget_simple_extent_type , <hid_t> -> IO <H5S_class_t>
#ccall    H5Sis_simple            , <hid_t> -> IO <htri_t>
#ccall    H5Soffset_simple        , <hid_t> -> Ptr <hssize_t> -> IO <herr_t>
#ccall    H5Sselect_all           , <hid_t> -> IO <herr_t>
#ccall    H5Sselect_elements      , <hid_t> -> <H5S_seloper_t> -> CSize -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Sselect_hyperslab     , <hid_t> -> <H5S_seloper_t> -> Ptr <hsize_t> -> Ptr <hsize_t> -> Ptr <hsize_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall    H5Sselect_none          , <hid_t> -> IO <herr_t>
#ccall    H5Sselect_valid         , <hid_t> -> IO <htri_t>
#ccall    H5Sset_extent_none      , <hid_t> -> IO <herr_t>
#ccall    H5Sset_extent_simple    , <hid_t> -> CInt -> Ptr <hsize_t> -> Ptr <hsize_t> -> IO <herr_t>

-- * H5T: Datatype Interface

#ccall    H5Tarray_create1        , <hid_t> -> CInt -> Ptr <hsize_t> -> Ptr CInt -> IO <hid_t>
#ccall    H5Tarray_create2        , <hid_t> -> CUInt -> Ptr <hsize_t> -> IO <hid_t>
#ccall    H5Tclose                , <hid_t> -> IO <herr_t>
#ccall    H5Tcommit1              , <hid_t> -> CString -> <hid_t> -> IO <herr_t>
#ccall    H5Tcommit2              , <hid_t> -> CString -> <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Tcommit_anon          , <hid_t> -> <hid_t> -> <hid_t> -> <hid_t> -> IO <herr_t>
#ccall    H5Tcommitted            , <hid_t> -> IO <htri_t>
#ccall    H5Tcompiler_conv        , <hid_t> -> <hid_t> -> IO <htri_t>
#ccall    H5Tconvert              , <hid_t> -> <hid_t> -> CSize -> Ptr () -> Ptr () -> <hid_t> -> IO <herr_t>
#ccall    H5Tcopy                 , <hid_t> -> IO <hid_t>
#ccall    H5Tcreate               , <H5T_class_t> -> CSize -> IO <hid_t>
#ccall    H5Tdecode               , Ptr CUChar -> IO <hid_t>
#ccall    H5Tdetect_class         , <hid_t> -> <H5T_class_t> -> IO <htri_t>
#ccall    H5Tencode               , <hid_t> -> Ptr CUChar -> Ptr CSize -> IO <herr_t>
#ccall    H5Tenum_create          , <hid_t> -> IO <hid_t>
#ccall    H5Tenum_insert          , <hid_t> -> CString -> Ptr () -> IO <herr_t>
#ccall    H5Tenum_nameof          , <hid_t> -> Ptr () -> CString -> CSize -> IO <herr_t>
#ccall    H5Tenum_valueof         , <hid_t> -> CString -> Ptr () -> IO <herr_t>
#ccall    H5Tequal                , <hid_t> -> <hid_t> -> IO <htri_t>
#ccall    H5Tfind                 , <hid_t> -> <hid_t> -> Ptr (Ptr <H5T_cdata_t>) -> IO <H5T_conv_t>
#ccall    H5Tget_array_dims1      , <hid_t> -> Ptr <hsize_t> -> Ptr CInt -> IO CInt
#ccall    H5Tget_array_dims2      , <hid_t> -> Ptr <hsize_t> -> IO CInt
#ccall    H5Tget_array_ndims      , <hid_t> -> IO CInt
#ccall    H5Tget_class            , <hid_t> -> IO <H5T_class_t>
#ccall    H5Tget_create_plist     , <hid_t> -> IO <hid_t>
#ccall    H5Tget_cset             , <hid_t> -> IO <H5T_cset_t>
#ccall    H5Tget_ebias            , <hid_t> -> IO CSize
#ccall    H5Tget_fields           , <hid_t> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO <herr_t>
#ccall    H5Tget_inpad            , <hid_t> -> IO <H5T_pad_t>
#ccall    H5Tget_member_class     , <hid_t> -> CUInt -> IO <H5T_class_t>
#ccall    H5Tget_member_index     , <hid_t> -> CString -> IO CInt
#ccall    H5Tget_member_name      , <hid_t> -> CUInt -> IO CString
#ccall    H5Tget_member_offset    , <hid_t> -> CUInt -> IO CSize
#ccall    H5Tget_member_type      , <hid_t> -> CUInt -> IO <hid_t>
#ccall    H5Tget_member_value     , <hid_t> -> CUInt -> Ptr () -> IO <herr_t>
#ccall    H5Tget_native_type      , <hid_t> -> <H5T_direction_t> -> IO <hid_t>
#ccall    H5Tget_nmembers         , <hid_t> -> IO CInt
#ccall    H5Tget_norm             , <hid_t> -> IO <H5T_norm_t>
#ccall    H5Tget_offset           , <hid_t> -> IO CInt
#ccall    H5Tget_order            , <hid_t> -> IO <H5T_order_t>
#ccall    H5Tget_pad              , <hid_t> -> Ptr <H5T_pad_t> -> Ptr <H5T_pad_t> -> IO <herr_t>
#ccall    H5Tget_precision        , <hid_t> -> IO CSize
#ccall    H5Tget_sign             , <hid_t> -> IO <H5T_sign_t>
#ccall    H5Tget_size             , <hid_t> -> IO CSize
#ccall    H5Tget_strpad           , <hid_t> -> IO <H5T_str_t>
#ccall    H5Tget_super            , <hid_t> -> IO <hid_t>
#ccall    H5Tget_tag              , <hid_t> -> IO CString
#ccall    H5Tinsert               , <hid_t> -> CString -> CSize -> <hid_t> -> IO <herr_t>
#ccall    H5Tis_variable_str      , <hid_t> -> IO <htri_t>
#ccall    H5Tlock                 , <hid_t> -> IO <herr_t>
#ccall    H5Topen1                , <hid_t> -> CString -> IO <hid_t>
#ccall    H5Topen2                , <hid_t> -> CString -> <hid_t> -> IO <hid_t>
#ccall    H5Tpack                 , <hid_t> -> IO <herr_t>
#ccall    H5Tregister             , <H5T_pers_t> -> CString -> <hid_t> -> <hid_t> -> <H5T_conv_t> -> IO <herr_t>
#ccall    H5Tset_cset             , <hid_t> -> <H5T_cset_t> -> IO <herr_t>
#ccall    H5Tset_ebias            , <hid_t> -> CSize -> IO <herr_t>
#ccall    H5Tset_fields           , <hid_t> -> CSize -> CSize -> CSize -> CSize -> CSize -> IO <herr_t>
#ccall    H5Tset_inpad            , <hid_t> -> <H5T_pad_t> -> IO <herr_t>
#ccall    H5Tset_norm             , <hid_t> -> <H5T_norm_t> -> IO <herr_t>
#ccall    H5Tset_offset           , <hid_t> -> CSize -> IO <herr_t>
#ccall    H5Tset_order            , <hid_t> -> <H5T_order_t> -> IO <herr_t>
#ccall    H5Tset_pad              , <hid_t> -> <H5T_pad_t> -> <H5T_pad_t> -> IO <herr_t>
#ccall    H5Tset_precision        , <hid_t> -> CSize -> IO <herr_t>
#ccall    H5Tset_sign             , <hid_t> -> <H5T_sign_t> -> IO <herr_t>
#ccall    H5Tset_size             , <hid_t> -> CSize -> IO <herr_t>
#ccall    H5Tset_strpad           , <hid_t> -> <H5T_str_t> -> IO <herr_t>
#ccall    H5Tset_tag              , <hid_t> -> CString -> IO <herr_t>
#ccall    H5Tunregister           , <H5T_pers_t> -> CString -> <hid_t> -> <hid_t> -> <H5T_conv_t> -> IO <herr_t>
#ccall    H5Tvlen_create          , <hid_t> -> IO <hid_t>

-- * H5Z: Filter and Compression Interface

#ccall    H5Zfilter_avail         , <H5Z_filter_t> -> IO <htri_t>
#ccall    H5Zget_filter_info      , <H5Z_filter_t> -> Ptr CUInt -> IO <herr_t>
#ccall    H5Zregister             , Ptr <H5Z_class_t> -> IO <herr_t>
#ccall    H5Zunregister           , <H5Z_filter_t> -> IO <herr_t>



