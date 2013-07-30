#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBInputDevice.html>

module Bindings.DirectFB.IDirectFBInputDevice where
#strict_import
import Bindings.DirectFB.Types
import Bindings.DirectFB.IDirectFBEventBuffer

#starttype IDirectFBInputDevice
#field GetID , FunPtr (Ptr <IDirectFBInputDevice> -> \
    Ptr <DFBInputDeviceID> -> IO <DFBResult>)
#field GetDescription , FunPtr (Ptr <IDirectFBInputDevice> -> \
    Ptr <DFBInputDeviceDescription> -> IO <DFBResult>)
#field GetKeymapEntry , FunPtr (Ptr <IDirectFBInputDevice> -> \
    CInt -> Ptr <DFBInputDeviceKeymapEntry> -> IO <DFBResult>)
-- #field SetKeymapEntry , FunPtr (Ptr <IDirectFBInputDevice> -> \
--     CInt -> Ptr <DFBInputDeviceKeymapEntry> -> IO <DFBResult>)
-- #field LoadKeymap , FunPtr (Ptr <IDirectFBInputDevice> -> \
--     CString -> IO <DFBResult>)
#field CreateEventBuffer , FunPtr (Ptr <IDirectFBInputDevice> -> \
    Ptr (Ptr <IDirectFBEventBuffer>) -> IO <DFBResult>)
#field AttachEventBuffer , FunPtr (Ptr <IDirectFBInputDevice> -> \
    Ptr <IDirectFBEventBuffer> -> IO <DFBResult>)
#field DetachEventBuffer , FunPtr (Ptr <IDirectFBInputDevice> -> \
    Ptr <IDirectFBEventBuffer> -> IO <DFBResult>)
#field GetKeyState , FunPtr (Ptr <IDirectFBInputDevice> -> \
    <DFBInputDeviceKeyIdentifier> -> \
    Ptr <DFBInputDeviceKeyState> -> IO <DFBResult>)
#field GetModifiers , FunPtr (Ptr <IDirectFBInputDevice> -> \
    Ptr <DFBInputDeviceModifierMask> -> IO <DFBResult>)
#field GetLockState , FunPtr (Ptr <IDirectFBInputDevice> -> \
    Ptr <DFBInputDeviceLockState> -> IO <DFBResult>)
#field GetButtons , FunPtr (Ptr <IDirectFBInputDevice> -> \
    Ptr <DFBInputDeviceButtonMask> -> IO <DFBResult>)
#field GetButtonState , FunPtr (Ptr <IDirectFBInputDevice> -> \
    <DFBInputDeviceButtonIdentifier> -> \
    Ptr <DFBInputDeviceButtonState> -> IO <DFBResult>)
#field GetAxis , FunPtr (Ptr <IDirectFBInputDevice> -> \
    <DFBInputDeviceAxisIdentifier> -> Ptr CInt -> IO <DFBResult>)
#field GetXY , FunPtr (Ptr <IDirectFBInputDevice> -> Ptr CInt -> \
    Ptr CInt -> IO <DFBResult>)
#stoptype
