#include <bindings.dsl.h>
#include <gsl/gsl_matrix.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Matrices.html>

module Bindings.Gsl.VectorsAndMatrices.Matrices where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes
import Bindings.Gsl.ComplexNumbers

#ccall gsl_matrix_add , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_add_constant , Ptr <gsl_matrix> -> CDouble -> IO CInt
#ccall gsl_matrix_add_diagonal , Ptr <gsl_matrix> -> CDouble -> IO CInt
#ccall gsl_matrix_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix>)
#ccall gsl_matrix_alloc_from_block , Ptr <gsl_block> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix>)
#ccall gsl_matrix_alloc_from_matrix , Ptr <gsl_matrix> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix>)
#ccall gsl_matrix_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix>)
#ccall gsl_matrix_char_add , Ptr <gsl_matrix_char> -> Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_add_constant , Ptr <gsl_matrix_char> -> CDouble -> IO CInt
#ccall gsl_matrix_char_add_diagonal , Ptr <gsl_matrix_char> -> CDouble -> IO CInt
#ccall gsl_matrix_char_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_char>)
#ccall gsl_matrix_char_alloc_from_block , Ptr <gsl_block_char> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_char>)
#ccall gsl_matrix_char_alloc_from_matrix , Ptr <gsl_matrix_char> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_char>)
#ccall gsl_matrix_char_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_char>)
-- ccall gsl_matrix_char_column , Ptr <gsl_matrix_char> -> CSize -> IO <gsl_vector_char_view>
-- ccall gsl_matrix_char_const_column , Ptr <gsl_matrix_char> -> CSize -> IO <gsl_vector_char_const_view>
-- ccall gsl_matrix_char_const_diagonal , Ptr <gsl_matrix_char> -> IO <gsl_vector_char_const_view>
-- ccall gsl_matrix_char_const_row , Ptr <gsl_matrix_char> -> CSize -> IO <gsl_vector_char_const_view>
-- ccall gsl_matrix_char_const_subcolumn , Ptr <gsl_matrix_char> -> CSize -> CSize -> CSize -> IO <gsl_vector_char_const_view>
-- ccall gsl_matrix_char_const_subdiagonal , Ptr <gsl_matrix_char> -> CSize -> IO <gsl_vector_char_const_view>
-- ccall gsl_matrix_char_const_submatrix , Ptr <gsl_matrix_char> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_char_const_view>
-- ccall gsl_matrix_char_const_subrow , Ptr <gsl_matrix_char> -> CSize -> CSize -> CSize -> IO <gsl_vector_char_const_view>
-- ccall gsl_matrix_char_const_superdiagonal , Ptr <gsl_matrix_char> -> CSize -> IO <gsl_vector_char_const_view>
-- ccall gsl_matrix_char_const_view_array , CString -> CSize -> CSize -> IO <gsl_matrix_char_const_view>
-- ccall gsl_matrix_char_const_view_array_with_tda , CString -> CSize -> CSize -> CSize -> IO <gsl_matrix_char_const_view>
-- ccall gsl_matrix_char_const_view_vector , Ptr <gsl_vector_char> -> CSize -> CSize -> IO <gsl_matrix_char_const_view>
-- ccall gsl_matrix_char_const_view_vector_with_tda , Ptr <gsl_vector_char> -> CSize -> CSize -> CSize -> IO <gsl_matrix_char_const_view>
-- ccall gsl_matrix_char_diagonal , Ptr <gsl_matrix_char> -> IO <gsl_vector_char_view>
#ccall gsl_matrix_char_div_elements , Ptr <gsl_matrix_char> -> Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_fprintf , Ptr CFile -> Ptr <gsl_matrix_char> -> CString -> IO CInt
#ccall gsl_matrix_char_fread , Ptr CFile -> Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_free , Ptr <gsl_matrix_char> -> IO ()
#ccall gsl_matrix_char_fscanf , Ptr CFile -> Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_fwrite , Ptr CFile -> Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_isneg , Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_isnonneg , Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_isnull , Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_ispos , Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_max , Ptr <gsl_matrix_char> -> IO CChar
#ccall gsl_matrix_char_max_index , Ptr <gsl_matrix_char> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_char_memcpy , Ptr <gsl_matrix_char> -> Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_min , Ptr <gsl_matrix_char> -> IO CChar
#ccall gsl_matrix_char_min_index , Ptr <gsl_matrix_char> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_char_minmax , Ptr <gsl_matrix_char> -> CString -> CString -> IO ()
#ccall gsl_matrix_char_minmax_index , Ptr <gsl_matrix_char> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_char_mul_elements , Ptr <gsl_matrix_char> -> Ptr <gsl_matrix_char> -> IO CInt
-- ccall gsl_matrix_char_row , Ptr <gsl_matrix_char> -> CSize -> IO <gsl_vector_char_view>
#ccall gsl_matrix_char_scale , Ptr <gsl_matrix_char> -> CDouble -> IO CInt
#ccall gsl_matrix_char_set_all , Ptr <gsl_matrix_char> -> CChar -> IO ()
#ccall gsl_matrix_char_set_identity , Ptr <gsl_matrix_char> -> IO ()
#ccall gsl_matrix_char_set_zero , Ptr <gsl_matrix_char> -> IO ()
#ccall gsl_matrix_char_sub , Ptr <gsl_matrix_char> -> Ptr <gsl_matrix_char> -> IO CInt
-- ccall gsl_matrix_char_subcolumn , Ptr <gsl_matrix_char> -> CSize -> CSize -> CSize -> IO <gsl_vector_char_view>
-- ccall gsl_matrix_char_subdiagonal , Ptr <gsl_matrix_char> -> CSize -> IO <gsl_vector_char_view>
-- ccall gsl_matrix_char_submatrix , Ptr <gsl_matrix_char> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_char_view>
-- ccall gsl_matrix_char_subrow , Ptr <gsl_matrix_char> -> CSize -> CSize -> CSize -> IO <gsl_vector_char_view>
-- ccall gsl_matrix_char_superdiagonal , Ptr <gsl_matrix_char> -> CSize -> IO <gsl_vector_char_view>
#ccall gsl_matrix_char_swap , Ptr <gsl_matrix_char> -> Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_swap_columns , Ptr <gsl_matrix_char> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_char_swap_rowcol , Ptr <gsl_matrix_char> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_char_swap_rows , Ptr <gsl_matrix_char> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_char_transpose , Ptr <gsl_matrix_char> -> IO CInt
#ccall gsl_matrix_char_transpose_memcpy , Ptr <gsl_matrix_char> -> Ptr <gsl_matrix_char> -> IO CInt
-- ccall gsl_matrix_char_view_array , CString -> CSize -> CSize -> IO <gsl_matrix_char_view>
-- ccall gsl_matrix_char_view_array_with_tda , CString -> CSize -> CSize -> CSize -> IO <gsl_matrix_char_view>
-- ccall gsl_matrix_char_view_vector , Ptr <gsl_vector_char> -> CSize -> CSize -> IO <gsl_matrix_char_view>
-- ccall gsl_matrix_char_view_vector_with_tda , Ptr <gsl_vector_char> -> CSize -> CSize -> CSize -> IO <gsl_matrix_char_view>
-- ccall gsl_matrix_column , Ptr <gsl_matrix> -> CSize -> IO <gsl_vector_view>
#ccall gsl_matrix_complex_add , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_matrix_complex_add_constant , Ptr <gsl_matrix_complex> -> <gsl_complex> -> IO CInt
-- ccall gsl_matrix_complex_add_diagonal , Ptr <gsl_matrix_complex> -> <gsl_complex> -> IO CInt
#ccall gsl_matrix_complex_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_complex>)
#ccall gsl_matrix_complex_alloc_from_block , Ptr <gsl_block_complex> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_complex>)
#ccall gsl_matrix_complex_alloc_from_matrix , Ptr <gsl_matrix_complex> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_complex>)
#ccall gsl_matrix_complex_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_complex>)
-- ccall gsl_matrix_complex_column , Ptr <gsl_matrix_complex> -> CSize -> IO <gsl_vector_complex_view>
-- ccall gsl_matrix_complex_const_column , Ptr <gsl_matrix_complex> -> CSize -> IO <gsl_vector_complex_const_view>
-- ccall gsl_matrix_complex_const_diagonal , Ptr <gsl_matrix_complex> -> IO <gsl_vector_complex_const_view>
-- ccall gsl_matrix_complex_const_row , Ptr <gsl_matrix_complex> -> CSize -> IO <gsl_vector_complex_const_view>
-- ccall gsl_matrix_complex_const_subcolumn , Ptr <gsl_matrix_complex> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_const_view>
-- ccall gsl_matrix_complex_const_subdiagonal , Ptr <gsl_matrix_complex> -> CSize -> IO <gsl_vector_complex_const_view>
-- ccall gsl_matrix_complex_const_submatrix , Ptr <gsl_matrix_complex> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_const_view>
-- ccall gsl_matrix_complex_const_subrow , Ptr <gsl_matrix_complex> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_const_view>
-- ccall gsl_matrix_complex_const_superdiagonal , Ptr <gsl_matrix_complex> -> CSize -> IO <gsl_vector_complex_const_view>
-- ccall gsl_matrix_complex_const_view_array , Ptr CDouble -> CSize -> CSize -> IO <gsl_matrix_complex_const_view>
-- ccall gsl_matrix_complex_const_view_array_with_tda , Ptr CDouble -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_const_view>
-- ccall gsl_matrix_complex_const_view_vector , Ptr <gsl_vector_complex> -> CSize -> CSize -> IO <gsl_matrix_complex_const_view>
-- ccall gsl_matrix_complex_const_view_vector_with_tda , Ptr <gsl_vector_complex> -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_const_view>
-- ccall gsl_matrix_complex_diagonal , Ptr <gsl_matrix_complex> -> IO <gsl_vector_complex_view>
#ccall gsl_matrix_complex_div_elements , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_matrix_complex_float_add , Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_matrix_complex_float_add_constant , Ptr <gsl_matrix_complex_float> -> <gsl_complex_float> -> IO CInt
-- ccall gsl_matrix_complex_float_add_diagonal , Ptr <gsl_matrix_complex_float> -> <gsl_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_complex_float>)
#ccall gsl_matrix_complex_float_alloc_from_block , Ptr <gsl_block_complex_float> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_complex_float>)
#ccall gsl_matrix_complex_float_alloc_from_matrix , Ptr <gsl_matrix_complex_float> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_complex_float>)
#ccall gsl_matrix_complex_float_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_complex_float>)
-- ccall gsl_matrix_complex_float_column , Ptr <gsl_matrix_complex_float> -> CSize -> IO <gsl_vector_complex_float_view>
-- ccall gsl_matrix_complex_float_const_column , Ptr <gsl_matrix_complex_float> -> CSize -> IO <gsl_vector_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_diagonal , Ptr <gsl_matrix_complex_float> -> IO <gsl_vector_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_row , Ptr <gsl_matrix_complex_float> -> CSize -> IO <gsl_vector_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_subcolumn , Ptr <gsl_matrix_complex_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_subdiagonal , Ptr <gsl_matrix_complex_float> -> CSize -> IO <gsl_vector_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_submatrix , Ptr <gsl_matrix_complex_float> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_subrow , Ptr <gsl_matrix_complex_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_superdiagonal , Ptr <gsl_matrix_complex_float> -> CSize -> IO <gsl_vector_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_view_array , Ptr CFloat -> CSize -> CSize -> IO <gsl_matrix_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_view_array_with_tda , Ptr CFloat -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_view_vector , Ptr <gsl_vector_complex_float> -> CSize -> CSize -> IO <gsl_matrix_complex_float_const_view>
-- ccall gsl_matrix_complex_float_const_view_vector_with_tda , Ptr <gsl_vector_complex_float> -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_float_const_view>
-- ccall gsl_matrix_complex_float_diagonal , Ptr <gsl_matrix_complex_float> -> IO <gsl_vector_complex_float_view>
#ccall gsl_matrix_complex_float_div_elements , Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_fprintf , Ptr CFile -> Ptr <gsl_matrix_complex_float> -> CString -> IO CInt
#ccall gsl_matrix_complex_float_fread , Ptr CFile -> Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_free , Ptr <gsl_matrix_complex_float> -> IO ()
#ccall gsl_matrix_complex_float_fscanf , Ptr CFile -> Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_fwrite , Ptr CFile -> Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_isneg , Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_isnonneg , Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_isnull , Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_ispos , Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_memcpy , Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_mul_elements , Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_matrix_complex_float_row , Ptr <gsl_matrix_complex_float> -> CSize -> IO <gsl_vector_complex_float_view>
-- ccall gsl_matrix_complex_float_scale , Ptr <gsl_matrix_complex_float> -> <gsl_complex_float> -> IO CInt
-- ccall gsl_matrix_complex_float_set_all , Ptr <gsl_matrix_complex_float> -> <gsl_complex_float> -> IO ()
#ccall gsl_matrix_complex_float_set_identity , Ptr <gsl_matrix_complex_float> -> IO ()
#ccall gsl_matrix_complex_float_set_zero , Ptr <gsl_matrix_complex_float> -> IO ()
#ccall gsl_matrix_complex_float_sub , Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_matrix_complex_float_subcolumn , Ptr <gsl_matrix_complex_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_float_view>
-- ccall gsl_matrix_complex_float_subdiagonal , Ptr <gsl_matrix_complex_float> -> CSize -> IO <gsl_vector_complex_float_view>
-- ccall gsl_matrix_complex_float_submatrix , Ptr <gsl_matrix_complex_float> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_float_view>
-- ccall gsl_matrix_complex_float_subrow , Ptr <gsl_matrix_complex_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_float_view>
-- ccall gsl_matrix_complex_float_superdiagonal , Ptr <gsl_matrix_complex_float> -> CSize -> IO <gsl_vector_complex_float_view>
#ccall gsl_matrix_complex_float_swap , Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_swap_columns , Ptr <gsl_matrix_complex_float> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_complex_float_swap_rowcol , Ptr <gsl_matrix_complex_float> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_complex_float_swap_rows , Ptr <gsl_matrix_complex_float> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_complex_float_transpose , Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_matrix_complex_float_transpose_memcpy , Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_matrix_complex_float_view_array , Ptr CFloat -> CSize -> CSize -> IO <gsl_matrix_complex_float_view>
-- ccall gsl_matrix_complex_float_view_array_with_tda , Ptr CFloat -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_float_view>
-- ccall gsl_matrix_complex_float_view_vector , Ptr <gsl_vector_complex_float> -> CSize -> CSize -> IO <gsl_matrix_complex_float_view>
-- ccall gsl_matrix_complex_float_view_vector_with_tda , Ptr <gsl_vector_complex_float> -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_float_view>
#ccall gsl_matrix_complex_fprintf , Ptr CFile -> Ptr <gsl_matrix_complex> -> CString -> IO CInt
#ccall gsl_matrix_complex_fread , Ptr CFile -> Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_matrix_complex_free , Ptr <gsl_matrix_complex> -> IO ()
#ccall gsl_matrix_complex_fscanf , Ptr CFile -> Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_matrix_complex_fwrite , Ptr CFile -> Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_matrix_complex_isneg , Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_matrix_complex_isnonneg , Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_matrix_complex_isnull , Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_matrix_complex_ispos , Ptr <gsl_matrix_complex> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_add , Ptr <gsl_matrix_complex_long_double> -> Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- ccall gsl_matrix_complex_long_double_add_constant , Ptr <gsl_matrix_complex_long_double> -> <gsl_complex_long_double> -> IO CInt
-- ccall gsl_matrix_complex_long_double_add_diagonal , Ptr <gsl_matrix_complex_long_double> -> <gsl_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_complex_long_double>)
-- #ccall gsl_matrix_complex_long_double_alloc_from_block , Ptr <gsl_block_complex_long_double> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_complex_long_double>)
-- #ccall gsl_matrix_complex_long_double_alloc_from_matrix , Ptr <gsl_matrix_complex_long_double> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_complex_long_double>)
-- #ccall gsl_matrix_complex_long_double_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_complex_long_double>)
-- ccall gsl_matrix_complex_long_double_column , Ptr <gsl_matrix_complex_long_double> -> CSize -> IO <gsl_vector_complex_long_double_view>
-- ccall gsl_matrix_complex_long_double_const_column , Ptr <gsl_matrix_complex_long_double> -> CSize -> IO <gsl_vector_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_diagonal , Ptr <gsl_matrix_complex_long_double> -> IO <gsl_vector_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_row , Ptr <gsl_matrix_complex_long_double> -> CSize -> IO <gsl_vector_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_subcolumn , Ptr <gsl_matrix_complex_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_subdiagonal , Ptr <gsl_matrix_complex_long_double> -> CSize -> IO <gsl_vector_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_submatrix , Ptr <gsl_matrix_complex_long_double> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_subrow , Ptr <gsl_matrix_complex_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_superdiagonal , Ptr <gsl_matrix_complex_long_double> -> CSize -> IO <gsl_vector_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_view_array , Ptr CLDouble -> CSize -> CSize -> IO <gsl_matrix_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_view_array_with_tda , Ptr CLDouble -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_view_vector , Ptr <gsl_vector_complex_long_double> -> CSize -> CSize -> IO <gsl_matrix_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_const_view_vector_with_tda , Ptr <gsl_vector_complex_long_double> -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_long_double_const_view>
-- ccall gsl_matrix_complex_long_double_diagonal , Ptr <gsl_matrix_complex_long_double> -> IO <gsl_vector_complex_long_double_view>
-- #ccall gsl_matrix_complex_long_double_div_elements , Ptr <gsl_matrix_complex_long_double> -> Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_fprintf , Ptr CFile -> Ptr <gsl_matrix_complex_long_double> -> CString -> IO CInt
-- #ccall gsl_matrix_complex_long_double_fread , Ptr CFile -> Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_free , Ptr <gsl_matrix_complex_long_double> -> IO ()
-- #ccall gsl_matrix_complex_long_double_fscanf , Ptr CFile -> Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_fwrite , Ptr CFile -> Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_isneg , Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_isnonneg , Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_isnull , Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_ispos , Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_memcpy , Ptr <gsl_matrix_complex_long_double> -> Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_mul_elements , Ptr <gsl_matrix_complex_long_double> -> Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- ccall gsl_matrix_complex_long_double_row , Ptr <gsl_matrix_complex_long_double> -> CSize -> IO <gsl_vector_complex_long_double_view>
-- ccall gsl_matrix_complex_long_double_scale , Ptr <gsl_matrix_complex_long_double> -> <gsl_complex_long_double> -> IO CInt
-- ccall gsl_matrix_complex_long_double_set_all , Ptr <gsl_matrix_complex_long_double> -> <gsl_complex_long_double> -> IO ()
-- #ccall gsl_matrix_complex_long_double_set_identity , Ptr <gsl_matrix_complex_long_double> -> IO ()
-- #ccall gsl_matrix_complex_long_double_set_zero , Ptr <gsl_matrix_complex_long_double> -> IO ()
-- #ccall gsl_matrix_complex_long_double_sub , Ptr <gsl_matrix_complex_long_double> -> Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- ccall gsl_matrix_complex_long_double_subcolumn , Ptr <gsl_matrix_complex_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_long_double_view>
-- ccall gsl_matrix_complex_long_double_subdiagonal , Ptr <gsl_matrix_complex_long_double> -> CSize -> IO <gsl_vector_complex_long_double_view>
-- ccall gsl_matrix_complex_long_double_submatrix , Ptr <gsl_matrix_complex_long_double> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_long_double_view>
-- ccall gsl_matrix_complex_long_double_subrow , Ptr <gsl_matrix_complex_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_long_double_view>
-- ccall gsl_matrix_complex_long_double_superdiagonal , Ptr <gsl_matrix_complex_long_double> -> CSize -> IO <gsl_vector_complex_long_double_view>
-- #ccall gsl_matrix_complex_long_double_swap , Ptr <gsl_matrix_complex_long_double> -> Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_swap_columns , Ptr <gsl_matrix_complex_long_double> -> CSize -> CSize -> IO CInt
-- #ccall gsl_matrix_complex_long_double_swap_rowcol , Ptr <gsl_matrix_complex_long_double> -> CSize -> CSize -> IO CInt
-- #ccall gsl_matrix_complex_long_double_swap_rows , Ptr <gsl_matrix_complex_long_double> -> CSize -> CSize -> IO CInt
-- #ccall gsl_matrix_complex_long_double_transpose , Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- #ccall gsl_matrix_complex_long_double_transpose_memcpy , Ptr <gsl_matrix_complex_long_double> -> Ptr <gsl_matrix_complex_long_double> -> IO CInt
-- ccall gsl_matrix_complex_long_double_view_array , Ptr CLDouble -> CSize -> CSize -> IO <gsl_matrix_complex_long_double_view>
-- ccall gsl_matrix_complex_long_double_view_array_with_tda , Ptr CLDouble -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_long_double_view>
-- ccall gsl_matrix_complex_long_double_view_vector , Ptr <gsl_vector_complex_long_double> -> CSize -> CSize -> IO <gsl_matrix_complex_long_double_view>
-- ccall gsl_matrix_complex_long_double_view_vector_with_tda , Ptr <gsl_vector_complex_long_double> -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_long_double_view>
#ccall gsl_matrix_complex_memcpy , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_matrix_complex_mul_elements , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_matrix_complex_row , Ptr <gsl_matrix_complex> -> CSize -> IO <gsl_vector_complex_view>
-- ccall gsl_matrix_complex_scale , Ptr <gsl_matrix_complex> -> <gsl_complex> -> IO CInt
-- ccall gsl_matrix_complex_set_all , Ptr <gsl_matrix_complex> -> <gsl_complex> -> IO ()
#ccall gsl_matrix_complex_set_identity , Ptr <gsl_matrix_complex> -> IO ()
#ccall gsl_matrix_complex_set_zero , Ptr <gsl_matrix_complex> -> IO ()
#ccall gsl_matrix_complex_sub , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_matrix_complex_subcolumn , Ptr <gsl_matrix_complex> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_view>
-- ccall gsl_matrix_complex_subdiagonal , Ptr <gsl_matrix_complex> -> CSize -> IO <gsl_vector_complex_view>
-- ccall gsl_matrix_complex_submatrix , Ptr <gsl_matrix_complex> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_view>
-- ccall gsl_matrix_complex_subrow , Ptr <gsl_matrix_complex> -> CSize -> CSize -> CSize -> IO <gsl_vector_complex_view>
-- ccall gsl_matrix_complex_superdiagonal , Ptr <gsl_matrix_complex> -> CSize -> IO <gsl_vector_complex_view>
#ccall gsl_matrix_complex_swap , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_matrix_complex_swap_columns , Ptr <gsl_matrix_complex> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_complex_swap_rowcol , Ptr <gsl_matrix_complex> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_complex_swap_rows , Ptr <gsl_matrix_complex> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_complex_transpose , Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_matrix_complex_transpose_memcpy , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_matrix_complex_view_array , Ptr CDouble -> CSize -> CSize -> IO <gsl_matrix_complex_view>
-- ccall gsl_matrix_complex_view_array_with_tda , Ptr CDouble -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_view>
-- ccall gsl_matrix_complex_view_vector , Ptr <gsl_vector_complex> -> CSize -> CSize -> IO <gsl_matrix_complex_view>
-- ccall gsl_matrix_complex_view_vector_with_tda , Ptr <gsl_vector_complex> -> CSize -> CSize -> CSize -> IO <gsl_matrix_complex_view>
-- ccall gsl_matrix_const_column , Ptr <gsl_matrix> -> CSize -> IO <gsl_vector_const_view>
-- ccall gsl_matrix_const_diagonal , Ptr <gsl_matrix> -> IO <gsl_vector_const_view>
-- ccall gsl_matrix_const_row , Ptr <gsl_matrix> -> CSize -> IO <gsl_vector_const_view>
-- ccall gsl_matrix_const_subcolumn , Ptr <gsl_matrix> -> CSize -> CSize -> CSize -> IO <gsl_vector_const_view>
-- ccall gsl_matrix_const_subdiagonal , Ptr <gsl_matrix> -> CSize -> IO <gsl_vector_const_view>
-- ccall gsl_matrix_const_submatrix , Ptr <gsl_matrix> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_const_view>
-- ccall gsl_matrix_const_subrow , Ptr <gsl_matrix> -> CSize -> CSize -> CSize -> IO <gsl_vector_const_view>
-- ccall gsl_matrix_const_superdiagonal , Ptr <gsl_matrix> -> CSize -> IO <gsl_vector_const_view>
-- ccall gsl_matrix_const_view_array , Ptr CDouble -> CSize -> CSize -> IO <gsl_matrix_const_view>
-- ccall gsl_matrix_const_view_array_with_tda , Ptr CDouble -> CSize -> CSize -> CSize -> IO <gsl_matrix_const_view>
-- ccall gsl_matrix_const_view_vector , Ptr <gsl_vector> -> CSize -> CSize -> IO <gsl_matrix_const_view>
-- ccall gsl_matrix_const_view_vector_with_tda , Ptr <gsl_vector> -> CSize -> CSize -> CSize -> IO <gsl_matrix_const_view>
-- ccall gsl_matrix_diagonal , Ptr <gsl_matrix> -> IO <gsl_vector_view>
#ccall gsl_matrix_div_elements , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_float_add , Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_add_constant , Ptr <gsl_matrix_float> -> CDouble -> IO CInt
#ccall gsl_matrix_float_add_diagonal , Ptr <gsl_matrix_float> -> CDouble -> IO CInt
#ccall gsl_matrix_float_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_float>)
#ccall gsl_matrix_float_alloc_from_block , Ptr <gsl_block_float> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_float>)
#ccall gsl_matrix_float_alloc_from_matrix , Ptr <gsl_matrix_float> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_float>)
#ccall gsl_matrix_float_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_float>)
-- ccall gsl_matrix_float_column , Ptr <gsl_matrix_float> -> CSize -> IO <gsl_vector_float_view>
-- ccall gsl_matrix_float_const_column , Ptr <gsl_matrix_float> -> CSize -> IO <gsl_vector_float_const_view>
-- ccall gsl_matrix_float_const_diagonal , Ptr <gsl_matrix_float> -> IO <gsl_vector_float_const_view>
-- ccall gsl_matrix_float_const_row , Ptr <gsl_matrix_float> -> CSize -> IO <gsl_vector_float_const_view>
-- ccall gsl_matrix_float_const_subcolumn , Ptr <gsl_matrix_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_float_const_view>
-- ccall gsl_matrix_float_const_subdiagonal , Ptr <gsl_matrix_float> -> CSize -> IO <gsl_vector_float_const_view>
-- ccall gsl_matrix_float_const_submatrix , Ptr <gsl_matrix_float> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_float_const_view>
-- ccall gsl_matrix_float_const_subrow , Ptr <gsl_matrix_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_float_const_view>
-- ccall gsl_matrix_float_const_superdiagonal , Ptr <gsl_matrix_float> -> CSize -> IO <gsl_vector_float_const_view>
-- ccall gsl_matrix_float_const_view_array , Ptr CFloat -> CSize -> CSize -> IO <gsl_matrix_float_const_view>
-- ccall gsl_matrix_float_const_view_array_with_tda , Ptr CFloat -> CSize -> CSize -> CSize -> IO <gsl_matrix_float_const_view>
-- ccall gsl_matrix_float_const_view_vector , Ptr <gsl_vector_float> -> CSize -> CSize -> IO <gsl_matrix_float_const_view>
-- ccall gsl_matrix_float_const_view_vector_with_tda , Ptr <gsl_vector_float> -> CSize -> CSize -> CSize -> IO <gsl_matrix_float_const_view>
-- ccall gsl_matrix_float_diagonal , Ptr <gsl_matrix_float> -> IO <gsl_vector_float_view>
#ccall gsl_matrix_float_div_elements , Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_fprintf , Ptr CFile -> Ptr <gsl_matrix_float> -> CString -> IO CInt
#ccall gsl_matrix_float_fread , Ptr CFile -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_free , Ptr <gsl_matrix_float> -> IO ()
#ccall gsl_matrix_float_fscanf , Ptr CFile -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_fwrite , Ptr CFile -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_isneg , Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_isnonneg , Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_isnull , Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_ispos , Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_max , Ptr <gsl_matrix_float> -> IO CFloat
#ccall gsl_matrix_float_max_index , Ptr <gsl_matrix_float> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_float_memcpy , Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_min , Ptr <gsl_matrix_float> -> IO CFloat
#ccall gsl_matrix_float_min_index , Ptr <gsl_matrix_float> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_float_minmax , Ptr <gsl_matrix_float> -> Ptr CFloat -> Ptr CFloat -> IO ()
#ccall gsl_matrix_float_minmax_index , Ptr <gsl_matrix_float> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_float_mul_elements , Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> IO CInt
-- ccall gsl_matrix_float_row , Ptr <gsl_matrix_float> -> CSize -> IO <gsl_vector_float_view>
#ccall gsl_matrix_float_scale , Ptr <gsl_matrix_float> -> CDouble -> IO CInt
#ccall gsl_matrix_float_set_all , Ptr <gsl_matrix_float> -> CFloat -> IO ()
#ccall gsl_matrix_float_set_identity , Ptr <gsl_matrix_float> -> IO ()
#ccall gsl_matrix_float_set_zero , Ptr <gsl_matrix_float> -> IO ()
#ccall gsl_matrix_float_sub , Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> IO CInt
-- ccall gsl_matrix_float_subcolumn , Ptr <gsl_matrix_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_float_view>
-- ccall gsl_matrix_float_subdiagonal , Ptr <gsl_matrix_float> -> CSize -> IO <gsl_vector_float_view>
-- ccall gsl_matrix_float_submatrix , Ptr <gsl_matrix_float> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_float_view>
-- ccall gsl_matrix_float_subrow , Ptr <gsl_matrix_float> -> CSize -> CSize -> CSize -> IO <gsl_vector_float_view>
-- ccall gsl_matrix_float_superdiagonal , Ptr <gsl_matrix_float> -> CSize -> IO <gsl_vector_float_view>
#ccall gsl_matrix_float_swap , Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_swap_columns , Ptr <gsl_matrix_float> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_float_swap_rowcol , Ptr <gsl_matrix_float> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_float_swap_rows , Ptr <gsl_matrix_float> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_float_transpose , Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_matrix_float_transpose_memcpy , Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> IO CInt
-- ccall gsl_matrix_float_view_array , Ptr CFloat -> CSize -> CSize -> IO <gsl_matrix_float_view>
-- ccall gsl_matrix_float_view_array_with_tda , Ptr CFloat -> CSize -> CSize -> CSize -> IO <gsl_matrix_float_view>
-- ccall gsl_matrix_float_view_vector , Ptr <gsl_vector_float> -> CSize -> CSize -> IO <gsl_matrix_float_view>
-- ccall gsl_matrix_float_view_vector_with_tda , Ptr <gsl_vector_float> -> CSize -> CSize -> CSize -> IO <gsl_matrix_float_view>
#ccall gsl_matrix_fprintf , Ptr CFile -> Ptr <gsl_matrix> -> CString -> IO CInt
#ccall gsl_matrix_fread , Ptr CFile -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_free , Ptr <gsl_matrix> -> IO ()
#ccall gsl_matrix_fscanf , Ptr CFile -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_fwrite , Ptr CFile -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_int_add , Ptr <gsl_matrix_int> -> Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_add_constant , Ptr <gsl_matrix_int> -> CDouble -> IO CInt
#ccall gsl_matrix_int_add_diagonal , Ptr <gsl_matrix_int> -> CDouble -> IO CInt
#ccall gsl_matrix_int_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_int>)
#ccall gsl_matrix_int_alloc_from_block , Ptr <gsl_block_int> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_int>)
#ccall gsl_matrix_int_alloc_from_matrix , Ptr <gsl_matrix_int> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_int>)
#ccall gsl_matrix_int_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_int>)
-- ccall gsl_matrix_int_column , Ptr <gsl_matrix_int> -> CSize -> IO <gsl_vector_int_view>
-- ccall gsl_matrix_int_const_column , Ptr <gsl_matrix_int> -> CSize -> IO <gsl_vector_int_const_view>
-- ccall gsl_matrix_int_const_diagonal , Ptr <gsl_matrix_int> -> IO <gsl_vector_int_const_view>
-- ccall gsl_matrix_int_const_row , Ptr <gsl_matrix_int> -> CSize -> IO <gsl_vector_int_const_view>
-- ccall gsl_matrix_int_const_subcolumn , Ptr <gsl_matrix_int> -> CSize -> CSize -> CSize -> IO <gsl_vector_int_const_view>
-- ccall gsl_matrix_int_const_subdiagonal , Ptr <gsl_matrix_int> -> CSize -> IO <gsl_vector_int_const_view>
-- ccall gsl_matrix_int_const_submatrix , Ptr <gsl_matrix_int> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_int_const_view>
-- ccall gsl_matrix_int_const_subrow , Ptr <gsl_matrix_int> -> CSize -> CSize -> CSize -> IO <gsl_vector_int_const_view>
-- ccall gsl_matrix_int_const_superdiagonal , Ptr <gsl_matrix_int> -> CSize -> IO <gsl_vector_int_const_view>
-- ccall gsl_matrix_int_const_view_array , Ptr CInt -> CSize -> CSize -> IO <gsl_matrix_int_const_view>
-- ccall gsl_matrix_int_const_view_array_with_tda , Ptr CInt -> CSize -> CSize -> CSize -> IO <gsl_matrix_int_const_view>
-- ccall gsl_matrix_int_const_view_vector , Ptr <gsl_vector_int> -> CSize -> CSize -> IO <gsl_matrix_int_const_view>
-- ccall gsl_matrix_int_const_view_vector_with_tda , Ptr <gsl_vector_int> -> CSize -> CSize -> CSize -> IO <gsl_matrix_int_const_view>
-- ccall gsl_matrix_int_diagonal , Ptr <gsl_matrix_int> -> IO <gsl_vector_int_view>
#ccall gsl_matrix_int_div_elements , Ptr <gsl_matrix_int> -> Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_fprintf , Ptr CFile -> Ptr <gsl_matrix_int> -> CString -> IO CInt
#ccall gsl_matrix_int_fread , Ptr CFile -> Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_free , Ptr <gsl_matrix_int> -> IO ()
#ccall gsl_matrix_int_fscanf , Ptr CFile -> Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_fwrite , Ptr CFile -> Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_isneg , Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_isnonneg , Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_isnull , Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_ispos , Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_max , Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_max_index , Ptr <gsl_matrix_int> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_int_memcpy , Ptr <gsl_matrix_int> -> Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_min , Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_min_index , Ptr <gsl_matrix_int> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_int_minmax , Ptr <gsl_matrix_int> -> Ptr CInt -> Ptr CInt -> IO ()
#ccall gsl_matrix_int_minmax_index , Ptr <gsl_matrix_int> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_int_mul_elements , Ptr <gsl_matrix_int> -> Ptr <gsl_matrix_int> -> IO CInt
-- ccall gsl_matrix_int_row , Ptr <gsl_matrix_int> -> CSize -> IO <gsl_vector_int_view>
#ccall gsl_matrix_int_scale , Ptr <gsl_matrix_int> -> CDouble -> IO CInt
#ccall gsl_matrix_int_set_all , Ptr <gsl_matrix_int> -> CInt -> IO ()
#ccall gsl_matrix_int_set_identity , Ptr <gsl_matrix_int> -> IO ()
#ccall gsl_matrix_int_set_zero , Ptr <gsl_matrix_int> -> IO ()
#ccall gsl_matrix_int_sub , Ptr <gsl_matrix_int> -> Ptr <gsl_matrix_int> -> IO CInt
-- ccall gsl_matrix_int_subcolumn , Ptr <gsl_matrix_int> -> CSize -> CSize -> CSize -> IO <gsl_vector_int_view>
-- ccall gsl_matrix_int_subdiagonal , Ptr <gsl_matrix_int> -> CSize -> IO <gsl_vector_int_view>
-- ccall gsl_matrix_int_submatrix , Ptr <gsl_matrix_int> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_int_view>
-- ccall gsl_matrix_int_subrow , Ptr <gsl_matrix_int> -> CSize -> CSize -> CSize -> IO <gsl_vector_int_view>
-- ccall gsl_matrix_int_superdiagonal , Ptr <gsl_matrix_int> -> CSize -> IO <gsl_vector_int_view>
#ccall gsl_matrix_int_swap , Ptr <gsl_matrix_int> -> Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_swap_columns , Ptr <gsl_matrix_int> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_int_swap_rowcol , Ptr <gsl_matrix_int> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_int_swap_rows , Ptr <gsl_matrix_int> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_int_transpose , Ptr <gsl_matrix_int> -> IO CInt
#ccall gsl_matrix_int_transpose_memcpy , Ptr <gsl_matrix_int> -> Ptr <gsl_matrix_int> -> IO CInt
-- ccall gsl_matrix_int_view_array , Ptr CInt -> CSize -> CSize -> IO <gsl_matrix_int_view>
-- ccall gsl_matrix_int_view_array_with_tda , Ptr CInt -> CSize -> CSize -> CSize -> IO <gsl_matrix_int_view>
-- ccall gsl_matrix_int_view_vector , Ptr <gsl_vector_int> -> CSize -> CSize -> IO <gsl_matrix_int_view>
-- ccall gsl_matrix_int_view_vector_with_tda , Ptr <gsl_vector_int> -> CSize -> CSize -> CSize -> IO <gsl_matrix_int_view>
#ccall gsl_matrix_isneg , Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_isnonneg , Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_isnull , Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_ispos , Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_long_add , Ptr <gsl_matrix_long> -> Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_add_constant , Ptr <gsl_matrix_long> -> CDouble -> IO CInt
#ccall gsl_matrix_long_add_diagonal , Ptr <gsl_matrix_long> -> CDouble -> IO CInt
#ccall gsl_matrix_long_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_long>)
#ccall gsl_matrix_long_alloc_from_block , Ptr <gsl_block_long> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_long>)
#ccall gsl_matrix_long_alloc_from_matrix , Ptr <gsl_matrix_long> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_long>)
#ccall gsl_matrix_long_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_long>)
-- ccall gsl_matrix_long_column , Ptr <gsl_matrix_long> -> CSize -> IO <gsl_vector_long_view>
-- ccall gsl_matrix_long_const_column , Ptr <gsl_matrix_long> -> CSize -> IO <gsl_vector_long_const_view>
-- ccall gsl_matrix_long_const_diagonal , Ptr <gsl_matrix_long> -> IO <gsl_vector_long_const_view>
-- ccall gsl_matrix_long_const_row , Ptr <gsl_matrix_long> -> CSize -> IO <gsl_vector_long_const_view>
-- ccall gsl_matrix_long_const_subcolumn , Ptr <gsl_matrix_long> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_const_view>
-- ccall gsl_matrix_long_const_subdiagonal , Ptr <gsl_matrix_long> -> CSize -> IO <gsl_vector_long_const_view>
-- ccall gsl_matrix_long_const_submatrix , Ptr <gsl_matrix_long> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_const_view>
-- ccall gsl_matrix_long_const_subrow , Ptr <gsl_matrix_long> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_const_view>
-- ccall gsl_matrix_long_const_superdiagonal , Ptr <gsl_matrix_long> -> CSize -> IO <gsl_vector_long_const_view>
-- ccall gsl_matrix_long_const_view_array , Ptr CLong -> CSize -> CSize -> IO <gsl_matrix_long_const_view>
-- ccall gsl_matrix_long_const_view_array_with_tda , Ptr CLong -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_const_view>
-- ccall gsl_matrix_long_const_view_vector , Ptr <gsl_vector_long> -> CSize -> CSize -> IO <gsl_matrix_long_const_view>
-- ccall gsl_matrix_long_const_view_vector_with_tda , Ptr <gsl_vector_long> -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_const_view>
-- ccall gsl_matrix_long_diagonal , Ptr <gsl_matrix_long> -> IO <gsl_vector_long_view>
#ccall gsl_matrix_long_div_elements , Ptr <gsl_matrix_long> -> Ptr <gsl_matrix_long> -> IO CInt
-- #ccall gsl_matrix_long_double_add , Ptr <gsl_matrix_long_double> -> Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_add_constant , Ptr <gsl_matrix_long_double> -> CDouble -> IO CInt
-- #ccall gsl_matrix_long_double_add_diagonal , Ptr <gsl_matrix_long_double> -> CDouble -> IO CInt
-- #ccall gsl_matrix_long_double_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_long_double>)
-- #ccall gsl_matrix_long_double_alloc_from_block , Ptr <gsl_block_long_double> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_long_double>)
-- #ccall gsl_matrix_long_double_alloc_from_matrix , Ptr <gsl_matrix_long_double> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_long_double>)
-- #ccall gsl_matrix_long_double_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_long_double>)
-- ccall gsl_matrix_long_double_column , Ptr <gsl_matrix_long_double> -> CSize -> IO <gsl_vector_long_double_view>
-- ccall gsl_matrix_long_double_const_column , Ptr <gsl_matrix_long_double> -> CSize -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_matrix_long_double_const_diagonal , Ptr <gsl_matrix_long_double> -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_matrix_long_double_const_row , Ptr <gsl_matrix_long_double> -> CSize -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_matrix_long_double_const_subcolumn , Ptr <gsl_matrix_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_matrix_long_double_const_subdiagonal , Ptr <gsl_matrix_long_double> -> CSize -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_matrix_long_double_const_submatrix , Ptr <gsl_matrix_long_double> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_double_const_view>
-- ccall gsl_matrix_long_double_const_subrow , Ptr <gsl_matrix_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_matrix_long_double_const_superdiagonal , Ptr <gsl_matrix_long_double> -> CSize -> IO <gsl_vector_long_double_const_view>
-- ccall gsl_matrix_long_double_const_view_array , Ptr CLDouble -> CSize -> CSize -> IO <gsl_matrix_long_double_const_view>
-- ccall gsl_matrix_long_double_const_view_array_with_tda , Ptr CLDouble -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_double_const_view>
-- ccall gsl_matrix_long_double_const_view_vector , Ptr <gsl_vector_long_double> -> CSize -> CSize -> IO <gsl_matrix_long_double_const_view>
-- ccall gsl_matrix_long_double_const_view_vector_with_tda , Ptr <gsl_vector_long_double> -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_double_const_view>
-- ccall gsl_matrix_long_double_diagonal , Ptr <gsl_matrix_long_double> -> IO <gsl_vector_long_double_view>
-- #ccall gsl_matrix_long_double_div_elements , Ptr <gsl_matrix_long_double> -> Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_fprintf , Ptr CFile -> Ptr <gsl_matrix_long_double> -> CString -> IO CInt
-- #ccall gsl_matrix_long_double_fread , Ptr CFile -> Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_free , Ptr <gsl_matrix_long_double> -> IO ()
-- #ccall gsl_matrix_long_double_fscanf , Ptr CFile -> Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_fwrite , Ptr CFile -> Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_isneg , Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_isnonneg , Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_isnull , Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_ispos , Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_max , Ptr <gsl_matrix_long_double> -> IO CLDouble
-- #ccall gsl_matrix_long_double_max_index , Ptr <gsl_matrix_long_double> -> Ptr CSize -> Ptr CSize -> IO ()
-- #ccall gsl_matrix_long_double_memcpy , Ptr <gsl_matrix_long_double> -> Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_min , Ptr <gsl_matrix_long_double> -> IO CLDouble
-- #ccall gsl_matrix_long_double_min_index , Ptr <gsl_matrix_long_double> -> Ptr CSize -> Ptr CSize -> IO ()
-- #ccall gsl_matrix_long_double_minmax , Ptr <gsl_matrix_long_double> -> Ptr CLDouble -> Ptr CLDouble -> IO ()
-- #ccall gsl_matrix_long_double_minmax_index , Ptr <gsl_matrix_long_double> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
-- #ccall gsl_matrix_long_double_mul_elements , Ptr <gsl_matrix_long_double> -> Ptr <gsl_matrix_long_double> -> IO CInt
-- -- ccall gsl_matrix_long_double_row , Ptr <gsl_matrix_long_double> -> CSize -> IO <gsl_vector_long_double_view>
-- #ccall gsl_matrix_long_double_scale , Ptr <gsl_matrix_long_double> -> CDouble -> IO CInt
-- #ccall gsl_matrix_long_double_set_all , Ptr <gsl_matrix_long_double> -> CLDouble -> IO ()
-- #ccall gsl_matrix_long_double_set_identity , Ptr <gsl_matrix_long_double> -> IO ()
-- #ccall gsl_matrix_long_double_set_zero , Ptr <gsl_matrix_long_double> -> IO ()
-- #ccall gsl_matrix_long_double_sub , Ptr <gsl_matrix_long_double> -> Ptr <gsl_matrix_long_double> -> IO CInt
-- ccall gsl_matrix_long_double_subcolumn , Ptr <gsl_matrix_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_double_view>
-- ccall gsl_matrix_long_double_subdiagonal , Ptr <gsl_matrix_long_double> -> CSize -> IO <gsl_vector_long_double_view>
-- ccall gsl_matrix_long_double_submatrix , Ptr <gsl_matrix_long_double> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_double_view>
-- ccall gsl_matrix_long_double_subrow , Ptr <gsl_matrix_long_double> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_double_view>
-- ccall gsl_matrix_long_double_superdiagonal , Ptr <gsl_matrix_long_double> -> CSize -> IO <gsl_vector_long_double_view>
-- #ccall gsl_matrix_long_double_swap , Ptr <gsl_matrix_long_double> -> Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_swap_columns , Ptr <gsl_matrix_long_double> -> CSize -> CSize -> IO CInt
-- #ccall gsl_matrix_long_double_swap_rowcol , Ptr <gsl_matrix_long_double> -> CSize -> CSize -> IO CInt
-- #ccall gsl_matrix_long_double_swap_rows , Ptr <gsl_matrix_long_double> -> CSize -> CSize -> IO CInt
-- #ccall gsl_matrix_long_double_transpose , Ptr <gsl_matrix_long_double> -> IO CInt
-- #ccall gsl_matrix_long_double_transpose_memcpy , Ptr <gsl_matrix_long_double> -> Ptr <gsl_matrix_long_double> -> IO CInt
-- ccall gsl_matrix_long_double_view_array , Ptr CLDouble -> CSize -> CSize -> IO <gsl_matrix_long_double_view>
-- ccall gsl_matrix_long_double_view_array_with_tda , Ptr CLDouble -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_double_view>
-- ccall gsl_matrix_long_double_view_vector , Ptr <gsl_vector_long_double> -> CSize -> CSize -> IO <gsl_matrix_long_double_view>
-- ccall gsl_matrix_long_double_view_vector_with_tda , Ptr <gsl_vector_long_double> -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_double_view>
#ccall gsl_matrix_long_fprintf , Ptr CFile -> Ptr <gsl_matrix_long> -> CString -> IO CInt
#ccall gsl_matrix_long_fread , Ptr CFile -> Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_free , Ptr <gsl_matrix_long> -> IO ()
#ccall gsl_matrix_long_fscanf , Ptr CFile -> Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_fwrite , Ptr CFile -> Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_isneg , Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_isnonneg , Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_isnull , Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_ispos , Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_max , Ptr <gsl_matrix_long> -> IO CLong
#ccall gsl_matrix_long_max_index , Ptr <gsl_matrix_long> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_long_memcpy , Ptr <gsl_matrix_long> -> Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_min , Ptr <gsl_matrix_long> -> IO CLong
#ccall gsl_matrix_long_min_index , Ptr <gsl_matrix_long> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_long_minmax , Ptr <gsl_matrix_long> -> Ptr CLong -> Ptr CLong -> IO ()
#ccall gsl_matrix_long_minmax_index , Ptr <gsl_matrix_long> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_long_mul_elements , Ptr <gsl_matrix_long> -> Ptr <gsl_matrix_long> -> IO CInt
-- ccall gsl_matrix_long_row , Ptr <gsl_matrix_long> -> CSize -> IO <gsl_vector_long_view>
#ccall gsl_matrix_long_scale , Ptr <gsl_matrix_long> -> CDouble -> IO CInt
#ccall gsl_matrix_long_set_all , Ptr <gsl_matrix_long> -> CLong -> IO ()
#ccall gsl_matrix_long_set_identity , Ptr <gsl_matrix_long> -> IO ()
#ccall gsl_matrix_long_set_zero , Ptr <gsl_matrix_long> -> IO ()
#ccall gsl_matrix_long_sub , Ptr <gsl_matrix_long> -> Ptr <gsl_matrix_long> -> IO CInt
-- ccall gsl_matrix_long_subcolumn , Ptr <gsl_matrix_long> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_view>
-- ccall gsl_matrix_long_subdiagonal , Ptr <gsl_matrix_long> -> CSize -> IO <gsl_vector_long_view>
-- ccall gsl_matrix_long_submatrix , Ptr <gsl_matrix_long> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_view>
-- ccall gsl_matrix_long_subrow , Ptr <gsl_matrix_long> -> CSize -> CSize -> CSize -> IO <gsl_vector_long_view>
-- ccall gsl_matrix_long_superdiagonal , Ptr <gsl_matrix_long> -> CSize -> IO <gsl_vector_long_view>
#ccall gsl_matrix_long_swap , Ptr <gsl_matrix_long> -> Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_swap_columns , Ptr <gsl_matrix_long> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_long_swap_rowcol , Ptr <gsl_matrix_long> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_long_swap_rows , Ptr <gsl_matrix_long> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_long_transpose , Ptr <gsl_matrix_long> -> IO CInt
#ccall gsl_matrix_long_transpose_memcpy , Ptr <gsl_matrix_long> -> Ptr <gsl_matrix_long> -> IO CInt
-- ccall gsl_matrix_long_view_array , Ptr CLong -> CSize -> CSize -> IO <gsl_matrix_long_view>
-- ccall gsl_matrix_long_view_array_with_tda , Ptr CLong -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_view>
-- ccall gsl_matrix_long_view_vector , Ptr <gsl_vector_long> -> CSize -> CSize -> IO <gsl_matrix_long_view>
-- ccall gsl_matrix_long_view_vector_with_tda , Ptr <gsl_vector_long> -> CSize -> CSize -> CSize -> IO <gsl_matrix_long_view>
#ccall gsl_matrix_max , Ptr <gsl_matrix> -> IO CDouble
#ccall gsl_matrix_max_index , Ptr <gsl_matrix> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_memcpy , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_min , Ptr <gsl_matrix> -> IO CDouble
#ccall gsl_matrix_min_index , Ptr <gsl_matrix> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_minmax , Ptr <gsl_matrix> -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_matrix_minmax_index , Ptr <gsl_matrix> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_mul_elements , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
-- ccall gsl_matrix_row , Ptr <gsl_matrix> -> CSize -> IO <gsl_vector_view>
#ccall gsl_matrix_scale , Ptr <gsl_matrix> -> CDouble -> IO CInt
#ccall gsl_matrix_set_all , Ptr <gsl_matrix> -> CDouble -> IO ()
#ccall gsl_matrix_set_identity , Ptr <gsl_matrix> -> IO ()
#ccall gsl_matrix_set_zero , Ptr <gsl_matrix> -> IO ()
#ccall gsl_matrix_short_add , Ptr <gsl_matrix_short> -> Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_add_constant , Ptr <gsl_matrix_short> -> CDouble -> IO CInt
#ccall gsl_matrix_short_add_diagonal , Ptr <gsl_matrix_short> -> CDouble -> IO CInt
#ccall gsl_matrix_short_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_short>)
#ccall gsl_matrix_short_alloc_from_block , Ptr <gsl_block_short> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_short>)
#ccall gsl_matrix_short_alloc_from_matrix , Ptr <gsl_matrix_short> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_short>)
#ccall gsl_matrix_short_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_short>)
-- ccall gsl_matrix_short_column , Ptr <gsl_matrix_short> -> CSize -> IO <gsl_vector_short_view>
-- ccall gsl_matrix_short_const_column , Ptr <gsl_matrix_short> -> CSize -> IO <gsl_vector_short_const_view>
-- ccall gsl_matrix_short_const_diagonal , Ptr <gsl_matrix_short> -> IO <gsl_vector_short_const_view>
-- ccall gsl_matrix_short_const_row , Ptr <gsl_matrix_short> -> CSize -> IO <gsl_vector_short_const_view>
-- ccall gsl_matrix_short_const_subcolumn , Ptr <gsl_matrix_short> -> CSize -> CSize -> CSize -> IO <gsl_vector_short_const_view>
-- ccall gsl_matrix_short_const_subdiagonal , Ptr <gsl_matrix_short> -> CSize -> IO <gsl_vector_short_const_view>
-- ccall gsl_matrix_short_const_submatrix , Ptr <gsl_matrix_short> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_short_const_view>
-- ccall gsl_matrix_short_const_subrow , Ptr <gsl_matrix_short> -> CSize -> CSize -> CSize -> IO <gsl_vector_short_const_view>
-- ccall gsl_matrix_short_const_superdiagonal , Ptr <gsl_matrix_short> -> CSize -> IO <gsl_vector_short_const_view>
-- ccall gsl_matrix_short_const_view_array , Ptr CShort -> CSize -> CSize -> IO <gsl_matrix_short_const_view>
-- ccall gsl_matrix_short_const_view_array_with_tda , Ptr CShort -> CSize -> CSize -> CSize -> IO <gsl_matrix_short_const_view>
-- ccall gsl_matrix_short_const_view_vector , Ptr <gsl_vector_short> -> CSize -> CSize -> IO <gsl_matrix_short_const_view>
-- ccall gsl_matrix_short_const_view_vector_with_tda , Ptr <gsl_vector_short> -> CSize -> CSize -> CSize -> IO <gsl_matrix_short_const_view>
-- ccall gsl_matrix_short_diagonal , Ptr <gsl_matrix_short> -> IO <gsl_vector_short_view>
#ccall gsl_matrix_short_div_elements , Ptr <gsl_matrix_short> -> Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_fprintf , Ptr CFile -> Ptr <gsl_matrix_short> -> CString -> IO CInt
#ccall gsl_matrix_short_fread , Ptr CFile -> Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_free , Ptr <gsl_matrix_short> -> IO ()
#ccall gsl_matrix_short_fscanf , Ptr CFile -> Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_fwrite , Ptr CFile -> Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_isneg , Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_isnonneg , Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_isnull , Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_ispos , Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_max , Ptr <gsl_matrix_short> -> IO CShort
#ccall gsl_matrix_short_max_index , Ptr <gsl_matrix_short> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_short_memcpy , Ptr <gsl_matrix_short> -> Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_min , Ptr <gsl_matrix_short> -> IO CShort
#ccall gsl_matrix_short_min_index , Ptr <gsl_matrix_short> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_short_minmax , Ptr <gsl_matrix_short> -> Ptr CShort -> Ptr CShort -> IO ()
#ccall gsl_matrix_short_minmax_index , Ptr <gsl_matrix_short> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_short_mul_elements , Ptr <gsl_matrix_short> -> Ptr <gsl_matrix_short> -> IO CInt
-- ccall gsl_matrix_short_row , Ptr <gsl_matrix_short> -> CSize -> IO <gsl_vector_short_view>
#ccall gsl_matrix_short_scale , Ptr <gsl_matrix_short> -> CDouble -> IO CInt
#ccall gsl_matrix_short_set_all , Ptr <gsl_matrix_short> -> CShort -> IO ()
#ccall gsl_matrix_short_set_identity , Ptr <gsl_matrix_short> -> IO ()
#ccall gsl_matrix_short_set_zero , Ptr <gsl_matrix_short> -> IO ()
#ccall gsl_matrix_short_sub , Ptr <gsl_matrix_short> -> Ptr <gsl_matrix_short> -> IO CInt
-- ccall gsl_matrix_short_subcolumn , Ptr <gsl_matrix_short> -> CSize -> CSize -> CSize -> IO <gsl_vector_short_view>
-- ccall gsl_matrix_short_subdiagonal , Ptr <gsl_matrix_short> -> CSize -> IO <gsl_vector_short_view>
-- ccall gsl_matrix_short_submatrix , Ptr <gsl_matrix_short> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_short_view>
-- ccall gsl_matrix_short_subrow , Ptr <gsl_matrix_short> -> CSize -> CSize -> CSize -> IO <gsl_vector_short_view>
-- ccall gsl_matrix_short_superdiagonal , Ptr <gsl_matrix_short> -> CSize -> IO <gsl_vector_short_view>
#ccall gsl_matrix_short_swap , Ptr <gsl_matrix_short> -> Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_swap_columns , Ptr <gsl_matrix_short> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_short_swap_rowcol , Ptr <gsl_matrix_short> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_short_swap_rows , Ptr <gsl_matrix_short> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_short_transpose , Ptr <gsl_matrix_short> -> IO CInt
#ccall gsl_matrix_short_transpose_memcpy , Ptr <gsl_matrix_short> -> Ptr <gsl_matrix_short> -> IO CInt
-- ccall gsl_matrix_short_view_array , Ptr CShort -> CSize -> CSize -> IO <gsl_matrix_short_view>
-- ccall gsl_matrix_short_view_array_with_tda , Ptr CShort -> CSize -> CSize -> CSize -> IO <gsl_matrix_short_view>
-- ccall gsl_matrix_short_view_vector , Ptr <gsl_vector_short> -> CSize -> CSize -> IO <gsl_matrix_short_view>
-- ccall gsl_matrix_short_view_vector_with_tda , Ptr <gsl_vector_short> -> CSize -> CSize -> CSize -> IO <gsl_matrix_short_view>
#ccall gsl_matrix_sub , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
-- ccall gsl_matrix_subcolumn , Ptr <gsl_matrix> -> CSize -> CSize -> CSize -> IO <gsl_vector_view>
-- ccall gsl_matrix_subdiagonal , Ptr <gsl_matrix> -> CSize -> IO <gsl_vector_view>
-- ccall gsl_matrix_submatrix , Ptr <gsl_matrix> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_view>
-- ccall gsl_matrix_subrow , Ptr <gsl_matrix> -> CSize -> CSize -> CSize -> IO <gsl_vector_view>
-- ccall gsl_matrix_superdiagonal , Ptr <gsl_matrix> -> CSize -> IO <gsl_vector_view>
#ccall gsl_matrix_swap , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_swap_columns , Ptr <gsl_matrix> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_swap_rowcol , Ptr <gsl_matrix> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_swap_rows , Ptr <gsl_matrix> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_transpose , Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_transpose_memcpy , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_matrix_uchar_add , Ptr <gsl_matrix_uchar> -> Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_add_constant , Ptr <gsl_matrix_uchar> -> CDouble -> IO CInt
#ccall gsl_matrix_uchar_add_diagonal , Ptr <gsl_matrix_uchar> -> CDouble -> IO CInt
#ccall gsl_matrix_uchar_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_uchar>)
#ccall gsl_matrix_uchar_alloc_from_block , Ptr <gsl_block_uchar> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_uchar>)
#ccall gsl_matrix_uchar_alloc_from_matrix , Ptr <gsl_matrix_uchar> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_uchar>)
#ccall gsl_matrix_uchar_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_uchar>)
-- ccall gsl_matrix_uchar_column , Ptr <gsl_matrix_uchar> -> CSize -> IO <gsl_vector_uchar_view>
-- ccall gsl_matrix_uchar_const_column , Ptr <gsl_matrix_uchar> -> CSize -> IO <gsl_vector_uchar_const_view>
-- ccall gsl_matrix_uchar_const_diagonal , Ptr <gsl_matrix_uchar> -> IO <gsl_vector_uchar_const_view>
-- ccall gsl_matrix_uchar_const_row , Ptr <gsl_matrix_uchar> -> CSize -> IO <gsl_vector_uchar_const_view>
-- ccall gsl_matrix_uchar_const_subcolumn , Ptr <gsl_matrix_uchar> -> CSize -> CSize -> CSize -> IO <gsl_vector_uchar_const_view>
-- ccall gsl_matrix_uchar_const_subdiagonal , Ptr <gsl_matrix_uchar> -> CSize -> IO <gsl_vector_uchar_const_view>
-- ccall gsl_matrix_uchar_const_submatrix , Ptr <gsl_matrix_uchar> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_uchar_const_view>
-- ccall gsl_matrix_uchar_const_subrow , Ptr <gsl_matrix_uchar> -> CSize -> CSize -> CSize -> IO <gsl_vector_uchar_const_view>
-- ccall gsl_matrix_uchar_const_superdiagonal , Ptr <gsl_matrix_uchar> -> CSize -> IO <gsl_vector_uchar_const_view>
-- ccall gsl_matrix_uchar_const_view_array , Ptr CUChar -> CSize -> CSize -> IO <gsl_matrix_uchar_const_view>
-- ccall gsl_matrix_uchar_const_view_array_with_tda , Ptr CUChar -> CSize -> CSize -> CSize -> IO <gsl_matrix_uchar_const_view>
-- ccall gsl_matrix_uchar_const_view_vector , Ptr <gsl_vector_uchar> -> CSize -> CSize -> IO <gsl_matrix_uchar_const_view>
-- ccall gsl_matrix_uchar_const_view_vector_with_tda , Ptr <gsl_vector_uchar> -> CSize -> CSize -> CSize -> IO <gsl_matrix_uchar_const_view>
-- ccall gsl_matrix_uchar_diagonal , Ptr <gsl_matrix_uchar> -> IO <gsl_vector_uchar_view>
#ccall gsl_matrix_uchar_div_elements , Ptr <gsl_matrix_uchar> -> Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_fprintf , Ptr CFile -> Ptr <gsl_matrix_uchar> -> CString -> IO CInt
#ccall gsl_matrix_uchar_fread , Ptr CFile -> Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_free , Ptr <gsl_matrix_uchar> -> IO ()
#ccall gsl_matrix_uchar_fscanf , Ptr CFile -> Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_fwrite , Ptr CFile -> Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_isneg , Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_isnonneg , Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_isnull , Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_ispos , Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_max , Ptr <gsl_matrix_uchar> -> IO CUChar
#ccall gsl_matrix_uchar_max_index , Ptr <gsl_matrix_uchar> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_uchar_memcpy , Ptr <gsl_matrix_uchar> -> Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_min , Ptr <gsl_matrix_uchar> -> IO CUChar
#ccall gsl_matrix_uchar_min_index , Ptr <gsl_matrix_uchar> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_uchar_minmax , Ptr <gsl_matrix_uchar> -> Ptr CUChar -> Ptr CUChar -> IO ()
#ccall gsl_matrix_uchar_minmax_index , Ptr <gsl_matrix_uchar> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_uchar_mul_elements , Ptr <gsl_matrix_uchar> -> Ptr <gsl_matrix_uchar> -> IO CInt
-- ccall gsl_matrix_uchar_row , Ptr <gsl_matrix_uchar> -> CSize -> IO <gsl_vector_uchar_view>
#ccall gsl_matrix_uchar_scale , Ptr <gsl_matrix_uchar> -> CDouble -> IO CInt
#ccall gsl_matrix_uchar_set_all , Ptr <gsl_matrix_uchar> -> CUChar -> IO ()
#ccall gsl_matrix_uchar_set_identity , Ptr <gsl_matrix_uchar> -> IO ()
#ccall gsl_matrix_uchar_set_zero , Ptr <gsl_matrix_uchar> -> IO ()
#ccall gsl_matrix_uchar_sub , Ptr <gsl_matrix_uchar> -> Ptr <gsl_matrix_uchar> -> IO CInt
-- ccall gsl_matrix_uchar_subcolumn , Ptr <gsl_matrix_uchar> -> CSize -> CSize -> CSize -> IO <gsl_vector_uchar_view>
-- ccall gsl_matrix_uchar_subdiagonal , Ptr <gsl_matrix_uchar> -> CSize -> IO <gsl_vector_uchar_view>
-- ccall gsl_matrix_uchar_submatrix , Ptr <gsl_matrix_uchar> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_uchar_view>
-- ccall gsl_matrix_uchar_subrow , Ptr <gsl_matrix_uchar> -> CSize -> CSize -> CSize -> IO <gsl_vector_uchar_view>
-- ccall gsl_matrix_uchar_superdiagonal , Ptr <gsl_matrix_uchar> -> CSize -> IO <gsl_vector_uchar_view>
#ccall gsl_matrix_uchar_swap , Ptr <gsl_matrix_uchar> -> Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_swap_columns , Ptr <gsl_matrix_uchar> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_uchar_swap_rowcol , Ptr <gsl_matrix_uchar> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_uchar_swap_rows , Ptr <gsl_matrix_uchar> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_uchar_transpose , Ptr <gsl_matrix_uchar> -> IO CInt
#ccall gsl_matrix_uchar_transpose_memcpy , Ptr <gsl_matrix_uchar> -> Ptr <gsl_matrix_uchar> -> IO CInt
-- ccall gsl_matrix_uchar_view_array , Ptr CUChar -> CSize -> CSize -> IO <gsl_matrix_uchar_view>
-- ccall gsl_matrix_uchar_view_array_with_tda , Ptr CUChar -> CSize -> CSize -> CSize -> IO <gsl_matrix_uchar_view>
-- ccall gsl_matrix_uchar_view_vector , Ptr <gsl_vector_uchar> -> CSize -> CSize -> IO <gsl_matrix_uchar_view>
-- ccall gsl_matrix_uchar_view_vector_with_tda , Ptr <gsl_vector_uchar> -> CSize -> CSize -> CSize -> IO <gsl_matrix_uchar_view>
#ccall gsl_matrix_uint_add , Ptr <gsl_matrix_uint> -> Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_add_constant , Ptr <gsl_matrix_uint> -> CDouble -> IO CInt
#ccall gsl_matrix_uint_add_diagonal , Ptr <gsl_matrix_uint> -> CDouble -> IO CInt
#ccall gsl_matrix_uint_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_uint>)
#ccall gsl_matrix_uint_alloc_from_block , Ptr <gsl_block_uint> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_uint>)
#ccall gsl_matrix_uint_alloc_from_matrix , Ptr <gsl_matrix_uint> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_uint>)
#ccall gsl_matrix_uint_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_uint>)
-- ccall gsl_matrix_uint_column , Ptr <gsl_matrix_uint> -> CSize -> IO <gsl_vector_uint_view>
-- ccall gsl_matrix_uint_const_column , Ptr <gsl_matrix_uint> -> CSize -> IO <gsl_vector_uint_const_view>
-- ccall gsl_matrix_uint_const_diagonal , Ptr <gsl_matrix_uint> -> IO <gsl_vector_uint_const_view>
-- ccall gsl_matrix_uint_const_row , Ptr <gsl_matrix_uint> -> CSize -> IO <gsl_vector_uint_const_view>
-- ccall gsl_matrix_uint_const_subcolumn , Ptr <gsl_matrix_uint> -> CSize -> CSize -> CSize -> IO <gsl_vector_uint_const_view>
-- ccall gsl_matrix_uint_const_subdiagonal , Ptr <gsl_matrix_uint> -> CSize -> IO <gsl_vector_uint_const_view>
-- ccall gsl_matrix_uint_const_submatrix , Ptr <gsl_matrix_uint> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_uint_const_view>
-- ccall gsl_matrix_uint_const_subrow , Ptr <gsl_matrix_uint> -> CSize -> CSize -> CSize -> IO <gsl_vector_uint_const_view>
-- ccall gsl_matrix_uint_const_superdiagonal , Ptr <gsl_matrix_uint> -> CSize -> IO <gsl_vector_uint_const_view>
-- ccall gsl_matrix_uint_const_view_array , Ptr CUInt -> CSize -> CSize -> IO <gsl_matrix_uint_const_view>
-- ccall gsl_matrix_uint_const_view_array_with_tda , Ptr CUInt -> CSize -> CSize -> CSize -> IO <gsl_matrix_uint_const_view>
-- ccall gsl_matrix_uint_const_view_vector , Ptr <gsl_vector_uint> -> CSize -> CSize -> IO <gsl_matrix_uint_const_view>
-- ccall gsl_matrix_uint_const_view_vector_with_tda , Ptr <gsl_vector_uint> -> CSize -> CSize -> CSize -> IO <gsl_matrix_uint_const_view>
-- ccall gsl_matrix_uint_diagonal , Ptr <gsl_matrix_uint> -> IO <gsl_vector_uint_view>
#ccall gsl_matrix_uint_div_elements , Ptr <gsl_matrix_uint> -> Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_fprintf , Ptr CFile -> Ptr <gsl_matrix_uint> -> CString -> IO CInt
#ccall gsl_matrix_uint_fread , Ptr CFile -> Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_free , Ptr <gsl_matrix_uint> -> IO ()
#ccall gsl_matrix_uint_fscanf , Ptr CFile -> Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_fwrite , Ptr CFile -> Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_isneg , Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_isnonneg , Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_isnull , Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_ispos , Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_max , Ptr <gsl_matrix_uint> -> IO CUInt
#ccall gsl_matrix_uint_max_index , Ptr <gsl_matrix_uint> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_uint_memcpy , Ptr <gsl_matrix_uint> -> Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_min , Ptr <gsl_matrix_uint> -> IO CUInt
#ccall gsl_matrix_uint_min_index , Ptr <gsl_matrix_uint> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_uint_minmax , Ptr <gsl_matrix_uint> -> Ptr CUInt -> Ptr CUInt -> IO ()
#ccall gsl_matrix_uint_minmax_index , Ptr <gsl_matrix_uint> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_uint_mul_elements , Ptr <gsl_matrix_uint> -> Ptr <gsl_matrix_uint> -> IO CInt
-- ccall gsl_matrix_uint_row , Ptr <gsl_matrix_uint> -> CSize -> IO <gsl_vector_uint_view>
#ccall gsl_matrix_uint_scale , Ptr <gsl_matrix_uint> -> CDouble -> IO CInt
#ccall gsl_matrix_uint_set_all , Ptr <gsl_matrix_uint> -> CUInt -> IO ()
#ccall gsl_matrix_uint_set_identity , Ptr <gsl_matrix_uint> -> IO ()
#ccall gsl_matrix_uint_set_zero , Ptr <gsl_matrix_uint> -> IO ()
#ccall gsl_matrix_uint_sub , Ptr <gsl_matrix_uint> -> Ptr <gsl_matrix_uint> -> IO CInt
-- ccall gsl_matrix_uint_subcolumn , Ptr <gsl_matrix_uint> -> CSize -> CSize -> CSize -> IO <gsl_vector_uint_view>
-- ccall gsl_matrix_uint_subdiagonal , Ptr <gsl_matrix_uint> -> CSize -> IO <gsl_vector_uint_view>
-- ccall gsl_matrix_uint_submatrix , Ptr <gsl_matrix_uint> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_uint_view>
-- ccall gsl_matrix_uint_subrow , Ptr <gsl_matrix_uint> -> CSize -> CSize -> CSize -> IO <gsl_vector_uint_view>
-- ccall gsl_matrix_uint_superdiagonal , Ptr <gsl_matrix_uint> -> CSize -> IO <gsl_vector_uint_view>
#ccall gsl_matrix_uint_swap , Ptr <gsl_matrix_uint> -> Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_swap_columns , Ptr <gsl_matrix_uint> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_uint_swap_rowcol , Ptr <gsl_matrix_uint> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_uint_swap_rows , Ptr <gsl_matrix_uint> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_uint_transpose , Ptr <gsl_matrix_uint> -> IO CInt
#ccall gsl_matrix_uint_transpose_memcpy , Ptr <gsl_matrix_uint> -> Ptr <gsl_matrix_uint> -> IO CInt
-- ccall gsl_matrix_uint_view_array , Ptr CUInt -> CSize -> CSize -> IO <gsl_matrix_uint_view>
-- ccall gsl_matrix_uint_view_array_with_tda , Ptr CUInt -> CSize -> CSize -> CSize -> IO <gsl_matrix_uint_view>
-- ccall gsl_matrix_uint_view_vector , Ptr <gsl_vector_uint> -> CSize -> CSize -> IO <gsl_matrix_uint_view>
-- ccall gsl_matrix_uint_view_vector_with_tda , Ptr <gsl_vector_uint> -> CSize -> CSize -> CSize -> IO <gsl_matrix_uint_view>
#ccall gsl_matrix_ulong_add , Ptr <gsl_matrix_ulong> -> Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_add_constant , Ptr <gsl_matrix_ulong> -> CDouble -> IO CInt
#ccall gsl_matrix_ulong_add_diagonal , Ptr <gsl_matrix_ulong> -> CDouble -> IO CInt
#ccall gsl_matrix_ulong_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_ulong>)
#ccall gsl_matrix_ulong_alloc_from_block , Ptr <gsl_block_ulong> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_ulong>)
#ccall gsl_matrix_ulong_alloc_from_matrix , Ptr <gsl_matrix_ulong> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_ulong>)
#ccall gsl_matrix_ulong_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_ulong>)
-- ccall gsl_matrix_ulong_column , Ptr <gsl_matrix_ulong> -> CSize -> IO <gsl_vector_ulong_view>
-- ccall gsl_matrix_ulong_const_column , Ptr <gsl_matrix_ulong> -> CSize -> IO <gsl_vector_ulong_const_view>
-- ccall gsl_matrix_ulong_const_diagonal , Ptr <gsl_matrix_ulong> -> IO <gsl_vector_ulong_const_view>
-- ccall gsl_matrix_ulong_const_row , Ptr <gsl_matrix_ulong> -> CSize -> IO <gsl_vector_ulong_const_view>
-- ccall gsl_matrix_ulong_const_subcolumn , Ptr <gsl_matrix_ulong> -> CSize -> CSize -> CSize -> IO <gsl_vector_ulong_const_view>
-- ccall gsl_matrix_ulong_const_subdiagonal , Ptr <gsl_matrix_ulong> -> CSize -> IO <gsl_vector_ulong_const_view>
-- ccall gsl_matrix_ulong_const_submatrix , Ptr <gsl_matrix_ulong> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_ulong_const_view>
-- ccall gsl_matrix_ulong_const_subrow , Ptr <gsl_matrix_ulong> -> CSize -> CSize -> CSize -> IO <gsl_vector_ulong_const_view>
-- ccall gsl_matrix_ulong_const_superdiagonal , Ptr <gsl_matrix_ulong> -> CSize -> IO <gsl_vector_ulong_const_view>
-- ccall gsl_matrix_ulong_const_view_array , Ptr CULong -> CSize -> CSize -> IO <gsl_matrix_ulong_const_view>
-- ccall gsl_matrix_ulong_const_view_array_with_tda , Ptr CULong -> CSize -> CSize -> CSize -> IO <gsl_matrix_ulong_const_view>
-- ccall gsl_matrix_ulong_const_view_vector , Ptr <gsl_vector_ulong> -> CSize -> CSize -> IO <gsl_matrix_ulong_const_view>
-- ccall gsl_matrix_ulong_const_view_vector_with_tda , Ptr <gsl_vector_ulong> -> CSize -> CSize -> CSize -> IO <gsl_matrix_ulong_const_view>
-- ccall gsl_matrix_ulong_diagonal , Ptr <gsl_matrix_ulong> -> IO <gsl_vector_ulong_view>
#ccall gsl_matrix_ulong_div_elements , Ptr <gsl_matrix_ulong> -> Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_fprintf , Ptr CFile -> Ptr <gsl_matrix_ulong> -> CString -> IO CInt
#ccall gsl_matrix_ulong_fread , Ptr CFile -> Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_free , Ptr <gsl_matrix_ulong> -> IO ()
#ccall gsl_matrix_ulong_fscanf , Ptr CFile -> Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_fwrite , Ptr CFile -> Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_isneg , Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_isnonneg , Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_isnull , Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_ispos , Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_max , Ptr <gsl_matrix_ulong> -> IO CULong
#ccall gsl_matrix_ulong_max_index , Ptr <gsl_matrix_ulong> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_ulong_memcpy , Ptr <gsl_matrix_ulong> -> Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_min , Ptr <gsl_matrix_ulong> -> IO CULong
#ccall gsl_matrix_ulong_min_index , Ptr <gsl_matrix_ulong> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_ulong_minmax , Ptr <gsl_matrix_ulong> -> Ptr CULong -> Ptr CULong -> IO ()
#ccall gsl_matrix_ulong_minmax_index , Ptr <gsl_matrix_ulong> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_ulong_mul_elements , Ptr <gsl_matrix_ulong> -> Ptr <gsl_matrix_ulong> -> IO CInt
-- ccall gsl_matrix_ulong_row , Ptr <gsl_matrix_ulong> -> CSize -> IO <gsl_vector_ulong_view>
#ccall gsl_matrix_ulong_scale , Ptr <gsl_matrix_ulong> -> CDouble -> IO CInt
#ccall gsl_matrix_ulong_set_all , Ptr <gsl_matrix_ulong> -> CULong -> IO ()
#ccall gsl_matrix_ulong_set_identity , Ptr <gsl_matrix_ulong> -> IO ()
#ccall gsl_matrix_ulong_set_zero , Ptr <gsl_matrix_ulong> -> IO ()
#ccall gsl_matrix_ulong_sub , Ptr <gsl_matrix_ulong> -> Ptr <gsl_matrix_ulong> -> IO CInt
-- ccall gsl_matrix_ulong_subcolumn , Ptr <gsl_matrix_ulong> -> CSize -> CSize -> CSize -> IO <gsl_vector_ulong_view>
-- ccall gsl_matrix_ulong_subdiagonal , Ptr <gsl_matrix_ulong> -> CSize -> IO <gsl_vector_ulong_view>
-- ccall gsl_matrix_ulong_submatrix , Ptr <gsl_matrix_ulong> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_ulong_view>
-- ccall gsl_matrix_ulong_subrow , Ptr <gsl_matrix_ulong> -> CSize -> CSize -> CSize -> IO <gsl_vector_ulong_view>
-- ccall gsl_matrix_ulong_superdiagonal , Ptr <gsl_matrix_ulong> -> CSize -> IO <gsl_vector_ulong_view>
#ccall gsl_matrix_ulong_swap , Ptr <gsl_matrix_ulong> -> Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_swap_columns , Ptr <gsl_matrix_ulong> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_ulong_swap_rowcol , Ptr <gsl_matrix_ulong> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_ulong_swap_rows , Ptr <gsl_matrix_ulong> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_ulong_transpose , Ptr <gsl_matrix_ulong> -> IO CInt
#ccall gsl_matrix_ulong_transpose_memcpy , Ptr <gsl_matrix_ulong> -> Ptr <gsl_matrix_ulong> -> IO CInt
-- ccall gsl_matrix_ulong_view_array , Ptr CULong -> CSize -> CSize -> IO <gsl_matrix_ulong_view>
-- ccall gsl_matrix_ulong_view_array_with_tda , Ptr CULong -> CSize -> CSize -> CSize -> IO <gsl_matrix_ulong_view>
-- ccall gsl_matrix_ulong_view_vector , Ptr <gsl_vector_ulong> -> CSize -> CSize -> IO <gsl_matrix_ulong_view>
-- ccall gsl_matrix_ulong_view_vector_with_tda , Ptr <gsl_vector_ulong> -> CSize -> CSize -> CSize -> IO <gsl_matrix_ulong_view>
#ccall gsl_matrix_ushort_add , Ptr <gsl_matrix_ushort> -> Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_add_constant , Ptr <gsl_matrix_ushort> -> CDouble -> IO CInt
#ccall gsl_matrix_ushort_add_diagonal , Ptr <gsl_matrix_ushort> -> CDouble -> IO CInt
#ccall gsl_matrix_ushort_alloc , CSize -> CSize -> IO (Ptr <gsl_matrix_ushort>)
#ccall gsl_matrix_ushort_alloc_from_block , Ptr <gsl_block_ushort> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_ushort>)
#ccall gsl_matrix_ushort_alloc_from_matrix , Ptr <gsl_matrix_ushort> -> CSize -> CSize -> CSize -> CSize -> IO (Ptr <gsl_matrix_ushort>)
#ccall gsl_matrix_ushort_calloc , CSize -> CSize -> IO (Ptr <gsl_matrix_ushort>)
-- ccall gsl_matrix_ushort_column , Ptr <gsl_matrix_ushort> -> CSize -> IO <gsl_vector_ushort_view>
-- ccall gsl_matrix_ushort_const_column , Ptr <gsl_matrix_ushort> -> CSize -> IO <gsl_vector_ushort_const_view>
-- ccall gsl_matrix_ushort_const_diagonal , Ptr <gsl_matrix_ushort> -> IO <gsl_vector_ushort_const_view>
-- ccall gsl_matrix_ushort_const_row , Ptr <gsl_matrix_ushort> -> CSize -> IO <gsl_vector_ushort_const_view>
-- ccall gsl_matrix_ushort_const_subcolumn , Ptr <gsl_matrix_ushort> -> CSize -> CSize -> CSize -> IO <gsl_vector_ushort_const_view>
-- ccall gsl_matrix_ushort_const_subdiagonal , Ptr <gsl_matrix_ushort> -> CSize -> IO <gsl_vector_ushort_const_view>
-- ccall gsl_matrix_ushort_const_submatrix , Ptr <gsl_matrix_ushort> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_ushort_const_view>
-- ccall gsl_matrix_ushort_const_subrow , Ptr <gsl_matrix_ushort> -> CSize -> CSize -> CSize -> IO <gsl_vector_ushort_const_view>
-- ccall gsl_matrix_ushort_const_superdiagonal , Ptr <gsl_matrix_ushort> -> CSize -> IO <gsl_vector_ushort_const_view>
-- ccall gsl_matrix_ushort_const_view_array , Ptr CUShort -> CSize -> CSize -> IO <gsl_matrix_ushort_const_view>
-- ccall gsl_matrix_ushort_const_view_array_with_tda , Ptr CUShort -> CSize -> CSize -> CSize -> IO <gsl_matrix_ushort_const_view>
-- ccall gsl_matrix_ushort_const_view_vector , Ptr <gsl_vector_ushort> -> CSize -> CSize -> IO <gsl_matrix_ushort_const_view>
-- ccall gsl_matrix_ushort_const_view_vector_with_tda , Ptr <gsl_vector_ushort> -> CSize -> CSize -> CSize -> IO <gsl_matrix_ushort_const_view>
-- ccall gsl_matrix_ushort_diagonal , Ptr <gsl_matrix_ushort> -> IO <gsl_vector_ushort_view>
#ccall gsl_matrix_ushort_div_elements , Ptr <gsl_matrix_ushort> -> Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_fprintf , Ptr CFile -> Ptr <gsl_matrix_ushort> -> CString -> IO CInt
#ccall gsl_matrix_ushort_fread , Ptr CFile -> Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_free , Ptr <gsl_matrix_ushort> -> IO ()
#ccall gsl_matrix_ushort_fscanf , Ptr CFile -> Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_fwrite , Ptr CFile -> Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_isneg , Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_isnonneg , Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_isnull , Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_ispos , Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_max , Ptr <gsl_matrix_ushort> -> IO CUShort
#ccall gsl_matrix_ushort_max_index , Ptr <gsl_matrix_ushort> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_ushort_memcpy , Ptr <gsl_matrix_ushort> -> Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_min , Ptr <gsl_matrix_ushort> -> IO CUShort
#ccall gsl_matrix_ushort_min_index , Ptr <gsl_matrix_ushort> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_ushort_minmax , Ptr <gsl_matrix_ushort> -> Ptr CUShort -> Ptr CUShort -> IO ()
#ccall gsl_matrix_ushort_minmax_index , Ptr <gsl_matrix_ushort> -> Ptr CSize -> Ptr CSize -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_matrix_ushort_mul_elements , Ptr <gsl_matrix_ushort> -> Ptr <gsl_matrix_ushort> -> IO CInt
-- ccall gsl_matrix_ushort_row , Ptr <gsl_matrix_ushort> -> CSize -> IO <gsl_vector_ushort_view>
#ccall gsl_matrix_ushort_scale , Ptr <gsl_matrix_ushort> -> CDouble -> IO CInt
#ccall gsl_matrix_ushort_set_all , Ptr <gsl_matrix_ushort> -> CUShort -> IO ()
#ccall gsl_matrix_ushort_set_identity , Ptr <gsl_matrix_ushort> -> IO ()
#ccall gsl_matrix_ushort_set_zero , Ptr <gsl_matrix_ushort> -> IO ()
#ccall gsl_matrix_ushort_sub , Ptr <gsl_matrix_ushort> -> Ptr <gsl_matrix_ushort> -> IO CInt
-- ccall gsl_matrix_ushort_subcolumn , Ptr <gsl_matrix_ushort> -> CSize -> CSize -> CSize -> IO <gsl_vector_ushort_view>
-- ccall gsl_matrix_ushort_subdiagonal , Ptr <gsl_matrix_ushort> -> CSize -> IO <gsl_vector_ushort_view>
-- ccall gsl_matrix_ushort_submatrix , Ptr <gsl_matrix_ushort> -> CSize -> CSize -> CSize -> CSize -> IO <gsl_matrix_ushort_view>
-- ccall gsl_matrix_ushort_subrow , Ptr <gsl_matrix_ushort> -> CSize -> CSize -> CSize -> IO <gsl_vector_ushort_view>
-- ccall gsl_matrix_ushort_superdiagonal , Ptr <gsl_matrix_ushort> -> CSize -> IO <gsl_vector_ushort_view>
#ccall gsl_matrix_ushort_swap , Ptr <gsl_matrix_ushort> -> Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_swap_columns , Ptr <gsl_matrix_ushort> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_ushort_swap_rowcol , Ptr <gsl_matrix_ushort> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_ushort_swap_rows , Ptr <gsl_matrix_ushort> -> CSize -> CSize -> IO CInt
#ccall gsl_matrix_ushort_transpose , Ptr <gsl_matrix_ushort> -> IO CInt
#ccall gsl_matrix_ushort_transpose_memcpy , Ptr <gsl_matrix_ushort> -> Ptr <gsl_matrix_ushort> -> IO CInt
-- ccall gsl_matrix_ushort_view_array , Ptr CUShort -> CSize -> CSize -> IO <gsl_matrix_ushort_view>
-- ccall gsl_matrix_ushort_view_array_with_tda , Ptr CUShort -> CSize -> CSize -> CSize -> IO <gsl_matrix_ushort_view>
-- ccall gsl_matrix_ushort_view_vector , Ptr <gsl_vector_ushort> -> CSize -> CSize -> IO <gsl_matrix_ushort_view>
-- ccall gsl_matrix_ushort_view_vector_with_tda , Ptr <gsl_vector_ushort> -> CSize -> CSize -> CSize -> IO <gsl_matrix_ushort_view>
-- ccall gsl_matrix_view_array , Ptr CDouble -> CSize -> CSize -> IO <gsl_matrix_view>
-- ccall gsl_matrix_view_array_with_tda , Ptr CDouble -> CSize -> CSize -> CSize -> IO <gsl_matrix_view>
-- ccall gsl_matrix_view_vector , Ptr <gsl_vector> -> CSize -> CSize -> IO <gsl_matrix_view>
-- ccall gsl_matrix_view_vector_with_tda , Ptr <gsl_vector> -> CSize -> CSize -> CSize -> IO <gsl_matrix_view>
