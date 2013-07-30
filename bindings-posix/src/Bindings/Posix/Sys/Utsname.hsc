#include <bindings.dsl.h>
#include <sys/utsname.h>

-- | <http://www.opengroup.org/onlinepubs/9699919799/basedefs/sys_utsname.h.html>

module Bindings.Posix.Sys.Utsname where
#strict_import

#starttype struct utsname
#array_field sysname , CChar
#array_field nodename , CChar
#array_field release , CChar
#array_field version , CChar
#array_field machine , CChar
#stoptype

#ccall uname , Ptr <utsname> -> IO CInt
