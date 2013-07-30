#include <bindings.dsl.h>
#include <gsl/gsl_block.h>
#include <gsl/gsl_vector.h>
#include <gsl/gsl_matrix.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Data-types.html>

module Bindings.Gsl.VectorsAndMatrices.DataTypes where
#strict_import

#starttype gsl_block
#field size , CSize
#field data , Ptr CDouble
#stoptype

#starttype gsl_block_char
#field size , CSize
#field data , CString
#stoptype

#starttype gsl_block_complex
#field size , CSize
#field data , Ptr CDouble
#stoptype

#starttype gsl_block_complex_float
#field size , CSize
#field data , Ptr CFloat
#stoptype

-- #starttype gsl_block_complex_long_double
-- #field size , CSize
-- #field data , Ptr CLDouble
-- #stoptype

#starttype gsl_block_float
#field size , CSize
#field data , Ptr CFloat
#stoptype

#starttype gsl_block_int
#field size , CSize
#field data , Ptr CInt
#stoptype

#starttype gsl_block_long
#field size , CSize
#field data , Ptr CLong
#stoptype

-- #starttype gsl_block_long_double
-- #field size , CSize
-- #field data , Ptr CLDouble
-- #stoptype

#starttype gsl_block_short
#field size , CSize
#field data , Ptr CShort
#stoptype

#starttype gsl_block_uchar
#field size , CSize
#field data , Ptr CUChar
#stoptype

#starttype gsl_block_uint
#field size , CSize
#field data , Ptr CUInt
#stoptype

#starttype gsl_block_ulong
#field size , CSize
#field data , Ptr CULong
#stoptype

#starttype gsl_block_ushort
#field size , CSize
#field data , Ptr CUShort
#stoptype

#starttype gsl_matrix
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CDouble
#field block , Ptr <gsl_block>
#field owner , CInt
#stoptype

#starttype gsl_matrix_char
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , CString
#field block , Ptr <gsl_block_char>
#field owner , CInt
#stoptype

#starttype gsl_matrix_char_const_view
#field matrix , <gsl_matrix_char>
#stoptype

#starttype gsl_matrix_char_view
#field matrix , <gsl_matrix_char>
#stoptype

#starttype gsl_matrix_complex
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CDouble
#field block , Ptr <gsl_block_complex>
#field owner , CInt
#stoptype

#starttype gsl_matrix_complex_const_view
#field matrix , <gsl_matrix_complex>
#stoptype

#starttype gsl_matrix_complex_float
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CFloat
#field block , Ptr <gsl_block_complex_float>
#field owner , CInt
#stoptype

#starttype gsl_matrix_complex_float_const_view
#field matrix , <gsl_matrix_complex_float>
#stoptype

#starttype gsl_matrix_complex_float_view
#field matrix , <gsl_matrix_complex_float>
#stoptype

-- #starttype gsl_matrix_complex_long_double
-- #field size1 , CSize
-- #field size2 , CSize
-- #field tda , CSize
-- #field data , Ptr CLDouble
-- #field block , Ptr <gsl_block_complex_long_double>
-- #field owner , CInt
-- #stoptype

-- #starttype gsl_matrix_complex_long_double_const_view
-- #field matrix , <gsl_matrix_complex_long_double>
-- #stoptype

-- #starttype gsl_matrix_complex_long_double_view
-- #field matrix , <gsl_matrix_complex_long_double>
-- #stoptype

#starttype gsl_matrix_complex_view
#field matrix , <gsl_matrix_complex>
#stoptype

#starttype gsl_matrix_const_view
#field matrix , <gsl_matrix>
#stoptype

#starttype gsl_matrix_float
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CFloat
#field block , Ptr <gsl_block_float>
#field owner , CInt
#stoptype

#starttype gsl_matrix_float_const_view
#field matrix , <gsl_matrix_float>
#stoptype

#starttype gsl_matrix_float_view
#field matrix , <gsl_matrix_float>
#stoptype

#starttype gsl_matrix_int
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CInt
#field block , Ptr <gsl_block_int>
#field owner , CInt
#stoptype

#starttype gsl_matrix_int_const_view
#field matrix , <gsl_matrix_int>
#stoptype

#starttype gsl_matrix_int_view
#field matrix , <gsl_matrix_int>
#stoptype

#starttype gsl_matrix_long
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CLong
#field block , Ptr <gsl_block_long>
#field owner , CInt
#stoptype

#starttype gsl_matrix_long_const_view
#field matrix , <gsl_matrix_long>
#stoptype

-- #starttype gsl_matrix_long_double
-- #field size1 , CSize
-- #field size2 , CSize
-- #field tda , CSize
-- #field data , Ptr CLDouble
-- #field block , Ptr <gsl_block_long_double>
-- #field owner , CInt
-- #stoptype

-- #starttype gsl_matrix_long_double_const_view
-- #field matrix , <gsl_matrix_long_double>
-- #stoptype

-- #starttype gsl_matrix_long_double_view
-- #field matrix , <gsl_matrix_long_double>
-- #stoptype

#starttype gsl_matrix_long_view
#field matrix , <gsl_matrix_long>
#stoptype

#starttype gsl_matrix_short
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CShort
#field block , Ptr <gsl_block_short>
#field owner , CInt
#stoptype

#starttype gsl_matrix_short_const_view
#field matrix , <gsl_matrix_short>
#stoptype

#starttype gsl_matrix_short_view
#field matrix , <gsl_matrix_short>
#stoptype

#starttype gsl_matrix_uchar
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CUChar
#field block , Ptr <gsl_block_uchar>
#field owner , CInt
#stoptype

#starttype gsl_matrix_uchar_const_view
#field matrix , <gsl_matrix_uchar>
#stoptype

#starttype gsl_matrix_uchar_view
#field matrix , <gsl_matrix_uchar>
#stoptype

#starttype gsl_matrix_uint
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CUInt
#field block , Ptr <gsl_block_uint>
#field owner , CInt
#stoptype

#starttype gsl_matrix_uint_const_view
#field matrix , <gsl_matrix_uint>
#stoptype

#starttype gsl_matrix_uint_view
#field matrix , <gsl_matrix_uint>
#stoptype

#starttype gsl_matrix_ulong
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CULong
#field block , Ptr <gsl_block_ulong>
#field owner , CInt
#stoptype

#starttype gsl_matrix_ulong_const_view
#field matrix , <gsl_matrix_ulong>
#stoptype

#starttype gsl_matrix_ulong_view
#field matrix , <gsl_matrix_ulong>
#stoptype

#starttype gsl_matrix_ushort
#field size1 , CSize
#field size2 , CSize
#field tda , CSize
#field data , Ptr CUShort
#field block , Ptr <gsl_block_ushort>
#field owner , CInt
#stoptype

#starttype gsl_matrix_ushort_const_view
#field matrix , <gsl_matrix_ushort>
#stoptype

#starttype gsl_matrix_ushort_view
#field matrix , <gsl_matrix_ushort>
#stoptype

#starttype gsl_matrix_view
#field matrix , <gsl_matrix>
#stoptype

#starttype gsl_vector
#field size , CSize
#field stride , CSize
#field data , Ptr CDouble
#field block , Ptr <gsl_block>
#field owner , CInt
#stoptype

#starttype gsl_vector_char
#field size , CSize
#field stride , CSize
#field data , CString
#field block , Ptr <gsl_block_char>
#field owner , CInt
#stoptype

#starttype gsl_vector_char_const_view
#field vector , <gsl_vector_char>
#stoptype

#starttype gsl_vector_char_view
#field vector , <gsl_vector_char>
#stoptype

#starttype gsl_vector_complex
#field size , CSize
#field stride , CSize
#field data , Ptr CDouble
#field block , Ptr <gsl_block_complex>
#field owner , CInt
#stoptype

#starttype gsl_vector_complex_const_view
#field vector , <gsl_vector_complex>
#stoptype

#starttype gsl_vector_complex_float
#field size , CSize
#field stride , CSize
#field data , Ptr CFloat
#field block , Ptr <gsl_block_complex_float>
#field owner , CInt
#stoptype

#starttype gsl_vector_complex_float_const_view
#field vector , <gsl_vector_complex_float>
#stoptype

#starttype gsl_vector_complex_float_view
#field vector , <gsl_vector_complex_float>
#stoptype

-- #starttype gsl_vector_complex_long_double
-- #field size , CSize
-- #field stride , CSize
-- #field data , Ptr CLDouble
-- #field block , Ptr <gsl_block_complex_long_double>
-- #field owner , CInt
-- #stoptype

-- #starttype gsl_vector_complex_long_double_const_view
-- #field vector , <gsl_vector_complex_long_double>
-- #stoptype

-- #starttype gsl_vector_complex_long_double_view
-- #field vector , <gsl_vector_complex_long_double>
-- #stoptype

#starttype gsl_vector_complex_view
#field vector , <gsl_vector_complex>
#stoptype

#starttype gsl_vector_const_view
#field vector , <gsl_vector>
#stoptype

#starttype gsl_vector_float
#field size , CSize
#field stride , CSize
#field data , Ptr CFloat
#field block , Ptr <gsl_block_float>
#field owner , CInt
#stoptype

#starttype gsl_vector_float_const_view
#field vector , <gsl_vector_float>
#stoptype

#starttype gsl_vector_float_view
#field vector , <gsl_vector_float>
#stoptype

#starttype gsl_vector_int
#field size , CSize
#field stride , CSize
#field data , Ptr CInt
#field block , Ptr <gsl_block_int>
#field owner , CInt
#stoptype

#starttype gsl_vector_int_const_view
#field vector , <gsl_vector_int>
#stoptype

#starttype gsl_vector_int_view
#field vector , <gsl_vector_int>
#stoptype

#starttype gsl_vector_long
#field size , CSize
#field stride , CSize
#field data , Ptr CLong
#field block , Ptr <gsl_block_long>
#field owner , CInt
#stoptype

#starttype gsl_vector_long_const_view
#field vector , <gsl_vector_long>
#stoptype

-- #starttype gsl_vector_long_double
-- #field size , CSize
-- #field stride , CSize
-- #field data , Ptr CLDouble
-- #field block , Ptr <gsl_block_long_double>
-- #field owner , CInt
-- #stoptype

-- #starttype gsl_vector_long_double_const_view
-- #field vector , <gsl_vector_long_double>
-- #stoptype

-- #starttype gsl_vector_long_double_view
-- #field vector , <gsl_vector_long_double>
-- #stoptype

#starttype gsl_vector_long_view
#field vector , <gsl_vector_long>
#stoptype

#starttype gsl_vector_short
#field size , CSize
#field stride , CSize
#field data , Ptr CShort
#field block , Ptr <gsl_block_short>
#field owner , CInt
#stoptype

#starttype gsl_vector_short_const_view
#field vector , <gsl_vector_short>
#stoptype

#starttype gsl_vector_short_view
#field vector , <gsl_vector_short>
#stoptype

#starttype gsl_vector_uchar
#field size , CSize
#field stride , CSize
#field data , Ptr CUChar
#field block , Ptr <gsl_block_uchar>
#field owner , CInt
#stoptype

#starttype gsl_vector_uchar_const_view
#field vector , <gsl_vector_uchar>
#stoptype

#starttype gsl_vector_uchar_view
#field vector , <gsl_vector_uchar>
#stoptype

#starttype gsl_vector_uint
#field size , CSize
#field stride , CSize
#field data , Ptr CUInt
#field block , Ptr <gsl_block_uint>
#field owner , CInt
#stoptype

#starttype gsl_vector_uint_const_view
#field vector , <gsl_vector_uint>
#stoptype

#starttype gsl_vector_uint_view
#field vector , <gsl_vector_uint>
#stoptype

#starttype gsl_vector_ulong
#field size , CSize
#field stride , CSize
#field data , Ptr CULong
#field block , Ptr <gsl_block_ulong>
#field owner , CInt
#stoptype

#starttype gsl_vector_ulong_const_view
#field vector , <gsl_vector_ulong>
#stoptype

#starttype gsl_vector_ulong_view
#field vector , <gsl_vector_ulong>
#stoptype

#starttype gsl_vector_ushort
#field size , CSize
#field stride , CSize
#field data , Ptr CUShort
#field block , Ptr <gsl_block_ushort>
#field owner , CInt
#stoptype

#starttype gsl_vector_ushort_const_view
#field vector , <gsl_vector_ushort>
#stoptype

#starttype gsl_vector_ushort_view
#field vector , <gsl_vector_ushort>
#stoptype

#starttype gsl_vector_view
#field vector , <gsl_vector>
#stoptype

