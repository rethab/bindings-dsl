#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFB.html>

module Bindings.DirectFB.IDirectFB where
#strict_import
import Bindings.Posix.Sys.Select
import Bindings.DirectFB.Types
import Bindings.DirectFB.IDirectFBImageProvider
import Bindings.DirectFB.IDirectFBFont
import Bindings.DirectFB.IDirectFBEventBuffer
import Bindings.DirectFB.IDirectFBInputDevice
import Bindings.DirectFB.IDirectFBDisplayLayer
import Bindings.DirectFB.IDirectFBDataBuffer
import Bindings.DirectFB.IDirectFBPalette
import Bindings.DirectFB.IDirectFBVideoProvider
import Bindings.DirectFB.IDirectFBSurface
import Bindings.DirectFB.IDirectFBScreen

#ccall DirectFBCreate , Ptr (Ptr <IDirectFB>) -> IO <DFBResult>

#starttype IDirectFB
#field SetCooperativeLevel , FunPtr ( Ptr <IDirectFB> -> \
    <DFBCooperativeLevel> -> IO <DFBResult>)
#field SetVideoMode , FunPtr ( Ptr <IDirectFB> -> CInt -> \
    CInt -> CInt -> IO <DFBResult>)
#field GetDeviceDescription , FunPtr ( Ptr <IDirectFB> -> \
    Ptr <DFBGraphicsDeviceDescription> -> IO <DFBResult>)
#field EnumVideoModes , FunPtr ( Ptr <IDirectFB> -> \
    <DFBVideoModeCallback> -> Ptr () -> IO <DFBResult>)
#field CreateSurface , FunPtr ( Ptr <IDirectFB> -> \
    Ptr <DFBSurfaceDescription> -> Ptr (Ptr <IDirectFBSurface>) -> \
    IO <DFBResult>)
#field CreatePalette , FunPtr ( Ptr <IDirectFB> -> \
    Ptr <DFBPaletteDescription> -> Ptr (Ptr <IDirectFBPalette>) -> \
    IO <DFBResult>)
-- #field EnumScreens , FunPtr ( Ptr <IDirectFB> -> \
--     <DFBScreenCallback> -> Ptr () -> IO <DFBResult>)
#field GetScreen , FunPtr ( Ptr <IDirectFB> -> <DFBScreenID> -> \
    Ptr (Ptr <IDirectFBScreen>) -> IO <DFBResult>)
-- #field EnumDisplayLayers , FunPtr ( Ptr <IDirectFB> -> \
--     <DFBDisplayLayerCallback> -> Ptr () -> IO <DFBResult>)
#field GetDisplayLayer , FunPtr ( Ptr <IDirectFB> -> \
    <DFBDisplayLayerID> -> Ptr (Ptr <IDirectFBDisplayLayer>) -> \
    IO <DFBResult>)
-- #field EnumInputDevices , FunPtr ( Ptr <IDirectFB> -> \
--     <DFBInputDeviceCallback> -> Ptr () -> IO <DFBResult>)
#field GetInputDevice , FunPtr ( Ptr <IDirectFB> -> \
    <DFBInputDeviceID> -> Ptr (Ptr <IDirectFBInputDevice>) -> \
    IO <DFBResult>)
#field CreateEventBuffer , FunPtr ( Ptr <IDirectFB> -> \
    Ptr (Ptr <IDirectFBEventBuffer>) -> IO <DFBResult>)
#field CreateInputEventBuffer , FunPtr ( Ptr <IDirectFB> -> \
    <DFBInputDeviceCapabilities> -> <DFBBoolean> -> \
    Ptr (Ptr <IDirectFBEventBuffer>) -> IO <DFBResult>)
#field CreateImageProvider , FunPtr ( Ptr <IDirectFB> -> \
    CString -> Ptr (Ptr <IDirectFBImageProvider>) -> IO <DFBResult>)
#field CreateVideoProvider , FunPtr ( Ptr <IDirectFB> -> \
    CString -> Ptr (Ptr <IDirectFBVideoProvider>) -> IO <DFBResult>)
#field CreateFont , FunPtr ( Ptr <IDirectFB> -> CString -> \
    Ptr <DFBFontDescription> -> Ptr (Ptr <IDirectFBFont>) -> \
    IO <DFBResult>)
#field CreateDataBuffer , FunPtr ( Ptr <IDirectFB> -> \
    Ptr <DFBDataBufferDescription> -> \
    Ptr (Ptr <IDirectFBDataBuffer>) -> IO <DFBResult>)
#field SetClipboardData , FunPtr ( Ptr <IDirectFB> -> CString -> \
    Ptr () -> CUInt -> Ptr <timeval> -> IO <DFBResult>)
#field GetClipboardData , FunPtr ( Ptr <IDirectFB> -> Ptr CString -> \
    Ptr (Ptr ()) -> Ptr CUInt -> IO <DFBResult>)
#field GetClipboardTimeStamp , FunPtr ( Ptr <IDirectFB> -> \
    Ptr <timeval> -> IO <DFBResult>)
#field Suspend , FunPtr ( Ptr <IDirectFB> -> IO <DFBResult>)
#field Resume , FunPtr ( Ptr <IDirectFB> -> IO <DFBResult>)
#field WaitIdle , FunPtr ( Ptr <IDirectFB> -> IO <DFBResult>)
#field WaitForSync , FunPtr ( Ptr <IDirectFB> -> IO <DFBResult>)
#field GetInterface , FunPtr ( Ptr <IDirectFB> -> CString -> \
    CString -> Ptr () -> Ptr (Ptr ()) -> IO <DFBResult>)
#stoptype
