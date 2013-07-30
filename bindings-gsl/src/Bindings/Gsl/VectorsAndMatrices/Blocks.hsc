#include <bindings.dsl.h>
#include <gsl/gsl_block.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Blocks.html>

module Bindings.Gsl.VectorsAndMatrices.Blocks where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes

#ccall gsl_block_alloc , CSize -> IO (Ptr <gsl_block>)
#ccall gsl_block_calloc , CSize -> IO (Ptr <gsl_block>)
#ccall gsl_block_char_alloc , CSize -> IO (Ptr <gsl_block_char>)
#ccall gsl_block_char_calloc , CSize -> IO (Ptr <gsl_block_char>)
#ccall gsl_block_char_data , Ptr <gsl_block_char> -> IO CString
#ccall gsl_block_char_fprintf , Ptr CFile -> Ptr <gsl_block_char> -> CString -> IO CInt
#ccall gsl_block_char_fread , Ptr CFile -> Ptr <gsl_block_char> -> IO CInt
#ccall gsl_block_char_free , Ptr <gsl_block_char> -> IO ()
#ccall gsl_block_char_fscanf , Ptr CFile -> Ptr <gsl_block_char> -> IO CInt
#ccall gsl_block_char_fwrite , Ptr CFile -> Ptr <gsl_block_char> -> IO CInt
#ccall gsl_block_char_raw_fprintf , Ptr CFile -> CString -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_char_raw_fread , Ptr CFile -> CString -> CSize -> CSize -> IO CInt
#ccall gsl_block_char_raw_fscanf , Ptr CFile -> CString -> CSize -> CSize -> IO CInt
#ccall gsl_block_char_raw_fwrite , Ptr CFile -> CString -> CSize -> CSize -> IO CInt
#ccall gsl_block_char_size , Ptr <gsl_block_char> -> IO CSize
#ccall gsl_block_complex_alloc , CSize -> IO (Ptr <gsl_block_complex>)
#ccall gsl_block_complex_calloc , CSize -> IO (Ptr <gsl_block_complex>)
#ccall gsl_block_complex_data , Ptr <gsl_block_complex> -> IO (Ptr CDouble)
#ccall gsl_block_complex_float_alloc , CSize -> IO (Ptr <gsl_block_complex_float>)
#ccall gsl_block_complex_float_calloc , CSize -> IO (Ptr <gsl_block_complex_float>)
#ccall gsl_block_complex_float_data , Ptr <gsl_block_complex_float> -> IO (Ptr CFloat)
#ccall gsl_block_complex_float_fprintf , Ptr CFile -> Ptr <gsl_block_complex_float> -> CString -> IO CInt
#ccall gsl_block_complex_float_fread , Ptr CFile -> Ptr <gsl_block_complex_float> -> IO CInt
#ccall gsl_block_complex_float_free , Ptr <gsl_block_complex_float> -> IO ()
#ccall gsl_block_complex_float_fscanf , Ptr CFile -> Ptr <gsl_block_complex_float> -> IO CInt
#ccall gsl_block_complex_float_fwrite , Ptr CFile -> Ptr <gsl_block_complex_float> -> IO CInt
#ccall gsl_block_complex_float_raw_fprintf , Ptr CFile -> Ptr CFloat -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_complex_float_raw_fread , Ptr CFile -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_block_complex_float_raw_fscanf , Ptr CFile -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_block_complex_float_raw_fwrite , Ptr CFile -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_block_complex_float_size , Ptr <gsl_block_complex_float> -> IO CSize
#ccall gsl_block_complex_fprintf , Ptr CFile -> Ptr <gsl_block_complex> -> CString -> IO CInt
#ccall gsl_block_complex_fread , Ptr CFile -> Ptr <gsl_block_complex> -> IO CInt
#ccall gsl_block_complex_free , Ptr <gsl_block_complex> -> IO ()
#ccall gsl_block_complex_fscanf , Ptr CFile -> Ptr <gsl_block_complex> -> IO CInt
#ccall gsl_block_complex_fwrite , Ptr CFile -> Ptr <gsl_block_complex> -> IO CInt
-- #ccall gsl_block_complex_long_double_alloc , CSize -> IO (Ptr <gsl_block_complex_long_double>)
-- #ccall gsl_block_complex_long_double_calloc , CSize -> IO (Ptr <gsl_block_complex_long_double>)
-- #ccall gsl_block_complex_long_double_data , Ptr <gsl_block_complex_long_double> -> IO (Ptr CLDouble)
-- #ccall gsl_block_complex_long_double_fprintf , Ptr CFile -> Ptr <gsl_block_complex_long_double> -> CString -> IO CInt
-- #ccall gsl_block_complex_long_double_fread , Ptr CFile -> Ptr <gsl_block_complex_long_double> -> IO CInt
-- #ccall gsl_block_complex_long_double_free , Ptr <gsl_block_complex_long_double> -> IO ()
-- #ccall gsl_block_complex_long_double_fscanf , Ptr CFile -> Ptr <gsl_block_complex_long_double> -> IO CInt
-- #ccall gsl_block_complex_long_double_fwrite , Ptr CFile -> Ptr <gsl_block_complex_long_double> -> IO CInt
-- #ccall gsl_block_complex_long_double_raw_fprintf , Ptr CFile -> Ptr CLDouble -> CSize -> CSize -> CString -> IO CInt
-- #ccall gsl_block_complex_long_double_raw_fread , Ptr CFile -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_block_complex_long_double_raw_fscanf , Ptr CFile -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_block_complex_long_double_raw_fwrite , Ptr CFile -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_block_complex_long_double_size , Ptr <gsl_block_complex_long_double> -> IO CSize
#ccall gsl_block_complex_raw_fprintf , Ptr CFile -> Ptr CDouble -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_complex_raw_fread , Ptr CFile -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_block_complex_raw_fscanf , Ptr CFile -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_block_complex_raw_fwrite , Ptr CFile -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_block_complex_size , Ptr <gsl_block_complex> -> IO CSize
#ccall gsl_block_data , Ptr <gsl_block> -> IO (Ptr CDouble)
#ccall gsl_block_float_alloc , CSize -> IO (Ptr <gsl_block_float>)
#ccall gsl_block_float_calloc , CSize -> IO (Ptr <gsl_block_float>)
#ccall gsl_block_float_data , Ptr <gsl_block_float> -> IO (Ptr CFloat)
#ccall gsl_block_float_fprintf , Ptr CFile -> Ptr <gsl_block_float> -> CString -> IO CInt
#ccall gsl_block_float_fread , Ptr CFile -> Ptr <gsl_block_float> -> IO CInt
#ccall gsl_block_float_free , Ptr <gsl_block_float> -> IO ()
#ccall gsl_block_float_fscanf , Ptr CFile -> Ptr <gsl_block_float> -> IO CInt
#ccall gsl_block_float_fwrite , Ptr CFile -> Ptr <gsl_block_float> -> IO CInt
#ccall gsl_block_float_raw_fprintf , Ptr CFile -> Ptr CFloat -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_float_raw_fread , Ptr CFile -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_block_float_raw_fscanf , Ptr CFile -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_block_float_raw_fwrite , Ptr CFile -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_block_float_size , Ptr <gsl_block_float> -> IO CSize
#ccall gsl_block_fprintf , Ptr CFile -> Ptr <gsl_block> -> CString -> IO CInt
#ccall gsl_block_fread , Ptr CFile -> Ptr <gsl_block> -> IO CInt
#ccall gsl_block_free , Ptr <gsl_block> -> IO ()
#ccall gsl_block_fscanf , Ptr CFile -> Ptr <gsl_block> -> IO CInt
#ccall gsl_block_fwrite , Ptr CFile -> Ptr <gsl_block> -> IO CInt
#ccall gsl_block_int_alloc , CSize -> IO (Ptr <gsl_block_int>)
#ccall gsl_block_int_calloc , CSize -> IO (Ptr <gsl_block_int>)
#ccall gsl_block_int_data , Ptr <gsl_block_int> -> IO (Ptr CInt)
#ccall gsl_block_int_fprintf , Ptr CFile -> Ptr <gsl_block_int> -> CString -> IO CInt
#ccall gsl_block_int_fread , Ptr CFile -> Ptr <gsl_block_int> -> IO CInt
#ccall gsl_block_int_free , Ptr <gsl_block_int> -> IO ()
#ccall gsl_block_int_fscanf , Ptr CFile -> Ptr <gsl_block_int> -> IO CInt
#ccall gsl_block_int_fwrite , Ptr CFile -> Ptr <gsl_block_int> -> IO CInt
#ccall gsl_block_int_raw_fprintf , Ptr CFile -> Ptr CInt -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_int_raw_fread , Ptr CFile -> Ptr CInt -> CSize -> CSize -> IO CInt
#ccall gsl_block_int_raw_fscanf , Ptr CFile -> Ptr CInt -> CSize -> CSize -> IO CInt
#ccall gsl_block_int_raw_fwrite , Ptr CFile -> Ptr CInt -> CSize -> CSize -> IO CInt
#ccall gsl_block_int_size , Ptr <gsl_block_int> -> IO CSize
#ccall gsl_block_long_alloc , CSize -> IO (Ptr <gsl_block_long>)
#ccall gsl_block_long_calloc , CSize -> IO (Ptr <gsl_block_long>)
#ccall gsl_block_long_data , Ptr <gsl_block_long> -> IO (Ptr CLong)
-- #ccall gsl_block_long_double_alloc , CSize -> IO (Ptr <gsl_block_long_double>)
-- #ccall gsl_block_long_double_calloc , CSize -> IO (Ptr <gsl_block_long_double>)
-- #ccall gsl_block_long_double_data , Ptr <gsl_block_long_double> -> IO (Ptr CLDouble)
-- #ccall gsl_block_long_double_fprintf , Ptr CFile -> Ptr <gsl_block_long_double> -> CString -> IO CInt
-- #ccall gsl_block_long_double_fread , Ptr CFile -> Ptr <gsl_block_long_double> -> IO CInt
-- #ccall gsl_block_long_double_free , Ptr <gsl_block_long_double> -> IO ()
-- #ccall gsl_block_long_double_fscanf , Ptr CFile -> Ptr <gsl_block_long_double> -> IO CInt
-- #ccall gsl_block_long_double_fwrite , Ptr CFile -> Ptr <gsl_block_long_double> -> IO CInt
-- #ccall gsl_block_long_double_raw_fprintf , Ptr CFile -> Ptr CLDouble -> CSize -> CSize -> CString -> IO CInt
-- #ccall gsl_block_long_double_raw_fread , Ptr CFile -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_block_long_double_raw_fscanf , Ptr CFile -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_block_long_double_raw_fwrite , Ptr CFile -> Ptr CLDouble -> CSize -> CSize -> IO CInt
-- #ccall gsl_block_long_double_size , Ptr <gsl_block_long_double> -> IO CSize
#ccall gsl_block_long_fprintf , Ptr CFile -> Ptr <gsl_block_long> -> CString -> IO CInt
#ccall gsl_block_long_fread , Ptr CFile -> Ptr <gsl_block_long> -> IO CInt
#ccall gsl_block_long_free , Ptr <gsl_block_long> -> IO ()
#ccall gsl_block_long_fscanf , Ptr CFile -> Ptr <gsl_block_long> -> IO CInt
#ccall gsl_block_long_fwrite , Ptr CFile -> Ptr <gsl_block_long> -> IO CInt
#ccall gsl_block_long_raw_fprintf , Ptr CFile -> Ptr CLong -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_long_raw_fread , Ptr CFile -> Ptr CLong -> CSize -> CSize -> IO CInt
#ccall gsl_block_long_raw_fscanf , Ptr CFile -> Ptr CLong -> CSize -> CSize -> IO CInt
#ccall gsl_block_long_raw_fwrite , Ptr CFile -> Ptr CLong -> CSize -> CSize -> IO CInt
#ccall gsl_block_long_size , Ptr <gsl_block_long> -> IO CSize
#ccall gsl_block_raw_fprintf , Ptr CFile -> Ptr CDouble -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_raw_fread , Ptr CFile -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_block_raw_fscanf , Ptr CFile -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_block_raw_fwrite , Ptr CFile -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_block_short_alloc , CSize -> IO (Ptr <gsl_block_short>)
#ccall gsl_block_short_calloc , CSize -> IO (Ptr <gsl_block_short>)
#ccall gsl_block_short_data , Ptr <gsl_block_short> -> IO (Ptr CShort)
#ccall gsl_block_short_fprintf , Ptr CFile -> Ptr <gsl_block_short> -> CString -> IO CInt
#ccall gsl_block_short_fread , Ptr CFile -> Ptr <gsl_block_short> -> IO CInt
#ccall gsl_block_short_free , Ptr <gsl_block_short> -> IO ()
#ccall gsl_block_short_fscanf , Ptr CFile -> Ptr <gsl_block_short> -> IO CInt
#ccall gsl_block_short_fwrite , Ptr CFile -> Ptr <gsl_block_short> -> IO CInt
#ccall gsl_block_short_raw_fprintf , Ptr CFile -> Ptr CShort -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_short_raw_fread , Ptr CFile -> Ptr CShort -> CSize -> CSize -> IO CInt
#ccall gsl_block_short_raw_fscanf , Ptr CFile -> Ptr CShort -> CSize -> CSize -> IO CInt
#ccall gsl_block_short_raw_fwrite , Ptr CFile -> Ptr CShort -> CSize -> CSize -> IO CInt
#ccall gsl_block_short_size , Ptr <gsl_block_short> -> IO CSize
#ccall gsl_block_size , Ptr <gsl_block> -> IO CSize
#ccall gsl_block_uchar_alloc , CSize -> IO (Ptr <gsl_block_uchar>)
#ccall gsl_block_uchar_calloc , CSize -> IO (Ptr <gsl_block_uchar>)
#ccall gsl_block_uchar_data , Ptr <gsl_block_uchar> -> IO (Ptr CUChar)
#ccall gsl_block_uchar_fprintf , Ptr CFile -> Ptr <gsl_block_uchar> -> CString -> IO CInt
#ccall gsl_block_uchar_fread , Ptr CFile -> Ptr <gsl_block_uchar> -> IO CInt
#ccall gsl_block_uchar_free , Ptr <gsl_block_uchar> -> IO ()
#ccall gsl_block_uchar_fscanf , Ptr CFile -> Ptr <gsl_block_uchar> -> IO CInt
#ccall gsl_block_uchar_fwrite , Ptr CFile -> Ptr <gsl_block_uchar> -> IO CInt
#ccall gsl_block_uchar_raw_fprintf , Ptr CFile -> Ptr CUChar -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_uchar_raw_fread , Ptr CFile -> Ptr CUChar -> CSize -> CSize -> IO CInt
#ccall gsl_block_uchar_raw_fscanf , Ptr CFile -> Ptr CUChar -> CSize -> CSize -> IO CInt
#ccall gsl_block_uchar_raw_fwrite , Ptr CFile -> Ptr CUChar -> CSize -> CSize -> IO CInt
#ccall gsl_block_uchar_size , Ptr <gsl_block_uchar> -> IO CSize
#ccall gsl_block_uint_alloc , CSize -> IO (Ptr <gsl_block_uint>)
#ccall gsl_block_uint_calloc , CSize -> IO (Ptr <gsl_block_uint>)
#ccall gsl_block_uint_data , Ptr <gsl_block_uint> -> IO (Ptr CUInt)
#ccall gsl_block_uint_fprintf , Ptr CFile -> Ptr <gsl_block_uint> -> CString -> IO CInt
#ccall gsl_block_uint_fread , Ptr CFile -> Ptr <gsl_block_uint> -> IO CInt
#ccall gsl_block_uint_free , Ptr <gsl_block_uint> -> IO ()
#ccall gsl_block_uint_fscanf , Ptr CFile -> Ptr <gsl_block_uint> -> IO CInt
#ccall gsl_block_uint_fwrite , Ptr CFile -> Ptr <gsl_block_uint> -> IO CInt
#ccall gsl_block_uint_raw_fprintf , Ptr CFile -> Ptr CUInt -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_uint_raw_fread , Ptr CFile -> Ptr CUInt -> CSize -> CSize -> IO CInt
#ccall gsl_block_uint_raw_fscanf , Ptr CFile -> Ptr CUInt -> CSize -> CSize -> IO CInt
#ccall gsl_block_uint_raw_fwrite , Ptr CFile -> Ptr CUInt -> CSize -> CSize -> IO CInt
#ccall gsl_block_uint_size , Ptr <gsl_block_uint> -> IO CSize
#ccall gsl_block_ulong_alloc , CSize -> IO (Ptr <gsl_block_ulong>)
#ccall gsl_block_ulong_calloc , CSize -> IO (Ptr <gsl_block_ulong>)
#ccall gsl_block_ulong_data , Ptr <gsl_block_ulong> -> IO (Ptr CULong)
#ccall gsl_block_ulong_fprintf , Ptr CFile -> Ptr <gsl_block_ulong> -> CString -> IO CInt
#ccall gsl_block_ulong_fread , Ptr CFile -> Ptr <gsl_block_ulong> -> IO CInt
#ccall gsl_block_ulong_free , Ptr <gsl_block_ulong> -> IO ()
#ccall gsl_block_ulong_fscanf , Ptr CFile -> Ptr <gsl_block_ulong> -> IO CInt
#ccall gsl_block_ulong_fwrite , Ptr CFile -> Ptr <gsl_block_ulong> -> IO CInt
#ccall gsl_block_ulong_raw_fprintf , Ptr CFile -> Ptr CULong -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_ulong_raw_fread , Ptr CFile -> Ptr CULong -> CSize -> CSize -> IO CInt
#ccall gsl_block_ulong_raw_fscanf , Ptr CFile -> Ptr CULong -> CSize -> CSize -> IO CInt
#ccall gsl_block_ulong_raw_fwrite , Ptr CFile -> Ptr CULong -> CSize -> CSize -> IO CInt
#ccall gsl_block_ulong_size , Ptr <gsl_block_ulong> -> IO CSize
#ccall gsl_block_ushort_alloc , CSize -> IO (Ptr <gsl_block_ushort>)
#ccall gsl_block_ushort_calloc , CSize -> IO (Ptr <gsl_block_ushort>)
#ccall gsl_block_ushort_data , Ptr <gsl_block_ushort> -> IO (Ptr CUShort)
#ccall gsl_block_ushort_fprintf , Ptr CFile -> Ptr <gsl_block_ushort> -> CString -> IO CInt
#ccall gsl_block_ushort_fread , Ptr CFile -> Ptr <gsl_block_ushort> -> IO CInt
#ccall gsl_block_ushort_free , Ptr <gsl_block_ushort> -> IO ()
#ccall gsl_block_ushort_fscanf , Ptr CFile -> Ptr <gsl_block_ushort> -> IO CInt
#ccall gsl_block_ushort_fwrite , Ptr CFile -> Ptr <gsl_block_ushort> -> IO CInt
#ccall gsl_block_ushort_raw_fprintf , Ptr CFile -> Ptr CUShort -> CSize -> CSize -> CString -> IO CInt
#ccall gsl_block_ushort_raw_fread , Ptr CFile -> Ptr CUShort -> CSize -> CSize -> IO CInt
#ccall gsl_block_ushort_raw_fscanf , Ptr CFile -> Ptr CUShort -> CSize -> CSize -> IO CInt
#ccall gsl_block_ushort_raw_fwrite , Ptr CFile -> Ptr CUShort -> CSize -> CSize -> IO CInt
#ccall gsl_block_ushort_size , Ptr <gsl_block_ushort> -> IO CSize
