#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Simple-XML-Subset-Parser.html>

module Bindings.GLib.Utilities.SimpleXmlSubsetParser where
#strict_import
import Bindings.GLib.Fundamentals
import Bindings.GLib.CoreApplicationSupport.ErrorReporting
import Bindings.GLib.DataTypes.Datasets

#ccall g_markup_escape_text , Ptr <gchar> -> <gssize> -> IO (Ptr <gchar>)

