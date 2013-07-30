#include <bindings.dsl.h>
#include <gsl/gsl_wavelet.h>
#include <gsl/gsl_wavelet2d.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Wavelet-Transforms.html>

module Bindings.Gsl.WaveletTransforms where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes

#integral_t gsl_wavelet_direction

#num gsl_wavelet_forward
#num gsl_wavelet_backward

#starttype gsl_wavelet_type
#field name , CString
#field init , FunPtr ( Ptr (Ptr CDouble) -> Ptr (Ptr CDouble) -> Ptr (Ptr CDouble) -> Ptr (Ptr CDouble) -> Ptr CSize -> Ptr CSize -> CSize -> IO  CInt)
#stoptype

#starttype gsl_wavelet
#field type , Ptr <gsl_wavelet_type>
#field h1 , Ptr CDouble
#field g1 , Ptr CDouble
#field h2 , Ptr CDouble
#field g2 , Ptr CDouble
#field nc , CSize
#field offset , CSize
#stoptype

#starttype gsl_wavelet_workspace
#field scratch , Ptr CDouble
#field n , CSize
#stoptype

#globalvar gsl_wavelet_daubechies , Ptr gsl_wavelet_type
#globalvar gsl_wavelet_daubechies_centered , Ptr gsl_wavelet_type
#globalvar gsl_wavelet_haar , Ptr gsl_wavelet_type
#globalvar gsl_wavelet_haar_centered , Ptr gsl_wavelet_type
#globalvar gsl_wavelet_bspline , Ptr gsl_wavelet_type
#globalvar gsl_wavelet_bspline_centered , Ptr gsl_wavelet_type

#ccall gsl_wavelet_alloc , Ptr <gsl_wavelet_type> -> CSize -> IO (Ptr <gsl_wavelet>)
#ccall gsl_wavelet_free , Ptr <gsl_wavelet> -> IO ()
#ccall gsl_wavelet_name , Ptr <gsl_wavelet> -> IO CString
#ccall gsl_wavelet_workspace_alloc , CSize -> IO (Ptr <gsl_wavelet_workspace>)
#ccall gsl_wavelet_workspace_free , Ptr <gsl_wavelet_workspace> -> IO ()
#ccall gsl_wavelet_transform , Ptr <gsl_wavelet> -> Ptr CDouble -> CSize -> CSize -> <gsl_wavelet_direction> -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet_transform_forward , Ptr <gsl_wavelet> -> Ptr CDouble -> CSize -> CSize -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet_transform_inverse , Ptr <gsl_wavelet> -> Ptr CDouble -> CSize -> CSize -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_transform , Ptr <gsl_wavelet> -> Ptr CDouble -> CSize -> CSize -> CSize -> <gsl_wavelet_direction> -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_transform_forward , Ptr <gsl_wavelet> -> Ptr CDouble -> CSize -> CSize -> CSize -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_transform_inverse , Ptr <gsl_wavelet> -> Ptr CDouble -> CSize -> CSize -> CSize -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_nstransform , Ptr <gsl_wavelet> -> Ptr CDouble -> CSize -> CSize -> CSize -> <gsl_wavelet_direction> -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_nstransform_forward , Ptr <gsl_wavelet> -> Ptr CDouble -> CSize -> CSize -> CSize -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_nstransform_inverse , Ptr <gsl_wavelet> -> Ptr CDouble -> CSize -> CSize -> CSize -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_transform_matrix , Ptr <gsl_wavelet> -> Ptr <gsl_matrix> -> <gsl_wavelet_direction> -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_transform_matrix_forward , Ptr <gsl_wavelet> -> Ptr <gsl_matrix> -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_transform_matrix_inverse , Ptr <gsl_wavelet> -> Ptr <gsl_matrix> -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_nstransform_matrix , Ptr <gsl_wavelet> -> Ptr <gsl_matrix> -> <gsl_wavelet_direction> -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_nstransform_matrix_forward , Ptr <gsl_wavelet> -> Ptr <gsl_matrix> -> Ptr <gsl_wavelet_workspace> -> IO CInt
#ccall gsl_wavelet2d_nstransform_matrix_inverse , Ptr <gsl_wavelet> -> Ptr <gsl_matrix> -> Ptr <gsl_wavelet_workspace> -> IO CInt

