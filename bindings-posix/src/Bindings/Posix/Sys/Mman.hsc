#include <bindings.dsl.h>
#include <sys/mman.h>

-- | <http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/sys_mman.h.html>

module Bindings.Posix.Sys.Mman where
#strict_import
import Bindings.Posix.Sys.Types

#num PROT_EXEC
#num PROT_NONE
#num PROT_READ
#num PROT_WRITE
#num MAP_FIXED
#num MAP_PRIVATE
#num MAP_SHARED

#pointer MAP_FAILED

#ccall mmap , Ptr () -> CSize -> CInt -> CInt-> CInt-> <off_t> -> IO (Ptr ())
#ccall mprotect , Ptr () -> CSize -> IO CInt
#ccall munmap , Ptr () -> CSize -> IO CInt

