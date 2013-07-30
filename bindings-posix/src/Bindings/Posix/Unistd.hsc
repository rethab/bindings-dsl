#include <bindings.dsl.h>
#include <unistd.h>

-- | <http://www.opengroup.org/onlinepubs/9699919799/basedefs/unistd.h.html>

module Bindings.Posix.Unistd where
#strict_import
import Bindings.Posix.Sys.Types

#num _POSIX_VERSION
#num _POSIX2_VERSION
#num _POSIX_ASYNCHRONOUS_IO
#num _POSIX_BARRIERS
#num _POSIX_CHOWN_RESTRICTED
#num _POSIX_CLOCK_SELECTION
#num _POSIX_IPV6
#num _POSIX_JOB_CONTROL
#num _POSIX_MAPPED_FILES
#num _POSIX_MEMORY_PROTECTION
#num _POSIX_NO_TRUNC
#num _POSIX_READER_WRITER_LOCKS
#num _POSIX_REALTIME_SIGNALS
#num _POSIX_REGEXP
#num _POSIX_SAVED_IDS
#num _POSIX_SEMAPHORES
#num _POSIX_SHELL
#num _POSIX_SPIN_LOCKS
#num _POSIX_THREAD_SAFE_FUNCTIONS
#num _POSIX_THREADS
#num _POSIX_TIMEOUTS
#num _POSIX_TIMERS
#num _POSIX2_C_BIND
#num _POSIX2_CHAR_TERM
#num _POSIX2_LOCALEDEF
#num F_OK
#num R_OK
#num W_OK
#num X_OK
#num F_LOCK
#num F_TEST
#num F_TLOCK
#num F_ULOCK
#num _PC_2_SYMLINKS
#num _PC_ALLOC_SIZE_MIN
#num _PC_ASYNC_IO
#num _PC_CHOWN_RESTRICTED
#num _PC_FILESIZEBITS
#num _PC_LINK_MAX
#num _PC_MAX_CANON
#num _PC_MAX_INPUT
#num _PC_NAME_MAX
#num _PC_NO_TRUNC
#num _PC_PATH_MAX
#num _PC_PIPE_BUF
#num _PC_PRIO_IO
#num _PC_REC_INCR_XFER_SIZE
#num _PC_REC_MAX_XFER_SIZE
#num _PC_REC_MIN_XFER_SIZE
#num _PC_REC_XFER_ALIGN
#num _PC_SYMLINK_MAX
#num _PC_SYNC_IO
#num _PC_VDISABLE
#num _SC_2_C_BIND
#num _SC_2_C_DEV
#num _SC_2_CHAR_TERM
#num _SC_2_FORT_DEV
#num _SC_2_FORT_RUN
#num _SC_2_LOCALEDEF
#num _SC_2_PBS
#num _SC_2_PBS_ACCOUNTING
#num _SC_2_PBS_CHECKPOINT
#num _SC_2_PBS_LOCATE
#num _SC_2_PBS_MESSAGE
#num _SC_2_PBS_TRACK
#num _SC_2_SW_DEV
#num _SC_2_UPE
#num _SC_2_VERSION
#num _SC_ADVISORY_INFO
#num _SC_AIO_LISTIO_MAX
#num _SC_AIO_MAX
#num _SC_AIO_PRIO_DELTA_MAX
#num _SC_ARG_MAX
#num _SC_ASYNCHRONOUS_IO
#num _SC_ATEXIT_MAX
#num _SC_BARRIERS
#num _SC_BC_BASE_MAX
#num _SC_BC_DIM_MAX
#num _SC_BC_SCALE_MAX
#num _SC_BC_STRING_MAX
#num _SC_CHILD_MAX
#num _SC_CLK_TCK
#num _SC_CLOCK_SELECTION
#num _SC_COLL_WEIGHTS_MAX
#num _SC_CPUTIME
#num _SC_DELAYTIMER_MAX
#num _SC_EXPR_NEST_MAX
#num _SC_FSYNC
#num _SC_GETGR_R_SIZE_MAX
#num _SC_GETPW_R_SIZE_MAX
#num _SC_HOST_NAME_MAX
#num _SC_IOV_MAX
#num _SC_IPV6
#num _SC_JOB_CONTROL
#num _SC_LINE_MAX
#num _SC_LOGIN_NAME_MAX
#num _SC_MAPPED_FILES
#num _SC_MEMLOCK
#num _SC_MEMLOCK_RANGE
#num _SC_MEMORY_PROTECTION
#num _SC_MESSAGE_PASSING
#num _SC_MONOTONIC_CLOCK
#num _SC_MQ_OPEN_MAX
#num _SC_MQ_PRIO_MAX
#num _SC_NGROUPS_MAX
#num _SC_OPEN_MAX
#num _SC_PAGE_SIZE
#num _SC_PAGESIZE
#num _SC_PRIORITIZED_IO
#num _SC_PRIORITY_SCHEDULING
#num _SC_RAW_SOCKETS
#num _SC_RE_DUP_MAX
#num _SC_READER_WRITER_LOCKS
#num _SC_REALTIME_SIGNALS
#num _SC_REGEXP
#num _SC_RTSIG_MAX
#num _SC_SAVED_IDS
#num _SC_SEM_NSEMS_MAX
#num _SC_SEM_VALUE_MAX
#num _SC_SEMAPHORES
#num _SC_SHARED_MEMORY_OBJECTS
#num _SC_SHELL
#num _SC_SIGQUEUE_MAX
#num _SC_SPAWN
#num _SC_SPIN_LOCKS
#num _SC_SPORADIC_SERVER
#num _SC_STREAM_MAX
#num _SC_SYMLOOP_MAX
#num _SC_SYNCHRONIZED_IO
#num _SC_THREAD_ATTR_STACKADDR
#num _SC_THREAD_ATTR_STACKSIZE
#num _SC_THREAD_CPUTIME
#num _SC_THREAD_DESTRUCTOR_ITERATIONS
#num _SC_THREAD_KEYS_MAX
#num _SC_THREAD_PRIO_INHERIT
#num _SC_THREAD_PRIO_PROTECT
#num _SC_THREAD_PRIORITY_SCHEDULING
#num _SC_THREAD_PROCESS_SHARED
#num _SC_THREAD_SAFE_FUNCTIONS
#num _SC_THREAD_SPORADIC_SERVER
#num _SC_THREAD_STACK_MIN
#num _SC_THREAD_THREADS_MAX
#num _SC_THREADS
#num _SC_TIMEOUTS
#num _SC_TIMER_MAX
#num _SC_TIMERS
#num _SC_TRACE
#num _SC_TRACE_EVENT_FILTER
#num _SC_TRACE_INHERIT
#num _SC_TRACE_LOG
#num _SC_TTY_NAME_MAX
#num _SC_TYPED_MEMORY_OBJECTS
#num _SC_TZNAME_MAX
#num _SC_VERSION
#num _SC_XOPEN_CRYPT
#num _SC_XOPEN_ENH_I18N
#num _SC_XOPEN_REALTIME
#num _SC_XOPEN_REALTIME_THREADS
#num _SC_XOPEN_SHM
#num _SC_XOPEN_UNIX
#num _SC_XOPEN_VERSION
#num STDERR_FILENO
#num STDIN_FILENO
#num STDOUT_FILENO
#num _POSIX_VDISABLE

#ccall access , CString -> CInt -> IO CInt
#ccall alarm , CUInt -> IO CUInt
#ccall chdir , CString -> IO CInt
#ccall chown , CString -> <uid_t> -> <gid_t> -> IO CInt
#ccall close , CInt -> IO CInt
#ccall confstr , CInt -> CString -> CSize -> IO CSize
#ccall dup , CInt -> IO CInt
#ccall dup2 , CInt -> CInt -> IO CInt
#ccall _exit , CInt -> IO ()
#ccall execv , CString -> Ptr CString -> IO CInt
#ccall execve , CString -> Ptr CString -> Ptr CString -> IO CInt
#ccall execvp , CString -> Ptr CString -> IO CInt
#ccall faccessat , CInt -> CString -> CInt -> CInt -> IO CInt
#ccall fchdir , CInt -> IO CInt
#ccall fchown , CInt -> <uid_t> -> <gid_t> -> IO CInt
#ccall fchownat , CInt -> CString -> <uid_t> -> <gid_t> -> CInt -> IO CInt
#ccall fexecve , CInt -> Ptr CString -> Ptr CString -> IO CInt
#ccall fork , IO <pid_t>
#ccall fpathconf , CInt -> CInt -> IO CLong
#ccall ftruncate , CInt -> <off_t> -> IO CInt
#ccall getcwd , CString -> CSize -> IO CString
#ccall getegid , IO <gid_t>
#ccall geteuid , IO <uid_t>
#ccall getgid , IO <gid_t>
#ccall getgroups , CInt -> Ptr <gid_t> -> IO CInt
#ccall gethostname , CString -> CSize -> IO CInt
#ccall getlogin , IO CString
#ccall getlogin_r , CString -> CSize -> IO CInt
#ccall getopt , CInt -> Ptr CString -> CString -> IO CInt
#ccall getpgid , <pid_t> -> IO <pid_t>
#ccall getpgrp , IO <pid_t>
#ccall getpid , IO <pid_t>
#ccall getppid , IO <pid_t>
#ccall getsid , <pid_t> -> IO <pid_t>
#ccall getuid , IO <uid_t>
#ccall isatty , CInt -> IO CInt
#ccall lchown , CString -> <uid_t> -> <gid_t> -> IO CInt
#ccall link , CString -> CString -> IO CInt
#ccall linkat , CInt -> CString -> CInt -> CString -> CInt -> IO CInt
#ccall lseek , CInt -> <off_t> -> CInt -> IO <off_t>
#ccall pathconf , CString -> CInt -> IO CLong
#ccall pause , IO CInt
#ccall pipe , Ptr CInt -> IO CInt
#ccall pread , CInt -> Ptr () -> CSize -> <off_t> -> IO <ssize_t>
#ccall pwrite , CInt -> Ptr () -> CSize -> <off_t> -> IO <ssize_t>
#ccall read , CInt -> Ptr () -> CSize -> IO <ssize_t>
#ccall readlink , CString -> CString -> CSize -> IO <ssize_t>
#ccall readlinkat , CInt -> CString -> CString -> CSize -> IO <ssize_t>
#ccall rmdir , CString -> IO CInt
#ccall setegid , <gid_t> -> IO CInt
#ccall seteuid , <uid_t> -> IO CInt
#ccall setgid , <gid_t> -> IO CInt
#ccall setpgid , <pid_t> -> <pid_t> -> IO CInt
#ccall setsid , IO <pid_t>
#ccall setuid , <uid_t> -> IO CInt
#ccall sleep , CUInt -> IO CUInt
#ccall symlink , CString -> CString -> IO CInt
#ccall symlinkat , CString -> CInt -> CString -> IO CInt
#ccall sysconf , CInt -> IO CLong
#ccall tcgetpgrp , CInt -> IO <pid_t>
#ccall tcsetpgrp , CInt -> <pid_t> -> IO CInt
#ccall truncate , CString -> <off_t> -> IO CInt
#ccall ttyname , CInt -> IO CString
#ccall ttyname_r , CInt -> CString -> CSize -> IO CInt
#ccall unlink , CString -> IO CInt
#ccall unlinkat , CInt -> CString -> CInt -> IO CInt
#ccall write , CInt -> Ptr () -> CSize -> IO <ssize_t>

#globalvar optarg , CString
#globalvar opterr , CInt
#globalvar optind , CInt
#globalvar optopt , CInt

