#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBImageProvider.html>

module Bindings.DirectFB.IDirectFBImageProvider where
#strict_import
import Bindings.DirectFB.Types
import Bindings.DirectFB.IDirectFBSurface

#starttype IDirectFBImageProvider
#field GetSurfaceDescription , FunPtr (Ptr <IDirectFBImageProvider> -> \
    Ptr <DFBSurfaceDescription> -> IO <DFBResult>)
#field GetImageDescription , FunPtr (Ptr <IDirectFBImageProvider> -> \
    Ptr <DFBImageDescription> -> IO <DFBResult>)
#field RenderTo , FunPtr (Ptr <IDirectFBImageProvider> -> \
    Ptr <IDirectFBSurface> -> Ptr <DFBRectangle> -> IO <DFBResult>)
#field SetRenderCallback , FunPtr (Ptr <IDirectFBImageProvider> -> \
    <DIRenderCallback> -> Ptr () -> IO <DFBResult>)
#field WriteBack , FunPtr (Ptr <IDirectFBImageProvider> -> \
    Ptr <IDirectFBSurface> -> Ptr <DFBRectangle> -> \
    CString -> IO <DFBResult>)
#stoptype
