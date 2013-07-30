#include <bindings.cmacros.h>
#include <glib.h>

BC_INLINE2 ( g_node_append , GNode* , GNode* ,  GNode*)
BC_INLINE3 ( g_node_insert_data , GNode* , gint , gpointer ,  GNode*)
BC_INLINE3 ( g_node_insert_data_before , GNode* , GNode* , gpointer ,  GNode*)
BC_INLINE2 ( g_node_append_data , GNode* , gpointer ,  GNode*)
BC_INLINE2 ( g_node_prepend_data , GNode* , gpointer ,  GNode*)
BC_INLINE1 ( g_node_first_child , GNode* ,  GNode*)
BC_INLINE1 ( g_node_next_sibling , GNode* ,  GNode*)
BC_INLINE1 ( g_node_prev_sibling , GNode* ,  GNode*)
BC_INLINE1 (G_NODE_IS_LEAF , GNode* ,  gboolean)
BC_INLINE1 (G_NODE_IS_ROOT ,  GNode* ,  gboolean)
