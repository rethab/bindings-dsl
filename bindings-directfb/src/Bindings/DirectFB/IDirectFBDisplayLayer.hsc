#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBDisplayLayer.html>

module Bindings.DirectFB.IDirectFBDisplayLayer where
#strict_import
import Bindings.DirectFB.Types
import Bindings.DirectFB.IDirectFBSurface
import Bindings.DirectFB.IDirectFBWindow
import Bindings.DirectFB.IDirectFBScreen

#starttype IDirectFBDisplayLayer
#field GetID , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <DFBDisplayLayerID> -> IO <DFBResult>)
#field GetDescription , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <DFBDisplayLayerDescription> -> IO <DFBResult>)
#field GetSourceDescriptions , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <DFBDisplayLayerSourceDescription> -> IO <DFBResult>)
#field GetCurrentOutputField , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr CInt -> IO <DFBResult>)
#field GetSurface , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr (Ptr <IDirectFBSurface>) -> IO <DFBResult>)
#field GetScreen , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr (Ptr <IDirectFBScreen>) -> IO <DFBResult>)
#field SetCooperativeLevel , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    <DFBDisplayLayerCooperativeLevel> -> IO <DFBResult>)
#field GetConfiguration , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <DFBDisplayLayerConfig> -> IO <DFBResult>)
#field TestConfiguration , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <DFBDisplayLayerConfig> -> \
    Ptr <DFBDisplayLayerConfigFlags> -> IO <DFBResult>)
#field SetConfiguration , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <DFBDisplayLayerConfig> -> IO <DFBResult>)
#field SetScreenLocation , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    CFloat -> CFloat -> CFloat -> CFloat -> IO <DFBResult>)
#field SetScreenPosition , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    CInt -> CInt -> IO <DFBResult>)
#field SetScreenRectangle , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    CInt -> CInt -> CInt -> CInt -> IO <DFBResult>)
#field SetOpacity , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Word8 -> IO <DFBResult>)
#field SetSourceRectangle , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    CInt -> CInt -> CInt -> CInt -> IO <DFBResult>)
#field SetFieldParity , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    CInt -> IO <DFBResult>)
#field SetClipRegions , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <DFBRegion> -> CInt -> <DFBBoolean> -> IO <DFBResult>)
#field SetSrcColorKey , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Word8 -> Word8 -> Word8 -> IO <DFBResult>)
#field SetDstColorKey , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Word8 -> Word8 -> Word8 -> IO <DFBResult>)
#field GetLevel , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr CInt -> IO <DFBResult>)
#field SetLevel , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    CInt -> IO <DFBResult>)
#field SetBackgroundMode , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    <DFBDisplayLayerBackgroundMode> -> IO <DFBResult>)
#field SetBackgroundImage , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <IDirectFBSurface> -> IO <DFBResult>)
#field SetBackgroundColor , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Word8 -> Word8 -> Word8 -> Word8 -> IO <DFBResult>)
#field GetColorAdjustment , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <DFBColorAdjustment> -> IO <DFBResult>)
#field SetColorAdjustment , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <DFBColorAdjustment> -> IO <DFBResult>)
#field CreateWindow , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <DFBWindowDescription> -> Ptr (Ptr <IDirectFBWindow>) -> \
    IO <DFBResult>)
#field GetWindow , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    <DFBWindowID> -> Ptr (Ptr <IDirectFBWindow>) -> IO <DFBResult>)
#field EnableCursor , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    CInt -> IO <DFBResult>)
#field GetCursorPosition , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr CInt -> Ptr CInt -> IO <DFBResult>)
#field WarpCursor , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    CInt -> CInt -> IO <DFBResult>)
#field SetCursorAcceleration , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    CInt -> CInt -> CInt -> IO <DFBResult>)
#field SetCursorShape , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Ptr <IDirectFBSurface> -> CInt -> CInt -> IO <DFBResult>)
#field SetCursorOpacity , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    Word8 -> IO <DFBResult>)
#field WaitForSync , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    IO <DFBResult>)
#field SwitchContext , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    <DFBBoolean> -> IO <DFBResult>)
#field SetRotation , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
    CInt -> IO <DFBResult>)
-- #field GetRotation , FunPtr (Ptr <IDirectFBDisplayLayer> -> \
--     Ptr CInt -> IO <DFBResult>)
#stoptype
