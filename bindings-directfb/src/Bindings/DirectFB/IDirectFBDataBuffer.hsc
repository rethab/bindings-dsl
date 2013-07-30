#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBDataBuffer.html>

module Bindings.DirectFB.IDirectFBDataBuffer where
#strict_import
import Bindings.DirectFB.Types
import Bindings.DirectFB.IDirectFBImageProvider
import Bindings.DirectFB.IDirectFBVideoProvider

#starttype IDirectFBDataBuffer
#field Flush , FunPtr (Ptr <IDirectFBDataBuffer> -> IO <DFBResult>)
#field Finish , FunPtr (Ptr <IDirectFBDataBuffer> -> IO <DFBResult>)
#field SeekTo , FunPtr (Ptr <IDirectFBDataBuffer> -> \
    CInt -> IO <DFBResult>)
#field GetPosition , FunPtr (Ptr <IDirectFBDataBuffer> -> \
    Ptr CInt -> IO <DFBResult>)
#field GetLength , FunPtr (Ptr <IDirectFBDataBuffer> -> \
    Ptr CInt -> IO <DFBResult>)
#field WaitForData , FunPtr (Ptr <IDirectFBDataBuffer> -> \
    CInt -> IO <DFBResult>)
#field WaitForDataWithTimeout , FunPtr (Ptr <IDirectFBDataBuffer> -> \
    CInt -> CInt -> CInt -> IO <DFBResult>)
#field GetData , FunPtr (Ptr <IDirectFBDataBuffer> -> CInt -> Ptr () -> \
    Ptr CInt -> IO <DFBResult>)
#field PeekData , FunPtr (Ptr <IDirectFBDataBuffer> -> CInt -> CInt -> \
    Ptr () -> Ptr CInt -> IO <DFBResult>)
#field HasData , FunPtr (Ptr <IDirectFBDataBuffer> -> IO <DFBResult>)
#field PutData , FunPtr (Ptr <IDirectFBDataBuffer> -> Ptr () -> \
    CInt -> IO <DFBResult>)
#field CreateImageProvider , FunPtr (Ptr <IDirectFBDataBuffer> -> \
    Ptr (Ptr <IDirectFBImageProvider>) -> IO <DFBResult>)
#field CreateVideoProvider , FunPtr (Ptr <IDirectFBDataBuffer> -> \
    Ptr (Ptr <IDirectFBVideoProvider>) -> IO <DFBResult>)
#stoptype
