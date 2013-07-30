#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Singly-Linked-Lists.html>

module Bindings.GLib.DataTypes.SinglyLinkedLists where
import Bindings.GLib.DataTypes.DoublyLinkedLists
#strict_import
import Bindings.GLib.Fundamentals

#starttype GSList
#field data , <gpointer>
#field next , Ptr <GSList>
#stoptype

#ccall g_slist_alloc , IO (Ptr <GSList>)
#ccall g_slist_append , Ptr <GSList> -> <gpointer> -> IO (Ptr <GSList>)
#ccall g_slist_prepend , Ptr <GSList> -> <gpointer> -> IO (Ptr <GSList>)
#ccall g_slist_insert , Ptr <GSList> -> <gpointer> -> <gint> -> IO (Ptr <GSList>)
#ccall g_slist_insert_before , Ptr <GSList> -> Ptr <GSList> -> <gpointer> -> IO (Ptr <GSList>)
#ccall g_slist_insert_sorted , Ptr <GSList> -> <gpointer> -> <GCompareFunc> -> IO (Ptr <GSList>)
#ccall g_slist_remove , Ptr <GSList> -> <gconstpointer> -> IO (Ptr <GSList>)
#ccall g_slist_remove_link , Ptr <GSList> -> Ptr <GSList> -> IO (Ptr <GSList>)
#ccall g_slist_delete_link , Ptr <GSList> -> Ptr <GSList> -> IO (Ptr <GSList>)
#ccall g_slist_remove_all , Ptr <GSList> -> <gconstpointer> -> IO (Ptr <GSList>)
#ccall g_slist_free , Ptr <GSList> -> IO ()
#ccall g_slist_free_1 , Ptr <GSList> -> IO ()

#cinline g_slist_free1 , Ptr <GSList> -> IO ()

#ccall g_slist_length , Ptr <GSList> -> IO <guint> 
#ccall g_slist_copy , Ptr <GSList> -> IO (Ptr <GSList>)
#ccall g_slist_reverse , Ptr <GSList> -> IO (Ptr <GSList>)
#ccall g_slist_insert_sorted_with_data , Ptr <GSList> -> <gpointer> -> <GCompareDataFunc> -> <gpointer> -> IO (Ptr <GSList>)
#ccall g_slist_sort , Ptr <GSList> -> <GCompareFunc> -> IO (Ptr <GSList>)
#ccall g_slist_sort_with_data , Ptr <GSList> -> <GCompareDataFunc> -> <gpointer> -> IO (Ptr <GSList>)
#ccall g_slist_concat , Ptr <GSList> -> Ptr <GSList> -> IO (Ptr <GSList>)
#ccall g_slist_foreach , Ptr <GSList> -> <GFunc> -> <gpointer> -> IO ()
#ccall g_slist_last , Ptr <GSList> -> IO (Ptr <GSList>)

#cinline g_slist_next , Ptr <GSList> -> IO (Ptr <GSList>)

#ccall g_slist_nth , Ptr <GSList> -> <guint> -> IO (Ptr <GSList>)
#ccall g_slist_nth_data , Ptr <GSList> -> <guint> -> IO <gpointer>
#ccall g_slist_find , Ptr <GSList> -> <gconstpointer> -> IO (Ptr <GSList>)
#ccall g_slist_find_custom , Ptr <GSList> -> <gconstpointer> -> <GCompareFunc> -> IO (Ptr <GSList>)
#ccall g_slist_position , Ptr <GSList> -> Ptr <GSList> -> IO <gint>
#ccall g_slist_index , Ptr <GSList> -> <gconstpointer> -> IO <gint>
#ccall g_slist_push_allocator , <gpointer> -> IO ()
#ccall g_slist_pop_allocator , IO ()
