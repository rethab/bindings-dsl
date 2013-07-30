#include <bindings.dsl.h>
#include <gsl/gsl_cblas.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/GSL-CBLAS-Library.html>

module Bindings.Gsl.Cblas where
#strict_import

#integral_t CBLAS_INDEX
#integral_t enum CBLAS_ORDER

#num CblasRowMajor
#num CblasColMajor

#integral_t enum CBLAS_TRANSPOSE

#num CblasNoTrans
#num CblasTrans
#num CblasConjTrans

#integral_t enum CBLAS_UPLO

#num CblasUpper
#num CblasLower

#integral_t enum CBLAS_DIAG

#num CblasNonUnit
#num CblasUnit

#integral_t enum CBLAS_SIDE

#num CblasLeft
#num CblasRight

#ccall cblas_sdsdot , CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO CFloat
#ccall cblas_dsdot , CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO CDouble
#ccall cblas_sdot , CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO CFloat
#ccall cblas_ddot , CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO CDouble
#ccall cblas_cdotu_sub , CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> IO ()
#ccall cblas_cdotc_sub , CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> IO ()
#ccall cblas_zdotu_sub , CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> IO ()
#ccall cblas_zdotc_sub , CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> IO ()
#ccall cblas_snrm2 , CInt -> CInt -> Ptr CFloat -> CInt -> IO CFloat
#ccall cblas_sasum , CInt -> CInt -> Ptr CFloat -> CInt -> IO CFloat
#ccall cblas_dnrm2 , CInt -> CInt -> Ptr CDouble -> CInt -> IO CDouble
#ccall cblas_dasum , CInt -> CInt -> Ptr CDouble -> CInt -> IO CDouble
#ccall cblas_scnrm2 , CInt -> CInt -> Ptr () -> CInt -> IO CFloat
#ccall cblas_scasum , CInt -> CInt -> Ptr () -> CInt -> IO CFloat
#ccall cblas_dznrm2 , CInt -> CInt -> Ptr () -> CInt -> IO CDouble
#ccall cblas_dzasum , CInt -> CInt -> Ptr () -> CInt -> IO CDouble
-- #ccall cblas_isamax , CInt -> CInt -> Ptr CFloat -> CInt -> IO <CBLAS_INDEX>
-- #ccall cblas_idamax , CInt -> CInt -> Ptr CDouble -> CInt -> IO <CBLAS_INDEX>
-- #ccall cblas_icamax , CInt -> CInt -> Ptr () -> CInt -> IO <CBLAS_INDEX>
-- #ccall cblas_izamax , CInt -> CInt -> Ptr () -> CInt -> IO <CBLAS_INDEX>
#ccall cblas_sswap , CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_scopy , CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_saxpy , CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_dswap , CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dcopy , CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_daxpy , CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_cswap , CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ccopy , CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_caxpy , CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_zswap , CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_zcopy , CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_zaxpy , CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_srotg , Ptr CFloat -> Ptr CFloat -> Ptr CFloat -> Ptr CFloat -> IO ()
#ccall cblas_srotmg , Ptr CFloat -> Ptr CFloat -> Ptr CFloat -> CFloat -> Ptr CFloat -> IO ()
#ccall cblas_srot , CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> CFloat -> CFloat -> IO ()
#ccall cblas_srotm , CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> IO ()
#ccall cblas_drotg , Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall cblas_drotmg , Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> CDouble -> Ptr CDouble -> IO ()
#ccall cblas_drot , CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> CDouble -> CDouble -> IO ()
#ccall cblas_drotm , CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> IO ()
#ccall cblas_sscal , CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_dscal , CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_cscal , CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_zscal , CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_csscal , CInt -> CInt -> CFloat -> Ptr () -> CInt -> IO ()
#ccall cblas_zdscal , CInt -> CInt -> CDouble -> Ptr () -> CInt -> IO ()
#ccall cblas_sgemv , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_sgbmv , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_strmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_stbmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_stpmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_strsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_stbsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_stpsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_dgemv , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dgbmv , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dtrmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dtbmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dtpmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dtrsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dtbsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dtpsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_cgemv , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_cgbmv , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_ctrmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ctbmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ctpmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_ctrsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ctbsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ctpsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_zgemv , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_zgbmv , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_ztrmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ztbmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ztpmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_ztrsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ztbsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ztpsv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_ssymv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_ssbmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_sspmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CFloat -> Ptr CFloat -> Ptr CFloat -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_sger , <CBLAS_ORDER> -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_ssyr , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_sspr , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> IO ()
#ccall cblas_ssyr2 , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_sspr2 , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> IO ()
#ccall cblas_dsymv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dsbmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dspmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CDouble -> Ptr CDouble -> Ptr CDouble -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dger , <CBLAS_ORDER> -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dsyr , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dspr , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> IO ()
#ccall cblas_dsyr2 , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dspr2 , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> IO ()
#ccall cblas_chemv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_chbmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_chpmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> Ptr () -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_cgeru , <CBLAS_ORDER> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_cgerc , <CBLAS_ORDER> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_cher , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CFloat -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_chpr , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CFloat -> Ptr () -> CInt -> CInt -> Ptr () -> IO ()
#ccall cblas_cher2 , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_chpr2 , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> IO ()
#ccall cblas_zhemv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_zhbmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_zhpmv , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> Ptr () -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_zgeru , <CBLAS_ORDER> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_zgerc , <CBLAS_ORDER> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_zher , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CDouble -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_zhpr , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> CDouble -> Ptr () -> CInt -> CInt -> Ptr () -> IO ()
#ccall cblas_zher2 , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_zhpr2 , <CBLAS_ORDER> -> <CBLAS_UPLO> -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> IO ()
#ccall cblas_sgemm , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_ssymm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_ssyrk , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_ssyr2k , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_strmm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_strsm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr CFloat -> CInt -> CInt -> Ptr CFloat -> CInt -> IO ()
#ccall cblas_dgemm , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dsymm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dsyrk , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dsyr2k , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dtrmm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_dtrsm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr CDouble -> CInt -> CInt -> Ptr CDouble -> CInt -> IO ()
#ccall cblas_cgemm , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_csymm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_csyrk , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_csyr2k , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_ctrmm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ctrsm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_zgemm , <CBLAS_ORDER> -> <CBLAS_TRANSPOSE> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_zsymm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_zsyrk , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_zsyr2k , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_ztrmm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_ztrsm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> <CBLAS_DIAG> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> IO ()
#ccall cblas_chemm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_cherk , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CFloat -> Ptr () -> CInt -> CInt -> CFloat -> Ptr () -> CInt -> IO ()
#ccall cblas_cher2k , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> CFloat -> Ptr () -> CInt -> IO ()
#ccall cblas_zhemm , <CBLAS_ORDER> -> <CBLAS_SIDE> -> <CBLAS_UPLO> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> IO ()
#ccall cblas_zherk , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> CDouble -> Ptr () -> CInt -> CInt -> CDouble -> Ptr () -> CInt -> IO ()
#ccall cblas_zher2k , <CBLAS_ORDER> -> <CBLAS_UPLO> -> <CBLAS_TRANSPOSE> -> CInt -> CInt -> CInt -> CInt -> Ptr () -> Ptr () -> CInt -> CInt -> Ptr () -> CInt -> CInt -> CDouble -> Ptr () -> CInt -> IO ()

