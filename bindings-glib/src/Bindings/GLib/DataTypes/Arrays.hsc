#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Arrays.html>

module Bindings.GLib.DataTypes.Arrays where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.DataTypes.DoublyLinkedLists

#starttype GArray
#field data , Ptr <gchar>
#field len , <guint>
#stoptype

#ccall g_array_new , <gboolean> -> <gboolean> -> <guint> -> IO (Ptr <GArray>)
#ccall g_array_sized_new , <gboolean> -> <gboolean> -> <guint> -> <guint>  -> IO (Ptr <GArray>)
#ccall g_array_ref , Ptr <GArray> -> IO (Ptr <GArray>)
#ccall g_array_unref , Ptr <GArray> -> IO ()
#ccall g_array_get_element_size , Ptr <GArray> -> IO <guint>

#ccall g_array_append_vals , Ptr <GArray> -> <gconstpointer> -> <guint>  -> IO (Ptr <GArray>)

#ccall g_array_prepend_vals , Ptr <GArray> -> <gconstpointer> -> <guint>  -> IO (Ptr <GArray>)

#ccall g_array_insert_vals , Ptr <GArray> -> <guint> -> <gconstpointer> -> <guint>  -> IO (Ptr <GArray>)
#ccall g_array_remove_index , Ptr <GArray> -> <guint>  -> IO (Ptr <GArray>)
#ccall g_array_remove_index_fast , Ptr <GArray> -> <guint>  -> IO (Ptr <GArray>)
#ccall g_array_remove_range , Ptr <GArray> -> <guint> -> <guint>  -> IO (Ptr <GArray>)
#ccall g_array_sort , Ptr <GArray> -> <GCompareFunc> -> IO ()
#ccall g_array_sort_with_data , Ptr <GArray> -> <GCompareDataFunc> -> <gpointer> -> IO ()

#ccall g_array_set_size , Ptr <GArray> -> <guint>  -> IO (Ptr <GArray>)
#ccall g_array_free , Ptr <GArray> -> <gboolean> -> IO (Ptr <gchar>)

