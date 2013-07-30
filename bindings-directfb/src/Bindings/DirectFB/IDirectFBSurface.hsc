#include <bindings.dsl.h>
#include <directfb.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/IDirectFBSurface.html>

module Bindings.DirectFB.IDirectFBSurface where
#strict_import
import Bindings.DirectFB.Types
import Bindings.DirectFB.IDirectFBGL
import Bindings.DirectFB.IDirectFBPalette
import Bindings.DirectFB.IDirectFBFont

#starttype IDirectFBSurface
#field GetCapabilities , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <DFBSurfaceCapabilities> -> IO <DFBResult>)
#field GetPosition , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr CInt -> Ptr CInt -> IO <DFBResult>)
#field GetSize , FunPtr (Ptr <IDirectFBSurface> -> Ptr CInt -> \
    Ptr CInt -> IO <DFBResult>)
#field GetVisibleRectangle , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <DFBRectangle> -> IO <DFBResult>)
#field GetPixelFormat , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <DFBSurfacePixelFormat> -> IO <DFBResult>)
#field GetAccelerationMask , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <IDirectFBSurface> -> Ptr <DFBAccelerationMask> -> \
    IO <DFBResult>)
#field GetPalette , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr (Ptr <IDirectFBPalette>) -> IO <DFBResult>)
#field SetPalette , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <IDirectFBPalette> -> IO <DFBResult>)
#field SetAlphaRamp , FunPtr (Ptr <IDirectFBSurface> -> Word8 -> \
    Word8 -> Word8 -> Word8 -> IO <DFBResult>)
#field Lock , FunPtr (Ptr <IDirectFBSurface> -> \
    <DFBSurfaceLockFlags> -> Ptr (Ptr ()) -> \
    Ptr CInt -> IO <DFBResult>)
#field GetFramebufferOffset , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr CInt -> IO <DFBResult>)
#field Unlock , FunPtr (Ptr <IDirectFBSurface> -> IO <DFBResult>)
#field Flip , FunPtr (Ptr <IDirectFBSurface> -> Ptr <DFBRegion> -> \
    <DFBSurfaceFlipFlags> -> IO <DFBResult>)
#field SetField , FunPtr (Ptr <IDirectFBSurface> -> CInt -> IO <DFBResult>)
#field Clear , FunPtr (Ptr <IDirectFBSurface> -> Word8 -> \
    Word8 -> Word8 -> Word8 -> IO <DFBResult>)
#field SetClip , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <DFBRegion> -> IO <DFBResult>)
#field GetClip , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <DFBRegion> -> IO <DFBResult>)
#field SetColor , FunPtr (Ptr <IDirectFBSurface> -> Word8 -> \
    Word8 -> Word8 -> Word8 -> IO <DFBResult>)
#field SetColorIndex , FunPtr (Ptr <IDirectFBSurface> -> \
    CUInt -> IO <DFBResult>)
#field SetSrcBlendFunction , FunPtr (Ptr <IDirectFBSurface> -> \
    <DFBSurfaceBlendFunction> -> IO <DFBResult>)
#field SetDstBlendFunction , FunPtr (Ptr <IDirectFBSurface> -> \
    <DFBSurfaceBlendFunction> -> IO <DFBResult>)
#field SetPorterDuff , FunPtr (Ptr <IDirectFBSurface> -> \
    <DFBSurfacePorterDuffRule> -> IO <DFBResult>)
#field SetSrcColorKey , FunPtr (Ptr <IDirectFBSurface> -> Word8 -> \
    Word8 -> Word8 -> IO <DFBResult>)
#field SetSrcColorKeyIndex , FunPtr (Ptr <IDirectFBSurface> -> \
    CUInt -> IO <DFBResult>)
#field SetDstColorKey , FunPtr (Ptr <IDirectFBSurface> -> \
    Word8 -> Word8 -> Word8 -> IO <DFBResult>)
#field SetDstColorKeyIndex , FunPtr (Ptr <IDirectFBSurface> -> \
    CUInt -> IO <DFBResult>)
#field SetBlittingFlags , FunPtr (Ptr <IDirectFBSurface> -> \
    <DFBSurfaceBlittingFlags> -> IO <DFBResult>)
#field Blit , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <IDirectFBSurface> -> Ptr <DFBRectangle> -> CInt -> \
    CInt -> IO <DFBResult>)
#field TileBlit , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <IDirectFBSurface> -> Ptr <DFBRectangle> -> CInt -> \
    CInt -> IO <DFBResult>)
#field BatchBlit , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <IDirectFBSurface> -> Ptr <DFBRectangle> -> \
    Ptr <DFBPoint> -> CInt -> IO <DFBResult>)
#field StretchBlit , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <IDirectFBSurface> -> Ptr <DFBRectangle> -> \
    Ptr <DFBRectangle> -> IO <DFBResult>)
#field TextureTriangles , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <IDirectFBSurface> -> Ptr <DFBVertex> -> Ptr CInt -> \
    CInt -> <DFBTriangleFormation> -> IO <DFBResult>)
#field SetDrawingFlags , FunPtr (Ptr <IDirectFBSurface> -> \
    <DFBSurfaceDrawingFlags> -> IO <DFBResult>)
#field FillRectangle , FunPtr (Ptr <IDirectFBSurface> -> \
    CInt -> CInt -> CInt -> CInt -> IO <DFBResult>)
#field DrawRectangle , FunPtr (Ptr <IDirectFBSurface> -> \
    CInt -> CInt -> CInt -> CInt -> IO <DFBResult>)
#field DrawLine , FunPtr (Ptr <IDirectFBSurface> -> CInt -> \
    CInt -> CInt -> CInt -> IO <DFBResult>)
#field DrawLines , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <DFBRegion> -> CUInt -> IO <DFBResult>)
#field FillTriangle , FunPtr (Ptr <IDirectFBSurface> -> CInt -> \
    CInt -> CInt -> CInt -> CInt -> CInt -> IO <DFBResult>)
#field FillRectangles , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <DFBRectangle> -> CUInt -> IO <DFBResult>)
#field FillSpans , FunPtr (Ptr <IDirectFBSurface> -> CInt -> \
    Ptr <DFBSpan> -> CUInt -> IO <DFBResult>)
#field FillTriangles , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <DFBTriangle> -> CUInt -> IO <DFBResult>)
#field SetFont , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <IDirectFBFont> -> IO <DFBResult>)
#field GetFont , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr (Ptr <IDirectFBFont>) -> IO <DFBResult>)
#field DrawString , FunPtr (Ptr <IDirectFBSurface> -> \
    CString -> CInt -> CInt -> CInt -> \
    <DFBSurfaceTextFlags> -> IO <DFBResult>)
#field DrawGlyph , FunPtr (Ptr <IDirectFBSurface> -> CUInt -> \
    CInt -> CInt -> <DFBSurfaceTextFlags> -> IO <DFBResult>)
#field SetEncoding , FunPtr (Ptr <IDirectFBSurface> -> \
    <DFBTextEncodingID> -> IO <DFBResult>)
#field GetSubSurface , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <DFBRectangle> -> Ptr (Ptr <IDirectFBSurface>) -> \
    IO <DFBResult>)
#field GetGL , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr (Ptr <IDirectFBGL>) -> IO <DFBResult>)
#field Dump , FunPtr (Ptr <IDirectFBSurface> -> CString -> \
    CString -> IO <DFBResult>)
#field DisableAcceleration , FunPtr (Ptr <IDirectFBSurface> -> \
    <DFBAccelerationMask> -> IO <DFBResult>)
#field ReleaseSource , FunPtr (Ptr <IDirectFBSurface> -> IO <DFBResult>)
#field SetIndexTranslation , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr CInt -> CInt -> IO <DFBResult>)
#field SetRenderOptions , FunPtr (Ptr <IDirectFBSurface> -> \
    <DFBSurfaceRenderOptions> -> IO <DFBResult>)
#field SetMatrix , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr Int32 -> IO <DFBResult>)
#field SetSourceMask , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <IDirectFBSurface> -> CInt -> CInt -> \
    <DFBSurfaceMaskFlags> -> IO <DFBResult>)
#field MakeSubSurface , FunPtr (Ptr <IDirectFBSurface> -> \
    Ptr <IDirectFBSurface> -> Ptr <DFBRectangle> -> IO <DFBResult>)
-- #field Write , FunPtr (Ptr <IDirectFBSurface> -> \
--     Ptr <DFBRectangle> -> Ptr () -> CInt -> IO <DFBResult>)
-- #field Read , FunPtr (Ptr <IDirectFBSurface> -> \
--     Ptr <DFBRectangle> -> Ptr () -> CInt -> IO <DFBResult>)
-- #field SetColors , FunPtr (Ptr <IDirectFBSurface> -> \
--     Ptr <DFBColorID> -> Ptr <DFBColor> -> CUInt -> IO <DFBResult>)
#stoptype
