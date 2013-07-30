#include <bindings.dsl.h>
#include <gsl/gsl_histogram.h>
#include <gsl/gsl_histogram2d.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Histograms.html>

module Bindings.Gsl.Histograms where
#strict_import

#starttype gsl_histogram
#field n , CSize
#field range , Ptr CDouble
#field bin , Ptr CDouble
#stoptype

#starttype gsl_histogram_pdf
#field n , CSize
#field range , Ptr CDouble
#field sum , Ptr CDouble
#stoptype

#ccall gsl_histogram_alloc , CSize -> IO (Ptr <gsl_histogram>)
#ccall gsl_histogram_calloc , CSize -> IO (Ptr <gsl_histogram>)
#ccall gsl_histogram_calloc_uniform , CSize -> CDouble -> CDouble -> IO (Ptr <gsl_histogram>)
#ccall gsl_histogram_free , Ptr <gsl_histogram> -> IO ()
#ccall gsl_histogram_increment , Ptr <gsl_histogram> -> CDouble -> IO CInt
#ccall gsl_histogram_accumulate , Ptr <gsl_histogram> -> CDouble -> CDouble -> IO CInt
#ccall gsl_histogram_find , Ptr <gsl_histogram> -> CDouble -> Ptr CSize -> IO CInt
#ccall gsl_histogram_get , Ptr <gsl_histogram> -> CSize -> IO CDouble
#ccall gsl_histogram_get_range , Ptr <gsl_histogram> -> CSize -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_histogram_max , Ptr <gsl_histogram> -> IO CDouble
#ccall gsl_histogram_min , Ptr <gsl_histogram> -> IO CDouble
#ccall gsl_histogram_bins , Ptr <gsl_histogram> -> IO CSize
#ccall gsl_histogram_reset , Ptr <gsl_histogram> -> IO ()
#ccall gsl_histogram_calloc_range , CSize -> Ptr CDouble -> IO (Ptr <gsl_histogram>)
#ccall gsl_histogram_set_ranges , Ptr <gsl_histogram> -> Ptr CDouble -> CSize -> IO CInt
#ccall gsl_histogram_set_ranges_uniform , Ptr <gsl_histogram> -> CDouble -> CDouble -> IO CInt
#ccall gsl_histogram_memcpy , Ptr <gsl_histogram> -> Ptr <gsl_histogram> -> IO CInt
#ccall gsl_histogram_clone , Ptr <gsl_histogram> -> IO (Ptr <gsl_histogram>)
#ccall gsl_histogram_max_val , Ptr <gsl_histogram> -> IO CDouble
#ccall gsl_histogram_max_bin , Ptr <gsl_histogram> -> IO CSize
#ccall gsl_histogram_min_val , Ptr <gsl_histogram> -> IO CDouble
#ccall gsl_histogram_min_bin , Ptr <gsl_histogram> -> IO CSize
#ccall gsl_histogram_equal_bins_p , Ptr <gsl_histogram> -> Ptr <gsl_histogram> -> IO CInt
#ccall gsl_histogram_add , Ptr <gsl_histogram> -> Ptr <gsl_histogram> -> IO CInt
#ccall gsl_histogram_sub , Ptr <gsl_histogram> -> Ptr <gsl_histogram> -> IO CInt
#ccall gsl_histogram_mul , Ptr <gsl_histogram> -> Ptr <gsl_histogram> -> IO CInt
#ccall gsl_histogram_div , Ptr <gsl_histogram> -> Ptr <gsl_histogram> -> IO CInt
#ccall gsl_histogram_scale , Ptr <gsl_histogram> -> CDouble -> IO CInt
#ccall gsl_histogram_shift , Ptr <gsl_histogram> -> CDouble -> IO CInt
#ccall gsl_histogram_sigma , Ptr <gsl_histogram> -> IO CDouble
#ccall gsl_histogram_mean , Ptr <gsl_histogram> -> IO CDouble
#ccall gsl_histogram_sum , Ptr <gsl_histogram> -> IO CDouble
#ccall gsl_histogram_fwrite , Ptr CFile -> Ptr <gsl_histogram> -> IO CInt
#ccall gsl_histogram_fread , Ptr CFile -> Ptr <gsl_histogram> -> IO CInt
#ccall gsl_histogram_fprintf , Ptr CFile -> Ptr <gsl_histogram> -> CString -> CString -> IO CInt
#ccall gsl_histogram_fscanf , Ptr CFile -> Ptr <gsl_histogram> -> IO CInt
#ccall gsl_histogram_pdf_alloc , CSize -> IO (Ptr <gsl_histogram_pdf>)
#ccall gsl_histogram_pdf_init , Ptr <gsl_histogram_pdf> -> Ptr <gsl_histogram> -> IO CInt
#ccall gsl_histogram_pdf_free , Ptr <gsl_histogram_pdf> -> IO ()
#ccall gsl_histogram_pdf_sample , Ptr <gsl_histogram_pdf> -> CDouble -> IO CDouble

#starttype gsl_histogram2d
#field nx , CSize
#field ny , CSize
#field xrange , Ptr CDouble
#field yrange , Ptr CDouble
#field bin , Ptr CDouble
#stoptype

#starttype gsl_histogram2d_pdf
#field nx , CSize
#field ny , CSize
#field xrange , Ptr CDouble
#field yrange , Ptr CDouble
#field sum , Ptr CDouble
#stoptype

#ccall gsl_histogram2d_alloc , CSize -> CSize -> IO (Ptr <gsl_histogram2d>)
#ccall gsl_histogram2d_calloc , CSize -> CSize -> IO (Ptr <gsl_histogram2d>)
#ccall gsl_histogram2d_calloc_uniform , CSize -> CSize -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Ptr <gsl_histogram2d>)
#ccall gsl_histogram2d_free , Ptr <gsl_histogram2d> -> IO ()
#ccall gsl_histogram2d_increment , Ptr <gsl_histogram2d> -> CDouble -> CDouble -> IO CInt
#ccall gsl_histogram2d_accumulate , Ptr <gsl_histogram2d> -> CDouble -> CDouble -> CDouble -> IO CInt
#ccall gsl_histogram2d_find , Ptr <gsl_histogram2d> -> CDouble -> CDouble -> Ptr CSize -> Ptr CSize -> IO CInt
#ccall gsl_histogram2d_get , Ptr <gsl_histogram2d> -> CSize -> CSize -> IO CDouble
#ccall gsl_histogram2d_get_xrange , Ptr <gsl_histogram2d> -> CSize -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_histogram2d_get_yrange , Ptr <gsl_histogram2d> -> CSize -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_histogram2d_xmax , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_xmin , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_nx , Ptr <gsl_histogram2d> -> IO CSize
#ccall gsl_histogram2d_ymax , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_ymin , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_ny , Ptr <gsl_histogram2d> -> IO CSize
#ccall gsl_histogram2d_reset , Ptr <gsl_histogram2d> -> IO ()
#ccall gsl_histogram2d_calloc_range , CSize -> CSize -> Ptr CDouble -> Ptr CDouble -> IO (Ptr <gsl_histogram2d>)
#ccall gsl_histogram2d_set_ranges_uniform , Ptr <gsl_histogram2d> -> CDouble -> CDouble -> CDouble -> CDouble -> IO CInt
#ccall gsl_histogram2d_set_ranges , Ptr <gsl_histogram2d> -> Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> IO CInt
#ccall gsl_histogram2d_memcpy , Ptr <gsl_histogram2d> -> Ptr <gsl_histogram2d> -> IO CInt
#ccall gsl_histogram2d_clone , Ptr <gsl_histogram2d> -> IO (Ptr <gsl_histogram2d>)
#ccall gsl_histogram2d_max_val , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_max_bin , Ptr <gsl_histogram2d> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_histogram2d_min_val , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_min_bin , Ptr <gsl_histogram2d> -> Ptr CSize -> Ptr CSize -> IO ()
#ccall gsl_histogram2d_xmean , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_ymean , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_xsigma , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_ysigma , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_cov , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_sum , Ptr <gsl_histogram2d> -> IO CDouble
#ccall gsl_histogram2d_equal_bins_p , Ptr <gsl_histogram2d> -> Ptr <gsl_histogram2d> -> IO CInt
#ccall gsl_histogram2d_add , Ptr <gsl_histogram2d> -> Ptr <gsl_histogram2d> -> IO CInt
#ccall gsl_histogram2d_sub , Ptr <gsl_histogram2d> -> Ptr <gsl_histogram2d> -> IO CInt
#ccall gsl_histogram2d_mul , Ptr <gsl_histogram2d> -> Ptr <gsl_histogram2d> -> IO CInt
#ccall gsl_histogram2d_div , Ptr <gsl_histogram2d> -> Ptr <gsl_histogram2d> -> IO CInt
#ccall gsl_histogram2d_scale , Ptr <gsl_histogram2d> -> CDouble -> IO CInt
#ccall gsl_histogram2d_shift , Ptr <gsl_histogram2d> -> CDouble -> IO CInt
#ccall gsl_histogram2d_fwrite , Ptr CFile -> Ptr <gsl_histogram2d> -> IO CInt
#ccall gsl_histogram2d_fread , Ptr CFile -> Ptr <gsl_histogram2d> -> IO CInt
#ccall gsl_histogram2d_fprintf , Ptr CFile -> Ptr <gsl_histogram2d> -> CString -> CString -> IO CInt
#ccall gsl_histogram2d_fscanf , Ptr CFile -> Ptr <gsl_histogram2d> -> IO CInt
#ccall gsl_histogram2d_pdf_alloc , CSize -> CSize -> IO (Ptr <gsl_histogram2d_pdf>)
#ccall gsl_histogram2d_pdf_init , Ptr <gsl_histogram2d_pdf> -> Ptr <gsl_histogram2d> -> IO CInt
#ccall gsl_histogram2d_pdf_free , Ptr <gsl_histogram2d_pdf> -> IO ()
#ccall gsl_histogram2d_pdf_sample , Ptr <gsl_histogram2d_pdf> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt

