#include <bindings.dsl.h>
#include <sys/types.h>

-- | <http://www.opengroup.org/onlinepubs/9699919799/basedefs/sys_types.h.html>

module Bindings.Posix.Sys.Types where
#strict_import

#integral_t blkcnt_t
#integral_t blksize_t
#integral_t clockid_t
#integral_t dev_t
#integral_t gid_t
#integral_t id_t
#integral_t ino_t
#integral_t mode_t
#integral_t nlink_t
#integral_t off_t
#integral_t pid_t

#starttype pthread_attr_t
#stoptype

#starttype pthread_barrier_t
#stoptype

#starttype pthread_barrierattr_t
#stoptype

#starttype pthread_cond_t
#stoptype

#starttype pthread_condattr_t
#stoptype

#starttype pthread_key_t
#stoptype

#starttype pthread_mutex_t
#stoptype

#starttype pthread_mutexattr_t
#stoptype

#starttype pthread_once_t
#stoptype

#starttype pthread_rwlock_t
#stoptype

#starttype pthread_rwlockattr_t
#stoptype

#starttype pthread_spinlock_t
#stoptype

#integral_t pthread_t

#integral_t size_t
#integral_t ssize_t
#integral_t suseconds_t
#integral_t time_t
#integral_t timer_t
#integral_t uid_t

