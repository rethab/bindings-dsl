#include <bindings.dsl.h>
#include <gsl/gsl_heapsort.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Sorting.html>

module Bindings.Gsl.Sorting where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes
import Bindings.Gsl.Permutations

#callback_t gsl_comparison_fn_t , FunPtr ( Ptr () -> Ptr () -> IO CInt)

#ccall gsl_heapsort , Ptr () -> CSize -> CSize -> <gsl_comparison_fn_t> -> IO ()
#ccall gsl_heapsort_index , Ptr CSize -> Ptr () -> CSize -> CSize -> <gsl_comparison_fn_t> -> IO CInt

#ccall gsl_sort_char , CString -> CSize -> CSize -> IO ()
#ccall gsl_sort_char_index , Ptr CSize -> CString -> CSize -> CSize -> IO ()
#ccall gsl_sort_char_smallest , CString -> CSize -> CString -> CSize -> CSize -> IO CInt
#ccall gsl_sort_char_smallest_index , Ptr CSize -> CSize -> CString -> CSize -> CSize -> IO CInt
#ccall gsl_sort_char_largest , CString -> CSize -> CString -> CSize -> CSize -> IO CInt
#ccall gsl_sort_char_largest_index , Ptr CSize -> CSize -> CString -> CSize -> CSize -> IO CInt
#ccall gsl_sort , Ptr CDouble -> CSize -> CSize -> IO ()
#ccall gsl_sort_index , Ptr CSize -> Ptr CDouble -> CSize -> CSize -> IO ()
#ccall gsl_sort_smallest , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_sort_smallest_index , Ptr CSize -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_sort_largest , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_sort_largest_index , Ptr CSize -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_sort_float , Ptr CFloat -> CSize -> CSize -> IO ()
#ccall gsl_sort_float_index , Ptr CSize -> Ptr CFloat -> CSize -> CSize -> IO ()
#ccall gsl_sort_float_smallest , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_sort_float_smallest_index , Ptr CSize -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_sort_float_largest , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_sort_float_largest_index , Ptr CSize -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_sort_int , Ptr CInt -> CSize -> CSize -> IO ()
#ccall gsl_sort_int_index , Ptr CSize -> Ptr CInt -> CSize -> CSize -> IO ()
#ccall gsl_sort_int_smallest , Ptr CInt -> CSize -> Ptr CInt -> CSize -> CSize -> IO CInt
#ccall gsl_sort_int_smallest_index , Ptr CSize -> CSize -> Ptr CInt -> CSize -> CSize -> IO CInt
#ccall gsl_sort_int_largest , Ptr CInt -> CSize -> Ptr CInt -> CSize -> CSize -> IO CInt
#ccall gsl_sort_int_largest_index , Ptr CSize -> CSize -> Ptr CInt -> CSize -> CSize -> IO CInt
-- #ccall gsl_sort_long_double , Ptr CLDouble -> CSize -> CSize -> IO ()
-- #ccall gsl_sort_long_double_index , Ptr CSize -> Ptr CLDouble -> CSize -> CSize -> IO ()
-- #ccall gsl_sort_long_double_smallest , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_sort_long_double_smallest_index , Ptr CSize -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_sort_long_double_largest , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_sort_long_double_largest_index , Ptr CSize -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CInt
#ccall gsl_sort_long , Ptr CLong -> CSize -> CSize -> IO ()
#ccall gsl_sort_long_index , Ptr CSize -> Ptr CLong -> CSize -> CSize -> IO ()
#ccall gsl_sort_long_smallest , Ptr CLong -> CSize -> Ptr CLong -> CSize -> CSize -> IO CInt
#ccall gsl_sort_long_smallest_index , Ptr CSize -> CSize -> Ptr CLong -> CSize -> CSize -> IO CInt
#ccall gsl_sort_long_largest , Ptr CLong -> CSize -> Ptr CLong -> CSize -> CSize -> IO CInt
#ccall gsl_sort_long_largest_index , Ptr CSize -> CSize -> Ptr CLong -> CSize -> CSize -> IO CInt
#ccall gsl_sort_short , Ptr CShort -> CSize -> CSize -> IO ()
#ccall gsl_sort_short_index , Ptr CSize -> Ptr CShort -> CSize -> CSize -> IO ()
#ccall gsl_sort_short_smallest , Ptr CShort -> CSize -> Ptr CShort -> CSize -> CSize -> IO CInt
#ccall gsl_sort_short_smallest_index , Ptr CSize -> CSize -> Ptr CShort -> CSize -> CSize -> IO CInt
#ccall gsl_sort_short_largest , Ptr CShort -> CSize -> Ptr CShort -> CSize -> CSize -> IO CInt
#ccall gsl_sort_short_largest_index , Ptr CSize -> CSize -> Ptr CShort -> CSize -> CSize -> IO CInt
#ccall gsl_sort_uchar , Ptr CUChar -> CSize -> CSize -> IO ()
#ccall gsl_sort_uchar_index , Ptr CSize -> Ptr CUChar -> CSize -> CSize -> IO ()
#ccall gsl_sort_uchar_smallest , Ptr CUChar -> CSize -> Ptr CUChar -> CSize -> CSize -> IO CInt
#ccall gsl_sort_uchar_smallest_index , Ptr CSize -> CSize -> Ptr CUChar -> CSize -> CSize -> IO CInt
#ccall gsl_sort_uchar_largest , Ptr CUChar -> CSize -> Ptr CUChar -> CSize -> CSize -> IO CInt
#ccall gsl_sort_uchar_largest_index , Ptr CSize -> CSize -> Ptr CUChar -> CSize -> CSize -> IO CInt
#ccall gsl_sort_uint , Ptr CUInt -> CSize -> CSize -> IO ()
#ccall gsl_sort_uint_index , Ptr CSize -> Ptr CUInt -> CSize -> CSize -> IO ()
#ccall gsl_sort_uint_smallest , Ptr CUInt -> CSize -> Ptr CUInt -> CSize -> CSize -> IO CInt
#ccall gsl_sort_uint_smallest_index , Ptr CSize -> CSize -> Ptr CUInt -> CSize -> CSize -> IO CInt
#ccall gsl_sort_uint_largest , Ptr CUInt -> CSize -> Ptr CUInt -> CSize -> CSize -> IO CInt
#ccall gsl_sort_uint_largest_index , Ptr CSize -> CSize -> Ptr CUInt -> CSize -> CSize -> IO CInt
#ccall gsl_sort_ulong , Ptr CULong -> CSize -> CSize -> IO ()
#ccall gsl_sort_ulong_index , Ptr CSize -> Ptr CULong -> CSize -> CSize -> IO ()
#ccall gsl_sort_ulong_smallest , Ptr CULong -> CSize -> Ptr CULong -> CSize -> CSize -> IO CInt
#ccall gsl_sort_ulong_smallest_index , Ptr CSize -> CSize -> Ptr CULong -> CSize -> CSize -> IO CInt
#ccall gsl_sort_ulong_largest , Ptr CULong -> CSize -> Ptr CULong -> CSize -> CSize -> IO CInt
#ccall gsl_sort_ulong_largest_index , Ptr CSize -> CSize -> Ptr CULong -> CSize -> CSize -> IO CInt
#ccall gsl_sort_ushort , Ptr CUShort -> CSize -> CSize -> IO ()
#ccall gsl_sort_ushort_index , Ptr CSize -> Ptr CUShort -> CSize -> CSize -> IO ()
#ccall gsl_sort_ushort_smallest , Ptr CUShort -> CSize -> Ptr CUShort -> CSize -> CSize -> IO CInt
#ccall gsl_sort_ushort_smallest_index , Ptr CSize -> CSize -> Ptr CUShort -> CSize -> CSize -> IO CInt
#ccall gsl_sort_ushort_largest , Ptr CUShort -> CSize -> Ptr CUShort -> CSize -> CSize -> IO CInt
#ccall gsl_sort_ushort_largest_index , Ptr CSize -> CSize -> Ptr CUShort -> CSize -> CSize -> IO CInt
#ccall gsl_sort_vector_char , Ptr <gsl_vector_char> -> IO ()
#ccall gsl_sort_vector_char_index , Ptr <gsl_permutation> -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_sort_vector_char_smallest , CString -> CSize -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_sort_vector_char_largest , CString -> CSize -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_sort_vector_char_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_sort_vector_char_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_sort_vector , Ptr <gsl_vector> -> IO ()
#ccall gsl_sort_vector_index , Ptr <gsl_permutation> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_sort_vector_smallest , Ptr CDouble -> CSize -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_sort_vector_largest , Ptr CDouble -> CSize -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_sort_vector_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_sort_vector_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_sort_vector_float , Ptr <gsl_vector_float> -> IO ()
#ccall gsl_sort_vector_float_index , Ptr <gsl_permutation> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_sort_vector_float_smallest , Ptr CFloat -> CSize -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_sort_vector_float_largest , Ptr CFloat -> CSize -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_sort_vector_float_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_sort_vector_float_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_sort_vector_int , Ptr <gsl_vector_int> -> IO ()
#ccall gsl_sort_vector_int_index , Ptr <gsl_permutation> -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_sort_vector_int_smallest , Ptr CInt -> CSize -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_sort_vector_int_largest , Ptr CInt -> CSize -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_sort_vector_int_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_sort_vector_int_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_int> -> IO CInt
-- #ccall gsl_sort_vector_long_double , Ptr <gsl_vector_long_double> -> IO ()
-- #ccall gsl_sort_vector_long_double_index , Ptr <gsl_permutation> -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_sort_vector_long_double_smallest , Ptr CLDouble -> CSize -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_sort_vector_long_double_largest , Ptr CLDouble -> CSize -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_sort_vector_long_double_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_sort_vector_long_double_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_long_double> -> IO CInt
#ccall gsl_sort_vector_long , Ptr <gsl_vector_long> -> IO ()
#ccall gsl_sort_vector_long_index , Ptr <gsl_permutation> -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_sort_vector_long_smallest , Ptr CLong -> CSize -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_sort_vector_long_largest , Ptr CLong -> CSize -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_sort_vector_long_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_sort_vector_long_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_sort_vector_short , Ptr <gsl_vector_short> -> IO ()
#ccall gsl_sort_vector_short_index , Ptr <gsl_permutation> -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_sort_vector_short_smallest , Ptr CShort -> CSize -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_sort_vector_short_largest , Ptr CShort -> CSize -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_sort_vector_short_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_sort_vector_short_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_sort_vector_uchar , Ptr <gsl_vector_uchar> -> IO ()
#ccall gsl_sort_vector_uchar_index , Ptr <gsl_permutation> -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_sort_vector_uchar_smallest , Ptr CUChar -> CSize -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_sort_vector_uchar_largest , Ptr CUChar -> CSize -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_sort_vector_uchar_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_sort_vector_uchar_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_sort_vector_uint , Ptr <gsl_vector_uint> -> IO ()
#ccall gsl_sort_vector_uint_index , Ptr <gsl_permutation> -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_sort_vector_uint_smallest , Ptr CUInt -> CSize -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_sort_vector_uint_largest , Ptr CUInt -> CSize -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_sort_vector_uint_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_sort_vector_uint_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_sort_vector_ulong , Ptr <gsl_vector_ulong> -> IO ()
#ccall gsl_sort_vector_ulong_index , Ptr <gsl_permutation> -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_sort_vector_ulong_smallest , Ptr CULong -> CSize -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_sort_vector_ulong_largest , Ptr CULong -> CSize -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_sort_vector_ulong_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_sort_vector_ulong_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_sort_vector_ushort , Ptr <gsl_vector_ushort> -> IO ()
#ccall gsl_sort_vector_ushort_index , Ptr <gsl_permutation> -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_sort_vector_ushort_smallest , Ptr CUShort -> CSize -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_sort_vector_ushort_largest , Ptr CUShort -> CSize -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_sort_vector_ushort_smallest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_sort_vector_ushort_largest_index , Ptr CSize -> CSize -> Ptr <gsl_vector_ushort> -> IO CInt

