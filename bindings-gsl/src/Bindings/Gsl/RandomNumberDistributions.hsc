#include <bindings.dsl.h>
#include <gsl/gsl_randist.h>
#include <gsl/gsl_cdf.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Random-Number-Distributions.html>

module Bindings.Gsl.RandomNumberDistributions where
#strict_import
import Bindings.Gsl.RandomNumberGeneration

#ccall gsl_ran_bernoulli , Ptr <gsl_rng> -> CDouble -> IO CUInt
#ccall gsl_ran_bernoulli_pdf , CUInt -> CDouble -> IO CDouble
#ccall gsl_ran_beta , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_beta_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_binomial , Ptr <gsl_rng> -> CDouble -> CUInt -> IO CUInt
#ccall gsl_ran_binomial_knuth , Ptr <gsl_rng> -> CDouble -> CUInt -> IO CUInt
#ccall gsl_ran_binomial_tpe , Ptr <gsl_rng> -> CDouble -> CUInt -> IO CUInt
#ccall gsl_ran_binomial_pdf , CUInt -> CDouble -> CUInt -> IO CDouble
#ccall gsl_ran_exponential , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_exponential_pdf , CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_exppow , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_exppow_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_cauchy , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_cauchy_pdf , CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_chisq , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_chisq_pdf , CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_dirichlet , Ptr <gsl_rng> -> CSize -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_ran_dirichlet_pdf , CSize -> Ptr CDouble -> Ptr CDouble -> IO CDouble
#ccall gsl_ran_dirichlet_lnpdf , CSize -> Ptr CDouble -> Ptr CDouble -> IO CDouble
#ccall gsl_ran_erlang , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_erlang_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_fdist , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_fdist_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_flat , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_flat_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_gamma , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_gamma_int , Ptr <gsl_rng> -> CUInt -> IO CDouble
#ccall gsl_ran_gamma_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_gamma_mt , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_gamma_knuth , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_gaussian , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_gaussian_ratio_method , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_gaussian_ziggurat , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_gaussian_pdf , CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_ugaussian , Ptr <gsl_rng> -> IO CDouble
#ccall gsl_ran_ugaussian_ratio_method , Ptr <gsl_rng> -> IO CDouble
#ccall gsl_ran_ugaussian_pdf , CDouble -> IO CDouble
#ccall gsl_ran_gaussian_tail , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_gaussian_tail_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_ugaussian_tail , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_ugaussian_tail_pdf , CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_bivariate_gaussian , Ptr <gsl_rng> -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_ran_bivariate_gaussian_pdf , CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_landau , Ptr <gsl_rng> -> IO CDouble
#ccall gsl_ran_landau_pdf , CDouble -> IO CDouble
#ccall gsl_ran_geometric , Ptr <gsl_rng> -> CDouble -> IO CUInt
#ccall gsl_ran_geometric_pdf , CUInt -> CDouble -> IO CDouble
#ccall gsl_ran_hypergeometric , Ptr <gsl_rng> -> CUInt -> CUInt -> CUInt -> IO CUInt
#ccall gsl_ran_hypergeometric_pdf , CUInt -> CUInt -> CUInt -> CUInt -> IO CDouble
#ccall gsl_ran_gumbel1 , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_gumbel1_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_gumbel2 , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_gumbel2_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_logistic , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_logistic_pdf , CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_lognormal , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_lognormal_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_logarithmic , Ptr <gsl_rng> -> CDouble -> IO CUInt
#ccall gsl_ran_logarithmic_pdf , CUInt -> CDouble -> IO CDouble
#ccall gsl_ran_multinomial , Ptr <gsl_rng> -> CSize -> CUInt -> Ptr CDouble -> Ptr CUInt  -> IO ()
#ccall gsl_ran_multinomial_pdf , CSize -> Ptr CDouble -> Ptr CUInt  -> IO CDouble
#ccall gsl_ran_multinomial_lnpdf , CSize -> Ptr CDouble -> Ptr CUInt  -> IO CDouble
#ccall gsl_ran_negative_binomial , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CUInt
#ccall gsl_ran_negative_binomial_pdf , CUInt -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_pascal , Ptr <gsl_rng> -> CDouble -> CUInt -> IO CUInt
#ccall gsl_ran_pascal_pdf , CUInt -> CDouble -> CUInt -> IO CDouble
#ccall gsl_ran_pareto , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_pareto_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_poisson , Ptr <gsl_rng> -> CDouble -> IO CUInt
#ccall gsl_ran_poisson_array , Ptr <gsl_rng> -> CSize -> Ptr CUInt -> CDouble -> IO ()
#ccall gsl_ran_poisson_pdf , CUInt -> CDouble -> IO CDouble
#ccall gsl_ran_rayleigh , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_rayleigh_pdf , CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_rayleigh_tail , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_rayleigh_tail_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_tdist , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_tdist_pdf , CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_laplace , Ptr <gsl_rng> -> CDouble -> IO CDouble
#ccall gsl_ran_laplace_pdf , CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_levy , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_levy_skew , Ptr <gsl_rng> -> CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_weibull , Ptr <gsl_rng> -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_weibull_pdf , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_ran_dir_2d , Ptr <gsl_rng> -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_ran_dir_2d_trig_method , Ptr <gsl_rng> -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_ran_dir_3d , Ptr <gsl_rng> -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_ran_dir_nd , Ptr <gsl_rng> -> CSize -> Ptr CDouble -> IO ()
#ccall gsl_ran_shuffle , Ptr <gsl_rng> -> Ptr () -> CSize -> CSize -> IO ()
#ccall gsl_ran_choose , Ptr <gsl_rng> -> Ptr () -> CSize -> Ptr () -> CSize -> CSize -> IO CInt
#ccall gsl_ran_sample , Ptr <gsl_rng> -> Ptr () -> CSize -> Ptr () -> CSize -> CSize -> IO ()

#starttype gsl_ran_discrete_t
#field K , CSize
#field A , Ptr CSize
#field F , Ptr CDouble
#stoptype

#ccall gsl_ran_discrete_preproc , CSize -> Ptr CDouble -> IO (Ptr <gsl_ran_discrete_t>)
#ccall gsl_ran_discrete_free , Ptr <gsl_ran_discrete_t> -> IO ()
#ccall gsl_ran_discrete , Ptr <gsl_rng> -> Ptr <gsl_ran_discrete_t> -> IO CSize
#ccall gsl_ran_discrete_pdf , CSize -> Ptr <gsl_ran_discrete_t> -> IO CDouble

#ccall gsl_cdf_ugaussian_P , CDouble -> IO CDouble
#ccall gsl_cdf_ugaussian_Q , CDouble -> IO CDouble
#ccall gsl_cdf_ugaussian_Pinv , CDouble -> IO CDouble
#ccall gsl_cdf_ugaussian_Qinv , CDouble -> IO CDouble
#ccall gsl_cdf_gaussian_P , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gaussian_Q , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gaussian_Pinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gaussian_Qinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gamma_P , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gamma_Q , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gamma_Pinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gamma_Qinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_cauchy_P , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_cauchy_Q , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_cauchy_Pinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_cauchy_Qinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_laplace_P , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_laplace_Q , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_laplace_Pinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_laplace_Qinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_rayleigh_P , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_rayleigh_Q , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_rayleigh_Pinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_rayleigh_Qinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_chisq_P , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_chisq_Q , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_chisq_Pinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_chisq_Qinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_exponential_P , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_exponential_Q , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_exponential_Pinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_exponential_Qinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_exppow_P , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_exppow_Q , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_tdist_P , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_tdist_Q , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_tdist_Pinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_tdist_Qinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_fdist_P , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_fdist_Q , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_fdist_Pinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_fdist_Qinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_beta_P , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_beta_Q , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_beta_Pinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_beta_Qinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_flat_P , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_flat_Q , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_flat_Pinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_flat_Qinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_lognormal_P , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_lognormal_Q , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_lognormal_Pinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_lognormal_Qinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gumbel1_P , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gumbel1_Q , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gumbel1_Pinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gumbel1_Qinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gumbel2_P , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gumbel2_Q , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gumbel2_Pinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_gumbel2_Qinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_weibull_P , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_weibull_Q , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_weibull_Pinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_weibull_Qinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_pareto_P , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_pareto_Q , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_pareto_Pinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_pareto_Qinv , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_logistic_P , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_logistic_Q , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_logistic_Pinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_logistic_Qinv , CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_binomial_P , CUInt -> CDouble -> CUInt -> IO CDouble
#ccall gsl_cdf_binomial_Q , CUInt -> CDouble -> CUInt -> IO CDouble
#ccall gsl_cdf_poisson_P , CUInt -> CDouble -> IO CDouble
#ccall gsl_cdf_poisson_Q , CUInt -> CDouble -> IO CDouble
#ccall gsl_cdf_geometric_P , CUInt -> CDouble -> IO CDouble
#ccall gsl_cdf_geometric_Q , CUInt -> CDouble -> IO CDouble
#ccall gsl_cdf_negative_binomial_P , CUInt -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_negative_binomial_Q , CUInt -> CDouble -> CDouble -> IO CDouble
#ccall gsl_cdf_pascal_P , CUInt -> CDouble -> CUInt -> IO CDouble
#ccall gsl_cdf_pascal_Q , CUInt -> CDouble -> CUInt -> IO CDouble
#ccall gsl_cdf_hypergeometric_P , CUInt -> CUInt -> CUInt -> CUInt -> IO CDouble
#ccall gsl_cdf_hypergeometric_Q , CUInt -> CUInt -> CUInt -> CUInt -> IO CDouble

