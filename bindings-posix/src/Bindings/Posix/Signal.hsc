#include <bindings.dsl.h>
#include <signal.h>

-- | <http://www.opengroup.org/onlinepubs/9699919799/basedefs/signal.h.html>

module Bindings.Posix.Signal where
#strict_import
import Bindings.Posix.Sys.Types

#starttype sigset_t
#stoptype

#starttype struct sigevent
#field sigev_notify , CInt
#field sigev_signo , CInt
#field sigev_value , <sigval>
#field sigev_notify_function , FunPtr (<sigval> -> IO ())
#field sigev_notify_attributes , Ptr <pthread_attr_t>
#stoptype

#num SIGEV_NONE
#num SIGEV_SIGNAL
#num SIGEV_THREAD

#starttype union sigval
#field sival_int , CInt
#field sival_ptr , Ptr ()
#stoptype

#ifndef __MACH__
#num SIGRTMIN
#num SIGRTMAX
#endif

#num SIGABRT
#num SIGALRM
#num SIGBUS
#num SIGCHLD
#num SIGCONT
#num SIGFPE
#num SIGHUP
#num SIGILL
#num SIGINT
#num SIGKILL
#num SIGPIPE
#num SIGQUIT
#num SIGSEGV
#num SIGSTOP
#num SIGTERM
#num SIGTSTP
#num SIGTTIN
#num SIGTTOU
#num SIGUSR1
#num SIGUSR2
#num SIGURG

#starttype struct sigaction
#field sa_handler , FunPtr (CInt -> IO ())
#field sa_mask , <sigset_t>
#field sa_flags , CInt
#field sa_sigaction , FunPtr (CInt -> Ptr <siginfo_t> -> Ptr () -> IO ())
#stoptype

#num SIG_BLOCK
#num SIG_UNBLOCK
#num SIG_SETMASK
#num SA_NOCLDSTOP
#num SA_RESETHAND
#num SA_RESTART
#num SA_SIGINFO
#num SA_NOCLDWAIT
#num SA_NODEFER

#starttype mcontext_t
#stoptype

#starttype ucontext_t
#field uc_link , Ptr <ucontext_t>
#field uc_sigmask , <sigset_t>
#field uc_stack , <stack_t>
#field uc_mcontext , <mcontext_t>
#stoptype

#starttype stack_t
#field ss_sp , Ptr ()
#field ss_size , CSize
#field ss_flags , CInt
#stoptype

#starttype siginfo_t
#field si_signo , CInt
#field si_code , CInt
#field si_pid , <pid_t>
#field si_uid , <uid_t>
#field si_addr , Ptr ()
#field si_status , CInt
#field si_value , <sigval>
#stoptype

#num ILL_ILLOPC
#num ILL_ILLOPN
#num ILL_ILLADR
#num ILL_ILLTRP
#num ILL_PRVOPC
#num ILL_PRVREG
#num ILL_COPROC
#num ILL_BADSTK
#num FPE_INTDIV
#num FPE_INTOVF
#num FPE_FLTDIV
#num FPE_FLTOVF
#num FPE_FLTUND
#num FPE_FLTRES
#num FPE_FLTINV
#num FPE_FLTSUB
#num SEGV_MAPERR
#num SEGV_ACCERR
#num BUS_ADRALN
#num BUS_ADRERR
#num BUS_OBJERR
#num CLD_EXITED
#num CLD_KILLED
#num CLD_DUMPED
#num CLD_TRAPPED
#num CLD_STOPPED
#num CLD_CONTINUED
#num SI_USER
#num SI_QUEUE
#num SI_TIMER
#num SI_ASYNCIO
#num SI_MESGQ

#ccall kill , <pid_t> -> CInt -> IO CInt
-- ccall psiginfo ,  Ptr <siginfo_t> -> CString -> IO ()
#ccall psignal , CInt -> CString -> IO ()
#ccall pthread_kill , <pthread_t> -> CInt -> IO CInt
#ccall pthread_sigmask , CInt ->  Ptr <sigset_t> -> \
  Ptr <sigset_t> -> IO CInt
#ccall sigaction , CInt ->  Ptr <sigaction> -> \
  Ptr <sigaction> -> IO CInt
#ccall sigaddset , Ptr <sigset_t> -> CInt -> IO CInt
#ccall sigdelset , Ptr <sigset_t> -> CInt -> IO CInt
#ccall sigemptyset , Ptr <sigset_t> -> IO CInt
#ccall sigfillset , Ptr <sigset_t> -> IO CInt
#ccall sigismember ,  Ptr <sigset_t> -> CInt -> IO CInt
#ccall sigpending , Ptr <sigset_t> -> IO CInt
#ccall sigprocmask , CInt ->  Ptr <sigset_t> -> \
  Ptr <sigset_t> -> IO CInt
-- ccall sigqueue , <pid_t> -> CInt ->  <sigval> -> IO CInt
#ccall sigsuspend ,  Ptr <sigset_t> -> IO CInt
-- ccall sigtimedwait ,  Ptr <sigset_t> -> \
--   Ptr <siginfo_t> ->  Ptr <timespec> -> IO CInt
#ccall sigwait ,  Ptr <sigset_t> -> Ptr CInt -> IO CInt
#ccall sigwaitinfo ,  Ptr <sigset_t> -> Ptr <siginfo_t> -> \
  IO CInt

