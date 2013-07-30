#include <bindings.dsl.h>
#include<glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Commandline-option-parser.html>

module Bindings.GLib.Utilities.CommandlineOptionParser where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.CoreApplicationSupport.ErrorReporting
import Bindings.GLib.DataTypes.Datasets

#integral_t GOptionError

#num G_OPTION_ERROR_UNKNOWN_OPTION
#num G_OPTION_ERROR_BAD_VALUE
#num G_OPTION_ERROR_FAILED

#num G_OPTION_ERROR

#callback GOptionArgFunc , Ptr <gchar> -> Ptr <gchar> -> <gpointer> -> Ptr (Ptr <GError>) -> IO <gboolean>

#opaque_t GOptionContext

#ccall g_option_context_new , Ptr <gchar> -> IO (Ptr <GOptionContext>)
#ccall g_option_context_set_summary , Ptr <GOptionContext> -> Ptr <gchar> -> IO ()
#ccall g_option_context_get_summary , Ptr <GOptionContext> -> IO (Ptr <gchar>)
#ccall g_option_context_set_description , Ptr <GOptionContext> -> Ptr <gchar> -> IO ()
#ccall g_option_context_get_description , Ptr <GOptionContext> -> IO (Ptr <gchar>)


#callback GTranslateFunc , Ptr <gchar> -> <gpointer> -> IO (Ptr <gchar>)

#ccall g_option_context_set_translate_func , Ptr <GOptionContext> -> <GTranslateFunc> -> <gpointer> -> <GDestroyNotify> -> IO ()
#ccall g_option_context_set_translation_domain , Ptr <GOptionContext> -> Ptr <gchar> -> IO ()
#ccall g_option_context_free , Ptr <GOptionContext> -> IO ()
#ccall g_option_context_parse , Ptr <GOptionContext> -> Ptr <gint> -> Ptr (Ptr (Ptr <gchar>)) -> Ptr (Ptr <GError>) -> IO <gboolean>
#ccall g_option_context_set_help_enabled , Ptr <GOptionContext> -> <gboolean> -> IO ()
#ccall g_option_context_get_help_enabled , Ptr <GOptionContext> -> IO <gboolean>
#ccall g_option_context_set_ignore_unknown_options , Ptr <GOptionContext> -> <gboolean> -> IO ()
#ccall g_option_context_get_ignore_unknown_options , Ptr <GOptionContext> -> IO <gboolean>
#ccall g_option_context_get_help , Ptr <GOptionContext> -> <gboolean> -> Ptr <GOptionGroup> -> IO (Ptr <gchar>)


#integral_t GOptionArg

#num G_OPTION_ARG_NONE
#num G_OPTION_ARG_STRING
#num G_OPTION_ARG_INT
#num G_OPTION_ARG_CALLBACK
#num G_OPTION_ARG_FILENAME
#num G_OPTION_ARG_STRING_ARRAY
#num G_OPTION_ARG_FILENAME_ARRAY
#num G_OPTION_ARG_DOUBLE
#num G_OPTION_ARG_INT64

#integral_t GOptionFlags

#num G_OPTION_FLAG_HIDDEN
#num G_OPTION_FLAG_IN_MAIN
#num G_OPTION_FLAG_REVERSE
#num G_OPTION_FLAG_NO_ARG
#num G_OPTION_FLAG_FILENAME
#num G_OPTION_FLAG_OPTIONAL_ARG
#num G_OPTION_FLAG_NOALIAS

#pointer G_OPTION_REMAINING

#starttype GOptionEntry
#field long_name , Ptr <gchar>
#field short_name , <gchar>
#field flags , <gint>
#field arg , <GOptionArg>
#field arg_data , <gpointer>
#field description , Ptr <gchar>
#field arg_description , Ptr <gchar>
#stoptype

#ccall g_option_context_add_main_entries , Ptr <GOptionContext> -> Ptr <GOptionEntry> -> Ptr <gchar> -> IO ()

#opaque_t GOptionGroup

#ccall g_option_context_add_group , Ptr <GOptionContext> -> Ptr <GOptionGroup> -> IO ()
#ccall g_option_context_set_main_group , Ptr <GOptionContext> -> Ptr <GOptionGroup> -> IO ()
#ccall g_option_context_get_main_group , Ptr <GOptionContext> -> IO (Ptr <GOptionGroup>)
#ccall g_option_group_new , Ptr <gchar> -> Ptr <gchar> -> Ptr <gchar> -> <gpointer> -> <GDestroyNotify> -> IO (Ptr <GOptionGroup>)
#ccall g_option_group_free , Ptr <GOptionGroup> -> IO ()
#ccall g_option_group_add_entries , Ptr <GOptionGroup> -> Ptr <GOptionEntry> -> IO ()

#callback GOptionParseFunc , Ptr <GOptionContext> -> Ptr <GOptionGroup> -> <gpointer> -> Ptr (Ptr <GError>) -> IO <gboolean>

#ccall g_option_group_set_parse_hooks , Ptr <GOptionGroup> -> <GOptionParseFunc> -> <GOptionParseFunc> -> IO ()

#callback GOptionErrorFunc , Ptr <GOptionContext> -> Ptr <GOptionGroup> -> <gpointer> -> Ptr (Ptr <GError>) -> IO ()

#ccall g_option_group_set_error_hook , Ptr <GOptionGroup> -> <GOptionErrorFunc> -> IO ()
#ccall g_option_group_set_translate_func , Ptr <GOptionGroup> -> <GTranslateFunc> -> <gpointer> -> <GDestroyNotify> -> IO ()
#ccall g_option_group_set_translation_domain , Ptr <GOptionGroup> -> Ptr <gchar> -> IO ()


