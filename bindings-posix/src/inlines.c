#include<bindings.cmacros.h>
#include<sys/select.h>
#include<time.h>

BC_INLINE2VOID(FD_CLR,int,fd_set*)
BC_INLINE2(FD_ISSET,int,fd_set*,int)
BC_INLINE2VOID(FD_SET,int,fd_set*)
BC_INLINE1VOID(FD_ZERO,fd_set*)
BC_INLINE_(getdate_err,int)
BC_GLOBALARRAY(tzname,char*)

