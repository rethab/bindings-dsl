#include <bindings.dsl.h>
#include <time.h>

-- | <http://www.opengroup.org/onlinepubs/9699919799/basedefs/time.h.html>

module Bindings.Posix.Time where
#strict_import
import Bindings.Posix.Sys.Types
import Bindings.Posix.Locale
import Bindings.Posix.Signal

#starttype struct tm
#field tm_sec , CInt
#field tm_min , CInt
#field tm_hour , CInt
#field tm_mday , CInt
#field tm_mon , CInt
#field tm_year , CInt
#field tm_wday , CInt
#field tm_yday , CInt
#field tm_isdst , CInt
#stoptype

#starttype struct timespec
#field tv_sec , CTime
#field tv_nsec , CLong
#stoptype

#starttype struct itimerspec
#field it_interval , <timespec>
#field it_value , <timespec>
#stoptype

#num CLOCKS_PER_SEC
#num CLOCK_REALTIME
#num TIMER_ABSTIME

#cinline getdate_err , IO CInt

#ccall clock_getres , <clockid_t> -> Ptr <timespec> -> IO CInt
#ccall clock_gettime , <clockid_t> -> Ptr <timespec> -> IO CInt
#ccall clock_nanosleep , <clockid_t> -> CInt -> Ptr <timespec> -> Ptr <timespec> -> IO CInt
#ccall clock_settime , <clockid_t> -> Ptr <timespec> -> IO CInt
#ccall difftime , <time_t> -> <time_t> -> IO CDouble
#ccall getdate ,  CString -> IO (Ptr <tm>)
#ccall gmtime , Ptr <time_t> -> IO (Ptr <tm>)
#ccall gmtime_r , Ptr <time_t> -> Ptr <tm> -> IO (Ptr <tm>)
#ccall localtime , Ptr <time_t> -> IO (Ptr <tm>)
#ccall localtime_r ,  Ptr <time_t> -> Ptr <tm> -> IO (Ptr <tm>)
#ccall mktime , Ptr <tm> -> IO <time_t>
#ccall nanosleep ,  Ptr <timespec> -> Ptr <timespec> -> IO CInt

#ccall strftime , CString -> CSize -> CString -> Ptr <tm> -> IO CSize
-- #ccall strftime_l , CString -> CSize -> CString -> Ptr <tm> -> <locale_t> -> IO CSize
#ccall strptime ,  CString -> CString -> Ptr <tm> -> IO CString
#ccall time , Ptr <time_t> -> IO <time_t>
#ccall timer_create , <clockid_t> -> Ptr <sigevent> -> Ptr <timer_t> -> IO CInt
#ccall timer_delete , <timer_t> -> IO CInt
#ccall timer_getoverrun , <timer_t> -> IO CInt
#ccall timer_gettime , <timer_t> -> Ptr <itimerspec> -> IO CInt
#ccall timer_settime , <timer_t> -> CInt -> Ptr <itimerspec> -> Ptr <itimerspec> -> IO CInt
#ccall tzset , IO ()

#globalvar daylight , CInt
#globalvar timezone , CLong
#globalarray tzname , CString

