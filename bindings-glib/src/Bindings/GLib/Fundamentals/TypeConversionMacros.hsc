#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Type-Conversion-Macros.html>

module Bindings.GLib.Fundamentals.TypeConversionMacros where
#strict_import
import Bindings.GLib.Fundamentals.BasicTypes

#cinline GINT_TO_POINTER , <gint> -> <gpointer>
#cinline GPOINTER_TO_INT , <gpointer> -> <gint>
#cinline GUINT_TO_POINTER , <guint> -> <gpointer>
#cinline GPOINTER_TO_UINT , <gpointer> -> <guint>
#cinline GSIZE_TO_POINTER , <gsize> -> <gpointer>
#cinline GPOINTER_TO_SIZE , <gpointer> -> <gsize>

