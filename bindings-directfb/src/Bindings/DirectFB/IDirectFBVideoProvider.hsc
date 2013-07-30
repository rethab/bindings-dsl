#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBVideoProvider.html>

module Bindings.DirectFB.IDirectFBVideoProvider where
#strict_import
import Bindings.DirectFB.Types
import Bindings.DirectFB.IDirectFBSurface
import Bindings.DirectFB.IDirectFBEventBuffer

#starttype IDirectFBVideoProvider
#field GetCapabilities , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBVideoProviderCapabilities> -> IO <DFBResult>)
#field GetSurfaceDescription , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBSurfaceDescription> -> IO <DFBResult>)
#field GetStreamDescription , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBStreamDescription> -> IO <DFBResult>)
#field PlayTo , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <IDirectFBSurface> -> Ptr <DFBRectangle> -> \
    <DVFrameCallback> -> Ptr () -> IO <DFBResult>)
#field Stop , FunPtr (Ptr <IDirectFBVideoProvider> -> IO <DFBResult>)
#field GetStatus , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBVideoProviderStatus> -> IO <DFBResult>)
#field SeekTo , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    CDouble -> IO <DFBResult>)
#field GetPos , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr CDouble -> IO <DFBResult>)
#field GetLength , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr CDouble -> IO <DFBResult>)
#field GetColorAdjustment , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBColorAdjustment> -> IO <DFBResult>)
#field SetColorAdjustment , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBColorAdjustment> -> IO <DFBResult>)
#field SendEvent , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBEvent> -> IO <DFBResult>)
#field SetPlaybackFlags , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    <DFBVideoProviderPlaybackFlags> -> IO <DFBResult>)
#field SetSpeed , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    CDouble -> IO <DFBResult>)
#field GetSpeed , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr CDouble -> IO <DFBResult>)
#field SetVolume , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr CFloat -> IO <DFBResult>)
#field GetVolume , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr CFloat -> IO <DFBResult>)
#field SetStreamAttributes , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    <DFBStreamAttributes> -> IO <DFBResult>)
#field SetAudioOutputs , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBVideoProviderAudioUnits> -> IO <DFBResult>)
#field GetAudioOutputs , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBVideoProviderAudioUnits> -> IO <DFBResult>)
#field SetAudioDelay , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    CLong -> IO <DFBResult>)
#field CreateEventBuffer , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr (Ptr <IDirectFBEventBuffer>) -> IO <DFBResult>)
#field AttachEventBuffer , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <IDirectFBEventBuffer> -> IO <DFBResult>)
#field EnableEvents , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    <DFBVideoProviderEventType> -> IO <DFBResult>)
#field DisableEvents , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    <DFBVideoProviderEventType> -> IO <DFBResult>)
#field DetachEventBuffer , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <IDirectFBEventBuffer> -> IO <DFBResult>)
#field GetBufferOccupancy , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBBufferOccupancy> -> IO <DFBResult>)
#field SetBufferThresholds , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    <DFBBufferThresholds> -> IO <DFBResult>)
#field GetBufferThresholds , FunPtr (Ptr <IDirectFBVideoProvider> -> \
    Ptr <DFBBufferThresholds> -> IO <DFBResult>)
#stoptype

