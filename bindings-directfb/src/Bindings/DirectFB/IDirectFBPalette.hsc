#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBPalette.html>

module Bindings.DirectFB.IDirectFBPalette where
#strict_import
import Bindings.DirectFB.Types

#starttype IDirectFBPalette
#field GetCapabilities , FunPtr (Ptr <IDirectFBPalette> -> \
    Ptr <DFBPaletteCapabilities> -> IO <DFBResult>)
#field GetSize , FunPtr (Ptr <IDirectFBPalette> -> \
    Ptr CUInt -> IO <DFBResult>)
#field SetEntries , FunPtr (Ptr <IDirectFBPalette> -> \
    Ptr <DFBColor> -> CUInt -> CUInt -> IO <DFBResult>)
#field GetEntries , FunPtr (Ptr <IDirectFBPalette> -> \
    Ptr <DFBColor> -> CUInt -> CUInt -> IO <DFBResult>)
#field FindBestMatch , FunPtr (Ptr <IDirectFBPalette> -> Word8 -> \
    Word8 -> Word8 -> Word8 -> Ptr CUInt -> IO <DFBResult>)
#field CreateCopy , FunPtr (Ptr <IDirectFBPalette> -> \
    Ptr (Ptr <IDirectFBPalette>) -> IO <DFBResult>)
#field SetEntriesYUV , FunPtr (Ptr <IDirectFBPalette> -> \
    Ptr <DFBColorYUV> -> CUInt -> CUInt -> IO <DFBResult>)
#field GetEntriesYUV , FunPtr (Ptr <IDirectFBPalette> -> \
    Ptr <DFBColorYUV> -> CUInt -> CUInt -> IO <DFBResult>)
#field FindBestMatchYUV , FunPtr (Ptr <IDirectFBPalette> -> \
    Word8 -> Word8 -> Word8 -> Word8 -> Ptr CUInt -> IO <DFBResult>)
#stoptype
