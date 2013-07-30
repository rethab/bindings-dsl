#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-The-Main-Event-Loop.html>

module Bindings.GLib.CoreApplicationSupport.MainEventLoop where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.Utilities.DateAndTimeFunctions
import Bindings.GLib.DataTypes.Datasets
import Bindings.GLib.CoreApplicationSupport.Threads

#opaque_t GMainLoop

#ccall g_main_loop_new , Ptr <GMainContext> -> <gboolean> -> IO (Ptr <GMainLoop>)
#ccall g_main_loop_ref , Ptr <GMainLoop> -> IO (Ptr <GMainLoop>)
#ccall g_main_loop_unref , Ptr <GMainLoop> -> IO ()
#ccall g_main_loop_run , Ptr <GMainLoop> -> IO ()
#ccall g_main_loop_quit , Ptr <GMainLoop> -> IO ()
#ccall g_main_loop_is_running , Ptr <GMainLoop> -> IO <gboolean>
#ccall g_main_loop_get_context , Ptr <GMainLoop> -> IO (Ptr <GMainContext>)

#num G_PRIORITY_HIGH
#num G_PRIORITY_DEFAULT
#num G_PRIORITY_HIGH_IDLE
#num G_PRIORITY_DEFAULT_IDLE
#num G_PRIORITY_LOW

#opaque_t GMainContext

#ccall g_main_context_new , IO (Ptr <GMainContext>)
#ccall g_main_context_ref , Ptr <GMainContext> -> IO (Ptr <GMainContext>)
#ccall g_main_context_unref , Ptr <GMainContext> -> IO ()
#ccall g_main_context_default , IO (Ptr <GMainContext>)
#ccall g_main_context_iteration , Ptr <GMainContext> -> <gboolean> -> IO <gboolean>
#ccall g_main_context_pending , Ptr <GMainContext> -> IO <gboolean>
#ccall g_main_context_find_source_by_id , Ptr <GMainContext> -> <guint> -> IO (Ptr <GSource>)
#ccall g_main_context_find_source_by_user_data , Ptr <GMainContext> -> <gpointer> -> IO (Ptr <GSource>)
#ccall g_main_context_find_source_by_funcs_user_data , Ptr <GMainContext> -> Ptr <GSourceFuncs> -> <gpointer> -> IO (Ptr <GSource>)
#ccall g_main_context_wakeup , Ptr <GMainContext> -> IO ()
#ccall g_main_context_acquire , Ptr <GMainContext> -> IO <gboolean>
#ccall g_main_context_release , Ptr <GMainContext> -> IO ()
#ccall g_main_context_is_owner , Ptr <GMainContext> -> IO <gboolean>
#ccall g_main_context_wait , Ptr <GMainContext> -> Ptr <GCond> -> Ptr <GMutex> -> IO <gboolean>
#ccall g_main_context_prepare , Ptr <GMainContext> -> Ptr <gint> -> IO <gboolean>
#ccall g_main_context_query , Ptr <GMainContext> -> <gint> -> Ptr <gint> -> Ptr <GPollFD> -> <gint> -> IO <gint>
#ccall g_main_context_check , Ptr <GMainContext> -> <gint> -> Ptr <GPollFD> -> <gint> -> IO <gint>
#ccall g_main_context_dispatch , Ptr <GMainContext> -> IO ()
#ccall g_main_context_set_poll_func , Ptr <GMainContext> -> <GPollFunc> -> IO ()
#ccall g_main_context_get_poll_func , Ptr <GMainContext> -> IO <GPollFunc>

#callback GPollFunc , Ptr <GPollFD> -> <guint> -> <gint> -> IO <gint>

#ccall g_main_context_add_poll , Ptr <GMainContext> -> Ptr <GPollFD> -> <gint> -> IO ()
#ccall g_main_context_remove_poll , Ptr <GMainContext> -> Ptr <GPollFD> -> IO ()
#ccall g_main_depth , IO <gint>
#ccall g_main_current_source , IO (Ptr <GSource>)

#ccall g_main_context_get_thread_default , IO (Ptr <GMainContext>)
#ccall g_main_context_push_thread_default , Ptr <GMainContext> -> IO ()
#ccall g_main_context_pop_thread_default , Ptr <GMainContext> -> IO ()

#ccall g_timeout_source_new , <guint> -> IO (Ptr <GSource>)
#ccall g_timeout_source_new_seconds , <guint> -> IO (Ptr <GSource>)
#ccall g_timeout_add , <guint> -> <GSourceFunc> -> <gpointer> -> IO <guint>
#ccall g_timeout_add_full , <gint> -> <guint> -> <GSourceFunc> -> <gpointer> -> <GDestroyNotify> -> IO <guint>
#ccall g_timeout_add_seconds , <guint> -> <GSourceFunc> -> <gpointer> -> IO <guint>
#ccall g_timeout_add_seconds_full , <gint> -> <guint> -> <GSourceFunc> -> <gpointer> -> <GDestroyNotify> -> IO <guint>

#ccall g_idle_source_new , IO (Ptr <GSource>)
#ccall g_idle_add , <GSourceFunc> -> <gpointer> -> IO <guint>
#ccall g_idle_add_full , <gint> -> <GSourceFunc> -> <gpointer> -> <GDestroyNotify> -> IO <guint>
#ccall g_idle_remove_by_data , <gpointer> -> IO <gboolean>

#integral_t GPid

#callback GChildWatchFunc , <GPid> -> <gint> -> <gpointer> -> IO ()

#ccall g_child_watch_source_new , <GPid> -> IO (Ptr <GSource>)
#ccall g_child_watch_add , <GPid> -> <GChildWatchFunc> -> <gpointer> -> IO <guint>
#ccall g_child_watch_add_full , <gint> -> <GPid> -> <GChildWatchFunc> -> <gpointer> -> <GDestroyNotify> -> IO <guint>

#starttype GPollFD
#field events , <gushort>
#field revents , <gushort>
#stoptype

#ccall g_poll , Ptr <GPollFD> -> <guint> -> <gint> -> IO <gint>

#opaque_t GSource

#callback GSourceDummyMarshal , IO ()

#starttype GSourceFuncs
#field prepare , FunPtr (Ptr <GSource> -> Ptr <gint> -> IO <gboolean>)
#field check , FunPtr (Ptr <GSource> -> IO <gboolean>)
#field dispatch , FunPtr (Ptr <GSource> -> <GSourceFunc> -> <gpointer> -> IO <gboolean>)
#field finalize , FunPtr (Ptr <GSource> -> IO ())
#field closure_callback , <GSourceFunc>
#field closure_marshal , <GSourceDummyMarshal>
#stoptype

#starttype GSourceCallbackFuncs
#field ref , FunPtr (<gpointer> -> IO ())
#field unref , FunPtr (<gpointer> -> IO ())
#field get , FunPtr (<gpointer> -> Ptr <GSource> -> Ptr <GSourceFunc> -> Ptr <gpointer> -> IO ())
#stoptype

#ccall g_source_new , Ptr <GSourceFuncs> -> <guint> -> IO (Ptr <GSource>)
#ccall g_source_ref , Ptr <GSource> -> IO (Ptr <GSource>)
#ccall g_source_unref , Ptr <GSource> -> IO ()
#ccall g_source_set_funcs , Ptr <GSource> -> Ptr <GSourceFuncs> -> IO ()
#ccall g_source_attach , Ptr <GSource> -> Ptr <GMainContext> -> IO <guint>
#ccall g_source_destroy , Ptr <GSource> -> IO ()
#ccall g_source_is_destroyed , Ptr <GSource> -> IO <gboolean>
#ccall g_source_set_priority , Ptr <GSource> -> <gint> -> IO ()
#ccall g_source_get_priority , Ptr <GSource> -> IO <gint>
#ccall g_source_set_can_recurse , Ptr <GSource> -> <gboolean> -> IO ()
#ccall g_source_get_can_recurse , Ptr <GSource> -> IO <gboolean>
#ccall g_source_get_id , Ptr <GSource> -> IO <guint>
#ccall g_source_get_context , Ptr <GSource> -> IO (Ptr <GMainContext>)
#ccall g_source_set_callback , Ptr <GSource> -> <GSourceFunc> -> <gpointer> -> <GDestroyNotify> -> IO ()

#callback GSourceFunc , <gpointer> -> IO <gboolean>

#ccall g_source_set_callback_indirect , Ptr <GSource> -> <gpointer> -> Ptr <GSourceCallbackFuncs> -> IO ()
#ccall g_source_add_poll , Ptr <GSource> -> Ptr <GPollFD> -> IO ()
#ccall g_source_remove_poll , Ptr <GSource> -> Ptr <GPollFD> -> IO ()
#ccall g_source_get_current_time , Ptr <GSource> -> Ptr <GTimeVal> -> IO ()
#ccall g_source_remove , <guint> -> IO <gboolean>
#ccall g_source_remove_by_funcs_user_data , Ptr <GSourceFuncs> -> <gpointer> -> IO <gboolean>
#ccall g_source_remove_by_user_data , <gpointer> -> IO <gboolean>
