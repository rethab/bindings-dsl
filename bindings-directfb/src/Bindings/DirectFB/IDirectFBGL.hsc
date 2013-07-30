#include <bindings.dsl.h>
#include <directfb.h>
#include <directfbgl.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBGL.html>

module Bindings.DirectFB.IDirectFBGL where
#strict_import
import Bindings.DirectFB.Types

#starttype IDirectFBGL
#field Lock , FunPtr ( Ptr <IDirectFBGL> -> IO <DFBResult>)
#field Unlock , FunPtr ( Ptr <IDirectFBGL> -> IO <DFBResult>)
#field GetAttributes , FunPtr ( Ptr <IDirectFBGL> -> \
    <DFBGLAttributes> -> IO <DFBResult>)
#field GetProcAddress , FunPtr ( Ptr <IDirectFBGL> -> CString -> \
    Ptr (Ptr ()) -> IO <DFBResult>)
#stoptype
