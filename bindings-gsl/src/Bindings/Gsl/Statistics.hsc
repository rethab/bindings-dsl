#include <bindings.dsl.h>
#include <gsl/gsl_statistics.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Statistics.html>

module Bindings.Gsl.Statistics where
#strict_import

#ccall gsl_stats_char_mean , CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_variance , CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_sd , CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_variance_with_fixed_mean , CString -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_char_sd_with_fixed_mean , CString -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_char_tss , CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_tss_m , CString -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_char_absdev , CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_skew , CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_kurtosis , CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_lag1_autocorrelation , CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_covariance , CString -> CSize -> CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_correlation , CString -> CSize -> CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_variance_m , CString -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_char_sd_m , CString -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_char_absdev_m , CString -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_char_skew_m_sd , CString -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_char_kurtosis_m_sd , CString -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_char_lag1_autocorrelation_m , CString -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_char_covariance_m , CString -> CSize -> CString -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_char_pvariance , CString -> CSize -> CSize -> CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_ttest , CString -> CSize -> CSize -> CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_max , CString -> CSize -> CSize -> IO CChar
#ccall gsl_stats_char_min , CString -> CSize -> CSize -> IO CChar
#ccall gsl_stats_char_minmax , CString -> CString -> CString -> CSize -> CSize -> IO ()
#ccall gsl_stats_char_max_index , CString -> CSize -> CSize -> IO CSize
#ccall gsl_stats_char_min_index , CString -> CSize -> CSize -> IO CSize
#ccall gsl_stats_char_minmax_index , Ptr CSize -> Ptr CSize -> CString -> CSize -> CSize -> IO ()
#ccall gsl_stats_char_median_from_sorted_data , CString -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_char_quantile_from_sorted_data , CString -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_mean , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_variance , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_sd , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_variance_with_fixed_mean , Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_sd_with_fixed_mean , Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_tss , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_tss_m , Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_absdev , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_skew , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_kurtosis , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_lag1_autocorrelation , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_covariance , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_correlation , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_variance_m , Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_sd_m , Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_absdev_m , Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_skew_m_sd , Ptr CDouble -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_kurtosis_m_sd , Ptr CDouble -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_lag1_autocorrelation_m , Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_covariance_m , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_wmean , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_wvariance , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_wsd , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_wvariance_with_fixed_mean , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_wsd_with_fixed_mean , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_wtss , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_wtss_m , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_wabsdev , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_wskew , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_wkurtosis , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_wvariance_m , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_wsd_m , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_wabsdev_m , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_wskew_m_sd , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_wkurtosis_m_sd , Ptr CDouble -> CSize -> Ptr CDouble -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_pvariance , Ptr CDouble -> CSize -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ttest , Ptr CDouble -> CSize -> CSize -> Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_max , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_min , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_minmax , Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> CSize -> CSize -> IO ()
#ccall gsl_stats_max_index , Ptr CDouble -> CSize -> CSize -> IO CSize
#ccall gsl_stats_min_index , Ptr CDouble -> CSize -> CSize -> IO CSize
#ccall gsl_stats_minmax_index , Ptr CSize -> Ptr CSize -> Ptr CDouble -> CSize -> CSize -> IO ()
#ccall gsl_stats_median_from_sorted_data , Ptr CDouble -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_quantile_from_sorted_data , Ptr CDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_mean , Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_variance , Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_sd , Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_variance_with_fixed_mean , Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_sd_with_fixed_mean , Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_tss , Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_tss_m , Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_absdev , Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_skew , Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_kurtosis , Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_lag1_autocorrelation , Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_covariance , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_correlation , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_variance_m , Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_sd_m , Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_absdev_m , Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_skew_m_sd , Ptr CFloat -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_float_kurtosis_m_sd , Ptr CFloat -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_float_lag1_autocorrelation_m , Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_covariance_m , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_float_wmean , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_wvariance , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_wsd , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_wvariance_with_fixed_mean , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_wsd_with_fixed_mean , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_wtss , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_wtss_m , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_wabsdev , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_wskew , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_wkurtosis , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_wvariance_m , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_wsd_m , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_wabsdev_m , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_float_wskew_m_sd , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_float_wkurtosis_m_sd , Ptr CFloat -> CSize -> Ptr CFloat -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_float_pvariance , Ptr CFloat -> CSize -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_ttest , Ptr CFloat -> CSize -> CSize -> Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_max , Ptr CFloat -> CSize -> CSize -> IO CFloat
#ccall gsl_stats_float_min , Ptr CFloat -> CSize -> CSize -> IO CFloat
#ccall gsl_stats_float_minmax , Ptr CFloat -> Ptr CFloat -> Ptr CFloat -> CSize -> CSize -> IO ()
#ccall gsl_stats_float_max_index , Ptr CFloat -> CSize -> CSize -> IO CSize
#ccall gsl_stats_float_min_index , Ptr CFloat -> CSize -> CSize -> IO CSize
#ccall gsl_stats_float_minmax_index , Ptr CSize -> Ptr CSize -> Ptr CFloat -> CSize -> CSize -> IO ()
#ccall gsl_stats_float_median_from_sorted_data , Ptr CFloat -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_float_quantile_from_sorted_data , Ptr CFloat -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_int_mean , Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_variance , Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_sd , Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_variance_with_fixed_mean , Ptr CInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_int_sd_with_fixed_mean , Ptr CInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_int_tss , Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_tss_m , Ptr CInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_int_absdev , Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_skew , Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_kurtosis , Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_lag1_autocorrelation , Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_covariance , Ptr CInt -> CSize -> Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_correlation , Ptr CInt -> CSize -> Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_variance_m , Ptr CInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_int_sd_m , Ptr CInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_int_absdev_m , Ptr CInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_int_skew_m_sd , Ptr CInt -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_int_kurtosis_m_sd , Ptr CInt -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_int_lag1_autocorrelation_m , Ptr CInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_int_covariance_m , Ptr CInt -> CSize -> Ptr CInt -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_int_pvariance , Ptr CInt -> CSize -> CSize -> Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_ttest , Ptr CInt -> CSize -> CSize -> Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_max , Ptr CInt -> CSize -> CSize -> IO CInt
#ccall gsl_stats_int_min , Ptr CInt -> CSize -> CSize -> IO CInt
#ccall gsl_stats_int_minmax , Ptr CInt -> Ptr CInt -> Ptr CInt -> CSize -> CSize -> IO ()
#ccall gsl_stats_int_max_index , Ptr CInt -> CSize -> CSize -> IO CSize
#ccall gsl_stats_int_min_index , Ptr CInt -> CSize -> CSize -> IO CSize
#ccall gsl_stats_int_minmax_index , Ptr CSize -> Ptr CSize -> Ptr CInt -> CSize -> CSize -> IO ()
#ccall gsl_stats_int_median_from_sorted_data , Ptr CInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_int_quantile_from_sorted_data , Ptr CInt -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_mean , Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_variance , Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_sd , Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_variance_with_fixed_mean , Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_sd_with_fixed_mean , Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_tss , Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_tss_m , Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_absdev , Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_skew , Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_kurtosis , Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_lag1_autocorrelation , Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_covariance , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_correlation , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_variance_m , Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_sd_m , Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_absdev_m , Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_skew_m_sd , Ptr CLDouble -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_kurtosis_m_sd , Ptr CLDouble -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_lag1_autocorrelation_m , Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_covariance_m , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_wmean , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_wvariance , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_wsd , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_wvariance_with_fixed_mean , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_wsd_with_fixed_mean , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_wtss , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_wtss_m , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_wabsdev , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_wskew , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_wkurtosis , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_wvariance_m , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_wsd_m , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_wabsdev_m , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_wskew_m_sd , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_wkurtosis_m_sd , Ptr CLDouble -> CSize -> Ptr CLDouble -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
-- #ccall gsl_stats_long_double_pvariance , Ptr CLDouble -> CSize -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_ttest , Ptr CLDouble -> CSize -> CSize -> Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_max , Ptr CLDouble -> CSize -> CSize -> IO CLDouble
-- #ccall gsl_stats_long_double_min , Ptr CLDouble -> CSize -> CSize -> IO CLDouble
-- #ccall gsl_stats_long_double_minmax , Ptr CLDouble -> Ptr CLDouble -> Ptr CLDouble -> CSize -> CSize -> IO ()
-- #ccall gsl_stats_long_double_max_index , Ptr CLDouble -> CSize -> CSize -> IO CSize
-- #ccall gsl_stats_long_double_min_index , Ptr CLDouble -> CSize -> CSize -> IO CSize
-- #ccall gsl_stats_long_double_minmax_index , Ptr CSize -> Ptr CSize -> Ptr CLDouble -> CSize -> CSize -> IO ()
-- #ccall gsl_stats_long_double_median_from_sorted_data , Ptr CLDouble -> CSize -> CSize -> IO CDouble
-- #ccall gsl_stats_long_double_quantile_from_sorted_data , Ptr CLDouble -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_long_mean , Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_variance , Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_sd , Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_variance_with_fixed_mean , Ptr CLong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_long_sd_with_fixed_mean , Ptr CLong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_long_tss , Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_tss_m , Ptr CLong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_long_absdev , Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_skew , Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_kurtosis , Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_lag1_autocorrelation , Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_covariance , Ptr CLong -> CSize -> Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_correlation , Ptr CLong -> CSize -> Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_variance_m , Ptr CLong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_long_sd_m , Ptr CLong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_long_absdev_m , Ptr CLong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_long_skew_m_sd , Ptr CLong -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_long_kurtosis_m_sd , Ptr CLong -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_long_lag1_autocorrelation_m , Ptr CLong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_long_covariance_m , Ptr CLong -> CSize -> Ptr CLong -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_long_pvariance , Ptr CLong -> CSize -> CSize -> Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_ttest , Ptr CLong -> CSize -> CSize -> Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_max , Ptr CLong -> CSize -> CSize -> IO CLong
#ccall gsl_stats_long_min , Ptr CLong -> CSize -> CSize -> IO CLong
#ccall gsl_stats_long_minmax , Ptr CLong -> Ptr CLong -> Ptr CLong -> CSize -> CSize -> IO ()
#ccall gsl_stats_long_max_index , Ptr CLong -> CSize -> CSize -> IO CSize
#ccall gsl_stats_long_min_index , Ptr CLong -> CSize -> CSize -> IO CSize
#ccall gsl_stats_long_minmax_index , Ptr CSize -> Ptr CSize -> Ptr CLong -> CSize -> CSize -> IO ()
#ccall gsl_stats_long_median_from_sorted_data , Ptr CLong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_long_quantile_from_sorted_data , Ptr CLong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_short_mean , Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_variance , Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_sd , Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_variance_with_fixed_mean , Ptr CShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_short_sd_with_fixed_mean , Ptr CShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_short_tss , Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_tss_m , Ptr CShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_short_absdev , Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_skew , Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_kurtosis , Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_lag1_autocorrelation , Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_covariance , Ptr CShort -> CSize -> Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_correlation , Ptr CShort -> CSize -> Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_variance_m , Ptr CShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_short_sd_m , Ptr CShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_short_absdev_m , Ptr CShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_short_skew_m_sd , Ptr CShort -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_short_kurtosis_m_sd , Ptr CShort -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_short_lag1_autocorrelation_m , Ptr CShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_short_covariance_m , Ptr CShort -> CSize -> Ptr CShort -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_short_pvariance , Ptr CShort -> CSize -> CSize -> Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_ttest , Ptr CShort -> CSize -> CSize -> Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_max , Ptr CShort -> CSize -> CSize -> IO CShort
#ccall gsl_stats_short_min , Ptr CShort -> CSize -> CSize -> IO CShort
#ccall gsl_stats_short_minmax , Ptr CShort -> Ptr CShort -> Ptr CShort -> CSize -> CSize -> IO ()
#ccall gsl_stats_short_max_index , Ptr CShort -> CSize -> CSize -> IO CSize
#ccall gsl_stats_short_min_index , Ptr CShort -> CSize -> CSize -> IO CSize
#ccall gsl_stats_short_minmax_index , Ptr CSize -> Ptr CSize -> Ptr CShort -> CSize -> CSize -> IO ()
#ccall gsl_stats_short_median_from_sorted_data , Ptr CShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_short_quantile_from_sorted_data , Ptr CShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_mean , Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_variance , Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_sd , Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_variance_with_fixed_mean , Ptr CUChar -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_sd_with_fixed_mean , Ptr CUChar -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_tss , Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_tss_m , Ptr CUChar -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_absdev , Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_skew , Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_kurtosis , Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_lag1_autocorrelation , Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_covariance , Ptr CUChar -> CSize -> Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_correlation , Ptr CUChar -> CSize -> Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_variance_m , Ptr CUChar -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_sd_m , Ptr CUChar -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_absdev_m , Ptr CUChar -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_skew_m_sd , Ptr CUChar -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_kurtosis_m_sd , Ptr CUChar -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_lag1_autocorrelation_m , Ptr CUChar -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_covariance_m , Ptr CUChar -> CSize -> Ptr CUChar -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_uchar_pvariance , Ptr CUChar -> CSize -> CSize -> Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_ttest , Ptr CUChar -> CSize -> CSize -> Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_max , Ptr CUChar -> CSize -> CSize -> IO CUChar
#ccall gsl_stats_uchar_min , Ptr CUChar -> CSize -> CSize -> IO CUChar
#ccall gsl_stats_uchar_minmax , Ptr CUChar -> Ptr CUChar -> Ptr CUChar -> CSize -> CSize -> IO ()
#ccall gsl_stats_uchar_max_index , Ptr CUChar -> CSize -> CSize -> IO CSize
#ccall gsl_stats_uchar_min_index , Ptr CUChar -> CSize -> CSize -> IO CSize
#ccall gsl_stats_uchar_minmax_index , Ptr CSize -> Ptr CSize -> Ptr CUChar -> CSize -> CSize -> IO ()
#ccall gsl_stats_uchar_median_from_sorted_data , Ptr CUChar -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uchar_quantile_from_sorted_data , Ptr CUChar -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uint_mean , Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_variance , Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_sd , Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_variance_with_fixed_mean , Ptr CUInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uint_sd_with_fixed_mean , Ptr CUInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uint_tss , Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_tss_m , Ptr CUInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uint_absdev , Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_skew , Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_kurtosis , Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_lag1_autocorrelation , Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_covariance , Ptr CUInt -> CSize -> Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_correlation , Ptr CUInt -> CSize -> Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_variance_m , Ptr CUInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uint_sd_m , Ptr CUInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uint_absdev_m , Ptr CUInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uint_skew_m_sd , Ptr CUInt -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_uint_kurtosis_m_sd , Ptr CUInt -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_uint_lag1_autocorrelation_m , Ptr CUInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_uint_covariance_m , Ptr CUInt -> CSize -> Ptr CUInt -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_uint_pvariance , Ptr CUInt -> CSize -> CSize -> Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_ttest , Ptr CUInt -> CSize -> CSize -> Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_max , Ptr CUInt -> CSize -> CSize -> IO CUInt
#ccall gsl_stats_uint_min , Ptr CUInt -> CSize -> CSize -> IO CUInt
#ccall gsl_stats_uint_minmax , Ptr CUInt -> Ptr CUInt -> Ptr CUInt -> CSize -> CSize -> IO ()
#ccall gsl_stats_uint_max_index , Ptr CUInt -> CSize -> CSize -> IO CSize
#ccall gsl_stats_uint_min_index , Ptr CUInt -> CSize -> CSize -> IO CSize
#ccall gsl_stats_uint_minmax_index , Ptr CSize -> Ptr CSize -> Ptr CUInt -> CSize -> CSize -> IO ()
#ccall gsl_stats_uint_median_from_sorted_data , Ptr CUInt -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_uint_quantile_from_sorted_data , Ptr CUInt -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_mean , Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_variance , Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_sd , Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_variance_with_fixed_mean , Ptr CULong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_sd_with_fixed_mean , Ptr CULong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_tss , Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_tss_m , Ptr CULong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_absdev , Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_skew , Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_kurtosis , Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_lag1_autocorrelation , Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_covariance , Ptr CULong -> CSize -> Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_correlation , Ptr CULong -> CSize -> Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_variance_m , Ptr CULong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_sd_m , Ptr CULong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_absdev_m , Ptr CULong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_skew_m_sd , Ptr CULong -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_kurtosis_m_sd , Ptr CULong -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_lag1_autocorrelation_m , Ptr CULong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_covariance_m , Ptr CULong -> CSize -> Ptr CULong -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_ulong_pvariance , Ptr CULong -> CSize -> CSize -> Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_ttest , Ptr CULong -> CSize -> CSize -> Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_max , Ptr CULong -> CSize -> CSize -> IO CULong
#ccall gsl_stats_ulong_min , Ptr CULong -> CSize -> CSize -> IO CULong
#ccall gsl_stats_ulong_minmax , Ptr CULong -> Ptr CULong -> Ptr CULong -> CSize -> CSize -> IO ()
#ccall gsl_stats_ulong_max_index , Ptr CULong -> CSize -> CSize -> IO CSize
#ccall gsl_stats_ulong_min_index , Ptr CULong -> CSize -> CSize -> IO CSize
#ccall gsl_stats_ulong_minmax_index , Ptr CSize -> Ptr CSize -> Ptr CULong -> CSize -> CSize -> IO ()
#ccall gsl_stats_ulong_median_from_sorted_data , Ptr CULong -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ulong_quantile_from_sorted_data , Ptr CULong -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_mean , Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_variance , Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_sd , Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_variance_with_fixed_mean , Ptr CUShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_sd_with_fixed_mean , Ptr CUShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_tss , Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_tss_m , Ptr CUShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_absdev , Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_skew , Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_kurtosis , Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_lag1_autocorrelation , Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_covariance , Ptr CUShort -> CSize -> Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_correlation , Ptr CUShort -> CSize -> Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_variance_m , Ptr CUShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_sd_m , Ptr CUShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_absdev_m , Ptr CUShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_skew_m_sd , Ptr CUShort -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_kurtosis_m_sd , Ptr CUShort -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_lag1_autocorrelation_m , Ptr CUShort -> CSize -> CSize -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_covariance_m , Ptr CUShort -> CSize -> Ptr CUShort -> CSize -> CSize -> CDouble -> CDouble -> IO CDouble
#ccall gsl_stats_ushort_pvariance , Ptr CUShort -> CSize -> CSize -> Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_ttest , Ptr CUShort -> CSize -> CSize -> Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_max , Ptr CUShort -> CSize -> CSize -> IO CUShort
#ccall gsl_stats_ushort_min , Ptr CUShort -> CSize -> CSize -> IO CUShort
#ccall gsl_stats_ushort_minmax , Ptr CUShort -> Ptr CUShort -> Ptr CUShort -> CSize -> CSize -> IO ()
#ccall gsl_stats_ushort_max_index , Ptr CUShort -> CSize -> CSize -> IO CSize
#ccall gsl_stats_ushort_min_index , Ptr CUShort -> CSize -> CSize -> IO CSize
#ccall gsl_stats_ushort_minmax_index , Ptr CSize -> Ptr CSize -> Ptr CUShort -> CSize -> CSize -> IO ()
#ccall gsl_stats_ushort_median_from_sorted_data , Ptr CUShort -> CSize -> CSize -> IO CDouble
#ccall gsl_stats_ushort_quantile_from_sorted_data , Ptr CUShort -> CSize -> CSize -> CDouble -> IO CDouble

