#include <bindings.dsl.h>
#include <sys/select.h>

-- | <http://www.opengroup.org/onlinepubs/9699919799/basedefs/sys_select.h.html>

module Bindings.Posix.Sys.Select where
#strict_import
import Bindings.Posix.Sys.Types
import Bindings.Posix.Time
import Bindings.Posix.Signal

#starttype struct timeval
#field tv_sec , CTime
#field tv_usec , <suseconds_t>
#stoptype

#starttype fd_set
#stoptype

#num FD_SETSIZE

#cinline FD_CLR , CInt -> Ptr <fd_set> -> IO ()
#cinline FD_ISSET , CInt -> Ptr <fd_set> -> IO CInt
#cinline FD_SET , CInt -> Ptr <fd_set> -> IO ()
#cinline FD_ZERO , Ptr <fd_set> -> IO ()

#ccall pselect , CInt -> Ptr <fd_set> -> Ptr <fd_set> -> \
  Ptr <fd_set> -> Ptr <timespec> -> Ptr <sigset_t> -> IO CInt
#ccall select , CInt -> Ptr <fd_set> -> Ptr <fd_set> -> \
  Ptr <fd_set> -> Ptr <timeval> -> IO CInt

