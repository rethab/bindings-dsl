#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBScreen.html>

module Bindings.DirectFB.IDirectFBScreen where
#strict_import
import Bindings.DirectFB.Types

#starttype IDirectFBScreen
#field GetID , FunPtr (Ptr <IDirectFBScreen> -> \
    Ptr <DFBScreenID> -> IO <DFBResult>)
#field GetDescription , FunPtr (Ptr <IDirectFBScreen> -> \
    Ptr <DFBScreenDescription> -> IO <DFBResult>)
#field GetSize , FunPtr (Ptr <IDirectFBScreen> -> Ptr CInt -> \
    Ptr CInt -> IO <DFBResult>)
-- #field EnumDisplayLayers , FunPtr (Ptr <IDirectFBScreen> -> \
--     <DFBDisplayLayerCallback> -> Ptr () -> IO <DFBResult>)
#field SetPowerMode , FunPtr (Ptr <IDirectFBScreen> -> \
    <DFBScreenPowerMode> -> IO <DFBResult>)
#field WaitForSync , FunPtr (Ptr <IDirectFBScreen> -> IO <DFBResult>)
#field GetMixerDescriptions , FunPtr (Ptr <IDirectFBScreen> -> \
    Ptr <DFBScreenMixerDescription> -> IO <DFBResult>)
#field GetMixerConfiguration , FunPtr (Ptr <IDirectFBScreen> -> \
    CInt -> Ptr <DFBScreenMixerConfig> -> IO <DFBResult>)
#field TestMixerConfiguration , FunPtr (Ptr <IDirectFBScreen> -> \
    CInt -> Ptr <DFBScreenMixerConfig> -> \
    Ptr <DFBScreenMixerConfigFlags> -> IO <DFBResult>)
#field SetMixerConfiguration , FunPtr (Ptr <IDirectFBScreen> -> \
    CInt -> Ptr <DFBScreenMixerConfig> -> IO <DFBResult>)
#field GetEncoderDescriptions , FunPtr (Ptr <IDirectFBScreen> -> \
    Ptr <DFBScreenEncoderDescription> -> IO <DFBResult>)
#field GetEncoderConfiguration , FunPtr (Ptr <IDirectFBScreen> -> \
    CInt -> Ptr <DFBScreenEncoderConfig> -> IO <DFBResult>)
#field TestEncoderConfiguration , FunPtr (Ptr <IDirectFBScreen> -> \
    CInt -> Ptr <DFBScreenEncoderConfig> -> \
    Ptr <DFBScreenEncoderConfigFlags> -> IO <DFBResult>)
#field SetEncoderConfiguration , FunPtr (Ptr <IDirectFBScreen> -> \
    CInt -> Ptr <DFBScreenEncoderConfig> -> IO <DFBResult>)
#field GetOutputDescriptions , FunPtr (Ptr <IDirectFBScreen> -> \
    Ptr <DFBScreenOutputDescription> -> IO <DFBResult>)
#field GetOutputConfiguration , FunPtr (Ptr <IDirectFBScreen> -> \
    CInt -> Ptr <DFBScreenOutputConfig> -> IO <DFBResult>)
#field TestOutputConfiguration , FunPtr (Ptr <IDirectFBScreen> -> \
    CInt -> Ptr <DFBScreenOutputConfig> -> \
    Ptr <DFBScreenOutputConfigFlags> -> IO <DFBResult>)
#field SetOutputConfiguration , FunPtr (Ptr <IDirectFBScreen> -> \
    CInt -> Ptr <DFBScreenOutputConfig> -> IO <DFBResult>)
#stoptype
