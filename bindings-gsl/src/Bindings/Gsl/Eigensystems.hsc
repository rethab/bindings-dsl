#include <bindings.dsl.h>
#include <gsl/gsl_eigen.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Eigensystems.html>

module Bindings.Gsl.Eigensystems where
#strict_import
import Bindings.Gsl.ComplexNumbers
import Bindings.Gsl.VectorsAndMatrices

#starttype gsl_eigen_symm_workspace
#field size , CSize
#field d , Ptr CDouble
#field sd , Ptr CDouble
#stoptype

#ccall gsl_eigen_symm_alloc , CSize -> IO  (Ptr <gsl_eigen_symm_workspace>)
#ccall gsl_eigen_symm_free , Ptr <gsl_eigen_symm_workspace> -> IO ()
#ccall gsl_eigen_symm , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_eigen_symm_workspace> -> IO CInt

#starttype gsl_eigen_symmv_workspace
#field size , CSize
#field d , Ptr CDouble
#field sd , Ptr CDouble
#field gc , Ptr CDouble
#field gs , Ptr CDouble
#stoptype

#ccall gsl_eigen_symmv_alloc , CSize -> IO  (Ptr <gsl_eigen_symmv_workspace>)
#ccall gsl_eigen_symmv_free , Ptr <gsl_eigen_symmv_workspace> -> IO ()
#ccall gsl_eigen_symmv , Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr <gsl_eigen_symmv_workspace> -> IO CInt

#starttype gsl_eigen_herm_workspace
#field size , CSize
#field d , Ptr CDouble
#field sd , Ptr CDouble
#field tau , Ptr CDouble
#stoptype

#ccall gsl_eigen_herm_alloc , CSize -> IO  (Ptr <gsl_eigen_herm_workspace>)
#ccall gsl_eigen_herm_free , Ptr <gsl_eigen_herm_workspace> -> IO ()
#ccall gsl_eigen_herm , Ptr <gsl_matrix_complex> -> Ptr <gsl_vector> -> Ptr <gsl_eigen_herm_workspace> -> IO CInt

#starttype gsl_eigen_hermv_workspace
#field size , CSize
#field d , Ptr CDouble
#field sd , Ptr CDouble
#field tau , Ptr CDouble
#field gc , Ptr CDouble
#field gs , Ptr CDouble
#stoptype

#ccall gsl_eigen_hermv_alloc , CSize -> IO  (Ptr <gsl_eigen_hermv_workspace>)
#ccall gsl_eigen_hermv_free , Ptr <gsl_eigen_hermv_workspace> -> IO ()
#ccall gsl_eigen_hermv , Ptr <gsl_matrix_complex> -> Ptr <gsl_vector> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_eigen_hermv_workspace> -> IO CInt

#starttype gsl_eigen_francis_workspace
#field size , CSize
#field max_iterations , CSize
#field n_iter , CSize
#field n_evals , CSize
#field compute_t , CInt
#field H , Ptr <gsl_matrix>
#field Z , Ptr <gsl_matrix>
#stoptype

#ccall gsl_eigen_francis_alloc , IO  (Ptr <gsl_eigen_francis_workspace>)
#ccall gsl_eigen_francis_free , Ptr <gsl_eigen_francis_workspace> -> IO ()
#ccall gsl_eigen_francis_T , CInt -> CInt -> Ptr <gsl_eigen_francis_workspace> -> IO ()
#ccall gsl_eigen_francis , Ptr <gsl_matrix> -> Ptr <gsl_vector_complex> -> Ptr <gsl_eigen_francis_workspace> -> IO CInt
#ccall gsl_eigen_francis_Z , Ptr <gsl_matrix> -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix> -> Ptr <gsl_eigen_francis_workspace> -> IO CInt

#starttype gsl_eigen_nonsymm_workspace
#field size , CSize
#field diag , Ptr <gsl_vector>
#field tau , Ptr <gsl_vector>
#field Z , Ptr <gsl_matrix>
#field do_balance , CInt
#field n_evals , CSize
#field francis_workspace_p , Ptr <gsl_eigen_francis_workspace>
#stoptype

#ccall gsl_eigen_nonsymm_alloc , CSize -> IO  (Ptr <gsl_eigen_nonsymm_workspace>)
#ccall gsl_eigen_nonsymm_free , Ptr <gsl_eigen_nonsymm_workspace> -> IO ()
#ccall gsl_eigen_nonsymm_params , CInt -> CInt -> CInt -> CInt -> Ptr <gsl_eigen_nonsymm_workspace> -> IO ()
#ccall gsl_eigen_nonsymm , Ptr <gsl_matrix> -> Ptr <gsl_vector_complex> -> Ptr <gsl_eigen_nonsymm_workspace> -> IO CInt
#ccall gsl_eigen_nonsymm_Z , Ptr <gsl_matrix> -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix> -> Ptr <gsl_eigen_nonsymm_workspace> -> IO CInt

#starttype gsl_eigen_nonsymmv_workspace
#field size , CSize
#field work , Ptr <gsl_vector>
#field work2 , Ptr <gsl_vector>
#field work3 , Ptr <gsl_vector>
#field Z , Ptr <gsl_matrix>
#field nonsymm_workspace_p , Ptr <gsl_eigen_nonsymm_workspace>
#stoptype

#ccall gsl_eigen_nonsymmv_alloc , CSize -> IO  (Ptr <gsl_eigen_nonsymmv_workspace>)
#ccall gsl_eigen_nonsymmv_free , Ptr <gsl_eigen_nonsymmv_workspace> -> IO ()
#ccall gsl_eigen_nonsymmv , Ptr <gsl_matrix> -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_eigen_nonsymmv_workspace> -> IO CInt
#ccall gsl_eigen_nonsymmv_Z , Ptr <gsl_matrix> -> Ptr <gsl_vector_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix> -> Ptr <gsl_eigen_nonsymmv_workspace> -> IO CInt

#starttype gsl_eigen_gensymm_workspace
#field size , CSize
#field symm_workspace_p , Ptr <gsl_eigen_symm_workspace>
#stoptype

#ccall gsl_eigen_gensymm_alloc , CSize -> IO  (Ptr <gsl_eigen_gensymm_workspace>)
#ccall gsl_eigen_gensymm_free , Ptr <gsl_eigen_gensymm_workspace> -> IO ()
#ccall gsl_eigen_gensymm , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_eigen_gensymm_workspace> -> IO CInt
#ccall gsl_eigen_gensymm_standardize , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> IO CInt

#starttype gsl_eigen_gensymmv_workspace
#field size , CSize
#field symmv_workspace_p , Ptr <gsl_eigen_symmv_workspace>
#stoptype

#ccall gsl_eigen_gensymmv_alloc , CSize -> IO  (Ptr <gsl_eigen_gensymmv_workspace>)
#ccall gsl_eigen_gensymmv_free , Ptr <gsl_eigen_gensymmv_workspace> -> IO ()
#ccall gsl_eigen_gensymmv , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr <gsl_eigen_gensymmv_workspace> -> IO CInt

#starttype gsl_eigen_genherm_workspace
#field size , CSize
#field herm_workspace_p , Ptr <gsl_eigen_herm_workspace>
#stoptype

#ccall gsl_eigen_genherm_alloc , CSize -> IO  (Ptr <gsl_eigen_genherm_workspace>)
#ccall gsl_eigen_genherm_free , Ptr <gsl_eigen_genherm_workspace> -> IO ()
#ccall gsl_eigen_genherm , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_vector> -> Ptr <gsl_eigen_genherm_workspace> -> IO CInt
#ccall gsl_eigen_genherm_standardize , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> IO CInt

#starttype gsl_eigen_genhermv_workspace
#field size , CSize
#field hermv_workspace_p , Ptr <gsl_eigen_hermv_workspace>
#stoptype

#ccall gsl_eigen_genhermv_alloc , CSize -> IO  (Ptr <gsl_eigen_genhermv_workspace>)
#ccall gsl_eigen_genhermv_free , Ptr <gsl_eigen_genhermv_workspace> -> IO ()
#ccall gsl_eigen_genhermv , Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_vector> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_eigen_genhermv_workspace> -> IO CInt

#starttype gsl_eigen_gen_workspace
#field size , CSize
#field work , Ptr <gsl_vector>
#field n_evals , CSize
#field max_iterations , CSize
#field n_iter , CSize
#field eshift , CDouble
#field needtop , CInt
#field atol , CDouble
#field btol , CDouble
#field ascale , CDouble
#field bscale , CDouble
#field H , Ptr <gsl_matrix>
#field R , Ptr <gsl_matrix>
#field compute_s , CInt
#field compute_t , CInt
#field Q , Ptr <gsl_matrix>
#field Z , Ptr <gsl_matrix>
#stoptype

#ccall gsl_eigen_gen_alloc , CSize -> IO  (Ptr <gsl_eigen_gen_workspace>)
#ccall gsl_eigen_gen_free , Ptr <gsl_eigen_gen_workspace> -> IO ()
#ccall gsl_eigen_gen_params , CInt -> CInt -> CInt -> CInt -> CInt -> CInt -> Ptr <gsl_eigen_gen_workspace> -> IO ()
#ccall gsl_eigen_gen , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector> -> Ptr <gsl_eigen_gen_workspace> -> IO CInt
#ccall gsl_eigen_gen_QZ , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector> -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_eigen_gen_workspace> -> IO CInt

#starttype gsl_eigen_genv_workspace
#field size , CSize
#field work1 , Ptr <gsl_vector>
#field work2 , Ptr <gsl_vector>
#field work3 , Ptr <gsl_vector>
#field work4 , Ptr <gsl_vector>
#field work5 , Ptr <gsl_vector>
#field work6 , Ptr <gsl_vector>
#field Q , Ptr <gsl_matrix>
#field Z , Ptr <gsl_matrix>
#field gen_workspace_p , Ptr <gsl_eigen_gen_workspace>
#stoptype

#ccall gsl_eigen_genv_alloc , CSize -> IO  (Ptr <gsl_eigen_genv_workspace>)
#ccall gsl_eigen_genv_free , Ptr <gsl_eigen_genv_workspace> -> IO ()
#ccall gsl_eigen_genv , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_eigen_genv_workspace> -> IO CInt
#ccall gsl_eigen_genv_QZ , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector> -> Ptr <gsl_matrix_complex> -> Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr <gsl_eigen_genv_workspace> -> IO CInt

#integral_t gsl_eigen_sort_t

#num GSL_EIGEN_SORT_VAL_ASC
#num GSL_EIGEN_SORT_VAL_DESC
#num GSL_EIGEN_SORT_ABS_ASC
#num GSL_EIGEN_SORT_ABS_DESC

#ccall gsl_eigen_symmv_sort , Ptr <gsl_vector> -> Ptr <gsl_matrix> -> <gsl_eigen_sort_t> -> IO CInt
#ccall gsl_eigen_hermv_sort , Ptr <gsl_vector> -> Ptr <gsl_matrix_complex> -> <gsl_eigen_sort_t> -> IO CInt
#ccall gsl_eigen_nonsymmv_sort , Ptr <gsl_vector_complex> -> Ptr <gsl_matrix_complex> -> <gsl_eigen_sort_t> -> IO CInt
#ccall gsl_eigen_gensymmv_sort , Ptr <gsl_vector> -> Ptr <gsl_matrix> -> <gsl_eigen_sort_t> -> IO CInt
#ccall gsl_eigen_genhermv_sort , Ptr <gsl_vector> -> Ptr <gsl_matrix_complex> -> <gsl_eigen_sort_t> -> IO CInt
#ccall gsl_eigen_genv_sort , Ptr <gsl_vector_complex> -> Ptr <gsl_vector> -> Ptr <gsl_matrix_complex> -> <gsl_eigen_sort_t> -> IO CInt
#ccall gsl_schur_gen_eigvals , Ptr <gsl_matrix> -> Ptr <gsl_matrix> -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_schur_solve_equation , CDouble -> Ptr <gsl_matrix> -> CDouble -> CDouble -> CDouble -> Ptr <gsl_vector> -> Ptr <gsl_vector> -> Ptr CDouble -> Ptr CDouble -> CDouble -> IO CInt
#ccall gsl_schur_solve_equation_z , CDouble -> Ptr <gsl_matrix> -> Ptr <gsl_complex> -> CDouble -> CDouble -> Ptr <gsl_vector_complex> -> Ptr <gsl_vector_complex> -> Ptr CDouble -> Ptr CDouble -> CDouble -> IO CInt

