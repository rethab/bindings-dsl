#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Datasets.html>

module Bindings.GLib.DataTypes.Datasets where
#strict_import
import Bindings.GLib.Fundamentals.BasicTypes
import Bindings.GLib.DataTypes.Quarks

#cinline g_dataset_id_set_data , <gconstpointer> -> <GQuark> -> <gpointer> -> IO ()
#ccall g_dataset_id_set_data_full , <gconstpointer> -> <GQuark> -> <gpointer> -> <GDestroyNotify> -> IO ()

#callback_t GDestroyNotify , <gpointer> -> IO ()

#ccall g_dataset_id_get_data , <gconstpointer> -> <GQuark> -> IO <gpointer>
#cinline g_dataset_id_remove_data , <gconstpointer> -> <GQuark> -> IO ()
#ccall g_dataset_id_remove_no_notify , <gconstpointer> -> <GQuark> -> IO <gpointer>

#cinline g_dataset_set_data , <gconstpointer> -> Ptr <gchar> -> <gpointer> -> IO ()
#cinline g_dataset_set_data_full , <gconstpointer> -> Ptr <gchar> -> <gpointer> -> <GDestroyNotify> -> IO ()
#cinline g_dataset_get_data , <gconstpointer> -> Ptr <gchar> -> IO <gpointer>
#cinline g_dataset_remove_data , <gconstpointer> -> Ptr <gchar> -> IO <gpointer>
#cinline g_dataset_remove_no_notify , <gconstpointer> -> Ptr <gchar> -> IO <gpointer>

#ccall g_dataset_foreach , <gconstpointer> -> <GDataForeachFunc> -> <gpointer> -> IO ()

#callback_t GDataForeachFunc , <GQuark> -> <gpointer> -> <gpointer> -> IO ()

#ccall g_dataset_destroy , <gconstpointer> -> IO ()

