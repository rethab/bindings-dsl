#include <bindings.dsl.h>
#include <ffi.h>

-- | <http://sourceware.org/libffi>.

module Bindings.Libffi where
import Foreign
import Foreign.C

#ccall ffi_prep_cif , Ptr <ffi_cif> -> <ffi_abi> -> \
  CUInt -> Ptr <ffi_type> -> Ptr (Ptr <ffi_type>) -> IO <ffi_status>

#ccall ffi_call , Ptr <ffi_cif> -> FunPtr (IO ()) -> \
  Ptr () -> Ptr (Ptr ()) -> IO ()

#starttype ffi_cif
#stoptype

#integral_t ffi_abi
#integral_t ffi_arg
#integral_t ffi_sarg
#integral_t ffi_status

#opaque_t ffi_type

#num FFI_OK
#num FFI_BAD_TYPEDEF
#num FFI_BAD_ABI
#num FFI_FIRST_ABI
#num FFI_DEFAULT_ABI
#num FFI_LAST_ABI


#globalvar ffi_type_void , <ffi_type>
#globalvar ffi_type_uint8 , <ffi_type>
#globalvar ffi_type_sint8 , <ffi_type>
#globalvar ffi_type_uint16 , <ffi_type>
#globalvar ffi_type_sint16 , <ffi_type>
#globalvar ffi_type_uint32 , <ffi_type>
#globalvar ffi_type_sint32 , <ffi_type>
#globalvar ffi_type_uint64 , <ffi_type>
#globalvar ffi_type_sint64 , <ffi_type>
#globalvar ffi_type_float , <ffi_type>
#globalvar ffi_type_double , <ffi_type>
#globalvar ffi_type_pointer , <ffi_type>

