#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Byte-Order-Macros.html>

module Bindings.GLib.Fundamentals.ByteOrderMacros where
#strict_import
import Bindings.GLib.Fundamentals.BasicTypes

#cinline g_htonl , <gint32> -> <gint32>
#cinline g_htons , <gint16> -> <gint16>
#cinline g_ntohl , <gint32> -> <gint32>
#cinline g_ntohs , <gint16> -> <gint16>
#cinline GINT_FROM_BE , <gint> -> <gint>
#cinline GINT_FROM_LE , <gint> -> <gint>
#cinline GINT_TO_BE , <gint> -> <gint>
#cinline GINT_TO_LE , <gint> -> <gint>
#cinline GUINT_FROM_BE , <guint> -> <guint>
#cinline GUINT_FROM_LE , <guint> -> <guint>
#cinline GUINT_TO_BE , <guint> -> <guint>
#cinline GUINT_TO_LE , <guint> -> <guint>
#cinline GLONG_FROM_BE , <glong> -> <glong>
#cinline GLONG_FROM_LE , <glong> -> <glong>
#cinline GLONG_TO_BE , <glong> -> <glong>
#cinline GLONG_TO_LE , <glong> -> <glong>
#cinline GULONG_FROM_BE , <gulong> -> <gulong>
#cinline GULONG_FROM_LE , <gulong> -> <gulong>
#cinline GULONG_TO_BE , <gulong> -> <gulong>
#cinline GULONG_TO_LE , <gulong> -> <gulong>
#cinline GINT16_FROM_BE , <gint16> -> <gint16>
#cinline GINT16_FROM_LE , <gint16> -> <gint16>
#cinline GINT16_TO_BE , <gint16> -> <gint16>
#cinline GINT16_TO_LE , <gint16> -> <gint16>
#cinline GUINT16_FROM_BE , <guint16> -> <guint16>
#cinline GUINT16_FROM_LE , <guint16> -> <guint16>
#cinline GUINT16_TO_BE , <guint16> -> <guint16>
#cinline GUINT16_TO_LE , <guint16> -> <guint16>
#cinline GINT32_FROM_BE , <gint32> -> <gint32>
#cinline GINT32_FROM_LE , <gint32> -> <gint32>
#cinline GINT32_TO_BE , <gint32> -> <gint32>
#cinline GINT32_TO_LE , <gint32> -> <gint32>
#cinline GUINT32_FROM_BE , <guint32> -> <guint32>
#cinline GUINT32_FROM_LE , <guint32> -> <guint32>
#cinline GUINT32_TO_BE , <guint32> -> <guint32>
#cinline GUINT32_TO_LE , <guint32> -> <guint32>
#cinline GINT64_FROM_BE , <gint64> -> <gint64>
#cinline GINT64_FROM_LE , <gint64> -> <gint64>
#cinline GINT64_TO_BE , <gint64> -> <gint64>
#cinline GINT64_TO_LE , <gint64> -> <gint64>
#cinline GUINT64_FROM_BE , <guint64> -> <guint64>
#cinline GUINT64_FROM_LE , <guint64> -> <guint64>
#cinline GUINT64_TO_BE , <guint64> -> <guint64>
#cinline GUINT64_TO_LE , <guint64> -> <guint64>
#cinline GUINT16_SWAP_BE_PDP , <guint16> -> <guint16>
#cinline GUINT16_SWAP_LE_BE , <guint16> -> <guint16>
#cinline GUINT16_SWAP_LE_PDP , <guint16> -> <guint16>
#cinline GUINT32_SWAP_BE_PDP , <guint32> -> <guint32>
#cinline GUINT32_SWAP_LE_BE , <guint32> -> <guint32>
#cinline GUINT32_SWAP_LE_PDP , <guint32> -> <guint32>
#cinline GUINT64_SWAP_LE_BE , <guint64> -> <guint64>

