#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Error-Reporting.html>

module Bindings.GLib.CoreApplicationSupport.ErrorReporting where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.DataTypes.Quarks

#starttype GError
#field domain , <GQuark>
#field code , <gint>
#field message , Ptr <gchar>
#stoptype

#ccall g_error_new_literal , <GQuark> -> <gint> -> Ptr <gchar> -> IO (Ptr <GError>)
#ccall g_error_free , Ptr <GError> -> IO ()
#ccall g_error_copy , Ptr <GError> -> IO (Ptr <GError>)
#ccall g_error_matches , Ptr <GError> -> <GQuark> -> <gint> -> IO <gboolean>
#ccall g_set_error_literal , Ptr (Ptr <GError>) -> <GQuark> -> <gint> -> Ptr <gchar> -> IO ()
#ccall g_propagate_error , Ptr (Ptr <GError>) -> Ptr <GError> -> IO ()
#ccall g_clear_error , Ptr (Ptr <GError>) -> IO ()

