#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-String-Chunks.html>

module Bindings.GLib.DataTypes.StringChunks where
#strict_import
import Bindings.GLib.Fundamentals

#opaque_t GStringChunk

#ccall g_string_chunk_new , <gsize> -> IO (Ptr <GStringChunk>)
#ccall g_string_chunk_insert , Ptr <GStringChunk> -> Ptr <gchar> -> IO (Ptr <gchar>)
#ccall g_string_chunk_insert_const , Ptr <GStringChunk> -> Ptr <gchar> -> IO (Ptr <gchar>)
#ccall g_string_chunk_insert_len , Ptr <GStringChunk> -> Ptr <gchar> -> <gssize> -> IO (Ptr <gchar>)
#ccall g_string_chunk_clear , Ptr <GStringChunk> -> IO ()
#ccall g_string_chunk_free , Ptr <GStringChunk> -> IO ()

