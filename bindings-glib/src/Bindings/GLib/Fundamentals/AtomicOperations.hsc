#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Atomic-Operations.html>

module Bindings.GLib.Fundamentals.AtomicOperations where
#strict_import
import Bindings.GLib.Fundamentals.BasicTypes

#cinline g_atomic_int_get , Ptr <gint> -> IO <gint>
#cinline g_atomic_int_set , Ptr <gint> -> <gint> -> IO ()
#cinline g_atomic_int_add , Ptr <gint> -> <gint> -> IO ()
#cinline g_atomic_int_exchange_and_add , Ptr <gint> -> <gint> -> IO <gint>
#cinline g_atomic_int_compare_and_exchange , Ptr <gint> -> <gint> -> <gint> -> IO <gboolean>
#cinline g_atomic_pointer_get , Ptr <gpointer> -> IO <gpointer>
#cinline g_atomic_pointer_set , Ptr <gpointer> -> <gpointer> -> IO ()
#cinline g_atomic_pointer_compare_and_exchange , Ptr <gpointer> -> <gpointer> -> <gpointer> -> IO <gboolean>
#cinline g_atomic_int_inc , Ptr <gint> -> IO ()
#cinline g_atomic_int_dec_and_test , Ptr <gint> -> IO <gboolean>

