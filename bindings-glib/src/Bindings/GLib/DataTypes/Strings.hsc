#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Strings.html>

module Bindings.GLib.DataTypes.Strings where
import Bindings.GLib.Fundamentals.BasicTypes
import Bindings.GLib.Utilities.UnicodeManipulation
#strict_import

#starttype GString
#field str , Ptr <gchar>
#field len , <gsize>
#field allocated_len , <gsize>
#stoptype

#ccall g_string_new , Ptr <gchar> -> IO (Ptr <GString>)
#ccall g_string_new_len , Ptr <gchar> -> <gssize> -> IO (Ptr <GString>)
#ccall g_string_sized_new , <gsize> -> IO (Ptr <GString>)
#ccall g_string_assign , Ptr <GString> -> Ptr <gchar> -> IO (Ptr <GString>)
#ccall g_string_append , Ptr <GString> -> Ptr <gchar> -> IO (Ptr <GString>)
#ccall g_string_append_c , Ptr <GString> -> <gchar> -> IO (Ptr <GString>)
#ccall g_string_append_unichar , Ptr <GString> -> \
    <gunichar> -> IO (Ptr <GString>)
#ccall g_string_append_len , Ptr <GString> -> Ptr <gchar> -> \
    <gssize> -> IO (Ptr <GString>)
#ccall g_string_append_uri_escaped , Ptr <GString> -> CString -> \
    CString -> <gboolean> -> IO (Ptr <GString>)
#ccall g_string_prepend , Ptr <GString> -> Ptr <gchar> -> IO (Ptr <GString>)
#ccall g_string_prepend_c , Ptr <GString> -> <gchar> -> IO (Ptr <GString>)
#ccall g_string_prepend_unichar , Ptr <GString> -> \
    <gunichar> -> IO (Ptr <GString>)
#ccall g_string_prepend_len , Ptr <GString> -> Ptr <gchar> -> \
    <gssize> -> IO (Ptr <GString>)
#ccall g_string_insert , Ptr <GString> -> <gssize> -> \
    Ptr <gchar> -> IO (Ptr <GString>)
#ccall g_string_insert_c , Ptr <GString> -> <gssize> -> \
    <gchar> -> IO (Ptr <GString>)
#ccall g_string_insert_unichar , Ptr <GString> -> <gssize> -> \
    <gunichar> -> IO (Ptr <GString>)
#ccall g_string_insert_len , Ptr <GString> -> <gssize> -> \
    Ptr <gchar> -> <gssize> -> IO (Ptr <GString>)
#ccall g_string_overwrite , Ptr <GString> -> <gsize> -> \
    Ptr <gchar> -> IO (Ptr <GString>)
#ccall g_string_overwrite_len , Ptr <GString> -> <gsize> -> \
    Ptr <gchar> -> <gssize> -> IO (Ptr <GString>)
#ccall g_string_erase , Ptr <GString> -> <gssize> -> \
    <gssize> -> IO (Ptr <GString>)
#ccall g_string_truncate , Ptr <GString> -> <gsize> -> IO (Ptr <GString>)
#ccall g_string_set_size , Ptr <GString> -> <gsize> -> IO (Ptr <GString>)
#ccall g_string_free , Ptr <GString> -> <gboolean> -> IO (Ptr <gchar>)
#ccall g_string_hash , Ptr <GString> -> IO <guint>
#ccall g_string_equal , Ptr <GString> -> Ptr <GString> -> IO <gboolean>
