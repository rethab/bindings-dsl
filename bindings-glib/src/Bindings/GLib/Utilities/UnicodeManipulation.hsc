#include <bindings.dsl.h>
#include <glib.h>

-- | <http://library.gnome.org/devel/glib/stable/glib-Unicode-Manipulation.html>

module Bindings.GLib.Utilities.UnicodeManipulation where
import Bindings.GLib.Fundamentals.BasicTypes
import Bindings.GLib.CoreApplicationSupport.ErrorReporting
#strict_import

#integral_t gunichar
#integral_t gunichar2

#ccall g_unichar_validate , <gunichar> -> IO <gboolean>
#ccall g_unichar_isalnum , <gunichar> -> IO <gboolean>
#ccall g_unichar_isalpha , <gunichar> -> IO <gboolean>
#ccall g_unichar_iscntrl , <gunichar> -> IO <gboolean>
#ccall g_unichar_isdefined , <gunichar> -> IO <gboolean>
#ccall g_unichar_isdigit , <gunichar> -> IO <gboolean>
#ccall g_unichar_isgraph , <gunichar> -> IO <gboolean>
#ccall g_unichar_islower , <gunichar> -> IO <gboolean>
#ccall g_unichar_ismark , <gunichar> -> IO <gboolean>
#ccall g_unichar_isprint , <gunichar> -> IO <gboolean>
#ccall g_unichar_ispunct , <gunichar> -> IO <gboolean>
#ccall g_unichar_isspace , <gunichar> -> IO <gboolean>
#ccall g_unichar_istitle , <gunichar> -> IO <gboolean>
#ccall g_unichar_isupper , <gunichar> -> IO <gboolean>
#ccall g_unichar_isxdigit , <gunichar> -> IO <gboolean>
#ccall g_unichar_iswide , <gunichar> -> IO <gboolean>
#ccall g_unichar_iswide_cjk , <gunichar> -> IO <gboolean>
#ccall g_unichar_iszerowidth , <gunichar> -> IO <gboolean>
#ccall g_unichar_toupper , <gunichar> -> IO <gunichar>
#ccall g_unichar_tolower , <gunichar> -> IO <gunichar>
#ccall g_unichar_totitle , <gunichar> -> IO <gunichar>
#ccall g_unichar_digit_value , <gunichar> -> IO <gint>
#ccall g_unichar_xdigit_value , <gunichar> -> IO <gint>

#integral_t GUnicodeType

#num G_UNICODE_FORMAT
#num G_UNICODE_UNASSIGNED
#num G_UNICODE_PRIVATE_USE
#num G_UNICODE_SURROGATE
#num G_UNICODE_LOWERCASE_LETTER
#num G_UNICODE_MODIFIER_LETTER
#num G_UNICODE_OTHER_LETTER
#num G_UNICODE_TITLECASE_LETTER
#num G_UNICODE_UPPERCASE_LETTER
#num G_UNICODE_COMBINING_MARK
#num G_UNICODE_ENCLOSING_MARK
#num G_UNICODE_NON_SPACING_MARK
#num G_UNICODE_DECIMAL_NUMBER
#num G_UNICODE_LETTER_NUMBER
#num G_UNICODE_OTHER_NUMBER
#num G_UNICODE_CONNECT_PUNCTUATION
#num G_UNICODE_DASH_PUNCTUATION
#num G_UNICODE_CLOSE_PUNCTUATION
#num G_UNICODE_FINAL_PUNCTUATION
#num G_UNICODE_INITIAL_PUNCTUATION
#num G_UNICODE_OTHER_PUNCTUATION
#num G_UNICODE_OPEN_PUNCTUATION
#num G_UNICODE_CURRENCY_SYMBOL
#num G_UNICODE_MODIFIER_SYMBOL
#num G_UNICODE_MATH_SYMBOL
#num G_UNICODE_OTHER_SYMBOL
#num G_UNICODE_LINE_SEPARATOR
#num G_UNICODE_PARAGRAPH_SEPARATOR
#num G_UNICODE_SPACE_SEPARATOR

#ccall g_unichar_type , <gunichar> -> IO <GUnicodeType>

#integral_t GUnicodeBreakType

#num G_UNICODE_BREAK_MANDATORY
#num G_UNICODE_BREAK_CARRIAGE_RETURN
#num G_UNICODE_BREAK_LINE_FEED
#num G_UNICODE_BREAK_COMBINING_MARK
#num G_UNICODE_BREAK_SURROGATE
#num G_UNICODE_BREAK_ZERO_WIDTH_SPACE
#num G_UNICODE_BREAK_INSEPARABLE
#num G_UNICODE_BREAK_NON_BREAKING_GLUE
#num G_UNICODE_BREAK_CONTINGENT
#num G_UNICODE_BREAK_SPACE
#num G_UNICODE_BREAK_AFTER
#num G_UNICODE_BREAK_BEFORE
#num G_UNICODE_BREAK_BEFORE_AND_AFTER
#num G_UNICODE_BREAK_HYPHEN
#num G_UNICODE_BREAK_NON_STARTER
#num G_UNICODE_BREAK_OPEN_PUNCTUATION
#num G_UNICODE_BREAK_CLOSE_PUNCTUATION
#num G_UNICODE_BREAK_QUOTATION
#num G_UNICODE_BREAK_EXCLAMATION
#num G_UNICODE_BREAK_IDEOGRAPHIC
#num G_UNICODE_BREAK_NUMERIC
#num G_UNICODE_BREAK_INFIX_SEPARATOR
#num G_UNICODE_BREAK_SYMBOL
#num G_UNICODE_BREAK_ALPHABETIC
#num G_UNICODE_BREAK_PREFIX
#num G_UNICODE_BREAK_POSTFIX
#num G_UNICODE_BREAK_COMPLEX_CONTEXT
#num G_UNICODE_BREAK_AMBIGUOUS
#num G_UNICODE_BREAK_UNKNOWN
#num G_UNICODE_BREAK_NEXT_LINE
#num G_UNICODE_BREAK_WORD_JOINER
#num G_UNICODE_BREAK_HANGUL_L_JAMO
#num G_UNICODE_BREAK_HANGUL_V_JAMO
#num G_UNICODE_BREAK_HANGUL_T_JAMO
#num G_UNICODE_BREAK_HANGUL_LV_SYLLABLE
#num G_UNICODE_BREAK_HANGUL_LVT_SYLLABLE

#ccall g_unichar_break_type , <gunichar> -> IO <GUnicodeBreakType>
#ccall g_unichar_combining_class , <gunichar> -> IO <gint>
#ccall g_unicode_canonical_ordering , Ptr <gunichar> -> <gsize> -> IO ()
#ccall g_unicode_canonical_decomposition , <gunichar> -> Ptr <gsize> -> IO (Ptr <gunichar>)
#ccall g_unichar_get_mirror_char , <gunichar> -> Ptr <gunichar> -> IO <gboolean

#integral_t GUnicodeScript

#num G_UNICODE_SCRIPT_INVALID_CODE
#num G_UNICODE_SCRIPT_COMMON
#num G_UNICODE_SCRIPT_INHERITED
#num G_UNICODE_SCRIPT_ARABIC
#num G_UNICODE_SCRIPT_ARMENIAN
#num G_UNICODE_SCRIPT_BENGALI
#num G_UNICODE_SCRIPT_BOPOMOFO
#num G_UNICODE_SCRIPT_CHEROKEE
#num G_UNICODE_SCRIPT_COPTIC
#num G_UNICODE_SCRIPT_CYRILLIC
#num G_UNICODE_SCRIPT_DESERET
#num G_UNICODE_SCRIPT_DEVANAGARI
#num G_UNICODE_SCRIPT_ETHIOPIC
#num G_UNICODE_SCRIPT_GEORGIAN
#num G_UNICODE_SCRIPT_GOTHIC
#num G_UNICODE_SCRIPT_GREEK
#num G_UNICODE_SCRIPT_GUJARATI
#num G_UNICODE_SCRIPT_GURMUKHI
#num G_UNICODE_SCRIPT_HAN
#num G_UNICODE_SCRIPT_HANGUL
#num G_UNICODE_SCRIPT_HEBREW
#num G_UNICODE_SCRIPT_HIRAGANA
#num G_UNICODE_SCRIPT_KANNADA
#num G_UNICODE_SCRIPT_KATAKANA
#num G_UNICODE_SCRIPT_KHMER
#num G_UNICODE_SCRIPT_LAO
#num G_UNICODE_SCRIPT_LATIN
#num G_UNICODE_SCRIPT_MALAYALAM
#num G_UNICODE_SCRIPT_MONGOLIAN
#num G_UNICODE_SCRIPT_MYANMAR
#num G_UNICODE_SCRIPT_OGHAM
#num G_UNICODE_SCRIPT_OLD_ITALIC
#num G_UNICODE_SCRIPT_ORIYA
#num G_UNICODE_SCRIPT_RUNIC
#num G_UNICODE_SCRIPT_SINHALA
#num G_UNICODE_SCRIPT_SYRIAC
#num G_UNICODE_SCRIPT_TAMIL
#num G_UNICODE_SCRIPT_TELUGU
#num G_UNICODE_SCRIPT_THAANA
#num G_UNICODE_SCRIPT_THAI
#num G_UNICODE_SCRIPT_TIBETAN
#num G_UNICODE_SCRIPT_CANADIAN_ABORIGINAL
#num G_UNICODE_SCRIPT_YI
#num G_UNICODE_SCRIPT_TAGALOG
#num G_UNICODE_SCRIPT_HANUNOO
#num G_UNICODE_SCRIPT_BUHID
#num G_UNICODE_SCRIPT_TAGBANWA
#num G_UNICODE_SCRIPT_BRAILLE
#num G_UNICODE_SCRIPT_CYPRIOT
#num G_UNICODE_SCRIPT_LIMBU
#num G_UNICODE_SCRIPT_OSMANYA
#num G_UNICODE_SCRIPT_SHAVIAN
#num G_UNICODE_SCRIPT_LINEAR_B
#num G_UNICODE_SCRIPT_TAI_LE
#num G_UNICODE_SCRIPT_UGARITIC
#num G_UNICODE_SCRIPT_NEW_TAI_LUE
#num G_UNICODE_SCRIPT_BUGINESE
#num G_UNICODE_SCRIPT_GLAGOLITIC
#num G_UNICODE_SCRIPT_TIFINAGH
#num G_UNICODE_SCRIPT_SYLOTI_NAGRI
#num G_UNICODE_SCRIPT_OLD_PERSIAN
#num G_UNICODE_SCRIPT_KHAROSHTHI
#num G_UNICODE_SCRIPT_UNKNOWN
#num G_UNICODE_SCRIPT_BALINESE
#num G_UNICODE_SCRIPT_CUNEIFORM
#num G_UNICODE_SCRIPT_PHOENICIAN
#num G_UNICODE_SCRIPT_PHAGS_PA
#num G_UNICODE_SCRIPT_NKO
#num G_UNICODE_SCRIPT_KAYAH_LI
#num G_UNICODE_SCRIPT_LEPCHA
#num G_UNICODE_SCRIPT_REJANG
#num G_UNICODE_SCRIPT_SUNDANESE
#num G_UNICODE_SCRIPT_SAURASHTRA
#num G_UNICODE_SCRIPT_CHAM
#num G_UNICODE_SCRIPT_OL_CHIKI
#num G_UNICODE_SCRIPT_VAI
#num G_UNICODE_SCRIPT_CARIAN
#num G_UNICODE_SCRIPT_LYCIAN
#num G_UNICODE_SCRIPT_LYDIAN

#ccall g_unichar_get_script , <gunichar> -> IO <GUnicodeScript>
#cinline g_utf8_next_char , Ptr <gchar> -> IO (Ptr <gchar>)

#ccall g_utf8_get_char , Ptr <gchar> -> IO <gunichar>
#ccall g_utf8_get_char_validated , Ptr <gchar> -> <gssize> -> IO <gunichar>
#ccall g_utf8_offset_to_pointer , Ptr <gchar> -> <glong> -> IO (Ptr <gchar>)
#ccall g_utf8_pointer_to_offset , Ptr <gchar> -> Ptr <gchar> -> IO <glong>
#ccall g_utf8_prev_char , Ptr <gchar> -> IO (Ptr <gchar>)
#ccall g_utf8_find_next_char , Ptr <gchar> -> Ptr <gchar> -> IO (Ptr <gchar>)
#ccall g_utf8_find_prev_char , Ptr <gchar> -> Ptr <gchar> -> IO (Ptr <gchar>)
#ccall g_utf8_strlen , Ptr <gchar> -> <gssize> -> IO <glong>
#ccall g_utf8_strncpy , Ptr <gchar> -> Ptr <gchar> -> <gsize> -> IO (Ptr <gchar>)
#ccall g_utf8_strchr , Ptr <gchar> -> <gssize> -> <gunichar> -> IO (Ptr <gchar>)
#ccall g_utf8_strrchr , Ptr <gchar> -> <gssize> -> <gunichar> -> IO (Ptr <gchar>)
#ccall g_utf8_strreverse , Ptr <gchar> -> <gssize> -> IO (Ptr <gchar>)
#ccall g_utf8_validate , Ptr <gchar> -> <gssize> -> Ptr (Ptr <gchar>) -> IO <gboolean>
#ccall g_utf8_strup , Ptr <gchar> -> <gssize> -> IO (Ptr <gchar>)
#ccall g_utf8_strdown , Ptr <gchar> -> <gssize> -> IO (Ptr <gchar>)
#ccall g_utf8_casefold , Ptr <gchar> -> <gssize> -> IO (Ptr <gchar>)
#ccall g_utf8_normalize , Ptr <gchar> -> <gssize> -> <GNormalizeMode> -> IO (Ptr <gchar>)

#integral_t GNormalizeMode

#num G_NORMALIZE_DEFAULT
#num G_NORMALIZE_NFD
#num G_NORMALIZE_DEFAULT_COMPOSE
#num G_NORMALIZE_NFC
#num G_NORMALIZE_ALL
#num G_NORMALIZE_NFKD
#num G_NORMALIZE_ALL_COMPOSE
#num G_NORMALIZE_NFKC

#ccall g_utf8_collate , Ptr <gchar> -> Ptr <gchar> -> IO <gint> 
#ccall g_utf8_collate_key , Ptr <gchar> -> <gssize> -> IO (Ptr <gchar>)
#ccall g_utf8_collate_key_for_filename , Ptr <gchar> -> \
    <gssize> -> IO (Ptr <gchar>)
#ccall g_utf8_to_utf16 , Ptr <gchar> -> <glong> -> Ptr <glong> -> \
    Ptr <glong> -> Ptr (Ptr <GError>) -> IO (Ptr <gunichar2>)
#ccall g_utf8_to_ucs4 , Ptr <gchar> -> <glong> -> Ptr <glong> -> \
    Ptr <glong> -> Ptr (Ptr <GError>) -> IO (Ptr <gunichar>)
#ccall g_utf8_to_ucs4_fast , Ptr <gchar> -> <glong> -> \
    Ptr <glong> -> IO (Ptr <gunichar>)
#ccall g_utf16_to_ucs4 , Ptr <gunichar2> -> <glong> -> Ptr <glong> -> \
    Ptr <glong> -> Ptr (Ptr <GError>) -> IO (Ptr <gunichar>)
#ccall g_utf16_to_utf8 , Ptr <gunichar2> -> <glong> -> Ptr <glong> -> \
    Ptr <glong> -> Ptr (Ptr <GError>) -> IO (Ptr <gchar>)
#ccall g_ucs4_to_utf16 , Ptr <gunichar> -> <glong> -> Ptr <glong> -> \
    Ptr <glong> -> Ptr (Ptr <GError>) -> IO (Ptr <gunichar2>)
#ccall g_ucs4_to_utf8 , Ptr <gunichar> -> <glong> -> Ptr <glong> -> \
    Ptr <glong> -> Ptr (Ptr <GError>) -> IO (Ptr <gchar>)
#ccall g_unichar_to_utf8 , <gunichar> -> Ptr <gchar> -> IO <gint>


