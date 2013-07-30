#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Thread-Pools.html>

module Bindings.GLib.CoreApplicationSupport.ThreadPools where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.CoreApplicationSupport.ErrorReporting
import Bindings.GLib.DataTypes.DoublyLinkedLists

#starttype GThreadPool
#field func , <GFunc>
#field user_data , <gpointer>
#field exclusive , <gboolean>
#stoptype

#ccall g_thread_pool_new , <GFunc> -> <gpointer> -> <gint> -> <gboolean> -> Ptr (Ptr <GError>) -> IO (Ptr <GThreadPool>)
#ccall g_thread_pool_push , Ptr <GThreadPool> -> <gpointer> -> Ptr (Ptr <GError>) -> IO ()
#ccall g_thread_pool_set_max_threads , Ptr <GThreadPool> -> <gint> -> Ptr (Ptr <GError>) -> IO ()
#ccall g_thread_pool_get_max_threads , Ptr <GThreadPool> -> IO <gint>
#ccall g_thread_pool_get_num_threads , Ptr <GThreadPool> -> IO <guint>
#ccall g_thread_pool_unprocessed , Ptr <GThreadPool> -> IO <guint>
#ccall g_thread_pool_free , Ptr <GThreadPool> -> <gboolean> -> <gboolean> -> IO ()
#ccall g_thread_pool_set_max_unused_threads , <gint> -> IO ()
#ccall g_thread_pool_get_max_unused_threads , IO <gint>
#ccall g_thread_pool_get_num_unused_threads , IO <guint>
#ccall g_thread_pool_stop_unused_threads , IO ()
#ccall g_thread_pool_set_sort_function , Ptr <GThreadPool> -> <GCompareDataFunc> -> <gpointer> -> IO ()
#ccall g_thread_pool_set_max_idle_time , <guint> -> IO ()
#ccall g_thread_pool_get_max_idle_time , IO <guint>

