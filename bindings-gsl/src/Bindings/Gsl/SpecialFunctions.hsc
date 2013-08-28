#include <bindings.dsl.h>
#include <gsl/gsl_sf.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Special-Functions.html>

module Bindings.Gsl.SpecialFunctions where
#strict_import
import Bindings.Gsl.Eigensystems
import Bindings.Gsl.VectorsAndMatrices.DataTypes

#integral_t gsl_mode_t

#fractional GSL_PREC_DOUBLE
#fractional GSL_PREC_SINGLE
#fractional GSL_PREC_APPROX

#cinline GSL_MODE_PREC , <gsl_mode_t> -> CUInt

#num GSL_MODE_DEFAULT

#fractional GSL_SF_GAMMA_XMAX
#num GSL_SF_FACT_NMAX
#num GSL_SF_DOUBLEFACT_NMAX
#num GSL_SF_MATHIEU_COEFF

#starttype gsl_sf_mathieu_workspace
#field size , CSize
#field even_order , CSize
#field odd_order , CSize
#field extra_values , CInt
#field qa , CDouble
#field qb , CDouble
#field aa , Ptr CDouble
#field bb , Ptr CDouble
#field dd , Ptr CDouble
#field ee , Ptr CDouble
#field tt , Ptr CDouble
#field e2 , Ptr CDouble
#field zz , Ptr CDouble
#field eval , Ptr <gsl_vector>
#field evec , Ptr <gsl_matrix>
#field wmat , Ptr <gsl_eigen_symmv_workspace>
#stoptype

#starttype gsl_sf_result
#field val , CDouble
#field err , CDouble
#stoptype

#starttype gsl_sf_result_e10
#field val , CDouble
#field err , CDouble
#field e10 , CInt
#stoptype

#ccall gsl_sf_airy_Ai , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_airy_Ai_deriv , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_airy_Ai_deriv_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_Ai_deriv_scaled , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_airy_Ai_deriv_scaled_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_Ai_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_Ai_scaled , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_airy_Ai_scaled_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_Bi , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_airy_Bi_deriv , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_airy_Bi_deriv_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_Bi_deriv_scaled , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_airy_Bi_deriv_scaled_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_Bi_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_Bi_scaled , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_airy_Bi_scaled_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_zero_Ai , CUInt -> IO CDouble
#ccall gsl_sf_airy_zero_Ai_deriv , CUInt -> IO CDouble
#ccall gsl_sf_airy_zero_Ai_deriv_e , CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_zero_Ai_e , CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_zero_Bi , CUInt -> IO CDouble
#ccall gsl_sf_airy_zero_Bi_deriv , CUInt -> IO CDouble
#ccall gsl_sf_airy_zero_Bi_deriv_e , CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_airy_zero_Bi_e , CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_angle_restrict_pos , CDouble -> IO CDouble
#ccall gsl_sf_angle_restrict_pos_e , Ptr CDouble -> IO CInt
#ccall gsl_sf_angle_restrict_pos_err_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_angle_restrict_symm , CDouble -> IO CDouble
#ccall gsl_sf_angle_restrict_symm_e , Ptr CDouble -> IO CInt
#ccall gsl_sf_angle_restrict_symm_err_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_atanint , CDouble -> IO CDouble
#ccall gsl_sf_atanint_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_I0 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_I0_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_i0_scaled , CDouble -> IO CDouble
#ccall gsl_sf_bessel_I0_scaled , CDouble -> IO CDouble
#ccall gsl_sf_bessel_i0_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_I0_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_I1 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_I1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_i1_scaled , CDouble -> IO CDouble
#ccall gsl_sf_bessel_I1_scaled , CDouble -> IO CDouble
#ccall gsl_sf_bessel_i1_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_I1_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_i2_scaled , CDouble -> IO CDouble
#ccall gsl_sf_bessel_i2_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_il_scaled_array , CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_il_scaled , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_il_scaled_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_In_array , CInt -> CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_In , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_In_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_In_scaled_array , CInt -> CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_In_scaled , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_In_scaled_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Inu , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_Inu_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Inu_scaled , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_Inu_scaled_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_j0 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_J0 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_j0_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_J0_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_j1 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_J1 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_j1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_J1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_j2 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_j2_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_jl_array , CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_jl , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_jl_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_jl_steed_array , CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_Jn_array , CInt -> CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_Jn , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_Jn_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Jnu , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_Jnu_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_K0 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_K0_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_k0_scaled , CDouble -> IO CDouble
#ccall gsl_sf_bessel_K0_scaled , CDouble -> IO CDouble
#ccall gsl_sf_bessel_k0_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_K0_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_K1 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_K1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_k1_scaled , CDouble -> IO CDouble
#ccall gsl_sf_bessel_K1_scaled , CDouble -> IO CDouble
#ccall gsl_sf_bessel_k1_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_K1_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_k2_scaled , CDouble -> IO CDouble
#ccall gsl_sf_bessel_k2_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_kl_scaled_array , CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_kl_scaled , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_kl_scaled_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Kn_array , CInt -> CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_Kn , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_Kn_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Kn_scaled_array , CInt -> CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_Kn_scaled , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_Kn_scaled_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Knu , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_Knu_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Knu_scaled , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_Knu_scaled_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_lnKnu , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_lnKnu_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_sequence_Jnu_e , CDouble -> <gsl_mode_t> -> CSize -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_y0 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_Y0 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_y0_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Y0_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_y1 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_Y1 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_y1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Y1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_y2 , CDouble -> IO CDouble
#ccall gsl_sf_bessel_y2_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_yl_array , CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_yl , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_yl_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Yn_array , CInt -> CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_bessel_Yn , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_Yn_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_Ynu , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_bessel_Ynu_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_zero_J0 , CUInt -> IO CDouble
#ccall gsl_sf_bessel_zero_J0_e , CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_zero_J1 , CUInt -> IO CDouble
#ccall gsl_sf_bessel_zero_J1_e , CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_bessel_zero_Jnu , CDouble -> CUInt -> IO CDouble
#ccall gsl_sf_bessel_zero_Jnu_e , CDouble -> CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_beta , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_beta_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_beta_inc , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_beta_inc_e , CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_Chi , CDouble -> IO CDouble
#ccall gsl_sf_Chi_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_choose , CUInt -> CUInt -> IO CDouble
#ccall gsl_sf_choose_e , CUInt -> CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_Ci , CDouble -> IO CDouble
#ccall gsl_sf_Ci_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_clausen , CDouble -> IO CDouble
#ccall gsl_sf_clausen_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_complex_cos_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_complex_dilog_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_complex_dilog_xy_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_complex_log_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_complex_logsin_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_complex_psi_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_complex_sin_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_complex_spence_xy_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_conicalP_0 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_conicalP_0_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_conicalP_1 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_conicalP_1_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_conicalP_cyl_reg , CInt -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_conicalP_cyl_reg_e , CInt -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_conicalP_half , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_conicalP_half_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_conicalP_mhalf , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_conicalP_mhalf_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_conicalP_sph_reg , CInt -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_conicalP_sph_reg_e , CInt -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_cos , CDouble -> IO CDouble
#ccall gsl_sf_cos_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_cos_err_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_coulomb_CL_array , CDouble -> CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_coulomb_CL_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_coulomb_wave_F_array , CDouble -> CInt -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_coulomb_wave_FG_array , CDouble -> CInt -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_coulomb_wave_FG_e , CDouble -> CDouble -> CDouble -> CInt -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_coulomb_wave_FGp_array , CDouble -> CInt -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_coulomb_wave_sphF_array , CDouble -> CInt -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_coupling_3j , CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO CDouble
#ccall gsl_sf_coupling_3j_e , CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_coupling_6j , CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO CDouble
#ccall gsl_sf_coupling_6j_e , CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_coupling_9j , CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO CDouble
#ccall gsl_sf_coupling_9j_e , CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_coupling_RacahW , CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> IO CDouble
#ccall gsl_sf_coupling_RacahW_e , CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_dawson , CDouble -> IO CDouble
#ccall gsl_sf_dawson_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_debye_1 , CDouble -> IO CDouble
#ccall gsl_sf_debye_1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_debye_2 , CDouble -> IO CDouble
#ccall gsl_sf_debye_2_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_debye_3 , CDouble -> IO CDouble
#ccall gsl_sf_debye_3_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_debye_4 , CDouble -> IO CDouble
#ccall gsl_sf_debye_4_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_debye_5 , CDouble -> IO CDouble
#ccall gsl_sf_debye_5_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_debye_6 , CDouble -> IO CDouble
#ccall gsl_sf_debye_6_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_dilog , CDouble -> IO CDouble
#ccall gsl_sf_dilog_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_doublefact , CUInt -> IO CDouble
#ccall gsl_sf_doublefact_e , CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_D , CDouble -> CDouble -> CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_Dcomp , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_Dcomp_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_D_e , CDouble -> CDouble -> CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_E , CDouble -> CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_Ecomp , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_Ecomp_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_E_e , CDouble -> CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_F , CDouble -> CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_F_e , CDouble -> CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_Kcomp , CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_Kcomp_e , CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_P , CDouble -> CDouble -> CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_Pcomp , CDouble -> CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_Pcomp_e , CDouble -> CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_P_e , CDouble -> CDouble -> CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_RC , CDouble -> CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_RC_e , CDouble -> CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_RD , CDouble -> CDouble -> CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_RD_e , CDouble -> CDouble -> CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_RF , CDouble -> CDouble -> CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_RF_e , CDouble -> CDouble -> CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_ellint_RJ , CDouble -> CDouble -> CDouble -> CDouble -> <gsl_mode_t> -> IO CDouble
#ccall gsl_sf_ellint_RJ_e , CDouble -> CDouble -> CDouble -> CDouble -> <gsl_mode_t> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_elljac_e , CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_erfc , CDouble -> IO CDouble
#ccall gsl_sf_erf , CDouble -> IO CDouble
#ccall gsl_sf_erfc_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_erf_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_erf_Q , CDouble -> IO CDouble
#ccall gsl_sf_erf_Q_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_erf_Z , CDouble -> IO CDouble
#ccall gsl_sf_erf_Z_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_eta , CDouble -> IO CDouble
#ccall gsl_sf_eta_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_eta_int , CInt -> IO CDouble
#ccall gsl_sf_eta_int_e , CInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_exp , CDouble -> IO CDouble
#ccall gsl_sf_exp_e10_e , CDouble -> Ptr <gsl_sf_result_e10> -> IO CInt
#ccall gsl_sf_exp_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_exp_err_e10_e , CDouble -> CDouble -> Ptr <gsl_sf_result_e10> -> IO CInt
#ccall gsl_sf_exp_err_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_expint_3 , CDouble -> IO CDouble
#ccall gsl_sf_expint_3_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_expint_E1 , CDouble -> IO CDouble
#ccall gsl_sf_expint_E1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_expint_E1_scaled , CDouble -> IO CDouble
#ccall gsl_sf_expint_E1_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_expint_E2 , CDouble -> IO CDouble
#ccall gsl_sf_expint_E2_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_expint_E2_scaled , CDouble -> IO CDouble
#ccall gsl_sf_expint_E2_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_expint_Ei , CDouble -> IO CDouble
#ccall gsl_sf_expint_Ei_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_expint_Ei_scaled , CDouble -> IO CDouble
#ccall gsl_sf_expint_Ei_scaled_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_expint_En , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_expint_En_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_expint_En_scaled , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_expint_En_scaled_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_expm1 , CDouble -> IO CDouble
#ccall gsl_sf_expm1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_exp_mult , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_exp_mult_e10_e , CDouble -> CDouble -> Ptr <gsl_sf_result_e10> -> IO CInt
#ccall gsl_sf_exp_mult_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_exp_mult_err_e10_e , CDouble -> CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result_e10> -> IO CInt
#ccall gsl_sf_exp_mult_err_e , CDouble -> CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_exprel_2 , CDouble -> IO CDouble
#ccall gsl_sf_exprel_2_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_exprel , CDouble -> IO CDouble
#ccall gsl_sf_exprel_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_exprel_n_CF_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_exprel_n , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_exprel_n_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_fact , CUInt -> IO CDouble
#ccall gsl_sf_fact_e , CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_fermi_dirac_0 , CDouble -> IO CDouble
#ccall gsl_sf_fermi_dirac_0_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_fermi_dirac_1 , CDouble -> IO CDouble
#ccall gsl_sf_fermi_dirac_1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_fermi_dirac_2 , CDouble -> IO CDouble
#ccall gsl_sf_fermi_dirac_2_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_fermi_dirac_3half , CDouble -> IO CDouble
#ccall gsl_sf_fermi_dirac_3half_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_fermi_dirac_half , CDouble -> IO CDouble
#ccall gsl_sf_fermi_dirac_half_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_fermi_dirac_inc_0 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_fermi_dirac_inc_0_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_fermi_dirac_int , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_fermi_dirac_int_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_fermi_dirac_m1 , CDouble -> IO CDouble
#ccall gsl_sf_fermi_dirac_m1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_fermi_dirac_mhalf , CDouble -> IO CDouble
#ccall gsl_sf_fermi_dirac_mhalf_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_gamma , CDouble -> IO CDouble
#ccall gsl_sf_gamma_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_gamma_inc , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_gamma_inc_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_gamma_inc_P , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_gamma_inc_P_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_gamma_inc_Q , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_gamma_inc_Q_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_gammainv , CDouble -> IO CDouble
#ccall gsl_sf_gammainv_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_gammastar , CDouble -> IO CDouble
#ccall gsl_sf_gammastar_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_gegenpoly_1 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_gegenpoly_1_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_gegenpoly_2 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_gegenpoly_2_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_gegenpoly_3 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_gegenpoly_3_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_gegenpoly_array , CInt -> CDouble -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_gegenpoly_n , CInt -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_gegenpoly_n_e , CInt -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hazard , CDouble -> IO CDouble
#ccall gsl_sf_hazard_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hydrogenicR_1 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hydrogenicR_1_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hydrogenicR , CInt -> CInt -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hydrogenicR_e , CInt -> CInt -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hyperg_0F1 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hyperg_0F1_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hyperg_1F1 , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hyperg_1F1_e , CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hyperg_1F1_int , CInt -> CInt -> CDouble -> IO CDouble
#ccall gsl_sf_hyperg_1F1_int_e , CInt -> CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hyperg_2F0 , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hyperg_2F0_e , CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hyperg_2F1 , CDouble -> CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hyperg_2F1_conj , CDouble -> CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hyperg_2F1_conj_e , CDouble -> CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hyperg_2F1_conj_renorm , CDouble -> CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hyperg_2F1_conj_renorm_e , CDouble -> CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hyperg_2F1_e , CDouble -> CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hyperg_2F1_renorm , CDouble -> CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hyperg_2F1_renorm_e , CDouble -> CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hyperg_U , CDouble -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hyperg_U_e10_e , CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result_e10> -> IO CInt
#ccall gsl_sf_hyperg_U_e , CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hyperg_U_int , CInt -> CInt -> CDouble -> IO CDouble
#ccall gsl_sf_hyperg_U_int_e10_e , CInt -> CInt -> CDouble -> Ptr <gsl_sf_result_e10> -> IO CInt
#ccall gsl_sf_hyperg_U_int_e , CInt -> CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hypot , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hypot_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_hzeta , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_hzeta_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_laguerre_1 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_laguerre_1_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_laguerre_2 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_laguerre_2_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_laguerre_3 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_laguerre_3_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_laguerre_n , CInt -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_laguerre_n_e , CInt -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lambert_W0 , CDouble -> IO CDouble
#ccall gsl_sf_lambert_W0_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lambert_Wm1 , CDouble -> IO CDouble
#ccall gsl_sf_lambert_Wm1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_array_size , CInt -> CInt -> IO CInt
#ccall gsl_sf_legendre_H3d_0 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_legendre_H3d_0_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_H3d_1 , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_legendre_H3d_1_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_H3d_array , CInt -> CDouble -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_legendre_H3d , CInt -> CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_legendre_H3d_e , CInt -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_P1 , CDouble -> IO CDouble
#ccall gsl_sf_legendre_P1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_P2 , CDouble -> IO CDouble
#ccall gsl_sf_legendre_P2_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_P3 , CDouble -> IO CDouble
#ccall gsl_sf_legendre_P3_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_Pl_array , CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_legendre_Pl , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_legendre_Pl_deriv_array , CInt -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_legendre_Pl_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_Plm_array , CInt -> CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_legendre_Plm , CInt -> CInt -> CDouble -> IO CDouble
#ccall gsl_sf_legendre_Plm_deriv_array , CInt -> CInt -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_legendre_Plm_e , CInt -> CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_Q0 , CDouble -> IO CDouble
#ccall gsl_sf_legendre_Q0_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_Q1 , CDouble -> IO CDouble
#ccall gsl_sf_legendre_Q1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_Ql , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_legendre_Ql_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_legendre_sphPlm_array , CInt -> CInt -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_legendre_sphPlm , CInt -> CInt -> CDouble -> IO CDouble
#ccall gsl_sf_legendre_sphPlm_deriv_array , CInt -> CInt -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_legendre_sphPlm_e , CInt -> CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lnbeta , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_lnbeta_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lnbeta_sgn_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr CDouble -> IO CInt
#ccall gsl_sf_lnchoose , CUInt -> CUInt -> IO CDouble
#ccall gsl_sf_lnchoose_e , CUInt -> CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lncosh , CDouble -> IO CDouble
#ccall gsl_sf_lncosh_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lndoublefact , CUInt -> IO CDouble
#ccall gsl_sf_lndoublefact_e , CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lnfact , CUInt -> IO CDouble
#ccall gsl_sf_lnfact_e , CUInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lngamma , CDouble -> IO CDouble
#ccall gsl_sf_lngamma_complex_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lngamma_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lngamma_sgn_e , CDouble -> Ptr <gsl_sf_result> -> Ptr CDouble -> IO CInt
#ccall gsl_sf_lnpoch , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_lnpoch_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_lnpoch_sgn_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr CDouble -> IO CInt
#ccall gsl_sf_lnsinh , CDouble -> IO CDouble
#ccall gsl_sf_lnsinh_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_log_1plusx , CDouble -> IO CDouble
#ccall gsl_sf_log_1plusx_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_log_1plusx_mx , CDouble -> IO CDouble
#ccall gsl_sf_log_1plusx_mx_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_log_abs , CDouble -> IO CDouble
#ccall gsl_sf_log_abs_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_log , CDouble -> IO CDouble
#ccall gsl_sf_log_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_log_erfc , CDouble -> IO CDouble
#ccall gsl_sf_log_erfc_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_mathieu_a_array , CInt -> CInt -> CDouble -> Ptr <gsl_sf_mathieu_workspace> -> Ptr CDouble -> IO CInt
#ccall gsl_sf_mathieu_a , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_mathieu_a_coeff , CInt -> CDouble -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_mathieu_alloc , CSize -> CDouble -> IO (Ptr gsl_sf_mathieu_workspace)
#ccall gsl_sf_mathieu_b_array , CInt -> CInt -> CDouble -> Ptr <gsl_sf_mathieu_workspace> -> Ptr CDouble -> IO CInt
#ccall gsl_sf_mathieu_b , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_mathieu_b_coeff , CInt -> CDouble -> CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_sf_mathieu_ce_array , CInt -> CInt -> CDouble -> CDouble -> Ptr <gsl_sf_mathieu_workspace> -> Ptr CDouble -> IO CInt
#ccall gsl_sf_mathieu_ce , CInt -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_mathieu_free , Ptr <gsl_sf_mathieu_workspace> -> IO ()
#ccall gsl_sf_mathieu_Mc_array , CInt -> CInt -> CInt -> CDouble -> CDouble -> Ptr <gsl_sf_mathieu_workspace> -> Ptr CDouble -> IO CInt
#ccall gsl_sf_mathieu_Mc , CInt -> CInt -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_mathieu_Ms_array , CInt -> CInt -> CInt -> CDouble -> CDouble -> Ptr <gsl_sf_mathieu_workspace> -> Ptr CDouble -> IO CInt
#ccall gsl_sf_mathieu_Ms , CInt -> CInt -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_mathieu_se_array , CInt -> CInt -> CDouble -> CDouble -> Ptr <gsl_sf_mathieu_workspace> -> Ptr CDouble -> IO CInt
#ccall gsl_sf_mathieu_se , CInt -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_multiply , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_multiply_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_multiply_err_e , CDouble -> CDouble -> CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_poch , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_poch_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_pochrel , CDouble -> CDouble -> IO CDouble
#ccall gsl_sf_pochrel_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_polar_to_rect , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_pow_int , CDouble -> CInt -> IO CDouble
#ccall gsl_sf_pow_int_e , CDouble -> CInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_psi_1 , CDouble -> IO CDouble
#ccall gsl_sf_psi_1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_psi_1_int , CInt -> IO CDouble
#ccall gsl_sf_psi_1_int_e , CInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_psi_1piy , CDouble -> IO CDouble
#ccall gsl_sf_psi_1piy_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_psi , CDouble -> IO CDouble
#ccall gsl_sf_psi_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_psi_int , CInt -> IO CDouble
#ccall gsl_sf_psi_int_e , CInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_psi_n , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_psi_n_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_rect_to_polar , CDouble -> CDouble -> Ptr <gsl_sf_result> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_result_smash_e , Ptr <gsl_sf_result_e10> -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_Shi , CDouble -> IO CDouble
#ccall gsl_sf_Shi_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_Si , CDouble -> IO CDouble
#ccall gsl_sf_Si_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_sinc , CDouble -> IO CDouble
#ccall gsl_sf_sin , CDouble -> IO CDouble
#ccall gsl_sf_sinc_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_sin_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_sin_err_e , CDouble -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_synchrotron_1 , CDouble -> IO CDouble
#ccall gsl_sf_synchrotron_1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_synchrotron_2 , CDouble -> IO CDouble
#ccall gsl_sf_synchrotron_2_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_taylorcoeff , CInt -> CDouble -> IO CDouble
#ccall gsl_sf_taylorcoeff_e , CInt -> CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_transport_2 , CDouble -> IO CDouble
#ccall gsl_sf_transport_2_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_transport_3 , CDouble -> IO CDouble
#ccall gsl_sf_transport_3_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_transport_4 , CDouble -> IO CDouble
#ccall gsl_sf_transport_4_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_transport_5 , CDouble -> IO CDouble
#ccall gsl_sf_transport_5_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_zeta , CDouble -> IO CDouble
#ccall gsl_sf_zeta_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_zeta_int , CInt -> IO CDouble
#ccall gsl_sf_zeta_int_e , CInt -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_zetam1 , CDouble -> IO CDouble
#ccall gsl_sf_zetam1_e , CDouble -> Ptr <gsl_sf_result> -> IO CInt
#ccall gsl_sf_zetam1_int , CInt -> IO CDouble
#ccall gsl_sf_zetam1_int_e , CInt -> Ptr <gsl_sf_result> -> IO CInt
