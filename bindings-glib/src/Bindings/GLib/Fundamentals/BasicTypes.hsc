#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/unstable/glib-Basic-Types.html>

module Bindings.GLib.Fundamentals.BasicTypes where
#strict_import

#integral_t gboolean
#synonym_t gpointer , Ptr ()
#synonym_t gconstpointer , Ptr ()
#integral_t gchar
#integral_t guchar
#integral_t gint
#integral_t guint
#integral_t gshort
#integral_t gushort
#integral_t glong
#integral_t gulong
#integral_t gint8
#integral_t guint8
#integral_t gint16
#integral_t guint16
#integral_t gint32
#integral_t guint32
#integral_t gint64
#integral_t guint64

#synonym_t gfloat , CFloat
#synonym_t gdouble , CDouble

#integral_t gsize
#integral_t gssize
#integral_t goffset
#integral_t gintptr
#integral_t guintptr

