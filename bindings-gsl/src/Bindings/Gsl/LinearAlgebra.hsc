#include <bindings.dsl.h>
#include <gsl/gsl_linalg.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Linear-Algebra.html>

module Bindings.Gsl.LinearAlgebra where
#strict_import
import Bindings.Gsl.VectorsAndMatrices.DataTypes
import Bindings.Gsl.Permutations
import Bindings.Gsl.ComplexNumbers
import Bindings.Gsl.SpecialFunctions

#integral_t gsl_linalg_matrix_mod_t

#num GSL_LINALG_MOD_NONE
#num GSL_LINALG_MOD_TRANSPOSE
#num GSL_LINALG_MOD_CONJUGATE

#ccall gsl_linalg_matmult , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_matmult_mod , Ptr <gsl_matrix> -> <gsl_linalg_matrix_mod_t> -> Ptr <gsl_matrix> -> <gsl_linalg_matrix_mod_t> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_exponential_ss , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> <gsl_mode_t> -> IO CInt
#ccall gsl_linalg_householder_transform , Ptr <gsl_vector> -> IO CDouble
-- ccall gsl_linalg_complex_householder_transform , Ptr <gsl_vector_complex> -> IO <gsl_complex>
#ccall gsl_linalg_householder_hm , CDouble -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_householder_mh , CDouble -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_householder_hv , CDouble -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_householder_hm1 , CDouble -> Ptr <gsl_matrix> -> IO CInt
-- ccall gsl_linalg_complex_householder_hm , <gsl_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_linalg_complex_householder_mh , <gsl_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_linalg_complex_householder_hv , <gsl_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_linalg_hessenberg_decomp , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_hessenberg_unpack , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_hessenberg_unpack_accum , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_hessenberg_set_zero , Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_hessenberg_submatrix , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> CSize -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_hesstri_decomp , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_SV_decomp , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_SV_decomp_mod , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_SV_decomp_jacobi , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_SV_solve , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LU_decomp , Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr CInt -> IO CInt
#ccall gsl_linalg_LU_solve , Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LU_svx , Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LU_refine , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LU_invert , Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_LU_det , Ptr <gsl_matrix> -> CInt -> IO CDouble
#ccall gsl_linalg_LU_lndet , Ptr <gsl_matrix> -> IO CDouble
#ccall gsl_linalg_LU_sgndet , Ptr <gsl_matrix> -> CInt -> IO CInt
#ccall gsl_linalg_complex_LU_decomp , Ptr <gsl_matrix_complex> -> Ptr <gsl_permutation> -> Ptr CInt -> IO CInt
#ccall gsl_linalg_complex_LU_solve , Ptr <gsl_matrix_complex> -> Ptr <gsl_permutation> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_linalg_complex_LU_svx , Ptr <gsl_matrix_complex> -> Ptr <gsl_permutation> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_linalg_complex_LU_refine , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_permutation> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_linalg_complex_LU_invert , Ptr <gsl_matrix_complex> -> Ptr <gsl_permutation> -> Ptr <gsl_matrix_complex> -> IO CInt
-- ccall gsl_linalg_complex_LU_det , Ptr <gsl_matrix_complex> -> CInt -> IO <gsl_complex>
#ccall gsl_linalg_complex_LU_lndet , Ptr <gsl_matrix_complex> -> IO CDouble
-- ccall gsl_linalg_complex_LU_sgndet , Ptr <gsl_matrix_complex> -> CInt -> IO <gsl_complex>
#ccall gsl_linalg_QR_decomp , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QR_solve , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QR_svx , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QR_lssolve , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QR_QRsolve , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QR_Rsolve , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QR_Rsvx , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QR_update , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QR_QTvec , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QR_Qvec , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QR_QTmat , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_QR_unpack , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_R_solve , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_R_svx , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QRPT_decomp , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_permutation> -> Ptr CInt -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QRPT_decomp2 , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_permutation> -> Ptr CInt -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QRPT_solve , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QRPT_svx , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QRPT_QRsolve , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QRPT_Rsolve , Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QRPT_Rsvx , Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_QRPT_update , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LQ_decomp , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LQ_solve_T , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LQ_svx_T , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LQ_lssolve_T , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LQ_Lsolve_T , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LQ_Lsvx_T , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_L_solve_T , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LQ_vecQ , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LQ_vecQT , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LQ_unpack , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_LQ_update , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_LQ_LQsolve , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_PTLQ_decomp , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_permutation> -> Ptr CInt -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_PTLQ_decomp2 , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_permutation> -> Ptr CInt -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_PTLQ_solve_T , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_PTLQ_svx_T , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_PTLQ_LQsolve_T , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_PTLQ_Lsolve_T , Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_PTLQ_Lsvx_T , Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_PTLQ_update , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_permutation> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_cholesky_decomp , Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_cholesky_solve , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_cholesky_svx , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_cholesky_invert , Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_cholesky_decomp_unit , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_complex_cholesky_decomp , Ptr <gsl_matrix_complex> -> IO CInt
#ccall gsl_linalg_complex_cholesky_solve , Ptr <gsl_matrix_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_linalg_complex_cholesky_svx , Ptr <gsl_matrix_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_linalg_symmtd_decomp , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_symmtd_unpack , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_symmtd_unpack_T , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_hermtd_decomp , Ptr <gsl_matrix_complex> -> Ptr <gsl_vector_complex> -> IO CInt
#ccall gsl_linalg_hermtd_unpack , Ptr <gsl_matrix_complex> -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_hermtd_unpack_T , Ptr <gsl_matrix_complex> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_HH_solve , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_HH_svx , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_solve_symm_tridiag , Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_solve_tridiag , Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_solve_symm_cyc_tridiag , Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_solve_cyc_tridiag , Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_bidiag_decomp , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_bidiag_unpack , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_bidiag_unpack2 , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> IO CInt
#ccall gsl_linalg_bidiag_unpack_B , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_balance_matrix , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_balance_accum , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt
#ccall gsl_linalg_balance_columns , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> IO CInt

