#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Quarks.html>

module Bindings.GLib.DataTypes.Quarks where
#strict_import
import Bindings.GLib.Fundamentals

#integral_t GQuark

#ccall g_quark_from_string , Ptr <gchar> -> IO <GQuark>
#ccall g_quark_from_static_string , Ptr <gchar> -> IO <GQuark>
#ccall g_quark_to_string , <GQuark> -> IO (Ptr <gchar>)
#ccall g_quark_try_string , Ptr <gchar> -> IO <GQuark>
#ccall g_intern_string , Ptr <gchar> -> IO (Ptr <gchar>)
#ccall g_intern_static_string , Ptr <gchar> -> IO (Ptr <gchar>)

