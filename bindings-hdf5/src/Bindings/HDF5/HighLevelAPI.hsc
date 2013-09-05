#include <hdf5.h>
#include <hdf5_hl.h>
#include <bindings.dsl.h>

module Bindings.HDF5.HighLevelAPI where
#strict_import
import Bindings.HDF5.Types

#ccall H5LTpath_valid , <hid_t> -> CString -> <hbool_t> -> IO <htri_t>
#ccall H5LTopen_file_image , Ptr () -> CSize -> CUInt -> IO <hid_t>
#ccall H5LTmake_dataset , <hid_t> -> CString -> CInt -> Ptr <hsize_t> -> <hid_t> -> Ptr () -> IO <herr_t>
#ccall H5LTmake_dataset_char , <hid_t> -> CString -> CInt -> Ptr <hsize_t> -> CString -> IO <herr_t>
#ccall H5LTmake_dataset_short , <hid_t> -> CString -> CInt -> Ptr <hsize_t> -> Ptr CShort -> IO <herr_t>
#ccall H5LTmake_dataset_int , <hid_t> -> CString -> CInt -> Ptr <hsize_t> -> Ptr CInt -> IO <herr_t>
#ccall H5LTmake_dataset_long , <hid_t> -> CString -> CInt -> Ptr <hsize_t> -> Ptr CLong -> IO <herr_t>
#ccall H5LTmake_dataset_float , <hid_t> -> CString -> CInt -> Ptr <hsize_t> -> Ptr CFloat -> IO <herr_t>
#ccall H5LTmake_dataset_double , <hid_t> -> CString -> CInt -> Ptr <hsize_t> -> Ptr CDouble -> IO <herr_t>
#ccall H5LTmake_dataset_string , <hid_t> -> CString -> CString -> IO <herr_t>
#ccall H5LTread_dataset , <hid_t> -> CString -> <hid_t> -> Ptr () -> IO <herr_t>
#ccall H5LTread_dataset_char , <hid_t> -> CString -> CString -> IO <herr_t>
#ccall H5LTread_dataset_short , <hid_t> -> CString -> Ptr CShort -> IO <herr_t>
#ccall H5LTread_dataset_int , <hid_t> -> CString -> Ptr CInt -> IO <herr_t>
#ccall H5LTread_dataset_long , <hid_t> -> CString -> Ptr CLong -> IO <herr_t>
#ccall H5LTread_dataset_float , <hid_t> -> CString -> Ptr CFloat -> IO <herr_t>
#ccall H5LTread_dataset_double , <hid_t> -> CString -> Ptr CDouble -> IO <herr_t>
#ccall H5LTread_dataset_string , <hid_t> -> CString -> CString -> IO <herr_t>
#ccall H5LTfind_dataset , <hid_t> -> CString -> IO <herr_t>
#ccall H5LTget_dataset_ndims , <hid_t> -> CString -> Ptr CInt -> IO <herr_t>
#ccall H5LTget_dataset_info , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <H5T_class_t> -> Ptr CSize -> IO <herr_t>
#ccall H5LTset_attribute_string , <hid_t> -> CString -> CString -> CString -> IO <herr_t>
#ccall H5LTset_attribute_char , <hid_t> -> CString -> CString -> CString -> Ptr <hsize_t> -> IO <herr_t>
#ccall H5LTset_attribute_short , <hid_t> -> CString -> CString -> Ptr CShort -> Ptr <hsize_t> -> IO <herr_t>
#ccall H5LTset_attribute_int , <hid_t> -> CString -> CString -> Ptr CInt -> CSize -> IO <herr_t>
#ccall H5LTset_attribute_long , <hid_t> -> CString -> CString -> Ptr CLong -> Ptr <hsize_t> -> IO <herr_t>
#ccall H5LTset_attribute_long_long , <hid_t> -> CString -> CString -> Ptr CLLong -> CSize -> IO <herr_t>
#ccall H5LTset_attribute_float , <hid_t> -> CString -> CString -> Ptr CFloat -> Ptr <hsize_t> -> IO <herr_t>
#ccall H5LTset_attribute_double , <hid_t> -> CString -> CString -> Ptr CDouble -> CSize -> IO <herr_t>
#ccall H5LTget_attribute , <hid_t> -> CString -> CString -> <hid_t> -> Ptr () -> IO <herr_t>
#ccall H5LTget_attribute_string , <hid_t> -> CString -> CString -> CString -> IO <herr_t>
#ccall H5LTget_attribute_char , <hid_t> -> CString -> CString -> Ptr Char -> IO <herr_t>
#ccall H5LTget_attribute_uchar , <hid_t> -> CString -> CString -> Ptr CUChar -> IO <herr_t>
#ccall H5LTget_attribute_short , <hid_t> -> CString -> CString -> Ptr CShort -> IO <herr_t>
#ccall H5LTget_attribute_int , <hid_t> -> CString -> CString -> Ptr CInt -> IO <herr_t>
#ccall H5LTget_attribute_long , <hid_t> -> CString -> CString -> Ptr CLong -> IO <herr_t>
#ccall H5LTget_attribute_long_long , <hid_t> -> CString -> CString -> Ptr CLLong -> IO <herr_t>
#ccall H5LTget_attribute_float , <hid_t> -> CString -> CString -> Ptr CFloat -> IO <herr_t>
#ccall H5LTget_attribute_double , <hid_t> -> CString -> CString -> Ptr CDouble -> IO <herr_t>
#ccall H5LTfind_attribute , <hid_t> -> CString -> IO <herr_t>
#ccall H5LTget_attribute_ndims , <hid_t> -> CString -> CString -> Ptr CInt -> IO <herr_t>
#ccall H5LTget_attribute_info , <hid_t> -> CString -> CString -> Ptr <hsize_t> -> Ptr <H5T_class_t> -> Ptr CSize -> IO <herr_t>
#ccall H5LTtext_to_dtype , CString -> <H5LT_lang_t> -> IO <hid_t>
#ccall H5LTdtype_to_text , <hid_t> -> CString -> <H5LT_lang_t> -> Ptr CSize -> IO <herr_t>
#ccall H5IMmake_image_8bit , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> Ptr CUChar -> IO <herr_t>
#ccall H5IMmake_image_24bit , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> CString -> Ptr CUChar -> IO <herr_t>
#ccall H5IMget_image_info , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> Ptr <hsize_t> -> CString -> Ptr <hssize_t> -> IO <herr_t>
#ccall H5IMread_image , <hid_t> -> CString -> Ptr CUChar -> IO <herr_t>
#ccall H5IMis_image , <hid_t> -> CString -> IO <herr_t>
#ccall H5IMmake_palette , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr CUChar -> IO <herr_t>
#ccall H5IMlink_palette , <hid_t> -> CString -> CString -> IO <herr_t>
#ccall H5IMunlink_palette , <hid_t> -> CString -> CString -> IO <herr_t>
#ccall H5IMget_npalettes , <hid_t> -> CString -> Ptr <hssize_t> -> IO <herr_t>
#ccall H5IMget_palette_info , <hid_t> -> CString -> CInt -> Ptr <hsize_t> -> IO <herr_t>
#ccall H5IMget_palette , <hid_t> -> CString -> CInt -> Ptr CUChar -> IO <herr_t>
#ccall H5IMis_palette , <hid_t> -> CString -> IO <herr_t>
#ccall H5TBmake_table , CString -> <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> CSize -> Ptr CString -> Ptr CSize -> Ptr <hid_t> -> Ptr <hsize_t> -> Ptr () -> CInt -> Ptr () -> IO <herr_t>
#ccall H5TBappend_records , <hid_t> -> CString -> Ptr <hsize_t> -> CSize -> Ptr CSize -> Ptr CSize -> Ptr () -> IO <herr_t>
#ccall H5TBwrite_records , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> CSize -> Ptr CSize -> Ptr CSize -> Ptr () -> IO <herr_t>
#ccall H5TBwrite_fields_name , <hid_t> -> CString -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> CSize -> Ptr CSize -> Ptr CSize -> Ptr () -> IO <herr_t>
#ccall H5TBwrite_fields_index , <hid_t> -> CString -> CInt -> Ptr CInt -> Ptr <hsize_t> -> Ptr <hsize_t> -> CSize -> Ptr CSize -> Ptr CSize -> Ptr () -> IO <herr_t>
#ccall H5TBread_table , <hid_t> -> CString -> CSize -> Ptr CSize -> Ptr CSize -> Ptr () -> IO <herr_t>
#ccall H5TBread_records , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> CSize -> Ptr CSize -> Ptr CSize -> Ptr () -> IO <herr_t>
#ccall H5TBread_fields_name , <hid_t> -> CString -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> CSize -> Ptr CSize -> Ptr CSize -> Ptr () -> IO <herr_t>
#ccall H5TBread_fields_index , <hid_t> -> CString -> CInt -> Ptr CInt -> Ptr <hsize_t> -> Ptr <hsize_t> -> CSize -> Ptr CSize -> Ptr CSize -> Ptr () -> IO <herr_t>
#ccall H5TBget_table_info , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall H5TBget_field_info , <hid_t> -> CString -> Ptr CString -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO <herr_t>
#ccall H5TBdelete_record , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall H5TBinsert_record , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> CSize -> Ptr CSize -> Ptr () -> IO <herr_t>
#ccall H5TBadd_records_from , <hid_t> -> CString -> Ptr <hsize_t> -> Ptr <hsize_t> -> CString -> Ptr <hsize_t> -> IO <herr_t>
#ccall H5TBcombine_tables , <hid_t> -> CString -> <hid_t> -> CString -> CString -> IO <herr_t>
#ccall H5TBinsert_field , <hid_t> -> CString -> CString -> <hid_t> -> Ptr <hsize_t> -> Ptr () -> Ptr () -> IO <herr_t>
#ccall H5TBdelete_field , <hid_t> -> CString -> CString -> IO <herr_t>
#ccall H5PTcreate_fl , <hid_t> -> CString -> <hid_t> -> Ptr <hsize_t> -> CInt -> IO <hid_t>
#ccall H5PTopen , <hid_t> -> CString -> IO <hid_t>
#ccall H5PTclose , <hid_t> -> IO <herr_t>
#ccall H5PTappend , <hid_t> -> CSize -> Ptr () -> IO <herr_t>
#ccall H5PTcreate_index , <hid_t> -> IO <herr_t>
#ccall H5PTset_index , <hid_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall H5PTread_packets , <hid_t> -> Ptr <hsize_t> -> CSize -> Ptr () -> IO <herr_t>
#ccall H5PTget_next , <hid_t> -> CSize -> Ptr () -> IO <herr_t>
#ccall H5PTget_num_packets , <hid_t> -> Ptr <hsize_t> -> IO <herr_t>
#ccall H5PTis_valid , <hid_t> -> IO <herr_t>
#ccall H5DSset_scale , <hid_t> -> CString -> IO <herr_t>
#ccall H5DSattach_scale , <hid_t> -> <hid_t> -> CUInt -> IO <herr_t>
#ccall H5DSdetach_scale , <hid_t> -> <hid_t> -> CUInt -> IO <herr_t>
#ccall H5DSis_attached , <hid_t> -> <hid_t> -> CUInt -> IO <htri_t>
#ccall H5DSiterate_scales , <hid_t> -> CUInt -> Ptr CInt -> <H5DS_iterate_t> -> Ptr () -> IO <herr_t>
#ccall H5DSset_label , <hid_t> -> CUInt -> CString -> IO <herr_t>
#ccall H5DSget_label , <hid_t> -> CUInt -> CString -> CSize -> IO <ssize_t>
#ccall H5DSget_scale_name , <hid_t> -> CString -> CSize -> IO <ssize_t>
#ccall H5DSis_scale , <hid_t> -> IO <htri_t>
#ccall H5DSget_num_scales , <hid_t> -> CUInt -> IO CInt
