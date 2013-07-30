#include <bindings.dsl.h>
#include <gsl/gsl_fft.h>
#include <gsl/gsl_fft_complex_float.h>
#include <gsl/gsl_fft_complex.h>
#include <gsl/gsl_fft_halfcomplex_float.h>
#include <gsl/gsl_fft_halfcomplex.h>
#include <gsl/gsl_fft_real_float.h>
#include <gsl/gsl_fft_real.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Fast-Fourier-Transforms.html>

module Bindings.Gsl.FastFourierTransforms where
#strict_import
import Bindings.Gsl.ComplexNumbers

#integral_t gsl_fft_direction

#num gsl_fft_forward
#num gsl_fft_backward


#ccall gsl_fft_complex_float_radix2_forward , <gsl_complex_packed_array_float> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_float_radix2_backward , <gsl_complex_packed_array_float> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_float_radix2_inverse , <gsl_complex_packed_array_float> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_float_radix2_transform , <gsl_complex_packed_array_float> -> CSize -> CSize -> <gsl_fft_direction> -> IO CInt
#ccall gsl_fft_complex_float_radix2_dif_forward , <gsl_complex_packed_array_float> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_float_radix2_dif_backward , <gsl_complex_packed_array_float> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_float_radix2_dif_inverse , <gsl_complex_packed_array_float> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_float_radix2_dif_transform , <gsl_complex_packed_array_float> -> CSize -> CSize -> <gsl_fft_direction> -> IO CInt

#starttype gsl_fft_complex_wavetable_float
#field n , CSize
#field nf , CSize
#array_field factor , CSize
#array_field twiddle , Ptr <gsl_complex_float>
#field trig , Ptr <gsl_complex_float>
#stoptype


#starttype gsl_fft_complex_workspace_float
#field n , CSize
#field scratch , Ptr CFloat
#stoptype

#ccall gsl_fft_complex_wavetable_float_alloc , CSize -> IO (Ptr <gsl_fft_complex_wavetable_float>)
#ccall gsl_fft_complex_wavetable_float_free , Ptr <gsl_fft_complex_wavetable_float> -> IO ()
#ccall gsl_fft_complex_workspace_float_alloc , CSize -> IO (Ptr <gsl_fft_complex_workspace_float>)
#ccall gsl_fft_complex_workspace_float_free , Ptr <gsl_fft_complex_workspace_float> -> IO ()
#ccall gsl_fft_complex_float_memcpy , Ptr <gsl_fft_complex_wavetable_float> -> Ptr <gsl_fft_complex_wavetable_float> -> IO CInt
#ccall gsl_fft_complex_float_forward , <gsl_complex_packed_array_float> -> CSize -> CSize -> Ptr <gsl_fft_complex_wavetable_float> -> Ptr <gsl_fft_complex_workspace_float> -> IO CInt
#ccall gsl_fft_complex_float_backward , <gsl_complex_packed_array_float> -> CSize -> CSize -> Ptr <gsl_fft_complex_wavetable_float> -> Ptr <gsl_fft_complex_workspace_float> -> IO CInt
#ccall gsl_fft_complex_float_inverse , <gsl_complex_packed_array_float> -> CSize -> CSize -> Ptr <gsl_fft_complex_wavetable_float> -> Ptr <gsl_fft_complex_workspace_float> -> IO CInt
#ccall gsl_fft_complex_float_transform , <gsl_complex_packed_array_float> -> CSize -> CSize -> Ptr <gsl_fft_complex_wavetable_float> -> Ptr <gsl_fft_complex_workspace_float> -> <gsl_fft_direction> -> IO CInt
#ccall gsl_fft_complex_radix2_forward , <gsl_complex_packed_array> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_radix2_backward , <gsl_complex_packed_array> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_radix2_inverse , <gsl_complex_packed_array> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_radix2_transform , <gsl_complex_packed_array> -> CSize -> CSize -> <gsl_fft_direction> -> IO CInt
#ccall gsl_fft_complex_radix2_dif_forward , <gsl_complex_packed_array> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_radix2_dif_backward , <gsl_complex_packed_array> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_radix2_dif_inverse , <gsl_complex_packed_array> -> CSize -> CSize -> IO CInt
#ccall gsl_fft_complex_radix2_dif_transform , <gsl_complex_packed_array> -> CSize -> CSize -> <gsl_fft_direction> -> IO CInt

#starttype gsl_fft_complex_wavetable
#field n , CSize
#field nf , CSize
#array_field factor , CSize
#array_field twiddle , Ptr <gsl_complex>
#field trig , Ptr <gsl_complex>
#stoptype


#starttype gsl_fft_complex_workspace
#field n , CSize
#field scratch , Ptr CDouble
#stoptype

#ccall gsl_fft_complex_wavetable_alloc , CSize -> IO (Ptr <gsl_fft_complex_wavetable>)
#ccall gsl_fft_complex_wavetable_free , Ptr <gsl_fft_complex_wavetable> -> IO ()
#ccall gsl_fft_complex_workspace_alloc , CSize -> IO (Ptr <gsl_fft_complex_workspace>)
#ccall gsl_fft_complex_workspace_free , Ptr <gsl_fft_complex_workspace> -> IO ()
#ccall gsl_fft_complex_memcpy , Ptr <gsl_fft_complex_wavetable> -> Ptr <gsl_fft_complex_wavetable> -> IO CInt
#ccall gsl_fft_complex_forward , <gsl_complex_packed_array> -> CSize -> CSize -> Ptr <gsl_fft_complex_wavetable> -> Ptr <gsl_fft_complex_workspace> -> IO CInt
#ccall gsl_fft_complex_backward , <gsl_complex_packed_array> -> CSize -> CSize -> Ptr <gsl_fft_complex_wavetable> -> Ptr <gsl_fft_complex_workspace> -> IO CInt
#ccall gsl_fft_complex_inverse , <gsl_complex_packed_array> -> CSize -> CSize -> Ptr <gsl_fft_complex_wavetable> -> Ptr <gsl_fft_complex_workspace> -> IO CInt
#ccall gsl_fft_complex_transform , <gsl_complex_packed_array> -> CSize -> CSize -> Ptr <gsl_fft_complex_wavetable> -> Ptr <gsl_fft_complex_workspace> -> <gsl_fft_direction> -> IO CInt
#ccall gsl_fft_halfcomplex_float_radix2_backward , Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_fft_halfcomplex_float_radix2_inverse , Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_fft_halfcomplex_float_radix2_transform , Ptr CFloat -> CSize -> CSize -> IO CInt

#starttype gsl_fft_halfcomplex_wavetable_float
#array_field twiddle , Ptr <gsl_complex_float>
#field n , CSize
#field nf , CSize
#array_field factor , CSize
#field trig , Ptr <gsl_complex_float>
#stoptype

#ccall gsl_fft_halfcomplex_wavetable_float_alloc , CSize -> IO (Ptr <gsl_fft_halfcomplex_wavetable_float>)
#ccall gsl_fft_halfcomplex_wavetable_float_free , Ptr <gsl_fft_halfcomplex_wavetable_float> -> IO ()
#ccall gsl_fft_halfcomplex_float_backward , Ptr CFloat -> CSize -> CSize -> Ptr <gsl_fft_halfcomplex_wavetable_float> -> Ptr <gsl_fft_real_workspace_float> -> IO CInt
#ccall gsl_fft_halfcomplex_float_inverse , Ptr CFloat -> CSize -> CSize -> Ptr <gsl_fft_halfcomplex_wavetable_float> -> Ptr <gsl_fft_real_workspace_float> -> IO CInt
#ccall gsl_fft_halfcomplex_float_transform , Ptr CFloat -> CSize -> CSize -> Ptr <gsl_fft_halfcomplex_wavetable_float> -> Ptr <gsl_fft_real_workspace_float> -> IO CInt
#ccall gsl_fft_halfcomplex_float_unpack , Ptr CFloat -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_fft_halfcomplex_float_radix2_unpack , Ptr CFloat -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_fft_halfcomplex_radix2_backward , Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_fft_halfcomplex_radix2_inverse , Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_fft_halfcomplex_radix2_transform , Ptr CDouble -> CSize -> CSize -> IO CInt

#starttype gsl_fft_halfcomplex_wavetable
#field n , CSize
#field nf , CSize
#array_field factor , CSize
#array_field twiddle , Ptr <gsl_complex>
#field trig , Ptr <gsl_complex>
#stoptype

#ccall gsl_fft_halfcomplex_wavetable_alloc , CSize -> IO (Ptr <gsl_fft_halfcomplex_wavetable>)
#ccall gsl_fft_halfcomplex_wavetable_free , Ptr <gsl_fft_halfcomplex_wavetable> -> IO ()
#ccall gsl_fft_halfcomplex_backward , Ptr CDouble -> CSize -> CSize -> Ptr <gsl_fft_halfcomplex_wavetable> -> Ptr <gsl_fft_real_workspace> -> IO CInt
#ccall gsl_fft_halfcomplex_inverse , Ptr CDouble -> CSize -> CSize -> Ptr <gsl_fft_halfcomplex_wavetable> -> Ptr <gsl_fft_real_workspace> -> IO CInt
#ccall gsl_fft_halfcomplex_transform , Ptr CDouble -> CSize -> CSize -> Ptr <gsl_fft_halfcomplex_wavetable> -> Ptr <gsl_fft_real_workspace> -> IO CInt
#ccall gsl_fft_halfcomplex_unpack , Ptr CDouble -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_fft_halfcomplex_radix2_unpack , Ptr CDouble -> Ptr CDouble -> CSize -> CSize -> IO CInt
#ccall gsl_fft_real_float_radix2_transform , Ptr CFloat -> CSize -> CSize -> IO CInt

#starttype gsl_fft_real_wavetable_float
#field n , CSize
#field nf , CSize
#array_field factor , CSize
#array_field twiddle , Ptr <gsl_complex_float>
#field trig , Ptr <gsl_complex_float>
#stoptype


#starttype gsl_fft_real_workspace_float
#field n , CSize
#field scratch , Ptr CFloat
#stoptype

#ccall gsl_fft_real_wavetable_float_alloc , CSize -> IO (Ptr <gsl_fft_real_wavetable_float>)
#ccall gsl_fft_real_wavetable_float_free , Ptr <gsl_fft_real_wavetable_float> -> IO ()
#ccall gsl_fft_real_workspace_float_alloc , CSize -> IO (Ptr <gsl_fft_real_workspace_float>)
#ccall gsl_fft_real_workspace_float_free , Ptr <gsl_fft_real_workspace_float> -> IO ()
#ccall gsl_fft_real_float_transform , Ptr CFloat -> CSize -> CSize -> Ptr <gsl_fft_real_wavetable_float> -> Ptr <gsl_fft_real_workspace_float> -> IO CInt
#ccall gsl_fft_real_float_unpack , Ptr CFloat -> Ptr CFloat -> CSize -> CSize -> IO CInt
#ccall gsl_fft_real_radix2_transform , Ptr CDouble -> CSize -> CSize -> IO CInt

#starttype gsl_fft_real_wavetable
#field n , CSize
#field nf , CSize
#array_field factor , CSize
#array_field twiddle , Ptr <gsl_complex>
#field trig , Ptr <gsl_complex>
#stoptype


#starttype gsl_fft_real_workspace
#field n , CSize
#field scratch , Ptr CDouble
#stoptype

#ccall gsl_fft_real_wavetable_alloc , CSize -> IO (Ptr <gsl_fft_real_wavetable>)
#ccall gsl_fft_real_wavetable_free , Ptr <gsl_fft_real_wavetable> -> IO ()
#ccall gsl_fft_real_workspace_alloc , CSize -> IO (Ptr <gsl_fft_real_workspace>)
#ccall gsl_fft_real_workspace_free , Ptr <gsl_fft_real_workspace> -> IO ()
#ccall gsl_fft_real_transform , Ptr CDouble -> CSize -> CSize -> Ptr <gsl_fft_real_wavetable> -> Ptr <gsl_fft_real_workspace> -> IO CInt
#ccall gsl_fft_real_unpack , Ptr CDouble -> Ptr CDouble -> CSize -> CSize -> IO CInt

