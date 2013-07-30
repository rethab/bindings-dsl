#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-N-ary-Trees.html>

module Bindings.GLib.DataTypes.NAryTrees where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.DataTypes.BalancedBinaryTrees

#starttype GNode
#field data , <gpointer>
#field next , Ptr <GNode>
#field prev , Ptr <GNode>
#field parent , Ptr <GNode>
#field children , Ptr <GNode>
#stoptype

#ccall g_node_new , <gpointer> -> IO (Ptr <GNode>)
#ccall g_node_copy , Ptr <GNode> -> IO (Ptr <GNode>)

#callback GCopyFunc , <gconstpointer> -> <gpointer> -> IO <gpointer> 

#ccall g_node_copy_deep , Ptr <GNode> -> <GCopyFunc> -> <gpointer> -> IO (Ptr <GNode>)

#ccall g_node_insert , Ptr <GNode> -> <gint> -> Ptr <GNode> -> IO (Ptr <GNode>)
#ccall g_node_insert_before , Ptr <GNode> -> Ptr <GNode> -> Ptr <GNode> -> IO (Ptr <GNode>)
#ccall g_node_insert_after , Ptr <GNode> -> Ptr <GNode> -> Ptr <GNode> -> IO (Ptr <GNode>)

#cinline g_node_append , Ptr <GNode> -> Ptr <GNode> -> IO (Ptr <GNode>)

#ccall g_node_prepend , Ptr <GNode> -> Ptr <GNode> -> IO (Ptr <GNode>)

#cinline g_node_insert_data , Ptr <GNode> -> <gint> -> <gpointer> -> IO (Ptr <GNode>)
#cinline g_node_insert_data_before , Ptr <GNode> -> Ptr <GNode> -> <gpointer> -> IO (Ptr <GNode>)
#cinline g_node_append_data , Ptr <GNode> -> <gpointer> -> IO (Ptr <GNode>)
#cinline g_node_prepend_data , Ptr <GNode> -> <gpointer> -> IO (Ptr <GNode>)

#ccall g_node_reverse_children , Ptr <GNode> -> IO ()
#ccall g_node_traverse , Ptr <GNode> -> <GTraverseType> -> <GTraverseFlags> -> <gint> -> <GNodeTraverseFunc> -> <gpointer> -> IO ()

#integral_t GTraverseFlags
#num G_TRAVERSE_LEAVES
#num G_TRAVERSE_NON_LEAVES
#num G_TRAVERSE_ALL
#num G_TRAVERSE_MASK
#num G_TRAVERSE_LEAFS
#num G_TRAVERSE_NON_LEAFS

#callback GNodeTraverseFunc , Ptr <GNode> -> <gpointer> -> IO <gboolean> 

#ccall g_node_children_foreach , Ptr <GNode> -> <GTraverseFlags> -> <GNodeForeachFunc> -> <gpointer> -> IO ()

#callback GNodeForeachFunc , Ptr <GNode> -> <gpointer> -> IO ()

#ccall g_node_get_root , Ptr <GNode> -> IO (Ptr <GNode>)
#ccall g_node_find , Ptr <GNode> -> <GTraverseType> -> <GTraverseFlags> -> <gpointer> -> IO (Ptr <GNode>)
#ccall g_node_find_child , Ptr <GNode> -> <GTraverseFlags> -> <gpointer> -> IO (Ptr <GNode>)
#ccall g_node_child_index , Ptr <GNode> -> <gpointer> -> IO <gint>
#ccall g_node_child_position , Ptr <GNode> -> Ptr <GNode> -> IO <gint>

#cinline g_node_first_child , Ptr <GNode> -> IO (Ptr <GNode>)

#ccall g_node_last_child , Ptr <GNode> -> IO (Ptr <GNode>)
#ccall g_node_nth_child , Ptr <GNode> -> <guint> -> IO (Ptr <GNode>)
#ccall g_node_first_sibling , Ptr <GNode> -> IO (Ptr <GNode>)

#cinline g_node_next_sibling , Ptr <GNode> -> IO (Ptr <GNode>)
#cinline g_node_prev_sibling , Ptr <GNode> -> IO (Ptr <GNode>)

#ccall g_node_last_sibling , Ptr <GNode> -> IO (Ptr <GNode>)

#cinline G_NODE_IS_LEAF , Ptr <GNode> -> IO <gboolean>
#cinline G_NODE_IS_ROOT , Ptr <GNode> -> IO <gboolean>

#ccall g_node_depth , Ptr <GNode> -> IO <guint>
#ccall g_node_n_nodes , Ptr <GNode> -> <GTraverseFlags> -> IO <guint>
#ccall g_node_n_children , Ptr <GNode> -> IO <guint>
#ccall g_node_is_ancestor , Ptr <GNode> -> Ptr <GNode> -> IO <gboolean>
#ccall g_node_max_height , Ptr <GNode> -> IO <guint>

#ccall g_node_unlink , Ptr <GNode> -> IO ()
#ccall g_node_destroy , Ptr <GNode> -> IO ()
