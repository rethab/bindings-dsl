#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Memory-Slices.html>

module Bindings.GLib.DataTypes.MemorySlices where
#strict_import
import Bindings.GLib.Fundamentals

#ccall g_slice_alloc , <gsize> -> IO <gpointer>
#ccall g_slice_alloc0 , <gsize> -> IO <gpointer>
#ccall g_slice_copy , <gsize> -> <gconstpointer> -> IO <gpointer>
#ccall g_slice_free1 , <gsize> -> <gpointer> -> IO ()
#ccall g_slice_free_chain_with_offset , <gsize> -> <gpointer> -> <gsize> -> IO ()

