#include <bindings.dsl.h>
#include <gsl/gsl_integration.h>

-- | <http://www.gnu.org/software/gsl/manual/html_node/Numerical-Integration.html>

module Bindings.Gsl.NumericalIntegration where
#strict_import
import Bindings.Gsl.MathematicalFunctions

#starttype gsl_integration_workspace
#field limit , CSize
#field size , CSize
#field nrmax , CSize
#field i , CSize
#field maximum_level , CSize
#field alist , Ptr CDouble
#field blist , Ptr CDouble
#field rlist , Ptr CDouble
#field elist , Ptr CDouble
#field order , Ptr CSize
#field level , Ptr CSize
#stoptype

#starttype gsl_integration_cquad_ival
#field a , CDouble
#field b , CDouble
#array_field c , CDouble
#array_field fx , CDouble
#field igral , CDouble
#field err , CDouble
#field depth , CInt
#field rdepth , CInt
#field ndiv , CInt
#stoptype

#starttype gsl_integration_cquad_workspace
#field size , CSize
#field ivals , Ptr <gsl_integration_cquad_ival>
#field heap , Ptr CSize
#stoptype

#ccall gsl_integration_workspace_alloc , CSize -> IO (Ptr <gsl_integration_workspace>)
#ccall gsl_integration_workspace_free , Ptr <gsl_integration_workspace> -> IO ()

#starttype gsl_integration_qaws_table
#field alpha , CDouble
#field beta , CDouble
#field mu , CInt
#field nu , CInt
#array_field ri , CDouble
#array_field rj , CDouble
#array_field rg , CDouble
#array_field rh , CDouble
#stoptype

#ccall gsl_integration_qaws_table_alloc , CDouble -> CDouble -> CInt -> CInt -> CInt -> IO (Ptr <gsl_integration_qaws_table>)
#ccall gsl_integration_qaws_table_set , Ptr <gsl_integration_qaws_table> -> CDouble -> CDouble -> CInt -> CInt -> CInt -> IO CInt
#ccall gsl_integration_qaws_table_free , Ptr <gsl_integration_qaws_table> -> IO ()

#integral_t enum gsl_integration_qawo_enum
#num GSL_INTEG_COSINE
#num GSL_INTEG_SINE

#starttype gsl_integration_qawo_table
#field n , CSize
#field omega , CDouble
#field L , CDouble
#field par , CDouble
#field sine , <gsl_integration_qawo_enum>
#field chebmo , Ptr CDouble
#stoptype

#ccall gsl_integration_qawo_table_alloc , CDouble -> CDouble -> <gsl_integration_qawo_enum> -> CSize -> IO (Ptr <gsl_integration_qawo_table>)
#ccall gsl_integration_qawo_table_set , Ptr <gsl_integration_qawo_table> -> CDouble -> CDouble -> <gsl_integration_qawo_enum> -> IO CInt
#ccall gsl_integration_qawo_table_set_length , Ptr <gsl_integration_qawo_table> -> CDouble -> IO CInt
#ccall gsl_integration_qawo_table_free , Ptr <gsl_integration_qawo_table> -> IO ()

#callback_t gsl_integration_rule , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

#ccall gsl_integration_qk15 , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_integration_qk21 , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_integration_qk31 , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_integration_qk41 , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_integration_qk51 , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_integration_qk61 , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_integration_qcheb , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()

#num GSL_INTEG_GAUSS15
#num GSL_INTEG_GAUSS21
#num GSL_INTEG_GAUSS31
#num GSL_INTEG_GAUSS41
#num GSL_INTEG_GAUSS51
#num GSL_INTEG_GAUSS61

#ccall gsl_integration_qk , CInt -> CInt -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr <gsl_function> -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CDouble -> IO ()
#ccall gsl_integration_qng , Ptr <gsl_function> -> CDouble -> CDouble -> CDouble -> CDouble -> Ptr CDouble -> Ptr CDouble -> Ptr CSize -> IO CInt
#ccall gsl_integration_qag , Ptr <gsl_function> -> CDouble -> CDouble -> CDouble -> CDouble -> CSize -> CInt -> CInt -> Ptr <gsl_integration_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_integration_qagi , Ptr <gsl_function> -> CDouble -> CDouble -> CSize -> Ptr <gsl_integration_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_integration_qagiu , Ptr <gsl_function> -> CDouble -> CDouble -> CDouble -> CSize -> Ptr <gsl_integration_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_integration_qagil , Ptr <gsl_function> -> CDouble -> CDouble -> CDouble -> CSize -> Ptr <gsl_integration_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_integration_qags , Ptr <gsl_function> -> CDouble -> CDouble -> CDouble -> CDouble -> CSize -> Ptr <gsl_integration_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_integration_qagp , Ptr <gsl_function> -> Ptr CDouble -> CSize -> CDouble -> CDouble -> CSize -> Ptr <gsl_integration_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_integration_qawc , Ptr <gsl_function> -> CDouble -> CDouble -> CDouble -> CDouble -> CDouble -> CSize -> Ptr <gsl_integration_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_integration_qaws , Ptr <gsl_function> -> CDouble -> CDouble -> Ptr <gsl_integration_qaws_table> -> CDouble -> CDouble -> CSize -> Ptr <gsl_integration_workspace> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_integration_qawo , Ptr <gsl_function> -> CDouble -> CDouble -> CDouble -> CSize -> Ptr <gsl_integration_workspace> -> Ptr <gsl_integration_qawo_table> -> Ptr CDouble -> Ptr CDouble -> IO CInt
#ccall gsl_integration_qawf , Ptr <gsl_function> -> CDouble -> CDouble -> CSize -> Ptr <gsl_integration_workspace> -> Ptr <gsl_integration_workspace> -> Ptr <gsl_integration_qawo_table> -> Ptr CDouble -> Ptr CDouble -> IO CInt

#ccall gsl_integration_cquad_workspace_alloc , CSize -> \
    IO (Ptr <gsl_integration_cquad_workspace>)
#ccall gsl_integration_cquad_workspace_free , \
    Ptr <gsl_integration_cquad_workspace> -> IO ()
#ccall gsl_integration_cquad , Ptr <gsl_function> -> CDouble -> CDouble -> \
    CDouble -> CDouble -> Ptr <gsl_integration_cquad_workspace> -> \
    Ptr CDouble -> Ptr CDouble -> Ptr CSize  -> IO CInt

#starttype gsl_integration_glfixed_table
#field n , CSize
#field x , Ptr CDouble
#field w , Ptr CDouble
#field precomputed , CInt
#stoptype

#ccall gsl_integration_glfixed_table_alloc , CSize -> \
    IO (Ptr <gsl_integration_glfixed_table>)
#ccall gsl_integration_glfixed , Ptr <gsl_function> -> CDouble -> CDouble -> \
    Ptr <gsl_integration_glfixed_table>  -> IO CDouble
#ccall gsl_integration_glfixed_point , CDouble -> CDouble -> CSize -> \
    Ptr CDouble  -> Ptr CDouble -> Ptr <gsl_integration_glfixed_table> -> \
    IO CInt
#ccall gsl_integration_glfixed_table_free , \
    Ptr <gsl_integration_glfixed_table> -> IO ()
