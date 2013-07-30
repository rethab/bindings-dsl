#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Asynchronous-Queues.html>

module Bindings.GLib.CoreApplicationSupport.AsynchronousQueues where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.Utilities.DateAndTimeFunctions
import Bindings.GLib.DataTypes.DoublyLinkedLists
import Bindings.GLib.DataTypes.Datasets

#opaque_t GAsyncQueue

#ccall g_async_queue_new , IO (Ptr <GAsyncQueue>)
#ccall g_async_queue_new_full , <GDestroyNotify> -> IO (Ptr <GAsyncQueue>)
#ccall g_async_queue_ref , Ptr <GAsyncQueue> -> IO (Ptr <GAsyncQueue>)
#ccall g_async_queue_unref , Ptr <GAsyncQueue> -> IO ()
#ccall g_async_queue_push , Ptr <GAsyncQueue> -> <gpointer> -> IO ()
#ccall g_async_queue_push_sorted , Ptr <GAsyncQueue> -> <gpointer> -> <GCompareDataFunc> -> <gpointer> -> IO ()
#ccall g_async_queue_pop , Ptr <GAsyncQueue> -> IO <gpointer>
#ccall g_async_queue_try_pop , Ptr <GAsyncQueue> -> IO <gpointer>
#ccall g_async_queue_timed_pop , Ptr <GAsyncQueue> -> Ptr <GTimeVal> -> IO <gpointer>
#ccall g_async_queue_length , Ptr <GAsyncQueue> -> IO <gint>
#ccall g_async_queue_sort , Ptr <GAsyncQueue> -> <GCompareDataFunc> -> <gpointer> -> IO ()

#ccall g_async_queue_lock , Ptr <GAsyncQueue> -> IO ()
#ccall g_async_queue_unlock , Ptr <GAsyncQueue> -> IO ()
#ccall g_async_queue_push_unlocked , Ptr <GAsyncQueue> -> <gpointer> -> IO ()
#ccall g_async_queue_push_sorted_unlocked , Ptr <GAsyncQueue> -> <gpointer> -> <GCompareDataFunc> -> <gpointer> -> IO ()
#ccall g_async_queue_pop_unlocked , Ptr <GAsyncQueue> -> IO <gpointer>
#ccall g_async_queue_try_pop_unlocked , Ptr <GAsyncQueue> -> IO <gpointer>
#ccall g_async_queue_timed_pop_unlocked , Ptr <GAsyncQueue> -> Ptr <GTimeVal> -> IO <gpointer>
#ccall g_async_queue_length_unlocked , Ptr <GAsyncQueue> -> IO <gint>
#ccall g_async_queue_sort_unlocked , Ptr <GAsyncQueue> -> <GCompareDataFunc> -> <gpointer> -> IO ()

