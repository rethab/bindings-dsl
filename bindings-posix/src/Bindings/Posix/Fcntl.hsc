#include <bindings.dsl.h>
#include <fcntl.h>

-- | <http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/fcntl.h.html>

module Bindings.Posix.Fcntl where
#strict_import
import Bindings.Posix.Sys.Types

#num F_DUPFD
#num F_GETFD
#num F_SETFD
#num F_GETFL
#num F_SETFL
#num F_GETLK
#num F_SETLK
#num F_SETLKW
#num F_GETOWN
#num F_SETOWN
#num FD_CLOEXEC
#num F_RDLCK
#num F_UNLCK
#num F_WRLCK
#num O_CREAT
#num O_EXCL
#num O_NOCTTY
#num O_TRUNC
#num O_APPEND
#num O_NONBLOCK
#num O_SYNC
#num O_ACCMODE
#num O_RDONLY
#num O_RDWR
#num O_WRONLY

#starttype struct flock
#field l_type , CShort
#field l_whence , CShort
#field l_start , <off_t>
#field l_len , <off_t>
#field l_pid , <pid_t>
#stoptype

#ccall creat , CString -> <mode_t> -> IO CInt
