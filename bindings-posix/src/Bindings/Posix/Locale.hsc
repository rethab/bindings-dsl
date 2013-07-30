#include <bindings.dsl.h>
#include <locale.h>

-- | <http://www.opengroup.org/onlinepubs/9699919799/basedefs/locale.h.html>

module Bindings.Posix.Locale where
#strict_import

#num LC_MESSAGES
-- #num LC_COLLATE_MASK
-- #num LC_CTYPE_MASK
-- #num LC_MESSAGES_MASK
-- #num LC_MONETARY_MASK
-- #num LC_NUMERIC_MASK
-- #num LC_TIME_MASK
-- #num LC_ALL_MASK

-- #integral_t locale_t

-- #ccall duplocale , <locale_t> -> IO <locale_t>
-- #ccall freelocale , <locale_t> -> IO ()
-- #ccall newlocale , CInt -> CString -> <locale_t> -> IO <locale_t>
-- #ccall uselocale , <locale_t> -> IO <locale_t>

