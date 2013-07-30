#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Message-Logging.html>

module Bindings.GLib.CoreApplicationSupport.MessageLogging where
#strict_import
import Bindings.GLib.Fundamentals

#pointer G_LOG_DOMAIN
#num G_LOG_FATAL_MASK
#num G_LOG_LEVEL_USER_SHIFT

#callback GLogFunc , Ptr <gchar> -> <GLogLevelFlags> -> Ptr <gchar> -> <gpointer> -> IO ()

#integral_t GLogLevelFlags

#num G_LOG_FLAG_RECURSION
#num G_LOG_FLAG_FATAL
#num G_LOG_LEVEL_ERROR
#num G_LOG_LEVEL_CRITICAL
#num G_LOG_LEVEL_WARNING
#num G_LOG_LEVEL_MESSAGE
#num G_LOG_LEVEL_INFO
#num G_LOG_LEVEL_DEBUG
#num G_LOG_LEVEL_MASK

#ccall g_log_set_handler , Ptr <gchar> -> <GLogLevelFlags> -> <GLogFunc> -> <gpointer> -> IO <guint>
#ccall g_log_remove_handler , Ptr <gchar> -> <guint> -> IO ()
#ccall g_log_set_always_fatal , <GLogLevelFlags> -> IO <GLogLevelFlags>
#ccall g_log_set_fatal_mask , Ptr <gchar> -> <GLogLevelFlags> -> IO <GLogLevelFlags>
#ccall g_log_default_handler , Ptr <gchar> -> <GLogLevelFlags> -> Ptr <gchar> -> <gpointer> -> IO ()
#ccall g_log_set_default_handler , <GLogFunc> -> <gpointer> -> IO <GLogFunc>

