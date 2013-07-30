#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Standard-Macros.html>

module Bindings.GLib.Fundamentals.StandardMacros where
#strict_import

#num G_DIR_SEPARATOR
#pointer G_DIR_SEPARATOR_S
#cinline G_IS_DIR_SEPARATOR , CChar -> CInt
#num G_SEARCHPATH_SEPARATOR
#pointer G_SEARCHPATH_SEPARATOR_S
#num TRUE
#num FALSE
#pointer NULL
#num G_MEM_ALIGN

