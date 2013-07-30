#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Hash-Tables.html>

module Bindings.GLib.DataTypes.HashTables where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.DataTypes.Datasets
import Bindings.GLib.DataTypes.DoublyLinkedLists

#opaque_t GHashTable

#ccall g_hash_table_new , <GHashFunc> -> <GEqualFunc> -> IO (Ptr <GHashTable>)
#ccall g_hash_table_new_full , <GHashFunc> -> <GEqualFunc> -> <GDestroyNotify> -> <GDestroyNotify> -> IO (Ptr <GHashTable>)

#callback GHashFunc , <gconstpointer> -> IO <guint>
#callback GEqualFunc , <gconstpointer> -> <gconstpointer> -> IO <gboolean>

#ccall g_hash_table_insert , Ptr <GHashTable> -> <gpointer> -> <gpointer> -> IO ()
#ccall g_hash_table_replace , Ptr <GHashTable> -> <gpointer> -> <gpointer> -> IO ()
#ccall g_hash_table_size , Ptr <GHashTable> -> IO <guint>
#ccall g_hash_table_lookup , Ptr <GHashTable> -> <gconstpointer> -> IO <gpointer>
#ccall g_hash_table_lookup_extended , Ptr <GHashTable> -> <gconstpointer> -> <gpointer> -> <gpointer> -> IO <gboolean>
#ccall g_hash_table_foreach , Ptr <GHashTable> -> <GHFunc> -> <gpointer> -> IO ()
#ccall g_hash_table_find , Ptr <GHashTable> -> <GHRFunc> -> <gpointer> -> IO <gpointer>

#callback GHFunc , <gpointer> -> <gpointer> -> <gpointer> -> IO ()

#ccall g_hash_table_remove , Ptr <GHashTable> -> <gconstpointer> -> IO <gboolean>
#ccall g_hash_table_steal , Ptr <GHashTable> -> <gconstpointer> -> IO <gboolean>
#ccall g_hash_table_foreach_remove , Ptr <GHashTable> -> <GHRFunc> -> <gpointer> -> IO <guint>
#ccall g_hash_table_foreach_steal , Ptr <GHashTable> -> <GHRFunc> -> <gpointer> -> IO <guint>
#ccall g_hash_table_remove_all , Ptr <GHashTable> -> IO ()
#ccall g_hash_table_steal_all , Ptr <GHashTable> -> IO ()
#ccall g_hash_table_get_keys , Ptr <GHashTable> -> IO (Ptr <GList>)
#ccall g_hash_table_get_values , Ptr <GHashTable> -> IO (Ptr <GList>)

#callback GHRFunc , <gpointer> -> <gpointer> -> <gpointer> -> IO <gboolean>

#ccall g_hash_table_destroy , Ptr <GHashTable> -> IO ()
#ccall g_hash_table_ref , Ptr <GHashTable> -> IO (Ptr <GHashTable>)
#ccall g_hash_table_unref , Ptr <GHashTable> -> IO ()

#starttype GHashTableIter
#stoptype

#ccall g_hash_table_iter_init , Ptr <GHashTableIter> -> Ptr <GHashTable> -> IO ()
#ccall g_hash_table_iter_next , Ptr <GHashTableIter> -> <gpointer> -> <gpointer> -> IO <gboolean>
#ccall g_hash_table_iter_get_hash_table , Ptr <GHashTableIter> -> IO (Ptr <GHashTable>)
#ccall g_hash_table_iter_remove , Ptr <GHashTableIter> -> IO ()
#ccall g_hash_table_iter_steal , Ptr <GHashTableIter> -> IO ()

#ccall g_direct_equal , <gconstpointer> -> <gconstpointer> -> IO <gboolean>
#ccall g_direct_hash , <gconstpointer> -> IO <guint>
#ccall g_int_equal , <gconstpointer> -> <gconstpointer> -> IO <gboolean>
#ccall g_int_hash , <gconstpointer> -> IO <guint>
#ccall g_int64_equal , <gconstpointer> -> <gconstpointer> -> IO <gboolean>
#ccall g_int64_hash , <gconstpointer> -> IO <guint>
#ccall g_double_equal , <gconstpointer> -> <gconstpointer> -> IO <gboolean>
#ccall g_double_hash , <gconstpointer> -> IO <guint>
#ccall g_str_equal , <gconstpointer> -> <gconstpointer> -> IO <gboolean>
#ccall g_str_hash , <gconstpointer> -> IO <guint>
