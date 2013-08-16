#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Threads.html>

module Bindings.GLib.CoreApplicationSupport.Threads where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.Utilities.DateAndTimeFunctions
import Bindings.GLib.DataTypes.Datasets
import Bindings.GLib.DataTypes.DoublyLinkedLists
import Bindings.GLib.CoreApplicationSupport.ErrorReporting

#num G_THREAD_ERROR

#integral_t GThreadError

#num G_THREAD_ERROR_AGAIN

#starttype GThreadFunctions
#field mutex_new , FunPtr (IO (Ptr <GMutex>))
#field mutex_lock , FunPtr (Ptr <GMutex> -> IO ())
#field mutex_trylock , FunPtr (Ptr <GMutex> -> IO <gboolean>)
#field mutex_unlock , FunPtr (Ptr <GMutex> -> IO ())
#field mutex_free , FunPtr (Ptr <GMutex> -> IO ())
#field cond_new , FunPtr (IO (Ptr <GCond>))
#field cond_signal , FunPtr (Ptr <GCond> -> IO ())
#field cond_broadcast , FunPtr (Ptr <GCond> -> IO ())
#field cond_wait , FunPtr (Ptr <GCond> -> Ptr <GMutex> -> IO ())
#field cond_timed_wait , FunPtr (Ptr <GCond> -> Ptr <GMutex> -> Ptr <GTimeVal> -> IO <gboolean>)
#field cond_free , FunPtr (Ptr <GCond> -> IO ())
#field private_new , FunPtr (<GDestroyNotify> -> IO (Ptr <GPrivate>))
#field private_get , FunPtr (Ptr <GPrivate> -> IO <gpointer>)
#field private_set , FunPtr (Ptr <GPrivate> -> <gpointer> -> IO ())
#field thread_create , FunPtr (<GThreadFunc> -> <gpointer> -> <gulong> -> <gboolean> -> <gboolean> -> <GThreadPriority> -> <gpointer> -> Ptr (Ptr <GError>) -> IO ())
#field thread_yield , FunPtr (IO ())
#field thread_join , FunPtr (<gpointer> -> IO ())
#field thread_exit , FunPtr (IO ())
#field thread_set_priority , FunPtr (<gpointer> -> <GThreadPriority> -> IO ())
#field thread_self , FunPtr (<gpointer> -> IO ())
#field thread_equal , FunPtr (<gpointer> -> <gpointer> -> IO <gboolean>)
#stoptype

#ccall g_thread_init , Ptr <GThreadFunctions> -> IO ()
#cinline g_thread_supported , IO <gboolean>
#ccall g_thread_get_initialized , IO <gboolean>

#callback_t GThreadFunc , <gpointer> -> IO <gpointer>

#integral_t GThreadPriority

#num G_THREAD_PRIORITY_LOW
#num G_THREAD_PRIORITY_NORMAL
#num G_THREAD_PRIORITY_HIGH
#num G_THREAD_PRIORITY_URGENT

#opaque_t GThread

#cinline g_thread_create , <GThreadFunc> -> <gpointer> -> <gboolean> -> Ptr (Ptr <GError>) -> IO (Ptr <GThread>)
#ccall g_thread_create_full , <GThreadFunc> -> <gpointer> -> <gulong> -> <gboolean> -> <gboolean> -> <GThreadPriority> -> Ptr (Ptr <GError>) -> IO (Ptr <GThread>)
#ccall g_thread_self , IO (Ptr <GThread>)
#ccall g_thread_join , Ptr <GThread> -> IO <gpointer>
#ccall g_thread_set_priority , Ptr <GThread> -> <GThreadPriority> -> IO ()
#cinline g_thread_yield , IO ()
#ccall g_thread_exit , <gpointer> -> IO ()
#ccall g_thread_foreach , <GFunc> -> <gpointer> -> IO ()

#opaque_t GMutex

#cinline g_mutex_new , IO (Ptr <GMutex>)
#cinline g_mutex_lock , Ptr <GMutex> -> IO ()
#cinline g_mutex_trylock , Ptr <GMutex> -> IO <gboolean>
#cinline g_mutex_unlock , Ptr <GMutex> -> IO ()
#cinline g_mutex_free , Ptr <GMutex> -> IO ()

#starttype GStaticMutex
#stoptype

#cinline g_static_mutex_init , Ptr <GStaticMutex> -> IO ()
#cinline g_static_mutex_lock , Ptr <GStaticMutex> -> IO ()
#cinline g_static_mutex_trylock , Ptr <GStaticMutex> -> IO <gboolean>
#cinline g_static_mutex_unlock , Ptr <GStaticMutex> -> IO ()
#cinline g_static_mutex_get_mutex , Ptr <GStaticMutex> -> IO (Ptr <GMutex>) 
#cinline g_static_mutex_free , Ptr <GStaticMutex> -> IO ()

#starttype GStaticRecMutex
#stoptype

#ccall g_static_rec_mutex_init , Ptr <GStaticRecMutex> -> IO ()
#ccall g_static_rec_mutex_lock , Ptr <GStaticRecMutex> -> IO ()
#ccall g_static_rec_mutex_trylock , Ptr <GStaticRecMutex> -> IO <gboolean>
#ccall g_static_rec_mutex_unlock , Ptr <GStaticRecMutex> -> IO ()
#ccall g_static_rec_mutex_lock_full , Ptr <GStaticRecMutex> -> <guint> -> IO ()
#ccall g_static_rec_mutex_unlock_full , Ptr <GStaticRecMutex> -> IO <guint>
#ccall g_static_rec_mutex_free , Ptr <GStaticRecMutex> -> IO ()

#starttype GStaticRWLock
#stoptype

#ccall g_static_rw_lock_init , Ptr <GStaticRWLock> -> IO ()
#ccall g_static_rw_lock_reader_lock , Ptr <GStaticRWLock> -> IO ()
#ccall g_static_rw_lock_reader_trylock , Ptr <GStaticRWLock> -> IO <gboolean>
#ccall g_static_rw_lock_reader_unlock , Ptr <GStaticRWLock> -> IO ()
#ccall g_static_rw_lock_writer_lock , Ptr <GStaticRWLock> -> IO ()
#ccall g_static_rw_lock_writer_trylock , Ptr <GStaticRWLock> -> IO <gboolean>
#ccall g_static_rw_lock_writer_unlock , Ptr <GStaticRWLock> -> IO ()
#ccall g_static_rw_lock_free , Ptr <GStaticRWLock> -> IO ()

#opaque_t GCond

#cinline g_cond_new , IO (Ptr <GCond>)
#cinline g_cond_signal , Ptr <GCond> -> IO ()
#cinline g_cond_broadcast , Ptr <GCond> -> IO ()
#cinline g_cond_wait , Ptr <GCond> -> Ptr <GMutex> -> IO ()
#cinline g_cond_timed_wait , Ptr <GCond> -> Ptr <GMutex> -> Ptr <GTimeVal> -> IO <gboolean>
#cinline g_cond_free , Ptr <GCond> -> IO ()

#opaque_t GPrivate

#cinline g_private_new , <GDestroyNotify> -> IO (Ptr <GPrivate>)
#cinline g_private_get , Ptr <GPrivate> -> IO <gpointer>
#cinline g_private_set , Ptr <GPrivate> -> <gpointer> -> IO ()

#starttype GStaticPrivate
#stoptype

#ccall g_static_private_init , Ptr <GStaticPrivate> -> IO ()
#ccall g_static_private_get , Ptr <GStaticPrivate> -> IO <gpointer>
#ccall g_static_private_set , Ptr <GStaticPrivate> -> <gpointer> -> <GDestroyNotify> -> IO ()
#ccall g_static_private_free , Ptr <GStaticPrivate> -> IO ()

#starttype GOnce
#field status , <GOnceStatus>
#field retval , <gpointer>
#stoptype

#integral_t GOnceStatus

#num G_ONCE_STATUS_NOTCALLED
#num G_ONCE_STATUS_PROGRESS
#num G_ONCE_STATUS_READY

#ccall g_once_init_enter , Ptr <gsize> -> IO <gboolean>
#ccall g_once_init_leave , Ptr <gsize> -> <gsize> -> IO ()

