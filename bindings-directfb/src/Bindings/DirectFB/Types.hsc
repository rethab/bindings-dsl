#include <bindings.dsl.h>
#include <directfb.h>
#include <directfb_version.h>
#include <directfbgl.h>

-- | <http://directfb.org/docs/DirectFB_Reference_1_4/types.html>

module Bindings.DirectFB.Types where
#strict_import
import Bindings.Posix.Sys.Select

#globalvar directfb_major_version , CUInt
#globalvar directfb_minor_version , CUInt
#globalvar directfb_micro_version , CUInt
#globalvar directfb_binary_age , CUInt
#globalvar directfb_interface_age , CUInt

#ccall DirectFBCheckVersion , CUInt -> CUInt -> CUInt -> IO CString
#ccall DirectFBError , CString -> <DFBResult> -> IO <DFBResult>
#ccall DirectFBErrorFatal , CString -> <DFBResult> -> IO <DFBResult>
#ccall DirectFBErrorString , <DFBResult> -> IO CString
#ccall DirectFBUsageString , IO CString
#ccall DirectFBInit , Ptr CInt -> Ptr (Ptr (CString)) -> IO <DFBResult>
#ccall DirectFBSetOption , CString -> CString -> IO <DFBResult>

#integral_t DFBResult

#num DFB_OK
#num DFB_FAILURE
#num DFB_INIT
#num DFB_BUG
#num DFB_DEAD
#num DFB_UNSUPPORTED
#num DFB_UNIMPLEMENTED
#num DFB_ACCESSDENIED
#num DFB_INVAREA
#num DFB_INVARG
#num DFB_NOSYSTEMMEMORY
#num DFB_NOSHAREDMEMORY
#num DFB_LOCKED
#num DFB_BUFFEREMPTY
#num DFB_FILENOTFOUND
#num DFB_IO
#num DFB_BUSY
#num DFB_NOIMPL
#num DFB_TIMEOUT
#num DFB_THIZNULL
#num DFB_IDNOTFOUND
#num DFB_DESTROYED
#num DFB_FUSION
#num DFB_BUFFERTOOLARGE
#num DFB_INTERRUPTED
#num DFB_NOCONTEXT
#num DFB_TEMPUNAVAIL
#num DFB_LIMITEXCEEDED
#num DFB_NOSUCHMETHOD
#num DFB_NOSUCHINSTANCE
#num DFB_ITEMNOTFOUND
#num DFB_VERSIONMISMATCH
#num DFB_EOF
#num DFB_SUSPENDED
#num DFB_INCOMPLETE
#num DFB_NOCORE
#num DFB_NOVIDEOMEMORY
#num DFB_MISSINGFONT
#num DFB_MISSINGIMAGE

#integral_t DFBBoolean

#num DFB_FALSE
#num DFB_TRUE

#starttype DFBPoint
#field x , CInt
#field y , CInt
#stoptype

#starttype DFBSpan
#field x , CInt
#field w , CInt
#stoptype

#starttype DFBDimension
#field w , CInt
#field h , CInt
#stoptype

#starttype DFBRectangle
#field x , CInt
#field y , CInt
#field w , CInt
#field h , CInt
#stoptype

#starttype DFBLocation
#field x , CFloat
#field y , CFloat
#field w , CFloat
#field h , CFloat
#stoptype


#starttype DFBRegion
#field x1 , CInt
#field y1 , CInt
#field x2 , CInt
#field y2 , CInt
#stoptype


#starttype DFBInsets
#field l , CInt
#field t , CInt
#field r , CInt
#field b , CInt
#stoptype


#starttype DFBTriangle
#field x1 , CInt
#field y1 , CInt
#field x2 , CInt
#field y2 , CInt
#field x3 , CInt
#field y3 , CInt
#stoptype

#starttype DFBColor
#field a , Word8
#field r , Word8
#field g , Word8
#field b , Word8
#stoptype

#starttype DFBColorKey
#field index , Word8
#field r , Word8
#field g , Word8
#field b , Word8
#stoptype

#starttype DFBColorYUV
#field a , Word8
#field y , Word8
#field u , Word8
#field v , Word8
#stoptype

#if defined(DCID_PRIMARY)
#num DCID_PRIMARY
#endif
#if defined(DFB_COLOR_IDS_MAX)
#num DFB_COLOR_IDS_MAX
#endif
#num DFB_DISPLAYLAYER_IDS_MAX

#integral_t DFBScreenID
#integral_t DFBDisplayLayerID
#integral_t DFBDisplayLayerSourceID
#integral_t DFBWindowID
#integral_t DFBInputDeviceID
#integral_t DFBTextEncodingID
#integral_t DFBDisplayLayerIDs

#num DTEID_UTF8

#integral_t DFBCooperativeLevel

#num DFSCL_NORMAL
#num DFSCL_FULLSCREEN
#num DFSCL_EXCLUSIVE


#integral_t DFBDisplayLayerCapabilities

#num DLCAPS_NONE
#num DLCAPS_SURFACE
#num DLCAPS_OPACITY
#num DLCAPS_ALPHACHANNEL
#num DLCAPS_SCREEN_LOCATION
#num DLCAPS_FLICKER_FILTERING
#num DLCAPS_DEINTERLACING
#num DLCAPS_SRC_COLORKEY
#num DLCAPS_DST_COLORKEY
#num DLCAPS_BRIGHTNESS
#num DLCAPS_CONTRAST
#num DLCAPS_HUE
#num DLCAPS_SATURATION
#num DLCAPS_LEVELS
#num DLCAPS_FIELD_PARITY
#num DLCAPS_WINDOWS
#num DLCAPS_SOURCES
#num DLCAPS_ALPHA_RAMP
#num DLCAPS_PREMULTIPLIED
#num DLCAPS_SCREEN_POSITION
#num DLCAPS_SCREEN_SIZE
#num DLCAPS_CLIP_REGIONS
#num DLCAPS_ALL

#integral_t DFBScreenCapabilities

#num DSCCAPS_NONE
#num DSCCAPS_VSYNC
#num DSCCAPS_POWER_MANAGEMENT
#num DSCCAPS_MIXERS
#num DSCCAPS_ENCODERS
#num DSCCAPS_OUTPUTS
#num DSCCAPS_ALL


#integral_t DFBDisplayLayerOptions

#num DLOP_NONE
#num DLOP_ALPHACHANNEL
#num DLOP_FLICKER_FILTERING
#num DLOP_DEINTERLACING
#num DLOP_SRC_COLORKEY
#num DLOP_DST_COLORKEY
#num DLOP_OPACITY
#num DLOP_FIELD_PARITY

#integral_t DFBDisplayLayerBufferMode

#num DLBM_UNKNOWN
#num DLBM_FRONTONLY
#num DLBM_BACKVIDEO
#num DLBM_BACKSYSTEM
#num DLBM_TRIPLE
#num DLBM_WINDOWS

#integral_t DFBSurfaceDescriptionFlags

#num DSDESC_NONE
#num DSDESC_CAPS
#num DSDESC_WIDTH
#num DSDESC_HEIGHT
#num DSDESC_PIXELFORMAT
#num DSDESC_PREALLOCATED
#num DSDESC_PALETTE
#num DSDESC_RESOURCE_ID
#if defined(DSDESC_HINTS)
#num DSDESC_HINTS
#endif
#num DSDESC_ALL


#integral_t DFBPaletteDescriptionFlags

#num DPDESC_CAPS
#num DPDESC_SIZE
#num DPDESC_ENTRIES


#integral_t DFBSurfaceCapabilities

#num DSCAPS_NONE
#num DSCAPS_PRIMARY
#num DSCAPS_SYSTEMONLY
#num DSCAPS_VIDEOONLY
#num DSCAPS_DOUBLE
#num DSCAPS_SUBSURFACE
#num DSCAPS_INTERLACED
#num DSCAPS_SEPARATED
#num DSCAPS_STATIC_ALLOC
#num DSCAPS_TRIPLE
#num DSCAPS_PREMULTIPLIED
#num DSCAPS_DEPTH
#num DSCAPS_SHARED
#if defined(DSCAPS_ROTATED)
#num DSCAPS_ROTATED
#endif
#num DSCAPS_ALL
#num DSCAPS_FLIPPING

#integral_t DFBPaletteCapabilities

#num DPCAPS_NONE


#integral_t DFBSurfaceDrawingFlags

#num DSDRAW_NOFX
#num DSDRAW_BLEND
#num DSDRAW_DST_COLORKEY
#num DSDRAW_SRC_PREMULTIPLY
#num DSDRAW_DST_PREMULTIPLY
#num DSDRAW_DEMULTIPLY
#num DSDRAW_XOR


#integral_t DFBSurfaceBlittingFlags

#num DSBLIT_NOFX
#num DSBLIT_BLEND_ALPHACHANNEL
#num DSBLIT_BLEND_COLORALPHA
#num DSBLIT_COLORIZE
#num DSBLIT_SRC_COLORKEY
#num DSBLIT_DST_COLORKEY
#num DSBLIT_SRC_PREMULTIPLY
#num DSBLIT_DST_PREMULTIPLY
#num DSBLIT_DEMULTIPLY
#num DSBLIT_DEINTERLACE
#num DSBLIT_SRC_PREMULTCOLOR
#num DSBLIT_XOR
#num DSBLIT_INDEX_TRANSLATION
#if defined(DSBLIT_ROTATE90)
#num DSBLIT_ROTATE90
#endif
#num DSBLIT_ROTATE180
#if defined(DSBLIT_ROTATE270)
#num DSBLIT_ROTATE270
#endif
#num DSBLIT_COLORKEY_PROTECT
#num DSBLIT_SRC_MASK_ALPHA
#num DSBLIT_SRC_MASK_COLOR


#integral_t DFBSurfaceRenderOptions

#num DSRO_NONE
#num DSRO_SMOOTH_UPSCALE
#num DSRO_SMOOTH_DOWNSCALE
#num DSRO_MATRIX
#num DSRO_ANTIALIAS
#num DSRO_ALL


#integral_t DFBAccelerationMask

#num DFXL_NONE
#num DFXL_FILLRECTANGLE
#num DFXL_DRAWRECTANGLE
#num DFXL_DRAWLINE
#num DFXL_FILLTRIANGLE
#num DFXL_BLIT
#num DFXL_STRETCHBLIT
#num DFXL_TEXTRIANGLES
#num DFXL_DRAWSTRING
#num DFXL_ALL
#num DFXL_ALL_DRAW
#num DFXL_ALL_BLIT

#integral_t DFBDisplayLayerTypeFlags

#num DLTF_NONE
#num DLTF_GRAPHICS
#num DLTF_VIDEO
#num DLTF_STILL_PICTURE
#num DLTF_BACKGROUND
#num DLTF_ALL


#integral_t DFBInputDeviceTypeFlags

#num DIDTF_NONE
#num DIDTF_KEYBOARD
#num DIDTF_MOUSE
#num DIDTF_JOYSTICK
#num DIDTF_REMOTE
#num DIDTF_VIRTUAL
#num DIDTF_ALL


#integral_t DFBInputDeviceCapabilities

#num DICAPS_KEYS
#num DICAPS_AXES
#num DICAPS_BUTTONS
#num DICAPS_ALL

#integral_t DFBInputDeviceButtonIdentifier

#num DIBI_LEFT
#num DIBI_RIGHT
#num DIBI_MIDDLE
#num DIBI_FIRST
#num DIBI_LAST

#integral_t DFBInputDeviceAxisIdentifier

#num DIAI_X
#num DIAI_Y
#num DIAI_Z
#num DIAI_FIRST
#num DIAI_LAST

#integral_t DFBWindowDescriptionFlags

#num DWDESC_CAPS
#num DWDESC_WIDTH
#num DWDESC_HEIGHT
#num DWDESC_PIXELFORMAT
#num DWDESC_POSX
#num DWDESC_POSY
#num DWDESC_SURFACE_CAPS
#num DWDESC_PARENT
#num DWDESC_OPTIONS
#num DWDESC_STACKING
#if defined(DWDESC_TOPLEVEL_ID)
#num DWDESC_TOPLEVEL_ID
#endif
#num DWDESC_RESOURCE_ID

#integral_t DFBDataBufferDescriptionFlags

#num DBDESC_FILE
#num DBDESC_MEMORY

#integral_t DFBWindowCapabilities

#num DWCAPS_NONE
#num DWCAPS_ALPHACHANNEL
#num DWCAPS_DOUBLEBUFFER
#num DWCAPS_INPUTONLY
#num DWCAPS_NODECORATION
#if defined(DWCAPS_SUBWINDOW)
#num DWCAPS_SUBWINDOW
#endif
#if defined(DWCAPS_COLOR)
#num DWCAPS_COLOR
#endif
#num DWCAPS_NOFOCUS
#num DWCAPS_ALL

#integral_t DFBWindowOptions

#num DWOP_NONE
#num DWOP_COLORKEYING
#num DWOP_ALPHACHANNEL
#num DWOP_OPAQUE_REGION
#num DWOP_SHAPED
#num DWOP_KEEP_POSITION
#num DWOP_KEEP_SIZE
#num DWOP_KEEP_STACKING
#num DWOP_GHOST
#num DWOP_INDESTRUCTIBLE
#num DWOP_SCALE
#num DWOP_KEEP_ABOVE
#num DWOP_KEEP_UNDER
#if defined(DWOP_FOLLOW_BOUNDS)
#num DWOP_FOLLOW_BOUNDS
#endif
#num DWOP_ALL

#integral_t DFBWindowStackingClass

#num DWSC_MIDDLE
#num DWSC_UPPER
#num DWSC_LOWER

#integral_t DFBFontAttributes

#num DFFA_NONE
#num DFFA_NOKERNING
#num DFFA_NOHINTING
#num DFFA_MONOCHROME
#num DFFA_NOCHARMAP
#num DFFA_FIXEDCLIP
#if defined(DFFA_NOBITMAP)
#num DFFA_NOBITMAP
#endif
#if defined(DFFA_OUTLINED)
#num DFFA_OUTLINED
#endif

#integral_t DFBFontDescriptionFlags

#num DFDESC_ATTRIBUTES
#num DFDESC_HEIGHT
#num DFDESC_WIDTH
#num DFDESC_INDEX
#num DFDESC_FIXEDADVANCE
#num DFDESC_FRACT_HEIGHT
#num DFDESC_FRACT_WIDTH
#if defined(DFDESC_OUTLINE_WIDTH)
#num DFDESC_OUTLINE_WIDTH
#endif
#if defined(DFDESC_OUTLINE_OPACITY)
#num DFDESC_OUTLINE_OPACITY
#endif

#starttype DFBFontDescription
#field flags , <DFBFontDescriptionFlags>
#field attributes , <DFBFontAttributes>
#field height , CInt
#field width , CInt
#field index , CUInt
#field fixed_advance , CInt
#field fract_height , CInt
#field fract_width , CInt
#if DIRECTFB_MINOR_VERSION >= 4
#field outline_width , CInt
#field outline_opacity , CInt
#endif
#stoptype

#integral_t DFBSurfacePixelFormat

#num DSPF_UNKNOWN
#num DSPF_ARGB1555
#num DSPF_RGB16
#num DSPF_RGB24
#num DSPF_RGB32
#num DSPF_ARGB
#num DSPF_A8
#num DSPF_YUY2
#num DSPF_RGB332
#num DSPF_UYVY
#num DSPF_I420
#num DSPF_YV12
#num DSPF_LUT8
#num DSPF_ALUT44
#num DSPF_AiRGB
#num DSPF_A1
#num DSPF_NV12
#num DSPF_NV16
#num DSPF_ARGB2554
#num DSPF_ARGB4444
#if defined(DSPF_RGBA4444)
#num DSPF_RGBA4444
#endif
#num DSPF_NV21
#num DSPF_AYUV
#num DSPF_A4
#num DSPF_ARGB1666
#num DSPF_ARGB6666
#num DSPF_RGB18
#num DSPF_LUT2
#num DSPF_RGB444
#num DSPF_RGB555
#num DSPF_BGR555
#if defined(DSPF_RGBA5551)
#num DSPF_RGBA5551
#endif
#num DFB_NUM_PIXELFORMATS

#cinline DFB_PIXELFORMAT_INDEX , <DFBSurfacePixelFormat> -> CInt
#cinline DFB_COLOR_BITS_PER_PIXEL , <DFBSurfacePixelFormat> -> CInt
#cinline DFB_ALPHA_BITS_PER_PIXEL , <DFBSurfacePixelFormat> -> CInt
#cinline DFB_PIXELFORMAT_HAS_ALPHA , <DFBSurfacePixelFormat> -> CInt
#cinline DFB_BITS_PER_PIXEL , <DFBSurfacePixelFormat> -> CInt
#cinline DFB_BYTES_PER_PIXEL , <DFBSurfacePixelFormat> -> CInt
#cinline DFB_BYTES_PER_LINE , <DFBSurfacePixelFormat> -> CInt -> CInt
#cinline DFB_PIXELFORMAT_ALIGNMENT , <DFBSurfacePixelFormat> -> CInt
#cinline DFB_PLANE_MULTIPLY , <DFBSurfacePixelFormat> -> CInt -> CInt
#cinline DFB_PIXELFORMAT_IS_INDEXED , <DFBSurfacePixelFormat> -> CInt
#cinline DFB_PLANAR_PIXELFORMAT , <DFBSurfacePixelFormat> -> CInt
#cinline DFB_PIXELFORMAT_INV_ALPHA , <DFBSurfacePixelFormat> -> CInt

#if DIRECTFB_MINOR_VERSION >= 3
#integral_t DFBSurfaceHintFlags
#num DSHF_NONE
#num DSHF_LAYER
#num DSHF_WINDOW
#num DSHF_CURSOR
#num DSHF_FONT
#num DSHF_ALL
#endif

#starttype DFBSurfaceDescription
#field flags , <DFBSurfaceDescriptionFlags>
#field caps , <DFBSurfaceCapabilities>
#field width , CInt
#field height , CInt
#field pixelformat , <DFBSurfacePixelFormat>
#field preallocated[0].data , Ptr ()
#field preallocated[0].pitch , CInt
#field preallocated[1].data , Ptr ()
#field preallocated[1].pitch , CInt
#field palette.entries , Ptr <DFBColor>
#field palette.size , CUInt
#field resource_id , CULong
#if DIRECTFB_MINOR_VERSION >= 3
#field hints , <DFBSurfaceHintFlags>
#endif
#stoptype

#starttype DFBPaletteDescription
#field caps , <DFBPaletteCapabilities>
#field size , CUInt
#field entries , Ptr <DFBColor>
#stoptype

#num DFB_DISPLAY_LAYER_DESC_NAME_LENGTH

#starttype DFBDisplayLayerDescription
#field type , <DFBDisplayLayerTypeFlags>
#field caps , <DFBDisplayLayerCapabilities>
#array_field name , CChar
#field level , CInt
#field regions , CInt
#field sources , CInt
#field clip_regions , CInt
#stoptype

#integral_t DFBDisplayLayerSourceCaps

#num DDLSCAPS_NONE
#num DDLSCAPS_SURFACE
#num DDLSCAPS_ALL

#num DFB_DISPLAY_LAYER_SOURCE_DESC_NAME_LENGTH

#starttype DFBDisplayLayerSourceDescription
#field source_id , <DFBDisplayLayerSourceID>
#array_field name , CChar
#field caps , <DFBDisplayLayerSourceCaps>
#stoptype

#num DFB_SCREEN_DESC_NAME_LENGTH

#starttype DFBScreenDescription
#field caps , <DFBScreenCapabilities>
#array_field name , CChar
#field mixers , CInt
#field encoders , CInt
#field outputs , CInt
#stoptype

#num DFB_INPUT_DEVICE_DESC_NAME_LENGTH

#starttype DFBInputDeviceDescription
#field type , <DFBInputDeviceTypeFlags>
#field caps , <DFBInputDeviceCapabilities>
#field min_keycode , CInt
#field max_keycode , CInt
#field max_axis , <DFBInputDeviceAxisIdentifier>
#field max_button , <DFBInputDeviceButtonIdentifier>
#array_field name , CChar
#array_field vendor , CChar
#stoptype

#integral_t DFBInputDeviceAxisInfoFlags

#num DIAIF_NONE
#num DIAIF_ABS_MIN
#num DIAIF_ABS_MAX
#num DIAIF_ALL

#starttype DFBInputDeviceAxisInfo
#field flags , <DFBInputDeviceAxisInfoFlags>
#field abs_min , CInt
#field abs_max , CInt
#stoptype

#num DFB_GRAPHICS_DRIVER_INFO_NAME_LENGTH

#starttype DFBGraphicsDriverInfo
#field major , CInt
#field minor , CInt
#array_field name , CChar
#array_field vendor , CChar
#stoptype

#num DFB_GRAPHICS_DEVICE_DESC_NAME_LENGTH

#starttype DFBGraphicsDeviceDescription
#field acceleration_mask , <DFBAccelerationMask>
#field blitting_flags , <DFBSurfaceBlittingFlags>
#field drawing_flags , <DFBSurfaceDrawingFlags>
#field video_memory , CUInt
#array_field name , CChar
#array_field vendor , CChar
#field driver , <DFBGraphicsDriverInfo>
#stoptype

#starttype DFBWindowDescription
#field flags , <DFBWindowDescriptionFlags>
#field caps , <DFBWindowCapabilities>
#field width , CInt
#field height , CInt
#field pixelformat , <DFBSurfacePixelFormat>
#field posx , CInt
#field posy , CInt
#field surface_caps , <DFBSurfaceCapabilities>
#field parent_id , <DFBWindowID>
#field options , <DFBWindowOptions>
#field stacking , <DFBWindowStackingClass>
#field resource_id , CULong
#if DIRECTFB_MINOR_VERSION >= 3
#field toplevel_id , <DFBWindowID>
#endif
#stoptype

#starttype DFBDataBufferDescription
#field flags , <DFBDataBufferDescriptionFlags>
#field file , CString
#field memory.data , Ptr ()
#field memory.length , CUInt
#stoptype

#integral_t DFBEnumerationResult

#num DFENUM_OK
#num DFENUM_CANCEL

#callback_t DFBVideoModeCallback , CInt -> CInt -> CInt -> \
  Ptr () -> IO <DFBEnumerationResult>
-- callback_t DFBScreenCallback , <DFBScreenID> -> \
--   <DFBScreenDescription> -> Ptr () -> \
--   IO <DFBEnumerationResult>
-- callback_t DFBDisplayLayerCallback , <DFBDisplayLayerID> -> \
--   <DFBDisplayLayerDescription> -> Ptr () -> \
--   IO <DFBEnumerationResult>
-- callback_t DFBInputDeviceCallback , <DFBInputDeviceID> -> \
--   <DFBInputDeviceDescription> -> Ptr () -> \
--   IO <DFBEnumerationResult>
#callback_t DFBGetDataCallback , Ptr () -> CUInt -> Ptr () -> IO CInt

#integral_t DFBVideoProviderCapabilities

#num DVCAPS_BASIC
#num DVCAPS_SEEK
#num DVCAPS_SCALE
#num DVCAPS_INTERLACED
#num DVCAPS_SPEED
#num DVCAPS_BRIGHTNESS
#num DVCAPS_CONTRAST
#num DVCAPS_HUE
#num DVCAPS_SATURATION
#num DVCAPS_INTERACTIVE
#num DVCAPS_VOLUME
#num DVCAPS_EVENT
#num DVCAPS_ATTRIBUTES
#num DVCAPS_AUDIO_SEL

#integral_t DFBVideoProviderStatus

#num DVSTATE_UNKNOWN
#num DVSTATE_PLAY
#num DVSTATE_STOP
#num DVSTATE_FINISHED
#num DVSTATE_BUFFERING

#integral_t DFBVideoProviderPlaybackFlags

#num DVPLAY_NOFX
#num DVPLAY_REWIND
#num DVPLAY_LOOPING

#integral_t DFBVideoProviderAudioUnits

#num DVAUDIOUNIT_NONE
#num DVAUDIOUNIT_ONE
#num DVAUDIOUNIT_TWO
#num DVAUDIOUNIT_THREE
#num DVAUDIOUNIT_FOUR
#num DVAUDIOUNIT_ALL

#integral_t DFBColorAdjustmentFlags

#num DCAF_NONE
#num DCAF_BRIGHTNESS
#num DCAF_CONTRAST
#num DCAF_HUE
#num DCAF_SATURATION
#num DCAF_ALL

#starttype DFBColorAdjustment
#field flags , <DFBColorAdjustmentFlags>
#field brightness , Word16
#field contrast , Word16
#field hue , Word16
#field saturation , Word16
#stoptype

#num DLID_PRIMARY
#num DLSID_SURFACE
#num DSCID_PRIMARY
#num DIDID_KEYBOARD
#num DIDID_JOYSTICK
#num DIDID_ANY

#integral_t DFBDisplayLayerCooperativeLevel

#num DLSCL_SHARED
#num DLSCL_EXCLUSIVE
#num DLSCL_ADMINISTRATIVE

#integral_t DFBDisplayLayerBackgroundMode

#num DLBM_DONTCARE
#num DLBM_COLOR
#num DLBM_IMAGE
#num DLBM_TILE

#integral_t DFBDisplayLayerConfigFlags

#num DLCONF_NONE
#num DLCONF_WIDTH
#num DLCONF_HEIGHT
#num DLCONF_PIXELFORMAT
#num DLCONF_BUFFERMODE
#num DLCONF_OPTIONS
#num DLCONF_SOURCE
#num DLCONF_SURFACE_CAPS
#num DLCONF_ALL

#starttype DFBDisplayLayerConfig
#field flags , <DFBDisplayLayerConfigFlags>
#field width , CInt
#field height , CInt
#field pixelformat , <DFBSurfacePixelFormat>
#field buffermode , <DFBDisplayLayerBufferMode>
#field options , <DFBDisplayLayerOptions>
#field source , <DFBDisplayLayerSourceID>
#field surface_caps , <DFBSurfaceCapabilities>
#stoptype

#integral_t DFBScreenPowerMode

#num DSPM_ON
#num DSPM_STANDBY
#num DSPM_SUSPEND
#num DSPM_OFF

#integral_t DFBScreenMixerCapabilities

#num DSMCAPS_NONE
#num DSMCAPS_FULL
#num DSMCAPS_SUB_LEVEL
#num DSMCAPS_SUB_LAYERS
#num DSMCAPS_BACKGROUND

#num DFB_SCREEN_MIXER_DESC_NAME_LENGTH

#starttype DFBScreenMixerDescription
#field caps , <DFBScreenMixerCapabilities>
#field layers , <DFBDisplayLayerIDs>
#field sub_num , CInt
#field sub_layers , <DFBDisplayLayerIDs>
#array_field name , CChar
#stoptype

#integral_t DFBScreenMixerConfigFlags

#num DSMCONF_NONE
#num DSMCONF_TREE
#num DSMCONF_LEVEL
#num DSMCONF_LAYERS
#num DSMCONF_BACKGROUND
#num DSMCONF_ALL

#integral_t DFBScreenMixerTree

#num DSMT_UNKNOWN
#num DSMT_FULL
#num DSMT_SUB_LEVEL
#num DSMT_SUB_LAYERS

#starttype DFBScreenMixerConfig
#field flags , <DFBScreenMixerConfigFlags>
#field tree , <DFBScreenMixerTree>
#field level , CInt
#field layers , <DFBDisplayLayerIDs>
#field background , <DFBColor>
#stoptype

#integral_t DFBScreenOutputCapabilities

#num DSOCAPS_NONE
#num DSOCAPS_CONNECTORS
#num DSOCAPS_ENCODER_SEL
#num DSOCAPS_SIGNAL_SEL
#num DSOCAPS_CONNECTOR_SEL
#num DSOCAPS_SLOW_BLANKING
#num DSOCAPS_RESOLUTION
#num DSOCAPS_ALL

#integral_t DFBScreenOutputConnectors

#num DSOC_UNKNOWN
#num DSOC_VGA
#num DSOC_SCART
#num DSOC_YC
#num DSOC_CVBS
#num DSOC_SCART2
#num DSOC_COMPONENT
#num DSOC_HDMI

#integral_t DFBScreenOutputSignals

#num DSOS_NONE
#num DSOS_VGA
#num DSOS_YC
#num DSOS_CVBS
#num DSOS_RGB
#num DSOS_YCBCR
#num DSOS_HDMI
#num DSOS_656

#integral_t DFBScreenOutputSlowBlankingSignals

#num DSOSB_OFF
#num DSOSB_16x9
#num DSOSB_4x3
#num DSOSB_FOLLOW
#num DSOSB_MONITOR

#integral_t DFBScreenOutputResolution

#num DSOR_UNKNOWN
#num DSOR_640_480
#num DSOR_720_480
#num DSOR_720_576
#num DSOR_800_600
#num DSOR_1024_768
#num DSOR_1152_864
#num DSOR_1280_720
#num DSOR_1280_768
#num DSOR_1280_960
#num DSOR_1280_1024
#num DSOR_1400_1050
#num DSOR_1600_1200
#num DSOR_1920_1080
#num DSOR_ALL

#num DFB_SCREEN_OUTPUT_DESC_NAME_LENGTH

#starttype DFBScreenOutputDescription
#field caps , <DFBScreenOutputCapabilities>
#field all_connectors , <DFBScreenOutputConnectors>
#field all_signals , <DFBScreenOutputSignals>
#field all_resolutions , <DFBScreenOutputResolution>
#array_field name , CChar
#stoptype

#integral_t DFBScreenOutputConfigFlags

#num DSOCONF_NONE
#num DSOCONF_ENCODER
#num DSOCONF_SIGNALS
#num DSOCONF_CONNECTORS
#num DSOCONF_SLOW_BLANKING
#num DSOCONF_RESOLUTION
#num DSOCONF_ALL

#starttype DFBScreenOutputConfig
#field flags , <DFBScreenOutputConfigFlags>
#field encoder , CInt
#field out_signals , <DFBScreenOutputSignals>
#field out_connectors , <DFBScreenOutputConnectors>
#field slow_blanking , <DFBScreenOutputSlowBlankingSignals>
#field resolution , <DFBScreenOutputResolution>
#stoptype

#integral_t DFBScreenEncoderCapabilities

#num DSECAPS_NONE
#num DSECAPS_TV_STANDARDS
#num DSECAPS_TEST_PICTURE
#num DSECAPS_MIXER_SEL
#num DSECAPS_OUT_SIGNALS
#num DSECAPS_SCANMODE
#num DSECAPS_FREQUENCY
#num DSECAPS_BRIGHTNESS
#num DSECAPS_CONTRAST
#num DSECAPS_HUE
#num DSECAPS_SATURATION
#num DSECAPS_CONNECTORS
#num DSECAPS_SLOW_BLANKING
#num DSECAPS_RESOLUTION
#num DSECAPS_ALL

#integral_t DFBScreenEncoderType

#num DSET_UNKNOWN
#num DSET_CRTC
#num DSET_TV
#num DSET_DIGITAL

#integral_t DFBScreenEncoderTVStandards

#num DSETV_UNKNOWN
#num DSETV_PAL
#num DSETV_NTSC
#num DSETV_SECAM
#num DSETV_PAL_60
#num DSETV_PAL_BG
#num DSETV_PAL_I
#num DSETV_PAL_M
#num DSETV_PAL_N
#num DSETV_PAL_NC
#num DSETV_NTSC_M_JPN
#if DIRECTFB_MINOR_VERSION >= 4
#num DSETV_NTSC_443
#endif
#num DSETV_DIGITAL
#num DSETV_ALL

#integral_t DFBScreenEncoderScanMode

#num DSESM_UNKNOWN
#num DSESM_INTERLACED
#num DSESM_PROGRESSIVE

#integral_t DFBScreenEncoderFrequency

#num DSEF_UNKNOWN
#num DSEF_25HZ
#num DSEF_29_97HZ
#num DSEF_50HZ
#num DSEF_59_94HZ
#num DSEF_60HZ
#num DSEF_75HZ
#if DIRECTFB_MINOR_VERSION >= 4
#num DSEF_30HZ
#num DSEF_24HZ
#num DSEF_23_976HZ
#endif

#num DFB_SCREEN_ENCODER_DESC_NAME_LENGTH

#starttype DFBScreenEncoderDescription
#field caps , <DFBScreenEncoderCapabilities>
#field type , <DFBScreenEncoderType>
#field tv_standards , <DFBScreenEncoderTVStandards>
#field out_signals , <DFBScreenOutputSignals>
#field all_connectors , <DFBScreenOutputConnectors>
#field all_resolutions , <DFBScreenOutputResolution>
#array_field name , CChar
#stoptype

#integral_t DFBScreenEncoderConfigFlags

#num DSECONF_NONE
#num DSECONF_TV_STANDARD
#num DSECONF_TEST_PICTURE
#num DSECONF_MIXER
#num DSECONF_OUT_SIGNALS
#num DSECONF_SCANMODE
#num DSECONF_TEST_COLOR
#num DSECONF_ADJUSTMENT
#num DSECONF_FREQUENCY
#num DSECONF_CONNECTORS
#num DSECONF_SLOW_BLANKING
#num DSECONF_RESOLUTION
#num DSECONF_ALL

#integral_t DFBScreenEncoderTestPicture

#num DSETP_OFF
#num DSETP_MULTI
#num DSETP_SINGLE
#num DSETP_WHITE
#num DSETP_YELLOW
#num DSETP_CYAN
#num DSETP_GREEN
#num DSETP_MAGENTA
#num DSETP_RED
#num DSETP_BLUE
#num DSETP_BLACK

#starttype DFBScreenEncoderConfig
#field flags , <DFBScreenEncoderConfigFlags>
#field tv_standard , <DFBScreenEncoderTVStandards>
#field test_picture , <DFBScreenEncoderTestPicture>
#field mixer , CInt
#field out_signals , <DFBScreenOutputSignals>
#field out_connectors , <DFBScreenOutputConnectors>
#field slow_blanking , <DFBScreenOutputSlowBlankingSignals>
#field scanmode , <DFBScreenEncoderScanMode>
#field test_color , <DFBColor>
#field adjustment , <DFBColorAdjustment>
#field frequency , <DFBScreenEncoderFrequency>
#field resolution , <DFBScreenOutputResolution>
#stoptype

#integral_t DFBSurfaceFlipFlags

#num DSFLIP_NONE
#num DSFLIP_WAIT
#num DSFLIP_BLIT
#num DSFLIP_ONSYNC
#num DSFLIP_PIPELINE
#num DSFLIP_WAITFORSYNC

#integral_t DFBSurfaceTextFlags

#num DSTF_LEFT
#num DSTF_CENTER
#num DSTF_RIGHT
#num DSTF_TOP
#num DSTF_BOTTOM
#if DIRECTFB_MINOR_VERSION >= 4
#num DSTF_OUTLINE
#endif
#num DSTF_TOPLEFT
#num DSTF_TOPCENTER
#num DSTF_TOPRIGHT
#num DSTF_BOTTOMLEFT
#num DSTF_BOTTOMCENTER
#num DSTF_BOTTOMRIGHT

#integral_t DFBSurfaceLockFlags

#num DSLF_READ
#num DSLF_WRITE

#integral_t DFBSurfacePorterDuffRule

#num DSPD_NONE
#num DSPD_CLEAR
#num DSPD_SRC
#num DSPD_SRC_OVER
#num DSPD_DST_OVER
#num DSPD_SRC_IN
#num DSPD_DST_IN
#num DSPD_SRC_OUT
#num DSPD_DST_OUT
#num DSPD_SRC_ATOP
#num DSPD_DST_ATOP
#num DSPD_ADD
#num DSPD_XOR
#if defined(DSPD_DST)
#num DSPD_DST
#endif

#integral_t DFBSurfaceBlendFunction

#num DSBF_UNKNOWN
#num DSBF_ZERO
#num DSBF_ONE
#num DSBF_SRCCOLOR
#num DSBF_INVSRCCOLOR
#num DSBF_SRCALPHA
#num DSBF_INVSRCALPHA
#num DSBF_DESTALPHA
#num DSBF_INVDESTALPHA
#num DSBF_DESTCOLOR
#num DSBF_INVDESTCOLOR
#num DSBF_SRCALPHASAT

#starttype DFBVertex
#field x , CFloat
#field y , CFloat
#field z , CFloat
#field w , CFloat
#field s , CFloat
#field t , CFloat
#stoptype

#integral_t DFBTriangleFormation

#num DTTF_LIST
#num DTTF_STRIP
#num DTTF_FAN

#integral_t DFBSurfaceMaskFlags

#num DSMF_NONE
#num DSMF_STENCIL
#num DSMF_ALL

#integral_t DFBInputDeviceKeyState

#num DIKS_UP
#num DIKS_DOWN

#integral_t DFBInputDeviceButtonState

#num DIBS_UP
#num DIBS_DOWN

#integral_t DFBInputDeviceButtonMask

#num DIBM_LEFT
#num DIBM_RIGHT
#num DIBM_MIDDLE

#integral_t DFBInputDeviceModifierMask

#num DIMM_SHIFT
#num DIMM_CONTROL
#num DIMM_ALT
#num DIMM_ALTGR
#num DIMM_META
#num DIMM_SUPER
#num DIMM_HYPER

#integral_t DFBEventClass

#num DFEC_NONE
#num DFEC_INPUT
#num DFEC_WINDOW
#num DFEC_USER
#num DFEC_UNIVERSAL
#num DFEC_VIDEOPROVIDER

#integral_t DFBInputEventType

#num DIET_UNKNOWN
#num DIET_KEYPRESS
#num DIET_KEYRELEASE
#num DIET_BUTTONPRESS
#num DIET_BUTTONRELEASE
#num DIET_AXISMOTION

#integral_t DFBInputEventFlags

#num DIEF_NONE
#num DIEF_TIMESTAMP
#num DIEF_AXISABS
#num DIEF_AXISREL
#num DIEF_KEYCODE
#num DIEF_KEYID
#num DIEF_KEYSYMBOL
#num DIEF_MODIFIERS
#num DIEF_LOCKS
#num DIEF_BUTTONS
#num DIEF_GLOBAL
#num DIEF_REPEAT
#num DIEF_FOLLOW
#num DIEF_MIN
#num DIEF_MAX

#starttype DFBInputEvent
#field clazz , <DFBEventClass>
#field type , <DFBInputEventType>
#field device_id , <DFBInputDeviceID>
#field flags , <DFBInputEventFlags>
#field timestamp , <timeval>
#field key_code , CInt
#field key_id , <DFBInputDeviceKeyIdentifier>
#field key_symbol , <DFBInputDeviceKeySymbol>
#field modifiers , <DFBInputDeviceModifierMask>
#field locks , <DFBInputDeviceLockState>
#field button , <DFBInputDeviceButtonIdentifier>
#field buttons , <DFBInputDeviceButtonMask>
#field axis , <DFBInputDeviceAxisIdentifier>
#field axisabs , CInt
#field axisrel , CInt
#field min , CInt
#field max , CInt
#stoptype

#integral_t DFBWindowEventType

#num DWET_NONE
#num DWET_POSITION
#num DWET_SIZE
#num DWET_CLOSE
#num DWET_DESTROYED
#num DWET_GOTFOCUS
#num DWET_LOSTFOCUS
#num DWET_KEYDOWN
#num DWET_KEYUP
#num DWET_BUTTONDOWN
#num DWET_BUTTONUP
#num DWET_MOTION
#num DWET_ENTER
#num DWET_LEAVE
#num DWET_WHEEL
#num DWET_POSITION_SIZE
#num DWET_ALL

#integral_t DFBWindowEventFlags

#num DWEF_NONE
#num DWEF_RETURNED
#num DWEF_ALL

#integral_t DFBVideoProviderEventType

#num DVPET_NONE
#num DVPET_STARTED
#num DVPET_STOPPED
#num DVPET_SPEEDCHANGE
#num DVPET_STREAMCHANGE
#num DVPET_FATALERROR
#num DVPET_FINISHED
#num DVPET_SURFACECHANGE
#num DVPET_FRAMEDECODED
#num DVPET_FRAMEDISPLAYED
#num DVPET_DATAEXHAUSTED
#num DVPET_VIDEOACTION
#num DVPET_DATALOW
#num DVPET_DATAHIGH
#num DVPET_BUFFERTIMELOW
#num DVPET_BUFFERTIMEHIGH
#num DVPET_ALL

#starttype DFBWindowEvent
#field clazz , <DFBEventClass>
#field type , <DFBWindowEventType>
#field flags , <DFBWindowEventFlags>
#field window_id , <DFBWindowID>
#field x , CInt
#field y , CInt
#field cx , CInt
#field cy , CInt
#field step , CInt
#field w , CInt
#field h , CInt
#field key_code , CInt
#field key_id , <DFBInputDeviceKeyIdentifier>
#field key_symbol , <DFBInputDeviceKeySymbol>
#field modifiers , <DFBInputDeviceModifierMask>
#field locks , <DFBInputDeviceLockState>
#field button , <DFBInputDeviceButtonIdentifier>
#field buttons , <DFBInputDeviceButtonMask>
#field timestamp , <timeval>
#stoptype

#integral_t DFBVideoProviderEventDataSubType

#num DVPEDST_UNKNOWN
#num DVPEDST_AUDIO
#num DVPEDST_VIDEO
#num DVPEDST_DATA
#num DVPEDST_ALL

#starttype DFBVideoProviderEvent
#field clazz , <DFBEventClass>
#field type , <DFBVideoProviderEventType>
#field data_type , <DFBVideoProviderEventDataSubType>
#flexible_array_member data , CInt
#stoptype

#starttype DFBUserEvent
#field clazz , <DFBEventClass>
#field type , CUInt
#field data , Ptr ()
#stoptype

#starttype DFBUniversalEvent
#field clazz , <DFBEventClass>
#field size , CUInt
#stoptype

#starttype DFBEvent
#field clazz , <DFBEventClass>
#field input , <DFBInputEvent>
#field window , <DFBWindowEvent>
#field user , <DFBUserEvent>
#field universal , <DFBUniversalEvent>
#field videoprovider , <DFBVideoProviderEvent>
#stoptype

#starttype DFBEventBufferStats
#field num_events , CUInt
#field DFEC_INPUT , CUInt
#field DFEC_WINDOW , CUInt
#field DFEC_USER , CUInt
#field DFEC_UNIVERSAL , CUInt
#field DFEC_VIDEOPROVIDER , CUInt
#field DIET_KEYPRESS , CUInt
#field DIET_KEYRELEASE , CUInt
#field DIET_BUTTONPRESS , CUInt
#field DIET_BUTTONRELEASE , CUInt
#field DIET_AXISMOTION , CUInt
#field DWET_POSITION , CUInt
#field DWET_SIZE , CUInt
#field DWET_CLOSE , CUInt
#field DWET_DESTROYED , CUInt
#field DWET_GOTFOCUS , CUInt
#field DWET_LOSTFOCUS , CUInt
#field DWET_KEYDOWN , CUInt
#field DWET_KEYUP , CUInt
#field DWET_BUTTONDOWN , CUInt
#field DWET_BUTTONUP , CUInt
#field DWET_MOTION , CUInt
#field DWET_ENTER , CUInt
#field DWET_LEAVE , CUInt
#field DWET_WHEEL , CUInt
#field DWET_POSITION_SIZE , CUInt
#field DVPET_STARTED , CUInt
#field DVPET_STOPPED , CUInt
#field DVPET_SPEEDCHANGE , CUInt
#field DVPET_STREAMCHANGE , CUInt
#field DVPET_FATALERROR , CUInt
#field DVPET_FINISHED , CUInt
#field DVPET_SURFACECHANGE , CUInt
#field DVPET_FRAMEDECODED , CUInt
#field DVPET_FRAMEDISPLAYED , CUInt
#field DVPET_DATAEXHAUSTED , CUInt
#field DVPET_DATALOW , CUInt
#field DVPET_VIDEOACTION , CUInt
#field DVPET_DATAHIGH , CUInt
#field DVPET_BUFFERTIMELOW , CUInt
#field DVPET_BUFFERTIMEHIGH , CUInt
#stoptype

#integral_t DFBWindowKeySelection

#num DWKS_ALL
#num DWKS_NONE
#num DWKS_LIST

#integral_t DFBWindowGeometryMode

#num DWGM_DEFAULT
#num DWGM_FOLLOW
#num DWGM_RECTANGLE
#num DWGM_LOCATION

#starttype DFBWindowGeometry
#field mode , <DFBWindowGeometryMode>
#field rectangle , <DFBRectangle>
#field location , <DFBLocation>
#stoptype

#callback_t DFBTextEncodingCallback , <DFBTextEncodingID> -> \
  CString -> Ptr () -> IO <DFBEnumerationResult>

#integral_t DFBImageCapabilities

#num DICAPS_NONE
#num DICAPS_ALPHACHANNEL
#num DICAPS_COLORKEY

#starttype DFBImageDescription
#field caps , <DFBImageCapabilities>
#field colorkey_r , Word8
#field colorkey_g , Word8
#field colorkey_b , Word8
#stoptype

#integral_t DIRenderCallbackResult

#num DIRCR_OK
#num DIRCR_ABORT

#callback_t DIRenderCallback , Ptr <DFBRectangle> -> \
    Ptr () -> IO <DIRenderCallbackResult>

#integral_t DFBStreamCapabilities

#num DVSCAPS_NONE
#num DVSCAPS_VIDEO
#num DVSCAPS_AUDIO

#num DFB_STREAM_DESC_ENCODING_LENGTH
#num DFB_STREAM_DESC_TITLE_LENGTH
#num DFB_STREAM_DESC_AUTHOR_LENGTH
#num DFB_STREAM_DESC_ALBUM_LENGTH
#num DFB_STREAM_DESC_GENRE_LENGTH
#num DFB_STREAM_DESC_COMMENT_LENGTH

#starttype DFBStreamDescription
#field caps , <DFBStreamCapabilities>
#array_field video.encoding , CChar
#field video.framerate , CDouble
#field video.aspect , CDouble
#field video.bitrate , CInt
#field video.afd , CInt
#field video.width , CInt
#field video.height , CInt
#array_field audio.encoding , CChar
#field audio.samplerate , CInt
#field audio.channels , CInt
#field audio.bitrate , CInt
#array_field title , CChar
#array_field author , CChar
#array_field album , CChar
#field year , CShort
#array_field genre , CChar
#array_field comment , CChar
#stoptype

#integral_t DFBStreamFormat

#num DSF_ES
#num DSF_PES

#starttype DFBStreamAttributes
#array_field video.encoding , CChar
#field video.format , <DFBStreamFormat>
#array_field audio.encoding , CChar
#field audio.format , <DFBStreamFormat>
#stoptype

#starttype DFBBufferOccupancy
#field valid , <DFBStreamCapabilities>
#field video.buffer_size , CUInt
#field video.minimum_level , CUInt
#field video.maximum_level , CUInt
#field video.current_level , CUInt
#field audio.buffer_size , CUInt
#field audio.minimum_level , CUInt
#field audio.maximum_level , CUInt
#field audio.current_level , CUInt
#stoptype

#starttype DFBBufferThresholds
#field selection , <DFBStreamCapabilities>
#field video.minimum_level , CUInt
#field video.maximum_level , CUInt
#field video.minimum_time , CUInt
#field video.maximum_time , CUInt
#field audio.minimum_level , CUInt
#field audio.maximum_level , CUInt
#field audio.minimum_time , CUInt
#field audio.maximum_time , CUInt
#stoptype

#callback_t DVFrameCallback , Ptr () -> IO ()

#integral_t DFBInputDeviceKeyType

#num DIKT_UNICODE
#num DIKT_SPECIAL
#num DIKT_FUNCTION
#num DIKT_MODIFIER
#num DIKT_LOCK
#num DIKT_DEAD
#num DIKT_CUSTOM
#num DIKT_IDENTIFIER

#cinline DFB_KEY , <DFBInputDeviceKeyType> -> CInt -> \
  <DFBInputDeviceKeySymbol>
#cinline DFB_KEY_TYPE , <DFBInputDeviceKeySymbol> -> \
  <DFBInputDeviceKeyType>
#cinline DFB_KEY_IS_ASCII , <DFBInputDeviceKeySymbol> -> CInt
#cinline DFB_FUNCTION_KEY , CInt -> <DFBInputDeviceKeySymbol>
#cinline DFB_CUSTOM_KEY , CInt -> <DFBInputDeviceKeySymbol>
#cinline DFB_LOWER_CASE , <DFBInputDeviceKeySymbol> -> CInt
#cinline DFB_UPPER_CASE , <DFBInputDeviceKeySymbol> -> CInt

#integral_t DFBInputDeviceModifierKeyIdentifier

#num DIMKI_SHIFT
#num DIMKI_CONTROL
#num DIMKI_ALT
#num DIMKI_ALTGR
#num DIMKI_META
#num DIMKI_SUPER
#num DIMKI_HYPER
#num DIMKI_FIRST
#num DIMKI_LAST

#integral_t DFBInputDeviceKeyIdentifier

#num DIKI_UNKNOWN
#num DIKI_A
#num DIKI_B
#num DIKI_C
#num DIKI_D
#num DIKI_E
#num DIKI_F
#num DIKI_G
#num DIKI_H
#num DIKI_I
#num DIKI_J
#num DIKI_K
#num DIKI_L
#num DIKI_M
#num DIKI_N
#num DIKI_O
#num DIKI_P
#num DIKI_Q
#num DIKI_R
#num DIKI_S
#num DIKI_T
#num DIKI_U
#num DIKI_V
#num DIKI_W
#num DIKI_X
#num DIKI_Y
#num DIKI_Z
#num DIKI_0
#num DIKI_1
#num DIKI_2
#num DIKI_3
#num DIKI_4
#num DIKI_5
#num DIKI_6
#num DIKI_7
#num DIKI_8
#num DIKI_9
#num DIKI_F1
#num DIKI_F2
#num DIKI_F3
#num DIKI_F4
#num DIKI_F5
#num DIKI_F6
#num DIKI_F7
#num DIKI_F8
#num DIKI_F9
#num DIKI_F10
#num DIKI_F11
#num DIKI_F12
#num DIKI_SHIFT_L
#num DIKI_SHIFT_R
#num DIKI_CONTROL_L
#num DIKI_CONTROL_R
#num DIKI_ALT_L
#num DIKI_ALT_R
#num DIKI_META_L
#num DIKI_META_R
#num DIKI_SUPER_L
#num DIKI_SUPER_R
#num DIKI_HYPER_L
#num DIKI_HYPER_R
#num DIKI_CAPS_LOCK
#num DIKI_NUM_LOCK
#num DIKI_SCROLL_LOCK
#num DIKI_ESCAPE
#num DIKI_LEFT
#num DIKI_RIGHT
#num DIKI_UP
#num DIKI_DOWN
#num DIKI_TAB
#num DIKI_ENTER
#num DIKI_SPACE
#num DIKI_BACKSPACE
#num DIKI_INSERT
#num DIKI_DELETE
#num DIKI_HOME
#num DIKI_END
#num DIKI_PAGE_UP
#num DIKI_PAGE_DOWN
#num DIKI_PRINT
#num DIKI_PAUSE
#num DIKI_QUOTE_LEFT
#num DIKI_MINUS_SIGN
#num DIKI_EQUALS_SIGN
#num DIKI_BRACKET_LEFT
#num DIKI_BRACKET_RIGHT
#num DIKI_BACKSLASH
#num DIKI_SEMICOLON
#num DIKI_QUOTE_RIGHT
#num DIKI_COMMA
#num DIKI_PERIOD
#num DIKI_SLASH
#num DIKI_LESS_SIGN
#num DIKI_KP_DIV
#num DIKI_KP_MULT
#num DIKI_KP_MINUS
#num DIKI_KP_PLUS
#num DIKI_KP_ENTER
#num DIKI_KP_SPACE
#num DIKI_KP_TAB
#num DIKI_KP_F1
#num DIKI_KP_F2
#num DIKI_KP_F3
#num DIKI_KP_F4
#num DIKI_KP_EQUAL
#num DIKI_KP_SEPARATOR
#num DIKI_KP_DECIMAL
#num DIKI_KP_0
#num DIKI_KP_1
#num DIKI_KP_2
#num DIKI_KP_3
#num DIKI_KP_4
#num DIKI_KP_5
#num DIKI_KP_6
#num DIKI_KP_7
#num DIKI_KP_8
#num DIKI_KP_9
#num DIKI_KEYDEF_END

#integral_t DFBInputDeviceKeySymbol

#num DIKS_NULL
#num DIKS_BACKSPACE
#num DIKS_TAB
#num DIKS_RETURN
#num DIKS_CANCEL
#num DIKS_ESCAPE
#num DIKS_SPACE
#num DIKS_EXCLAMATION_MARK
#num DIKS_QUOTATION
#num DIKS_NUMBER_SIGN
#num DIKS_DOLLAR_SIGN
#num DIKS_PERCENT_SIGN
#num DIKS_AMPERSAND
#num DIKS_APOSTROPHE
#num DIKS_PARENTHESIS_LEFT
#num DIKS_PARENTHESIS_RIGHT
#num DIKS_ASTERISK
#num DIKS_PLUS_SIGN
#num DIKS_COMMA
#num DIKS_MINUS_SIGN
#num DIKS_PERIOD
#num DIKS_SLASH
#num DIKS_0
#num DIKS_1
#num DIKS_2
#num DIKS_3
#num DIKS_4
#num DIKS_5
#num DIKS_6
#num DIKS_7
#num DIKS_8
#num DIKS_9
#num DIKS_COLON
#num DIKS_SEMICOLON
#num DIKS_LESS_THAN_SIGN
#num DIKS_EQUALS_SIGN
#num DIKS_GREATER_THAN_SIGN
#num DIKS_QUESTION_MARK
#num DIKS_AT
#num DIKS_CAPITAL_A
#num DIKS_CAPITAL_B
#num DIKS_CAPITAL_C
#num DIKS_CAPITAL_D
#num DIKS_CAPITAL_E
#num DIKS_CAPITAL_F
#num DIKS_CAPITAL_G
#num DIKS_CAPITAL_H
#num DIKS_CAPITAL_I
#num DIKS_CAPITAL_J
#num DIKS_CAPITAL_K
#num DIKS_CAPITAL_L
#num DIKS_CAPITAL_M
#num DIKS_CAPITAL_N
#num DIKS_CAPITAL_O
#num DIKS_CAPITAL_P
#num DIKS_CAPITAL_Q
#num DIKS_CAPITAL_R
#num DIKS_CAPITAL_S
#num DIKS_CAPITAL_T
#num DIKS_CAPITAL_U
#num DIKS_CAPITAL_V
#num DIKS_CAPITAL_W
#num DIKS_CAPITAL_X
#num DIKS_CAPITAL_Y
#num DIKS_CAPITAL_Z
#num DIKS_SQUARE_BRACKET_LEFT
#num DIKS_BACKSLASH
#num DIKS_SQUARE_BRACKET_RIGHT
#num DIKS_CIRCUMFLEX_ACCENT
#num DIKS_UNDERSCORE
#num DIKS_GRAVE_ACCENT
#num DIKS_SMALL_A
#num DIKS_SMALL_B
#num DIKS_SMALL_C
#num DIKS_SMALL_D
#num DIKS_SMALL_E
#num DIKS_SMALL_F
#num DIKS_SMALL_G
#num DIKS_SMALL_H
#num DIKS_SMALL_I
#num DIKS_SMALL_J
#num DIKS_SMALL_K
#num DIKS_SMALL_L
#num DIKS_SMALL_M
#num DIKS_SMALL_N
#num DIKS_SMALL_O
#num DIKS_SMALL_P
#num DIKS_SMALL_Q
#num DIKS_SMALL_R
#num DIKS_SMALL_S
#num DIKS_SMALL_T
#num DIKS_SMALL_U
#num DIKS_SMALL_V
#num DIKS_SMALL_W
#num DIKS_SMALL_X
#num DIKS_SMALL_Y
#num DIKS_SMALL_Z
#num DIKS_CURLY_BRACKET_LEFT
#num DIKS_VERTICAL_BAR
#num DIKS_CURLY_BRACKET_RIGHT
#num DIKS_TILDE
#num DIKS_DELETE
#num DIKS_ENTER
#num DIKS_CURSOR_LEFT
#num DIKS_CURSOR_RIGHT
#num DIKS_CURSOR_UP
#num DIKS_CURSOR_DOWN
#num DIKS_INSERT
#num DIKS_HOME
#num DIKS_END
#num DIKS_PAGE_UP
#num DIKS_PAGE_DOWN
#num DIKS_PRINT
#num DIKS_PAUSE
#num DIKS_OK
#num DIKS_SELECT
#num DIKS_GOTO
#num DIKS_CLEAR
#num DIKS_POWER
#num DIKS_POWER2
#num DIKS_OPTION
#num DIKS_MENU
#num DIKS_HELP
#num DIKS_INFO
#num DIKS_TIME
#num DIKS_VENDOR
#num DIKS_ARCHIVE
#num DIKS_PROGRAM
#num DIKS_CHANNEL
#num DIKS_FAVORITES
#num DIKS_EPG
#num DIKS_PVR
#num DIKS_MHP
#num DIKS_LANGUAGE
#num DIKS_TITLE
#num DIKS_SUBTITLE
#num DIKS_ANGLE
#num DIKS_ZOOM
#num DIKS_MODE
#num DIKS_KEYBOARD
#num DIKS_PC
#num DIKS_SCREEN
#num DIKS_TV
#num DIKS_TV2
#num DIKS_VCR
#num DIKS_VCR2
#num DIKS_SAT
#num DIKS_SAT2
#num DIKS_CD
#num DIKS_TAPE
#num DIKS_RADIO
#num DIKS_TUNER
#num DIKS_PLAYER
#num DIKS_TEXT
#num DIKS_DVD
#num DIKS_AUX
#num DIKS_MP3
#num DIKS_PHONE
#num DIKS_AUDIO
#num DIKS_VIDEO
#num DIKS_INTERNET
#num DIKS_MAIL
#num DIKS_NEWS
#num DIKS_DIRECTORY
#num DIKS_LIST
#num DIKS_CALCULATOR
#num DIKS_MEMO
#num DIKS_CALENDAR
#num DIKS_EDITOR
#num DIKS_RED
#num DIKS_GREEN
#num DIKS_YELLOW
#num DIKS_BLUE
#num DIKS_CHANNEL_UP
#num DIKS_CHANNEL_DOWN
#num DIKS_BACK
#num DIKS_FORWARD
#num DIKS_FIRST
#num DIKS_LAST
#num DIKS_VOLUME_UP
#num DIKS_VOLUME_DOWN
#num DIKS_MUTE
#num DIKS_AB
#num DIKS_PLAYPAUSE
#num DIKS_PLAY
#num DIKS_STOP
#num DIKS_RESTART
#num DIKS_SLOW
#num DIKS_FAST
#num DIKS_RECORD
#num DIKS_EJECT
#num DIKS_SHUFFLE
#num DIKS_REWIND
#num DIKS_FASTFORWARD
#num DIKS_PREVIOUS
#num DIKS_NEXT
#num DIKS_BEGIN
#num DIKS_DIGITS
#num DIKS_TEEN
#num DIKS_TWEN
#num DIKS_BREAK
#num DIKS_EXIT
#num DIKS_SETUP
#num DIKS_CURSOR_LEFT_UP
#num DIKS_CURSOR_LEFT_DOWN
#num DIKS_CURSOR_UP_RIGHT
#num DIKS_CURSOR_DOWN_RIGHT
#num DIKS_F1
#num DIKS_F2
#num DIKS_F3
#num DIKS_F4
#num DIKS_F5
#num DIKS_F6
#num DIKS_F7
#num DIKS_F8
#num DIKS_F9
#num DIKS_F10
#num DIKS_F11
#num DIKS_F12
#num DIKS_SHIFT
#num DIKS_CONTROL
#num DIKS_ALT
#num DIKS_ALTGR
#num DIKS_META
#num DIKS_SUPER
#num DIKS_HYPER
#num DIKS_CAPS_LOCK
#num DIKS_NUM_LOCK
#num DIKS_SCROLL_LOCK
#num DIKS_DEAD_ABOVEDOT
#num DIKS_DEAD_ABOVERING
#num DIKS_DEAD_ACUTE
#num DIKS_DEAD_BREVE
#num DIKS_DEAD_CARON
#num DIKS_DEAD_CEDILLA
#num DIKS_DEAD_CIRCUMFLEX
#num DIKS_DEAD_DIAERESIS
#num DIKS_DEAD_DOUBLEACUTE
#num DIKS_DEAD_GRAVE
#num DIKS_DEAD_IOTA
#num DIKS_DEAD_MACRON
#num DIKS_DEAD_OGONEK
#num DIKS_DEAD_SEMIVOICED_SOUND
#num DIKS_DEAD_TILDE
#num DIKS_DEAD_VOICED_SOUND
#num DIKS_CUSTOM0
#num DIKS_CUSTOM1
#num DIKS_CUSTOM2
#num DIKS_CUSTOM3
#num DIKS_CUSTOM4
#num DIKS_CUSTOM5
#num DIKS_CUSTOM6
#num DIKS_CUSTOM7
#num DIKS_CUSTOM8
#num DIKS_CUSTOM9
#num DIKS_CUSTOM10
#num DIKS_CUSTOM11
#num DIKS_CUSTOM12
#num DIKS_CUSTOM13
#num DIKS_CUSTOM14
#num DIKS_CUSTOM15
#num DIKS_CUSTOM16
#num DIKS_CUSTOM17
#num DIKS_CUSTOM18
#num DIKS_CUSTOM19
#num DIKS_CUSTOM20
#num DIKS_CUSTOM21
#num DIKS_CUSTOM22
#num DIKS_CUSTOM23
#num DIKS_CUSTOM24
#num DIKS_CUSTOM25
#num DIKS_CUSTOM26
#num DIKS_CUSTOM27
#num DIKS_CUSTOM28
#num DIKS_CUSTOM29
#num DIKS_CUSTOM30
#num DIKS_CUSTOM31
#num DIKS_CUSTOM32
#num DIKS_CUSTOM33
#num DIKS_CUSTOM34
#num DIKS_CUSTOM35
#num DIKS_CUSTOM36
#num DIKS_CUSTOM37
#num DIKS_CUSTOM38
#num DIKS_CUSTOM39
#num DIKS_CUSTOM40
#num DIKS_CUSTOM41
#num DIKS_CUSTOM42
#num DIKS_CUSTOM43
#num DIKS_CUSTOM44
#num DIKS_CUSTOM45
#num DIKS_CUSTOM46
#num DIKS_CUSTOM47
#num DIKS_CUSTOM48
#num DIKS_CUSTOM49
#num DIKS_CUSTOM50
#num DIKS_CUSTOM51
#num DIKS_CUSTOM52
#num DIKS_CUSTOM53
#num DIKS_CUSTOM54
#num DIKS_CUSTOM55
#num DIKS_CUSTOM56
#num DIKS_CUSTOM57
#num DIKS_CUSTOM58
#num DIKS_CUSTOM59
#num DIKS_CUSTOM60
#num DIKS_CUSTOM61
#num DIKS_CUSTOM62
#num DIKS_CUSTOM63
#num DIKS_CUSTOM64
#num DIKS_CUSTOM65
#num DIKS_CUSTOM66
#num DIKS_CUSTOM67
#num DIKS_CUSTOM68
#num DIKS_CUSTOM69
#num DIKS_CUSTOM70
#num DIKS_CUSTOM71
#num DIKS_CUSTOM72
#num DIKS_CUSTOM73
#num DIKS_CUSTOM74
#num DIKS_CUSTOM75
#num DIKS_CUSTOM76
#num DIKS_CUSTOM77
#num DIKS_CUSTOM78
#num DIKS_CUSTOM79
#num DIKS_CUSTOM80
#num DIKS_CUSTOM81
#num DIKS_CUSTOM82
#num DIKS_CUSTOM83
#num DIKS_CUSTOM84
#num DIKS_CUSTOM85
#num DIKS_CUSTOM86
#num DIKS_CUSTOM87
#num DIKS_CUSTOM88
#num DIKS_CUSTOM89
#num DIKS_CUSTOM90
#num DIKS_CUSTOM91
#num DIKS_CUSTOM92
#num DIKS_CUSTOM93
#num DIKS_CUSTOM94
#num DIKS_CUSTOM95
#num DIKS_CUSTOM96
#num DIKS_CUSTOM97
#num DIKS_CUSTOM98
#num DIKS_CUSTOM99

#integral_t DFBInputDeviceLockState

#num DILS_SCROLL
#num DILS_NUM
#num DILS_CAPS

#integral_t DFBInputDeviceKeymapSymbolIndex

#num DIKSI_BASE
#num DIKSI_BASE_SHIFT
#num DIKSI_ALT
#num DIKSI_ALT_SHIFT
#num DIKSI_LAST

#starttype DFBInputDeviceKeymapEntry
#field code , CInt
#field locks , <DFBInputDeviceLockState>
#field identifier , <DFBInputDeviceKeyIdentifier>
#array_field symbols , <DFBInputDeviceKeySymbol>
#stoptype

#num DIRECTFBGL_INTERFACE_VERSION

#starttype DFBGLAttributes
#field buffer_size , CInt
#field depth_size , CInt
#field stencil_size , CInt
#field aux_buffers , CInt
#field red_size , CInt
#field green_size , CInt
#field blue_size , CInt
#field alpha_size , CInt
#field accum_red_size , CInt
#field accum_green_size , CInt
#field accum_blue_size , CInt
#field accum_alpha_size , CInt
#field double_buffer , <DFBBoolean>
#field stereo , <DFBBoolean>
#stoptype

