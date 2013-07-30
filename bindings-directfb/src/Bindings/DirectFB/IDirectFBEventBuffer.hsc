#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBEventBuffer.html>

module Bindings.DirectFB.IDirectFBEventBuffer where
#strict_import
import Bindings.DirectFB.Types

#starttype IDirectFBEventBuffer
#field Reset , FunPtr (Ptr <IDirectFBEventBuffer> -> IO <DFBResult>)
#field WaitForEvent , FunPtr (Ptr <IDirectFBEventBuffer> -> \
    IO <DFBResult>)
#field WaitForEventWithTimeout , FunPtr (Ptr <IDirectFBEventBuffer> -> \
    CUInt -> CUInt -> IO <DFBResult>)
#field GetEvent , FunPtr (Ptr <IDirectFBEventBuffer> -> \
    Ptr <DFBEvent> -> IO <DFBResult>)
#field PeekEvent , FunPtr (Ptr <IDirectFBEventBuffer> -> \
    Ptr <DFBEvent> -> IO <DFBResult>)
#field HasEvent , FunPtr (Ptr <IDirectFBEventBuffer> -> \
    IO <DFBResult>)
#field PostEvent , FunPtr (Ptr <IDirectFBEventBuffer> -> \
    Ptr <DFBEvent> -> IO <DFBResult>)
#field WakeUp , FunPtr (Ptr <IDirectFBEventBuffer> -> IO <DFBResult>)
#field CreateFileDescriptor , FunPtr (Ptr <IDirectFBEventBuffer> -> \
    Ptr CInt -> IO <DFBResult>)
#field EnableStatistics , FunPtr (Ptr <IDirectFBEventBuffer> -> \
    <DFBBoolean> -> IO <DFBResult>)
#field GetStatistics , FunPtr (Ptr <IDirectFBEventBuffer> -> \
    Ptr <DFBEventBufferStats> -> IO <DFBResult>)
#stoptype
