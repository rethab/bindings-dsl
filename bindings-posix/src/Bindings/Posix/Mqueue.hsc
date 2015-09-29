#include <bindings.dsl.h>
#include <mqueue.h>

-- | <http://pubs.opengroup.org/onlinepubs/9699919799/basedefs/mqueue.h.html>

module Bindings.Posix.Mqueue where
#strict_import
import Bindings.Posix.Signal
import Bindings.Posix.Sys.Types
import Bindings.Posix.Time

#integral_t mqd_t

#starttype struct mq_attr
#field mq_flags, CLong
#field mq_maxmsg, CLong
#field mq_msgsize, CLong
#field mq_curmsgs, CLong
#stoptype

#ccall mq_close, <mqd_t> -> IO CInt
#ccall mq_getattr, <mqd_t> -> Ptr <mq_attr> -> IO CInt
#ccall mq_notify, <mqd_t> -> Ptr <sigevent> -> IO CInt
#ccall mq_open, Ptr CChar -> CInt -> <mode_t> -> Ptr <mq_attr> -> IO <mqd_t>
#ccall mq_receive, <mqd_t> -> Ptr CChar -> <size_t> -> Ptr CUInt -> IO <ssize_t>
#ccall mq_send, <mqd_t> -> Ptr <mq_attr> -> <size_t> -> CUInt -> IO CInt
#ccall mq_setattr, <mqd_t> -> Ptr <mq_attr> -> Ptr <mq_attr> -> IO CInt
#ccall mq_timedreceive, <mqd_t> -> Ptr CChar -> <size_t> -> Ptr CUInt -> Ptr <timespec> -> IO <ssize_t>
#ccall mq_timedsend, <mqd_t> -> Ptr CChar -> <size_t> -> CUInt -> Ptr <timespec> -> IO CInt
#ccall mq_unlink, Ptr CChar -> IO CInt
