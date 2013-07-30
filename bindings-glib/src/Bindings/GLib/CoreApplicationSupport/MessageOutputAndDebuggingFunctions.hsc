#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Warnings-and-Assertions.html>

module Bindings.GLib.CoreApplicationSupport.MessageOutputAndDebuggingFunctions where
#strict_import
import Bindings.GLib.Fundamentals

#ccall g_set_print_handler , Ptr <GPrintFunc> -> IO <GPrintFunc>

#callback GPrintFunc , Ptr <gchar> -> IO ()

#ccall g_set_printerr_handler , <GPrintFunc> -> IO <GPrintFunc>

#ccall g_on_error_query , Ptr <gchar> -> IO ()
#ccall g_on_error_stack_trace , Ptr <gchar> -> IO ()

