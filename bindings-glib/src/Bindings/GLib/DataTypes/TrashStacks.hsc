#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Trash-Stacks.html>

module Bindings.GLib.DataTypes.TrashStacks where
#strict_import
import Bindings.GLib.Fundamentals

#starttype GTrashStack
#field next , Ptr <GTrashStack>
#stoptype

#ccall g_trash_stack_push , Ptr (Ptr <GTrashStack>) -> <gpointer> -> IO ()
#ccall g_trash_stack_pop , Ptr (Ptr <GTrashStack>) -> IO <gpointer>
#ccall g_trash_stack_peek , Ptr (Ptr <GTrashStack>) -> IO <gpointer>
#ccall g_trash_stack_height , Ptr (Ptr <GTrashStack>) -> IO <guint>

