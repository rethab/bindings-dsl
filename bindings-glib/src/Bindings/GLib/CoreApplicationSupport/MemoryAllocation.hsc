#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Memory-Allocation.html>

module Bindings.GLib.CoreApplicationSupport.MemoryAllocation where
import Bindings.GLib.Fundamentals.BasicTypes
#strict_import

#ccall g_malloc , <gsize> -> IO <gpointer>
#ccall g_malloc0 , <gsize> -> IO <gpointer>
#ccall g_realloc , <gpointer> -> <gsize> -> IO <gpointer>
#ccall g_try_malloc , <gsize> -> IO <gpointer>
#ccall g_try_malloc0 , <gsize> -> IO <gpointer>
#ccall g_try_realloc , <gpointer> -> <gsize> -> IO <gpointer>
#ccall g_free , <gpointer> -> IO ()
#globalvar g_mem_gc_friendly , <gboolean>

#ccall g_memdup , <gconstpointer> -> <guint> -> IO <gpointer>

#starttype GMemVTable
#field malloc , FunPtr (<gsize> -> IO <gpointer>)
#field realloc , FunPtr (<gpointer> -> <gsize> -> IO <gpointer>)
#field free , FunPtr (<gpointer> -> IO ())
#field calloc , FunPtr (<gsize> -> <gsize> -> IO <gpointer>)
#field try_malloc , FunPtr (<gsize> -> IO <gpointer>)
#field try_realloc , FunPtr (<gpointer> -> <gsize> -> IO <gpointer>)
#stoptype

#ccall g_mem_set_vtable , Ptr <GMemVTable> -> IO ()
#ccall g_mem_is_system_malloc , IO <gboolean>

#globalvar glib_mem_profiler_table , Ptr <GMemVTable>
#ccall g_mem_profile , IO ()

