#include <hdf5.h>
#include <hdf5_hl.h>
#include <bindings.dsl.h>

module Bindings.HDF5.Types where
#strict_import

-- * HDF5 Types (release 1.8.13)

-- Alias types
#synonym_t uint64_t , CULong
#synonym_t int64_t  , CLong
#synonym_t uint32_t , CUInt
#synonym_t in32_t   , CInt
#synonym_t off_t    , CULong

-- ** Low Level Types

-- *** H5public.h Types

#integral_t ssize_t
#integral_t hsize_t
#integral_t hssize_t
#integral_t herr_t
#integral_t hbool_t
#integral_t htri_t
#integral_t haddr_t

#num H5_VERS_MAJOR
#num H5_VERS_MINOR
#num H5_VERS_RELEASE

#num H5P_DEFAULT

#integral_t H5_iter_order_t
#num H5_ITER_UNKNOWN
#num H5_ITER_INC
#num H5_ITER_DEC
#num H5_ITER_NATIVE
#num H5_ITER_N

#num H5_ITER_ERROR
#num H5_ITER_CONT
#num H5_ITER_STOP

#integral_t H5_index_t
#num H5_INDEX_UNKNOWN
#num H5_INDEX_NAME
#num H5_INDEX_CRT_ORDER
#num H5_INDEX_N

#starttype H5_ih_info_t
#field index_size, <hsize_t>
#field heap_size, <hsize_t>
#stoptype

-- *** H5Apublic.h Types

#starttype H5A_info_t
#field corder_valid, <hbool_t>
#field corder, <H5O_msg_crt_idx_t>
#field cset, <H5T_cset_t>
#field data_size, <hsize_t>
#stoptype

#callback_t H5A_operator2_t , <hid_t> -> CString -> Ptr <H5A_info_t> -> Ptr () -> IO <herr_t>
#callback_t H5A_operator1_t , <hid_t> -> CString -> Ptr () -> IO <herr_t>

-- *** H5Dpublic.h Types

#num H5D_CHUNK_CACHE_NSLOTS_DEFAULT
#num H5D_CHUNK_CACHE_NBYTES_DEFAULT
#num H5D_CHUNK_CACHE_W0_DEFAULT

#integral_t H5D_layout_t
#num H5D_LAYOUT_ERROR
#num H5D_COMPACT
#num H5D_CONTIGUOUS
#num H5D_CHUNKED
#num H5D_NLAYOUTS

#integral_t H5D_chunk_index_t
#num H5D_CHUNK_BTREE

#integral_t H5D_alloc_time_t
#num H5D_ALLOC_TIME_ERROR
#num H5D_ALLOC_TIME_DEFAULT
#num H5D_ALLOC_TIME_EARLY
#num H5D_ALLOC_TIME_LATE
#num H5D_ALLOC_TIME_INCR

#integral_t H5D_space_status_t
#num H5D_SPACE_STATUS_ERROR
#num H5D_SPACE_STATUS_NOT_ALLOCATED
#num H5D_SPACE_STATUS_PART_ALLOCATED
#num H5D_SPACE_STATUS_ALLOCATED

#integral_t H5D_fill_time_t
#num H5D_FILL_TIME_ERROR
#num H5D_FILL_TIME_ALLOC
#num H5D_FILL_TIME_NEVER
#num H5D_FILL_TIME_IFSET

#integral_t H5D_fill_value_t
#num H5D_FILL_VALUE_ERROR
#num H5D_FILL_VALUE_UNDEFINED
#num H5D_FILL_VALUE_DEFAULT
#num H5D_FILL_VALUE_USER_DEFINED

#callback_t H5D_operator_t , Ptr () -> <hid_t> -> CUInt -> Ptr <hsize_t> -> Ptr () -> IO <herr_t>
#callback_t H5D_scatter_func_t , Ptr (Ptr ()) -> Ptr CSize -> Ptr () -> IO <herr_t>
#callback_t H5D_gather_func_t , Ptr () -> CSize -> Ptr () -> IO <herr_t>

-- *** H5Epublic.h Types

#num H5E_DEFAULT

#integral_t H5E_type_t
#num H5E_MAJOR
#num H5E_MINOR

#starttype H5E_error2_t
#field cls_id, <hid_t>
#field maj_num, <hid_t>
#field min_num, <hid_t>
#field line, CUInt
#field func_name, CString
#field file_name, CString
#field desc, CString
#stoptype

#integral_t H5E_direction_t
#num H5E_WALK_UPWARD
#num H5E_WALK_DOWNWARD

#callback_t H5E_walk2_t , CUInt -> Ptr <H5E_error2_t> -> Ptr () -> IO <herr_t>
#callback_t H5E_auto2_t , <hid_t> -> Ptr () -> IO <herr_t>

#synonym_t H5E_major_t, <hid_t>
#synonym_t H5E_minor_t, <hid_t>

#starttype H5E_error1_t
#field maj_num, <H5E_major_t>
#field min_num, <H5E_minor_t>
#field func_name, CString
#field file_name, CString
#field line, CUInt
#field desc, CString
#stoptype

#callback_t H5E_walk1_t , CInt -> Ptr <H5E_error1_t> -> Ptr () -> IO <herr_t>
#callback_t H5E_auto1_t , Ptr () -> IO <herr_t>

-- *** H5Fpublic.h Types

#num H5F_ACC_RDONLY
#num H5F_ACC_RDWR
#num H5F_ACC_TRUNC
#num H5F_ACC_EXCL
#num H5F_ACC_DEBUG
#num H5F_ACC_CREAT

#num H5F_ACC_DEFAULT

#num H5F_OBJ_FILE
#num H5F_OBJ_DATASET
#num H5F_OBJ_GROUP
#num H5F_OBJ_DATATYPE
#num H5F_OBJ_ATTR
#num H5F_OBJ_ALL
#num H5F_OBJ_LOCAL

#num H5F_FAMILY_DEFAULT

#integral_t H5F_scope_t
#num H5F_SCOPE_LOCAL
#num H5F_SCOPE_GLOBAL

#num H5F_UNLIMITED

#integral_t H5F_close_degree_t
#num H5F_CLOSE_DEFAULT
#num H5F_CLOSE_WEAK
#num H5F_CLOSE_SEMI
#num H5F_CLOSE_STRONG

#starttype H5F_info_t
#field super_ext_size, <hsize_t>
#field sohm.hdr_size, <hsize_t>
#field sohm.msgs_info, <H5_ih_info_t>
#stoptype

#integral_t H5F_mem_t
#num H5FD_MEM_NOLIST
#num H5FD_MEM_DEFAULT
#num H5FD_MEM_SUPER
#num H5FD_MEM_BTREE
#num H5FD_MEM_DRAW
#num H5FD_MEM_GHEAP
#num H5FD_MEM_LHEAP
#num H5FD_MEM_OHDR
#num H5FD_MEM_NTYPES

#integral_t H5F_libver_t
#num H5F_LIBVER_EARLIEST
#num H5F_LIBVER_LATEST

-- *** H5Gpublic.h Types

#integral_t H5G_storage_type_t
#num H5G_STORAGE_TYPE_UNKNOWN
#num H5G_STORAGE_TYPE_SYMBOL_TABLE
#num H5G_STORAGE_TYPE_COMPACT
#num H5G_STORAGE_TYPE_DENSE

#starttype H5G_info_t
#field storage_type, <H5G_storage_type_t>
#field nlinks, <hsize_t>
#field max_corder, <int64_t>
#field mounted, <hbool_t>
#stoptype

#num H5G_SAME_LOC
#num H5G_LINK_ERROR
#num H5G_LINK_HARD
#num H5G_LINK_SOFT
#synonym_t H5G_link_t, <H5L_type_t>

#num H5G_NTYPES
#num H5G_NLIBTYPES
#num H5G_NUSERTYPES

#integral_t H5G_obj_t
#num H5G_UNKNOWN
#num H5G_GROUP
#num H5G_DATASET
#num H5G_TYPE
#num H5G_LINK
#num H5G_UDLINK
#num H5G_RESERVED_5
#num H5G_RESERVED_6
#num H5G_RESERVED_7

#callback_t H5G_iterate_t , <hid_t> -> CString -> Ptr () -> IO <herr_t>

#starttype H5G_stat_t
#array_field fileno, CULong
#array_field objno, CULong
#field nlink, CUInt
#field type, <H5G_obj_t>
#field mtime, CTime
#field linklen, CSize
#field ohdr, <H5O_stat_t>
#stoptype

-- *** H5Ipublic.h Types

#integral_t H5I_type_t
#num H5I_UNINIT
#num H5I_BADID
#num H5I_FILE
#num H5I_GROUP
#num H5I_DATATYPE
#num H5I_DATASPACE
#num H5I_DATASET
#num H5I_ATTR
#num H5I_REFERENCE
#num H5I_VFL
#num H5I_GENPROP_CLS
#num H5I_GENPROP_LST
#num H5I_ERROR_CLASS
#num H5I_ERROR_MSG
#num H5I_ERROR_STACK
#num H5I_NTYPES

#integral_t hid_t
#num H5_SIZEOF_HID_T
#num H5I_INVALID_HID

#callback_t H5I_free_t , Ptr () -> IO <herr_t>
#callback_t H5I_search_func_t , Ptr () -> <hid_t> -> Ptr () -> IO CInt

-- *** H5Lpublic.h Types

#num H5L_MAX_LINK_NAME_LEN
#num H5L_SAME_LOC
#num H5L_LINK_CLASS_T_VERS

#integral_t H5L_type_t
#num H5L_TYPE_ERROR
#num H5L_TYPE_HARD
#num H5L_TYPE_SOFT
#num H5L_TYPE_EXTERNAL
#num H5L_TYPE_MAX

#num H5L_TYPE_BUILTIN_MAX
#num H5L_TYPE_UD_MIN

#starttype H5L_info_t
#field type, <H5L_type_t>
#field corder_valid, <hbool_t>
#field corder, <int64_t>
#field cset, <H5T_cset_t>
#field u.address, <haddr_t>
#field u.val_size, CSize
#stoptype

#callback_t H5L_create_func_t , CString -> <hid_t> -> Ptr () -> CSize -> <hid_t> -> IO <herr_t>
#callback_t H5L_move_func_t , CString -> <hid_t> -> Ptr () -> CSize -> IO <herr_t>
#callback_t H5L_copy_func_t , CString -> <hid_t> -> Ptr () -> CSize -> IO <herr_t>
#callback_t H5L_traverse_func_t , CString -> <hid_t> -> Ptr () -> CSize -> <hid_t> -> IO <herr_t>
#callback_t H5L_delete_func_t , CString ->  <hid_t> -> Ptr () -> CSize -> IO <herr_t>
#callback_t H5L_query_func_t , CString -> Ptr () -> CSize -> Ptr () -> CSize -> IO <ssize_t>

#starttype H5L_class_t
#field version, CInt
#field id, <H5L_type_t>
#field comment, CString
#field create_func, <H5L_create_func_t>
#field move_func, <H5L_move_func_t>
#field copy_func, <H5L_copy_func_t>
#field trav_func, <H5L_traverse_func_t>
#field del_func, <H5L_delete_func_t>
#field query_func, <H5L_query_func_t>
#stoptype

#callback_t H5L_iterate_t , <hid_t> -> CString -> Ptr <H5L_info_t> -> Ptr () -> IO <herr_t>
#callback_t H5L_elink_traverse_t , CString -> CString -> CString -> CString -> Ptr CUInt -> <hid_t> -> Ptr () -> IO <herr_t>

-- *** H5Opublic.h Types

#num H5O_COPY_SHALLOW_HIERARCHY_FLAG
#num H5O_COPY_EXPAND_SOFT_LINK_FLAG
#num H5O_COPY_EXPAND_EXT_LINK_FLAG
#num H5O_COPY_EXPAND_REFERENCE_FLAG
#num H5O_COPY_WITHOUT_ATTR_FLAG
#num H5O_COPY_PRESERVE_NULL_FLAG
#num H5O_COPY_MERGE_COMMITTED_DTYPE_FLAG
#num H5O_COPY_ALL

#num H5O_SHMESG_NONE_FLAG
#num H5O_SHMESG_SDSPACE_FLAG
#num H5O_SHMESG_DTYPE_FLAG
#num H5O_SHMESG_FILL_FLAG
#num H5O_SHMESG_PLINE_FLAG
#num H5O_SHMESG_ATTR_FLAG
#num H5O_SHMESG_ALL_FLAG

#num H5O_HDR_CHUNK0_SIZE
#num H5O_HDR_ATTR_CRT_ORDER_TRACKED
#num H5O_HDR_ATTR_CRT_ORDER_INDEXED
#num H5O_HDR_ATTR_STORE_PHASE_CHANGE
#num H5O_HDR_STORE_TIMES
#num H5O_HDR_ALL_FLAGS

#num H5O_SHMESG_MAX_NINDEXES
#num H5O_SHMESG_MAX_LIST_SIZE

#integral_t H5O_type_t
#num H5O_TYPE_UNKNOWN
#num H5O_TYPE_GROUP
#num H5O_TYPE_DATASET
#num H5O_TYPE_NAMED_DATATYPE
#num H5O_TYPE_NTYPES

#starttype H5O_hdr_info_t
#field version, CUInt
#field nmesgs, CUInt
#field nchunks, CUInt
#field flags, CUInt
#field space.total, <hsize_t>
#field space.meta, <hsize_t>
#field space.mesg, <hsize_t>
#field space.free, <hsize_t>
#field mesg.present, <uint64_t>
#field mesg.shared, <uint64_t>
#stoptype

#starttype H5O_info_t
#field fileno, CULong
#field addr, <haddr_t>
#field type, <H5O_type_t>
#field rc, CUInt
#field atime, CTime
#field mtime, CTime
#field ctime, CTime
#field btime, CTime
#field num_attrs, <hsize_t>
#field hdr, <H5O_hdr_info_t>
#field meta_size.obj, <H5_ih_info_t>
#field meta_size.attr, <H5_ih_info_t>
#stoptype

#integral_t H5O_msg_crt_idx_t

#callback_t H5O_iterate_t , <hid_t> -> CString -> Ptr <H5O_info_t> -> Ptr () -> IO <herr_t>

#integral_t H5O_mcdt_search_ret_t
#num H5O_MCDT_SEARCH_ERROR
#num H5O_MCDT_SEARCH_CONT
#num H5O_MCDT_SEARCH_STOP

#callback_t H5O_mcdt_search_cb_t , Ptr () -> IO <H5O_mcdt_search_ret_t>

#starttype H5O_stat_t
#field size, <hsize_t>
#field free, <hsize_t>
#field nmesgs, CUInt
#field nchunks, CUInt
#stoptype

-- *** H5Ppublic.h Types

#num H5P_ROOT
#num H5P_OBJECT_CREATE
#num H5P_FILE_CREATE
#num H5P_FILE_ACCESS
#num H5P_DATASET_CREATE
#num H5P_DATASET_ACCESS
#num H5P_DATASET_XFER
#num H5P_FILE_MOUNT
#num H5P_GROUP_CREATE
#num H5P_GROUP_ACCESS
#num H5P_DATATYPE_CREATE
#num H5P_DATATYPE_ACCESS
#num H5P_STRING_CREATE
#num H5P_ATTRIBUTE_CREATE
#num H5P_OBJECT_COPY
#num H5P_LINK_CREATE
#num H5P_LINK_ACCESS

#num H5P_FILE_CREATE_DEFAULT
#num H5P_FILE_ACCESS_DEFAULT
#num H5P_DATASET_CREATE_DEFAULT
#num H5P_DATASET_ACCESS_DEFAULT
#num H5P_DATASET_XFER_DEFAULT
#num H5P_FILE_MOUNT_DEFAULT
#num H5P_GROUP_CREATE_DEFAULT
#num H5P_GROUP_ACCESS_DEFAULT
#num H5P_DATATYPE_CREATE_DEFAULT
#num H5P_DATATYPE_ACCESS_DEFAULT
#num H5P_ATTRIBUTE_CREATE_DEFAULT
#num H5P_OBJECT_COPY_DEFAULT
#num H5P_LINK_CREATE_DEFAULT
#num H5P_LINK_ACCESS_DEFAULT

#num H5P_CRT_ORDER_TRACKED
#num H5P_CRT_ORDER_INDEXED

#callback_t H5P_cls_create_func_t , <hid_t> -> Ptr () -> IO <herr_t>
#callback_t H5P_cls_copy_func_t , <hid_t> -> <hid_t> -> Ptr () -> IO <herr_t>
#callback_t H5P_cls_close_func_t , <hid_t> -> Ptr () -> IO <herr_t>

#callback_t H5P_prp_cb1_t , CString -> CSize -> Ptr () -> IO <herr_t>
#callback_t H5P_prp_cb2_t , <hid_t> -> CString -> CSize -> Ptr () -> IO <herr_t>

#synonym_t H5P_prp_create_func_t, <H5P_prp_cb1_t>
#synonym_t H5P_prp_set_func_t, <H5P_prp_cb2_t>
#synonym_t H5P_prp_get_func_t, <H5P_prp_cb2_t>
#synonym_t H5P_prp_delete_func_t, <H5P_prp_cb2_t>
#synonym_t H5P_prp_copy_func_t, <H5P_prp_cb1_t>
#callback_t H5P_prp_compare_func_t, Ptr () -> Ptr () -> CSize -> IO CInt
#synonym_t H5P_prp_close_func_t, <H5P_prp_cb1_t>

#callback_t H5P_iterate_t, <hid_t> -> CString -> Ptr () -> IO <herr_t>

#integral_t H5D_mpio_actual_chunk_opt_mode_t
#num H5D_MPIO_NO_CHUNK_OPTIMIZATION
#num H5D_MPIO_LINK_CHUNK
#num H5D_MPIO_MULTI_CHUNK

#integral_t H5D_mpio_actual_io_mode_t
#num H5D_MPIO_NO_COLLECTIVE
#num H5D_MPIO_CHUNK_INDEPENDENT
#num H5D_MPIO_CHUNK_COLLECTIVE
#num H5D_MPIO_CHUNK_MIXED
#num H5D_MPIO_CONTIGUOUS_COLLECTIVE

#integral_t H5D_mpio_no_collective_cause_t
#num H5D_MPIO_COLLECTIVE
#num H5D_MPIO_SET_INDEPENDENT
#num H5D_MPIO_DATATYPE_CONVERSION
#num H5D_MPIO_DATA_TRANSFORMS
#num H5D_MPIO_MPI_OPT_TYPES_ENV_VAR_DISABLED
#num H5D_MPIO_NOT_SIMPLE_OR_SCALAR_DATASPACES
#num H5D_MPIO_NOT_CONTIGUOUS_OR_CHUNKED_DATASET
#num H5D_MPIO_FILTERS

-- *** H5Rpublic.h Types

#integral_t H5R_type_t
#num H5R_BADTYPE
#num H5R_OBJECT
#num H5R_DATASET_REGION
#num H5R_MAXTYPE

#num H5R_OBJ_REF_BUF_SIZE

#num H5R_DSET_REG_REF_BUF_SIZE

#synonym_t hobj_ref_t, <haddr_t>

#synonym_t hdset_reg_ref_t, Ptr CUChar

-- *** H5Spublic.h Types

#num H5S_ALL
#num H5S_UNLIMITED
#num H5S_MAX_RANK

#integral_t H5S_class_t
#num H5S_NO_CLASS
#num H5S_SCALAR
#num H5S_SIMPLE
#num H5S_NULL

#integral_t H5S_seloper_t
#num H5S_SELECT_NOOP
#num H5S_SELECT_SET
#num H5S_SELECT_OR
#num H5S_SELECT_AND
#num H5S_SELECT_XOR
#num H5S_SELECT_NOTB
#num H5S_SELECT_NOTA
#num H5S_SELECT_APPEND
#num H5S_SELECT_PREPEND
#num H5S_SELECT_INVALID

#integral_t H5S_sel_type
#num H5S_SEL_ERROR
#num H5S_SEL_NONE
#num H5S_SEL_POINTS
#num H5S_SEL_HYPERSLABS
#num H5S_SEL_ALL
#num H5S_SEL_N

-- *** H5Tpublic.h Types

#integral_t H5T_class_t
#num H5T_NO_CLASS
#num H5T_INTEGER
#num H5T_FLOAT
#num H5T_TIME
#num H5T_STRING
#num H5T_BITFIELD
#num H5T_OPAQUE
#num H5T_COMPOUND
#num H5T_REFERENCE
#num H5T_ENUM
#num H5T_VLEN
#num H5T_ARRAY
#num H5T_NCLASSES

#integral_t H5T_order_t
#num H5T_ORDER_ERROR
#num H5T_ORDER_LE
#num H5T_ORDER_BE
#num H5T_ORDER_VAX
#num H5T_ORDER_MIXED
#num H5T_ORDER_NONE

#integral_t H5T_sign_t
#num H5T_SGN_ERROR
#num H5T_SGN_NONE
#num H5T_SGN_2
#num H5T_NSGN

#integral_t H5T_norm_t
#num H5T_NORM_ERROR
#num H5T_NORM_IMPLIED
#num H5T_NORM_MSBSET
#num H5T_NORM_NONE

#integral_t H5T_cset_t
#num H5T_CSET_ERROR
#num H5T_CSET_ASCII
#num H5T_CSET_UTF8
#num H5T_CSET_RESERVED_2
#num H5T_CSET_RESERVED_3
#num H5T_CSET_RESERVED_4
#num H5T_CSET_RESERVED_5
#num H5T_CSET_RESERVED_6
#num H5T_CSET_RESERVED_7
#num H5T_CSET_RESERVED_8
#num H5T_CSET_RESERVED_9
#num H5T_CSET_RESERVED_10
#num H5T_CSET_RESERVED_11
#num H5T_CSET_RESERVED_12
#num H5T_CSET_RESERVED_13
#num H5T_CSET_RESERVED_14
#num H5T_CSET_RESERVED_15

#num H5T_NCSET

#integral_t H5T_str_t
#num H5T_STR_ERROR
#num H5T_STR_NULLTERM
#num H5T_STR_NULLPAD
#num H5T_STR_SPACEPAD
#num H5T_STR_RESERVED_3
#num H5T_STR_RESERVED_4
#num H5T_STR_RESERVED_5
#num H5T_STR_RESERVED_6
#num H5T_STR_RESERVED_7
#num H5T_STR_RESERVED_8
#num H5T_STR_RESERVED_9
#num H5T_STR_RESERVED_10
#num H5T_STR_RESERVED_11
#num H5T_STR_RESERVED_12
#num H5T_STR_RESERVED_13
#num H5T_STR_RESERVED_14
#num H5T_STR_RESERVED_15

#num H5T_NSTR

#integral_t H5T_pad_t
#num H5T_PAD_ERROR
#num H5T_PAD_ZERO
#num H5T_PAD_ONE
#num H5T_PAD_BACKGROUND
#num H5T_NPAD

#integral_t H5T_cmd_t
#num H5T_CONV_INIT
#num H5T_CONV_CONV
#num H5T_CONV_FREE

#integral_t H5T_bkg_t
#num H5T_BKG_NO
#num H5T_BKG_TEMP
#num H5T_BKG_YES

#starttype H5T_cdata_t
#field command, <H5T_cmd_t>
#field need_bkg, <H5T_bkg_t>
#field recalc, <hbool_t>
#field priv, Ptr ()
#stoptype

#integral_t H5T_pers_t
#num H5T_PERS_DONTCARE
#num H5T_PERS_HARD
#num H5T_PERS_SOFT

#integral_t H5T_direction_t
#num H5T_DIR_DEFAULT
#num H5T_DIR_ASCEND
#num H5T_DIR_DESCEND

#integral_t H5T_conv_except_t
#num H5T_CONV_EXCEPT_RANGE_HI
#num H5T_CONV_EXCEPT_RANGE_LOW
#num H5T_CONV_EXCEPT_PRECISION
#num H5T_CONV_EXCEPT_TRUNCATE
#num H5T_CONV_EXCEPT_PINF
#num H5T_CONV_EXCEPT_NINF
#num H5T_CONV_EXCEPT_NAN

#integral_t H5T_conv_ret_t
#num H5T_CONV_ABORT
#num H5T_CONV_UNHANDLED
#num H5T_CONV_HANDLED

#starttype hvl_t
#field len, CSize
#field p, Ptr ()
#stoptype

#num H5T_VARIABLE
#num H5T_OPAQUE_TAG_MAX

#callback_t H5T_conv_t , <hid_t> -> <hid_t> -> Ptr <H5T_cdata_t> -> CSize -> CSize -> CSize -> Ptr () -> Ptr () -> <hid_t> -> IO <herr_t>

#callback_t H5T_conv_except_func_t , <H5T_conv_except_t> -> <hid_t> -> <hid_t> -> Ptr () -> Ptr () -> Ptr () -> IO <H5T_conv_ret_t>

#num H5T_NATIVE_CHAR
#num H5T_NATIVE_SCHAR
#num H5T_NATIVE_UCHAR
#num H5T_NATIVE_SHORT
#num H5T_NATIVE_USHORT
#num H5T_NATIVE_INT
#num H5T_NATIVE_UINT
#num H5T_NATIVE_LONG
#num H5T_NATIVE_ULONG
#num H5T_NATIVE_LLONG
#num H5T_NATIVE_ULLONG
#num H5T_NATIVE_FLOAT
#num H5T_NATIVE_DOUBLE
#num H5T_NATIVE_LDOUBLE
#num H5T_NATIVE_B8
#num H5T_NATIVE_B16
#num H5T_NATIVE_B32
#num H5T_NATIVE_B64
#num H5T_NATIVE_OPAQUE
#num H5T_NATIVE_HADDR
#num H5T_NATIVE_HSIZE
#num H5T_NATIVE_HSSIZE
#num H5T_NATIVE_HERR
#num H5T_NATIVE_HBOOL

-- *** H5Zpublic.h Types

#integral_t H5Z_filter_t
#num H5Z_FILTER_ERROR
#num H5Z_FILTER_NONE
#num H5Z_FILTER_DEFLATE
#num H5Z_FILTER_SHUFFLE
#num H5Z_FILTER_FLETCHER32
#num H5Z_FILTER_SZIP
#num H5Z_FILTER_NBIT
#num H5Z_FILTER_SCALEOFFSET
#num H5Z_FILTER_RESERVED
#num H5Z_FILTER_MAX

#num H5Z_FILTER_ALL
#num H5Z_MAX_NFILTERS

#num H5Z_FLAG_DEFMASK
#num H5Z_FLAG_MANDATORY
#num H5Z_FLAG_OPTIONAL

#num H5Z_FLAG_INVMASK
#num H5Z_FLAG_REVERSE
#num H5Z_FLAG_SKIP_EDC

#num H5_SZIP_ALLOW_K13_OPTION_MASK
#num H5_SZIP_CHIP_OPTION_MASK
#num H5_SZIP_EC_OPTION_MASK
#num H5_SZIP_NN_OPTION_MASK
#num H5_SZIP_MAX_PIXELS_PER_BLOCK

#num H5Z_SHUFFLE_USER_NPARMS
#num H5Z_SHUFFLE_TOTAL_NPARMS

#num H5Z_SZIP_USER_NPARMS
#num H5Z_SZIP_TOTAL_NPARMS
#num H5Z_SZIP_PARM_MASK
#num H5Z_SZIP_PARM_PPB
#num H5Z_SZIP_PARM_BPP
#num H5Z_SZIP_PARM_PPS

#num H5Z_NBIT_USER_NPARMS

#num H5Z_SCALEOFFSET_USER_NPARMS

#num H5Z_SO_INT_MINBITS_DEFAULT
#integral_t H5Z_SO_scale_type_t
#num H5Z_SO_FLOAT_DSCALE
#num H5Z_SO_FLOAT_ESCALE
#num H5Z_SO_INT

#num H5Z_CLASS_T_VERS

#integral_t H5Z_EDC_t
#num H5Z_ERROR_EDC
#num H5Z_DISABLE_EDC
#num H5Z_ENABLE_EDC
#num H5Z_NO_EDC

#num H5Z_FILTER_CONFIG_ENCODE_ENABLED
#num H5Z_FILTER_CONFIG_DECODE_ENABLED

#integral_t H5Z_cb_return_t
#num H5Z_CB_ERROR
#num H5Z_CB_FAIL
#num H5Z_CB_CONT
#num H5Z_CB_NO

#callback_t H5Z_filter_func_t , <H5Z_filter_t> -> Ptr () -> CSize -> Ptr () -> IO <H5Z_cb_return_t>

#callback_t H5Z_can_apply_func_t , <hid_t> -> <hid_t> -> <hid_t> -> IO <htri_t>

#callback_t H5Z_set_local_func_t , <hid_t> -> <hid_t> -> <hid_t> -> IO <herr_t>

#callback_t H5Z_func_t , CUInt -> CSize -> Ptr CUInt -> CSize -> Ptr CSize -> Ptr (Ptr ()) -> IO CSize

#starttype H5Z_class2_t
#field version, CInt
#field id, <H5Z_filter_t>
#field encoder_present, CUInt
#field decoder_present, CUInt
#field name, CString
#field can_apply, <H5Z_can_apply_func_t>
#field set_local, <H5Z_set_local_func_t>
#field filter, <H5Z_func_t>
#stoptype

#starttype H5Z_class1_t
#field id, <H5Z_filter_t>
#field name, CString
#field can_apply, <H5Z_can_apply_func_t>
#field set_local, <H5Z_set_local_func_t>
#field filter, <H5Z_func_t>
#stoptype

-- *** H5Cpublic.h Types

#integral_t enum H5C_cache_incr_mode
#num H5C_incr__off
#num H5C_incr__threshold

#integral_t enum H5C_cache_flash_incr_mode
#num H5C_flash_incr__off
#num H5C_flash_incr__add_space

#integral_t enum H5C_cache_decr_mode
#num H5C_decr__off
#num H5C_decr__threshold
#num H5C_decr__age_out
#num H5C_decr__age_out_with_threshold

-- *** H5FDpublic.h Types

#synonym_t H5FD_mem_t, <H5F_mem_t>

#integral_t H5FD_file_image_op_t
#num H5FD_FILE_IMAGE_OP_NO_OP
#num H5FD_FILE_IMAGE_OP_PROPERTY_LIST_SET
#num H5FD_FILE_IMAGE_OP_PROPERTY_LIST_COPY
#num H5FD_FILE_IMAGE_OP_PROPERTY_LIST_GET
#num H5FD_FILE_IMAGE_OP_PROPERTY_LIST_CLOSE
#num H5FD_FILE_IMAGE_OP_FILE_OPEN
#num H5FD_FILE_IMAGE_OP_FILE_RESIZE
#num H5FD_FILE_IMAGE_OP_FILE_CLOSE

#callback_t image_malloc  , CSize -> <H5FD_file_image_op_t> -> Ptr () -> IO ()
#callback_t image_memcpy  , Ptr () -> Ptr () -> CSize -> <H5FD_file_image_op_t> -> Ptr () -> IO ()
#callback_t image_realloc , Ptr () -> CSize -> <H5FD_file_image_op_t> -> Ptr () -> IO ()
#callback_t image_free    , Ptr () -> <H5FD_file_image_op_t> -> Ptr () -> IO <herr_t>
#callback_t udata_copy    , Ptr () -> IO ()
#callback_t udata_free    , Ptr () -> IO <herr_t>

#starttype H5FD_file_image_callbacks_t
#field image_malloc, <image_malloc>
#field image_memcpy, <image_memcpy>
#field image_realloc, <image_realloc>
#field image_free, <image_free>
#field udata_copy, <udata_copy>
#field udata_free, <udata_free>
#field udata, Ptr ()
#stoptype

-- *** H5ACpublic.h Types

#starttype H5AC_cache_config_t
#field version, CInt
#field rpt_fcn_enabled, <hbool_t>
#field open_trace_file, <hbool_t>
#field close_trace_file, <hbool_t>
#array_field trace_file_name, CChar
#field evictions_enabled, <hbool_t>
#field set_initial_size, <hbool_t>
#field initial_size, CSize
#field min_clean_fraction, CDouble
#field max_size, CSize
#field min_size, CSize
#field epoch_length, CLong
#field incr_mode, <H5C_cache_incr_mode>
#field lower_hr_threshold, CDouble
#field increment, CDouble
#field apply_max_increment, <hbool_t>
#field max_increment, CSize
#field flash_incr_mode, <H5C_cache_flash_incr_mode>
#field flash_multiple, CDouble
#field flash_threshold, CDouble
#field decr_mode, <H5C_cache_decr_mode>
#field upper_hr_threshold, CDouble
#field decrement, CDouble
#field apply_max_decrement, <hbool_t>
#field max_decrement, CSize
#field epochs_before_eviction, CInt
#field apply_empty_reserve, <hbool_t>
#field empty_reserve, CDouble
#field dirty_bytes_threshold, CInt
#field metadata_write_strategy, CInt
#stoptype

-- *** H5MMpublic.h Types

#callback_t H5MM_allocate_t , CSize -> Ptr () -> IO ()
#callback_t H5MM_free_t , Ptr () -> Ptr () -> IO ()








#integral_t H5LT_lang_t
#num H5LT_LANG_ERR
#num H5LT_DDL
#num H5LT_C
#num H5LT_FORTRAN
#num H5LT_NO_LANG

#callback_t H5DS_iterate_t , <hid_t> -> CUInt -> <hid_t> -> Ptr () -> IO <herr_t>


