#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBFont.html>

module Bindings.DirectFB.IDirectFBFont where
#strict_import
import Bindings.DirectFB.Types

#starttype IDirectFBFont
#field GetAscender , FunPtr (Ptr <IDirectFBFont> -> \
    Ptr CInt -> IO <DFBResult>)
#field GetDescender , FunPtr (Ptr <IDirectFBFont> -> \
    Ptr CInt -> IO <DFBResult>)
#field GetHeight , FunPtr (Ptr <IDirectFBFont> -> \
    Ptr CInt -> IO <DFBResult>)
#field GetMaxAdvance , FunPtr (Ptr <IDirectFBFont> -> \
    Ptr CInt -> IO <DFBResult>)
#field GetKerning , FunPtr (Ptr <IDirectFBFont> -> CUInt -> \
    CUInt -> Ptr CInt -> Ptr CInt -> IO <DFBResult>)
#field GetStringWidth , FunPtr (Ptr <IDirectFBFont> -> \
    Ptr CString -> CInt -> Ptr CInt -> IO <DFBResult>)
#field GetStringExtents , FunPtr (Ptr <IDirectFBFont> -> \
    Ptr CString -> CInt -> Ptr <DFBRectangle> -> \
    Ptr <DFBRectangle> -> IO <DFBResult>)
#field GetGlyphExtents , FunPtr (Ptr <IDirectFBFont> -> CUInt -> \
    Ptr <DFBRectangle> -> Ptr CInt -> IO <DFBResult>)
#field GetStringBreak , FunPtr (Ptr <IDirectFBFont> -> \
    Ptr CString -> CInt -> CInt -> Ptr CInt -> Ptr CInt -> \
    Ptr CString -> IO <DFBResult>)
#field SetEncoding , FunPtr (Ptr <IDirectFBFont> -> \
    <DFBTextEncodingID> -> IO <DFBResult>)
#field EnumEncodings , FunPtr (Ptr <IDirectFBFont> -> \
    <DFBTextEncodingCallback> -> Ptr () -> IO <DFBResult>)
#field FindEncoding , FunPtr (Ptr <IDirectFBFont> -> \
    Ptr CString -> Ptr <DFBTextEncodingID> -> IO <DFBResult>)
#stoptype
