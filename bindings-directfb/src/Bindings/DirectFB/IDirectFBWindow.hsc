#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBWindow.html>

module Bindings.DirectFB.IDirectFBWindow where
#strict_import
import Bindings.DirectFB.Types
import Bindings.DirectFB.IDirectFBSurface
import Bindings.DirectFB.IDirectFBEventBuffer

#starttype IDirectFBWindow
#field GetID , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <DFBWindowID> -> IO <DFBResult>)
#field GetPosition , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr CInt -> Ptr CInt -> IO <DFBResult>)
#field GetSize , FunPtr ( Ptr <IDirectFBWindow> -> Ptr CInt -> \
    Ptr CInt -> IO <DFBResult>)
#field Close , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field Destroy , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field GetSurface , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr (Ptr <IDirectFBSurface>) -> IO <DFBResult>)
#field ResizeSurface , FunPtr ( Ptr <IDirectFBWindow> -> \
    CInt -> CInt -> IO <DFBResult>)
#field CreateEventBuffer , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr (Ptr <IDirectFBEventBuffer>) -> IO <DFBResult>)
#field AttachEventBuffer , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <IDirectFBEventBuffer> -> IO <DFBResult>)
#field DetachEventBuffer , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <IDirectFBEventBuffer> -> IO <DFBResult>)
#field EnableEvents , FunPtr ( Ptr <IDirectFBWindow> -> \
    <DFBWindowEventType> -> IO <DFBResult>)
#field DisableEvents , FunPtr ( Ptr <IDirectFBWindow> -> \
    <DFBWindowEventType> -> IO <DFBResult>)
#field SetOptions , FunPtr ( Ptr <IDirectFBWindow> -> \
    <DFBWindowOptions> -> IO <DFBResult>)
#field GetOptions , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <DFBWindowOptions> -> IO <DFBResult>)
-- #field SetColor , FunPtr ( Ptr <IDirectFBWindow> -> Word8 -> \
--     Word8 -> Word8 -> Word8 -> IO <DFBResult>)
#field SetColorKey , FunPtr ( Ptr <IDirectFBWindow> -> \
    Word8 -> Word8 -> Word8 -> IO <DFBResult>)
#field SetColorKeyIndex , FunPtr ( Ptr <IDirectFBWindow> -> \
    CUInt -> IO <DFBResult>)
#field SetOpacity , FunPtr ( Ptr <IDirectFBWindow> -> \
    Word8 -> IO <DFBResult>)
#field SetOpaqueRegion , FunPtr ( Ptr <IDirectFBWindow> -> \
    CInt -> CInt -> CInt -> CInt -> IO <DFBResult>)
#field GetOpacity , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr Word8 -> IO <DFBResult>)
#field SetCursorShape , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <IDirectFBSurface> -> CInt -> CInt -> IO <DFBResult>)
#field Move , FunPtr ( Ptr <IDirectFBWindow> -> CInt -> \
    CInt -> IO <DFBResult>)
#field MoveTo , FunPtr ( Ptr <IDirectFBWindow> -> \
    CInt -> CInt -> IO <DFBResult>)
#field Resize , FunPtr ( Ptr <IDirectFBWindow> -> \
    CInt -> CInt -> IO <DFBResult>)
#field SetBounds , FunPtr ( Ptr <IDirectFBWindow> -> \
    CInt -> CInt -> CInt -> CInt -> IO <DFBResult>)
#field SetStackingClass , FunPtr ( Ptr <IDirectFBWindow> -> \
    <DFBWindowStackingClass> -> IO <DFBResult>)
#field Raise , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field Lower , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field RaiseToTop , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field LowerToBottom , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field PutAtop , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field PutBelow , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field Bind , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <IDirectFBWindow> -> CInt -> CInt -> IO <DFBResult>)
#field Unbind , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field RequestFocus , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field GrabKeyboard , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field UngrabKeyboard , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field GrabPointer , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field UngrabPointer , FunPtr ( Ptr <IDirectFBWindow> -> IO <DFBResult>)
#field GrabKey , FunPtr ( Ptr <IDirectFBWindow> -> \
    <DFBInputDeviceKeySymbol> -> <DFBInputDeviceModifierMask> -> \
    IO <DFBResult>)
#field UngrabKey , FunPtr ( Ptr <IDirectFBWindow> -> \
    <DFBInputDeviceKeySymbol> -> <DFBInputDeviceModifierMask> -> \
    IO <DFBResult>)
#field SetKeySelection , FunPtr ( Ptr <IDirectFBWindow> -> \
    <DFBWindowKeySelection> -> Ptr <DFBInputDeviceKeySymbol> -> \
    CUInt -> IO <DFBResult>)
#field GrabUnselectedKeys , FunPtr ( Ptr <IDirectFBWindow> -> \
    IO <DFBResult>)
#field UngrabUnselectedKeys , FunPtr ( Ptr <IDirectFBWindow> -> \
    IO <DFBResult>)
#field SetSrcGeometry , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <DFBWindowGeometry> -> IO <DFBResult>)
#field SetDstGeometry , FunPtr ( Ptr <IDirectFBWindow> -> \
    Ptr <DFBWindowGeometry> -> IO <DFBResult>)
#field SetProperty , FunPtr ( Ptr <IDirectFBWindow> -> \
    CString -> Ptr () -> Ptr (Ptr ()) -> IO <DFBResult>)
#field GetProperty , FunPtr ( Ptr <IDirectFBWindow> -> \
    CString -> Ptr (Ptr ()) -> IO <DFBResult>)
#field RemoveProperty , FunPtr ( Ptr <IDirectFBWindow> -> \
    CString -> Ptr (Ptr ()) -> IO <DFBResult>)
-- #field SetRotation , FunPtr ( Ptr <IDirectFBWindow> -> \
--     CInt -> IO <DFBResult>)
-- #field SetAssociation , FunPtr ( Ptr <IDirectFBWindow> -> \
--     <DFBWindowID> -> IO <DFBResult>)
-- #field SetApplicationID , FunPtr ( Ptr <IDirectFBWindow> -> \
--     CLong application_id -> IO <DFBResult>)
-- #field GetApplicationID , FunPtr ( Ptr <IDirectFBWindow> -> \
--     Ptr CLong -> IO <DFBResult>)
#stoptype
