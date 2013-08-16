#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Balanced-Binary-Trees.html>

module Bindings.GLib.DataTypes.BalancedBinaryTrees where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.DataTypes.Datasets
import Bindings.GLib.DataTypes.DoublyLinkedLists

#opaque_t GTree

#ccall g_tree_new , <GCompareFunc> -> IO (Ptr <GTree>)
#ccall g_tree_ref , Ptr <GTree> -> IO (Ptr <GTree>)
#ccall g_tree_unref , Ptr <GTree> -> IO ()
#ccall g_tree_new_with_data , <GCompareDataFunc> -> <gpointer> -> IO (Ptr <GTree>)
#ccall g_tree_new_full , <GCompareDataFunc> -> <gpointer> -> <GDestroyNotify> -> <GDestroyNotify> -> IO (Ptr <GTree>)
#ccall g_tree_insert , Ptr <GTree> -> <gpointer> -> <gpointer> -> IO ()
#ccall g_tree_replace , Ptr <GTree> -> <gpointer> -> <gpointer> -> IO ()
#ccall g_tree_nnodes , Ptr <GTree> -> IO <gint>
#ccall g_tree_height , Ptr <GTree> -> IO <gint>
#ccall g_tree_lookup , Ptr <GTree> -> <gconstpointer> -> IO <gpointer>
#ccall g_tree_lookup_extended , Ptr <GTree> -> <gconstpointer> -> Ptr <gpointer> -> Ptr <gpointer> -> IO <gboolean>
#ccall g_tree_foreach , Ptr <GTree> -> <GTraverseFunc> -> <gpointer> -> IO ()
#ccall g_tree_traverse , Ptr <GTree> -> <GTraverseFunc> -> <GTraverseType> -> <gpointer> -> IO ()

#callback_t GTraverseFunc , <gpointer> -> <gpointer> -> <gpointer> -> IO <gboolean> 

#integral_t GTraverseType
#num G_IN_ORDER
#num G_PRE_ORDER
#num G_POST_ORDER
#num G_LEVEL_ORDER

#ccall g_tree_search , Ptr <GTree> -> <GCompareFunc> -> <gconstpointer> -> IO <gpointer>
#ccall g_tree_remove , Ptr <GTree> -> <gconstpointer> -> IO <gboolean>
#ccall g_tree_steal , Ptr <GTree> -> <gconstpointer> -> IO <gboolean>
#ccall g_tree_destroy , Ptr <GTree> -> IO ()
