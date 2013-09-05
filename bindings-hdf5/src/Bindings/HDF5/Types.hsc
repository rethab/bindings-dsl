#include <hdf5.h>
#include <hdf5_hl.h>
#include <bindings.dsl.h>

module Bindings.HDF5.Types where
#strict_import

#integral_t ssize_t
#integral_t hsize_t
#integral_t hssize_t
#integral_t herr_t
#integral_t hbool_t
#integral_t htri_t
#integral_t hid_t

#integral_t H5LT_lang_t
#num H5LT_LANG_ERR
#num H5LT_DDL
#num H5LT_C
#num H5LT_FORTRAN
#num H5LT_NO_LANG

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

#callback_t H5DS_iterate_t , <hid_t> -> CUInt -> <hid_t> -> Ptr () -> IO <herr_t>
