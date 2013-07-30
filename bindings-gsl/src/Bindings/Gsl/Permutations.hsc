#include <bindings.dsl.h>
#include <gsl/gsl_permutation.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Permutation-Examples.html>

module Bindings.Gsl.Permutations where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes

#starttype gsl_permutation
#field size , CSize
#field data , Ptr CSize
#stoptype

#ccall gsl_permutation_alloc , CSize -> IO (Ptr <gsl_permutation>)
#ccall gsl_permutation_calloc , CSize -> IO (Ptr <gsl_permutation>)
#ccall gsl_permutation_init , Ptr <gsl_permutation> -> IO ()
#ccall gsl_permutation_free , Ptr <gsl_permutation> -> IO ()
#ccall gsl_permutation_memcpy , Ptr <gsl_permutation> -> Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_fread , Ptr CFile -> Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_fwrite , Ptr CFile -> Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_fscanf , Ptr CFile -> Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_fprintf , Ptr CFile -> Ptr <gsl_permutation> -> CString -> IO CInt
#ccall gsl_permutation_size , Ptr <gsl_permutation> -> IO CSize
#ccall gsl_permutation_data , Ptr <gsl_permutation> -> IO (Ptr CSize)
#ccall gsl_permutation_swap , Ptr <gsl_permutation> -> CSize -> CSize -> IO CInt
#ccall gsl_permutation_valid , Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_reverse , Ptr <gsl_permutation> -> IO ()
#ccall gsl_permutation_inverse , Ptr <gsl_permutation> -> Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_next , Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_prev , Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_mul , Ptr <gsl_permutation> -> Ptr <gsl_permutation> -> Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_linear_to_canonical , Ptr <gsl_permutation> -> Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_canonical_to_linear , Ptr <gsl_permutation> -> Ptr <gsl_permutation> -> IO CInt
#ccall gsl_permutation_inversions , Ptr <gsl_permutation> -> IO CSize
#ccall gsl_permutation_linear_cycles , Ptr <gsl_permutation> -> IO CSize
#ccall gsl_permutation_canonical_cycles , Ptr <gsl_permutation> -> IO CSize
#ccall gsl_permutation_get , Ptr <gsl_permutation> -> CSize -> IO CSize
#ccall gsl_permute_char , Ptr CSize -> CString -> CSize -> CSize -> IO CInt
#ccall gsl_permute_char_inverse , Ptr CSize -> CString -> CSize -> CSize -> IO CInt
#ccall gsl_permute_complex , Ptr CSize -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_permute_complex_inverse , Ptr CSize -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_permute_complex_float , Ptr CSize -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_permute_complex_float_inverse , Ptr CSize -> Ptr CFloat -> CSize -> CSize -> IO CInt
-- #ccall gsl_permute_complex_long_double , Ptr CSize -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_permute_complex_long_double_inverse , Ptr CSize -> Ptr CLDouble -> CSize -> CSize -> IO CInt
#ccall gsl_permute , Ptr CSize -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_permute_inverse , Ptr CSize -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_permute_float , Ptr CSize -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_permute_float_inverse , Ptr CSize -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_permute_int , Ptr CSize -> Ptr CInt -> CSize -> CSize -> IO CInt
#ccall gsl_permute_int_inverse , Ptr CSize -> Ptr CInt -> CSize -> CSize -> IO CInt
-- #ccall gsl_permute_long_double , Ptr CSize -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_permute_long_double_inverse , Ptr CSize -> Ptr CLDouble -> CSize -> CSize -> IO CInt
#ccall gsl_permute_long , Ptr CSize -> Ptr CLong -> CSize -> CSize -> IO CInt
#ccall gsl_permute_long_inverse , Ptr CSize -> Ptr CLong -> CSize -> CSize -> IO CInt
#ccall gsl_permute_short , Ptr CSize -> Ptr CShort -> CSize -> CSize -> IO CInt
#ccall gsl_permute_short_inverse , Ptr CSize -> Ptr CShort -> CSize -> CSize -> IO CInt
#ccall gsl_permute_uchar , Ptr CSize -> Ptr CUChar -> CSize -> CSize -> IO CInt
#ccall gsl_permute_uchar_inverse , Ptr CSize -> Ptr CUChar -> CSize -> CSize -> IO CInt
#ccall gsl_permute_uint , Ptr CSize -> Ptr CUInt -> CSize -> CSize -> IO CInt
#ccall gsl_permute_uint_inverse , Ptr CSize -> Ptr CUInt -> CSize -> CSize -> IO CInt
#ccall gsl_permute_ulong , Ptr CSize -> Ptr CULong -> CSize -> CSize -> IO CInt
#ccall gsl_permute_ulong_inverse , Ptr CSize -> Ptr CULong -> CSize -> CSize -> IO CInt
#ccall gsl_permute_ushort , Ptr CSize -> Ptr CUShort -> CSize -> CSize -> IO CInt
#ccall gsl_permute_ushort_inverse , Ptr CSize -> Ptr CUShort -> CSize -> CSize -> IO CInt
#ccall gsl_permute_vector_char , Ptr <gsl_permutation> -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_permute_vector_char_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_char> -> IO CInt
#ccall gsl_permute_vector_complex , Ptr <gsl_permutation> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_permute_vector_complex_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_permute_vector_complex_float , Ptr <gsl_permutation> -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_permute_vector_complex_float_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_complex_float> -> IO CInt
-- #ccall gsl_permute_vector_complex_long_double , Ptr <gsl_permutation> -> Ptr <gsl_vector_complex_long_double> -> IO CInt
-- #ccall gsl_permute_vector_complex_long_double_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_complex_long_double> -> IO CInt
#ccall gsl_permute_vector , Ptr <gsl_permutation> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_permute_vector_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_permute_vector_float , Ptr <gsl_permutation> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_permute_vector_float_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_permute_vector_int , Ptr <gsl_permutation> -> Ptr <gsl_vector_int> -> IO CInt
#ccall gsl_permute_vector_int_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_int> -> IO CInt
-- #ccall gsl_permute_vector_long_double , Ptr <gsl_permutation> -> Ptr <gsl_vector_long_double> -> IO CInt
-- #ccall gsl_permute_vector_long_double_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_long_double> -> IO CInt
#ccall gsl_permute_vector_long , Ptr <gsl_permutation> -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_permute_vector_long_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_long> -> IO CInt
#ccall gsl_permute_vector_short , Ptr <gsl_permutation> -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_permute_vector_short_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_short> -> IO CInt
#ccall gsl_permute_vector_uchar , Ptr <gsl_permutation> -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_permute_vector_uchar_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_uchar> -> IO CInt
#ccall gsl_permute_vector_uint , Ptr <gsl_permutation> -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_permute_vector_uint_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_uint> -> IO CInt
#ccall gsl_permute_vector_ulong , Ptr <gsl_permutation> -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_permute_vector_ulong_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_ulong> -> IO CInt
#ccall gsl_permute_vector_ushort , Ptr <gsl_permutation> -> Ptr <gsl_vector_ushort> -> IO CInt
#ccall gsl_permute_vector_ushort_inverse , Ptr <gsl_permutation> -> Ptr <gsl_vector_ushort> -> IO CInt

