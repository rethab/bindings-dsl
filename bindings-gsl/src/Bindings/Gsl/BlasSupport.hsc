#include <bindings.dsl.h>
#include <gsl/gsl_blas.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/BLAS-Support.html>

module Bindings.Gsl.BlasSupport where
#strict_import
import Bindings.Gsl.ComplexNumbers
import Bindings.Gsl.VectorsAndMatrices.DataTypes

#integral_t CBLAS_INDEX_t
#integral_t CBLAS_ORDER_t
#integral_t CBLAS_TRANSPOSE_t
#integral_t CBLAS_UPLO_t
#integral_t CBLAS_DIAG_t
#integral_t CBLAS_SIDE_t

#ccall gsl_blas_sdsdot , CFloat -> Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> Ptr CFloat  -> IO CInt
#ccall gsl_blas_dsdot , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> Ptr CDouble  -> IO CInt
#ccall gsl_blas_sdot , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> Ptr CFloat  -> IO CInt
#ccall gsl_blas_ddot , Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr CDouble  -> IO CInt
#ccall gsl_blas_cdotu , Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> Ptr <gsl_complex_float> -> IO CInt
#ccall gsl_blas_cdotc , Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> Ptr <gsl_complex_float> -> IO CInt
#ccall gsl_blas_zdotu , Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_complex> -> IO CInt
#ccall gsl_blas_zdotc , Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_complex> -> IO CInt
#ccall gsl_blas_snrm2 , Ptr <gsl_vector_float> -> IO CFloat
#ccall gsl_blas_sasum , Ptr <gsl_vector_float> -> IO CFloat
#ccall gsl_blas_dnrm2 , Ptr <gsl_vector> -> IO CDouble
#ccall gsl_blas_dasum , Ptr <gsl_vector> -> IO CDouble
#ccall gsl_blas_scnrm2 , Ptr <gsl_vector_complex_float> -> IO CFloat
#ccall gsl_blas_scasum , Ptr <gsl_vector_complex_float> -> IO CFloat
#ccall gsl_blas_dznrm2 , Ptr <gsl_vector_complex> -> IO CDouble
#ccall gsl_blas_dzasum , Ptr <gsl_vector_complex> -> IO CDouble
#ccall gsl_blas_isamax , Ptr <gsl_vector_float> -> IO <CBLAS_INDEX_t>
#ccall gsl_blas_idamax , Ptr <gsl_vector> -> IO <CBLAS_INDEX_t>
#ccall gsl_blas_icamax , Ptr <gsl_vector_complex_float> -> IO <CBLAS_INDEX_t>
#ccall gsl_blas_izamax , Ptr <gsl_vector_complex> -> IO <CBLAS_INDEX_t>
#ccall gsl_blas_sswap , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_blas_scopy , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_blas_saxpy , CFloat -> Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_blas_dswap , Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_blas_dcopy , Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_blas_daxpy , CDouble -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_blas_cswap , Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_blas_ccopy , Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
-- ccall gsl_blas_caxpy , <gsl_complex_float> -> Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_blas_zswap , Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_blas_zcopy , Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
-- ccall gsl_blas_zaxpy , <gsl_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_blas_srotg , Ptr CFloat -> Ptr CFloat -> Ptr CFloat -> Ptr CFloat -> IO CInt
#ccall gsl_blas_srotmg , Ptr CFloat -> Ptr CFloat -> Ptr CFloat -> CFloat -> Ptr CFloat -> IO CInt
#ccall gsl_blas_srot , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> CFloat -> CFloat -> IO CInt
#ccall gsl_blas_srotm , Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> Ptr CFloat -> IO CInt
#ccall gsl_blas_drotg , Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_blas_drotmg , Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_blas_drot , Ptr <gsl_vector> -> Ptr <gsl_vector> -> CDouble -> CDouble -> IO CInt
#ccall gsl_blas_drotm , Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr CDouble -> IO CInt
#ccall gsl_blas_sscal , CFloat -> Ptr <gsl_vector_float> -> IO ()
#ccall gsl_blas_dscal , CDouble -> Ptr <gsl_vector> -> IO ()
-- ccall gsl_blas_cscal , <gsl_complex_float> -> Ptr <gsl_vector_complex_float> -> IO ()
-- ccall gsl_blas_zscal , <gsl_complex> -> Ptr <gsl_vector_complex> -> IO ()
#ccall gsl_blas_csscal , CFloat -> Ptr <gsl_vector_complex_float> -> IO ()
#ccall gsl_blas_zdscal , CDouble -> Ptr <gsl_vector_complex> -> IO ()
#ccall gsl_blas_sgemv , <CBLAS_TRANSPOSE_t> -> CFloat -> Ptr <gsl_matrix_float> -> Ptr <gsl_vector_float> -> CFloat -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_blas_strmv , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> Ptr <gsl_matrix_float> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_blas_strsv , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> Ptr <gsl_matrix_float> -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_blas_dgemv , <CBLAS_TRANSPOSE_t> -> CDouble -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> CDouble -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_blas_dtrmv , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_blas_dtrsv , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
-- ccall gsl_blas_cgemv , <CBLAS_TRANSPOSE_t> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_vector_complex_float> -> <gsl_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_blas_ctrmv , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
#ccall gsl_blas_ctrsv , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
-- ccall gsl_blas_zgemv , <CBLAS_TRANSPOSE_t> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_vector_complex> -> <gsl_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_blas_ztrmv , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_blas_ztrsv , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_blas_ssymv , <CBLAS_UPLO_t> -> CFloat -> Ptr <gsl_matrix_float> -> Ptr <gsl_vector_float> -> CFloat -> Ptr <gsl_vector_float> -> IO CInt
#ccall gsl_blas_sger , CFloat -> Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_blas_ssyr , <CBLAS_UPLO_t> -> CFloat -> Ptr <gsl_vector_float> -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_blas_ssyr2 , <CBLAS_UPLO_t> -> CFloat -> Ptr <gsl_vector_float> -> Ptr <gsl_vector_float> -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_blas_dsymv , <CBLAS_UPLO_t> -> CDouble -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> CDouble -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_blas_dger , CDouble -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_blas_dsyr , <CBLAS_UPLO_t> -> CDouble -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_blas_dsyr2 , <CBLAS_UPLO_t> -> CDouble -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
-- ccall gsl_blas_chemv , <CBLAS_UPLO_t> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_vector_complex_float> -> <gsl_complex_float> -> Ptr <gsl_vector_complex_float> -> IO CInt
-- ccall gsl_blas_cgeru , <gsl_complex_float> -> Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_cgerc , <gsl_complex_float> -> Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_blas_cher , <CBLAS_UPLO_t> -> CFloat -> Ptr <gsl_vector_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_cher2 , <CBLAS_UPLO_t> -> <gsl_complex_float> -> Ptr <gsl_vector_complex_float> -> Ptr <gsl_vector_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_zhemv , <CBLAS_UPLO_t> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_vector_complex> -> <gsl_complex> -> Ptr <gsl_vector_complex> -> IO CInt
-- ccall gsl_blas_zgeru , <gsl_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_blas_zgerc , <gsl_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_blas_zher , <CBLAS_UPLO_t> -> CDouble -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_blas_zher2 , <CBLAS_UPLO_t> -> <gsl_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_blas_sgemm , <CBLAS_TRANSPOSE_t> -> <CBLAS_TRANSPOSE_t> -> CFloat -> Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> CFloat -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_blas_ssymm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> CFloat -> Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> CFloat -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_blas_ssyrk , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> CFloat -> Ptr <gsl_matrix_float> -> CFloat -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_blas_ssyr2k , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> CFloat -> Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> CFloat -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_blas_strmm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> CFloat -> Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_blas_strsm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> CFloat -> Ptr <gsl_matrix_float> -> Ptr <gsl_matrix_float> -> IO CInt
#ccall gsl_blas_dgemm , <CBLAS_TRANSPOSE_t> -> <CBLAS_TRANSPOSE_t> -> CDouble -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> CDouble -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_blas_dsymm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> CDouble -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> CDouble -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_blas_dsyrk , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> CDouble -> Ptr <gsl_matrix> -> CDouble -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_blas_dsyr2k , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> CDouble -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> CDouble -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_blas_dtrmm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> CDouble -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_blas_dtrsm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> CDouble -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
-- ccall gsl_blas_cgemm , <CBLAS_TRANSPOSE_t> -> <CBLAS_TRANSPOSE_t> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_csymm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_csyrk , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_csyr2k , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_ctrmm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_ctrsm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_zgemm , <CBLAS_TRANSPOSE_t> -> <CBLAS_TRANSPOSE_t> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_blas_zsymm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_blas_zsyrk , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_blas_zsyr2k , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_blas_ztrmm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_blas_ztrsm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <CBLAS_DIAG_t> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_blas_chemm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> IO CInt
#ccall gsl_blas_cherk , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> CFloat -> Ptr <gsl_matrix_complex_float> -> CFloat -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_cher2k , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <gsl_complex_float> -> Ptr <gsl_matrix_complex_float> -> Ptr <gsl_matrix_complex_float> -> CFloat -> Ptr <gsl_matrix_complex_float> -> IO CInt
-- ccall gsl_blas_zhemm , <CBLAS_SIDE_t> -> <CBLAS_UPLO_t> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_blas_zherk , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> CDouble -> Ptr <gsl_matrix_complex> -> CDouble -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_blas_zher2k , <CBLAS_UPLO_t> -> <CBLAS_TRANSPOSE_t> -> <gsl_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> CDouble -> Ptr <gsl_matrix_complex> -> IO CInt

