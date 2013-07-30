#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/unstable/glib-Version-Information.html>

module Bindings.GLib.Fundamentals.VersionInformation where
#strict_import
import Bindings.GLib.Fundamentals.BasicTypes

#globalvar glib_major_version , <guint>
#globalvar glib_minor_version , <guint>
#globalvar glib_micro_version , <guint>
#globalvar glib_binary_age , <guint>
#globalvar glib_interface_age , <guint>
#ccall glib_check_version , <guint> -> <guint> -> <guint> -> IO (Ptr <gchar>)

#num GLIB_MAJOR_VERSION
#num GLIB_MINOR_VERSION
#num GLIB_MICRO_VERSION
