#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Doubly-Linked-Lists.html>

module Bindings.GLib.DataTypes.DoublyLinkedLists where
#strict_import
import Bindings.GLib.Fundamentals

#starttype GList
#field data , <gpointer>
#field next , Ptr <GList>
#field prev , Ptr <GList>
#stoptype

#ccall g_list_append , Ptr <GList> -> <gpointer> -> IO (Ptr <GList>)
#ccall g_list_prepend , Ptr <GList> -> <gpointer> -> IO (Ptr <GList>)
#ccall g_list_insert , Ptr <GList> -> <gpointer> -> <gint> -> IO (Ptr <GList>)
#ccall g_list_insert_before , Ptr <GList> -> Ptr <GList> -> <gpointer> -> IO (Ptr <GList>)
#ccall g_list_insert_sorted , Ptr <GList> -> <gpointer> -> <GCompareFunc> -> IO (Ptr <GList>)
#ccall g_list_remove , Ptr <GList> -> <gconstpointer> -> IO (Ptr <GList>)
#ccall g_list_remove_link , Ptr <GList> -> Ptr <GList> -> IO (Ptr <GList>)
#ccall g_list_delete_link , Ptr <GList> -> Ptr <GList> -> IO (Ptr <GList>)
#ccall g_list_remove_all , Ptr <GList> -> <gconstpointer> -> IO (Ptr <GList>)
#ccall g_list_free , Ptr <GList> -> IO ()

#ccall g_list_alloc , IO (Ptr <GList>)
#ccall g_list_free_1 , Ptr <GList> -> IO ()
#cinline g_list_free1 , Ptr <GList> -> IO ()

#ccall g_list_length , Ptr <GList> -> IO <guint>
#ccall g_list_copy , Ptr <GList> -> IO (Ptr <GList>)
#ccall g_list_reverse , Ptr <GList> -> IO (Ptr <GList>)
#ccall g_list_sort , Ptr <GList> -> <GCompareFunc> -> IO (Ptr <GList>)

#callback GCompareFunc , <gconstpointer> -> <gconstpointer> -> IO <gint>

#ccall g_list_insert_sorted_with_data , Ptr <GList> -> <gpointer> -> <GCompareDataFunc> -> <gpointer> -> IO (Ptr <GList>)
#ccall g_list_sort_with_data , Ptr <GList> -> <GCompareDataFunc> -> <gpointer> -> IO (Ptr <GList>)

#callback GCompareDataFunc , <gconstpointer> -> <gconstpointer> -> <gpointer> -> IO <gint>

#ccall g_list_concat , Ptr <GList> -> Ptr <GList> -> IO (Ptr <GList>)
#ccall g_list_foreach , Ptr <GList> -> <GFunc> -> <gpointer> -> IO ()

#callback GFunc , <gpointer> -> <gpointer> -> IO ()

#ccall g_list_first , Ptr <GList> -> IO (Ptr <GList>)
#ccall g_list_last , Ptr <GList> -> IO (Ptr <GList>)
#cinline g_list_previous , Ptr <GList> -> IO (Ptr <GList>)
#cinline g_list_next , Ptr <GList> -> IO (Ptr <GList>)
#ccall g_list_nth , Ptr <GList> -> <guint> -> IO (Ptr <GList>)
#ccall g_list_nth_data , Ptr <GList> -> <guint> -> IO <gpointer>
#ccall g_list_nth_prev , Ptr <GList> -> <guint> -> IO (Ptr <GList>)

#ccall g_list_find , Ptr <GList> -> <gconstpointer> -> IO (Ptr <GList>)
#ccall g_list_find_custom , Ptr <GList> -> <gconstpointer> -> <GCompareFunc> -> IO (Ptr <GList>)
#ccall g_list_position , Ptr <GList> -> Ptr <GList> -> IO <gint>
#ccall g_list_index , Ptr <GList> -> <gconstpointer> -> IO <gint>

