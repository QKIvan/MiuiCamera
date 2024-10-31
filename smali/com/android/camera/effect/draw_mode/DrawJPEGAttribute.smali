.class public Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;


# instance fields
.field public mAlgorithmName:Ljava/lang/String;

.field public mApplyWaterMark:Z

.field public mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

.field public mCoordinatesOfTheRegionUnderWatermarks:[I

.field public mData:[B

.field public mDataOfTheRegionUnderWatermarks:[B

.field public mDate:J

.field public mDeviceWaterMarkEnabled:Z

.field public mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

.field public mEffectCvIndex:I

.field public mEffectIndex:I

.field public mExif:Lcom/miui/camerainfra/exif/ExifInterface;

.field public mFinalImage:Z

.field public mHasDualWaterMark:Z

.field public mHasFrontWaterMark:Z

.field public mHeight:I

.field public mInfo:Lcom/xiaomi/camera/core/PictureInfo;

.field public mIsNeedDrak:Z

.field public mIsPortraitRawData:Z

.field public mIsUltraPixelWatermarkEnabled:Z

.field public mJpegOrientation:I

.field public mLoc:Landroid/location/Location;

.field public mMirror:Z

.field public mNeedThumbnail:Z

.field public mOrientation:I

.field public mPreviewHeight:I

.field public mPreviewThumbnailHash:I

.field public mPreviewWidth:I

.field public mRequestModuleIdx:I

.field public mShootRotation:F

.field public mTiltShiftMode:Ljava/lang/String;

.field public mTimeWaterMarkText:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUiStyle:I

.field public mUri:Landroid/net/Uri;

.field public mWidth:I


# direct methods
.method public constructor <init>([BZIIIIIIZLcom/android/camera/effect/EffectController$EffectRectAttribute;Landroid/location/Location;Ljava/lang/String;JIIFZLjava/lang/String;ZLcom/xiaomi/camera/core/PictureInfo;ZZLjava/lang/String;ZZLcom/android/camera/effect/renders/DeviceWatermarkParam;ZIIILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "needThumbnail",
            "previewW",
            "previewH",
            "w",
            "h",
            "effectIndex",
            "effectCvIndex",
            "isNeedDark",
            "attribute",
            "loc",
            "title",
            "date",
            "orientation",
            "jpegOrientation",
            "shootRotation",
            "mirror",
            "algorithmName",
            "applyWaterMark",
            "info",
            "deviceWatermark",
            "isUltraPixelWatermark",
            "timeWatermark",
            "hasDualWaterMark",
            "hasFrontWaterMark",
            "deviceWatermarkParam",
            "isPortraitRawData",
            "requestModuleIdx",
            "previewThumbnailHash",
            "uiStyle",
            "tiltShiftMode"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    move v2, p3

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewWidth:I

    move v2, p4

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewHeight:I

    move v2, p5

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mWidth:I

    move v2, p6

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHeight:I

    move-object v2, p1

    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mData:[B

    move v2, p2

    iput-boolean v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mNeedThumbnail:Z

    move-wide/from16 v2, p13

    iput-wide v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDate:J

    move v2, p7

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectIndex:I

    move v2, p8

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mEffectCvIndex:I

    move v2, p9

    iput-boolean v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsNeedDrak:Z

    move-object v2, p10

    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAttribute:Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mLoc:Landroid/location/Location;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTitle:Ljava/lang/String;

    move/from16 v2, p15

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mOrientation:I

    move/from16 v2, p16

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mJpegOrientation:I

    move/from16 v2, p17

    iput v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mShootRotation:F

    move/from16 v2, p18

    iput-boolean v2, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mMirror:Z

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mFinalImage:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mAlgorithmName:Ljava/lang/String;

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mApplyWaterMark:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mInfo:Lcom/xiaomi/camera/core/PictureInfo;

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWaterMarkEnabled:Z

    move/from16 v1, p23

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsUltraPixelWatermarkEnabled:Z

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTimeWaterMarkText:Ljava/lang/String;

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasDualWaterMark:Z

    move/from16 v1, p26

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mHasFrontWaterMark:Z

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDeviceWatermarkParam:Lcom/android/camera/effect/renders/DeviceWatermarkParam;

    move/from16 v1, p28

    iput-boolean v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mIsPortraitRawData:Z

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    move/from16 v1, p29

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mRequestModuleIdx:I

    move/from16 v1, p30

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mPreviewThumbnailHash:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mDataOfTheRegionUnderWatermarks:[B

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mCoordinatesOfTheRegionUnderWatermarks:[I

    move/from16 v1, p31

    iput v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mUiStyle:I

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/android/camera/effect/draw_mode/DrawJPEGAttribute;->mTiltShiftMode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
