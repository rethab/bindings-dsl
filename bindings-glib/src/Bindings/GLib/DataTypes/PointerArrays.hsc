#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Pointer-Arrays.html>

module Bindings.GLib.DataTypes.PointerArrays where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.DataTypes.Datasets
import Bindings.GLib.DataTypes.DoublyLinkedLists

#starttype GPtrArray
#field pdata , Ptr <gpointer>
#field len , <guint>
#stoptype

#ccall g_ptr_array_new , IO (Ptr <GPtrArray>)
#ccall g_ptr_array_sized_new , <guint> -> IO (Ptr <GPtrArray>)
#ccall g_ptr_array_new_with_free_func , <GDestroyNotify>  -> IO (Ptr <GPtrArray>)
#ccall g_ptr_array_set_free_func , Ptr <GPtrArray> -> <GDestroyNotify> -> IO ()
#ccall g_ptr_array_ref , Ptr <GPtrArray> -> IO (Ptr <GPtrArray>)
#ccall g_ptr_array_unref , Ptr <GPtrArray> -> IO ()
#ccall g_ptr_array_add , Ptr <GPtrArray> -> <gpointer> -> IO ()
#ccall g_ptr_array_remove , Ptr <GPtrArray> -> <gpointer> -> IO <gboolean>
#ccall g_ptr_array_remove_index , Ptr <GPtrArray> -> <guint> -> IO <gpointer>
#ccall g_ptr_array_remove_fast , Ptr <GPtrArray> -> <gpointer> -> IO <gboolean>
#ccall g_ptr_array_remove_index_fast , Ptr <GPtrArray> -> <guint> -> IO <gpointer>
#ccall g_ptr_array_remove_range , Ptr <GPtrArray> -> <guint> -> <guint> -> IO ()
#ccall g_ptr_array_sort , Ptr <GPtrArray> -> <GCompareFunc> -> IO ()
#ccall g_ptr_array_sort_with_data , Ptr <GPtrArray> -> <GCompareDataFunc> -> <gpointer> -> IO ()
#ccall g_ptr_array_set_size , Ptr <GPtrArray> -> <gint> -> IO ()

#cinline g_ptr_array_index , Ptr <GPtrArray> -> <guint> -> IO <gpointer>

#ccall g_ptr_array_free , Ptr <GPtrArray> -> <gboolean> -> IO (Ptr <gpointer>)
#ccall g_ptr_array_foreach , Ptr <GPtrArray> -> <GFunc> -> <gpointer> -> IO ()

