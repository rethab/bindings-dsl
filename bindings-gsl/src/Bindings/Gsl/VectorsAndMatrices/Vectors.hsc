#include <bindings.dsl.h>
#include <gsl/gsl_vector.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Vectors.html>

module Bindings.Gsl.VectorsAndMatrices.Vectors where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes
import Bindings.Gsl.ComplexNumbers

#globalvar gsl_check_range , CInt

#ccall gsl_vector_add , Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_add_constant , Ptr <gsl_vector> -> CDouble -> IO CInt
#ccall gsl_vector_alloc , CSize -> IO (Ptr <gsl_vector>)
#ccall gsl_vector_alloc_col_from_matrix , Ptr <gsl_matrix> -> CSize -> IO (Ptr <gsl_vector>)
#ccall gsl_vector_alloc_from_block , Ptr <gsl_block> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector>)
#ccall gsl_vector_alloc_from_vector , Ptr <gsl_vector> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector>)
#ccall gsl_vector_alloc_row_from_matrix , Ptr <gsl_matrix> -> CSize -> IO (Ptr <gsl_vector>)
#ccall gsl_vector_calloc , CSize -> IO (Ptr <gsl_vector>)
#ccall gsl_vector_char_add , Ptr <gsl_vector_char> -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_add_constant , Ptr <gsl_vector_char> -> CDouble -> IO CInt
#ccall gsl_vector_char_alloc , CSize -> IO (Ptr <gsl_vector_char>)
#ccall gsl_vector_char_alloc_col_from_matrix , Ptr <gsl_matrix_char> -> CSize -> IO (Ptr <gsl_vector_char>)
#ccall gsl_vector_char_alloc_from_block , Ptr <gsl_block_char> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_char>)
#ccall gsl_vector_char_alloc_from_vector , Ptr <gsl_vector_char> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_char>)
#ccall gsl_vector_char_alloc_row_from_matrix , Ptr <gsl_matrix_char> -> CSize -> IO (Ptr <gsl_vector_char>)
#ccall gsl_vector_char_calloc , CSize -> IO (Ptr <gsl_vector_char>)
#ccall gsl_vector_char_const_ptr , Ptr <gsl_vector_char> -> CSize -> IO CString
-- ccall gsl_vector_char_const_subvector , Ptr <gsl_vector_char> -> CSize -> CSize -> IO <gsl_vector_char_const_view>
-- ccall gsl_vector_char_const_subvector_with_stride , Ptr <gsl_vector_char> -> CSize -> CSize -> CSize -> IO <gsl_vector_char_const_view>
-- ccall gsl_vector_char_const_view_array , CString -> CSize -> IO <gsl_vector_char_const_view>
-- ccall gsl_vector_char_const_view_array_with_stride , CString -> CSize -> CSize -> IO <gsl_vector_char_const_view>
#ccall gsl_vector_char_div , Ptr <gsl_vector_char> -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_fprintf , Ptr CFile -> Ptr <gsl_vector_char> -> CString -> IO CInt
#ccall gsl_vector_char_fread , Ptr CFile -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_free , Ptr <gsl_vector_char> -> IO ()
#ccall gsl_vector_char_fscanf , Ptr CFile -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_fwrite , Ptr CFile -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_get , Ptr <gsl_vector_char> -> CSize -> IO CChar
#ccall gsl_vector_char_isneg , Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_isnonneg , Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_isnull , Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_ispos , Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_max , Ptr <gsl_vector_char> -> IO CChar
#ccall gsl_vector_char_max_index , Ptr <gsl_vector_char> -> IO CSize
#ccall gsl_vector_char_memcpy , Ptr <gsl_vector_char> -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_min , Ptr <gsl_vector_char> -> IO CChar
#ccall gsl_vector_char_min_index , Ptr <gsl_vector_char> -> IO CSize
#ccall gsl_vector_char_minmax , Ptr <gsl_vector_char> -> CString -> CString -> IO ()
#ccall gsl_vector_char_minmax_index , Ptr <gsl_vector_char> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_vector_char_mul , Ptr <gsl_vector_char> -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_ptr , Ptr <gsl_vector_char> -> CSize -> IO CString
#ccall gsl_vector_char_reverse , Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_scale , Ptr <gsl_vector_char> -> CDouble -> IO CInt
#ccall gsl_vector_char_set , Ptr <gsl_vector_char> -> CSize -> CChar -> IO ()
#ccall gsl_vector_char_set_all , Ptr <gsl_vector_char> -> CChar -> IO ()
#ccall gsl_vector_char_set_basis , Ptr <gsl_vector_char> -> CSize -> IO CInt
#ccall gsl_vector_char_set_zero , Ptr <gsl_vector_char> -> IO ()
#ccall gsl_vector_char_sub , Ptr <gsl_vector_char> -> Ptr <gsl_vector_char> -> IO CInt
-- ccall gsl_vector_char_subvector , Ptr <gsl_vector_char> -> CSize -> CSize -> IO <gsl_vector_char_view>
-- ccall gsl_vector_char_subvector_with_stride , Ptr <gsl_vector_char> -> CSize -> CSize -> CSize -> IO <gsl_vector_char_view>
#ccall gsl_vector_char_swap , Ptr <gsl_vector_char> -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_vector_char_swap_elements , Ptr <gsl_vector_char> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_char_view_array , CString -> CSize -> IO <gsl_vector_char_view>
-- ccall gsl_vector_char_view_array_with_stride , CString -> CSize -> CSize -> IO <gsl_vector_char_view>
#ccall gsl_vector_complex_add , Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
-- ccall gsl_vector_complex_add_constant , Ptr <gsl_vector_complex> -> <gsl_complex> -> IO CInt
#ccall gsl_vector_complex_alloc , CSize -> IO (Ptr <gsl_vector_complex>)
#ccall gsl_vector_complex_alloc_col_from_matrix , Ptr <gsl_matrix_complex> -> CSize -> IO (Ptr <gsl_vector_complex>)
#ccall gsl_vector_complex_alloc_from_block , Ptr <gsl_block_complex> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_complex>)
#ccall gsl_vector_complex_alloc_from_vector , Ptr <gsl_vector_complex> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_complex>)
#ccall gsl_vector_complex_alloc_row_from_matrix , Ptr <gsl_matrix_complex> -> CSize -> IO (Ptr <gsl_vector_complex>)
#ccall gsl_vector_complex_calloc , CSize -> IO (Ptr <gsl_vector_complex>)
-- ccall gsl_vector_complex_const_imag , Ptr <gsl_vector_complex> -> IO <gsl_vector_const_view>
#ccall gsl_vector_complex_const_ptr , Ptr <gsl_vector_complex> -> CSize -> IO (Ptr <gsl_complex>)
-- ccall gsl_vector_complex_const_real , Ptr <gsl_vector_complex> -> IO <gsl_vector_const_view>
-- ccall gsl_vector_complex_const_subvector , Ptr <gsl_vector_complex> -> CSize -> CSize -> IO <gsl_vector_complex_const_view>
-- ccall gsl_vector_complex_const_subvector_with_stride , Ptr <gsl_vector_complex> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_const_view>
-- ccall gsl_vector_complex_const_view_array , Ptr CDouble -> CSize -> IO <gsl_vector_complex_const_view>
-- ccall gsl_vector_complex_const_view_array_with_stride , Ptr CDouble -> CSize -> CSize -> IO <gsl_vector_complex_const_view>
#ccall gsl_vector_complex_div , Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_vector_complex_float_add , Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
-- ccall gsl_vector_complex_float_add_constant , Ptr <gsl_vector_complex_float> -> <gsl_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_alloc , CSize -> IO (Ptr <gsl_vector_complex_float>)
#ccall gsl_vector_complex_float_alloc_col_from_matrix , Ptr <gsl_matrix_complex_float> -> CSize -> IO (Ptr <gsl_vector_complex_float>)
#ccall gsl_vector_complex_float_alloc_from_block , Ptr <gsl_block_complex_float> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_complex_float>)
#ccall gsl_vector_complex_float_alloc_from_vector , Ptr <gsl_vector_complex_float> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_complex_float>)
#ccall gsl_vector_complex_float_alloc_row_from_matrix , Ptr <gsl_matrix_complex_float> -> CSize -> IO (Ptr <gsl_vector_complex_float>)
#ccall gsl_vector_complex_float_calloc , CSize -> IO (Ptr <gsl_vector_complex_float>)
-- ccall gsl_vector_complex_float_const_imag , Ptr <gsl_vector_complex_float> -> IO <gsl_vector_float_const_view>
#ccall gsl_vector_complex_float_const_ptr , Ptr <gsl_vector_complex_float> -> CSize -> IO (Ptr <gsl_complex_float>)
-- ccall gsl_vector_complex_float_const_real , Ptr <gsl_vector_complex_float> -> IO <gsl_vector_float_const_view>
-- ccall gsl_vector_complex_float_const_subvector , Ptr <gsl_vector_complex_float> -> CSize -> CSize -> IO <gsl_vector_complex_float_const_view>
-- ccall gsl_vector_complex_float_const_subvector_with_stride , Ptr <gsl_vector_complex_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_float_const_view>
-- ccall gsl_vector_complex_float_const_view_array , Ptr CFloat -> CSize -> IO <gsl_vector_complex_float_const_view>
-- ccall gsl_vector_complex_float_const_view_array_with_stride , Ptr CFloat -> CSize -> CSize -> IO <gsl_vector_complex_float_const_view>
#ccall gsl_vector_complex_float_div , Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_fprintf , Ptr CFile -> Ptr <gsl_vector_complex_float> -> CString -> IO CInt
#ccall gsl_vector_complex_float_fread , Ptr CFile -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_free , Ptr <gsl_vector_complex_float> -> IO ()
#ccall gsl_vector_complex_float_fscanf , Ptr CFile -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_fwrite , Ptr CFile -> Ptr <gsl_vector_complex_float> -> IO CInt
-- ccall gsl_vector_complex_float_get , Ptr <gsl_vector_complex_float> -> CSize -> IO <gsl_complex_float>
-- ccall gsl_vector_complex_float_imag , Ptr <gsl_vector_complex_float> -> IO <gsl_vector_float_view>
#ccall gsl_vector_complex_float_isneg , Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_isnonneg , Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_isnull , Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_ispos , Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_memcpy , Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_mul , Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_ptr , Ptr <gsl_vector_complex_float> -> CSize -> IO (Ptr <gsl_complex_float>)
-- ccall gsl_vector_complex_float_real , Ptr <gsl_vector_complex_float> -> IO <gsl_vector_float_view>
#ccall gsl_vector_complex_float_reverse , Ptr <gsl_vector_complex_float> -> IO CInt
-- ccall gsl_vector_complex_float_scale , Ptr <gsl_vector_complex_float> -> <gsl_complex_float> -> IO CInt
-- ccall gsl_vector_complex_float_set , Ptr <gsl_vector_complex_float> -> CSize -> <gsl_complex_float> -> IO ()
-- ccall gsl_vector_complex_float_set_all , Ptr <gsl_vector_complex_float> -> <gsl_complex_float> -> IO ()
#ccall gsl_vector_complex_float_set_basis , Ptr <gsl_vector_complex_float> -> CSize -> IO CInt
#ccall gsl_vector_complex_float_set_zero , Ptr <gsl_vector_complex_float> -> IO ()
#ccall gsl_vector_complex_float_sub , Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
-- ccall gsl_vector_complex_float_subvector , Ptr <gsl_vector_complex_float> -> CSize -> CSize -> IO <gsl_vector_complex_float_view>
-- ccall gsl_vector_complex_float_subvector_with_stride , Ptr <gsl_vector_complex_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_float_view>
#ccall gsl_vector_complex_float_swap , Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_vector_complex_float_swap_elements , Ptr <gsl_vector_complex_float> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_complex_float_view_array , Ptr CFloat -> CSize -> IO <gsl_vector_complex_float_view>
-- ccall gsl_vector_complex_float_view_array_with_stride , Ptr CFloat -> CSize -> CSize -> IO <gsl_vector_complex_float_view>
#ccall gsl_vector_complex_fprintf , Ptr CFile -> Ptr <gsl_vector_complex> -> CString -> IO CInt
#ccall gsl_vector_complex_fread , Ptr CFile -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_vector_complex_free , Ptr <gsl_vector_complex> -> IO ()
#ccall gsl_vector_complex_fscanf , Ptr CFile -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_vector_complex_fwrite , Ptr CFile -> Ptr <gsl_vector_complex> -> IO CInt
-- ccall gsl_vector_complex_get , Ptr <gsl_vector_complex> -> CSize -> IO <gsl_complex>
-- ccall gsl_vector_complex_imag , Ptr <gsl_vector_complex> -> IO <gsl_vector_view>
#ccall gsl_vector_complex_isneg , Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_vector_complex_isnonneg , Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_vector_complex_isnull , Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_vector_complex_ispos , Ptr <gsl_vector_complex> -> IO CInt
-- #ccall gsl_vector_complex_long_double_add , Ptr <gsl_vector_complex_long_double> -> Ptr <gsl_vector_complex_long_double> -> IO CInt
-- ccall gsl_vector_complex_long_double_add_constant , Ptr <gsl_vector_complex_long_double> -> <gsl_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_alloc , CSize -> IO (Ptr <gsl_vector_complex_long_double>)

#cinline GSL_COMPLEX_AT , Ptr <gsl_vector_complex> -> CSize -> IO (Ptr <gsl_complex>)
#cinline GSL_COMPLEX_FLOAT_AT , Ptr <gsl_vector_complex_float> -> CSize -> IO (Ptr <gsl_complex_float>)
-- #cinline GSL_COMPLEX_LONG_DOUBLE_AT , Ptr <gsl_vector_complex_long_double> -> CSize -> IO (Ptr <gsl_complex_long_double>)

-- #ccall gsl_vector_complex_long_double_alloc_col_from_matrix , Ptr <gsl_matrix_complex_long_double> -> CSize -> IO (Ptr <gsl_vector_complex_long_double>)
-- #ccall gsl_vector_complex_long_double_alloc_from_block , Ptr <gsl_block_complex_long_double> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_complex_long_double>)
-- #ccall gsl_vector_complex_long_double_alloc_from_vector , Ptr <gsl_vector_complex_long_double> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_complex_long_double>)
-- #ccall gsl_vector_complex_long_double_alloc_row_from_matrix , Ptr <gsl_matrix_complex_long_double> -> CSize -> IO (Ptr <gsl_vector_complex_long_double>)
-- #ccall gsl_vector_complex_long_double_calloc , CSize -> IO (Ptr <gsl_vector_complex_long_double>)
-- ccall gsl_vector_complex_long_double_const_imag , Ptr <gsl_vector_complex_long_double> -> IO <gsl_vector_long_double_const_view>
-- #ccall gsl_vector_complex_long_double_const_ptr , Ptr <gsl_vector_complex_long_double> -> CSize -> IO (Ptr <gsl_complex_long_double>)
-- ccall gsl_vector_complex_long_double_const_real , Ptr <gsl_vector_complex_long_double> -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_vector_complex_long_double_const_subvector , Ptr <gsl_vector_complex_long_double> -> CSize -> CSize -> IO <gsl_vector_complex_long_double_const_view>
-- ccall gsl_vector_complex_long_double_const_subvector_with_stride , Ptr <gsl_vector_complex_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_long_double_const_view>
-- ccall gsl_vector_complex_long_double_const_view_array , Ptr CLDouble -> CSize -> IO <gsl_vector_complex_long_double_const_view>
-- ccall gsl_vector_complex_long_double_const_view_array_with_stride , Ptr CLDouble -> CSize -> CSize -> IO <gsl_vector_complex_long_double_const_view>
-- #ccall gsl_vector_complex_long_double_div , Ptr <gsl_vector_complex_long_double> -> Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_fprintf , Ptr CFile -> Ptr <gsl_vector_complex_long_double> -> CString -> IO CInt
-- #ccall gsl_vector_complex_long_double_fread , Ptr CFile -> Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_free , Ptr <gsl_vector_complex_long_double> -> IO ()
-- #ccall gsl_vector_complex_long_double_fscanf , Ptr CFile -> Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_fwrite , Ptr CFile -> Ptr <gsl_vector_complex_long_double> -> IO CInt
-- ccall gsl_vector_complex_long_double_get , Ptr <gsl_vector_complex_long_double> -> CSize -> IO <gsl_complex_long_double>
-- ccall gsl_vector_complex_long_double_imag , Ptr <gsl_vector_complex_long_double> -> IO <gsl_vector_long_double_view>
-- #ccall gsl_vector_complex_long_double_isneg , Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_isnonneg , Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_isnull , Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_ispos , Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_memcpy , Ptr <gsl_vector_complex_long_double> -> Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_mul , Ptr <gsl_vector_complex_long_double> -> Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_ptr , Ptr <gsl_vector_complex_long_double> -> CSize -> IO (Ptr <gsl_complex_long_double>)
-- ccall gsl_vector_complex_long_double_real , Ptr <gsl_vector_complex_long_double> -> IO <gsl_vector_long_double_view>
-- #ccall gsl_vector_complex_long_double_reverse , Ptr <gsl_vector_complex_long_double> -> IO CInt
-- ccall gsl_vector_complex_long_double_scale , Ptr <gsl_vector_complex_long_double> -> <gsl_complex_long_double> -> IO CInt
-- ccall gsl_vector_complex_long_double_set , Ptr <gsl_vector_complex_long_double> -> CSize -> <gsl_complex_long_double> -> IO ()
-- ccall gsl_vector_complex_long_double_set_all , Ptr <gsl_vector_complex_long_double> -> <gsl_complex_long_double> -> IO ()
-- #ccall gsl_vector_complex_long_double_set_basis , Ptr <gsl_vector_complex_long_double> -> CSize -> IO CInt
-- #ccall gsl_vector_complex_long_double_set_zero , Ptr <gsl_vector_complex_long_double> -> IO ()
-- #ccall gsl_vector_complex_long_double_sub , Ptr <gsl_vector_complex_long_double> -> Ptr <gsl_vector_complex_long_double> -> IO CInt
-- ccall gsl_vector_complex_long_double_subvector , Ptr <gsl_vector_complex_long_double> -> CSize -> CSize -> IO <gsl_vector_complex_long_double_view>
-- ccall gsl_vector_complex_long_double_subvector_with_stride , Ptr <gsl_vector_complex_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_long_double_view>
-- #ccall gsl_vector_complex_long_double_swap , Ptr <gsl_vector_complex_long_double> -> Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_vector_complex_long_double_swap_elements , Ptr <gsl_vector_complex_long_double> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_complex_long_double_view_array , Ptr CLDouble -> CSize -> IO <gsl_vector_complex_long_double_view>
-- ccall gsl_vector_complex_long_double_view_array_with_stride , Ptr CLDouble -> CSize -> CSize -> IO <gsl_vector_complex_long_double_view>
#ccall gsl_vector_complex_memcpy , Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_vector_complex_mul , Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_vector_complex_ptr , Ptr <gsl_vector_complex> -> CSize -> IO (Ptr <gsl_complex>)
-- ccall gsl_vector_complex_real , Ptr <gsl_vector_complex> -> IO <gsl_vector_view>
#ccall gsl_vector_complex_reverse , Ptr <gsl_vector_complex> -> IO CInt
-- ccall gsl_vector_complex_scale , Ptr <gsl_vector_complex> -> <gsl_complex> -> IO CInt
-- ccall gsl_vector_complex_set , Ptr <gsl_vector_complex> -> CSize -> <gsl_complex> -> IO ()
-- ccall gsl_vector_complex_set_all , Ptr <gsl_vector_complex> -> <gsl_complex> -> IO ()
#ccall gsl_vector_complex_set_basis , Ptr <gsl_vector_complex> -> CSize -> IO CInt
#ccall gsl_vector_complex_set_zero , Ptr <gsl_vector_complex> -> IO ()
#ccall gsl_vector_complex_sub , Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
-- ccall gsl_vector_complex_subvector , Ptr <gsl_vector_complex> -> CSize -> CSize -> IO <gsl_vector_complex_view>
-- ccall gsl_vector_complex_subvector_with_stride , Ptr <gsl_vector_complex> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_view>
#ccall gsl_vector_complex_swap , Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_vector_complex_swap_elements , Ptr <gsl_vector_complex> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_complex_view_array , Ptr CDouble -> CSize -> IO <gsl_vector_complex_view>
-- ccall gsl_vector_complex_view_array_with_stride , Ptr CDouble -> CSize -> CSize -> IO <gsl_vector_complex_view>
#ccall gsl_vector_const_ptr , Ptr <gsl_vector> -> CSize -> IO (Ptr CDouble)
-- ccall gsl_vector_const_subvector , Ptr <gsl_vector> -> CSize -> CSize -> IO <gsl_vector_const_view>
-- ccall gsl_vector_const_subvector_with_stride , Ptr <gsl_vector> -> CSize -> CSize -> CSize -> IO <gsl_vector_const_view>
-- ccall gsl_vector_const_view_array , Ptr CDouble -> CSize -> IO <gsl_vector_const_view>
-- ccall gsl_vector_const_view_array_with_stride , Ptr CDouble -> CSize -> CSize -> IO <gsl_vector_const_view>
#ccall gsl_vector_div , Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_float_add , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_add_constant , Ptr <gsl_vector_float> -> CDouble -> IO CInt
#ccall gsl_vector_float_alloc , CSize -> IO (Ptr <gsl_vector_float>)
#ccall gsl_vector_float_alloc_col_from_matrix , Ptr <gsl_matrix_float> -> CSize -> IO (Ptr <gsl_vector_float>)
#ccall gsl_vector_float_alloc_from_block , Ptr <gsl_block_float> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_float>)
#ccall gsl_vector_float_alloc_from_vector , Ptr <gsl_vector_float> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_float>)
#ccall gsl_vector_float_alloc_row_from_matrix , Ptr <gsl_matrix_float> -> CSize -> IO (Ptr <gsl_vector_float>)
#ccall gsl_vector_float_calloc , CSize -> IO (Ptr <gsl_vector_float>)
#ccall gsl_vector_float_const_ptr , Ptr <gsl_vector_float> -> CSize -> IO (Ptr CFloat)
-- ccall gsl_vector_float_const_subvector , Ptr <gsl_vector_float> -> CSize -> CSize -> IO <gsl_vector_float_const_view>
-- ccall gsl_vector_float_const_subvector_with_stride , Ptr <gsl_vector_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_float_const_view>
-- ccall gsl_vector_float_const_view_array , Ptr CFloat -> CSize -> IO <gsl_vector_float_const_view>
-- ccall gsl_vector_float_const_view_array_with_stride , Ptr CFloat -> CSize -> CSize -> IO <gsl_vector_float_const_view>
#ccall gsl_vector_float_div , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_fprintf , Ptr CFile -> Ptr <gsl_vector_float> -> CString -> IO CInt
#ccall gsl_vector_float_fread , Ptr CFile -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_free , Ptr <gsl_vector_float> -> IO ()
#ccall gsl_vector_float_fscanf , Ptr CFile -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_fwrite , Ptr CFile -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_get , Ptr <gsl_vector_float> -> CSize -> IO CFloat
#ccall gsl_vector_float_isneg , Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_isnonneg , Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_isnull , Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_ispos , Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_max , Ptr <gsl_vector_float> -> IO CFloat
#ccall gsl_vector_float_max_index , Ptr <gsl_vector_float> -> IO CSize
#ccall gsl_vector_float_memcpy , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_min , Ptr <gsl_vector_float> -> IO CFloat
#ccall gsl_vector_float_min_index , Ptr <gsl_vector_float> -> IO CSize
#ccall gsl_vector_float_minmax , Ptr <gsl_vector_float> -> Ptr CFloat -> Ptr CFloat -> IO ()
#ccall gsl_vector_float_minmax_index , Ptr <gsl_vector_float> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_vector_float_mul , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_ptr , Ptr <gsl_vector_float> -> CSize -> IO (Ptr CFloat)
#ccall gsl_vector_float_reverse , Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_scale , Ptr <gsl_vector_float> -> CDouble -> IO CInt
#ccall gsl_vector_float_set , Ptr <gsl_vector_float> -> CSize -> CFloat -> IO ()
#ccall gsl_vector_float_set_all , Ptr <gsl_vector_float> -> CFloat -> IO ()
#ccall gsl_vector_float_set_basis , Ptr <gsl_vector_float> -> CSize -> IO CInt
#ccall gsl_vector_float_set_zero , Ptr <gsl_vector_float> -> IO ()
#ccall gsl_vector_float_sub , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> IO CInt
-- ccall gsl_vector_float_subvector , Ptr <gsl_vector_float> -> CSize -> CSize -> IO <gsl_vector_float_view>
-- ccall gsl_vector_float_subvector_with_stride , Ptr <gsl_vector_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_float_view>
#ccall gsl_vector_float_swap , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_vector_float_swap_elements , Ptr <gsl_vector_float> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_float_view_array , Ptr CFloat -> CSize -> IO <gsl_vector_float_view>
-- ccall gsl_vector_float_view_array_with_stride , Ptr CFloat -> CSize -> CSize -> IO <gsl_vector_float_view>
#ccall gsl_vector_fprintf , Ptr CFile -> Ptr <gsl_vector> -> CString -> IO CInt
#ccall gsl_vector_fread , Ptr CFile -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_free , Ptr <gsl_vector> -> IO ()
#ccall gsl_vector_fscanf , Ptr CFile -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_fwrite , Ptr CFile -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_get , Ptr <gsl_vector> -> CSize -> IO CDouble
#ccall gsl_vector_int_add , Ptr <gsl_vector_int> -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_add_constant , Ptr <gsl_vector_int> -> CDouble -> IO CInt
#ccall gsl_vector_int_alloc , CSize -> IO (Ptr <gsl_vector_int>)
#ccall gsl_vector_int_alloc_col_from_matrix , Ptr <gsl_matrix_int> -> CSize -> IO (Ptr <gsl_vector_int>)
#ccall gsl_vector_int_alloc_from_block , Ptr <gsl_block_int> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_int>)
#ccall gsl_vector_int_alloc_from_vector , Ptr <gsl_vector_int> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_int>)
#ccall gsl_vector_int_alloc_row_from_matrix , Ptr <gsl_matrix_int> -> CSize -> IO (Ptr <gsl_vector_int>)
#ccall gsl_vector_int_calloc , CSize -> IO (Ptr <gsl_vector_int>)
#ccall gsl_vector_int_const_ptr , Ptr <gsl_vector_int> -> CSize -> IO (Ptr CInt)
-- ccall gsl_vector_int_const_subvector , Ptr <gsl_vector_int> -> CSize -> CSize -> IO <gsl_vector_int_const_view>
-- ccall gsl_vector_int_const_subvector_with_stride , Ptr <gsl_vector_int> -> CSize -> CSize -> CSize -> IO <gsl_vector_int_const_view>
-- ccall gsl_vector_int_const_view_array , Ptr CInt -> CSize -> IO <gsl_vector_int_const_view>
-- ccall gsl_vector_int_const_view_array_with_stride , Ptr CInt -> CSize -> CSize -> IO <gsl_vector_int_const_view>
#ccall gsl_vector_int_div , Ptr <gsl_vector_int> -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_fprintf , Ptr CFile -> Ptr <gsl_vector_int> -> CString -> IO CInt
#ccall gsl_vector_int_fread , Ptr CFile -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_free , Ptr <gsl_vector_int> -> IO ()
#ccall gsl_vector_int_fscanf , Ptr CFile -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_fwrite , Ptr CFile -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_get , Ptr <gsl_vector_int> -> CSize -> IO CInt
#ccall gsl_vector_int_isneg , Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_isnonneg , Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_isnull , Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_ispos , Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_max , Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_max_index , Ptr <gsl_vector_int> -> IO CSize
#ccall gsl_vector_int_memcpy , Ptr <gsl_vector_int> -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_min , Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_min_index , Ptr <gsl_vector_int> -> IO CSize
#ccall gsl_vector_int_minmax , Ptr <gsl_vector_int> -> Ptr CInt -> Ptr CInt -> IO ()
#ccall gsl_vector_int_minmax_index , Ptr <gsl_vector_int> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_vector_int_mul , Ptr <gsl_vector_int> -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_ptr , Ptr <gsl_vector_int> -> CSize -> IO (Ptr CInt)
#ccall gsl_vector_int_reverse , Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_scale , Ptr <gsl_vector_int> -> CDouble -> IO CInt
#ccall gsl_vector_int_set , Ptr <gsl_vector_int> -> CSize -> CInt -> IO ()
#ccall gsl_vector_int_set_all , Ptr <gsl_vector_int> -> CInt -> IO ()
#ccall gsl_vector_int_set_basis , Ptr <gsl_vector_int> -> CSize -> IO CInt
#ccall gsl_vector_int_set_zero , Ptr <gsl_vector_int> -> IO ()
#ccall gsl_vector_int_sub , Ptr <gsl_vector_int> -> Ptr <gsl_vector_int> -> IO CInt
-- ccall gsl_vector_int_subvector , Ptr <gsl_vector_int> -> CSize -> CSize -> IO <gsl_vector_int_view>
-- ccall gsl_vector_int_subvector_with_stride , Ptr <gsl_vector_int> -> CSize -> CSize -> CSize -> IO <gsl_vector_int_view>
#ccall gsl_vector_int_swap , Ptr <gsl_vector_int> -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_vector_int_swap_elements , Ptr <gsl_vector_int> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_int_view_array , Ptr CInt -> CSize -> IO <gsl_vector_int_view>
-- ccall gsl_vector_int_view_array_with_stride , Ptr CInt -> CSize -> CSize -> IO <gsl_vector_int_view>
#ccall gsl_vector_isneg , Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_isnonneg , Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_isnull , Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_ispos , Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_long_add , Ptr <gsl_vector_long> -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_add_constant , Ptr <gsl_vector_long> -> CDouble -> IO CInt
#ccall gsl_vector_long_alloc , CSize -> IO (Ptr <gsl_vector_long>)
#ccall gsl_vector_long_alloc_col_from_matrix , Ptr <gsl_matrix_long> -> CSize -> IO (Ptr <gsl_vector_long>)
#ccall gsl_vector_long_alloc_from_block , Ptr <gsl_block_long> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_long>)
#ccall gsl_vector_long_alloc_from_vector , Ptr <gsl_vector_long> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_long>)
#ccall gsl_vector_long_alloc_row_from_matrix , Ptr <gsl_matrix_long> -> CSize -> IO (Ptr <gsl_vector_long>)
#ccall gsl_vector_long_calloc , CSize -> IO (Ptr <gsl_vector_long>)
#ccall gsl_vector_long_const_ptr , Ptr <gsl_vector_long> -> CSize -> IO (Ptr CLong)
-- ccall gsl_vector_long_const_subvector , Ptr <gsl_vector_long> -> CSize -> CSize -> IO <gsl_vector_long_const_view>
-- ccall gsl_vector_long_const_subvector_with_stride , Ptr <gsl_vector_long> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_const_view>
-- ccall gsl_vector_long_const_view_array , Ptr CLong -> CSize -> IO <gsl_vector_long_const_view>
-- ccall gsl_vector_long_const_view_array_with_stride , Ptr CLong -> CSize -> CSize -> IO <gsl_vector_long_const_view>
#ccall gsl_vector_long_div , Ptr <gsl_vector_long> -> Ptr <gsl_vector_long> -> IO CInt
-- #ccall gsl_vector_long_double_add , Ptr <gsl_vector_long_double> -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_add_constant , Ptr <gsl_vector_long_double> -> CDouble -> IO CInt
-- #ccall gsl_vector_long_double_alloc , CSize -> IO (Ptr <gsl_vector_long_double>)
-- #ccall gsl_vector_long_double_alloc_col_from_matrix , Ptr <gsl_matrix_long_double> -> CSize -> IO (Ptr <gsl_vector_long_double>)
-- #ccall gsl_vector_long_double_alloc_from_block , Ptr <gsl_block_long_double> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_long_double>)
-- #ccall gsl_vector_long_double_alloc_from_vector , Ptr <gsl_vector_long_double> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_long_double>)
-- #ccall gsl_vector_long_double_alloc_row_from_matrix , Ptr <gsl_matrix_long_double> -> CSize -> IO (Ptr <gsl_vector_long_double>)
-- #ccall gsl_vector_long_double_calloc , CSize -> IO (Ptr <gsl_vector_long_double>)
-- #ccall gsl_vector_long_double_const_ptr , Ptr <gsl_vector_long_double> -> CSize -> IO (Ptr CLDouble)
-- ccall gsl_vector_long_double_const_subvector , Ptr <gsl_vector_long_double> -> CSize -> CSize -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_vector_long_double_const_subvector_with_stride , Ptr <gsl_vector_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_vector_long_double_const_view_array , Ptr CLDouble -> CSize -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_vector_long_double_const_view_array_with_stride , Ptr CLDouble -> CSize -> CSize -> IO <gsl_vector_long_double_const_view>
-- #ccall gsl_vector_long_double_div , Ptr <gsl_vector_long_double> -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_fprintf , Ptr CFile -> Ptr <gsl_vector_long_double> -> CString -> IO CInt
-- #ccall gsl_vector_long_double_fread , Ptr CFile -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_free , Ptr <gsl_vector_long_double> -> IO ()
-- #ccall gsl_vector_long_double_fscanf , Ptr CFile -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_fwrite , Ptr CFile -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_get , Ptr <gsl_vector_long_double> -> CSize -> IO CLDouble
-- #ccall gsl_vector_long_double_isneg , Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_isnonneg , Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_isnull , Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_ispos , Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_max , Ptr <gsl_vector_long_double> -> IO CLDouble
-- #ccall gsl_vector_long_double_max_index , Ptr <gsl_vector_long_double> -> IO CSize
-- #ccall gsl_vector_long_double_memcpy , Ptr <gsl_vector_long_double> -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_min , Ptr <gsl_vector_long_double> -> IO CLDouble
-- #ccall gsl_vector_long_double_min_index , Ptr <gsl_vector_long_double> -> IO CSize
-- #ccall gsl_vector_long_double_minmax , Ptr <gsl_vector_long_double> -> Ptr CLDouble -> Ptr CLDouble -> IO ()
-- #ccall gsl_vector_long_double_minmax_index , Ptr <gsl_vector_long_double> -> Ptr CSize -> Ptr CSize -> IO ()
-- #ccall gsl_vector_long_double_mul , Ptr <gsl_vector_long_double> -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_ptr , Ptr <gsl_vector_long_double> -> CSize -> IO (Ptr CLDouble)
-- #ccall gsl_vector_long_double_reverse , Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_scale , Ptr <gsl_vector_long_double> -> CDouble -> IO CInt
-- #ccall gsl_vector_long_double_set , Ptr <gsl_vector_long_double> -> CSize -> CLDouble -> IO ()
-- #ccall gsl_vector_long_double_set_all , Ptr <gsl_vector_long_double> -> CLDouble -> IO ()
-- #ccall gsl_vector_long_double_set_basis , Ptr <gsl_vector_long_double> -> CSize -> IO CInt
-- #ccall gsl_vector_long_double_set_zero , Ptr <gsl_vector_long_double> -> IO ()
-- #ccall gsl_vector_long_double_sub , Ptr <gsl_vector_long_double> -> Ptr <gsl_vector_long_double> -> IO CInt
-- ccall gsl_vector_long_double_subvector , Ptr <gsl_vector_long_double> -> CSize -> CSize -> IO <gsl_vector_long_double_view>
-- ccall gsl_vector_long_double_subvector_with_stride , Ptr <gsl_vector_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_double_view>
-- #ccall gsl_vector_long_double_swap , Ptr <gsl_vector_long_double> -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_vector_long_double_swap_elements , Ptr <gsl_vector_long_double> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_long_double_view_array , Ptr CLDouble -> CSize -> IO <gsl_vector_long_double_view>
-- ccall gsl_vector_long_double_view_array_with_stride , Ptr CLDouble -> CSize -> CSize -> IO <gsl_vector_long_double_view>
#ccall gsl_vector_long_fprintf , Ptr CFile -> Ptr <gsl_vector_long> -> CString -> IO CInt
#ccall gsl_vector_long_fread , Ptr CFile -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_free , Ptr <gsl_vector_long> -> IO ()
#ccall gsl_vector_long_fscanf , Ptr CFile -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_fwrite , Ptr CFile -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_get , Ptr <gsl_vector_long> -> CSize -> IO CLong
#ccall gsl_vector_long_isneg , Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_isnonneg , Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_isnull , Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_ispos , Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_max , Ptr <gsl_vector_long> -> IO CLong
#ccall gsl_vector_long_max_index , Ptr <gsl_vector_long> -> IO CSize
#ccall gsl_vector_long_memcpy , Ptr <gsl_vector_long> -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_min , Ptr <gsl_vector_long> -> IO CLong
#ccall gsl_vector_long_min_index , Ptr <gsl_vector_long> -> IO CSize
#ccall gsl_vector_long_minmax , Ptr <gsl_vector_long> -> Ptr CLong -> Ptr CLong -> IO ()
#ccall gsl_vector_long_minmax_index , Ptr <gsl_vector_long> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_vector_long_mul , Ptr <gsl_vector_long> -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_ptr , Ptr <gsl_vector_long> -> CSize -> IO (Ptr CLong)
#ccall gsl_vector_long_reverse , Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_scale , Ptr <gsl_vector_long> -> CDouble -> IO CInt
#ccall gsl_vector_long_set , Ptr <gsl_vector_long> -> CSize -> CLong -> IO ()
#ccall gsl_vector_long_set_all , Ptr <gsl_vector_long> -> CLong -> IO ()
#ccall gsl_vector_long_set_basis , Ptr <gsl_vector_long> -> CSize -> IO CInt
#ccall gsl_vector_long_set_zero , Ptr <gsl_vector_long> -> IO ()
#ccall gsl_vector_long_sub , Ptr <gsl_vector_long> -> Ptr <gsl_vector_long> -> IO CInt
-- ccall gsl_vector_long_subvector , Ptr <gsl_vector_long> -> CSize -> CSize -> IO <gsl_vector_long_view>
-- ccall gsl_vector_long_subvector_with_stride , Ptr <gsl_vector_long> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_view>
#ccall gsl_vector_long_swap , Ptr <gsl_vector_long> -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_vector_long_swap_elements , Ptr <gsl_vector_long> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_long_view_array , Ptr CLong -> CSize -> IO <gsl_vector_long_view>
-- ccall gsl_vector_long_view_array_with_stride , Ptr CLong -> CSize -> CSize -> IO <gsl_vector_long_view>
#ccall gsl_vector_max , Ptr <gsl_vector> -> IO CDouble
#ccall gsl_vector_max_index , Ptr <gsl_vector> -> IO CSize
#ccall gsl_vector_memcpy , Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_min , Ptr <gsl_vector> -> IO CDouble
#ccall gsl_vector_min_index , Ptr <gsl_vector> -> IO CSize
#ccall gsl_vector_minmax , Ptr <gsl_vector> -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_vector_minmax_index , Ptr <gsl_vector> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_vector_mul , Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_ptr , Ptr <gsl_vector> -> CSize -> IO (Ptr CDouble)
#ccall gsl_vector_reverse , Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_scale , Ptr <gsl_vector> -> CDouble -> IO CInt
#ccall gsl_vector_set , Ptr <gsl_vector> -> CSize -> CDouble -> IO ()
#ccall gsl_vector_set_all , Ptr <gsl_vector> -> CDouble -> IO ()
#ccall gsl_vector_set_basis , Ptr <gsl_vector> -> CSize -> IO CInt
#ccall gsl_vector_set_zero , Ptr <gsl_vector> -> IO ()
#ccall gsl_vector_short_add , Ptr <gsl_vector_short> -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_add_constant , Ptr <gsl_vector_short> -> CDouble -> IO CInt
#ccall gsl_vector_short_alloc , CSize -> IO (Ptr <gsl_vector_short>)
#ccall gsl_vector_short_alloc_col_from_matrix , Ptr <gsl_matrix_short> -> CSize -> IO (Ptr <gsl_vector_short>)
#ccall gsl_vector_short_alloc_from_block , Ptr <gsl_block_short> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_short>)
#ccall gsl_vector_short_alloc_from_vector , Ptr <gsl_vector_short> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_short>)
#ccall gsl_vector_short_alloc_row_from_matrix , Ptr <gsl_matrix_short> -> CSize -> IO (Ptr <gsl_vector_short>)
#ccall gsl_vector_short_calloc , CSize -> IO (Ptr <gsl_vector_short>)
#ccall gsl_vector_short_const_ptr , Ptr <gsl_vector_short> -> CSize -> IO (Ptr CShort)
-- ccall gsl_vector_short_const_subvector , Ptr <gsl_vector_short> -> CSize -> CSize -> IO <gsl_vector_short_const_view>
-- ccall gsl_vector_short_const_subvector_with_stride , Ptr <gsl_vector_short> -> CSize -> CSize -> CSize -> IO <gsl_vector_short_const_view>
-- ccall gsl_vector_short_const_view_array , Ptr CShort -> CSize -> IO <gsl_vector_short_const_view>
-- ccall gsl_vector_short_const_view_array_with_stride , Ptr CShort -> CSize -> CSize -> IO <gsl_vector_short_const_view>
#ccall gsl_vector_short_div , Ptr <gsl_vector_short> -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_fprintf , Ptr CFile -> Ptr <gsl_vector_short> -> CString -> IO CInt
#ccall gsl_vector_short_fread , Ptr CFile -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_free , Ptr <gsl_vector_short> -> IO ()
#ccall gsl_vector_short_fscanf , Ptr CFile -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_fwrite , Ptr CFile -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_get , Ptr <gsl_vector_short> -> CSize -> IO CShort
#ccall gsl_vector_short_isneg , Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_isnonneg , Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_isnull , Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_ispos , Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_max , Ptr <gsl_vector_short> -> IO CShort
#ccall gsl_vector_short_max_index , Ptr <gsl_vector_short> -> IO CSize
#ccall gsl_vector_short_memcpy , Ptr <gsl_vector_short> -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_min , Ptr <gsl_vector_short> -> IO CShort
#ccall gsl_vector_short_min_index , Ptr <gsl_vector_short> -> IO CSize
#ccall gsl_vector_short_minmax , Ptr <gsl_vector_short> -> Ptr CShort -> Ptr CShort -> IO ()
#ccall gsl_vector_short_minmax_index , Ptr <gsl_vector_short> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_vector_short_mul , Ptr <gsl_vector_short> -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_ptr , Ptr <gsl_vector_short> -> CSize -> IO (Ptr CShort)
#ccall gsl_vector_short_reverse , Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_scale , Ptr <gsl_vector_short> -> CDouble -> IO CInt
#ccall gsl_vector_short_set , Ptr <gsl_vector_short> -> CSize -> CShort -> IO ()
#ccall gsl_vector_short_set_all , Ptr <gsl_vector_short> -> CShort -> IO ()
#ccall gsl_vector_short_set_basis , Ptr <gsl_vector_short> -> CSize -> IO CInt
#ccall gsl_vector_short_set_zero , Ptr <gsl_vector_short> -> IO ()
#ccall gsl_vector_short_sub , Ptr <gsl_vector_short> -> Ptr <gsl_vector_short> -> IO CInt
-- ccall gsl_vector_short_subvector , Ptr <gsl_vector_short> -> CSize -> CSize -> IO <gsl_vector_short_view>
-- ccall gsl_vector_short_subvector_with_stride , Ptr <gsl_vector_short> -> CSize -> CSize -> CSize -> IO <gsl_vector_short_view>
#ccall gsl_vector_short_swap , Ptr <gsl_vector_short> -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_vector_short_swap_elements , Ptr <gsl_vector_short> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_short_view_array , Ptr CShort -> CSize -> IO <gsl_vector_short_view>
-- ccall gsl_vector_short_view_array_with_stride , Ptr CShort -> CSize -> CSize -> IO <gsl_vector_short_view>
#ccall gsl_vector_sub , Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
-- ccall gsl_vector_subvector , Ptr <gsl_vector> -> CSize -> CSize -> IO <gsl_vector_view>
-- ccall gsl_vector_subvector_with_stride , Ptr <gsl_vector> -> CSize -> CSize -> CSize -> IO <gsl_vector_view>
#ccall gsl_vector_swap , Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_vector_swap_elements , Ptr <gsl_vector> -> CSize -> CSize -> IO CInt
#ccall gsl_vector_uchar_add , Ptr <gsl_vector_uchar> -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_add_constant , Ptr <gsl_vector_uchar> -> CDouble -> IO CInt
#ccall gsl_vector_uchar_alloc , CSize -> IO (Ptr <gsl_vector_uchar>)
#ccall gsl_vector_uchar_alloc_col_from_matrix , Ptr <gsl_matrix_uchar> -> CSize -> IO (Ptr <gsl_vector_uchar>)
#ccall gsl_vector_uchar_alloc_from_block , Ptr <gsl_block_uchar> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_uchar>)
#ccall gsl_vector_uchar_alloc_from_vector , Ptr <gsl_vector_uchar> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_uchar>)
#ccall gsl_vector_uchar_alloc_row_from_matrix , Ptr <gsl_matrix_uchar> -> CSize -> IO (Ptr <gsl_vector_uchar>)
#ccall gsl_vector_uchar_calloc , CSize -> IO (Ptr <gsl_vector_uchar>)
#ccall gsl_vector_uchar_const_ptr , Ptr <gsl_vector_uchar> -> CSize -> IO (Ptr CUChar)
-- ccall gsl_vector_uchar_const_subvector , Ptr <gsl_vector_uchar> -> CSize -> CSize -> IO <gsl_vector_uchar_const_view>
-- ccall gsl_vector_uchar_const_subvector_with_stride , Ptr <gsl_vector_uchar> -> CSize -> CSize -> CSize -> IO <gsl_vector_uchar_const_view>
-- ccall gsl_vector_uchar_const_view_array , Ptr CUChar -> CSize -> IO <gsl_vector_uchar_const_view>
-- ccall gsl_vector_uchar_const_view_array_with_stride , Ptr CUChar -> CSize -> CSize -> IO <gsl_vector_uchar_const_view>
#ccall gsl_vector_uchar_div , Ptr <gsl_vector_uchar> -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_fprintf , Ptr CFile -> Ptr <gsl_vector_uchar> -> CString -> IO CInt
#ccall gsl_vector_uchar_fread , Ptr CFile -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_free , Ptr <gsl_vector_uchar> -> IO ()
#ccall gsl_vector_uchar_fscanf , Ptr CFile -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_fwrite , Ptr CFile -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_get , Ptr <gsl_vector_uchar> -> CSize -> IO CUChar
#ccall gsl_vector_uchar_isneg , Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_isnonneg , Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_isnull , Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_ispos , Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_max , Ptr <gsl_vector_uchar> -> IO CUChar
#ccall gsl_vector_uchar_max_index , Ptr <gsl_vector_uchar> -> IO CSize
#ccall gsl_vector_uchar_memcpy , Ptr <gsl_vector_uchar> -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_min , Ptr <gsl_vector_uchar> -> IO CUChar
#ccall gsl_vector_uchar_min_index , Ptr <gsl_vector_uchar> -> IO CSize
#ccall gsl_vector_uchar_minmax , Ptr <gsl_vector_uchar> -> Ptr CUChar -> Ptr CUChar -> IO ()
#ccall gsl_vector_uchar_minmax_index , Ptr <gsl_vector_uchar> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_vector_uchar_mul , Ptr <gsl_vector_uchar> -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_ptr , Ptr <gsl_vector_uchar> -> CSize -> IO (Ptr CUChar)
#ccall gsl_vector_uchar_reverse , Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_scale , Ptr <gsl_vector_uchar> -> CDouble -> IO CInt
#ccall gsl_vector_uchar_set , Ptr <gsl_vector_uchar> -> CSize -> CUChar -> IO ()
#ccall gsl_vector_uchar_set_all , Ptr <gsl_vector_uchar> -> CUChar -> IO ()
#ccall gsl_vector_uchar_set_basis , Ptr <gsl_vector_uchar> -> CSize -> IO CInt
#ccall gsl_vector_uchar_set_zero , Ptr <gsl_vector_uchar> -> IO ()
#ccall gsl_vector_uchar_sub , Ptr <gsl_vector_uchar> -> Ptr <gsl_vector_uchar> -> IO CInt
-- ccall gsl_vector_uchar_subvector , Ptr <gsl_vector_uchar> -> CSize -> CSize -> IO <gsl_vector_uchar_view>
-- ccall gsl_vector_uchar_subvector_with_stride , Ptr <gsl_vector_uchar> -> CSize -> CSize -> CSize -> IO <gsl_vector_uchar_view>
#ccall gsl_vector_uchar_swap , Ptr <gsl_vector_uchar> -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_vector_uchar_swap_elements , Ptr <gsl_vector_uchar> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_uchar_view_array , Ptr CUChar -> CSize -> IO <gsl_vector_uchar_view>
-- ccall gsl_vector_uchar_view_array_with_stride , Ptr CUChar -> CSize -> CSize -> IO <gsl_vector_uchar_view>
#ccall gsl_vector_uint_add , Ptr <gsl_vector_uint> -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_add_constant , Ptr <gsl_vector_uint> -> CDouble -> IO CInt
#ccall gsl_vector_uint_alloc , CSize -> IO (Ptr <gsl_vector_uint>)
#ccall gsl_vector_uint_alloc_col_from_matrix , Ptr <gsl_matrix_uint> -> CSize -> IO (Ptr <gsl_vector_uint>)
#ccall gsl_vector_uint_alloc_from_block , Ptr <gsl_block_uint> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_uint>)
#ccall gsl_vector_uint_alloc_from_vector , Ptr <gsl_vector_uint> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_uint>)
#ccall gsl_vector_uint_alloc_row_from_matrix , Ptr <gsl_matrix_uint> -> CSize -> IO (Ptr <gsl_vector_uint>)
#ccall gsl_vector_uint_calloc , CSize -> IO (Ptr <gsl_vector_uint>)
#ccall gsl_vector_uint_const_ptr , Ptr <gsl_vector_uint> -> CSize -> IO (Ptr CUInt)
-- ccall gsl_vector_uint_const_subvector , Ptr <gsl_vector_uint> -> CSize -> CSize -> IO <gsl_vector_uint_const_view>
-- ccall gsl_vector_uint_const_subvector_with_stride , Ptr <gsl_vector_uint> -> CSize -> CSize -> CSize -> IO <gsl_vector_uint_const_view>
-- ccall gsl_vector_uint_const_view_array , Ptr CUInt -> CSize -> IO <gsl_vector_uint_const_view>
-- ccall gsl_vector_uint_const_view_array_with_stride , Ptr CUInt -> CSize -> CSize -> IO <gsl_vector_uint_const_view>
#ccall gsl_vector_uint_div , Ptr <gsl_vector_uint> -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_fprintf , Ptr CFile -> Ptr <gsl_vector_uint> -> CString -> IO CInt
#ccall gsl_vector_uint_fread , Ptr CFile -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_free , Ptr <gsl_vector_uint> -> IO ()
#ccall gsl_vector_uint_fscanf , Ptr CFile -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_fwrite , Ptr CFile -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_get , Ptr <gsl_vector_uint> -> CSize -> IO CUInt
#ccall gsl_vector_uint_isneg , Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_isnonneg , Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_isnull , Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_ispos , Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_max , Ptr <gsl_vector_uint> -> IO CUInt
#ccall gsl_vector_uint_max_index , Ptr <gsl_vector_uint> -> IO CSize
#ccall gsl_vector_uint_memcpy , Ptr <gsl_vector_uint> -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_min , Ptr <gsl_vector_uint> -> IO CUInt
#ccall gsl_vector_uint_min_index , Ptr <gsl_vector_uint> -> IO CSize
#ccall gsl_vector_uint_minmax , Ptr <gsl_vector_uint> -> Ptr CUInt -> Ptr CUInt -> IO ()
#ccall gsl_vector_uint_minmax_index , Ptr <gsl_vector_uint> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_vector_uint_mul , Ptr <gsl_vector_uint> -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_ptr , Ptr <gsl_vector_uint> -> CSize -> IO (Ptr CUInt)
#ccall gsl_vector_uint_reverse , Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_scale , Ptr <gsl_vector_uint> -> CDouble -> IO CInt
#ccall gsl_vector_uint_set , Ptr <gsl_vector_uint> -> CSize -> CUInt -> IO ()
#ccall gsl_vector_uint_set_all , Ptr <gsl_vector_uint> -> CUInt -> IO ()
#ccall gsl_vector_uint_set_basis , Ptr <gsl_vector_uint> -> CSize -> IO CInt
#ccall gsl_vector_uint_set_zero , Ptr <gsl_vector_uint> -> IO ()
#ccall gsl_vector_uint_sub , Ptr <gsl_vector_uint> -> Ptr <gsl_vector_uint> -> IO CInt
-- ccall gsl_vector_uint_subvector , Ptr <gsl_vector_uint> -> CSize -> CSize -> IO <gsl_vector_uint_view>
-- ccall gsl_vector_uint_subvector_with_stride , Ptr <gsl_vector_uint> -> CSize -> CSize -> CSize -> IO <gsl_vector_uint_view>
#ccall gsl_vector_uint_swap , Ptr <gsl_vector_uint> -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_vector_uint_swap_elements , Ptr <gsl_vector_uint> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_uint_view_array , Ptr CUInt -> CSize -> IO <gsl_vector_uint_view>
-- ccall gsl_vector_uint_view_array_with_stride , Ptr CUInt -> CSize -> CSize -> IO <gsl_vector_uint_view>
#ccall gsl_vector_ulong_add , Ptr <gsl_vector_ulong> -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_add_constant , Ptr <gsl_vector_ulong> -> CDouble -> IO CInt
#ccall gsl_vector_ulong_alloc , CSize -> IO (Ptr <gsl_vector_ulong>)
#ccall gsl_vector_ulong_alloc_col_from_matrix , Ptr <gsl_matrix_ulong> -> CSize -> IO (Ptr <gsl_vector_ulong>)
#ccall gsl_vector_ulong_alloc_from_block , Ptr <gsl_block_ulong> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_ulong>)
#ccall gsl_vector_ulong_alloc_from_vector , Ptr <gsl_vector_ulong> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_ulong>)
#ccall gsl_vector_ulong_alloc_row_from_matrix , Ptr <gsl_matrix_ulong> -> CSize -> IO (Ptr <gsl_vector_ulong>)
#ccall gsl_vector_ulong_calloc , CSize -> IO (Ptr <gsl_vector_ulong>)
#ccall gsl_vector_ulong_const_ptr , Ptr <gsl_vector_ulong> -> CSize -> IO (Ptr CULong)
-- ccall gsl_vector_ulong_const_subvector , Ptr <gsl_vector_ulong> -> CSize -> CSize -> IO <gsl_vector_ulong_const_view>
-- ccall gsl_vector_ulong_const_subvector_with_stride , Ptr <gsl_vector_ulong> -> CSize -> CSize -> CSize -> IO <gsl_vector_ulong_const_view>
-- ccall gsl_vector_ulong_const_view_array , Ptr CULong -> CSize -> IO <gsl_vector_ulong_const_view>
-- ccall gsl_vector_ulong_const_view_array_with_stride , Ptr CULong -> CSize -> CSize -> IO <gsl_vector_ulong_const_view>
#ccall gsl_vector_ulong_div , Ptr <gsl_vector_ulong> -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_fprintf , Ptr CFile -> Ptr <gsl_vector_ulong> -> CString -> IO CInt
#ccall gsl_vector_ulong_fread , Ptr CFile -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_free , Ptr <gsl_vector_ulong> -> IO ()
#ccall gsl_vector_ulong_fscanf , Ptr CFile -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_fwrite , Ptr CFile -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_get , Ptr <gsl_vector_ulong> -> CSize -> IO CULong
#ccall gsl_vector_ulong_isneg , Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_isnonneg , Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_isnull , Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_ispos , Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_max , Ptr <gsl_vector_ulong> -> IO CULong
#ccall gsl_vector_ulong_max_index , Ptr <gsl_vector_ulong> -> IO CSize
#ccall gsl_vector_ulong_memcpy , Ptr <gsl_vector_ulong> -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_min , Ptr <gsl_vector_ulong> -> IO CULong
#ccall gsl_vector_ulong_min_index , Ptr <gsl_vector_ulong> -> IO CSize
#ccall gsl_vector_ulong_minmax , Ptr <gsl_vector_ulong> -> Ptr CULong -> Ptr CULong -> IO ()
#ccall gsl_vector_ulong_minmax_index , Ptr <gsl_vector_ulong> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_vector_ulong_mul , Ptr <gsl_vector_ulong> -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_ptr , Ptr <gsl_vector_ulong> -> CSize -> IO (Ptr CULong)
#ccall gsl_vector_ulong_reverse , Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_scale , Ptr <gsl_vector_ulong> -> CDouble -> IO CInt
#ccall gsl_vector_ulong_set , Ptr <gsl_vector_ulong> -> CSize -> CULong -> IO ()
#ccall gsl_vector_ulong_set_all , Ptr <gsl_vector_ulong> -> CULong -> IO ()
#ccall gsl_vector_ulong_set_basis , Ptr <gsl_vector_ulong> -> CSize -> IO CInt
#ccall gsl_vector_ulong_set_zero , Ptr <gsl_vector_ulong> -> IO ()
#ccall gsl_vector_ulong_sub , Ptr <gsl_vector_ulong> -> Ptr <gsl_vector_ulong> -> IO CInt
-- ccall gsl_vector_ulong_subvector , Ptr <gsl_vector_ulong> -> CSize -> CSize -> IO <gsl_vector_ulong_view>
-- ccall gsl_vector_ulong_subvector_with_stride , Ptr <gsl_vector_ulong> -> CSize -> CSize -> CSize -> IO <gsl_vector_ulong_view>
#ccall gsl_vector_ulong_swap , Ptr <gsl_vector_ulong> -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_vector_ulong_swap_elements , Ptr <gsl_vector_ulong> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_ulong_view_array , Ptr CULong -> CSize -> IO <gsl_vector_ulong_view>
-- ccall gsl_vector_ulong_view_array_with_stride , Ptr CULong -> CSize -> CSize -> IO <gsl_vector_ulong_view>
#ccall gsl_vector_ushort_add , Ptr <gsl_vector_ushort> -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_add_constant , Ptr <gsl_vector_ushort> -> CDouble -> IO CInt
#ccall gsl_vector_ushort_alloc , CSize -> IO (Ptr <gsl_vector_ushort>)
#ccall gsl_vector_ushort_alloc_col_from_matrix , Ptr <gsl_matrix_ushort> -> CSize -> IO (Ptr <gsl_vector_ushort>)
#ccall gsl_vector_ushort_alloc_from_block , Ptr <gsl_block_ushort> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_ushort>)
#ccall gsl_vector_ushort_alloc_from_vector , Ptr <gsl_vector_ushort> -> CSize -> CSize -> CSize -> IO (Ptr <gsl_vector_ushort>)
#ccall gsl_vector_ushort_alloc_row_from_matrix , Ptr <gsl_matrix_ushort> -> CSize -> IO (Ptr <gsl_vector_ushort>)
#ccall gsl_vector_ushort_calloc , CSize -> IO (Ptr <gsl_vector_ushort>)
#ccall gsl_vector_ushort_const_ptr , Ptr <gsl_vector_ushort> -> CSize -> IO (Ptr CUShort)
-- ccall gsl_vector_ushort_const_subvector , Ptr <gsl_vector_ushort> -> CSize -> CSize -> IO <gsl_vector_ushort_const_view>
-- ccall gsl_vector_ushort_const_subvector_with_stride , Ptr <gsl_vector_ushort> -> CSize -> CSize -> CSize -> IO <gsl_vector_ushort_const_view>
-- ccall gsl_vector_ushort_const_view_array , Ptr CUShort -> CSize -> IO <gsl_vector_ushort_const_view>
-- ccall gsl_vector_ushort_const_view_array_with_stride , Ptr CUShort -> CSize -> CSize -> IO <gsl_vector_ushort_const_view>
#ccall gsl_vector_ushort_div , Ptr <gsl_vector_ushort> -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_fprintf , Ptr CFile -> Ptr <gsl_vector_ushort> -> CString -> IO CInt
#ccall gsl_vector_ushort_fread , Ptr CFile -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_free , Ptr <gsl_vector_ushort> -> IO ()
#ccall gsl_vector_ushort_fscanf , Ptr CFile -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_fwrite , Ptr CFile -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_get , Ptr <gsl_vector_ushort> -> CSize -> IO CUShort
#ccall gsl_vector_ushort_isneg , Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_isnonneg , Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_isnull , Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_ispos , Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_max , Ptr <gsl_vector_ushort> -> IO CUShort
#ccall gsl_vector_ushort_max_index , Ptr <gsl_vector_ushort> -> IO CSize
#ccall gsl_vector_ushort_memcpy , Ptr <gsl_vector_ushort> -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_min , Ptr <gsl_vector_ushort> -> IO CUShort
#ccall gsl_vector_ushort_min_index , Ptr <gsl_vector_ushort> -> IO CSize
#ccall gsl_vector_ushort_minmax , Ptr <gsl_vector_ushort> -> Ptr CUShort -> Ptr CUShort -> IO ()
#ccall gsl_vector_ushort_minmax_index , Ptr <gsl_vector_ushort> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_vector_ushort_mul , Ptr <gsl_vector_ushort> -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_ptr , Ptr <gsl_vector_ushort> -> CSize -> IO (Ptr CUShort)
#ccall gsl_vector_ushort_reverse , Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_scale , Ptr <gsl_vector_ushort> -> CDouble -> IO CInt
#ccall gsl_vector_ushort_set , Ptr <gsl_vector_ushort> -> CSize -> CUShort -> IO ()
#ccall gsl_vector_ushort_set_all , Ptr <gsl_vector_ushort> -> CUShort -> IO ()
#ccall gsl_vector_ushort_set_basis , Ptr <gsl_vector_ushort> -> CSize -> IO CInt
#ccall gsl_vector_ushort_set_zero , Ptr <gsl_vector_ushort> -> IO ()
#ccall gsl_vector_ushort_sub , Ptr <gsl_vector_ushort> -> Ptr <gsl_vector_ushort> -> IO CInt
-- ccall gsl_vector_ushort_subvector , Ptr <gsl_vector_ushort> -> CSize -> CSize -> IO <gsl_vector_ushort_view>
-- ccall gsl_vector_ushort_subvector_with_stride , Ptr <gsl_vector_ushort> -> CSize -> CSize -> CSize -> IO <gsl_vector_ushort_view>
#ccall gsl_vector_ushort_swap , Ptr <gsl_vector_ushort> -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_vector_ushort_swap_elements , Ptr <gsl_vector_ushort> -> CSize -> CSize -> IO CInt
-- ccall gsl_vector_ushort_view_array , Ptr CUShort -> CSize -> IO <gsl_vector_ushort_view>
-- ccall gsl_vector_ushort_view_array_with_stride , Ptr CUShort -> CSize -> CSize -> IO <gsl_vector_ushort_view>
-- ccall gsl_vector_view_array , Ptr CDouble -> CSize -> IO <gsl_vector_view>
-- ccall gsl_vector_view_array_with_stride , Ptr CDouble -> CSize -> CSize -> IO <gsl_vector_view>
