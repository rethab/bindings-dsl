#include <bindings.dsl.h>
#include <regex.h>

-- | <http://www.opengroup.org/onlinepubs/9699919799/basedefs/regex.h.html>

module Bindings.Posix.Regex where
#strict_import
import Bindings.Posix.Sys.Types

#starttype regex_t
#field re_nsub , CSize
#stoptype

#integral_t regoff_t

#starttype regmatch_t
#field rm_so , <regoff_t>
#field rm_eo , <regoff_t>
#stoptype

#num REG_EXTENDED
#num REG_ICASE
#num REG_NOSUB
#num REG_NEWLINE

#num REG_NOTBOL
#num REG_NOTEOL

#num REG_NOMATCH
#num REG_BADPAT
#num REG_ECOLLATE
#num REG_ECTYPE
#num REG_EESCAPE
#num REG_ESUBREG
#num REG_EBRACK
#num REG_EPAREN
#num REG_EBRACE
#num REG_BADBR
#num REG_ERANGE
#num REG_ESPACE
#num REG_BADRPT

#ccall regcomp , Ptr <regex_t> -> CString -> CInt -> IO CInt
#ccall regerror , CInt -> Ptr <regex_t> -> CString -> CSize -> IO CSize
#ccall regexec , Ptr <regex_t> -> CString -> CSize -> Ptr <regmatch_t> -> CInt -> IO CInt
#ccall regfree , Ptr <regex_t> -> IO ()
