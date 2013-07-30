#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Hostname-Utilities.html>

module Bindings.GLib.Utilities.HostnameUtilities where
#strict_import
import Bindings.GLib.Fundamentals

#ccall g_hostname_to_ascii , Ptr <gchar> -> IO  (Ptr <gchar>)
#ccall g_hostname_to_unicode , Ptr <gchar> -> IO  (Ptr <gchar>)
#ccall g_hostname_is_non_ascii , Ptr <gchar> -> IO <gboolean>
#ccall g_hostname_is_ascii_encoded , Ptr <gchar> -> IO <gboolean>
#ccall g_hostname_is_ip_address , Ptr <gchar> -> IO <gboolean>

